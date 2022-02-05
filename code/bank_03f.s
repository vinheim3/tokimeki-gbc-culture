; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

Call_03f_4000:
	cp $80                                           ; $4000: $fe $80
	set 4, h                                         ; $4002: $cb $e4
	ret c                                            ; $4004: $d8

	db $e3                                           ; $4005: $e3
	ret nc                                           ; $4006: $d0

	ldh [$dc], a                                     ; $4007: $e0 $dc
	db $e3                                           ; $4009: $e3
	push af                                          ; $400a: $f5
	add sp, -$1e                                     ; $400b: $e8 $e2
	ldh a, [$e6]                                     ; $400d: $f0 $e6
	ld hl, sp-$1f                                    ; $400f: $f8 $e1
	db $fc                                           ; $4011: $fc
	adc l                                            ; $4012: $8d
	inc sp                                           ; $4013: $33
	rst JumpTable                                          ; $4014: $c7
	add hl, sp                                       ; $4015: $39
	ld l, d                                          ; $4016: $6a
	sbc l                                            ; $4017: $9d
	db $28, $dc                                      ; $4018: $28 $dc
	add d                                            ; $401a: $82
	ld a, c                                          ; $401b: $79
	inc b                                            ; $401c: $04
	ld a, a                                          ; $401d: $7f
	nop                                              ; $401e: $00
	ld a, a                                          ; $401f: $7f
	rlca                                             ; $4020: $07
	sbc [hl]                                         ; $4021: $9e
	ei                                               ; $4022: $fb
	ld h, [hl]                                       ; $4023: $66
	ret z                                            ; $4024: $c8

	ld a, [hl]                                       ; $4025: $7e
	push hl                                          ; $4026: $e5
	ld [hl], a                                       ; $4027: $77
	db $fc                                           ; $4028: $fc
	ld a, a                                          ; $4029: $7f
	db $10                                           ; $402a: $10
	ld d, c                                          ; $402b: $51
	or e                                             ; $402c: $b3
	ld a, e                                          ; $402d: $7b
	cp $76                                           ; $402e: $fe $76
	call z, $fe57                                    ; $4030: $cc $57 $fe
	ld a, $c0                                        ; $4033: $3e $c0
	ld a, [hl]                                       ; $4035: $7e
	call z, $fe57                                    ; $4036: $cc $57 $fe
	ld b, [hl]                                       ; $4039: $46
	ret nz                                           ; $403a: $c0

	sbc l                                            ; $403b: $9d
	rst SubAFromBC                                          ; $403c: $e7
	jr @+$78                                         ; $403d: $18 $76

	jp z, $fa7f                                      ; $403f: $ca $7f $fa

	ld [hl], a                                       ; $4042: $77
	ld hl, sp+$77                                    ; $4043: $f8 $77
	ld a, [$c006]                                    ; $4045: $fa $06 $c0
	sbc [hl]                                         ; $4048: $9e
	ld hl, sp+$7a                                    ; $4049: $f8 $7a
	ret z                                            ; $404b: $c8

	sbc h                                            ; $404c: $9c
	add sp, $00                                      ; $404d: $e8 $00
	ldh a, [$7b]                                     ; $404f: $f0 $7b
	db $fc                                           ; $4051: $fc
	ld a, a                                          ; $4052: $7f
	ld hl, sp+$77                                    ; $4053: $f8 $77
	db $f4                                           ; $4055: $f4
	ld l, [hl]                                       ; $4056: $6e
	call nz, $ba66                                   ; $4057: $c4 $66 $ba
	ld a, a                                          ; $405a: $7f
	cp $82                                           ; $405b: $fe $82
	ldh [$7f], a                                     ; $405d: $e0 $7f
	ldh a, [rIE]                                     ; $405f: $f0 $ff
	ldh a, [$f6]                                     ; $4061: $f0 $f6
	ldh a, [$f7]                                     ; $4063: $f0 $f7
	ldh a, [$fb]                                     ; $4065: $f0 $fb
	ldh a, [$fa]                                     ; $4067: $f0 $fa
	ldh a, [$fb]                                     ; $4069: $f0 $fb
	db $fc                                           ; $406b: $fc
	ei                                               ; $406c: $fb
	ccf                                              ; $406d: $3f
	rra                                              ; $406e: $1f
	rra                                              ; $406f: $1f
	rrca                                             ; $4070: $0f
	rra                                              ; $4071: $1f
	rra                                              ; $4072: $1f
	rlca                                             ; $4073: $07
	rst AddAOntoHL                                          ; $4074: $ef
	ld [bc], a                                       ; $4075: $02
	adc a                                            ; $4076: $8f

jr_03f_4077:
	ld bc, $0217                                     ; $4077: $01 $17 $02
	ld a, e                                          ; $407a: $7b
	cp a                                             ; $407b: $bf
	ld l, [hl]                                       ; $407c: $6e
	jp z, $ba6e                                      ; $407d: $ca $6e $ba

	sbc [hl]                                         ; $4080: $9e
	inc hl                                           ; $4081: $23
	ld a, c                                          ; $4082: $79
	ld a, [hl]                                       ; $4083: $7e
	ldh [$d1], a                                     ; $4084: $e0 $d1
	ld b, [hl]                                       ; $4086: $46
	ret nz                                           ; $4087: $c0

	add b                                            ; $4088: $80
	db $e4                                           ; $4089: $e4
	ld a, [$fdf8]                                    ; $408a: $fa $f8 $fd

Call_03f_408d:
	db $d3                                           ; $408d: $d3
	rst AddAOntoHL                                          ; $408e: $ef
	or [hl]                                          ; $408f: $b6
	rst GetHLinHL                                          ; $4090: $cf
	or b                                             ; $4091: $b0
	adc $88                                          ; $4092: $ce $88
	or $68                                           ; $4094: $f6 $68
	sbc [hl]                                         ; $4096: $9e
	ld e, b                                          ; $4097: $58
	cp [hl]                                          ; $4098: $be
	rlca                                             ; $4099: $07
	rst GetHLinHL                                          ; $409a: $cf
	add e                                            ; $409b: $83
	rst JumpTable                                          ; $409c: $c7
	ld b, e                                          ; $409d: $43
	or [hl]                                          ; $409e: $b6
	inc bc                                           ; $409f: $03
	halt                                             ; $40a0: $76
	inc bc                                           ; $40a1: $03
	ld h, h                                          ; $40a2: $64
	ld b, e                                          ; $40a3: $43
	inc [hl]                                         ; $40a4: $34
	ld b, [hl]                                       ; $40a5: $46
	ld hl, $9e07                                     ; $40a6: $21 $07 $9e
	jr nc, jr_03f_4121                               ; $40a9: $30 $76

	ei                                               ; $40ab: $fb
	sbc e                                            ; $40ac: $9b
	rst JumpTable                                          ; $40ad: $c7
	jr c, jr_03f_4077                                ; $40ae: $38 $c7

	jr c, jr_03f_4121                                ; $40b0: $38 $6f

	ld e, $7f                                        ; $40b2: $1e $7f
	cp $5e                                           ; $40b4: $fe $5e
	push af                                          ; $40b6: $f5
	sbc l                                            ; $40b7: $9d
	ld hl, sp+$07                                    ; $40b8: $f8 $07
	ld [hl], a                                       ; $40ba: $77
	cp $6e                                           ; $40bb: $fe $6e
	jp z, $846d                                      ; $40bd: $ca $6d $84

	ld [hl], a                                       ; $40c0: $77
	cp $60                                           ; $40c1: $fe $60
	ld h, c                                          ; $40c3: $61
	ld l, e                                          ; $40c4: $6b
	cp $6f                                           ; $40c5: $fe $6f
	db $d3                                           ; $40c7: $d3
	sbc l                                            ; $40c8: $9d
	ld c, a                                          ; $40c9: $4f
	or b                                             ; $40ca: $b0
	ld [hl], a                                       ; $40cb: $77
	cp h                                             ; $40cc: $bc
	ld [hl], a                                       ; $40cd: $77
	cp $4e                                           ; $40ce: $fe $4e
	jp nz, $cc6e                                     ; $40d0: $c2 $6e $cc

	ld d, a                                          ; $40d3: $57
	cp $02                                           ; $40d4: $fe $02
	ret nz                                           ; $40d6: $c0

	ld [hl], d                                       ; $40d7: $72
	ret nz                                           ; $40d8: $c0

	ld e, a                                          ; $40d9: $5f
	db $fc                                           ; $40da: $fc
	ld a, [hl]                                       ; $40db: $7e
	adc $9d                                          ; $40dc: $ce $9d
	ret nz                                           ; $40de: $c0

Call_03f_40df:
	rst SubAFromBC                                          ; $40df: $e7
	ld [hl], b                                       ; $40e0: $70
	xor h                                            ; $40e1: $ac
	ld a, a                                          ; $40e2: $7f
	cp $dc                                           ; $40e3: $fe $dc
	rst $38                                          ; $40e5: $ff
	sbc [hl]                                         ; $40e6: $9e
	ld hl, sp+$75                                    ; $40e7: $f8 $75
	ld e, l                                          ; $40e9: $5d
	ei                                               ; $40ea: $fb
	call c, $9bff                                    ; $40eb: $dc $ff $9b
	db $10                                           ; $40ee: $10
	rst AddAOntoHL                                          ; $40ef: $ef
	nop                                              ; $40f0: $00
	ld b, c                                          ; $40f1: $41
	ld d, a                                          ; $40f2: $57
	ldh a, [rSVBK]                                   ; $40f3: $f0 $70
	ld c, b                                          ; $40f5: $48
	ld [hl], h                                       ; $40f6: $74
	inc a                                            ; $40f7: $3c
	ld a, a                                          ; $40f8: $7f
	cp $dc                                           ; $40f9: $fe $dc
	rst $38                                          ; $40fb: $ff
	ldh [$d1], a                                     ; $40fc: $e0 $d1
	sbc e                                            ; $40fe: $9b
	jp nz, wGenericTileDataDest+1                                     ; $40ff: $c2 $e3 $c0

	db $e3                                           ; $4102: $e3
	ld d, a                                          ; $4103: $57
	sub b                                            ; $4104: $90
	sbc e                                            ; $4105: $9b
	ld a, b                                          ; $4106: $78
	cp [hl]                                          ; $4107: $be
	add b                                            ; $4108: $80
	ld a, [hl]                                       ; $4109: $7e
	ld d, a                                          ; $410a: $57
	and b                                            ; $410b: $a0
	sbc e                                            ; $410c: $9b
	ld b, $31                                        ; $410d: $06 $31
	ld b, b                                          ; $410f: $40
	daa                                              ; $4110: $27
	ld d, a                                          ; $4111: $57
	ldh a, [$64]                                     ; $4112: $f0 $64
	xor b                                            ; $4114: $a8
	sbc l                                            ; $4115: $9d
	di                                               ; $4116: $f3
	inc c                                            ; $4117: $0c
	ld [hl], a                                       ; $4118: $77
	db $fc                                           ; $4119: $fc
	ld a, a                                          ; $411a: $7f
	cp $6e                                           ; $411b: $fe $6e
	jp z, $fe5f                                      ; $411d: $ca $5f $fe

	ld h, [hl]                                       ; $4120: $66

jr_03f_4121:
	ret z                                            ; $4121: $c8

	sbc l                                            ; $4122: $9d
	ld a, [hl]                                       ; $4123: $7e
	add c                                            ; $4124: $81
	ld l, a                                          ; $4125: $6f
	cp $46                                           ; $4126: $fe $46
	ret nz                                           ; $4128: $c0

	ld h, [hl]                                       ; $4129: $66
	ret z                                            ; $412a: $c8

	ld l, a                                          ; $412b: $6f
	cp $6e                                           ; $412c: $fe $6e
	ld a, h                                          ; $412e: $7c
	ld d, a                                          ; $412f: $57
	cp $76                                           ; $4130: $fe $76
	call z, $f799                                    ; $4132: $cc $99 $f7
	ld [$0cf3], sp                                   ; $4135: $08 $f3 $0c
	rst FarCall                                          ; $4138: $f7
	ld [$fa6f], sp                                   ; $4139: $08 $6f $fa
	ld b, $c0                                        ; $413c: $06 $c0
	ld l, h                                          ; $413e: $6c
	ld c, b                                          ; $413f: $48
	sbc [hl]                                         ; $4140: $9e
	db $fd                                           ; $4141: $fd
	ld e, e                                          ; $4142: $5b
	xor $fd                                          ; $4143: $ee $fd
	sub [hl]                                         ; $4145: $96
	ld b, b                                          ; $4146: $40
	nop                                              ; $4147: $00
	and b                                            ; $4148: $a0
	nop                                              ; $4149: $00
	ld b, h                                          ; $414a: $44
	nop                                              ; $414b: $00
	xor d                                            ; $414c: $aa
	nop                                              ; $414d: $00
	ld d, l                                          ; $414e: $55
	ld [hl], e                                       ; $414f: $73
	ldh a, [$9e]                                     ; $4150: $f0 $9e
	ld a, [bc]                                       ; $4152: $0a

jr_03f_4153:
	ld a, e                                          ; $4153: $7b
	ld hl, sp-$66                                    ; $4154: $f8 $9a
	ld a, [hl+]                                      ; $4156: $2a
	nop                                              ; $4157: $00
	ld e, a                                          ; $4158: $5f
	nop                                              ; $4159: $00
	ccf                                              ; $415a: $3f
	ld a, e                                          ; $415b: $7b
	db $fc                                           ; $415c: $fc
	ld [hl], a                                       ; $415d: $77
	ldh a, [$9c]                                     ; $415e: $f0 $9c
	xor b                                            ; $4160: $a8
	nop                                              ; $4161: $00
	ld d, h                                          ; $4162: $54
	ld a, e                                          ; $4163: $7b
	db $e4                                           ; $4164: $e4
	halt                                             ; $4165: $76
	sub b                                            ; $4166: $90
	sbc [hl]                                         ; $4167: $9e
	call nc, $d06b                                   ; $4168: $d4 $6b $d0
	ldh [$c7], a                                     ; $416b: $e0 $c7
	ld a, a                                          ; $416d: $7f
	xor h                                            ; $416e: $ac
	di                                               ; $416f: $f3
	ld b, a                                          ; $4170: $47
	or b                                             ; $4171: $b0
	ld b, a                                          ; $4172: $47
	ldh a, [rPCM12]                                  ; $4173: $f0 $76
	call z, $fe77                                    ; $4175: $cc $77 $fe
	ld h, d                                          ; $4178: $62
	nop                                              ; $4179: $00
	ld l, d                                          ; $417a: $6a
	ret z                                            ; $417b: $c8

	ld a, l                                          ; $417c: $7d
	adc [hl]                                         ; $417d: $8e
	ld l, a                                          ; $417e: $6f
	ld a, [$c866]                                    ; $417f: $fa $66 $c8
	sub a                                            ; $4182: $97
	cp $01                                           ; $4183: $fe $01
	rst $38                                          ; $4185: $ff
	nop                                              ; $4186: $00
	ld a, [hl]                                       ; $4187: $7e
	add c                                            ; $4188: $81
	ld a, a                                          ; $4189: $7f
	add b                                            ; $418a: $80
	ld c, b                                          ; $418b: $48
	ld hl, $e09e                                     ; $418c: $21 $9e $e0
	ld l, l                                          ; $418f: $6d
	xor d                                            ; $4190: $aa
	sub l                                            ; $4191: $95
	jr c, jr_03f_4153                                ; $4192: $38 $bf

	ccf                                              ; $4194: $3f
	cp a                                             ; $4195: $bf
	daa                                              ; $4196: $27
	cp b                                             ; $4197: $b8
	inc hl                                           ; $4198: $23
	cp h                                             ; $4199: $bc
	ld hl, $6ebe                                     ; $419a: $21 $be $6e

Call_03f_419d:
	jp z, $1c9e                                      ; $419d: $ca $9e $1c

	sbc $ff                                          ; $41a0: $de $ff
	sbc c                                            ; $41a2: $99
	db $d3                                           ; $41a3: $d3
	inc l                                            ; $41a4: $2c
	jp $cb3c                                         ; $41a5: $c3 $3c $cb


	inc a                                            ; $41a8: $3c
	halt                                             ; $41a9: $76
	ret z                                            ; $41aa: $c8

	ld a, [hl]                                       ; $41ab: $7e
	add c                                            ; $41ac: $81
	sub l                                            ; $41ad: $95
	db $e3                                           ; $41ae: $e3
	db $fc                                           ; $41af: $fc
	rst FarCall                                          ; $41b0: $f7
	add sp, $33                                      ; $41b1: $e8 $33
	db $ec                                           ; $41b3: $ec
	ld h, e                                          ; $41b4: $63
	cp h                                             ; $41b5: $bc
	ld h, e                                          ; $41b6: $63
	cp h                                             ; $41b7: $bc
	ld h, [hl]                                       ; $41b8: $66
	ret z                                            ; $41b9: $c8

	sbc h                                            ; $41ba: $9c
	ldh a, [$08]                                     ; $41bb: $f0 $08
	ldh a, [$7a]                                     ; $41bd: $f0 $7a
	or h                                             ; $41bf: $b4
	ld a, a                                          ; $41c0: $7f
	db $fc                                           ; $41c1: $fc
	ld b, [hl]                                       ; $41c2: $46
	ret nz                                           ; $41c3: $c0

	ld b, a                                          ; $41c4: $47
	cp $7d                                           ; $41c5: $fe $7d
	sub e                                            ; $41c7: $93
	ld c, a                                          ; $41c8: $4f
	ldh a, [$9c]                                     ; $41c9: $f0 $9c
	cp a                                             ; $41cb: $bf
	nop                                              ; $41cc: $00
	rst SubAFromDE                                          ; $41cd: $df
	ld d, e                                          ; $41ce: $53
	ldh a, [$75]                                     ; $41cf: $f0 $75
	ld e, h                                          ; $41d1: $5c
	sbc h                                            ; $41d2: $9c
	ld [$f500], a                                    ; $41d3: $ea $00 $f5
	ld [hl], d                                       ; $41d6: $72
	adc h                                            ; $41d7: $8c
	ld a, a                                          ; $41d8: $7f
	db $fc                                           ; $41d9: $fc
	sbc [hl]                                         ; $41da: $9e
	pop af                                           ; $41db: $f1
	ldh [hDisp1_SCY], a                                     ; $41dc: $e0 $90
	ld d, e                                          ; $41de: $53
	ld d, h                                          ; $41df: $54
	adc l                                            ; $41e0: $8d
	ld bc, $07fb                                     ; $41e1: $01 $fb $07
	rst $38                                          ; $41e4: $ff
	inc bc                                           ; $41e5: $03
	rst $38                                          ; $41e6: $ff
	ld bc, $04f8                                     ; $41e7: $01 $f8 $04
	rst $38                                          ; $41ea: $ff
	rlca                                             ; $41eb: $07
	rst $38                                          ; $41ec: $ff
	rlca                                             ; $41ed: $07
	rst FarCall                                          ; $41ee: $f7
	rrca                                             ; $41ef: $0f
	rlca                                             ; $41f0: $07
	rst $38                                          ; $41f1: $ff
	rst GetHLinHL                                          ; $41f2: $cf
	sbc $ff                                          ; $41f3: $de $ff
	sbc b                                            ; $41f5: $98
	ld [bc], a                                       ; $41f6: $02
	db $fc                                           ; $41f7: $fc
	ld bc, $9a00                                     ; $41f8: $01 $00 $9a
	ldh [$fe], a                                     ; $41fb: $e0 $fe
	sbc $ff                                          ; $41fd: $de $ff
	sbc h                                            ; $41ff: $9c
	db $fd                                           ; $4200: $fd
	rst $38                                          ; $4201: $ff
	ld a, [$ffde]                                    ; $4202: $fa $de $ff
	ld a, a                                          ; $4205: $7f
	ld a, $9e                                        ; $4206: $3e $9e
	ld a, a                                          ; $4208: $7f
	ld a, e                                          ; $4209: $7b
	ld a, [hl-]                                      ; $420a: $3a
	sub h                                            ; $420b: $94
	rra                                              ; $420c: $1f
	ret nz                                           ; $420d: $c0

	pop af                                           ; $420e: $f1
	cp $40                                           ; $420f: $fe $40
	rst $38                                          ; $4211: $ff
	add l                                            ; $4212: $85
	ld a, [$bf7c]                                    ; $4213: $fa $7c $bf
	ret nc                                           ; $4216: $d0

	ld [hl], e                                       ; $4217: $73
	ld b, b                                          ; $4218: $40
	ld [hl], a                                       ; $4219: $77
	jr jr_03f_429a                                   ; $421a: $18 $7e

	adc a                                            ; $421c: $8f
	ld a, [hl]                                       ; $421d: $7e
	and b                                            ; $421e: $a0
	ld h, [hl]                                       ; $421f: $66
	ld e, a                                          ; $4220: $5f
	ld a, a                                          ; $4221: $7f
	rst FarCall                                          ; $4222: $f7
	sbc [hl]                                         ; $4223: $9e
	ld c, b                                          ; $4224: $48
	ld a, c                                          ; $4225: $79

jr_03f_4226:
	call z, $9a9b                                    ; $4226: $cc $9b $9a
	ld h, l                                          ; $4229: $65
	rst SubAFromDE                                          ; $422a: $df
	jr nz, jr_03f_4226                               ; $422b: $20 $f9

	sbc [hl]                                         ; $422d: $9e
	ld [hl+], a                                      ; $422e: $22
	ld a, e                                          ; $422f: $7b
	push hl                                          ; $4230: $e5
	sbc b                                            ; $4231: $98
	dec b                                            ; $4232: $05
	rst $38                                          ; $4233: $ff
	call nz, $ae00                                   ; $4234: $c4 $00 $ae
	ld bc, $7b5f                                     ; $4237: $01 $5f $7b
	ret nz                                           ; $423a: $c0

	add [hl]                                         ; $423b: $86
	ld a, l                                          ; $423c: $7d
	ld [bc], a                                       ; $423d: $02
	cp d                                             ; $423e: $ba
	dec b                                            ; $423f: $05
	ldh [$1f], a                                     ; $4240: $e0 $1f
	rst $38                                          ; $4242: $ff
	rst $38                                          ; $4243: $ff
	rra                                              ; $4244: $1f
	nop                                              ; $4245: $00
	and c                                            ; $4246: $a1
	ld e, [hl]                                       ; $4247: $5e
	ld e, a                                          ; $4248: $5f
	and b                                            ; $4249: $a0
	xor a                                            ; $424a: $af
	ld d, b                                          ; $424b: $50
	ld e, a                                          ; $424c: $5f
	and b                                            ; $424d: $a0
	add a                                            ; $424e: $87
	ld a, b                                          ; $424f: $78
	inc bc                                           ; $4250: $03
	db $fc                                           ; $4251: $fc
	rst $38                                          ; $4252: $ff
	rst $38                                          ; $4253: $ff
	and d                                            ; $4254: $a2
	ld a, b                                          ; $4255: $78
	ld [hl], c                                       ; $4256: $71
	ld h, a                                          ; $4257: $67
	db $fc                                           ; $4258: $fc
	ld a, a                                          ; $4259: $7f
	xor h                                            ; $425a: $ac
	ld a, b                                          ; $425b: $78
	cp h                                             ; $425c: $bc
	add b                                            ; $425d: $80
	nop                                              ; $425e: $00
	ld d, b                                          ; $425f: $50
	cpl                                              ; $4260: $2f
	ld [$7d15], a                                    ; $4261: $ea $15 $7d
	ld [bc], a                                       ; $4264: $02
	ld a, [$7c05]                                    ; $4265: $fa $05 $7c
	inc bc                                           ; $4268: $03
	add sp, $17                                      ; $4269: $e8 $17
	nop                                              ; $426b: $00
	rst $38                                          ; $426c: $ff
	add b                                            ; $426d: $80
	nop                                              ; $426e: $00
	rlca                                             ; $426f: $07
	rst $38                                          ; $4270: $ff
	ld a, [hl+]                                      ; $4271: $2a
	push de                                          ; $4272: $d5
	ld d, l                                          ; $4273: $55
	xor d                                            ; $4274: $aa
	xor d                                            ; $4275: $aa
	ld d, l                                          ; $4276: $55
	ld d, l                                          ; $4277: $55
	xor d                                            ; $4278: $aa
	ld a, [hl+]                                      ; $4279: $2a
	push de                                          ; $427a: $d5
	rlca                                             ; $427b: $07
	ld hl, sp-$7c                                    ; $427c: $f8 $84
	inc e                                            ; $427e: $1c
	xor $96                                          ; $427f: $ee $96
	rst $38                                          ; $4281: $ff
	rla                                              ; $4282: $17
	rst AddAOntoHL                                          ; $4283: $ef
	rra                                              ; $4284: $1f
	rst SubAFromBC                                          ; $4285: $e7
	inc de                                           ; $4286: $13
	and $08                                          ; $4287: $e6 $08
	ldh a, [rP1]                                     ; $4289: $f0 $00
	rst $38                                          ; $428b: $ff
	ld bc, $82ff                                     ; $428c: $01 $ff $82
	ld a, h                                          ; $428f: $7c
	ld h, [hl]                                       ; $4290: $66
	ld bc, $7f5f                                     ; $4291: $01 $5f $7f
	ld [hl], e                                       ; $4294: $73
	ld a, h                                          ; $4295: $7c
	add hl, sp                                       ; $4296: $39
	ret nz                                           ; $4297: $c0

	rrca                                             ; $4298: $0f
	ld a, e                                          ; $4299: $7b

jr_03f_429a:
	dec l                                            ; $429a: $2d
	sbc b                                            ; $429b: $98
	ret nz                                           ; $429c: $c0

	add b                                            ; $429d: $80
	ld a, b                                          ; $429e: $78
	add b                                            ; $429f: $80
	db $dd                                           ; $42a0: $dd
	dec sp                                           ; $42a1: $3b
	push bc                                          ; $42a2: $c5
	ld a, e                                          ; $42a3: $7b
	add hl, de                                       ; $42a4: $19
	sub b                                            ; $42a5: $90
	sbc a                                            ; $42a6: $9f
	ld a, a                                          ; $42a7: $7f
	ldh [rIE], a                                     ; $42a8: $e0 $ff
	add d                                            ; $42aa: $82
	ld bc, $1f20                                     ; $42ab: $01 $20 $1f
	rst $38                                          ; $42ae: $ff
	ld b, b                                          ; $42af: $40
	cp a                                             ; $42b0: $bf
	ld b, b                                          ; $42b1: $40
	add b                                            ; $42b2: $80
	rst $38                                          ; $42b3: $ff
	sbc b                                            ; $42b4: $98
	ld a, e                                          ; $42b5: $7b
	rra                                              ; $42b6: $1f
	ld [hl], a                                       ; $42b7: $77
	dec c                                            ; $42b8: $0d
	ld a, a                                          ; $42b9: $7f
	ld a, [$f977]                                    ; $42ba: $fa $77 $f9
	ld a, a                                          ; $42bd: $7f
	cp d                                             ; $42be: $ba
	sub [hl]                                         ; $42bf: $96
	ld bc, $e0fe                                     ; $42c0: $01 $fe $e0
	rst $38                                          ; $42c3: $ff
	inc c                                            ; $42c4: $0c
	rst $38                                          ; $42c5: $ff
	jr c, @+$01                                      ; $42c6: $38 $ff

	db $f4                                           ; $42c8: $f4
	ld a, e                                          ; $42c9: $7b
	ld b, d                                          ; $42ca: $42
	ld l, l                                          ; $42cb: $6d
	ld [hl-], a                                      ; $42cc: $32
	ld l, a                                          ; $42cd: $6f
	ld l, $65                                        ; $42ce: $2e $65
	sub d                                            ; $42d0: $92
	ld a, a                                          ; $42d1: $7f
	adc d                                            ; $42d2: $8a
	ld [hl], l                                       ; $42d3: $75
	ld [bc], a                                       ; $42d4: $02
	sbc h                                            ; $42d5: $9c
	push de                                          ; $42d6: $d5
	nop                                              ; $42d7: $00
	xor $fa                                          ; $42d8: $ee $fa
	sbc h                                            ; $42da: $9c
	ld [bc], a                                       ; $42db: $02
	nop                                              ; $42dc: $00
	ld b, l                                          ; $42dd: $45
	ld [hl], b                                       ; $42de: $70
	ldh a, [c]                                       ; $42df: $f2
	sbc [hl]                                         ; $42e0: $9e
	db $eb                                           ; $42e1: $eb
	ld [hl], a                                       ; $42e2: $77
	cp l                                             ; $42e3: $bd
	ld l, a                                          ; $42e4: $6f
	cp $7e                                           ; $42e5: $fe $7e
	ret z                                            ; $42e7: $c8

	ld l, [hl]                                       ; $42e8: $6e
	cp d                                             ; $42e9: $ba
	sub $ff                                          ; $42ea: $d6 $ff
	sbc h                                            ; $42ec: $9c
	ld a, a                                          ; $42ed: $7f
	rst $38                                          ; $42ee: $ff
	rrca                                             ; $42ef: $0f
	ld [hl], d                                       ; $42f0: $72
	call z, $fc57                                    ; $42f1: $cc $57 $fc
	sbc d                                            ; $42f4: $9a
	ld b, d                                          ; $42f5: $42
	db $fd                                           ; $42f6: $fd
	add c                                            ; $42f7: $81
	cp $02                                           ; $42f8: $fe $02
	ld a, e                                          ; $42fa: $7b
	db $fc                                           ; $42fb: $fc
	ld [hl], a                                       ; $42fc: $77

jr_03f_42fd:
	ld hl, sp+$7e                                    ; $42fd: $f8 $7e
	ret nz                                           ; $42ff: $c0

	sbc c                                            ; $4300: $99
	and c                                            ; $4301: $a1
	cp $f0                                           ; $4302: $fe $f0
	nop                                              ; $4304: $00
	ld l, b                                          ; $4305: $68
	add b                                            ; $4306: $80
	ld d, a                                          ; $4307: $57
	db $fc                                           ; $4308: $fc
	sbc c                                            ; $4309: $99
	ld d, l                                          ; $430a: $55
	ld a, [bc]                                       ; $430b: $0a
	ld a, [hl-]                                      ; $430c: $3a
	dec b                                            ; $430d: $05
	ld e, l                                          ; $430e: $5d
	ld [bc], a                                       ; $430f: $02
	ld l, a                                          ; $4310: $6f
	db $fc                                           ; $4311: $fc
	sub h                                            ; $4312: $94
	ld e, h                                          ; $4313: $5c
	inc bc                                           ; $4314: $03
	ld a, [hl+]                                      ; $4315: $2a
	dec b                                            ; $4316: $05
	ld a, [hl+]                                      ; $4317: $2a
	rst $38                                          ; $4318: $ff
	dec d                                            ; $4319: $15
	rst $38                                          ; $431a: $ff
	dec hl                                           ; $431b: $2b
	rst $38                                          ; $431c: $ff
	rla                                              ; $431d: $17
	ld h, e                                          ; $431e: $63
	db $fc                                           ; $431f: $fc
	inc bc                                           ; $4320: $03
	rst $38                                          ; $4321: $ff
	sbc e                                            ; $4322: $9b
	rst $38                                          ; $4323: $ff
	xor b                                            ; $4324: $a8
	rst $38                                          ; $4325: $ff
	ld d, h                                          ; $4326: $54
	ld e, e                                          ; $4327: $5b
	db $fc                                           ; $4328: $fc
	sub a                                            ; $4329: $97
	add e                                            ; $432a: $83
	db $fc                                           ; $432b: $fc
	nop                                              ; $432c: $00
	rst $38                                          ; $432d: $ff
	dec d                                            ; $432e: $15
	ld [$f40b], a                                    ; $432f: $ea $0b $f4
	ld [hl], a                                       ; $4332: $77
	db $fc                                           ; $4333: $fc
	sbc h                                            ; $4334: $9c
	dec b                                            ; $4335: $05
	ld a, [$7b0b]                                    ; $4336: $fa $0b $7b
	rra                                              ; $4339: $1f
	sbc l                                            ; $433a: $9d
	jr c, jr_03f_42fd                                ; $433b: $38 $c0

	ld a, d                                          ; $433d: $7a
	adc b                                            ; $433e: $88
	ld e, d                                          ; $433f: $5a
	ld a, [bc]                                       ; $4340: $0a
	ld a, [hl]                                       ; $4341: $7e
	ld [hl+], a                                      ; $4342: $22
	rst SubAFromDE                                          ; $4343: $df
	rst $38                                          ; $4344: $ff
	ld a, [hl]                                       ; $4345: $7e
	sbc [hl]                                         ; $4346: $9e
	sub b                                            ; $4347: $90
	db $f4                                           ; $4348: $f4
	dec bc                                           ; $4349: $0b
	add sp, $17                                      ; $434a: $e8 $17
	call nc, $e82b                                   ; $434c: $d4 $2b $e8
	rla                                              ; $434f: $17
	add b                                            ; $4350: $80
	nop                                              ; $4351: $00
	rst JumpTable                                          ; $4352: $c7
	ccf                                              ; $4353: $3f
	rst $38                                          ; $4354: $ff
	rst $38                                          ; $4355: $ff
	dec bc                                           ; $4356: $0b
	ld a, e                                          ; $4357: $7b
	sub [hl]                                         ; $4358: $96
	ld l, a                                          ; $4359: $6f
	db $fc                                           ; $435a: $fc
	sbc [hl]                                         ; $435b: $9e

jr_03f_435c:
	dec de                                           ; $435c: $1b
	ld a, d                                          ; $435d: $7a
	db $dd                                           ; $435e: $dd
	db $d3                                           ; $435f: $d3
	rst $38                                          ; $4360: $ff
	ld [hl], a                                       ; $4361: $77
	jr c, @+$77                                      ; $4362: $38 $75

	ldh a, [c]                                       ; $4364: $f2
	ld l, a                                          ; $4365: $6f
	db $fc                                           ; $4366: $fc
	sbc d                                            ; $4367: $9a
	rst SubAFromHL                                          ; $4368: $d7
	ld hl, sp-$75                                    ; $4369: $f8 $8b
	db $f4                                           ; $436b: $f4
	ld b, a                                          ; $436c: $47
	ld h, e                                          ; $436d: $63
	db $fc                                           ; $436e: $fc
	sbc l                                            ; $436f: $9d
	adc d                                            ; $4370: $8a
	push af                                          ; $4371: $f5
	inc b                                            ; $4372: $04
	ldh a, [rP1]                                     ; $4373: $f0 $00
	ret nc                                           ; $4375: $d0

	ld a, b                                          ; $4376: $78
	ld e, b                                          ; $4377: $58
	ld d, a                                          ; $4378: $57
	cp $7f                                           ; $4379: $fe $7f
	sub h                                            ; $437b: $94
	sbc b                                            ; $437c: $98
	ld c, $ff                                        ; $437d: $0e $ff
	add e                                            ; $437f: $83
	ld a, a                                          ; $4380: $7f
	adc a                                            ; $4381: $8f
	ld a, a                                          ; $4382: $7f
	add a                                            ; $4383: $87
	ld l, e                                          ; $4384: $6b
	cp $97                                           ; $4385: $fe $97
	ld d, b                                          ; $4387: $50
	rst $38                                          ; $4388: $ff
	and b                                            ; $4389: $a0
	rst $38                                          ; $438a: $ff
	db $fc                                           ; $438b: $fc
	rst $38                                          ; $438c: $ff
	add e                                            ; $438d: $83
	rst $38                                          ; $438e: $ff
	ld [hl], h                                       ; $438f: $74
	inc [hl]                                         ; $4390: $34
	adc d                                            ; $4391: $8a
	ld h, [hl]                                       ; $4392: $66
	sbc c                                            ; $4393: $99
	halt                                             ; $4394: $76
	adc c                                            ; $4395: $89
	or h                                             ; $4396: $b4
	ld b, b                                          ; $4397: $40
	ld l, b                                          ; $4398: $68
	add b                                            ; $4399: $80
	jr nc, jr_03f_435c                               ; $439a: $30 $c0

jr_03f_439c:
	ld c, b                                          ; $439c: $48
	ldh a, [rAUD3LOW]                                ; $439d: $f0 $1d
	cp $41                                           ; $439f: $fe $41
	cp a                                             ; $43a1: $bf
	ld d, b                                          ; $43a2: $50
	cp a                                             ; $43a3: $bf
	db $f4                                           ; $43a4: $f4

jr_03f_43a5:
	sbc e                                            ; $43a5: $9b
	inc d                                            ; $43a6: $14
	ld a, d                                          ; $43a7: $7a
	call z, $159d                                    ; $43a8: $cc $9d $15
	ld [bc], a                                       ; $43ab: $02
	ld [hl], a                                       ; $43ac: $77
	db $fc                                           ; $43ad: $fc
	sbc c                                            ; $43ae: $99
	adc $f1                                          ; $43af: $ce $f1
	ld b, a                                          ; $43b1: $47
	cp a                                             ; $43b2: $bf
	jr jr_03f_439c                                   ; $43b3: $18 $e7

	ld l, [hl]                                       ; $43b5: $6e
	ret z                                            ; $43b6: $c8

	ld a, [hl]                                       ; $43b7: $7e
	cp h                                             ; $43b8: $bc
	ld a, [hl]                                       ; $43b9: $7e
	cp b                                             ; $43ba: $b8
	ld a, l                                          ; $43bb: $7d
	cp $9e                                           ; $43bc: $fe $9e
	ld hl, sp+$7a                                    ; $43be: $f8 $7a
	ld e, e                                          ; $43c0: $5b
	push de                                          ; $43c1: $d5
	rst $38                                          ; $43c2: $ff
	sbc h                                            ; $43c3: $9c
	ld [hl], e                                       ; $43c4: $73
	rst $38                                          ; $43c5: $ff
	ld [hl], a                                       ; $43c6: $77
	jp nc, Jump_03f_7dff                             ; $43c7: $d2 $ff $7d

	and $9e                                          ; $43ca: $e6 $9e
	call nc, $cc7a                                   ; $43cc: $d4 $7a $cc
	ld l, a                                          ; $43cf: $6f
	db $fc                                           ; $43d0: $fc
	sbc h                                            ; $43d1: $9c
	cp a                                             ; $43d2: $bf
	rst $38                                          ; $43d3: $ff
	db $e3                                           ; $43d4: $e3
	ld a, e                                          ; $43d5: $7b
	ld a, a                                          ; $43d6: $7f
	halt                                             ; $43d7: $76
	call z, $fc67                                    ; $43d8: $cc $67 $fc
	sbc h                                            ; $43db: $9c
	ret nc                                           ; $43dc: $d0

	rst $38                                          ; $43dd: $ff
	ld a, c                                          ; $43de: $79
	ld [hl], c                                       ; $43df: $71
	ret nc                                           ; $43e0: $d0

	ld h, a                                          ; $43e1: $67
	cp $9b                                           ; $43e2: $fe $9b
	ccf                                              ; $43e4: $3f
	ret nz                                           ; $43e5: $c0

	ld b, b                                          ; $43e6: $40
	rst $38                                          ; $43e7: $ff
	halt                                             ; $43e8: $76
	call z, $c476                                    ; $43e9: $cc $76 $c4
	ld l, a                                          ; $43ec: $6f
	db $fc                                           ; $43ed: $fc
	ld a, a                                          ; $43ee: $7f
	and b                                            ; $43ef: $a0
	ld h, [hl]                                       ; $43f0: $66
	ret z                                            ; $43f1: $c8

	ld l, a                                          ; $43f2: $6f
	db $fc                                           ; $43f3: $fc
	sbc [hl]                                         ; $43f4: $9e
	ld l, e                                          ; $43f5: $6b
	jp nc, $75ff                                     ; $43f6: $d2 $ff $75

	pop hl                                           ; $43f9: $e1
	ld a, [hl]                                       ; $43fa: $7e
	call z, $c076                                    ; $43fb: $cc $76 $c0
	ld a, a                                          ; $43fe: $7f
	cp $99                                           ; $43ff: $fe $99
	ld hl, sp-$04                                    ; $4401: $f8 $fc
	ldh a, [rIE]                                     ; $4403: $f0 $ff
	ldh [rIE], a                                     ; $4405: $e0 $ff
	ld [hl], a                                       ; $4407: $77
	jr nc, jr_03f_43a5                               ; $4408: $30 $9b

	ld b, e                                          ; $440a: $43
	db $fc                                           ; $440b: $fc
	rra                                              ; $440c: $1f
	ldh [$71], a                                     ; $440d: $e0 $71
	sub h                                            ; $440f: $94
	ld [hl], a                                       ; $4410: $77
	ldh [$5b], a                                     ; $4411: $e0 $5b
	and b                                            ; $4413: $a0
	inc bc                                           ; $4414: $03
	ldh a, [rHDMA3]                                  ; $4415: $f0 $53
	ldh a, [$7c]                                     ; $4417: $f0 $7c
	ld d, b                                          ; $4419: $50
	ld a, l                                          ; $441a: $7d
	sub b                                            ; $441b: $90
	ld a, a                                          ; $441c: $7f
	xor [hl]                                         ; $441d: $ae
	ld h, a                                          ; $441e: $67
	ldh a, [c]                                       ; $441f: $f2
	sbc [hl]                                         ; $4420: $9e
	ld sp, hl                                        ; $4421: $f9
	ld a, d                                          ; $4422: $7a
	ld c, b                                          ; $4423: $48
	sbc [hl]                                         ; $4424: $9e
	ldh [c], a                                       ; $4425: $e2
	ld a, e                                          ; $4426: $7b
	rst FarCall                                          ; $4427: $f7
	ld h, [hl]                                       ; $4428: $66
	ret z                                            ; $4429: $c8

	sbc l                                            ; $442a: $9d
	add a                                            ; $442b: $87
	rst $38                                          ; $442c: $ff
	ld l, a                                          ; $442d: $6f
	cp $98                                           ; $442e: $fe $98
	ld h, a                                          ; $4430: $67
	sbc b                                            ; $4431: $98
	ld a, a                                          ; $4432: $7f
	add b                                            ; $4433: $80
	ld h, e                                          ; $4434: $63
	sbc a                                            ; $4435: $9f
	rra                                              ; $4436: $1f
	ld a, d                                          ; $4437: $7a
	cp h                                             ; $4438: $bc
	ld a, h                                          ; $4439: $7c
	and h                                            ; $443a: $a4
	ld a, h                                          ; $443b: $7c
	sub b                                            ; $443c: $90
	ld a, a                                          ; $443d: $7f
	db $f4                                           ; $443e: $f4
	add b                                            ; $443f: $80
	sbc a                                            ; $4440: $9f
	ld a, b                                          ; $4441: $78
	sbc h                                            ; $4442: $9c
	rst $38                                          ; $4443: $ff
	sub e                                            ; $4444: $93
	db $fd                                           ; $4445: $fd
	sbc b                                            ; $4446: $98
	rst $38                                          ; $4447: $ff
	sbc [hl]                                         ; $4448: $9e
	rst $38                                          ; $4449: $ff
	sbc a                                            ; $444a: $9f
	ld a, c                                          ; $444b: $79
	sbc e                                            ; $444c: $9b
	ld a, b                                          ; $444d: $78
	sbc e                                            ; $444e: $9b
	ld a, b                                          ; $444f: $78
	add e                                            ; $4450: $83
	ld a, a                                          ; $4451: $7f
	dec sp                                           ; $4452: $3b
	rst $38                                          ; $4453: $ff
	ei                                               ; $4454: $fb
	rst $38                                          ; $4455: $ff
	ld a, e                                          ; $4456: $7b
	add a                                            ; $4457: $87
	rra                                              ; $4458: $1f
	db $e3                                           ; $4459: $e3
	jp $dbff                                         ; $445a: $c3 $ff $db


	ccf                                              ; $445d: $3f
	ei                                               ; $445e: $fb
	ld a, e                                          ; $445f: $7b
	cp d                                             ; $4460: $ba
	sub [hl]                                         ; $4461: $96
	ld [hl], c                                       ; $4462: $71
	cp $7c                                           ; $4463: $fe $7c
	rst $38                                          ; $4465: $ff
	ld a, a                                          ; $4466: $7f
	rst SubAFromBC                                          ; $4467: $e7
	ld a, b                                          ; $4468: $78
	db $e4                                           ; $4469: $e4
	rrca                                             ; $446a: $0f
	db $dd                                           ; $446b: $dd
	rst $38                                          ; $446c: $ff
	sbc e                                            ; $446d: $9b
	ldh a, [$7b]                                     ; $446e: $f0 $7b
	rst $38                                          ; $4470: $ff
	ld a, e                                          ; $4471: $7b
	ld a, d                                          ; $4472: $7a
	ret z                                            ; $4473: $c8

	sbc [hl]                                         ; $4474: $9e
	ld [hl], d                                       ; $4475: $72
	ld l, e                                          ; $4476: $6b
	cp $99                                           ; $4477: $fe $99
	ldh a, [c]                                       ; $4479: $f2
	ld a, a                                          ; $447a: $7f
	rst $38                                          ; $447b: $ff
	add b                                            ; $447c: $80

Jump_03f_447d:
	ld a, a                                          ; $447d: $7f
	add b                                            ; $447e: $80
	ld e, a                                          ; $447f: $5f
	ld a, h                                          ; $4480: $7c
	ld a, a                                          ; $4481: $7f
	db $f4                                           ; $4482: $f4
	sbc c                                            ; $4483: $99
	pop af                                           ; $4484: $f1
	rrca                                             ; $4485: $0f
	sbc l                                            ; $4486: $9d
	ld h, e                                          ; $4487: $63
	db $fd                                           ; $4488: $fd
	inc bc                                           ; $4489: $03
	ld [hl], a                                       ; $448a: $77
	cp $97                                           ; $448b: $fe $97
	db $fc                                           ; $448d: $fc
	inc bc                                           ; $448e: $03
	cp $01                                           ; $448f: $fe $01
	ldh a, [rIF]                                     ; $4491: $f0 $0f
	ld a, a                                          ; $4493: $7f
	ldh a, [$5f]                                     ; $4494: $f0 $5f
	cp $9a                                           ; $4496: $fe $9a
	ei                                               ; $4498: $fb
	ldh a, [rIE]                                     ; $4499: $f0 $ff
	db $fc                                           ; $449b: $fc
	ldh a, [$78]                                     ; $449c: $f0 $78
	ld l, c                                          ; $449e: $69
	ld d, [hl]                                       ; $449f: $56
	inc e                                            ; $44a0: $1c
	ld a, b                                          ; $44a1: $78
	ld h, [hl]                                       ; $44a2: $66
	sbc h                                            ; $44a3: $9c
	ld h, b                                          ; $44a4: $60
	ccf                                              ; $44a5: $3f
	ret nz                                           ; $44a6: $c0

	ld d, a                                          ; $44a7: $57
	ldh a, [$99]                                     ; $44a8: $f0 $99
	ld a, [$c405]                                    ; $44aa: $fa $05 $c4
	dec sp                                           ; $44ad: $3b
	sbc a                                            ; $44ae: $9f
	ld h, b                                          ; $44af: $60
	ld h, a                                          ; $44b0: $67
	ldh a, [$7f]                                     ; $44b1: $f0 $7f
	pop de                                           ; $44b3: $d1
	sbc [hl]                                         ; $44b4: $9e
	rst GetHLinHL                                          ; $44b5: $cf
	ld a, b                                          ; $44b6: $78
	cp b                                             ; $44b7: $b8
	ld a, a                                          ; $44b8: $7f
	ld b, b                                          ; $44b9: $40
	sbc [hl]                                         ; $44ba: $9e
	inc bc                                           ; $44bb: $03
	ld [hl], e                                       ; $44bc: $73
	cp $7f                                           ; $44bd: $fe $7f
	ld h, d                                          ; $44bf: $62
	sbc d                                            ; $44c0: $9a
	rst SubAFromDE                                          ; $44c1: $df
	ldh [rIE], a                                     ; $44c2: $e0 $ff
	ret nz                                           ; $44c4: $c0

	rst SubAFromDE                                          ; $44c5: $df
	ld [hl], e                                       ; $44c6: $73
	cp $9e                                           ; $44c7: $fe $9e
	ret                                              ; $44c9: $c9


	ld a, e                                          ; $44ca: $7b
	db $fc                                           ; $44cb: $fc
	sbc [hl]                                         ; $44cc: $9e
	sbc $63                                          ; $44cd: $de $63
	add $7d                                          ; $44cf: $c6 $7d
	add hl, de                                       ; $44d1: $19
	ld a, h                                          ; $44d2: $7c
	jp nz, Jump_03f_447d                             ; $44d3: $c2 $7d $44

	ld [hl], d                                       ; $44d6: $72
	db $ed                                           ; $44d7: $ed
	ld a, e                                          ; $44d8: $7b

jr_03f_44d9:
	cp $9c                                           ; $44d9: $fe $9c
	ld hl, sp+$00                                    ; $44db: $f8 $00
	jr nz, jr_03f_44d9                               ; $44dd: $20 $fa

	ld l, a                                          ; $44df: $6f
	ldh a, [$9c]                                     ; $44e0: $f0 $9c
	inc b                                            ; $44e2: $04
	nop                                              ; $44e3: $00
	ld [$9efc], sp                                   ; $44e4: $08 $fc $9e
	db $10                                           ; $44e7: $10
	ld h, [hl]                                       ; $44e8: $66
	ld b, [hl]                                       ; $44e9: $46
	sbc l                                            ; $44ea: $9d
	nop                                              ; $44eb: $00
	dec c                                            ; $44ec: $0d
	ld a, [$a07f]                                    ; $44ed: $fa $7f $a0
	sbc l                                            ; $44f0: $9d
	pop af                                           ; $44f1: $f1
	cp $57                                           ; $44f2: $fe $57
	add b                                            ; $44f4: $80
	sbc l                                            ; $44f5: $9d
	rst FarCall                                          ; $44f6: $f7
	ld hl, sp+$56                                    ; $44f7: $f8 $56
	sbc [hl]                                         ; $44f9: $9e
	sbc l                                            ; $44fa: $9d
	db $fc                                           ; $44fb: $fc
	ld [bc], a                                       ; $44fc: $02
	ld l, [hl]                                       ; $44fd: $6e
	jp nz, $ec7c                                     ; $44fe: $c2 $7c $ec

	ld a, a                                          ; $4501: $7f
	cp $99                                           ; $4502: $fe $99
	rst SubAFromBC                                          ; $4504: $e7
	ld b, $08                                        ; $4505: $06 $08
	ld sp, $7f1f                                     ; $4507: $31 $1f $7f
	ld a, e                                          ; $450a: $7b
	call nz, $809b                                   ; $450b: $c4 $9b $80
	dec sp                                           ; $450e: $3b
	add b                                            ; $450f: $80
	inc a                                            ; $4510: $3c
	ld a, b                                          ; $4511: $78
	ld d, h                                          ; $4512: $54
	adc c                                            ; $4513: $89
	sub b                                            ; $4514: $90
	nop                                              ; $4515: $00
	ldh [$c0], a                                     ; $4516: $e0 $c0
	pop af                                           ; $4518: $f1
	ldh [$bb], a                                     ; $4519: $e0 $bb
	ld a, b                                          ; $451b: $78
	ei                                               ; $451c: $fb
	jr c, @+$01                                      ; $451d: $38 $ff

	jr nz, @+$80                                     ; $451f: $20 $7e

	db $10                                           ; $4521: $10
	ld a, d                                          ; $4522: $7a

jr_03f_4523:
	jr nz, jr_03f_45a4                               ; $4523: $20 $7f

	db $10                                           ; $4525: $10
	ld a, [hl]                                       ; $4526: $7e
	jr nz, jr_03f_4523                               ; $4527: $20 $fa

	db $10                                           ; $4529: $10
	ld a, c                                          ; $452a: $79
	sbc l                                            ; $452b: $9d
	ld a, e                                          ; $452c: $7b
	ld d, a                                          ; $452d: $57
	ld [hl], a                                       ; $452e: $77
	ld a, [$f87b]                                    ; $452f: $fa $7b $f8
	sub a                                            ; $4532: $97
	ld [bc], a                                       ; $4533: $02
	ld a, a                                          ; $4534: $7f
	ld bc, $87b8                                     ; $4535: $01 $b8 $87
	ld hl, sp-$79                                    ; $4538: $f8 $87
	ld sp, hl                                        ; $453a: $f9
	ld a, e                                          ; $453b: $7b
	cp $92                                           ; $453c: $fe $92
	rst $38                                          ; $453e: $ff
	add c                                            ; $453f: $81
	rst $38                                          ; $4540: $ff
	ld a, [bc]                                       ; $4541: $0a
	rst $38                                          ; $4542: $ff
	sub l                                            ; $4543: $95
	rst $38                                          ; $4544: $ff
	ld a, [bc]                                       ; $4545: $0a
	halt                                             ; $4546: $76
	cp e                                             ; $4547: $bb
	dec a                                            ; $4548: $3d
	cp $a5                                           ; $4549: $fe $a5
	ld a, c                                          ; $454b: $79
	and h                                            ; $454c: $a4
	sub l                                            ; $454d: $95
	rst $38                                          ; $454e: $ff
	ret nc                                           ; $454f: $d0

	rst $38                                          ; $4550: $ff
	xor d                                            ; $4551: $aa
	rst $38                                          ; $4552: $ff
	ld d, l                                          ; $4553: $55
	rst $38                                          ; $4554: $ff
	xor d                                            ; $4555: $aa
	ld a, a                                          ; $4556: $7f
	ret nz                                           ; $4557: $c0

	ld a, d                                          ; $4558: $7a
	ld [hl], a                                       ; $4559: $77
	sbc [hl]                                         ; $455a: $9e
	ret nz                                           ; $455b: $c0

	ld e, [hl]                                       ; $455c: $5e
	cp h                                             ; $455d: $bc
	sbc c                                            ; $455e: $99
	ld hl, sp+$07                                    ; $455f: $f8 $07
	rst $38                                          ; $4561: $ff
	ld [bc], a                                       ; $4562: $02
	rst $38                                          ; $4563: $ff
	dec b                                            ; $4564: $05
	ld e, a                                          ; $4565: $5f
	db $fc                                           ; $4566: $fc
	sbc l                                            ; $4567: $9d
	ld a, a                                          ; $4568: $7f
	db $fc                                           ; $4569: $fc
	ld [hl], h                                       ; $456a: $74
	scf                                              ; $456b: $37
	sbc e                                            ; $456c: $9b
	rst AddAOntoHL                                          ; $456d: $ef
	cp b                                             ; $456e: $b8
	rst SubAFromDE                                          ; $456f: $df
	ld [hl], h                                       ; $4570: $74
	ld l, a                                          ; $4571: $6f
	ld hl, sp+$0c                                    ; $4572: $f8 $0c
	jp nz, $fa7e                                     ; $4574: $c2 $7e $fa

	ld a, d                                          ; $4577: $7a
	and d                                            ; $4578: $a2
	sbc c                                            ; $4579: $99
	nop                                              ; $457a: $00
	sbc h                                            ; $457b: $9c
	nop                                              ; $457c: $00
	or b                                             ; $457d: $b0
	nop                                              ; $457e: $00
	ldh [$72], a                                     ; $457f: $e0 $72
	ldh a, [c]                                       ; $4581: $f2
	rst $38                                          ; $4582: $ff
	sbc e                                            ; $4583: $9b
	ld h, e                                          ; $4584: $63
	ccf                                              ; $4585: $3f
	ld b, e                                          ; $4586: $43
	ccf                                              ; $4587: $3f
	ld l, a                                          ; $4588: $6f
	db $fc                                           ; $4589: $fc
	ld l, a                                          ; $458a: $6f
	cp $90                                           ; $458b: $fe $90
	call c, $dcc0                                    ; $458d: $dc $c0 $dc
	ret nz                                           ; $4590: $c0

	db $fc                                           ; $4591: $fc
	ret nz                                           ; $4592: $c0

	ld hl, sp-$80                                    ; $4593: $f8 $80
	call c, $d880                                    ; $4595: $dc $80 $d8
	add b                                            ; $4598: $80
	ret nc                                           ; $4599: $d0

	add b                                            ; $459a: $80
	sbc b                                            ; $459b: $98
	ld l, a                                          ; $459c: $6f
	db $db                                           ; $459d: $db
	ldh [$c6], a                                     ; $459e: $e0 $c6
	ld l, $00                                        ; $45a0: $2e $00
	db $dd                                           ; $45a2: $dd
	inc sp                                           ; $45a3: $33

jr_03f_45a4:
	sbc c                                            ; $45a4: $99
	ld b, h                                          ; $45a5: $44
	ld d, l                                          ; $45a6: $55
	ld d, l                                          ; $45a7: $55
	ld b, h                                          ; $45a8: $44
	ld b, l                                          ; $45a9: $45
	ld d, l                                          ; $45aa: $55
	inc bc                                           ; $45ab: $03
	or $7f                                           ; $45ac: $f6 $7f
	or $dc                                           ; $45ae: $f6 $dc
	ld b, h                                          ; $45b0: $44
	ld e, e                                          ; $45b1: $5b
	or $dc                                           ; $45b2: $f6 $dc
	ld h, [hl]                                       ; $45b4: $66
	rst SubAFromDE                                          ; $45b5: $df
	ld d, l                                          ; $45b6: $55
	sbc h                                            ; $45b7: $9c
	ld d, h                                          ; $45b8: $54
	ld b, h                                          ; $45b9: $44
	ld [hl], $da                                     ; $45ba: $36 $da
	ld h, [hl]                                       ; $45bc: $66
	sbc e                                            ; $45bd: $9b
	ld h, h                                          ; $45be: $64
	ld b, h                                          ; $45bf: $44
	inc sp                                           ; $45c0: $33
	ld [hl], e                                       ; $45c1: $73
	call c, $9e66                                    ; $45c2: $dc $66 $9e
	ld h, a                                          ; $45c5: $67
	ld a, e                                          ; $45c6: $7b
	ldh [c], a                                       ; $45c7: $e2
	sbc h                                            ; $45c8: $9c
	ld [hl], e                                       ; $45c9: $73
	ld [hl], a                                       ; $45ca: $77
	halt                                             ; $45cb: $76
	pop de                                           ; $45cc: $d1
	ld [hl], a                                       ; $45cd: $77
	ld d, e                                          ; $45ce: $53
	add l                                            ; $45cf: $85
	reti                                             ; $45d0: $d9


	rst $38                                          ; $45d1: $ff
	sbc [hl]                                         ; $45d2: $9e
	nop                                              ; $45d3: $00
	reti                                             ; $45d4: $d9


	rst $38                                          ; $45d5: $ff
	sbc [hl]                                         ; $45d6: $9e
	ei                                               ; $45d7: $fb
	ld l, e                                          ; $45d8: $6b
	ldh a, [$9e]                                     ; $45d9: $f0 $9e
	db $fc                                           ; $45db: $fc
	reti                                             ; $45dc: $d9


	rst $38                                          ; $45dd: $ff
	sub h                                            ; $45de: $94
	ld a, [hl]                                       ; $45df: $7e
	sbc $ed                                          ; $45e0: $de $ed

jr_03f_45e2:
	push af                                          ; $45e2: $f5
	ei                                               ; $45e3: $fb
	db $fc                                           ; $45e4: $fc
	nop                                              ; $45e5: $00
	nop                                              ; $45e6: $00
	add b                                            ; $45e7: $80
	ldh [$f0], a                                     ; $45e8: $e0 $f0
	sbc $f8                                          ; $45ea: $de $f8
	ld a, e                                          ; $45ec: $7b
	and $77                                          ; $45ed: $e6 $77
	push de                                          ; $45ef: $d5
	ld hl, sp+$77                                    ; $45f0: $f8 $77
	push af                                          ; $45f2: $f5
	rst SubAFromDE                                          ; $45f3: $df
	db $fc                                           ; $45f4: $fc
	sbc [hl]                                         ; $45f5: $9e
	ld hl, sp+$53                                    ; $45f6: $f8 $53
	ldh a, [$fb]                                     ; $45f8: $f0 $fb
	sbc $3f                                          ; $45fa: $de $3f
	sbc $7f                                          ; $45fc: $de $7f
	rst SubAFromDE                                          ; $45fe: $df
	rst $38                                          ; $45ff: $ff
	sub a                                            ; $4600: $97
	dec c                                            ; $4601: $0d
	ld [de], a                                       ; $4602: $12
	inc b                                            ; $4603: $04
	ret nz                                           ; $4604: $c0

	ret nz                                           ; $4605: $c0

	rst JumpTable                                          ; $4606: $c7
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	sbc $e0                                          ; $4609: $de $e0
	sbc $20                                          ; $460b: $de $20
	rst SubAFromDE                                          ; $460d: $df
	rst $38                                          ; $460e: $ff
	sbc c                                            ; $460f: $99
	ld a, a                                          ; $4610: $7f
	or b                                             ; $4611: $b0
	ld [rRAMG], sp                                   ; $4612: $08 $00 $00
	jp $ddfe                                         ; $4615: $c3 $fe $dd


	inc bc                                           ; $4618: $03
	ld [hl], a                                       ; $4619: $77
	or h                                             ; $461a: $b4
	sbc [hl]                                         ; $461b: $9e
	add hl, de                                       ; $461c: $19
	sbc $1d                                          ; $461d: $de $1d
	ld [hl], a                                       ; $461f: $77
	jp z, $e69e                                      ; $4620: $ca $9e $e6

	sbc $e2                                          ; $4623: $de $e2
	ld a, a                                          ; $4625: $7f
	ldh a, [$df]                                     ; $4626: $f0 $df
	ldh a, [hDisp1_LCDC]                                     ; $4628: $f0 $8f
	jr nc, jr_03f_45e2                               ; $462a: $30 $b6

	or h                                             ; $462c: $b4
	or h                                             ; $462d: $b4
	ldh a, [rP1]                                     ; $462e: $f0 $00
	rrca                                             ; $4630: $0f
	rrca                                             ; $4631: $0f
	rst GetHLinHL                                          ; $4632: $cf
	ld c, c                                          ; $4633: $49
	ld c, e                                          ; $4634: $4b
	ld c, e                                          ; $4635: $4b
	rrca                                             ; $4636: $0f
	rst $38                                          ; $4637: $ff
	ld c, $00                                        ; $4638: $0e $00
	sbc $0d                                          ; $463a: $de $0d
	rst SubAFromDE                                          ; $463c: $df
	add hl, bc                                       ; $463d: $09
	sbc h                                            ; $463e: $9c
	nop                                              ; $463f: $00
	pop af                                           ; $4640: $f1
	rst $38                                          ; $4641: $ff
	sbc $f2                                          ; $4642: $de $f2
	rst SubAFromDE                                          ; $4644: $df
	or $9a                                           ; $4645: $f6 $9a
	rst $38                                          ; $4647: $ff
	rra                                              ; $4648: $1f
	dec e                                            ; $4649: $1d
	dec e                                            ; $464a: $1d
	ld [de], a                                       ; $464b: $12
	sbc $30                                          ; $464c: $de $30
	ld [hl], a                                       ; $464e: $77
	or c                                             ; $464f: $b1
	sbc [hl]                                         ; $4650: $9e
	ldh [$de], a                                     ; $4651: $e0 $de
	ret nz                                           ; $4653: $c0

	sbc $ff                                          ; $4654: $de $ff
	sbc e                                            ; $4656: $9b
	ld a, a                                          ; $4657: $7f
	ld b, [hl]                                       ; $4658: $46
	adc c                                            ; $4659: $89
	ld [bc], a                                       ; $465a: $02
	ld e, e                                          ; $465b: $5b
	add b                                            ; $465c: $80

jr_03f_465d:
	sbc e                                            ; $465d: $9b
	rst $38                                          ; $465e: $ff
	ld hl, sp-$3b                                    ; $465f: $f8 $c5
	ld [hl+], a                                      ; $4661: $22
	ld sp, hl                                        ; $4662: $f9
	sub l                                            ; $4663: $95
	ld [$ff3c], sp                                   ; $4664: $08 $3c $ff
	rst $38                                          ; $4667: $ff
	ld l, h                                          ; $4668: $6c
	sub d                                            ; $4669: $92
	ld b, b                                          ; $466a: $40
	inc a                                            ; $466b: $3c
	inc h                                            ; $466c: $24
	inc h                                            ; $466d: $24
	db $fd                                           ; $466e: $fd
	rst SubAFromDE                                          ; $466f: $df
	inc bc                                           ; $4670: $03
	rst SubAFromDE                                          ; $4671: $df
	dec de                                           ; $4672: $1b
	sbc e                                            ; $4673: $9b
	rst $38                                          ; $4674: $ff
	db $fc                                           ; $4675: $fc
	call c, $dd26                                    ; $4676: $dc $26 $dd
	ld b, $7b                                        ; $4679: $06 $7b
	di                                               ; $467b: $f3
	sbc [hl]                                         ; $467c: $9e
	ld bc, $81dd                                     ; $467d: $01 $dd $81
	sbc [hl]                                         ; $4680: $9e
	rst $38                                          ; $4681: $ff
	sbc $3f                                          ; $4682: $de $3f
	sbc l                                            ; $4684: $9d
	ld b, $09                                        ; $4685: $06 $09
	ld a, e                                          ; $4687: $7b
	ret nz                                           ; $4688: $c0

	jp c, Jump_03f_6bc0                              ; $4689: $da $c0 $6b

	ret nz                                           ; $468c: $c0

	ld a, e                                          ; $468d: $7b
	db $10                                           ; $468e: $10
	db $fc                                           ; $468f: $fc
	sbc [hl]                                         ; $4690: $9e
	inc bc                                           ; $4691: $03
	ld a, e                                          ; $4692: $7b
	ret nz                                           ; $4693: $c0

	sbc d                                            ; $4694: $9a
	sub e                                            ; $4695: $93
	ld b, h                                          ; $4696: $44
	nop                                              ; $4697: $00
	ld a, $3e                                        ; $4698: $3e $3e
	ld a, [$0196]                                    ; $469a: $fa $96 $01
	rst $38                                          ; $469d: $ff
	rst $38                                          ; $469e: $ff
	jp c, Jump_03f_4a25                              ; $469f: $da $25 $4a

	nop                                              ; $46a2: $00
	rlca                                             ; $46a3: $07
	dec b                                            ; $46a4: $05
	ld a, [$029b]                                    ; $46a5: $fa $9b $02
	rst $38                                          ; $46a8: $ff
	rst $38                                          ; $46a9: $ff
	ldh [$7b], a                                     ; $46aa: $e0 $7b
	call c, $cc7f                                    ; $46ac: $dc $7f $cc
	sbc $ff                                          ; $46af: $de $ff
	ld [hl], a                                       ; $46b1: $77
	call z, $0796                                    ; $46b2: $cc $96 $07
	rst $38                                          ; $46b5: $ff
	ret nz                                           ; $46b6: $c0

	rra                                              ; $46b7: $1f
	rst SubAFromDE                                          ; $46b8: $df
	rst SubAFromDE                                          ; $46b9: $df
	call c, $d8df                                    ; $46ba: $dc $df $d8
	ld a, e                                          ; $46bd: $7b
	add sp, -$21                                     ; $46be: $e8 $df
	jr nz, jr_03f_465d                               ; $46c0: $20 $9b

	inc hl                                           ; $46c2: $23
	daa                                              ; $46c3: $27
	rst SubAFromBC                                          ; $46c4: $e7
	ld [$efde], sp                                   ; $46c5: $08 $de $ef
	rst SubAFromDE                                          ; $46c8: $df
	add sp, -$64                                     ; $46c9: $e8 $9c
	adc b                                            ; $46cb: $88
	rst AddAOntoHL                                          ; $46cc: $ef
	ldh a, [$dd]                                     ; $46cd: $f0 $dd
	db $10                                           ; $46cf: $10
	rst SubAFromDE                                          ; $46d0: $df
	ldh a, [$9e]                                     ; $46d1: $f0 $9e
	db $10                                           ; $46d3: $10
	ld l, d                                          ; $46d4: $6a
	jp $bf5e                                         ; $46d5: $c3 $5e $bf


	rst SubAFromDE                                          ; $46d8: $df
	ldh a, [$9e]                                     ; $46d9: $f0 $9e
	ldh [$7b], a                                     ; $46db: $e0 $7b
	db $ec                                           ; $46dd: $ec
	sbc [hl]                                         ; $46de: $9e
	db $db                                           ; $46df: $db
	ld [hl], a                                       ; $46e0: $77
	and h                                            ; $46e1: $a4
	sbc e                                            ; $46e2: $9b
	ld bc, $0000                                     ; $46e3: $01 $00 $00
	inc h                                            ; $46e6: $24
	ld a, e                                          ; $46e7: $7b
	ei                                               ; $46e8: $fb
	ld a, d                                          ; $46e9: $7a
	ld [$dfff], a                                    ; $46ea: $ea $ff $df
	cp $7f                                           ; $46ed: $fe $7f
	or b                                             ; $46ef: $b0
	halt                                             ; $46f0: $76
	ld a, l                                          ; $46f1: $7d
	rst SubAFromDE                                          ; $46f2: $df
	rst SubAFromDE                                          ; $46f3: $df
	ld a, e                                          ; $46f4: $7b
	or b                                             ; $46f5: $b0
	cp $df                                           ; $46f6: $fe $df
	jr nz, jr_03f_4775                               ; $46f8: $20 $7b

	or b                                             ; $46fa: $b0
	sbc $ff                                          ; $46fb: $de $ff
	sbc $e3                                          ; $46fd: $de $e3
	rst SubAFromDE                                          ; $46ff: $df
	ldh [rOCPD], a                                   ; $4700: $e0 $6b
	ld h, h                                          ; $4702: $64
	sbc h                                            ; $4703: $9c
	dec de                                           ; $4704: $1b
	ei                                               ; $4705: $fb
	ei                                               ; $4706: $fb
	ld a, e                                          ; $4707: $7b
	db $dd                                           ; $4708: $dd
	sbc e                                            ; $4709: $9b
	add b                                            ; $470a: $80
	ld [hl], b                                       ; $470b: $70
	nop                                              ; $470c: $00
	ld [hl], b                                       ; $470d: $70
	db $fd                                           ; $470e: $fd
	sbc c                                            ; $470f: $99
	ld a, a                                          ; $4710: $7f
	adc a                                            ; $4711: $8f
	rst $38                                          ; $4712: $ff
	adc a                                            ; $4713: $8f
	rst $38                                          ; $4714: $ff
	ld a, a                                          ; $4715: $7f
	ld a, e                                          ; $4716: $7b
	sbc l                                            ; $4717: $9d
	call c, $df10                                    ; $4718: $dc $10 $df
	rrca                                             ; $471b: $0f
	db $db                                           ; $471c: $db
	rst AddAOntoHL                                          ; $471d: $ef
	sbc $09                                          ; $471e: $de $09
	sbc d                                            ; $4720: $9a
	nop                                              ; $4721: $00
	rra                                              ; $4722: $1f
	rra                                              ; $4723: $1f
	rlca                                             ; $4724: $07
	rlca                                             ; $4725: $07
	sbc $f6                                          ; $4726: $de $f6
	ld a, a                                          ; $4728: $7f
	ld l, [hl]                                       ; $4729: $6e
	sbc d                                            ; $472a: $9a
	ldh [$f8], a                                     ; $472b: $e0 $f8
	ld hl, sp+$30                                    ; $472d: $f8 $30
	ld sp, $c47a                                     ; $472f: $31 $7a $c4
	cp $99                                           ; $4732: $fe $99
	ret nz                                           ; $4734: $c0

	jp nz, $c7c3                                     ; $4735: $c2 $c3 $c7

	rst FarCall                                          ; $4738: $f7
	rst FarCall                                          ; $4739: $f7
	ld a, e                                          ; $473a: $7b
	ld [hl], h                                       ; $473b: $74
	sbc h                                            ; $473c: $9c
	ldh a, [$80]                                     ; $473d: $f0 $80
	add b                                            ; $473f: $80
	db $fc                                           ; $4740: $fc
	sbc h                                            ; $4741: $9c
	inc c                                            ; $4742: $0c
	inc a                                            ; $4743: $3c
	inc a                                            ; $4744: $3c
	db $dd                                           ; $4745: $dd
	cp h                                             ; $4746: $bc
	sbc d                                            ; $4747: $9a
	nop                                              ; $4748: $00
	db $10                                           ; $4749: $10
	ldh a, [hDisp1_SCX]                                     ; $474a: $f0 $91
	sub c                                            ; $474c: $91
	ld a, e                                          ; $474d: $7b
	db $ec                                           ; $474e: $ec
	add b                                            ; $474f: $80
	inc a                                            ; $4750: $3c
	db $ec                                           ; $4751: $ec
	rrca                                             ; $4752: $0f
	ld c, $6e                                        ; $4753: $0e $6e
	rrca                                             ; $4755: $0f
	ld a, a                                          ; $4756: $7f
	ld a, a                                          ; $4757: $7f
	daa                                              ; $4758: $27
	scf                                              ; $4759: $37
	scf                                              ; $475a: $37
	or e                                             ; $475b: $b3
	cp e                                             ; $475c: $bb
	ld a, [hl-]                                      ; $475d: $3a
	ld a, [hl-]                                      ; $475e: $3a
	ld a, $18                                        ; $475f: $3e $18
	ld [$4cc8], sp                                   ; $4761: $08 $c8 $4c
	ld b, h                                          ; $4764: $44
	push bc                                          ; $4765: $c5
	push bc                                          ; $4766: $c5
	pop bc                                           ; $4767: $c1
	rst $38                                          ; $4768: $ff
	cp $00                                           ; $4769: $fe $00
	rst $38                                          ; $476b: $ff
	rst JumpTable                                          ; $476c: $c7
	nop                                              ; $476d: $00
	rst JumpTable                                          ; $476e: $c7
	ld a, a                                          ; $476f: $7f
	db $fd                                           ; $4770: $fd
	ld a, [hl]                                       ; $4771: $7e
	or $9a                                           ; $4772: $f6 $9a
	nop                                              ; $4774: $00

jr_03f_4775:
	jr c, @+$01                                      ; $4775: $38 $ff

	jr c, @+$3a                                      ; $4777: $38 $38

	db $dd                                           ; $4779: $dd
	ret nz                                           ; $477a: $c0

	sbc [hl]                                         ; $477b: $9e
	ld b, b                                          ; $477c: $40
	sbc $4f                                          ; $477d: $de $4f
	db $fd                                           ; $477f: $fd
	db $dd                                           ; $4780: $dd
	add b                                            ; $4781: $80
	sbc l                                            ; $4782: $9d
	sbc h                                            ; $4783: $9c
	db $fc                                           ; $4784: $fc
	ld [hl], a                                       ; $4785: $77
	cp $df                                           ; $4786: $fe $df
	db $fc                                           ; $4788: $fc
	sbc l                                            ; $4789: $9d
	ld h, e                                          ; $478a: $63
	inc bc                                           ; $478b: $03
	ld [hl], a                                       ; $478c: $77
	cp $df                                           ; $478d: $fe $df
	inc bc                                           ; $478f: $03
	jp c, $9d3e                                      ; $4790: $da $3e $9d

	ld [bc], a                                       ; $4793: $02
	add c                                            ; $4794: $81
	db $db                                           ; $4795: $db
	pop bc                                           ; $4796: $c1
	rst SubAFromDE                                          ; $4797: $df
	db $fd                                           ; $4798: $fd
	ld a, [hl]                                       ; $4799: $7e
	jp c, $ff72                                      ; $479a: $da $72 $ff

	sbc l                                            ; $479d: $9d
	ld [bc], a                                       ; $479e: $02
	inc bc                                           ; $479f: $03
	ld l, l                                          ; $47a0: $6d
	or a                                             ; $47a1: $b7
	sbc l                                            ; $47a2: $9d
	rst $38                                          ; $47a3: $ff
	ld sp, hl                                        ; $47a4: $f9
	ld l, l                                          ; $47a5: $6d
	adc d                                            ; $47a6: $8a
	sbc l                                            ; $47a7: $9d
	rra                                              ; $47a8: $1f
	ld e, $fc                                        ; $47a9: $1e $fc
	sbc e                                            ; $47ab: $9b

jr_03f_47ac:
	inc b                                            ; $47ac: $04
	sbc a                                            ; $47ad: $9f
	rst SubAFromDE                                          ; $47ae: $df
	rst SubAFromDE                                          ; $47af: $df
	call c, Call_03f_7bcf                            ; $47b0: $dc $cf $7b
	ld [de], a                                       ; $47b3: $12
	call c, Call_03f_7630                            ; $47b4: $dc $30 $76
	jp nz, $e89b                                     ; $47b7: $c2 $9b $e8

	jp hl                                            ; $47ba: $e9


	db $eb                                           ; $47bb: $eb
	db $eb                                           ; $47bc: $eb
	call c, $9c10                                    ; $47bd: $dc $10 $9c
	ld de, $1313                                     ; $47c0: $11 $13 $13
	ld [hl], a                                       ; $47c3: $77
	jp $f89c                                         ; $47c4: $c3 $9c $f8


	db $fc                                           ; $47c7: $fc
	cp $72                                           ; $47c8: $fe $72
	ret nz                                           ; $47ca: $c0

	ld a, l                                          ; $47cb: $7d
	ld [hl], b                                       ; $47cc: $70
	ld a, a                                          ; $47cd: $7f
	rst FarCall                                          ; $47ce: $f7
	sbc l                                            ; $47cf: $9d
	db $db                                           ; $47d0: $db
	sub e                                            ; $47d1: $93
	sbc $ff                                          ; $47d2: $de $ff
	rst SubAFromDE                                          ; $47d4: $df
	db $db                                           ; $47d5: $db
	sbc h                                            ; $47d6: $9c
	sub e                                            ; $47d7: $93
	inc h                                            ; $47d8: $24
	ld l, h                                          ; $47d9: $6c
	cp $df                                           ; $47da: $fe $df
	inc h                                            ; $47dc: $24
	ld a, e                                          ; $47dd: $7b
	ld a, [$0f9e]                                    ; $47de: $fa $9e $0f
	ld a, c                                          ; $47e1: $79
	adc b                                            ; $47e2: $88
	db $dd                                           ; $47e3: $dd
	rst $38                                          ; $47e4: $ff
	sbc c                                            ; $47e5: $99
	pop af                                           ; $47e6: $f1
	rst SubAFromDE                                          ; $47e7: $df
	or $9f                                           ; $47e8: $f6 $9f
	ld [hl], b                                       ; $47ea: $70
	ld [hl], e                                       ; $47eb: $73
	ld a, e                                          ; $47ec: $7b
	ld d, $77                                        ; $47ed: $16 $77
	reti                                             ; $47ef: $d9


	ld a, a                                          ; $47f0: $7f
	rst GetHLinHL                                          ; $47f1: $cf
	rst SubAFromDE                                          ; $47f2: $df
	rst $38                                          ; $47f3: $ff
	sbc d                                            ; $47f4: $9a
	rst AddAOntoHL                                          ; $47f5: $ef
	rst FarCall                                          ; $47f6: $f7
	rra                                              ; $47f7: $1f
	sbc a                                            ; $47f8: $9f
	di                                               ; $47f9: $f3
	ld h, [hl]                                       ; $47fa: $66
	jr z, @-$20                                      ; $47fb: $28 $de

	ld hl, sp-$23                                    ; $47fd: $f8 $dd
	cp $72                                           ; $47ff: $fe $72
	jr @+$81                                         ; $4801: $18 $7f

	adc $79                                          ; $4803: $ce $79
	cp e                                             ; $4805: $bb
	sbc $7f                                          ; $4806: $de $7f
	sbc e                                            ; $4808: $9b
	ld [hl], e                                       ; $4809: $73
	ld b, a                                          ; $480a: $47
	sbc [hl]                                         ; $480b: $9e
	ldh a, [$73]                                     ; $480c: $f0 $73
	jr c, jr_03f_47ac                                ; $480e: $38 $9c

	ldh [$fc], a                                     ; $4810: $e0 $fc
	db $fc                                           ; $4812: $fc
	call c, $9cef                                    ; $4813: $dc $ef $9c
	ld l, a                                          ; $4816: $6f
	ld a, a                                          ; $4817: $7f
	rst $38                                          ; $4818: $ff
	ld a, d                                          ; $4819: $7a
	push bc                                          ; $481a: $c5

jr_03f_481b:
	db $fc                                           ; $481b: $fc
	ld a, d                                          ; $481c: $7a
	push bc                                          ; $481d: $c5
	ld l, h                                          ; $481e: $6c
	add sp, $7a                                      ; $481f: $e8 $7a
	ld e, b                                          ; $4821: $58
	rst SubAFromDE                                          ; $4822: $df
	rrca                                             ; $4823: $0f
	sub [hl]                                         ; $4824: $96
	rra                                              ; $4825: $1f
	ccf                                              ; $4826: $3f
	inc sp                                           ; $4827: $33
	inc sp                                           ; $4828: $33
	scf                                              ; $4829: $37
	or $f0                                           ; $482a: $f6 $f0
	rst FarCall                                          ; $482c: $f7
	xor $76                                          ; $482d: $ee $76
	ld h, l                                          ; $482f: $65
	ld a, a                                          ; $4830: $7f
	push hl                                          ; $4831: $e5
	ld a, e                                          ; $4832: $7b
	ld [hl], b                                       ; $4833: $70
	sbc b                                            ; $4834: $98
	cp h                                             ; $4835: $bc
	cp l                                             ; $4836: $bd
	cp a                                             ; $4837: $bf
	ccf                                              ; $4838: $3f
	rst $38                                          ; $4839: $ff
	ccf                                              ; $483a: $3f
	rst JumpTable                                          ; $483b: $c7
	ld h, d                                          ; $483c: $62
	jr z, jr_03f_481b                                ; $483d: $28 $dc

	rst $38                                          ; $483f: $ff
	ld a, a                                          ; $4840: $7f
	and c                                            ; $4841: $a1
	ld [hl], h                                       ; $4842: $74
	rst SubAFromBC                                          ; $4843: $e7
	sbc l                                            ; $4844: $9d
	rlca                                             ; $4845: $07
	rrca                                             ; $4846: $0f
	ld [hl], a                                       ; $4847: $77
	ld l, a                                          ; $4848: $6f
	sbc c                                            ; $4849: $99
	rst SubAFromBC                                          ; $484a: $e7
	jp $0380                                         ; $484b: $c3 $80 $03


	rlca                                             ; $484e: $07
	add hl, de                                       ; $484f: $19
	ld [hl], l                                       ; $4850: $75
	cp b                                             ; $4851: $b8
	ld a, b                                          ; $4852: $78
	cp b                                             ; $4853: $b8
	ld [hl], a                                       ; $4854: $77
	ld [hl], c                                       ; $4855: $71
	ld a, a                                          ; $4856: $7f
	and l                                            ; $4857: $a5
	ld a, a                                          ; $4858: $7f
	ld l, a                                          ; $4859: $6f
	sbc d                                            ; $485a: $9a
	ld sp, hl                                        ; $485b: $f9
	cp $4e                                           ; $485c: $fe $4e
	ld c, h                                          ; $485e: $4c
	ld c, b                                          ; $485f: $48
	sbc $40                                          ; $4860: $de $40
	rst $38                                          ; $4862: $ff
	sbc c                                            ; $4863: $99
	add c                                            ; $4864: $81
	add e                                            ; $4865: $83
	add a                                            ; $4866: $87
	adc a                                            ; $4867: $8f
	sbc a                                            ; $4868: $9f
	cp a                                             ; $4869: $bf
	ld l, a                                          ; $486a: $6f
	and b                                            ; $486b: $a0
	rst SubAFromDE                                          ; $486c: $df
	rlca                                             ; $486d: $07
	ld [hl], a                                       ; $486e: $77
	ld l, [hl]                                       ; $486f: $6e
	ld a, a                                          ; $4870: $7f
	jp nz, $f8df                                     ; $4871: $c2 $df $f8

	sbc [hl]                                         ; $4874: $9e
	ldh a, [$78]                                     ; $4875: $f0 $78
	ret z                                            ; $4877: $c8

	ld a, e                                          ; $4878: $7b
	add hl, de                                       ; $4879: $19
	ld [hl], a                                       ; $487a: $77
	pop de                                           ; $487b: $d1
	ld a, a                                          ; $487c: $7f
	ret nz                                           ; $487d: $c0

	ld a, l                                          ; $487e: $7d
	and $9d                                          ; $487f: $e6 $9d
	jr @-$74                                         ; $4881: $18 $8a

	ld [hl], a                                       ; $4883: $77
	ld d, [hl]                                       ; $4884: $56
	sbc e                                            ; $4885: $9b
	ld hl, $8001                                     ; $4886: $21 $01 $80
	ret nz                                           ; $4889: $c0

	ld a, c                                          ; $488a: $79
	db $fd                                           ; $488b: $fd
	sub [hl]                                         ; $488c: $96
	add b                                            ; $488d: $80
	sbc $fe                                          ; $488e: $de $fe
	ld a, a                                          ; $4890: $7f
	ccf                                              ; $4891: $3f
	rra                                              ; $4892: $1f
	ld [hl], e                                       ; $4893: $73
	ld a, a                                          ; $4894: $7f
	ld h, a                                          ; $4895: $67
	sbc $ff                                          ; $4896: $de $ff
	ld a, a                                          ; $4898: $7f
	ld c, c                                          ; $4899: $49
	sbc h                                            ; $489a: $9c
	adc h                                            ; $489b: $8c
	add b                                            ; $489c: $80
	sbc a                                            ; $489d: $9f
	call c, $9dff                                    ; $489e: $dc $ff $9d
	call z, Call_03f_79df                            ; $48a1: $cc $df $79
	ld [hl], e                                       ; $48a4: $73
	cp $9e                                           ; $48a5: $fe $9e
	inc sp                                           ; $48a7: $33
	ld [hl], a                                       ; $48a8: $77
	cp [hl]                                          ; $48a9: $be
	ld [hl], l                                       ; $48aa: $75
	ld l, e                                          ; $48ab: $6b
	ld a, c                                          ; $48ac: $79
	rst SubAFromDE                                          ; $48ad: $df
	db $fd                                           ; $48ae: $fd
	ld a, e                                          ; $48af: $7b
	ld hl, sp-$24                                    ; $48b0: $f8 $dc
	ld sp, hl                                        ; $48b2: $f9
	ld a, e                                          ; $48b3: $7b
	ret z                                            ; $48b4: $c8

	ld a, [$f86f]                                    ; $48b5: $fa $6f $f8
	sbc $03                                          ; $48b8: $de $03
	ld a, c                                          ; $48ba: $79
	adc c                                            ; $48bb: $89
	ld l, c                                          ; $48bc: $69
	add d                                            ; $48bd: $82
	ld l, e                                          ; $48be: $6b
	ld c, b                                          ; $48bf: $48
	sbc [hl]                                         ; $48c0: $9e
	ccf                                              ; $48c1: $3f
	sbc $03                                          ; $48c2: $de $03
	sbc [hl]                                         ; $48c4: $9e
	rst AddAOntoHL                                          ; $48c5: $ef
	ld a, e                                          ; $48c6: $7b
	ld sp, hl                                        ; $48c7: $f9
	sbc [hl]                                         ; $48c8: $9e
	add hl, bc                                       ; $48c9: $09
	ld a, e                                          ; $48ca: $7b
	db $ec                                           ; $48cb: $ec
	ld h, [hl]                                       ; $48cc: $66
	call c, $e49d                                    ; $48cd: $dc $9d $e4
	add sp, $7b                                      ; $48d0: $e8 $7b
	ld hl, sp-$65                                    ; $48d2: $f8 $9b
	dec e                                            ; $48d4: $1d
	ld a, a                                          ; $48d5: $7f
	rst $38                                          ; $48d6: $ff
	ld bc, $6375                                     ; $48d7: $01 $75 $63
	ld [hl], e                                       ; $48da: $73
	rst JumpTable                                          ; $48db: $c7
	ld [hl], l                                       ; $48dc: $75
	cp e                                             ; $48dd: $bb
	ld a, a                                          ; $48de: $7f
	dec [hl]                                         ; $48df: $35
	ld [hl], e                                       ; $48e0: $73
	scf                                              ; $48e1: $37
	sbc $01                                          ; $48e2: $de $01
	sbc d                                            ; $48e4: $9a
	ld [hl], e                                       ; $48e5: $73
	rst JumpTable                                          ; $48e6: $c7
	inc h                                            ; $48e7: $24
	ccf                                              ; $48e8: $3f
	inc de                                           ; $48e9: $13
	ld a, e                                          ; $48ea: $7b
	ret nc                                           ; $48eb: $d0

	ld a, [hl]                                       ; $48ec: $7e
	push af                                          ; $48ed: $f5
	ld a, a                                          ; $48ee: $7f
	inc c                                            ; $48ef: $0c
	sbc [hl]                                         ; $48f0: $9e
	ret nz                                           ; $48f1: $c0

	sbc $80                                          ; $48f2: $de $80
	ld a, a                                          ; $48f4: $7f
	ld hl, sp-$67                                    ; $48f5: $f8 $99
	cp h                                             ; $48f7: $bc
	ld hl, sp-$40                                    ; $48f8: $f8 $c0
	sbc h                                            ; $48fa: $9c
	rst $38                                          ; $48fb: $ff
	ld a, a                                          ; $48fc: $7f
	ldh a, [c]                                       ; $48fd: $f2
	sbc [hl]                                         ; $48fe: $9e
	add b                                            ; $48ff: $80
	ld [hl], h                                       ; $4900: $74
	ld d, b                                          ; $4901: $50
	sbc [hl]                                         ; $4902: $9e
	dec a                                            ; $4903: $3d
	ld [hl], l                                       ; $4904: $75
	ld d, d                                          ; $4905: $52
	sbc e                                            ; $4906: $9b
	ld a, a                                          ; $4907: $7f
	cp a                                             ; $4908: $bf
	ld [hl], c                                       ; $4909: $71
	ld [$906f], sp                                   ; $490a: $08 $6f $90
	sbc l                                            ; $490d: $9d
	cp $f0                                           ; $490e: $fe $f0
	ld [hl], b                                       ; $4910: $70
	adc b                                            ; $4911: $88
	ld a, a                                          ; $4912: $7f
	ld sp, hl                                        ; $4913: $f9
	sbc d                                            ; $4914: $9a
	ldh [$cf], a                                     ; $4915: $e0 $cf
	rst SubAFromDE                                          ; $4917: $df
	ccf                                              ; $4918: $3f
	nop                                              ; $4919: $00
	ld l, a                                          ; $491a: $6f
	ld a, c                                          ; $491b: $79
	ld a, [$9f7f]                                    ; $491c: $fa $7f $9f
	ld [hl], a                                       ; $491f: $77
	ret nc                                           ; $4920: $d0

	ld a, a                                          ; $4921: $7f
	db $eb                                           ; $4922: $eb
	rst $38                                          ; $4923: $ff
	sbc e                                            ; $4924: $9b
	ld a, h                                          ; $4925: $7c
	ld sp, hl                                        ; $4926: $f9
	rst SubAFromDE                                          ; $4927: $df
	ccf                                              ; $4928: $3f
	halt                                             ; $4929: $76
	halt                                             ; $492a: $76
	ld e, a                                          ; $492b: $5f
	ret nc                                           ; $492c: $d0

	ld a, a                                          ; $492d: $7f
	sbc b                                            ; $492e: $98
	sbc h                                            ; $492f: $9c
	ldh [$c3], a                                     ; $4930: $e0 $c3
	ld e, a                                          ; $4932: $5f
	ld [hl], a                                       ; $4933: $77
	push hl                                          ; $4934: $e5
	ld e, e                                          ; $4935: $5b
	pop de                                           ; $4936: $d1
	ld a, [hl]                                       ; $4937: $7e
	push de                                          ; $4938: $d5
	rst SubAFromDE                                          ; $4939: $df
	ld a, a                                          ; $493a: $7f
	ld a, [hl]                                       ; $493b: $7e
	db $ec                                           ; $493c: $ec
	ld [hl], a                                       ; $493d: $77
	ret c                                            ; $493e: $d8

	sbc h                                            ; $493f: $9c
	ld bc, $0f19                                     ; $4940: $01 $19 $0f
	ld [hl], d                                       ; $4943: $72
	ld b, a                                          ; $4944: $47
	ld [hl], d                                       ; $4945: $72
	db $fc                                           ; $4946: $fc
	sbc $c0                                          ; $4947: $de $c0
	sub a                                            ; $4949: $97
	cp a                                             ; $494a: $bf
	rst SubAFromDE                                          ; $494b: $df
	rst $38                                          ; $494c: $ff
	cp $d8                                           ; $494d: $fe $d8
	adc $3f                                          ; $494f: $ce $3f
	ccf                                              ; $4951: $3f
	sbc $80                                          ; $4952: $de $80
	ld l, e                                          ; $4954: $6b
	halt                                             ; $4955: $76
	ld [hl], a                                       ; $4956: $77
	ld hl, sp+$7e                                    ; $4957: $f8 $7e
	ld d, $fa                                        ; $4959: $16 $fa
	ld a, h                                          ; $495b: $7c
	ld c, b                                          ; $495c: $48
	jp c, Jump_03f_6fff                              ; $495d: $da $ff $6f

	inc h                                            ; $4960: $24
	ld l, d                                          ; $4961: $6a
	jp $ffde                                         ; $4962: $c3 $de $ff


	rst SubAFromDE                                          ; $4965: $df
	ld b, $7f                                        ; $4966: $06 $7f
	db $e4                                           ; $4968: $e4
	ld e, a                                          ; $4969: $5f
	ldh a, [c]                                       ; $496a: $f2
	jp c, $9cff                                      ; $496b: $da $ff $9c

	cp $f1                                           ; $496e: $fe $f1
	adc a                                            ; $4970: $8f
	ld l, e                                          ; $4971: $6b
	rst FarCall                                          ; $4972: $f7
	sbc [hl]                                         ; $4973: $9e
	ldh a, [$7b]                                     ; $4974: $f0 $7b
	db $e4                                           ; $4976: $e4
	sbc l                                            ; $4977: $9d
	ld hl, sp-$39                                    ; $4978: $f8 $c7
	ld a, e                                          ; $497a: $7b
	ei                                               ; $497b: $fb
	ld a, e                                          ; $497c: $7b
	ld l, a                                          ; $497d: $6f
	ld a, a                                          ; $497e: $7f
	rst FarCall                                          ; $497f: $f7
	sbc [hl]                                         ; $4980: $9e
	ret nz                                           ; $4981: $c0

	halt                                             ; $4982: $76
	sbc b                                            ; $4983: $98
	sbc [hl]                                         ; $4984: $9e
	rra                                              ; $4985: $1f
	call c, $9eff                                    ; $4986: $dc $ff $9e
	inc bc                                           ; $4989: $03
	ld l, b                                          ; $498a: $68
	ld e, d                                          ; $498b: $5a
	ld a, a                                          ; $498c: $7f
	ld b, d                                          ; $498d: $42
	ld d, e                                          ; $498e: $53
	and [hl]                                         ; $498f: $a6
	ld h, e                                          ; $4990: $63
	ldh a, [$7e]                                     ; $4991: $f0 $7e
	call c, Call_03f_71fb                            ; $4993: $dc $fb $71
	or $77                                           ; $4996: $f6 $77
	ret nc                                           ; $4998: $d0

	ld a, [$d14b]                                    ; $4999: $fa $4b $d1
	ld l, l                                          ; $499c: $6d
	cp b                                             ; $499d: $b8
	ld e, a                                          ; $499e: $5f
	pop af                                           ; $499f: $f1
	ld h, e                                          ; $49a0: $63
	ldh a, [$66]                                     ; $49a1: $f0 $66
	reti                                             ; $49a3: $d9


	ld h, e                                          ; $49a4: $63
	ld h, h                                          ; $49a5: $64
	daa                                              ; $49a6: $27
	ret nc                                           ; $49a7: $d0

	ld l, e                                          ; $49a8: $6b
	sbc a                                            ; $49a9: $9f
	ld l, d                                          ; $49aa: $6a
	ld hl, $d07f                                     ; $49ab: $21 $7f $d0
	sbc [hl]                                         ; $49ae: $9e
	rst FarCall                                          ; $49af: $f7
	jp c, $75ff                                      ; $49b0: $da $ff $75

	db $db                                           ; $49b3: $db
	ld e, e                                          ; $49b4: $5b
	ret nc                                           ; $49b5: $d0

	ld l, e                                          ; $49b6: $6b
	pop af                                           ; $49b7: $f1
	ccf                                              ; $49b8: $3f
	and b                                            ; $49b9: $a0
	sbc [hl]                                         ; $49ba: $9e
	rst SubAFromBC                                          ; $49bb: $e7
	cpl                                              ; $49bc: $2f
	ret nc                                           ; $49bd: $d0

	ld h, [hl]                                       ; $49be: $66
	rst JumpTable                                          ; $49bf: $c7
	ld l, [hl]                                       ; $49c0: $6e
	ld sp, hl                                        ; $49c1: $f9
	sbc l                                            ; $49c2: $9d
	ldh [rSC], a                                     ; $49c3: $e0 $02
	jp c, $9eff                                      ; $49c5: $da $ff $9e

	db $fd                                           ; $49c8: $fd
	ld [hl], l                                       ; $49c9: $75
	ld [hl], e                                       ; $49ca: $73
	sbc e                                            ; $49cb: $9b
	rst GetHLinHL                                          ; $49cc: $cf
	rla                                              ; $49cd: $17
	xor h                                            ; $49ce: $ac
	ld b, b                                          ; $49cf: $40
	db $dd                                           ; $49d0: $dd
	rst $38                                          ; $49d1: $ff
	sub a                                            ; $49d2: $97
	ldh a, [$e8]                                     ; $49d3: $f0 $e8
	ld d, e                                          ; $49d5: $53
	cp h                                             ; $49d6: $bc
	db $fc                                           ; $49d7: $fc
	db $e3                                           ; $49d8: $e3
	rra                                              ; $49d9: $1f

jr_03f_49da:
	db $fc                                           ; $49da: $fc
	ld [hl], a                                       ; $49db: $77
	call nc, Call_03f_7b7e                           ; $49dc: $d4 $7e $7b
	sbc h                                            ; $49df: $9c
	ldh [$03], a                                     ; $49e0: $e0 $03
	inc e                                            ; $49e2: $1c
	ld a, e                                          ; $49e3: $7b
	rst FarCall                                          ; $49e4: $f7
	ld e, a                                          ; $49e5: $5f
	add $9e                                          ; $49e6: $c6 $9e
	rra                                              ; $49e8: $1f
	ld [hl], e                                       ; $49e9: $73
	rst FarCall                                          ; $49ea: $f7
	ld l, l                                          ; $49eb: $6d
	ld h, d                                          ; $49ec: $62
	ld [hl], a                                       ; $49ed: $77
	rlca                                             ; $49ee: $07
	ld l, a                                          ; $49ef: $6f
	rst FarCall                                          ; $49f0: $f7
	ld c, a                                          ; $49f1: $4f
	ldh [c], a                                       ; $49f2: $e2
	rst FarCall                                          ; $49f3: $f7
	ld h, e                                          ; $49f4: $63
	cpl                                              ; $49f5: $2f
	inc bc                                           ; $49f6: $03
	ldh a, [rWX]                                     ; $49f7: $f0 $4b
	ldh a, [$9e]                                     ; $49f9: $f0 $9e
	db $10                                           ; $49fb: $10
	ld c, e                                          ; $49fc: $4b
	ldh a, [$9e]                                     ; $49fd: $f0 $9e
	add h                                            ; $49ff: $84

jr_03f_4a00:
	ld c, e                                          ; $4a00: $4b
	ldh a, [$9e]                                     ; $4a01: $f0 $9e
	ld e, e                                          ; $4a03: $5b
	ld c, e                                          ; $4a04: $4b
	ldh a, [$9e]                                     ; $4a05: $f0 $9e
	ld l, l                                          ; $4a07: $6d
	ld c, e                                          ; $4a08: $4b
	ldh a, [$9d]                                     ; $4a09: $f0 $9d
	or [hl]                                          ; $4a0b: $b6
	add hl, bc                                       ; $4a0c: $09
	ld c, a                                          ; $4a0d: $4f
	ldh a, [$9d]                                     ; $4a0e: $f0 $9d
	db $db                                           ; $4a10: $db
	inc h                                            ; $4a11: $24
	ld c, e                                          ; $4a12: $4b
	ret nc                                           ; $4a13: $d0

	sbc [hl]                                         ; $4a14: $9e
	sub d                                            ; $4a15: $92
	ld c, e                                          ; $4a16: $4b
	ret nc                                           ; $4a17: $d0

	sbc [hl]                                         ; $4a18: $9e
	ld c, c                                          ; $4a19: $49
	inc bc                                           ; $4a1a: $03
	ret nc                                           ; $4a1b: $d0

	ld c, e                                          ; $4a1c: $4b
	ld d, b                                          ; $4a1d: $50
	sbc e                                            ; $4a1e: $9b
	inc bc                                           ; $4a1f: $03
	inc c                                            ; $4a20: $0c
	inc de                                           ; $4a21: $13
	ccf                                              ; $4a22: $3f
	halt                                             ; $4a23: $76
	add hl, bc                                       ; $4a24: $09

Jump_03f_4a25:
	sub c                                            ; $4a25: $91
	db $fc                                           ; $4a26: $fc
	ldh a, [$e0]                                     ; $4a27: $f0 $e0
	ret nz                                           ; $4a29: $c0

	add b                                            ; $4a2a: $80
	ld [$c030], sp                                   ; $4a2b: $08 $30 $c0
	jr nz, jr_03f_4a00                               ; $4a2e: $20 $d0

	inc hl                                           ; $4a30: $23
	rst GetHLinHL                                          ; $4a31: $cf
	sbc a                                            ; $4a32: $9f
	ldh a, [$79]                                     ; $4a33: $f0 $79
	or h                                             ; $4a35: $b4
	ei                                               ; $4a36: $fb
	sbc e                                            ; $4a37: $9b
	dec h                                            ; $4a38: $25
	ld [de], a                                       ; $4a39: $12
	call z, Call_03f_5e33                            ; $4a3a: $cc $33 $5e
	jr nc, jr_03f_49da                               ; $4a3d: $30 $9b

	nop                                              ; $4a3f: $00
	add d                                            ; $4a40: $82
	ld b, h                                          ; $4a41: $44
	inc hl                                           ; $4a42: $23
	ld c, a                                          ; $4a43: $4f
	ldh a, [$9d]                                     ; $4a44: $f0 $9d
	ld d, l                                          ; $4a46: $55
	ld [hl+], a                                      ; $4a47: $22
	ld d, e                                          ; $4a48: $53
	ldh a, [$9c]                                     ; $4a49: $f0 $9c
	ld hl, $3344                                     ; $4a4b: $21 $44 $33
	ld d, e                                          ; $4a4e: $53
	ldh a, [$9c]                                     ; $4a4f: $f0 $9c
	inc b                                            ; $4a51: $04
	xor b                                            ; $4a52: $a8
	inc de                                           ; $4a53: $13
	ld d, e                                          ; $4a54: $53
	ldh a, [$9c]                                     ; $4a55: $f0 $9c
	ld bc, $11aa                                     ; $4a57: $01 $aa $11
	ld d, e                                          ; $4a5a: $53
	ldh a, [$9d]                                     ; $4a5b: $f0 $9d
	nop                                              ; $4a5d: $00
	ld d, h                                          ; $4a5e: $54
	ld c, a                                          ; $4a5f: $4f
	or b                                             ; $4a60: $b0
	sbc [hl]                                         ; $4a61: $9e

jr_03f_4a62:
	db $10                                           ; $4a62: $10
	ld c, e                                          ; $4a63: $4b
	ldh [$7f], a                                     ; $4a64: $e0 $7f
	ret nz                                           ; $4a66: $c0

	ld c, a                                          ; $4a67: $4f
	ldh a, [$9d]                                     ; $4a68: $f0 $9d
	db $10                                           ; $4a6a: $10
	and h                                            ; $4a6b: $a4
	ld c, a                                          ; $4a6c: $4f
	or b                                             ; $4a6d: $b0
	sbc [hl]                                         ; $4a6e: $9e
	nop                                              ; $4a6f: $00
	ld c, e                                          ; $4a70: $4b
	ret nc                                           ; $4a71: $d0

	sbc l                                            ; $4a72: $9d
	ld b, c                                          ; $4a73: $41
	add h                                            ; $4a74: $84
	ld c, a                                          ; $4a75: $4f
	add b                                            ; $4a76: $80
	sbc l                                            ; $4a77: $9d
	nop                                              ; $4a78: $00
	adc b                                            ; $4a79: $88
	ld c, a                                          ; $4a7a: $4f
	ret nc                                           ; $4a7b: $d0

	sbc [hl]                                         ; $4a7c: $9e
	inc b                                            ; $4a7d: $04
	ld b, a                                          ; $4a7e: $47
	add b                                            ; $4a7f: $80
	inc bc                                           ; $4a80: $03
	ret nz                                           ; $4a81: $c0

	inc de                                           ; $4a82: $13
	ret nz                                           ; $4a83: $c0

	ld a, l                                          ; $4a84: $7d
	add h                                            ; $4a85: $84
	sbc c                                            ; $4a86: $99
	cp $fc                                           ; $4a87: $fe $fc
	db $fd                                           ; $4a89: $fd
	ld sp, hl                                        ; $4a8a: $f9
	ei                                               ; $4a8b: $fb
	di                                               ; $4a8c: $f3
	ld sp, hl                                        ; $4a8d: $f9
	ld [hl], d                                       ; $4a8e: $72
	or [hl]                                          ; $4a8f: $b6
	jr c, jr_03f_4a62                                ; $4a90: $38 $d0

	inc bc                                           ; $4a92: $03
	ldh a, [$03]                                     ; $4a93: $f0 $03
	ldh a, [$03]                                     ; $4a95: $f0 $03
	ldh a, [$03]                                     ; $4a97: $f0 $03
	ldh a, [$03]                                     ; $4a99: $f0 $03
	ldh a, [$03]                                     ; $4a9b: $f0 $03
	ldh a, [$03]                                     ; $4a9d: $f0 $03
	ldh a, [$03]                                     ; $4a9f: $f0 $03
	ldh a, [rBGP]                                    ; $4aa1: $f0 $47
	ldh a, [$dc]                                     ; $4aa3: $f0 $dc
	rst FarCall                                          ; $4aa5: $f7
	sbc h                                            ; $4aa6: $9c
	di                                               ; $4aa7: $f3
	ei                                               ; $4aa8: $fb
	ei                                               ; $4aa9: $fb
	inc bc                                           ; $4aaa: $03
	ret nc                                           ; $4aab: $d0

	inc bc                                           ; $4aac: $03
	ldh a, [$03]                                     ; $4aad: $f0 $03
	ldh a, [$03]                                     ; $4aaf: $f0 $03
	ldh a, [$03]                                     ; $4ab1: $f0 $03
	ldh a, [$03]                                     ; $4ab3: $f0 $03
	ldh a, [$03]                                     ; $4ab5: $f0 $03
	ldh a, [$03]                                     ; $4ab7: $f0 $03
	ldh a, [$03]                                     ; $4ab9: $f0 $03
	ldh a, [rWX]                                     ; $4abb: $f0 $4b
	ldh a, [$9c]                                     ; $4abd: $f0 $9c

jr_03f_4abf:
	or e                                             ; $4abf: $b3
	ret z                                            ; $4ac0: $c8

	jr nc, jr_03f_4abf                               ; $4ac1: $30 $fc

	sub h                                            ; $4ac3: $94
	ld c, b                                          ; $4ac4: $48
	ld sp, $7ecc                                     ; $4ac5: $31 $cc $7e
	ld a, a                                          ; $4ac8: $7f
	ccf                                              ; $4ac9: $3f
	cp a                                             ; $4aca: $bf
	sbc a                                            ; $4acb: $9f
	cp e                                             ; $4acc: $bb
	call z, $fc33                                    ; $4acd: $cc $33 $fc
	ld a, b                                          ; $4ad0: $78
	ld a, d                                          ; $4ad1: $7a
	sbc c                                            ; $4ad2: $99
	rst $38                                          ; $4ad3: $ff
	ld a, a                                          ; $4ad4: $7f
	ccf                                              ; $4ad5: $3f
	sbc a                                            ; $4ad6: $9f
	rst GetHLinHL                                          ; $4ad7: $cf
	or a                                             ; $4ad8: $b7
	ld l, e                                          ; $4ad9: $6b
	ldh a, [$9e]                                     ; $4ada: $f0 $9e
	ld c, b                                          ; $4adc: $48
	ld a, e                                          ; $4add: $7b
	ldh a, [$dd]                                     ; $4ade: $f0 $dd
	rst $38                                          ; $4ae0: $ff
	inc bc                                           ; $4ae1: $03
	ldh a, [$03]                                     ; $4ae2: $f0 $03
	ldh a, [$03]                                     ; $4ae4: $f0 $03
	ldh a, [$03]                                     ; $4ae6: $f0 $03
	ldh a, [$03]                                     ; $4ae8: $f0 $03
	ldh a, [$03]                                     ; $4aea: $f0 $03
	ldh a, [$03]                                     ; $4aec: $f0 $03
	ldh a, [$03]                                     ; $4aee: $f0 $03
	ldh a, [$67]                                     ; $4af0: $f0 $67
	ldh a, [$f9]                                     ; $4af2: $f0 $f9
	sub a                                            ; $4af4: $97
	rst SubAFromDE                                          ; $4af5: $df
	rst GetHLinHL                                          ; $4af6: $cf
	rst SubAFromBC                                          ; $4af7: $e7
	di                                               ; $4af8: $f3
	ld sp, hl                                        ; $4af9: $f9
	ld a, h                                          ; $4afa: $7c
	ld a, $9f                                        ; $4afb: $3e $9f
	ld sp, hl                                        ; $4afd: $f9
	ld a, e                                          ; $4afe: $7b
	ldh a, [c]                                       ; $4aff: $f2
	sbc d                                            ; $4b00: $9a
	db $fc                                           ; $4b01: $fc
	cp $ff                                           ; $4b02: $fe $ff
	ld a, a                                          ; $4b04: $7f
	rrca                                             ; $4b05: $0f
	ld d, [hl]                                       ; $4b06: $56
	adc b                                            ; $4b07: $88
	sbc e                                            ; $4b08: $9b
	ccf                                              ; $4b09: $3f
	adc a                                            ; $4b0a: $8f
	db $e3                                           ; $4b0b: $e3
	ld hl, sp+$4a                                    ; $4b0c: $f8 $4a
	ld a, b                                          ; $4b0e: $78
	sbc [hl]                                         ; $4b0f: $9e
	rra                                              ; $4b10: $1f
	ld [bc], a                                       ; $4b11: $02
	ld e, b                                          ; $4b12: $58
	inc bc                                           ; $4b13: $03
	ldh a, [$03]                                     ; $4b14: $f0 $03
	ldh a, [$03]                                     ; $4b16: $f0 $03
	ldh a, [$03]                                     ; $4b18: $f0 $03
	ldh a, [$03]                                     ; $4b1a: $f0 $03
	ldh a, [$03]                                     ; $4b1c: $f0 $03
	ldh a, [rAUD4GO]                                 ; $4b1e: $f0 $23
	ldh a, [rAUD3ENA]                                ; $4b20: $f0 $1a
	nop                                              ; $4b22: $00
	bit 2, l                                         ; $4b23: $cb $55
	sbc h                                            ; $4b25: $9c
	ld d, [hl]                                       ; $4b26: $56
	ld h, [hl]                                       ; $4b27: $66
	ld h, [hl]                                       ; $4b28: $66
	ld [hl], a                                       ; $4b29: $77
	db $fd                                           ; $4b2a: $fd
	sbc l                                            ; $4b2b: $9d
	ld h, l                                          ; $4b2c: $65
	ld d, l                                          ; $4b2d: $55
	ret c                                            ; $4b2e: $d8

	ld h, [hl]                                       ; $4b2f: $66
	sbc l                                            ; $4b30: $9d
	ld d, l                                          ; $4b31: $55
	ld d, a                                          ; $4b32: $57
	sub $77                                          ; $4b33: $d6 $77
	pop bc                                           ; $4b35: $c1
	inc sp                                           ; $4b36: $33
	call c, $cd33                                    ; $4b37: $dc $33 $cd
	ld b, h                                          ; $4b3a: $44
	sbc [hl]                                         ; $4b3b: $9e
	add [hl]                                         ; $4b3c: $86
	rst $38                                          ; $4b3d: $ff
	sbc l                                            ; $4b3e: $9d
	rst $38                                          ; $4b3f: $ff
	rra                                              ; $4b40: $1f
	cp $d9                                           ; $4b41: $fe $d9
	rst $38                                          ; $4b43: $ff
	sbc d                                            ; $4b44: $9a
	nop                                              ; $4b45: $00
	rlca                                             ; $4b46: $07
	rlca                                             ; $4b47: $07
	rst SubAFromBC                                          ; $4b48: $e7
	rst $38                                          ; $4b49: $ff
	sbc $1f                                          ; $4b4a: $de $1f
	sbc [hl]                                         ; $4b4c: $9e
	rst SubAFromDE                                          ; $4b4d: $df
	jp c, $9aff                                      ; $4b4e: $da $ff $9a

	ccf                                              ; $4b51: $3f
	db $f4                                           ; $4b52: $f4
	db $f4                                           ; $4b53: $f4
	push af                                          ; $4b54: $f5
	db $f4                                           ; $4b55: $f4
	db $dd                                           ; $4b56: $dd
	db $fc                                           ; $4b57: $fc
	reti                                             ; $4b58: $d9


	ei                                               ; $4b59: $fb
	adc h                                            ; $4b5a: $8c
	rlca                                             ; $4b5b: $07
	ld a, l                                          ; $4b5c: $7d
	rst $38                                          ; $4b5d: $ff
	rra                                              ; $4b5e: $1f
	inc de                                           ; $4b5f: $13
	jr @+$1d                                         ; $4b60: $18 $1b

	rra                                              ; $4b62: $1f
	ld hl, sp-$7d                                    ; $4b63: $f8 $83
	rst $38                                          ; $4b65: $ff
	rst $38                                          ; $4b66: $ff
	db $fc                                           ; $4b67: $fc
	rst FarCall                                          ; $4b68: $f7
	db $f4                                           ; $4b69: $f4
	ldh a, [rP1]                                     ; $4b6a: $f0 $00
	rrca                                             ; $4b6c: $0f
	rst $38                                          ; $4b6d: $ff
	call c, $7b07                                    ; $4b6e: $dc $07 $7b
	ldh a, [c]                                       ; $4b71: $f2
	sbc l                                            ; $4b72: $9d
	xor b                                            ; $4b73: $a8
	ld e, b                                          ; $4b74: $58
	ld a, e                                          ; $4b75: $7b
	cp $63                                           ; $4b76: $fe $63
	or [hl]                                          ; $4b78: $b6
	ld a, a                                          ; $4b79: $7f
	or l                                             ; $4b7a: $b5
	db $fc                                           ; $4b7b: $fc
	jp c, $9cff                                      ; $4b7c: $da $ff $9c

	ret nz                                           ; $4b7f: $c0

	rst $38                                          ; $4b80: $ff
	ldh [$57], a                                     ; $4b81: $e0 $57
	ldh a, [$9d]                                     ; $4b83: $f0 $9d
	db $fc                                           ; $4b85: $fc
	nop                                              ; $4b86: $00
	ld l, e                                          ; $4b87: $6b
	pop hl                                           ; $4b88: $e1
	sbc l                                            ; $4b89: $9d
	nop                                              ; $4b8a: $00
	add c                                            ; $4b8b: $81
	ld l, e                                          ; $4b8c: $6b
	call nc, $fe9e                                   ; $4b8d: $d4 $9e $fe
	ld a, [$ffdc]                                    ; $4b90: $fa $dc $ff
	sbc [hl]                                         ; $4b93: $9e
	ld hl, sp-$09                                    ; $4b94: $f8 $f7
	ld e, e                                          ; $4b96: $5b
	or l                                             ; $4b97: $b5
	ld h, e                                          ; $4b98: $63
	ldh a, [$5b]                                     ; $4b99: $f0 $5b
	pop hl                                           ; $4b9b: $e1
	sbc [hl]                                         ; $4b9c: $9e
	nop                                              ; $4b9d: $00
	reti                                             ; $4b9e: $d9


	ccf                                              ; $4b9f: $3f
	rst SubAFromDE                                          ; $4ba0: $df
	ldh a, [$df]                                     ; $4ba1: $f0 $df
	or b                                             ; $4ba3: $b0
	db $dd                                           ; $4ba4: $dd
	jr nc, jr_03f_4c0e                               ; $4ba5: $30 $67

	sbc b                                            ; $4ba7: $98
	rst $38                                          ; $4ba8: $ff
	sbc h                                            ; $4ba9: $9c
	ld [$2050], sp                                   ; $4baa: $08 $50 $20
	ld a, e                                          ; $4bad: $7b
	cp $fe                                           ; $4bae: $fe $fe
	sbc d                                            ; $4bb0: $9a
	jr jr_03f_4c25                                   ; $4bb1: $18 $72

	db $eb                                           ; $4bb3: $eb
	inc a                                            ; $4bb4: $3c
	dec sp                                           ; $4bb5: $3b
	ld [hl], a                                       ; $4bb6: $77
	ld hl, sp-$65                                    ; $4bb7: $f8 $9b
	jr nc, jr_03f_4c30                               ; $4bb9: $30 $75

	or e                                             ; $4bbb: $b3
	ld a, c                                          ; $4bbc: $79
	cp $df                                           ; $4bbd: $fe $df
	ld b, b                                          ; $4bbf: $40
	sbc h                                            ; $4bc0: $9c
	pop bc                                           ; $4bc1: $c1
	ldh a, [$f0]                                     ; $4bc2: $f0 $f0
	cp $de                                           ; $4bc4: $fe $de
	ret nz                                           ; $4bc6: $c0

	adc l                                            ; $4bc7: $8d
	ld b, b                                          ; $4bc8: $40
	ld [hl], b                                       ; $4bc9: $70
	nop                                              ; $4bca: $00
	nop                                              ; $4bcb: $00
	ld e, e                                          ; $4bcc: $5b
	add sp, -$7f                                     ; $4bcd: $e8 $81
	rrca                                             ; $4bcf: $0f
	dec c                                            ; $4bd0: $0d
	sbc h                                            ; $4bd1: $9c
	nop                                              ; $4bd2: $00
	nop                                              ; $4bd3: $00
	add hl, hl                                       ; $4bd4: $29
	ld a, [hl]                                       ; $4bd5: $7e
	jp nz, $079e                                     ; $4bd6: $c2 $9e $07

	ld l, h                                          ; $4bd9: $6c
	cp $80                                           ; $4bda: $fe $80
	pop hl                                           ; $4bdc: $e1
	ld bc, $c101                                     ; $4bdd: $01 $01 $c1
	ld bc, $0000                                     ; $4be0: $01 $00 $00
	ld bc, $81c0                                     ; $4be3: $01 $c0 $81
	nop                                              ; $4be6: $00
	ret nz                                           ; $4be7: $c0

	nop                                              ; $4be8: $00
	nop                                              ; $4be9: $00
	ld d, b                                          ; $4bea: $50
	rst AddAOntoHL                                          ; $4beb: $ef
	ld a, [hl]                                       ; $4bec: $7e
	dec c                                            ; $4bed: $0d
	ld e, [hl]                                       ; $4bee: $5e
	sbc l                                            ; $4bef: $9d
	sbc h                                            ; $4bf0: $9c
	nop                                              ; $4bf1: $00
	rst GetHLinHL                                          ; $4bf2: $cf
	rst $38                                          ; $4bf3: $ff
	xor l                                            ; $4bf4: $ad
	db $ec                                           ; $4bf5: $ec
	db $ec                                           ; $4bf6: $ec
	xor a                                            ; $4bf7: $af
	db $ec                                           ; $4bf8: $ec
	add hl, bc                                       ; $4bf9: $09
	sub l                                            ; $4bfa: $95
	sub d                                            ; $4bfb: $92
	add hl, bc                                       ; $4bfc: $09
	dec d                                            ; $4bfd: $15
	adc c                                            ; $4bfe: $89
	sub l                                            ; $4bff: $95
	adc c                                            ; $4c00: $89
	dec d                                            ; $4c01: $15
	ld bc, $8101                                     ; $4c02: $01 $01 $81
	ld bc, $c181                                     ; $4c05: $01 $81 $c1
	add c                                            ; $4c08: $81
	ld a, e                                          ; $4c09: $7b
	ret c                                            ; $4c0a: $d8

	ld [hl], a                                       ; $4c0b: $77
	ld h, c                                          ; $4c0c: $61
	sbc l                                            ; $4c0d: $9d

jr_03f_4c0e:
	ld bc, $6f8a                                     ; $4c0e: $01 $8a $6f
	ld e, c                                          ; $4c11: $59
	sbc b                                            ; $4c12: $98
	ld [bc], a                                       ; $4c13: $02
	inc b                                            ; $4c14: $04
	inc bc                                           ; $4c15: $03
	ld bc, $fdf9                                     ; $4c16: $01 $f9 $fd
	ld a, l                                          ; $4c19: $7d
	sbc $05                                          ; $4c1a: $de $05
	sbc [hl]                                         ; $4c1c: $9e
	db $fc                                           ; $4c1d: $fc
	sbc $fe                                          ; $4c1e: $de $fe
	db $dd                                           ; $4c20: $dd
	ld b, $d9                                        ; $4c21: $06 $d9
	ld hl, sp-$27                                    ; $4c23: $f8 $d9

jr_03f_4c25:
	rst $38                                          ; $4c25: $ff
	reti                                             ; $4c26: $d9


jr_03f_4c27:
	rra                                              ; $4c27: $1f
	reti                                             ; $4c28: $d9


	ldh a, [$d9]                                     ; $4c29: $f0 $d9
	rlca                                             ; $4c2b: $07
	halt                                             ; $4c2c: $76
	call nz, $fe77                                   ; $4c2d: $c4 $77 $fe

jr_03f_4c30:
	sub a                                            ; $4c30: $97
	cp a                                             ; $4c31: $bf
	sub e                                            ; $4c32: $93
	sub c                                            ; $4c33: $91
	ld de, $0111                                     ; $4c34: $11 $11 $01
	ccf                                              ; $4c37: $3f
	inc a                                            ; $4c38: $3c
	ld l, e                                          ; $4c39: $6b
	ld [hl+], a                                      ; $4c3a: $22
	sbc [hl]                                         ; $4c3b: $9e
	ld a, $dc                                        ; $4c3c: $3e $dc
	rst $38                                          ; $4c3e: $ff
	sbc h                                            ; $4c3f: $9c
	ldh a, [$c0]                                     ; $4c40: $f0 $c0
	add b                                            ; $4c42: $80
	db $fc                                           ; $4c43: $fc
	sbc l                                            ; $4c44: $9d
	jr jr_03f_4c27                                   ; $4c45: $18 $e0

	ld [hl], a                                       ; $4c47: $77
	nop                                              ; $4c48: $00
	sbc d                                            ; $4c49: $9a
	cp $80                                           ; $4c4a: $fe $80
	inc bc                                           ; $4c4c: $03
	rra                                              ; $4c4d: $1f
	rlca                                             ; $4c4e: $07
	ld e, [hl]                                       ; $4c4f: $5e

jr_03f_4c50:
	ldh a, [$7e]                                     ; $4c50: $f0 $7e
	ldh a, [c]                                       ; $4c52: $f2
	ld a, [hl]                                       ; $4c53: $7e
	ld a, l                                          ; $4c54: $7d
	sbc [hl]                                         ; $4c55: $9e
	rst $38                                          ; $4c56: $ff
	ld l, a                                          ; $4c57: $6f
	ldh [rPCM34], a                                  ; $4c58: $e0 $77
	ldh a, [$98]                                     ; $4c5a: $f0 $98
	ret nz                                           ; $4c5c: $c0

	ld b, $fe                                        ; $4c5d: $06 $fe
	cp $f6                                           ; $4c5f: $fe $f6
	ld [bc], a                                       ; $4c61: $02
	ld l, b                                          ; $4c62: $68
	ld sp, hl                                        ; $4c63: $f9
	sbc h                                            ; $4c64: $9c
	jr z, jr_03f_4ca3                                ; $4c65: $28 $3c

	scf                                              ; $4c67: $37
	call c, $9c33                                    ; $4c68: $dc $33 $9c
	db $10                                           ; $4c6b: $10
	jr jr_03f_4c86                                   ; $4c6c: $18 $18

	call c, $ff1f                                    ; $4c6e: $dc $1f $ff
	sbc [hl]                                         ; $4c71: $9e
	jr nz, jr_03f_4c50                               ; $4c72: $20 $dc

	ldh a, [rIE]                                     ; $4c74: $f0 $ff
	db $db                                           ; $4c76: $db
	ldh a, [$dd]                                     ; $4c77: $f0 $dd
	ccf                                              ; $4c79: $3f
	sbc $30                                          ; $4c7a: $de $30
	sbc [hl]                                         ; $4c7c: $9e
	inc sp                                           ; $4c7d: $33
	db $db                                           ; $4c7e: $db
	jr nc, @-$1f                                     ; $4c7f: $30 $df

	scf                                              ; $4c81: $37
	db $fd                                           ; $4c82: $fd
	sbc e                                            ; $4c83: $9b
	dec de                                           ; $4c84: $1b
	rst $38                                          ; $4c85: $ff

jr_03f_4c86:
	rra                                              ; $4c86: $1f
	rrca                                             ; $4c87: $0f
	ld a, d                                          ; $4c88: $7a
	call nz, Call_03f_408d                           ; $4c89: $c4 $8d $40
	ccf                                              ; $4c8c: $3f
	nop                                              ; $4c8d: $00
	rst $38                                          ; $4c8e: $ff
	ldh a, [rIF]                                     ; $4c8f: $f0 $0f
	ld [hl], h                                       ; $4c91: $74
	jr nc, jr_03f_4c9a                               ; $4c92: $30 $06

	rlca                                             ; $4c94: $07
	rst $38                                          ; $4c95: $ff
	ccf                                              ; $4c96: $3f
	rst $38                                          ; $4c97: $ff
	ld [hl], h                                       ; $4c98: $74
	sub b                                            ; $4c99: $90

jr_03f_4c9a:
	db $10                                           ; $4c9a: $10
	ld bc, $7af8                                     ; $4c9b: $01 $f8 $7a
	ld c, d                                          ; $4c9e: $4a
	rst SubAFromDE                                          ; $4c9f: $df
	ret nz                                           ; $4ca0: $c0

	sbc c                                            ; $4ca1: $99
	pop bc                                           ; $4ca2: $c1

jr_03f_4ca3:
	rra                                              ; $4ca3: $1f
	rst $38                                          ; $4ca4: $ff
	db $fc                                           ; $4ca5: $fc
	rst $38                                          ; $4ca6: $ff
	rst $38                                          ; $4ca7: $ff
	sbc $40                                          ; $4ca8: $de $40
	ld a, a                                          ; $4caa: $7f
	di                                               ; $4cab: $f3
	sub a                                            ; $4cac: $97

jr_03f_4cad:
	inc bc                                           ; $4cad: $03
	rst $38                                          ; $4cae: $ff
	nop                                              ; $4caf: $00
	inc c                                            ; $4cb0: $0c
	inc e                                            ; $4cb1: $1c
	db $f4                                           ; $4cb2: $f4
	adc a                                            ; $4cb3: $8f
	rst $38                                          ; $4cb4: $ff
	ld a, e                                          ; $4cb5: $7b
	ld a, a                                          ; $4cb6: $7f

jr_03f_4cb7:
	rst SubAFromDE                                          ; $4cb7: $df
	inc c                                            ; $4cb8: $0c
	sbc l                                            ; $4cb9: $9d
	rrca                                             ; $4cba: $0f
	ldh a, [$72]                                     ; $4cbb: $f0 $72
	push af                                          ; $4cbd: $f5
	sbc b                                            ; $4cbe: $98
	rlca                                             ; $4cbf: $07
	inc b                                            ; $4cc0: $04
	rst $38                                          ; $4cc1: $ff
	jr nz, @+$01                                     ; $4cc2: $20 $ff

	ld a, [bc]                                       ; $4cc4: $0a
	push af                                          ; $4cc5: $f5
	ld a, e                                          ; $4cc6: $7b
	halt                                             ; $4cc7: $76
	sub b                                            ; $4cc8: $90
	nop                                              ; $4cc9: $00
	rst SubAFromDE                                          ; $4cca: $df
	rst $38                                          ; $4ccb: $ff
	push af                                          ; $4ccc: $f5
	ld a, [bc]                                       ; $4ccd: $0a
	adc h                                            ; $4cce: $8c
	db $fc                                           ; $4ccf: $fc
	rra                                              ; $4cd0: $1f
	rst $38                                          ; $4cd1: $ff
	ld bc, $aafc                                     ; $4cd2: $01 $fc $aa
	ld d, l                                          ; $4cd5: $55
	inc c                                            ; $4cd6: $0c
	rrca                                             ; $4cd7: $0f
	ld [hl], a                                       ; $4cd8: $77
	ld b, h                                          ; $4cd9: $44
	add d                                            ; $4cda: $82
	ld d, l                                          ; $4cdb: $55
	xor d                                            ; $4cdc: $aa
	inc l                                            ; $4cdd: $2c
	rst SubAFromDE                                          ; $4cde: $df
	adc $26                                          ; $4cdf: $ce $26
	cp $02                                           ; $4ce1: $fe $02
	xor e                                            ; $4ce3: $ab

jr_03f_4ce4:
	ld d, e                                          ; $4ce4: $53
	inc bc                                           ; $4ce5: $03
	rst $38                                          ; $4ce6: $ff

jr_03f_4ce7:
	ld bc, $fdff                                     ; $4ce7: $01 $ff $fd
	db $fd                                           ; $4cea: $fd
	ld d, h                                          ; $4ceb: $54
	xor h                                            ; $4cec: $ac
	inc [hl]                                         ; $4ced: $34
	ld [hl], h                                       ; $4cee: $74
	jp z, Jump_03f_7000                              ; $4cef: $ca $00 $70

	jr nc, jr_03f_4ce4                               ; $4cf2: $30 $f0

	nop                                              ; $4cf4: $00
	adc $8e                                          ; $4cf5: $ce $8e
	inc b                                            ; $4cf7: $04
	ld a, d                                          ; $4cf8: $7a
	ld l, [hl]                                       ; $4cf9: $6e
	rst $38                                          ; $4cfa: $ff
	sbc l                                            ; $4cfb: $9d
	db $ed                                           ; $4cfc: $ed
	ld l, l                                          ; $4cfd: $6d
	db $db                                           ; $4cfe: $db
	db $ed                                           ; $4cff: $ed
	reti                                             ; $4d00: $d9


	ld b, $02                                        ; $4d01: $06 $02
	ret nz                                           ; $4d03: $c0

	db $db                                           ; $4d04: $db
	rlca                                             ; $4d05: $07
	sbc [hl]                                         ; $4d06: $9e
	rrca                                             ; $4d07: $0f
	ld h, [hl]                                       ; $4d08: $66
	ret nz                                           ; $4d09: $c0

	sbc [hl]                                         ; $4d0a: $9e
	jr c, jr_03f_4ce7                                ; $4d0b: $38 $da

	jr nc, jr_03f_4cad                               ; $4d0d: $30 $9e

	or b                                             ; $4d0f: $b0
	jp c, $9bb8                                      ; $4d10: $da $b8 $9b

	ld b, c                                          ; $4d13: $41
	ld hl, sp-$3e                                    ; $4d14: $f8 $c2
	adc $de                                          ; $4d16: $ce $de
	ret nc                                           ; $4d18: $d0

	sbc [hl]                                         ; $4d19: $9e
	jp nc, Jump_03f_5c7a                             ; $4d1a: $d2 $7a $5c

	sbc [hl]                                         ; $4d1d: $9e
	rra                                              ; $4d1e: $1f
	db $dd                                           ; $4d1f: $dd
	jr jr_03f_4cb7                                   ; $4d20: $18 $95

	ret nz                                           ; $4d22: $c0

	rrca                                             ; $4d23: $0f
	dec a                                            ; $4d24: $3d
	add b                                            ; $4d25: $80
	dec b                                            ; $4d26: $05
	ld a, [bc]                                       ; $4d27: $0a
	dec d                                            ; $4d28: $15
	xor e                                            ; $4d29: $ab
	nop                                              ; $4d2a: $00
	ld bc, $8e6d                                     ; $4d2b: $01 $6d $8e
	sub d                                            ; $4d2e: $92

jr_03f_4d2f:
	dec de                                           ; $4d2f: $1b
	or $5f                                           ; $4d30: $f6 $5f
	cp [hl]                                          ; $4d32: $be
	ld a, l                                          ; $4d33: $7d
	ld a, [$eaf5]                                    ; $4d34: $fa $f5 $ea
	rlca                                             ; $4d37: $07
	ld sp, hl                                        ; $4d38: $f9
	nop                                              ; $4d39: $00
	ld bc, $7b02                                     ; $4d3a: $01 $02 $7b
	rst SubAFromBC                                          ; $4d3d: $e7
	sub e                                            ; $4d3e: $93
	db $e4                                           ; $4d3f: $e4
	and h                                            ; $4d40: $a4
	ld b, h                                          ; $4d41: $44
	add h                                            ; $4d42: $84
	dec b                                            ; $4d43: $05
	dec b                                            ; $4d44: $05
	inc b                                            ; $4d45: $04
	inc b                                            ; $4d46: $04
	add sp, $48                                      ; $4d47: $e8 $48
	xor b                                            ; $4d49: $a8
	ld l, b                                          ; $4d4a: $68
	db $dd                                           ; $4d4b: $dd
	add sp, -$27                                     ; $4d4c: $e8 $d9
	inc sp                                           ; $4d4e: $33

jr_03f_4d4f:
	ld b, a                                          ; $4d4f: $47
	adc b                                            ; $4d50: $88
	reti                                             ; $4d51: $d9


	ldh a, [$de]                                     ; $4d52: $f0 $de
	ld a, e                                          ; $4d54: $7b
	rst SubAFromDE                                          ; $4d55: $df
	ld a, a                                          ; $4d56: $7f
	rst SubAFromDE                                          ; $4d57: $df
	ccf                                              ; $4d58: $3f
	sbc [hl]                                         ; $4d59: $9e
	ld a, a                                          ; $4d5a: $7f
	sbc $37                                          ; $4d5b: $de $37
	call c, $e033                                    ; $4d5d: $dc $33 $e0
	jp z, $b879                                      ; $4d60: $ca $79 $b8

	ei                                               ; $4d63: $fb
	sub a                                            ; $4d64: $97
	ld a, [hl+]                                      ; $4d65: $2a
	dec d                                            ; $4d66: $15
	dec bc                                           ; $4d67: $0b
	rla                                              ; $4d68: $17
	cpl                                              ; $4d69: $2f
	rla                                              ; $4d6a: $17
	xor a                                            ; $4d6b: $af
	ld e, a                                          ; $4d6c: $5f
	ld sp, hl                                        ; $4d6d: $f9
	sbc [hl]                                         ; $4d6e: $9e
	cp a                                             ; $4d6f: $bf
	call c, $9eff                                    ; $4d70: $dc $ff $9e
	cp $7a                                           ; $4d73: $fe $7a
	or b                                             ; $4d75: $b0
	ld [hl], e                                       ; $4d76: $73
	reti                                             ; $4d77: $d9


	add [hl]                                         ; $4d78: $86
	ld a, [bc]                                       ; $4d79: $0a
	db $eb                                           ; $4d7a: $eb
	pop de                                           ; $4d7b: $d1
	jp hl                                            ; $4d7c: $e9


	pop de                                           ; $4d7d: $d1
	xor e                                            ; $4d7e: $ab
	ld d, c                                          ; $4d7f: $51
	and c                                            ; $4d80: $a1
	ld b, c                                          ; $4d81: $41
	inc d                                            ; $4d82: $14
	inc l                                            ; $4d83: $2c
	inc d                                            ; $4d84: $14
	inc l                                            ; $4d85: $2c
	ld d, h                                          ; $4d86: $54
	xor h                                            ; $4d87: $ac
	ld e, h                                          ; $4d88: $5c
	cp h                                             ; $4d89: $bc
	nop                                              ; $4d8a: $00
	ldh a, [$f8]                                     ; $4d8b: $f0 $f8
	ld hl, sp-$68                                    ; $4d8d: $f8 $98
	sbc b                                            ; $4d8f: $98
	ld a, b                                          ; $4d90: $78
	ld a, b                                          ; $4d91: $78
	ld a, d                                          ; $4d92: $7a
	jr nc, jr_03f_4d2f                               ; $4d93: $30 $9a

	db $10                                           ; $4d95: $10
	ld [hl], b                                       ; $4d96: $70
	ld [hl], b                                       ; $4d97: $70
	sub b                                            ; $4d98: $90
	sub b                                            ; $4d99: $90
	reti                                             ; $4d9a: $d9


	db $ed                                           ; $4d9b: $ed
	ld [bc], a                                       ; $4d9c: $02
	ret nz                                           ; $4d9d: $c0

	jp c, $d9f0                                      ; $4d9e: $da $f0 $d9

	rrca                                             ; $4da1: $0f
	ld h, [hl]                                       ; $4da2: $66
	ret nz                                           ; $4da3: $c0

	sub a                                            ; $4da4: $97
	jr nc, jr_03f_4dd8                               ; $4da5: $30 $31

	dec [hl]                                         ; $4da7: $35
	ld [hl], $36                                     ; $4da8: $36 $36
	scf                                              ; $4daa: $37
	scf                                              ; $4dab: $37
	ld [hl], $d9                                     ; $4dac: $36 $d9
	cp b                                             ; $4dae: $b8
	sub a                                            ; $4daf: $97
	push de                                          ; $4db0: $d5
	jp nc, $d7d7                                     ; $4db1: $d2 $d7 $d7

	push de                                          ; $4db4: $d5
	jp nc, $d0d5                                     ; $4db5: $d2 $d5 $d0

	db $dd                                           ; $4db8: $dd
	jr jr_03f_4d4f                                   ; $4db9: $18 $94

	ld a, [de]                                       ; $4dbb: $1a
	dec e                                            ; $4dbc: $1d
	ld a, [de]                                       ; $4dbd: $1a
	rra                                              ; $4dbe: $1f
	ld e, a                                          ; $4dbf: $5f
	cp $fd                                           ; $4dc0: $fe $fd
	ld [$a855], a                                    ; $4dc2: $ea $55 $a8
	ld b, b                                          ; $4dc5: $40
	ld a, e                                          ; $4dc6: $7b
	ld [hl], l                                       ; $4dc7: $75
	sub h                                            ; $4dc8: $94
	ld [bc], a                                       ; $4dc9: $02
	dec d                                            ; $4dca: $15
	xor d                                            ; $4dcb: $aa
	ld d, a                                          ; $4dcc: $57
	cp a                                             ; $4dcd: $bf
	rst $38                                          ; $4dce: $ff
	call nc, Call_03f_50a8                           ; $4dcf: $d4 $a8 $50
	and b                                            ; $4dd2: $a0
	ld b, c                                          ; $4dd3: $41
	ld a, d                                          ; $4dd4: $7a
	rst JumpTable                                          ; $4dd5: $c7
	sbc e                                            ; $4dd6: $9b
	dec hl                                           ; $4dd7: $2b

jr_03f_4dd8:
	ld d, a                                          ; $4dd8: $57
	xor a                                            ; $4dd9: $af
	ld e, a                                          ; $4dda: $5f
	ld [hl], a                                       ; $4ddb: $77
	ld d, h                                          ; $4ddc: $54
	sub a                                            ; $4ddd: $97
	dec b                                            ; $4dde: $05
	dec h                                            ; $4ddf: $25
	ld b, l                                          ; $4de0: $45
	and h                                            ; $4de1: $a4
	ld b, h                                          ; $4de2: $44
	and l                                            ; $4de3: $a5
	ld h, l                                          ; $4de4: $65
	push hl                                          ; $4de5: $e5
	reti                                             ; $4de6: $d9


	add sp, $06                                      ; $4de7: $e8 $06
	ret nz                                           ; $4de9: $c0

	sbc [hl]                                         ; $4dea: $9e
	ld a, a                                          ; $4deb: $7f
	jp c, $d977                                      ; $4dec: $da $77 $d9

	inc sp                                           ; $4def: $33
	ld l, $e2                                        ; $4df0: $2e $e2
	ld a, a                                          ; $4df2: $7f
	sub h                                            ; $4df3: $94
	push af                                          ; $4df4: $f5
	sbc e                                            ; $4df5: $9b
	jr z, jr_03f_4e4d                                ; $4df6: $28 $55

	xor d                                            ; $4df8: $aa
	ld a, l                                          ; $4df9: $7d
	ld sp, hl                                        ; $4dfa: $f9
	ld a, a                                          ; $4dfb: $7f
	and $7b                                          ; $4dfc: $e6 $7b
	add [hl]                                         ; $4dfe: $86
	sbc [hl]                                         ; $4dff: $9e
	ld a, a                                          ; $4e00: $7f
	ld [hl], l                                       ; $4e01: $75
	add a                                            ; $4e02: $87
	ld e, [hl]                                       ; $4e03: $5e
	ret nc                                           ; $4e04: $d0

	ld a, [hl]                                       ; $4e05: $7e
	jp nc, Jump_03f_5d7f                             ; $4e06: $d2 $7f $5d

	ld l, [hl]                                       ; $4e09: $6e
	jp nc, Jump_03f_5d7f                             ; $4e0a: $d2 $7f $5d

	sub b                                            ; $4e0d: $90
	ld [$aad5], a                                    ; $4e0e: $ea $d5 $aa
	ld d, h                                          ; $4e11: $54
	and b                                            ; $4e12: $a0
	ld b, b                                          ; $4e13: $40
	add b                                            ; $4e14: $80
	nop                                              ; $4e15: $00
	dec d                                            ; $4e16: $15
	ld a, [hl+]                                      ; $4e17: $2a
	ld d, l                                          ; $4e18: $55
	xor e                                            ; $4e19: $ab
	ld e, a                                          ; $4e1a: $5f
	cp a                                             ; $4e1b: $bf
	ld a, a                                          ; $4e1c: $7f
	ld a, b                                          ; $4e1d: $78
	rst SubAFromHL                                          ; $4e1e: $d7
	sbc b                                            ; $4e1f: $98
	add hl, bc                                       ; $4e20: $09
	nop                                              ; $4e21: $00
	add hl, bc                                       ; $4e22: $09
	db $10                                           ; $4e23: $10
	jr z, jr_03f_4e78                                ; $4e24: $28 $52

	ld a, h                                          ; $4e26: $7c
	jp c, $9cfc                                      ; $4e27: $da $fc $9c

	ld hl, sp-$10                                    ; $4e2a: $f8 $f0
	inc b                                            ; $4e2c: $04
	ld a, c                                          ; $4e2d: $79
	add a                                            ; $4e2e: $87
	sbc [hl]                                         ; $4e2f: $9e
	add b                                            ; $4e30: $80
	ld a, b                                          ; $4e31: $78
	rst AddAOntoHL                                          ; $4e32: $ef
	sbc l                                            ; $4e33: $9d
	ld [bc], a                                       ; $4e34: $02
	ld b, $fd                                        ; $4e35: $06 $fd
	call c, $deed                                    ; $4e37: $dc $ed $de
	db $fd                                           ; $4e3a: $fd
	ld [bc], a                                       ; $4e3b: $02
	ret nz                                           ; $4e3c: $c0

	ld h, [hl]                                       ; $4e3d: $66
	ret nz                                           ; $4e3e: $c0

	ld a, l                                          ; $4e3f: $7d
	add l                                            ; $4e40: $85
	rst SubAFromDE                                          ; $4e41: $df
	rrca                                             ; $4e42: $0f
	ld e, c                                          ; $4e43: $59
	add b                                            ; $4e44: $80
	sbc $34                                          ; $4e45: $de $34
	rst SubAFromDE                                          ; $4e47: $df
	dec [hl]                                         ; $4e48: $35
	ld a, [hl]                                       ; $4e49: $7e
	pop bc                                           ; $4e4a: $c1
	sbc [hl]                                         ; $4e4b: $9e
	inc [hl]                                         ; $4e4c: $34

jr_03f_4e4d:
	reti                                             ; $4e4d: $d9


	cp b                                             ; $4e4e: $b8
	db $dd                                           ; $4e4f: $dd
	ret nc                                           ; $4e50: $d0

	sbc e                                            ; $4e51: $9b
	call nc, $d5da                                   ; $4e52: $d4 $da $d5
	rst SubAFromDE                                          ; $4e55: $df
	reti                                             ; $4e56: $d9


	rra                                              ; $4e57: $1f
	ld [hl], a                                       ; $4e58: $77
	ld l, d                                          ; $4e59: $6a
	sbc [hl]                                         ; $4e5a: $9e
	ld d, l                                          ; $4e5b: $55
	ld [hl], a                                       ; $4e5c: $77
	ld c, a                                          ; $4e5d: $4f
	jp c, Jump_03f_7dff                              ; $4e5e: $da $ff $7d

	halt                                             ; $4e61: $76
	ld a, d                                          ; $4e62: $7a
	cp e                                             ; $4e63: $bb
	sub $ff                                          ; $4e64: $d6 $ff
	sbc [hl]                                         ; $4e66: $9e
	db $e4                                           ; $4e67: $e4
	db $dd                                           ; $4e68: $dd
	push hl                                          ; $4e69: $e5
	sbc h                                            ; $4e6a: $9c
	db $fd                                           ; $4e6b: $fd
	rst $38                                          ; $4e6c: $ff
	rst $38                                          ; $4e6d: $ff
	ld h, $c0                                        ; $4e6e: $26 $c0
	rst SubAFromDE                                          ; $4e70: $df
	rst $38                                          ; $4e71: $ff
	sbc l                                            ; $4e72: $9d
	di                                               ; $4e73: $f3
	rst $38                                          ; $4e74: $ff
	push de                                          ; $4e75: $d5
	ldh a, [$d9]                                     ; $4e76: $f0 $d9

jr_03f_4e78:
	ld [hl], a                                       ; $4e78: $77
	ld h, d                                          ; $4e79: $62
	ret nz                                           ; $4e7a: $c0

	ld a, [hl]                                       ; $4e7b: $7e
	ld [hl], l                                       ; $4e7c: $75
	sbc [hl]                                         ; $4e7d: $9e
	rla                                              ; $4e7e: $17
	ld a, e                                          ; $4e7f: $7b
	xor l                                            ; $4e80: $ad
	sbc [hl]                                         ; $4e81: $9e
	ld a, a                                          ; $4e82: $7f
	ld sp, hl                                        ; $4e83: $f9
	ld l, a                                          ; $4e84: $6f
	and c                                            ; $4e85: $a1
	ld a, l                                          ; $4e86: $7d
	rra                                              ; $4e87: $1f
	ei                                               ; $4e88: $fb
	ld a, a                                          ; $4e89: $7f
	db $e3                                           ; $4e8a: $e3
	ld [hl], c                                       ; $4e8b: $71
	or d                                             ; $4e8c: $b2
	sbc l                                            ; $4e8d: $9d
	db $fd                                           ; $4e8e: $fd
	xor d                                            ; $4e8f: $aa
	ld l, [hl]                                       ; $4e90: $6e
	ldh [$9c], a                                     ; $4e91: $e0 $9c
	ld [bc], a                                       ; $4e93: $02
	ld d, l                                          ; $4e94: $55
	xor d                                            ; $4e95: $aa
	ld a, e                                          ; $4e96: $7b
	db $e4                                           ; $4e97: $e4
	ld [hl], d                                       ; $4e98: $72
	sbc $7b                                          ; $4e99: $de $7b
	db $e4                                           ; $4e9b: $e4
	ld [hl], d                                       ; $4e9c: $72
	sbc $72                                          ; $4e9d: $de $72
	jp nc, $907a                                     ; $4e9f: $d2 $7a $90

	ld l, [hl]                                       ; $4ea2: $6e
	jp nc, $ffdf                                     ; $4ea3: $d2 $df $ff

	ld a, d                                          ; $4ea6: $7a
	dec h                                            ; $4ea7: $25
	ld a, a                                          ; $4ea8: $7f
	db $db                                           ; $4ea9: $db
	ld a, e                                          ; $4eaa: $7b
	di                                               ; $4eab: $f3
	reti                                             ; $4eac: $d9


	rst $38                                          ; $4ead: $ff
	sbc d                                            ; $4eae: $9a
	xor c                                            ; $4eaf: $a9
	ld d, c                                          ; $4eb0: $51
	xor c                                            ; $4eb1: $a9
	ld e, c                                          ; $4eb2: $59
	cp c                                             ; $4eb3: $b9
	sbc $f9                                          ; $4eb4: $de $f9
	reti                                             ; $4eb6: $d9


jr_03f_4eb7:
	db $fc                                           ; $4eb7: $fc
	sub a                                            ; $4eb8: $97
	db $10                                           ; $4eb9: $10
	ret nz                                           ; $4eba: $c0

	ret nz                                           ; $4ebb: $c0

	nop                                              ; $4ebc: $00
	ld b, b                                          ; $4ebd: $40
	ld b, b                                          ; $4ebe: $40
	db $10                                           ; $4ebf: $10
	jr nc, jr_03f_4f3a                               ; $4ec0: $30 $78

	ld b, e                                          ; $4ec2: $43
	ld a, b                                          ; $4ec3: $78
	ld b, d                                          ; $4ec4: $42
	rst $38                                          ; $4ec5: $ff
	db $db                                           ; $4ec6: $db
	db $fd                                           ; $4ec7: $fd
	ld bc, $5580                                     ; $4ec8: $01 $80 $55
	add b                                            ; $4ecb: $80
	ld a, d                                          ; $4ecc: $7a
	cp [hl]                                          ; $4ecd: $be
	rst SubAFromDE                                          ; $4ece: $df
	rlca                                             ; $4ecf: $07
	ld l, [hl]                                       ; $4ed0: $6e
	jp nz, $8b7c                                     ; $4ed1: $c2 $7c $8b

	db $dd                                           ; $4ed4: $dd
	inc [hl]                                         ; $4ed5: $34
	sbc [hl]                                         ; $4ed6: $9e
	jr nc, jr_03f_4eb7                               ; $4ed7: $30 $de

	inc [hl]                                         ; $4ed9: $34
	reti                                             ; $4eda: $d9


	cp b                                             ; $4edb: $b8
	sbc l                                            ; $4edc: $9d
	rst JumpTable                                          ; $4edd: $c7
	inc hl                                           ; $4ede: $23
	ld a, [$c67a]                                    ; $4edf: $fa $7a $c6
	db $fd                                           ; $4ee2: $fd
	sbc h                                            ; $4ee3: $9c
	rlca                                             ; $4ee4: $07
	ldh [rIF], a                                     ; $4ee5: $e0 $0f
	ei                                               ; $4ee7: $fb
	ld l, d                                          ; $4ee8: $6a
	ld c, $9c                                        ; $4ee9: $0e $9c
	rst SubAFromBC                                          ; $4eeb: $e7
	nop                                              ; $4eec: $00
	ldh [rOCPD], a                                   ; $4eed: $e0 $6b
	pop hl                                           ; $4eef: $e1
	ld l, a                                          ; $4ef0: $6f
	rst SubAFromDE                                          ; $4ef1: $df
	sbc h                                            ; $4ef2: $9c
	db $fc                                           ; $4ef3: $fc
	inc c                                            ; $4ef4: $0c
	ld a, h                                          ; $4ef5: $7c
	db $fc                                           ; $4ef6: $fc
	sbc h                                            ; $4ef7: $9c
	add sp, $08                                      ; $4ef8: $e8 $08
	ld hl, sp-$04                                    ; $4efa: $f8 $fc
	sbc $33                                          ; $4efc: $de $33
	sbc d                                            ; $4efe: $9a
	ld [hl], e                                       ; $4eff: $73
	inc sp                                           ; $4f00: $33
	ld [hl], e                                       ; $4f01: $73
	or e                                             ; $4f02: $b3
	ld [hl], e                                       ; $4f03: $73
	ld d, e                                          ; $4f04: $53
	adc b                                            ; $4f05: $88
	sbc h                                            ; $4f06: $9c
	rst FarCall                                          ; $4f07: $f7
	di                                               ; $4f08: $f3
	rst FarCall                                          ; $4f09: $f7
	ld e, d                                          ; $4f0a: $5a
	ret nz                                           ; $4f0b: $c0

	call c, $d967                                    ; $4f0c: $dc $67 $d9
	inc sp                                           ; $4f0f: $33
	sub [hl]                                         ; $4f10: $96
	rst $38                                          ; $4f11: $ff
	push af                                          ; $4f12: $f5
	xor d                                            ; $4f13: $aa
	ld d, l                                          ; $4f14: $55
	xor d                                            ; $4f15: $aa
	ld d, b                                          ; $4f16: $50
	nop                                              ; $4f17: $00
	dec b                                            ; $4f18: $05
	nop                                              ; $4f19: $00
	ld [hl], a                                       ; $4f1a: $77
	add hl, bc                                       ; $4f1b: $09
	sbc h                                            ; $4f1c: $9c
	xor a                                            ; $4f1d: $af
	rst $38                                          ; $4f1e: $ff
	rst $38                                          ; $4f1f: $ff
	ld [hl], a                                       ; $4f20: $77
	ldh a, [c]                                       ; $4f21: $f2
	ld a, l                                          ; $4f22: $7d
	call z, $f37f                                    ; $4f23: $cc $7f $f3
	ld [hl], a                                       ; $4f26: $77
	ldh a, [c]                                       ; $4f27: $f2
	halt                                             ; $4f28: $76
	ldh a, [$7e]                                     ; $4f29: $f0 $7e
	ldh [$fe], a                                     ; $4f2b: $e0 $fe
	ld a, l                                          ; $4f2d: $7d
	xor c                                            ; $4f2e: $a9
	rst SubAFromDE                                          ; $4f2f: $df
	ld d, l                                          ; $4f30: $55
	sbc [hl]                                         ; $4f31: $9e
	xor e                                            ; $4f32: $ab
	db $db                                           ; $4f33: $db
	rst $38                                          ; $4f34: $ff
	ld a, [hl]                                       ; $4f35: $7e
	call nc, $d777                                   ; $4f36: $d4 $77 $d7
	ld a, h                                          ; $4f39: $7c

jr_03f_4f3a:
	or $66                                           ; $4f3a: $f6 $66
	ld l, $7a                                        ; $4f3c: $2e $7a
	cp e                                             ; $4f3e: $bb
	ld a, d                                          ; $4f3f: $7a
	add d                                            ; $4f40: $82
	rst SubAFromHL                                          ; $4f41: $d7
	rst $38                                          ; $4f42: $ff
	ld d, a                                          ; $4f43: $57
	db $f4                                           ; $4f44: $f4
	db $dd                                           ; $4f45: $dd
	rst $38                                          ; $4f46: $ff
	call c, $def9                                    ; $4f47: $dc $f9 $de
	ei                                               ; $4f4a: $fb
	reti                                             ; $4f4b: $d9


	db $fc                                           ; $4f4c: $fc
	rst $38                                          ; $4f4d: $ff
	ld a, a                                          ; $4f4e: $7f
	ld e, b                                          ; $4f4f: $58
	sbc e                                            ; $4f50: $9b
	jp hl                                            ; $4f51: $e9


	add sp, -$18                                     ; $4f52: $e8 $e8
	jp hl                                            ; $4f54: $e9


	cp $9e                                           ; $4f55: $fe $9e
	ld hl, sp-$23                                    ; $4f57: $f8 $dd
	db $10                                           ; $4f59: $10
	halt                                             ; $4f5a: $76
	call nz, Call_03f_4000                           ; $4f5b: $c4 $00 $40
	ld e, d                                          ; $4f5e: $5a
	ret nz                                           ; $4f5f: $c0

	reti                                             ; $4f60: $d9


	rlca                                             ; $4f61: $07
	ld a, [hl]                                       ; $4f62: $7e
	add $7b                                          ; $4f63: $c6 $7b
	cp $99                                           ; $4f65: $fe $99
	adc b                                            ; $4f67: $88
	ld c, b                                          ; $4f68: $48
	adc b                                            ; $4f69: $88
	inc [hl]                                         ; $4f6a: $34
	dec [hl]                                         ; $4f6b: $35
	ld [hl-], a                                      ; $4f6c: $32
	ld a, e                                          ; $4f6d: $7b
	cp $df                                           ; $4f6e: $fe $df
	scf                                              ; $4f70: $37
	reti                                             ; $4f71: $d9


	cp b                                             ; $4f72: $b8
	ld a, [hl]                                       ; $4f73: $7e
	dec de                                           ; $4f74: $1b
	sbc [hl]                                         ; $4f75: $9e
	and d                                            ; $4f76: $a2
	halt                                             ; $4f77: $76
	ld b, b                                          ; $4f78: $40
	sbc [hl]                                         ; $4f79: $9e
	rst FarCall                                          ; $4f7a: $f7
	ld hl, sp-$62                                    ; $4f7b: $f8 $9e
	ld d, b                                          ; $4f7d: $50
	ld a, e                                          ; $4f7e: $7b
	ld d, d                                          ; $4f7f: $52
	sbc h                                            ; $4f80: $9c
	ld [hl], l                                       ; $4f81: $75
	ld a, [$f5fd]                                    ; $4f82: $fa $fd $f5
	sbc [hl]                                         ; $4f85: $9e
	and b                                            ; $4f86: $a0
	ld a, e                                          ; $4f87: $7b
	sbc $5b                                          ; $4f88: $de $5b
	ldh a, [c]                                       ; $4f8a: $f2
	sbc d                                            ; $4f8b: $9a
	nop                                              ; $4f8c: $00
	ld [hl+], a                                      ; $4f8d: $22
	ld d, l                                          ; $4f8e: $55
	xor b                                            ; $4f8f: $a8
	ld d, b                                          ; $4f90: $50
	ld sp, hl                                        ; $4f91: $f9
	ld a, [hl]                                       ; $4f92: $7e
	add $77                                          ; $4f93: $c6 $77
	cp $9e                                           ; $4f95: $fe $9e
	or d                                             ; $4f97: $b2
	ld h, [hl]                                       ; $4f98: $66
	ret nz                                           ; $4f99: $c0

	sbc [hl]                                         ; $4f9a: $9e
	sbc [hl]                                         ; $4f9b: $9e
	db $db                                           ; $4f9c: $db
	rst FarCall                                          ; $4f9d: $f7
	ld a, a                                          ; $4f9e: $7f
	dec hl                                           ; $4f9f: $2b
	jp c, $96f0                                      ; $4fa0: $da $f0 $96

	ld [hl], b                                       ; $4fa3: $70
	daa                                              ; $4fa4: $27
	ld h, a                                          ; $4fa5: $67
	daa                                              ; $4fa6: $27
	ld h, a                                          ; $4fa7: $67
	ld h, e                                          ; $4fa8: $63
	ld h, e                                          ; $4fa9: $63
	ld l, c                                          ; $4faa: $69
	ld l, b                                          ; $4fab: $68
	db $dd                                           ; $4fac: $dd
	inc sp                                           ; $4fad: $33
	rst SubAFromDE                                          ; $4fae: $df
	scf                                              ; $4faf: $37
	sbc l                                            ; $4fb0: $9d
	ld [hl], $30                                     ; $4fb1: $36 $30
	ld a, e                                          ; $4fb3: $7b
	nop                                              ; $4fb4: $00
	push de                                          ; $4fb5: $d5
	rst $38                                          ; $4fb6: $ff
	sbc h                                            ; $4fb7: $9c
	nop                                              ; $4fb8: $00
	xor d                                            ; $4fb9: $aa
	ld d, a                                          ; $4fba: $57
	call nc, $9eff                                   ; $4fbb: $d4 $ff $9e
	ccf                                              ; $4fbe: $3f
	ld a, c                                          ; $4fbf: $79
	adc a                                            ; $4fc0: $8f
	inc bc                                           ; $4fc1: $03
	rst $38                                          ; $4fc2: $ff
	push bc                                          ; $4fc3: $c5
	rst $38                                          ; $4fc4: $ff
	db $dd                                           ; $4fc5: $dd
	ld hl, sp-$62                                    ; $4fc6: $f8 $9e
	ld sp, hl                                        ; $4fc8: $f9
	ld a, e                                          ; $4fc9: $7b
	cp $d9                                           ; $4fca: $fe $d9
	db $fc                                           ; $4fcc: $fc
	sbc d                                            ; $4fcd: $9a
	ld a, c                                          ; $4fce: $79
	xor c                                            ; $4fcf: $a9
	ld sp, hl                                        ; $4fd0: $f9
	ld bc, $7905                                     ; $4fd1: $01 $05 $79
	db $f4                                           ; $4fd4: $f4
	sub a                                            ; $4fd5: $97
	add b                                            ; $4fd6: $80
	ret nc                                           ; $4fd7: $d0

	nop                                              ; $4fd8: $00
	nop                                              ; $4fd9: $00
	ld [bc], a                                       ; $4fda: $02
	nop                                              ; $4fdb: $00
	rst $38                                          ; $4fdc: $ff
	rst $38                                          ; $4fdd: $ff
	ld l, h                                          ; $4fde: $6c
	ld b, b                                          ; $4fdf: $40
	rst SubAFromDE                                          ; $4fe0: $df
	ld bc, $06db                                     ; $4fe1: $01 $db $06
	rst SubAFromDE                                          ; $4fe4: $df
	cp $02                                           ; $4fe5: $fe $02
	ret nz                                           ; $4fe7: $c0

	ld h, [hl]                                       ; $4fe8: $66
	ret nz                                           ; $4fe9: $c0

	ld a, d                                          ; $4fea: $7a
	call nz, $08dd                                   ; $4feb: $c4 $dd $08
	reti                                             ; $4fee: $d9


	scf                                              ; $4fef: $37
	reti                                             ; $4ff0: $d9


	cp b                                             ; $4ff1: $b8
	ld h, e                                          ; $4ff2: $63
	scf                                              ; $4ff3: $37
	ld a, [$f047]                                    ; $4ff4: $fa $47 $f0
	sbc l                                            ; $4ff7: $9d
	xor d                                            ; $4ff8: $aa
	push af                                          ; $4ff9: $f5
	ld c, a                                          ; $4ffa: $4f
	ldh a, [$9c]                                     ; $4ffb: $f0 $9c
	and c                                            ; $4ffd: $a1
	ld sp, hl                                        ; $4ffe: $f9
	db $fc                                           ; $4fff: $fc
	call c, $9cff                                    ; $5000: $dc $ff $9c
	ld [$0305], sp                                   ; $5003: $08 $05 $03
	db $fc                                           ; $5006: $fc
	sub d                                            ; $5007: $92
	ld [hl], d                                       ; $5008: $72
	or e                                             ; $5009: $b3
	ld [hl], e                                       ; $500a: $73
	ld a, e                                          ; $500b: $7b
	cp e                                             ; $500c: $bb
	ld [hl], e                                       ; $500d: $73
	cp e                                             ; $500e: $bb
	ld [hl], e                                       ; $500f: $73
	rst SubAFromDE                                          ; $5010: $df
	rst SubAFromDE                                          ; $5011: $df
	sbc a                                            ; $5012: $9f
	rla                                              ; $5013: $17
	rla                                              ; $5014: $17
	sbc $1f                                          ; $5015: $de $1f
	sub e                                            ; $5017: $93
	ld [hl], b                                       ; $5018: $70
	sub b                                            ; $5019: $90
	ld de, $d592                                     ; $501a: $11 $92 $d5
	jp c, $dad5                                      ; $501d: $da $d5 $da

	ldh a, [$e0]                                     ; $5020: $f0 $e0
	ldh [$f0], a                                     ; $5022: $e0 $f0
	db $dd                                           ; $5024: $dd
	or b                                             ; $5025: $b0
	sbc l                                            ; $5026: $9d
	jr nz, @+$3b                                     ; $5027: $20 $39

	db $db                                           ; $5029: $db
	ccf                                              ; $502a: $3f
	sbc l                                            ; $502b: $9d
	ld a, a                                          ; $502c: $7f
	ld [hl], e                                       ; $502d: $73
	db $db                                           ; $502e: $db
	ld h, b                                          ; $502f: $60
	ld a, a                                          ; $5030: $7f
	scf                                              ; $5031: $37
	ld l, a                                          ; $5032: $6f
	ret nz                                           ; $5033: $c0

	sbc h                                            ; $5034: $9c
	add b                                            ; $5035: $80
	rst $38                                          ; $5036: $ff
	ld bc, $6ffa                                     ; $5037: $01 $fa $6f
	ld b, l                                          ; $503a: $45
	ld a, a                                          ; $503b: $7f
	ldh a, [$63]                                     ; $503c: $f0 $63
	sbc l                                            ; $503e: $9d
	sbc [hl]                                         ; $503f: $9e
	di                                               ; $5040: $f3
	ld [hl], e                                       ; $5041: $73
	sub b                                            ; $5042: $90
	ld a, a                                          ; $5043: $7f
	jp hl                                            ; $5044: $e9


	sbc [hl]                                         ; $5045: $9e
	rlca                                             ; $5046: $07
	ld [hl], b                                       ; $5047: $70
	inc a                                            ; $5048: $3c
	rst $38                                          ; $5049: $ff
	sbc [hl]                                         ; $504a: $9e
	ldh [$72], a                                     ; $504b: $e0 $72
	and a                                            ; $504d: $a7
	ld a, e                                          ; $504e: $7b
	ld h, [hl]                                       ; $504f: $66
	ld h, h                                          ; $5050: $64
	jp hl                                            ; $5051: $e9


	sbc [hl]                                         ; $5052: $9e
	rst SubAFromBC                                          ; $5053: $e7
	db $dd                                           ; $5054: $dd
	rst $38                                          ; $5055: $ff
	sbc h                                            ; $5056: $9c
	rlca                                             ; $5057: $07
	ret nz                                           ; $5058: $c0

	rst $38                                          ; $5059: $ff
	ld [hl], h                                       ; $505a: $74
	sub $7f                                          ; $505b: $d6 $7f
	rrca                                             ; $505d: $0f
	ld a, d                                          ; $505e: $7a
	db $e4                                           ; $505f: $e4
	sbc [hl]                                         ; $5060: $9e
	cp $73                                           ; $5061: $fe $73
	adc $7f                                          ; $5063: $ce $7f
	and a                                            ; $5065: $a7
	ld [hl], a                                       ; $5066: $77
	or d                                             ; $5067: $b2
	ld [hl], h                                       ; $5068: $74
	jp hl                                            ; $5069: $e9


	sub a                                            ; $506a: $97
	ld a, [hl]                                       ; $506b: $7e
	rst $38                                          ; $506c: $ff
	rst $38                                          ; $506d: $ff
	db $fd                                           ; $506e: $fd
	db $fd                                           ; $506f: $fd
	dec a                                            ; $5070: $3d
	ld bc, $7bfe                                     ; $5071: $01 $fe $7b
	rst AddAOntoHL                                          ; $5074: $ef
	pop de                                           ; $5075: $d1
	rst $38                                          ; $5076: $ff
	sub a                                            ; $5077: $97
	ret nz                                           ; $5078: $c0

	cp b                                             ; $5079: $b8
	cp h                                             ; $507a: $bc
	adc h                                            ; $507b: $8c
	db $ec                                           ; $507c: $ec
	db $ec                                           ; $507d: $ec
	call z, $ddcc                                    ; $507e: $cc $cc $dd
	cp $df                                           ; $5081: $fe $df
	sbc [hl]                                         ; $5083: $9e
	rst SubAFromDE                                          ; $5084: $df
	cp [hl]                                          ; $5085: $be
	ld [bc], a                                       ; $5086: $02
	ret nz                                           ; $5087: $c0

	jp c, $d907                                      ; $5088: $da $07 $d9

	ld [$37de], sp                                   ; $508b: $08 $de $37
	sbc [hl]                                         ; $508e: $9e
	inc sp                                           ; $508f: $33
	ld [hl], l                                       ; $5090: $75
	ld a, l                                          ; $5091: $7d
	sbc $b8                                          ; $5092: $de $b8
	sbc d                                            ; $5094: $9a
	cp h                                             ; $5095: $bc
	cp d                                             ; $5096: $ba
	cp l                                             ; $5097: $bd
	cp d                                             ; $5098: $ba
	cp l                                             ; $5099: $bd
	ld a, e                                          ; $509a: $7b
	sub [hl]                                         ; $509b: $96
	sbc d                                            ; $509c: $9a
	cp $75                                           ; $509d: $fe $75
	xor d                                            ; $509f: $aa
	ld d, l                                          ; $50a0: $55
	xor b                                            ; $50a1: $a8
	ld a, d                                          ; $50a2: $7a
	ld h, d                                          ; $50a3: $62
	sbc l                                            ; $50a4: $9d
	ld bc, $788a                                     ; $50a5: $01 $8a $78

Call_03f_50a8:
	ret c                                            ; $50a8: $d8

	rst SubAFromDE                                          ; $50a9: $df
	rst $38                                          ; $50aa: $ff
	sbc c                                            ; $50ab: $99
	ld a, a                                          ; $50ac: $7f
	cp a                                             ; $50ad: $bf
	ld e, a                                          ; $50ae: $5f
	xor a                                            ; $50af: $af
	ld d, a                                          ; $50b0: $57
	dec hl                                           ; $50b1: $2b
	ld a, e                                          ; $50b2: $7b
	ld l, d                                          ; $50b3: $6a
	sbc d                                            ; $50b4: $9a
	ld b, b                                          ; $50b5: $40
	and b                                            ; $50b6: $a0
	ld d, b                                          ; $50b7: $50
	xor b                                            ; $50b8: $a8
	call nc, $ffda                                   ; $50b9: $d4 $da $ff
	sbc [hl]                                         ; $50bc: $9e
	xor a                                            ; $50bd: $af
	ld h, l                                          ; $50be: $65
	ld h, d                                          ; $50bf: $62
	ld b, [hl]                                       ; $50c0: $46
	and b                                            ; $50c1: $a0
	ld l, l                                          ; $50c2: $6d
	add b                                            ; $50c3: $80
	ld e, h                                          ; $50c4: $5c
	ld b, b                                          ; $50c5: $40
	adc h                                            ; $50c6: $8c
	push de                                          ; $50c7: $d5
	ld a, [$b7ad]                                    ; $50c8: $fa $ad $b7
	rst FarCall                                          ; $50cb: $f7
	db $db                                           ; $50cc: $db
	db $fd                                           ; $50cd: $fd
	push hl                                          ; $50ce: $e5
	or b                                             ; $50cf: $b0
	sub b                                            ; $50d0: $90
	ret nc                                           ; $50d1: $d0

	ret z                                            ; $50d2: $c8

	ret z                                            ; $50d3: $c8

	db $e4                                           ; $50d4: $e4
	ldh [c], a                                       ; $50d5: $e2
	ld a, [$3f3f]                                    ; $50d6: $fa $3f $3f
	cp a                                             ; $50d9: $bf
	call c, $d93f                                    ; $50da: $dc $3f $d9
	ld h, b                                          ; $50dd: $60
	ld b, $50                                        ; $50de: $06 $50
	inc bc                                           ; $50e0: $03
	ldh a, [$03]                                     ; $50e1: $f0 $03
	ldh a, [rWX]                                     ; $50e3: $f0 $4b
	ldh a, [$7f]                                     ; $50e5: $f0 $7f
	ld sp, $ff9d                                     ; $50e7: $31 $9d $ff
	rst SubAFromDE                                          ; $50ea: $df
	call c, $9cff                                    ; $50eb: $dc $ff $9c
	ld a, a                                          ; $50ee: $7f
	ccf                                              ; $50ef: $3f
	ccf                                              ; $50f0: $3f
	sbc $1f                                          ; $50f1: $de $1f
	rst SubAFromDE                                          ; $50f3: $df
	db $ec                                           ; $50f4: $ec
	db $db                                           ; $50f5: $db
	call c, $c476                                    ; $50f6: $dc $76 $c4
	db $dd                                           ; $50f9: $dd
	cp [hl]                                          ; $50fa: $be
	ld [bc], a                                       ; $50fb: $02
	ret nz                                           ; $50fc: $c0

	ld c, d                                          ; $50fd: $4a
	ret nz                                           ; $50fe: $c0

	ld a, [hl]                                       ; $50ff: $7e
	add $db                                          ; $5100: $c6 $db
	jr nc, jr_03f_5182                               ; $5102: $30 $7e

	add $db                                          ; $5104: $c6 $db
	cp a                                             ; $5106: $bf
	sbc h                                            ; $5107: $9c
	ld d, h                                          ; $5108: $54
	xor d                                            ; $5109: $aa
	ld d, h                                          ; $510a: $54
	db $fc                                           ; $510b: $fc
	sbc [hl]                                         ; $510c: $9e
	xor e                                            ; $510d: $ab
	ld l, b                                          ; $510e: $68
	xor b                                            ; $510f: $a8
	sbc d                                            ; $5110: $9a
	dec d                                            ; $5111: $15
	ld a, [hl+]                                      ; $5112: $2a
	dec b                                            ; $5113: $05
	ld a, [hl+]                                      ; $5114: $2a
	ld de, $9afe                                     ; $5115: $11 $fe $9a
	ld [$fad5], a                                    ; $5118: $ea $d5 $fa
	push de                                          ; $511b: $d5
	xor $de                                          ; $511c: $ee $de
	rst $38                                          ; $511e: $ff
	sub b                                            ; $511f: $90
	ld d, a                                          ; $5120: $57
	xor e                                            ; $5121: $ab
	ld d, l                                          ; $5122: $55
	xor d                                            ; $5123: $aa
	dec d                                            ; $5124: $15
	ld a, [bc]                                       ; $5125: $0a
	dec b                                            ; $5126: $05
	nop                                              ; $5127: $00
	xor b                                            ; $5128: $a8
	ld d, h                                          ; $5129: $54
	xor d                                            ; $512a: $aa
	ld d, l                                          ; $512b: $55
	ld [$faf5], a                                    ; $512c: $ea $f5 $fa
	call c, Call_03f_7aff                            ; $512f: $dc $ff $7a
	and b                                            ; $5132: $a0
	ld [hl], d                                       ; $5133: $72
	or b                                             ; $5134: $b0
	ld a, d                                          ; $5135: $7a
	and b                                            ; $5136: $a0
	sbc [hl]                                         ; $5137: $9e
	ld d, b                                          ; $5138: $50
	ld l, d                                          ; $5139: $6a
	ret nz                                           ; $513a: $c0

	sbc [hl]                                         ; $513b: $9e
	ld a, e                                          ; $513c: $7b
	reti                                             ; $513d: $d9


	rra                                              ; $513e: $1f
	add b                                            ; $513f: $80
	di                                               ; $5140: $f3
	db $dd                                           ; $5141: $dd
	or $de                                           ; $5142: $f6 $de
	call z, $faf5                                    ; $5144: $cc $f5 $fa
	di                                               ; $5147: $f3
	ld hl, sp-$08                                    ; $5148: $f8 $f8
	db $ec                                           ; $514a: $ec
	db $e4                                           ; $514b: $e4
	di                                               ; $514c: $f3
	ei                                               ; $514d: $fb
	db $ed                                           ; $514e: $ed
	db $ec                                           ; $514f: $ec
	cp a                                             ; $5150: $bf
	cp a                                             ; $5151: $bf
	ld a, a                                          ; $5152: $7f
	ccf                                              ; $5153: $3f
	rra                                              ; $5154: $1f

jr_03f_5155:
	rrca                                             ; $5155: $0f
	add a                                            ; $5156: $87
	ld b, e                                          ; $5157: $43
	ld h, b                                          ; $5158: $60
	ld h, b                                          ; $5159: $60
	ldh [$60], a                                     ; $515a: $e0 $60
	and b                                            ; $515c: $a0
	ret nc                                           ; $515d: $d0

	add sp, -$62                                     ; $515e: $e8 $9e
	db $e4                                           ; $5160: $e4
	inc bc                                           ; $5161: $03
	db $10                                           ; $5162: $10
	inc bc                                           ; $5163: $03
	ldh a, [$03]                                     ; $5164: $f0 $03
	ldh a, [$33]                                     ; $5166: $f0 $33
	ldh a, [$d9]                                     ; $5168: $f0 $d9
	rra                                              ; $516a: $1f
	sbc $dc                                          ; $516b: $de $dc
	sbc [hl]                                         ; $516d: $9e
	sbc h                                            ; $516e: $9c
	db $dd                                           ; $516f: $dd
	call c, $bede                                    ; $5170: $dc $de $be
	sbc [hl]                                         ; $5173: $9e
	cp $02                                           ; $5174: $fe $02
	ret nz                                           ; $5176: $c0

	ld a, [hl-]                                      ; $5177: $3a
	ret nz                                           ; $5178: $c0

	reti                                             ; $5179: $d9


	jr nc, jr_03f_5155                               ; $517a: $30 $d9

	cp a                                             ; $517c: $bf
	inc bc                                           ; $517d: $03
	ld a, b                                          ; $517e: $78
	ld c, e                                          ; $517f: $4b
	ldh a, [$9d]                                     ; $5180: $f0 $9d

jr_03f_5182:
	ld d, a                                          ; $5182: $57
	ld a, [hl+]                                      ; $5183: $2a
	ld a, d                                          ; $5184: $7a
	or d                                             ; $5185: $b2
	sbc d                                            ; $5186: $9a
	ld a, [bc]                                       ; $5187: $0a
	ld b, $00                                        ; $5188: $06 $00
	xor b                                            ; $518a: $a8
	push de                                          ; $518b: $d5
	ld a, d                                          ; $518c: $7a
	or d                                             ; $518d: $b2
	sbc d                                            ; $518e: $9a
	push af                                          ; $518f: $f5
	ld sp, hl                                        ; $5190: $f9
	rst $38                                          ; $5191: $ff
	cp e                                             ; $5192: $bb
	ld a, e                                          ; $5193: $7b
	ld a, e                                          ; $5194: $7b
	cp $7c                                           ; $5195: $fe $7c
	ld b, b                                          ; $5197: $40
	sbc [hl]                                         ; $5198: $9e
	ei                                               ; $5199: $fb
	reti                                             ; $519a: $d9


	rra                                              ; $519b: $1f
	adc e                                            ; $519c: $8b
	push hl                                          ; $519d: $e5
	db $eb                                           ; $519e: $eb
	xor $ff                                          ; $519f: $ee $ff
	di                                               ; $51a1: $f3
	rst FarCall                                          ; $51a2: $f7
	db $fd                                           ; $51a3: $fd
	db $fc                                           ; $51a4: $fc
	cp $f6                                           ; $51a5: $fe $f6
	di                                               ; $51a7: $f3
	pop af                                           ; $51a8: $f1
	ld hl, sp-$08                                    ; $51a9: $f8 $f8
	ldh a, [$f4]                                     ; $51ab: $f0 $f4
	jr nc, jr_03f_5217                               ; $51ad: $30 $68

	halt                                             ; $51af: $76
	dec sp                                           ; $51b0: $3b
	ld a, d                                          ; $51b1: $7a
	dec b                                            ; $51b2: $05
	sbc c                                            ; $51b3: $99
	cpl                                              ; $51b4: $2f
	ld a, [$eefd]                                    ; $51b5: $fa $fd $ee
	db $e3                                           ; $51b8: $e3
	pop hl                                           ; $51b9: $e1
	ld a, b                                          ; $51ba: $78
	inc l                                            ; $51bb: $2c
	ld a, e                                          ; $51bc: $7b
	db $f4                                           ; $51bd: $f4
	sub d                                            ; $51be: $92
	rra                                              ; $51bf: $1f
	add a                                            ; $51c0: $87
	ld b, e                                          ; $51c1: $43
	or b                                             ; $51c2: $b0
	add sp, $00                                      ; $51c3: $e8 $00
	nop                                              ; $51c5: $00
	ld b, b                                          ; $51c6: $40
	and b                                            ; $51c7: $a0
	ret nc                                           ; $51c8: $d0

	db $e4                                           ; $51c9: $e4
	ld [hl], $1f                                     ; $51ca: $36 $1f
	jp c, $9eff                                      ; $51cc: $da $ff $9e

	ld a, a                                          ; $51cf: $7f
	ld a, [$3978]                                    ; $51d0: $fa $78 $39
	inc bc                                           ; $51d3: $03
	ld a, b                                          ; $51d4: $78
	inc bc                                           ; $51d5: $03
	ldh a, [$57]                                     ; $51d6: $f0 $57
	ldh a, [$2b]                                     ; $51d8: $f0 $2b
	nop                                              ; $51da: $00
	rst SubAFromDE                                          ; $51db: $df
	inc sp                                           ; $51dc: $33
	sbc [hl]                                         ; $51dd: $9e
	ld [hl], a                                       ; $51de: $77
	sbc $55                                          ; $51df: $de $55
	sbc [hl]                                         ; $51e1: $9e
	ld h, [hl]                                       ; $51e2: $66
	db $dd                                           ; $51e3: $dd
	ld b, h                                          ; $51e4: $44
	sbc c                                            ; $51e5: $99
	inc sp                                           ; $51e6: $33
	ld [hl], l                                       ; $51e7: $75
	ld b, h                                          ; $51e8: $44
	ld b, h                                          ; $51e9: $44
	ld d, l                                          ; $51ea: $55
	ld h, h                                          ; $51eb: $64
	ld h, e                                          ; $51ec: $63
	or $9e                                           ; $51ed: $f6 $9e
	ld b, l                                          ; $51ef: $45
	sbc $55                                          ; $51f0: $de $55
	ld c, e                                          ; $51f2: $4b
	or $9e                                           ; $51f3: $f6 $9e
	ld d, h                                          ; $51f5: $54
	ld l, a                                          ; $51f6: $6f
	or $9e                                           ; $51f7: $f6 $9e
	ld [hl], h                                       ; $51f9: $74
	cpl                                              ; $51fa: $2f
	or $7f                                           ; $51fb: $f6 $7f
	cp d                                             ; $51fd: $ba
	sbc $66                                          ; $51fe: $de $66
	sbc [hl]                                         ; $5200: $9e
	dec [hl]                                         ; $5201: $35
	inc de                                           ; $5202: $13
	or $28                                           ; $5203: $f6 $28
	adc c                                            ; $5205: $89
	sbc l                                            ; $5206: $9d
	add c                                            ; $5207: $81
	ld [bc], a                                       ; $5208: $02
	ld a, e                                          ; $5209: $7b
	cp $9d                                           ; $520a: $fe $9d
	nop                                              ; $520c: $00
	add c                                            ; $520d: $81
	ld hl, sp-$69                                    ; $520e: $f8 $97
	ld b, b                                          ; $5210: $40
	and b                                            ; $5211: $a0
	ld b, b                                          ; $5212: $40
	jr nz, @+$42                                     ; $5213: $20 $40

	jr nz, jr_03f_5217                               ; $5215: $20 $00

jr_03f_5217:
	ld hl, $9df9                                     ; $5217: $21 $f9 $9d
	ld [$7704], sp                                   ; $521a: $08 $04 $77
	cp $9d                                           ; $521d: $fe $9d
	nop                                              ; $521f: $00
	and h                                            ; $5220: $a4
	ld h, a                                          ; $5221: $67
	pop hl                                           ; $5222: $e1
	rst SubAFromDE                                          ; $5223: $df
	ld [$0a85], sp                                   ; $5224: $08 $85 $0a
	dec c                                            ; $5227: $0d
	rrca                                             ; $5228: $0f
	dec de                                           ; $5229: $1b
	add hl, bc                                       ; $522a: $09
	ld a, [de]                                       ; $522b: $1a
	rra                                              ; $522c: $1f
	ccf                                              ; $522d: $3f
	dec e                                            ; $522e: $1d
	ld a, [hl-]                                      ; $522f: $3a
	jr @+$2e                                         ; $5230: $18 $2c

	inc e                                            ; $5232: $1c
	inc l                                            ; $5233: $2c
	ld [bc], a                                       ; $5234: $02
	dec d                                            ; $5235: $15
	xor e                                            ; $5236: $ab
	ld d, a                                          ; $5237: $57
	rst $38                                          ; $5238: $ff
	cp $55                                           ; $5239: $fe $55
	xor d                                            ; $523b: $aa
	db $fd                                           ; $523c: $fd
	ld [$a854], a                                    ; $523d: $ea $54 $a8
	db $fd                                           ; $5240: $fd
	sub [hl]                                         ; $5241: $96
	cp a                                             ; $5242: $bf
	rst $38                                          ; $5243: $ff
	push af                                          ; $5244: $f5
	ld [$a850], a                                    ; $5245: $ea $50 $a8
	ld d, b                                          ; $5248: $50
	nop                                              ; $5249: $00
	ld b, b                                          ; $524a: $40
	ld a, [$f495]                                    ; $524b: $fa $95 $f4
	ld a, [$af5f]                                    ; $524e: $fa $5f $af
	ld e, l                                          ; $5251: $5d
	ld a, [hl+]                                      ; $5252: $2a
	dec d                                            ; $5253: $15
	jr z, jr_03f_5261                                ; $5254: $28 $0b

	dec b                                            ; $5256: $05
	ld a, [$808e]                                    ; $5257: $fa $8e $80
	ld b, b                                          ; $525a: $40
	and b                                            ; $525b: $a0
	ret nc                                           ; $525c: $d0

	ld [$fa55], a                                    ; $525d: $ea $55 $fa
	rst $38                                          ; $5260: $ff

jr_03f_5261:
	ld a, a                                          ; $5261: $7f
	cp a                                             ; $5262: $bf
	ld e, a                                          ; $5263: $5f
	cpl                                              ; $5264: $2f
	dec d                                            ; $5265: $15
	ld a, [hl+]                                      ; $5266: $2a
	dec b                                            ; $5267: $05
	nop                                              ; $5268: $00
	ld bc, $ea6f                                     ; $5269: $01 $6f $ea
	jp c, $99fc                                      ; $526c: $da $fc $99

	ld a, h                                          ; $526f: $7c
	rst $38                                          ; $5270: $ff
	nop                                              ; $5271: $00
	ccf                                              ; $5272: $3f
	ld a, [hl]                                       ; $5273: $7e
	inc bc                                           ; $5274: $03
	db $fd                                           ; $5275: $fd
	ld a, a                                          ; $5276: $7f
	rst FarCall                                          ; $5277: $f7
	sbc l                                            ; $5278: $9d
	nop                                              ; $5279: $00
	ld a, h                                          ; $527a: $7c
	cp $92                                           ; $527b: $fe $92
	ld sp, hl                                        ; $527d: $f9
	inc e                                            ; $527e: $1c
	add b                                            ; $527f: $80
	add e                                            ; $5280: $83
	ld a, h                                          ; $5281: $7c
	ld c, $0f                                        ; $5282: $0e $0f
	rrca                                             ; $5284: $0f
	nop                                              ; $5285: $00
	ldh [rP1], a                                     ; $5286: $e0 $00
	nop                                              ; $5288: $00
	add e                                            ; $5289: $83
	ld a, e                                          ; $528a: $7b
	call nc, Call_03f_40df                           ; $528b: $d4 $df $40
	sbc d                                            ; $528e: $9a
	rrca                                             ; $528f: $0f
	cp b                                             ; $5290: $b8

jr_03f_5291:
	ld e, h                                          ; $5291: $5c
	ld d, h                                          ; $5292: $54
	cp $7b                                           ; $5293: $fe $7b
	ldh [c], a                                       ; $5295: $e2
	ld a, e                                          ; $5296: $7b
	ld d, l                                          ; $5297: $55
	sbc [hl]                                         ; $5298: $9e
	and b                                            ; $5299: $a0
	ld a, e                                          ; $529a: $7b
	rst JumpTable                                          ; $529b: $c7
	sbc l                                            ; $529c: $9d
	ld [bc], a                                       ; $529d: $02
	jp hl                                            ; $529e: $e9


	ld a, [$069e]                                    ; $529f: $fa $9e $06
	ld l, a                                          ; $52a2: $6f
	ld d, b                                          ; $52a3: $50
	sbc e                                            ; $52a4: $9b
	ld [$08f8], sp                                   ; $52a5: $08 $f8 $08
	ld [$dcfe], sp                                   ; $52a8: $08 $fe $dc
	rlca                                             ; $52ab: $07

jr_03f_52ac:
	sbc $0f                                          ; $52ac: $de $0f
	ld sp, hl                                        ; $52ae: $f9
	reti                                             ; $52af: $d9


	rst $38                                          ; $52b0: $ff
	sbc [hl]                                         ; $52b1: $9e
	jr c, jr_03f_5291                                ; $52b2: $38 $dd

	ld a, h                                          ; $52b4: $7c
	sbc h                                            ; $52b5: $9c
	ld a, b                                          ; $52b6: $78
	inc a                                            ; $52b7: $3c
	inc e                                            ; $52b8: $1c
	db $db                                           ; $52b9: $db
	ld l, h                                          ; $52ba: $6c
	rst SubAFromDE                                          ; $52bb: $df
	ld l, b                                          ; $52bc: $68
	sbc l                                            ; $52bd: $9d
	rst GetHLinHL                                          ; $52be: $cf
	rst SubAFromDE                                          ; $52bf: $df
	ld [hl], e                                       ; $52c0: $73
	cp $9e                                           ; $52c1: $fe $9e
	call c, $cd77                                    ; $52c3: $dc $77 $cd
	sbc [hl]                                         ; $52c6: $9e
	ld [bc], a                                       ; $52c7: $02
	cp $9d                                           ; $52c8: $fe $9d
	rst AddAOntoHL                                          ; $52ca: $ef
	rst FarCall                                          ; $52cb: $f7
	db $dd                                           ; $52cc: $dd
	rst $38                                          ; $52cd: $ff
	ld l, a                                          ; $52ce: $6f
	call $917f                                       ; $52cf: $cd $7f $91
	sbc e                                            ; $52d2: $9b
	rlca                                             ; $52d3: $07
	inc bc                                           ; $52d4: $03
	db $fd                                           ; $52d5: $fd
	cp $de                                           ; $52d6: $fe $de
	rst $38                                          ; $52d8: $ff
	sbc h                                            ; $52d9: $9c
	rst GetHLinHL                                          ; $52da: $cf
	rrca                                             ; $52db: $0f
	ld a, [de]                                       ; $52dc: $1a
	ld l, a                                          ; $52dd: $6f
	ld l, [hl]                                       ; $52de: $6e
	sbc e                                            ; $52df: $9b
	ldh a, [$fc]                                     ; $52e0: $f0 $fc
	ld [hl], l                                       ; $52e2: $75
	xor [hl]                                         ; $52e3: $ae
	sbc $ff                                          ; $52e4: $de $ff
	sbc h                                            ; $52e6: $9c
	xor d                                            ; $52e7: $aa
	push de                                          ; $52e8: $d5
	ld a, a                                          ; $52e9: $7f

jr_03f_52ea:
	ld l, a                                          ; $52ea: $6f
	ldh a, [rIE]                                     ; $52eb: $f0 $ff
	ld l, [hl]                                       ; $52ed: $6e
	jp nz, $819d                                     ; $52ee: $c2 $9d $81

	inc hl                                           ; $52f1: $23
	ld l, a                                          ; $52f2: $6f
	ld a, [hl-]                                      ; $52f3: $3a
	sub l                                            ; $52f4: $95
	ld h, b                                          ; $52f5: $60
	jr jr_03f_52fb                                   ; $52f6: $18 $03

	ld h, $0f                                        ; $52f8: $26 $0f
	dec de                                           ; $52fa: $1b

jr_03f_52fb:
	dec a                                            ; $52fb: $3d
	ld l, d                                          ; $52fc: $6a
	push de                                          ; $52fd: $d5
	xor d                                            ; $52fe: $aa
	ld a, [$0195]                                    ; $52ff: $fa $95 $01
	ret c                                            ; $5302: $d8

	ld b, h                                          ; $5303: $44
	adc b                                            ; $5304: $88
	ld b, h                                          ; $5305: $44
	cp b                                             ; $5306: $b8
	inc d                                            ; $5307: $14
	db $10                                           ; $5308: $10
	inc e                                            ; $5309: $1c
	jr nz, jr_03f_52ea                               ; $530a: $20 $de

	jr nc, jr_03f_52ac                               ; $530c: $30 $9e

	ld [hl], b                                       ; $530e: $70
	sbc $f8                                          ; $530f: $de $f8
	sub a                                            ; $5311: $97
	db $10                                           ; $5312: $10
	or b                                             ; $5313: $b0
	db $10                                           ; $5314: $10
	cp b                                             ; $5315: $b8
	inc e                                            ; $5316: $1c
	or c                                             ; $5317: $b1
	rla                                              ; $5318: $17
	or a                                             ; $5319: $b7
	reti                                             ; $531a: $d9


	ld [$9afe], sp                                   ; $531b: $08 $fe $9a
	jr jr_03f_539f                                   ; $531e: $18 $7f

	sub l                                            ; $5320: $95
	pop hl                                           ; $5321: $e1
	sub [hl]                                         ; $5322: $96
	db $fd                                           ; $5323: $fd
	rst SubAFromDE                                          ; $5324: $df
	ccf                                              ; $5325: $3f
	sbc l                                            ; $5326: $9d
	ld a, $3f                                        ; $5327: $3e $3f
	db $fd                                           ; $5329: $fd
	sbc e                                            ; $532a: $9b
	jr nc, @+$01                                     ; $532b: $30 $ff

	sbc a                                            ; $532d: $9f
	db $10                                           ; $532e: $10
	db $fd                                           ; $532f: $fd
	sbc h                                            ; $5330: $9c
	ret nz                                           ; $5331: $c0

	rst $38                                          ; $5332: $ff
	ld a, a                                          ; $5333: $7f
	ld l, a                                          ; $5334: $6f
	halt                                             ; $5335: $76
	ld a, a                                          ; $5336: $7f
	rst AddAOntoHL                                          ; $5337: $ef
	sbc [hl]                                         ; $5338: $9e
	rlca                                             ; $5339: $07
	db $fc                                           ; $533a: $fc
	ld a, a                                          ; $533b: $7f
	rst AddAOntoHL                                          ; $533c: $ef
	ld a, a                                          ; $533d: $7f
	xor $98                                          ; $533e: $ee $98
	xor [hl]                                         ; $5340: $ae
	ld d, a                                          ; $5341: $57
	dec hl                                           ; $5342: $2b
	rla                                              ; $5343: $17
	dec bc                                           ; $5344: $0b
	ld d, a                                          ; $5345: $57
	bit 5, [hl]                                      ; $5346: $cb $6e
	ret z                                            ; $5348: $c8

	sbc e                                            ; $5349: $9b
	add b                                            ; $534a: $80
	ldh [rLCDC], a                                   ; $534b: $e0 $40
	add b                                            ; $534d: $80
	ld a, e                                          ; $534e: $7b
	cp $9a                                           ; $534f: $fe $9a
	and b                                            ; $5351: $a0
	ret nz                                           ; $5352: $c0

	and b                                            ; $5353: $a0
	cp h                                             ; $5354: $bc
	ld a, h                                          ; $5355: $7c
	ld a, e                                          ; $5356: $7b
	cp $9c                                           ; $5357: $fe $9c
	ld e, h                                          ; $5359: $5c
	inc a                                            ; $535a: $3c
	ld e, h                                          ; $535b: $5c
	ld a, [$f09e]                                    ; $535c: $fa $9e $f0
	ld sp, hl                                        ; $535f: $f9
	sub a                                            ; $5360: $97
	rrca                                             ; $5361: $0f
	rlca                                             ; $5362: $07
	rlca                                             ; $5363: $07
	inc bc                                           ; $5364: $03
	rlca                                             ; $5365: $07
	rlca                                             ; $5366: $07
	ld a, a                                          ; $5367: $7f
	pop bc                                           ; $5368: $c1
	ld sp, hl                                        ; $5369: $f9
	sub l                                            ; $536a: $95
	or $c0                                           ; $536b: $f6 $c0
	cp [hl]                                          ; $536d: $be
	cp $f8                                           ; $536e: $fe $f8
	rst $38                                          ; $5370: $ff
	rst $38                                          ; $5371: $ff
	ld sp, hl                                        ; $5372: $f9
	ld [$663c], sp                                   ; $5373: $08 $3c $66
	ld e, [hl]                                       ; $5376: $5e
	ld [hl], e                                       ; $5377: $73
	and a                                            ; $5378: $a7
	sbc [hl]                                         ; $5379: $9e
	db $fc                                           ; $537a: $fc
	ld hl, sp-$73                                    ; $537b: $f8 $8d
	ld a, [bc]                                       ; $537d: $0a
	ld bc, $0902                                     ; $537e: $01 $02 $09
	ld [bc], a                                       ; $5381: $02
	ld bc, $0fea                                     ; $5382: $01 $ea $0f
	dec b                                            ; $5385: $05
	ld c, $0d                                        ; $5386: $0e $0d
	ld b, $0d                                        ; $5388: $06 $0d
	ld c, $05                                        ; $538a: $0e $05
	nop                                              ; $538c: $00
	xor d                                            ; $538d: $aa
	ld d, l                                          ; $538e: $55
	ld [hl], e                                       ; $538f: $73
	cp $9e                                           ; $5390: $fe $9e
	rst $38                                          ; $5392: $ff
	ld l, a                                          ; $5393: $6f
	ld sp, hl                                        ; $5394: $f9
	sbc h                                            ; $5395: $9c
	ld d, l                                          ; $5396: $55
	inc a                                            ; $5397: $3c
	inc e                                            ; $5398: $1c
	sbc $3c                                          ; $5399: $de $3c
	sbc e                                            ; $539b: $9b
	inc e                                            ; $539c: $1c
	ld a, h                                          ; $539d: $7c
	ld a, h                                          ; $539e: $7c

jr_03f_539f:
	ld c, b                                          ; $539f: $48
	call c, $df68                                    ; $53a0: $dc $68 $df
	ld [$c09b], sp                                   ; $53a3: $08 $9b $c0
	ret nc                                           ; $53a6: $d0

	ldh [$c0], a                                     ; $53a7: $e0 $c0
	db $dd                                           ; $53a9: $dd
	add b                                            ; $53aa: $80
	ld [hl], a                                       ; $53ab: $77
	ld e, d                                          ; $53ac: $5a
	sbc [hl]                                         ; $53ad: $9e
	ld h, b                                          ; $53ae: $60
	sbc $70                                          ; $53af: $de $70
	sub a                                            ; $53b1: $97
	dec b                                            ; $53b2: $05
	ld [bc], a                                       ; $53b3: $02
	ld bc, $0102                                     ; $53b4: $01 $02 $01
	nop                                              ; $53b7: $00
	ld bc, $f9c0                                     ; $53b8: $01 $c0 $f9
	add h                                            ; $53bb: $84
	add h                                            ; $53bc: $84
	jp nz, $d3a0                                     ; $53bd: $c2 $a0 $d3

	and e                                            ; $53c0: $a3
	sub e                                            ; $53c1: $93
	ld l, e                                          ; $53c2: $6b
	or l                                             ; $53c3: $b5
	ld a, a                                          ; $53c4: $7f
	ccf                                              ; $53c5: $3f
	ld e, a                                          ; $53c6: $5f
	cpl                                              ; $53c7: $2f
	ld e, a                                          ; $53c8: $5f
	cpl                                              ; $53c9: $2f
	rla                                              ; $53ca: $17
	ld a, e                                          ; $53cb: $7b
	db $fd                                           ; $53cc: $fd
	ld a, [hl+]                                      ; $53cd: $2a
	ld d, l                                          ; $53ce: $55
	xor d                                            ; $53cf: $aa
	cp l                                             ; $53d0: $bd
	ld l, d                                          ; $53d1: $6a
	ld e, a                                          ; $53d2: $5f
	ld l, d                                          ; $53d3: $6a
	nop                                              ; $53d4: $00
	add b                                            ; $53d5: $80
	add b                                            ; $53d6: $80
	sbc $c0                                          ; $53d7: $de $c0
	ld a, a                                          ; $53d9: $7f
	call nz, $4995                                   ; $53da: $c4 $95 $49
	and b                                            ; $53dd: $a0
	dec e                                            ; $53de: $1d
	cp d                                             ; $53df: $ba
	dec d                                            ; $53e0: $15
	ld a, [hl-]                                      ; $53e1: $3a
	dec a                                            ; $53e2: $3d
	ld a, d                                          ; $53e3: $7a
	ld b, $07                                        ; $53e4: $06 $07
	ld l, a                                          ; $53e6: $6f
	ld [hl], b                                       ; $53e7: $70
	add [hl]                                         ; $53e8: $86
	ld d, [hl]                                       ; $53e9: $56
	xor b                                            ; $53ea: $a8
	ld [hl+], a                                      ; $53eb: $22
	and [hl]                                         ; $53ec: $a6
	jr nz, jr_03f_5437                               ; $53ed: $20 $48

	add b                                            ; $53ef: $80
	add c                                            ; $53f0: $81
	ld bc, $dd07                                     ; $53f1: $01 $07 $dd
	ld a, c                                          ; $53f4: $79
	ld a, a                                          ; $53f5: $7f
	rst FarCall                                          ; $53f6: $f7
	ld a, a                                          ; $53f7: $7f
	ld a, a                                          ; $53f8: $7f
	sbc b                                            ; $53f9: $98
	inc e                                            ; $53fa: $1c
	jr jr_03f_5419                                   ; $53fb: $18 $1c

	jr nc, jr_03f_541c                               ; $53fd: $30 $1d

	adc a                                            ; $53ff: $8f
	ld b, c                                          ; $5400: $41
	ld a, b                                          ; $5401: $78
	db $dd                                           ; $5402: $dd
	ld hl, sp-$6c                                    ; $5403: $f8 $94
	ldh [c], a                                       ; $5405: $e2
	rst SubAFromDE                                          ; $5406: $df
	cp a                                             ; $5407: $bf
	rla                                              ; $5408: $17
	or a                                             ; $5409: $b7
	rla                                              ; $540a: $17
	or l                                             ; $540b: $b5
	dec d                                            ; $540c: $15
	or a                                             ; $540d: $b7
	sub l                                            ; $540e: $95
	dec [hl]                                         ; $540f: $35
	sbc $08                                          ; $5410: $de $08
	rst SubAFromDE                                          ; $5412: $df
	ld a, [bc]                                       ; $5413: $0a
	ld a, a                                          ; $5414: $7f
	db $fd                                           ; $5415: $fd
	sub [hl]                                         ; $5416: $96
	adc d                                            ; $5417: $8a
	rst FarCall                                          ; $5418: $f7

jr_03f_5419:
	sub d                                            ; $5419: $92
	rst FarCall                                          ; $541a: $f7
	sub e                                            ; $541b: $93

jr_03f_541c:
	rst FarCall                                          ; $541c: $f7
	sub d                                            ; $541d: $92
	rst SubAFromHL                                          ; $541e: $d7
	sub e                                            ; $541f: $93
	reti                                             ; $5420: $d9


	ccf                                              ; $5421: $3f
	sbc c                                            ; $5422: $99
	xor b                                            ; $5423: $a8
	ld d, l                                          ; $5424: $55
	ld [$fdff], a                                    ; $5425: $ea $ff $fd
	rst $38                                          ; $5428: $ff
	halt                                             ; $5429: $76
	ld c, e                                          ; $542a: $4b
	db $db                                           ; $542b: $db
	rst $38                                          ; $542c: $ff
	sub [hl]                                         ; $542d: $96
	ld b, b                                          ; $542e: $40
	ld a, [hl+]                                      ; $542f: $2a
	add [hl]                                         ; $5430: $86
	xor [hl]                                         ; $5431: $ae
	xor h                                            ; $5432: $ac
	cp [hl]                                          ; $5433: $be
	xor [hl]                                         ; $5434: $ae
	or [hl]                                          ; $5435: $b6
	cp a                                             ; $5436: $bf

jr_03f_5437:
	jp c, $97ff                                      ; $5437: $da $ff $97

	rst SubAFromBC                                          ; $543a: $e7
	db $eb                                           ; $543b: $eb
	rst SubAFromBC                                          ; $543c: $e7
	db $eb                                           ; $543d: $eb
	push hl                                          ; $543e: $e5
	db $eb                                           ; $543f: $eb
	push hl                                          ; $5440: $e5
	db $e3                                           ; $5441: $e3
	reti                                             ; $5442: $d9


	ldh [$7e], a                                     ; $5443: $e0 $7e
	add $6f                                          ; $5445: $c6 $6f
	cp $7e                                           ; $5447: $fe $7e
	add $6f                                          ; $5449: $c6 $6f
	cp $9e                                           ; $544b: $fe $9e
	rst GetHLinHL                                          ; $544d: $cf
	db $dd                                           ; $544e: $dd
	ld bc, $a39b                                     ; $544f: $01 $9b $a3
	inc bc                                           ; $5452: $03

jr_03f_5453:
	inc bc                                           ; $5453: $03
	jr nc, jr_03f_5453                               ; $5454: $30 $fd

	ld a, l                                          ; $5456: $7d
	ld [$0095], sp                                   ; $5457: $08 $95 $00
	db $fc                                           ; $545a: $fc
	ld hl, sp-$71                                    ; $545b: $f8 $8f
	rst SubAFromDE                                          ; $545d: $df
	sbc a                                            ; $545e: $9f
	rst $38                                          ; $545f: $ff
	rst AddAOntoHL                                          ; $5460: $ef
	ld a, a                                          ; $5461: $7f
	inc bc                                           ; $5462: $03
	ld [hl], d                                       ; $5463: $72
	ld a, [hl]                                       ; $5464: $7e
	ld a, [hl]                                       ; $5465: $7e
	ld l, c                                          ; $5466: $69
	sbc d                                            ; $5467: $9a
	rst AddAOntoHL                                          ; $5468: $ef
	inc de                                           ; $5469: $13
	sbc l                                            ; $546a: $9d
	push de                                          ; $546b: $d5
	rla                                              ; $546c: $17
	ld a, e                                          ; $546d: $7b
	or e                                             ; $546e: $b3

jr_03f_546f:
	sbc d                                            ; $546f: $9a
	db $10                                           ; $5470: $10
	db $ec                                           ; $5471: $ec
	ld h, d                                          ; $5472: $62
	ld [hl+], a                                      ; $5473: $22
	ldh [$7b], a                                     ; $5474: $e0 $7b
	ld c, l                                          ; $5476: $4d
	sbc [hl]                                         ; $5477: $9e
	sub a                                            ; $5478: $97
	db $dd                                           ; $5479: $dd
	sub b                                            ; $547a: $90
	sbc $98                                          ; $547b: $de $98
	sbc [hl]                                         ; $547d: $9e
	ld l, b                                          ; $547e: $68
	jp c, Jump_03f_7b60                              ; $547f: $da $60 $7b

	ld [bc], a                                       ; $5482: $02
	ld [hl], e                                       ; $5483: $73
	cp $9c                                           ; $5484: $fe $9c
	xor $0d                                          ; $5486: $ee $0d
	ld c, $73                                        ; $5488: $0e $73
	cp $6a                                           ; $548a: $fe $6a
	ret                                              ; $548c: $c9


	rst SubAFromDE                                          ; $548d: $df
	xor d                                            ; $548e: $aa
	ld l, e                                          ; $548f: $6b
	rst FarCall                                          ; $5490: $f7
	sbc l                                            ; $5491: $9d
	ld a, h                                          ; $5492: $7c
	ld c, h                                          ; $5493: $4c
	sbc $0c                                          ; $5494: $de $0c
	sbc h                                            ; $5496: $9c
	call z, $1c1c                                    ; $5497: $cc $1c $1c
	db $db                                           ; $549a: $db
	ld [$48df], sp                                   ; $549b: $08 $df $48
	sbc $87                                          ; $549e: $de $87
	sbc [hl]                                         ; $54a0: $9e
	rst JumpTable                                          ; $54a1: $c7
	ld a, d                                          ; $54a2: $7a
	cp a                                             ; $54a3: $bf
	adc c                                            ; $54a4: $89
	ret nz                                           ; $54a5: $c0

	ld [hl], e                                       ; $54a6: $73
	ld [hl], a                                       ; $54a7: $77
	ld h, a                                          ; $54a8: $67
	inc hl                                           ; $54a9: $23
	inc hl                                           ; $54aa: $23
	nop                                              ; $54ab: $00
	ld b, b                                          ; $54ac: $40
	jr nc, jr_03f_546f                               ; $54ad: $30 $c0

	ret nz                                           ; $54af: $c0

	ldh [c], a                                       ; $54b0: $e2
	ret nc                                           ; $54b1: $d0

	rrca                                             ; $54b2: $0f
	ld c, $05                                        ; $54b3: $0e $05
	ld [$f0e0], sp                                   ; $54b5: $08 $e0 $f0
	ldh a, [$e6]                                     ; $54b8: $f0 $e6
	add $de                                          ; $54ba: $c6 $de
	rrca                                             ; $54bc: $0f
	add a                                            ; $54bd: $87
	ld a, [hl]                                       ; $54be: $7e
	db $fc                                           ; $54bf: $fc
	cp $fc                                           ; $54c0: $fe $fc
	add b                                            ; $54c2: $80
	ldh a, [$7c]                                     ; $54c3: $f0 $7c
	ld a, l                                          ; $54c5: $7d
	db $fd                                           ; $54c6: $fd
	rst $38                                          ; $54c7: $ff
	db $fd                                           ; $54c8: $fd
	ld a, e                                          ; $54c9: $7b
	ld a, a                                          ; $54ca: $7f
	rrca                                             ; $54cb: $0f
	add e                                            ; $54cc: $83
	add e                                            ; $54cd: $83
	push af                                          ; $54ce: $f5
	xor d                                            ; $54cf: $aa
	cp a                                             ; $54d0: $bf
	dec sp                                           ; $54d1: $3b
	dec [hl]                                         ; $54d2: $35
	ld a, [bc]                                       ; $54d3: $0a
	rra                                              ; $54d4: $1f
	xor a                                            ; $54d5: $af
	call c, Call_03f_7bc0                            ; $54d6: $dc $c0 $7b
	ld b, c                                          ; $54d9: $41
	sub e                                            ; $54da: $93
	db $fc                                           ; $54db: $fc
	ld a, l                                          ; $54dc: $7d
	rst $38                                          ; $54dd: $ff
	ld l, a                                          ; $54de: $6f
	sub d                                            ; $54df: $92
	and b                                            ; $54e0: $a0
	ld bc, $0182                                     ; $54e1: $01 $82 $01
	add e                                            ; $54e4: $83
	rlca                                             ; $54e5: $07
	sbc a                                            ; $54e6: $9f
	halt                                             ; $54e7: $76
	dec sp                                           ; $54e8: $3b
	sub a                                            ; $54e9: $97
	xor e                                            ; $54ea: $ab
	rst FarCall                                          ; $54eb: $f7
	ld hl, sp+$08                                    ; $54ec: $f8 $08
	nop                                              ; $54ee: $00
	ld hl, $2844                                     ; $54ef: $21 $44 $28
	sbc $ff                                          ; $54f2: $de $ff
	ld a, c                                          ; $54f4: $79
	db $fc                                           ; $54f5: $fc
	ld a, a                                          ; $54f6: $7f
	ld c, d                                          ; $54f7: $4a
	sbc d                                            ; $54f8: $9a
	ld b, c                                          ; $54f9: $41
	xor d                                            ; $54fa: $aa
	sbc l                                            ; $54fb: $9d
	dec bc                                           ; $54fc: $0b
	rra                                              ; $54fd: $1f
	ld [hl], b                                       ; $54fe: $70
	ld l, b                                          ; $54ff: $68
	rst SubAFromDE                                          ; $5500: $df
	ccf                                              ; $5501: $3f
	ld a, l                                          ; $5502: $7d
	or d                                             ; $5503: $b2
	rst SubAFromDE                                          ; $5504: $df
	rst $38                                          ; $5505: $ff
	ld a, [hl]                                       ; $5506: $7e
	add $97                                          ; $5507: $c6 $97
	rla                                              ; $5509: $17
	dec sp                                           ; $550a: $3b
	jr jr_03f_5545                                   ; $550b: $18 $38

	jr @+$3a                                         ; $550d: $18 $38

	adc d                                            ; $550f: $8a
	adc d                                            ; $5510: $8a
	db $db                                           ; $5511: $db
	adc b                                            ; $5512: $88
	sbc c                                            ; $5513: $99
	rst SubAFromHL                                          ; $5514: $d7
	add e                                            ; $5515: $83
	sub $c8                                          ; $5516: $d6 $c8
	rra                                              ; $5518: $1f
	inc c                                            ; $5519: $0c
	ld [hl], l                                       ; $551a: $75
	add h                                            ; $551b: $84
	sbc h                                            ; $551c: $9c
	add hl, sp                                       ; $551d: $39
	ccf                                              ; $551e: $3f
	ccf                                              ; $551f: $3f
	ld a, b                                          ; $5520: $78
	add a                                            ; $5521: $87
	rst SubAFromDE                                          ; $5522: $df
	rst $38                                          ; $5523: $ff
	sbc c                                            ; $5524: $99
	ld e, a                                          ; $5525: $5f
	dec hl                                           ; $5526: $2b
	cp $7f                                           ; $5527: $fe $7f
	cp a                                             ; $5529: $bf
	inc bc                                           ; $552a: $03
	db $db                                           ; $552b: $db
	rst $38                                          ; $552c: $ff
	ld a, [hl]                                       ; $552d: $7e
	ld c, d                                          ; $552e: $4a
	sub a                                            ; $552f: $97
	xor [hl]                                         ; $5530: $ae
	cp [hl]                                          ; $5531: $be
	xor [hl]                                         ; $5532: $ae
	and [hl]                                         ; $5533: $a6
	nop                                              ; $5534: $00
	rst $38                                          ; $5535: $ff
	ldh [$f0], a                                     ; $5536: $e0 $f0
	jp c, $9aff                                      ; $5538: $da $ff $9a

	ldh [$e5], a                                     ; $553b: $e0 $e5
	db $e3                                           ; $553d: $e3
	push hl                                          ; $553e: $e5
	ldh [c], a                                       ; $553f: $e2
	ld a, e                                          ; $5540: $7b
	cp $7c                                           ; $5541: $fe $7c
	ld [hl], c                                       ; $5543: $71
	ld l, [hl]                                       ; $5544: $6e

jr_03f_5545:
	jp nz, $c67d                                     ; $5545: $c2 $7d $c6

	ld a, [hl]                                       ; $5548: $7e
	call nz, $e09a                                   ; $5549: $c4 $9a $e0
	ret nc                                           ; $554c: $d0

	add sp, $74                                      ; $554d: $e8 $74
	xor b                                            ; $554f: $a8
	ld a, d                                          ; $5550: $7a
	call nz, $1c9a                                   ; $5551: $c4 $9a $1c
	inc l                                            ; $5554: $2c
	inc d                                            ; $5555: $14
	ld [$dd14], sp                                   ; $5556: $08 $14 $dd
	inc bc                                           ; $5559: $03
	sbc h                                            ; $555a: $9c
	rst GetHLinHL                                          ; $555b: $cf
	ei                                               ; $555c: $fb
	ld [bc], a                                       ; $555d: $02
	ld [hl], b                                       ; $555e: $70
	dec a                                            ; $555f: $3d
	halt                                             ; $5560: $76
	ret nz                                           ; $5561: $c0

	ld a, b                                          ; $5562: $78
	or c                                             ; $5563: $b1
	rst SubAFromDE                                          ; $5564: $df
	ret c                                            ; $5565: $d8

	sbc h                                            ; $5566: $9c
	ld bc, $cecc                                     ; $5567: $01 $cc $ce
	ld a, c                                          ; $556a: $79
	rla                                              ; $556b: $17
	rst SubAFromDE                                          ; $556c: $df
	rlca                                             ; $556d: $07
	add a                                            ; $556e: $87
	cp $03                                           ; $556f: $fe $03
	ld bc, $3133                                     ; $5571: $01 $33 $31
	db $e3                                           ; $5574: $e3
	ld h, a                                          ; $5575: $67
	inc bc                                           ; $5576: $03
	rst $38                                          ; $5577: $ff
	add d                                            ; $5578: $82
	rrca                                             ; $5579: $0f
	call z, $1cce                                    ; $557a: $cc $ce $1c
	sbc b                                            ; $557d: $98
	db $fc                                           ; $557e: $fc
	nop                                              ; $557f: $00
	ld a, h                                          ; $5580: $7c
	ldh a, [$9e]                                     ; $5581: $f0 $9e
	adc h                                            ; $5583: $8c
	ret z                                            ; $5584: $c8

	ld c, b                                          ; $5585: $48
	ld c, b                                          ; $5586: $48
	sbc $4c                                          ; $5587: $de $4c
	ld a, l                                          ; $5589: $7d
	call nz, $30db                                   ; $558a: $c4 $db $30
	ld a, [hl]                                       ; $558d: $7e
	add $db                                          ; $558e: $c6 $db
	inc bc                                           ; $5590: $03
	sbc l                                            ; $5591: $9d
	sbc $1d                                          ; $5592: $de $1d
	db $db                                           ; $5594: $db
	inc c                                            ; $5595: $0c
	ld a, c                                          ; $5596: $79
	add [hl]                                         ; $5597: $86
	call c, Call_03f_7eff                            ; $5598: $dc $ff $7e
	add $fb                                          ; $559b: $c6 $fb
	ld a, l                                          ; $559d: $7d
	dec de                                           ; $559e: $1b
	sbc l                                            ; $559f: $9d
	db $fc                                           ; $55a0: $fc
	call z, $e8de                                    ; $55a1: $cc $de $e8
	sbc [hl]                                         ; $55a4: $9e
	db $ec                                           ; $55a5: $ec
	ld a, d                                          ; $55a6: $7a
	push bc                                          ; $55a7: $c5
	sbc [hl]                                         ; $55a8: $9e
	ld a, b                                          ; $55a9: $78
	sbc $5c                                          ; $55aa: $de $5c
	sub c                                            ; $55ac: $91
	ld e, b                                          ; $55ad: $58
	ret nz                                           ; $55ae: $c0

	call nc, $c8c7                                   ; $55af: $d4 $c7 $c8
	ldh [$f2], a                                     ; $55b2: $e0 $f2
	ld sp, hl                                        ; $55b4: $f9
	ld hl, sp+$1c                                    ; $55b5: $f8 $1c
	ld c, $12                                        ; $55b7: $0e $12
	inc de                                           ; $55b9: $13
	dec de                                           ; $55ba: $1b
	ld a, b                                          ; $55bb: $78
	db $ec                                           ; $55bc: $ec
	rst SubAFromDE                                          ; $55bd: $df
	ld bc, $cd7c                                     ; $55be: $01 $7c $cd
	sbc e                                            ; $55c1: $9b
	cp b                                             ; $55c2: $b8
	rra                                              ; $55c3: $1f
	and b                                            ; $55c4: $a0
	ld c, [hl]                                       ; $55c5: $4e
	ld [hl], h                                       ; $55c6: $74
	ld h, b                                          ; $55c7: $60
	adc [hl]                                         ; $55c8: $8e
	ld b, a                                          ; $55c9: $47
	ldh [$5f], a                                     ; $55ca: $e0 $5f
	ld sp, $7b3b                                     ; $55cc: $31 $3b $7b
	pop hl                                           ; $55cf: $e1
	ld bc, $4406                                     ; $55d0: $01 $06 $44
	jr nz, jr_03f_55d7                               ; $55d3: $20 $02

	rlca                                             ; $55d5: $07
	rlca                                             ; $55d6: $07

jr_03f_55d7:
	rra                                              ; $55d7: $1f
	rst $38                                          ; $55d8: $ff
	rst $38                                          ; $55d9: $ff
	ld a, d                                          ; $55da: $7a
	ld c, b                                          ; $55db: $48
	sbc l                                            ; $55dc: $9d
	cp a                                             ; $55dd: $bf
	scf                                              ; $55de: $37
	ld a, d                                          ; $55df: $7a
	ld sp, hl                                        ; $55e0: $f9
	sbc h                                            ; $55e1: $9c
	ld d, l                                          ; $55e2: $55
	cp d                                             ; $55e3: $ba
	rst $38                                          ; $55e4: $ff
	ld [hl], l                                       ; $55e5: $75
	ld c, e                                          ; $55e6: $4b
	ld l, h                                          ; $55e7: $6c
	and e                                            ; $55e8: $a3
	db $db                                           ; $55e9: $db
	rst $38                                          ; $55ea: $ff
	sbc [hl]                                         ; $55eb: $9e
	nop                                              ; $55ec: $00
	ld [hl], h                                       ; $55ed: $74
	ld l, $fe                                        ; $55ee: $2e $fe
	add b                                            ; $55f0: $80
	rla                                              ; $55f1: $17
	rra                                              ; $55f2: $1f
	rst AddAOntoHL                                          ; $55f3: $ef
	ldh [$f0], a                                     ; $55f4: $e0 $f0
	ld sp, hl                                        ; $55f6: $f9
	ld hl, sp-$08                                    ; $55f7: $f8 $f8
	ld [$10e0], sp                                   ; $55f9: $08 $e0 $10
	rra                                              ; $55fc: $1f
	rrca                                             ; $55fd: $0f
	ld b, $07                                        ; $55fe: $06 $07
	rlca                                             ; $5600: $07
	ldh a, [$f8]                                     ; $5601: $f0 $f8
	sbc a                                            ; $5603: $9f
	rra                                              ; $5604: $1f
	inc a                                            ; $5605: $3c
	cpl                                              ; $5606: $2f
	dec sp                                           ; $5607: $3b
	inc [hl]                                         ; $5608: $34
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	ld h, b                                          ; $560b: $60
	ldh [$e3], a                                     ; $560c: $e0 $e3
	rst FarCall                                          ; $560e: $f7
	or $9d                                           ; $560f: $f6 $9d
	ei                                               ; $5611: $fb
	ld [$d07b], sp                                   ; $5612: $08 $7b $d0
	sbc e                                            ; $5615: $9b
	ld b, b                                          ; $5616: $40
	rst $38                                          ; $5617: $ff
	rla                                              ; $5618: $17
	rst $38                                          ; $5619: $ff
	ld [hl], h                                       ; $561a: $74
	ld b, a                                          ; $561b: $47
	ld [hl], e                                       ; $561c: $73
	ret z                                            ; $561d: $c8

	adc b                                            ; $561e: $88
	ld a, [bc]                                       ; $561f: $0a
	ret nc                                           ; $5620: $d0

	rst $38                                          ; $5621: $ff
	ld sp, $d0f0                                     ; $5622: $31 $f0 $d0
	ld hl, sp+$00                                    ; $5625: $f8 $00
	rrca                                             ; $5627: $0f
	rrca                                             ; $5628: $0f
	nop                                              ; $5629: $00
	ret nz                                           ; $562a: $c0

	ldh a, [$f8]                                     ; $562b: $f0 $f8
	ld hl, sp+$2f                                    ; $562d: $f8 $2f
	xor l                                            ; $562f: $ad
	ld [bc], a                                       ; $5630: $02
	cp b                                             ; $5631: $b8
	or l                                             ; $5632: $b5
	ld a, [bc]                                       ; $5633: $0a
	ret                                              ; $5634: $c9


	ld b, $7b                                        ; $5635: $06 $7b
	sub d                                            ; $5637: $92
	sbc [hl]                                         ; $5638: $9e
	ld b, a                                          ; $5639: $47
	ld a, b                                          ; $563a: $78
	add h                                            ; $563b: $84
	adc a                                            ; $563c: $8f
	jp $f0e0                                         ; $563d: $c3 $e0 $f0


	or b                                             ; $5640: $b0
	rra                                              ; $5641: $1f
	ld b, b                                          ; $5642: $40
	xor a                                            ; $5643: $af
	ld d, l                                          ; $5644: $55
	and e                                            ; $5645: $a3
	ldh [$e0], a                                     ; $5646: $e0 $e0
	ld hl, sp-$20                                    ; $5648: $f8 $e0
	rst $38                                          ; $564a: $ff
	ldh a, [$fa]                                     ; $564b: $f0 $fa
	ld [hl], a                                       ; $564d: $77
	adc l                                            ; $564e: $8d
	sbc l                                            ; $564f: $9d
	ldh [rP1], a                                     ; $5650: $e0 $00
	sbc $f8                                          ; $5652: $de $f8
	ld l, b                                          ; $5654: $68
	ld e, e                                          ; $5655: $5b
	sbc e                                            ; $5656: $9b
	ldh a, [$74]                                     ; $5657: $f0 $74
	cp b                                             ; $5659: $b8
	ld a, h                                          ; $565a: $7c
	ld a, e                                          ; $565b: $7b
	cp $9b                                           ; $565c: $fe $9b
	ld e, h                                          ; $565e: $5c
	jr c, jr_03f_5669                                ; $565f: $38 $08

	inc b                                            ; $5661: $04
	ld a, d                                          ; $5662: $7a
	jp nc, $fe7b                                     ; $5663: $d2 $7b $fe

	ld [hl], b                                       ; $5666: $70
	ld d, c                                          ; $5667: $51
	rst SubAFromDE                                          ; $5668: $df

jr_03f_5669:
	rlca                                             ; $5669: $07
	ld a, d                                          ; $566a: $7a
	add $fb                                          ; $566b: $c6 $fb
	sub a                                            ; $566d: $97
	sbc e                                            ; $566e: $9b
	sub b                                            ; $566f: $90
	and e                                            ; $5670: $a3
	and a                                            ; $5671: $a7
	inc hl                                           ; $5672: $23
	ld [hl+], a                                      ; $5673: $22
	rst SubAFromBC                                          ; $5674: $e7
	ld h, [hl]                                       ; $5675: $66
	ld sp, hl                                        ; $5676: $f9
	sbc l                                            ; $5677: $9d
	db $e3                                           ; $5678: $e3
	sub b                                            ; $5679: $90
	db $dd                                           ; $567a: $dd
	add b                                            ; $567b: $80
	sbc e                                            ; $567c: $9b
	and b                                            ; $567d: $a0
	jr nz, @+$1e                                     ; $567e: $20 $1c

	ld l, a                                          ; $5680: $6f
	db $dd                                           ; $5681: $dd
	ld a, a                                          ; $5682: $7f
	rst SubAFromDE                                          ; $5683: $df
	rra                                              ; $5684: $1f
	sub l                                            ; $5685: $95
	ld c, $c4                                        ; $5686: $0e $c4
	db $e4                                           ; $5688: $e4
	and h                                            ; $5689: $a4
	db $e4                                           ; $568a: $e4
	db $e4                                           ; $568b: $e4
	ldh a, [$c2]                                     ; $568c: $f0 $c2
	jr nc, @+$3d                                     ; $568e: $30 $3b

	db $dd                                           ; $5690: $dd
	jr jr_03f_570d                                   ; $5691: $18 $7a

	ld c, $df                                        ; $5693: $0e $df
	inc bc                                           ; $5695: $03
	ld a, [hl]                                       ; $5696: $7e
	cp [hl]                                          ; $5697: $be
	sbc d                                            ; $5698: $9a
	ld [bc], a                                       ; $5699: $02
	nop                                              ; $569a: $00
	ld bc, $fcdc                                     ; $569b: $01 $dc $fc
	db $db                                           ; $569e: $db
	inc c                                            ; $569f: $0c
	ld a, h                                          ; $56a0: $7c
	push af                                          ; $56a1: $f5

jr_03f_56a2:
	sbc e                                            ; $56a2: $9b
	push de                                          ; $56a3: $d5
	xor d                                            ; $56a4: $aa
	ld e, a                                          ; $56a5: $5f
	xor a                                            ; $56a6: $af
	ld a, e                                          ; $56a7: $7b
	ld h, e                                          ; $56a8: $63
	ld a, [$ffd9]                                    ; $56a9: $fa $d9 $ff
	db $dd                                           ; $56ac: $dd
	ldh a, [$d5]                                     ; $56ad: $f0 $d5
	rrca                                             ; $56af: $0f
	ld h, a                                          ; $56b0: $67
	db $e4                                           ; $56b1: $e4
	ld d, a                                          ; $56b2: $57
	add sp, -$27                                     ; $56b3: $e8 $d9
	ldh a, [$57]                                     ; $56b5: $f0 $57
	db $f4                                           ; $56b7: $f4
	ld d, a                                          ; $56b8: $57
	ret c                                            ; $56b9: $d8

	db $dd                                           ; $56ba: $dd
	ldh a, [$d9]                                     ; $56bb: $f0 $d9
	rst $38                                          ; $56bd: $ff
	ld sp, hl                                        ; $56be: $f9
	rst SubAFromDE                                          ; $56bf: $df
	ld hl, sp-$25                                    ; $56c0: $f8 $db
	db $fc                                           ; $56c2: $fc
	ld a, e                                          ; $56c3: $7b
	jr c, jr_03f_56a2                                ; $56c4: $38 $dc

	inc bc                                           ; $56c6: $03
	sbc h                                            ; $56c7: $9c
	ld e, $1f                                        ; $56c8: $1e $1f
	ld e, $78                                        ; $56ca: $1e $78
	ld sp, hl                                        ; $56cc: $f9
	ld a, [hl]                                       ; $56cd: $7e
	or $9b                                           ; $56ce: $f6 $9b
	ei                                               ; $56d0: $fb
	ld sp, hl                                        ; $56d1: $f9
	db $fd                                           ; $56d2: $fd
	db $fd                                           ; $56d3: $fd
	sbc $fe                                          ; $56d4: $de $fe
	ld a, c                                          ; $56d6: $79
	xor l                                            ; $56d7: $ad
	sbc c                                            ; $56d8: $99
	cp a                                             ; $56d9: $bf
	ld a, a                                          ; $56da: $7f
	cp a                                             ; $56db: $bf
	ld e, a                                          ; $56dc: $5f
	cp a                                             ; $56dd: $bf
	sbc a                                            ; $56de: $9f
	ld l, c                                          ; $56df: $69
	and b                                            ; $56e0: $a0
	sbc [hl]                                         ; $56e1: $9e
	ld a, a                                          ; $56e2: $7f
	ld a, e                                          ; $56e3: $7b
	pop de                                           ; $56e4: $d1
	sbc b                                            ; $56e5: $98
	or $fa                                           ; $56e6: $f6 $fa
	rst FarCall                                          ; $56e8: $f7
	ei                                               ; $56e9: $fb
	db $fd                                           ; $56ea: $fd
	db $fc                                           ; $56eb: $fc
	db $fc                                           ; $56ec: $fc
	ld [hl], a                                       ; $56ed: $77
	db $e3                                           ; $56ee: $e3
	rst SubAFromDE                                          ; $56ef: $df
	rst $38                                          ; $56f0: $ff
	sub l                                            ; $56f1: $95
	ld [hl], c                                       ; $56f2: $71
	ld [hl], d                                       ; $56f3: $72
	ld [bc], a                                       ; $56f4: $02
	ld bc, $406a                                     ; $56f5: $01 $6a $40
	jr nz, @-$4e                                     ; $56f8: $20 $b0

	jp Jump_03f_7a61                                 ; $56fa: $c3 $61 $7a


	inc sp                                           ; $56fd: $33
	sub h                                            ; $56fe: $94
	jr nz, jr_03f_5731                               ; $56ff: $20 $30

	or b                                             ; $5701: $b0
	ld d, l                                          ; $5702: $55
	xor a                                            ; $5703: $af
	ld d, b                                          ; $5704: $50
	add e                                            ; $5705: $83
	jp $2181                                         ; $5706: $c3 $81 $21


	ld h, b                                          ; $5709: $60
	ld a, e                                          ; $570a: $7b
	ret nz                                           ; $570b: $c0

	sub d                                            ; $570c: $92

jr_03f_570d:
	db $fc                                           ; $570d: $fc
	ld a, h                                          ; $570e: $7c
	ld a, [hl]                                       ; $570f: $7e
	ld a, [hl]                                       ; $5710: $7e
	ccf                                              ; $5711: $3f
	db $f4                                           ; $5712: $f4
	db $fc                                           ; $5713: $fc
	db $fc                                           ; $5714: $fc
	ld a, [$cfe2]                                    ; $5715: $fa $e2 $cf
	ccf                                              ; $5718: $3f
	cp a                                             ; $5719: $bf
	sbc $f8                                          ; $571a: $de $f8
	rst SubAFromDE                                          ; $571c: $df
	db $fc                                           ; $571d: $fc
	sub h                                            ; $571e: $94
	nop                                              ; $571f: $00
	ld a, [hl]                                       ; $5720: $7e

jr_03f_5721:
	ld a, [hl]                                       ; $5721: $7e
	ld e, h                                          ; $5722: $5c
	jr z, jr_03f_5741                                ; $5723: $28 $1c

	jr z, jr_03f_573b                                ; $5725: $28 $14

	inc l                                            ; $5727: $2c
	inc d                                            ; $5728: $14
	xor d                                            ; $5729: $aa
	ld [hl], d                                       ; $572a: $72
	jp nz, $027f                                     ; $572b: $c2 $7f $02

	ld sp, hl                                        ; $572e: $f9
	sbc c                                            ; $572f: $99
	xor d                                            ; $5730: $aa

jr_03f_5731:
	inc c                                            ; $5731: $0c
	rlca                                             ; $5732: $07
	add hl, bc                                       ; $5733: $09
	ei                                               ; $5734: $fb
	add c                                            ; $5735: $81
	ld l, d                                          ; $5736: $6a
	ld e, $77                                        ; $5737: $1e $77
	ldh a, [$98]                                     ; $5739: $f0 $98

jr_03f_573b:
	cp $38                                           ; $573b: $fe $38
	jr nc, jr_03f_5721                               ; $573d: $30 $e2

Jump_03f_573f:
	ld [bc], a                                       ; $573f: $02
	nop                                              ; $5740: $00

jr_03f_5741:
	rst $38                                          ; $5741: $ff
	ld a, d                                          ; $5742: $7a
	ld e, c                                          ; $5743: $59
	ld a, h                                          ; $5744: $7c
	and d                                            ; $5745: $a2
	ld a, c                                          ; $5746: $79
	ld de, $aa98                                     ; $5747: $11 $98 $aa
	jr nc, jr_03f_575c                               ; $574a: $30 $10

	db $10                                           ; $574c: $10
	ld de, $1c13                                     ; $574d: $11 $13 $1c
	ld e, a                                          ; $5750: $5f
	ldh [$98], a                                     ; $5751: $e0 $98
	ldh [c], a                                       ; $5753: $e2
	ldh [$e0], a                                     ; $5754: $e0 $e0
	ret c                                            ; $5756: $d8

	add b                                            ; $5757: $80
	ld b, b                                          ; $5758: $40
	rst $38                                          ; $5759: $ff
	ld a, c                                          ; $575a: $79
	ret nz                                           ; $575b: $c0

jr_03f_575c:
	ld a, e                                          ; $575c: $7b
	adc b                                            ; $575d: $88
	sbc [hl]                                         ; $575e: $9e
	db $10                                           ; $575f: $10
	ld a, e                                          ; $5760: $7b
	ret nz                                           ; $5761: $c0

	db $dd                                           ; $5762: $dd
	inc c                                            ; $5763: $0c
	sbc l                                            ; $5764: $9d
	inc l                                            ; $5765: $2c
	db $fc                                           ; $5766: $fc
	ld l, [hl]                                       ; $5767: $6e
	inc e                                            ; $5768: $1c
	cp $56                                           ; $5769: $fe $56
	db $ec                                           ; $576b: $ec
	ld d, a                                          ; $576c: $57
	inc c                                            ; $576d: $0c
	ld h, [hl]                                       ; $576e: $66
	ldh [rAUDENA], a                                 ; $576f: $e0 $26
	xor b                                            ; $5771: $a8
	ld h, a                                          ; $5772: $67
	ret nc                                           ; $5773: $d0

	pop de                                           ; $5774: $d1
	rrca                                             ; $5775: $0f
	ld b, a                                          ; $5776: $47
	ret z                                            ; $5777: $c8

	ld sp, hl                                        ; $5778: $f9
	ld a, [hl]                                       ; $5779: $7e
	ld sp, hl                                        ; $577a: $f9
	ld a, d                                          ; $577b: $7a
	or $96                                           ; $577c: $f6 $96
	db $fd                                           ; $577e: $fd
	rst $38                                          ; $577f: $ff
	rst $38                                          ; $5780: $ff
	inc bc                                           ; $5781: $03
	ld bc, $0303                                     ; $5782: $01 $03 $03
	ld bc, $7802                                     ; $5785: $01 $02 $78
	set 3, [hl]                                      ; $5788: $cb $de
	inc bc                                           ; $578a: $03
	db $dd                                           ; $578b: $dd
	ld bc, $ffd9                                     ; $578c: $01 $d9 $ff
	add [hl]                                         ; $578f: $86
	xor a                                            ; $5790: $af
	rla                                              ; $5791: $17
	xor e                                            ; $5792: $ab
	xor a                                            ; $5793: $af
	push af                                          ; $5794: $f5

jr_03f_5795:
	ldh [$c0], a                                     ; $5795: $e0 $c0
	ldh a, [$7f]                                     ; $5797: $f0 $7f
	cp a                                             ; $5799: $bf
	sbc a                                            ; $579a: $9f
	rst SubAFromDE                                          ; $579b: $df
	adc $c0                                          ; $579c: $ce $c0
	ldh [$e8], a                                     ; $579e: $e0 $e8
	ei                                               ; $57a0: $fb
	push af                                          ; $57a1: $f5
	cp $c8                                           ; $57a2: $fe $c8
	add b                                            ; $57a4: $80
	ld [$08c8], sp                                   ; $57a5: $08 $c8 $08
	db $fc                                           ; $57a8: $fc
	ld a, e                                          ; $57a9: $7b
	add l                                            ; $57aa: $85
	cp $9c                                           ; $57ab: $fe $9c
	inc c                                            ; $57ad: $0c
	cp e                                             ; $57ae: $bb
	cp e                                             ; $57af: $bb
	cp $80                                           ; $57b0: $fe $80
	ld b, e                                          ; $57b2: $43
	db $e3                                           ; $57b3: $e3
	ld hl, $dc9f                                     ; $57b4: $21 $9f $dc
	add b                                            ; $57b7: $80
	nop                                              ; $57b8: $00
	nop                                              ; $57b9: $00
	ld [bc], a                                       ; $57ba: $02
	ld b, b                                          ; $57bb: $40
	ld b, b                                          ; $57bc: $40
	nop                                              ; $57bd: $00
	jr nc, jr_03f_57c8                               ; $57be: $30 $08

	nop                                              ; $57c0: $00
	jr nz, jr_03f_582f                               ; $57c1: $20 $6c

	ld b, $26                                        ; $57c3: $06 $26
	ccf                                              ; $57c5: $3f
	rra                                              ; $57c6: $1f
	rra                                              ; $57c7: $1f

jr_03f_57c8:
	rrca                                             ; $57c8: $0f
	ld c, a                                          ; $57c9: $4f
	rlca                                             ; $57ca: $07
	inc bc                                           ; $57cb: $03
	dec de                                           ; $57cc: $1b
	cp a                                             ; $57cd: $bf
	cp a                                             ; $57ce: $bf
	ld a, a                                          ; $57cf: $7f
	ld d, e                                          ; $57d0: $53
	add b                                            ; $57d1: $80
	inc hl                                           ; $57d2: $23
	ld e, $39                                        ; $57d3: $1e $39
	ld [bc], a                                       ; $57d5: $02
	ld a, a                                          ; $57d6: $7f
	ld a, a                                          ; $57d7: $7f
	cp a                                             ; $57d8: $bf
	cp h                                             ; $57d9: $bc
	ret nz                                           ; $57da: $c0

	pop hl                                           ; $57db: $e1
	ldh [$fc], a                                     ; $57dc: $e0 $fc
	add b                                            ; $57de: $80
	ret nz                                           ; $57df: $c0

jr_03f_57e0:
	ld b, b                                          ; $57e0: $40
	ret nz                                           ; $57e1: $c0

	ldh [$bd], a                                     ; $57e2: $e0 $bd
	ld [$00bc], a                                    ; $57e4: $ea $bc $00
	nop                                              ; $57e7: $00
	add b                                            ; $57e8: $80
	nop                                              ; $57e9: $00
	rra                                              ; $57ea: $1f
	jp Jump_03f_7efd                                 ; $57eb: $c3 $fd $7e


	ld d, l                                          ; $57ee: $55
	ld a, [hl+]                                      ; $57ef: $2a
	dec b                                            ; $57f0: $05
	halt                                             ; $57f1: $76
	rra                                              ; $57f2: $1f
	ld a, l                                          ; $57f3: $7d
	ld e, h                                          ; $57f4: $5c
	ld l, [hl]                                       ; $57f5: $6e
	jr jr_03f_5795                                   ; $57f6: $18 $9d

	rra                                              ; $57f8: $1f
	ld d, l                                          ; $57f9: $55
	ld [hl], h                                       ; $57fa: $74
	add a                                            ; $57fb: $87
	ld l, e                                          ; $57fc: $6b
	ld h, c                                          ; $57fd: $61
	db $dd                                           ; $57fe: $dd
	rst $38                                          ; $57ff: $ff
	rlca                                             ; $5800: $07
	ldh a, [$9c]                                     ; $5801: $f0 $9c
	ld d, h                                          ; $5803: $54
	xor b                                            ; $5804: $a8
	ld d, b                                          ; $5805: $50
	ld d, e                                          ; $5806: $53
	ldh a, [$d5]                                     ; $5807: $f0 $d5
	rrca                                             ; $5809: $0f
	ld h, a                                          ; $580a: $67
	jr jr_03f_5874                                   ; $580b: $18 $67

	add sp, $36                                      ; $580d: $e8 $36
	call nz, $9845                                   ; $580f: $c4 $45 $98
	ld d, l                                          ; $5812: $55
	add h                                            ; $5813: $84
	ld d, a                                          ; $5814: $57
	ret nz                                           ; $5815: $c0

	ld h, a                                          ; $5816: $67
	ret nc                                           ; $5817: $d0

	ld [hl], e                                       ; $5818: $73
	call c, $fbdf                                    ; $5819: $dc $df $fb
	ld l, [hl]                                       ; $581c: $6e
	ld [hl], h                                       ; $581d: $74
	rst SubAFromDE                                          ; $581e: $df
	db $fc                                           ; $581f: $fc
	sbc [hl]                                         ; $5820: $9e
	ld hl, sp+$46                                    ; $5821: $f8 $46
	or b                                             ; $5823: $b0
	call c, Call_03f_7f80                            ; $5824: $dc $80 $7f
	ld e, $9e                                        ; $5827: $1e $9e
	ret nz                                           ; $5829: $c0

	call c, Call_03f_7e7f                            ; $582a: $dc $7f $7e
	ei                                               ; $582d: $fb
	add b                                            ; $582e: $80

jr_03f_582f:
	ccf                                              ; $582f: $3f
	db $ec                                           ; $5830: $ec
	call nz, $115c                                   ; $5831: $c4 $5c $11
	dec de                                           ; $5834: $1b
	dec bc                                           ; $5835: $0b
	dec b                                            ; $5836: $05
	nop                                              ; $5837: $00
	pop af                                           ; $5838: $f1
	ldh a, [$f0]                                     ; $5839: $f0 $f0
	ld a, [$fcf9]                                    ; $583b: $fa $f9 $fc
	cp $ff                                           ; $583e: $fe $ff
	adc h                                            ; $5840: $8c
	add c                                            ; $5841: $81
	rrca                                             ; $5842: $0f
	db $fd                                           ; $5843: $fd
	ret z                                            ; $5844: $c8

	add b                                            ; $5845: $80
	cp c                                             ; $5846: $b9
	dec e                                            ; $5847: $1d
	add b                                            ; $5848: $80
	nop                                              ; $5849: $00
	ld bc, $f0fe                                     ; $584a: $01 $fe $f0
	nop                                              ; $584d: $00
	sub d                                            ; $584e: $92
	db $10                                           ; $584f: $10
	cp $0a                                           ; $5850: $fe $0a
	pop af                                           ; $5852: $f1
	jr nc, jr_03f_5855                               ; $5853: $30 $00

jr_03f_5855:
	inc b                                            ; $5855: $04
	ld c, b                                          ; $5856: $48
	cp h                                             ; $5857: $bc
	dec l                                            ; $5858: $2d
	dec b                                            ; $5859: $05
	adc $c0                                          ; $585a: $ce $c0
	db $fc                                           ; $585c: $fc
	sub a                                            ; $585d: $97
	jr nc, jr_03f_57e0                               ; $585e: $30 $80

	inc d                                            ; $5860: $14
	nop                                              ; $5861: $00
	ld bc, $ee4f                                     ; $5862: $01 $4f $ee
	cpl                                              ; $5865: $2f
	ld l, a                                          ; $5866: $6f
	ldh a, [c]                                       ; $5867: $f2
	add b                                            ; $5868: $80
	ld de, $80f7                                     ; $5869: $11 $f7 $80
	jr nc, jr_03f_5872                               ; $586c: $30 $04

	add l                                            ; $586e: $85
	ret c                                            ; $586f: $d8

	or $b0                                           ; $5870: $f6 $b0

jr_03f_5872:
	add $7f                                          ; $5872: $c6 $7f

jr_03f_5874:
	rrca                                             ; $5874: $0f
	inc bc                                           ; $5875: $03
	nop                                              ; $5876: $00
	inc a                                            ; $5877: $3c
	ld h, c                                          ; $5878: $61
	rst GetHLinHL                                          ; $5879: $cf
	ld hl, sp-$6d                                    ; $587a: $f8 $93
	nop                                              ; $587c: $00
	dec c                                            ; $587d: $0d
	sub a                                            ; $587e: $97
	and a                                            ; $587f: $a7
	daa                                              ; $5880: $27
	ldh [c], a                                       ; $5881: $e2
	rst SubAFromBC                                          ; $5882: $e7
	inc c                                            ; $5883: $0c
	jp Jump_03f_78f2                                 ; $5884: $c3 $f2 $78


	ld a, b                                          ; $5887: $78
	adc l                                            ; $5888: $8d
	ld hl, sp+$3d                                    ; $5889: $f8 $3d
	ccf                                              ; $588b: $3f
	jr nc, jr_03f_588e                               ; $588c: $30 $00

jr_03f_588e:
	ld d, b                                          ; $588e: $50
	cpl                                              ; $588f: $2f
	ld c, a                                          ; $5890: $4f
	rrca                                             ; $5891: $0f
	sub $a8                                          ; $5892: $d6 $a8
	ret nz                                           ; $5894: $c0

	ldh [$a0], a                                     ; $5895: $e0 $a0
	ret nc                                           ; $5897: $d0

	or b                                             ; $5898: $b0
	ldh a, [$fd]                                     ; $5899: $f0 $fd
	ld [hl], a                                       ; $589b: $77
	ld a, b                                          ; $589c: $78
	sbc e                                            ; $589d: $9b
	or $ca                                           ; $589e: $f6 $ca
	or a                                             ; $58a0: $b7
	sbc b                                            ; $58a1: $98
	ld [hl], d                                       ; $58a2: $72
	or b                                             ; $58a3: $b0
	sbc h                                            ; $58a4: $9c
	ld b, $0e                                        ; $58a5: $06 $0e
	ld a, a                                          ; $58a7: $7f
	ld l, e                                          ; $58a8: $6b
	ld l, b                                          ; $58a9: $68
	ld a, a                                          ; $58aa: $7f
	ld l, [hl]                                       ; $58ab: $6e
	ld h, a                                          ; $58ac: $67
	ld h, c                                          ; $58ad: $61
	ldh [$dd], a                                     ; $58ae: $e0 $dd
	ld h, $b8                                        ; $58b0: $26 $b8
	ld d, [hl]                                       ; $58b2: $56
	cp h                                             ; $58b3: $bc
	ld h, h                                          ; $58b4: $64
	inc a                                            ; $58b5: $3c
	ld h, l                                          ; $58b6: $65
	ld l, h                                          ; $58b7: $6c
	ld b, a                                          ; $58b8: $47
	add sp, $46                                      ; $58b9: $e8 $46
	and h                                            ; $58bb: $a4
	ld h, a                                          ; $58bc: $67
	call nz, $f897                                   ; $58bd: $c4 $97 $f8
	di                                               ; $58c0: $f3
	di                                               ; $58c1: $f3
	db $eb                                           ; $58c2: $eb
	ld b, e                                          ; $58c3: $43
	add a                                            ; $58c4: $87
	sbc c                                            ; $58c5: $99
	add c                                            ; $58c6: $81
	sbc $ff                                          ; $58c7: $de $ff
	adc l                                            ; $58c9: $8d
	rst FarCall                                          ; $58ca: $f7
	rst $38                                          ; $58cb: $ff
	rst AddAOntoHL                                          ; $58cc: $ef
	rst SubAFromBC                                          ; $58cd: $e7
	rst $38                                          ; $58ce: $ff
	rst $38                                          ; $58cf: $ff
	cp a                                             ; $58d0: $bf
	rst $38                                          ; $58d1: $ff
	sbc $e0                                          ; $58d2: $de $e0
	ld a, [$f8fe]                                    ; $58d4: $fa $fe $f8
	nop                                              ; $58d7: $00
	ret nz                                           ; $58d8: $c0

	ret nz                                           ; $58d9: $c0

	pop hl                                           ; $58da: $e1
	rst $38                                          ; $58db: $ff
	sbc $fc                                          ; $58dc: $de $fc
	ld a, a                                          ; $58de: $7f
	rst SubAFromDE                                          ; $58df: $df
	ld a, a                                          ; $58e0: $7f
	pop de                                           ; $58e1: $d1
	sub e                                            ; $58e2: $93
	inc l                                            ; $58e3: $2c
	ld [hl], $1b                                     ; $58e4: $36 $1b
	cp h                                             ; $58e6: $bc
	rrca                                             ; $58e7: $0f
	rlca                                             ; $58e8: $07
	rrca                                             ; $58e9: $0f
	rst $38                                          ; $58ea: $ff
	db $d3                                           ; $58eb: $d3
	add hl, bc                                       ; $58ec: $09
	ld a, h                                          ; $58ed: $7c
	ld a, a                                          ; $58ee: $7f
	ei                                               ; $58ef: $fb
	sbc l                                            ; $58f0: $9d
	ld hl, sp+$02                                    ; $58f1: $f8 $02
	db $db                                           ; $58f3: $db
	rst $38                                          ; $58f4: $ff
	sbc e                                            ; $58f5: $9b
	rlca                                             ; $58f6: $07
	db $fd                                           ; $58f7: $fd
	dec bc                                           ; $58f8: $0b
	ld b, $5f                                        ; $58f9: $06 $5f
	ld e, h                                          ; $58fb: $5c
	db $dd                                           ; $58fc: $dd
	rst $38                                          ; $58fd: $ff
	sub d                                            ; $58fe: $92
	reti                                             ; $58ff: $d9


	ld l, a                                          ; $5900: $6f
	dec c                                            ; $5901: $0d
	inc e                                            ; $5902: $1c
	ld a, [hl+]                                      ; $5903: $2a
	ld d, d                                          ; $5904: $52
	xor e                                            ; $5905: $ab
	ld d, a                                          ; $5906: $57
	add a                                            ; $5907: $87
	cp $f0                                           ; $5908: $fe $f0
	di                                               ; $590a: $f3
	rst $38                                          ; $590b: $ff
	ld a, b                                          ; $590c: $78
	dec l                                            ; $590d: $2d
	add h                                            ; $590e: $84
	cp $24                                           ; $590f: $fe $24
	ld [bc], a                                       ; $5911: $02
	ld de, $39ce                                     ; $5912: $11 $ce $39
	rst SubAFromBC                                          ; $5915: $e7
	sbc [hl]                                         ; $5916: $9e
	rst $38                                          ; $5917: $ff
	dec de                                           ; $5918: $1b
	db $fc                                           ; $5919: $fc
	ldh [rTAC], a                                    ; $591a: $e0 $07
	ccf                                              ; $591c: $3f
	rst $38                                          ; $591d: $ff
	rst $38                                          ; $591e: $ff
	sub e                                            ; $591f: $93
	adc [hl]                                         ; $5920: $8e
	ld [hl], l                                       ; $5921: $75
	rst GetHLinHL                                          ; $5922: $cf
	dec a                                            ; $5923: $3d
	ld [$a9d5], a                                    ; $5924: $ea $d5 $a9
	ld h, c                                          ; $5927: $61
	rlca                                             ; $5928: $07

jr_03f_5929:
	dec sp                                           ; $5929: $3b
	db $dd                                           ; $592a: $dd
	rst $38                                          ; $592b: $ff
	add e                                            ; $592c: $83
	cp $85                                           ; $592d: $fe $85
	ld a, [$afd5]                                    ; $592f: $fa $d5 $af
	ld d, a                                          ; $5932: $57
	sbc a                                            ; $5933: $9f
	ld l, h                                          ; $5934: $6c
	or c                                             ; $5935: $b1
	rst $38                                          ; $5936: $ff
	ld a, a                                          ; $5937: $7f
	rst $38                                          ; $5938: $ff
	db $fc                                           ; $5939: $fc
	ld sp, hl                                        ; $593a: $f9
	rst SubAFromBC                                          ; $593b: $e7
	sbc a                                            ; $593c: $9f
	ld a, a                                          ; $593d: $7f
	ld e, l                                          ; $593e: $5d
	or [hl]                                          ; $593f: $b6
	cp b                                             ; $5940: $b8
	di                                               ; $5941: $f3
	add [hl]                                         ; $5942: $86
	dec de                                           ; $5943: $1b
	ld l, a                                          ; $5944: $6f
	rst SubAFromDE                                          ; $5945: $df
	di                                               ; $5946: $f3
	rst GetHLinHL                                          ; $5947: $cf
	rra                                              ; $5948: $1f
	ld a, e                                          ; $5949: $7b
	xor $99                                          ; $594a: $ee $99
	ldh a, [$e0]                                     ; $594c: $f0 $e0
	adc h                                            ; $594e: $8c
	jr nc, jr_03f_5929                               ; $594f: $30 $d8

	ld hl, sp+$77                                    ; $5951: $f8 $77
	cp $7b                                           ; $5953: $fe $7b
	ld h, c                                          ; $5955: $61
	sbc [hl]                                         ; $5956: $9e
	or a                                             ; $5957: $b7
	db $dd                                           ; $5958: $dd
	scf                                              ; $5959: $37
	sbc e                                            ; $595a: $9b
	ld h, b                                          ; $595b: $60
	db $10                                           ; $595c: $10
	ld [$fd04], sp                                   ; $595d: $08 $04 $fd
	ld a, [hl]                                       ; $5960: $7e
	and b                                            ; $5961: $a0
	ld a, a                                          ; $5962: $7f
	ld h, [hl]                                       ; $5963: $66
	ld a, a                                          ; $5964: $7f
	and d                                            ; $5965: $a2
	ld l, d                                          ; $5966: $6a
	jr @+$7e                                         ; $5967: $18 $7c

	ld b, a                                          ; $5969: $47
	sbc [hl]                                         ; $596a: $9e
	jr nz, jr_03f_59b7                               ; $596b: $20 $4a

	xor b                                            ; $596d: $a8
	db $f4                                           ; $596e: $f4
	ld b, [hl]                                       ; $596f: $46
	call nz, $e856                                   ; $5970: $c4 $56 $e8
	ld d, [hl]                                       ; $5973: $56
	ret z                                            ; $5974: $c8

	ld d, l                                          ; $5975: $55
	sub b                                            ; $5976: $90
	dec [hl]                                         ; $5977: $35
	ld e, h                                          ; $5978: $5c
	ld h, [hl]                                       ; $5979: $66
	cp b                                             ; $597a: $b8
	ld d, l                                          ; $597b: $55
	ld l, h                                          ; $597c: $6c
	sub d                                            ; $597d: $92
	and e                                            ; $597e: $a3
	db $d3                                           ; $597f: $d3
	and a                                            ; $5980: $a7
	rst SubAFromDE                                          ; $5981: $df
	cp a                                             ; $5982: $bf
	sbc a                                            ; $5983: $9f
	sbc a                                            ; $5984: $9f
	cp a                                             ; $5985: $bf
	rst SubAFromDE                                          ; $5986: $df
	xor a                                            ; $5987: $af
	rst SubAFromDE                                          ; $5988: $df
	cp a                                             ; $5989: $bf
	rst SubAFromDE                                          ; $598a: $df
	ld [hl], l                                       ; $598b: $75
	ld l, h                                          ; $598c: $6c
	rst SubAFromDE                                          ; $598d: $df
	ldh [hDisp1_WY], a                                     ; $598e: $e0 $95
	rst AddAOntoHL                                          ; $5990: $ef
	push af                                          ; $5991: $f5
	ld [$e9eb], a                                    ; $5992: $ea $eb $e9
	ld hl, sp-$20                                    ; $5995: $f8 $e0
	ldh [$f8], a                                     ; $5997: $e0 $f8
	rst AddAOntoHL                                          ; $5999: $ef
	sbc $f7                                          ; $599a: $de $f7
	sub e                                            ; $599c: $93
	rst SubAFromHL                                          ; $599d: $d7
	db $eb                                           ; $599e: $eb
	ld [hl], b                                       ; $599f: $70
	add c                                            ; $59a0: $81
	ld a, a                                          ; $59a1: $7f
	add a                                            ; $59a2: $87
	set 0, a                                         ; $59a3: $cb $c7
	ccf                                              ; $59a5: $3f
	ccf                                              ; $59a6: $3f
	rrca                                             ; $59a7: $0f
	ld a, a                                          ; $59a8: $7f
	ld a, d                                          ; $59a9: $7a
	and e                                            ; $59aa: $a3
	sbc c                                            ; $59ab: $99
	cp a                                             ; $59ac: $bf
	cp $55                                           ; $59ad: $fe $55
	cp a                                             ; $59af: $bf
	db $fc                                           ; $59b0: $fc
	rst $38                                          ; $59b1: $ff
	ld [hl], b                                       ; $59b2: $70
	db $dd                                           ; $59b3: $dd
	sub d                                            ; $59b4: $92
	ret nz                                           ; $59b5: $c0

	rst $38                                          ; $59b6: $ff

jr_03f_59b7:
	rst $38                                          ; $59b7: $ff
	adc a                                            ; $59b8: $8f
	nop                                              ; $59b9: $00
	nop                                              ; $59ba: $00
	xor d                                            ; $59bb: $aa
	rst $38                                          ; $59bc: $ff
	sub l                                            ; $59bd: $95
	ld l, a                                          ; $59be: $6f
	ld hl, sp-$01                                    ; $59bf: $f8 $ff
	ld h, d                                          ; $59c1: $62
	ld a, d                                          ; $59c2: $7a
	or b                                             ; $59c3: $b0
	sbc l                                            ; $59c4: $9d
	ld a, a                                          ; $59c5: $7f
	add b                                            ; $59c6: $80
	ld a, b                                          ; $59c7: $78
	sub c                                            ; $59c8: $91
	sub [hl]                                         ; $59c9: $96
	ld bc, $d528                                     ; $59ca: $01 $28 $d5
	rst $38                                          ; $59cd: $ff
	jp z, $fa79                                      ; $59ce: $ca $79 $fa

	rst $38                                          ; $59d1: $ff
	rra                                              ; $59d2: $1f
	sbc $ff                                          ; $59d3: $de $ff
	sbc [hl]                                         ; $59d5: $9e
	ccf                                              ; $59d6: $3f
	ld a, e                                          ; $59d7: $7b
	rst AddAOntoHL                                          ; $59d8: $ef
	sub a                                            ; $59d9: $97
	rst $38                                          ; $59da: $ff
	ld a, l                                          ; $59db: $7d
	ld [$aa55], a                                    ; $59dc: $ea $55 $aa
	cp $25                                           ; $59df: $fe $25
	and $78                                          ; $59e1: $e6 $78
	ld hl, $ffdf                                     ; $59e3: $21 $df $ff
	sub b                                            ; $59e6: $90
	ld bc, $ffc3                                     ; $59e7: $01 $c3 $ff
	rst $38                                          ; $59ea: $ff
	ld d, a                                          ; $59eb: $57
	cp e                                             ; $59ec: $bb
	rst AddAOntoHL                                          ; $59ed: $ef
	cp b                                             ; $59ee: $b8
	pop hl                                           ; $59ef: $e1
	add [hl]                                         ; $59f0: $86
	dec e                                            ; $59f1: $1d
	ld a, b                                          ; $59f2: $78

jr_03f_59f3:
	ld sp, hl                                        ; $59f3: $f9
	rst SubAFromBC                                          ; $59f4: $e7
	sbc [hl]                                         ; $59f5: $9e
	ld a, e                                          ; $59f6: $7b
	or b                                             ; $59f7: $b0
	add b                                            ; $59f8: $80
	cp $f7                                           ; $59f9: $fe $f7
	jp $358d                                         ; $59fb: $c3 $8d $35


	ld [hl], c                                       ; $59fe: $71
	or b                                             ; $59ff: $b0
	ld b, b                                          ; $5a00: $40
	pop af                                           ; $5a01: $f1
	halt                                             ; $5a02: $76
	rst $38                                          ; $5a03: $ff
	cp $fa                                           ; $5a04: $fe $fa
	xor $cf                                          ; $5a06: $ee $cf
	cp a                                             ; $5a08: $bf
	ld c, $89                                        ; $5a09: $0e $89
	ld l, a                                          ; $5a0b: $6f
	xor a                                            ; $5a0c: $af
	xor a                                            ; $5a0d: $af
	sbc [hl]                                         ; $5a0e: $9e
	sbc h                                            ; $5a0f: $9c
	or d                                             ; $5a10: $b2
	add h                                            ; $5a11: $84
	pop de                                           ; $5a12: $d1
	sub b                                            ; $5a13: $90
	ld d, b                                          ; $5a14: $50
	ld d, b                                          ; $5a15: $50
	ld h, c                                          ; $5a16: $61
	ld h, e                                          ; $5a17: $63
	adc h                                            ; $5a18: $8c
	ld c, l                                          ; $5a19: $4d
	ld a, e                                          ; $5a1a: $7b
	xor $d8                                          ; $5a1b: $ee $d8
	ld hl, sp-$68                                    ; $5a1d: $f8 $98
	ld a, b                                          ; $5a1f: $78
	sbc b                                            ; $5a20: $98
	jr nc, jr_03f_59f3                               ; $5a21: $30 $d0

jr_03f_5a23:
	ldh a, [$37]                                     ; $5a23: $f0 $37
	scf                                              ; $5a25: $37
	ld [hl], a                                       ; $5a26: $77
	or a                                             ; $5a27: $b7
	ld [hl], a                                       ; $5a28: $77
	rst $38                                          ; $5a29: $ff
	ccf                                              ; $5a2a: $3f
	ccf                                              ; $5a2b: $3f
	ld d, a                                          ; $5a2c: $57
	inc d                                            ; $5a2d: $14
	db $dd                                           ; $5a2e: $dd
	rst $38                                          ; $5a2f: $ff
	ld a, d                                          ; $5a30: $7a
	or c                                             ; $5a31: $b1
	sbc l                                            ; $5a32: $9d
	ld [bc], a                                       ; $5a33: $02
	ld bc, $7afe                                     ; $5a34: $01 $fe $7a
	or c                                             ; $5a37: $b1
	ld a, b                                          ; $5a38: $78
	ldh a, [c]                                       ; $5a39: $f2
	ld [hl], a                                       ; $5a3a: $77
	inc e                                            ; $5a3b: $1c
	sbc $01                                          ; $5a3c: $de $01
	ld e, d                                          ; $5a3e: $5a
	or b                                             ; $5a3f: $b0
	ld h, h                                          ; $5a40: $64
	sbc b                                            ; $5a41: $98
	ld h, [hl]                                       ; $5a42: $66
	db $fc                                           ; $5a43: $fc
	ld b, l                                          ; $5a44: $45
	xor b                                            ; $5a45: $a8
	ld b, l                                          ; $5a46: $45
	ld [hl], h                                       ; $5a47: $74
	ld b, l                                          ; $5a48: $45
	ld d, b                                          ; $5a49: $50
	ld b, l                                          ; $5a4a: $45
	sub b                                            ; $5a4b: $90
	ld d, h                                          ; $5a4c: $54
	ld h, h                                          ; $5a4d: $64
	db $dd                                           ; $5a4e: $dd
	rrca                                             ; $5a4f: $0f
	rst SubAFromDE                                          ; $5a50: $df
	cp a                                             ; $5a51: $bf
	ld a, a                                          ; $5a52: $7f
	ld l, e                                          ; $5a53: $6b
	sbc l                                            ; $5a54: $9d
	ld c, a                                          ; $5a55: $4f
	cp $7b                                           ; $5a56: $fe $7b
	dec [hl]                                         ; $5a58: $35
	ld [hl], a                                       ; $5a59: $77
	rrca                                             ; $5a5a: $0f
	ld a, a                                          ; $5a5b: $7f
	add a                                            ; $5a5c: $87
	sub a                                            ; $5a5d: $97
	nop                                              ; $5a5e: $00
	jp hl                                            ; $5a5f: $e9


	rst $38                                          ; $5a60: $ff
	db $ec                                           ; $5a61: $ec
	db $e3                                           ; $5a62: $e3
	xor $07                                          ; $5a63: $ee $07
	cp b                                             ; $5a65: $b8
	ld a, c                                          ; $5a66: $79
	ld [hl], e                                       ; $5a67: $73
	sub d                                            ; $5a68: $92
	db $e3                                           ; $5a69: $e3
	ldh [$f1], a                                     ; $5a6a: $e0 $f1
	rst $38                                          ; $5a6c: $ff
	ld b, a                                          ; $5a6d: $47
	nop                                              ; $5a6e: $00
	res 2, a                                         ; $5a6f: $cb $97
	dec hl                                           ; $5a71: $2b
	dec h                                            ; $5a72: $25
	dec hl                                           ; $5a73: $2b
	cp $00                                           ; $5a74: $fe $00
	ld [hl], a                                       ; $5a76: $77
	ld h, l                                          ; $5a77: $65
	halt                                             ; $5a78: $76
	and c                                            ; $5a79: $a1
	ld a, e                                          ; $5a7a: $7b
	sbc $7f                                          ; $5a7b: $de $7f
	cp $9c                                           ; $5a7d: $fe $9c
	cp $0b                                           ; $5a7f: $fe $0b
	ld d, [hl]                                       ; $5a81: $56
	ld [hl], a                                       ; $5a82: $77
	jr c, jr_03f_5a23                                ; $5a83: $38 $9e

	add b                                            ; $5a85: $80
	ld [hl], l                                       ; $5a86: $75

jr_03f_5a87:
	ld c, e                                          ; $5a87: $4b
	sub l                                            ; $5a88: $95
	dec b                                            ; $5a89: $05
	dec bc                                           ; $5a8a: $0b
	dec l                                            ; $5a8b: $2d
	or e                                             ; $5a8c: $b3
	rst GetHLinHL                                          ; $5a8d: $cf
	ld a, $fa                                        ; $5a8e: $3e $fa
	db $d3                                           ; $5a90: $d3
	inc bc                                           ; $5a91: $03
	rlca                                             ; $5a92: $07
	ld a, c                                          ; $5a93: $79
	ret nc                                           ; $5a94: $d0

	sub h                                            ; $5a95: $94
	rst $38                                          ; $5a96: $ff
	db $fd                                           ; $5a97: $fd
	db $fc                                           ; $5a98: $fc
	xor a                                            ; $5a99: $af
	ld a, [$dfff]                                    ; $5a9a: $fa $ff $df
	xor a                                            ; $5a9d: $af
	sub a                                            ; $5a9e: $97
	xor a                                            ; $5a9f: $af
	sub a                                            ; $5aa0: $97
	ld [hl], a                                       ; $5aa1: $77
	db $d3                                           ; $5aa2: $d3
	db $dd                                           ; $5aa3: $dd
	ld a, a                                          ; $5aa4: $7f
	sub l                                            ; $5aa5: $95
	jp hl                                            ; $5aa6: $e9


	ld l, e                                          ; $5aa7: $6b
	sbc $b8                                          ; $5aa8: $de $b8
	ret nc                                           ; $5aaa: $d0

	and h                                            ; $5aab: $a4
	db $f4                                           ; $5aac: $f4
	add b                                            ; $5aad: $80
	rst FarCall                                          ; $5aae: $f7
	rst FarCall                                          ; $5aaf: $f7
	sbc $ff                                          ; $5ab0: $de $ff
	rst SubAFromDE                                          ; $5ab2: $df
	db $db                                           ; $5ab3: $db
	ld a, [hl]                                       ; $5ab4: $7e
	adc d                                            ; $5ab5: $8a
	ld c, e                                          ; $5ab6: $4b
	nop                                              ; $5ab7: $00
	add b                                            ; $5ab8: $80
	dec bc                                           ; $5ab9: $0b
	rla                                              ; $5aba: $17
	ld e, l                                          ; $5abb: $5d
	cp l                                             ; $5abc: $bd
	db $fc                                           ; $5abd: $fc
	add sp, $20                                      ; $5abe: $e8 $20
	ld d, b                                          ; $5ac0: $50
	rst FarCall                                          ; $5ac1: $f7
	rst AddAOntoHL                                          ; $5ac2: $ef
	cp [hl]                                          ; $5ac3: $be
	ld a, e                                          ; $5ac4: $7b
	rst SubAFromBC                                          ; $5ac5: $e7
	rst SubAFromDE                                          ; $5ac6: $df
	rst $38                                          ; $5ac7: $ff
	rst AddAOntoHL                                          ; $5ac8: $ef
	and a                                            ; $5ac9: $a7
	xor a                                            ; $5aca: $af
	rra                                              ; $5acb: $1f
	rra                                              ; $5acc: $1f
	ccf                                              ; $5acd: $3f
	ld a, [hl]                                       ; $5ace: $7e
	ld sp, hl                                        ; $5acf: $f9
	ldh a, [c]                                       ; $5ad0: $f2
	ret c                                            ; $5ad1: $d8

	ld [hl], b                                       ; $5ad2: $70
	ldh [$e0], a                                     ; $5ad3: $e0 $e0
	ret nz                                           ; $5ad5: $c0

	add c                                            ; $5ad6: $81
	ld b, $8e                                        ; $5ad7: $06 $8e
	dec c                                            ; $5ad9: $0d
	ret nc                                           ; $5ada: $d0

	db $fc                                           ; $5adb: $fc
	call nc, $18f0                                   ; $5adc: $d4 $f0 $18
	ld [hl], b                                       ; $5adf: $70
	sub b                                            ; $5ae0: $90
	ld a, h                                          ; $5ae1: $7c
	ccf                                              ; $5ae2: $3f
	scf                                              ; $5ae3: $37
	ccf                                              ; $5ae4: $3f
	ccf                                              ; $5ae5: $3f
	rst FarCall                                          ; $5ae6: $f7
	cp a                                             ; $5ae7: $bf
	ld a, a                                          ; $5ae8: $7f
	or a                                             ; $5ae9: $b7
	ld b, [hl]                                       ; $5aea: $46
	ret nz                                           ; $5aeb: $c0

	ld b, $b0                                        ; $5aec: $06 $b0
	rst SubAFromDE                                          ; $5aee: $df
	cp a                                             ; $5aef: $bf
	sub e                                            ; $5af0: $93
	rra                                              ; $5af1: $1f
	rst GetHLinHL                                          ; $5af2: $cf
	ld hl, sp+$30                                    ; $5af3: $f8 $30
	jr jr_03f_5a87                                   ; $5af5: $18 $90

	ld l, a                                          ; $5af7: $6f
	ld l, a                                          ; $5af8: $6f
	rst AddAOntoHL                                          ; $5af9: $ef
	ld a, a                                          ; $5afa: $7f
	ld e, b                                          ; $5afb: $58
	ret c                                            ; $5afc: $d8

	ld l, [hl]                                       ; $5afd: $6e
	db $f4                                           ; $5afe: $f4
	or $77                                           ; $5aff: $f6 $77
	push de                                          ; $5b01: $d5
	cp $9e                                           ; $5b02: $fe $9e
	ld [bc], a                                       ; $5b04: $02
	ld a, [$3c9e]                                    ; $5b05: $fa $9e $3c
	ld [hl], d                                       ; $5b08: $72
	and b                                            ; $5b09: $a0
	sbc e                                            ; $5b0a: $9b
	inc e                                            ; $5b0b: $1c
	ld [hl+], a                                      ; $5b0c: $22
	add hl, bc                                       ; $5b0d: $09
	jr @-$21                                         ; $5b0e: $18 $dd

	rrca                                             ; $5b10: $0f
	sbc e                                            ; $5b11: $9b
	inc bc                                           ; $5b12: $03
	add hl, de                                       ; $5b13: $19
	rlca                                             ; $5b14: $07
	rlca                                             ; $5b15: $07
	db $dd                                           ; $5b16: $dd
	ldh a, [$9b]                                     ; $5b17: $f0 $9b
	and b                                            ; $5b19: $a0
	ret nz                                           ; $5b1a: $c0

	ld [bc], a                                       ; $5b1b: $02
	inc b                                            ; $5b1c: $04
	db $dd                                           ; $5b1d: $dd
	ldh a, [$7d]                                     ; $5b1e: $f0 $7d
	inc c                                            ; $5b20: $0c
	sbc l                                            ; $5b21: $9d
	add c                                            ; $5b22: $81
	jp $9efb                                         ; $5b23: $c3 $fb $9e


	ld [$cf6b], sp                                   ; $5b26: $08 $6b $cf
	sbc l                                            ; $5b29: $9d
	ldh a, [$fc]                                     ; $5b2a: $f0 $fc
	ld d, b                                          ; $5b2c: $50
	nop                                              ; $5b2d: $00
	sub l                                            ; $5b2e: $95
	ld b, h                                          ; $5b2f: $44
	ld b, [hl]                                       ; $5b30: $46
	ld h, [hl]                                       ; $5b31: $66
	ld h, [hl]                                       ; $5b32: $66
	ld h, a                                          ; $5b33: $67
	ld [hl], a                                       ; $5b34: $77
	ld [hl], a                                       ; $5b35: $77
	ld [hl], e                                       ; $5b36: $73
	ld d, l                                          ; $5b37: $55
	ld d, h                                          ; $5b38: $54
	sbc $44                                          ; $5b39: $de $44
	sbc [hl]                                         ; $5b3b: $9e
	ld b, [hl]                                       ; $5b3c: $46
	ld [hl], a                                       ; $5b3d: $77
	or $95                                           ; $5b3e: $f6 $95
	ld d, a                                          ; $5b40: $57
	ld [hl], l                                       ; $5b41: $75
	ld b, h                                          ; $5b42: $44
	ld b, h                                          ; $5b43: $44
	ld b, e                                          ; $5b44: $43
	ld [hl], $67                                     ; $5b45: $36 $67
	ld [hl], a                                       ; $5b47: $77
	halt                                             ; $5b48: $76
	ld h, e                                          ; $5b49: $63
	ld [hl], a                                       ; $5b4a: $77
	or $77                                           ; $5b4b: $f6 $77
	db $ec                                           ; $5b4d: $ec
	ld [hl], a                                       ; $5b4e: $77
	or $de                                           ; $5b4f: $f6 $de
	inc sp                                           ; $5b51: $33
	sbc [hl]                                         ; $5b52: $9e
	ld b, h                                          ; $5b53: $44
	ld [hl], a                                       ; $5b54: $77
	or $9d                                           ; $5b55: $f6 $9d
	dec [hl]                                         ; $5b57: $35
	ld d, e                                          ; $5b58: $53
	sbc $33                                          ; $5b59: $de $33
	sbc [hl]                                         ; $5b5b: $9e
	inc [hl]                                         ; $5b5c: $34
	sbc $66                                          ; $5b5d: $de $66
	sbc $77                                          ; $5b5f: $de $77
	db $dd                                           ; $5b61: $dd
	inc sp                                           ; $5b62: $33
	ld a, e                                          ; $5b63: $7b
	pop bc                                           ; $5b64: $c1
	ld l, e                                          ; $5b65: $6b
	or $9d                                           ; $5b66: $f6 $9d
	inc [hl]                                         ; $5b68: $34
	ld b, a                                          ; $5b69: $47
	db $dd                                           ; $5b6a: $dd
	ld [hl], a                                       ; $5b6b: $77
	sbc [hl]                                         ; $5b6c: $9e
	ld [hl], e                                       ; $5b6d: $73
	ld h, e                                          ; $5b6e: $63
	push af                                          ; $5b6f: $f5
	ld [hl], e                                       ; $5b70: $73

jr_03f_5b71:
	or $9e                                           ; $5b71: $f6 $9e
	inc sp                                           ; $5b73: $33
	ld [hl], a                                       ; $5b74: $77
	or $db                                           ; $5b75: $f6 $db
	inc sp                                           ; $5b77: $33
	sbc [hl]                                         ; $5b78: $9e
	inc [hl]                                         ; $5b79: $34
	sbc $77                                          ; $5b7a: $de $77
	ld [hl], e                                       ; $5b7c: $73
	add a                                            ; $5b7d: $87
	pop af                                           ; $5b7e: $f1
	reti                                             ; $5b7f: $d9


	cpl                                              ; $5b80: $2f
	reti                                             ; $5b81: $d9


	add hl, de                                       ; $5b82: $19
	sbc h                                            ; $5b83: $9c
	ld h, c                                          ; $5b84: $61
	ld a, b                                          ; $5b85: $78
	ld c, h                                          ; $5b86: $4c
	call c, $9d44                                    ; $5b87: $dc $44 $9d
	sbc [hl]                                         ; $5b8a: $9e
	add a                                            ; $5b8b: $87
	db $db                                           ; $5b8c: $db
	add e                                            ; $5b8d: $83
	rst SubAFromDE                                          ; $5b8e: $df
	sbc a                                            ; $5b8f: $9f
	db $db                                           ; $5b90: $db
	rra                                              ; $5b91: $1f
	db $db                                           ; $5b92: $db
	ldh [$9d], a                                     ; $5b93: $e0 $9d
	ld h, b                                          ; $5b95: $60
	jr nz, jr_03f_5b71                               ; $5b96: $20 $d9

	rst $38                                          ; $5b98: $ff
	ld sp, hl                                        ; $5b99: $f9
	inc bc                                           ; $5b9a: $03
	ldh a, [$73]                                     ; $5b9b: $f0 $73
	db $f4                                           ; $5b9d: $f4

Jump_03f_5b9e:
	sbc l                                            ; $5b9e: $9d
	ld a, a                                          ; $5b9f: $7f
	ld b, b                                          ; $5ba0: $40
	ld [hl], e                                       ; $5ba1: $73
	db $f4                                           ; $5ba2: $f4
	rst $38                                          ; $5ba3: $ff
	sbc [hl]                                         ; $5ba4: $9e
	ccf                                              ; $5ba5: $3f
	ld l, a                                          ; $5ba6: $6f
	ldh a, [$6f]                                     ; $5ba7: $f0 $6f
	pop hl                                           ; $5ba9: $e1
	ld [hl], a                                       ; $5baa: $77
	rst FarCall                                          ; $5bab: $f7
	cpl                                              ; $5bac: $2f
	ldh a, [$9d]                                     ; $5bad: $f0 $9d
	ldh [rTAC], a                                    ; $5baf: $e0 $07
	ld l, a                                          ; $5bb1: $6f
	ldh a, [$9d]                                     ; $5bb2: $f0 $9d

jr_03f_5bb4:
	rrca                                             ; $5bb4: $0f
	rst AddAOntoHL                                          ; $5bb5: $ef
	ld l, e                                          ; $5bb6: $6b
	or h                                             ; $5bb7: $b4
	ld [hl], e                                       ; $5bb8: $73
	rst SubAFromDE                                          ; $5bb9: $df
	ld a, a                                          ; $5bba: $7f
	ei                                               ; $5bbb: $fb
	ld h, e                                          ; $5bbc: $63
	and h                                            ; $5bbd: $a4
	inc bc                                           ; $5bbe: $03
	ldh a, [$03]                                     ; $5bbf: $f0 $03
	ldh a, [$03]                                     ; $5bc1: $f0 $03
	ldh a, [$2f]                                     ; $5bc3: $f0 $2f
	ldh a, [$f1]                                     ; $5bc5: $f0 $f1
	reti                                             ; $5bc7: $d9


	ld l, $d9                                        ; $5bc8: $2e $d9
	add hl, de                                       ; $5bca: $19
	reti                                             ; $5bcb: $d9


	ld b, h                                          ; $5bcc: $44
	reti                                             ; $5bcd: $d9


	add e                                            ; $5bce: $83
	rst SubAFromDE                                          ; $5bcf: $df
	rra                                              ; $5bd0: $1f
	sbc l                                            ; $5bd1: $9d
	dec de                                           ; $5bd2: $1b
	add hl, de                                       ; $5bd3: $19
	db $dd                                           ; $5bd4: $dd
	jr @-$25                                         ; $5bd5: $18 $d9

	jr nz, jr_03f_5bb4                               ; $5bd7: $20 $db

	rst $38                                          ; $5bd9: $ff
	sbc l                                            ; $5bda: $9d
	ld a, a                                          ; $5bdb: $7f
	ccf                                              ; $5bdc: $3f
	ld [bc], a                                       ; $5bdd: $02
	ret nz                                           ; $5bde: $c0

	ld a, [$40dd]                                    ; $5bdf: $fa $dd $40
	sbc c                                            ; $5be2: $99
	ld b, a                                          ; $5be3: $47
	ld b, c                                          ; $5be4: $41
	ld b, b                                          ; $5be5: $40
	ld b, b                                          ; $5be6: $40
	ccf                                              ; $5be7: $3f
	ccf                                              ; $5be8: $3f
	sbc $30                                          ; $5be9: $de $30
	sbc h                                            ; $5beb: $9c
	ld [hl], $30                                     ; $5bec: $36 $30
	jr nc, @-$01                                     ; $5bee: $30 $fd

	sbc l                                            ; $5bf0: $9d
	ld [hl], b                                       ; $5bf1: $70
	adc $77                                          ; $5bf2: $ce $77
	ret c                                            ; $5bf4: $d8

	cp $73                                           ; $5bf5: $fe $73
	ldh a, [c]                                       ; $5bf7: $f2
	ld c, a                                          ; $5bf8: $4f
	ret z                                            ; $5bf9: $c8

	reti                                             ; $5bfa: $d9


	rlca                                             ; $5bfb: $07
	reti                                             ; $5bfc: $d9


	rst AddAOntoHL                                          ; $5bfd: $ef
	call c, $9cff                                    ; $5bfe: $dc $ff $9c
	db $fd                                           ; $5c01: $fd
	cp $fd                                           ; $5c02: $fe $fd
	push de                                          ; $5c04: $d5
	rst $38                                          ; $5c05: $ff
	sbc e                                            ; $5c06: $9b
	cp a                                             ; $5c07: $bf
	ld e, l                                          ; $5c08: $5d
	xor d                                            ; $5c09: $aa
	ld d, l                                          ; $5c0a: $55
	call nc, $9cff                                   ; $5c0b: $d4 $ff $9c
	ei                                               ; $5c0e: $fb
	xor l                                            ; $5c0f: $ad
	ld d, d                                          ; $5c10: $52
	db $d3                                           ; $5c11: $d3
	rst $38                                          ; $5c12: $ff
	sbc l                                            ; $5c13: $9d
	ld e, a                                          ; $5c14: $5f
	xor e                                            ; $5c15: $ab
	jp nc, $9eff                                     ; $5c16: $d2 $ff $9e

	cp $d4                                           ; $5c19: $fe $d4
	rst $38                                          ; $5c1b: $ff
	sbc h                                            ; $5c1c: $9c
	push af                                          ; $5c1d: $f5
	ld [$d4b5], a                                    ; $5c1e: $ea $b5 $d4
	rst $38                                          ; $5c21: $ff
	sbc l                                            ; $5c22: $9d
	ld a, a                                          ; $5c23: $7f
	xor a                                            ; $5c24: $af
	ld c, a                                          ; $5c25: $4f
	or b                                             ; $5c26: $b0
	ld a, e                                          ; $5c27: $7b
	xor $c9                                          ; $5c28: $ee $c9
	rst $38                                          ; $5c2a: $ff
	rst $38                                          ; $5c2b: $ff
	sbc [hl]                                         ; $5c2c: $9e
	inc b                                            ; $5c2d: $04
	ld sp, hl                                        ; $5c2e: $f9
	call c, $db04                                    ; $5c2f: $dc $04 $db
	ld l, $df                                        ; $5c32: $2e $df
	ld l, [hl]                                       ; $5c34: $6e
	ld h, d                                          ; $5c35: $62
	ret nz                                           ; $5c36: $c0

	jp c, $d904                                      ; $5c37: $da $04 $d9

	add e                                            ; $5c3a: $83
	reti                                             ; $5c3b: $d9


	jr @-$25                                         ; $5c3c: $18 $d9

	jr nz, @-$1f                                     ; $5c3e: $20 $df

	rra                                              ; $5c40: $1f
	sbc d                                            ; $5c41: $9a
	rrca                                             ; $5c42: $0f
	rlca                                             ; $5c43: $07
	rlca                                             ; $5c44: $07
	inc bc                                           ; $5c45: $03
	ld bc, $0843                                     ; $5c46: $01 $43 $08
	ld [hl+], a                                      ; $5c49: $22
	ret nz                                           ; $5c4a: $c0

	sbc h                                            ; $5c4b: $9c
	ld b, e                                          ; $5c4c: $43
	ld b, b                                          ; $5c4d: $40
	ld b, b                                          ; $5c4e: $40
	ld a, d                                          ; $5c4f: $7a
	pop bc                                           ; $5c50: $c1
	sbc e                                            ; $5c51: $9b
	ld b, b                                          ; $5c52: $40
	jr nc, jr_03f_5c89                               ; $5c53: $30 $34

	scf                                              ; $5c55: $37
	ld a, d                                          ; $5c56: $7a
	pop bc                                           ; $5c57: $c1
	rst SubAFromDE                                          ; $5c58: $df
	ccf                                              ; $5c59: $3f
	sbc d                                            ; $5c5a: $9a
	nop                                              ; $5c5b: $00
	cp $fc                                           ; $5c5c: $fe $fc
	nop                                              ; $5c5e: $00
	ldh a, [c]                                       ; $5c5f: $f2
	ld a, [$0c9e]                                    ; $5c60: $fa $9e $0c
	ld [hl], d                                       ; $5c63: $72
	cp d                                             ; $5c64: $ba
	sbc l                                            ; $5c65: $9d
	jr nz, jr_03f_5c76                               ; $5c66: $20 $0e

	cp $7e                                           ; $5c68: $fe $7e
	ld l, b                                          ; $5c6a: $68
	rst SubAFromDE                                          ; $5c6b: $df
	add b                                            ; $5c6c: $80
	sbc [hl]                                         ; $5c6d: $9e
	or c                                             ; $5c6e: $b1
	db $dd                                           ; $5c6f: $dd
	add b                                            ; $5c70: $80
	sbc h                                            ; $5c71: $9c
	ld b, $07                                        ; $5c72: $06 $07
	add a                                            ; $5c74: $87
	ld a, e                                          ; $5c75: $7b

jr_03f_5c76:
	cp $7a                                           ; $5c76: $fe $7a
	ret nz                                           ; $5c78: $c0

	rst SubAFromDE                                          ; $5c79: $df

Jump_03f_5c7a:
	cpl                                              ; $5c7a: $2f
	sbc [hl]                                         ; $5c7b: $9e
	xor a                                            ; $5c7c: $af
	db $dd                                           ; $5c7d: $dd
	cpl                                              ; $5c7e: $2f
	sub a                                            ; $5c7f: $97
	cp d                                             ; $5c80: $ba
	ld d, l                                          ; $5c81: $55
	xor d                                            ; $5c82: $aa
	ret nc                                           ; $5c83: $d0

	and b                                            ; $5c84: $a0
	ret nc                                           ; $5c85: $d0

	ld [$d9d5], a                                    ; $5c86: $ea $d5 $d9

jr_03f_5c89:
	rst $38                                          ; $5c89: $ff
	ld a, [hl]                                       ; $5c8a: $7e
	add $9b                                          ; $5c8b: $c6 $9b
	xor d                                            ; $5c8d: $aa
	dec d                                            ; $5c8e: $15
	ld a, [bc]                                       ; $5c8f: $0a
	ld d, l                                          ; $5c90: $55
	ld e, [hl]                                       ; $5c91: $5e
	ret nz                                           ; $5c92: $c0

	sbc [hl]                                         ; $5c93: $9e
	adc b                                            ; $5c94: $88
	cp $9b                                           ; $5c95: $fe $9b
	add b                                            ; $5c97: $80
	ld d, d                                          ; $5c98: $52
	xor l                                            ; $5c99: $ad
	jp c, $ffd9                                      ; $5c9a: $da $d9 $ff

	sub a                                            ; $5c9d: $97
	ld d, a                                          ; $5c9e: $57
	dec bc                                           ; $5c9f: $0b
	rlca                                             ; $5ca0: $07
	ld [bc], a                                       ; $5ca1: $02
	dec b                                            ; $5ca2: $05
	adc d                                            ; $5ca3: $8a
	ld d, a                                          ; $5ca4: $57
	cp a                                             ; $5ca5: $bf
	reti                                             ; $5ca6: $d9


	rst $38                                          ; $5ca7: $ff
	sbc c                                            ; $5ca8: $99
	db $fd                                           ; $5ca9: $fd
	ld a, [$eaf5]                                    ; $5caa: $fa $f5 $ea
	ld d, l                                          ; $5cad: $55
	ld a, [$815e]                                    ; $5cae: $fa $5e $81
	sbc b                                            ; $5cb1: $98
	ld c, d                                          ; $5cb2: $4a
	and h                                            ; $5cb3: $a4
	nop                                              ; $5cb4: $00
	add b                                            ; $5cb5: $80
	ld d, h                                          ; $5cb6: $54
	xor d                                            ; $5cb7: $aa
	or $63                                           ; $5cb8: $f6 $63
	rst AddAOntoHL                                          ; $5cba: $ef
	sub a                                            ; $5cbb: $97
	ld [hl+], a                                      ; $5cbc: $22
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	ld bc, $5502                                     ; $5cbf: $01 $02 $55
	xor d                                            ; $5cc2: $aa
	ld d, a                                          ; $5cc3: $57
	ld h, d                                          ; $5cc4: $62
	ld h, h                                          ; $5cc5: $64
	sbc e                                            ; $5cc6: $9b
	ld d, a                                          ; $5cc7: $57
	xor e                                            ; $5cc8: $ab
	ld d, l                                          ; $5cc9: $55
	xor e                                            ; $5cca: $ab
	ld [hl+], a                                      ; $5ccb: $22
	jp nz, $286b                                     ; $5ccc: $c2 $6b $28

	sbc [hl]                                         ; $5ccf: $9e
	ld [bc], a                                       ; $5cd0: $02
	ld l, d                                          ; $5cd1: $6a
	jp $f77f                                         ; $5cd2: $c3 $7f $f7


	sbc [hl]                                         ; $5cd5: $9e
	ld [bc], a                                       ; $5cd6: $02

jr_03f_5cd7:
	reti                                             ; $5cd7: $d9


	ld l, [hl]                                       ; $5cd8: $6e
	reti                                             ; $5cd9: $d9


	add hl, de                                       ; $5cda: $19
	reti                                             ; $5cdb: $d9


	inc b                                            ; $5cdc: $04
	ld h, $c0                                        ; $5cdd: $26 $c0
	pop af                                           ; $5cdf: $f1
	ld a, c                                          ; $5ce0: $79
	ld [hl], l                                       ; $5ce1: $75
	sbc [hl]                                         ; $5ce2: $9e
	ccf                                              ; $5ce3: $3f
	halt                                             ; $5ce4: $76
	xor l                                            ; $5ce5: $ad
	ld c, d                                          ; $5ce6: $4a
	ret nz                                           ; $5ce7: $c0

	sbc [hl]                                         ; $5ce8: $9e
	rrca                                             ; $5ce9: $0f
	ld a, [$fe9e]                                    ; $5cea: $fa $9e $fe
	ld a, c                                          ; $5ced: $79
	add d                                            ; $5cee: $82
	rst SubAFromDE                                          ; $5cef: $df
	ld b, a                                          ; $5cf0: $47
	ld a, h                                          ; $5cf1: $7c
	ld b, d                                          ; $5cf2: $42
	sbc e                                            ; $5cf3: $9b
	rst $38                                          ; $5cf4: $ff
	ccf                                              ; $5cf5: $3f
	ccf                                              ; $5cf6: $3f
	jr c, jr_03f_5cd7                                ; $5cf7: $38 $de

	ccf                                              ; $5cf9: $3f
	db $fd                                           ; $5cfa: $fd
	sbc $fc                                          ; $5cfb: $de $fc
	rst $38                                          ; $5cfd: $ff
	sbc e                                            ; $5cfe: $9b
	reti                                             ; $5cff: $d9


	rst $38                                          ; $5d00: $ff
	rst $38                                          ; $5d01: $ff
	inc bc                                           ; $5d02: $03
	ld [hl], a                                       ; $5d03: $77
	ld [hl], d                                       ; $5d04: $72
	sbc e                                            ; $5d05: $9b
	ld h, $1f                                        ; $5d06: $26 $1f
	jr nz, jr_03f_5d29                               ; $5d08: $20 $1f

	db $fc                                           ; $5d0a: $fc
	sbc [hl]                                         ; $5d0b: $9e
	and b                                            ; $5d0c: $a0
	sbc $80                                          ; $5d0d: $de $80
	ld a, e                                          ; $5d0f: $7b
	ldh a, [$9e]                                     ; $5d10: $f0 $9e
	rst $38                                          ; $5d12: $ff
	ld l, [hl]                                       ; $5d13: $6e
	jp nz, $ddff                                     ; $5d14: $c2 $ff $dd

	cpl                                              ; $5d17: $2f
	rst SubAFromDE                                          ; $5d18: $df
	rst AddAOntoHL                                          ; $5d19: $ef
	ld a, a                                          ; $5d1a: $7f
	ldh a, [$9e]                                     ; $5d1b: $f0 $9e
	xor d                                            ; $5d1d: $aa
	ld l, e                                          ; $5d1e: $6b
	ld c, d                                          ; $5d1f: $4a
	db $dd                                           ; $5d20: $dd
	rst $38                                          ; $5d21: $ff
	rst SubAFromDE                                          ; $5d22: $df
	bit 7, a                                         ; $5d23: $cb $7f
	ld sp, hl                                        ; $5d25: $f9
	sbc l                                            ; $5d26: $9d
	xor a                                            ; $5d27: $af
	rst SubAFromDE                                          ; $5d28: $df

jr_03f_5d29:
	ld e, a                                          ; $5d29: $5f
	ldh a, [rPCM34]                                  ; $5d2a: $f0 $77
	ret nc                                           ; $5d2c: $d0

	sbc [hl]                                         ; $5d2d: $9e
	rst FarCall                                          ; $5d2e: $f7
	ld e, e                                          ; $5d2f: $5b
	ldh [rPCM34], a                                  ; $5d30: $e0 $77
	ldh a, [$67]                                     ; $5d32: $f0 $67
	ld a, [de]                                       ; $5d34: $1a

jr_03f_5d35:
	inc bc                                           ; $5d35: $03
	ldh a, [$03]                                     ; $5d36: $f0 $03
	ldh a, [$2f]                                     ; $5d38: $f0 $2f
	ldh a, [$7a]                                     ; $5d3a: $f0 $7a
	sub c                                            ; $5d3c: $91
	cp $99                                           ; $5d3d: $fe $99
	ld bc, $0204                                     ; $5d3f: $01 $04 $02
	ld [bc], a                                       ; $5d42: $02
	nop                                              ; $5d43: $00

jr_03f_5d44:
	ld bc, $f67b                                     ; $5d44: $01 $7b $f6
	sbc l                                            ; $5d47: $9d
	inc bc                                           ; $5d48: $03
	ld l, [hl]                                       ; $5d49: $6e
	sbc $2e                                          ; $5d4a: $de $2e
	sbc e                                            ; $5d4c: $9b
	cpl                                              ; $5d4d: $2f
	rrca                                             ; $5d4e: $0f
	rra                                              ; $5d4f: $1f
	ccf                                              ; $5d50: $3f
	db $dd                                           ; $5d51: $dd
	add hl, de                                       ; $5d52: $19
	rst SubAFromDE                                          ; $5d53: $df
	jr jr_03f_5d35                                   ; $5d54: $18 $df

	ld hl, sp+$0a                                    ; $5d56: $f8 $0a
	ret nz                                           ; $5d58: $c0

	sbc [hl]                                         ; $5d59: $9e
	ldh [$f1], a                                     ; $5d5a: $e0 $f1
	ld a, [hl]                                       ; $5d5c: $7e
	ld b, e                                          ; $5d5d: $43
	ld a, d                                          ; $5d5e: $7a
	ld [hl], c                                       ; $5d5f: $71
	rst SubAFromDE                                          ; $5d60: $df
	ld [bc], a                                       ; $5d61: $02
	rst SubAFromDE                                          ; $5d62: $df
	ld bc, $039d                                     ; $5d63: $01 $9d $03
	ld [bc], a                                       ; $5d66: $02
	db $dd                                           ; $5d67: $dd
	inc bc                                           ; $5d68: $03
	sbc $01                                          ; $5d69: $de $01
	sub c                                            ; $5d6b: $91
	inc bc                                           ; $5d6c: $03
	rla                                              ; $5d6d: $17
	ccf                                              ; $5d6e: $3f
	ld a, a                                          ; $5d6f: $7f
	pop hl                                           ; $5d70: $e1
	db $e3                                           ; $5d71: $e3
	sbc a                                            ; $5d72: $9f
	rlca                                             ; $5d73: $07
	cp a                                             ; $5d74: $bf
	ld a, a                                          ; $5d75: $7f
	ei                                               ; $5d76: $fb
	jp nz, $c281                                     ; $5d77: $c2 $81 $c2

	rst SubAFromHL                                          ; $5d7a: $d7
	rst $38                                          ; $5d7b: $ff
	rst SubAFromDE                                          ; $5d7c: $df
	add b                                            ; $5d7d: $80
	ld d, l                                          ; $5d7e: $55

Jump_03f_5d7f:
	ld h, b                                          ; $5d7f: $60
	ld h, l                                          ; $5d80: $65
	ld e, [hl]                                       ; $5d81: $5e
	inc bc                                           ; $5d82: $03
	ldh a, [$d9]                                     ; $5d83: $f0 $d9
	rst $38                                          ; $5d85: $ff
	sbc [hl]                                         ; $5d86: $9e
	or [hl]                                          ; $5d87: $b6
	ld c, e                                          ; $5d88: $4b
	ldh a, [$7d]                                     ; $5d89: $f0 $7d
	cp b                                             ; $5d8b: $b8
	ld c, a                                          ; $5d8c: $4f
	ldh a, [rOBP1]                                   ; $5d8d: $f0 $49
	nop                                              ; $5d8f: $00
	ld b, e                                          ; $5d90: $43
	ldh a, [$9e]                                     ; $5d91: $f0 $9e
	inc bc                                           ; $5d93: $03
	ei                                               ; $5d94: $fb
	rst SubAFromDE                                          ; $5d95: $df
	dec h                                            ; $5d96: $25
	db $db                                           ; $5d97: $db
	rst $38                                          ; $5d98: $ff
	sbc [hl]                                         ; $5d99: $9e
	or a                                             ; $5d9a: $b7
	ld b, a                                          ; $5d9b: $47
	or b                                             ; $5d9c: $b0
	rlca                                             ; $5d9d: $07
	ret nz                                           ; $5d9e: $c0

	ld a, [$209c]                                    ; $5d9f: $fa $9c $20
	ld [bc], a                                       ; $5da2: $02
	db $10                                           ; $5da3: $10
	ld [hl], e                                       ; $5da4: $73
	jr c, jr_03f_5d44                                ; $5da5: $38 $9d

	rra                                              ; $5da7: $1f
	db $fc                                           ; $5da8: $fc
	ld l, [hl]                                       ; $5da9: $6e
	push af                                          ; $5daa: $f5
	ld a, l                                          ; $5dab: $7d
	ld c, a                                          ; $5dac: $4f
	sbc l                                            ; $5dad: $9d
	ccf                                              ; $5dae: $3f
	rrca                                             ; $5daf: $0f
	ld a, d                                          ; $5db0: $7a
	ret nz                                           ; $5db1: $c0

	sbc [hl]                                         ; $5db2: $9e
	rrca                                             ; $5db3: $0f
	db $dd                                           ; $5db4: $dd
	ld a, b                                          ; $5db5: $78
	rst SubAFromDE                                          ; $5db6: $df
	ld e, b                                          ; $5db7: $58
	rst SubAFromDE                                          ; $5db8: $df
	ld c, b                                          ; $5db9: $48
	sbc l                                            ; $5dba: $9d
	inc e                                            ; $5dbb: $1c
	ld h, b                                          ; $5dbc: $60
	ei                                               ; $5dbd: $fb
	sbc l                                            ; $5dbe: $9d
	add e                                            ; $5dbf: $83
	sbc a                                            ; $5dc0: $9f
	db $db                                           ; $5dc1: $db
	rst $38                                          ; $5dc2: $ff
	sbc e                                            ; $5dc3: $9b
	jr jr_03f_5de2                                   ; $5dc4: $18 $1c

	inc e                                            ; $5dc6: $1c
	ld e, $dd                                        ; $5dc7: $1e $dd
	rra                                              ; $5dc9: $1f
	reti                                             ; $5dca: $d9


	ldh [$fb], a                                     ; $5dcb: $e0 $fb
	sbc l                                            ; $5dcd: $9d
	add b                                            ; $5dce: $80
	ret nz                                           ; $5dcf: $c0

	ld h, [hl]                                       ; $5dd0: $66
	pop bc                                           ; $5dd1: $c1
	db $fd                                           ; $5dd2: $fd
	add e                                            ; $5dd3: $83
	ld [$180c], sp                                   ; $5dd4: $08 $0c $18
	inc e                                            ; $5dd7: $1c
	ld b, $09                                        ; $5dd8: $06 $09
	db $10                                           ; $5dda: $10
	jr nz, jr_03f_5e1d                               ; $5ddb: $20 $40

	add b                                            ; $5ddd: $80
	add h                                            ; $5dde: $84
	ld h, [hl]                                       ; $5ddf: $66
	rst FarCall                                          ; $5de0: $f7
	rra                                              ; $5de1: $1f

jr_03f_5de2:
	inc de                                           ; $5de2: $13
	ld bc, $1010                                     ; $5de3: $01 $10 $10
	jr @+$12                                         ; $5de6: $18 $10

	ld h, h                                          ; $5de8: $64
	ld a, h                                          ; $5de9: $7c
	xor b                                            ; $5dea: $a8
	ld a, b                                          ; $5deb: $78
	jr c, jr_03f_5e66                                ; $5dec: $38 $78

	inc [hl]                                         ; $5dee: $34
	inc a                                            ; $5def: $3c
	db $db                                           ; $5df0: $db
	rst $38                                          ; $5df1: $ff
	sbc l                                            ; $5df2: $9d
	ld a, a                                          ; $5df3: $7f
	ld d, a                                          ; $5df4: $57
	ei                                               ; $5df5: $fb
	sbc l                                            ; $5df6: $9d
	jr z, jr_03f_5e4d                                ; $5df7: $28 $54

	ld c, e                                          ; $5df9: $4b
	ld [hl], c                                       ; $5dfa: $71
	ld h, e                                          ; $5dfb: $63
	ld h, b                                          ; $5dfc: $60
	ccf                                              ; $5dfd: $3f
	ldh a, [$7e]                                     ; $5dfe: $f0 $7e
	ld h, [hl]                                       ; $5e00: $66
	sbc e                                            ; $5e01: $9b
	inc b                                            ; $5e02: $04
	dec c                                            ; $5e03: $0d
	ld c, $1f                                        ; $5e04: $0e $1f
	ld l, a                                          ; $5e06: $6f
	pop bc                                           ; $5e07: $c1
	sub l                                            ; $5e08: $95
	inc a                                            ; $5e09: $3c
	sbc a                                            ; $5e0a: $9f
	nop                                              ; $5e0b: $00
	ldh [rAUD1SWEEP], a                              ; $5e0c: $e0 $10
	ld [$3ec9], sp                                   ; $5e0e: $08 $c9 $3e
	inc c                                            ; $5e11: $0c
	inc c                                            ; $5e12: $0c
	ld l, a                                          ; $5e13: $6f
	ldh a, [$7f]                                     ; $5e14: $f0 $7f
	jp hl                                            ; $5e16: $e9


	db $fd                                           ; $5e17: $fd
	sbc e                                            ; $5e18: $9b
	ret nz                                           ; $5e19: $c0

	jr nc, jr_03f_5e24                               ; $5e1a: $30 $08

	inc b                                            ; $5e1c: $04

jr_03f_5e1d:
	ld b, a                                          ; $5e1d: $47
	ret nz                                           ; $5e1e: $c0

	rst SubAFromDE                                          ; $5e1f: $df
	ldh a, [$df]                                     ; $5e20: $f0 $df
	rst $38                                          ; $5e22: $ff
	sbc [hl]                                         ; $5e23: $9e

jr_03f_5e24:
	ld sp, hl                                        ; $5e24: $f9
	sbc $f8                                          ; $5e25: $de $f8
	rst $38                                          ; $5e27: $ff
	sbc [hl]                                         ; $5e28: $9e
	ld c, $73                                        ; $5e29: $0e $73
	ld h, h                                          ; $5e2b: $64
	ld [hl], e                                       ; $5e2c: $73
	xor [hl]                                         ; $5e2d: $ae
	sbc $7f                                          ; $5e2e: $de $7f
	ld [hl], a                                       ; $5e30: $77
	rst FarCall                                          ; $5e31: $f7
	sbc c                                            ; $5e32: $99

Call_03f_5e33:
	ccf                                              ; $5e33: $3f
	ld a, $3d                                        ; $5e34: $3e $3d
	ccf                                              ; $5e36: $3f
	nop                                              ; $5e37: $00
	ld [bc], a                                       ; $5e38: $02
	sbc $ff                                          ; $5e39: $de $ff
	rst SubAFromDE                                          ; $5e3b: $df
	cp $77                                           ; $5e3c: $fe $77
	and b                                            ; $5e3e: $a0
	sbc d                                            ; $5e3f: $9a
	db $fc                                           ; $5e40: $fc
	cp $02                                           ; $5e41: $fe $02
	or $87                                           ; $5e43: $f6 $87
	ld l, e                                          ; $5e45: $6b
	or b                                             ; $5e46: $b0
	sbc [hl]                                         ; $5e47: $9e
	cp a                                             ; $5e48: $bf
	ld a, e                                          ; $5e49: $7b
	or d                                             ; $5e4a: $b2
	sbc b                                            ; $5e4b: $98
	rra                                              ; $5e4c: $1f

jr_03f_5e4d:
	adc a                                            ; $5e4d: $8f
	ld [hl], a                                       ; $5e4e: $77
	ld c, a                                          ; $5e4f: $4f
	rra                                              ; $5e50: $1f
	rrca                                             ; $5e51: $0f
	dec de                                           ; $5e52: $1b
	ld h, e                                          ; $5e53: $63
	add b                                            ; $5e54: $80
	call c, $47fe                                    ; $5e55: $dc $fe $47
	and b                                            ; $5e58: $a0
	ld a, l                                          ; $5e59: $7d
	add [hl]                                         ; $5e5a: $86
	sbc e                                            ; $5e5b: $9b
	db $10                                           ; $5e5c: $10
	ld b, e                                          ; $5e5d: $43
	rrca                                             ; $5e5e: $0f
	ccf                                              ; $5e5f: $3f
	ld a, e                                          ; $5e60: $7b
	ldh a, [$9b]                                     ; $5e61: $f0 $9b
	inc bc                                           ; $5e63: $03
	rrca                                             ; $5e64: $0f
	inc a                                            ; $5e65: $3c

jr_03f_5e66:
	ldh a, [$7a]                                     ; $5e66: $f0 $7a
	ld a, [$0f9a]                                    ; $5e68: $fa $9a $0f
	rst GetHLinHL                                          ; $5e6b: $cf
	rst GetHLinHL                                          ; $5e6c: $cf
	ld c, a                                          ; $5e6d: $4f
	ld d, a                                          ; $5e6e: $57
	sbc $ff                                          ; $5e6f: $de $ff
	sbc l                                            ; $5e71: $9d
	ret z                                            ; $5e72: $c8

	add sp, $73                                      ; $5e73: $e8 $73
	adc e                                            ; $5e75: $8b
	db $fd                                           ; $5e76: $fd
	sbc l                                            ; $5e77: $9d
	ld a, $7f                                        ; $5e78: $3e $7f
	ld a, e                                          ; $5e7a: $7b
	sbc [hl]                                         ; $5e7b: $9e
	ld [hl], a                                       ; $5e7c: $77
	sbc d                                            ; $5e7d: $9a
	db $dd                                           ; $5e7e: $dd
	rst $38                                          ; $5e7f: $ff
	sbc $1f                                          ; $5e80: $de $1f
	sbc l                                            ; $5e82: $9d
	nop                                              ; $5e83: $00
	ld hl, sp+$7b                                    ; $5e84: $f8 $7b
	pop de                                           ; $5e86: $d1
	halt                                             ; $5e87: $76
	push bc                                          ; $5e88: $c5
	ld a, a                                          ; $5e89: $7f
	ld hl, sp+$7f                                    ; $5e8a: $f8 $7f
	ld a, h                                          ; $5e8c: $7c
	sub a                                            ; $5e8d: $97
	ret nz                                           ; $5e8e: $c0

	ldh [$f0], a                                     ; $5e8f: $e0 $f0
	inc c                                            ; $5e91: $0c
	inc bc                                           ; $5e92: $03
	pop hl                                           ; $5e93: $e1
	ld bc, $6f02                                     ; $5e94: $01 $02 $6f
	ld h, e                                          ; $5e97: $63
	add b                                            ; $5e98: $80
	ret nz                                           ; $5e99: $c0

	db $fc                                           ; $5e9a: $fc
	inc b                                            ; $5e9b: $04
	inc b                                            ; $5e9c: $04
	add h                                            ; $5e9d: $84
	or b                                             ; $5e9e: $b0
	jr nc, jr_03f_5ed1                               ; $5e9f: $30 $30

	ld [hl], a                                       ; $5ea1: $77
	ld [hl], b                                       ; $5ea2: $70
	ld a, $8f                                        ; $5ea3: $3e $8f
	rst $38                                          ; $5ea5: $ff
	sbc a                                            ; $5ea6: $9f
	inc de                                           ; $5ea7: $13
	db $10                                           ; $5ea8: $10
	jr nc, jr_03f_5ee2                               ; $5ea9: $30 $37

	jr jr_03f_5ec0                                   ; $5eab: $18 $13

	nop                                              ; $5ead: $00
	ld [bc], a                                       ; $5eae: $02
	dec bc                                           ; $5eaf: $0b
	add b                                            ; $5eb0: $80
	jr nc, jr_03f_5eeb                               ; $5eb1: $30 $38

	inc a                                            ; $5eb3: $3c
	ccf                                              ; $5eb4: $3f
	jr nc, @+$73                                     ; $5eb5: $30 $71

	rst $38                                          ; $5eb7: $ff
	sub a                                            ; $5eb8: $97
	ld [hl], b                                       ; $5eb9: $70
	ldh a, [$f8]                                     ; $5eba: $f0 $f8
	ld d, a                                          ; $5ebc: $57
	adc a                                            ; $5ebd: $8f
	rra                                              ; $5ebe: $1f
	rst GetHLinHL                                          ; $5ebf: $cf

jr_03f_5ec0:
	rlca                                             ; $5ec0: $07
	ld a, c                                          ; $5ec1: $79
	ld l, b                                          ; $5ec2: $68
	sbc h                                            ; $5ec3: $9c
	ld d, h                                          ; $5ec4: $54
	adc b                                            ; $5ec5: $88
	jr nc, jr_03f_5f3a                               ; $5ec6: $30 $72

	adc h                                            ; $5ec8: $8c
	call c, $9cff                                    ; $5ec9: $dc $ff $9c
	db $fc                                           ; $5ecc: $fc
	rst $38                                          ; $5ecd: $ff
	ld sp, hl                                        ; $5ece: $f9
	db $fc                                           ; $5ecf: $fc
	sbc h                                            ; $5ed0: $9c

jr_03f_5ed1:
	inc b                                            ; $5ed1: $04
	ld b, $01                                        ; $5ed2: $06 $01
	ld l, a                                          ; $5ed4: $6f
	ld h, e                                          ; $5ed5: $63
	sbc l                                            ; $5ed6: $9d
	db $fc                                           ; $5ed7: $fc
	db $fd                                           ; $5ed8: $fd
	ld l, e                                          ; $5ed9: $6b
	ld h, d                                          ; $5eda: $62
	add b                                            ; $5edb: $80
	rst $38                                          ; $5edc: $ff
	ldh a, [$f2]                                     ; $5edd: $f0 $f2
	jp $f0c0                                         ; $5edf: $c3 $c0 $f0


jr_03f_5ee2:
	rst $38                                          ; $5ee2: $ff
	ret nz                                           ; $5ee3: $c0

	rst $38                                          ; $5ee4: $ff
	rra                                              ; $5ee5: $1f
	daa                                              ; $5ee6: $27
	inc hl                                           ; $5ee7: $23
	ld h, d                                          ; $5ee8: $62
	ld [hl], h                                       ; $5ee9: $74
	sbc a                                            ; $5eea: $9f

jr_03f_5eeb:
	add b                                            ; $5eeb: $80
	ld a, [hl]                                       ; $5eec: $7e
	rst $38                                          ; $5eed: $ff
	ld [hl], e                                       ; $5eee: $73
	ld b, $7b                                        ; $5eef: $06 $7b
	ld [hl], e                                       ; $5ef1: $73
	dec h                                            ; $5ef2: $25
	inc [hl]                                         ; $5ef3: $34
	ld a, [de]                                       ; $5ef4: $1a
	sbc a                                            ; $5ef5: $9f
	sbc $da                                          ; $5ef6: $de $da
	ld h, b                                          ; $5ef8: $60
	ld sp, $9dc3                                     ; $5ef9: $31 $c3 $9d
	ld b, e                                          ; $5efc: $43
	ld l, $7b                                        ; $5efd: $2e $7b
	ld l, [hl]                                       ; $5eff: $6e
	ld a, a                                          ; $5f00: $7f
	ld h, c                                          ; $5f01: $61
	sub h                                            ; $5f02: $94
	ccf                                              ; $5f03: $3f
	rra                                              ; $5f04: $1f
	adc a                                            ; $5f05: $8f
	ldh [c], a                                       ; $5f06: $e2
	ld [hl], d                                       ; $5f07: $72
	ld de, $e121                                     ; $5f08: $11 $21 $e1
	pop af                                           ; $5f0b: $f1
	ldh a, [$78]                                     ; $5f0c: $f0 $78
	ld c, a                                          ; $5f0e: $4f
	jr nz, @-$1f                                     ; $5f0f: $20 $df

	add b                                            ; $5f11: $80
	jp c, $9ef8                                      ; $5f12: $da $f8 $9e

	ld a, [$ddf9]                                    ; $5f15: $fa $f9 $dd
	ld a, a                                          ; $5f18: $7f
	sbc e                                            ; $5f19: $9b
	ld b, b                                          ; $5f1a: $40
	ld hl, sp-$32                                    ; $5f1b: $f8 $ce
	jp $3fdd                                         ; $5f1d: $c3 $dd $3f


	sbc e                                            ; $5f20: $9b
	nop                                              ; $5f21: $00
	jr c, jr_03f_5f52                                ; $5f22: $38 $2e

	inc sp                                           ; $5f24: $33
	ld [hl], d                                       ; $5f25: $72
	jp nz, $fcdf                                     ; $5f26: $c2 $df $fc

	sbc l                                            ; $5f29: $9d
	rst $38                                          ; $5f2a: $ff
	add [hl]                                         ; $5f2b: $86
	ld a, e                                          ; $5f2c: $7b
	ld sp, hl                                        ; $5f2d: $f9
	sbc d                                            ; $5f2e: $9a
	ld [bc], a                                       ; $5f2f: $02
	dec b                                            ; $5f30: $05
	inc b                                            ; $5f31: $04
	add e                                            ; $5f32: $83
	db $fd                                           ; $5f33: $fd
	ld a, c                                          ; $5f34: $79
	ld l, b                                          ; $5f35: $68
	sbc d                                            ; $5f36: $9a
	inc l                                            ; $5f37: $2c
	ret nz                                           ; $5f38: $c0

	rst $38                                          ; $5f39: $ff

jr_03f_5f3a:
	nop                                              ; $5f3a: $00
	sbc e                                            ; $5f3b: $9b
	ld a, b                                          ; $5f3c: $78
	ld l, [hl]                                       ; $5f3d: $6e
	sbc l                                            ; $5f3e: $9d
	ld hl, $7241                                     ; $5f3f: $21 $41 $72
	or e                                             ; $5f42: $b3
	sub e                                            ; $5f43: $93
	ld a, a                                          ; $5f44: $7f
	ld e, a                                          ; $5f45: $5f
	rra                                              ; $5f46: $1f
	rst $38                                          ; $5f47: $ff
	ld e, a                                          ; $5f48: $5f
	cp $7e                                           ; $5f49: $fe $7e
	ld a, $3e                                        ; $5f4b: $3e $3e
	ld sp, $e633                                     ; $5f4d: $31 $33 $e6
	ld l, [hl]                                       ; $5f50: $6e
	ret nz                                           ; $5f51: $c0

jr_03f_5f52:
	sbc h                                            ; $5f52: $9c
	rst GetHLinHL                                          ; $5f53: $cf
	rra                                              ; $5f54: $1f
	sbc a                                            ; $5f55: $9f
	cp $9a                                           ; $5f56: $fe $9a
	ccf                                              ; $5f58: $3f
	rst GetHLinHL                                          ; $5f59: $cf
	dec bc                                           ; $5f5a: $0b
	rlca                                             ; $5f5b: $07
	ld a, [bc]                                       ; $5f5c: $0a
	db $db                                           ; $5f5d: $db
	rst $38                                          ; $5f5e: $ff
	rst SubAFromDE                                          ; $5f5f: $df
	rst AddAOntoHL                                          ; $5f60: $ef
	db $fc                                           ; $5f61: $fc
	sbc $1f                                          ; $5f62: $de $1f
	ld [hl], a                                       ; $5f64: $77
	or b                                             ; $5f65: $b0
	sbc $fc                                          ; $5f66: $de $fc
	ld a, a                                          ; $5f68: $7f
	cp c                                             ; $5f69: $b9
	ld a, d                                          ; $5f6a: $7a
	rst AddAOntoHL                                          ; $5f6b: $ef
	ld a, [hl]                                       ; $5f6c: $7e
	adc [hl]                                         ; $5f6d: $8e
	ld a, e                                          ; $5f6e: $7b
	xor e                                            ; $5f6f: $ab
	sbc e                                            ; $5f70: $9b
	cp $18                                           ; $5f71: $fe $18
	jr nc, jr_03f_5f75                               ; $5f73: $30 $00

jr_03f_5f75:
	ld a, d                                          ; $5f75: $7a
	cp a                                             ; $5f76: $bf
	ld a, a                                          ; $5f77: $7f
	ld [hl], $6b                                     ; $5f78: $36 $6b
	inc de                                           ; $5f7a: $13
	sbc h                                            ; $5f7b: $9c
	cp $3f                                           ; $5f7c: $fe $3f
	rrca                                             ; $5f7e: $0f
	ld a, e                                          ; $5f7f: $7b
	ld hl, sp-$62                                    ; $5f80: $f8 $9e
	rlca                                             ; $5f82: $07
	ld [hl], e                                       ; $5f83: $73
	ld e, [hl]                                       ; $5f84: $5e
	rst SubAFromDE                                          ; $5f85: $df
	rst $38                                          ; $5f86: $ff
	sub e                                            ; $5f87: $93
	ld hl, sp-$02                                    ; $5f88: $f8 $fe
	ld a, $fe                                        ; $5f8a: $3e $fe
	db $fc                                           ; $5f8c: $fc
	ld b, $fa                                        ; $5f8d: $06 $fa
	ei                                               ; $5f8f: $fb
	ei                                               ; $5f90: $fb
	cp $f2                                           ; $5f91: $fe $f2
	ld [bc], a                                       ; $5f93: $02
	halt                                             ; $5f94: $76
	xor b                                            ; $5f95: $a8
	sbc b                                            ; $5f96: $98
	rlca                                             ; $5f97: $07
	ccf                                              ; $5f98: $3f
	ld [hl], d                                       ; $5f99: $72
	ld l, c                                          ; $5f9a: $69
	ld [hl], h                                       ; $5f9b: $74
	ld a, [hl-]                                      ; $5f9c: $3a
	rst $38                                          ; $5f9d: $ff
	ld a, e                                          ; $5f9e: $7b
	dec l                                            ; $5f9f: $2d
	sbc $7f                                          ; $5fa0: $de $7f
	sbc l                                            ; $5fa2: $9d
	sbc a                                            ; $5fa3: $9f
	ld c, a                                          ; $5fa4: $4f
	call c, $9aff                                    ; $5fa5: $dc $ff $9a
	ld c, a                                          ; $5fa8: $4f
	sub a                                            ; $5fa9: $97
	ld c, e                                          ; $5faa: $4b
	push de                                          ; $5fab: $d5
	ld a, [$4766]                                    ; $5fac: $fa $66 $47
	sbc e                                            ; $5faf: $9b
	ld l, b                                          ; $5fb0: $68
	and b                                            ; $5fb1: $a0
	ldh a, [$fc]                                     ; $5fb2: $f0 $fc
	ld [hl], a                                       ; $5fb4: $77
	db $f4                                           ; $5fb5: $f4
	sbc e                                            ; $5fb6: $9b
	ld bc, $e0c0                                     ; $5fb7: $01 $c0 $e0
	ld hl, sp+$73                                    ; $5fba: $f8 $73
	ld hl, sp-$22                                    ; $5fbc: $f8 $de
	ld bc, $0592                                     ; $5fbe: $01 $92 $05
	ld bc, $8585                                     ; $5fc1: $01 $85 $85
	db $fd                                           ; $5fc4: $fd
	db $fd                                           ; $5fc5: $fd
	ld a, l                                          ; $5fc6: $7d
	ld a, l                                          ; $5fc7: $7d
	dec a                                            ; $5fc8: $3d
	dec a                                            ; $5fc9: $3d
	cp l                                             ; $5fca: $bd
	cp l                                             ; $5fcb: $bd
	ld sp, hl                                        ; $5fcc: $f9
	sbc $3f                                          ; $5fcd: $de $3f
	ld a, [hl]                                       ; $5fcf: $7e
	db $ed                                           ; $5fd0: $ed
	sbc e                                            ; $5fd1: $9b
	rrca                                             ; $5fd2: $0f
	rla                                              ; $5fd3: $17
	rst $38                                          ; $5fd4: $ff
	ret nz                                           ; $5fd5: $c0

	ld a, d                                          ; $5fd6: $7a
	ld h, [hl]                                       ; $5fd7: $66
	add b                                            ; $5fd8: $80
	ret c                                            ; $5fd9: $d8

	rst GetHLinHL                                          ; $5fda: $cf
	rst SubAFromHL                                          ; $5fdb: $d7
	rst $38                                          ; $5fdc: $ff
	rst $38                                          ; $5fdd: $ff
	rst FarCall                                          ; $5fde: $f7
	jp $fee1                                         ; $5fdf: $c3 $e1 $fe


	db $fc                                           ; $5fe2: $fc
	db $fd                                           ; $5fe3: $fd
	ld bc, $3c00                                     ; $5fe4: $01 $00 $3c
	daa                                              ; $5fe7: $27
	jr nc, jr_03f_6008                               ; $5fe8: $30 $1e

	db $fd                                           ; $5fea: $fd
	rst $38                                          ; $5feb: $ff
	call c, $fcfc                                    ; $5fec: $dc $fc $fc
	pop af                                           ; $5fef: $f1
	ld hl, sp+$00                                    ; $5ff0: $f8 $00
	rst $38                                          ; $5ff2: $ff
	nop                                              ; $5ff3: $00
	and h                                            ; $5ff4: $a4
	ld h, h                                          ; $5ff5: $64
	ld [$961e], sp                                   ; $5ff6: $08 $1e $96
	cp a                                             ; $5ff9: $bf
	ld b, e                                          ; $5ffa: $43
	rst $38                                          ; $5ffb: $ff
	rst $38                                          ; $5ffc: $ff
	ld h, a                                          ; $5ffd: $67
	scf                                              ; $5ffe: $37
	inc de                                           ; $5fff: $13
	add hl, bc                                       ; $6000: $09
	jr nz, jr_03f_607e                               ; $6001: $20 $7b

	ldh a, [$df]                                     ; $6003: $f0 $df
	dec a                                            ; $6005: $3d
	sbc h                                            ; $6006: $9c
	ccf                                              ; $6007: $3f

jr_03f_6008:
	cpl                                              ; $6008: $2f
	ret nz                                           ; $6009: $c0

	sbc $ff                                          ; $600a: $de $ff
	adc b                                            ; $600c: $88
	ld b, b                                          ; $600d: $40
	ld a, $3f                                        ; $600e: $3e $3f
	sbc a                                            ; $6010: $9f
	sbc a                                            ; $6011: $9f
	rrca                                             ; $6012: $0f
	rst FarCall                                          ; $6013: $f7
	rst SubAFromHL                                          ; $6014: $d7
	rst $38                                          ; $6015: $ff
	pop hl                                           ; $6016: $e1
	sub b                                            ; $6017: $90
	db $10                                           ; $6018: $10
	jr nc, @-$0e                                     ; $6019: $30 $f0

	rst AddAOntoHL                                          ; $601b: $ef
	ccf                                              ; $601c: $3f
	inc bc                                           ; $601d: $03
	ld bc, $e784                                     ; $601e: $01 $84 $e7
	ei                                               ; $6021: $fb
	cp $fe                                           ; $6022: $fe $fe
	sbc $f8                                          ; $6024: $de $f8
	sbc h                                            ; $6026: $9c
	ld a, b                                          ; $6027: $78
	inc e                                            ; $6028: $1c
	rlca                                             ; $6029: $07
	ld a, d                                          ; $602a: $7a
	ld h, d                                          ; $602b: $62
	ld a, [hl]                                       ; $602c: $7e
	ld a, $dd                                        ; $602d: $3e $dd
	cp $df                                           ; $602f: $fe $df
	ld a, $9d                                        ; $6031: $3e $9d
	inc e                                            ; $6033: $1c
	rra                                              ; $6034: $1f
	sbc $11                                          ; $6035: $de $11
	rst SubAFromDE                                          ; $6037: $df
	pop de                                           ; $6038: $d1
	sbc h                                            ; $6039: $9c
	rst SubAFromDE                                          ; $603a: $df
	rst $38                                          ; $603b: $ff
	adc e                                            ; $603c: $8b
	db $dd                                           ; $603d: $dd
	rst $38                                          ; $603e: $ff
	sub a                                            ; $603f: $97
	ei                                               ; $6040: $fb
	ld a, [$f6fe]                                    ; $6041: $fa $fe $f6
	cp $82                                           ; $6044: $fe $82
	add e                                            ; $6046: $83
	ldh [c], a                                       ; $6047: $e2
	ld l, h                                          ; $6048: $6c
	sbc e                                            ; $6049: $9b
	sub h                                            ; $604a: $94
	rst FarCall                                          ; $604b: $f7
	push af                                          ; $604c: $f5
	db $f4                                           ; $604d: $f4
	inc b                                            ; $604e: $04
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00
	jr nc, jr_03f_6071                               ; $6051: $30 $1e

	rst $38                                          ; $6053: $ff
	rlca                                             ; $6054: $07
	rst FarCall                                          ; $6055: $f7
	jp c, $98ff                                      ; $6056: $da $ff $98

	ld a, a                                          ; $6059: $7f
	rrca                                             ; $605a: $0f
	dec b                                            ; $605b: $05
	ld c, $0f                                        ; $605c: $0e $0f
	ld c, $cf                                        ; $605e: $0e $cf
	ld a, e                                          ; $6060: $7b
	ld hl, sp-$64                                    ; $6061: $f8 $9c
	adc $d8                                          ; $6063: $ce $d8
	di                                               ; $6065: $f3
	ld l, [hl]                                       ; $6066: $6e
	ld h, b                                          ; $6067: $60
	sub b                                            ; $6068: $90
	add b                                            ; $6069: $80
	ld bc, $4982                                     ; $606a: $01 $82 $49
	or a                                             ; $606d: $b7
	rst GetHLinHL                                          ; $606e: $cf
	rst $38                                          ; $606f: $ff
	rst AddAOntoHL                                          ; $6070: $ef

jr_03f_6071:
	ldh [rIE], a                                     ; $6071: $e0 $ff
	db $fc                                           ; $6073: $fc
	ld hl, sp-$0f                                    ; $6074: $f8 $f1
	ldh [$e4], a                                     ; $6076: $e0 $e4
	ld a, c                                          ; $6078: $79
	xor c                                            ; $6079: $a9
	db $fd                                           ; $607a: $fd
	sbc b                                            ; $607b: $98
	inc bc                                           ; $607c: $03
	db $fc                                           ; $607d: $fc

jr_03f_607e:
	nop                                              ; $607e: $00
	db $fc                                           ; $607f: $fc
	ld a, [hl]                                       ; $6080: $7e
	rst SubAFromDE                                          ; $6081: $df
	adc a                                            ; $6082: $8f
	halt                                             ; $6083: $76
	push hl                                          ; $6084: $e5
	rst $38                                          ; $6085: $ff
	ld a, h                                          ; $6086: $7c
	add b                                            ; $6087: $80
	ld [hl], d                                       ; $6088: $72
	adc $7e                                          ; $6089: $ce $7e
	rst GetHLinHL                                          ; $608b: $cf
	ld a, a                                          ; $608c: $7f
	ld hl, sp-$64                                    ; $608d: $f8 $9c
	ld a, a                                          ; $608f: $7f
	db $fc                                           ; $6090: $fc
	add b                                            ; $6091: $80
	ld [hl], l                                       ; $6092: $75
	dec c                                            ; $6093: $0d
	ld a, a                                          ; $6094: $7f
	jp z, $236a                                      ; $6095: $ca $6a $23

	ld a, c                                          ; $6098: $79
	call nz, $1d72                                   ; $6099: $c4 $72 $1d
	sbc l                                            ; $609c: $9d

Call_03f_609d:
	ld a, $fb                                        ; $609d: $3e $fb
	ld a, d                                          ; $609f: $7a
	bit 7, e                                         ; $60a0: $cb $7b
	or $9c                                           ; $60a2: $f6 $9c
	ld a, a                                          ; $60a4: $7f
	rlca                                             ; $60a5: $07
	rlca                                             ; $60a6: $07
	ld l, [hl]                                       ; $60a7: $6e
	dec c                                            ; $60a8: $0d
	ld a, c                                          ; $60a9: $79
	ld l, l                                          ; $60aa: $6d
	ld a, d                                          ; $60ab: $7a
	cp d                                             ; $60ac: $ba
	ld [hl], a                                       ; $60ad: $77
	ei                                               ; $60ae: $fb
	ld a, a                                          ; $60af: $7f
	bit 6, e                                         ; $60b0: $cb $73
	ldh a, [$7e]                                     ; $60b2: $f0 $7e
	ldh a, [c]                                       ; $60b4: $f2
	sbc d                                            ; $60b5: $9a
	rst AddAOntoHL                                          ; $60b6: $ef
	rst SubAFromBC                                          ; $60b7: $e7
	rst SubAFromBC                                          ; $60b8: $e7
	db $e3                                           ; $60b9: $e3
	db $e3                                           ; $60ba: $e3
	ld [hl], c                                       ; $60bb: $71
	ld b, [hl]                                       ; $60bc: $46
	sbc $1f                                          ; $60bd: $de $1f
	ld a, [hl]                                       ; $60bf: $7e
	and [hl]                                         ; $60c0: $a6
	ld a, a                                          ; $60c1: $7f
	ld c, l                                          ; $60c2: $4d
	ld a, e                                          ; $60c3: $7b
	ld d, b                                          ; $60c4: $50
	sbc [hl]                                         ; $60c5: $9e
	ei                                               ; $60c6: $fb
	reti                                             ; $60c7: $d9


	rst $38                                          ; $60c8: $ff
	sbc d                                            ; $60c9: $9a
	add c                                            ; $60ca: $81
	pop bc                                           ; $60cb: $c1
	pop bc                                           ; $60cc: $c1
	db $e3                                           ; $60cd: $e3
	ldh [$de], a                                     ; $60ce: $e0 $de
	ldh a, [hDisp1_WX]                                     ; $60d0: $f0 $96
	sbc l                                            ; $60d2: $9d
	db $dd                                           ; $60d3: $dd
	push bc                                          ; $60d4: $c5
	rst SubAFromBC                                          ; $60d5: $e7
	rst SubAFromBC                                          ; $60d6: $e7
	di                                               ; $60d7: $f3
	pop af                                           ; $60d8: $f1
	pop af                                           ; $60d9: $f1
	inc de                                           ; $60da: $13
	db $dd                                           ; $60db: $dd
	ld [de], a                                       ; $60dc: $12
	sub d                                            ; $60dd: $92
	dec de                                           ; $60de: $1b
	ld [bc], a                                       ; $60df: $02
	ld [de], a                                       ; $60e0: $12
	db $d3                                           ; $60e1: $d3
	jp c, $dbdb                                      ; $60e2: $da $db $db

	jp nc, $cbdb                                     ; $60e5: $d2 $db $cb

	db $d3                                           ; $60e8: $d3
	db $fd                                           ; $60e9: $fd
	ld bc, $7fde                                     ; $60ea: $01 $de $7f
	ld a, c                                          ; $60ed: $79
	sbc a                                            ; $60ee: $9f
	sub a                                            ; $60ef: $97
	rst $38                                          ; $60f0: $ff
	inc bc                                           ; $60f1: $03
	add b                                            ; $60f2: $80
	ret nz                                           ; $60f3: $c0

	ld h, b                                          ; $60f4: $60
	ldh a, [$f8]                                     ; $60f5: $f0 $f8
	cp h                                             ; $60f7: $bc
	ld b, h                                          ; $60f8: $44
	ret nz                                           ; $60f9: $c0

	sbc [hl]                                         ; $60fa: $9e
	rrca                                             ; $60fb: $0f
	db $db                                           ; $60fc: $db
	rst $38                                          ; $60fd: $ff
	sbc l                                            ; $60fe: $9d
	cp $f0                                           ; $60ff: $fe $f0
	ld a, [$f79e]                                    ; $6101: $fa $9e $f7
	ld a, b                                          ; $6104: $78
	ld d, b                                          ; $6105: $50
	ld [hl], a                                       ; $6106: $77
	ldh [c], a                                       ; $6107: $e2
	rst SubAFromDE                                          ; $6108: $df
	rrca                                             ; $6109: $0f
	ld l, a                                          ; $610a: $6f
	add c                                            ; $610b: $81
	ld a, d                                          ; $610c: $7a
	sub h                                            ; $610d: $94
	ld [hl], a                                       ; $610e: $77
	ldh a, [$7b]                                     ; $610f: $f0 $7b
	reti                                             ; $6111: $d9


	db $fd                                           ; $6112: $fd
	sbc e                                            ; $6113: $9b
	ld c, h                                          ; $6114: $4c
	rst $38                                          ; $6115: $ff
	jr c, jr_03f_613e                                ; $6116: $38 $26

	ld [hl], e                                       ; $6118: $73
	ldh a, [$7b]                                     ; $6119: $f0 $7b
	ld a, d                                          ; $611b: $7a
	ld [hl], c                                       ; $611c: $71
	ld [hl], d                                       ; $611d: $72
	sub a                                            ; $611e: $97
	rst $38                                          ; $611f: $ff
	add d                                            ; $6120: $82
	add d                                            ; $6121: $82
	jp nz, $fcf2                                     ; $6122: $c2 $f2 $fc

	rst $38                                          ; $6125: $ff
	ld a, a                                          ; $6126: $7f
	ld a, b                                          ; $6127: $78
	ld a, [hl]                                       ; $6128: $7e
	ld a, a                                          ; $6129: $7f
	add hl, de                                       ; $612a: $19
	ld a, l                                          ; $612b: $7d
	add l                                            ; $612c: $85
	ld a, a                                          ; $612d: $7f
	sbc h                                            ; $612e: $9c
	sbc h                                            ; $612f: $9c
	inc b                                            ; $6130: $04
	inc c                                            ; $6131: $0c
	inc b                                            ; $6132: $04
	sbc $0c                                          ; $6133: $de $0c
	sbc [hl]                                         ; $6135: $9e
	rst SubAFromBC                                          ; $6136: $e7
	jp c, $9af7                                      ; $6137: $da $f7 $9a

	rla                                              ; $613a: $17
	inc b                                            ; $613b: $04
	rrca                                             ; $613c: $0f
	rrca                                             ; $613d: $0f

jr_03f_613e:
	rlca                                             ; $613e: $07
	ld a, b                                          ; $613f: $78
	pop de                                           ; $6140: $d1
	sbc h                                            ; $6141: $9c
	rst $38                                          ; $6142: $ff
	di                                               ; $6143: $f3
	adc a                                            ; $6144: $8f
	db $db                                           ; $6145: $db
	rst $38                                          ; $6146: $ff
	ld l, e                                          ; $6147: $6b
	sub c                                            ; $6148: $91
	ret c                                            ; $6149: $d8

	rst $38                                          ; $614a: $ff
	sbc l                                            ; $614b: $9d
	cp $c7                                           ; $614c: $fe $c7
	db $dd                                           ; $614e: $dd
	rst SubAFromDE                                          ; $614f: $df
	sbc h                                            ; $6150: $9c
	sbc a                                            ; $6151: $9f
	rst GetHLinHL                                          ; $6152: $cf
	rra                                              ; $6153: $1f
	db $db                                           ; $6154: $db
	rst GetHLinHL                                          ; $6155: $cf
	sbc [hl]                                         ; $6156: $9e
	rst SubAFromDE                                          ; $6157: $df
	ld [hl], a                                       ; $6158: $77
	sub d                                            ; $6159: $92
	ld l, l                                          ; $615a: $6d
	push de                                          ; $615b: $d5
	ld a, [hl]                                       ; $615c: $7e
	ld bc, $f19e                                     ; $615d: $01 $9e $f1
	ld [hl], e                                       ; $6160: $73
	sub a                                            ; $6161: $97
	ld a, a                                          ; $6162: $7f
	call $9479                                       ; $6163: $cd $79 $94
	ld [hl], a                                       ; $6166: $77
	or $7f                                           ; $6167: $f6 $7f
	ld b, e                                          ; $6169: $43
	ld a, a                                          ; $616a: $7f
	sbc b                                            ; $616b: $98
	ld [hl], d                                       ; $616c: $72
	ldh [c], a                                       ; $616d: $e2
	db $db                                           ; $616e: $db
	rst $38                                          ; $616f: $ff
	ld [hl], h                                       ; $6170: $74
	ld c, a                                          ; $6171: $4f
	sbc h                                            ; $6172: $9c
	ret nz                                           ; $6173: $c0

	ld hl, sp+$00                                    ; $6174: $f8 $00
	sbc $bf                                          ; $6176: $de $bf
	sbc b                                            ; $6178: $98
	and b                                            ; $6179: $a0
	cp a                                             ; $617a: $bf
	and b                                            ; $617b: $a0
	and b                                            ; $617c: $a0
	ld hl, sp-$01                                    ; $617d: $f8 $ff
	cp a                                             ; $617f: $bf
	sbc $ff                                          ; $6180: $de $ff
	rst SubAFromDE                                          ; $6182: $df
	rst SubAFromDE                                          ; $6183: $df
	ld l, a                                          ; $6184: $6f
	ld d, d                                          ; $6185: $52
	ld a, l                                          ; $6186: $7d
	ld b, a                                          ; $6187: $47
	ld l, e                                          ; $6188: $6b
	ret c                                            ; $6189: $d8

	ld a, a                                          ; $618a: $7f
	db $db                                           ; $618b: $db
	sbc $e3                                          ; $618c: $de $e3
	ld a, h                                          ; $618e: $7c
	xor b                                            ; $618f: $a8
	sbc l                                            ; $6190: $9d
	pop hl                                           ; $6191: $e1
	ldh [$6c], a                                     ; $6192: $e0 $6c
	ld l, b                                          ; $6194: $68
	ld a, c                                          ; $6195: $79
	and a                                            ; $6196: $a7
	rst SubAFromDE                                          ; $6197: $df
	ei                                               ; $6198: $fb
	db $dd                                           ; $6199: $dd
	db $fd                                           ; $619a: $fd
	sbc l                                            ; $619b: $9d
	sub c                                            ; $619c: $91
	ld [$ffda], sp                                   ; $619d: $08 $da $ff
	sbc [hl]                                         ; $61a0: $9e
	sbc a                                            ; $61a1: $9f
	db $dd                                           ; $61a2: $dd
	ld hl, sp-$6f                                    ; $61a3: $f8 $91
	ld bc, $8204                                     ; $61a5: $01 $04 $82
	jp $f9f9                                         ; $61a8: $c3 $f9 $f9


	db $fc                                           ; $61ab: $fc
	cp $fe                                           ; $61ac: $fe $fe
	rrca                                             ; $61ae: $0f
	jp $02e1                                         ; $61af: $c3 $e1 $02


	ld [hl+], a                                      ; $61b2: $22
	db $db                                           ; $61b3: $db
	ld [bc], a                                       ; $61b4: $02
	sbc d                                            ; $61b5: $9a
	db $db                                           ; $61b6: $db
	ei                                               ; $61b7: $fb
	ei                                               ; $61b8: $fb
	ld a, e                                          ; $61b9: $7b
	ld a, e                                          ; $61ba: $7b
	sbc $fb                                          ; $61bb: $de $fb
	rst SubAFromDE                                          ; $61bd: $df
	rrca                                             ; $61be: $0f
	sub c                                            ; $61bf: $91
	daa                                              ; $61c0: $27
	inc sp                                           ; $61c1: $33
	dec hl                                           ; $61c2: $2b
	inc hl                                           ; $61c3: $23
	ld [hl+], a                                      ; $61c4: $22
	ld [hl+], a                                      ; $61c5: $22
	cp a                                             ; $61c6: $bf
	xor a                                            ; $61c7: $af
	xor a                                            ; $61c8: $af
	and a                                            ; $61c9: $a7
	or e                                             ; $61ca: $b3
	cp d                                             ; $61cb: $ba
	cp e                                             ; $61cc: $bb
	cp e                                             ; $61cd: $bb
	ld h, [hl]                                       ; $61ce: $66
	jp nz, $f96f                                     ; $61cf: $c2 $6f $f9

	rst SubAFromDE                                          ; $61d2: $df
	rst $38                                          ; $61d3: $ff
	db $db                                           ; $61d4: $db
	db $fc                                           ; $61d5: $fc
	ld [hl], a                                       ; $61d6: $77
	ldh a, [$de]                                     ; $61d7: $f0 $de
	db $fd                                           ; $61d9: $fd
	sbc h                                            ; $61da: $9c
	ld bc, $fdfd                                     ; $61db: $01 $fd $fd
	ld a, b                                          ; $61de: $78
	push de                                          ; $61df: $d5
	ld a, c                                          ; $61e0: $79
	rst AddAOntoHL                                          ; $61e1: $ef
	sbc e                                            ; $61e2: $9b
	ldh a, [$e0]                                     ; $61e3: $f0 $e0
	rst $38                                          ; $61e5: $ff
	ret nz                                           ; $61e6: $c0

	db $db                                           ; $61e7: $db
	add b                                            ; $61e8: $80
	ld a, e                                          ; $61e9: $7b
	scf                                              ; $61ea: $37
	ld a, d                                          ; $61eb: $7a
	inc d                                            ; $61ec: $14
	halt                                             ; $61ed: $76
	jr z, jr_03f_6268                                ; $61ee: $28 $78

	ld d, b                                          ; $61f0: $50
	ld [hl], b                                       ; $61f1: $70
	call Call_03f_759d                               ; $61f2: $cd $9d $75
	ld b, b                                          ; $61f5: $40
	ld [hl], e                                       ; $61f6: $73
	ld hl, sp-$63                                    ; $61f7: $f8 $9d
	ld bc, $7280                                     ; $61f9: $01 $80 $72
	rra                                              ; $61fc: $1f
	db $db                                           ; $61fd: $db
	cp a                                             ; $61fe: $bf
	sbc l                                            ; $61ff: $9d
	and b                                            ; $6200: $a0
	and e                                            ; $6201: $a3
	ld a, e                                          ; $6202: $7b
	ld b, h                                          ; $6203: $44
	rst SubAFromDE                                          ; $6204: $df
	rst SubAFromDE                                          ; $6205: $df
	sub c                                            ; $6206: $91
	ret nz                                           ; $6207: $c0

	rst SubAFromDE                                          ; $6208: $df
	sbc $fe                                          ; $6209: $de $fe
	di                                               ; $620b: $f3
	pop af                                           ; $620c: $f1
	ldh [$e0], a                                     ; $620d: $e0 $e0
	ret nz                                           ; $620f: $c0

	add b                                            ; $6210: $80
	add hl, de                                       ; $6211: $19
	rst $38                                          ; $6212: $ff
	ld sp, hl                                        ; $6213: $f9
	ldh a, [$7b]                                     ; $6214: $f0 $7b
	ld sp, hl                                        ; $6216: $f9
	sbc l                                            ; $6217: $9d
	nop                                              ; $6218: $00
	ld b, $79                                        ; $6219: $06 $79
	call $c09e                                       ; $621b: $cd $9e $c0
	db $dd                                           ; $621e: $dd
	ld b, b                                          ; $621f: $40
	sbc h                                            ; $6220: $9c
	rst SubAFromDE                                          ; $6221: $df
	rst AddAOntoHL                                          ; $6222: $ef
	rst FarCall                                          ; $6223: $f7
	sbc $77                                          ; $6224: $de $77
	sbc e                                            ; $6226: $9b
	ld [hl], e                                       ; $6227: $73
	ld a, c                                          ; $6228: $79
	db $fd                                           ; $6229: $fd
	ld hl, sp-$05                                    ; $622a: $f8 $fb
	ld h, h                                          ; $622c: $64
	or b                                             ; $622d: $b0
	ld a, l                                          ; $622e: $7d
	push de                                          ; $622f: $d5
	ld l, c                                          ; $6230: $69
	ret                                              ; $6231: $c9


	ld l, a                                          ; $6232: $6f
	ld sp, hl                                        ; $6233: $f9
	ld h, [hl]                                       ; $6234: $66
	daa                                              ; $6235: $27
	rra                                              ; $6236: $1f
	ldh a, [$7a]                                     ; $6237: $f0 $7a
	ld d, h                                          ; $6239: $54
	ld a, [hl]                                       ; $623a: $7e
	ld a, [$379d]                                    ; $623b: $fa $9d $37
	add e                                            ; $623e: $83
	ei                                               ; $623f: $fb
	ld a, [hl]                                       ; $6240: $7e
	cp a                                             ; $6241: $bf
	ld a, e                                          ; $6242: $7b
	sbc e                                            ; $6243: $9b
	ld a, b                                          ; $6244: $78
	sub a                                            ; $6245: $97
	ld a, [hl]                                       ; $6246: $7e
	and l                                            ; $6247: $a5
	jp hl                                            ; $6248: $e9


	rst SubAFromDE                                          ; $6249: $df
	ld bc, $d869                                     ; $624a: $01 $69 $d8
	jp c, Jump_03f_7f0f                              ; $624d: $da $0f $7f

	ld [hl], c                                       ; $6250: $71
	sbc l                                            ; $6251: $9d
	rst JumpTable                                          ; $6252: $c7
	ld a, a                                          ; $6253: $7f
	ld [hl], l                                       ; $6254: $75
	dec d                                            ; $6255: $15
	sbc h                                            ; $6256: $9c
	add a                                            ; $6257: $87
	jp Jump_03f_71e1                                 ; $6258: $c3 $e1 $71


	ld a, h                                          ; $625b: $7c
	sbc [hl]                                         ; $625c: $9e
	ld [hl], a                                       ; $625d: $77
	ld l, l                                          ; $625e: $6d
	ld [$0096], sp                                   ; $625f: $08 $96 $00
	ld sp, hl                                        ; $6262: $f9
	rst $38                                          ; $6263: $ff
	ld a, [$faf5]                                    ; $6264: $fa $f5 $fa
	db $fd                                           ; $6267: $fd

jr_03f_6268:
	ld a, [$7bfd]                                    ; $6268: $fa $fd $7b
	ld c, a                                          ; $626b: $4f
	ld l, a                                          ; $626c: $6f
	sub [hl]                                         ; $626d: $96
	sub h                                            ; $626e: $94
	ld a, a                                          ; $626f: $7f
	xor a                                            ; $6270: $af
	ld d, a                                          ; $6271: $57
	dec hl                                           ; $6272: $2b
	dec d                                            ; $6273: $15
	dec bc                                           ; $6274: $0b
	dec b                                            ; $6275: $05
	ld [hl+], a                                      ; $6276: $22
	dec de                                           ; $6277: $1b
	ld [bc], a                                       ; $6278: $02
	ld h, d                                          ; $6279: $62
	db $dd                                           ; $627a: $dd
	ld [bc], a                                       ; $627b: $02
	sbc b                                            ; $627c: $98
	and d                                            ; $627d: $a2
	sbc e                                            ; $627e: $9b
	sbc e                                            ; $627f: $9b
	db $eb                                           ; $6280: $eb
	db $eb                                           ; $6281: $eb
	di                                               ; $6282: $f3
	di                                               ; $6283: $f3
	ld a, e                                          ; $6284: $7b
	call z, $827f                                    ; $6285: $cc $7f $82
	ld [hl], e                                       ; $6288: $73
	cp b                                             ; $6289: $b8
	ld a, e                                          ; $628a: $7b
	adc h                                            ; $628b: $8c
	ld a, a                                          ; $628c: $7f
	inc a                                            ; $628d: $3c
	sbc l                                            ; $628e: $9d
	ei                                               ; $628f: $fb
	ld sp, hl                                        ; $6290: $f9
	ld c, l                                          ; $6291: $4d
	ld [hl], b                                       ; $6292: $70
	ld a, a                                          ; $6293: $7f
	ld [hl], h                                       ; $6294: $74
	call c, Call_03f_7aff                            ; $6295: $dc $ff $7a
	db $fd                                           ; $6298: $fd
	cp $9a                                           ; $6299: $fe $9a
	inc e                                            ; $629b: $1c
	inc hl                                           ; $629c: $23
	jr nz, @+$62                                     ; $629d: $20 $60

	ld b, b                                          ; $629f: $40
	ld l, b                                          ; $62a0: $68
	add b                                            ; $62a1: $80
	sbc [hl]                                         ; $62a2: $9e
	dec bc                                           ; $62a3: $0b
	ld l, a                                          ; $62a4: $6f
	ld d, c                                          ; $62a5: $51
	sbc l                                            ; $62a6: $9d
	ccf                                              ; $62a7: $3f
	inc d                                            ; $62a8: $14
	db $db                                           ; $62a9: $db
	rst $38                                          ; $62aa: $ff
	ld l, e                                          ; $62ab: $6b
	ld d, c                                          ; $62ac: $51
	adc e                                            ; $62ad: $8b
	rra                                              ; $62ae: $1f
	ldh [rP1], a                                     ; $62af: $e0 $00
	cp $fc                                           ; $62b1: $fe $fc
	ldh a, [c]                                       ; $62b3: $f2
	pop af                                           ; $62b4: $f1
	ld hl, sp-$24                                    ; $62b5: $f8 $dc
	adc $0e                                          ; $62b7: $ce $0e
	inc b                                            ; $62b9: $04
	inc c                                            ; $62ba: $0c
	ld e, $3f                                        ; $62bb: $1e $3f
	ld a, a                                          ; $62bd: $7f
	rst GetHLinHL                                          ; $62be: $cf
	inc bc                                           ; $62bf: $03
	inc bc                                           ; $62c0: $03
	ld h, h                                          ; $62c1: $64
	ld a, b                                          ; $62c2: $78
	ld b, a                                          ; $62c3: $47
	sbc d                                            ; $62c4: $9a
	adc l                                            ; $62c5: $8d
	ld b, e                                          ; $62c6: $43
	daa                                              ; $62c7: $27
	rra                                              ; $62c8: $1f
	jr @+$7d                                         ; $62c9: $18 $7b

	jp nc, $308c                                     ; $62cb: $d2 $8c $30

	pop bc                                           ; $62ce: $c1
	ldh [c], a                                       ; $62cf: $e2
	db $f4                                           ; $62d0: $f4
	ld h, b                                          ; $62d1: $60
	ld a, h                                          ; $62d2: $7c
	ld a, [hl]                                       ; $62d3: $7e
	rst FarCall                                          ; $62d4: $f7
	pop hl                                           ; $62d5: $e1
	ret nz                                           ; $62d6: $c0

	adc h                                            ; $62d7: $8c
	jr jr_03f_6358                                   ; $62d8: $18 $7e

	ccf                                              ; $62da: $3f
	inc bc                                           ; $62db: $03
	ld b, c                                          ; $62dc: $41
	ret nz                                           ; $62dd: $c0

	add b                                            ; $62de: $80
	ld [$e97b], sp                                   ; $62df: $08 $7b $e9
	ld a, a                                          ; $62e2: $7f
	sbc e                                            ; $62e3: $9b
	sub a                                            ; $62e4: $97
	ldh [$7f], a                                     ; $62e5: $e0 $7f
	ccf                                              ; $62e7: $3f
	rlca                                             ; $62e8: $07
	ld a, a                                          ; $62e9: $7f
	sbc a                                            ; $62ea: $9f
	and $f9                                          ; $62eb: $e6 $f9
	ld [hl], a                                       ; $62ed: $77
	scf                                              ; $62ee: $37
	ld c, e                                          ; $62ef: $4b
	nop                                              ; $62f0: $00
	rst SubAFromDE                                          ; $62f1: $df
	inc [hl]                                         ; $62f2: $34
	sbc l                                            ; $62f3: $9d
	ld b, h                                          ; $62f4: $44
	ld b, l                                          ; $62f5: $45
	db $db                                           ; $62f6: $db
	ld d, l                                          ; $62f7: $55
	ld a, e                                          ; $62f8: $7b
	or $9d                                           ; $62f9: $f6 $9d
	ld b, a                                          ; $62fb: $47
	ld [hl], a                                       ; $62fc: $77
	rla                                              ; $62fd: $17
	or $df                                           ; $62fe: $f6 $df
	ld b, h                                          ; $6300: $44
	sbc [hl]                                         ; $6301: $9e
	ld b, [hl]                                       ; $6302: $46
	db $dd                                           ; $6303: $dd
	ld h, [hl]                                       ; $6304: $66
	rst SubAFromDE                                          ; $6305: $df
	inc [hl]                                         ; $6306: $34
	sbc [hl]                                         ; $6307: $9e
	ld b, e                                          ; $6308: $43
	sbc $44                                          ; $6309: $de $44
	rst SubAFromDE                                          ; $630b: $df
	ld h, [hl]                                       ; $630c: $66
	sbc d                                            ; $630d: $9a
	ld h, h                                          ; $630e: $64
	ld h, [hl]                                       ; $630f: $66
	ld b, h                                          ; $6310: $44
	inc [hl]                                         ; $6311: $34
	ld b, e                                          ; $6312: $43
	ld a, e                                          ; $6313: $7b
	jp nz, $eb7f                                     ; $6314: $c2 $7f $eb

	rst SubAFromDE                                          ; $6317: $df
	ld d, l                                          ; $6318: $55
	db $dd                                           ; $6319: $dd
	ld b, h                                          ; $631a: $44
	sbc [hl]                                         ; $631b: $9e
	ld d, h                                          ; $631c: $54
	ld a, e                                          ; $631d: $7b
	db $eb                                           ; $631e: $eb
	sbc [hl]                                         ; $631f: $9e
	ld d, l                                          ; $6320: $55
	ld a, e                                          ; $6321: $7b
	ei                                               ; $6322: $fb
	sbc [hl]                                         ; $6323: $9e
	ld b, h                                          ; $6324: $44
	ld [hl], a                                       ; $6325: $77
	pop af                                           ; $6326: $f1
	ld a, a                                          ; $6327: $7f
	xor h                                            ; $6328: $ac
	ld [hl], a                                       ; $6329: $77
	or $7b                                           ; $632a: $f6 $7b
	ld a, [$569d]                                    ; $632c: $fa $9d $56

jr_03f_632f:
	ld h, [hl]                                       ; $632f: $66
	ld [hl], e                                       ; $6330: $73
	db $e3                                           ; $6331: $e3
	sbc l                                            ; $6332: $9d
	ld b, l                                          ; $6333: $45
	ld [hl], l                                       ; $6334: $75
	ld a, e                                          ; $6335: $7b
	ldh a, [$9d]                                     ; $6336: $f0 $9d
	ld b, l                                          ; $6338: $45
	ld d, h                                          ; $6339: $54
	dec sp                                           ; $633a: $3b
	add a                                            ; $633b: $87
	pop af                                           ; $633c: $f1
	reti                                             ; $633d: $d9


	cpl                                              ; $633e: $2f
	reti                                             ; $633f: $d9


	add hl, de                                       ; $6340: $19
	sbc h                                            ; $6341: $9c
	ld h, c                                          ; $6342: $61
	ld a, b                                          ; $6343: $78
	ld c, h                                          ; $6344: $4c
	call c, $9d44                                    ; $6345: $dc $44 $9d
	sbc [hl]                                         ; $6348: $9e
	add a                                            ; $6349: $87
	db $db                                           ; $634a: $db
	add e                                            ; $634b: $83
	rst SubAFromDE                                          ; $634c: $df
	sbc a                                            ; $634d: $9f
	db $db                                           ; $634e: $db
	rra                                              ; $634f: $1f
	db $db                                           ; $6350: $db
	ldh [$9d], a                                     ; $6351: $e0 $9d
	ld h, b                                          ; $6353: $60
	jr nz, jr_03f_632f                               ; $6354: $20 $d9

	rst $38                                          ; $6356: $ff
	ld sp, hl                                        ; $6357: $f9

jr_03f_6358:
	inc bc                                           ; $6358: $03
	ldh a, [$73]                                     ; $6359: $f0 $73
	db $f4                                           ; $635b: $f4
	sbc l                                            ; $635c: $9d
	ld a, a                                          ; $635d: $7f
	ld b, b                                          ; $635e: $40
	ld [hl], e                                       ; $635f: $73
	db $f4                                           ; $6360: $f4
	rst $38                                          ; $6361: $ff
	sbc [hl]                                         ; $6362: $9e
	ccf                                              ; $6363: $3f
	ld l, a                                          ; $6364: $6f
	ldh a, [$6f]                                     ; $6365: $f0 $6f
	pop hl                                           ; $6367: $e1
	ld [hl], a                                       ; $6368: $77
	rst FarCall                                          ; $6369: $f7
	cpl                                              ; $636a: $2f
	ldh a, [$9d]                                     ; $636b: $f0 $9d
	ldh [rTAC], a                                    ; $636d: $e0 $07
	ld l, a                                          ; $636f: $6f
	ldh a, [$9d]                                     ; $6370: $f0 $9d

jr_03f_6372:
	rrca                                             ; $6372: $0f
	rst AddAOntoHL                                          ; $6373: $ef
	ld l, e                                          ; $6374: $6b
	or h                                             ; $6375: $b4
	ld [hl], e                                       ; $6376: $73
	rst SubAFromDE                                          ; $6377: $df
	ld a, a                                          ; $6378: $7f
	ei                                               ; $6379: $fb
	ld h, e                                          ; $637a: $63
	and h                                            ; $637b: $a4
	inc bc                                           ; $637c: $03
	ldh a, [$03]                                     ; $637d: $f0 $03
	ldh a, [$03]                                     ; $637f: $f0 $03
	ldh a, [$2f]                                     ; $6381: $f0 $2f
	ldh a, [$f1]                                     ; $6383: $f0 $f1
	reti                                             ; $6385: $d9


	ld l, $d9                                        ; $6386: $2e $d9
	add hl, de                                       ; $6388: $19
	reti                                             ; $6389: $d9


	ld b, h                                          ; $638a: $44
	reti                                             ; $638b: $d9


	add e                                            ; $638c: $83
	rst SubAFromDE                                          ; $638d: $df
	rra                                              ; $638e: $1f
	sbc l                                            ; $638f: $9d
	dec de                                           ; $6390: $1b
	add hl, de                                       ; $6391: $19
	db $dd                                           ; $6392: $dd
	jr @-$25                                         ; $6393: $18 $d9

	jr nz, jr_03f_6372                               ; $6395: $20 $db

	rst $38                                          ; $6397: $ff
	sbc l                                            ; $6398: $9d
	ld a, a                                          ; $6399: $7f
	ccf                                              ; $639a: $3f
	ld [bc], a                                       ; $639b: $02
	ret nz                                           ; $639c: $c0

	ld a, [$40dd]                                    ; $639d: $fa $dd $40
	sbc c                                            ; $63a0: $99
	ld b, a                                          ; $63a1: $47
	ld b, c                                          ; $63a2: $41
	ld b, b                                          ; $63a3: $40
	ld b, b                                          ; $63a4: $40
	ccf                                              ; $63a5: $3f
	ccf                                              ; $63a6: $3f
	sbc $30                                          ; $63a7: $de $30
	sbc h                                            ; $63a9: $9c
	ld [hl], $30                                     ; $63aa: $36 $30
	jr nc, @-$01                                     ; $63ac: $30 $fd

	sbc l                                            ; $63ae: $9d
	ld [hl], b                                       ; $63af: $70
	adc $77                                          ; $63b0: $ce $77
	ret c                                            ; $63b2: $d8

	cp $73                                           ; $63b3: $fe $73
	ldh a, [c]                                       ; $63b5: $f2
	ld c, a                                          ; $63b6: $4f
	ret z                                            ; $63b7: $c8

	reti                                             ; $63b8: $d9


	rlca                                             ; $63b9: $07
	reti                                             ; $63ba: $d9


	rst AddAOntoHL                                          ; $63bb: $ef
	call c, $9cff                                    ; $63bc: $dc $ff $9c
	db $fd                                           ; $63bf: $fd
	cp $fd                                           ; $63c0: $fe $fd
	push de                                          ; $63c2: $d5
	rst $38                                          ; $63c3: $ff
	sbc e                                            ; $63c4: $9b
	cp a                                             ; $63c5: $bf
	ld e, l                                          ; $63c6: $5d
	xor d                                            ; $63c7: $aa
	ld d, l                                          ; $63c8: $55
	call nc, $9cff                                   ; $63c9: $d4 $ff $9c
	ei                                               ; $63cc: $fb
	xor l                                            ; $63cd: $ad
	ld d, d                                          ; $63ce: $52
	db $d3                                           ; $63cf: $d3
	rst $38                                          ; $63d0: $ff
	sbc l                                            ; $63d1: $9d
	ld e, a                                          ; $63d2: $5f
	xor e                                            ; $63d3: $ab
	jp nc, $9eff                                     ; $63d4: $d2 $ff $9e

	cp $d4                                           ; $63d7: $fe $d4
	rst $38                                          ; $63d9: $ff
	sbc h                                            ; $63da: $9c
	push af                                          ; $63db: $f5
	ld [$d4b5], a                                    ; $63dc: $ea $b5 $d4
	rst $38                                          ; $63df: $ff
	sbc l                                            ; $63e0: $9d
	ld a, a                                          ; $63e1: $7f
	xor a                                            ; $63e2: $af
	ld c, a                                          ; $63e3: $4f
	or b                                             ; $63e4: $b0
	ld a, e                                          ; $63e5: $7b
	xor $c9                                          ; $63e6: $ee $c9
	rst $38                                          ; $63e8: $ff
	rst $38                                          ; $63e9: $ff
	sbc [hl]                                         ; $63ea: $9e
	inc b                                            ; $63eb: $04
	ld sp, hl                                        ; $63ec: $f9
	call c, $db04                                    ; $63ed: $dc $04 $db
	ld l, $df                                        ; $63f0: $2e $df
	ld l, [hl]                                       ; $63f2: $6e
	ld h, d                                          ; $63f3: $62
	ret nz                                           ; $63f4: $c0

	jp c, $d904                                      ; $63f5: $da $04 $d9

	add e                                            ; $63f8: $83
	reti                                             ; $63f9: $d9


	jr @-$25                                         ; $63fa: $18 $d9

	jr nz, @-$1f                                     ; $63fc: $20 $df

	rra                                              ; $63fe: $1f
	sbc d                                            ; $63ff: $9a
	rrca                                             ; $6400: $0f
	rlca                                             ; $6401: $07
	rlca                                             ; $6402: $07
	inc bc                                           ; $6403: $03
	ld bc, $0843                                     ; $6404: $01 $43 $08
	ld [hl+], a                                      ; $6407: $22
	ret nz                                           ; $6408: $c0

	sbc h                                            ; $6409: $9c
	ld b, e                                          ; $640a: $43
	ld b, b                                          ; $640b: $40
	ld b, b                                          ; $640c: $40
	ld a, d                                          ; $640d: $7a
	pop bc                                           ; $640e: $c1
	sbc e                                            ; $640f: $9b
	ld b, b                                          ; $6410: $40
	jr nc, jr_03f_6447                               ; $6411: $30 $34

	scf                                              ; $6413: $37
	ld a, d                                          ; $6414: $7a
	pop bc                                           ; $6415: $c1
	rst SubAFromDE                                          ; $6416: $df
	ccf                                              ; $6417: $3f
	sbc d                                            ; $6418: $9a
	nop                                              ; $6419: $00
	cp $fc                                           ; $641a: $fe $fc
	nop                                              ; $641c: $00
	ldh a, [c]                                       ; $641d: $f2
	ld a, [$0c9e]                                    ; $641e: $fa $9e $0c
	ld [hl], d                                       ; $6421: $72
	cp d                                             ; $6422: $ba
	sbc l                                            ; $6423: $9d
	jr nz, jr_03f_6434                               ; $6424: $20 $0e

	cp $7e                                           ; $6426: $fe $7e
	ld l, b                                          ; $6428: $68
	rst SubAFromDE                                          ; $6429: $df
	add b                                            ; $642a: $80
	sbc [hl]                                         ; $642b: $9e
	or c                                             ; $642c: $b1
	db $dd                                           ; $642d: $dd
	add b                                            ; $642e: $80
	sbc h                                            ; $642f: $9c
	ld b, $07                                        ; $6430: $06 $07
	add a                                            ; $6432: $87
	ld a, e                                          ; $6433: $7b

jr_03f_6434:
	cp $7a                                           ; $6434: $fe $7a
	ret nz                                           ; $6436: $c0

	rst SubAFromDE                                          ; $6437: $df
	cpl                                              ; $6438: $2f
	sbc [hl]                                         ; $6439: $9e
	xor a                                            ; $643a: $af
	db $dd                                           ; $643b: $dd
	cpl                                              ; $643c: $2f
	sub a                                            ; $643d: $97
	cp d                                             ; $643e: $ba
	ld d, l                                          ; $643f: $55
	xor d                                            ; $6440: $aa
	ret nc                                           ; $6441: $d0

	and b                                            ; $6442: $a0
	ret nc                                           ; $6443: $d0

	ld [$d9d5], a                                    ; $6444: $ea $d5 $d9

jr_03f_6447:
	rst $38                                          ; $6447: $ff
	ld a, [hl]                                       ; $6448: $7e
	add $9b                                          ; $6449: $c6 $9b
	xor d                                            ; $644b: $aa
	dec d                                            ; $644c: $15
	ld a, [bc]                                       ; $644d: $0a
	ld d, l                                          ; $644e: $55
	ld e, [hl]                                       ; $644f: $5e
	ret nz                                           ; $6450: $c0

	sbc [hl]                                         ; $6451: $9e
	adc b                                            ; $6452: $88
	cp $9b                                           ; $6453: $fe $9b
	add b                                            ; $6455: $80
	ld d, d                                          ; $6456: $52
	xor l                                            ; $6457: $ad
	jp c, $ffd9                                      ; $6458: $da $d9 $ff

	sub a                                            ; $645b: $97
	ld d, a                                          ; $645c: $57
	dec bc                                           ; $645d: $0b
	rlca                                             ; $645e: $07
	ld [bc], a                                       ; $645f: $02
	dec b                                            ; $6460: $05
	adc d                                            ; $6461: $8a
	ld d, a                                          ; $6462: $57
	cp a                                             ; $6463: $bf
	reti                                             ; $6464: $d9


	rst $38                                          ; $6465: $ff
	sbc c                                            ; $6466: $99
	db $fd                                           ; $6467: $fd
	ld a, [$eaf5]                                    ; $6468: $fa $f5 $ea
	ld d, l                                          ; $646b: $55
	ld a, [$815e]                                    ; $646c: $fa $5e $81
	sbc b                                            ; $646f: $98
	ld c, d                                          ; $6470: $4a
	and h                                            ; $6471: $a4
	nop                                              ; $6472: $00
	add b                                            ; $6473: $80
	ld d, h                                          ; $6474: $54
	xor d                                            ; $6475: $aa
	or $63                                           ; $6476: $f6 $63
	rst AddAOntoHL                                          ; $6478: $ef
	sub a                                            ; $6479: $97
	ld [hl+], a                                      ; $647a: $22
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	ld bc, $5502                                     ; $647d: $01 $02 $55
	xor d                                            ; $6480: $aa
	ld d, a                                          ; $6481: $57
	ld h, d                                          ; $6482: $62
	ld h, h                                          ; $6483: $64
	sbc e                                            ; $6484: $9b
	ld d, a                                          ; $6485: $57
	xor e                                            ; $6486: $ab
	ld d, l                                          ; $6487: $55
	xor e                                            ; $6488: $ab
	ld [hl+], a                                      ; $6489: $22
	jp nz, $286b                                     ; $648a: $c2 $6b $28

	sbc [hl]                                         ; $648d: $9e
	ld [bc], a                                       ; $648e: $02
	ld l, d                                          ; $648f: $6a
	jp $f77f                                         ; $6490: $c3 $7f $f7


	sbc [hl]                                         ; $6493: $9e
	ld [bc], a                                       ; $6494: $02

jr_03f_6495:
	reti                                             ; $6495: $d9


	ld l, [hl]                                       ; $6496: $6e
	reti                                             ; $6497: $d9


	add hl, de                                       ; $6498: $19
	reti                                             ; $6499: $d9


	inc b                                            ; $649a: $04
	ld h, $c0                                        ; $649b: $26 $c0
	pop af                                           ; $649d: $f1
	ld a, c                                          ; $649e: $79
	ld [hl], l                                       ; $649f: $75
	sbc [hl]                                         ; $64a0: $9e
	ccf                                              ; $64a1: $3f
	halt                                             ; $64a2: $76
	xor l                                            ; $64a3: $ad
	ld c, d                                          ; $64a4: $4a
	ret nz                                           ; $64a5: $c0

	sbc [hl]                                         ; $64a6: $9e
	rrca                                             ; $64a7: $0f
	ld a, [$fe9e]                                    ; $64a8: $fa $9e $fe
	ld a, c                                          ; $64ab: $79
	add d                                            ; $64ac: $82
	rst SubAFromDE                                          ; $64ad: $df
	ld b, a                                          ; $64ae: $47
	sbc c                                            ; $64af: $99
	ld b, b                                          ; $64b0: $40
	add b                                            ; $64b1: $80
	rst $38                                          ; $64b2: $ff
	ccf                                              ; $64b3: $3f
	ccf                                              ; $64b4: $3f
	jr c, jr_03f_6495                                ; $64b5: $38 $de

	ccf                                              ; $64b7: $3f
	db $fd                                           ; $64b8: $fd
	sbc $fc                                          ; $64b9: $de $fc
	rst $38                                          ; $64bb: $ff
	sbc e                                            ; $64bc: $9b
	reti                                             ; $64bd: $d9


	rst $38                                          ; $64be: $ff
	rst $38                                          ; $64bf: $ff
	inc bc                                           ; $64c0: $03
	ld [hl], a                                       ; $64c1: $77
	ld [hl], d                                       ; $64c2: $72
	sbc e                                            ; $64c3: $9b
	ld h, $1f                                        ; $64c4: $26 $1f
	jr nz, jr_03f_64e7                               ; $64c6: $20 $1f

	db $fc                                           ; $64c8: $fc
	sbc [hl]                                         ; $64c9: $9e
	and b                                            ; $64ca: $a0
	sbc $80                                          ; $64cb: $de $80
	ld a, e                                          ; $64cd: $7b
	ldh a, [$9e]                                     ; $64ce: $f0 $9e
	rst $38                                          ; $64d0: $ff
	ld l, [hl]                                       ; $64d1: $6e
	jp nz, $ddff                                     ; $64d2: $c2 $ff $dd

	cpl                                              ; $64d5: $2f
	rst SubAFromDE                                          ; $64d6: $df
	rst AddAOntoHL                                          ; $64d7: $ef
	ld a, a                                          ; $64d8: $7f
	ldh a, [$9e]                                     ; $64d9: $f0 $9e
	xor d                                            ; $64db: $aa
	ld l, e                                          ; $64dc: $6b
	ld c, d                                          ; $64dd: $4a
	db $dd                                           ; $64de: $dd
	rst $38                                          ; $64df: $ff
	rst SubAFromDE                                          ; $64e0: $df
	bit 7, a                                         ; $64e1: $cb $7f
	ld sp, hl                                        ; $64e3: $f9
	sbc l                                            ; $64e4: $9d
	xor a                                            ; $64e5: $af
	rst SubAFromDE                                          ; $64e6: $df

jr_03f_64e7:
	ld e, a                                          ; $64e7: $5f
	ldh a, [rPCM34]                                  ; $64e8: $f0 $77
	ret nc                                           ; $64ea: $d0

	sbc [hl]                                         ; $64eb: $9e
	rst FarCall                                          ; $64ec: $f7
	ld e, e                                          ; $64ed: $5b
	ldh [rPCM34], a                                  ; $64ee: $e0 $77
	ldh a, [$67]                                     ; $64f0: $f0 $67
	ld a, [de]                                       ; $64f2: $1a

jr_03f_64f3:
	inc bc                                           ; $64f3: $03
	ldh a, [$03]                                     ; $64f4: $f0 $03
	ldh a, [$2f]                                     ; $64f6: $f0 $2f
	ldh a, [$7a]                                     ; $64f8: $f0 $7a
	sub c                                            ; $64fa: $91
	cp $99                                           ; $64fb: $fe $99
	ld bc, $0204                                     ; $64fd: $01 $04 $02
	ld [bc], a                                       ; $6500: $02

jr_03f_6501:
	nop                                              ; $6501: $00
	ld bc, $f67b                                     ; $6502: $01 $7b $f6
	sbc l                                            ; $6505: $9d
	inc bc                                           ; $6506: $03
	ld l, [hl]                                       ; $6507: $6e
	sbc $2e                                          ; $6508: $de $2e
	sbc e                                            ; $650a: $9b
	cpl                                              ; $650b: $2f
	rrca                                             ; $650c: $0f
	rra                                              ; $650d: $1f
	ccf                                              ; $650e: $3f
	db $dd                                           ; $650f: $dd
	add hl, de                                       ; $6510: $19
	rst SubAFromDE                                          ; $6511: $df
	jr jr_03f_64f3                                   ; $6512: $18 $df

	ld hl, sp+$0a                                    ; $6514: $f8 $0a
	ret nz                                           ; $6516: $c0

	sbc [hl]                                         ; $6517: $9e
	ldh [$f1], a                                     ; $6518: $e0 $f1
	sbc [hl]                                         ; $651a: $9e
	inc bc                                           ; $651b: $03
	ld a, d                                          ; $651c: $7a
	ld [hl], h                                       ; $651d: $74
	sbc $02                                          ; $651e: $de $02
	rst SubAFromDE                                          ; $6520: $df
	ld bc, $f77f                                     ; $6521: $01 $7f $f7
	db $dd                                           ; $6524: $dd
	inc bc                                           ; $6525: $03
	sbc $01                                          ; $6526: $de $01
	sub c                                            ; $6528: $91
	inc bc                                           ; $6529: $03
	rla                                              ; $652a: $17
	ccf                                              ; $652b: $3f
	ld a, a                                          ; $652c: $7f
	pop hl                                           ; $652d: $e1
	db $e3                                           ; $652e: $e3
	sbc a                                            ; $652f: $9f
	rlca                                             ; $6530: $07
	cp a                                             ; $6531: $bf
	ld a, a                                          ; $6532: $7f
	ei                                               ; $6533: $fb
	jp nz, $c281                                     ; $6534: $c2 $81 $c2

	rst SubAFromHL                                          ; $6537: $d7
	rst $38                                          ; $6538: $ff
	rst SubAFromDE                                          ; $6539: $df
	add b                                            ; $653a: $80
	ld d, l                                          ; $653b: $55
	ld h, b                                          ; $653c: $60
	ld h, l                                          ; $653d: $65
	ld e, [hl]                                       ; $653e: $5e
	inc bc                                           ; $653f: $03
	ldh a, [$d9]                                     ; $6540: $f0 $d9
	rst $38                                          ; $6542: $ff
	sbc [hl]                                         ; $6543: $9e
	or [hl]                                          ; $6544: $b6
	ld c, e                                          ; $6545: $4b
	ldh a, [$7d]                                     ; $6546: $f0 $7d
	cp b                                             ; $6548: $b8
	ld c, a                                          ; $6549: $4f
	ldh a, [rOBP1]                                   ; $654a: $f0 $49
	nop                                              ; $654c: $00
	ld b, e                                          ; $654d: $43
	ldh a, [$9e]                                     ; $654e: $f0 $9e
	inc bc                                           ; $6550: $03
	ei                                               ; $6551: $fb
	rst SubAFromDE                                          ; $6552: $df
	dec h                                            ; $6553: $25
	db $db                                           ; $6554: $db
	rst $38                                          ; $6555: $ff
	sbc [hl]                                         ; $6556: $9e
	or a                                             ; $6557: $b7
	ld b, a                                          ; $6558: $47
	or b                                             ; $6559: $b0
	rlca                                             ; $655a: $07
	ret nz                                           ; $655b: $c0

	ld a, [$209c]                                    ; $655c: $fa $9c $20
	ld [bc], a                                       ; $655f: $02
	db $10                                           ; $6560: $10
	ld [hl], e                                       ; $6561: $73
	jr c, jr_03f_6501                                ; $6562: $38 $9d

	rra                                              ; $6564: $1f
	db $fc                                           ; $6565: $fc
	ld l, [hl]                                       ; $6566: $6e
	push af                                          ; $6567: $f5
	ld a, l                                          ; $6568: $7d
	ld c, a                                          ; $6569: $4f
	sbc l                                            ; $656a: $9d
	ccf                                              ; $656b: $3f
	rrca                                             ; $656c: $0f
	ld a, d                                          ; $656d: $7a
	ret nz                                           ; $656e: $c0

	sbc [hl]                                         ; $656f: $9e
	rrca                                             ; $6570: $0f
	db $dd                                           ; $6571: $dd
	ld a, b                                          ; $6572: $78
	rst SubAFromDE                                          ; $6573: $df
	ld e, b                                          ; $6574: $58
	rst SubAFromDE                                          ; $6575: $df
	ld c, b                                          ; $6576: $48
	sbc l                                            ; $6577: $9d
	inc e                                            ; $6578: $1c
	ld h, b                                          ; $6579: $60
	ei                                               ; $657a: $fb
	sbc l                                            ; $657b: $9d
	add e                                            ; $657c: $83
	sbc a                                            ; $657d: $9f
	db $db                                           ; $657e: $db
	rst $38                                          ; $657f: $ff
	sbc e                                            ; $6580: $9b
	jr jr_03f_659f                                   ; $6581: $18 $1c

	inc e                                            ; $6583: $1c
	ld e, $dd                                        ; $6584: $1e $dd
	rra                                              ; $6586: $1f
	reti                                             ; $6587: $d9


	ldh [$fb], a                                     ; $6588: $e0 $fb
	sbc l                                            ; $658a: $9d
	add b                                            ; $658b: $80
	ret nz                                           ; $658c: $c0

	ld sp, hl                                        ; $658d: $f9
	sub h                                            ; $658e: $94
	rlca                                             ; $658f: $07
	add hl, de                                       ; $6590: $19
	scf                                              ; $6591: $37
	ld a, a                                          ; $6592: $7f
	rst SubAFromDE                                          ; $6593: $df
	adc a                                            ; $6594: $8f
	add a                                            ; $6595: $87
	or a                                             ; $6596: $b7
	rlca                                             ; $6597: $07
	rra                                              ; $6598: $1f
	ccf                                              ; $6599: $3f
	ld [hl], c                                       ; $659a: $71
	ld a, [bc]                                       ; $659b: $0a
	ld a, l                                          ; $659c: $7d
	ldh a, [$97]                                     ; $659d: $f0 $97

jr_03f_659f:
	di                                               ; $659f: $f3
	ld sp, hl                                        ; $65a0: $f9
	ld hl, sp-$08                                    ; $65a1: $f8 $f8
	db $fc                                           ; $65a3: $fc
	rst $38                                          ; $65a4: $ff
	ld h, [hl]                                       ; $65a5: $66
	db $fc                                           ; $65a6: $fc
	db $dd                                           ; $65a7: $dd
	ld hl, sp+$7f                                    ; $65a8: $f8 $7f
	ld hl, sp-$25                                    ; $65aa: $f8 $db
	rst $38                                          ; $65ac: $ff
	sbc l                                            ; $65ad: $9d
	ld a, a                                          ; $65ae: $7f
	ld d, a                                          ; $65af: $57
	ei                                               ; $65b0: $fb
	sbc l                                            ; $65b1: $9d
	jr z, jr_03f_6608                                ; $65b2: $28 $54

	ld c, e                                          ; $65b4: $4b
	ld [hl], c                                       ; $65b5: $71
	ld h, e                                          ; $65b6: $63
	ld h, b                                          ; $65b7: $60
	ccf                                              ; $65b8: $3f
	ldh a, [$7c]                                     ; $65b9: $f0 $7c
	xor c                                            ; $65bb: $a9
	sbc e                                            ; $65bc: $9b
	inc b                                            ; $65bd: $04
	dec c                                            ; $65be: $0d
	ld c, $1f                                        ; $65bf: $0e $1f
	ld l, a                                          ; $65c1: $6f
	pop bc                                           ; $65c2: $c1
	sub l                                            ; $65c3: $95
	inc a                                            ; $65c4: $3c
	sbc a                                            ; $65c5: $9f
	nop                                              ; $65c6: $00
	ldh [rAUD1SWEEP], a                              ; $65c7: $e0 $10
	ld [$3ec9], sp                                   ; $65c9: $08 $c9 $3e
	inc c                                            ; $65cc: $0c
	inc c                                            ; $65cd: $0c
	ld l, a                                          ; $65ce: $6f
	ldh a, [$7f]                                     ; $65cf: $f0 $7f
	jp hl                                            ; $65d1: $e9


	db $fd                                           ; $65d2: $fd
	sbc e                                            ; $65d3: $9b
	ret nz                                           ; $65d4: $c0

	jr nc, jr_03f_65df                               ; $65d5: $30 $08

	inc b                                            ; $65d7: $04
	ld b, a                                          ; $65d8: $47
	ret nz                                           ; $65d9: $c0

	rst SubAFromDE                                          ; $65da: $df
	ldh a, [$df]                                     ; $65db: $f0 $df
	rst $38                                          ; $65dd: $ff
	ld a, e                                          ; $65de: $7b

jr_03f_65df:
	ld a, a                                          ; $65df: $7f
	sbc e                                            ; $65e0: $9b
	ld hl, sp+$00                                    ; $65e1: $f8 $00
	nop                                              ; $65e3: $00
	ld c, $75                                        ; $65e4: $0e $75
	rst SubAFromHL                                          ; $65e6: $d7
	ld l, a                                          ; $65e7: $6f
	xor [hl]                                         ; $65e8: $ae
	sbc $7f                                          ; $65e9: $de $7f
	ld [hl], a                                       ; $65eb: $77
	rst FarCall                                          ; $65ec: $f7
	sbc c                                            ; $65ed: $99
	ccf                                              ; $65ee: $3f
	ld a, $3d                                        ; $65ef: $3e $3d
	ccf                                              ; $65f1: $3f
	nop                                              ; $65f2: $00
	ld [bc], a                                       ; $65f3: $02
	sbc $ff                                          ; $65f4: $de $ff
	rst SubAFromDE                                          ; $65f6: $df
	cp $77                                           ; $65f7: $fe $77
	and b                                            ; $65f9: $a0
	sbc d                                            ; $65fa: $9a
	db $fc                                           ; $65fb: $fc
	cp $02                                           ; $65fc: $fe $02
	or $87                                           ; $65fe: $f6 $87
	ld l, e                                          ; $6600: $6b
	or b                                             ; $6601: $b0
	sbc [hl]                                         ; $6602: $9e
	cp a                                             ; $6603: $bf
	ld a, e                                          ; $6604: $7b
	or d                                             ; $6605: $b2
	sbc b                                            ; $6606: $98
	rra                                              ; $6607: $1f

jr_03f_6608:
	adc a                                            ; $6608: $8f
	ld [hl], a                                       ; $6609: $77
	ld c, a                                          ; $660a: $4f
	rra                                              ; $660b: $1f
	rrca                                             ; $660c: $0f
	dec de                                           ; $660d: $1b
	ld h, e                                          ; $660e: $63
	add b                                            ; $660f: $80
	call c, $47fe                                    ; $6610: $dc $fe $47
	and b                                            ; $6613: $a0
	ld a, l                                          ; $6614: $7d
	add [hl]                                         ; $6615: $86
	sbc e                                            ; $6616: $9b
	db $10                                           ; $6617: $10
	ld b, e                                          ; $6618: $43
	rrca                                             ; $6619: $0f
	ccf                                              ; $661a: $3f
	ld a, e                                          ; $661b: $7b
	ldh a, [$9b]                                     ; $661c: $f0 $9b
	inc bc                                           ; $661e: $03
	rrca                                             ; $661f: $0f
	inc a                                            ; $6620: $3c
	ldh a, [$7a]                                     ; $6621: $f0 $7a
	ld a, [$0f9a]                                    ; $6623: $fa $9a $0f
	rst GetHLinHL                                          ; $6626: $cf
	rst GetHLinHL                                          ; $6627: $cf
	ld c, a                                          ; $6628: $4f
	ld d, a                                          ; $6629: $57
	sbc $ff                                          ; $662a: $de $ff
	sbc l                                            ; $662c: $9d
	ret z                                            ; $662d: $c8

	add sp, $73                                      ; $662e: $e8 $73
	adc e                                            ; $6630: $8b
	db $fd                                           ; $6631: $fd
	sbc [hl]                                         ; $6632: $9e
	ld a, $7a                                        ; $6633: $3e $7a
	rst FarCall                                          ; $6635: $f7
	ld [hl], a                                       ; $6636: $77
	ret z                                            ; $6637: $c8

	ld [hl], e                                       ; $6638: $73
	call nz, $1fde                                   ; $6639: $c4 $de $1f
	sbc l                                            ; $663c: $9d
	nop                                              ; $663d: $00
	ld hl, sp+$7b                                    ; $663e: $f8 $7b
	pop de                                           ; $6640: $d1
	halt                                             ; $6641: $76
	push bc                                          ; $6642: $c5
	ld a, a                                          ; $6643: $7f
	ld hl, sp+$7f                                    ; $6644: $f8 $7f
	ld a, h                                          ; $6646: $7c
	sbc c                                            ; $6647: $99
	ret nz                                           ; $6648: $c0

	pop hl                                           ; $6649: $e1
	pop af                                           ; $664a: $f1
	ld bc, $e201                                     ; $664b: $01 $01 $e2
	ld [hl], c                                       ; $664e: $71
	ld b, d                                          ; $664f: $42
	ld a, c                                          ; $6650: $79
	sub l                                            ; $6651: $95
	sub l                                            ; $6652: $95
	jp $97ff                                         ; $6653: $c3 $ff $97


	ld e, a                                          ; $6656: $5f
	ld a, a                                          ; $6657: $7f
	ld a, a                                          ; $6658: $7f
	ld [hl], a                                       ; $6659: $77
	ld a, d                                          ; $665a: $7a
	rst $38                                          ; $665b: $ff
	ld a, [$d86a]                                    ; $665c: $fa $6a $d8
	db $db                                           ; $665f: $db
	rst $38                                          ; $6660: $ff
	sbc l                                            ; $6661: $9d
	ld hl, sp+$7c                                    ; $6662: $f8 $7c
	ld l, a                                          ; $6664: $6f
	adc b                                            ; $6665: $88
	ld a, [hl]                                       ; $6666: $7e
	ret nz                                           ; $6667: $c0

	sbc c                                            ; $6668: $99
	cp $d7                                           ; $6669: $fe $d7
	adc a                                            ; $666b: $8f
	sbc a                                            ; $666c: $9f
	rst AddAOntoHL                                          ; $666d: $ef
	rst JumpTable                                          ; $666e: $c7
	ld a, c                                          ; $666f: $79
	ld l, b                                          ; $6670: $68
	sbc e                                            ; $6671: $9b
	call nc, $b088                                   ; $6672: $d4 $88 $b0
	ldh [rPCM12], a                                  ; $6675: $e0 $76
	adc e                                            ; $6677: $8b
	call c, $dfff                                    ; $6678: $dc $ff $df
	cp $9e                                           ; $667b: $fe $9e
	ld sp, hl                                        ; $667d: $f9
	db $fc                                           ; $667e: $fc
	sbc h                                            ; $667f: $9c
	inc b                                            ; $6680: $04
	ld b, $01                                        ; $6681: $06 $01
	ld l, a                                          ; $6683: $6f
	ld h, e                                          ; $6684: $63
	sbc l                                            ; $6685: $9d
	db $fc                                           ; $6686: $fc
	db $fd                                           ; $6687: $fd
	ld l, e                                          ; $6688: $6b
	ld h, d                                          ; $6689: $62
	sub e                                            ; $668a: $93
	rst $38                                          ; $668b: $ff
	ldh a, [$e2]                                     ; $668c: $f0 $e2
	db $e3                                           ; $668e: $e3
	ret nz                                           ; $668f: $c0

	call z, $c1c4                                    ; $6690: $cc $c4 $c1
	db $fd                                           ; $6693: $fd
	rra                                              ; $6694: $1f
	ccf                                              ; $6695: $3f
	ccf                                              ; $6696: $3f
	sbc $7f                                          ; $6697: $de $7f
	ld a, a                                          ; $6699: $7f
	dec c                                            ; $669a: $0d
	adc a                                            ; $669b: $8f
	rst $38                                          ; $669c: $ff
	ld [hl], e                                       ; $669d: $73

jr_03f_669e:
	ld b, $23                                        ; $669e: $06 $23
	inc bc                                           ; $66a0: $03
	xor l                                            ; $66a1: $ad
	ld b, $3a                                        ; $66a2: $06 $3a
	sbc a                                            ; $66a4: $9f
	sbc $da                                          ; $66a5: $de $da
	ld [hl], h                                       ; $66a7: $74
	dec h                                            ; $66a8: $25
	inc bc                                           ; $66a9: $03
	ld a, e                                          ; $66aa: $7b
	cpl                                              ; $66ab: $2f
	ld a, e                                          ; $66ac: $7b
	ld l, [hl]                                       ; $66ad: $6e
	ld a, e                                          ; $66ae: $7b
	ld [$197f], a                                    ; $66af: $ea $7f $19
	sbc b                                            ; $66b2: $98
	add d                                            ; $66b3: $82
	ld h, d                                          ; $66b4: $62
	ld de, $e131                                     ; $66b5: $11 $31 $e1
	pop hl                                           ; $66b8: $e1
	ldh a, [$7b]                                     ; $66b9: $f0 $7b
	ld h, l                                          ; $66bb: $65
	ld d, a                                          ; $66bc: $57
	jr nz, jr_03f_669e                               ; $66bd: $20 $df

	add b                                            ; $66bf: $80
	jp c, $9ef8                                      ; $66c0: $da $f8 $9e

	ld a, [$ddf9]                                    ; $66c3: $fa $f9 $dd
	ld a, a                                          ; $66c6: $7f
	sbc e                                            ; $66c7: $9b
	ld b, b                                          ; $66c8: $40
	ld hl, sp-$32                                    ; $66c9: $f8 $ce
	jp $3fdd                                         ; $66cb: $c3 $dd $3f


	sbc e                                            ; $66ce: $9b
	nop                                              ; $66cf: $00
	jr c, jr_03f_6700                                ; $66d0: $38 $2e

	inc sp                                           ; $66d2: $33
	ld [hl], a                                       ; $66d3: $77
	add e                                            ; $66d4: $83
	rst SubAFromDE                                          ; $66d5: $df
	db $fc                                           ; $66d6: $fc
	rst SubAFromDE                                          ; $66d7: $df
	rst $38                                          ; $66d8: $ff
	sbc [hl]                                         ; $66d9: $9e
	add [hl]                                         ; $66da: $86
	sbc $ff                                          ; $66db: $de $ff
	sbc $07                                          ; $66dd: $de $07
	sub [hl]                                         ; $66df: $96
	add e                                            ; $66e0: $83
	adc e                                            ; $66e1: $8b
	ld b, l                                          ; $66e2: $45
	dec hl                                           ; $66e3: $2b
	dec h                                            ; $66e4: $25
	ld a, e                                          ; $66e5: $7b
	rst FarCall                                          ; $66e6: $f7
	rst $38                                          ; $66e7: $ff
	pop af                                           ; $66e8: $f1
	jp c, $98ff                                      ; $66e9: $da $ff $98

	ld c, $ff                                        ; $66ec: $0e $ff
	ld a, a                                          ; $66ee: $7f
	cp a                                             ; $66ef: $bf
	cp a                                             ; $66f0: $bf
	rst SubAFromDE                                          ; $66f1: $df
	rst SubAFromDE                                          ; $66f2: $df
	ld [hl], a                                       ; $66f3: $77
	jp c, $fedf                                      ; $66f4: $da $df $fe

	sbc e                                            ; $66f7: $9b
	pop af                                           ; $66f8: $f1
	di                                               ; $66f9: $f3
	and $1e                                          ; $66fa: $e6 $1e
	call c, $9cff                                    ; $66fc: $dc $ff $9c
	rst GetHLinHL                                          ; $66ff: $cf

jr_03f_6700:
	rra                                              ; $6700: $1f
	sbc a                                            ; $6701: $9f
	cp $9b                                           ; $6702: $fe $9b
	ccf                                              ; $6704: $3f
	rst GetHLinHL                                          ; $6705: $cf
	inc bc                                           ; $6706: $03
	rlca                                             ; $6707: $07
	ld l, [hl]                                       ; $6708: $6e
	ld b, b                                          ; $6709: $40
	sbc h                                            ; $670a: $9c
	rst $38                                          ; $670b: $ff
	rst AddAOntoHL                                          ; $670c: $ef
	rst AddAOntoHL                                          ; $670d: $ef
	db $fc                                           ; $670e: $fc
	sbc $1f                                          ; $670f: $de $1f
	ld [hl], a                                       ; $6711: $77
	ld [hl-], a                                      ; $6712: $32
	sbc $fc                                          ; $6713: $de $fc
	sbc l                                            ; $6715: $9d
	db $fd                                           ; $6716: $fd
	inc bc                                           ; $6717: $03
	ld a, d                                          ; $6718: $7a
	ld d, d                                          ; $6719: $52
	ld a, [hl]                                       ; $671a: $7e
	adc [hl]                                         ; $671b: $8e
	ld [hl], a                                       ; $671c: $77
	ret                                              ; $671d: $c9


	sbc h                                            ; $671e: $9c
	jr jr_03f_6751                                   ; $671f: $18 $30

	nop                                              ; $6721: $00
	ld a, d                                          ; $6722: $7a
	ld sp, hl                                        ; $6723: $f9
	ld a, a                                          ; $6724: $7f
	ld [hl], $6b                                     ; $6725: $36 $6b
	inc de                                           ; $6727: $13
	sbc h                                            ; $6728: $9c
	cp $3f                                           ; $6729: $fe $3f
	rrca                                             ; $672b: $0f
	ld a, e                                          ; $672c: $7b
	ld hl, sp-$62                                    ; $672d: $f8 $9e
	rlca                                             ; $672f: $07
	ld [hl], e                                       ; $6730: $73
	ld e, [hl]                                       ; $6731: $5e
	ld a, d                                          ; $6732: $7a
	xor $7f                                          ; $6733: $ee $7f
	pop af                                           ; $6735: $f1
	sub [hl]                                         ; $6736: $96
	rst $38                                          ; $6737: $ff
	db $fc                                           ; $6738: $fc
	ld b, $fa                                        ; $6739: $06 $fa
	ei                                               ; $673b: $fb
	ei                                               ; $673c: $fb
	rst $38                                          ; $673d: $ff
	ldh a, [c]                                       ; $673e: $f2
	inc bc                                           ; $673f: $03
	halt                                             ; $6740: $76
	xor b                                            ; $6741: $a8
	sbc c                                            ; $6742: $99
	rlca                                             ; $6743: $07
	db $f4                                           ; $6744: $f4
	ld a, [$7cff]                                    ; $6745: $fa $ff $7c
	ld a, [hl-]                                      ; $6748: $3a
	ld l, [hl]                                       ; $6749: $6e
	ret z                                            ; $674a: $c8

	sub d                                            ; $674b: $92
	ld a, a                                          ; $674c: $7f
	sbc a                                            ; $674d: $9f
	ld c, a                                          ; $674e: $4f
	rst $38                                          ; $674f: $ff
	rst $38                                          ; $6750: $ff

jr_03f_6751:
	ld a, [hl]                                       ; $6751: $7e
	rst $38                                          ; $6752: $ff
	rst $38                                          ; $6753: $ff
	ld c, a                                          ; $6754: $4f
	sub a                                            ; $6755: $97
	ld c, e                                          ; $6756: $4b
	push de                                          ; $6757: $d5
	ld a, [$4766]                                    ; $6758: $fa $66 $47
	sbc e                                            ; $675b: $9b
	nop                                              ; $675c: $00
	and b                                            ; $675d: $a0
	ldh a, [$fc]                                     ; $675e: $f0 $fc
	ld [hl], a                                       ; $6760: $77
	db $f4                                           ; $6761: $f4
	sbc e                                            ; $6762: $9b
	ld bc, $e0c0                                     ; $6763: $01 $c0 $e0
	ld hl, sp+$73                                    ; $6766: $f8 $73
	ld hl, sp-$22                                    ; $6768: $f8 $de
	ld bc, $0592                                     ; $676a: $01 $92 $05
	ld bc, $8585                                     ; $676d: $01 $85 $85
	db $fd                                           ; $6770: $fd
	db $fd                                           ; $6771: $fd
	ld a, l                                          ; $6772: $7d
	ld a, l                                          ; $6773: $7d
	dec a                                            ; $6774: $3d
	dec a                                            ; $6775: $3d
	cp l                                             ; $6776: $bd
	cp l                                             ; $6777: $bd
	ld sp, hl                                        ; $6778: $f9
	sbc $3f                                          ; $6779: $de $3f
	ld a, [hl]                                       ; $677b: $7e
	db $ed                                           ; $677c: $ed
	sub l                                            ; $677d: $95
	rrca                                             ; $677e: $0f
	rla                                              ; $677f: $17
	rst $38                                          ; $6780: $ff
	ret nz                                           ; $6781: $c0

	ret nz                                           ; $6782: $c0

	ldh [$f0], a                                     ; $6783: $e0 $f0
	ret c                                            ; $6785: $d8

	rst GetHLinHL                                          ; $6786: $cf
	rst SubAFromHL                                          ; $6787: $d7
	ld a, c                                          ; $6788: $79
	ld a, $9c                                        ; $6789: $3e $9c
	jp $fee1                                         ; $678b: $c3 $e1 $fe


	halt                                             ; $678e: $76
	or b                                             ; $678f: $b0
	sub a                                            ; $6790: $97
	inc a                                            ; $6791: $3c
	daa                                              ; $6792: $27
	inc sp                                           ; $6793: $33
	ld e, $fd                                        ; $6794: $1e $fd
	rst $38                                          ; $6796: $ff
	db $fc                                           ; $6797: $fc
	db $fc                                           ; $6798: $fc
	halt                                             ; $6799: $76
	ld a, [hl+]                                      ; $679a: $2a
	ld a, a                                          ; $679b: $7f
	cp c                                             ; $679c: $b9
	sbc [hl]                                         ; $679d: $9e
	rst JumpTable                                          ; $679e: $c7
	ld a, e                                          ; $679f: $7b
	ld a, [hl]                                       ; $67a0: $7e
	sub [hl]                                         ; $67a1: $96
	rst $38                                          ; $67a2: $ff
	ld b, e                                          ; $67a3: $43
	rst $38                                          ; $67a4: $ff
	rst $38                                          ; $67a5: $ff
	daa                                              ; $67a6: $27
	scf                                              ; $67a7: $37
	ld [de], a                                       ; $67a8: $12
	ld sp, $7b79                                     ; $67a9: $31 $79 $7b
	ldh a, [$7f]                                     ; $67ac: $f0 $7f
	sbc $db                                          ; $67ae: $de $db
	rst $38                                          ; $67b0: $ff
	sbc l                                            ; $67b1: $9d
	ld b, b                                          ; $67b2: $40
	ld a, $dd                                        ; $67b3: $3e $dd
	rra                                              ; $67b5: $1f
	sbc e                                            ; $67b6: $9b
	rst SubAFromBC                                          ; $67b7: $e7
	rst SubAFromHL                                          ; $67b8: $d7
	rst $38                                          ; $67b9: $ff
	pop hl                                           ; $67ba: $e1
	sbc $f0                                          ; $67bb: $de $f0
	sub l                                            ; $67bd: $95
	ldh [rIE], a                                     ; $67be: $e0 $ff
	ccf                                              ; $67c0: $3f
	inc bc                                           ; $67c1: $03
	ld bc, $e784                                     ; $67c2: $01 $84 $e7
	ei                                               ; $67c5: $fb
	cp $fe                                           ; $67c6: $fe $fe
	sbc $f8                                          ; $67c8: $de $f8
	sbc h                                            ; $67ca: $9c
	ld a, b                                          ; $67cb: $78
	inc e                                            ; $67cc: $1c
	rlca                                             ; $67cd: $07
	ld a, d                                          ; $67ce: $7a
	ld h, d                                          ; $67cf: $62
	ld a, [hl]                                       ; $67d0: $7e
	sbc [hl]                                         ; $67d1: $9e
	db $dd                                           ; $67d2: $dd
	cp $df                                           ; $67d3: $fe $df
	ld a, $9d                                        ; $67d5: $3e $9d
	inc e                                            ; $67d7: $1c
	rra                                              ; $67d8: $1f
	sbc $11                                          ; $67d9: $de $11
	rst SubAFromDE                                          ; $67db: $df
	pop de                                           ; $67dc: $d1
	ld a, [hl]                                       ; $67dd: $7e
	and $9e                                          ; $67de: $e6 $9e
	add e                                            ; $67e0: $83
	db $dd                                           ; $67e1: $dd
	rst $38                                          ; $67e2: $ff
	sbc l                                            ; $67e3: $9d
	ei                                               ; $67e4: $fb
	ld a, [$fede]                                    ; $67e5: $fa $de $fe
	sbc h                                            ; $67e8: $9c
	add d                                            ; $67e9: $82
	add e                                            ; $67ea: $83
	ldh [c], a                                       ; $67eb: $e2
	ld l, h                                          ; $67ec: $6c
	sbc e                                            ; $67ed: $9b
	sub h                                            ; $67ee: $94
	rst FarCall                                          ; $67ef: $f7
	push af                                          ; $67f0: $f5
	db $f4                                           ; $67f1: $f4
	inc b                                            ; $67f2: $04
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	jr nc, @+$20                                     ; $67f5: $30 $1e

	rst $38                                          ; $67f7: $ff
	rlca                                             ; $67f8: $07
	rst FarCall                                          ; $67f9: $f7
	ld h, h                                          ; $67fa: $64
	ret nc                                           ; $67fb: $d0

	sbc c                                            ; $67fc: $99
	rrca                                             ; $67fd: $0f
	inc b                                            ; $67fe: $04
	inc c                                            ; $67ff: $0c
	ld c, $0e                                        ; $6800: $0e $0e
	rst GetHLinHL                                          ; $6802: $cf
	ld a, e                                          ; $6803: $7b
	ld hl, sp-$64                                    ; $6804: $f8 $9c
	adc $d8                                          ; $6806: $ce $d8
	di                                               ; $6808: $f3
	ld h, d                                          ; $6809: $62
	ld h, b                                          ; $680a: $60
	sub e                                            ; $680b: $93
	ld bc, $cf83                                     ; $680c: $01 $83 $cf
	rst $38                                          ; $680f: $ff
	rst AddAOntoHL                                          ; $6810: $ef
	ldh [rIE], a                                     ; $6811: $e0 $ff
	db $fc                                           ; $6813: $fc
	ld hl, sp-$0f                                    ; $6814: $f8 $f1
	ldh [$e4], a                                     ; $6816: $e0 $e4
	ld a, c                                          ; $6818: $79
	xor c                                            ; $6819: $a9
	db $fd                                           ; $681a: $fd
	sbc b                                            ; $681b: $98
	inc bc                                           ; $681c: $03
	db $fc                                           ; $681d: $fc
	nop                                              ; $681e: $00
	db $fc                                           ; $681f: $fc
	ld a, [hl]                                       ; $6820: $7e
	rst SubAFromDE                                          ; $6821: $df
	adc a                                            ; $6822: $8f
	halt                                             ; $6823: $76
	push hl                                          ; $6824: $e5
	rst $38                                          ; $6825: $ff
	sbc l                                            ; $6826: $9d

jr_03f_6827:
	ld b, b                                          ; $6827: $40
	add b                                            ; $6828: $80
	ld [hl], d                                       ; $6829: $72
	adc $7e                                          ; $682a: $ce $7e
	rst GetHLinHL                                          ; $682c: $cf
	ld a, a                                          ; $682d: $7f
	ld hl, sp-$64                                    ; $682e: $f8 $9c
	ld a, a                                          ; $6830: $7f
	db $fc                                           ; $6831: $fc
	add b                                            ; $6832: $80
	ld [hl], l                                       ; $6833: $75
	dec c                                            ; $6834: $0d
	ld a, [hl]                                       ; $6835: $7e
	cpl                                              ; $6836: $2f
	ld l, e                                          ; $6837: $6b
	jp $c579                                         ; $6838: $c3 $79 $c5


	ld [hl], e                                       ; $683b: $73
	cp l                                             ; $683c: $bd
	sbc l                                            ; $683d: $9d
	ld a, $fb                                        ; $683e: $3e $fb
	halt                                             ; $6840: $76
	ld c, $7a                                        ; $6841: $0e $7a
	add hl, hl                                       ; $6843: $29
	rst SubAFromDE                                          ; $6844: $df
	rlca                                             ; $6845: $07
	ld l, [hl]                                       ; $6846: $6e
	dec c                                            ; $6847: $0d
	ld a, c                                          ; $6848: $79
	ld l, l                                          ; $6849: $6d
	ld a, d                                          ; $684a: $7a
	cp d                                             ; $684b: $ba
	ld [hl], a                                       ; $684c: $77
	ei                                               ; $684d: $fb
	ld a, a                                          ; $684e: $7f
	bit 6, e                                         ; $684f: $cb $73
	ldh a, [$7e]                                     ; $6851: $f0 $7e
	ldh a, [c]                                       ; $6853: $f2
	sbc d                                            ; $6854: $9a
	rst AddAOntoHL                                          ; $6855: $ef
	rst SubAFromBC                                          ; $6856: $e7
	rst SubAFromBC                                          ; $6857: $e7
	db $e3                                           ; $6858: $e3
	db $e3                                           ; $6859: $e3
	ld [hl], c                                       ; $685a: $71
	ld b, [hl]                                       ; $685b: $46
	sbc $1f                                          ; $685c: $de $1f
	ld a, [hl]                                       ; $685e: $7e
	and [hl]                                         ; $685f: $a6
	ld a, d                                          ; $6860: $7a
	inc sp                                           ; $6861: $33
	ld a, a                                          ; $6862: $7f
	ld d, b                                          ; $6863: $50
	ld a, [hl]                                       ; $6864: $7e
	sub b                                            ; $6865: $90
	jp c, $9aff                                      ; $6866: $da $ff $9a

	add c                                            ; $6869: $81
	pop bc                                           ; $686a: $c1
	pop bc                                           ; $686b: $c1
	db $e3                                           ; $686c: $e3
	ldh [$de], a                                     ; $686d: $e0 $de
	ldh a, [hDisp1_WX]                                     ; $686f: $f0 $96
	sbc l                                            ; $6871: $9d
	db $dd                                           ; $6872: $dd
	push bc                                          ; $6873: $c5
	rst SubAFromBC                                          ; $6874: $e7
	rst SubAFromBC                                          ; $6875: $e7
	di                                               ; $6876: $f3
	pop af                                           ; $6877: $f1
	pop af                                           ; $6878: $f1
	inc de                                           ; $6879: $13
	db $dd                                           ; $687a: $dd
	ld [de], a                                       ; $687b: $12
	sub d                                            ; $687c: $92
	dec de                                           ; $687d: $1b
	ld [bc], a                                       ; $687e: $02
	ld [de], a                                       ; $687f: $12
	db $d3                                           ; $6880: $d3
	jp c, $dbdb                                      ; $6881: $da $db $db

	jp nc, $cbdb                                     ; $6884: $d2 $db $cb

	db $d3                                           ; $6887: $d3
	db $fd                                           ; $6888: $fd
	ld bc, $8971                                     ; $6889: $01 $71 $89
	ld a, [hl]                                       ; $688c: $7e
	jr z, jr_03f_6827                                ; $688d: $28 $98

	inc bc                                           ; $688f: $03
	add b                                            ; $6890: $80
	ret nz                                           ; $6891: $c0

	ld h, b                                          ; $6892: $60
	ldh a, [$f8]                                     ; $6893: $f0 $f8
	cp h                                             ; $6895: $bc
	ld b, h                                          ; $6896: $44
	ret nz                                           ; $6897: $c0

	sbc [hl]                                         ; $6898: $9e
	rrca                                             ; $6899: $0f
	db $db                                           ; $689a: $db
	rst $38                                          ; $689b: $ff
	sbc l                                            ; $689c: $9d
	cp $f0                                           ; $689d: $fe $f0
	ld a, [$f79e]                                    ; $689f: $fa $9e $f7
	ld a, b                                          ; $68a2: $78
	ld d, b                                          ; $68a3: $50
	ld [hl], a                                       ; $68a4: $77
	ldh [c], a                                       ; $68a5: $e2
	rst SubAFromDE                                          ; $68a6: $df
	rrca                                             ; $68a7: $0f
	ld l, a                                          ; $68a8: $6f
	add c                                            ; $68a9: $81
	ld a, [hl]                                       ; $68aa: $7e
	sub d                                            ; $68ab: $92
	ld [hl], e                                       ; $68ac: $73
	ldh a, [$7b]                                     ; $68ad: $f0 $7b
	reti                                             ; $68af: $d9


	db $fd                                           ; $68b0: $fd
	sbc e                                            ; $68b1: $9b
	ld c, h                                          ; $68b2: $4c
	rst $38                                          ; $68b3: $ff
	jr c, jr_03f_68dc                                ; $68b4: $38 $26

	ld [hl], e                                       ; $68b6: $73
	ldh a, [$7b]                                     ; $68b7: $f0 $7b
	ld a, d                                          ; $68b9: $7a
	ld [hl], c                                       ; $68ba: $71
	ld [hl], d                                       ; $68bb: $72
	sub a                                            ; $68bc: $97
	rst $38                                          ; $68bd: $ff
	add d                                            ; $68be: $82
	add d                                            ; $68bf: $82
	jp nz, $fcf2                                     ; $68c0: $c2 $f2 $fc

	rst $38                                          ; $68c3: $ff
	ld a, a                                          ; $68c4: $7f
	ld a, b                                          ; $68c5: $78
	ld a, [hl]                                       ; $68c6: $7e
	ld a, a                                          ; $68c7: $7f
	add hl, de                                       ; $68c8: $19
	ld a, l                                          ; $68c9: $7d
	cp $7f                                           ; $68ca: $fe $7f
	sbc h                                            ; $68cc: $9c
	ld a, [hl]                                       ; $68cd: $7e
	ret c                                            ; $68ce: $d8

	ld a, a                                          ; $68cf: $7f
	cp $df                                           ; $68d0: $fe $df
	inc c                                            ; $68d2: $0c
	sbc [hl]                                         ; $68d3: $9e
	rst SubAFromBC                                          ; $68d4: $e7
	jp c, $94f7                                      ; $68d5: $da $f7 $94

	rla                                              ; $68d8: $17
	inc b                                            ; $68d9: $04
	rrca                                             ; $68da: $0f
	rrca                                             ; $68db: $0f

jr_03f_68dc:
	rlca                                             ; $68dc: $07
	rlca                                             ; $68dd: $07
	inc bc                                           ; $68de: $03
	inc bc                                           ; $68df: $03
	rst $38                                          ; $68e0: $ff
	di                                               ; $68e1: $f3
	adc a                                            ; $68e2: $8f
	db $db                                           ; $68e3: $db
	rst $38                                          ; $68e4: $ff
	ld l, e                                          ; $68e5: $6b
	sub c                                            ; $68e6: $91
	ret c                                            ; $68e7: $d8

	rst $38                                          ; $68e8: $ff
	sbc l                                            ; $68e9: $9d
	cp $c7                                           ; $68ea: $fe $c7
	db $dd                                           ; $68ec: $dd
	rst SubAFromDE                                          ; $68ed: $df
	sbc h                                            ; $68ee: $9c
	sbc a                                            ; $68ef: $9f
	rst GetHLinHL                                          ; $68f0: $cf
	rra                                              ; $68f1: $1f
	db $db                                           ; $68f2: $db
	rst GetHLinHL                                          ; $68f3: $cf
	sbc [hl]                                         ; $68f4: $9e
	rst SubAFromDE                                          ; $68f5: $df
	ld [hl], a                                       ; $68f6: $77
	sub d                                            ; $68f7: $92
	ld l, l                                          ; $68f8: $6d
	push de                                          ; $68f9: $d5
	ld a, [hl]                                       ; $68fa: $7e
	ld bc, $3c75                                     ; $68fb: $01 $75 $3c
	ld a, e                                          ; $68fe: $7b
	ldh a, [$7f]                                     ; $68ff: $f0 $7f
	cp a                                             ; $6901: $bf
	ld l, a                                          ; $6902: $6f
	ld c, a                                          ; $6903: $4f
	ld a, a                                          ; $6904: $7f
	ld b, e                                          ; $6905: $43
	ld a, c                                          ; $6906: $79
	add hl, de                                       ; $6907: $19
	ld l, h                                          ; $6908: $6c
	sub b                                            ; $6909: $90
	db $dd                                           ; $690a: $dd
	rst $38                                          ; $690b: $ff
	ld a, c                                          ; $690c: $79
	ld h, b                                          ; $690d: $60
	ld a, [hl]                                       ; $690e: $7e
	cp d                                             ; $690f: $ba
	ld a, a                                          ; $6910: $7f
	ld h, d                                          ; $6911: $62
	sbc $bf                                          ; $6912: $de $bf
	sbc b                                            ; $6914: $98
	and b                                            ; $6915: $a0
	cp a                                             ; $6916: $bf
	and b                                            ; $6917: $a0
	and b                                            ; $6918: $a0
	ld hl, sp-$01                                    ; $6919: $f8 $ff
	cp a                                             ; $691b: $bf
	sbc $ff                                          ; $691c: $de $ff
	rst SubAFromDE                                          ; $691e: $df
	rst SubAFromDE                                          ; $691f: $df
	ld l, a                                          ; $6920: $6f
	ld d, d                                          ; $6921: $52
	ld a, l                                          ; $6922: $7d
	ld b, a                                          ; $6923: $47
	ld l, e                                          ; $6924: $6b
	ret c                                            ; $6925: $d8

	ld a, a                                          ; $6926: $7f
	db $db                                           ; $6927: $db
	sbc $e3                                          ; $6928: $de $e3
	sbc e                                            ; $692a: $9b
	ld hl, $e1e1                                     ; $692b: $21 $e1 $e1
	ldh [$6c], a                                     ; $692e: $e0 $6c
	ld l, b                                          ; $6930: $68
	ld a, c                                          ; $6931: $79
	and a                                            ; $6932: $a7
	rst SubAFromDE                                          ; $6933: $df
	ei                                               ; $6934: $fb
	db $dd                                           ; $6935: $dd
	db $fd                                           ; $6936: $fd
	sbc l                                            ; $6937: $9d
	sub c                                            ; $6938: $91
	ld [$ffda], sp                                   ; $6939: $08 $da $ff
	sbc [hl]                                         ; $693c: $9e
	sbc a                                            ; $693d: $9f
	db $dd                                           ; $693e: $dd
	ld hl, sp-$6f                                    ; $693f: $f8 $91
	ld bc, $8204                                     ; $6941: $01 $04 $82
	jp $f9f9                                         ; $6944: $c3 $f9 $f9


	db $fc                                           ; $6947: $fc
	cp $fe                                           ; $6948: $fe $fe
	rrca                                             ; $694a: $0f
	jp $02e1                                         ; $694b: $c3 $e1 $02


	ld [hl+], a                                      ; $694e: $22
	db $db                                           ; $694f: $db
	ld [bc], a                                       ; $6950: $02
	sbc d                                            ; $6951: $9a
	db $db                                           ; $6952: $db
	ei                                               ; $6953: $fb
	ei                                               ; $6954: $fb
	ld a, e                                          ; $6955: $7b
	ld a, e                                          ; $6956: $7b
	sbc $fb                                          ; $6957: $de $fb
	rst SubAFromDE                                          ; $6959: $df
	rrca                                             ; $695a: $0f
	ld a, l                                          ; $695b: $7d
	adc c                                            ; $695c: $89
	sub e                                            ; $695d: $93
	dec hl                                           ; $695e: $2b
	inc hl                                           ; $695f: $23
	ld [hl+], a                                      ; $6960: $22
	ld [hl+], a                                      ; $6961: $22
	cp a                                             ; $6962: $bf
	xor a                                            ; $6963: $af
	xor a                                            ; $6964: $af
	and a                                            ; $6965: $a7
	or e                                             ; $6966: $b3
	cp d                                             ; $6967: $ba
	cp e                                             ; $6968: $bb
	cp e                                             ; $6969: $bb
	ld h, [hl]                                       ; $696a: $66
	jp nz, $f96f                                     ; $696b: $c2 $6f $f9

	rst SubAFromDE                                          ; $696e: $df
	rst $38                                          ; $696f: $ff
	db $db                                           ; $6970: $db
	db $fc                                           ; $6971: $fc
	ld [hl], a                                       ; $6972: $77
	ldh a, [$de]                                     ; $6973: $f0 $de
	db $fd                                           ; $6975: $fd
	sbc h                                            ; $6976: $9c
	ld bc, $fdfd                                     ; $6977: $01 $fd $fd
	ld [hl], l                                       ; $697a: $75
	ld b, $7d                                        ; $697b: $06 $7d
	rst AddAOntoHL                                          ; $697d: $ef
	ld a, c                                          ; $697e: $79
	add [hl]                                         ; $697f: $86
	sbc [hl]                                         ; $6980: $9e
	ret nz                                           ; $6981: $c0

	db $db                                           ; $6982: $db
	add b                                            ; $6983: $80
	ld a, e                                          ; $6984: $7b
	scf                                              ; $6985: $37
	ld a, d                                          ; $6986: $7a
	inc d                                            ; $6987: $14
	halt                                             ; $6988: $76
	jr z, @+$7a                                      ; $6989: $28 $78

	ld d, b                                          ; $698b: $50
	ld [hl], b                                       ; $698c: $70
	call Call_03f_759d                               ; $698d: $cd $9d $75
	ld b, b                                          ; $6990: $40
	ld [hl], e                                       ; $6991: $73
	ld hl, sp-$63                                    ; $6992: $f8 $9d
	ld bc, $7280                                     ; $6994: $01 $80 $72
	rra                                              ; $6997: $1f
	db $db                                           ; $6998: $db
	cp a                                             ; $6999: $bf
	sbc l                                            ; $699a: $9d
	and c                                            ; $699b: $a1
	and e                                            ; $699c: $a3
	ld a, e                                          ; $699d: $7b
	ld b, h                                          ; $699e: $44
	rst SubAFromDE                                          ; $699f: $df
	rst SubAFromDE                                          ; $69a0: $df
	sbc d                                            ; $69a1: $9a
	ret nz                                           ; $69a2: $c0

	rst SubAFromDE                                          ; $69a3: $df
	sbc $ff                                          ; $69a4: $de $ff
	ld hl, sp+$79                                    ; $69a6: $f8 $79
	ld c, c                                          ; $69a8: $49
	ld a, a                                          ; $69a9: $7f
	call nz, $e07f                                   ; $69aa: $c4 $7f $e0
	sub l                                            ; $69ad: $95
	rst FarCall                                          ; $69ae: $f7
	rst AddAOntoHL                                          ; $69af: $ef
	rst AddAOntoHL                                          ; $69b0: $ef
	rst SubAFromDE                                          ; $69b1: $df
	cp a                                             ; $69b2: $bf
	ld a, a                                          ; $69b3: $7f
	rst $38                                          ; $69b4: $ff
	nop                                              ; $69b5: $00
	add b                                            ; $69b6: $80
	add b                                            ; $69b7: $80
	call c, $9d40                                    ; $69b8: $dc $40 $9d
	rst SubAFromDE                                          ; $69bb: $df
	rst AddAOntoHL                                          ; $69bc: $ef
	db $dd                                           ; $69bd: $dd
	rst FarCall                                          ; $69be: $f7
	sbc h                                            ; $69bf: $9c
	di                                               ; $69c0: $f3
	ld sp, hl                                        ; $69c1: $f9
	db $fd                                           ; $69c2: $fd
	ld [hl], l                                       ; $69c3: $75
	ld bc, $64fe                                     ; $69c4: $01 $fe $64
	or b                                             ; $69c7: $b0
	ld a, l                                          ; $69c8: $7d
	push de                                          ; $69c9: $d5
	ld l, c                                          ; $69ca: $69
	ret                                              ; $69cb: $c9


	ld l, a                                          ; $69cc: $6f
	ld sp, hl                                        ; $69cd: $f9
	ld h, [hl]                                       ; $69ce: $66
	daa                                              ; $69cf: $27
	rra                                              ; $69d0: $1f
	ldh a, [$7a]                                     ; $69d1: $f0 $7a
	ld d, h                                          ; $69d3: $54
	ld a, [hl]                                       ; $69d4: $7e
	ld a, [$379d]                                    ; $69d5: $fa $9d $37
	add e                                            ; $69d8: $83
	ei                                               ; $69d9: $fb
	ld a, [hl]                                       ; $69da: $7e
	cp a                                             ; $69db: $bf
	ld a, e                                          ; $69dc: $7b
	sub h                                            ; $69dd: $94
	ld a, b                                          ; $69de: $78
	sub a                                            ; $69df: $97
	ld a, [hl]                                       ; $69e0: $7e
	and l                                            ; $69e1: $a5
	jp hl                                            ; $69e2: $e9


	rst SubAFromDE                                          ; $69e3: $df
	ld bc, $d869                                     ; $69e4: $01 $69 $d8
	jp c, Jump_03f_7f0f                              ; $69e7: $da $0f $7f

	ld [hl], b                                       ; $69ea: $70
	sbc l                                            ; $69eb: $9d
	rst JumpTable                                          ; $69ec: $c7
	ld a, a                                          ; $69ed: $7f
	ld [hl], l                                       ; $69ee: $75
	dec d                                            ; $69ef: $15
	sbc h                                            ; $69f0: $9c
	add a                                            ; $69f1: $87
	jp Jump_03f_71e1                                 ; $69f2: $c3 $e1 $71


	ld a, h                                          ; $69f5: $7c
	sbc [hl]                                         ; $69f6: $9e
	ld [hl], a                                       ; $69f7: $77
	ld l, l                                          ; $69f8: $6d
	ld [$0095], sp                                   ; $69f9: $08 $95 $00
	ld sp, hl                                        ; $69fc: $f9
	rst $38                                          ; $69fd: $ff
	ld a, [$faf5]                                    ; $69fe: $fa $f5 $fa
	db $fd                                           ; $6a01: $fd
	ld a, [$06fd]                                    ; $6a02: $fa $fd $06
	ld a, [$997f]                                    ; $6a05: $fa $7f $99
	sub l                                            ; $6a08: $95
	xor a                                            ; $6a09: $af
	ld d, a                                          ; $6a0a: $57
	dec hl                                           ; $6a0b: $2b
	dec d                                            ; $6a0c: $15
	dec bc                                           ; $6a0d: $0b
	dec b                                            ; $6a0e: $05
	ld [hl+], a                                      ; $6a0f: $22
	dec de                                           ; $6a10: $1b
	ld [bc], a                                       ; $6a11: $02
	ld h, d                                          ; $6a12: $62
	db $dd                                           ; $6a13: $dd
	ld [bc], a                                       ; $6a14: $02
	sbc b                                            ; $6a15: $98
	and d                                            ; $6a16: $a2
	sbc e                                            ; $6a17: $9b
	sbc e                                            ; $6a18: $9b
	db $eb                                           ; $6a19: $eb
	db $eb                                           ; $6a1a: $eb
	di                                               ; $6a1b: $f3
	di                                               ; $6a1c: $f3
	ld a, e                                          ; $6a1d: $7b
	call z, $827f                                    ; $6a1e: $cc $7f $82
	ld [hl], e                                       ; $6a21: $73
	cp b                                             ; $6a22: $b8
	ld a, e                                          ; $6a23: $7b
	adc h                                            ; $6a24: $8c
	ld a, a                                          ; $6a25: $7f
	inc a                                            ; $6a26: $3c
	sbc l                                            ; $6a27: $9d
	ei                                               ; $6a28: $fb
	ld sp, hl                                        ; $6a29: $f9
	ld c, l                                          ; $6a2a: $4d
	ld [hl], b                                       ; $6a2b: $70
	ld a, a                                          ; $6a2c: $7f
	ld [hl], h                                       ; $6a2d: $74
	call c, Call_03f_7cff                            ; $6a2e: $dc $ff $7c
	or b                                             ; $6a31: $b0
	sbc [hl]                                         ; $6a32: $9e
	ldh [$fe], a                                     ; $6a33: $e0 $fe
	sbc d                                            ; $6a35: $9a
	inc e                                            ; $6a36: $1c
	inc hl                                           ; $6a37: $23
	jr nz, jr_03f_6a9a                               ; $6a38: $20 $60

	ld b, b                                          ; $6a3a: $40
	ld l, l                                          ; $6a3b: $6d
	jp c, Jump_03f_769d                              ; $6a3c: $da $9d $76

	db $10                                           ; $6a3f: $10
	ld [hl], a                                       ; $6a40: $77
	ld [hl], l                                       ; $6a41: $75
	sbc e                                            ; $6a42: $9b

jr_03f_6a43:
	ld [bc], a                                       ; $6a43: $02
	rst SubAFromDE                                          ; $6a44: $df
	dec sp                                           ; $6a45: $3b
	rra                                              ; $6a46: $1f
	sbc $ff                                          ; $6a47: $de $ff
	ld l, d                                          ; $6a49: $6a
	cp $9e                                           ; $6a4a: $fe $9e
	rrca                                             ; $6a4c: $0f
	ld [hl], b                                       ; $6a4d: $70
	ld h, e                                          ; $6a4e: $63
	sub l                                            ; $6a4f: $95
	cp $fc                                           ; $6a50: $fe $fc
	ld hl, sp+$10                                    ; $6a52: $f8 $10
	jr nc, jr_03f_6a76                               ; $6a54: $30 $20

	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	dec b                                            ; $6a58: $05
	dec bc                                           ; $6a59: $0b
	ld d, a                                          ; $6a5a: $57
	cp b                                             ; $6a5b: $b8
	sbc l                                            ; $6a5c: $9d
	inc bc                                           ; $6a5d: $03
	ld b, $d9                                        ; $6a5e: $06 $d9
	rst $38                                          ; $6a60: $ff
	sbc h                                            ; $6a61: $9c
	ld h, b                                          ; $6a62: $60
	ld a, h                                          ; $6a63: $7c
	ld [hl+], a                                      ; $6a64: $22
	ld [hl], d                                       ; $6a65: $72
	sub [hl]                                         ; $6a66: $96
	ld h, [hl]                                       ; $6a67: $66
	ret nc                                           ; $6a68: $d0

	ld [hl], a                                       ; $6a69: $77
	sbc e                                            ; $6a6a: $9b
	sbc [hl]                                         ; $6a6b: $9e
	ld h, b                                          ; $6a6c: $60
	ld a, e                                          ; $6a6d: $7b
	ld c, h                                          ; $6a6e: $4c
	sbc h                                            ; $6a6f: $9c
	ld a, a                                          ; $6a70: $7f
	sbc a                                            ; $6a71: $9f
	and $73                                          ; $6a72: $e6 $73
	add h                                            ; $6a74: $84
	ld b, [hl]                                       ; $6a75: $46

jr_03f_6a76:
	nop                                              ; $6a76: $00
	rst SubAFromDE                                          ; $6a77: $df
	inc [hl]                                         ; $6a78: $34
	sbc l                                            ; $6a79: $9d
	ld b, h                                          ; $6a7a: $44
	ld b, l                                          ; $6a7b: $45
	db $db                                           ; $6a7c: $db
	ld d, l                                          ; $6a7d: $55
	ld a, e                                          ; $6a7e: $7b
	or $9d                                           ; $6a7f: $f6 $9d
	ld b, a                                          ; $6a81: $47
	ld [hl], a                                       ; $6a82: $77
	rla                                              ; $6a83: $17
	or $df                                           ; $6a84: $f6 $df
	ld b, h                                          ; $6a86: $44
	sbc [hl]                                         ; $6a87: $9e
	ld b, [hl]                                       ; $6a88: $46
	db $dd                                           ; $6a89: $dd
	ld h, [hl]                                       ; $6a8a: $66
	ld [hl], e                                       ; $6a8b: $73
	or $90                                           ; $6a8c: $f6 $90
	ld b, l                                          ; $6a8e: $45
	ld h, [hl]                                       ; $6a8f: $66
	ld h, [hl]                                       ; $6a90: $66
	ld h, h                                          ; $6a91: $64
	ld h, [hl]                                       ; $6a92: $66
	ld b, h                                          ; $6a93: $44
	inc [hl]                                         ; $6a94: $34
	ld b, l                                          ; $6a95: $45
	ld b, h                                          ; $6a96: $44
	ld b, h                                          ; $6a97: $44
	ld d, l                                          ; $6a98: $55
	ld d, [hl]                                       ; $6a99: $56

jr_03f_6a9a:
	ld h, [hl]                                       ; $6a9a: $66
	ld d, l                                          ; $6a9b: $55
	ld d, l                                          ; $6a9c: $55
	sbc $44                                          ; $6a9d: $de $44
	rst SubAFromDE                                          ; $6a9f: $df
	ld d, h                                          ; $6aa0: $54
	ld a, a                                          ; $6aa1: $7f
	cp b                                             ; $6aa2: $b8
	ld a, a                                          ; $6aa3: $7f
	or $9e                                           ; $6aa4: $f6 $9e
	ld d, h                                          ; $6aa6: $54
	sbc $44                                          ; $6aa7: $de $44
	ld [hl], a                                       ; $6aa9: $77
	pop af                                           ; $6aaa: $f1
	ld a, a                                          ; $6aab: $7f
	db $f4                                           ; $6aac: $f4
	ld [hl], a                                       ; $6aad: $77
	or $7b                                           ; $6aae: $f6 $7b

jr_03f_6ab0:
	ld a, [$e27f]                                    ; $6ab0: $fa $7f $e2
	ld [hl], a                                       ; $6ab3: $77
	rst FarCall                                          ; $6ab4: $f7
	ld a, a                                          ; $6ab5: $7f
	or $9e                                           ; $6ab6: $f6 $9e
	ld [hl], l                                       ; $6ab8: $75
	ld [hl], e                                       ; $6ab9: $73
	ld sp, hl                                        ; $6aba: $f9
	jr c, jr_03f_6a43                                ; $6abb: $38 $86

	pop af                                           ; $6abd: $f1
	reti                                             ; $6abe: $d9


	cpl                                              ; $6abf: $2f
	reti                                             ; $6ac0: $d9


	add hl, de                                       ; $6ac1: $19
	sbc h                                            ; $6ac2: $9c
	ld h, c                                          ; $6ac3: $61
	ld a, b                                          ; $6ac4: $78
	ld c, h                                          ; $6ac5: $4c
	call c, $9d44                                    ; $6ac6: $dc $44 $9d
	sbc [hl]                                         ; $6ac9: $9e
	add a                                            ; $6aca: $87
	db $db                                           ; $6acb: $db
	add e                                            ; $6acc: $83
	rst SubAFromDE                                          ; $6acd: $df
	sbc a                                            ; $6ace: $9f
	db $db                                           ; $6acf: $db
	rra                                              ; $6ad0: $1f
	db $db                                           ; $6ad1: $db
	ldh [$9d], a                                     ; $6ad2: $e0 $9d
	ld h, b                                          ; $6ad4: $60
	jr nz, jr_03f_6ab0                               ; $6ad5: $20 $d9

	rst $38                                          ; $6ad7: $ff
	ld sp, hl                                        ; $6ad8: $f9
	inc bc                                           ; $6ad9: $03
	ldh a, [$73]                                     ; $6ada: $f0 $73
	db $f4                                           ; $6adc: $f4
	sbc l                                            ; $6add: $9d
	ld a, a                                          ; $6ade: $7f
	ld b, b                                          ; $6adf: $40
	ld [hl], e                                       ; $6ae0: $73
	db $f4                                           ; $6ae1: $f4
	rst $38                                          ; $6ae2: $ff
	sbc [hl]                                         ; $6ae3: $9e
	ccf                                              ; $6ae4: $3f
	ld l, a                                          ; $6ae5: $6f
	ldh a, [$6f]                                     ; $6ae6: $f0 $6f
	pop hl                                           ; $6ae8: $e1
	ld [hl], a                                       ; $6ae9: $77
	rst FarCall                                          ; $6aea: $f7
	cpl                                              ; $6aeb: $2f
	ldh a, [$9d]                                     ; $6aec: $f0 $9d
	ldh [rTAC], a                                    ; $6aee: $e0 $07
	ld l, a                                          ; $6af0: $6f
	ldh a, [$9d]                                     ; $6af1: $f0 $9d

jr_03f_6af3:
	rrca                                             ; $6af3: $0f
	rst AddAOntoHL                                          ; $6af4: $ef
	ld l, e                                          ; $6af5: $6b
	or h                                             ; $6af6: $b4
	ld [hl], e                                       ; $6af7: $73
	rst SubAFromDE                                          ; $6af8: $df
	ld a, a                                          ; $6af9: $7f
	ei                                               ; $6afa: $fb
	ld h, e                                          ; $6afb: $63
	and h                                            ; $6afc: $a4
	inc bc                                           ; $6afd: $03
	ldh a, [$03]                                     ; $6afe: $f0 $03
	ldh a, [$03]                                     ; $6b00: $f0 $03
	ldh a, [$2f]                                     ; $6b02: $f0 $2f
	ldh a, [$f1]                                     ; $6b04: $f0 $f1
	reti                                             ; $6b06: $d9


	ld l, $d9                                        ; $6b07: $2e $d9
	add hl, de                                       ; $6b09: $19
	reti                                             ; $6b0a: $d9


	ld b, h                                          ; $6b0b: $44
	reti                                             ; $6b0c: $d9


	add e                                            ; $6b0d: $83
	rst SubAFromDE                                          ; $6b0e: $df
	rra                                              ; $6b0f: $1f
	sbc l                                            ; $6b10: $9d
	dec de                                           ; $6b11: $1b
	add hl, de                                       ; $6b12: $19
	db $dd                                           ; $6b13: $dd
	jr @-$25                                         ; $6b14: $18 $d9

	jr nz, jr_03f_6af3                               ; $6b16: $20 $db

	rst $38                                          ; $6b18: $ff
	sbc l                                            ; $6b19: $9d
	ld a, a                                          ; $6b1a: $7f
	ccf                                              ; $6b1b: $3f
	ld [bc], a                                       ; $6b1c: $02
	ret nz                                           ; $6b1d: $c0

	ld a, [$40dd]                                    ; $6b1e: $fa $dd $40
	sbc c                                            ; $6b21: $99
	ld b, a                                          ; $6b22: $47
	ld b, c                                          ; $6b23: $41
	ld b, b                                          ; $6b24: $40
	ld b, b                                          ; $6b25: $40
	ccf                                              ; $6b26: $3f
	ccf                                              ; $6b27: $3f
	sbc $30                                          ; $6b28: $de $30
	sbc h                                            ; $6b2a: $9c
	ld [hl], $30                                     ; $6b2b: $36 $30
	jr nc, @-$01                                     ; $6b2d: $30 $fd

	sbc l                                            ; $6b2f: $9d
	ld [hl], b                                       ; $6b30: $70
	adc $77                                          ; $6b31: $ce $77
	ret c                                            ; $6b33: $d8

	cp $73                                           ; $6b34: $fe $73
	ldh a, [c]                                       ; $6b36: $f2
	ld c, a                                          ; $6b37: $4f
	ret z                                            ; $6b38: $c8

	reti                                             ; $6b39: $d9


	rlca                                             ; $6b3a: $07
	reti                                             ; $6b3b: $d9


	rst AddAOntoHL                                          ; $6b3c: $ef
	call c, $9cff                                    ; $6b3d: $dc $ff $9c
	db $fd                                           ; $6b40: $fd
	cp $fd                                           ; $6b41: $fe $fd
	push de                                          ; $6b43: $d5
	rst $38                                          ; $6b44: $ff
	sbc e                                            ; $6b45: $9b
	cp a                                             ; $6b46: $bf
	ld e, l                                          ; $6b47: $5d
	xor d                                            ; $6b48: $aa
	ld d, l                                          ; $6b49: $55
	call nc, $9cff                                   ; $6b4a: $d4 $ff $9c
	ei                                               ; $6b4d: $fb
	xor l                                            ; $6b4e: $ad
	ld d, d                                          ; $6b4f: $52
	db $d3                                           ; $6b50: $d3
	rst $38                                          ; $6b51: $ff
	sbc l                                            ; $6b52: $9d
	ld e, a                                          ; $6b53: $5f
	xor e                                            ; $6b54: $ab
	jp nc, $9eff                                     ; $6b55: $d2 $ff $9e

	cp $d4                                           ; $6b58: $fe $d4
	rst $38                                          ; $6b5a: $ff
	sbc h                                            ; $6b5b: $9c
	push af                                          ; $6b5c: $f5
	ld [$d4b5], a                                    ; $6b5d: $ea $b5 $d4
	rst $38                                          ; $6b60: $ff
	sbc l                                            ; $6b61: $9d
	ld a, a                                          ; $6b62: $7f
	xor a                                            ; $6b63: $af
	ld c, a                                          ; $6b64: $4f
	or b                                             ; $6b65: $b0
	ld a, e                                          ; $6b66: $7b
	xor $c9                                          ; $6b67: $ee $c9
	rst $38                                          ; $6b69: $ff
	rst $38                                          ; $6b6a: $ff
	sbc [hl]                                         ; $6b6b: $9e
	inc b                                            ; $6b6c: $04
	ld sp, hl                                        ; $6b6d: $f9
	call c, $db04                                    ; $6b6e: $dc $04 $db
	ld l, $df                                        ; $6b71: $2e $df
	ld l, [hl]                                       ; $6b73: $6e
	ld h, d                                          ; $6b74: $62
	ret nz                                           ; $6b75: $c0

	jp c, $d904                                      ; $6b76: $da $04 $d9

	add e                                            ; $6b79: $83
	reti                                             ; $6b7a: $d9


	jr @-$25                                         ; $6b7b: $18 $d9

	jr nz, @-$1f                                     ; $6b7d: $20 $df

	rra                                              ; $6b7f: $1f
	sbc d                                            ; $6b80: $9a
	rrca                                             ; $6b81: $0f
	rlca                                             ; $6b82: $07
	rlca                                             ; $6b83: $07
	inc bc                                           ; $6b84: $03
	ld bc, $0843                                     ; $6b85: $01 $43 $08
	ld [hl+], a                                      ; $6b88: $22
	ret nz                                           ; $6b89: $c0

	sbc h                                            ; $6b8a: $9c
	ld b, e                                          ; $6b8b: $43
	ld b, b                                          ; $6b8c: $40
	ld b, b                                          ; $6b8d: $40
	ld a, d                                          ; $6b8e: $7a
	pop bc                                           ; $6b8f: $c1
	sbc e                                            ; $6b90: $9b
	ld b, b                                          ; $6b91: $40
	jr nc, jr_03f_6bc8                               ; $6b92: $30 $34

	scf                                              ; $6b94: $37
	ld a, d                                          ; $6b95: $7a
	pop bc                                           ; $6b96: $c1
	rst SubAFromDE                                          ; $6b97: $df
	ccf                                              ; $6b98: $3f
	sbc d                                            ; $6b99: $9a
	nop                                              ; $6b9a: $00
	cp $fc                                           ; $6b9b: $fe $fc
	nop                                              ; $6b9d: $00
	ldh a, [c]                                       ; $6b9e: $f2
	ld a, [$0c9e]                                    ; $6b9f: $fa $9e $0c
	ld [hl], d                                       ; $6ba2: $72
	cp d                                             ; $6ba3: $ba
	sbc l                                            ; $6ba4: $9d
	jr nz, jr_03f_6bb5                               ; $6ba5: $20 $0e

	cp $7e                                           ; $6ba7: $fe $7e
	ld l, b                                          ; $6ba9: $68
	rst SubAFromDE                                          ; $6baa: $df
	add b                                            ; $6bab: $80
	sbc [hl]                                         ; $6bac: $9e
	or c                                             ; $6bad: $b1
	db $dd                                           ; $6bae: $dd
	add b                                            ; $6baf: $80
	sbc h                                            ; $6bb0: $9c
	ld b, $07                                        ; $6bb1: $06 $07
	add a                                            ; $6bb3: $87
	ld a, e                                          ; $6bb4: $7b

jr_03f_6bb5:
	cp $7a                                           ; $6bb5: $fe $7a
	ret nz                                           ; $6bb7: $c0

	rst SubAFromDE                                          ; $6bb8: $df
	cpl                                              ; $6bb9: $2f
	sbc [hl]                                         ; $6bba: $9e
	xor a                                            ; $6bbb: $af
	db $dd                                           ; $6bbc: $dd
	cpl                                              ; $6bbd: $2f
	sub a                                            ; $6bbe: $97
	cp d                                             ; $6bbf: $ba

Jump_03f_6bc0:
	ld d, l                                          ; $6bc0: $55
	xor d                                            ; $6bc1: $aa
	ret nc                                           ; $6bc2: $d0

	and b                                            ; $6bc3: $a0
	ret nc                                           ; $6bc4: $d0

	ld [$d9d5], a                                    ; $6bc5: $ea $d5 $d9

jr_03f_6bc8:
	rst $38                                          ; $6bc8: $ff
	ld a, [hl]                                       ; $6bc9: $7e
	add $9b                                          ; $6bca: $c6 $9b
	xor d                                            ; $6bcc: $aa
	dec d                                            ; $6bcd: $15
	ld a, [bc]                                       ; $6bce: $0a
	ld d, l                                          ; $6bcf: $55
	ld e, [hl]                                       ; $6bd0: $5e
	ret nz                                           ; $6bd1: $c0

	sbc [hl]                                         ; $6bd2: $9e
	adc b                                            ; $6bd3: $88
	cp $9b                                           ; $6bd4: $fe $9b
	add b                                            ; $6bd6: $80
	ld d, d                                          ; $6bd7: $52
	xor l                                            ; $6bd8: $ad
	jp c, $ffd9                                      ; $6bd9: $da $d9 $ff

	sub a                                            ; $6bdc: $97
	ld d, a                                          ; $6bdd: $57
	dec bc                                           ; $6bde: $0b
	rlca                                             ; $6bdf: $07
	ld [bc], a                                       ; $6be0: $02
	dec b                                            ; $6be1: $05
	adc d                                            ; $6be2: $8a
	ld d, a                                          ; $6be3: $57
	cp a                                             ; $6be4: $bf
	reti                                             ; $6be5: $d9


	rst $38                                          ; $6be6: $ff
	sbc c                                            ; $6be7: $99
	db $fd                                           ; $6be8: $fd
	ld a, [$eaf5]                                    ; $6be9: $fa $f5 $ea
	ld d, l                                          ; $6bec: $55
	ld a, [$815e]                                    ; $6bed: $fa $5e $81
	sbc b                                            ; $6bf0: $98
	ld c, d                                          ; $6bf1: $4a
	and h                                            ; $6bf2: $a4
	nop                                              ; $6bf3: $00
	add b                                            ; $6bf4: $80
	ld d, h                                          ; $6bf5: $54
	xor d                                            ; $6bf6: $aa
	or $63                                           ; $6bf7: $f6 $63
	rst AddAOntoHL                                          ; $6bf9: $ef
	sub a                                            ; $6bfa: $97
	ld [hl+], a                                      ; $6bfb: $22
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	ld bc, $5502                                     ; $6bfe: $01 $02 $55
	xor d                                            ; $6c01: $aa
	ld d, a                                          ; $6c02: $57
	ld h, d                                          ; $6c03: $62
	ld h, h                                          ; $6c04: $64
	sbc e                                            ; $6c05: $9b
	ld d, a                                          ; $6c06: $57
	xor e                                            ; $6c07: $ab
	ld d, l                                          ; $6c08: $55
	xor e                                            ; $6c09: $ab
	ld [hl+], a                                      ; $6c0a: $22
	jp nz, $286b                                     ; $6c0b: $c2 $6b $28

	sbc [hl]                                         ; $6c0e: $9e

jr_03f_6c0f:
	ld [bc], a                                       ; $6c0f: $02
	ld l, d                                          ; $6c10: $6a
	jp $f77f                                         ; $6c11: $c3 $7f $f7


	sbc [hl]                                         ; $6c14: $9e
	ld [bc], a                                       ; $6c15: $02
	reti                                             ; $6c16: $d9


	ld l, [hl]                                       ; $6c17: $6e
	reti                                             ; $6c18: $d9


	add hl, de                                       ; $6c19: $19
	reti                                             ; $6c1a: $d9


	inc b                                            ; $6c1b: $04
	ld h, $c0                                        ; $6c1c: $26 $c0
	pop af                                           ; $6c1e: $f1
	ld a, c                                          ; $6c1f: $79
	ld [hl], l                                       ; $6c20: $75
	sbc [hl]                                         ; $6c21: $9e
	ccf                                              ; $6c22: $3f
	halt                                             ; $6c23: $76
	xor l                                            ; $6c24: $ad
	dec e                                            ; $6c25: $1d
	add b                                            ; $6c26: $80
	sbc $47                                          ; $6c27: $de $47
	ld a, h                                          ; $6c29: $7c
	ld b, d                                          ; $6c2a: $42
	sbc e                                            ; $6c2b: $9b
	rst $38                                          ; $6c2c: $ff
	ccf                                              ; $6c2d: $3f
	ccf                                              ; $6c2e: $3f
	jr c, jr_03f_6c0f                                ; $6c2f: $38 $de

	ccf                                              ; $6c31: $3f
	db $fd                                           ; $6c32: $fd
	sbc $fc                                          ; $6c33: $de $fc
	rst $38                                          ; $6c35: $ff
	sbc e                                            ; $6c36: $9b
	reti                                             ; $6c37: $d9


	rst $38                                          ; $6c38: $ff
	rst $38                                          ; $6c39: $ff
	inc bc                                           ; $6c3a: $03
	ld [hl], a                                       ; $6c3b: $77
	jp c, $269b                                      ; $6c3c: $da $9b $26

	rra                                              ; $6c3f: $1f
	jr nz, jr_03f_6c61                               ; $6c40: $20 $1f

	db $fc                                           ; $6c42: $fc
	sbc [hl]                                         ; $6c43: $9e
	and b                                            ; $6c44: $a0
	sbc $80                                          ; $6c45: $de $80
	ld a, e                                          ; $6c47: $7b
	ldh a, [$9e]                                     ; $6c48: $f0 $9e
	rst $38                                          ; $6c4a: $ff
	ld l, [hl]                                       ; $6c4b: $6e
	jp nz, $ddff                                     ; $6c4c: $c2 $ff $dd

	cpl                                              ; $6c4f: $2f
	rst SubAFromDE                                          ; $6c50: $df
	rst AddAOntoHL                                          ; $6c51: $ef
	ld a, a                                          ; $6c52: $7f
	ldh a, [$9e]                                     ; $6c53: $f0 $9e
	xor d                                            ; $6c55: $aa
	ld l, e                                          ; $6c56: $6b
	or d                                             ; $6c57: $b2
	db $dd                                           ; $6c58: $dd
	rst $38                                          ; $6c59: $ff
	rst SubAFromDE                                          ; $6c5a: $df
	bit 7, a                                         ; $6c5b: $cb $7f
	ld sp, hl                                        ; $6c5d: $f9
	sbc l                                            ; $6c5e: $9d
	xor a                                            ; $6c5f: $af
	rst SubAFromDE                                          ; $6c60: $df

jr_03f_6c61:
	ld e, a                                          ; $6c61: $5f
	ldh a, [rPCM34]                                  ; $6c62: $f0 $77
	ret nc                                           ; $6c64: $d0

	sbc [hl]                                         ; $6c65: $9e
	rst FarCall                                          ; $6c66: $f7
	ld e, e                                          ; $6c67: $5b
	ldh [rPCM34], a                                  ; $6c68: $e0 $77
	ldh a, [$67]                                     ; $6c6a: $f0 $67
	add d                                            ; $6c6c: $82

jr_03f_6c6d:
	inc bc                                           ; $6c6d: $03
	ldh a, [$03]                                     ; $6c6e: $f0 $03
	ldh a, [$2f]                                     ; $6c70: $f0 $2f
	ldh a, [$7a]                                     ; $6c72: $f0 $7a
	sub c                                            ; $6c74: $91
	cp $99                                           ; $6c75: $fe $99
	ld bc, $0204                                     ; $6c77: $01 $04 $02
	ld [bc], a                                       ; $6c7a: $02
	nop                                              ; $6c7b: $00
	ld bc, $f67b                                     ; $6c7c: $01 $7b $f6
	sbc l                                            ; $6c7f: $9d
	inc bc                                           ; $6c80: $03
	ld l, [hl]                                       ; $6c81: $6e
	sbc $2e                                          ; $6c82: $de $2e
	sbc e                                            ; $6c84: $9b
	cpl                                              ; $6c85: $2f
	rrca                                             ; $6c86: $0f
	rra                                              ; $6c87: $1f
	ccf                                              ; $6c88: $3f
	db $dd                                           ; $6c89: $dd
	add hl, de                                       ; $6c8a: $19
	rst SubAFromDE                                          ; $6c8b: $df
	jr jr_03f_6c6d                                   ; $6c8c: $18 $df

	ld hl, sp+$0a                                    ; $6c8e: $f8 $0a
	ret nz                                           ; $6c90: $c0

	sbc [hl]                                         ; $6c91: $9e
	ldh [$f1], a                                     ; $6c92: $e0 $f1
	ld a, l                                          ; $6c94: $7d
	ld [hl], l                                       ; $6c95: $75
	ld e, l                                          ; $6c96: $5d
	ld [hl], h                                       ; $6c97: $74
	ld h, [hl]                                       ; $6c98: $66
	ret nz                                           ; $6c99: $c0

	halt                                             ; $6c9a: $76
	xor l                                            ; $6c9b: $ad
	ld b, [hl]                                       ; $6c9c: $46
	or b                                             ; $6c9d: $b0
	ld a, a                                          ; $6c9e: $7f
	db $eb                                           ; $6c9f: $eb
	ld c, e                                          ; $6ca0: $4b
	ldh a, [rOCPS]                                   ; $6ca1: $f0 $6a
	sbc [hl]                                         ; $6ca3: $9e
	inc bc                                           ; $6ca4: $03
	ldh a, [$d9]                                     ; $6ca5: $f0 $d9
	rst $38                                          ; $6ca7: $ff
	sbc [hl]                                         ; $6ca8: $9e
	or [hl]                                          ; $6ca9: $b6
	ld c, e                                          ; $6caa: $4b
	ldh a, [$7d]                                     ; $6cab: $f0 $7d
	cp b                                             ; $6cad: $b8
	ld c, a                                          ; $6cae: $4f
	ldh a, [rBGP]                                    ; $6caf: $f0 $47
	sub b                                            ; $6cb1: $90
	ld b, a                                          ; $6cb2: $47
	ldh a, [$9e]                                     ; $6cb3: $f0 $9e
	inc bc                                           ; $6cb5: $03
	ei                                               ; $6cb6: $fb
	rst SubAFromDE                                          ; $6cb7: $df
	dec h                                            ; $6cb8: $25
	db $db                                           ; $6cb9: $db
	rst $38                                          ; $6cba: $ff
	sbc [hl]                                         ; $6cbb: $9e
	or a                                             ; $6cbc: $b7
	ld b, a                                          ; $6cbd: $47
	or b                                             ; $6cbe: $b0
	rlca                                             ; $6cbf: $07
	ret nz                                           ; $6cc0: $c0

	ld a, [$209b]                                    ; $6cc1: $fa $9b $20
	ld [bc], a                                       ; $6cc4: $02
	db $10                                           ; $6cc5: $10
	add b                                            ; $6cc6: $80
	db $fd                                           ; $6cc7: $fd
	sbc l                                            ; $6cc8: $9d
	rra                                              ; $6cc9: $1f
	db $fc                                           ; $6cca: $fc
	ld l, [hl]                                       ; $6ccb: $6e
	push af                                          ; $6ccc: $f5
	ld a, l                                          ; $6ccd: $7d
	ld c, a                                          ; $6cce: $4f
	sbc l                                            ; $6ccf: $9d
	ccf                                              ; $6cd0: $3f
	rrca                                             ; $6cd1: $0f
	ld a, d                                          ; $6cd2: $7a
	ret nz                                           ; $6cd3: $c0

	sbc [hl]                                         ; $6cd4: $9e
	rrca                                             ; $6cd5: $0f
	db $dd                                           ; $6cd6: $dd
	ld a, b                                          ; $6cd7: $78
	rst SubAFromDE                                          ; $6cd8: $df
	ld e, b                                          ; $6cd9: $58
	rst SubAFromDE                                          ; $6cda: $df
	ld c, b                                          ; $6cdb: $48
	sbc l                                            ; $6cdc: $9d
	inc e                                            ; $6cdd: $1c
	ld h, b                                          ; $6cde: $60
	ei                                               ; $6cdf: $fb
	sbc l                                            ; $6ce0: $9d
	add e                                            ; $6ce1: $83
	sbc a                                            ; $6ce2: $9f
	db $db                                           ; $6ce3: $db
	rst $38                                          ; $6ce4: $ff
	sbc e                                            ; $6ce5: $9b
	jr jr_03f_6d04                                   ; $6ce6: $18 $1c

	inc e                                            ; $6ce8: $1c
	ld e, $dd                                        ; $6ce9: $1e $dd
	rra                                              ; $6ceb: $1f
	reti                                             ; $6cec: $d9


	ldh [$fb], a                                     ; $6ced: $e0 $fb
	sbc l                                            ; $6cef: $9d
	add b                                            ; $6cf0: $80
	ret nz                                           ; $6cf1: $c0

	jp hl                                            ; $6cf2: $e9


	ld [hl], b                                       ; $6cf3: $70
	ld [hl+], a                                      ; $6cf4: $22
	ld e, d                                          ; $6cf5: $5a
	xor l                                            ; $6cf6: $ad
	ld b, l                                          ; $6cf7: $45
	ld [hl], b                                       ; $6cf8: $70
	inc bc                                           ; $6cf9: $03
	ldh a, [$03]                                     ; $6cfa: $f0 $03
	ldh a, [rIF]                                     ; $6cfc: $f0 $0f
	ldh a, [$df]                                     ; $6cfe: $f0 $df
	ldh a, [$df]                                     ; $6d00: $f0 $df
	rst $38                                          ; $6d02: $ff
	sbc [hl]                                         ; $6d03: $9e

jr_03f_6d04:
	ld sp, hl                                        ; $6d04: $f9
	sbc $f8                                          ; $6d05: $de $f8
	rst $38                                          ; $6d07: $ff
	sbc [hl]                                         ; $6d08: $9e
	ld c, $6b                                        ; $6d09: $0e $6b
	ld a, d                                          ; $6d0b: $7a
	halt                                             ; $6d0c: $76
	ld b, h                                          ; $6d0d: $44
	rst SubAFromDE                                          ; $6d0e: $df
	ld a, a                                          ; $6d0f: $7f
	ld [hl], a                                       ; $6d10: $77
	rst FarCall                                          ; $6d11: $f7
	sbc h                                            ; $6d12: $9c
	ccf                                              ; $6d13: $3f
	ld a, $3d                                        ; $6d14: $3e $3d
	ld a, b                                          ; $6d16: $78
	cp $63                                           ; $6d17: $fe $63
	ret nc                                           ; $6d19: $d0

	ld a, e                                          ; $6d1a: $7b
	ei                                               ; $6d1b: $fb
	sbc l                                            ; $6d1c: $9d
	ei                                               ; $6d1d: $fb
	jp nz, $f053                                     ; $6d1e: $c2 $53 $f0

	sbc d                                            ; $6d21: $9a
	ld l, a                                          ; $6d22: $6f
	rst GetHLinHL                                          ; $6d23: $cf
	rlca                                             ; $6d24: $07
	rrca                                             ; $6d25: $0f
	dec de                                           ; $6d26: $1b
	ld h, a                                          ; $6d27: $67
	ldh a, [$9e]                                     ; $6d28: $f0 $9e
	ld bc, $fedc                                     ; $6d2a: $01 $dc $fe
	ld b, a                                          ; $6d2d: $47
	and b                                            ; $6d2e: $a0
	ld a, l                                          ; $6d2f: $7d
	add [hl]                                         ; $6d30: $86
	sbc e                                            ; $6d31: $9b
	db $10                                           ; $6d32: $10
	ld b, e                                          ; $6d33: $43
	rrca                                             ; $6d34: $0f
	ccf                                              ; $6d35: $3f
	ld a, e                                          ; $6d36: $7b
	ldh a, [$9b]                                     ; $6d37: $f0 $9b
	inc bc                                           ; $6d39: $03
	rrca                                             ; $6d3a: $0f
	inc a                                            ; $6d3b: $3c
	ldh a, [$7a]                                     ; $6d3c: $f0 $7a
	ld a, [$0f9a]                                    ; $6d3e: $fa $9a $0f
	rst GetHLinHL                                          ; $6d41: $cf
	rst GetHLinHL                                          ; $6d42: $cf
	ld c, a                                          ; $6d43: $4f
	ld d, a                                          ; $6d44: $57
	sbc $ff                                          ; $6d45: $de $ff
	sbc l                                            ; $6d47: $9d
	ret z                                            ; $6d48: $c8

	add sp, $73                                      ; $6d49: $e8 $73
	adc e                                            ; $6d4b: $8b
	db $fd                                           ; $6d4c: $fd
	sbc e                                            ; $6d4d: $9b
	ld a, $7f                                        ; $6d4e: $3e $7f
	rst $38                                          ; $6d50: $ff
	rst $38                                          ; $6d51: $ff
	ld [hl], a                                       ; $6d52: $77
	ret z                                            ; $6d53: $c8

	ld [hl], e                                       ; $6d54: $73
	call nz, $1fde                                   ; $6d55: $c4 $de $1f
	sbc l                                            ; $6d58: $9d
	nop                                              ; $6d59: $00
	ld hl, sp+$7b                                    ; $6d5a: $f8 $7b
	pop de                                           ; $6d5c: $d1
	halt                                             ; $6d5d: $76
	push bc                                          ; $6d5e: $c5
	ld a, a                                          ; $6d5f: $7f
	ld hl, sp+$7f                                    ; $6d60: $f8 $7f
	sbc h                                            ; $6d62: $9c
	sbc d                                            ; $6d63: $9a
	ret nz                                           ; $6d64: $c0

	ldh [$f0], a                                     ; $6d65: $e0 $f0
	inc c                                            ; $6d67: $0c
	inc bc                                           ; $6d68: $03
	ld h, c                                          ; $6d69: $61
	ld a, d                                          ; $6d6a: $7a
	sbc [hl]                                         ; $6d6b: $9e
	jp $a877                                         ; $6d6c: $c3 $77 $a8


	sbc e                                            ; $6d6f: $9b
	ld a, a                                          ; $6d70: $7f
	rrca                                             ; $6d71: $0f
	ret nz                                           ; $6d72: $c0

	jr nc, jr_03f_6dde                               ; $6d73: $30 $69

	and d                                            ; $6d75: $a2
	ld a, [hl]                                       ; $6d76: $7e
	and a                                            ; $6d77: $a7
	cp $dd                                           ; $6d78: $fe $dd
	ldh [$9e], a                                     ; $6d7a: $e0 $9e
	or $f9                                           ; $6d7c: $f6 $f9
	ld a, l                                          ; $6d7e: $7d
	ld [hl], h                                       ; $6d7f: $74
	rst SubAFromDE                                          ; $6d80: $df
	rra                                              ; $6d81: $1f
	ld a, [hl]                                       ; $6d82: $7e
	xor h                                            ; $6d83: $ac
	sbc l                                            ; $6d84: $9d
	inc bc                                           ; $6d85: $03
	add c                                            ; $6d86: $81
	ld d, e                                          ; $6d87: $53
	db $10                                           ; $6d88: $10
	ld a, e                                          ; $6d89: $7b
	and [hl]                                         ; $6d8a: $a6
	db $fc                                           ; $6d8b: $fc
	sbc h                                            ; $6d8c: $9c
	inc b                                            ; $6d8d: $04
	ld b, $01                                        ; $6d8e: $06 $01
	ld l, a                                          ; $6d90: $6f
	ld h, e                                          ; $6d91: $63
	sbc l                                            ; $6d92: $9d
	db $fc                                           ; $6d93: $fc
	db $fd                                           ; $6d94: $fd
	ld l, e                                          ; $6d95: $6b
	ld h, d                                          ; $6d96: $62
	db $db                                           ; $6d97: $db
	rst $38                                          ; $6d98: $ff
	ld a, h                                          ; $6d99: $7c
	db $e4                                           ; $6d9a: $e4
	ld c, l                                          ; $6d9b: $4d
	add d                                            ; $6d9c: $82
	sbc h                                            ; $6d9d: $9c
	rst SubAFromDE                                          ; $6d9e: $df
	rlca                                             ; $6d9f: $07
	ei                                               ; $6da0: $fb
	ld c, c                                          ; $6da1: $49
	ldh a, [c]                                       ; $6da2: $f2
	sbc [hl]                                         ; $6da3: $9e
	db $fc                                           ; $6da4: $fc
	dec l                                            ; $6da5: $2d
	ld d, d                                          ; $6da6: $52
	rst $38                                          ; $6da7: $ff
	jp c, $9ef8                                      ; $6da8: $da $f8 $9e

	ld a, [$8063]                                    ; $6dab: $fa $63 $80
	sbc $7f                                          ; $6dae: $de $7f
	sbc e                                            ; $6db0: $9b
	ld b, b                                          ; $6db1: $40
	ld hl, sp-$31                                    ; $6db2: $f8 $cf
	jp $3fdd                                         ; $6db4: $c3 $dd $3f


	sbc e                                            ; $6db7: $9b
	nop                                              ; $6db8: $00
	jr c, jr_03f_6dea                                ; $6db9: $38 $2f

	inc sp                                           ; $6dbb: $33
	ld [hl], e                                       ; $6dbc: $73
	call nc, $7e9b                                   ; $6dbd: $d4 $9b $7e
	inc e                                            ; $6dc0: $1c
	ei                                               ; $6dc1: $fb
	rst JumpTable                                          ; $6dc2: $c7
	ld l, [hl]                                       ; $6dc3: $6e
	call c, $fb9e                                    ; $6dc4: $dc $9e $fb
	ld [hl], e                                       ; $6dc7: $73
	ldh a, [$7f]                                     ; $6dc8: $f0 $7f
	ld b, d                                          ; $6dca: $42
	ld c, b                                          ; $6dcb: $48
	ld e, d                                          ; $6dcc: $5a
	sbc l                                            ; $6dcd: $9d
	inc bc                                           ; $6dce: $03
	rst $38                                          ; $6dcf: $ff
	db $dd                                           ; $6dd0: $dd
	cp $67                                           ; $6dd1: $fe $67
	ldh a, [$9e]                                     ; $6dd3: $f0 $9e
	rra                                              ; $6dd5: $1f
	ld h, e                                          ; $6dd6: $63
	and b                                            ; $6dd7: $a0
	sbc [hl]                                         ; $6dd8: $9e
	ld hl, sp+$7a                                    ; $6dd9: $f8 $7a
	ld h, d                                          ; $6ddb: $62
	db $dd                                           ; $6ddc: $dd
	rst $38                                          ; $6ddd: $ff

jr_03f_6dde:
	rst SubAFromDE                                          ; $6dde: $df
	rst AddAOntoHL                                          ; $6ddf: $ef
	db $fc                                           ; $6de0: $fc
	sbc $1f                                          ; $6de1: $de $1f
	ld [hl], a                                       ; $6de3: $77
	ld [hl-], a                                      ; $6de4: $32
	sbc $fc                                          ; $6de5: $de $fc
	sbc l                                            ; $6de7: $9d
	db $fd                                           ; $6de8: $fd
	inc bc                                           ; $6de9: $03

jr_03f_6dea:
	ld a, d                                          ; $6dea: $7a
	ld d, d                                          ; $6deb: $52
	ld a, [hl]                                       ; $6dec: $7e
	adc [hl]                                         ; $6ded: $8e
	ld [hl], a                                       ; $6dee: $77
	ret                                              ; $6def: $c9


	sbc h                                            ; $6df0: $9c
	jr jr_03f_6e23                                   ; $6df1: $18 $30

	nop                                              ; $6df3: $00
	ld a, d                                          ; $6df4: $7a
	cp a                                             ; $6df5: $bf
	ld a, a                                          ; $6df6: $7f
	ld [hl], $6b                                     ; $6df7: $36 $6b
	ld h, c                                          ; $6df9: $61
	sbc h                                            ; $6dfa: $9c
	cp $3f                                           ; $6dfb: $fe $3f
	rrca                                             ; $6dfd: $0f
	ld a, e                                          ; $6dfe: $7b
	ld hl, sp-$62                                    ; $6dff: $f8 $9e
	rlca                                             ; $6e01: $07
	ld l, d                                          ; $6e02: $6a
	ld e, [hl]                                       ; $6e03: $5e
	ld a, [hl]                                       ; $6e04: $7e
	cp l                                             ; $6e05: $bd

jr_03f_6e06:
	ld a, [hl]                                       ; $6e06: $7e
	add h                                            ; $6e07: $84
	sbc l                                            ; $6e08: $9d
	db $fc                                           ; $6e09: $fc
	rlca                                             ; $6e0a: $07
	sbc $fb                                          ; $6e0b: $de $fb
	sbc l                                            ; $6e0d: $9d
	rst $38                                          ; $6e0e: $ff
	ldh a, [$7b]                                     ; $6e0f: $f0 $7b
	or d                                             ; $6e11: $b2
	ld a, e                                          ; $6e12: $7b
	add sp, -$21                                     ; $6e13: $e8 $df
	ld a, a                                          ; $6e15: $7f
	sbc [hl]                                         ; $6e16: $9e
	add e                                            ; $6e17: $83
	ld l, e                                          ; $6e18: $6b
	sbc c                                            ; $6e19: $99
	ld l, a                                          ; $6e1a: $6f
	ret nc                                           ; $6e1b: $d0

	sbc c                                            ; $6e1c: $99
	ldh a, [$d0]                                     ; $6e1d: $f0 $d0
	ccf                                              ; $6e1f: $3f
	ret nc                                           ; $6e20: $d0

	jr nz, jr_03f_6e06                               ; $6e21: $20 $e3

jr_03f_6e23:
	ld l, c                                          ; $6e23: $69
	ld d, [hl]                                       ; $6e24: $56
	sbc h                                            ; $6e25: $9c
	ldh [$b0], a                                     ; $6e26: $e0 $b0
	xor b                                            ; $6e28: $a8
	ld a, e                                          ; $6e29: $7b
	jp c, $9eff                                      ; $6e2a: $da $ff $9e

	cp [hl]                                          ; $6e2d: $be
	rst FarCall                                          ; $6e2e: $f7
	db $dd                                           ; $6e2f: $dd
	ld bc, $0597                                     ; $6e30: $01 $97 $05
	ld bc, $0505                                     ; $6e33: $01 $05 $05
	db $fd                                           ; $6e36: $fd
	db $fd                                           ; $6e37: $fd
	ld a, l                                          ; $6e38: $7d
	ld a, l                                          ; $6e39: $7d
	db $dd                                           ; $6e3a: $dd
	dec a                                            ; $6e3b: $3d
	sbc [hl]                                         ; $6e3c: $9e
	ld sp, hl                                        ; $6e3d: $f9
	sbc $3f                                          ; $6e3e: $de $3f
	ld a, a                                          ; $6e40: $7f
	ld e, a                                          ; $6e41: $5f
	sbc e                                            ; $6e42: $9b
	rrca                                             ; $6e43: $0f
	rla                                              ; $6e44: $17
	rst $38                                          ; $6e45: $ff
	ret nz                                           ; $6e46: $c0

	ld a, d                                          ; $6e47: $7a
	ld h, [hl]                                       ; $6e48: $66
	sbc h                                            ; $6e49: $9c
	ret c                                            ; $6e4a: $d8

	rst GetHLinHL                                          ; $6e4b: $cf
	rst SubAFromHL                                          ; $6e4c: $d7
	ld l, [hl]                                       ; $6e4d: $6e
	and b                                            ; $6e4e: $a0
	ld a, a                                          ; $6e4f: $7f
	ld [hl], b                                       ; $6e50: $70
	ld [hl], d                                       ; $6e51: $72
	ld e, l                                          ; $6e52: $5d
	sbc h                                            ; $6e53: $9c
	ld bc, $fffd                                     ; $6e54: $01 $fd $ff
	ld l, a                                          ; $6e57: $6f
	rra                                              ; $6e58: $1f
	ld a, a                                          ; $6e59: $7f
	and [hl]                                         ; $6e5a: $a6
	sbc [hl]                                         ; $6e5b: $9e
	rlca                                             ; $6e5c: $07
	db $fd                                           ; $6e5d: $fd
	sbc [hl]                                         ; $6e5e: $9e
	ld [$c77a], sp                                   ; $6e5f: $08 $7a $c7
	ld h, a                                          ; $6e62: $67
	rla                                              ; $6e63: $17
	ld l, d                                          ; $6e64: $6a
	pop bc                                           ; $6e65: $c1
	sbc [hl]                                         ; $6e66: $9e
	nop                                              ; $6e67: $00
	halt                                             ; $6e68: $76
	ld a, [de]                                       ; $6e69: $1a
	ld a, [hl]                                       ; $6e6a: $7e
	ld e, a                                          ; $6e6b: $5f
	sbc l                                            ; $6e6c: $9d
	rst FarCall                                          ; $6e6d: $f7
	rst $38                                          ; $6e6e: $ff
	ld [hl], l                                       ; $6e6f: $75
	sub d                                            ; $6e70: $92
	ld a, e                                          ; $6e71: $7b
	ld [hl+], a                                      ; $6e72: $22
	ld a, a                                          ; $6e73: $7f
	jr c, @-$64                                      ; $6e74: $38 $9a

	add h                                            ; $6e76: $84
	rst SubAFromBC                                          ; $6e77: $e7
	ei                                               ; $6e78: $fb
	cp $fe                                           ; $6e79: $fe $fe
	sbc $f8                                          ; $6e7b: $de $f8
	sbc h                                            ; $6e7d: $9c
	ld a, b                                          ; $6e7e: $78
	inc e                                            ; $6e7f: $1c
	rlca                                             ; $6e80: $07
	ld a, d                                          ; $6e81: $7a
	ld [hl], c                                       ; $6e82: $71
	sbc l                                            ; $6e83: $9d
	ldh a, [$f8]                                     ; $6e84: $f0 $f8
	db $dd                                           ; $6e86: $dd
	cp $df                                           ; $6e87: $fe $df
	ld a, $9d                                        ; $6e89: $3e $9d
	inc e                                            ; $6e8b: $1c
	rra                                              ; $6e8c: $1f
	sbc $11                                          ; $6e8d: $de $11
	rst SubAFromDE                                          ; $6e8f: $df
	pop de                                           ; $6e90: $d1
	sbc h                                            ; $6e91: $9c
	rst SubAFromDE                                          ; $6e92: $df
	ei                                               ; $6e93: $fb
	add e                                            ; $6e94: $83
	ld [hl], a                                       ; $6e95: $77
	ld b, e                                          ; $6e96: $43
	sbc l                                            ; $6e97: $9d
	ei                                               ; $6e98: $fb
	ld a, [$fede]                                    ; $6e99: $fa $de $fe
	sbc d                                            ; $6e9c: $9a
	add [hl]                                         ; $6e9d: $86
	add a                                            ; $6e9e: $87
	ldh [c], a                                       ; $6e9f: $e2
	sbc a                                            ; $6ea0: $9f
	rst $38                                          ; $6ea1: $ff
	halt                                             ; $6ea2: $76
	rst AddAOntoHL                                          ; $6ea3: $ef
	sub [hl]                                         ; $6ea4: $96
	rst FarCall                                          ; $6ea5: $f7
	push af                                          ; $6ea6: $f5
	ldh a, [rDIV]                                    ; $6ea7: $f0 $04
	rrca                                             ; $6ea9: $0f
	nop                                              ; $6eaa: $00
	jr nc, jr_03f_6ecb                               ; $6eab: $30 $1e

	rst $38                                          ; $6ead: $ff
	ld a, e                                          ; $6eae: $7b
	cp c                                             ; $6eaf: $b9
	ld [hl], e                                       ; $6eb0: $73
	sub b                                            ; $6eb1: $90
	ld a, l                                          ; $6eb2: $7d
	ld c, a                                          ; $6eb3: $4f
	ld a, a                                          ; $6eb4: $7f
	xor [hl]                                         ; $6eb5: $ae
	cp $9b                                           ; $6eb6: $fe $9b
	ret nz                                           ; $6eb8: $c0

	ldh a, [$7f]                                     ; $6eb9: $f0 $7f
	rrca                                             ; $6ebb: $0f
	ld l, [hl]                                       ; $6ebc: $6e
	rst GetHLinHL                                          ; $6ebd: $cf
	rst SubAFromDE                                          ; $6ebe: $df
	db $fd                                           ; $6ebf: $fd
	ld [hl], e                                       ; $6ec0: $73
	sub b                                            ; $6ec1: $90
	ld a, e                                          ; $6ec2: $7b
	or b                                             ; $6ec3: $b0
	sub a                                            ; $6ec4: $97
	rst AddAOntoHL                                          ; $6ec5: $ef
	ldh [rIE], a                                     ; $6ec6: $e0 $ff
	db $fc                                           ; $6ec8: $fc
	ld hl, sp-$0f                                    ; $6ec9: $f8 $f1

jr_03f_6ecb:
	ldh [$e4], a                                     ; $6ecb: $e0 $e4
	ld a, c                                          ; $6ecd: $79
	xor c                                            ; $6ece: $a9
	db $fd                                           ; $6ecf: $fd
	sbc b                                            ; $6ed0: $98
	inc bc                                           ; $6ed1: $03
	db $fc                                           ; $6ed2: $fc
	nop                                              ; $6ed3: $00
	db $fc                                           ; $6ed4: $fc
	ld a, [hl]                                       ; $6ed5: $7e
	rst SubAFromDE                                          ; $6ed6: $df
	adc a                                            ; $6ed7: $8f

jr_03f_6ed8:
	ld l, a                                          ; $6ed8: $6f
	ld l, a                                          ; $6ed9: $6f
	sbc l                                            ; $6eda: $9d
	ld b, b                                          ; $6edb: $40
	add b                                            ; $6edc: $80
	ld [hl], d                                       ; $6edd: $72
	or $7e                                           ; $6ede: $f6 $7e
	rst GetHLinHL                                          ; $6ee0: $cf
	ld a, a                                          ; $6ee1: $7f
	ld hl, sp-$64                                    ; $6ee2: $f8 $9c
	ld a, a                                          ; $6ee4: $7f
	db $fc                                           ; $6ee5: $fc
	add b                                            ; $6ee6: $80
	ld [hl], c                                       ; $6ee7: $71
	xor l                                            ; $6ee8: $ad
	sbc [hl]                                         ; $6ee9: $9e
	add b                                            ; $6eea: $80
	ld l, d                                          ; $6eeb: $6a
	push hl                                          ; $6eec: $e5
	ld a, c                                          ; $6eed: $79
	ld d, [hl]                                       ; $6eee: $56
	ld [hl], e                                       ; $6eef: $73
	cp [hl]                                          ; $6ef0: $be
	sbc l                                            ; $6ef1: $9d
	ld a, $fb                                        ; $6ef2: $3e $fb
	ld a, d                                          ; $6ef4: $7a
	bit 7, e                                         ; $6ef5: $cb $7b
	or $9c                                           ; $6ef7: $f6 $9c
	ld a, a                                          ; $6ef9: $7f
	rlca                                             ; $6efa: $07
	rlca                                             ; $6efb: $07
	ld l, [hl]                                       ; $6efc: $6e
	ld l, l                                          ; $6efd: $6d
	ld a, d                                          ; $6efe: $7a
	ld d, e                                          ; $6eff: $53
	ld a, d                                          ; $6f00: $7a
	cp d                                             ; $6f01: $ba
	ld [hl], a                                       ; $6f02: $77
	ei                                               ; $6f03: $fb
	ld [hl], l                                       ; $6f04: $75
	add l                                            ; $6f05: $85
	ld a, d                                          ; $6f06: $7a
	call $8171                                       ; $6f07: $cd $71 $81
	rst SubAFromDE                                          ; $6f0a: $df
	ldh [$9b], a                                     ; $6f0b: $e0 $9b
	or h                                             ; $6f0d: $b4
	ld a, [$160d]                                    ; $6f0e: $fa $0d $16
	db $dd                                           ; $6f11: $dd
	rra                                              ; $6f12: $1f
	or $7f                                           ; $6f13: $f6 $7f
	rst SubAFromDE                                          ; $6f15: $df
	sbc h                                            ; $6f16: $9c
	add b                                            ; $6f17: $80
	ldh [$f8], a                                     ; $6f18: $e0 $f8
	sbc $01                                          ; $6f1a: $de $01
	sbc [hl]                                         ; $6f1c: $9e
	inc bc                                           ; $6f1d: $03
	db $fd                                           ; $6f1e: $fd
	rst SubAFromDE                                          ; $6f1f: $df
	dec e                                            ; $6f20: $1d
	sbc b                                            ; $6f21: $98
	dec b                                            ; $6f22: $05
	rlca                                             ; $6f23: $07
	rlca                                             ; $6f24: $07
	inc bc                                           ; $6f25: $03
	ld bc, $1301                                     ; $6f26: $01 $01 $13
	db $dd                                           ; $6f29: $dd
	ld [de], a                                       ; $6f2a: $12
	sub d                                            ; $6f2b: $92
	dec de                                           ; $6f2c: $1b
	ld [bc], a                                       ; $6f2d: $02
	ld [de], a                                       ; $6f2e: $12
	db $d3                                           ; $6f2f: $d3
	jp c, $dbdb                                      ; $6f30: $da $db $db

	jp nc, $cbdb                                     ; $6f33: $d2 $db $cb

	db $d3                                           ; $6f36: $d3
	db $fd                                           ; $6f37: $fd
	ld bc, $7fde                                     ; $6f38: $01 $de $7f
	ld a, a                                          ; $6f3b: $7f
	ld a, l                                          ; $6f3c: $7d
	ld a, [hl]                                       ; $6f3d: $7e
	jr z, jr_03f_6ed8                                ; $6f3e: $28 $98

	inc bc                                           ; $6f40: $03
	add b                                            ; $6f41: $80
	ret nz                                           ; $6f42: $c0

	ld h, b                                          ; $6f43: $60
	ldh a, [$f8]                                     ; $6f44: $f0 $f8
	cp h                                             ; $6f46: $bc
	ld b, l                                          ; $6f47: $45
	and b                                            ; $6f48: $a0
	sbc [hl]                                         ; $6f49: $9e
	rrca                                             ; $6f4a: $0f
	db $db                                           ; $6f4b: $db
	rst $38                                          ; $6f4c: $ff
	sbc [hl]                                         ; $6f4d: $9e
	cp $7a                                           ; $6f4e: $fe $7a
	ld b, c                                          ; $6f50: $41
	db $fc                                           ; $6f51: $fc
	sbc [hl]                                         ; $6f52: $9e
	rst FarCall                                          ; $6f53: $f7
	ld [hl], e                                       ; $6f54: $73
	rra                                              ; $6f55: $1f
	ld a, e                                          ; $6f56: $7b
	add sp, $7e                                      ; $6f57: $e8 $7e
	rst $38                                          ; $6f59: $ff
	ld [hl], e                                       ; $6f5a: $73
	ld [hl], c                                       ; $6f5b: $71
	ld a, [hl]                                       ; $6f5c: $7e
	ld d, d                                          ; $6f5d: $52
	ld [hl], e                                       ; $6f5e: $73
	ldh a, [$7b]                                     ; $6f5f: $f0 $7b
	reti                                             ; $6f61: $d9


	db $fd                                           ; $6f62: $fd
	sbc e                                            ; $6f63: $9b
	ld c, h                                          ; $6f64: $4c
	rst $38                                          ; $6f65: $ff

jr_03f_6f66:
	jr c, jr_03f_6f8e                                ; $6f66: $38 $26

	ld l, l                                          ; $6f68: $6d
	xor [hl]                                         ; $6f69: $ae
	sbc [hl]                                         ; $6f6a: $9e
	rst SubAFromDE                                          ; $6f6b: $df
	ld [hl], e                                       ; $6f6c: $73
	ldh a, [$7f]                                     ; $6f6d: $f0 $7f
	and [hl]                                         ; $6f6f: $a6
	rst SubAFromDE                                          ; $6f70: $df
	add d                                            ; $6f71: $82
	sbc d                                            ; $6f72: $9a
	jp nz, $fcf2                                     ; $6f73: $c2 $f2 $fc

	rst $38                                          ; $6f76: $ff
	ld a, a                                          ; $6f77: $7f
	ld a, b                                          ; $6f78: $78
	ld a, [hl]                                       ; $6f79: $7e
	ld a, a                                          ; $6f7a: $7f
	add hl, de                                       ; $6f7b: $19
	ld a, a                                          ; $6f7c: $7f
	ld [hl], a                                       ; $6f7d: $77
	ld a, a                                          ; $6f7e: $7f
	sbc h                                            ; $6f7f: $9c
	sbc h                                            ; $6f80: $9c
	inc b                                            ; $6f81: $04
	inc c                                            ; $6f82: $0c
	inc b                                            ; $6f83: $04
	sbc $0c                                          ; $6f84: $de $0c
	sbc [hl]                                         ; $6f86: $9e
	rst SubAFromBC                                          ; $6f87: $e7
	jp c, $9df7                                      ; $6f88: $da $f7 $9d

	rla                                              ; $6f8b: $17
	inc b                                            ; $6f8c: $04
	db $db                                           ; $6f8d: $db

jr_03f_6f8e:
	inc bc                                           ; $6f8e: $03
	rst SubAFromDE                                          ; $6f8f: $df
	rst $38                                          ; $6f90: $ff
	sbc l                                            ; $6f91: $9d
	add e                                            ; $6f92: $83
	di                                               ; $6f93: $f3
	call c, $9bff                                    ; $6f94: $dc $ff $9b
	inc bc                                           ; $6f97: $03
	db $fd                                           ; $6f98: $fd
	dec h                                            ; $6f99: $25
	dec b                                            ; $6f9a: $05
	ld a, d                                          ; $6f9b: $7a
	jp z, $f79c                                      ; $6f9c: $ca $9c $f7

	cp h                                             ; $6f9f: $bc
	rst $38                                          ; $6fa0: $ff
	ld a, d                                          ; $6fa1: $7a
	adc d                                            ; $6fa2: $8a
	ld a, [hl]                                       ; $6fa3: $7e
	inc e                                            ; $6fa4: $1c
	sbc h                                            ; $6fa5: $9c
	ldh a, [$9c]                                     ; $6fa6: $f0 $9c
	rst JumpTable                                          ; $6fa8: $c7
	db $dd                                           ; $6fa9: $dd
	rst SubAFromDE                                          ; $6faa: $df
	sbc h                                            ; $6fab: $9c
	sbc a                                            ; $6fac: $9f
	rst GetHLinHL                                          ; $6fad: $cf
	rra                                              ; $6fae: $1f
	db $db                                           ; $6faf: $db
	rst GetHLinHL                                          ; $6fb0: $cf
	sbc [hl]                                         ; $6fb1: $9e
	rst SubAFromDE                                          ; $6fb2: $df
	ld [hl], a                                       ; $6fb3: $77
	sub d                                            ; $6fb4: $92
	ld [hl], b                                       ; $6fb5: $70
	ld e, b                                          ; $6fb6: $58
	ld a, b                                          ; $6fb7: $78
	ld h, a                                          ; $6fb8: $67
	sbc [hl]                                         ; $6fb9: $9e
	pop af                                           ; $6fba: $f1
	ld [hl], e                                       ; $6fbb: $73
	sub a                                            ; $6fbc: $97
	ld a, d                                          ; $6fbd: $7a
	inc sp                                           ; $6fbe: $33
	ld l, a                                          ; $6fbf: $6f
	ld c, a                                          ; $6fc0: $4f
	ld a, a                                          ; $6fc1: $7f
	ld b, e                                          ; $6fc2: $43
	ld a, d                                          ; $6fc3: $7a
	inc d                                            ; $6fc4: $14
	ld e, h                                          ; $6fc5: $5c
	sbc $76                                          ; $6fc6: $de $76
	jr nz, jr_03f_6f66                               ; $6fc8: $20 $9c

	ret nz                                           ; $6fca: $c0

	ld hl, sp+$00                                    ; $6fcb: $f8 $00
	sbc $bf                                          ; $6fcd: $de $bf
	sbc b                                            ; $6fcf: $98
	and b                                            ; $6fd0: $a0
	cp a                                             ; $6fd1: $bf
	and b                                            ; $6fd2: $a0
	and b                                            ; $6fd3: $a0
	ld hl, sp-$01                                    ; $6fd4: $f8 $ff
	cp a                                             ; $6fd6: $bf
	ld [hl], h                                       ; $6fd7: $74
	xor b                                            ; $6fd8: $a8
	ld [hl], e                                       ; $6fd9: $73
	ret nz                                           ; $6fda: $c0

	ld a, a                                          ; $6fdb: $7f
	db $fc                                           ; $6fdc: $fc
	rst SubAFromDE                                          ; $6fdd: $df
	ld bc, $d86b                                     ; $6fde: $01 $6b $d8
	ld a, l                                          ; $6fe1: $7d
	dec c                                            ; $6fe2: $0d
	sbc $e0                                          ; $6fe3: $de $e0
	sbc [hl]                                         ; $6fe5: $9e
	jr nz, jr_03f_705d                               ; $6fe6: $20 $75

	add e                                            ; $6fe8: $83
	ld l, c                                          ; $6fe9: $69
	ld b, $6f                                        ; $6fea: $06 $6f
	ld a, [hl+]                                      ; $6fec: $2a
	cp $71                                           ; $6fed: $fe $71
	ret z                                            ; $6fef: $c8

	ld e, d                                          ; $6ff0: $5a
	ld hl, sp+$7f                                    ; $6ff1: $f8 $7f
	adc $7e                                          ; $6ff3: $ce $7e
	or h                                             ; $6ff5: $b4
	ld a, e                                          ; $6ff6: $7b
	ld l, b                                          ; $6ff7: $68
	ld a, h                                          ; $6ff8: $7c
	ld d, l                                          ; $6ff9: $55
	sbc [hl]                                         ; $6ffa: $9e
	ld [hl+], a                                      ; $6ffb: $22
	db $db                                           ; $6ffc: $db
	ld [bc], a                                       ; $6ffd: $02
	sbc d                                            ; $6ffe: $9a

Jump_03f_6fff:
	db $db                                           ; $6fff: $db

Jump_03f_7000:
	ei                                               ; $7000: $fb
	ei                                               ; $7001: $fb
	ld a, e                                          ; $7002: $7b
	ld a, e                                          ; $7003: $7b
	sbc $fb                                          ; $7004: $de $fb
	rst SubAFromDE                                          ; $7006: $df
	rrca                                             ; $7007: $0f
	sub c                                            ; $7008: $91
	daa                                              ; $7009: $27
	inc sp                                           ; $700a: $33
	dec hl                                           ; $700b: $2b
	inc hl                                           ; $700c: $23
	ld [hl+], a                                      ; $700d: $22
	ld [hl+], a                                      ; $700e: $22
	cp a                                             ; $700f: $bf
	xor a                                            ; $7010: $af
	xor a                                            ; $7011: $af
	and a                                            ; $7012: $a7
	or e                                             ; $7013: $b3
	cp d                                             ; $7014: $ba
	cp e                                             ; $7015: $bb
	cp e                                             ; $7016: $bb
	ld h, a                                          ; $7017: $67
	jp z, $a768                                      ; $7018: $ca $68 $a7

	ld a, [hl]                                       ; $701b: $7e
	inc bc                                           ; $701c: $03
	call c, $77fc                                    ; $701d: $dc $fc $77
	ldh a, [$de]                                     ; $7020: $f0 $de
	db $fd                                           ; $7022: $fd
	ld a, l                                          ; $7023: $7d
	ld h, b                                          ; $7024: $60
	sbc [hl]                                         ; $7025: $9e
	db $fd                                           ; $7026: $fd
	ld a, b                                          ; $7027: $78
	push de                                          ; $7028: $d5
	ld a, c                                          ; $7029: $79
	rst AddAOntoHL                                          ; $702a: $ef
	sbc e                                            ; $702b: $9b
	ldh a, [$e0]                                     ; $702c: $f0 $e0
	rst $38                                          ; $702e: $ff
	ret nz                                           ; $702f: $c0

	db $db                                           ; $7030: $db
	add b                                            ; $7031: $80
	ld a, e                                          ; $7032: $7b
	scf                                              ; $7033: $37
	ld a, d                                          ; $7034: $7a
	inc d                                            ; $7035: $14
	halt                                             ; $7036: $76
	jr z, jr_03f_70b1                                ; $7037: $28 $78

	ld d, b                                          ; $7039: $50
	ld [hl], c                                       ; $703a: $71
	ld e, l                                          ; $703b: $5d
	sbc l                                            ; $703c: $9d
	ld [hl], l                                       ; $703d: $75
	ld b, b                                          ; $703e: $40
	ld [hl], e                                       ; $703f: $73
	ld hl, sp-$63                                    ; $7040: $f8 $9d
	ld bc, $7280                                     ; $7042: $01 $80 $72
	rra                                              ; $7045: $1f
	db $db                                           ; $7046: $db
	cp a                                             ; $7047: $bf
	rst SubAFromDE                                          ; $7048: $df
	and b                                            ; $7049: $a0
	ld a, e                                          ; $704a: $7b
	ld b, h                                          ; $704b: $44
	rst SubAFromDE                                          ; $704c: $df
	rst SubAFromDE                                          ; $704d: $df
	add b                                            ; $704e: $80
	ret nz                                           ; $704f: $c0

	rst SubAFromDE                                          ; $7050: $df
	rst SubAFromDE                                          ; $7051: $df
	db $f4                                           ; $7052: $f4
	xor $eb                                          ; $7053: $ee $eb
	add sp, -$18                                     ; $7055: $e8 $e8
	ret z                                            ; $7057: $c8

	ld [$f708], sp                                   ; $7058: $08 $08 $f7
	push de                                          ; $705b: $d5
	rst SubAFromHL                                          ; $705c: $d7

jr_03f_705d:
	rst SubAFromHL                                          ; $705d: $d7
	sub a                                            ; $705e: $97
	scf                                              ; $705f: $37
	rst FarCall                                          ; $7060: $f7
	rst FarCall                                          ; $7061: $f7
	inc bc                                           ; $7062: $03
	ld bc, $e183                                     ; $7063: $01 $83 $e1
	add hl, sp                                       ; $7066: $39
	dec c                                            ; $7067: $0d
	dec b                                            ; $7068: $05
	inc bc                                           ; $7069: $03
	rst $38                                          ; $706a: $ff
	db $fd                                           ; $706b: $fd
	ld a, a                                          ; $706c: $7f
	db $dd                                           ; $706d: $dd
	sbc c                                            ; $706e: $99
	push af                                          ; $706f: $f5
	ld sp, hl                                        ; $7070: $f9
	db $fd                                           ; $7071: $fd
	rst $38                                          ; $7072: $ff
	and a                                            ; $7073: $a7
	and e                                            ; $7074: $a3
	db $db                                           ; $7075: $db
	and b                                            ; $7076: $a0
	sbc l                                            ; $7077: $9d
	sbc [hl]                                         ; $7078: $9e
	sbc a                                            ; $7079: $9f
	db $db                                           ; $707a: $db
	sbc [hl]                                         ; $707b: $9e
	ld [hl], b                                       ; $707c: $70
	ld hl, sp+$69                                    ; $707d: $f8 $69
	or e                                             ; $707f: $b3
	ld l, h                                          ; $7080: $6c
	rst $38                                          ; $7081: $ff
	dec bc                                           ; $7082: $0b
	ldh a, [$7a]                                     ; $7083: $f0 $7a
	ld d, h                                          ; $7085: $54
	ld a, [hl]                                       ; $7086: $7e
	ld a, [$379e]                                    ; $7087: $fa $9e $37
	ld a, b                                          ; $708a: $78
	ld e, e                                          ; $708b: $5b
	db $fd                                           ; $708c: $fd
	ld a, [hl]                                       ; $708d: $7e
	cp a                                             ; $708e: $bf
	sbc h                                            ; $708f: $9c
	ldh [$c0], a                                     ; $7090: $e0 $c0
	add b                                            ; $7092: $80
	ld a, b                                          ; $7093: $78
	sub a                                            ; $7094: $97
	ld a, [hl]                                       ; $7095: $7e
	and l                                            ; $7096: $a5
	pop hl                                           ; $7097: $e1
	reti                                             ; $7098: $d9


	rrca                                             ; $7099: $0f
	ld sp, hl                                        ; $709a: $f9
	ld b, l                                          ; $709b: $45
	cp b                                             ; $709c: $b8
	sbc d                                            ; $709d: $9a
	ld a, [$faf5]                                    ; $709e: $fa $f5 $fa
	db $f4                                           ; $70a1: $f4
	ld hl, sp+$7b                                    ; $70a2: $f8 $7b
	cp $9e                                           ; $70a4: $fe $9e
	ld b, $67                                        ; $70a6: $06 $67
	ldh [hDisp1_OBP1], a                                     ; $70a8: $e0 $94
	ld a, a                                          ; $70aa: $7f
	xor a                                            ; $70ab: $af
	ld d, a                                          ; $70ac: $57
	dec hl                                           ; $70ad: $2b
	dec d                                            ; $70ae: $15
	dec bc                                           ; $70af: $0b
	dec b                                            ; $70b0: $05

jr_03f_70b1:
	ld [hl+], a                                      ; $70b1: $22
	dec de                                           ; $70b2: $1b
	ld [bc], a                                       ; $70b3: $02
	ld h, d                                          ; $70b4: $62
	db $dd                                           ; $70b5: $dd
	ld [bc], a                                       ; $70b6: $02
	sub d                                            ; $70b7: $92
	and d                                            ; $70b8: $a2
	sbc e                                            ; $70b9: $9b
	sbc e                                            ; $70ba: $9b
	db $eb                                           ; $70bb: $eb
	db $eb                                           ; $70bc: $eb
	di                                               ; $70bd: $f3
	di                                               ; $70be: $f3
	ei                                               ; $70bf: $fb
	db $10                                           ; $70c0: $10
	ld hl, sp+$1c                                    ; $70c1: $f8 $1c
	rrca                                             ; $70c3: $0f
	ld c, $77                                        ; $70c4: $0e $77
	cp b                                             ; $70c6: $b8
	ld a, e                                          ; $70c7: $7b
	adc h                                            ; $70c8: $8c
	ld a, [hl]                                       ; $70c9: $7e
	rla                                              ; $70ca: $17
	sbc l                                            ; $70cb: $9d
	ei                                               ; $70cc: $fb
	ld sp, hl                                        ; $70cd: $f9
	db $fd                                           ; $70ce: $fd
	sbc e                                            ; $70cf: $9b
	and b                                            ; $70d0: $a0
	call nc, $f5ea                                   ; $70d1: $d4 $ea $f5
	ld l, c                                          ; $70d4: $69
	dec l                                            ; $70d5: $2d
	sbc l                                            ; $70d6: $9d
	ret nz                                           ; $70d7: $c0

	ld [bc], a                                       ; $70d8: $02
	halt                                             ; $70d9: $76
	jr z, @-$08                                      ; $70da: $28 $f6

	sbc d                                            ; $70dc: $9a
	cp a                                             ; $70dd: $bf
	ld e, a                                          ; $70de: $5f
	cpl                                              ; $70df: $2f
	dec d                                            ; $70e0: $15
	ld a, [bc]                                       ; $70e1: $0a
	ld e, e                                          ; $70e2: $5b
	db $ec                                           ; $70e3: $ec
	db $dd                                           ; $70e4: $dd
	rst $38                                          ; $70e5: $ff
	ld a, a                                          ; $70e6: $7f
	db $ec                                           ; $70e7: $ec
	ld a, a                                          ; $70e8: $7f
	and h                                            ; $70e9: $a4
	daa                                              ; $70ea: $27
	ld a, b                                          ; $70eb: $78
	rlca                                             ; $70ec: $07
	ldh a, [$6d]                                     ; $70ed: $f0 $6d
	and e                                            ; $70ef: $a3
	ld l, l                                          ; $70f0: $6d
	pop bc                                           ; $70f1: $c1
	db $fd                                           ; $70f2: $fd
	ld b, c                                          ; $70f3: $41
	nop                                              ; $70f4: $00
	rst SubAFromDE                                          ; $70f5: $df
	inc [hl]                                         ; $70f6: $34
	sbc l                                            ; $70f7: $9d
	ld h, [hl]                                       ; $70f8: $66
	ld h, l                                          ; $70f9: $65
	db $db                                           ; $70fa: $db
	ld d, l                                          ; $70fb: $55
	rst SubAFromDE                                          ; $70fc: $df
	inc [hl]                                         ; $70fd: $34
	sbc h                                            ; $70fe: $9c
	ld b, [hl]                                       ; $70ff: $46
	ld h, a                                          ; $7100: $67
	ld [hl], a                                       ; $7101: $77
	ld b, e                                          ; $7102: $43
	or $9e                                           ; $7103: $f6 $9e
	ld b, h                                          ; $7105: $44
	ld e, a                                          ; $7106: $5f
	or $9e                                           ; $7107: $f6 $9e
	ld b, [hl]                                       ; $7109: $46
	db $db                                           ; $710a: $db
	ld h, [hl]                                       ; $710b: $66
	ld e, a                                          ; $710c: $5f
	or $9b                                           ; $710d: $f6 $9b
	ld b, h                                          ; $710f: $44
	inc [hl]                                         ; $7110: $34
	ld b, h                                          ; $7111: $44
	ld b, h                                          ; $7112: $44
	ld l, e                                          ; $7113: $6b
	or $df                                           ; $7114: $f6 $df
	ld b, h                                          ; $7116: $44
	sbc l                                            ; $7117: $9d
	ld d, l                                          ; $7118: $55
	ld d, h                                          ; $7119: $54
	ld a, e                                          ; $711a: $7b
	db $f4                                           ; $711b: $f4
	sbc l                                            ; $711c: $9d
	ld d, l                                          ; $711d: $55
	ld d, [hl]                                       ; $711e: $56
	ld [hl], a                                       ; $711f: $77
	or $9b                                           ; $7120: $f6 $9b
	ld d, l                                          ; $7122: $55
	ld b, h                                          ; $7123: $44
	ld b, h                                          ; $7124: $44
	ld b, l                                          ; $7125: $45
	ld [hl], e                                       ; $7126: $73
	or $7f                                           ; $7127: $f6 $7f
	ld a, [$549c]                                    ; $7129: $fa $9c $54
	ld d, [hl]                                       ; $712c: $56
	ld h, [hl]                                       ; $712d: $66
	ld [hl], a                                       ; $712e: $77
	pop af                                           ; $712f: $f1
	ld [hl], a                                       ; $7130: $77
	ldh a, [$dd]                                     ; $7131: $f0 $dd
	ld h, [hl]                                       ; $7133: $66
	reti                                             ; $7134: $d9


	add [hl]                                         ; $7135: $86
	call c, $9cff                                    ; $7136: $dc $ff $9c
	db $fd                                           ; $7139: $fd
	ld a, [$fcfd]                                    ; $713a: $fa $fd $fc
	sbc h                                            ; $713d: $9c
	ld b, $07                                        ; $713e: $06 $07
	ld b, $d9                                        ; $7140: $06 $d9
	rst $38                                          ; $7142: $ff
	ld sp, hl                                        ; $7143: $f9
	inc bc                                           ; $7144: $03
	ldh a, [$db]                                     ; $7145: $f0 $db
	rst $38                                          ; $7147: $ff
	sbc [hl]                                         ; $7148: $9e
	push de                                          ; $7149: $d5
	ld c, a                                          ; $714a: $4f
	ldh a, [$9d]                                     ; $714b: $f0 $9d
	xor d                                            ; $714d: $aa
	ld d, l                                          ; $714e: $55
	ld d, e                                          ; $714f: $53
	ldh a, [$9e]                                     ; $7150: $f0 $9e
	push de                                          ; $7152: $d5
	ld c, e                                          ; $7153: $4b
	ldh a, [$9e]                                     ; $7154: $f0 $9e
	ld d, l                                          ; $7156: $55
	ld c, a                                          ; $7157: $4f
	ldh a, [$9e]                                     ; $7158: $f0 $9e
	cp $4b                                           ; $715a: $fe $4b
	ldh a, [$7f]                                     ; $715c: $f0 $7f
	ldh a, [c]                                       ; $715e: $f2
	inc bc                                           ; $715f: $03
	ldh a, [$03]                                     ; $7160: $f0 $03
	ldh a, [$03]                                     ; $7162: $f0 $03
	ldh a, [$5b]                                     ; $7164: $f0 $5b
	ldh a, [$9e]                                     ; $7166: $f0 $9e
	xor e                                            ; $7168: $ab
	ld b, e                                          ; $7169: $43
	ld [hl], b                                       ; $716a: $70
	sbc l                                            ; $716b: $9d
	xor e                                            ; $716c: $ab
	ld d, h                                          ; $716d: $54
	ld a, [$039e]                                    ; $716e: $fa $9e $03
	ld l, a                                          ; $7171: $6f
	ret nc                                           ; $7172: $d0

	sbc l                                            ; $7173: $9d
	ld a, [hl+]                                      ; $7174: $2a
	dec a                                            ; $7175: $3d
	ei                                               ; $7176: $fb
	rst SubAFromDE                                          ; $7177: $df
	ret nz                                           ; $7178: $c0

	db $dd                                           ; $7179: $dd
	rst $38                                          ; $717a: $ff
	sbc e                                            ; $717b: $9b
	cp a                                             ; $717c: $bf
	ld d, a                                          ; $717d: $57
	xor e                                            ; $717e: $ab
	ld d, a                                          ; $717f: $57
	db $fd                                           ; $7180: $fd
	sbc [hl]                                         ; $7181: $9e
	ld bc, $03de                                     ; $7182: $01 $de $03
	sbc h                                            ; $7185: $9c
	ld [$eaf5], a                                    ; $7186: $ea $f5 $ea
	ld a, e                                          ; $7189: $7b
	ld [hl+], a                                      ; $718a: $22
	ld a, a                                          ; $718b: $7f
	cp $9a                                           ; $718c: $fe $9a
	ccf                                              ; $718e: $3f
	rra                                              ; $718f: $1f
	ccf                                              ; $7190: $3f
	ccf                                              ; $7191: $3f
	ld a, a                                          ; $7192: $7f
	ld [hl], a                                       ; $7193: $77
	db $e4                                           ; $7194: $e4
	sub l                                            ; $7195: $95
	ld a, a                                          ; $7196: $7f
	cp a                                             ; $7197: $bf
	ld d, a                                          ; $7198: $57
	xor a                                            ; $7199: $af
	ld d, a                                          ; $719a: $57
	xor a                                            ; $719b: $af
	ld d, l                                          ; $719c: $55
	ld b, b                                          ; $719d: $40
	ret nz                                           ; $719e: $c0

	add sp, -$23                                     ; $719f: $e8 $dd
	ld hl, sp-$77                                    ; $71a1: $f8 $89
	ei                                               ; $71a3: $fb
	ld a, [$eafd]                                    ; $71a4: $fa $fd $ea
	push af                                          ; $71a7: $f5
	ld a, [$eadd]                                    ; $71a8: $fa $dd $ea
	ld d, l                                          ; $71ab: $55
	rlca                                             ; $71ac: $07
	rla                                              ; $71ad: $17
	rra                                              ; $71ae: $1f
	rrca                                             ; $71af: $0f
	rrca                                             ; $71b0: $0f
	scf                                              ; $71b1: $37
	ccf                                              ; $71b2: $3f
	rst $38                                          ; $71b3: $ff
	ei                                               ; $71b4: $fb
	ld [hl], l                                       ; $71b5: $75
	cp e                                             ; $71b6: $bb
	ld e, a                                          ; $71b7: $5f
	xor e                                            ; $71b8: $ab
	ld a, e                                          ; $71b9: $7b
	sbc $92                                          ; $71ba: $de $92
	inc b                                            ; $71bc: $04
	adc $e6                                          ; $71bd: $ce $e6

jr_03f_71bf:
	ldh [$fc], a                                     ; $71bf: $e0 $fc
	ld sp, hl                                        ; $71c1: $f9
	ldh a, [$bd]                                     ; $71c2: $f0 $bd
	adc d                                            ; $71c4: $8a
	push af                                          ; $71c5: $f5
	ldh [c], a                                       ; $71c6: $e2
	dec b                                            ; $71c7: $05
	ld a, [bc]                                       ; $71c8: $0a
	cp $99                                           ; $71c9: $fe $99
	ld h, b                                          ; $71cb: $60
	nop                                              ; $71cc: $00
	jr jr_03f_71bf                                   ; $71cd: $18 $f0

	db $e4                                           ; $71cf: $e4
	db $fd                                           ; $71d0: $fd
	ld a, e                                          ; $71d1: $7b
	sub h                                            ; $71d2: $94
	sbc d                                            ; $71d3: $9a
	ld d, b                                          ; $71d4: $50
	xor b                                            ; $71d5: $a8
	nop                                              ; $71d6: $00
	add b                                            ; $71d7: $80
	db $10                                           ; $71d8: $10
	ld a, e                                          ; $71d9: $7b
	and h                                            ; $71da: $a4
	rst SubAFromDE                                          ; $71db: $df
	rlca                                             ; $71dc: $07
	rst SubAFromDE                                          ; $71dd: $df
	ld a, a                                          ; $71de: $7f
	sbc $ff                                          ; $71df: $de $ff

Jump_03f_71e1:
	sbc [hl]                                         ; $71e1: $9e
	ld b, d                                          ; $71e2: $42
	sbc $01                                          ; $71e3: $de $01
	ld a, a                                          ; $71e5: $7f
	di                                               ; $71e6: $f3
	rst $38                                          ; $71e7: $ff
	sbc [hl]                                         ; $71e8: $9e
	cp h                                             ; $71e9: $bc
	sbc $fe                                          ; $71ea: $de $fe
	ld h, a                                          ; $71ec: $67
	ld b, h                                          ; $71ed: $44
	ld a, e                                          ; $71ee: $7b
	ld [hl], b                                       ; $71ef: $70
	sbc [hl]                                         ; $71f0: $9e
	dec d                                            ; $71f1: $15
	db $fc                                           ; $71f2: $fc
	sbc h                                            ; $71f3: $9c
	add b                                            ; $71f4: $80
	ret nz                                           ; $71f5: $c0

	ldh [$6f], a                                     ; $71f6: $e0 $6f
	ldh a, [rOCPS]                                   ; $71f8: $f0 $6a
	ld b, b                                          ; $71fa: $40

Call_03f_71fb:
	cp $6f                                           ; $71fb: $fe $6f
	ldh a, [$9d]                                     ; $71fd: $f0 $9d
	xor d                                            ; $71ff: $aa
	ld [hl], l                                       ; $7200: $75
	ld c, e                                          ; $7201: $4b
	ldh a, [$63]                                     ; $7202: $f0 $63
	jr nz, jr_03f_7285                               ; $7204: $20 $7f

	or $99                                           ; $7206: $f6 $99
	and b                                            ; $7208: $a0
	ld d, b                                          ; $7209: $50
	and b                                            ; $720a: $a0
	ld b, b                                          ; $720b: $40
	and b                                            ; $720c: $a0
	ld b, b                                          ; $720d: $40
	ld e, a                                          ; $720e: $5f
	ldh a, [$9e]                                     ; $720f: $f0 $9e
	ld [bc], a                                       ; $7211: $02
	ld [hl], e                                       ; $7212: $73
	and b                                            ; $7213: $a0
	ld h, e                                          ; $7214: $63
	ldh a, [$9b]                                     ; $7215: $f0 $9b
	ld d, h                                          ; $7217: $54
	xor d                                            ; $7218: $aa
	ld d, h                                          ; $7219: $54
	and b                                            ; $721a: $a0
	ld e, e                                          ; $721b: $5b
	ret nc                                           ; $721c: $d0

	sbc [hl]                                         ; $721d: $9e
	add b                                            ; $721e: $80
	ei                                               ; $721f: $fb
	sbc [hl]                                         ; $7220: $9e
	ld d, b                                          ; $7221: $50
	ld sp, hl                                        ; $7222: $f9
	sbc [hl]                                         ; $7223: $9e
	ld [bc], a                                       ; $7224: $02
	db $fd                                           ; $7225: $fd
	sbc h                                            ; $7226: $9c
	ld a, [bc]                                       ; $7227: $0a
	sub b                                            ; $7228: $90
	ld a, b                                          ; $7229: $78
	ld h, e                                          ; $722a: $63
	ret nc                                           ; $722b: $d0

	ld a, e                                          ; $722c: $7b
	jp nz, $0f9c                                     ; $722d: $c2 $9c $0f

	xor h                                            ; $7230: $ac
	ld [$4e7b], sp                                   ; $7231: $08 $7b $4e

jr_03f_7234:
	halt                                             ; $7234: $76
	jp nc, $079c                                     ; $7235: $d2 $9c $07

	rrca                                             ; $7238: $0f
	ld hl, sp+$77                                    ; $7239: $f8 $77
	adc $9a                                          ; $723b: $ce $9a
	ld d, b                                          ; $723d: $50
	jr c, jr_03f_72b0                                ; $723e: $38 $70

	rlca                                             ; $7240: $07
	rst $38                                          ; $7241: $ff
	ld [hl], a                                       ; $7242: $77
	ld b, d                                          ; $7243: $42
	rst SubAFromDE                                          ; $7244: $df
	rst $38                                          ; $7245: $ff
	sub [hl]                                         ; $7246: $96
	ld d, $03                                        ; $7247: $16 $03
	ld [bc], a                                       ; $7249: $02
	inc bc                                           ; $724a: $03
	nop                                              ; $724b: $00
	inc bc                                           ; $724c: $03
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	add sp, -$22                                     ; $724f: $e8 $de
	db $fc                                           ; $7251: $fc
	sub [hl]                                         ; $7252: $96
	rst $38                                          ; $7253: $ff
	db $fc                                           ; $7254: $fc
	rst $38                                          ; $7255: $ff
	rst $38                                          ; $7256: $ff
	xor a                                            ; $7257: $af
	ld e, [hl]                                       ; $7258: $5e
	or a                                             ; $7259: $b7
	ld a, e                                          ; $725a: $7b
	cp e                                             ; $725b: $bb
	ld a, d                                          ; $725c: $7a
	jp c, $0fde                                      ; $725d: $da $de $0f

	rst SubAFromDE                                          ; $7260: $df
	ccf                                              ; $7261: $3f
	rst SubAFromDE                                          ; $7262: $df
	rra                                              ; $7263: $1f
	sbc [hl]                                         ; $7264: $9e
	adc a                                            ; $7265: $8f
	ld h, a                                          ; $7266: $67
	ld h, b                                          ; $7267: $60
	reti                                             ; $7268: $d9


	rst $38                                          ; $7269: $ff
	ld a, a                                          ; $726a: $7f
	or $7e                                           ; $726b: $f6 $7e
	ldh [c], a                                       ; $726d: $e2
	ld a, e                                          ; $726e: $7b
	db $fc                                           ; $726f: $fc
	ld a, a                                          ; $7270: $7f
	ldh a, [$9c]                                     ; $7271: $f0 $9c
	cp $fc                                           ; $7273: $fe $fc
	ld hl, sp+$7a                                    ; $7275: $f8 $7a
	halt                                             ; $7277: $76
	ld l, e                                          ; $7278: $6b
	db $10                                           ; $7279: $10
	ld a, e                                          ; $727a: $7b
	ldh [$9e], a                                     ; $727b: $e0 $9e
	cp $77                                           ; $727d: $fe $77
	or b                                             ; $727f: $b0
	ld a, a                                          ; $7280: $7f
	db $fc                                           ; $7281: $fc
	ld a, [hl]                                       ; $7282: $7e
	or d                                             ; $7283: $b2
	sbc l                                            ; $7284: $9d

jr_03f_7285:
	cp d                                             ; $7285: $ba
	ld c, l                                          ; $7286: $4d
	ld [hl], a                                       ; $7287: $77
	ldh a, [$9a]                                     ; $7288: $f0 $9a
	dec a                                            ; $728a: $3d
	rra                                              ; $728b: $1f
	rst GetHLinHL                                          ; $728c: $cf
	rst FarCall                                          ; $728d: $f7
	rst FarCall                                          ; $728e: $f7
	sbc $ff                                          ; $728f: $de $ff
	sbc c                                            ; $7291: $99
	add e                                            ; $7292: $83
	ld b, e                                          ; $7293: $43
	ccf                                              ; $7294: $3f
	ld a, $3e                                        ; $7295: $3e $3e
	sbc a                                            ; $7297: $9f
	rst SubAFromHL                                          ; $7298: $d7
	rst $38                                          ; $7299: $ff
	sbc b                                            ; $729a: $98
	ret nz                                           ; $729b: $c0

	jp z, $dfce                                      ; $729c: $ca $ce $df

	ld hl, $f8e3                                     ; $729f: $21 $e3 $f8
	ld a, e                                          ; $72a2: $7b

jr_03f_72a3:
	sub [hl]                                         ; $72a3: $96
	sbc l                                            ; $72a4: $9d
	rst $38                                          ; $72a5: $ff
	ccf                                              ; $72a6: $3f
	ld l, c                                          ; $72a7: $69
	ld e, b                                          ; $72a8: $58
	sbc d                                            ; $72a9: $9a
	jr jr_03f_7234                                   ; $72aa: $18 $88

	sbc b                                            ; $72ac: $98
	dec e                                            ; $72ad: $1d
	ldh a, [$61]                                     ; $72ae: $f0 $61

jr_03f_72b0:
	ld c, b                                          ; $72b0: $48
	sbc [hl]                                         ; $72b1: $9e
	inc b                                            ; $72b2: $04
	ld a, e                                          ; $72b3: $7b
	ld e, c                                          ; $72b4: $59
	adc a                                            ; $72b5: $8f
	ld [bc], a                                       ; $72b6: $02
	pop bc                                           ; $72b7: $c1
	ld bc, $f8f0                                     ; $72b8: $01 $f0 $f8
	db $fc                                           ; $72bb: $fc
	db $fc                                           ; $72bc: $fc
	db $fd                                           ; $72bd: $fd
	db $fc                                           ; $72be: $fc
	ld sp, hl                                        ; $72bf: $f9
	ld hl, sp+$0b                                    ; $72c0: $f8 $0b
	dec b                                            ; $72c2: $05
	ld a, [bc]                                       ; $72c3: $0a
	dec d                                            ; $72c4: $15
	xor d                                            ; $72c5: $aa
	ld a, d                                          ; $72c6: $7a
	add hl, bc                                       ; $72c7: $09
	sub a                                            ; $72c8: $97
	ld [$0e0c], sp                                   ; $72c9: $08 $0c $0e
	rrca                                             ; $72cc: $0f
	add b                                            ; $72cd: $80
	nop                                              ; $72ce: $00
	rst $38                                          ; $72cf: $ff
	or [hl]                                          ; $72d0: $b6
	ld a, e                                          ; $72d1: $7b
	and h                                            ; $72d2: $a4
	sbc [hl]                                         ; $72d3: $9e
	rst FarCall                                          ; $72d4: $f7
	ld [hl], a                                       ; $72d5: $77
	ldh a, [rBCPD]                                   ; $72d6: $f0 $69
	ldh a, [c]                                       ; $72d8: $f2
	sbc [hl]                                         ; $72d9: $9e
	db $db                                           ; $72da: $db
	ld [hl], e                                       ; $72db: $73
	add d                                            ; $72dc: $82
	ld e, a                                          ; $72dd: $5f
	ldh a, [hDisp1_WY]                                     ; $72de: $f0 $95
	ld l, l                                          ; $72e0: $6d
	add b                                            ; $72e1: $80
	ld b, l                                          ; $72e2: $45
	add l                                            ; $72e3: $85
	ld b, l                                          ; $72e4: $45
	add l                                            ; $72e5: $85
	push bc                                          ; $72e6: $c5
	dec b                                            ; $72e7: $05
	push bc                                          ; $72e8: $c5
	dec c                                            ; $72e9: $0d
	call c, $df08                                    ; $72ea: $dc $08 $df
	adc b                                            ; $72ed: $88
	sbc [hl]                                         ; $72ee: $9e
	nop                                              ; $72ef: $00
	reti                                             ; $72f0: $d9


	ld d, h                                          ; $72f1: $54
	jp c, Jump_03f_7604                              ; $72f2: $da $04 $76

	add h                                            ; $72f5: $84
	sbc $80                                          ; $72f6: $de $80
	ld l, e                                          ; $72f8: $6b
	ret nc                                           ; $72f9: $d0

	sbc e                                            ; $72fa: $9b
	ld a, a                                          ; $72fb: $7f
	ld e, e                                          ; $72fc: $5b
	add b                                            ; $72fd: $80
	ld d, h                                          ; $72fe: $54
	ld [hl], d                                       ; $72ff: $72
	or h                                             ; $7300: $b4
	ld h, e                                          ; $7301: $63
	ret nz                                           ; $7302: $c0

	sub h                                            ; $7303: $94
	db $10                                           ; $7304: $10
	jr @-$0e                                         ; $7305: $18 $f0

	ret c                                            ; $7307: $d8

	dec d                                            ; $7308: $15
	sbc a                                            ; $7309: $9f
	db $e3                                           ; $730a: $e3
	ld a, [$6060]                                    ; $730b: $fa $60 $60
	nop                                              ; $730e: $00
	sbc $60                                          ; $730f: $de $60
	sbc b                                            ; $7311: $98
	or $e0                                           ; $7312: $f6 $e0
	jr @+$0b                                         ; $7314: $18 $09

	rra                                              ; $7316: $1f
	add hl, bc                                       ; $7317: $09
	ld l, a                                          ; $7318: $6f
	ld a, c                                          ; $7319: $79
	ret                                              ; $731a: $c9


	sbc [hl]                                         ; $731b: $9e
	rrca                                             ; $731c: $0f
	call c, $961f                                    ; $731d: $dc $1f $96
	adc a                                            ; $7320: $8f
	jr jr_03f_72a3                                   ; $7321: $18 $80

	add b                                            ; $7323: $80
	ldh [$e0], a                                     ; $7324: $e0 $e0
	add b                                            ; $7326: $80
	jp $d9e7                                         ; $7327: $c3 $e7 $d9


	rst $38                                          ; $732a: $ff
	sbc b                                            ; $732b: $98
	ccf                                              ; $732c: $3f
	ld [bc], a                                       ; $732d: $02
	rrca                                             ; $732e: $0f
	stop                                             ; $732f: $10 $00
	ld b, $0e                                        ; $7331: $06 $0e
	ld e, a                                          ; $7333: $5f
	rra                                              ; $7334: $1f
	sub h                                            ; $7335: $94
	ld a, a                                          ; $7336: $7f
	ld e, a                                          ; $7337: $5f
	scf                                              ; $7338: $37
	inc bc                                           ; $7339: $03
	nop                                              ; $733a: $00
	ld [$f3d3], sp                                   ; $733b: $08 $d3 $f3
	cp a                                             ; $733e: $bf
	sbc a                                            ; $733f: $9f
	rst GetHLinHL                                          ; $7340: $cf
	call c, $92ff                                    ; $7341: $dc $ff $92
	xor b                                            ; $7344: $a8
	ld e, c                                          ; $7345: $59
	xor d                                            ; $7346: $aa
	db $db                                           ; $7347: $db
	pop hl                                           ; $7348: $e1
	ld e, a                                          ; $7349: $5f
	rst $38                                          ; $734a: $ff
	nop                                              ; $734b: $00
	ldh a, [$f7]                                     ; $734c: $f0 $f7
	ldh a, [c]                                       ; $734e: $f2
	halt                                             ; $734f: $76
	or b                                             ; $7350: $b0
	ld a, e                                          ; $7351: $7b
	sbc d                                            ; $7352: $9a
	sbc d                                            ; $7353: $9a
	pop af                                           ; $7354: $f1
	sbc a                                            ; $7355: $9f
	inc b                                            ; $7356: $04
	ld e, $b1                                        ; $7357: $1e $b1
	ld a, e                                          ; $7359: $7b
	add hl, de                                       ; $735a: $19
	sbc d                                            ; $735b: $9a
	add b                                            ; $735c: $80
	dec de                                           ; $735d: $1b
	inc b                                            ; $735e: $04
	inc b                                            ; $735f: $04
	and b                                            ; $7360: $a0
	ld a, e                                          ; $7361: $7b
	ldh a, [$9b]                                     ; $7362: $f0 $9b
	or c                                             ; $7364: $b1
	dec bc                                           ; $7365: $0b
	dec b                                            ; $7366: $05
	dec e                                            ; $7367: $1d
	ld [hl], a                                       ; $7368: $77
	ldh a, [$9a]                                     ; $7369: $f0 $9a
	and c                                            ; $736b: $a1
	rla                                              ; $736c: $17
	nop                                              ; $736d: $00
	rrca                                             ; $736e: $0f
	ld hl, $da79                                     ; $736f: $21 $79 $da
	sub [hl]                                         ; $7372: $96
	ld a, [$0b1d]                                    ; $7373: $fa $1d $0b
	dec c                                            ; $7376: $0d
	ld c, $fd                                        ; $7377: $0e $fd
	ei                                               ; $7379: $fb
	nop                                              ; $737a: $00
	ld [hl], a                                       ; $737b: $77
	sbc $0f                                          ; $737c: $de $0f
	sbc h                                            ; $737e: $9c
	dec bc                                           ; $737f: $0b
	adc a                                            ; $7380: $8f
	ccf                                              ; $7381: $3f
	ld a, c                                          ; $7382: $79
	db $10                                           ; $7383: $10
	sbc h                                            ; $7384: $9c
	ld hl, sp-$60                                    ; $7385: $f8 $a0
	ld [hl], $d7                                     ; $7387: $36 $d7
	rst $38                                          ; $7389: $ff
	ld a, [hl]                                       ; $738a: $7e
	sbc a                                            ; $738b: $9f
	sbc e                                            ; $738c: $9b
	ei                                               ; $738d: $fb
	rst $38                                          ; $738e: $ff
	rst $38                                          ; $738f: $ff
	ld a, h                                          ; $7390: $7c
	halt                                             ; $7391: $76
	add a                                            ; $7392: $87
	jp c, $9eff                                      ; $7393: $da $ff $9e

	db $fc                                           ; $7396: $fc
	ld a, c                                          ; $7397: $79
	adc c                                            ; $7398: $89
	sbc e                                            ; $7399: $9b
	add hl, de                                       ; $739a: $19
	db $10                                           ; $739b: $10
	jr nc, @+$70                                     ; $739c: $30 $6e

	reti                                             ; $739e: $d9


	rst $38                                          ; $739f: $ff
	sub [hl]                                         ; $73a0: $96
	ld [$0302], sp                                   ; $73a1: $08 $02 $03
	rst GetHLinHL                                          ; $73a4: $cf
	rst GetHLinHL                                          ; $73a5: $cf
	rst AddAOntoHL                                          ; $73a6: $ef
	db $d3                                           ; $73a7: $d3
	nop                                              ; $73a8: $00
	ldh a, [$7b]                                     ; $73a9: $f0 $7b
	rst SubAFromBC                                          ; $73ab: $e7
	ld a, [hl]                                       ; $73ac: $7e
	ld e, l                                          ; $73ad: $5d
	adc e                                            ; $73ae: $8b
	ldh a, [$c0]                                     ; $73af: $f0 $c0
	ld a, a                                          ; $73b1: $7f
	ld d, $00                                        ; $73b2: $16 $00
	add b                                            ; $73b4: $80
	and b                                            ; $73b5: $a0
	or a                                             ; $73b6: $b7
	scf                                              ; $73b7: $37
	ld d, [hl]                                       ; $73b8: $56
	ld [hl], $0b                                     ; $73b9: $36 $0b
	add b                                            ; $73bb: $80
	ld h, b                                          ; $73bc: $60
	ld e, a                                          ; $73bd: $5f
	ld c, [hl]                                       ; $73be: $4e
	adc $0f                                          ; $73bf: $ce $0f
	rst $38                                          ; $73c1: $ff
	db $db                                           ; $73c2: $db
	ld [hl], b                                       ; $73c3: $70
	cp e                                             ; $73c4: $bb
	rst SubAFromDE                                          ; $73c5: $df
	db $db                                           ; $73c6: $db
	ld a, e                                          ; $73c7: $7b
	add h                                            ; $73c8: $84
	ld [hl], a                                       ; $73c9: $77
	ld a, [$0e7f]                                    ; $73ca: $fa $7f $0e
	rst SubAFromDE                                          ; $73cd: $df
	ld [bc], a                                       ; $73ce: $02
	sbc [hl]                                         ; $73cf: $9e
	ld bc, $fa7b                                     ; $73d0: $01 $7b $fa
	sbc e                                            ; $73d3: $9b
	ld l, l                                          ; $73d4: $6d
	rst $38                                          ; $73d5: $ff
	ld bc, $7701                                     ; $73d6: $01 $01 $77
	ld a, [$c47a]                                    ; $73d9: $fa $7a $c4
	ld a, d                                          ; $73dc: $7a
	ret nz                                           ; $73dd: $c0

	sbc l                                            ; $73de: $9d
	add l                                            ; $73df: $85
	ret nz                                           ; $73e0: $c0

	jp c, Jump_03f_7e88                              ; $73e1: $da $88 $7e

	pop hl                                           ; $73e4: $e1
	db $db                                           ; $73e5: $db
	ld d, h                                          ; $73e6: $54
	ld a, [hl]                                       ; $73e7: $7e
	ld l, c                                          ; $73e8: $69
	db $db                                           ; $73e9: $db
	inc b                                            ; $73ea: $04
	ld a, e                                          ; $73eb: $7b
	call z, $c276                                    ; $73ec: $cc $76 $c2
	sbc e                                            ; $73ef: $9b
	rst $38                                          ; $73f0: $ff
	ld e, e                                          ; $73f1: $5b
	ld e, e                                          ; $73f2: $5b
	ld a, a                                          ; $73f3: $7f
	halt                                             ; $73f4: $76
	jp nz, Jump_03f_5b9e                             ; $73f5: $c2 $9e $5b

	ld a, e                                          ; $73f8: $7b
	add $73                                          ; $73f9: $c6 $73
	or b                                             ; $73fb: $b0
	ld a, e                                          ; $73fc: $7b
	add $76                                          ; $73fd: $c6 $76
	jp nz, $fa7f                                     ; $73ff: $c2 $7f $fa

	ld a, [hl]                                       ; $7402: $7e
	ld c, b                                          ; $7403: $48
	sbc c                                            ; $7404: $99
	db $10                                           ; $7405: $10
	sbc a                                            ; $7406: $9f
	rst FarCall                                          ; $7407: $f7
	ld a, [$eff2]                                    ; $7408: $fa $f2 $ef
	sbc $e0                                          ; $740b: $de $e0
	sub a                                            ; $740d: $97
	ld h, b                                          ; $740e: $60
	ldh [$e0], a                                     ; $740f: $e0 $e0
	pop hl                                           ; $7411: $e1
	rst $38                                          ; $7412: $ff
	inc a                                            ; $7413: $3c
	rst $38                                          ; $7414: $ff
	db $fd                                           ; $7415: $fd
	ld a, e                                          ; $7416: $7b
	cp $88                                           ; $7417: $fe $88
	ret nz                                           ; $7419: $c0

	ld [$ff38], a                                    ; $741a: $ea $38 $ff
	ld sp, hl                                        ; $741d: $f9
	rst $38                                          ; $741e: $ff
	ld hl, sp-$01                                    ; $741f: $f8 $ff
	ret nz                                           ; $7421: $c0

	ret nz                                           ; $7422: $c0

	ld l, a                                          ; $7423: $6f
	jp $e781                                         ; $7424: $c3 $81 $e7


	ld a, l                                          ; $7427: $7d
	rst $38                                          ; $7428: $ff
	nop                                              ; $7429: $00
	xor d                                            ; $742a: $aa
	ld h, [hl]                                       ; $742b: $66
	add c                                            ; $742c: $81
	nop                                              ; $742d: $00
	jp Jump_03f_7b24                                 ; $742e: $c3 $24 $7b


	call z, $6e9a                                    ; $7431: $cc $9a $6e
	add e                                            ; $7434: $83
	jp Jump_03f_7ef7                                 ; $7435: $c3 $f7 $7e


	ld a, e                                          ; $7438: $7b
	ldh a, [$9a]                                     ; $7439: $f0 $9a
	ld h, h                                          ; $743b: $64
	jp $c381                                         ; $743c: $c3 $81 $c3


	inc a                                            ; $743f: $3c
	ld a, e                                          ; $7440: $7b
	ldh a, [$9e]                                     ; $7441: $f0 $9e
	ld [hl], e                                       ; $7443: $73
	ld a, e                                          ; $7444: $7b
	dec e                                            ; $7445: $1d
	sbc d                                            ; $7446: $9a
	ld a, a                                          ; $7447: $7f
	ret nz                                           ; $7448: $c0

	nop                                              ; $7449: $00
	xor d                                            ; $744a: $aa
	ccf                                              ; $744b: $3f
	ld a, c                                          ; $744c: $79
	pop hl                                           ; $744d: $e1
	ld a, a                                          ; $744e: $7f
	cp $77                                           ; $744f: $fe $77
	and l                                            ; $7451: $a5
	ld l, c                                          ; $7452: $69
	add sp, -$63                                     ; $7453: $e8 $9d
	nop                                              ; $7455: $00
	ld [$5e6e], a                                    ; $7456: $ea $6e $5e
	rst SubAFromDE                                          ; $7459: $df
	rst $38                                          ; $745a: $ff
	sbc [hl]                                         ; $745b: $9e
	ld a, [$c869]                                    ; $745c: $fa $69 $c8
	ld h, a                                          ; $745f: $67
	ldh a, [$9e]                                     ; $7460: $f0 $9e
	xor d                                            ; $7462: $aa
	ld l, a                                          ; $7463: $6f
	ldh a, [$9e]                                     ; $7464: $f0 $9e
	dec hl                                           ; $7466: $2b
	db $fc                                           ; $7467: $fc
	add b                                            ; $7468: $80
	sbc a                                            ; $7469: $9f
	jp z, $b4ff                                      ; $746a: $ca $ff $b4

	ldh [rIE], a                                     ; $746d: $e0 $ff
	push af                                          ; $746f: $f5
	pop hl                                           ; $7470: $e1
	add b                                            ; $7471: $80
	ld b, b                                          ; $7472: $40
	ldh [rAUD4LEN], a                                ; $7473: $e0 $20
	jr nz, jr_03f_7477                               ; $7475: $20 $00

jr_03f_7477:
	jr nz, jr_03f_7479                               ; $7477: $20 $00

jr_03f_7479:
	rst SubAFromDE                                          ; $7479: $df
	and [hl]                                         ; $747a: $a6
	rst FarCall                                          ; $747b: $f7
	ei                                               ; $747c: $fb
	dec b                                            ; $747d: $05
	ld d, l                                          ; $747e: $55
	ld l, e                                          ; $747f: $6b
	adc l                                            ; $7480: $8d
	rrca                                             ; $7481: $0f
	rrca                                             ; $7482: $0f
	rlca                                             ; $7483: $07
	rlca                                             ; $7484: $07
	inc bc                                           ; $7485: $03
	inc bc                                           ; $7486: $03
	rst $38                                          ; $7487: $ff
	ld a, e                                          ; $7488: $7b
	rrca                                             ; $7489: $0f
	call c, $9eff                                    ; $748a: $dc $ff $9e
	cp a                                             ; $748d: $bf
	call c, Call_03f_79ff                            ; $748e: $dc $ff $79
	ld e, a                                          ; $7491: $5f
	ld a, d                                          ; $7492: $7a
	or c                                             ; $7493: $b1
	ld a, l                                          ; $7494: $7d
	sbc e                                            ; $7495: $9b
	sbc l                                            ; $7496: $9d
	ldh a, [$e3]                                     ; $7497: $f0 $e3
	ld h, d                                          ; $7499: $62
	cpl                                              ; $749a: $2f
	sub d                                            ; $749b: $92
	nop                                              ; $749c: $00
	sbc [hl]                                         ; $749d: $9e
	sbc a                                            ; $749e: $9f
	cp a                                             ; $749f: $bf
	rra                                              ; $74a0: $1f
	inc bc                                           ; $74a1: $03
	ld bc, $e082                                     ; $74a2: $01 $82 $e0
	ld hl, sp-$09                                    ; $74a5: $f8 $f7
	or $fe                                           ; $74a7: $f6 $fe
	ld a, c                                          ; $74a9: $79
	dec de                                           ; $74aa: $1b
	sub b                                            ; $74ab: $90
	rlca                                             ; $74ac: $07
	nop                                              ; $74ad: $00
	dec d                                            ; $74ae: $15
	or [hl]                                          ; $74af: $b6
	or a                                             ; $74b0: $b7
	or [hl]                                          ; $74b1: $b6
	rla                                              ; $74b2: $17
	inc d                                            ; $74b3: $14
	rlca                                             ; $74b4: $07
	nop                                              ; $74b5: $00
	ret nz                                           ; $74b6: $c0

	ld c, a                                          ; $74b7: $4f
	ld c, [hl]                                       ; $74b8: $4e
	ld c, a                                          ; $74b9: $4f
	rst AddAOntoHL                                          ; $74ba: $ef
	db $fd                                           ; $74bb: $fd
	ld a, a                                          ; $74bc: $7f
	cp h                                             ; $74bd: $bc
	sbc h                                            ; $74be: $9c
	db $db                                           ; $74bf: $db
	ret nz                                           ; $74c0: $c0

	or d                                             ; $74c1: $b2
	ld [hl], d                                       ; $74c2: $72
	pop bc                                           ; $74c3: $c1
	rst SubAFromDE                                          ; $74c4: $df
	rst $38                                          ; $74c5: $ff
	add l                                            ; $74c6: $85
	inc b                                            ; $74c7: $04
	ld b, c                                          ; $74c8: $41
	inc bc                                           ; $74c9: $03
	ld bc, $ff6d                                     ; $74ca: $01 $6d $ff
	ld l, l                                          ; $74cd: $6d
	ld bc, $bfd1                                     ; $74ce: $01 $d1 $bf
	ld bc, $ff03                                     ; $74d1: $01 $03 $ff
	ld l, l                                          ; $74d4: $6d
	rst $38                                          ; $74d5: $ff
	rst $38                                          ; $74d6: $ff
	inc bc                                           ; $74d7: $03
	add b                                            ; $74d8: $80
	and b                                            ; $74d9: $a0
	sub a                                            ; $74da: $97
	sbc a                                            ; $74db: $9f
	adc a                                            ; $74dc: $8f
	add a                                            ; $74dd: $87
	add a                                            ; $74de: $87
	add e                                            ; $74df: $83
	add b                                            ; $74e0: $80
	ld a, e                                          ; $74e1: $7b
	ld a, [$959e]                                    ; $74e2: $fa $9e $95
	sbc $9f                                          ; $74e5: $de $9f
	sub d                                            ; $74e7: $92
	ld d, l                                          ; $74e8: $55
	rlca                                             ; $74e9: $07
	ld d, d                                          ; $74ea: $52
	ld hl, sp-$06                                    ; $74eb: $f8 $fa
	ld hl, sp-$06                                    ; $74ed: $f8 $fa
	ldh a, [rP1]                                     ; $74ef: $f0 $00
	cp $fc                                           ; $74f1: $fe $fc
	db $fc                                           ; $74f3: $fc
	ld b, h                                          ; $74f4: $44
	sbc $fc                                          ; $74f5: $de $fc
	add b                                            ; $74f7: $80
	ld a, a                                          ; $74f8: $7f
	add b                                            ; $74f9: $80
	ret c                                            ; $74fa: $d8

	rst $38                                          ; $74fb: $ff
	rst $38                                          ; $74fc: $ff
	sbc $cf                                          ; $74fd: $de $cf
	call z, $84ff                                    ; $74ff: $cc $ff $84
	add h                                            ; $7502: $84
	sbc $de                                          ; $7503: $de $de
	rst $38                                          ; $7505: $ff
	call c, $ff8c                                    ; $7506: $dc $8c $ff
	jr jr_03f_7584                                   ; $7509: $18 $79

	db $fd                                           ; $750b: $fd
	xor a                                            ; $750c: $af
	rst FarCall                                          ; $750d: $f7
	cp e                                             ; $750e: $bb
	or e                                             ; $750f: $b3
	rst $38                                          ; $7510: $ff
	ld bc, $fb99                                     ; $7511: $01 $99 $fb
	jp $ffcb                                         ; $7514: $c3 $cb $ff


	add l                                            ; $7517: $85
	sbc a                                            ; $7518: $9f
	rra                                              ; $7519: $1f
	ld a, a                                          ; $751a: $7f
	ld a, [hl]                                       ; $751b: $7e
	ld a, [hl]                                       ; $751c: $7e
	ld a, a                                          ; $751d: $7f
	ld a, [hl]                                       ; $751e: $7e
	cp $fe                                           ; $751f: $fe $fe
	ldh [hLCDCIntHandlerIdx], a                                     ; $7521: $e0 $81
	add b                                            ; $7523: $80
	add b                                            ; $7524: $80
	add d                                            ; $7525: $82
	add d                                            ; $7526: $82
	ldh a, [c]                                       ; $7527: $f2
	or b                                             ; $7528: $b0
	add b                                            ; $7529: $80
	cp a                                             ; $752a: $bf
	add b                                            ; $752b: $80
	ld a, a                                          ; $752c: $7f
	rst $38                                          ; $752d: $ff
	ld a, b                                          ; $752e: $78
	ldh a, [$38]                                     ; $752f: $f0 $38
	add b                                            ; $7531: $80
	ld a, b                                          ; $7532: $78
	ld c, c                                          ; $7533: $49
	rst $38                                          ; $7534: $ff
	rst SubAFromDE                                          ; $7535: $df
	db $10                                           ; $7536: $10
	ld a, c                                          ; $7537: $79
	ld d, [hl]                                       ; $7538: $56
	ld e, a                                          ; $7539: $5f
	inc bc                                           ; $753a: $03
	ld [hl], d                                       ; $753b: $72
	rst $38                                          ; $753c: $ff
	rrca                                             ; $753d: $0f
	ldh a, [rPCM34]                                  ; $753e: $f0 $77
	pop af                                           ; $7540: $f1
	ld [hl], e                                       ; $7541: $73
	jr z, jr_03f_75af                                ; $7542: $28 $6b

	ld [$f00b], a                                    ; $7544: $ea $0b $f0
	sub d                                            ; $7547: $92
	dec d                                            ; $7548: $15
	push af                                          ; $7549: $f5
	rrca                                             ; $754a: $0f
	pop af                                           ; $754b: $f1
	pop hl                                           ; $754c: $e1
	push af                                          ; $754d: $f5
	pop af                                           ; $754e: $f1
	pop af                                           ; $754f: $f1
	rst $38                                          ; $7550: $ff
	jr nz, @+$01                                     ; $7551: $20 $ff

	pop hl                                           ; $7553: $e1
	ld hl, $c17a                                     ; $7554: $21 $7a $c1
	add c                                            ; $7557: $81
	jr nz, jr_03f_75d0                               ; $7558: $20 $76

	ld [hl], $56                                     ; $755a: $36 $56
	ld d, [hl]                                       ; $755c: $56
	ld d, a                                          ; $755d: $57
	ld d, a                                          ; $755e: $57
	ld [hl], a                                       ; $755f: $77
	scf                                              ; $7560: $37
	db $db                                           ; $7561: $db
	rst $38                                          ; $7562: $ff
	ret                                              ; $7563: $c9


	adc c                                            ; $7564: $89
	adc c                                            ; $7565: $89
	ret                                              ; $7566: $c9


	rst SubAFromDE                                          ; $7567: $df
	db $fd                                           ; $7568: $fd
	sub [hl]                                         ; $7569: $96
	sbc [hl]                                         ; $756a: $9e
	sub $d7                                          ; $756b: $d6 $d7
	db $db                                           ; $756d: $db
	cp d                                             ; $756e: $ba
	sub a                                            ; $756f: $97
	sub h                                            ; $7570: $94
	db $fd                                           ; $7571: $fd
	db $fd                                           ; $7572: $fd
	cp l                                             ; $7573: $bd
	cp a                                             ; $7574: $bf
	or a                                             ; $7575: $b7
	ld a, d                                          ; $7576: $7a
	ret nz                                           ; $7577: $c0

	sbc [hl]                                         ; $7578: $9e
	ld [hl], a                                       ; $7579: $77
	sbc $7f                                          ; $757a: $de $7f
	rst SubAFromDE                                          ; $757c: $df
	cp a                                             ; $757d: $bf
	sbc l                                            ; $757e: $9d
	ccf                                              ; $757f: $3f
	xor b                                            ; $7580: $a8
	ld l, c                                          ; $7581: $69
	ld h, d                                          ; $7582: $62
	sub l                                            ; $7583: $95

jr_03f_7584:
	rst $38                                          ; $7584: $ff
	ld [bc], a                                       ; $7585: $02
	add hl, de                                       ; $7586: $19
	db $fc                                           ; $7587: $fc
	sbc $fe                                          ; $7588: $de $fe
	db $fc                                           ; $758a: $fc
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	db $fc                                           ; $758d: $fc
	ld l, c                                          ; $758e: $69
	ld e, [hl]                                       ; $758f: $5e
	sub [hl]                                         ; $7590: $96
	or a                                             ; $7591: $b7
	rst $38                                          ; $7592: $ff
	ldh [rP1], a                                     ; $7593: $e0 $00
	ld bc, $2000                                     ; $7595: $01 $00 $20
	dec sp                                           ; $7598: $3b
	or l                                             ; $7599: $b5
	sbc $ff                                          ; $759a: $de $ff
	ld [hl], a                                       ; $759c: $77

Call_03f_759d:
	db $ed                                           ; $759d: $ed
	adc d                                            ; $759e: $8a
	add d                                            ; $759f: $82
	jr nz, @+$41                                     ; $75a0: $20 $3f

	ldh [rSCX], a                                    ; $75a2: $e0 $43
	inc hl                                           ; $75a4: $23
	ld d, $1c                                        ; $75a5: $16 $1c
	or h                                             ; $75a7: $b4
	rst $38                                          ; $75a8: $ff
	ret nz                                           ; $75a9: $c0

	nop                                              ; $75aa: $00
	add e                                            ; $75ab: $83
	jp $e0e0                                         ; $75ac: $c3 $e0 $e0


jr_03f_75af:
	jr nz, jr_03f_75b1                               ; $75af: $20 $00

jr_03f_75b1:
	rst AddAOntoHL                                          ; $75b1: $ef
	dec b                                            ; $75b2: $05
	ld a, [$857b]                                    ; $75b3: $fa $7b $85
	sbc e                                            ; $75b6: $9b
	rst SubAFromDE                                          ; $75b7: $df
	rst $38                                          ; $75b8: $ff
	rlca                                             ; $75b9: $07
	ld a, [bc]                                       ; $75ba: $0a
	ld l, a                                          ; $75bb: $6f
	ld a, l                                          ; $75bc: $7d
	sbc h                                            ; $75bd: $9c
	xor a                                            ; $75be: $af
	ld d, l                                          ; $75bf: $55
	xor d                                            ; $75c0: $aa
	ld a, b                                          ; $75c1: $78
	ld hl, sp+$6e                                    ; $75c2: $f8 $6e
	jr z, @+$01                                      ; $75c4: $28 $ff

	sbc e                                            ; $75c6: $9b
	adc e                                            ; $75c7: $8b
	inc b                                            ; $75c8: $04
	rst $38                                          ; $75c9: $ff
	ldh [$7b], a                                     ; $75ca: $e0 $7b
	push de                                          ; $75cc: $d5
	sbc c                                            ; $75cd: $99
	nop                                              ; $75ce: $00
	db $f4                                           ; $75cf: $f4

jr_03f_75d0:
	rst $38                                          ; $75d0: $ff
	rst $38                                          ; $75d1: $ff
	jr nz, @-$3e                                     ; $75d2: $20 $c0

	ld a, d                                          ; $75d4: $7a
	db $fc                                           ; $75d5: $fc
	sub [hl]                                         ; $75d6: $96
	inc l                                            ; $75d7: $2c
	nop                                              ; $75d8: $00
	ldh [$30], a                                     ; $75d9: $e0 $30
	ldh a, [rTIMA]                                   ; $75db: $f0 $05
	ld c, $0f                                        ; $75dd: $0e $0f
	call z, $eb77                                    ; $75df: $cc $77 $eb
	adc [hl]                                         ; $75e2: $8e
	ld b, $0f                                        ; $75e3: $06 $0f
	rrca                                             ; $75e5: $0f
	rst $38                                          ; $75e6: $ff
	ld [hl], l                                       ; $75e7: $75
	push af                                          ; $75e8: $f5
	scf                                              ; $75e9: $37
	rlca                                             ; $75ea: $07
	dec b                                            ; $75eb: $05
	rlca                                             ; $75ec: $07
	add l                                            ; $75ed: $85
	sbc a                                            ; $75ee: $9f
	rst SubAFromDE                                          ; $75ef: $df
	ld e, a                                          ; $75f0: $5f
	scf                                              ; $75f1: $37
	rlca                                             ; $75f2: $07
	rlca                                             ; $75f3: $07
	db $dd                                           ; $75f4: $dd
	rst $38                                          ; $75f5: $ff
	call c, $80fe                                    ; $75f6: $dc $fe $80
	rst $38                                          ; $75f9: $ff
	sbc [hl]                                         ; $75fa: $9e
	sbc e                                            ; $75fb: $9b
	sbc b                                            ; $75fc: $98
	sbc d                                            ; $75fd: $9a
	jp c, $bef2                                      ; $75fe: $da $f2 $be

	sub [hl]                                         ; $7601: $96
	jp hl                                            ; $7602: $e9


	ld a, [hl+]                                      ; $7603: $2a

Jump_03f_7604:
	jr c, @-$04                                      ; $7604: $38 $fa

	ld sp, hl                                        ; $7606: $f9
	ld hl, sp-$08                                    ; $7607: $f8 $f8
	jp hl                                            ; $7609: $e9


	pop af                                           ; $760a: $f1
	pop af                                           ; $760b: $f1
	ld de, $1011                                     ; $760c: $11 $11 $10
	db $10                                           ; $760f: $10
	ld de, $68f0                                     ; $7610: $11 $f0 $68
	inc b                                            ; $7613: $04
	ld c, [hl]                                       ; $7614: $4e
	ld a, a                                          ; $7615: $7f
	sbc d                                            ; $7616: $9a
	ld b, d                                          ; $7617: $42
	add b                                            ; $7618: $80
	ld h, d                                          ; $7619: $62
	ld d, [hl]                                       ; $761a: $56
	call nz, $cace                                   ; $761b: $c4 $ce $ca
	xor $00                                          ; $761e: $ee $00
	ld b, d                                          ; $7620: $42
	rst FarCall                                          ; $7621: $f7
	and e                                            ; $7622: $a3
	ret z                                            ; $7623: $c8

	cp [hl]                                          ; $7624: $be
	cp [hl]                                          ; $7625: $be
	jp $da4c                                         ; $7626: $c3 $4c $da


	ld e, h                                          ; $7629: $5c
	ld a, d                                          ; $762a: $7a
	ld c, h                                          ; $762b: $4c
	ret                                              ; $762c: $c9


	rst GetHLinHL                                          ; $762d: $cf
	add a                                            ; $762e: $87
	ld b, b                                          ; $762f: $40

Call_03f_7630:
	rrca                                             ; $7630: $0f
	rst SubAFromDE                                          ; $7631: $df
	add $90                                          ; $7632: $c6 $90
	inc h                                            ; $7634: $24
	call nc, $1870                                   ; $7635: $d4 $70 $18
	sub h                                            ; $7638: $94
	ld l, h                                          ; $7639: $6c
	ld c, h                                          ; $763a: $4c
	ld e, b                                          ; $763b: $58
	sbc b                                            ; $763c: $98
	db $fc                                           ; $763d: $fc
	ld a, h                                          ; $763e: $7c
	ld d, b                                          ; $763f: $50
	db $10                                           ; $7640: $10
	ld c, b                                          ; $7641: $48
	ld a, h                                          ; $7642: $7c
	ld [hl], h                                       ; $7643: $74
	ld h, c                                          ; $7644: $61
	ld a, a                                          ; $7645: $7f
	ld h, [hl]                                       ; $7646: $66
	xor e                                            ; $7647: $ab
	dec bc                                           ; $7648: $0b
	ldh a, [$9b]                                     ; $7649: $f0 $9b
	ld c, $f1                                        ; $764b: $0e $f1
	ld a, [$def0]                                    ; $764d: $fa $f0 $de
	ld hl, sp-$63                                    ; $7650: $f8 $9d
	rst FarCall                                          ; $7652: $f7
	db $fc                                           ; $7653: $fc
	ld l, l                                          ; $7654: $6d
	add c                                            ; $7655: $81
	sbc e                                            ; $7656: $9b
	inc hl                                           ; $7657: $23
	ld d, d                                          ; $7658: $52
	ld d, a                                          ; $7659: $57
	ld d, a                                          ; $765a: $57
	ld a, e                                          ; $765b: $7b
	db $fd                                           ; $765c: $fd
	sbc l                                            ; $765d: $9d
	ld [hl], a                                       ; $765e: $77
	ld [hl-], a                                      ; $765f: $32
	db $dd                                           ; $7660: $dd
	ret                                              ; $7661: $c9


	rst SubAFromDE                                          ; $7662: $df
	res 2, l                                         ; $7663: $cb $95
	rst SubAFromDE                                          ; $7665: $df
	ret                                              ; $7666: $c9


	sub h                                            ; $7667: $94
	sub e                                            ; $7668: $93
	rst $38                                          ; $7669: $ff
	sbc l                                            ; $766a: $9d
	sub c                                            ; $766b: $91
	sub e                                            ; $766c: $93
	ei                                               ; $766d: $fb
	sub a                                            ; $766e: $97
	db $db                                           ; $766f: $db
	rst $38                                          ; $7670: $ff
	ld a, a                                          ; $7671: $7f
	ld sp, hl                                        ; $7672: $f9
	ld a, h                                          ; $7673: $7c
	db $db                                           ; $7674: $db
	sbc c                                            ; $7675: $99
	pop hl                                           ; $7676: $e1
	ld l, h                                          ; $7677: $6c
	ld h, a                                          ; $7678: $67
	ld h, a                                          ; $7679: $67
	rst SubAFromBC                                          ; $767a: $e7
	ldh [$63], a                                     ; $767b: $e0 $63
	cp d                                             ; $767d: $ba
	sbc b                                            ; $767e: $98
	add b                                            ; $767f: $80
	jr c, jr_03f_76ba                                ; $7680: $38 $38

	db $10                                           ; $7682: $10
	add c                                            ; $7683: $81
	adc [hl]                                         ; $7684: $8e
	ld [hl], b                                       ; $7685: $70
	call c, $97ff                                    ; $7686: $dc $ff $97
	cp $f0                                           ; $7689: $fe $f0
	add b                                            ; $768b: $80
	db $fc                                           ; $768c: $fc
	pop af                                           ; $768d: $f1
	add $98                                          ; $768e: $c6 $98
	ldh [$7b], a                                     ; $7690: $e0 $7b
	ld [$f47f], sp                                   ; $7692: $08 $7f $f4
	ld a, l                                          ; $7695: $7d
	ld e, d                                          ; $7696: $5a
	db $fd                                           ; $7697: $fd
	sbc [hl]                                         ; $7698: $9e
	ld h, b                                          ; $7699: $60
	ld [hl], c                                       ; $769a: $71
	ld hl, sp-$01                                    ; $769b: $f8 $ff

Jump_03f_769d:
	ld l, e                                          ; $769d: $6b
	ld sp, hl                                        ; $769e: $f9
	ldh [$d0], a                                     ; $769f: $e0 $d0
	sub a                                            ; $76a1: $97
	ccf                                              ; $76a2: $3f
	rra                                              ; $76a3: $1f
	rrca                                             ; $76a4: $0f
	rlca                                             ; $76a5: $07
	inc bc                                           ; $76a6: $03
	ld bc, $ffe0                                     ; $76a7: $01 $e0 $ff
	ld [hl], a                                       ; $76aa: $77
	ld a, [$ba7b]                                    ; $76ab: $fa $7b $ba
	sbc e                                            ; $76ae: $9b
	ld a, h                                          ; $76af: $7c
	rst JumpTable                                          ; $76b0: $c7
	rst $38                                          ; $76b1: $ff
	push af                                          ; $76b2: $f5
	ld [hl], h                                       ; $76b3: $74
	ld e, [hl]                                       ; $76b4: $5e
	ld a, d                                          ; $76b5: $7a
	ld [hl], $76                                     ; $76b6: $36 $76
	ld b, b                                          ; $76b8: $40
	ld a, a                                          ; $76b9: $7f

jr_03f_76ba:
	ldh [c], a                                       ; $76ba: $e2
	ld l, [hl]                                       ; $76bb: $6e
	pop bc                                           ; $76bc: $c1
	ld a, [hl]                                       ; $76bd: $7e
	ret nz                                           ; $76be: $c0

	sub h                                            ; $76bf: $94
	sub c                                            ; $76c0: $91
	sub d                                            ; $76c1: $92
	sub b                                            ; $76c2: $90
	ret nc                                           ; $76c3: $d0

	ldh a, [$f8]                                     ; $76c4: $f0 $f8
	cp h                                             ; $76c6: $bc
	sub d                                            ; $76c7: $92
	ld a, [hl+]                                      ; $76c8: $2a
	ei                                               ; $76c9: $fb
	ld hl, sp-$24                                    ; $76ca: $f8 $dc
	rst $38                                          ; $76cc: $ff
	ld a, [hl]                                       ; $76cd: $7e
	pop bc                                           ; $76ce: $c1
	sbc l                                            ; $76cf: $9d
	db $10                                           ; $76d0: $10
	rra                                              ; $76d1: $1f
	ld [hl], a                                       ; $76d2: $77
	ld [de], a                                       ; $76d3: $12
	sbc l                                            ; $76d4: $9d
	inc bc                                           ; $76d5: $03
	pop hl                                           ; $76d6: $e1
	ld l, a                                          ; $76d7: $6f
	ld c, $9d                                        ; $76d8: $0e $9d
	pop af                                           ; $76da: $f1
	ld sp, $c579                                     ; $76db: $31 $79 $c5
	ld a, e                                          ; $76de: $7b
	ldh a, [$9c]                                     ; $76df: $f0 $9c
	adc e                                            ; $76e1: $8b
	call z, $dc80                                    ; $76e2: $cc $80 $dc
	rst $38                                          ; $76e5: $ff
	sbc h                                            ; $76e6: $9c
	adc $c4                                          ; $76e7: $ce $c4
	add b                                            ; $76e9: $80
	ld a, b                                          ; $76ea: $78
	ld a, [hl-]                                      ; $76eb: $3a
	sbc e                                            ; $76ec: $9b
	dec b                                            ; $76ed: $05
	rst $38                                          ; $76ee: $ff
	ld [hl], h                                       ; $76ef: $74
	ld a, d                                          ; $76f0: $7a
	ld l, a                                          ; $76f1: $6f
	ldh [$9d], a                                     ; $76f2: $e0 $9d
	ld a, b                                          ; $76f4: $78
	inc l                                            ; $76f5: $2c
	ld a, e                                          ; $76f6: $7b
	ldh [$9d], a                                     ; $76f7: $e0 $9d
	xor c                                            ; $76f9: $a9
	ld d, b                                          ; $76fa: $50
	ld bc, $4781                                     ; $76fb: $01 $81 $47

Jump_03f_76fe:
	ldh a, [hDisp1_WY]                                     ; $76fe: $f0 $95
	ld a, [bc]                                       ; $7700: $0a
	ld hl, sp-$0c                                    ; $7701: $f8 $f4
	ldh a, [$f4]                                     ; $7703: $f0 $f4
	ldh a, [$f7]                                     ; $7705: $f0 $f7
	ld c, $fe                                        ; $7707: $0e $fe
	ldh a, [rPCM12]                                  ; $7709: $f0 $76
	pop bc                                           ; $770b: $c1
	add [hl]                                         ; $770c: $86
	ld hl, $46fe                                     ; $770d: $21 $fe $46
	ld d, [hl]                                       ; $7710: $56
	ld d, [hl]                                       ; $7711: $56
	ld b, [hl]                                       ; $7712: $46
	ld [hl], a                                       ; $7713: $77
	scf                                              ; $7714: $37
	rla                                              ; $7715: $17
	ld [hl], $cb                                     ; $7716: $36 $cb
	set 1, c                                         ; $7718: $cb $c9
	rst GetHLinHL                                          ; $771a: $cf
	rst GetHLinHL                                          ; $771b: $cf
	jp hl                                            ; $771c: $e9


	ret                                              ; $771d: $c9


	ret                                              ; $771e: $c9


	sbc a                                            ; $771f: $9f
	db $dd                                           ; $7720: $dd
	cp $f3                                           ; $7721: $fe $f3
	sub e                                            ; $7723: $93
	sbc a                                            ; $7724: $9f
	cp [hl]                                          ; $7725: $be
	ld l, a                                          ; $7726: $6f
	ld l, e                                          ; $7727: $6b
	sub a                                            ; $7728: $97
	rst $38                                          ; $7729: $ff
	db $fc                                           ; $772a: $fc
	ldh a, [$f0]                                     ; $772b: $f0 $f0
	rst SubAFromBC                                          ; $772d: $e7
	add sp, -$10                                     ; $772e: $e8 $f0
	db $fc                                           ; $7730: $fc
	halt                                             ; $7731: $76
	ldh [$7e], a                                     ; $7732: $e0 $7e
	pop hl                                           ; $7734: $e1
	sbc l                                            ; $7735: $9d
	ldh [$e3], a                                     ; $7736: $e0 $e3
	cp $79                                           ; $7738: $fe $79
	ld [$9dff], a                                    ; $773a: $ea $ff $9d
	ld hl, sp+$07                                    ; $773d: $f8 $07
	ld l, [hl]                                       ; $773f: $6e
	call c, Call_03f_609d                            ; $7740: $dc $9d $60
	ld b, $f9                                        ; $7743: $06 $f9
	ld [hl], d                                       ; $7745: $72
	call nz, $c176                                   ; $7746: $c4 $76 $c1
	ldh [$da], a                                     ; $7749: $e0 $da
	ld l, a                                          ; $774b: $6f
	cp a                                             ; $774c: $bf
	rst $38                                          ; $774d: $ff
	sbc [hl]                                         ; $774e: $9e
	inc bc                                           ; $774f: $03
	ld [hl], a                                       ; $7750: $77
	dec bc                                           ; $7751: $0b
	cp $9d                                           ; $7752: $fe $9d
	ld [bc], a                                       ; $7754: $02
	nop                                              ; $7755: $00
	call c, $9d1f                                    ; $7756: $dc $1f $9d
	ccf                                              ; $7759: $3f
	pop bc                                           ; $775a: $c1
	halt                                             ; $775b: $76
	adc b                                            ; $775c: $88
	sbc e                                            ; $775d: $9b
	rlca                                             ; $775e: $07
	ld hl, sp+$00                                    ; $775f: $f8 $00
	nop                                              ; $7761: $00
	ld a, c                                          ; $7762: $79
	dec d                                            ; $7763: $15
	call c, $9aff                                    ; $7764: $dc $ff $9a
	scf                                              ; $7767: $37
	rra                                              ; $7768: $1f
	dec bc                                           ; $7769: $0b
	ccf                                              ; $776a: $3f
	rst JumpTable                                          ; $776b: $c7
	ld a, d                                          ; $776c: $7a
	or [hl]                                          ; $776d: $b6
	sbc l                                            ; $776e: $9d
	rst GetHLinHL                                          ; $776f: $cf
	rst SubAFromBC                                          ; $7770: $e7
	ld l, [hl]                                       ; $7771: $6e
	cp l                                             ; $7772: $bd
	ld l, c                                          ; $7773: $69
	add c                                            ; $7774: $81
	sbc l                                            ; $7775: $9d
	ld a, a                                          ; $7776: $7f
	sub b                                            ; $7777: $90
	ld a, d                                          ; $7778: $7a
	pop bc                                           ; $7779: $c1
	sbc e                                            ; $777a: $9b
	cp b                                             ; $777b: $b8
	db $f4                                           ; $777c: $f4
	ldh a, [c]                                       ; $777d: $f2
	ldh a, [$61]                                     ; $777e: $f0 $61
	ldh [$9c], a                                     ; $7780: $e0 $9c
	nop                                              ; $7782: $00
	ld d, l                                          ; $7783: $55
	xor d                                            ; $7784: $aa
	ld a, e                                          ; $7785: $7b
	cp $67                                           ; $7786: $fe $67
	db $10                                           ; $7788: $10
	ld a, b                                          ; $7789: $78
	rst SubAFromHL                                          ; $778a: $d7
	ld c, e                                          ; $778b: $4b
	ldh a, [rPCM34]                                  ; $778c: $f0 $77
	ldh a, [c]                                       ; $778e: $f2
	dec sp                                           ; $778f: $3b
	ldh a, [rKEY1]                                   ; $7790: $f0 $4d
	and c                                            ; $7792: $a1
	ld e, a                                          ; $7793: $5f
	pop hl                                           ; $7794: $e1
	daa                                              ; $7795: $27
	ldh a, [$9a]                                     ; $7796: $f0 $9a
	ldh a, [$f6]                                     ; $7798: $f0 $f6
	cp $f5                                           ; $779a: $fe $f5
	rst FarCall                                          ; $779c: $f7
	halt                                             ; $779d: $76
	add sp, $7a                                      ; $779e: $e8 $7a
	pop bc                                           ; $77a0: $c1
	sub a                                            ; $77a1: $97
	inc bc                                           ; $77a2: $03
	ld l, $f8                                        ; $77a3: $2e $f8
	nop                                              ; $77a5: $00
	sub h                                            ; $77a6: $94
	or c                                             ; $77a7: $b1
	adc h                                            ; $77a8: $8c
	and b                                            ; $77a9: $a0
	halt                                             ; $77aa: $76
	db $ec                                           ; $77ab: $ec
	sbc e                                            ; $77ac: $9b
	rst GetHLinHL                                          ; $77ad: $cf
	ld e, [hl]                                       ; $77ae: $5e
	ld a, b                                          ; $77af: $78
	ldh [$fd], a                                     ; $77b0: $e0 $fd
	ld [hl], d                                       ; $77b2: $72
	ldh [rSB], a                                     ; $77b3: $e0 $01
	ret nz                                           ; $77b5: $c0

	rst FarCall                                          ; $77b6: $f7
	sbc [hl]                                         ; $77b7: $9e
	ld c, $7b                                        ; $77b8: $0e $7b
	inc h                                            ; $77ba: $24
	db $fd                                           ; $77bb: $fd
	sbc [hl]                                         ; $77bc: $9e
	ld [$f86b], sp                                   ; $77bd: $08 $6b $f8
	ld a, d                                          ; $77c0: $7a
	xor e                                            ; $77c1: $ab
	sbc h                                            ; $77c2: $9c
	jr jr_03f_77ca                                   ; $77c3: $18 $05

	inc bc                                           ; $77c5: $03
	ld [hl], e                                       ; $77c6: $73
	cp a                                             ; $77c7: $bf
	sbc [hl]                                         ; $77c8: $9e
	db $10                                           ; $77c9: $10

jr_03f_77ca:
	ld a, b                                          ; $77ca: $78
	daa                                              ; $77cb: $27
	rst $38                                          ; $77cc: $ff
	sbc h                                            ; $77cd: $9c
	ld bc, $300e                                     ; $77ce: $01 $0e $30
	ld [hl], e                                       ; $77d1: $73
	xor h                                            ; $77d2: $ac
	sbc l                                            ; $77d3: $9d
	ld bc, $730c                                     ; $77d4: $01 $0c $73
	ld hl, sp-$62                                    ; $77d7: $f8 $9e
	jr c, @+$6d                                      ; $77d9: $38 $6b

	sbc a                                            ; $77db: $9f
	sbc [hl]                                         ; $77dc: $9e
	ld [$9f4b], sp                                   ; $77dd: $08 $4b $9f
	ld [hl], l                                       ; $77e0: $75
	sub d                                            ; $77e1: $92
	ld l, a                                          ; $77e2: $6f
	ret nz                                           ; $77e3: $c0

	sbc [hl]                                         ; $77e4: $9e
	ld [$566f], sp                                   ; $77e5: $08 $6f $56
	sbc [hl]                                         ; $77e8: $9e
	ld a, a                                          ; $77e9: $7f
	ld h, [hl]                                       ; $77ea: $66
	sbc l                                            ; $77eb: $9d
	ld l, a                                          ; $77ec: $6f
	xor $75                                          ; $77ed: $ee $75
	add d                                            ; $77ef: $82
	ld [hl], a                                       ; $77f0: $77
	xor $df                                          ; $77f1: $ee $df
	rrca                                             ; $77f3: $0f
	ld a, c                                          ; $77f4: $79
	ld h, a                                          ; $77f5: $67
	sbc e                                            ; $77f6: $9b
	ld bc, $0008                                     ; $77f7: $01 $08 $00
	db $fc                                           ; $77fa: $fc
	call c, Call_03f_7bfe                            ; $77fb: $dc $fe $7b
	xor $52                                          ; $77fe: $ee $52
	ldh a, [$7b]                                     ; $7800: $f0 $7b
	ld a, [de]                                       ; $7802: $1a
	inc bc                                           ; $7803: $03
	ldh a, [rWX]                                     ; $7804: $f0 $4b
	ldh a, [$e0]                                     ; $7806: $f0 $e0
	ld hl, $00e0                                     ; $7808: $21 $e0 $00
	ldh [$63], a                                     ; $780b: $e0 $63
	dec h                                            ; $780d: $25
	nop                                              ; $780e: $00
	ret                                              ; $780f: $c9


	ld d, l                                          ; $7810: $55
	db $dd                                           ; $7811: $dd
	ld [hl], a                                       ; $7812: $77
	ld d, a                                          ; $7813: $57
	or $df                                           ; $7814: $f6 $df
	ld b, h                                          ; $7816: $44
	sbc [hl]                                         ; $7817: $9e
	ld h, l                                          ; $7818: $65
	ld [hl], a                                       ; $7819: $77
	or $9e                                           ; $781a: $f6 $9e
	ld [hl], e                                       ; $781c: $73
	db $dd                                           ; $781d: $dd
	ld b, h                                          ; $781e: $44
	sbc [hl]                                         ; $781f: $9e
	ld b, l                                          ; $7820: $45
	db $dd                                           ; $7821: $dd
	ld d, l                                          ; $7822: $55
	sbc [hl]                                         ; $7823: $9e
	ld d, e                                          ; $7824: $53
	ccf                                              ; $7825: $3f
	or $9d                                           ; $7826: $f6 $9d
	ld b, e                                          ; $7828: $43
	inc sp                                           ; $7829: $33
	ld h, a                                          ; $782a: $67
	or $db                                           ; $782b: $f6 $db
	ld b, h                                          ; $782d: $44
	ld d, a                                          ; $782e: $57
	or h                                             ; $782f: $b4
	db $db                                           ; $7830: $db
	ld [hl], a                                       ; $7831: $77
	dec l                                            ; $7832: $2d
	add hl, bc                                       ; $7833: $09
	sbc h                                            ; $7834: $9c
	rst $38                                          ; $7835: $ff
	nop                                              ; $7836: $00
	ld a, a                                          ; $7837: $7f
	cp $99                                           ; $7838: $fe $99
	adc $00                                          ; $783a: $ce $00
	ld sp, $00ce                                     ; $783c: $31 $ce $00
	rst $38                                          ; $783f: $ff
	ld [hl], e                                       ; $7840: $73
	cp $93                                           ; $7841: $fe $93
	nop                                              ; $7843: $00
	ld [bc], a                                       ; $7844: $02
	ld bc, $070b                                     ; $7845: $01 $0b $07
	ld b, a                                          ; $7848: $47
	ccf                                              ; $7849: $3f
	add sp, $7f                                      ; $784a: $e8 $7f
	ld [hl], b                                       ; $784c: $70
	rst $38                                          ; $784d: $ff
	add hl, sp                                       ; $784e: $39
	sbc $ff                                          ; $784f: $de $ff
	sub d                                            ; $7851: $92
	add d                                            ; $7852: $82
	ld a, h                                          ; $7853: $7c
	db $10                                           ; $7854: $10
	rst $38                                          ; $7855: $ff
	db $10                                           ; $7856: $10
	rst $38                                          ; $7857: $ff
	jr nz, @+$01                                     ; $7858: $20 $ff

	ld e, $ff                                        ; $785a: $1e $ff
	jr @+$01                                         ; $785c: $18 $ff

	sbc [hl]                                         ; $785e: $9e
	sbc $ff                                          ; $785f: $de $ff
	ei                                               ; $7861: $fb
	sub a                                            ; $7862: $97
	call nz, $1a38                                   ; $7863: $c4 $38 $1a
	db $fc                                           ; $7866: $fc

jr_03f_7867:
	jr nc, jr_03f_7867                               ; $7867: $30 $fe

	ld a, c                                          ; $7869: $79
	cp $67                                           ; $786a: $fe $67
	ldh a, [$f9]                                     ; $786c: $f0 $f9
	ld c, e                                          ; $786e: $4b
	pop af                                           ; $786f: $f1
	ld [hl], e                                       ; $7870: $73
	ldh a, [$9a]                                     ; $7871: $f0 $9a
	ld bc, $0700                                     ; $7873: $01 $00 $07
	nop                                              ; $7876: $00
	inc e                                            ; $7877: $1c
	ld hl, sp-$64                                    ; $7878: $f8 $9c
	jr c, jr_03f_787c                                ; $787a: $38 $00

jr_03f_787c:
	ldh [$e4], a                                     ; $787c: $e0 $e4
	sub [hl]                                         ; $787e: $96
	ld a, [hl]                                       ; $787f: $7e
	ld bc, $003f                                     ; $7880: $01 $3f $00
	rra                                              ; $7883: $1f
	nop                                              ; $7884: $00
	ld c, $00                                        ; $7885: $0e $00
	ld [bc], a                                       ; $7887: $02
	ld a, e                                          ; $7888: $7b
	ret z                                            ; $7889: $c8

	ld a, a                                          ; $788a: $7f
	cp $ff                                           ; $788b: $fe $ff
	adc a                                            ; $788d: $8f
	adc b                                            ; $788e: $88
	jr nc, jr_03f_78e5                               ; $788f: $30 $54

	adc b                                            ; $7891: $88
	jr z, @-$2e                                      ; $7892: $28 $d0

	ld b, b                                          ; $7894: $40
	or b                                             ; $7895: $b0
	jr nc, jr_03f_78b0                               ; $7896: $30 $18

	inc d                                            ; $7898: $14
	jr c, jr_03f_78df                                ; $7899: $38 $44

jr_03f_789b:
	ld a, $e8                                        ; $789b: $3e $e8
	ld [hl], b                                       ; $789d: $70
	ld [hl], a                                       ; $789e: $77
	ld d, b                                          ; $789f: $50
	ld a, a                                          ; $78a0: $7f
	sbc $9c                                          ; $78a1: $de $9c
	rla                                              ; $78a3: $17
	nop                                              ; $78a4: $00
	inc bc                                           ; $78a5: $03
	ld a, e                                          ; $78a6: $7b
	sbc $6f                                          ; $78a7: $de $6f
	sbc [hl]                                         ; $78a9: $9e
	ld [hl], a                                       ; $78aa: $77
	cp $9c                                           ; $78ab: $fe $9c
	cp $00                                           ; $78ad: $fe $00
	add b                                            ; $78af: $80

jr_03f_78b0:
	ld h, e                                          ; $78b0: $63
	adc [hl]                                         ; $78b1: $8e
	ld a, a                                          ; $78b2: $7f
	cp $57                                           ; $78b3: $fe $57
	sbc [hl]                                         ; $78b5: $9e
	ld a, a                                          ; $78b6: $7f
	ldh a, [c]                                       ; $78b7: $f2
	sbc [hl]                                         ; $78b8: $9e
	ldh [c], a                                       ; $78b9: $e2
	inc de                                           ; $78ba: $13
	ld e, [hl]                                       ; $78bb: $5e
	db $f4                                           ; $78bc: $f4
	rst SubAFromDE                                          ; $78bd: $df
	ld bc, $a97f                                     ; $78be: $01 $7f $a9
	db $fc                                           ; $78c1: $fc
	add b                                            ; $78c2: $80
	dec b                                            ; $78c3: $05
	inc bc                                           ; $78c4: $03
	cpl                                              ; $78c5: $2f
	rra                                              ; $78c6: $1f
	ld a, h                                          ; $78c7: $7c
	rst $38                                          ; $78c8: $ff
	ldh [rIE], a                                     ; $78c9: $e0 $ff
	pop bc                                           ; $78cb: $c1
	cp $02                                           ; $78cc: $fe $02
	ld bc, $0f17                                     ; $78ce: $01 $17 $0f
	cp h                                             ; $78d1: $bc
	ld a, a                                          ; $78d2: $7f
	ldh a, [rIE]                                     ; $78d3: $f0 $ff
	add b                                            ; $78d5: $80
	rst $38                                          ; $78d6: $ff
	ld b, $f8                                        ; $78d7: $06 $f8
	jr nc, jr_03f_789b                               ; $78d9: $30 $c0

	add b                                            ; $78db: $80
	nop                                              ; $78dc: $00
	ei                                               ; $78dd: $fb
	rst $38                                          ; $78de: $ff

jr_03f_78df:
	jp $03ff                                         ; $78df: $c3 $ff $03


	ld a, e                                          ; $78e2: $7b
	cp $9c                                           ; $78e3: $fe $9c

jr_03f_78e5:
	db $e3                                           ; $78e5: $e3
	rra                                              ; $78e6: $1f
	inc hl                                           ; $78e7: $23
	ld [hl], e                                       ; $78e8: $73
	cp $9e                                           ; $78e9: $fe $9e
	ld bc, $f47b                                     ; $78eb: $01 $7b $f4
	sbc b                                            ; $78ee: $98
	rlca                                             ; $78ef: $07
	rst $38                                          ; $78f0: $ff
	rrca                                             ; $78f1: $0f

Jump_03f_78f2:
	rst $38                                          ; $78f2: $ff
	ccf                                              ; $78f3: $3f
	rst $38                                          ; $78f4: $ff
	ld a, a                                          ; $78f5: $7f
	ret c                                            ; $78f6: $d8

	rst $38                                          ; $78f7: $ff
	sbc [hl]                                         ; $78f8: $9e
	cp [hl]                                          ; $78f9: $be
	sbc $ff                                          ; $78fa: $de $ff
	sbc [hl]                                         ; $78fc: $9e
	db $fd                                           ; $78fd: $fd
	jp c, Jump_03f_6fff                              ; $78fe: $da $ff $6f

	ld e, a                                          ; $7901: $5f
	ld a, a                                          ; $7902: $7f
	jp nz, $fc7f                                     ; $7903: $c2 $7f $fc

	sbc [hl]                                         ; $7906: $9e
	ld c, b                                          ; $7907: $48
	ld a, e                                          ; $7908: $7b
	ld a, [$ae7f]                                    ; $7909: $fa $7f $ae
	ld l, e                                          ; $790c: $6b
	ld c, a                                          ; $790d: $4f
	inc sp                                           ; $790e: $33
	cp $8b                                           ; $790f: $fe $8b
	inc bc                                           ; $7911: $03
	db $fc                                           ; $7912: $fc
	inc b                                            ; $7913: $04
	ei                                               ; $7914: $fb
	ld bc, $03fe                                     ; $7915: $01 $fe $03
	db $fc                                           ; $7918: $fc
	ld [$15f4], sp                                   ; $7919: $08 $f4 $15
	add sp, $60                                      ; $791c: $e8 $60
	sub c                                            ; $791e: $91
	add a                                            ; $791f: $87
	ld h, e                                          ; $7920: $63
	ld b, [hl]                                       ; $7921: $46
	adc a                                            ; $7922: $8f
	inc c                                            ; $7923: $0c
	rra                                              ; $7924: $1f
	ld [hl], a                                       ; $7925: $77
	ld c, l                                          ; $7926: $4d
	db $dd                                           ; $7927: $dd
	rst $38                                          ; $7928: $ff
	sbc h                                            ; $7929: $9c
	ld b, b                                          ; $792a: $40
	rst $38                                          ; $792b: $ff
	ld hl, sp+$6a                                    ; $792c: $f8 $6a
	ld h, b                                          ; $792e: $60
	ld a, a                                          ; $792f: $7f
	db $fc                                           ; $7930: $fc
	ld a, a                                          ; $7931: $7f
	and h                                            ; $7932: $a4
	sub e                                            ; $7933: $93
	ld sp, hl                                        ; $7934: $f9
	db $fd                                           ; $7935: $fd
	dec b                                            ; $7936: $05
	ld hl, sp+$10                                    ; $7937: $f8 $10
	db $fc                                           ; $7939: $fc
	inc h                                            ; $793a: $24
	ret c                                            ; $793b: $d8

	ld b, h                                          ; $793c: $44
	cp e                                             ; $793d: $bb
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	sbc $80                                          ; $7940: $de $80
	sbc $c0                                          ; $7942: $de $c0
	sub a                                            ; $7944: $97
	ld b, b                                          ; $7945: $40
	ldh [$c0], a                                     ; $7946: $e0 $c0
	ld h, b                                          ; $7948: $60
	ld [hl], b                                       ; $7949: $70
	ld h, b                                          ; $794a: $60
	jr nz, @+$72                                     ; $794b: $20 $70

	pop af                                           ; $794d: $f1
	sbc l                                            ; $794e: $9d
	ld l, b                                          ; $794f: $68
	ld [hl], b                                       ; $7950: $70
	ld [hl], a                                       ; $7951: $77
	cp $9d                                           ; $7952: $fe $9d
	inc b                                            ; $7954: $04
	ld a, b                                          ; $7955: $78
	ld [hl], a                                       ; $7956: $77
	ld a, [$709b]                                    ; $7957: $fa $9b $70
	ld a, b                                          ; $795a: $78
	jr z, jr_03f_796d                                ; $795b: $28 $10

	ldh [$db], a                                     ; $795d: $e0 $db
	ld a, d                                          ; $795f: $7a
	add [hl]                                         ; $7960: $86
	ld a, [hl]                                       ; $7961: $7e
	push af                                          ; $7962: $f5
	ld a, a                                          ; $7963: $7f
	ei                                               ; $7964: $fb
	sbc l                                            ; $7965: $9d
	inc bc                                           ; $7966: $03
	inc b                                            ; $7967: $04
	ld [hl], d                                       ; $7968: $72
	ldh a, [$7f]                                     ; $7969: $f0 $7f
	adc e                                            ; $796b: $8b
	ld a, a                                          ; $796c: $7f

jr_03f_796d:
	ld b, [hl]                                       ; $796d: $46
	sbc e                                            ; $796e: $9b
	pop af                                           ; $796f: $f1
	adc [hl]                                         ; $7970: $8e
	ld a, a                                          ; $7971: $7f
	add b                                            ; $7972: $80
	ld a, e                                          ; $7973: $7b
	sub l                                            ; $7974: $95
	ld [hl], d                                       ; $7975: $72
	pop bc                                           ; $7976: $c1
	ld a, a                                          ; $7977: $7f
	ei                                               ; $7978: $fb
	ld a, a                                          ; $7979: $7f
	ld e, d                                          ; $797a: $5a
	add b                                            ; $797b: $80

jr_03f_797c:
	rst JumpTable                                          ; $797c: $c7
	jr c, jr_03f_797c                                ; $797d: $38 $fd

	inc bc                                           ; $797f: $03
	inc bc                                           ; $7980: $03
	rlca                                             ; $7981: $07
	rlca                                             ; $7982: $07
	rst $38                                          ; $7983: $ff
	dec bc                                           ; $7984: $0b
	rlca                                             ; $7985: $07
	ld c, $1f                                        ; $7986: $0e $1f
	inc e                                            ; $7988: $1c
	ccf                                              ; $7989: $3f
	cp b                                             ; $798a: $b8
	ld a, a                                          ; $798b: $7f
	ld c, b                                          ; $798c: $48
	rst $38                                          ; $798d: $ff
	sbc c                                            ; $798e: $99
	rst $38                                          ; $798f: $ff
	dec de                                           ; $7990: $1b
	rst $38                                          ; $7991: $ff
	ld a, e                                          ; $7992: $7b
	rst $38                                          ; $7993: $ff
	call nz, $e0f8                                   ; $7994: $c4 $f8 $e0
	ret nz                                           ; $7997: $c0

	add b                                            ; $7998: $80
	ret nz                                           ; $7999: $c0

	cp a                                             ; $799a: $bf
	sbc c                                            ; $799b: $99
	ret nz                                           ; $799c: $c0

	rst $38                                          ; $799d: $ff
	rst $38                                          ; $799e: $ff
	ret nz                                           ; $799f: $c0

	rst $38                                          ; $79a0: $ff
	add b                                            ; $79a1: $80
	ld a, e                                          ; $79a2: $7b
	or $fb                                           ; $79a3: $f6 $fb
	ld a, a                                          ; $79a5: $7f
	ld sp, hl                                        ; $79a6: $f9
	sub a                                            ; $79a7: $97
	cp $fc                                           ; $79a8: $fe $fc
	ld a, $fc                                        ; $79aa: $3e $fc
	or $0c                                           ; $79ac: $f6 $0c
	or $0c                                           ; $79ae: $f6 $0c
	ld l, [hl]                                       ; $79b0: $6e
	jp z, $fe5f                                      ; $79b1: $ca $5f $fe

	sbc e                                            ; $79b4: $9b
	ld bc, $00a6                                     ; $79b5: $01 $a6 $00
	ld bc, $4077                                     ; $79b8: $01 $77 $40
	add h                                            ; $79bb: $84
	ldh [$e4], a                                     ; $79bc: $e0 $e4
	pop bc                                           ; $79be: $c1

jr_03f_79bf:
	call z, $c1c3                                    ; $79bf: $cc $c3 $c1
	rst JumpTable                                          ; $79c2: $c7
	di                                               ; $79c3: $f3
	ld d, l                                          ; $79c4: $55
	xor d                                            ; $79c5: $aa
	xor d                                            ; $79c6: $aa
	ld d, l                                          ; $79c7: $55
	dec d                                            ; $79c8: $15
	ld l, d                                          ; $79c9: $6a
	ld [bc], a                                       ; $79ca: $02
	dec a                                            ; $79cb: $3d
	ld bc, $8018                                     ; $79cc: $01 $18 $80
	nop                                              ; $79cf: $00
	ld b, e                                          ; $79d0: $43
	ld bc, $0307                                     ; $79d1: $01 $07 $03
	ret nz                                           ; $79d4: $c0

	rst $38                                          ; $79d5: $ff
	ldh a, [$de]                                     ; $79d6: $f0 $de
	rst $38                                          ; $79d8: $ff
	sbc [hl]                                         ; $79d9: $9e
	ld h, a                                          ; $79da: $67
	ld a, c                                          ; $79db: $79
	ld a, [hl]                                       ; $79dc: $7e
	ld a, a                                          ; $79dd: $7f
	adc c                                            ; $79de: $89

Call_03f_79df:
	sbc l                                            ; $79df: $9d
	ld h, b                                          ; $79e0: $60
	sbc a                                            ; $79e1: $9f
	ld l, [hl]                                       ; $79e2: $6e
	or b                                             ; $79e3: $b0
	ld h, [hl]                                       ; $79e4: $66
	xor b                                            ; $79e5: $a8
	sbc l                                            ; $79e6: $9d
	add e                                            ; $79e7: $83
	ld a, h                                          ; $79e8: $7c
	ld a, e                                          ; $79e9: $7b
	ld [hl], c                                       ; $79ea: $71
	adc l                                            ; $79eb: $8d
	cp $04                                           ; $79ec: $fe $04
	ld hl, sp-$38                                    ; $79ee: $f8 $c8
	pop af                                           ; $79f0: $f1
	pop bc                                           ; $79f1: $c1
	pop hl                                           ; $79f2: $e1
	nop                                              ; $79f3: $00

jr_03f_79f4:
	pop bc                                           ; $79f4: $c1
	nop                                              ; $79f5: $00
	pop bc                                           ; $79f6: $c1
	ld b, b                                          ; $79f7: $40
	add c                                            ; $79f8: $81
	ld b, b                                          ; $79f9: $40
	add c                                            ; $79fa: $81
	ld a, h                                          ; $79fb: $7c
	ccf                                              ; $79fc: $3f
	ld [hl], b                                       ; $79fd: $70
	ld e, d                                          ; $79fe: $5a

Call_03f_79ff:
	adc b                                            ; $79ff: $88
	add a                                            ; $7a00: $87
	ld b, d                                          ; $7a01: $42
	cp l                                             ; $7a02: $bd
	ld bc, $02fe                                     ; $7a03: $01 $fe $02
	db $fd                                           ; $7a06: $fd
	inc b                                            ; $7a07: $04
	ei                                               ; $7a08: $fb
	db $fd                                           ; $7a09: $fd
	cp $08                                           ; $7a0a: $fe $08
	db $fc                                           ; $7a0c: $fc
	nop                                              ; $7a0d: $00
	db $fc                                           ; $7a0e: $fc
	db $fc                                           ; $7a0f: $fc
	rst $38                                          ; $7a10: $ff
	ld sp, hl                                        ; $7a11: $f9
	rst $38                                          ; $7a12: $ff
	xor c                                            ; $7a13: $a9
	ld b, c                                          ; $7a14: $41
	ld bc, $0189                                     ; $7a15: $01 $89 $01
	add hl, bc                                       ; $7a18: $09
	ld a, e                                          ; $7a19: $7b
	cp $9b                                           ; $7a1a: $fe $9b
	dec bc                                           ; $7a1c: $0b
	inc bc                                           ; $7a1d: $03
	rrca                                             ; $7a1e: $0f
	rlca                                             ; $7a1f: $07
	ld a, e                                          ; $7a20: $7b
	cp $80                                           ; $7a21: $fe $80
	db $10                                           ; $7a23: $10
	cp b                                             ; $7a24: $b8
	jr nc, jr_03f_79bf                               ; $7a25: $30 $98

	inc b                                            ; $7a27: $04
	sbc b                                            ; $7a28: $98
	ld de, $408c                                     ; $7a29: $11 $8c $40
	adc l                                            ; $7a2c: $8d
	adc c                                            ; $7a2d: $89
	rst JumpTable                                          ; $7a2e: $c7
	add b                                            ; $7a2f: $80
	rst JumpTable                                          ; $7a30: $c7
	add l                                            ; $7a31: $85
	jp nz, $0000                                    ; $7a32: $c2 $00 $00

	ld [$ec00], sp                                   ; $7a35: $08 $00 $ec
	jr jr_03f_79f4                                   ; $7a38: $18 $ba

	db $fc                                           ; $7a3a: $fc
	push af                                          ; $7a3b: $f5
	ld a, [$fffe]                                    ; $7a3c: $fa $fe $ff
	cp $ff                                           ; $7a3f: $fe $ff
	rst SubAFromBC                                          ; $7a41: $e7
	sbc c                                            ; $7a42: $99
	rst $38                                          ; $7a43: $ff
	jr z, @+$12                                      ; $7a44: $28 $10

	ld [$2810], sp                                   ; $7a46: $08 $10 $28
	ld [hl], e                                       ; $7a49: $73
	cp $99                                           ; $7a4a: $fe $99
	add h                                            ; $7a4c: $84
	ld hl, sp-$15                                    ; $7a4d: $f8 $eb
	db $fc                                           ; $7a4f: $fc
	rst AddAOntoHL                                          ; $7a50: $ef
	db $f4                                           ; $7a51: $f4
	ld a, d                                          ; $7a52: $7a
	db $eb                                           ; $7a53: $eb
	ld a, c                                          ; $7a54: $79
	jr nc, jr_03f_7ad6                               ; $7a55: $30 $7f

	cp $7e                                           ; $7a57: $fe $7e
	ld h, a                                          ; $7a59: $67
	ld a, l                                          ; $7a5a: $7d
	ld a, b                                          ; $7a5b: $78
	ld a, a                                          ; $7a5c: $7f
	cp $97                                           ; $7a5d: $fe $97
	ld c, $01                                        ; $7a5f: $0e $01

Jump_03f_7a61:
	ldh a, [rP1]                                     ; $7a61: $f0 $00
	ldh a, [rP1]                                     ; $7a63: $f0 $00
	ld hl, sp+$00                                    ; $7a65: $f8 $00
	ld a, e                                          ; $7a67: $7b
	and e                                            ; $7a68: $a3
	ld a, e                                          ; $7a69: $7b
	cp $9c                                           ; $7a6a: $fe $9c
	sbc h                                            ; $7a6c: $9c
	ld h, b                                          ; $7a6d: $60
	xor $7a                                          ; $7a6e: $ee $7a
	ret                                              ; $7a70: $c9


	ld a, l                                          ; $7a71: $7d
	call nz, $0793                                   ; $7a72: $c4 $93 $07
	dec de                                           ; $7a75: $1b
	dec d                                            ; $7a76: $15
	inc sp                                           ; $7a77: $33
	dec [hl]                                         ; $7a78: $35
	inc sp                                           ; $7a79: $33
	ld [hl], a                                       ; $7a7a: $77
	inc sp                                           ; $7a7b: $33
	ld h, a                                          ; $7a7c: $67
	ld [hl], e                                       ; $7a7d: $73
	scf                                              ; $7a7e: $37
	ld [hl], e                                       ; $7a7f: $73
	ld a, c                                          ; $7a80: $79
	ld h, a                                          ; $7a81: $67
	ld a, e                                          ; $7a82: $7b
	cp $7f                                           ; $7a83: $fe $7f
	dec e                                            ; $7a85: $1d
	adc h                                            ; $7a86: $8c
	dec b                                            ; $7a87: $05
	add e                                            ; $7a88: $83
	ld a, [bc]                                       ; $7a89: $0a
	add a                                            ; $7a8a: $87
	ld a, h                                          ; $7a8b: $7c
	add e                                            ; $7a8c: $83
	ld [de], a                                       ; $7a8d: $12
	rst $38                                          ; $7a8e: $ff
	ld l, h                                          ; $7a8f: $6c
	ld a, a                                          ; $7a90: $7f
	ld [hl], c                                       ; $7a91: $71
	ccf                                              ; $7a92: $3f
	ld [hl], e                                       ; $7a93: $73
	ld a, a                                          ; $7a94: $7f
	add a                                            ; $7a95: $87
	rst $38                                          ; $7a96: $ff
	inc de                                           ; $7a97: $13
	rst $38                                          ; $7a98: $ff
	sub e                                            ; $7a99: $93
	ld a, e                                          ; $7a9a: $7b
	cp $8d                                           ; $7a9b: $fe $8d
	sbc e                                            ; $7a9d: $9b
	rst $38                                          ; $7a9e: $ff
	ld b, l                                          ; $7a9f: $45
	ei                                               ; $7aa0: $fb
	push bc                                          ; $7aa1: $c5
	ei                                               ; $7aa2: $fb
	call nz, $c7fb                                   ; $7aa3: $c4 $fb $c7
	ld hl, sp-$2a                                    ; $7aa6: $f8 $d6
	jp hl                                            ; $7aa8: $e9


	sub $e9                                          ; $7aa9: $d6 $e9
	rst JumpTable                                          ; $7aab: $c7
	ld hl, sp+$27                                    ; $7aac: $f8 $27
	ret c                                            ; $7aae: $d8

	halt                                             ; $7aaf: $76
	call z, $fe77                                    ; $7ab0: $cc $77 $fe
	ld l, e                                          ; $7ab3: $6b
	ld sp, hl                                        ; $7ab4: $f9
	sbc d                                            ; $7ab5: $9a
	add b                                            ; $7ab6: $80
	or $0c                                           ; $7ab7: $f6 $0c
	ld a, [bc]                                       ; $7ab9: $0a
	inc b                                            ; $7aba: $04
	rst FarCall                                          ; $7abb: $f7
	sbc l                                            ; $7abc: $9d
	rlca                                             ; $7abd: $07
	ld bc, $ca6e                                     ; $7abe: $01 $6e $ca
	sbc h                                            ; $7ac1: $9c
	ld hl, $201f                                     ; $7ac2: $21 $1f $20
	ld a, e                                          ; $7ac5: $7b
	cp $9c                                           ; $7ac6: $fe $9c
	daa                                              ; $7ac8: $27
	rra                                              ; $7ac9: $1f
	sbc a                                            ; $7aca: $9f
	ld a, c                                          ; $7acb: $79
	adc e                                            ; $7acc: $8b
	ld a, a                                          ; $7acd: $7f
	ld a, [de]                                       ; $7ace: $1a
	sbc b                                            ; $7acf: $98
	ret c                                            ; $7ad0: $d8

	rst SubAFromBC                                          ; $7ad1: $e7
	ld [hl], $7f                                     ; $7ad2: $36 $7f
	cpl                                              ; $7ad4: $2f
	ld [de], a                                       ; $7ad5: $12

jr_03f_7ad6:
	ld h, d                                          ; $7ad6: $62
	ld a, d                                          ; $7ad7: $7a
	adc [hl]                                         ; $7ad8: $8e
	ld a, a                                          ; $7ad9: $7f
	ld h, d                                          ; $7ada: $62
	db $dd                                           ; $7adb: $dd
	rst $38                                          ; $7adc: $ff
	add b                                            ; $7add: $80
	ld [hl], l                                       ; $7ade: $75
	adc a                                            ; $7adf: $8f
	xor d                                            ; $7ae0: $aa
	rst SubAFromDE                                          ; $7ae1: $df
	ld d, d                                          ; $7ae2: $52
	pop hl                                           ; $7ae3: $e1
	ld sp, hl                                        ; $7ae4: $f9
	adc [hl]                                         ; $7ae5: $8e
	inc c                                            ; $7ae6: $0c
	rst $38                                          ; $7ae7: $ff
	or e                                             ; $7ae8: $b3
	nop                                              ; $7ae9: $00
	rst JumpTable                                          ; $7aea: $c7
	ret z                                            ; $7aeb: $c8

	ld b, e                                          ; $7aec: $43
	call nz, $0104                              ; $7aed: $c4 $04 $01
	ld b, b                                          ; $7af0: $40

jr_03f_7af1:
	ld d, b                                          ; $7af1: $50
	xor h                                            ; $7af2: $ac
	inc e                                            ; $7af3: $1c
	ld [hl], b                                       ; $7af4: $70
	dec d                                            ; $7af5: $15
	pop de                                           ; $7af6: $d1
	jp nc, $0000                                    ; $7af7: $d2 $00 $00

	ld a, a                                          ; $7afa: $7f
	add b                                            ; $7afb: $80
	cp a                                             ; $7afc: $bf
	sub l                                            ; $7afd: $95
	ret nz                                           ; $7afe: $c0

Call_03f_7aff:
	cp c                                             ; $7aff: $b9
	ret nz                                           ; $7b00: $c0

	reti                                             ; $7b01: $d9


	ldh [$d9], a                                     ; $7b02: $e0 $d9
	ldh [$dd], a                                     ; $7b04: $e0 $dd
	ldh [$df], a                                     ; $7b06: $e0 $df
	ld a, e                                          ; $7b08: $7b
	cp $76                                           ; $7b09: $fe $76
	call z, Call_03f_419d                            ; $7b0b: $cc $9d $41
	add b                                            ; $7b0e: $80
	ld e, a                                          ; $7b0f: $5f
	cp $94                                           ; $7b10: $fe $94
	jp c, $f225                                      ; $7b12: $da $25 $f2

	dec c                                            ; $7b15: $0d
	cp $01                                           ; $7b16: $fe $01
	cp $01                                           ; $7b18: $fe $01
	ld hl, sp+$01                                    ; $7b1a: $f8 $01
	db $fc                                           ; $7b1c: $fc
	ld a, e                                          ; $7b1d: $7b
	cp $7c                                           ; $7b1e: $fe $7c
	xor b                                            ; $7b20: $a8
	sbc l                                            ; $7b21: $9d
	ld a, b                                          ; $7b22: $78
	db $fd                                           ; $7b23: $fd

Jump_03f_7b24:
	ld l, a                                          ; $7b24: $6f
	cp $7e                                           ; $7b25: $fe $7e
	ld de, $0898                                     ; $7b27: $11 $98 $08
	db $fd                                           ; $7b2a: $fd
	db $fc                                           ; $7b2b: $fc
	db $fd                                           ; $7b2c: $fd
	ldh [rAUD3LEVEL], a                              ; $7b2d: $e0 $1c
	ld [$127a], sp                                   ; $7b2f: $08 $7a $12
	ld a, a                                          ; $7b32: $7f
	cp $9e                                           ; $7b33: $fe $9e
	jr jr_03f_7baa                                   ; $7b35: $18 $73

	cp $95                                           ; $7b37: $fe $95
	add hl, de                                       ; $7b39: $19
	ccf                                              ; $7b3a: $3f
	ld de, $823f                                     ; $7b3b: $11 $3f $82
	dec [hl]                                         ; $7b3e: $35
	add l                                            ; $7b3f: $85
	ld [hl+], a                                      ; $7b40: $22
	add e                                            ; $7b41: $83
	inc b                                            ; $7b42: $04
	ld a, d                                          ; $7b43: $7a
	rst AddAOntoHL                                          ; $7b44: $ef
	add b                                            ; $7b45: $80
	inc b                                            ; $7b46: $04
	ld b, b                                          ; $7b47: $40
	dec b                                            ; $7b48: $05
	ld d, b                                          ; $7b49: $50
	inc b                                            ; $7b4a: $04
	sub b                                            ; $7b4b: $90
	dec b                                            ; $7b4c: $05
	rst SubAFromBC                                          ; $7b4d: $e7
	jr nz, jr_03f_7af1                               ; $7b4e: $20 $a1

	ld [hl+], a                                      ; $7b50: $22
	ld hl, sp+$3d                                    ; $7b51: $f8 $3d
	ld a, [hl]                                       ; $7b53: $7e
	rst $38                                          ; $7b54: $ff
	rst $38                                          ; $7b55: $ff
	ld a, a                                          ; $7b56: $7f
	add d                                            ; $7b57: $82
	nop                                              ; $7b58: $00
	db $fd                                           ; $7b59: $fd
	ld [bc], a                                       ; $7b5a: $02
	ld a, [hl]                                       ; $7b5b: $7e
	nop                                              ; $7b5c: $00
	db $ed                                           ; $7b5d: $ed
	cp $e8                                           ; $7b5e: $fe $e8

Jump_03f_7b60:
	rst $38                                          ; $7b60: $ff
	db $ed                                           ; $7b61: $ed
	cp $ec                                           ; $7b62: $fe $ec
	rst $38                                          ; $7b64: $ff
	add b                                            ; $7b65: $80
	rst AddAOntoHL                                          ; $7b66: $ef
	rst $38                                          ; $7b67: $ff
	inc hl                                           ; $7b68: $23
	rst SubAFromDE                                          ; $7b69: $df
	ld [hl], a                                       ; $7b6a: $77
	sbc b                                            ; $7b6b: $98
	ld e, c                                          ; $7b6c: $59
	or b                                             ; $7b6d: $b0
	ld c, $e1                                        ; $7b6e: $0e $e1
	inc c                                            ; $7b70: $0c
	di                                               ; $7b71: $f3
	inc b                                            ; $7b72: $04
	ei                                               ; $7b73: $fb
	ld b, $39                                        ; $7b74: $06 $39
	ld a, [de]                                       ; $7b76: $1a
	pop hl                                           ; $7b77: $e1
	nop                                              ; $7b78: $00
	rst $38                                          ; $7b79: $ff
	dec bc                                           ; $7b7a: $0b
	rst $38                                          ; $7b7b: $ff
	add hl, de                                       ; $7b7c: $19
	sbc a                                            ; $7b7d: $9f

Call_03f_7b7e:
	rst $38                                          ; $7b7e: $ff
	nop                                              ; $7b7f: $00
	rlca                                             ; $7b80: $07
	ld hl, sp-$80                                    ; $7b81: $f8 $80
	ld a, a                                          ; $7b83: $7f
	add hl, bc                                       ; $7b84: $09
	ld a, e                                          ; $7b85: $7b
	ld a, [hl-]                                      ; $7b86: $3a
	add b                                            ; $7b87: $80
	add c                                            ; $7b88: $81
	ld a, a                                          ; $7b89: $7f
	ld bc, $01ff                                     ; $7b8a: $01 $ff $01
	rst $38                                          ; $7b8d: $ff
	scf                                              ; $7b8e: $37
	ld [hl], e                                       ; $7b8f: $73
	adc e                                            ; $7b90: $8b
	ld [hl], a                                       ; $7b91: $77
	cp e                                             ; $7b92: $bb
	ld [hl], a                                       ; $7b93: $77
	ld [hl], e                                       ; $7b94: $73
	rst FarCall                                          ; $7b95: $f7
	di                                               ; $7b96: $f3
	rst FarCall                                          ; $7b97: $f7
	rst $38                                          ; $7b98: $ff
	rst SubAFromBC                                          ; $7b99: $e7
	rst FarCall                                          ; $7b9a: $f7
	rst AddAOntoHL                                          ; $7b9b: $ef
	rst $38                                          ; $7b9c: $ff
	rst $38                                          ; $7b9d: $ff
	ldh [$1f], a                                     ; $7b9e: $e0 $1f
	ret nz                                           ; $7ba0: $c0

	ccf                                              ; $7ba1: $3f
	add b                                            ; $7ba2: $80
	ld b, e                                          ; $7ba3: $43
	nop                                              ; $7ba4: $00
	sbc l                                            ; $7ba5: $9d
	nop                                              ; $7ba6: $00
	add a                                            ; $7ba7: $87
	sub b                                            ; $7ba8: $90
	nop                                              ; $7ba9: $00

jr_03f_7baa:
	cp h                                             ; $7baa: $bc
	nop                                              ; $7bab: $00
	ldh a, [c]                                       ; $7bac: $f2
	nop                                              ; $7bad: $00
	db $f4                                           ; $7bae: $f4
	ldh [rAUD3LEN], a                                ; $7baf: $e0 $1b
	jr nz, @-$26                                     ; $7bb1: $20 $d8

	nop                                              ; $7bb3: $00
	db $e3                                           ; $7bb4: $e3
	nop                                              ; $7bb5: $00
	ei                                               ; $7bb6: $fb
	nop                                              ; $7bb7: $00
	rst AddAOntoHL                                          ; $7bb8: $ef
	nop                                              ; $7bb9: $00
	db $d3                                           ; $7bba: $d3
	nop                                              ; $7bbb: $00
	rla                                              ; $7bbc: $17
	inc bc                                           ; $7bbd: $03
	inc e                                            ; $7bbe: $1c
	rst $38                                          ; $7bbf: $ff

Call_03f_7bc0:
	ld a, b                                          ; $7bc0: $78
	add b                                            ; $7bc1: $80
	sub l                                            ; $7bc2: $95
	ld [hl], l                                       ; $7bc3: $75
	adc [hl]                                         ; $7bc4: $8e
	inc [hl]                                         ; $7bc5: $34
	ld hl, sp+$3c                                    ; $7bc6: $f8 $3c
	ldh [$66], a                                     ; $7bc8: $e0 $66
	sbc a                                            ; $7bca: $9f
	ld bc, $797f                                     ; $7bcb: $01 $7f $79
	sub [hl]                                         ; $7bce: $96

Call_03f_7bcf:
	ld a, c                                          ; $7bcf: $79
	ld e, h                                          ; $7bd0: $5c
	add b                                            ; $7bd1: $80
	db $ed                                           ; $7bd2: $ed
	di                                               ; $7bd3: $f3
	ld b, h                                          ; $7bd4: $44
	ccf                                              ; $7bd5: $3f
	ld [hl], e                                       ; $7bd6: $73
	inc c                                            ; $7bd7: $0c
	rst SubAFromDE                                          ; $7bd8: $df
	pop hl                                           ; $7bd9: $e1
	dec c                                            ; $7bda: $0d
	di                                               ; $7bdb: $f3
	inc de                                           ; $7bdc: $13
	rrca                                             ; $7bdd: $0f
	rlca                                             ; $7bde: $07
	nop                                              ; $7bdf: $00
	sub a                                            ; $7be0: $97
	ld l, b                                          ; $7be1: $68
	ld hl, sp-$08                                    ; $7be2: $f8 $f8
	ccf                                              ; $7be4: $3f
	rst GetHLinHL                                          ; $7be5: $cf
	rlca                                             ; $7be6: $07

jr_03f_7be7:
	dec hl                                           ; $7be7: $2b
	rst GetHLinHL                                          ; $7be8: $cf
	xor a                                            ; $7be9: $af
	add a                                            ; $7bea: $87
	nop                                              ; $7beb: $00
	cpl                                              ; $7bec: $2f
	add b                                            ; $7bed: $80
	sub c                                            ; $7bee: $91
	jr c, @+$5e                                      ; $7bef: $38 $5c

	sbc e                                            ; $7bf1: $9b
	inc e                                            ; $7bf2: $1c
	cp h                                             ; $7bf3: $bc
	ld a, h                                          ; $7bf4: $7c
	ld a, a                                          ; $7bf5: $7f
	ld a, b                                          ; $7bf6: $78
	ld d, d                                          ; $7bf7: $52
	ld a, [hl]                                       ; $7bf8: $7e
	ld [hl+], a                                      ; $7bf9: $22
	sbc e                                            ; $7bfa: $9b
	ld e, a                                          ; $7bfb: $5f
	rrca                                             ; $7bfc: $0f
	or e                                             ; $7bfd: $b3

Call_03f_7bfe:
	rlca                                             ; $7bfe: $07
	ld [hl], c                                       ; $7bff: $71
	or b                                             ; $7c00: $b0
	ld [hl], l                                       ; $7c01: $75
	dec l                                            ; $7c02: $2d
	sbc h                                            ; $7c03: $9c
	rst $38                                          ; $7c04: $ff
	or $09                                           ; $7c05: $f6 $09
	ld [hl], a                                       ; $7c07: $77
	ld a, [$e07e]                                    ; $7c08: $fa $7e $e0
	ld a, a                                          ; $7c0b: $7f
	cp $7e                                           ; $7c0c: $fe $7e
	ld c, a                                          ; $7c0e: $4f
	ld a, a                                          ; $7c0f: $7f
	rst FarCall                                          ; $7c10: $f7
	sbc [hl]                                         ; $7c11: $9e
	jr nc, jr_03f_7c8e                               ; $7c12: $30 $7a

	ld c, d                                          ; $7c14: $4a
	sub h                                            ; $7c15: $94
	rrca                                             ; $7c16: $0f
	add b                                            ; $7c17: $80
	ld [hl+], a                                      ; $7c18: $22
	rst $38                                          ; $7c19: $ff
	rst AddAOntoHL                                          ; $7c1a: $ef
	rlca                                             ; $7c1b: $07
	db $eb                                           ; $7c1c: $eb
	rlca                                             ; $7c1d: $07
	ld [bc], a                                       ; $7c1e: $02
	ld bc, $78c8                                     ; $7c1f: $01 $c8 $78
	rst AddAOntoHL                                          ; $7c22: $ef
	rst $38                                          ; $7c23: $ff
	sbc e                                            ; $7c24: $9b
	jr c, jr_03f_7be7                                ; $7c25: $38 $c0

jr_03f_7c27:
	add sp, -$20                                     ; $7c27: $e8 $e0

jr_03f_7c29:
	halt                                             ; $7c29: $76
	sub b                                            ; $7c2a: $90
	ld a, a                                          ; $7c2b: $7f
	ld l, h                                          ; $7c2c: $6c
	ld [hl], b                                       ; $7c2d: $70
	inc l                                            ; $7c2e: $2c
	ld [hl], a                                       ; $7c2f: $77
	push de                                          ; $7c30: $d5
	ld [hl], d                                       ; $7c31: $72
	add b                                            ; $7c32: $80
	sbc l                                            ; $7c33: $9d
	cpl                                              ; $7c34: $2f
	ret nc                                           ; $7c35: $d0

	ld e, h                                          ; $7c36: $5c
	inc a                                            ; $7c37: $3c
	ld a, [hl]                                       ; $7c38: $7e
	ld a, e                                          ; $7c39: $7b
	ld h, a                                          ; $7c3a: $67
	or b                                             ; $7c3b: $b0
	ld l, a                                          ; $7c3c: $6f
	cp $7d                                           ; $7c3d: $fe $7d
	ld h, d                                          ; $7c3f: $62
	ld a, e                                          ; $7c40: $7b
	ldh a, [$9c]                                     ; $7c41: $f0 $9c
	rra                                              ; $7c43: $1f
	rrca                                             ; $7c44: $0f
	ldh a, [$67]                                     ; $7c45: $f0 $67
	ldh a, [$9b]                                     ; $7c47: $f0 $9b
	rra                                              ; $7c49: $1f
	ccf                                              ; $7c4a: $3f
	ld de, $79e0                                     ; $7c4b: $11 $e0 $79
	dec l                                            ; $7c4e: $2d
	ld a, l                                          ; $7c4f: $7d
	ld e, e                                          ; $7c50: $5b
	sub a                                            ; $7c51: $97
	jr nc, jr_03f_7cd3                               ; $7c52: $30 $7f

	or b                                             ; $7c54: $b0
	ccf                                              ; $7c55: $3f
	ldh a, [$3f]                                     ; $7c56: $f0 $3f
	ldh a, [$f8]                                     ; $7c58: $f0 $f8
	ld a, e                                          ; $7c5a: $7b
	push af                                          ; $7c5b: $f5
	ld a, a                                          ; $7c5c: $7f
	cp $9b                                           ; $7c5d: $fe $9b
	ld b, [hl]                                       ; $7c5f: $46
	ld sp, hl                                        ; $7c60: $f9
	rra                                              ; $7c61: $1f
	ldh [$67], a                                     ; $7c62: $e0 $67
	cp a                                             ; $7c64: $bf
	sub [hl]                                         ; $7c65: $96
	ld l, c                                          ; $7c66: $69
	di                                               ; $7c67: $f3
	ld l, e                                          ; $7c68: $6b
	pop af                                           ; $7c69: $f1
	dec sp                                           ; $7c6a: $3b
	pop bc                                           ; $7c6b: $c1
	cp $01                                           ; $7c6c: $fe $01
	ld a, [hl]                                       ; $7c6e: $7e
	ld a, e                                          ; $7c6f: $7b
	cp $7f                                           ; $7c70: $fe $7f
	ldh a, [hDisp0_SCY]                                     ; $7c72: $f0 $83
	ld d, c                                          ; $7c74: $51
	cp b                                             ; $7c75: $b8
	dec c                                            ; $7c76: $0d
	ldh a, [rAUD3LOW]                                ; $7c77: $f0 $1d
	ldh a, [$37]                                     ; $7c79: $f0 $37
	rst SubAFromDE                                          ; $7c7b: $df
	ccf                                              ; $7c7c: $3f
	call c, $d038                                    ; $7c7d: $dc $38 $d0
	ret nz                                           ; $7c80: $c0

	ldh a, [rSVBK]                                   ; $7c81: $f0 $70
	add b                                            ; $7c83: $80
	and b                                            ; $7c84: $a0
	rra                                              ; $7c85: $1f
	jr nz, jr_03f_7c27                               ; $7c86: $20 $9f

	jr z, jr_03f_7c29                                ; $7c88: $28 $9f

	add b                                            ; $7c8a: $80
	rra                                              ; $7c8b: $1f
	rra                                              ; $7c8c: $1f
	rrca                                             ; $7c8d: $0f

jr_03f_7c8e:
	rla                                              ; $7c8e: $17
	rrca                                             ; $7c8f: $0f
	ld a, b                                          ; $7c90: $78
	add b                                            ; $7c91: $80
	sbc [hl]                                         ; $7c92: $9e
	rrca                                             ; $7c93: $0f
	ld l, a                                          ; $7c94: $6f
	res 3, l                                         ; $7c95: $cb $9d
	ld h, b                                          ; $7c97: $60
	rst $38                                          ; $7c98: $ff
	ld [hl], a                                       ; $7c99: $77
	xor e                                            ; $7c9a: $ab
	ld a, a                                          ; $7c9b: $7f
	cp $7d                                           ; $7c9c: $fe $7d
	ld e, $9e                                        ; $7c9e: $1e $9e
	rra                                              ; $7ca0: $1f
	ld [hl], e                                       ; $7ca1: $73
	cp $94                                           ; $7ca2: $fe $94
	ld c, a                                          ; $7ca4: $4f
	rst $38                                          ; $7ca5: $ff
	inc bc                                           ; $7ca6: $03
	cp $40                                           ; $7ca7: $fe $40
	cp $61                                           ; $7ca9: $fe $61
	cp $21                                           ; $7cab: $fe $21
	cp $d8                                           ; $7cad: $fe $d8
	ld a, e                                          ; $7caf: $7b
	db $ec                                           ; $7cb0: $ec
	sbc [hl]                                         ; $7cb1: $9e
	db $fd                                           ; $7cb2: $fd
	ld a, c                                          ; $7cb3: $79
	ld [$527c], sp                                   ; $7cb4: $08 $7c $52
	ld a, l                                          ; $7cb7: $7d
	ld h, [hl]                                       ; $7cb8: $66
	sbc [hl]                                         ; $7cb9: $9e
	ld b, c                                          ; $7cba: $41
	ld a, c                                          ; $7cbb: $79
	ld h, h                                          ; $7cbc: $64
	ld a, h                                          ; $7cbd: $7c
	ld a, b                                          ; $7cbe: $78
	ld a, a                                          ; $7cbf: $7f
	cp $93                                           ; $7cc0: $fe $93
	db $ec                                           ; $7cc2: $ec
	db $fc                                           ; $7cc3: $fc
	ld hl, sp-$08                                    ; $7cc4: $f8 $f8
	dec sp                                           ; $7cc6: $3b
	ld hl, sp-$20                                    ; $7cc7: $f8 $e0
	ldh a, [$ef]                                     ; $7cc9: $f0 $ef
	ldh a, [$e7]                                     ; $7ccb: $f0 $e7
	ldh [$79], a                                     ; $7ccd: $e0 $79
	adc $fe                                          ; $7ccf: $ce $fe
	sbc [hl]                                         ; $7cd1: $9e
	ccf                                              ; $7cd2: $3f

jr_03f_7cd3:
	ld a, d                                          ; $7cd3: $7a
	or c                                             ; $7cd4: $b1
	ld [hl], a                                       ; $7cd5: $77
	or $7f                                           ; $7cd6: $f6 $7f
	cp $9c                                           ; $7cd8: $fe $9c
	rst GetHLinHL                                          ; $7cda: $cf
	rra                                              ; $7cdb: $1f
	rst AddAOntoHL                                          ; $7cdc: $ef
	ld a, c                                          ; $7cdd: $79
	and [hl]                                         ; $7cde: $a6
	sub [hl]                                         ; $7cdf: $96
	ei                                               ; $7ce0: $fb
	rlca                                             ; $7ce1: $07
	ldh a, [rIF]                                     ; $7ce2: $f0 $0f
	ld b, b                                          ; $7ce4: $40
	ccf                                              ; $7ce5: $3f
	cp a                                             ; $7ce6: $bf
	ld a, a                                          ; $7ce7: $7f
	rra                                              ; $7ce8: $1f
	ld l, b                                          ; $7ce9: $68
	or h                                             ; $7cea: $b4
	adc c                                            ; $7ceb: $89
	or d                                             ; $7cec: $b2
	ld sp, hl                                        ; $7ced: $f9
	ld a, [bc]                                       ; $7cee: $0a
	pop af                                           ; $7cef: $f1
	ld d, l                                          ; $7cf0: $55
	db $e3                                           ; $7cf1: $e3
	rst SubAFromDE                                          ; $7cf2: $df
	rst SubAFromBC                                          ; $7cf3: $e7
	rst GetHLinHL                                          ; $7cf4: $cf
	rst $38                                          ; $7cf5: $ff
	ld h, d                                          ; $7cf6: $62
	di                                               ; $7cf7: $f3
	rst $38                                          ; $7cf8: $ff
	ldh a, [c]                                       ; $7cf9: $f2
	rst $38                                          ; $7cfa: $ff
	rlca                                             ; $7cfb: $07
	db $fd                                           ; $7cfc: $fd
	ld [bc], a                                       ; $7cfd: $02
	dec de                                           ; $7cfe: $1b

Call_03f_7cff:
	nop                                              ; $7cff: $00
	ei                                               ; $7d00: $fb
	rlca                                             ; $7d01: $07
	db $dd                                           ; $7d02: $dd
	rst $38                                          ; $7d03: $ff
	sub h                                            ; $7d04: $94
	db $dd                                           ; $7d05: $dd
	cp $d5                                           ; $7d06: $fe $d5
	xor $c4                                          ; $7d08: $ee $c4
	rst $38                                          ; $7d0a: $ff
	sub $ef                                          ; $7d0b: $d6 $ef
	rst SubAFromHL                                          ; $7d0d: $d7
	xor $d5                                          ; $7d0e: $ee $d5
	ld a, e                                          ; $7d10: $7b
	cp $95                                           ; $7d11: $fe $95
	ld d, l                                          ; $7d13: $55
	xor $26                                          ; $7d14: $ee $26
	di                                               ; $7d16: $f3
	ld [hl+], a                                      ; $7d17: $22
	rst FarCall                                          ; $7d18: $f7
	ld [hl+], a                                      ; $7d19: $22
	rst $38                                          ; $7d1a: $ff
	ld h, $f3                                        ; $7d1b: $26 $f3
	ld [hl], a                                       ; $7d1d: $77
	cp $7f                                           ; $7d1e: $fe $7f
	or $8d                                           ; $7d20: $f6 $8d
	ld a, [hl+]                                      ; $7d22: $2a
	rst FarCall                                          ; $7d23: $f7
	ld l, b                                          ; $7d24: $68
	ld h, b                                          ; $7d25: $60
	db $fc                                           ; $7d26: $fc
	ld h, b                                          ; $7d27: $60
	ret nc                                           ; $7d28: $d0

	ld h, b                                          ; $7d29: $60
	ld l, d                                          ; $7d2a: $6a
	ld h, b                                          ; $7d2b: $60
	ld a, e                                          ; $7d2c: $7b
	ld h, b                                          ; $7d2d: $60
	ld b, d                                          ; $7d2e: $42
	ld h, c                                          ; $7d2f: $61
	ret c                                            ; $7d30: $d8

	ld h, a                                          ; $7d31: $67
	ld a, b                                          ; $7d32: $78
	ldh [rOCPS], a                                   ; $7d33: $e0 $6a
	jp z, Jump_03f_76fe                              ; $7d35: $ca $fe $76

	sbc d                                            ; $7d38: $9a
	ld a, a                                          ; $7d39: $7f
	or $77                                           ; $7d3a: $f6 $77
	adc e                                            ; $7d3c: $8b
	sbc h                                            ; $7d3d: $9c
	ld c, b                                          ; $7d3e: $48
	or a                                             ; $7d3f: $b7
	rst $38                                          ; $7d40: $ff
	ld a, e                                          ; $7d41: $7b
	add d                                            ; $7d42: $82
	ld a, a                                          ; $7d43: $7f
	cp $9d                                           ; $7d44: $fe $9d
	ld a, [hl]                                       ; $7d46: $7e
	add c                                            ; $7d47: $81
	ld l, e                                          ; $7d48: $6b
	ld [hl-], a                                      ; $7d49: $32
	sbc e                                            ; $7d4a: $9b
	sbc a                                            ; $7d4b: $9f
	sbc b                                            ; $7d4c: $98
	rst JumpTable                                          ; $7d4d: $c7
	add a                                            ; $7d4e: $87
	ld a, c                                          ; $7d4f: $79
	inc bc                                           ; $7d50: $03
	sbc e                                            ; $7d51: $9b
	sbc b                                            ; $7d52: $98
	ret nz                                           ; $7d53: $c0

	and h                                            ; $7d54: $a4
	ret c                                            ; $7d55: $d8

	ld h, [hl]                                       ; $7d56: $66

jr_03f_7d57:
	ret z                                            ; $7d57: $c8

	ld a, h                                          ; $7d58: $7c
	adc d                                            ; $7d59: $8a
	db $fd                                           ; $7d5a: $fd
	ld a, a                                          ; $7d5b: $7f
	ld a, [$ce7e]                                    ; $7d5c: $fa $7e $ce
	sbc [hl]                                         ; $7d5f: $9e
	ld a, a                                          ; $7d60: $7f
	ld a, d                                          ; $7d61: $7a
	jp nz, $fe9c                                     ; $7d62: $c2 $9c $fe

	jr nc, jr_03f_7d57                               ; $7d65: $30 $f0

	cp $9e                                           ; $7d67: $fe $9e
	cp l                                             ; $7d69: $bd
	ld l, e                                          ; $7d6a: $6b
	db $e3                                           ; $7d6b: $e3
	ld a, [hl]                                       ; $7d6c: $7e
	sbc l                                            ; $7d6d: $9d
	rst FarCall                                          ; $7d6e: $f7
	ld [hl], a                                       ; $7d6f: $77
	add sp, -$1b                                     ; $7d70: $e8 $e5
	sbc c                                            ; $7d72: $99
	rrca                                             ; $7d73: $0f
	rra                                              ; $7d74: $1f
	rra                                              ; $7d75: $1f
	ccf                                              ; $7d76: $3f
	jr nz, @+$21                                     ; $7d77: $20 $1f

	rst FarCall                                          ; $7d79: $f7
	ld a, l                                          ; $7d7a: $7d
	ld a, [$e07e]                                    ; $7d7b: $fa $7e $e0
	rst SubAFromDE                                          ; $7d7e: $df
	rst $38                                          ; $7d7f: $ff
	ld a, a                                          ; $7d80: $7f
	nop                                              ; $7d81: $00
	ld sp, hl                                        ; $7d82: $f9
	sub a                                            ; $7d83: $97
	ld de, $09fe                                     ; $7d84: $11 $fe $09
	cp $ed                                           ; $7d87: $fe $ed
	cp $e1                                           ; $7d89: $fe $e1
	ld e, $f9                                        ; $7d8b: $1e $f9
	reti                                             ; $7d8d: $d9


	inc bc                                           ; $7d8e: $03
	sbc e                                            ; $7d8f: $9b
	rra                                              ; $7d90: $1f
	inc bc                                           ; $7d91: $03
	ccf                                              ; $7d92: $3f
	inc bc                                           ; $7d93: $03
	ld [hl], h                                       ; $7d94: $74
	add [hl]                                         ; $7d95: $86
	ld a, [hl]                                       ; $7d96: $7e
	call z, $d98e                                    ; $7d97: $cc $8e $d9
	and $ca                                          ; $7d9a: $e6 $ca
	push hl                                          ; $7d9c: $e5
	jp nc, $deed                                     ; $7d9d: $d2 $ed $de

	pop hl                                           ; $7da0: $e1
	jp z, $dee5                                      ; $7da1: $ca $e5 $de

	pop hl                                           ; $7da4: $e1
	jp c, $8fe5                                      ; $7da5: $da $e5 $8f

	ld [hl], b                                       ; $7da8: $70
	ld a, a                                          ; $7da9: $7f
	ld [hl], a                                       ; $7daa: $77
	scf                                              ; $7dab: $37
	ld a, c                                          ; $7dac: $79
	ret z                                            ; $7dad: $c8

	sub e                                            ; $7dae: $93
	ld c, h                                          ; $7daf: $4c
	or e                                             ; $7db0: $b3
	ld d, c                                          ; $7db1: $51
	xor [hl]                                         ; $7db2: $ae
	ld b, b                                          ; $7db3: $40
	cp a                                             ; $7db4: $bf
	db $dd                                           ; $7db5: $dd
	ccf                                              ; $7db6: $3f
	jp nz, $263f                                     ; $7db7: $c2 $3f $26

	rst $38                                          ; $7dba: $ff
	ld a, d                                          ; $7dbb: $7a
	push hl                                          ; $7dbc: $e5
	sub c                                            ; $7dbd: $91
	rlca                                             ; $7dbe: $07
	jp Jump_03f_573f                                 ; $7dbf: $c3 $3f $57


	rst AddAOntoHL                                          ; $7dc2: $ef
	rst GetHLinHL                                          ; $7dc3: $cf
	rst $38                                          ; $7dc4: $ff
	rrca                                             ; $7dc5: $0f
	rst $38                                          ; $7dc6: $ff
	sbc a                                            ; $7dc7: $9f
	ld a, a                                          ; $7dc8: $7f
	scf                                              ; $7dc9: $37
	rst $38                                          ; $7dca: $ff
	ccf                                              ; $7dcb: $3f
	ld a, c                                          ; $7dcc: $79
	sub b                                            ; $7dcd: $90
	db $db                                           ; $7dce: $db
	rst $38                                          ; $7dcf: $ff
	sbc [hl]                                         ; $7dd0: $9e
	cp a                                             ; $7dd1: $bf
	call c, Call_03f_7fff                            ; $7dd2: $dc $ff $7f
	adc d                                            ; $7dd5: $8a
	sbc [hl]                                         ; $7dd6: $9e
	or $7b                                           ; $7dd7: $f6 $7b
	db $fc                                           ; $7dd9: $fc
	ld [hl], a                                       ; $7dda: $77
	cp $9a                                           ; $7ddb: $fe $9a
	ld d, h                                          ; $7ddd: $54
	rst AddAOntoHL                                          ; $7dde: $ef
	ld d, h                                          ; $7ddf: $54
	rst AddAOntoHL                                          ; $7de0: $ef
	ld d, l                                          ; $7de1: $55
	ld a, d                                          ; $7de2: $7a
	ret z                                            ; $7de3: $c8

	ld [hl], a                                       ; $7de4: $77
	cp $9e                                           ; $7de5: $fe $9e
	ld b, h                                          ; $7de7: $44
	ld a, e                                          ; $7de8: $7b
	ldh a, [c]                                       ; $7de9: $f2
	sbc l                                            ; $7dea: $9d
	ld l, d                                          ; $7deb: $6a
	rst FarCall                                          ; $7dec: $f7
	halt                                             ; $7ded: $76
	jp z, $fe77                                      ; $7dee: $ca $77 $fe

	ld a, a                                          ; $7df1: $7f
	cp d                                             ; $7df2: $ba
	sub d                                            ; $7df3: $92
	ld h, [hl]                                       ; $7df4: $66
	rst $38                                          ; $7df5: $ff
	ld a, [hl+]                                      ; $7df6: $2a
	rst FarCall                                          ; $7df7: $f7
	ret c                                            ; $7df8: $d8

	ld h, b                                          ; $7df9: $60
	ret c                                            ; $7dfa: $d8

	ld h, b                                          ; $7dfb: $60
	call c, $d960                                    ; $7dfc: $dc $60 $d9

Call_03f_7dff:
Jump_03f_7dff:
	ld h, [hl]                                       ; $7dff: $66
	call c, $fa7b                                    ; $7e00: $dc $7b $fa
	sbc [hl]                                         ; $7e03: $9e
	sbc $7b                                          ; $7e04: $de $7b
	cp $fc                                           ; $7e06: $fe $fc
	halt                                             ; $7e08: $76
	ld l, h                                          ; $7e09: $6c
	ld a, h                                          ; $7e0a: $7c
	ld [hl], $7b                                     ; $7e0b: $36 $7b
	cp $7b                                           ; $7e0d: $fe $7b
	ld sp, hl                                        ; $7e0f: $f9
	ld [hl], l                                       ; $7e10: $75
	ld h, [hl]                                       ; $7e11: $66
	sbc $ff                                          ; $7e12: $de $ff
	sbc h                                            ; $7e14: $9c
	dec c                                            ; $7e15: $0d

jr_03f_7e16:
	inc bc                                           ; $7e16: $03
	db $fc                                           ; $7e17: $fc
	ld [hl], d                                       ; $7e18: $72
	db $f4                                           ; $7e19: $f4
	ld a, [hl]                                       ; $7e1a: $7e
	call z, $fd7c                                    ; $7e1b: $cc $7c $fd
	ld a, [hl]                                       ; $7e1e: $7e
	push bc                                          ; $7e1f: $c5
	sbc h                                            ; $7e20: $9c
	ld b, b                                          ; $7e21: $40
	add b                                            ; $7e22: $80
	cp $7b                                           ; $7e23: $fe $7b
	db $f4                                           ; $7e25: $f4
	ld [hl], a                                       ; $7e26: $77
	db $fc                                           ; $7e27: $fc
	rst FarCall                                          ; $7e28: $f7
	ld a, a                                          ; $7e29: $7f
	rst SubAFromBC                                          ; $7e2a: $e7
	sbc [hl]                                         ; $7e2b: $9e
	ret z                                            ; $7e2c: $c8

	ld a, b                                          ; $7e2d: $78
	cp a                                             ; $7e2e: $bf
	ldh [$d0], a                                     ; $7e2f: $e0 $d0
	jp hl                                            ; $7e31: $e9


	sbc l                                            ; $7e32: $9d
	ld bc, $790b                                     ; $7e33: $01 $0b $79
	add d                                            ; $7e36: $82
	ld a, l                                          ; $7e37: $7d
	ld a, h                                          ; $7e38: $7c
	ei                                               ; $7e39: $fb
	sbc [hl]                                         ; $7e3a: $9e
	ld a, [hl]                                       ; $7e3b: $7e
	ld a, d                                          ; $7e3c: $7a
	cp b                                             ; $7e3d: $b8
	db $db                                           ; $7e3e: $db
	rst $38                                          ; $7e3f: $ff
	ld l, e                                          ; $7e40: $6b
	db $e3                                           ; $7e41: $e3
	ld a, h                                          ; $7e42: $7c
	ret nz                                           ; $7e43: $c0

	ld a, l                                          ; $7e44: $7d
	ld d, e                                          ; $7e45: $53
	call c, Call_03f_7dff                            ; $7e46: $dc $ff $7d
	adc d                                            ; $7e49: $8a
	ld a, a                                          ; $7e4a: $7f
	cp $df                                           ; $7e4b: $fe $df
	inc bc                                           ; $7e4d: $03
	sbc b                                            ; $7e4e: $98
	cp e                                             ; $7e4f: $bb
	ld b, a                                          ; $7e50: $47
	or c                                             ; $7e51: $b1
	ld h, e                                          ; $7e52: $63
	and c                                            ; $7e53: $a1
	ld b, e                                          ; $7e54: $43
	add c                                            ; $7e55: $81
	sbc $ff                                          ; $7e56: $de $ff
	add b                                            ; $7e58: $80
	or $ed                                           ; $7e59: $f6 $ed
	ld a, [$bef5]                                    ; $7e5b: $fa $f5 $be
	db $fd                                           ; $7e5e: $fd
	sbc h                                            ; $7e5f: $9c
	rst $38                                          ; $7e60: $ff
	sub a                                            ; $7e61: $97
	rst AddAOntoHL                                          ; $7e62: $ef
	rst SubAFromDE                                          ; $7e63: $df
	rst SubAFromBC                                          ; $7e64: $e7
	push af                                          ; $7e65: $f5
	rst AddAOntoHL                                          ; $7e66: $ef
	add [hl]                                         ; $7e67: $86
	db $fd                                           ; $7e68: $fd
	ld e, a                                          ; $7e69: $5f
	ccf                                              ; $7e6a: $3f
	ld [hl], e                                       ; $7e6b: $73
	rrca                                             ; $7e6c: $0f
	ld a, a                                          ; $7e6d: $7f
	rlca                                             ; $7e6e: $07
	ld l, a                                          ; $7e6f: $6f
	rra                                              ; $7e70: $1f
	ld a, a                                          ; $7e71: $7f
	ccf                                              ; $7e72: $3f
	ld a, [bc]                                       ; $7e73: $0a
	ccf                                              ; $7e74: $3f
	dec sp                                           ; $7e75: $3b
	ld l, [hl]                                       ; $7e76: $6e
	jr nc, jr_03f_7e16                               ; $7e77: $30 $9d

	ld l, a                                          ; $7e79: $6f
	sbc c                                            ; $7e7a: $99
	jp c, Jump_03f_7dff                              ; $7e7b: $da $ff $7d

	add [hl]                                         ; $7e7e: $86

Call_03f_7e7f:
	ld a, l                                          ; $7e7f: $7d
	dec c                                            ; $7e80: $0d
	ld a, a                                          ; $7e81: $7f
	cp $9e                                           ; $7e82: $fe $9e
	ccf                                              ; $7e84: $3f
	ld l, d                                          ; $7e85: $6a
	ret                                              ; $7e86: $c9


	ld a, e                                          ; $7e87: $7b

Jump_03f_7e88:
	and d                                            ; $7e88: $a2
	sbc d                                            ; $7e89: $9a
	ld hl, sp-$02                                    ; $7e8a: $f8 $fe
	ld sp, hl                                        ; $7e8c: $f9
	db $fd                                           ; $7e8d: $fd
	ei                                               ; $7e8e: $fb
	ld l, e                                          ; $7e8f: $6b
	db $f4                                           ; $7e90: $f4
	ld [hl], d                                       ; $7e91: $72
	push bc                                          ; $7e92: $c5
	sbc [hl]                                         ; $7e93: $9e
	rst SubAFromHL                                          ; $7e94: $d7
	ld a, e                                          ; $7e95: $7b
	db $fc                                           ; $7e96: $fc
	ld a, a                                          ; $7e97: $7f
	db $fd                                           ; $7e98: $fd
	ld h, [hl]                                       ; $7e99: $66
	call nz, $fe7f                                   ; $7e9a: $c4 $7f $fe
	sub [hl]                                         ; $7e9d: $96
	ld b, l                                          ; $7e9e: $45
	cp $55                                           ; $7e9f: $fe $55
	xor $51                                          ; $7ea1: $ee $51
	xor $2b                                          ; $7ea3: $ee $2b
	rst FarCall                                          ; $7ea5: $f7
	dec hl                                           ; $7ea6: $2b
	ld a, d                                          ; $7ea7: $7a
	call nz, $2785                                   ; $7ea8: $c4 $85 $27
	rst $38                                          ; $7eab: $ff
	inc hl                                           ; $7eac: $23
	rst $38                                          ; $7ead: $ff
	cpl                                              ; $7eae: $2f
	rst FarCall                                          ; $7eaf: $f7
	cpl                                              ; $7eb0: $2f
	rst FarCall                                          ; $7eb1: $f7
	dec sp                                           ; $7eb2: $3b
	rst SubAFromBC                                          ; $7eb3: $e7
	db $db                                           ; $7eb4: $db
	ld h, h                                          ; $7eb5: $64
	ret nc                                           ; $7eb6: $d0

	ld l, h                                          ; $7eb7: $6c
	ld e, h                                          ; $7eb8: $5c
	ldh [$c2], a                                     ; $7eb9: $e0 $c2
	ld h, b                                          ; $7ebb: $60
	jp c, $4064                                      ; $7ebc: $da $64 $40

	ld h, b                                          ; $7ebf: $60
	ld e, h                                          ; $7ec0: $5c
	db $e3                                           ; $7ec1: $e3
	nop                                              ; $7ec2: $00
	ret nz                                           ; $7ec3: $c0

	halt                                             ; $7ec4: $76
	call c, $c66e                                    ; $7ec5: $dc $6e $c6
	ld [hl], h                                       ; $7ec8: $74
	ld e, d                                          ; $7ec9: $5a
	ld h, b                                          ; $7eca: $60
	ld e, c                                          ; $7ecb: $59
	ld d, e                                          ; $7ecc: $53
	ldh a, [$7e]                                     ; $7ecd: $f0 $7e
	ret z                                            ; $7ecf: $c8

	ld a, a                                          ; $7ed0: $7f
	cp $9e                                           ; $7ed1: $fe $9e
	sbc [hl]                                         ; $7ed3: $9e
	ld a, c                                          ; $7ed4: $79
	xor d                                            ; $7ed5: $aa
	sbc l                                            ; $7ed6: $9d
	ld bc, $77fe                                     ; $7ed7: $01 $fe $77
	ldh a, [c]                                       ; $7eda: $f2
	sbc [hl]                                         ; $7edb: $9e
	sbc e                                            ; $7edc: $9b
	ld a, e                                          ; $7edd: $7b
	jp nc, $cf7d                                     ; $7ede: $d2 $7d $cf

	ld a, a                                          ; $7ee1: $7f
	ld l, $98                                        ; $7ee2: $2e $98
	rlca                                             ; $7ee4: $07
	nop                                              ; $7ee5: $00
	ld b, $f9                                        ; $7ee6: $06 $f9
	ld a, [$7d00]                                    ; $7ee8: $fa $00 $7d
	ld a, e                                          ; $7eeb: $7b
	db $e4                                           ; $7eec: $e4
	ld a, [hl]                                       ; $7eed: $7e
	sub [hl]                                         ; $7eee: $96
	ld a, a                                          ; $7eef: $7f
	db $e4                                           ; $7ef0: $e4
	ld [hl], l                                       ; $7ef1: $75
	sbc b                                            ; $7ef2: $98
	sbc h                                            ; $7ef3: $9c
	db $10                                           ; $7ef4: $10
	xor $43                                          ; $7ef5: $ee $43

Jump_03f_7ef7:
	db $f4                                           ; $7ef7: $f4
	sbc e                                            ; $7ef8: $9b
	ld [hl], e                                       ; $7ef9: $73
	nop                                              ; $7efa: $00
	ld h, $d8                                        ; $7efb: $26 $d8

Jump_03f_7efd:
	push af                                          ; $7efd: $f5
	ld a, a                                          ; $7efe: $7f

Call_03f_7eff:
	call nz, $9759                                   ; $7eff: $c4 $59 $97
	cp $9c                                           ; $7f02: $fe $9c
	ldh [$1f], a                                     ; $7f04: $e0 $1f
	rst $38                                          ; $7f06: $ff
	ld a, c                                          ; $7f07: $79
	add b                                            ; $7f08: $80
	ld [hl], l                                       ; $7f09: $75
	ld a, [hl]                                       ; $7f0a: $7e
	ld a, a                                          ; $7f0b: $7f
	ld a, [bc]                                       ; $7f0c: $0a
	ld a, a                                          ; $7f0d: $7f
	db $fc                                           ; $7f0e: $fc

Jump_03f_7f0f:
	ld a, [hl]                                       ; $7f0f: $7e
	call nz, $819b                                   ; $7f10: $c4 $9b $81
	ld a, a                                          ; $7f13: $7f
	nop                                              ; $7f14: $00
	ld bc, $ffd3                                     ; $7f15: $01 $d3 $ff
	ld c, e                                          ; $7f18: $4b
	pop af                                           ; $7f19: $f1
	jp c, $75ff                                      ; $7f1a: $da $ff $75

	ld e, [hl]                                       ; $7f1d: $5e
	ld h, [hl]                                       ; $7f1e: $66
	ld hl, sp-$63                                    ; $7f1f: $f8 $9d
	sub $ed                                          ; $7f21: $d6 $ed
	ld l, a                                          ; $7f23: $6f
	cp $9c                                           ; $7f24: $fe $9c
	rst SubAFromBC                                          ; $7f26: $e7
	db $fd                                           ; $7f27: $fd
	add $7b                                          ; $7f28: $c6 $7b
	cp $99                                           ; $7f2a: $fe $99
	and $fd                                          ; $7f2c: $e6 $fd
	ld a, [hl]                                       ; $7f2e: $7e
	jr nz, jr_03f_7fad                               ; $7f2f: $20 $7c

	inc bc                                           ; $7f31: $03
	ld a, d                                          ; $7f32: $7a
	jp nz, $1f9b                                     ; $7f33: $c2 $9b $1f

	adc a                                            ; $7f36: $8f
	ccf                                              ; $7f37: $3f
	ld a, a                                          ; $7f38: $7f
	ld [hl], e                                       ; $7f39: $73
	cp $65                                           ; $7f3a: $fe $65
	sub a                                            ; $7f3c: $97
	sbc [hl]                                         ; $7f3d: $9e
	rst FarCall                                          ; $7f3e: $f7
	set 7, a                                         ; $7f3f: $cb $ff
	sbc e                                            ; $7f41: $9b
	db $fc                                           ; $7f42: $fc
	sbc a                                            ; $7f43: $9f
	cp $07                                           ; $7f44: $fe $07
	ld a, d                                          ; $7f46: $7a
	ret z                                            ; $7f47: $c8

	ld h, l                                          ; $7f48: $65
	add d                                            ; $7f49: $82
	ld a, l                                          ; $7f4a: $7d
	ld h, a                                          ; $7f4b: $67
	db $dd                                           ; $7f4c: $dd
	xor $df                                          ; $7f4d: $ee $df
	rst AddAOntoHL                                          ; $7f4f: $ef
	ld a, a                                          ; $7f50: $7f
	or $9b                                           ; $7f51: $f6 $9b
	rst FarCall                                          ; $7f53: $f7
	ld hl, sp-$61                                    ; $7f54: $f8 $9f
	ldh [rPCM34], a                                  ; $7f56: $e0 $77
	ld [de], a                                       ; $7f58: $12
	sbc d                                            ; $7f59: $9a
	db $fd                                           ; $7f5a: $fd
	cp $ef                                           ; $7f5b: $fe $ef
	ldh a, [$bf]                                     ; $7f5d: $f0 $bf
	ld [hl], d                                       ; $7f5f: $72
	jp c, $fe5f                                      ; $7f60: $da $5f $fe

	sub a                                            ; $7f63: $97
	ldh a, [rIF]                                     ; $7f64: $f0 $0f
	add c                                            ; $7f66: $81
	ld a, [hl]                                       ; $7f67: $7e
	swap h                                           ; $7f68: $cb $34
	add a                                            ; $7f6a: $87
	ld a, b                                          ; $7f6b: $78
	ld [hl], h                                       ; $7f6c: $74
	ld d, d                                          ; $7f6d: $52
	ld l, a                                          ; $7f6e: $6f
	xor $9d                                          ; $7f6f: $ee $9d
	ld a, e                                          ; $7f71: $7b
	add h                                            ; $7f72: $84
	ld l, a                                          ; $7f73: $6f
	ld hl, sp-$63                                    ; $7f74: $f8 $9d
	inc sp                                           ; $7f76: $33
	rst GetHLinHL                                          ; $7f77: $cf
	ld d, e                                          ; $7f78: $53
	sub $99                                          ; $7f79: $d6 $99
	rra                                              ; $7f7b: $1f
	db $fd                                           ; $7f7c: $fd

jr_03f_7f7d:
	cp $04                                           ; $7f7d: $fe $04
	nop                                              ; $7f7f: $00

Call_03f_7f80:
	sub $73                                          ; $7f80: $d6 $73
	db $f4                                           ; $7f82: $f4
	sbc d                                            ; $7f83: $9a
	db $fc                                           ; $7f84: $fc
	inc bc                                           ; $7f85: $03
	add b                                            ; $7f86: $80
	ld a, a                                          ; $7f87: $7f
	rra                                              ; $7f88: $1f
	ld a, e                                          ; $7f89: $7b
	xor [hl]                                         ; $7f8a: $ae
	ld a, l                                          ; $7f8b: $7d
	adc h                                            ; $7f8c: $8c
	ld a, l                                          ; $7f8d: $7d
	adc b                                            ; $7f8e: $88
	sbc d                                            ; $7f8f: $9a
	ld c, $01                                        ; $7f90: $0e $01
	pop hl                                           ; $7f92: $e1
	ld e, $1d                                        ; $7f93: $1e $1d
	ld [hl], e                                       ; $7f95: $73
	and d                                            ; $7f96: $a2
	ld a, a                                          ; $7f97: $7f
	cp $96                                           ; $7f98: $fe $96
	add hl, bc                                       ; $7f9a: $09
	ld b, $44                                        ; $7f9b: $06 $44
	jr c, jr_03f_7fcf                                ; $7f9d: $38 $30

	ret nz                                           ; $7f9f: $c0

	add b                                            ; $7fa0: $80
	nop                                              ; $7fa1: $00
	or $72                                           ; $7fa2: $f6 $72
	cp b                                             ; $7fa4: $b8
	ld a, a                                          ; $7fa5: $7f
	ldh a, [$9d]                                     ; $7fa6: $f0 $9d
	add c                                            ; $7fa8: $81
	ld b, $75                                        ; $7fa9: $06 $75
	ccf                                              ; $7fab: $3f
	ld e, l                                          ; $7fac: $5d

jr_03f_7fad:
	ld e, h                                          ; $7fad: $5c
	ld a, a                                          ; $7fae: $7f
	and $99                                          ; $7faf: $e6 $99
	ld h, b                                          ; $7fb1: $60
	add b                                            ; $7fb2: $80
	ld e, $20                                        ; $7fb3: $1e $20
	ld [bc], a                                       ; $7fb5: $02
	dec b                                            ; $7fb6: $05
	di                                               ; $7fb7: $f3
	ld a, a                                          ; $7fb8: $7f
	add sp, -$65                                     ; $7fb9: $e8 $9b
	jr c, jr_03f_7f7d                                ; $7fbb: $38 $c0

	ld [de], a                                       ; $7fbd: $12
	dec c                                            ; $7fbe: $0d
	ld l, a                                          ; $7fbf: $6f
	sub $9a                                          ; $7fc0: $d6 $9a
	ld b, $00                                        ; $7fc2: $06 $00
	ld c, $00                                        ; $7fc4: $0e $00
	inc b                                            ; $7fc6: $04
	cp $7f                                           ; $7fc7: $fe $7f
	sub $8e                                          ; $7fc9: $d6 $8e
	sbc h                                            ; $7fcb: $9c
	ld h, b                                          ; $7fcc: $60
	inc de                                           ; $7fcd: $13
	inc c                                            ; $7fce: $0c

jr_03f_7fcf:
	ld a, b                                          ; $7fcf: $78
	ld a, a                                          ; $7fd0: $7f
	ei                                               ; $7fd1: $fb
	rst JumpTable                                          ; $7fd2: $c7
	rst JumpTable                                          ; $7fd3: $c7
	db $fc                                           ; $7fd4: $fc
	add sp, -$3d                                     ; $7fd5: $e8 $c3
	rst FarCall                                          ; $7fd7: $f7
	ld a, b                                          ; $7fd8: $78
	scf                                              ; $7fd9: $37
	rrca                                             ; $7fda: $0f
	ld bc, $d87b                                     ; $7fdb: $01 $7b $d8
	rst SubAFromDE                                          ; $7fde: $df
	rst $38                                          ; $7fdf: $ff
	sub c                                            ; $7fe0: $91
	rst AddAOntoHL                                          ; $7fe1: $ef
	rst FarCall                                          ; $7fe2: $f7
	ldh a, [$7f]                                     ; $7fe3: $f0 $7f
	ld hl, sp+$67                                    ; $7fe5: $f8 $67
	ld [hl], e                                       ; $7fe7: $73
	ld a, h                                          ; $7fe8: $7c
	cp $f1                                           ; $7fe9: $fe $f1
	ei                                               ; $7feb: $fb
	ld a, h                                          ; $7fec: $7c
	ld [hl], a                                       ; $7fed: $77
	ccf                                              ; $7fee: $3f
	db $dd                                           ; $7fef: $dd
	rst $38                                          ; $7ff0: $ff
	ld a, [hl]                                       ; $7ff1: $7e
	db $ed                                           ; $7ff2: $ed
	ld a, h                                          ; $7ff3: $7c
	ld [hl], b                                       ; $7ff4: $70
	adc h                                            ; $7ff5: $8c
	db $fd                                           ; $7ff6: $fd
	ccf                                              ; $7ff7: $3f
	xor e                                            ; $7ff8: $ab
	rst SubAFromDE                                          ; $7ff9: $df
	rst $38                                          ; $7ffa: $ff
	rlca                                             ; $7ffb: $07
	rst SubAFromDE                                          ; $7ffc: $df
	rst SubAFromBC                                          ; $7ffd: $e7
	ld h, d                                          ; $7ffe: $62

Call_03f_7fff:
	db $fd                                           ; $7fff: $fd
