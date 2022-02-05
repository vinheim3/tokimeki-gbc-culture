; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

	xor h                                            ; $4000: $ac
	ld d, b                                          ; $4001: $50
	and b                                            ; $4002: $a0
	halt                                             ; $4003: $76
	dec sp                                           ; $4004: $3b
	adc e                                            ; $4005: $8b
	ld [$7f0f], sp                                   ; $4006: $08 $0f $7f
	ret nz                                           ; $4009: $c0

	rrca                                             ; $400a: $0f
	rst $38                                          ; $400b: $ff
	rst SubAFromBC                                          ; $400c: $e7
	ldh [rP1], a                                     ; $400d: $e0 $00
	dec c                                            ; $400f: $0d
	ld bc, $0100                                     ; $4010: $01 $00 $01
	rst $38                                          ; $4013: $ff
	ret nc                                           ; $4014: $d0

	dec de                                           ; $4015: $1b
	rst $38                                          ; $4016: $ff
	rst $38                                          ; $4017: $ff
	di                                               ; $4018: $f3
	inc bc                                           ; $4019: $03
	ld a, d                                          ; $401a: $7a
	ld l, [hl]                                       ; $401b: $6e
	add b                                            ; $401c: $80
	ld [bc], a                                       ; $401d: $02
	nop                                              ; $401e: $00
	rst $38                                          ; $401f: $ff
	add e                                            ; $4020: $83
	inc bc                                           ; $4021: $03
	rst $38                                          ; $4022: $ff
	add e                                            ; $4023: $83
	ld bc, $f087                                     ; $4024: $01 $87 $f0
	xor b                                            ; $4027: $a8
	add h                                            ; $4028: $84
	ld b, a                                          ; $4029: $47
	rlca                                             ; $402a: $07
	add hl, bc                                       ; $402b: $09
	sbc c                                            ; $402c: $99
	di                                               ; $402d: $f3
	ei                                               ; $402e: $fb
	rst $38                                          ; $402f: $ff
	sbc $ec                                          ; $4030: $de $ec
	db $fd                                           ; $4032: $fd
	ei                                               ; $4033: $fb
	ld a, [$9f75]                                    ; $4034: $fa $75 $9f
	ccf                                              ; $4037: $3f
	rra                                              ; $4038: $1f
	cp $fc                                           ; $4039: $fe $fc
	rst $38                                          ; $403b: $ff
	sub b                                            ; $403c: $90
	db $e3                                           ; $403d: $e3
	jp $cf60                                         ; $403e: $c3 $60 $cf


	ld [$ec0e], sp                                   ; $4041: $08 $0e $ec
	rra                                              ; $4044: $1f
	ld a, [hl-]                                      ; $4045: $3a
	or $80                                           ; $4046: $f6 $80
	cp $00                                           ; $4048: $fe $00
	add b                                            ; $404a: $80
	ld b, b                                          ; $404b: $40
	ld a, b                                          ; $404c: $78
	and b                                            ; $404d: $a0
	ld a, a                                          ; $404e: $7f
	ret nc                                           ; $404f: $d0

	sub h                                            ; $4050: $94
	ldh [$d0], a                                     ; $4051: $e0 $d0
	ld c, b                                          ; $4053: $48
	ret z                                            ; $4054: $c8

	adc h                                            ; $4055: $8c
	call z, $403f                                    ; $4056: $cc $3f $40
	ld h, b                                          ; $4059: $60
	jr nc, jr_04b_408b                               ; $405a: $30 $2f

	sbc $08                                          ; $405c: $de $08
	sub e                                            ; $405e: $93
	ld h, b                                          ; $405f: $60
	ret nz                                           ; $4060: $c0

	ld h, b                                          ; $4061: $60
	ld a, a                                          ; $4062: $7f
	ld l, a                                          ; $4063: $6f
	cpl                                              ; $4064: $2f
	xor a                                            ; $4065: $af
	xor a                                            ; $4066: $af
	rst $38                                          ; $4067: $ff
	rst $38                                          ; $4068: $ff
	ret nz                                           ; $4069: $c0

	nop                                              ; $406a: $00
	ld a, c                                          ; $406b: $79
	adc h                                            ; $406c: $8c
	sbc [hl]                                         ; $406d: $9e
	ld c, $71                                        ; $406e: $0e $71
	adc c                                            ; $4070: $89
	rst SubAFromDE                                          ; $4071: $df
	rst $38                                          ; $4072: $ff
	ld a, l                                          ; $4073: $7d
	sub c                                            ; $4074: $91
	ld a, e                                          ; $4075: $7b
	di                                               ; $4076: $f3
	ld a, a                                          ; $4077: $7f
	db $fd                                           ; $4078: $fd
	ld a, a                                          ; $4079: $7f
	ld l, [hl]                                       ; $407a: $6e
	ld [hl], a                                       ; $407b: $77
	ld sp, hl                                        ; $407c: $f9
	ld a, c                                          ; $407d: $79
	ld e, e                                          ; $407e: $5b
	add b                                            ; $407f: $80
	ld b, e                                          ; $4080: $43
	nop                                              ; $4081: $00
	cp $02                                           ; $4082: $fe $02
	nop                                              ; $4084: $00
	cp $1c                                           ; $4085: $fe $1c
	ld a, b                                          ; $4087: $78
	rla                                              ; $4088: $17
	cp $00                                           ; $4089: $fe $00

jr_04b_408b:
	nop                                              ; $408b: $00
	cp $fe                                           ; $408c: $fe $fe
	ldh [c], a                                       ; $408e: $e2
	inc b                                            ; $408f: $04
	add sp, $20                                      ; $4090: $e8 $20
	cpl                                              ; $4092: $2f
	jr nc, @+$32                                     ; $4093: $30 $30

	ccf                                              ; $4095: $3f
	ld a, [hl-]                                      ; $4096: $3a
	dec sp                                           ; $4097: $3b
	scf                                              ; $4098: $37
	rra                                              ; $4099: $1f
	stop                                             ; $409a: $10 $00
	rrca                                             ; $409c: $0f
	rrca                                             ; $409d: $0f
	dec b                                            ; $409e: $05
	sbc e                                            ; $409f: $9b
	nop                                              ; $40a0: $00
	ld [$ef01], sp                                   ; $40a1: $08 $01 $ef
	ld a, e                                          ; $40a4: $7b
	rst SubAFromHL                                          ; $40a5: $d7
	sbc d                                            ; $40a6: $9a
	xor d                                            ; $40a7: $aa
	rra                                              ; $40a8: $1f
	ld a, [$1fff]                                    ; $40a9: $fa $ff $1f
	ld a, e                                          ; $40ac: $7b
	ret nc                                           ; $40ad: $d0

	ld a, [hl]                                       ; $40ae: $7e
	adc c                                            ; $40af: $89
	sbc h                                            ; $40b0: $9c
	nop                                              ; $40b1: $00
	ld hl, sp-$41                                    ; $40b2: $f8 $bf
	ld [hl], a                                       ; $40b4: $77
	ldh a, [$9d]                                     ; $40b5: $f0 $9d
	rst $38                                          ; $40b7: $ff
	ld d, c                                          ; $40b8: $51
	ld [hl], a                                       ; $40b9: $77
	xor c                                            ; $40ba: $a9
	ld a, e                                          ; $40bb: $7b
	ldh a, [$7e]                                     ; $40bc: $f0 $7e
	sbc $77                                          ; $40be: $de $77
	or a                                             ; $40c0: $b7
	ld a, a                                          ; $40c1: $7f
	inc h                                            ; $40c2: $24
	sbc [hl]                                         ; $40c3: $9e
	ld [$b073], a                                    ; $40c4: $ea $73 $b0
	ld a, a                                          ; $40c7: $7f
	dec e                                            ; $40c8: $1d
	sbc [hl]                                         ; $40c9: $9e
	dec d                                            ; $40ca: $15
	ld l, e                                          ; $40cb: $6b
	ldh a, [$7f]                                     ; $40cc: $f0 $7f
	sbc $6f                                          ; $40ce: $de $6f
	ldh a, [$7b]                                     ; $40d0: $f0 $7b
	adc $ff                                          ; $40d2: $ce $ff
	ld a, h                                          ; $40d4: $7c
	sbc e                                            ; $40d5: $9b
	cp $7f                                           ; $40d6: $fe $7f
	cp l                                             ; $40d8: $bd
	sub c                                            ; $40d9: $91
	dec d                                            ; $40da: $15
	cpl                                              ; $40db: $2f
	sub a                                            ; $40dc: $97
	ld b, d                                          ; $40dd: $42
	and l                                            ; $40de: $a5
	rra                                              ; $40df: $1f
	cp $0e                                           ; $40e0: $fe $0e
	ld l, $ee                                        ; $40e2: $2e $ee
	rrca                                             ; $40e4: $0f
	rlca                                             ; $40e5: $07
	ld b, $38                                        ; $40e6: $06 $38
	call c, $93f8                                    ; $40e8: $dc $f8 $93
	db $fd                                           ; $40eb: $fd
	db $fc                                           ; $40ec: $fc
	ei                                               ; $40ed: $fb
	ei                                               ; $40ee: $fb
	db $eb                                           ; $40ef: $eb
	rst AddAOntoHL                                          ; $40f0: $ef
	rst $38                                          ; $40f1: $ff
	ei                                               ; $40f2: $fb
	ld sp, hl                                        ; $40f3: $f9
	ld a, c                                          ; $40f4: $79
	xor $c6                                          ; $40f5: $ee $c6
	sbc $ce                                          ; $40f7: $de $ce
	adc h                                            ; $40f9: $8c
	sbc $cf                                          ; $40fa: $de $cf
	rst GetHLinHL                                          ; $40fc: $cf
	ld [hl], l                                       ; $40fd: $75
	ld a, [hl]                                       ; $40fe: $7e
	ld a, l                                          ; $40ff: $7d
	cp $f7                                           ; $4100: $fe $f7
	cp d                                             ; $4102: $ba
	db $db                                           ; $4103: $db
	cp $66                                           ; $4104: $fe $66
	ld l, l                                          ; $4106: $6d
	ld l, [hl]                                       ; $4107: $6e
	ld h, l                                          ; $4108: $65
	ld [hl+], a                                      ; $4109: $22
	inc sp                                           ; $410a: $33
	ld [de], a                                       ; $410b: $12
	sbc c                                            ; $410c: $99
	ld a, c                                          ; $410d: $79
	ld b, c                                          ; $410e: $41
	sbc [hl]                                         ; $410f: $9e
	ld d, a                                          ; $4110: $57
	ld a, e                                          ; $4111: $7b
	or c                                             ; $4112: $b1
	ld [hl], e                                       ; $4113: $73
	cp b                                             ; $4114: $b8
	db $fd                                           ; $4115: $fd
	call c, $9eff                                    ; $4116: $dc $ff $9e
	ld e, a                                          ; $4119: $5f
	ld e, a                                          ; $411a: $5f
	ldh a, [hDisp1_OBP0]                                     ; $411b: $f0 $93
	jp hl                                            ; $411d: $e9


	ldh [$fd], a                                     ; $411e: $e0 $fd
	ld a, [$fefd]                                    ; $4120: $fa $fd $fe
	rst $38                                          ; $4123: $ff
	ld d, l                                          ; $4124: $55
	rra                                              ; $4125: $1f
	rra                                              ; $4126: $1f
	rrca                                             ; $4127: $0f
	rlca                                             ; $4128: $07
	ld [hl], c                                       ; $4129: $71
	ld c, b                                          ; $412a: $48
	ld a, [hl]                                       ; $412b: $7e
	cp d                                             ; $412c: $ba
	sbc d                                            ; $412d: $9a
	xor [hl]                                         ; $412e: $ae
	ld d, b                                          ; $412f: $50
	and b                                            ; $4130: $a0
	cp h                                             ; $4131: $bc
	ld sp, hl                                        ; $4132: $f9
	ld [hl], l                                       ; $4133: $75
	ld l, b                                          ; $4134: $68
	rst SubAFromDE                                          ; $4135: $df
	db $fc                                           ; $4136: $fc
	sbc h                                            ; $4137: $9c
	ld hl, sp-$07                                    ; $4138: $f8 $f9
	rst JumpTable                                          ; $413a: $c7
	jp c, $9aff                                      ; $413b: $da $ff $9a

	jp $8101                                         ; $413e: $c3 $01 $81


	nop                                              ; $4141: $00
	ld bc, $80de                                     ; $4142: $01 $de $80
	rst SubAFromDE                                          ; $4145: $df
	dec b                                            ; $4146: $05
	sub a                                            ; $4147: $97
	dec a                                            ; $4148: $3d
	ld a, l                                          ; $4149: $7d
	ld e, l                                          ; $414a: $5d
	db $dd                                           ; $414b: $dd
	sbc $de                                          ; $414c: $de $de
	ld b, $ae                                        ; $414e: $06 $ae
	sbc $fe                                          ; $4150: $de $fe
	ld a, b                                          ; $4152: $78
	ld [hl], $7f                                     ; $4153: $36 $7f
	ld e, $dc                                        ; $4155: $1e $dc
	ld c, b                                          ; $4157: $48
	sbc [hl]                                         ; $4158: $9e
	nop                                              ; $4159: $00
	reti                                             ; $415a: $d9


	call z, $08df                                    ; $415b: $cc $df $08
	db $db                                           ; $415e: $db
	db $10                                           ; $415f: $10
	rst SubAFromDE                                          ; $4160: $df
	xor a                                            ; $4161: $af
	call c, $9abf                                    ; $4162: $dc $bf $9a
	or b                                             ; $4165: $b0
	ld hl, $324f                                     ; $4166: $21 $4f $32
	rrca                                             ; $4169: $0f
	ld [hl], a                                       ; $416a: $77
	adc c                                            ; $416b: $89
	sbc l                                            ; $416c: $9d
	jp nz, Jump_04b_7180                             ; $416d: $c2 $80 $71

	add l                                            ; $4170: $85
	sbc c                                            ; $4171: $99
	nop                                              ; $4172: $00
	ld b, a                                          ; $4173: $47
	xor e                                            ; $4174: $ab
	add c                                            ; $4175: $81
	add a                                            ; $4176: $87
	ld a, a                                          ; $4177: $7f
	ld a, e                                          ; $4178: $7b
	ldh a, [$9b]                                     ; $4179: $f0 $9b
	ld hl, sp+$46                                    ; $417b: $f8 $46
	ld c, $f8                                        ; $417d: $0e $f8
	ld [hl], a                                       ; $417f: $77

jr_04b_4180:
	ldh a, [hDisp1_OBP1]                                     ; $4180: $f0 $94
	db $e4                                           ; $4182: $e4
	and $9c                                          ; $4183: $e6 $9c
	add hl, de                                       ; $4185: $19
	rst $38                                          ; $4186: $ff
	xor a                                            ; $4187: $af
	inc bc                                           ; $4188: $03
	rst $38                                          ; $4189: $ff
	ld [$8f10], sp                                   ; $418a: $08 $10 $8f
	ld [hl], a                                       ; $418d: $77
	ld h, h                                          ; $418e: $64
	sub e                                            ; $418f: $93
	ld bc, $d305                                     ; $4190: $01 $05 $d3
	ld l, c                                          ; $4193: $69
	sbc e                                            ; $4194: $9b
	rst $38                                          ; $4195: $ff
	rst $38                                          ; $4196: $ff
	ld h, h                                          ; $4197: $64

Call_04b_4198:
	rst $38                                          ; $4198: $ff
	ld hl, sp+$00                                    ; $4199: $f8 $00
	add $77                                          ; $419b: $c6 $77
	ldh a, [$9a]                                     ; $419d: $f0 $9a
	ld hl, sp-$0b                                    ; $419f: $f8 $f5
	adc c                                            ; $41a1: $89
	sub c                                            ; $41a2: $91
	ld b, b                                          ; $41a3: $40
	halt                                             ; $41a4: $76
	call nc, Call_04b_637d                           ; $41a5: $d4 $7d $63
	sbc [hl]                                         ; $41a8: $9e
	ld h, b                                          ; $41a9: $60
	ld a, d                                          ; $41aa: $7a
	ld [bc], a                                       ; $41ab: $02
	ld a, a                                          ; $41ac: $7f
	ret nc                                           ; $41ad: $d0

	sbc d                                            ; $41ae: $9a
	cpl                                              ; $41af: $2f
	ld hl, sp-$65                                    ; $41b0: $f8 $9b
	ld l, a                                          ; $41b2: $6f
	ld hl, sp+$7b                                    ; $41b3: $f8 $7b
	ret nz                                           ; $41b5: $c0

	sbc e                                            ; $41b6: $9b
	sub b                                            ; $41b7: $90
	nop                                              ; $41b8: $00
	ld b, [hl]                                       ; $41b9: $46
	sbc a                                            ; $41ba: $9f
	ld [hl], a                                       ; $41bb: $77
	ldh a, [$9c]                                     ; $41bc: $f0 $9c
	pop de                                           ; $41be: $d1
	ret c                                            ; $41bf: $d8

	ld [hl], b                                       ; $41c0: $70
	ld a, b                                          ; $41c1: $78
	ld [hl-], a                                      ; $41c2: $32
	ld a, a                                          ; $41c3: $7f
	ldh a, [$9e]                                     ; $41c4: $f0 $9e
	ld c, $79                                        ; $41c6: $0e $79
	db $ec                                           ; $41c8: $ec
	ld [hl], a                                       ; $41c9: $77
	ldh a, [$9e]                                     ; $41ca: $f0 $9e
	ld d, h                                          ; $41cc: $54
	ld l, e                                          ; $41cd: $6b
	add hl, de                                       ; $41ce: $19
	sbc [hl]                                         ; $41cf: $9e
	xor e                                            ; $41d0: $ab
	db $db                                           ; $41d1: $db
	rst $38                                          ; $41d2: $ff
	ld hl, sp-$69                                    ; $41d3: $f8 $97
	ld d, d                                          ; $41d5: $52
	and l                                            ; $41d6: $a5
	jp nc, $f3a5                                     ; $41d7: $d2 $a5 $f3

	push af                                          ; $41da: $f5
	rst $38                                          ; $41db: $ff
	ldh [$de], a                                     ; $41dc: $e0 $de
	ld b, $77                                        ; $41de: $06 $77
	jr jr_04b_4180                                   ; $41e0: $18 $9e

	rra                                              ; $41e2: $1f
	sbc $fc                                          ; $41e3: $de $fc
	ld a, l                                          ; $41e5: $7d
	xor b                                            ; $41e6: $a8
	ld a, a                                          ; $41e7: $7f
	db $fd                                           ; $41e8: $fd
	sub [hl]                                         ; $41e9: $96
	ld a, a                                          ; $41ea: $7f
	ld l, b                                          ; $41eb: $68
	ld l, b                                          ; $41ec: $68
	jr z, jr_04b_4227                                ; $41ed: $28 $38

	cp a                                             ; $41ef: $bf
	cp b                                             ; $41f0: $b8
	cp c                                             ; $41f1: $b9
	push bc                                          ; $41f2: $c5
	sbc $cf                                          ; $41f3: $de $cf
	adc h                                            ; $41f5: $8c
	rst $38                                          ; $41f6: $ff
	ret z                                            ; $41f7: $c8

	rst GetHLinHL                                          ; $41f8: $cf
	rst $38                                          ; $41f9: $ff
	rst FarCall                                          ; $41fa: $f7
	and c                                            ; $41fb: $a1
	call $dfcf                                       ; $41fc: $cd $cf $df
	ld e, h                                          ; $41ff: $5c
	ld [hl], l                                       ; $4200: $75
	adc a                                            ; $4201: $8f
	ccf                                              ; $4202: $3f
	ret c                                            ; $4203: $d8

	ld a, a                                          ; $4204: $7f
	ld c, a                                          ; $4205: $4f
	ld a, $e7                                        ; $4206: $3e $e7
	rst GetHLinHL                                          ; $4208: $cf
	ld a, e                                          ; $4209: $7b
	cp a                                             ; $420a: $bf
	sub e                                            ; $420b: $93
	add b                                            ; $420c: $80
	pop bc                                           ; $420d: $c1
	rst FarCall                                          ; $420e: $f7
	rst $38                                          ; $420f: $ff
	rst $38                                          ; $4210: $ff
	push de                                          ; $4211: $d5
	ld l, d                                          ; $4212: $6a
	xor d                                            ; $4213: $aa
	call nc, $2f40                                   ; $4214: $d4 $40 $2f
	ccf                                              ; $4217: $3f
	ld a, d                                          ; $4218: $7a
	or e                                             ; $4219: $b3
	sub [hl]                                         ; $421a: $96
	nop                                              ; $421b: $00
	dec b                                            ; $421c: $05
	ld a, a                                          ; $421d: $7f
	cp $fd                                           ; $421e: $fe $fd
	cp $5d                                           ; $4220: $fe $5d
	xor [hl]                                         ; $4222: $ae
	and b                                            ; $4223: $a0
	ld [hl], a                                       ; $4224: $77
	ld [hl], d                                       ; $4225: $72
	ld a, c                                          ; $4226: $79

jr_04b_4227:
	ldh a, [$97]                                     ; $4227: $f0 $97
	inc de                                           ; $4229: $13
	rst $38                                          ; $422a: $ff
	rst SubAFromDE                                          ; $422b: $df
	or a                                             ; $422c: $b7
	ld e, a                                          ; $422d: $5f
	cp a                                             ; $422e: $bf
	ld [hl], b                                       ; $422f: $70
	rlca                                             ; $4230: $07
	ld [hl], e                                       ; $4231: $73
	add c                                            ; $4232: $81
	add e                                            ; $4233: $83
	db $fc                                           ; $4234: $fc
	ret nz                                           ; $4235: $c0

	nop                                              ; $4236: $00
	pop af                                           ; $4237: $f1
	pop hl                                           ; $4238: $e1
	pop af                                           ; $4239: $f1
	rst SubAFromDE                                          ; $423a: $df
	db $ed                                           ; $423b: $ed
	sbc e                                            ; $423c: $9b
	ld d, l                                          ; $423d: $55
	xor e                                            ; $423e: $ab
	ld sp, hl                                        ; $423f: $f9
	pop af                                           ; $4240: $f1
	di                                               ; $4241: $f3
	rst AddAOntoHL                                          ; $4242: $ef
	rst JumpTable                                          ; $4243: $c7
	ld c, a                                          ; $4244: $4f
	ccf                                              ; $4245: $3f
	rst $38                                          ; $4246: $ff
	pop bc                                           ; $4247: $c1
	rst $38                                          ; $4248: $ff
	rst $38                                          ; $4249: $ff
	ld e, d                                          ; $424a: $5a
	xor l                                            ; $424b: $ad
	ld d, [hl]                                       ; $424c: $56
	rst $38                                          ; $424d: $ff
	sbc h                                            ; $424e: $9c
	add b                                            ; $424f: $80
	ld a, e                                          ; $4250: $7b
	rst FarCall                                          ; $4251: $f7
	db $dd                                           ; $4252: $dd
	rst $38                                          ; $4253: $ff
	sub [hl]                                         ; $4254: $96
	sbc $9e                                          ; $4255: $de $9e
	cp $fe                                           ; $4257: $fe $fe
	ld l, [hl]                                       ; $4259: $6e
	rst FarCall                                          ; $425a: $f7
	ld l, e                                          ; $425b: $6b
	push de                                          ; $425c: $d5
	ld a, a                                          ; $425d: $7f
	jp c, $fcff                                      ; $425e: $da $ff $fc

	ld a, a                                          ; $4261: $7f
	ld e, $8e                                        ; $4262: $1e $8e
	cp a                                             ; $4264: $bf
	call z, $8ccc                                    ; $4265: $cc $cc $8c
	ld c, h                                          ; $4268: $4c
	ld c, h                                          ; $4269: $4c
	call z, $08ff                                    ; $426a: $cc $ff $08
	rra                                              ; $426d: $1f
	ld a, [de]                                       ; $426e: $1a
	dec d                                            ; $426f: $15
	ld a, [de]                                       ; $4270: $1a
	dec d                                            ; $4271: $15
	ld a, [hl-]                                      ; $4272: $3a
	rst FarCall                                          ; $4273: $f7
	db $fd                                           ; $4274: $fd
	db $dd                                           ; $4275: $dd
	ccf                                              ; $4276: $3f
	sbc e                                            ; $4277: $9b
	cp a                                             ; $4278: $bf
	rst $38                                          ; $4279: $ff
	db $fc                                           ; $427a: $fc
	jp $f475                                         ; $427b: $c3 $75 $f4


	sbc e                                            ; $427e: $9b
	ld d, e                                          ; $427f: $53
	cp d                                             ; $4280: $ba
	jp hl                                            ; $4281: $e9


	ld b, l                                          ; $4282: $45
	ld [hl], e                                       ; $4283: $73
	and c                                            ; $4284: $a1
	sub h                                            ; $4285: $94
	push bc                                          ; $4286: $c5
	inc a                                            ; $4287: $3c
	and $ff                                          ; $4288: $e6 $ff
	xor d                                            ; $428a: $aa
	ld d, a                                          ; $428b: $57
	ld [hl], l                                       ; $428c: $75
	xor d                                            ; $428d: $aa
	push de                                          ; $428e: $d5
	xor e                                            ; $428f: $ab
	cp b                                             ; $4290: $b8
	ld a, d                                          ; $4291: $7a
	push hl                                          ; $4292: $e5
	sub c                                            ; $4293: $91
	adc a                                            ; $4294: $8f
	ld a, a                                          ; $4295: $7f
	rst $38                                          ; $4296: $ff
	sbc a                                            ; $4297: $9f
	call c, $afd5                                    ; $4298: $dc $d5 $af
	dec hl                                           ; $429b: $2b
	ld d, [hl]                                       ; $429c: $56
	xor d                                            ; $429d: $aa
	ld d, [hl]                                       ; $429e: $56
	cp $00                                           ; $429f: $fe $00
	db $eb                                           ; $42a1: $eb
	ld a, b                                          ; $42a2: $78
	or b                                             ; $42a3: $b0
	sbc $fe                                          ; $42a4: $de $fe
	sub [hl]                                         ; $42a6: $96
	nop                                              ; $42a7: $00
	ldh a, [$f7]                                     ; $42a8: $f0 $f7
	rst FarCall                                          ; $42aa: $f7
	jp nc, $1225                                     ; $42ab: $d2 $25 $12

	dec d                                            ; $42ae: $15
	rlca                                             ; $42af: $07
	sbc $ff                                          ; $42b0: $de $ff
	ld a, l                                          ; $42b2: $7d
	ld d, $df                                        ; $42b3: $16 $df
	rrca                                             ; $42b5: $0f
	sbc [hl]                                         ; $42b6: $9e
	jr jr_04b_432f                                   ; $42b7: $18 $76

	cp e                                             ; $42b9: $bb
	sbc h                                            ; $42ba: $9c
	ld e, a                                          ; $42bb: $5f
	xor e                                            ; $42bc: $ab
	ld d, l                                          ; $42bd: $55
	ld l, [hl]                                       ; $42be: $6e
	ld [$de7f], sp                                   ; $42bf: $08 $7f $de
	sbc [hl]                                         ; $42c2: $9e
	ld b, b                                          ; $42c3: $40
	ld a, e                                          ; $42c4: $7b
	rst FarCall                                          ; $42c5: $f7
	ld a, l                                          ; $42c6: $7d
	ldh [$9b], a                                     ; $42c7: $e0 $9b
	cp e                                             ; $42c9: $bb
	rst SubAFromDE                                          ; $42ca: $df
	ccf                                              ; $42cb: $3f
	ldh a, [rPCM12]                                  ; $42cc: $f0 $76
	and e                                            ; $42ce: $a3
	sbc b                                            ; $42cf: $98
	rst JumpTable                                          ; $42d0: $c7
	ccf                                              ; $42d1: $3f
	rst $38                                          ; $42d2: $ff
	nop                                              ; $42d3: $00
	ei                                               ; $42d4: $fb
	db $dd                                           ; $42d5: $dd
	rst AddAOntoHL                                          ; $42d6: $ef
	ld [hl], a                                       ; $42d7: $77
	ld [hl], h                                       ; $42d8: $74
	ld a, l                                          ; $42d9: $7d
	dec l                                            ; $42da: $2d
	sbc l                                            ; $42db: $9d
	db $e3                                           ; $42dc: $e3
	rra                                              ; $42dd: $1f
	ld [hl], e                                       ; $42de: $73
	ld [hl], b                                       ; $42df: $70
	ld l, e                                          ; $42e0: $6b
	ld h, a                                          ; $42e1: $67
	ld l, e                                          ; $42e2: $6b
	rst GetHLinHL                                          ; $42e3: $cf
	sbc c                                            ; $42e4: $99
	rst $38                                          ; $42e5: $ff
	dec b                                            ; $42e6: $05
	cp [hl]                                          ; $42e7: $be
	push af                                          ; $42e8: $f5
	xor [hl]                                         ; $42e9: $ae
	ld e, l                                          ; $42ea: $5d
	ld a, e                                          ; $42eb: $7b
	ld a, h                                          ; $42ec: $7c
	ld [hl], a                                       ; $42ed: $77

Call_04b_42ee:
	xor a                                            ; $42ee: $af
	db $dd                                           ; $42ef: $dd
	rst $38                                          ; $42f0: $ff
	add a                                            ; $42f1: $87
	ld l, e                                          ; $42f2: $6b
	ret nz                                           ; $42f3: $c0

	ldh a, [$fd]                                     ; $42f4: $f0 $fd
	ld c, d                                          ; $42f6: $4a
	adc a                                            ; $42f7: $8f
	jr @-$5e                                         ; $42f8: $18 $a0

	rst $38                                          ; $42fa: $ff
	ld [$fffd], a                                    ; $42fb: $ea $fd $ff
	rst FarCall                                          ; $42fe: $f7
	ld hl, sp-$10                                    ; $42ff: $f8 $f0
	ld b, b                                          ; $4301: $40
	rst JumpTable                                          ; $4302: $c7
	ld a, l                                          ; $4303: $7d
	jp z, $af55                                      ; $4304: $ca $55 $af

	ldh [rSB], a                                     ; $4307: $e0 $01
	ld a, [hl+]                                      ; $4309: $2a
	ld a, c                                          ; $430a: $79
	ret c                                            ; $430b: $d8

	add b                                            ; $430c: $80
	xor $d0                                          ; $430d: $ee $d0
	nop                                              ; $430f: $00
	ld [bc], a                                       ; $4310: $02
	dec d                                            ; $4311: $15
	rst $38                                          ; $4312: $ff
	ld a, l                                          ; $4313: $7d
	xor d                                            ; $4314: $aa
	ldh a, [$03]                                     ; $4315: $f0 $03
	ld a, [hl+]                                      ; $4317: $2a
	ld d, b                                          ; $4318: $50
	and b                                            ; $4319: $a0
	rst $38                                          ; $431a: $ff
	ld a, [$0054]                                    ; $431b: $fa $54 $00
	ld bc, $af1f                                     ; $431e: $01 $1f $af
	ld e, a                                          ; $4321: $5f
	sub l                                            ; $4322: $95
	ld l, h                                          ; $4323: $6c
	ld bc, $553a                                     ; $4324: $01 $3a $55
	xor b                                            ; $4327: $a8
	nop                                              ; $4328: $00
	nop                                              ; $4329: $00
	ld a, a                                          ; $432a: $7f
	or b                                             ; $432b: $b0
	sbc [hl]                                         ; $432c: $9e
	nop                                              ; $432d: $00
	ld [hl], e                                       ; $432e: $73

jr_04b_432f:
	cp l                                             ; $432f: $bd
	sub l                                            ; $4330: $95
	ld h, b                                          ; $4331: $60
	ld e, $d5                                        ; $4332: $1e $d5
	xor d                                            ; $4334: $aa
	ld b, l                                          ; $4335: $45
	ld [bc], a                                       ; $4336: $02
	nop                                              ; $4337: $00
	nop                                              ; $4338: $00
	add b                                            ; $4339: $80
	inc bc                                           ; $433a: $03
	ld a, d                                          ; $433b: $7a
	or d                                             ; $433c: $b2
	sbc $ff                                          ; $433d: $de $ff
	sbc [hl]                                         ; $433f: $9e
	push af                                          ; $4340: $f5
	ld [hl], l                                       ; $4341: $75
	ld h, e                                          ; $4342: $63
	ld a, a                                          ; $4343: $7f
	cp $9e                                           ; $4344: $fe $9e
	ld a, [hl+]                                      ; $4346: $2a
	ld [hl], e                                       ; $4347: $73
	add e                                            ; $4348: $83
	sbc $ff                                          ; $4349: $de $ff
	ld [hl], e                                       ; $434b: $73
	ldh a, [c]                                       ; $434c: $f2
	ld a, a                                          ; $434d: $7f
	cp $78                                           ; $434e: $fe $78
	adc b                                            ; $4350: $88
	ld l, [hl]                                       ; $4351: $6e
	and b                                            ; $4352: $a0
	sbc [hl]                                         ; $4353: $9e
	rst $38                                          ; $4354: $ff
	sbc $d6                                          ; $4355: $de $d6
	sbc d                                            ; $4357: $9a
	rst FarCall                                          ; $4358: $f7
	rst SubAFromDE                                          ; $4359: $df
	rst $38                                          ; $435a: $ff
	and l                                            ; $435b: $a5
	rst $38                                          ; $435c: $ff
	db $dd                                           ; $435d: $dd
	sbc h                                            ; $435e: $9c
	sub h                                            ; $435f: $94
	or h                                             ; $4360: $b4
	and h                                            ; $4361: $a4
	cp h                                             ; $4362: $bc
	ld [$6045], a                                    ; $4363: $ea $45 $60
	ld e, a                                          ; $4366: $5f
	ld hl, sp-$80                                    ; $4367: $f8 $80
	add b                                            ; $4369: $80
	add c                                            ; $436a: $81
	sbc $ff                                          ; $436b: $de $ff
	sbc [hl]                                         ; $436d: $9e
	ldh [$75], a                                     ; $436e: $e0 $75
	ld h, h                                          ; $4370: $64
	sbc $db                                          ; $4371: $de $db
	call c, $deff                                    ; $4373: $dc $ff $de
	adc c                                            ; $4376: $89
	rst SubAFromDE                                          ; $4377: $df
	sbc e                                            ; $4378: $9b
	ld a, a                                          ; $4379: $7f
	push af                                          ; $437a: $f5
	add b                                            ; $437b: $80
	adc c                                            ; $437c: $89
	ld [$ab55], a                                    ; $437d: $ea $55 $ab
	ld c, c                                          ; $4380: $49
	or [hl]                                          ; $4381: $b6
	ld e, [hl]                                       ; $4382: $5e
	inc h                                            ; $4383: $24
	ld e, $1f                                        ; $4384: $1e $1f
	rst $38                                          ; $4386: $ff
	db $fc                                           ; $4387: $fc
	ldh a, [$c1]                                     ; $4388: $f0 $c1
	pop bc                                           ; $438a: $c1
	jp nz, $a9e1                                     ; $438b: $c2 $e1 $a9

	ld a, [hl+]                                      ; $438e: $2a
	sub $01                                          ; $438f: $d6 $01
	ld bc, $d4f2                                     ; $4391: $01 $f2 $d4
	adc a                                            ; $4394: $8f
	db $f4                                           ; $4395: $f4
	pop bc                                           ; $4396: $c1
	rrca                                             ; $4397: $0f
	ei                                               ; $4398: $fb
	cp $ec                                           ; $4399: $fe $ec
	sub d                                            ; $439b: $92
	jr c, jr_04b_439f                                ; $439c: $38 $01

	add [hl]                                         ; $439e: $86

jr_04b_439f:
	or $ff                                           ; $439f: $f6 $ff
	rst $38                                          ; $43a1: $ff
	rst FarCall                                          ; $43a2: $f7
	rst JumpTable                                          ; $43a3: $c7
	sbc a                                            ; $43a4: $9f
	ldh [c], a                                       ; $43a5: $e2
	add e                                            ; $43a6: $83
	and $fc                                          ; $43a7: $e6 $fc
	ld a, e                                          ; $43a9: $7b
	ld hl, sp-$80                                    ; $43aa: $f8 $80
	sbc [hl]                                         ; $43ac: $9e
	db $fc                                           ; $43ad: $fc
	and $00                                          ; $43ae: $e6 $00
	add h                                            ; $43b0: $84
	ld de, $989e                                     ; $43b1: $11 $9e $98
	ld hl, $0088                                     ; $43b4: $21 $88 $00
	ld a, $08                                        ; $43b7: $3e $08
	ld hl, sp-$07                                    ; $43b9: $f8 $f9
	rst $38                                          ; $43bb: $ff
	ld [de], a                                       ; $43bc: $12
	db $10                                           ; $43bd: $10
	db $10                                           ; $43be: $10
	inc de                                           ; $43bf: $13
	dec d                                            ; $43c0: $15
	inc d                                            ; $43c1: $14
	rst $38                                          ; $43c2: $ff
	adc $14                                          ; $43c3: $ce $14
	cp d                                             ; $43c5: $ba
	dec bc                                           ; $43c6: $0b
	add hl, bc                                       ; $43c7: $09
	ld a, [bc]                                       ; $43c8: $0a
	ld [$8000], sp                                   ; $43c9: $08 $00 $80
	inc sp                                           ; $43cc: $33
	ld b, b                                          ; $43cd: $40
	ld b, c                                          ; $43ce: $41
	nop                                              ; $43cf: $00
	add hl, sp                                       ; $43d0: $39
	ld c, [hl]                                       ; $43d1: $4e
	ld [$4150], a                                    ; $43d2: $ea $50 $41
	inc hl                                           ; $43d5: $23
	jr jr_04b_4419                                   ; $43d6: $18 $41

	rst GetHLinHL                                          ; $43d8: $cf
	ld de, $8100                                     ; $43d9: $11 $00 $81
	cp $5b                                           ; $43dc: $fe $5b
	cpl                                              ; $43de: $2f
	add h                                            ; $43df: $84
	cp c                                             ; $43e0: $b9
	inc de                                           ; $43e1: $13
	ld bc, $b2a7                                     ; $43e2: $01 $a7 $b2
	sub c                                            ; $43e5: $91
	sub c                                            ; $43e6: $91
	inc bc                                           ; $43e7: $03
	adc $ee                                          ; $43e8: $ce $ee
	nop                                              ; $43ea: $00
	add e                                            ; $43eb: $83
	ret c                                            ; $43ec: $d8

	ld sp, hl                                        ; $43ed: $f9
	dec sp                                           ; $43ee: $3b
	ld hl, sp+$7f                                    ; $43ef: $f8 $7f
	dec d                                            ; $43f1: $15
	ld b, d                                          ; $43f2: $42
	xor $f7                                          ; $43f3: $ee $f7
	nop                                              ; $43f5: $00
	db $f4                                           ; $43f6: $f4
	rst SubAFromBC                                          ; $43f7: $e7
	rst $38                                          ; $43f8: $ff
	rrca                                             ; $43f9: $0f
	ld bc, $0300                                     ; $43fa: $01 $00 $03
	rst $38                                          ; $43fd: $ff
	ld hl, sp+$03                                    ; $43fe: $f8 $03
	rst $38                                          ; $4400: $ff
	ld a, a                                          ; $4401: $7f
	xor a                                            ; $4402: $af
	ld d, l                                          ; $4403: $55
	ld a, [hl+]                                      ; $4404: $2a
	dec [hl]                                         ; $4405: $35
	ld l, d                                          ; $4406: $6a
	push de                                          ; $4407: $d5
	sbc $ff                                          ; $4408: $de $ff
	rst SubAFromDE                                          ; $440a: $df
	ld a, a                                          ; $440b: $7f
	ld a, e                                          ; $440c: $7b
	dec e                                            ; $440d: $1d
	sbc e                                            ; $440e: $9b
	ld h, b                                          ; $440f: $60
	ld [bc], a                                       ; $4410: $02
	jr z, @-$7e                                      ; $4411: $28 $80

	db $fd                                           ; $4413: $fd
	sbc h                                            ; $4414: $9c
	add b                                            ; $4415: $80
	ld bc, $dc17                                     ; $4416: $01 $17 $dc

jr_04b_4419:
	rst $38                                          ; $4419: $ff
	add b                                            ; $441a: $80
	dec [hl]                                         ; $441b: $35
	ld [bc], a                                       ; $441c: $02
	ld bc, $0503                                     ; $441d: $01 $03 $05
	ld [bc], a                                       ; $4420: $02
	dec d                                            ; $4421: $15
	ld a, [hl+]                                      ; $4422: $2a
	ld a, [bc]                                       ; $4423: $0a
	db $fd                                           ; $4424: $fd
	cp $fc                                           ; $4425: $fe $fc
	ld a, [$e0fd]                                    ; $4427: $fa $fd $e0
	add b                                            ; $442a: $80
	ld d, l                                          ; $442b: $55
	xor b                                            ; $442c: $a8
	sub $e8                                          ; $442d: $d6 $e8
	ld d, h                                          ; $442f: $54
	and b                                            ; $4430: $a0
	ld b, b                                          ; $4431: $40
	and c                                            ; $4432: $a1
	xor d                                            ; $4433: $aa
	ld d, l                                          ; $4434: $55
	jr z, jr_04b_444e                                ; $4435: $28 $17

	xor e                                            ; $4437: $ab
	ld e, [hl]                                       ; $4438: $5e
	ccf                                              ; $4439: $3f
	sbc h                                            ; $443a: $9c
	ld c, $40                                        ; $443b: $0e $40
	ld d, b                                          ; $443d: $50
	ld a, e                                          ; $443e: $7b
	ld bc, $5099                                     ; $443f: $01 $99 $50
	xor b                                            ; $4442: $a8
	ld d, h                                          ; $4443: $54
	cp a                                             ; $4444: $bf
	rrca                                             ; $4445: $0f
	ld bc, $c873                                     ; $4446: $01 $73 $c8
	db $fd                                           ; $4449: $fd
	sbc e                                            ; $444a: $9b
	add l                                            ; $444b: $85
	ld d, a                                          ; $444c: $57
	inc bc                                           ; $444d: $03

jr_04b_444e:
	ld [bc], a                                       ; $444e: $02
	ld [hl], a                                       ; $444f: $77
	or b                                             ; $4450: $b0
	sbc [hl]                                         ; $4451: $9e
	ld a, d                                          ; $4452: $7a
	db $fc                                           ; $4453: $fc
	ld a, l                                          ; $4454: $7d
	ld b, h                                          ; $4455: $44
	ld a, [hl]                                       ; $4456: $7e
	and h                                            ; $4457: $a4
	ld a, [hl]                                       ; $4458: $7e
	cp h                                             ; $4459: $bc
	ld a, c                                          ; $445a: $79
	ldh a, [c]                                       ; $445b: $f2
	ld [hl], l                                       ; $445c: $75
	ld [$717d], sp                                   ; $445d: $08 $7d $71
	ld a, a                                          ; $4460: $7f
	ldh a, [c]                                       ; $4461: $f2
	sub l                                            ; $4462: $95
	ld hl, sp+$40                                    ; $4463: $f8 $40
	and b                                            ; $4465: $a0
	ld d, b                                          ; $4466: $50
	xor b                                            ; $4467: $a8
	rst $38                                          ; $4468: $ff
	ldh [rP1], a                                     ; $4469: $e0 $00
	rlca                                             ; $446b: $07

Call_04b_446c:
	ccf                                              ; $446c: $3f
	ld a, b                                          ; $446d: $78
	dec a                                            ; $446e: $3d
	ld [hl], a                                       ; $446f: $77
	ld [$019b], a                                    ; $4470: $ea $9b $01
	ld hl, $2141                                     ; $4473: $21 $41 $21
	ld a, e                                          ; $4476: $7b
	jp c, $ffdf                                      ; $4477: $da $df $ff

	sbc h                                            ; $447a: $9c
	rst SubAFromDE                                          ; $447b: $df
	sbc a                                            ; $447c: $9f
	sbc a                                            ; $447d: $9f
	sbc $9c                                          ; $447e: $de $9c
	sbc h                                            ; $4480: $9c
	rst $38                                          ; $4481: $ff
	cp [hl]                                          ; $4482: $be
	cp a                                             ; $4483: $bf
	ld a, e                                          ; $4484: $7b
	inc c                                            ; $4485: $0c
	rst SubAFromDE                                          ; $4486: $df
	or [hl]                                          ; $4487: $b6
	sub l                                            ; $4488: $95
	and a                                            ; $4489: $a7
	inc e                                            ; $448a: $1c
	inc d                                            ; $448b: $14
	rst AddAOntoHL                                          ; $448c: $ef
	ld d, l                                          ; $448d: $55
	ld a, a                                          ; $448e: $7f
	ld a, a                                          ; $448f: $7f
	ld a, h                                          ; $4490: $7c
	ldh a, [$78]                                     ; $4491: $f0 $78
	sbc $ff                                          ; $4493: $de $ff
	rst SubAFromDE                                          ; $4495: $df
	add c                                            ; $4496: $81
	sub l                                            ; $4497: $95
	add e                                            ; $4498: $83
	adc b                                            ; $4499: $88
	ld c, a                                          ; $449a: $4f
	ld b, a                                          ; $449b: $47
	xor d                                            ; $449c: $aa
	ld d, l                                          ; $449d: $55
	add hl, bc                                       ; $449e: $09
	ld a, b                                          ; $449f: $78

Jump_04b_44a0:
	ld [$7508], sp                                   ; $44a0: $08 $08 $75
	ld b, h                                          ; $44a3: $44
	sbc e                                            ; $44a4: $9b
	adc c                                            ; $44a5: $89
	rst $38                                          ; $44a6: $ff
	ld a, a                                          ; $44a7: $7f
	cp a                                             ; $44a8: $bf
	halt                                             ; $44a9: $76
	ld [hl], e                                       ; $44aa: $73
	sbc [hl]                                         ; $44ab: $9e
	rlca                                             ; $44ac: $07
	sbc $80                                          ; $44ad: $de $80
	sbc d                                            ; $44af: $9a
	add a                                            ; $44b0: $87
	ccf                                              ; $44b1: $3f
	db $fc                                           ; $44b2: $fc
	ldh [$fb], a                                     ; $44b3: $e0 $fb
	ld [hl], l                                       ; $44b5: $75
	ldh [$98], a                                     ; $44b6: $e0 $98
	ret nz                                           ; $44b8: $c0

	add e                                            ; $44b9: $83
	rra                                              ; $44ba: $1f
	sbc h                                            ; $44bb: $9c
	rst $38                                          ; $44bc: $ff
	rra                                              ; $44bd: $1f
	ld sp, hl                                        ; $44be: $f9
	ld [hl], e                                       ; $44bf: $73
	sub a                                            ; $44c0: $97
	ld a, [hl]                                       ; $44c1: $7e
	halt                                             ; $44c2: $76
	sbc [hl]                                         ; $44c3: $9e
	rlca                                             ; $44c4: $07
	ld [hl], a                                       ; $44c5: $77
	xor l                                            ; $44c6: $ad
	sbc d                                            ; $44c7: $9a
	reti                                             ; $44c8: $d9


	add hl, bc                                       ; $44c9: $09
	rst FarCall                                          ; $44ca: $f7
	rst $38                                          ; $44cb: $ff
	inc bc                                           ; $44cc: $03
	cp $9c                                           ; $44cd: $fe $9c
	inc c                                            ; $44cf: $0c
	ld bc, $dce8                                     ; $44d0: $01 $e8 $dc
	rst $38                                          ; $44d3: $ff
	add h                                            ; $44d4: $84
	ld hl, sp-$78                                    ; $44d5: $f8 $88
	sbc b                                            ; $44d7: $98
	rst $38                                          ; $44d8: $ff
	rst $38                                          ; $44d9: $ff
	ld b, $05                                        ; $44da: $06 $05
	dec b                                            ; $44dc: $05
	scf                                              ; $44dd: $37
	db $fd                                           ; $44de: $fd
	adc $ff                                          ; $44df: $ce $ff
	rst $38                                          ; $44e1: $ff
	ld sp, hl                                        ; $44e2: $f9
	ei                                               ; $44e3: $fb
	ei                                               ; $44e4: $fb
	ld [bc], a                                       ; $44e5: $02
	ld c, a                                          ; $44e6: $4f
	jr nc, @+$01                                     ; $44e7: $30 $ff

	rst $38                                          ; $44e9: $ff
	xor d                                            ; $44ea: $aa
	ld a, a                                          ; $44eb: $7f
	cp $3c                                           ; $44ec: $fe $3c
	ccf                                              ; $44ee: $3f
	ld c, b                                          ; $44ef: $48
	ld a, e                                          ; $44f0: $7b
	ldh a, [$99]                                     ; $44f1: $f0 $99
	ld sp, hl                                        ; $44f3: $f9
	db $fd                                           ; $44f4: $fd
	pop de                                           ; $44f5: $d1
	sbc e                                            ; $44f6: $9b
	rst AddAOntoHL                                          ; $44f7: $ef
	rst $38                                          ; $44f8: $ff
	ld [hl], a                                       ; $44f9: $77
	scf                                              ; $44fa: $37
	sbc l                                            ; $44fb: $9d
	ld a, [hl]                                       ; $44fc: $7e
	db $e4                                           ; $44fd: $e4
	ld l, [hl]                                       ; $44fe: $6e
	ld e, $9a                                        ; $44ff: $1e $9a
	ld a, h                                          ; $4501: $7c
	add a                                            ; $4502: $87
	cp $d5                                           ; $4503: $fe $d5
	ld a, [bc]                                       ; $4505: $0a
	cp $9e                                           ; $4506: $fe $9e
	adc h                                            ; $4508: $8c
	ld l, c                                          ; $4509: $69
	sbc b                                            ; $450a: $98
	sbc [hl]                                         ; $450b: $9e
	ld a, [hl]                                       ; $450c: $7e
	ld [hl], c                                       ; $450d: $71
	rst $38                                          ; $450e: $ff
	sbc l                                            ; $450f: $9d
	ld a, [bc]                                       ; $4510: $0a
	ld bc, $0066                                     ; $4511: $01 $66 $00
	ld l, [hl]                                       ; $4514: $6e
	ld bc, $fe7f                                     ; $4515: $01 $7f $fe
	reti                                             ; $4518: $d9


	rst $38                                          ; $4519: $ff
	ld e, c                                          ; $451a: $59
	nop                                              ; $451b: $00
	jp c, $9533                                      ; $451c: $da $33 $95

	ld [hl], a                                       ; $451f: $77
	inc sp                                           ; $4520: $33
	inc sp                                           ; $4521: $33
	ld b, h                                          ; $4522: $44
	ld b, h                                          ; $4523: $44
	ld [hl], a                                       ; $4524: $77
	ld [hl], a                                       ; $4525: $77
	ld [hl], e                                       ; $4526: $73
	inc sp                                           ; $4527: $33
	scf                                              ; $4528: $37
	ld [hl], e                                       ; $4529: $73
	or $df                                           ; $452a: $f6 $df
	ld b, h                                          ; $452c: $44
	adc [hl]                                         ; $452d: $8e
	ld b, e                                          ; $452e: $43
	inc [hl]                                         ; $452f: $34
	ld b, h                                          ; $4530: $44
	ld b, h                                          ; $4531: $44
	ld h, [hl]                                       ; $4532: $66
	ld b, h                                          ; $4533: $44
	ld b, a                                          ; $4534: $47
	ld h, [hl]                                       ; $4535: $66
	ld b, h                                          ; $4536: $44
	ld b, h                                          ; $4537: $44
	ld b, [hl]                                       ; $4538: $46
	ld [hl], h                                       ; $4539: $74
	ld b, h                                          ; $453a: $44
	ld b, [hl]                                       ; $453b: $46
	ld h, h                                          ; $453c: $64
	ld b, h                                          ; $453d: $44
	ld b, h                                          ; $453e: $44
	ld a, e                                          ; $453f: $7b
	ldh a, [$de]                                     ; $4540: $f0 $de
	ld b, h                                          ; $4542: $44
	ld a, a                                          ; $4543: $7f
	or $73                                           ; $4544: $f6 $73
	ldh [c], a                                       ; $4546: $e2
	call c, Call_04b_7744                            ; $4547: $dc $44 $77
	or $df                                           ; $454a: $f6 $df
	ld h, [hl]                                       ; $454c: $66
	ld a, a                                          ; $454d: $7f
	push bc                                          ; $454e: $c5
	sbc $77                                          ; $454f: $de $77
	sbc d                                            ; $4551: $9a
	dec [hl]                                         ; $4552: $35
	ld d, l                                          ; $4553: $55
	ld h, [hl]                                       ; $4554: $66
	ld h, [hl]                                       ; $4555: $66
	ld b, [hl]                                       ; $4556: $46
	ld l, a                                          ; $4557: $6f
	or $9c                                           ; $4558: $f6 $9c
	ld d, [hl]                                       ; $455a: $56
	inc sp                                           ; $455b: $33
	dec [hl]                                         ; $455c: $35
	sbc $33                                          ; $455d: $de $33
	sbc [hl]                                         ; $455f: $9e
	scf                                              ; $4560: $37
	db $db                                           ; $4561: $db
	inc sp                                           ; $4562: $33
	sbc c                                            ; $4563: $99
	ld d, e                                          ; $4564: $53
	ld b, a                                          ; $4565: $47
	ld h, h                                          ; $4566: $64
	ld b, a                                          ; $4567: $47
	ld d, l                                          ; $4568: $55
	ld [hl], e                                       ; $4569: $73
	db $dd                                           ; $456a: $dd
	inc sp                                           ; $456b: $33
	sbc c                                            ; $456c: $99
	ld h, [hl]                                       ; $456d: $66
	ld h, e                                          ; $456e: $63
	scf                                              ; $456f: $37
	ld [hl], a                                       ; $4570: $77
	ld [hl], a                                       ; $4571: $77
	inc sp                                           ; $4572: $33
	xor c                                            ; $4573: $a9
	ld a, [bc]                                       ; $4574: $0a
	adc h                                            ; $4575: $8c
	rst $38                                          ; $4576: $ff
	nop                                              ; $4577: $00
	rst $38                                          ; $4578: $ff
	nop                                              ; $4579: $00
	xor d                                            ; $457a: $aa
	nop                                              ; $457b: $00
	ld b, b                                          ; $457c: $40
	nop                                              ; $457d: $00
	xor d                                            ; $457e: $aa
	inc b                                            ; $457f: $04
	ld b, l                                          ; $4580: $45
	ld [bc], a                                       ; $4581: $02
	and l                                            ; $4582: $a5
	inc bc                                           ; $4583: $03
	rra                                              ; $4584: $1f
	scf                                              ; $4585: $37
	rst $38                                          ; $4586: $ff
	nop                                              ; $4587: $00
	push af                                          ; $4588: $f5
	ld a, e                                          ; $4589: $7b
	ldh a, [hDisp1_BGP]                                     ; $458a: $f0 $92
	sub l                                            ; $458c: $95
	nop                                              ; $458d: $00
	xor b                                            ; $458e: $a8
	nop                                              ; $458f: $00
	ld d, b                                          ; $4590: $50
	nop                                              ; $4591: $00
	and b                                            ; $4592: $a0
	ret nz                                           ; $4593: $c0

	ldh [$c0], a                                     ; $4594: $e0 $c0
	xor d                                            ; $4596: $aa
	nop                                              ; $4597: $00
	ld d, h                                          ; $4598: $54
	ld a, e                                          ; $4599: $7b
	db $f4                                           ; $459a: $f4
	rst FarCall                                          ; $459b: $f7
	sub l                                            ; $459c: $95
	ld b, a                                          ; $459d: $47

Jump_04b_459e:
	inc bc                                           ; $459e: $03
	xor d                                            ; $459f: $aa
	nop                                              ; $45a0: $00
	rlca                                             ; $45a1: $07
	nop                                              ; $45a2: $00
	dec b                                            ; $45a3: $05
	inc b                                            ; $45a4: $04
	ld [bc], a                                       ; $45a5: $02
	inc bc                                           ; $45a6: $03
	db $fd                                           ; $45a7: $fd
	ld a, a                                          ; $45a8: $7f
	db $f4                                           ; $45a9: $f4
	sub l                                            ; $45aa: $95
	ld a, d                                          ; $45ab: $7a
	ld [$245f], sp                                   ; $45ac: $08 $5f $24
	ld a, b                                          ; $45af: $78
	nop                                              ; $45b0: $00
	ret z                                            ; $45b1: $c8

	nop                                              ; $45b2: $00
	nop                                              ; $45b3: $00
	ret nz                                           ; $45b4: $c0

	ei                                               ; $45b5: $fb
	ld a, a                                          ; $45b6: $7f
	xor $9e                                          ; $45b7: $ee $9e
	ld d, l                                          ; $45b9: $55
	db $f4                                           ; $45ba: $f4
	ld [hl], a                                       ; $45bb: $77
	ldh a, [$9c]                                     ; $45bc: $f0 $9c
	ld a, [bc]                                       ; $45be: $0a
	nop                                              ; $45bf: $00
	ld bc, $7ff8                                     ; $45c0: $01 $f8 $7f
	and b                                            ; $45c3: $a0
	sbc [hl]                                         ; $45c4: $9e
	ld a, a                                          ; $45c5: $7f
	ld [hl], e                                       ; $45c6: $73
	db $ec                                           ; $45c7: $ec
	sbc [hl]                                         ; $45c8: $9e
	ld a, [hl+]                                      ; $45c9: $2a
	ld h, a                                          ; $45ca: $67
	ldh a, [hDisp0_BGP]                                     ; $45cb: $f0 $85
	inc c                                            ; $45cd: $0c
	rst AddAOntoHL                                          ; $45ce: $ef
	inc c                                            ; $45cf: $0c
	xor h                                            ; $45d0: $ac
	inc b                                            ; $45d1: $04
	ld e, l                                          ; $45d2: $5d
	ld b, $aa                                        ; $45d3: $06 $aa
	dec de                                           ; $45d5: $1b
	ld de, $0a00                                     ; $45d6: $11 $00 $0a
	ld de, $0e00                                     ; $45d9: $11 $00 $0e
	rst FarCall                                          ; $45dc: $f7
	add hl, bc                                       ; $45dd: $09
	rst FarCall                                          ; $45de: $f7
	add hl, bc                                       ; $45df: $09
	ld d, h                                          ; $45e0: $54
	add hl, bc                                       ; $45e1: $09
	xor d                                            ; $45e2: $aa
	nop                                              ; $45e3: $00
	ld e, l                                          ; $45e4: $5d
	nop                                              ; $45e5: $00
	add hl, bc                                       ; $45e6: $09
	ld [hl], e                                       ; $45e7: $73
	cp $94                                           ; $45e8: $fe $94
	rst $38                                          ; $45ea: $ff
	add b                                            ; $45eb: $80
	rst $38                                          ; $45ec: $ff
	add b                                            ; $45ed: $80
	sbc l                                            ; $45ee: $9d
	ret nz                                           ; $45ef: $c0

	ld l, d                                          ; $45f0: $6a
	ret nz                                           ; $45f1: $c0

	ld d, l                                          ; $45f2: $55
	ret nz                                           ; $45f3: $c0

	ld b, b                                          ; $45f4: $40
	ld a, e                                          ; $45f5: $7b
	cp $8d                                           ; $45f6: $fe $8d
	add b                                            ; $45f8: $80
	ret nz                                           ; $45f9: $c0

	db $f4                                           ; $45fa: $f4
	dec de                                           ; $45fb: $1b
	db $fc                                           ; $45fc: $fc
	rra                                              ; $45fd: $1f
	db $fc                                           ; $45fe: $fc
	rra                                              ; $45ff: $1f
	ldh a, [$1f]                                     ; $4600: $f0 $1f
	ld l, [hl]                                       ; $4602: $6e
	rra                                              ; $4603: $1f
	ld a, [bc]                                       ; $4604: $0a
	inc b                                            ; $4605: $04
	dec bc                                           ; $4606: $0b
	inc b                                            ; $4607: $04
	inc e                                            ; $4608: $1c
	ccf                                              ; $4609: $3f
	ld l, a                                          ; $460a: $6f
	ld b, b                                          ; $460b: $40
	ld [hl], a                                       ; $460c: $77
	adc h                                            ; $460d: $8c
	adc [hl]                                         ; $460e: $8e
	ld h, b                                          ; $460f: $60
	nop                                              ; $4610: $00
	ret nz                                           ; $4611: $c0

	jr nz, jr_04b_4614                               ; $4612: $20 $00

jr_04b_4614:
	ret nz                                           ; $4614: $c0

	add c                                            ; $4615: $81
	cp $a8                                           ; $4616: $fe $a8
	rst SubAFromDE                                          ; $4618: $df
	ld b, c                                          ; $4619: $41
	rst $38                                          ; $461a: $ff
	ld a, [hl]                                       ; $461b: $7e
	ld bc, $049b                                     ; $461c: $01 $9b $04
	dec c                                            ; $461f: $0d
	ld l, e                                          ; $4620: $6b
	sbc a                                            ; $4621: $9f
	sub b                                            ; $4622: $90
	ld [bc], a                                       ; $4623: $02
	db $fc                                           ; $4624: $fc
	cp l                                             ; $4625: $bd
	ret nz                                           ; $4626: $c0

	ld [$10f0], sp                                   ; $4627: $08 $f0 $10
	ldh [$a8], a                                     ; $462a: $e0 $a8
	ld b, b                                          ; $462c: $40
	sub b                                            ; $462d: $90
	ld h, b                                          ; $462e: $60
	nop                                              ; $462f: $00
	nop                                              ; $4630: $00
	ld d, a                                          ; $4631: $57
	ld a, e                                          ; $4632: $7b
	jp nc, Jump_04b_459e                             ; $4633: $d2 $9e $45

	or $9a                                           ; $4636: $f6 $9a
	push af                                          ; $4638: $f5
	ld a, [bc]                                       ; $4639: $0a
	rst $38                                          ; $463a: $ff
	nop                                              ; $463b: $00
	ld e, a                                          ; $463c: $5f
	ld a, e                                          ; $463d: $7b
	db $ec                                           ; $463e: $ec
	sbc [hl]                                         ; $463f: $9e
	dec d                                            ; $4640: $15
	ld l, e                                          ; $4641: $6b
	ld e, d                                          ; $4642: $5a
	add b                                            ; $4643: $80
	ld d, e                                          ; $4644: $53
	xor a                                            ; $4645: $af
	and a                                            ; $4646: $a7
	ld e, a                                          ; $4647: $5f
	db $fd                                           ; $4648: $fd
	rrca                                             ; $4649: $0f
	db $ed                                           ; $464a: $ed
	dec e                                            ; $464b: $1d
	ld c, e                                          ; $464c: $4b
	dec e                                            ; $464d: $1d
	xor h                                            ; $464e: $ac
	add hl, de                                       ; $464f: $19
	ld e, h                                          ; $4650: $5c
	add hl, sp                                       ; $4651: $39
	inc e                                            ; $4652: $1c
	add hl, sp                                       ; $4653: $39
	cp $fd                                           ; $4654: $fe $fd
	db $fd                                           ; $4656: $fd

jr_04b_4657:
	cp $f6                                           ; $4657: $fe $f6
	rst $38                                          ; $4659: $ff
	rst FarCall                                          ; $465a: $f7
	cp $fa                                           ; $465b: $fe $fa
	rst $38                                          ; $465d: $ff
	sbc e                                            ; $465e: $9b
	cp $9b                                           ; $465f: $fe $9b
	cp $1f                                           ; $4661: $fe $1f
	sub h                                            ; $4663: $94
	ld a, [$ff00]                                    ; $4664: $fa $00 $ff
	ld d, b                                          ; $4667: $50
	xor a                                            ; $4668: $af
	xor d                                            ; $4669: $aa
	ld d, l                                          ; $466a: $55
	ld d, l                                          ; $466b: $55
	xor d                                            ; $466c: $aa
	xor d                                            ; $466d: $aa
	ld d, l                                          ; $466e: $55
	ld [hl], a                                       ; $466f: $77
	add $7b                                          ; $4670: $c6 $7b
	call nz, $0f9a                                   ; $4672: $c4 $9a $0f
	xor a                                            ; $4675: $af
	dec bc                                           ; $4676: $0b
	ld e, a                                          ; $4677: $5f
	rrca                                             ; $4678: $0f
	ld [hl], a                                       ; $4679: $77
	jr z, jr_04b_4657                                ; $467a: $28 $db

	rst $38                                          ; $467c: $ff
	sbc c                                            ; $467d: $99
	ld [$d5c0], a                                    ; $467e: $ea $c0 $d5
	ldh [$da], a                                     ; $4681: $e0 $da
	ldh [$5f], a                                     ; $4683: $e0 $5f
	ldh a, [rPCM34]                                  ; $4685: $f0 $77
	ld h, h                                          ; $4687: $64
	ld a, a                                          ; $4688: $7f
	db $fc                                           ; $4689: $fc
	sbc b                                            ; $468a: $98
	ld [bc], a                                       ; $468b: $02
	nop                                              ; $468c: $00
	ld a, [$f201]                                    ; $468d: $fa $01 $f2
	ld sp, hl                                        ; $4690: $f9
	di                                               ; $4691: $f3
	ld a, e                                          ; $4692: $7b
	cp $90                                           ; $4693: $fe $90
	db $dd                                           ; $4695: $dd
	nop                                              ; $4696: $00
	ld [$fd08], a                                    ; $4697: $ea $08 $fd
	nop                                              ; $469a: $00
	ld a, [hl]                                       ; $469b: $7e
	ld [$009d], sp                                   ; $469c: $08 $9d $00
	xor d                                            ; $469f: $aa
	ret z                                            ; $46a0: $c8

	db $dd                                           ; $46a1: $dd
	ret nz                                           ; $46a2: $c0

	rst $38                                          ; $46a3: $ff
	ld l, d                                          ; $46a4: $6a
	jp z, $809e                                      ; $46a5: $ca $9e $80

	ld l, d                                          ; $46a8: $6a
	sub $7f                                          ; $46a9: $d6 $7f
	jp z, Jump_04b_6efd                              ; $46ab: $ca $fd $6e

	jp nc, $f077                                     ; $46ae: $d2 $77 $f0

	ld a, a                                          ; $46b1: $7f
	sub c                                            ; $46b2: $91
	db $fd                                           ; $46b3: $fd
	sbc b                                            ; $46b4: $98
	ld e, b                                          ; $46b5: $58
	nop                                              ; $46b6: $00
	add hl, sp                                       ; $46b7: $39
	nop                                              ; $46b8: $00
	add hl, de                                       ; $46b9: $19
	nop                                              ; $46ba: $00
	jr c, jr_04b_4738                                ; $46bb: $38 $7b

	ld hl, sp-$63                                    ; $46bd: $f8 $9d

Call_04b_46bf:
	and b                                            ; $46bf: $a0
	ld [$9cfb], sp                                   ; $46c0: $08 $fb $9c
	jr nc, jr_04b_46c5                               ; $46c3: $30 $00

jr_04b_46c5:
	cp b                                             ; $46c5: $b8
	ld [hl], e                                       ; $46c6: $73
	call z, $f16b                                    ; $46c7: $cc $6b $f1
	ld a, a                                          ; $46ca: $7f
	adc $80                                          ; $46cb: $ce $80
	ld [bc], a                                       ; $46cd: $02
	rlca                                             ; $46ce: $07
	inc bc                                           ; $46cf: $03
	dec bc                                           ; $46d0: $0b
	inc bc                                           ; $46d1: $03
	ld d, a                                          ; $46d2: $57
	inc bc                                           ; $46d3: $03
	xor e                                            ; $46d4: $ab
	inc bc                                           ; $46d5: $03
	rst $38                                          ; $46d6: $ff
	ld bc, $07f9                                     ; $46d7: $01 $f9 $07
	ldh a, [rAUD3ENA]                                ; $46da: $f0 $1a
	ret nz                                           ; $46dc: $c0

	db $f4                                           ; $46dd: $f4
	nop                                              ; $46de: $00
	ld [$d500], a                                    ; $46df: $ea $00 $d5
	nop                                              ; $46e2: $00
	rst $38                                          ; $46e3: $ff
	inc bc                                           ; $46e4: $03
	rst $38                                          ; $46e5: $ff
	rst $38                                          ; $46e6: $ff
	add b                                            ; $46e7: $80
	rlca                                             ; $46e8: $07
	call z, $8c07                                    ; $46e9: $cc $07 $8c
	sub c                                            ; $46ec: $91
	rlca                                             ; $46ed: $07
	inc l                                            ; $46ee: $2c
	rlca                                             ; $46ef: $07
	ld b, b                                          ; $46f0: $40
	rrca                                             ; $46f1: $0f
	ld hl, sp+$17                                    ; $46f2: $f8 $17
	ld hl, sp-$21                                    ; $46f4: $f8 $df
	ldh a, [rP1]                                     ; $46f6: $f0 $00
	ld hl, sp-$20                                    ; $46f8: $f8 $e0
	db $10                                           ; $46fa: $10
	rst FarCall                                          ; $46fb: $f7
	ld l, a                                          ; $46fc: $6f
	sub b                                            ; $46fd: $90
	rst FarCall                                          ; $46fe: $f7
	sbc [hl]                                         ; $46ff: $9e
	ld hl, sp-$0e                                    ; $4700: $f8 $f2
	ld [hl], a                                       ; $4702: $77
	sbc h                                            ; $4703: $9c
	ldh [$d3], a                                     ; $4704: $e0 $d3
	add b                                            ; $4706: $80
	dec de                                           ; $4707: $1b
	jr c, jr_04b_4728                                ; $4708: $38 $1e

	add hl, sp                                       ; $470a: $39
	inc e                                            ; $470b: $1c
	dec sp                                           ; $470c: $3b
	ld e, $38                                        ; $470d: $1e $38
	ld e, $38                                        ; $470f: $1e $38
	cpl                                              ; $4711: $2f
	ld a, $3e                                        ; $4712: $3e $3e
	cpl                                              ; $4714: $2f
	dec sp                                           ; $4715: $3b
	cpl                                              ; $4716: $2f
	sbc a                                            ; $4717: $9f
	ld a, d                                          ; $4718: $7a
	rra                                              ; $4719: $1f
	ld a, d                                          ; $471a: $7a
	sbc e                                            ; $471b: $9b
	ld a, e                                          ; $471c: $7b
	ld e, l                                          ; $471d: $5d
	dec sp                                           ; $471e: $3b
	cp c                                             ; $471f: $b9
	ld a, e                                          ; $4720: $7b
	ld sp, hl                                        ; $4721: $f9
	ld a, e                                          ; $4722: $7b
	pop af                                           ; $4723: $f1
	ld a, d                                          ; $4724: $7a
	ld [hl], c                                       ; $4725: $71
	sbc [hl]                                         ; $4726: $9e
	ld a, d                                          ; $4727: $7a

jr_04b_4728:
	ld l, [hl]                                       ; $4728: $6e
	sub d                                            ; $4729: $92
	halt                                             ; $472a: $76
	db $ec                                           ; $472b: $ec
	ld l, a                                          ; $472c: $6f
	db $fc                                           ; $472d: $fc
	sbc h                                            ; $472e: $9c
	adc $30                                          ; $472f: $ce $30
	rst $38                                          ; $4731: $ff
	ld a, d                                          ; $4732: $7a
	push de                                          ; $4733: $d5
	sub h                                            ; $4734: $94
	add b                                            ; $4735: $80
	ld a, a                                          ; $4736: $7f
	ld c, c                                          ; $4737: $49

jr_04b_4738:
	or [hl]                                          ; $4738: $b6
	pop bc                                           ; $4739: $c1
	cp $fb                                           ; $473a: $fe $fb
	inc b                                            ; $473c: $04
	db $fd                                           ; $473d: $fd
	cp $05                                           ; $473e: $fe $05
	ld a, e                                          ; $4740: $7b
	ld c, l                                          ; $4741: $4d
	adc b                                            ; $4742: $88
	ld [hl-], a                                      ; $4743: $32
	call $c423                                       ; $4744: $cd $23 $c4
	ld b, c                                          ; $4747: $41
	cp a                                             ; $4748: $bf
	nop                                              ; $4749: $00
	rst $38                                          ; $474a: $ff
	ld [hl], $c1                                     ; $474b: $36 $c1
	or $e1                                           ; $474d: $f6 $e1
	ei                                               ; $474f: $fb
	sbc c                                            ; $4750: $99
	cp e                                             ; $4751: $bb
	ld sp, hl                                        ; $4752: $f9
	ld e, e                                          ; $4753: $5b
	cp c                                             ; $4754: $b9
	ld e, e                                          ; $4755: $5b
	cp c                                             ; $4756: $b9
	ei                                               ; $4757: $fb
	ld sp, hl                                        ; $4758: $f9
	dec de                                           ; $4759: $1b
	ld a, e                                          ; $475a: $7b
	ld hl, sp-$78                                    ; $475b: $f8 $88
	dec sp                                           ; $475d: $3b
	reti                                             ; $475e: $d9


	and b                                            ; $475f: $a0
	sbc a                                            ; $4760: $9f
	add h                                            ; $4761: $84
	jp $ff80                                         ; $4762: $c3 $80 $ff


	cp a                                             ; $4765: $bf
	ret nz                                           ; $4766: $c0

	ret nz                                           ; $4767: $c0

	jp z, $e480                                      ; $4768: $ca $80 $e4

	add b                                            ; $476b: $80
	jp z, $ef80                                      ; $476c: $ca $80 $ef

	ld h, c                                          ; $476f: $61
	rst $38                                          ; $4770: $ff
	nop                                              ; $4771: $00
	ld c, a                                          ; $4772: $4f
	ld c, b                                          ; $4773: $48
	ld a, e                                          ; $4774: $7b
	cp l                                             ; $4775: $bd
	sub c                                            ; $4776: $91
	ld b, $ff                                        ; $4777: $06 $ff
	nop                                              ; $4779: $00
	ld h, l                                          ; $477a: $65
	nop                                              ; $477b: $00
	and d                                            ; $477c: $a2
	nop                                              ; $477d: $00
	rst $38                                          ; $477e: $ff
	ld a, a                                          ; $477f: $7f
	add b                                            ; $4780: $80
	rst $38                                          ; $4781: $ff
	nop                                              ; $4782: $00
	rrca                                             ; $4783: $0f
	ldh a, [rPCM34]                                  ; $4784: $f0 $77
	db $fc                                           ; $4786: $fc
	adc l                                            ; $4787: $8d
	inc bc                                           ; $4788: $03
	db $fc                                           ; $4789: $fc
	ld bc, $03aa                                     ; $478a: $01 $aa $03
	db $fc                                           ; $478d: $fc
	ld d, b                                          ; $478e: $50
	ld [$78f1], sp                                   ; $478f: $08 $f1 $78
	di                                               ; $4792: $f3
	ld [$08f7], sp                                   ; $4793: $08 $f7 $08
	ldh a, [$08]                                     ; $4796: $f0 $08
	ldh a, [rIF]                                     ; $4798: $f0 $0f
	halt                                             ; $479a: $76
	ld d, b                                          ; $479b: $50
	ld a, [hl]                                       ; $479c: $7e
	adc $7f                                          ; $479d: $ce $7f
	inc l                                            ; $479f: $2c
	ld a, [hl]                                       ; $47a0: $7e
	ei                                               ; $47a1: $fb
	ld [hl], l                                       ; $47a2: $75
	or $7a                                           ; $47a3: $f6 $7a
	ld e, a                                          ; $47a5: $5f
	ld a, e                                          ; $47a6: $7b
	ldh a, [$df]                                     ; $47a7: $f0 $df
	inc bc                                           ; $47a9: $03
	ld a, [hl]                                       ; $47aa: $7e
	db $db                                           ; $47ab: $db
	db $dd                                           ; $47ac: $dd
	inc bc                                           ; $47ad: $03
	db $dd                                           ; $47ae: $dd
	ld [bc], a                                       ; $47af: $02
	add b                                            ; $47b0: $80
	dec sp                                           ; $47b1: $3b
	ld bc, $01fd                                     ; $47b2: $01 $fd $01
	jr nz, @-$1e                                     ; $47b5: $20 $e0

	ld a, c                                          ; $47b7: $79
	ret nz                                           ; $47b8: $c0

	nop                                              ; $47b9: $00
	add b                                            ; $47ba: $80
	add h                                            ; $47bb: $84
	or c                                             ; $47bc: $b1
	cp a                                             ; $47bd: $bf
	cp a                                             ; $47be: $bf
	add hl, sp                                       ; $47bf: $39
	add hl, sp                                       ; $47c0: $39
	add b                                            ; $47c1: $80
	or c                                             ; $47c2: $b1
	add b                                            ; $47c3: $80
	add d                                            ; $47c4: $82
	ld a, a                                          ; $47c5: $7f
	ld [hl], b                                       ; $47c6: $70
	xor a                                            ; $47c7: $af
	ld [hl], b                                       ; $47c8: $70
	cpl                                              ; $47c9: $2f
	jr nc, jr_04b_480b                               ; $47ca: $30 $3f

	or b                                             ; $47cc: $b0
	rst SubAFromDE                                          ; $47cd: $df
	ldh a, [$cf]                                     ; $47ce: $f0 $cf
	sbc d                                            ; $47d0: $9a
	ldh a, [$3f]                                     ; $47d1: $f0 $3f
	and b                                            ; $47d3: $a0
	ccf                                              ; $47d4: $3f
	ld h, c                                          ; $47d5: $61
	halt                                             ; $47d6: $76
	xor $7e                                          ; $47d7: $ee $7e
	cp a                                             ; $47d9: $bf
	sub [hl]                                         ; $47da: $96
	inc e                                            ; $47db: $1c
	nop                                              ; $47dc: $00
	inc b                                            ; $47dd: $04
	add b                                            ; $47de: $80
	rra                                              ; $47df: $1f
	nop                                              ; $47e0: $00
	rla                                              ; $47e1: $17
	nop                                              ; $47e2: $00
	inc de                                           ; $47e3: $13
	ld a, d                                          ; $47e4: $7a
	adc $7f                                          ; $47e5: $ce $7f
	and h                                            ; $47e7: $a4
	add h                                            ; $47e8: $84
	ldh [rAUD2HIGH], a                               ; $47e9: $e0 $19
	ldh a, [$09]                                     ; $47eb: $f0 $09
	ldh [rAUD2HIGH], a                               ; $47ed: $e0 $19
	pop hl                                           ; $47ef: $e1
	ld e, $c1                                        ; $47f0: $1e $c1
	jr c, jr_04b_47fb                                ; $47f2: $38 $07

	ld hl, sp-$31                                    ; $47f4: $f8 $cf
	nop                                              ; $47f6: $00
	ld sp, hl                                        ; $47f7: $f9
	ld b, $4b                                        ; $47f8: $06 $4b
	add h                                            ; $47fa: $84

jr_04b_47fb:
	ldh [$0c], a                                     ; $47fb: $e0 $0c
	db $e4                                           ; $47fd: $e4
	add hl, bc                                       ; $47fe: $09
	add a                                            ; $47ff: $87
	ld l, b                                          ; $4800: $68
	inc bc                                           ; $4801: $03
	inc c                                            ; $4802: $0c
	or a                                             ; $4803: $b7
	ld a, d                                          ; $4804: $7a
	ld e, a                                          ; $4805: $5f
	sbc h                                            ; $4806: $9c
	db $fd                                           ; $4807: $fd
	ld [bc], a                                       ; $4808: $02
	add b                                            ; $4809: $80
	ld a, e                                          ; $480a: $7b

jr_04b_480b:
	adc d                                            ; $480b: $8a
	sbc [hl]                                         ; $480c: $9e
	ld b, c                                          ; $480d: $41
	ld a, c                                          ; $480e: $79
	and b                                            ; $480f: $a0
	ld a, l                                          ; $4810: $7d
	adc b                                            ; $4811: $88
	ld a, a                                          ; $4812: $7f
	ldh [c], a                                       ; $4813: $e2
	rst $38                                          ; $4814: $ff
	ld a, l                                          ; $4815: $7d
	ret nz                                           ; $4816: $c0

	ld a, [hl]                                       ; $4817: $7e
	jr nz, @+$7f                                     ; $4818: $20 $7d

	ld [bc], a                                       ; $481a: $02
	ld l, a                                          ; $481b: $6f
	ld [bc], a                                       ; $481c: $02
	ld a, a                                          ; $481d: $7f
	add b                                            ; $481e: $80
	ld a, d                                          ; $481f: $7a
	inc d                                            ; $4820: $14
	sbc [hl]                                         ; $4821: $9e
	rst $38                                          ; $4822: $ff
	ld h, [hl]                                       ; $4823: $66
	ldh a, [c]                                       ; $4824: $f2
	ld [hl], a                                       ; $4825: $77
	ld [hl], b                                       ; $4826: $70
	add e                                            ; $4827: $83
	ld [hl], a                                       ; $4828: $77
	daa                                              ; $4829: $27
	cpl                                              ; $482a: $2f
	rst FarCall                                          ; $482b: $f7
	ld [hl], $67                                     ; $482c: $36 $67
	xor a                                            ; $482e: $af
	ld [hl], $6b                                     ; $482f: $36 $6b
	scf                                              ; $4831: $37
	cp l                                             ; $4832: $bd
	inc sp                                           ; $4833: $33
	db $fd                                           ; $4834: $fd
	inc sp                                           ; $4835: $33
	cp $31                                           ; $4836: $fe $31
	ld a, [$7074]                                    ; $4838: $fa $74 $70
	rst $38                                          ; $483b: $ff
	ld [$d5f0], a                                    ; $483c: $ea $f0 $d5
	ld h, b                                          ; $483f: $60
	ld [$bfc0], a                                    ; $4840: $ea $c0 $bf
	ret nz                                           ; $4843: $c0

	ld [hl], a                                       ; $4844: $77

jr_04b_4845:
	inc h                                            ; $4845: $24
	ld a, a                                          ; $4846: $7f
	jp c, $db7f                                      ; $4847: $da $7f $db

	ld l, a                                          ; $484a: $6f
	add $6f                                          ; $484b: $c6 $6f
	cp $7b                                           ; $484d: $fe $7b
	db $fd                                           ; $484f: $fd
	sbc [hl]                                         ; $4850: $9e
	add hl, hl                                       ; $4851: $29
	halt                                             ; $4852: $76
	ld a, [hl-]                                      ; $4853: $3a
	ld [hl], a                                       ; $4854: $77
	inc sp                                           ; $4855: $33
	sub a                                            ; $4856: $97
	ld e, [hl]                                       ; $4857: $5e
	nop                                              ; $4858: $00
	cp $1d                                           ; $4859: $fe $1d
	add hl, bc                                       ; $485b: $09
	or $00                                           ; $485c: $f6 $00
	sbc [hl]                                         ; $485e: $9e
	ld a, d                                          ; $485f: $7a
	db $ed                                           ; $4860: $ed
	ld [hl], e                                       ; $4861: $73
	ldh a, [hDisp0_SCX]                                     ; $4862: $f0 $84
	or h                                             ; $4864: $b4
	ld c, b                                          ; $4865: $48
	inc bc                                           ; $4866: $03
	db $fc                                           ; $4867: $fc
	db $db                                           ; $4868: $db
	add hl, sp                                       ; $4869: $39
	dec sp                                           ; $486a: $3b
	ld e, c                                          ; $486b: $59
	ei                                               ; $486c: $fb
	ld bc, $0143                             ; $486d: $01 $43 $01
	rst $38                                          ; $4870: $ff
	ld sp, hl                                        ; $4871: $f9
	dec sp                                           ; $4872: $3b
	ld sp, hl                                        ; $4873: $f9
	rst $38                                          ; $4874: $ff
	ld a, c                                          ; $4875: $79
	ei                                               ; $4876: $fb
	ld a, c                                          ; $4877: $79
	sub l                                            ; $4878: $95
	rst $38                                          ; $4879: $ff
	adc d                                            ; $487a: $8a
	rst SubAFromDE                                          ; $487b: $df
	rst $38                                          ; $487c: $ff
	rst $38                                          ; $487d: $ff
	ret nz                                           ; $487e: $c0

	ld [hl], h                                       ; $487f: $74
	xor c                                            ; $4880: $a9
	sub a                                            ; $4881: $97
	push de                                          ; $4882: $d5
	adc [hl]                                         ; $4883: $8e
	xor $ff                                          ; $4884: $ee $ff
	rst $38                                          ; $4886: $ff
	ld d, b                                          ; $4887: $50
	rst $38                                          ; $4888: $ff
	xor d                                            ; $4889: $aa
	sbc $ff                                          ; $488a: $de $ff
	ld [hl], a                                       ; $488c: $77
	or l                                             ; $488d: $b5
	adc d                                            ; $488e: $8a
	add hl, sp                                       ; $488f: $39
	rst $38                                          ; $4890: $ff
	inc de                                           ; $4891: $13
	cp a                                             ; $4892: $bf
	sbc a                                            ; $4893: $9f
	rst $38                                          ; $4894: $ff
	inc de                                           ; $4895: $13
	call c, $ff88                                    ; $4896: $dc $88 $ff
	ld hl, sp-$01                                    ; $4899: $f8 $ff
	rlca                                             ; $489b: $07
	ld hl, sp+$07                                    ; $489c: $f8 $07
	add sp, -$47                                     ; $489e: $e8 $b9
	cp $f1                                           ; $48a0: $fe $f1
	cp $fc                                           ; $48a2: $fe $fc
	ld [hl], e                                       ; $48a4: $73
	sbc a                                            ; $48a5: $9f
	ld [hl], a                                       ; $48a6: $77
	cp $75                                           ; $48a7: $fe $75
	ld c, $7f                                        ; $48a9: $0e $7f
	ld sp, hl                                        ; $48ab: $f9
	sbc l                                            ; $48ac: $9d
	db $10                                           ; $48ad: $10
	rst AddAOntoHL                                          ; $48ae: $ef
	ld [hl], a                                       ; $48af: $77
	db $f4                                           ; $48b0: $f4
	ld a, c                                          ; $48b1: $79
	cp e                                             ; $48b2: $bb
	ld a, a                                          ; $48b3: $7f
	ld a, [hl-]                                      ; $48b4: $3a
	sbc c                                            ; $48b5: $99
	and b                                            ; $48b6: $a0
	xor h                                            ; $48b7: $ac
	ld e, b                                          ; $48b8: $58
	rra                                              ; $48b9: $1f
	rst AddAOntoHL                                          ; $48ba: $ef
	rra                                              ; $48bb: $1f
	ld [hl], e                                       ; $48bc: $73
	push bc                                          ; $48bd: $c5
	ld a, [hl]                                       ; $48be: $7e
	ld l, $9e                                        ; $48bf: $2e $9e
	dec hl                                           ; $48c1: $2b
	ld a, e                                          ; $48c2: $7b
	jr c, jr_04b_4845                                ; $48c3: $38 $80

	ld c, e                                          ; $48c5: $4b
	ld sp, rIE                                     ; $48c6: $31 $ff $ff
	ccf                                              ; $48c9: $3f
	daa                                              ; $48ca: $27
	ret nz                                           ; $48cb: $c0

	rst JumpTable                                          ; $48cc: $c7
	ld b, [hl]                                       ; $48cd: $46
	rst AddAOntoHL                                          ; $48ce: $ef
	ld h, b                                          ; $48cf: $60
	pop af                                           ; $48d0: $f1
	ld d, c                                          ; $48d1: $51
	rst $38                                          ; $48d2: $ff
	adc $cf                                          ; $48d3: $ce $cf
	add b                                            ; $48d5: $80
	rst JumpTable                                          ; $48d6: $c7
	nop                                              ; $48d7: $00
	add a                                            ; $48d8: $87
	add b                                            ; $48d9: $80
	ld sp, hl                                        ; $48da: $f9
	ld a, b                                          ; $48db: $78
	ld b, c                                          ; $48dc: $41
	db $f4                                           ; $48dd: $f4
	pop bc                                           ; $48de: $c1
	db $f4                                           ; $48df: $f4
	adc b                                            ; $48e0: $88
	ld [$9595], a                                    ; $48e1: $ea $95 $95
	sub e                                            ; $48e4: $93
	ld [$ff81], a                                    ; $48e5: $ea $81 $ff
	sub [hl]                                         ; $48e8: $96
	rst $38                                          ; $48e9: $ff
	cp $ff                                           ; $48ea: $fe $ff
	ld [bc], a                                       ; $48ec: $02
	ld bc, $0003                                     ; $48ed: $01 $03 $00
	ld b, $7b                                        ; $48f0: $06 $7b
	db $fc                                           ; $48f2: $fc
	ld a, a                                          ; $48f3: $7f
	ld hl, sp+$7f                                    ; $48f4: $f8 $7f
	xor [hl]                                         ; $48f6: $ae
	sbc e                                            ; $48f7: $9b
	ld a, [$15f5]                                    ; $48f8: $fa $f5 $15
	ld a, [$3867]                                    ; $48fb: $fa $67 $38
	sbc l                                            ; $48fe: $9d

jr_04b_48ff:
	xor e                                            ; $48ff: $ab
	ld d, h                                          ; $4900: $54
	ld [hl], a                                       ; $4901: $77
	sbc [hl]                                         ; $4902: $9e
	sub e                                            ; $4903: $93
	ld d, a                                          ; $4904: $57
	xor b                                            ; $4905: $a8
	ldh a, [$08]                                     ; $4906: $f0 $08
	di                                               ; $4908: $f3
	inc c                                            ; $4909: $0c
	ld a, [$fd05]                                    ; $490a: $fa $05 $fd
	ld [bc], a                                       ; $490d: $02
	ld a, [$7705]                                    ; $490e: $fa $05 $77
	ldh a, [$99]                                     ; $4911: $f0 $99
	push de                                          ; $4913: $d5
	ld a, [hl+]                                      ; $4914: $2a
	rra                                              ; $4915: $1f
	nop                                              ; $4916: $00
	adc a                                            ; $4917: $8f
	nop                                              ; $4918: $00
	ld l, h                                          ; $4919: $6c

jr_04b_491a:
	sub b                                            ; $491a: $90
	ld l, a                                          ; $491b: $6f
	db $fc                                           ; $491c: $fc
	ld [hl], a                                       ; $491d: $77
	call nc, $f017                                   ; $491e: $d4 $17 $f0
	sub l                                            ; $4921: $95
	rst SubAFromDE                                          ; $4922: $df
	jr nc, jr_04b_491a                               ; $4923: $30 $f5

	ld a, [de]                                       ; $4925: $1a
	cp d                                             ; $4926: $ba
	ld d, l                                          ; $4927: $55
	ld d, l                                          ; $4928: $55
	cp d                                             ; $4929: $ba
	or d                                             ; $492a: $b2
	ld e, l                                          ; $492b: $5d
	ld h, a                                          ; $492c: $67
	ldh [$5f], a                                     ; $492d: $e0 $5f
	db $e4                                           ; $492f: $e4
	ld [hl], a                                       ; $4930: $77
	db $fc                                           ; $4931: $fc
	sbc l                                            ; $4932: $9d
	ld [$4f15], a                                    ; $4933: $ea $15 $4f
	ldh a, [$7f]                                     ; $4936: $f0 $7f
	adc b                                            ; $4938: $88
	sbc l                                            ; $4939: $9d
	ldh [$df], a                                     ; $493a: $e0 $df
	ld l, h                                          ; $493c: $6c
	ld d, d                                          ; $493d: $52
	sub c                                            ; $493e: $91
	cp $01                                           ; $493f: $fe $01
	cp c                                             ; $4941: $b9
	rst $38                                          ; $4942: $ff
	push af                                          ; $4943: $f5
	rst GetHLinHL                                          ; $4944: $cf
	inc bc                                           ; $4945: $03
	call nz, $fc13                                   ; $4946: $c4 $13 $fc
	nop                                              ; $4949: $00
	nop                                              ; $494a: $00
	and b                                            ; $494b: $a0
	ld e, a                                          ; $494c: $5f
	ld a, e                                          ; $494d: $7b
	ldh a, [$de]                                     ; $494e: $f0 $de
	rst $38                                          ; $4950: $ff
	sub h                                            ; $4951: $94
	di                                               ; $4952: $f3
	rst $38                                          ; $4953: $ff
	db $fd                                           ; $4954: $fd
	ld a, c                                          ; $4955: $79
	call $0179                                       ; $4956: $cd $79 $01
	ld bc, $f905                                     ; $4959: $01 $05 $f9
	ld a, l                                          ; $495c: $7d
	ld a, e                                          ; $495d: $7b
	cp $95                                           ; $495e: $fe $95
	ld l, l                                          ; $4960: $6d
	ld sp, hl                                        ; $4961: $f9
	ld c, l                                          ; $4962: $4d
	cp c                                             ; $4963: $b9
	sub l                                            ; $4964: $95
	ld [$95ea], a                                    ; $4965: $ea $ea $95
	sbc a                                            ; $4968: $9f
	cp a                                             ; $4969: $bf
	ld a, e                                          ; $496a: $7b
	jr nc, jr_04b_48ff                               ; $496b: $30 $92

	xor d                                            ; $496d: $aa
	jp z, $85b5                                      ; $496e: $ca $b5 $85

	cp d                                             ; $4971: $ba
	jp z, $00b5                                      ; $4972: $ca $b5 $00

	rst $38                                          ; $4975: $ff
	and b                                            ; $4976: $a0
	ld b, b                                          ; $4977: $40
	ret nz                                           ; $4978: $c0

	rst $38                                          ; $4979: $ff
	ld [hl], a                                       ; $497a: $77
	ld b, [hl]                                       ; $497b: $46
	sbc c                                            ; $497c: $99
	xor a                                            ; $497d: $af
	ld d, b                                          ; $497e: $50
	ld e, a                                          ; $497f: $5f
	and b                                            ; $4980: $a0
	xor a                                            ; $4981: $af
	ld d, b                                          ; $4982: $50
	ld [hl], b                                       ; $4983: $70
	xor l                                            ; $4984: $ad
	ld l, [hl]                                       ; $4985: $6e
	xor a                                            ; $4986: $af
	ld l, d                                          ; $4987: $6a
	ld h, b                                          ; $4988: $60
	halt                                             ; $4989: $76
	ld e, $5f                                        ; $498a: $1e $5f
	ldh a, [$99]                                     ; $498c: $f0 $99
	ld [bc], a                                       ; $498e: $02
	cp $f9                                           ; $498f: $fe $f9
	dec b                                            ; $4991: $05
	ld a, [bc]                                       ; $4992: $0a
	ei                                               ; $4993: $fb
	ld a, c                                          ; $4994: $79
	ld [hl], d                                       ; $4995: $72
	ld a, a                                          ; $4996: $7f
	cp $99                                           ; $4997: $fe $99
	inc c                                            ; $4999: $0c
	ld sp, hl                                        ; $499a: $f9
	rrca                                             ; $499b: $0f
	ldh a, [rAUD1SWEEP]                              ; $499c: $f0 $10
	or a                                             ; $499e: $b7
	ld a, d                                          ; $499f: $7a
	adc d                                            ; $49a0: $8a
	adc [hl]                                         ; $49a1: $8e
	inc de                                           ; $49a2: $13
	ccf                                              ; $49a3: $3f
	ld de, $317f                                     ; $49a4: $11 $7f $31
	ld a, a                                          ; $49a7: $7f
	ld d, c                                          ; $49a8: $51
	rst $38                                          ; $49a9: $ff
	or d                                             ; $49aa: $b2
	rst $38                                          ; $49ab: $ff
	ldh a, [c]                                       ; $49ac: $f2
	cp $c0                                           ; $49ad: $fe $c0
	push bc                                          ; $49af: $c5
	ld h, b                                          ; $49b0: $60
	ld [$7a3f], a                                    ; $49b1: $ea $3f $7a
	ld h, d                                          ; $49b4: $62
	rst SubAFromDE                                          ; $49b5: $df
	rst $38                                          ; $49b6: $ff
	sub d                                            ; $49b7: $92
	inc b                                            ; $49b8: $04
	cp a                                             ; $49b9: $bf
	ld a, a                                          ; $49ba: $7f
	nop                                              ; $49bb: $00
	ld a, a                                          ; $49bc: $7f
	nop                                              ; $49bd: $00
	rra                                              ; $49be: $1f
	rst $38                                          ; $49bf: $ff
	inc l                                            ; $49c0: $2c
	rst $38                                          ; $49c1: $ff
	db $ec                                           ; $49c2: $ec
	rst $38                                          ; $49c3: $ff
	inc e                                            ; $49c4: $1c
	ld a, d                                          ; $49c5: $7a
	ld l, h                                          ; $49c6: $6c
	adc d                                            ; $49c7: $8a
	jr c, @+$01                                      ; $49c8: $38 $ff

	ld e, b                                          ; $49ca: $58
	cp a                                             ; $49cb: $bf
	db $ec                                           ; $49cc: $ec
	rra                                              ; $49cd: $1f
	ld a, [$23fd]                                    ; $49ce: $fa $fd $23
	ld a, [$f121]                                    ; $49d1: $fa $21 $f1
	ld h, b                                          ; $49d4: $60
	ld hl, sp+$40                                    ; $49d5: $f8 $40
	ld hl, sp+$40                                    ; $49d7: $f8 $40
	db $fc                                           ; $49d9: $fc
	ld b, b                                          ; $49da: $40
	rst $38                                          ; $49db: $ff
	ldh [$7b], a                                     ; $49dc: $e0 $7b
	and [hl]                                         ; $49de: $a6
	ld a, l                                          ; $49df: $7d
	ld [$a07b], a                                    ; $49e0: $ea $7b $a0
	ld a, h                                          ; $49e3: $7c
	cp a                                             ; $49e4: $bf
	sbc b                                            ; $49e5: $98
	ld b, b                                          ; $49e6: $40
	ccf                                              ; $49e7: $3f
	jr nz, jr_04b_4a09                               ; $49e8: $20 $1f

	db $10                                           ; $49ea: $10
	rrca                                             ; $49eb: $0f
	ret z                                            ; $49ec: $c8

	ld [hl], e                                       ; $49ed: $73
	sbc d                                            ; $49ee: $9a
	ld a, [hl]                                       ; $49ef: $7e
	ld a, [hl+]                                      ; $49f0: $2a
	sbc d                                            ; $49f1: $9a
	xor a                                            ; $49f2: $af
	ld [$f515], a                                    ; $49f3: $ea $15 $f5
	ld a, [bc]                                       ; $49f6: $0a
	halt                                             ; $49f7: $76
	cp b                                             ; $49f8: $b8
	ld a, a                                          ; $49f9: $7f
	ld hl, sp-$72                                    ; $49fa: $f8 $8e
	ret nc                                           ; $49fc: $d0

	cpl                                              ; $49fd: $2f
	rst $38                                          ; $49fe: $ff
	rst $38                                          ; $49ff: $ff
	ld a, [bc]                                       ; $4a00: $0a
	rst $38                                          ; $4a01: $ff
	dec b                                            ; $4a02: $05
	rst $38                                          ; $4a03: $ff
	ld [bc], a                                       ; $4a04: $02
	rst $38                                          ; $4a05: $ff
	add l                                            ; $4a06: $85
	ld a, a                                          ; $4a07: $7f
	ld [bc], a                                       ; $4a08: $02

jr_04b_4a09:
	rst $38                                          ; $4a09: $ff
	and c                                            ; $4a0a: $a1
	ld e, [hl]                                       ; $4a0b: $5e
	nop                                              ; $4a0c: $00
	ld a, e                                          ; $4a0d: $7b
	ld h, $7e                                        ; $4a0e: $26 $7e
	jp hl                                            ; $4a10: $e9


	sbc [hl]                                         ; $4a11: $9e
	ld d, [hl]                                       ; $4a12: $56
	ld l, e                                          ; $4a13: $6b
	db $fc                                           ; $4a14: $fc
	sbc h                                            ; $4a15: $9c
	ld a, [hl+]                                      ; $4a16: $2a
	push de                                          ; $4a17: $d5
	ld b, b                                          ; $4a18: $40
	ld a, e                                          ; $4a19: $7b
	rst GetHLinHL                                          ; $4a1a: $cf
	ld h, a                                          ; $4a1b: $67
	db $fc                                           ; $4a1c: $fc
	sbc [hl]                                         ; $4a1d: $9e
	ld d, l                                          ; $4a1e: $55
	ld a, e                                          ; $4a1f: $7b
	ld [hl], $63                                     ; $4a20: $36 $63
	ld d, l                                          ; $4a22: $55
	ld [hl], e                                       ; $4a23: $73
	db $ec                                           ; $4a24: $ec
	ld a, [hl]                                       ; $4a25: $7e
	or $57                                           ; $4a26: $f6 $57
	ldh a, [$3f]                                     ; $4a28: $f0 $3f
	cp $7d                                           ; $4a2a: $fe $7d
	and a                                            ; $4a2c: $a7
	sbc h                                            ; $4a2d: $9c
	ld b, e                                          ; $4a2e: $43
	rst $38                                          ; $4a2f: $ff
	ld [$1e77], a                                    ; $4a30: $ea $77 $1e

jr_04b_4a33:
	sbc $ff                                          ; $4a33: $de $ff
	sbc b                                            ; $4a35: $98
	ld d, e                                          ; $4a36: $53
	xor a                                            ; $4a37: $af
	ld e, c                                          ; $4a38: $59
	rlca                                             ; $4a39: $07
	push af                                          ; $4a3a: $f5
	ei                                               ; $4a3b: $fb
	di                                               ; $4a3c: $f3
	ld l, [hl]                                       ; $4a3d: $6e
	cp $82                                           ; $4a3e: $fe $82
	rst $38                                          ; $4a40: $ff
	ld h, e                                          ; $4a41: $63
	sbc a                                            ; $4a42: $9f
	ld a, [hl-]                                      ; $4a43: $3a
	rst GetHLinHL                                          ; $4a44: $cf
	xor d                                            ; $4a45: $aa
	ld e, a                                          ; $4a46: $5f
	ld c, l                                          ; $4a47: $4d
	cp c                                             ; $4a48: $b9
	add l                                            ; $4a49: $85
	ld a, c                                          ; $4a4a: $79
	xor c                                            ; $4a4b: $a9
	ld bc, $fd01                                     ; $4a4c: $01 $01 $fd
	ld sp, hl                                        ; $4a4f: $f9
	db $fd                                           ; $4a50: $fd
	ld e, l                                          ; $4a51: $5d
	xor l                                            ; $4a52: $ad
	rst AddAOntoHL                                          ; $4a53: $ef
	dec e                                            ; $4a54: $1d
	ld a, l                                          ; $4a55: $7d
	adc l                                            ; $4a56: $8d
	push bc                                          ; $4a57: $c5
	cp d                                             ; $4a58: $ba
	jp nz, $c1bd                                     ; $4a59: $c2 $bd $c1

	cp [hl]                                          ; $4a5c: $be
	ld a, c                                          ; $4a5d: $79

jr_04b_4a5e:
	inc sp                                           ; $4a5e: $33
	ld a, e                                          ; $4a5f: $7b
	cp $9b                                           ; $4a60: $fe $9b
	ret nc                                           ; $4a62: $d0

	cp a                                             ; $4a63: $bf
	xor d                                            ; $4a64: $aa
	rst $38                                          ; $4a65: $ff
	halt                                             ; $4a66: $76
	call z, $c47e                                    ; $4a67: $cc $7e $c4
	halt                                             ; $4a6a: $76
	ld [bc], a                                       ; $4a6b: $02
	sbc h                                            ; $4a6c: $9c
	ld a, [bc]                                       ; $4a6d: $0a
	push af                                          ; $4a6e: $f5
	ld bc, $4577                                     ; $4a6f: $01 $77 $45
	sub b                                            ; $4a72: $90
	nop                                              ; $4a73: $00
	rst SubAFromDE                                          ; $4a74: $df
	jr c, jr_04b_4a5e                                ; $4a75: $38 $e7

	daa                                              ; $4a77: $27
	ldh [rAUD4LEN], a                                ; $4a78: $e0 $20
	db $fd                                           ; $4a7a: $fd
	dec e                                            ; $4a7b: $1d
	ld [$00ea], a                                    ; $4a7c: $ea $ea $00
	add hl, hl                                       ; $4a7f: $29
	rst SubAFromBC                                          ; $4a80: $e7
	rst SubAFromBC                                          ; $4a81: $e7
	ld [hl], a                                       ; $4a82: $77
	sbc e                                            ; $4a83: $9b
	sub [hl]                                         ; $4a84: $96

jr_04b_4a85:
	ei                                               ; $4a85: $fb
	db $fc                                           ; $4a86: $fc

jr_04b_4a87:
	rlca                                             ; $4a87: $07
	ld h, a                                          ; $4a88: $67
	nop                                              ; $4a89: $00
	ld c, $84                                        ; $4a8a: $0e $84
	sbc a                                            ; $4a8c: $9f
	adc b                                            ; $4a8d: $88
	ld a, c                                          ; $4a8e: $79
	ld [hl], b                                       ; $4a8f: $70
	ld a, a                                          ; $4a90: $7f
	and $97                                          ; $4a91: $e6 $97
	add b                                            ; $4a93: $80
	ld b, b                                          ; $4a94: $40
	ret nz                                           ; $4a95: $c0

	ld b, c                                          ; $4a96: $41
	ldh [rIE], a                                     ; $4a97: $e0 $ff
	ld bc, $7987                                     ; $4a99: $01 $87 $79
	cp e                                             ; $4a9c: $bb
	adc e                                            ; $4a9d: $8b
	add e                                            ; $4a9e: $83
	ld [bc], a                                       ; $4a9f: $02
	ld b, a                                          ; $4aa0: $47
	ld [hl], a                                       ; $4aa1: $77
	db $fc                                           ; $4aa2: $fc
	ld h, [hl]                                       ; $4aa3: $66
	db $fc                                           ; $4aa4: $fc
	add $fc                                          ; $4aa5: $c6 $fc
	db $ed                                           ; $4aa7: $ed
	ld hl, sp+$3f                                    ; $4aa8: $f8 $3f
	ld hl, sp-$04                                    ; $4aaa: $f8 $fc
	jr nc, jr_04b_4a85                               ; $4aac: $30 $d7

	jr c, jr_04b_4a87                                ; $4aae: $38 $d7

	jr c, jr_04b_4a33                                ; $4ab0: $38 $81

	db $fc                                           ; $4ab2: $fc
	add b                                            ; $4ab3: $80
	add hl, bc                                       ; $4ab4: $09

Jump_04b_4ab5:
	add [hl]                                         ; $4ab5: $86
	inc e                                            ; $4ab6: $1c
	inc bc                                           ; $4ab7: $03
	nop                                              ; $4ab8: $00
	nop                                              ; $4ab9: $00
	ld bc, $28fe                                     ; $4aba: $01 $fe $28
	rst SubAFromHL                                          ; $4abd: $d7
	ld l, h                                          ; $4abe: $6c
	rra                                              ; $4abf: $1f
	or [hl]                                          ; $4ac0: $b6
	rrca                                             ; $4ac1: $0f
	ld d, a                                          ; $4ac2: $57
	cpl                                              ; $4ac3: $2f
	dec hl                                           ; $4ac4: $2b
	rst SubAFromHL                                          ; $4ac5: $d7
	db $d3                                           ; $4ac6: $d3
	cpl                                              ; $4ac7: $2f
	xor e                                            ; $4ac8: $ab
	ld [hl], a                                       ; $4ac9: $77
	rst SubAFromHL                                          ; $4aca: $d7
	ccf                                              ; $4acb: $3f
	rst AddAOntoHL                                          ; $4acc: $ef
	rra                                              ; $4acd: $1f
	ret nc                                           ; $4ace: $d0

	cp a                                             ; $4acf: $bf
	add sp, -$61                                     ; $4ad0: $e8 $9f
	db $f4                                           ; $4ad2: $f4
	add h                                            ; $4ad3: $84
	adc a                                            ; $4ad4: $8f
	ei                                               ; $4ad5: $fb
	rlca                                             ; $4ad6: $07
	cp $03                                           ; $4ad7: $fe $03
	cp $07                                           ; $4ad9: $fe $07
	db $f4                                           ; $4adb: $f4
	rrca                                             ; $4adc: $0f
	add sp, $1f                                      ; $4add: $e8 $1f
	rlca                                             ; $4adf: $07
	db $e4                                           ; $4ae0: $e4
	inc bc                                           ; $4ae1: $03
	ldh [c], a                                       ; $4ae2: $e2
	nop                                              ; $4ae3: $00
	pop af                                           ; $4ae4: $f1
	ld [$08dd], sp                                   ; $4ae5: $08 $dd $08
	sbc $11                                          ; $4ae8: $de $11
	cp a                                             ; $4aea: $bf
	ld [bc], a                                       ; $4aeb: $02
	rst $38                                          ; $4aec: $ff
	dec c                                            ; $4aed: $0d
	cp $76                                           ; $4aee: $fe $76
	call z, $f67d                                    ; $4af0: $cc $7d $f6
	ld a, a                                          ; $4af3: $7f
	db $fc                                           ; $4af4: $fc
	sub b                                            ; $4af5: $90
	ld a, d                                          ; $4af6: $7a
	add l                                            ; $4af7: $85
	ld [hl], l                                       ; $4af8: $75
	adc d                                            ; $4af9: $8a
	ld [$d415], a                                    ; $4afa: $ea $15 $d4
	dec hl                                           ; $4afd: $2b
	add l                                            ; $4afe: $85
	ld a, a                                          ; $4aff: $7f
	ld b, d                                          ; $4b00: $42
	cp a                                             ; $4b01: $bf
	add l                                            ; $4b02: $85
	ld a, a                                          ; $4b03: $7f
	ld c, d                                          ; $4b04: $4a
	ld a, e                                          ; $4b05: $7b
	db $fc                                           ; $4b06: $fc
	ld a, [hl]                                       ; $4b07: $7e
	cp h                                             ; $4b08: $bc
	sbc [hl]                                         ; $4b09: $9e
	dec d                                            ; $4b0a: $15
	ld a, d                                          ; $4b0b: $7a
	cp b                                             ; $4b0c: $b8
	ld h, [hl]                                       ; $4b0d: $66
	ret z                                            ; $4b0e: $c8

	ld h, d                                          ; $4b0f: $62
	ret nz                                           ; $4b10: $c0

	ld a, d                                          ; $4b11: $7a
	call z, $fc6f                                    ; $4b12: $cc $6f $fc
	sbc [hl]                                         ; $4b15: $9e
	ld a, a                                          ; $4b16: $7f
	ld [hl], e                                       ; $4b17: $73
	cp $7f                                           ; $4b18: $fe $7f
	xor $7a                                          ; $4b1a: $ee $7a
	cp h                                             ; $4b1c: $bc
	ld l, e                                          ; $4b1d: $6b
	db $fc                                           ; $4b1e: $fc
	sbc [hl]                                         ; $4b1f: $9e
	ld [$ffde], a                                    ; $4b20: $ea $de $ff
	sbc [hl]                                         ; $4b23: $9e
	and b                                            ; $4b24: $a0
	ld e, e                                          ; $4b25: $5b
	ldh a, [rPCM34]                                  ; $4b26: $f0 $77
	db $fc                                           ; $4b28: $fc
	ld a, a                                          ; $4b29: $7f
	ld sp, $549e                                     ; $4b2a: $31 $9e $54
	ld d, e                                          ; $4b2d: $53
	ldh a, [$9b]                                     ; $4b2e: $f0 $9b
	push hl                                          ; $4b30: $e5
	rrca                                             ; $4b31: $0f

jr_04b_4b32:
	xor l                                            ; $4b32: $ad
	ld d, e                                          ; $4b33: $53
	ld a, c                                          ; $4b34: $79
	ld e, d                                          ; $4b35: $5a
	sbc $ff                                          ; $4b36: $de $ff
	sub e                                            ; $4b38: $93
	rra                                              ; $4b39: $1f
	ldh [rP1], a                                     ; $4b3a: $e0 $00
	nop                                              ; $4b3c: $00
	or a                                             ; $4b3d: $b7
	jr nz, jr_04b_4b32                               ; $4b3e: $20 $f2

	rrca                                             ; $4b40: $0f
	add sp, $17                                      ; $4b41: $e8 $17
	ld d, h                                          ; $4b43: $54
	xor e                                            ; $4b44: $ab
	db $dd                                           ; $4b45: $dd
	rst $38                                          ; $4b46: $ff
	sbc [hl]                                         ; $4b47: $9e
	db $fc                                           ; $4b48: $fc
	ld a, e                                          ; $4b49: $7b
	ld a, $7c                                        ; $4b4a: $3e $7c
	sbc b                                            ; $4b4c: $98
	sbc d                                            ; $4b4d: $9a
	db $eb                                           ; $4b4e: $eb
	dec e                                            ; $4b4f: $1d
	ld e, c                                          ; $4b50: $59
	xor l                                            ; $4b51: $ad
	inc bc                                           ; $4b52: $03
	ld a, d                                          ; $4b53: $7a
	jp nz, $fb96                                     ; $4b54: $c2 $96 $fb

	db $fd                                           ; $4b57: $fd
	dec bc                                           ; $4b58: $0b
	db $fd                                           ; $4b59: $fd
	nop                                              ; $4b5a: $00
	nop                                              ; $4b5b: $00
	ld h, $59                                        ; $4b5c: $26 $59
	push de                                          ; $4b5e: $d5
	ld a, d                                          ; $4b5f: $7a
	call z, $fd9c                                    ; $4b60: $cc $9c $fd
	cp a                                             ; $4b63: $bf
	cp a                                             ; $4b64: $bf
	sbc $ff                                          ; $4b65: $de $ff
	ld a, a                                          ; $4b67: $7f
	db $fc                                           ; $4b68: $fc
	rst $38                                          ; $4b69: $ff
	sbc d                                            ; $4b6a: $9a
	ld b, [hl]                                       ; $4b6b: $46
	adc c                                            ; $4b6c: $89
	ld b, c                                          ; $4b6d: $41
	rst $38                                          ; $4b6e: $ff
	xor e                                            ; $4b6f: $ab
	ld a, e                                          ; $4b70: $7b
	cp d                                             ; $4b71: $ba
	db $db                                           ; $4b72: $db
	rst $38                                          ; $4b73: $ff
	rst $38                                          ; $4b74: $ff
	sub h                                            ; $4b75: $94
	adc c                                            ; $4b76: $89
	nop                                              ; $4b77: $00
	ld a, $ff                                        ; $4b78: $3e $ff
	db $eb                                           ; $4b7a: $eb
	db $f4                                           ; $4b7b: $f4
	ld d, l                                          ; $4b7c: $55
	ld a, [$ffea]                                    ; $4b7d: $fa $ea $ff
	push af                                          ; $4b80: $f5
	ld [hl], e                                       ; $4b81: $73
	ldh a, [$7c]                                     ; $4b82: $f0 $7c
	ld d, [hl]                                       ; $4b84: $56
	ld a, a                                          ; $4b85: $7f
	ld a, [de]                                       ; $4b86: $1a
	sbc l                                            ; $4b87: $9d
	rst $38                                          ; $4b88: $ff
	inc bc                                           ; $4b89: $03
	ld a, e                                          ; $4b8a: $7b
	adc e                                            ; $4b8b: $8b
	sbc h                                            ; $4b8c: $9c
	xor d                                            ; $4b8d: $aa
	ld a, a                                          ; $4b8e: $7f
	push de                                          ; $4b8f: $d5
	ld [hl], a                                       ; $4b90: $77
	ldh a, [$97]                                     ; $4b91: $f0 $97
	inc b                                            ; $4b93: $04
	nop                                              ; $4b94: $00
	rlca                                             ; $4b95: $07
	db $fc                                           ; $4b96: $fc
	adc a                                            ; $4b97: $8f
	db $fc                                           ; $4b98: $fc
	rst $38                                          ; $4b99: $ff
	ld sp, hl                                        ; $4b9a: $f9

jr_04b_4b9b:
	ld [hl], e                                       ; $4b9b: $73
	add l                                            ; $4b9c: $85
	ld a, e                                          ; $4b9d: $7b
	ldh a, [$8e]                                     ; $4b9e: $f0 $8e
	ld b, b                                          ; $4ba0: $40
	nop                                              ; $4ba1: $00
	rst SubAFromDE                                          ; $4ba2: $df
	jr nc, @-$04                                     ; $4ba3: $30 $fa

	jr nc, jr_04b_4b9b                               ; $4ba5: $30 $f4

	ld h, b                                          ; $4ba7: $60
	ld a, [$d5e0]                                    ; $4ba8: $fa $e0 $d5
	ldh [$3f], a                                     ; $4bab: $e0 $3f
	ret nz                                           ; $4bad: $c0

	sub l                                            ; $4bae: $95
	nop                                              ; $4baf: $00
	ld [hl+], a                                      ; $4bb0: $22
	ld a, b                                          ; $4bb1: $78
	ld l, b                                          ; $4bb2: $68
	sbc b                                            ; $4bb3: $98
	dec b                                            ; $4bb4: $05
	nop                                              ; $4bb5: $00
	ld a, [bc]                                       ; $4bb6: $0a
	nop                                              ; $4bb7: $00
	dec d                                            ; $4bb8: $15
	nop                                              ; $4bb9: $00
	ld a, [hl+]                                      ; $4bba: $2a
	ld a, d                                          ; $4bbb: $7a
	inc a                                            ; $4bbc: $3c
	ld a, l                                          ; $4bbd: $7d
	push af                                          ; $4bbe: $f5
	add d                                            ; $4bbf: $82
	xor e                                            ; $4bc0: $ab
	inc b                                            ; $4bc1: $04
	sub a                                            ; $4bc2: $97
	ld c, [hl]                                       ; $4bc3: $4e
	dec hl                                           ; $4bc4: $2b
	ld d, [hl]                                       ; $4bc5: $56
	sub a                                            ; $4bc6: $97
	dec hl                                           ; $4bc7: $2b
	ld l, e                                          ; $4bc8: $6b
	rra                                              ; $4bc9: $1f
	sbc a                                            ; $4bca: $9f
	cpl                                              ; $4bcb: $2f
	xor h                                            ; $4bcc: $ac
	ld d, e                                          ; $4bcd: $53
	ld d, b                                          ; $4bce: $50
	nop                                              ; $4bcf: $00
	and $03                                          ; $4bd0: $e6 $03
	jr nc, @+$01                                     ; $4bd2: $30 $ff

	ld h, b                                          ; $4bd4: $60
	rst $38                                          ; $4bd5: $ff
	ret nz                                           ; $4bd6: $c0

	rst $38                                          ; $4bd7: $ff
	add e                                            ; $4bd8: $83
	rst $38                                          ; $4bd9: $ff
	inc c                                            ; $4bda: $0c
	rst $38                                          ; $4bdb: $ff
	jr nc, jr_04b_4c59                               ; $4bdc: $30 $7b

	ret nz                                           ; $4bde: $c0

	sbc c                                            ; $4bdf: $99
	ld [$3f0c], sp                                   ; $4be0: $08 $0c $3f
	ldh a, [$7f]                                     ; $4be3: $f0 $7f
	ret nz                                           ; $4be5: $c0

	ld a, c                                          ; $4be6: $79
	ld d, c                                          ; $4be7: $51
	ld [hl], c                                       ; $4be8: $71
	inc e                                            ; $4be9: $1c
	rst $38                                          ; $4bea: $ff
	sub [hl]                                         ; $4beb: $96
	ld l, c                                          ; $4bec: $69
	db $10                                           ; $4bed: $10
	add sp, $17                                      ; $4bee: $e8 $17
	ret nc                                           ; $4bf0: $d0

	cpl                                              ; $4bf1: $2f
	and c                                            ; $4bf2: $a1
	ld e, a                                          ; $4bf3: $5f
	ld l, d                                          ; $4bf4: $6a
	ld a, e                                          ; $4bf5: $7b
	ld e, a                                          ; $4bf6: $5f
	ld [hl], l                                       ; $4bf7: $75
	inc bc                                           ; $4bf8: $03
	sbc h                                            ; $4bf9: $9c
	ld [$1537], sp                                   ; $4bfa: $08 $37 $15
	ld [hl], d                                       ; $4bfd: $72
	ldh [c], a                                       ; $4bfe: $e2
	ld [hl], a                                       ; $4bff: $77
	rra                                              ; $4c00: $1f
	ld [hl], a                                       ; $4c01: $77
	ldh a, [$9d]                                     ; $4c02: $f0 $9d
	daa                                              ; $4c04: $27
	jp nz, $c866                                     ; $4c05: $c2 $66 $c8

	rst SubAFromDE                                          ; $4c08: $df
	rst $38                                          ; $4c09: $ff
	ld a, d                                          ; $4c0a: $7a
	ld [de], a                                       ; $4c0b: $12
	sbc h                                            ; $4c0c: $9c
	nop                                              ; $4c0d: $00
	inc bc                                           ; $4c0e: $03
	jp $ca6e                                         ; $4c0f: $c3 $6e $ca


	ld l, a                                          ; $4c12: $6f
	cp $df                                           ; $4c13: $fe $df
	rra                                              ; $4c15: $1f
	sbc l                                            ; $4c16: $9d
	inc bc                                           ; $4c17: $03
	rst JumpTable                                          ; $4c18: $c7
	pop de                                           ; $4c19: $d1
	rst $38                                          ; $4c1a: $ff
	ld [hl], h                                       ; $4c1b: $74
	ld a, d                                          ; $4c1c: $7a
	push de                                          ; $4c1d: $d5
	rst $38                                          ; $4c1e: $ff
	ld a, a                                          ; $4c1f: $7f
	add $77                                          ; $4c20: $c6 $77
	ld h, $d7                                        ; $4c22: $26 $d7
	rst $38                                          ; $4c24: $ff
	adc [hl]                                         ; $4c25: $8e
	ld [hl], e                                       ; $4c26: $73
	rst SubAFromBC                                          ; $4c27: $e7
	rst AddAOntoHL                                          ; $4c28: $ef
	rst SubAFromDE                                          ; $4c29: $df
	ld c, [hl]                                       ; $4c2a: $4e
	sub c                                            ; $4c2b: $91
	nop                                              ; $4c2c: $00
	nop                                              ; $4c2d: $00
	ld b, h                                          ; $4c2e: $44
	ccf                                              ; $4c2f: $3f
	or e                                             ; $4c30: $b3
	ld a, a                                          ; $4c31: $7f
	rra                                              ; $4c32: $1f
	rst $38                                          ; $4c33: $ff
	dec b                                            ; $4c34: $05
	nop                                              ; $4c35: $00
	ld a, [hl-]                                      ; $4c36: $3a
	ld a, c                                          ; $4c37: $79
	db $f4                                           ; $4c38: $f4
	ld a, [hl]                                       ; $4c39: $7e
	jp z, $8c7c                                      ; $4c3a: $ca $7c $8c

	sub h                                            ; $4c3d: $94
	di                                               ; $4c3e: $f3
	ld b, b                                          ; $4c3f: $40
	db $e4                                           ; $4c40: $e4
	db $e3                                           ; $4c41: $e3
	xor h                                            ; $4c42: $ac
	rst JumpTable                                          ; $4c43: $c7
	ret nz                                           ; $4c44: $c0

	nop                                              ; $4c45: $00
	or $7f                                           ; $4c46: $f6 $7f
	and a                                            ; $4c48: $a7
	ld [hl], a                                       ; $4c49: $77
	ld h, e                                          ; $4c4a: $63
	ld a, c                                          ; $4c4b: $79
	db $f4                                           ; $4c4c: $f4
	sbc h                                            ; $4c4d: $9c
	inc [hl]                                         ; $4c4e: $34
	ret nz                                           ; $4c4f: $c0

	ld [bc], a                                       ; $4c50: $02
	ld a, b                                          ; $4c51: $78
	ld h, $93                                        ; $4c52: $26 $93
	add e                                            ; $4c54: $83
	rst SubAFromDE                                          ; $4c55: $df
	rra                                              ; $4c56: $1f
	cp a                                             ; $4c57: $bf
	inc h                                            ; $4c58: $24

jr_04b_4c59:
	rra                                              ; $4c59: $1f
	ld h, c                                          ; $4c5a: $61
	ccf                                              ; $4c5b: $3f
	ld a, e                                          ; $4c5c: $7b
	ccf                                              ; $4c5d: $3f
	add sp, $7f                                      ; $4c5e: $e8 $7f
	ld [hl], a                                       ; $4c60: $77
	ld c, l                                          ; $4c61: $4d
	add b                                            ; $4c62: $80
	db $d3                                           ; $4c63: $d3
	rst GetHLinHL                                          ; $4c64: $cf
	ret z                                            ; $4c65: $c8

	rst SubAFromDE                                          ; $4c66: $df
	rlca                                             ; $4c67: $07
	ret z                                            ; $4c68: $c8

	rlca                                             ; $4c69: $07
	sbc b                                            ; $4c6a: $98
	sbc c                                            ; $4c6b: $99
	sbc a                                            ; $4c6c: $9f
	cp [hl]                                          ; $4c6d: $be
	sbc l                                            ; $4c6e: $9d
	xor e                                            ; $4c6f: $ab
	sub a                                            ; $4c70: $97
	inc de                                           ; $4c71: $13
	nop                                              ; $4c72: $00
	db $e4                                           ; $4c73: $e4
	di                                               ; $4c74: $f3
	inc hl                                           ; $4c75: $23
	di                                               ; $4c76: $f3
	ldh [rP1], a                                     ; $4c77: $e0 $00
	or $01                                           ; $4c79: $f6 $01
	cp l                                             ; $4c7b: $bd
	di                                               ; $4c7c: $f3
	ld sp, $fff3                                     ; $4c7d: $31 $f3 $ff
	di                                               ; $4c80: $f3
	di                                               ; $4c81: $f3
	ld a, a                                          ; $4c82: $7f
	ld l, $91                                        ; $4c83: $2e $91
	call c, $dcbc                                    ; $4c85: $dc $bc $dc
	nop                                              ; $4c88: $00
	nop                                              ; $4c89: $00
	sub h                                            ; $4c8a: $94
	ld h, d                                          ; $4c8b: $62
	ld [bc], a                                       ; $4c8c: $02
	rst $38                                          ; $4c8d: $ff
	inc c                                            ; $4c8e: $0c
	di                                               ; $4c8f: $f3
	ld b, e                                          ; $4c90: $43
	rst $38                                          ; $4c91: $ff
	ld h, b                                          ; $4c92: $60
	ld a, e                                          ; $4c93: $7b
	add hl, de                                       ; $4c94: $19
	sbc [hl]                                         ; $4c95: $9e
	ld l, l                                          ; $4c96: $6d
	ld a, e                                          ; $4c97: $7b
	jp z, $687c                                      ; $4c98: $ca $7c $68

	add b                                            ; $4c9b: $80
	ld [hl], l                                       ; $4c9c: $75
	ld a, [bc]                                       ; $4c9d: $0a
	ld l, [hl]                                       ; $4c9e: $6e
	ld de, $2f15                                     ; $4c9f: $11 $15 $2f
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	dec c                                            ; $4ca4: $0d
	ld a, [hl-]                                      ; $4ca5: $3a
	jr nz, @-$5f                                     ; $4ca6: $20 $9f

	stop                                             ; $4ca8: $10 $00
	sub b                                            ; $4caa: $90
	ld c, a                                          ; $4cab: $4f
	ld c, a                                          ; $4cac: $4f
	adc a                                            ; $4cad: $8f
	adc [hl]                                         ; $4cae: $8e
	ld h, l                                          ; $4caf: $65
	jp nz, $00e7                                     ; $4cb0: $c2 $e7 $00

	ld [bc], a                                       ; $4cb3: $02
	adc a                                            ; $4cb4: $8f
	rst GetHLinHL                                          ; $4cb5: $cf
	ld b, a                                          ; $4cb6: $47
	adc a                                            ; $4cb7: $8f
	nop                                              ; $4cb8: $00
	nop                                              ; $4cb9: $00
	ld sp, $f098                                     ; $4cba: $31 $98 $f0
	or b                                             ; $4cbd: $b0
	ld sp, hl                                        ; $4cbe: $f9
	sbc c                                            ; $4cbf: $99
	db $fc                                           ; $4cc0: $fc
	call c, Call_04b_79fe                            ; $4cc1: $dc $fe $79
	ld a, h                                          ; $4cc4: $7c
	sbc h                                            ; $4cc5: $9c
	di                                               ; $4cc6: $f3
	inc b                                            ; $4cc7: $04
	ld sp, hl                                        ; $4cc8: $f9
	db $fd                                           ; $4cc9: $fd
	adc c                                            ; $4cca: $89
	ldh [c], a                                       ; $4ccb: $e2
	db $dd                                           ; $4ccc: $dd
	ld a, [$bdff]                                    ; $4ccd: $fa $ff $bd
	ld a, e                                          ; $4cd0: $7b
	nop                                              ; $4cd1: $00
	nop                                              ; $4cd2: $00
	cp l                                             ; $4cd3: $bd
	cp $1e                                           ; $4cd4: $fe $1e
	pop hl                                           ; $4cd6: $e1
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	ld e, d                                          ; $4cd9: $5a
	daa                                              ; $4cda: $27
	dec d                                            ; $4cdb: $15
	ld a, $15                                        ; $4cdc: $3e $15
	adc e                                            ; $4cde: $8b
	rst GetHLinHL                                          ; $4cdf: $cf
	add a                                            ; $4ce0: $87
	ld a, e                                          ; $4ce1: $7b
	or [hl]                                          ; $4ce2: $b6
	sub e                                            ; $4ce3: $93
	ld a, a                                          ; $4ce4: $7f
	cp [hl]                                          ; $4ce5: $be
	rra                                              ; $4ce6: $1f
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	di                                               ; $4ce9: $f3
	ret nz                                           ; $4cea: $c0

	xor c                                            ; $4ceb: $a9
	ld [hl], b                                       ; $4cec: $70
	inc c                                            ; $4ced: $0c

jr_04b_4cee:
	ld hl, sp-$42                                    ; $4cee: $f8 $be
	ld a, c                                          ; $4cf0: $79
	cp $80                                           ; $4cf1: $fe $80
	sbc a                                            ; $4cf3: $9f
	add hl, bc                                       ; $4cf4: $09
	rst GetHLinHL                                          ; $4cf5: $cf
	call nz, $0000                                  ; $4cf6: $c4 $00 $00
	call c, $ab30                                    ; $4cf9: $dc $30 $ab
	db $fc                                           ; $4cfc: $fc
	di                                               ; $4cfd: $f3
	ld a, a                                          ; $4cfe: $7f
	ld e, e                                          ; $4cff: $5b
	ld h, $00                                        ; $4d00: $26 $00
	nop                                              ; $4d02: $00
	db $e3                                           ; $4d03: $e3
	di                                               ; $4d04: $f3
	dec a                                            ; $4d05: $3d
	ld hl, sp+$03                                    ; $4d06: $f8 $03
	nop                                              ; $4d08: $00
	push de                                          ; $4d09: $d5
	ld l, a                                          ; $4d0a: $6f
	halt                                             ; $4d0b: $76
	ccf                                              ; $4d0c: $3f
	adc h                                            ; $4d0d: $8c
	rra                                              ; $4d0e: $1f
	ld c, d                                          ; $4d0f: $4a
	rst SubAFromBC                                          ; $4d10: $e7
	ld h, b                                          ; $4d11: $60
	sub c                                            ; $4d12: $91
	nop                                              ; $4d13: $00
	pop hl                                           ; $4d14: $e1
	ldh a, [$bc]                                     ; $4d15: $f0 $bc
	ld a, h                                          ; $4d17: $7c
	add b                                            ; $4d18: $80
	nop                                              ; $4d19: $00
	adc a                                            ; $4d1a: $8f
	rst JumpTable                                          ; $4d1b: $c7
	pop de                                           ; $4d1c: $d1
	db $e3                                           ; $4d1d: $e3
	ld h, l                                          ; $4d1e: $65
	ld hl, sp+$44                                    ; $4d1f: $f8 $44
	ld a, e                                          ; $4d21: $7b
	and b                                            ; $4d22: $a0
	sub c                                            ; $4d23: $91
	pop hl                                           ; $4d24: $e1
	ld hl, sp+$78                                    ; $4d25: $f8 $78
	ld a, [hl]                                       ; $4d27: $7e
	nop                                              ; $4d28: $00
	ld b, $07                                        ; $4d29: $06 $07
	di                                               ; $4d2b: $f3
	ld sp, hl                                        ; $4d2c: $f9
	db $fd                                           ; $4d2d: $fd
	cp $7f                                           ; $4d2e: $fe $7f
	inc bc                                           ; $4d30: $03
	ccf                                              ; $4d31: $3f
	ld a, e                                          ; $4d32: $7b
	or b                                             ; $4d33: $b0
	ld a, h                                          ; $4d34: $7c
	xor [hl]                                         ; $4d35: $ae
	sub l                                            ; $4d36: $95
	ccf                                              ; $4d37: $3f
	rla                                              ; $4d38: $17
	rrca                                             ; $4d39: $0f
	and l                                            ; $4d3a: $a5
	jp $f8f5                                         ; $4d3b: $c3 $f5 $f8


	cp $3f                                           ; $4d3e: $fe $3f
	jr jr_04b_4dbd                                   ; $4d40: $18 $7b

	halt                                             ; $4d42: $76
	reti                                             ; $4d43: $d9


	rst $38                                          ; $4d44: $ff
	sbc d                                            ; $4d45: $9a
	cp a                                             ; $4d46: $bf
	ld a, a                                          ; $4d47: $7f
	cpl                                              ; $4d48: $2f
	rra                                              ; $4d49: $1f
	db $ed                                           ; $4d4a: $ed
	ld a, c                                          ; $4d4b: $79
	xor [hl]                                         ; $4d4c: $ae
	db $d3                                           ; $4d4d: $d3
	rst $38                                          ; $4d4e: $ff
	ld a, a                                          ; $4d4f: $7f
	jp nc, $8c79                                     ; $4d50: $d2 $79 $8c

	adc b                                            ; $4d53: $88
	ld c, b                                          ; $4d54: $48
	ld h, c                                          ; $4d55: $61
	sbc a                                            ; $4d56: $9f
	jp z, $0537                                      ; $4d57: $ca $37 $05

	cp $f2                                           ; $4d5a: $fe $f2
	inc c                                            ; $4d5c: $0c
	nop                                              ; $4d5d: $00
	nop                                              ; $4d5e: $00
	inc sp                                           ; $4d5f: $33
	ret nz                                           ; $4d60: $c0

	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	rrca                                             ; $4d63: $0f
	nop                                              ; $4d64: $00
	or l                                             ; $4d65: $b5
	ld a, [bc]                                       ; $4d66: $0a
	ld a, a                                          ; $4d67: $7f
	ccf                                              ; $4d68: $3f
	jr c, jr_04b_4db2                                ; $4d69: $38 $47

	halt                                             ; $4d6b: $76
	jr nc, jr_04b_4cee                               ; $4d6c: $30 $80

	push af                                          ; $4d6e: $f5
	ld a, [bc]                                       ; $4d6f: $0a
	nop                                              ; $4d70: $00
	nop                                              ; $4d71: $00
	ret                                              ; $4d72: $c9


	ld sp, $49b1                                     ; $4d73: $31 $b1 $49
	db $e3                                           ; $4d76: $e3
	pop af                                           ; $4d77: $f1
	rst SubAFromHL                                          ; $4d78: $d7
	and d                                            ; $4d79: $a2
	jp $0020                                        ; $4d7a: $c3 $20 $00


	nop                                              ; $4d7d: $00
	add a                                            ; $4d7e: $87
	nop                                              ; $4d7f: $00
	xor $00                                          ; $4d80: $ee $00
	ld a, a                                          ; $4d82: $7f
	sbc a                                            ; $4d83: $9f
	rst $38                                          ; $4d84: $ff
	and c                                            ; $4d85: $a1
	rst $38                                          ; $4d86: $ff
	dec h                                            ; $4d87: $25
	rst $38                                          ; $4d88: $ff
	ld a, [$01fa]                                    ; $4d89: $fa $fa $01
	nop                                              ; $4d8c: $00
	sub d                                            ; $4d8d: $92
	nop                                              ; $4d8e: $00
	ld l, [hl]                                       ; $4d8f: $6e
	sub b                                            ; $4d90: $90
	nop                                              ; $4d91: $00
	nop                                              ; $4d92: $00
	scf                                              ; $4d93: $37
	ld [$803f], sp                                   ; $4d94: $08 $3f $80
	ld e, a                                          ; $4d97: $5f
	jr nz, jr_04b_4dba                               ; $4d98: $20 $20

	ld a, a                                          ; $4d9a: $7f
	ld a, e                                          ; $4d9b: $7b
	pop hl                                           ; $4d9c: $e1
	sbc h                                            ; $4d9d: $9c
	nop                                              ; $4d9e: $00
	cp a                                             ; $4d9f: $bf
	ld b, b                                          ; $4da0: $40
	ld a, e                                          ; $4da1: $7b
	ld l, [hl]                                       ; $4da2: $6e
	sbc b                                            ; $4da3: $98
	db $10                                           ; $4da4: $10
	pop hl                                           ; $4da5: $e1
	ld de, $31c3                                     ; $4da6: $11 $c3 $31
	inc bc                                           ; $4da9: $03
	ldh a, [$fd]                                     ; $4daa: $f0 $fd
	ld a, [hl]                                       ; $4dac: $7e
	ret nz                                           ; $4dad: $c0

	sub l                                            ; $4dae: $95
	ld [$b400], sp                                   ; $4daf: $08 $00 $b4

jr_04b_4db2:
	dec bc                                           ; $4db2: $0b
	cp c                                             ; $4db3: $b9
	xor $6c                                          ; $4db4: $ee $6c
	ei                                               ; $4db6: $fb
	di                                               ; $4db7: $f3
	rst $38                                          ; $4db8: $ff
	ld a, e                                          ; $4db9: $7b

jr_04b_4dba:
	add hl, de                                       ; $4dba: $19
	sbc b                                            ; $4dbb: $98
	nop                                              ; $4dbc: $00

jr_04b_4dbd:
	pop de                                           ; $4dbd: $d1
	ld l, $80                                        ; $4dbe: $2e $80
	nop                                              ; $4dc0: $00
	ld de, $7b8f                                     ; $4dc1: $11 $8f $7b
	ld [hl], $df                                     ; $4dc4: $36 $df
	sbc a                                            ; $4dc6: $9f
	rst SubAFromDE                                          ; $4dc7: $df
	rst GetHLinHL                                          ; $4dc8: $cf
	adc c                                            ; $4dc9: $89
	nop                                              ; $4dca: $00
	ld h, a                                          ; $4dcb: $67
	nop                                              ; $4dcc: $00
	ldh [$27], a                                     ; $4dcd: $e0 $27
	add hl, sp                                       ; $4dcf: $39
	nop                                              ; $4dd0: $00
	sbc l                                            ; $4dd1: $9d
	ldh [rKEY1], a                                   ; $4dd2: $e0 $4d
	ldh a, [rDIV]                                    ; $4dd4: $f0 $04
	ld hl, sp-$14                                    ; $4dd6: $f8 $ec
	cp $06                                           ; $4dd8: $fe $06

jr_04b_4dda:
	nop                                              ; $4dda: $00
	and $00                                          ; $4ddb: $e6 $00
	adc a                                            ; $4ddd: $8f
	ld [hl], c                                       ; $4dde: $71
	and a                                            ; $4ddf: $a7
	ld a, e                                          ; $4de0: $7b
	adc h                                            ; $4de1: $8c
	sbc c                                            ; $4de2: $99
	sbc l                                            ; $4de3: $9d
	ld h, d                                          ; $4de4: $62
	call z, $de33                                    ; $4de5: $cc $33 $de
	ld [hl], c                                       ; $4de8: $71
	db $fd                                           ; $4de9: $fd
	ld a, a                                          ; $4dea: $7f
	jp nc, $9b7f                                     ; $4deb: $d2 $7f $9b

	sub a                                            ; $4dee: $97
	sbc a                                            ; $4def: $9f
	ld a, [de]                                       ; $4df0: $1a
	pop bc                                           ; $4df1: $c1
	rrca                                             ; $4df2: $0f
	call $a787                                       ; $4df3: $cd $87 $a7
	jp $95fb                                         ; $4df6: $c3 $fb $95


	inc sp                                           ; $4df9: $33
	nop                                              ; $4dfa: $00
	ld hl, sp+$31                                    ; $4dfb: $f8 $31
	sub [hl]                                         ; $4dfd: $96
	ld a, b                                          ; $4dfe: $78
	ld a, [de]                                       ; $4dff: $1a
	and $ae                                          ; $4e00: $e6 $ae
	rst FarCall                                          ; $4e02: $f7
	ei                                               ; $4e03: $fb
	ld a, a                                          ; $4e04: $7f
	ld e, d                                          ; $4e05: $5a
	ld a, l                                          ; $4e06: $7d
	xor $98                                          ; $4e07: $ee $98
	rst SubAFromHL                                          ; $4e09: $d7
	ld a, h                                          ; $4e0a: $7c
	ld l, d                                          ; $4e0b: $6a
	ccf                                              ; $4e0c: $3f
	or l                                             ; $4e0d: $b5
	dec de                                           ; $4e0e: $1b
	nop                                              ; $4e0f: $00
	ld a, c                                          ; $4e10: $79
	ld b, h                                          ; $4e11: $44
	sub l                                            ; $4e12: $95
	ld hl, $c403                                     ; $4e13: $21 $03 $c4
	ld [bc], a                                       ; $4e16: $02
	rst SubAFromBC                                          ; $4e17: $e7
	add e                                            ; $4e18: $83
	or b                                             ; $4e19: $b0
	ld b, c                                          ; $4e1a: $41
	call nc, Call_04b_7778                           ; $4e1b: $d4 $78 $77
	ld h, [hl]                                       ; $4e1e: $66
	add d                                            ; $4e1f: $82
	db $fd                                           ; $4e20: $fd
	inc bc                                           ; $4e21: $03
	ld e, l                                          ; $4e22: $5d
	or a                                             ; $4e23: $b7
	ld b, $d8                                        ; $4e24: $06 $d8
	ld d, [hl]                                       ; $4e26: $56
	ei                                               ; $4e27: $fb
	and e                                            ; $4e28: $a3
	db $fd                                           ; $4e29: $fd
	rst FarCall                                          ; $4e2a: $f7
	ld l, e                                          ; $4e2b: $6b
	ld a, e                                          ; $4e2c: $7b
	ccf                                              ; $4e2d: $3f
	dec d                                            ; $4e2e: $15
	nop                                              ; $4e2f: $00
	ldh [rLCDC], a                                   ; $4e30: $e0 $40
	ldh [$f3], a                                     ; $4e32: $e0 $f3
	ld a, h                                          ; $4e34: $7c
	inc bc                                           ; $4e35: $03
	ld d, l                                          ; $4e36: $55
	dec sp                                           ; $4e37: $3b
	sub c                                            ; $4e38: $91
	rrca                                             ; $4e39: $0f
	db $e4                                           ; $4e3a: $e4
	jp $7af2                                         ; $4e3b: $c3 $f2 $7a


	ld a, d                                          ; $4e3e: $7a
	ld a, e                                          ; $4e3f: $7b
	inc h                                            ; $4e40: $24
	sub h                                            ; $4e41: $94
	ld [hl], $62                                     ; $4e42: $36 $62
	sub c                                            ; $4e44: $91
	ret nc                                           ; $4e45: $d0

	jr c, jr_04b_4dda                                ; $4e46: $38 $92

	db $fc                                           ; $4e48: $fc
	dec h                                            ; $4e49: $25
	ldh a, [c]                                       ; $4e4a: $f2
	inc h                                            ; $4e4b: $24
	rst SubAFromDE                                          ; $4e4c: $df
	ld [hl], h                                       ; $4e4d: $74
	ldh [c], a                                       ; $4e4e: $e2
	sub e                                            ; $4e4f: $93
	ld c, $1f                                        ; $4e50: $0e $1f
	nop                                              ; $4e52: $00
	ldh a, [$8c]                                     ; $4e53: $f0 $8c
	cp $06                                           ; $4e55: $fe $06
	ccf                                              ; $4e57: $3f
	inc de                                           ; $4e58: $13
	rrca                                             ; $4e59: $0f
	ld bc, $7bc2                                     ; $4e5a: $01 $c2 $7b
	ldh a, [$80]                                     ; $4e5d: $f0 $80
	ld [$7cba], sp                                   ; $4e5f: $08 $ba $7c
	db $ed                                           ; $4e62: $ed
	ld a, [hl]                                       ; $4e63: $7e
	ccf                                              ; $4e64: $3f
	rra                                              ; $4e65: $1f
	ld c, $07                                        ; $4e66: $0e $07
	ld h, e                                          ; $4e68: $63
	pop bc                                           ; $4e69: $c1
	ld [hl], b                                       ; $4e6a: $70
	sbc b                                            ; $4e6b: $98
	nop                                              ; $4e6c: $00
	nop                                              ; $4e6d: $00
	ld e, [hl]                                       ; $4e6e: $5e
	jr nc, jr_04b_4e9c                               ; $4e6f: $30 $2b

	inc e                                            ; $4e71: $1c
	rra                                              ; $4e72: $1f
	adc a                                            ; $4e73: $8f
	and a                                            ; $4e74: $a7
	jp $f0b8                                         ; $4e75: $c3 $b8 $f0


	cp [hl]                                          ; $4e78: $be
	rst $38                                          ; $4e79: $ff
	cp d                                             ; $4e7a: $ba
	ld a, a                                          ; $4e7b: $7f
	nop                                              ; $4e7c: $00
	nop                                              ; $4e7d: $00
	adc a                                            ; $4e7e: $8f
	call z, $b207                                    ; $4e7f: $cc $07 $b2
	ld b, c                                          ; $4e82: $41
	db $e3                                           ; $4e83: $e3
	ldh a, [$b1]                                     ; $4e84: $f0 $b1
	ldh [c], a                                       ; $4e86: $e2
	ret nz                                           ; $4e87: $c0

	rst SubAFromBC                                          ; $4e88: $e7
	ld c, d                                          ; $4e89: $4a
	add l                                            ; $4e8a: $85
	sbc d                                            ; $4e8b: $9a
	adc l                                            ; $4e8c: $8d
	sbc c                                            ; $4e8d: $99
	ld c, $77                                        ; $4e8e: $0e $77
	ld [hl], c                                       ; $4e90: $71
	add h                                            ; $4e91: $84
	ld e, l                                          ; $4e92: $5d
	cp [hl]                                          ; $4e93: $be
	ld de, $1e6e                                     ; $4e94: $11 $6e $1e
	pop hl                                           ; $4e97: $e1
	xor $9d                                          ; $4e98: $ee $9d
	sbc c                                            ; $4e9a: $99
	rst $38                                          ; $4e9b: $ff

jr_04b_4e9c:
	reti                                             ; $4e9c: $d9


	daa                                              ; $4e9d: $27
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	dec d                                            ; $4ea0: $15
	rst $38                                          ; $4ea1: $ff

jr_04b_4ea2:
	add h                                            ; $4ea2: $84
	ld c, a                                          ; $4ea3: $4f
	ld e, $81                                        ; $4ea4: $1e $81
	dec bc                                           ; $4ea6: $0b
	sbc a                                            ; $4ea7: $9f
	rlca                                             ; $4ea8: $07
	sbc a                                            ; $4ea9: $9f
	rra                                              ; $4eaa: $1f
	ccf                                              ; $4eab: $3f
	ld [hl+], a                                      ; $4eac: $22
	ld a, d                                          ; $4ead: $7a
	rst $38                                          ; $4eae: $ff
	sub c                                            ; $4eaf: $91
	ld d, h                                          ; $4eb0: $54
	rst $38                                          ; $4eb1: $ff

jr_04b_4eb2:
	ld a, d                                          ; $4eb2: $7a
	cp $be                                           ; $4eb3: $fe $be
	ld a, [hl]                                       ; $4eb5: $7e
	inc e                                            ; $4eb6: $1c
	cp $fe                                           ; $4eb7: $fe $fe
	db $e4                                           ; $4eb9: $e4
	sbc [hl]                                         ; $4eba: $9e
	db $fc                                           ; $4ebb: $fc
	ld b, b                                          ; $4ebc: $40
	cp h                                             ; $4ebd: $bc
	ld [hl], a                                       ; $4ebe: $77
	ret nc                                           ; $4ebf: $d0

	sub h                                            ; $4ec0: $94
	jr nz, jr_04b_4ea2                               ; $4ec1: $20 $df

	inc bc                                           ; $4ec3: $03
	call c, $d528                                    ; $4ec4: $dc $28 $d5
	ret nz                                           ; $4ec7: $c0

	dec a                                            ; $4ec8: $3d
	nop                                              ; $4ec9: $00
	rst $38                                          ; $4eca: $ff
	ld [$2e7b], sp                                   ; $4ecb: $08 $7b $2e
	ld a, a                                          ; $4ece: $7f
	ret nc                                           ; $4ecf: $d0

	sub e                                            ; $4ed0: $93
	ld d, d                                          ; $4ed1: $52
	xor c                                            ; $4ed2: $a9
	ld b, e                                          ; $4ed3: $43
	cp b                                             ; $4ed4: $b8
	sub c                                            ; $4ed5: $91
	ld l, b                                          ; $4ed6: $68
	jr nz, jr_04b_4eb2                               ; $4ed7: $20 $d9

	ld bc, $b1f9                                     ; $4ed9: $01 $f9 $b1
	ld c, b                                          ; $4edc: $48
	ld a, e                                          ; $4edd: $7b
	ld l, $94                                        ; $4ede: $2e $94
	rst $38                                          ; $4ee0: $ff
	ld [hl], a                                       ; $4ee1: $77
	xor a                                            ; $4ee2: $af
	db $fd                                           ; $4ee3: $fd
	ld a, [hl]                                       ; $4ee4: $7e
	cp a                                             ; $4ee5: $bf
	ld d, a                                          ; $4ee6: $57
	rst SubAFromDE                                          ; $4ee7: $df
	ccf                                              ; $4ee8: $3f
	ret c                                            ; $4ee9: $d8

	cp a                                             ; $4eea: $bf
	ld [hl], l                                       ; $4eeb: $75
	cp c                                             ; $4eec: $b9
	ld a, h                                          ; $4eed: $7c
	sub a                                            ; $4eee: $97
	sub h                                            ; $4eef: $94
	xor a                                            ; $4ef0: $af
	db $e3                                           ; $4ef1: $e3
	rst JumpTable                                          ; $4ef2: $c7
	ld h, c                                          ; $4ef3: $61
	ld [hl], a                                       ; $4ef4: $77
	ret nz                                           ; $4ef5: $c0

	di                                               ; $4ef6: $f3
	pop hl                                           ; $4ef7: $e1
	ei                                               ; $4ef8: $fb
	pop af                                           ; $4ef9: $f1
	pop af                                           ; $4efa: $f1
	cp $7f                                           ; $4efb: $fe $7f
	ret nc                                           ; $4efd: $d0

	sub h                                            ; $4efe: $94
	rst SubAFromHL                                          ; $4eff: $d7
	add hl, hl                                       ; $4f00: $29
	cp [hl]                                          ; $4f01: $be
	ret nz                                           ; $4f02: $c0

	or [hl]                                          ; $4f03: $b6
	ld b, d                                          ; $4f04: $42
	cp l                                             ; $4f05: $bd
	ret nz                                           ; $4f06: $c0

	db $fd                                           ; $4f07: $fd
	rst SubAFromBC                                          ; $4f08: $e7
	ei                                               ; $4f09: $fb
	ld a, c                                          ; $4f0a: $79
	jp nz, $f47e                                     ; $4f0b: $c2 $7e $f4

	add h                                            ; $4f0e: $84
	sbc [hl]                                         ; $4f0f: $9e
	sbc c                                            ; $4f10: $99
	rrca                                             ; $4f11: $0f
	sbc e                                            ; $4f12: $9b
	ld c, c                                          ; $4f13: $49
	adc a                                            ; $4f14: $8f
	adc [hl]                                         ; $4f15: $8e
	push bc                                          ; $4f16: $c5
	rst SubAFromBC                                          ; $4f17: $e7
	add $64                                          ; $4f18: $c6 $64
	add d                                            ; $4f1a: $82
	nop                                              ; $4f1b: $00
	nop                                              ; $4f1c: $00
	and b                                            ; $4f1d: $a0
	rst $38                                          ; $4f1e: $ff
	ret c                                            ; $4f1f: $d8

	ld [$acf4], sp                                   ; $4f20: $08 $f4 $ac
	add $f2                                          ; $4f23: $c6 $f2
	ld c, a                                          ; $4f25: $4f
	ld sp, hl                                        ; $4f26: $f9
	db $ed                                           ; $4f27: $ed
	ld [hl], a                                       ; $4f28: $77
	ld b, c                                          ; $4f29: $41
	cp $83                                           ; $4f2a: $fe $83
	dec b                                            ; $4f2c: $05
	rst $38                                          ; $4f2d: $ff
	dec c                                            ; $4f2e: $0d
	ld [bc], a                                       ; $4f2f: $02
	ld d, d                                          ; $4f30: $52
	ccf                                              ; $4f31: $3f
	ld [de], a                                       ; $4f32: $12
	ld hl, $1e01                                     ; $4f33: $21 $01 $1e
	adc d                                            ; $4f36: $8a
	sbc a                                            ; $4f37: $9f
	adc e                                            ; $4f38: $8b
	inc b                                            ; $4f39: $04
	nop                                              ; $4f3a: $00
	nop                                              ; $4f3b: $00
	ld d, l                                          ; $4f3c: $55
	rst $38                                          ; $4f3d: $ff
	pop bc                                           ; $4f3e: $c1
	ld h, c                                          ; $4f3f: $61
	pop hl                                           ; $4f40: $e1

jr_04b_4f41:
	ld d, b                                          ; $4f41: $50
	db $fc                                           ; $4f42: $fc
	jr jr_04b_4f41                                   ; $4f43: $18 $fc

	ld [hl], b                                       ; $4f45: $70
	cp $fe                                           ; $4f46: $fe $fe
	halt                                             ; $4f48: $76
	db $10                                           ; $4f49: $10
	ld a, a                                          ; $4f4a: $7f
	ret nc                                           ; $4f4b: $d0

	sub l                                            ; $4f4c: $95
	rst AddAOntoHL                                          ; $4f4d: $ef
	rst FarCall                                          ; $4f4e: $f7
	ld l, a                                          ; $4f4f: $6f
	ldh a, [$bf]                                     ; $4f50: $f0 $bf
	ld a, h                                          ; $4f52: $7c
	ld hl, $033f                                     ; $4f53: $21 $3f $03
	rra                                              ; $4f56: $1f
	ld a, c                                          ; $4f57: $79
	jp $a07b                                         ; $4f58: $c3 $7b $a0


	ld a, h                                          ; $4f5b: $7c
	ld l, $97                                        ; $4f5c: $2e $97
	call c, $f120                                    ; $4f5e: $dc $20 $f1
	ld a, [hl]                                       ; $4f61: $7e
	db $dd                                           ; $4f62: $dd
	or e                                             ; $4f63: $b3
	scf                                              ; $4f64: $37
	rst $38                                          ; $4f65: $ff
	halt                                             ; $4f66: $76
	adc a                                            ; $4f67: $8f
	ld a, a                                          ; $4f68: $7f
	ret nz                                           ; $4f69: $c0

	sub h                                            ; $4f6a: $94
	inc bc                                           ; $4f6b: $03
	rst $38                                          ; $4f6c: $ff
	sbc h                                            ; $4f6d: $9c
	ld l, a                                          ; $4f6e: $6f
	inc hl                                           ; $4f6f: $23
	inc e                                            ; $4f70: $1c
	rla                                              ; $4f71: $17
	adc b                                            ; $4f72: $88
	adc [hl]                                         ; $4f73: $8e
	pop bc                                           ; $4f74: $c1
	jr nz, @+$7b                                     ; $4f75: $20 $79

	call nc, $c07f                                   ; $4f77: $d4 $7f $c0
	sub h                                            ; $4f7a: $94
	add h                                            ; $4f7b: $84
	rlca                                             ; $4f7c: $07
	add e                                            ; $4f7d: $83
	pop bc                                           ; $4f7e: $c1
	add hl, bc                                       ; $4f7f: $09
	ldh a, [rAUD1HIGH]                               ; $4f80: $f0 $14
	ld hl, sp+$22                                    ; $4f82: $f8 $22
	sbc $10                                          ; $4f84: $de $10
	ld a, c                                          ; $4f86: $79
	and d                                            ; $4f87: $a2
	ld a, a                                          ; $4f88: $7f
	ldh a, [$7f]                                     ; $4f89: $f0 $7f
	ld d, [hl]                                       ; $4f8b: $56
	sub l                                            ; $4f8c: $95
	rst SubAFromHL                                          ; $4f8d: $d7
	cp a                                             ; $4f8e: $bf
	ldh a, [rIE]                                     ; $4f8f: $f0 $ff
	ld c, l                                          ; $4f91: $4d
	ld a, a                                          ; $4f92: $7f
	jr z, @+$21                                      ; $4f93: $28 $1f

	dec c                                            ; $4f95: $0d
	ld [bc], a                                       ; $4f96: $02

Jump_04b_4f97:
	ld [hl], a                                       ; $4f97: $77
	ldh a, [hDisp1_OBP0]                                     ; $4f98: $f0 $93
	ld c, a                                          ; $4f9a: $4f
	add a                                            ; $4f9b: $87
	jp nz, $0c61                                     ; $4f9c: $c2 $61 $0c

	ldh a, [$5d]                                     ; $4f9f: $f0 $5d
	cp $ee                                           ; $4fa1: $fe $ee
	rst SubAFromDE                                          ; $4fa3: $df
	or e                                             ; $4fa4: $b3
	ld c, h                                          ; $4fa5: $4c
	ld [hl], a                                       ; $4fa6: $77
	ldh a, [hDisp1_OBP1]                                     ; $4fa7: $f0 $94
	inc l                                            ; $4fa9: $2c
	ld hl, sp-$5d                                    ; $4faa: $f8 $a3
	sbc $b6                                          ; $4fac: $de $b6
	ld a, c                                          ; $4fae: $79
	jr nz, @+$21                                     ; $4faf: $20 $1f

	ld a, [bc]                                       ; $4fb1: $0a
	rlca                                             ; $4fb2: $07
	jp nz, $c079                                     ; $4fb3: $c2 $79 $c0

	ld a, a                                          ; $4fb6: $7f
	ldh a, [$99]                                     ; $4fb7: $f0 $99
	ld d, l                                          ; $4fb9: $55
	xor d                                            ; $4fba: $aa
	xor d                                            ; $4fbb: $aa
	ld d, l                                          ; $4fbc: $55
	ld d, l                                          ; $4fbd: $55
	xor d                                            ; $4fbe: $aa
	ld a, b                                          ; $4fbf: $78
	halt                                             ; $4fc0: $76
	ld a, h                                          ; $4fc1: $7c
	ld h, $7b                                        ; $4fc2: $26 $7b
	ld hl, sp+$67                                    ; $4fc4: $f8 $67
	db $fc                                           ; $4fc6: $fc
	ld e, a                                          ; $4fc7: $5f
	ldh a, [$9b]                                     ; $4fc8: $f0 $9b
	ld e, a                                          ; $4fca: $5f
	and b                                            ; $4fcb: $a0
	cp a                                             ; $4fcc: $bf
	ld b, b                                          ; $4fcd: $40
	ld [hl], a                                       ; $4fce: $77
	ldh a, [$97]                                     ; $4fcf: $f0 $97
	rrca                                             ; $4fd1: $0f
	ldh a, [$bf]                                     ; $4fd2: $f0 $bf
	ld b, b                                          ; $4fd4: $40
	ld a, a                                          ; $4fd5: $7f
	add b                                            ; $4fd6: $80
	cp a                                             ; $4fd7: $bf
	ld b, b                                          ; $4fd8: $40
	ld a, e                                          ; $4fd9: $7b
	rst SubAFromBC                                          ; $4fda: $e7
	ld a, a                                          ; $4fdb: $7f
	jp z, $f07b                                      ; $4fdc: $ca $7b $f0

	ld [hl], a                                       ; $4fdf: $77
	ld hl, sp+$67                                    ; $4fe0: $f8 $67
	cp $03                                           ; $4fe2: $fe $03
	ldh a, [$03]                                     ; $4fe4: $f0 $03
	ldh a, [rVBK]                                    ; $4fe6: $f0 $4f
	ldh a, [$9d]                                     ; $4fe8: $f0 $9d
	ld b, b                                          ; $4fea: $40
	cp a                                             ; $4feb: $bf
	ld c, a                                          ; $4fec: $4f
	ldh a, [rSVBK]                                   ; $4fed: $f0 $70
	bit 2, e                                         ; $4fef: $cb $53
	ldh a, [$9e]                                     ; $4ff1: $f0 $9e
	push de                                          ; $4ff3: $d5
	ld h, e                                          ; $4ff4: $63
	ldh a, [$7d]                                     ; $4ff5: $f0 $7d
	ld d, d                                          ; $4ff7: $52
	ld [hl], a                                       ; $4ff8: $77
	ldh a, [$9e]                                     ; $4ff9: $f0 $9e
	ld d, b                                          ; $4ffb: $50
	ld h, e                                          ; $4ffc: $63
	ldh a, [$7f]                                     ; $4ffd: $f0 $7f
	or h                                             ; $4fff: $b4
	sbc l                                            ; $5000: $9d
	ld [$7715], a                                    ; $5001: $ea $15 $77
	rst FarCall                                          ; $5004: $f7
	sub a                                            ; $5005: $97

jr_04b_5006:
	ld a, [$fd05]                                    ; $5006: $fa $05 $fd
	ld [bc], a                                       ; $5009: $02
	ld a, [$f505]                                    ; $500a: $fa $05 $f5
	ld a, [bc]                                       ; $500d: $0a
	ld [hl], e                                       ; $500e: $73
	jr nc, jr_04b_506c                               ; $500f: $30 $5b

	ld [hl+], a                                      ; $5011: $22
	ld [hl], e                                       ; $5012: $73
	inc l                                            ; $5013: $2c
	ld c, e                                          ; $5014: $4b
	ldh a, [$57]                                     ; $5015: $f0 $57
	ld [bc], a                                       ; $5017: $02
	inc bc                                           ; $5018: $03
	ldh a, [rWX]                                     ; $5019: $f0 $4b
	ldh a, [rWY]                                     ; $501b: $f0 $4a
	nop                                              ; $501d: $00
	rst SubAFromHL                                          ; $501e: $d7
	ld h, [hl]                                       ; $501f: $66
	sbc c                                            ; $5020: $99
	inc sp                                           ; $5021: $33
	dec [hl]                                         ; $5022: $35
	ld h, [hl]                                       ; $5023: $66
	ld h, [hl]                                       ; $5024: $66
	ld h, h                                          ; $5025: $64
	ld b, [hl]                                       ; $5026: $46
	ld [hl], e                                       ; $5027: $73
	or $9d                                           ; $5028: $f6 $9d
	inc [hl]                                         ; $502a: $34
	ld b, h                                          ; $502b: $44
	ld d, a                                          ; $502c: $57
	or $6b                                           ; $502d: $f6 $6b
	ldh [c], a                                       ; $502f: $e2
	sbc c                                            ; $5030: $99
	ld d, l                                          ; $5031: $55
	ld d, h                                          ; $5032: $54
	ld b, h                                          ; $5033: $44
	inc [hl]                                         ; $5034: $34
	ld b, l                                          ; $5035: $45
	ld d, l                                          ; $5036: $55
	ld [hl], a                                       ; $5037: $77
	or $7f                                           ; $5038: $f6 $7f
	rst FarCall                                          ; $503a: $f7
	sbc l                                            ; $503b: $9d
	dec [hl]                                         ; $503c: $35
	inc sp                                           ; $503d: $33
	ld l, a                                          ; $503e: $6f
	or $9c                                           ; $503f: $f6 $9c
	ld d, l                                          ; $5041: $55
	inc sp                                           ; $5042: $33
	dec [hl]                                         ; $5043: $35
	ld [hl], e                                       ; $5044: $73
	db $ec                                           ; $5045: $ec
	add h                                            ; $5046: $84
	scf                                              ; $5047: $37
	ld [hl], l                                       ; $5048: $75
	ld d, l                                          ; $5049: $55
	scf                                              ; $504a: $37
	ld [hl], l                                       ; $504b: $75
	ld [hl], e                                       ; $504c: $73
	inc sp                                           ; $504d: $33
	ld d, l                                          ; $504e: $55
	ld [hl], $66                                     ; $504f: $36 $66
	ld [hl], a                                       ; $5051: $77
	ld [hl], e                                       ; $5052: $73
	ld [hl], a                                       ; $5053: $77
	ld d, l                                          ; $5054: $55
	ld d, a                                          ; $5055: $57
	inc sp                                           ; $5056: $33
	ld [hl], a                                       ; $5057: $77
	ld d, e                                          ; $5058: $53
	dec [hl]                                         ; $5059: $35
	inc sp                                           ; $505a: $33
	ld d, l                                          ; $505b: $55
	ld d, l                                          ; $505c: $55
	ld [hl], a                                       ; $505d: $77
	inc sp                                           ; $505e: $33
	ld [hl], l                                       ; $505f: $75
	scf                                              ; $5060: $37
	ld [hl], e                                       ; $5061: $73
	ld a, e                                          ; $5062: $7b
	cp $d7                                           ; $5063: $fe $d7
	ld b, h                                          ; $5065: $44
	adc [hl]                                         ; $5066: $8e
	add hl, bc                                       ; $5067: $09

Call_04b_5068:
	sbc b                                            ; $5068: $98
	nop                                              ; $5069: $00
	rst $38                                          ; $506a: $ff
	add b                                            ; $506b: $80

jr_04b_506c:
	rst $38                                          ; $506c: $ff
	ld b, b                                          ; $506d: $40
	cp a                                             ; $506e: $bf
	nop                                              ; $506f: $00
	ld a, e                                          ; $5070: $7b
	db $fc                                           ; $5071: $fc
	sub d                                            ; $5072: $92
	and b                                            ; $5073: $a0
	rra                                              ; $5074: $1f
	jr nc, jr_04b_5006                               ; $5075: $30 $8f

	sbc b                                            ; $5077: $98
	rlca                                             ; $5078: $07
	ld b, b                                          ; $5079: $40
	rst $38                                          ; $507a: $ff
	add b                                            ; $507b: $80
	ld a, a                                          ; $507c: $7f
	ld b, b                                          ; $507d: $40
	rst $38                                          ; $507e: $ff
	and b                                            ; $507f: $a0
	ld a, e                                          ; $5080: $7b
	db $fc                                           ; $5081: $fc
	ld l, a                                          ; $5082: $6f
	ld hl, sp-$66                                    ; $5083: $f8 $9a
	call c, $8a1f                                    ; $5085: $dc $1f $8a
	rra                                              ; $5088: $1f
	db $dd                                           ; $5089: $dd
	ld h, e                                          ; $508a: $63
	db $fc                                           ; $508b: $fc
	sbc b                                            ; $508c: $98
	adc b                                            ; $508d: $88
	rra                                              ; $508e: $1f
	ld d, l                                          ; $508f: $55
	rst $38                                          ; $5090: $ff
	xor d                                            ; $5091: $aa
	rst $38                                          ; $5092: $ff
	dec d                                            ; $5093: $15
	ld a, e                                          ; $5094: $7b
	db $fc                                           ; $5095: $fc
	ld [hl], a                                       ; $5096: $77
	ld hl, sp+$37                                    ; $5097: $f8 $37
	db $fc                                           ; $5099: $fc
	rst SubAFromDE                                          ; $509a: $df
	rst $38                                          ; $509b: $ff
	sbc [hl]                                         ; $509c: $9e
	cp a                                             ; $509d: $bf
	ld c, e                                          ; $509e: $4b
	ldh a, [$df]                                     ; $509f: $f0 $df
	rst $38                                          ; $50a1: $ff
	sbc [hl]                                         ; $50a2: $9e
	rst SubAFromDE                                          ; $50a3: $df
	ld a, e                                          ; $50a4: $7b
	db $ec                                           ; $50a5: $ec
	sbc h                                            ; $50a6: $9c
	ld d, a                                          ; $50a7: $57
	rst $38                                          ; $50a8: $ff
	xor e                                            ; $50a9: $ab
	ld h, e                                          ; $50aa: $63
	ldh a, [$db]                                     ; $50ab: $f0 $db
	rst $38                                          ; $50ad: $ff
	sbc h                                            ; $50ae: $9c
	cp $ff                                           ; $50af: $fe $ff
	ld e, l                                          ; $50b1: $5d
	ld d, e                                          ; $50b2: $53
	ldh a, [$df]                                     ; $50b3: $f0 $df
	rst $38                                          ; $50b5: $ff
	ld a, a                                          ; $50b6: $7f
	call c, $f04f                                    ; $50b7: $dc $4f $f0
	sbc h                                            ; $50ba: $9c
	db $fd                                           ; $50bb: $fd
	rst $38                                          ; $50bc: $ff
	ld [$ffd6], a                                    ; $50bd: $ea $d6 $ff
	sbc [hl]                                         ; $50c0: $9e
	cp d                                             ; $50c1: $ba
	ld e, e                                          ; $50c2: $5b
	ret nz                                           ; $50c3: $c0

	sbc h                                            ; $50c4: $9c
	rst AddAOntoHL                                          ; $50c5: $ef
	rst $38                                          ; $50c6: $ff
	push af                                          ; $50c7: $f5
	ld a, e                                          ; $50c8: $7b
	db $e4                                           ; $50c9: $e4
	ld [hl], a                                       ; $50ca: $77
	ldh a, [$7f]                                     ; $50cb: $f0 $7f
	call c, $fb9d                                    ; $50cd: $dc $9d $fb
	db $fd                                           ; $50d0: $fd
	ld d, a                                          ; $50d1: $57
	db $fc                                           ; $50d2: $fc
	sbc e                                            ; $50d3: $9b
	sub e                                            ; $50d4: $93
	db $fc                                           ; $50d5: $fc
	cp b                                             ; $50d6: $b8
	cp $57                                           ; $50d7: $fe $57
	db $fc                                           ; $50d9: $fc
	sbc e                                            ; $50da: $9b
	ld d, c                                          ; $50db: $51
	inc bc                                           ; $50dc: $03
	xor c                                            ; $50dd: $a9
	inc bc                                           ; $50de: $03
	ld d, a                                          ; $50df: $57
	db $fc                                           ; $50e0: $fc
	rst SubAFromHL                                          ; $50e1: $d7
	rst $38                                          ; $50e2: $ff
	sbc h                                            ; $50e3: $9c
	xor a                                            ; $50e4: $af
	rst $38                                          ; $50e5: $ff
	ld e, a                                          ; $50e6: $5f
	ld a, e                                          ; $50e7: $7b
	db $fc                                           ; $50e8: $fc
	sbc e                                            ; $50e9: $9b
	db $ed                                           ; $50ea: $ed
	ldh a, [$fd]                                     ; $50eb: $f0 $fd
	cp $d5                                           ; $50ed: $fe $d5
	rst $38                                          ; $50ef: $ff
	sub a                                            ; $50f0: $97
	ld d, l                                          ; $50f1: $55
	nop                                              ; $50f2: $00
	xor d                                            ; $50f3: $aa
	nop                                              ; $50f4: $00
	or l                                             ; $50f5: $b5
	ret nz                                           ; $50f6: $c0

	ld a, [$67fc]                                    ; $50f7: $fa $fc $67
	db $eb                                           ; $50fa: $eb
	rst $38                                          ; $50fb: $ff
	sbc h                                            ; $50fc: $9c
	and b                                            ; $50fd: $a0
	nop                                              ; $50fe: $00
	ld d, b                                          ; $50ff: $50
	ld a, e                                          ; $5100: $7b
	db $ec                                           ; $5101: $ec
	sbc h                                            ; $5102: $9c
	push de                                          ; $5103: $d5
	nop                                              ; $5104: $00
	ld [$d673], a                                    ; $5105: $ea $73 $d6
	ld a, a                                          ; $5108: $7f
	or $9c                                           ; $5109: $f6 $9c
	dec b                                            ; $510b: $05
	nop                                              ; $510c: $00
	ld [bc], a                                       ; $510d: $02
	db $fc                                           ; $510e: $fc
	ld [hl], a                                       ; $510f: $77
	add sp, -$6e                                     ; $5110: $e8 $92
	xor b                                            ; $5112: $a8
	ret nz                                           ; $5113: $c0

	inc c                                            ; $5114: $0c
	add e                                            ; $5115: $83
	add [hl]                                         ; $5116: $86
	ld bc, $8003                                     ; $5117: $01 $03 $80
	add c                                            ; $511a: $81
	nop                                              ; $511b: $00
	nop                                              ; $511c: $00
	add b                                            ; $511d: $80
	add b                                            ; $511e: $80
	ld [hl], e                                       ; $511f: $73

jr_04b_5120:
	db $fc                                           ; $5120: $fc
	ld h, [hl]                                       ; $5121: $66
	call nz, $c09c                                   ; $5122: $c4 $9c $c0
	ld a, a                                          ; $5125: $7f
	nop                                              ; $5126: $00
	ld a, e                                          ; $5127: $7b
	cp $9d                                           ; $5128: $fe $9d

jr_04b_512a:
	jr nz, jr_04b_518b                               ; $512a: $20 $5f

	ld d, [hl]                                       ; $512c: $56
	ret nz                                           ; $512d: $c0

	sub d                                            ; $512e: $92
	rst SubAFromDE                                          ; $512f: $df
	rra                                              ; $5130: $1f
	adc a                                            ; $5131: $8f
	rra                                              ; $5132: $1f
	dec d                                            ; $5133: $15
	rst $38                                          ; $5134: $ff
	adc d                                            ; $5135: $8a

jr_04b_5136:
	rst $38                                          ; $5136: $ff
	ld b, l                                          ; $5137: $45
	rst $38                                          ; $5138: $ff
	add d                                            ; $5139: $82
	rst $38                                          ; $513a: $ff
	nop                                              ; $513b: $00
	ld a, e                                          ; $513c: $7b
	cp $9c                                           ; $513d: $fe $9c
	jr nz, jr_04b_5120                               ; $513f: $20 $df

	call nc, $3c7b                                   ; $5141: $d4 $7b $3c
	ld a, a                                          ; $5144: $7f
	db $f4                                           ; $5145: $f4
	sub e                                            ; $5146: $93
	ld d, b                                          ; $5147: $50
	xor a                                            ; $5148: $af
	jr nz, jr_04b_512a                               ; $5149: $20 $df

	ld d, c                                          ; $514b: $51
	xor [hl]                                         ; $514c: $ae
	ld [hl+], a                                      ; $514d: $22
	db $dd                                           ; $514e: $dd
	dec b                                            ; $514f: $05
	ld a, [$d728]                                    ; $5150: $fa $28 $d7
	ld l, [hl]                                       ; $5153: $6e
	and b                                            ; $5154: $a0
	sbc e                                            ; $5155: $9b
	ld a, [bc]                                       ; $5156: $0a
	rst $38                                          ; $5157: $ff
	ld b, c                                          ; $5158: $41
	cp a                                             ; $5159: $bf
	ld a, d                                          ; $515a: $7a
	add b                                            ; $515b: $80
	sbc [hl]                                         ; $515c: $9e
	cp a                                             ; $515d: $bf
	ld l, a                                          ; $515e: $6f
	ldh a, [$6f]                                     ; $515f: $f0 $6f
	db $fc                                           ; $5161: $fc
	sbc [hl]                                         ; $5162: $9e
	ld a, [hl+]                                      ; $5163: $2a
	ld [hl], e                                       ; $5164: $73
	call z, $a456                                    ; $5165: $cc $56 $a4
	sbc [hl]                                         ; $5168: $9e
	ld b, h                                          ; $5169: $44
	ld e, e                                          ; $516a: $5b
	ldh a, [$9e]                                     ; $516b: $f0 $9e
	ld d, h                                          ; $516d: $54
	ld a, d                                          ; $516e: $7a
	jr c, jr_04b_51f0                                ; $516f: $38 $7f

	ldh a, [c]                                       ; $5171: $f2
	sbc l                                            ; $5172: $9d
	ld [bc], a                                       ; $5173: $02
	db $fd                                           ; $5174: $fd
	ld d, a                                          ; $5175: $57
	ret nc                                           ; $5176: $d0

	sbc [hl]                                         ; $5177: $9e
	dec b                                            ; $5178: $05
	ld a, e                                          ; $5179: $7b
	ld a, b                                          ; $517a: $78
	ld h, $58                                        ; $517b: $26 $58
	ld h, a                                          ; $517d: $67
	db $fc                                           ; $517e: $fc
	sbc h                                            ; $517f: $9c
	ld a, l                                          ; $5180: $7d
	rst $38                                          ; $5181: $ff
	cp e                                             ; $5182: $bb
	ld a, e                                          ; $5183: $7b
	call z, $ab9e                                    ; $5184: $cc $9e $ab
	ld h, e                                          ; $5187: $63
	db $fc                                           ; $5188: $fc
	ld h, [hl]                                       ; $5189: $66
	ret z                                            ; $518a: $c8

jr_04b_518b:
	sbc h                                            ; $518b: $9c
	db $d3                                           ; $518c: $d3
	cp h                                             ; $518d: $bc
	xor b                                            ; $518e: $a8
	ld a, e                                          ; $518f: $7b
	db $fc                                           ; $5190: $fc
	sbc [hl]                                         ; $5191: $9e
	adc b                                            ; $5192: $88
	ld b, d                                          ; $5193: $42
	ret nz                                           ; $5194: $c0

	ld h, [hl]                                       ; $5195: $66
	jr c, jr_04b_51ee                                ; $5196: $38 $56

	jr nz, jr_04b_5136                               ; $5198: $20 $9c

	rst FarCall                                          ; $519a: $f7
	rst $38                                          ; $519b: $ff
	ld a, [$707a]                                    ; $519c: $fa $7a $70
	ld e, a                                          ; $519f: $5f
	ldh a, [rPCM12]                                  ; $51a0: $f0 $76
	ld h, b                                          ; $51a2: $60
	ld a, $10                                        ; $51a3: $3e $10
	halt                                             ; $51a5: $76
	jr nz, jr_04b_5226                               ; $51a6: $20 $7e

	sub b                                            ; $51a8: $90
	sbc l                                            ; $51a9: $9d
	ld sp, hl                                        ; $51aa: $f9
	db $fc                                           ; $51ab: $fc
	db $d3                                           ; $51ac: $d3
	rst $38                                          ; $51ad: $ff
	ld h, [hl]                                       ; $51ae: $66
	ret z                                            ; $51af: $c8

	ld h, a                                          ; $51b0: $67
	db $fc                                           ; $51b1: $fc
	add a                                            ; $51b2: $87
	jr nc, @+$51                                     ; $51b3: $30 $4f

	ld [$2c47], sp                                   ; $51b5: $08 $47 $2c
	ld b, e                                          ; $51b8: $43
	ld b, $41                                        ; $51b9: $06 $41
	ld [bc], a                                       ; $51bb: $02
	ld b, c                                          ; $51bc: $41
	ld hl, $0040                                     ; $51bd: $21 $40 $00
	ld b, b                                          ; $51c0: $40
	jr nz, jr_04b_5203                               ; $51c1: $20 $40

	rst SubAFromDE                                          ; $51c3: $df
	rrca                                             ; $51c4: $0f
	rst SubAFromDE                                          ; $51c5: $df
	dec b                                            ; $51c6: $05
	rst SubAFromDE                                          ; $51c7: $df
	ld a, [bc]                                       ; $51c8: $0a
	rst SubAFromDE                                          ; $51c9: $df
	dec d                                            ; $51ca: $15
	ld [hl], a                                       ; $51cb: $77
	db $fc                                           ; $51cc: $fc
	sbc l                                            ; $51cd: $9d
	ld e, a                                          ; $51ce: $5f
	ld a, [bc]                                       ; $51cf: $0a
	ld a, d                                          ; $51d0: $7a
	pop bc                                           ; $51d1: $c1
	sbc $ff                                          ; $51d2: $de $ff
	ld l, a                                          ; $51d4: $6f
	and [hl]                                         ; $51d5: $a6
	ld a, a                                          ; $51d6: $7f
	ld b, [hl]                                       ; $51d7: $46
	ld a, [hl]                                       ; $51d8: $7e
	add $89                                          ; $51d9: $c6 $89
	adc l                                            ; $51db: $8d
	rst JumpTable                                          ; $51dc: $c7
	push bc                                          ; $51dd: $c5
	ld a, [$fffc]                                    ; $51de: $fa $fc $ff
	dec a                                            ; $51e1: $3d
	cp $54                                           ; $51e2: $fe $54
	dec c                                            ; $51e4: $0d
	xor a                                            ; $51e5: $af
	inc b                                            ; $51e6: $04
	db $dd                                           ; $51e7: $dd
	inc b                                            ; $51e8: $04
	rst AddAOntoHL                                          ; $51e9: $ef
	inc b                                            ; $51ea: $04
	ld sp, hl                                        ; $51eb: $f9
	inc b                                            ; $51ec: $04
	ld d, b                                          ; $51ed: $50

jr_04b_51ee:
	xor a                                            ; $51ee: $af
	ld a, [bc]                                       ; $51ef: $0a

jr_04b_51f0:
	push af                                          ; $51f0: $f5
	ld e, a                                          ; $51f1: $5f
	sbc l                                            ; $51f2: $9d
	sbc [hl]                                         ; $51f3: $9e
	ld a, a                                          ; $51f4: $7f
	ld a, c                                          ; $51f5: $79
	jr z, jr_04b_5272                                ; $51f6: $28 $7a

	db $fc                                           ; $51f8: $fc
	sbc l                                            ; $51f9: $9d
	xor d                                            ; $51fa: $aa
	add sp, $5f                                      ; $51fb: $e8 $5f
	sub b                                            ; $51fd: $90
	ld [hl], e                                       ; $51fe: $73
	cp $9c                                           ; $51ff: $fe $9c
	ld h, b                                          ; $5201: $60
	sbc a                                            ; $5202: $9f

jr_04b_5203:
	ldh [$da], a                                     ; $5203: $e0 $da
	rst $38                                          ; $5205: $ff
	sbc l                                            ; $5206: $9d
	ld bc, $6ffe                                     ; $5207: $01 $fe $6f
	xor $9b                                          ; $520a: $ee $9b
	xor b                                            ; $520c: $a8
	ld d, a                                          ; $520d: $57
	sub l                                            ; $520e: $95
	ld [$c877], a                                    ; $520f: $ea $77 $c8
	ld [hl], a                                       ; $5212: $77
	ret nc                                           ; $5213: $d0

	sbc l                                            ; $5214: $9d
	ld [de], a                                       ; $5215: $12
	db $ed                                           ; $5216: $ed
	ld [hl], a                                       ; $5217: $77
	xor $7f                                          ; $5218: $ee $7f
	and $9c                                          ; $521a: $e6 $9c
	inc d                                            ; $521c: $14
	db $eb                                           ; $521d: $eb
	ldh a, [$7b]                                     ; $521e: $f0 $7b
	sub [hl]                                         ; $5220: $96
	ld a, [hl]                                       ; $5221: $7e
	ld [hl], h                                       ; $5222: $74
	ld a, [hl]                                       ; $5223: $7e
	cp b                                             ; $5224: $b8
	sbc [hl]                                         ; $5225: $9e

jr_04b_5226:
	ld [bc], a                                       ; $5226: $02
	ld [hl], e                                       ; $5227: $73
	call c, $837f                                    ; $5228: $dc $7f $83
	ld a, a                                          ; $522b: $7f
	ld hl, sp+$5f                                    ; $522c: $f8 $5f
	inc b                                            ; $522e: $04
	sbc [hl]                                         ; $522f: $9e
	and b                                            ; $5230: $a0
	ld l, e                                          ; $5231: $6b
	ld hl, sp+$5e                                    ; $5232: $f8 $5e
	call nz, $fc7f                                   ; $5234: $c4 $7f $fc
	sbc b                                            ; $5237: $98
	add hl, hl                                       ; $5238: $29
	rst $38                                          ; $5239: $ff
	db $d3                                           ; $523a: $d3
	cp h                                             ; $523b: $bc
	ld c, b                                          ; $523c: $48
	cp [hl]                                          ; $523d: $be
	sub e                                            ; $523e: $93
	ld e, e                                          ; $523f: $5b
	db $fc                                           ; $5240: $fc
	ld b, [hl]                                       ; $5241: $46
	ret nz                                           ; $5242: $c0

	ld b, $70                                        ; $5243: $06 $70
	ld b, a                                          ; $5245: $47
	db $fc                                           ; $5246: $fc
	halt                                             ; $5247: $76
	cp b                                             ; $5248: $b8
	ld a, l                                          ; $5249: $7d
	ld e, b                                          ; $524a: $58
	ld [hl], h                                       ; $524b: $74
	ret nz                                           ; $524c: $c0

	sbc [hl]                                         ; $524d: $9e
	cp e                                             ; $524e: $bb
	ld [hl], d                                       ; $524f: $72
	ret nz                                           ; $5250: $c0

	db $d3                                           ; $5251: $d3
	rst $38                                          ; $5252: $ff
	ld a, a                                          ; $5253: $7f
	ld c, [hl]                                       ; $5254: $4e
	ld c, [hl]                                       ; $5255: $4e
	ret nz                                           ; $5256: $c0

	ld a, e                                          ; $5257: $7b
	cp $7a                                           ; $5258: $fe $7a
	call z, $fc57                                    ; $525a: $cc $57 $fc
	sbc d                                            ; $525d: $9a
	ld l, b                                          ; $525e: $68
	rra                                              ; $525f: $1f
	jr nz, jr_04b_5281                               ; $5260: $20 $1f

	nop                                              ; $5262: $00
	ld a, e                                          ; $5263: $7b
	cp $8d                                           ; $5264: $fe $8d
	db $10                                           ; $5266: $10
	rrca                                             ; $5267: $0f
	db $10                                           ; $5268: $10
	rrca                                             ; $5269: $0f
	ld de, $1a0e                                     ; $526a: $11 $0e $1a
	dec b                                            ; $526d: $05
	adc d                                            ; $526e: $8a
	ld b, l                                          ; $526f: $45
	push bc                                          ; $5270: $c5
	ld a, [hl-]                                      ; $5271: $3a

jr_04b_5272:
	ld [$ff15], a                                    ; $5272: $ea $15 $ff
	nop                                              ; $5275: $00
	cp $01                                           ; $5276: $fe $01
	ld [hl], a                                       ; $5278: $77
	db $fc                                           ; $5279: $fc
	sub l                                            ; $527a: $95
	ld e, [hl]                                       ; $527b: $5e
	nop                                              ; $527c: $00
	or a                                             ; $527d: $b7
	ld c, h                                          ; $527e: $4c
	ld d, e                                          ; $527f: $53
	xor h                                            ; $5280: $ac

jr_04b_5281:
	or a                                             ; $5281: $b7
	ld c, h                                          ; $5282: $4c
	ld [hl], e                                       ; $5283: $73
	adc h                                            ; $5284: $8c
	ld [hl], a                                       ; $5285: $77
	db $fc                                           ; $5286: $fc
	sub h                                            ; $5287: $94
	rst FarCall                                          ; $5288: $f7
	inc c                                            ; $5289: $0c
	inc bc                                           ; $528a: $03
	inc c                                            ; $528b: $0c
	ld c, b                                          ; $528c: $48
	or a                                             ; $528d: $b7
	and l                                            ; $528e: $a5
	ld a, [$bf5f]                                    ; $528f: $fa $5f $bf
	inc bc                                           ; $5292: $03
	cp $8e                                           ; $5293: $fe $8e
	ld a, [bc]                                       ; $5295: $0a
	nop                                              ; $5296: $00
	dec d                                            ; $5297: $15
	nop                                              ; $5298: $00
	xor e                                            ; $5299: $ab
	nop                                              ; $529a: $00
	rst $38                                          ; $529b: $ff
	rst $38                                          ; $529c: $ff
	jp $883f                                         ; $529d: $c3 $3f $88


	rst FarCall                                          ; $52a0: $f7
	halt                                             ; $52a1: $76
	rst $38                                          ; $52a2: $ff
	ld e, [hl]                                       ; $52a3: $5e
	ld bc, $6eaa                                     ; $52a4: $01 $aa $6e
	rst SubAFromHL                                          ; $52a7: $d7
	sbc $ff                                          ; $52a8: $de $ff
	sub e                                            ; $52aa: $93
	ld b, a                                          ; $52ab: $47
	cp a                                             ; $52ac: $bf
	cp [hl]                                          ; $52ad: $be
	pop bc                                           ; $52ae: $c1
	ld a, l                                          ; $52af: $7d
	rst $38                                          ; $52b0: $ff
	db $fc                                           ; $52b1: $fc
	inc bc                                           ; $52b2: $03
	ld a, [$bf00]                                    ; $52b3: $fa $00 $bf
	ld b, b                                          ; $52b6: $40
	ld h, h                                          ; $52b7: $64
	or h                                             ; $52b8: $b4
	sbc b                                            ; $52b9: $98
	ld d, h                                          ; $52ba: $54
	db $eb                                           ; $52bb: $eb
	cp d                                             ; $52bc: $ba
	rst $38                                          ; $52bd: $ff
	sbc c                                            ; $52be: $99
	rlca                                             ; $52bf: $07
	ld a, [$e073]                                    ; $52c0: $fa $73 $e0
	ld l, [hl]                                       ; $52c3: $6e
	add [hl]                                         ; $52c4: $86
	ld a, [hl]                                       ; $52c5: $7e
	jp z, Jump_04b_5e7c                              ; $52c6: $ca $7c $5e

jr_04b_52c9:
	sbc h                                            ; $52c9: $9c
	push de                                          ; $52ca: $d5
	dec hl                                           ; $52cb: $2b
	push de                                          ; $52cc: $d5
	sbc $ff                                          ; $52cd: $de $ff
	sub e                                            ; $52cf: $93
	db $e3                                           ; $52d0: $e3
	rst $38                                          ; $52d1: $ff
	xor $f1                                          ; $52d2: $ee $f1
	db $fd                                           ; $52d4: $fd
	ldh [c], a                                       ; $52d5: $e2
	ld l, d                                          ; $52d6: $6a
	push af                                          ; $52d7: $f5
	or b                                             ; $52d8: $b0
	rst AddAOntoHL                                          ; $52d9: $ef
	ld l, b                                          ; $52da: $68
	rst FarCall                                          ; $52db: $f7
	ld l, l                                          ; $52dc: $6d
	db $ec                                           ; $52dd: $ec
	add l                                            ; $52de: $85
	rla                                              ; $52df: $17
	rst $38                                          ; $52e0: $ff
	xor d                                            ; $52e1: $aa
	ld d, l                                          ; $52e2: $55
	ld d, a                                          ; $52e3: $57
	xor b                                            ; $52e4: $a8
	dec bc                                           ; $52e5: $0b
	db $f4                                           ; $52e6: $f4
	ld de, $47e2                                     ; $52e7: $11 $e2 $47
	db $fd                                           ; $52ea: $fd
	xor c                                            ; $52eb: $a9
	rst $38                                          ; $52ec: $ff
	ld e, l                                          ; $52ed: $5d
	rst $38                                          ; $52ee: $ff
	db $eb                                           ; $52ef: $eb
	db $fd                                           ; $52f0: $fd
	ld d, e                                          ; $52f1: $53
	pop hl                                           ; $52f2: $e1
	di                                               ; $52f3: $f3
	ld h, c                                          ; $52f4: $61
	ld b, c                                          ; $52f5: $41
	ld h, c                                          ; $52f6: $61
	di                                               ; $52f7: $f3
	ld h, c                                          ; $52f8: $61
	ld l, [hl]                                       ; $52f9: $6e
	ret z                                            ; $52fa: $c8

	sbc [hl]                                         ; $52fb: $9e
	ld e, b                                          ; $52fc: $58
	ld h, e                                          ; $52fd: $63
	db $fc                                           ; $52fe: $fc
	ld l, [hl]                                       ; $52ff: $6e
	ret z                                            ; $5300: $c8

	sbc b                                            ; $5301: $98
	add hl, hl                                       ; $5302: $29
	inc bc                                           ; $5303: $03
	ld de, $2903                                     ; $5304: $11 $03 $29
	ld [bc], a                                       ; $5307: $02
	db $10                                           ; $5308: $10
	ld a, e                                          ; $5309: $7b
	db $fc                                           ; $530a: $fc
	ld c, [hl]                                       ; $530b: $4e
	jr c, jr_04b_537d                                ; $530c: $38 $6f

	sub c                                            ; $530e: $91
	ld a, h                                          ; $530f: $7c
	ld l, c                                          ; $5310: $69
	ld a, h                                          ; $5311: $7c
	ld c, [hl]                                       ; $5312: $4e
	sub a                                            ; $5313: $97
	xor b                                            ; $5314: $a8
	nop                                              ; $5315: $00
	ret nz                                           ; $5316: $c0

	nop                                              ; $5317: $00
	xor b                                            ; $5318: $a8
	ld b, b                                          ; $5319: $40
	sub b                                            ; $531a: $90
	ld h, b                                          ; $531b: $60
	db $dd                                           ; $531c: $dd
	rst $38                                          ; $531d: $ff
	sub h                                            ; $531e: $94
	rla                                              ; $531f: $17
	add sp, $5f                                      ; $5320: $e8 $5f
	nop                                              ; $5322: $00
	xor a                                            ; $5323: $af
	nop                                              ; $5324: $00
	ld d, l                                          ; $5325: $55
	nop                                              ; $5326: $00
	and c                                            ; $5327: $a1
	nop                                              ; $5328: $00
	ld d, a                                          ; $5329: $57
	ld a, e                                          ; $532a: $7b
	rst SubAFromDE                                          ; $532b: $df
	ld a, l                                          ; $532c: $7d
	ldh a, [$9e]                                     ; $532d: $f0 $9e
	push de                                          ; $532f: $d5
	ld l, h                                          ; $5330: $6c
	push bc                                          ; $5331: $c5
	ld a, e                                          ; $5332: $7b
	cp $7f                                           ; $5333: $fe $7f
	ld c, $88                                        ; $5335: $0e $88
	ld d, e                                          ; $5337: $53
	db $fc                                           ; $5338: $fc
	xor b                                            ; $5339: $a8
	ld e, a                                          ; $533a: $5f
	ld b, d                                          ; $533b: $42
	cp a                                             ; $533c: $bf
	and c                                            ; $533d: $a1
	ld e, a                                          ; $533e: $5f
	ret nc                                           ; $533f: $d0

	cpl                                              ; $5340: $2f
	add sp, $17                                      ; $5341: $e8 $17
	ld d, b                                          ; $5343: $50
	xor a                                            ; $5344: $af
	and b                                            ; $5345: $a0
	ld e, a                                          ; $5346: $5f
	jr nz, jr_04b_52c9                               ; $5347: $20 $80

	ld d, b                                          ; $5349: $50
	add b                                            ; $534a: $80
	ld a, [hl+]                                      ; $534b: $2a
	add b                                            ; $534c: $80
	ld d, l                                          ; $534d: $55
	ld l, e                                          ; $534e: $6b
	db $fc                                           ; $534f: $fc
	sbc h                                            ; $5350: $9c
	xor d                                            ; $5351: $aa
	push de                                          ; $5352: $d5
	jr nz, jr_04b_53cf                               ; $5353: $20 $7a

Jump_04b_5355:
	call z, $fe6f                                    ; $5355: $cc $6f $fe
	sbc [hl]                                         ; $5358: $9e
	ld h, b                                          ; $5359: $60
	ld a, e                                          ; $535a: $7b
	db $fc                                           ; $535b: $fc
	add a                                            ; $535c: $87
	sub h                                            ; $535d: $94
	ld h, b                                          ; $535e: $60
	inc b                                            ; $535f: $04
	rra                                              ; $5360: $1f
	inc de                                           ; $5361: $13
	rrca                                             ; $5362: $0f
	jr @+$09                                         ; $5363: $18 $07

	dec de                                           ; $5365: $1b
	nop                                              ; $5366: $00
	ld e, $01                                        ; $5367: $1e $01
	rla                                              ; $5369: $17
	ld [$100d], sp                                   ; $536a: $08 $0d $10
	ld d, $08                                        ; $536d: $16 $08
	ld hl, sp-$04                                    ; $536f: $f8 $fc
	ld [hl+], a                                      ; $5371: $22
	pop bc                                           ; $5372: $c1
	ld d, e                                          ; $5373: $53
	rrca                                             ; $5374: $0f
	ld [hl], l                                       ; $5375: $75
	or $77                                           ; $5376: $f6 $77
	xor a                                            ; $5378: $af
	ld a, l                                          ; $5379: $7d
	call nc, $0e99                                   ; $537a: $d4 $99 $0e

jr_04b_537d:
	rra                                              ; $537d: $1f
	inc c                                            ; $537e: $0c
	rst $38                                          ; $537f: $ff
	ld c, $ff                                        ; $5380: $0e $ff
	ld e, a                                          ; $5382: $5f
	db $fc                                           ; $5383: $fc
	ld a, l                                          ; $5384: $7d
	cp b                                             ; $5385: $b8
	ld a, a                                          ; $5386: $7f
	xor d                                            ; $5387: $aa
	ld [hl], a                                       ; $5388: $77
	db $fc                                           ; $5389: $fc
	sub a                                            ; $538a: $97
	add [hl]                                         ; $538b: $86
	ld a, b                                          ; $538c: $78
	ld d, l                                          ; $538d: $55
	add b                                            ; $538e: $80
	cp b                                             ; $538f: $b8
	rlca                                             ; $5390: $07
	ld b, b                                          ; $5391: $40
	cp a                                             ; $5392: $bf
	ld [hl], a                                       ; $5393: $77
	jp c, $ea7f                                      ; $5394: $da $7f $ea

	sbc c                                            ; $5397: $99
	inc d                                            ; $5398: $14
	ldh [$aa], a                                     ; $5399: $e0 $aa
	ld bc, $3fcc                                     ; $539b: $01 $cc $3f
	ld [hl], a                                       ; $539e: $77
	db $f4                                           ; $539f: $f4
	sub [hl]                                         ; $53a0: $96
	inc b                                            ; $53a1: $04
	ei                                               ; $53a2: $fb
	ei                                               ; $53a3: $fb
	rst $38                                          ; $53a4: $ff
	ld [$5400], a                                    ; $53a5: $ea $00 $54
	dec bc                                           ; $53a8: $0b
	jr c, jr_04b_5426                                ; $53a9: $38 $7b

	or $7f                                           ; $53ab: $f6 $7f
	ldh a, [c]                                       ; $53ad: $f2
	sbc [hl]                                         ; $53ae: $9e
	dec b                                            ; $53af: $05
	ld a, e                                          ; $53b0: $7b
	db $fc                                           ; $53b1: $fc
	ld a, h                                          ; $53b2: $7c
	ld c, b                                          ; $53b3: $48
	sbc [hl]                                         ; $53b4: $9e
	ret nz                                           ; $53b5: $c0

	ld l, e                                          ; $53b6: $6b
	ld h, c                                          ; $53b7: $61
	sub a                                            ; $53b8: $97
	rra                                              ; $53b9: $1f
	rst $38                                          ; $53ba: $ff
	xor $f0                                          ; $53bb: $ee $f0
	dec d                                            ; $53bd: $15
	ld [$fd02], a                                    ; $53be: $ea $02 $fd
	ld [hl], l                                       ; $53c1: $75
	ld l, h                                          ; $53c2: $6c
	ld [hl], a                                       ; $53c3: $77
	db $fc                                           ; $53c4: $fc
	sbc d                                            ; $53c5: $9a
	push hl                                          ; $53c6: $e5
	ld hl, sp-$56                                    ; $53c7: $f8 $aa
	nop                                              ; $53c9: $00
	ld h, l                                          ; $53ca: $65
	ld a, d                                          ; $53cb: $7a
	cp d                                             ; $53cc: $ba
	ld [hl], a                                       ; $53cd: $77
	db $fc                                           ; $53ce: $fc

jr_04b_53cf:
	sub d                                            ; $53cf: $92
	ld [hl], a                                       ; $53d0: $77
	rst $38                                          ; $53d1: $ff
	add sp, -$01                                     ; $53d2: $e8 $ff
	db $fd                                           ; $53d4: $fd
	ld [hl], d                                       ; $53d5: $72
	ld h, e                                          ; $53d6: $63
	rst $38                                          ; $53d7: $ff
	ld b, b                                          ; $53d8: $40
	and b                                            ; $53d9: $a0
	xor [hl]                                         ; $53da: $ae
	ld d, b                                          ; $53db: $50
	ld e, l                                          ; $53dc: $5d
	ld a, e                                          ; $53dd: $7b
	db $fc                                           ; $53de: $fc
	sub h                                            ; $53df: $94
	dec c                                            ; $53e0: $0d
	ldh a, [rTMA]                                    ; $53e1: $f0 $06
	ld [$005d], sp                                   ; $53e3: $08 $5d $00
	ld d, $e8                                        ; $53e6: $16 $e8
	ld [hl], e                                       ; $53e8: $73
	ld h, c                                          ; $53e9: $61
	db $d3                                           ; $53ea: $d3
	ld a, e                                          ; $53eb: $7b
	cp $9e                                           ; $53ec: $fe $9e
	db $e3                                           ; $53ee: $e3
	ld a, e                                          ; $53ef: $7b
	cp $7e                                           ; $53f0: $fe $7e
	call nz, $fe7f                                   ; $53f2: $c4 $7f $fe
	sub h                                            ; $53f5: $94
	pop hl                                           ; $53f6: $e1
	ld h, c                                          ; $53f7: $61
	db $10                                           ; $53f8: $10
	cp [hl]                                          ; $53f9: $be
	ld e, e                                          ; $53fa: $5b
	cp h                                             ; $53fb: $bc
	db $10                                           ; $53fc: $10
	cp [hl]                                          ; $53fd: $be
	ld d, e                                          ; $53fe: $53
	cp h                                             ; $53ff: $bc
	inc d                                            ; $5400: $14
	ld [hl], e                                       ; $5401: $73
	ld hl, sp+$7f                                    ; $5402: $f8 $7f
	db $fc                                           ; $5404: $fc

jr_04b_5405:
	sbc d                                            ; $5405: $9a
	cp c                                             ; $5406: $b9
	inc bc                                           ; $5407: $03
	ld e, b                                          ; $5408: $58
	inc bc                                           ; $5409: $03
	cp b                                             ; $540a: $b8
	ld a, e                                          ; $540b: $7b
	db $fc                                           ; $540c: $fc
	ld [hl], a                                       ; $540d: $77
	ld hl, sp+$7e                                    ; $540e: $f8 $7e
	or [hl]                                          ; $5410: $b6
	ld a, a                                          ; $5411: $7f
	db $fc                                           ; $5412: $fc
	sbc l                                            ; $5413: $9d
	jr jr_04b_5405                                   ; $5414: $18 $ef

	ld c, a                                          ; $5416: $4f
	cp $8d                                           ; $5417: $fe $8d
	sbc b                                            ; $5419: $98
	ld h, b                                          ; $541a: $60
	xor h                                            ; $541b: $ac
	ld d, b                                          ; $541c: $50
	add [hl]                                         ; $541d: $86
	ld a, b                                          ; $541e: $78
	add d                                            ; $541f: $82
	ld a, h                                          ; $5420: $7c
	add l                                            ; $5421: $85
	ld a, d                                          ; $5422: $7a
	xor d                                            ; $5423: $aa
	ld d, l                                          ; $5424: $55
	ret nc                                           ; $5425: $d0

jr_04b_5426:
	cpl                                              ; $5426: $2f
	xor d                                            ; $5427: $aa
	ld d, l                                          ; $5428: $55
	cp a                                             ; $5429: $bf
	nop                                              ; $542a: $00
	halt                                             ; $542b: $76
	call nz, $c87e                                   ; $542c: $c4 $7e $c8
	ld a, [hl]                                       ; $542f: $7e
	ld b, $7a                                        ; $5430: $06 $7a
	ldh a, [$8c]                                     ; $5432: $f0 $8c
	ret nz                                           ; $5434: $c0

	dec [hl]                                         ; $5435: $35
	ret nz                                           ; $5436: $c0

	db $fd                                           ; $5437: $fd
	ld [bc], a                                       ; $5438: $02
	ld a, [$f705]                                    ; $5439: $fa $05 $f7
	ld [$06f8], sp                                   ; $543c: $08 $f8 $06
	push af                                          ; $543f: $f5
	ld c, $e0                                        ; $5440: $0e $e0
	ld e, $c5                                        ; $5442: $1e $c5

Call_04b_5444:
	ld a, $e3                                        ; $5444: $3e $e3
	inc e                                            ; $5446: $1c
	ld [hl], h                                       ; $5447: $74
	ldh [$6f], a                                     ; $5448: $e0 $6f
	ld b, $7f                                        ; $544a: $06 $7f
	cp $96                                           ; $544c: $fe $96
	ld bc, $ca7e                                     ; $544e: $01 $7e $ca
	dec [hl]                                         ; $5451: $35
	dec [hl]                                         ; $5452: $35
	adc d                                            ; $5453: $8a
	ld d, l                                          ; $5454: $55
	add b                                            ; $5455: $80
	ld a, [hl-]                                      ; $5456: $3a
	ld h, d                                          ; $5457: $62
	ret nz                                           ; $5458: $c0

	adc c                                            ; $5459: $89
	ld a, l                                          ; $545a: $7d
	add b                                            ; $545b: $80
	ld c, d                                          ; $545c: $4a
	push af                                          ; $545d: $f5
	dec h                                            ; $545e: $25
	ld b, b                                          ; $545f: $40
	xor b                                            ; $5460: $a8
	ld b, b                                          ; $5461: $40
	inc d                                            ; $5462: $14
	ld h, b                                          ; $5463: $60
	xor b                                            ; $5464: $a8
	ld b, b                                          ; $5465: $40
	inc [hl]                                         ; $5466: $34
	ld b, b                                          ; $5467: $40
	adc d                                            ; $5468: $8a
	ld h, b                                          ; $5469: $60
	ld [hl], h                                       ; $546a: $74
	ld b, b                                          ; $546b: $40
	ld l, a                                          ; $546c: $6f
	sub b                                            ; $546d: $90
	ld e, [hl]                                       ; $546e: $5e
	nop                                              ; $546f: $00
	halt                                             ; $5470: $76
	ret z                                            ; $5471: $c8

	ld a, l                                          ; $5472: $7d
	add c                                            ; $5473: $81
	ld a, a                                          ; $5474: $7f
	db $fc                                           ; $5475: $fc
	sbc [hl]                                         ; $5476: $9e
	adc a                                            ; $5477: $8f
	ld a, e                                          ; $5478: $7b
	db $fc                                           ; $5479: $fc
	adc [hl]                                         ; $547a: $8e
	ld b, b                                          ; $547b: $40
	ccf                                              ; $547c: $3f
	and b                                            ; $547d: $a0
	rra                                              ; $547e: $1f
	ld d, b                                          ; $547f: $50
	rrca                                             ; $5480: $0f
	and b                                            ; $5481: $a0
	rrca                                             ; $5482: $0f
	ld e, b                                          ; $5483: $58
	rlca                                             ; $5484: $07
	xor h                                            ; $5485: $ac
	inc bc                                           ; $5486: $03
	ld d, [hl]                                       ; $5487: $56
	ld bc, $00ab                                     ; $5488: $01 $ab $00
	inc c                                            ; $548b: $0c
	ld a, d                                          ; $548c: $7a
	ldh [c], a                                       ; $548d: $e2
	ld d, a                                          ; $548e: $57
	cp $77                                           ; $548f: $fe $77
	add d                                            ; $5491: $82
	ld a, a                                          ; $5492: $7f
	db $fc                                           ; $5493: $fc
	ld h, a                                          ; $5494: $67
	ld a, d                                          ; $5495: $7a
	sbc b                                            ; $5496: $98
	dec hl                                           ; $5497: $2b
	nop                                              ; $5498: $00
	db $fd                                           ; $5499: $fd
	ld [bc], a                                       ; $549a: $02
	cp $01                                           ; $549b: $fe $01
	db $fd                                           ; $549d: $fd

Call_04b_549e:
	ld l, [hl]                                       ; $549e: $6e
	sub e                                            ; $549f: $93
	ld [hl], e                                       ; $54a0: $73
	cp $94                                           ; $54a1: $fe $94
	ld d, h                                          ; $54a3: $54
	xor e                                            ; $54a4: $ab
	xor d                                            ; $54a5: $aa
	ld d, c                                          ; $54a6: $51
	push de                                          ; $54a7: $d5
	ld a, [hl+]                                      ; $54a8: $2a
	ld [$f511], a                                    ; $54a9: $ea $11 $f5
	ld a, [bc]                                       ; $54ac: $0a
	ld a, [$3e79]                                    ; $54ad: $fa $79 $3e
	ld a, [hl]                                       ; $54b0: $7e
	pop bc                                           ; $54b1: $c1
	sbc d                                            ; $54b2: $9a
	push bc                                          ; $54b3: $c5
	nop                                              ; $54b4: $00
	ld b, a                                          ; $54b5: $47
	cp a                                             ; $54b6: $bf
	ldh [$5f], a                                     ; $54b7: $e0 $5f
	pop hl                                           ; $54b9: $e1
	add b                                            ; $54ba: $80
	rst $38                                          ; $54bb: $ff
	dec [hl]                                         ; $54bc: $35

jr_04b_54bd:
	ld a, [bc]                                       ; $54bd: $0a
	ld c, $f0                                        ; $54be: $0e $f0
	ld d, a                                          ; $54c0: $57
	xor b                                            ; $54c1: $a8
	adc e                                            ; $54c2: $8b
	ld [hl], h                                       ; $54c3: $74
	ld d, a                                          ; $54c4: $57
	xor b                                            ; $54c5: $a8
	xor e                                            ; $54c6: $ab
	ld d, h                                          ; $54c7: $54
	ld d, a                                          ; $54c8: $57
	xor b                                            ; $54c9: $a8
	xor d                                            ; $54ca: $aa
	ld d, l                                          ; $54cb: $55
	jr nc, jr_04b_54bd                               ; $54cc: $30 $ef

	jp nz, $b07d                                     ; $54ce: $c2 $7d $b0

	ld l, a                                          ; $54d1: $6f
	ret c                                            ; $54d2: $d8

	ld h, a                                          ; $54d3: $67
	db $fc                                           ; $54d4: $fc
	ld h, e                                          ; $54d5: $63

jr_04b_54d6:
	sbc b                                            ; $54d6: $98
	ld h, a                                          ; $54d7: $67
	pop hl                                           ; $54d8: $e1
	ld a, [hl]                                       ; $54d9: $7e
	ld a, a                                          ; $54da: $7f
	ldh [$98], a                                     ; $54db: $e0 $98
	cpl                                              ; $54dd: $2f
	ret nc                                           ; $54de: $d0

	ld d, $e8                                        ; $54df: $16 $e8
	dec hl                                           ; $54e1: $2b
	call nc, Call_04b_7956                           ; $54e2: $d4 $56 $79
	add h                                            ; $54e5: $84
	ld a, a                                          ; $54e6: $7f
	ld hl, sp-$6a                                    ; $54e7: $f8 $96
	inc bc                                           ; $54e9: $03
	db $fc                                           ; $54ea: $fc
	ld bc, $f3fe                                     ; $54eb: $01 $fe $f3
	ld h, c                                          ; $54ee: $61
	pop af                                           ; $54ef: $f1
	ld h, c                                          ; $54f0: $61
	ld h, e                                          ; $54f1: $63
	ld a, e                                          ; $54f2: $7b
	db $fc                                           ; $54f3: $fc
	ld [hl], a                                       ; $54f4: $77
	ld hl, sp+$77                                    ; $54f5: $f8 $77
	db $fc                                           ; $54f7: $fc
	halt                                             ; $54f8: $76
	call z, $189e                                    ; $54f9: $cc $9e $18
	ld l, d                                          ; $54fc: $6a
	call nz, $fc77                                   ; $54fd: $c4 $77 $fc
	sbc [hl]                                         ; $5500: $9e
	xor b                                            ; $5501: $a8
	ld l, d                                          ; $5502: $6a
	ret z                                            ; $5503: $c8

	ld h, a                                          ; $5504: $67
	ld hl, sp+$56                                    ; $5505: $f8 $56
	call nz, $f897                                   ; $5507: $c4 $97 $f8
	rst AddAOntoHL                                          ; $550a: $ef
	rst $38                                          ; $550b: $ff
	rra                                              ; $550c: $1f
	push de                                          ; $550d: $d5
	ld a, [hl+]                                      ; $550e: $2a
	xor d                                            ; $550f: $aa
	ld d, l                                          ; $5510: $55
	ld d, a                                          ; $5511: $57
	db $fc                                           ; $5512: $fc
	sub d                                            ; $5513: $92
	jr nc, jr_04b_54d6                               ; $5514: $30 $c0

	adc b                                            ; $5516: $88
	ld [hl], b                                       ; $5517: $70
	ld c, h                                          ; $5518: $4c
	or b                                             ; $5519: $b0
	and d                                            ; $551a: $a2
	ld e, h                                          ; $551b: $5c
	ld c, l                                          ; $551c: $4d
	cp [hl]                                          ; $551d: $be
	sbc [hl]                                         ; $551e: $9e
	ld a, a                                          ; $551f: $7f
	ccf                                              ; $5520: $3f
	ld a, b                                          ; $5521: $78
	ld sp, hl                                        ; $5522: $f9
	add b                                            ; $5523: $80
	ld b, c                                          ; $5524: $41
	cp [hl]                                          ; $5525: $be
	and d                                            ; $5526: $a2
	ld e, l                                          ; $5527: $5d
	ld d, e                                          ; $5528: $53
	inc l                                            ; $5529: $2c
	xor d                                            ; $552a: $aa
	dec d                                            ; $552b: $15
	ld d, h                                          ; $552c: $54
	dec bc                                           ; $552d: $0b
	xor d                                            ; $552e: $aa
	dec d                                            ; $552f: $15
	push af                                          ; $5530: $f5
	adc d                                            ; $5531: $8a
	ld a, [$45c5]                                    ; $5532: $fa $c5 $45
	cp d                                             ; $5535: $ba
	xor d                                            ; $5536: $aa
	ld d, l                                          ; $5537: $55
	ld d, l                                          ; $5538: $55
	xor d                                            ; $5539: $aa
	xor d                                            ; $553a: $aa
	ld d, l                                          ; $553b: $55
	ld d, h                                          ; $553c: $54
	xor d                                            ; $553d: $aa
	xor b                                            ; $553e: $a8
	ld d, h                                          ; $553f: $54
	ld d, c                                          ; $5540: $51
	xor b                                            ; $5541: $a8
	and e                                            ; $5542: $a3
	sbc c                                            ; $5543: $99
	ld d, b                                          ; $5544: $50
	ld a, [hl-]                                      ; $5545: $3a
	add b                                            ; $5546: $80
	ld e, l                                          ; $5547: $5d
	add b                                            ; $5548: $80
	ld a, $7a                                        ; $5549: $3e $7a
	or e                                             ; $554b: $b3
	sbc [hl]                                         ; $554c: $9e
	ccf                                              ; $554d: $3f
	ld l, e                                          ; $554e: $6b
	db $fc                                           ; $554f: $fc
	ld a, [hl]                                       ; $5550: $7e
	call z, $359e                                    ; $5551: $cc $9e $35
	ld a, d                                          ; $5554: $7a
	ret z                                            ; $5555: $c8

	sbc [hl]                                         ; $5556: $9e
	ld [hl], l                                       ; $5557: $75
	ld l, e                                          ; $5558: $6b
	db $fc                                           ; $5559: $fc
	sub [hl]                                         ; $555a: $96
	ld e, l                                          ; $555b: $5d
	ld h, b                                          ; $555c: $60
	adc a                                            ; $555d: $8f
	db $10                                           ; $555e: $10
	rla                                              ; $555f: $17
	ld [$148b], sp                                   ; $5560: $08 $8b $14
	ld d, a                                          ; $5563: $57
	ld a, e                                          ; $5564: $7b
	db $fc                                           ; $5565: $fc
	add b                                            ; $5566: $80
	ld d, l                                          ; $5567: $55
	ld a, [bc]                                       ; $5568: $0a
	and d                                            ; $5569: $a2
	dec e                                            ; $556a: $1d
	ld d, l                                          ; $556b: $55
	ld a, [bc]                                       ; $556c: $0a
	ld d, l                                          ; $556d: $55
	nop                                              ; $556e: $00
	xor b                                            ; $556f: $a8
	nop                                              ; $5570: $00
	ld d, h                                          ; $5571: $54
	nop                                              ; $5572: $00
	xor d                                            ; $5573: $aa
	nop                                              ; $5574: $00

jr_04b_5575:
	call nc, $fa00                                   ; $5575: $d4 $00 $fa
	nop                                              ; $5578: $00
	cp l                                             ; $5579: $bd
	ld b, b                                          ; $557a: $40
	ld e, d                                          ; $557b: $5a
	and b                                            ; $557c: $a0
	adc h                                            ; $557d: $8c
	ld a, a                                          ; $557e: $7f
	inc c                                            ; $557f: $0c
	ld a, a                                          ; $5580: $7f
	inc c                                            ; $5581: $0c
	ccf                                              ; $5582: $3f
	ld c, h                                          ; $5583: $4c
	rra                                              ; $5584: $1f
	inc l                                            ; $5585: $2c
	sub e                                            ; $5586: $93
	rrca                                             ; $5587: $0f
	inc b                                            ; $5588: $04
	rrca                                             ; $5589: $0f
	sbc b                                            ; $558a: $98
	rrca                                             ; $558b: $0f
	ld b, h                                          ; $558c: $44
	dec bc                                           ; $558d: $0b
	dec b                                            ; $558e: $05
	nop                                              ; $558f: $00
	ld [bc], a                                       ; $5590: $02
	nop                                              ; $5591: $00
	ld bc, $96fc                                     ; $5592: $01 $fc $96
	dec d                                            ; $5595: $15
	ld a, [bc]                                       ; $5596: $0a
	db $10                                           ; $5597: $10
	rrca                                             ; $5598: $0f
	db $10                                           ; $5599: $10
	rrca                                             ; $559a: $0f
	rst $38                                          ; $559b: $ff
	nop                                              ; $559c: $00
	cp d                                             ; $559d: $ba
	ld a, b                                          ; $559e: $78
	or $7f                                           ; $559f: $f6 $7f
	ret nc                                           ; $55a1: $d0

	ld a, a                                          ; $55a2: $7f
	db $fc                                           ; $55a3: $fc
	ld a, l                                          ; $55a4: $7d
	adc d                                            ; $55a5: $8a
	sbc h                                            ; $55a6: $9c
	adc a                                            ; $55a7: $8f
	ldh a, [$50]                                     ; $55a8: $f0 $50
	ld a, b                                          ; $55aa: $78
	rst JumpTable                                          ; $55ab: $c7
	sbc h                                            ; $55ac: $9c
	and c                                            ; $55ad: $a1
	ld a, [bc]                                       ; $55ae: $0a
	ld e, a                                          ; $55af: $5f
	ld a, d                                          ; $55b0: $7a
	ld [hl+], a                                      ; $55b1: $22
	ld a, [hl]                                       ; $55b2: $7e
	ld l, d                                          ; $55b3: $6a
	ld a, a                                          ; $55b4: $7f
	db $fc                                           ; $55b5: $fc
	sbc e                                            ; $55b6: $9b
	ld d, [hl]                                       ; $55b7: $56
	nop                                              ; $55b8: $00
	ld a, e                                          ; $55b9: $7b
	add b                                            ; $55ba: $80
	ld e, d                                          ; $55bb: $5a
	push bc                                          ; $55bc: $c5
	ld [hl], e                                       ; $55bd: $73
	cp $7e                                           ; $55be: $fe $7e
	call z, $a47d                                    ; $55c0: $cc $7d $a4
	sub c                                            ; $55c3: $91
	rst SubAFromDE                                          ; $55c4: $df
	jr nz, jr_04b_5575                               ; $55c5: $20 $ae

	ld d, b                                          ; $55c7: $50
	rst $38                                          ; $55c8: $ff
	nop                                              ; $55c9: $00
	and $18                                          ; $55ca: $e6 $18
	rst FarCall                                          ; $55cc: $f7
	ld [$00ff], sp                                   ; $55cd: $08 $ff $00
	db $fd                                           ; $55d0: $fd
	ld h, d                                          ; $55d1: $62
	halt                                             ; $55d2: $76
	call nz, $da9d                                   ; $55d3: $c4 $9d $da
	ld h, l                                          ; $55d6: $65
	ld [hl], a                                       ; $55d7: $77
	db $fc                                           ; $55d8: $fc
	adc c                                            ; $55d9: $89
	call c, Call_04b_5863                            ; $55da: $dc $63 $58
	rst SubAFromBC                                          ; $55dd: $e7
	nop                                              ; $55de: $00
	rst $38                                          ; $55df: $ff
	dec d                                            ; $55e0: $15
	ld [$f40b], a                                    ; $55e1: $ea $0b $f4
	dec b                                            ; $55e4: $05
	ld a, [$fc03]                                    ; $55e5: $fa $03 $fc
	add l                                            ; $55e8: $85
	ld a, d                                          ; $55e9: $7a
	inc bc                                           ; $55ea: $03
	db $fc                                           ; $55eb: $fc
	xor c                                            ; $55ec: $a9
	cp $73                                           ; $55ed: $fe $73
	pop hl                                           ; $55ef: $e1
	halt                                             ; $55f0: $76
	ret z                                            ; $55f1: $c8

	ld e, a                                          ; $55f2: $5f
	cp $7e                                           ; $55f3: $fe $7e
	call z, $599d                                    ; $55f5: $cc $9d $59
	cp [hl]                                          ; $55f8: $be
	ld d, a                                          ; $55f9: $57
	db $fc                                           ; $55fa: $fc
	ld a, l                                          ; $55fb: $7d
	ld [$c466], sp                                   ; $55fc: $08 $66 $c4
	sbc [hl]                                         ; $55ff: $9e
	jr @+$7d                                         ; $5600: $18 $7b

	ld hl, sp-$62                                    ; $5602: $f8 $9e
	add hl, de                                       ; $5604: $19
	ld b, c                                          ; $5605: $41
	add b                                            ; $5606: $80
	ld e, [hl]                                       ; $5607: $5e
	call nz, $ca7c                                   ; $5608: $c4 $7c $ca
	sub b                                            ; $560b: $90
	db $d3                                           ; $560c: $d3
	cpl                                              ; $560d: $2f
	and a                                            ; $560e: $a7
	ld e, a                                          ; $560f: $5f
	ld a, a                                          ; $5610: $7f
	rst $38                                          ; $5611: $ff
	cp a                                             ; $5612: $bf
	ld a, a                                          ; $5613: $7f
	ld a, a                                          ; $5614: $7f
	cp a                                             ; $5615: $bf
	sbc a                                            ; $5616: $9f
	ld a, a                                          ; $5617: $7f
	ld e, a                                          ; $5618: $5f
	cp a                                             ; $5619: $bf
	ld c, $78                                        ; $561a: $0e $78
	jr z, jr_04b_569d                                ; $561c: $28 $7f

	cp $8c                                           ; $561e: $fe $8c
	push af                                          ; $5620: $f5
	ret nz                                           ; $5621: $c0

	ld [$f5e0], a                                    ; $5622: $ea $e0 $f5
	ldh a, [$fa]                                     ; $5625: $f0 $fa
	ld hl, sp+$38                                    ; $5627: $f8 $38
	db $fc                                           ; $5629: $fc
	sub d                                            ; $562a: $92
	ld hl, sp+$5f                                    ; $562b: $f8 $5f
	ldh a, [$8e]                                     ; $562d: $f0 $8e
	pop hl                                           ; $562f: $e1
	ld b, a                                          ; $5630: $47
	and b                                            ; $5631: $a0
	rst SubAFromDE                                          ; $5632: $df
	ld a, c                                          ; $5633: $79
	ldh [c], a                                       ; $5634: $e2
	ld [hl], c                                       ; $5635: $71
	ld a, l                                          ; $5636: $7d
	ld a, d                                          ; $5637: $7a
	ld [bc], a                                       ; $5638: $02
	sbc [hl]                                         ; $5639: $9e
	ld d, a                                          ; $563a: $57
	ld [hl], l                                       ; $563b: $75
	ld a, c                                          ; $563c: $79
	sub c                                            ; $563d: $91
	add b                                            ; $563e: $80
	ld [hl], a                                       ; $563f: $77
	adc b                                            ; $5640: $88
	ld l, a                                          ; $5641: $6f
	sub b                                            ; $5642: $90
	rst FarCall                                          ; $5643: $f7
	adc b                                            ; $5644: $88
	ld l, e                                          ; $5645: $6b
	sub h                                            ; $5646: $94
	rst SubAFromHL                                          ; $5647: $d7
	xor b                                            ; $5648: $a8
	ld l, e                                          ; $5649: $6b
	sub h                                            ; $564a: $94
	sbc [hl]                                         ; $564b: $9e
	ld a, d                                          ; $564c: $7a
	call z, $bf9c                                    ; $564d: $cc $9c $bf
	ld b, b                                          ; $5650: $40
	ld e, a                                          ; $5651: $5f
	ld a, e                                          ; $5652: $7b
	db $fc                                           ; $5653: $fc
	sbc [hl]                                         ; $5654: $9e
	rst SubAFromDE                                          ; $5655: $df
	ld [hl], e                                       ; $5656: $73
	db $fc                                           ; $5657: $fc
	ld a, [hl]                                       ; $5658: $7e
	call z, $c585                                    ; $5659: $cc $85 $c5
	ld a, [de]                                       ; $565c: $1a
	ld [$5515], a                                    ; $565d: $ea $15 $55
	adc d                                            ; $5660: $8a
	ld [$4415], a                                    ; $5661: $ea $15 $44
	sbc e                                            ; $5664: $9b
	add sp, $17                                      ; $5665: $e8 $17
	ld b, b                                          ; $5667: $40
	sbc a                                            ; $5668: $9f
	cp l                                             ; $5669: $bd
	ld b, b                                          ; $566a: $40
	ld e, $e0                                        ; $566b: $1e $e0
	dec l                                            ; $566d: $2d
	ret nc                                           ; $566e: $d0

	ld e, $e0                                        ; $566f: $1e $e0
	cpl                                              ; $5671: $2f
	ret nc                                           ; $5672: $d0

	rla                                              ; $5673: $17
	add sp, $77                                      ; $5674: $e8 $77
	db $fc                                           ; $5676: $fc
	add b                                            ; $5677: $80
	ld d, [hl]                                       ; $5678: $56
	add hl, bc                                       ; $5679: $09
	and a                                            ; $567a: $a7
	ld [$0855], sp                                   ; $567b: $08 $55 $08
	and e                                            ; $567e: $a3
	inc c                                            ; $567f: $0c
	ld d, h                                          ; $5680: $54
	ld a, [bc]                                       ; $5681: $0a
	or e                                             ; $5682: $b3
	inc c                                            ; $5683: $0c
	db $ed                                           ; $5684: $ed
	ld a, [de]                                       ; $5685: $1a
	ldh a, [c]                                       ; $5686: $f2
	dec c                                            ; $5687: $0d
	and a                                            ; $5688: $a7
	ld e, a                                          ; $5689: $5f
	ld c, e                                          ; $568a: $4b
	cp a                                             ; $568b: $bf
	and b                                            ; $568c: $a0
	ld e, a                                          ; $568d: $5f
	ret nz                                           ; $568e: $c0

	ccf                                              ; $568f: $3f
	ld l, b                                          ; $5690: $68
	rra                                              ; $5691: $1f
	jr nc, jr_04b_56b3                               ; $5692: $30 $1f

	nop                                              ; $5694: $00
	rra                                              ; $5695: $1f
	sbc [hl]                                         ; $5696: $9e
	sub e                                            ; $5697: $93
	rrca                                             ; $5698: $0f
	nop                                              ; $5699: $00
	rst $38                                          ; $569a: $ff
	dec bc                                           ; $569b: $0b
	db $f4                                           ; $569c: $f4

jr_04b_569d:
	ld [hl], h                                       ; $569d: $74
	adc e                                            ; $569e: $8b
	pop bc                                           ; $569f: $c1
	ccf                                              ; $56a0: $3f
	xor [hl]                                         ; $56a1: $ae
	ld a, a                                          ; $56a2: $7f
	sub b                                            ; $56a3: $90
	ld a, e                                          ; $56a4: $7b
	sub l                                            ; $56a5: $95
	ld a, a                                          ; $56a6: $7f
	ldh a, [c]                                       ; $56a7: $f2
	sub d                                            ; $56a8: $92
	ld [hl], $c0                                     ; $56a9: $36 $c0
	cp $01                                           ; $56ab: $fe $01
	dec c                                            ; $56ad: $0d
	ei                                               ; $56ae: $fb
	ld d, e                                          ; $56af: $53
	rst $38                                          ; $56b0: $ff
	xor c                                            ; $56b1: $a9
	rst $38                                          ; $56b2: $ff

jr_04b_56b3:
	ld d, b                                          ; $56b3: $50
	rst $38                                          ; $56b4: $ff
	inc h                                            ; $56b5: $24
	ld a, b                                          ; $56b6: $78
	ld b, d                                          ; $56b7: $42
	ld a, l                                          ; $56b8: $7d
	ld h, h                                          ; $56b9: $64
	sbc b                                            ; $56ba: $98
	ld a, [hl+]                                      ; $56bb: $2a
	rst $38                                          ; $56bc: $ff
	ld d, l                                          ; $56bd: $55
	rst $38                                          ; $56be: $ff
	xor d                                            ; $56bf: $aa
	rst $38                                          ; $56c0: $ff
	ld b, b                                          ; $56c1: $40
	ld [hl], d                                       ; $56c2: $72
	pop bc                                           ; $56c3: $c1
	ld a, h                                          ; $56c4: $7c
	ld b, h                                          ; $56c5: $44
	adc b                                            ; $56c6: $88
	rlca                                             ; $56c7: $07
	ld hl, sp-$55                                    ; $56c8: $f8 $ab
	db $fc                                           ; $56ca: $fc
	ld d, a                                          ; $56cb: $57
	ld hl, sp-$75                                    ; $56cc: $f8 $8b
	db $f4                                           ; $56ce: $f4
	ld b, $f8                                        ; $56cf: $06 $f8
	rrca                                             ; $56d1: $0f
	ldh a, [rAUD2LEN]                                ; $56d2: $f0 $16
	add sp, -$53                                     ; $56d4: $e8 $ad
	ld d, b                                          ; $56d6: $50
	db $dd                                           ; $56d7: $dd
	ld h, a                                          ; $56d8: $67
	ld d, d                                          ; $56d9: $52
	rst AddAOntoHL                                          ; $56da: $ef
	reti                                             ; $56db: $d9


	ld h, a                                          ; $56dc: $67
	ret nc                                           ; $56dd: $d0

	ld a, c                                          ; $56de: $79
	ld a, [hl]                                       ; $56df: $7e
	ld l, a                                          ; $56e0: $6f
	db $fc                                           ; $56e1: $fc
	sbc [hl]                                         ; $56e2: $9e
	ld d, e                                          ; $56e3: $53
	ld a, c                                          ; $56e4: $79
	adc h                                            ; $56e5: $8c
	ld [hl], l                                       ; $56e6: $75
	adc b                                            ; $56e7: $88
	ld l, a                                          ; $56e8: $6f
	db $fc                                           ; $56e9: $fc
	ld a, [hl]                                       ; $56ea: $7e
	cp b                                             ; $56eb: $b8
	ld d, [hl]                                       ; $56ec: $56
	call nz, $c02e                                   ; $56ed: $c4 $2e $c0
	ld a, [hl]                                       ; $56f0: $7e
	call z, $fc77                                    ; $56f1: $cc $77 $fc
	sbc [hl]                                         ; $56f4: $9e
	sbc d                                            ; $56f5: $9a
	ld a, e                                          ; $56f6: $7b
	db $fc                                           ; $56f7: $fc
	sbc [hl]                                         ; $56f8: $9e
	cp d                                             ; $56f9: $ba
	ld a, e                                          ; $56fa: $7b
	db $fc                                           ; $56fb: $fc
	halt                                             ; $56fc: $76
	call z, Call_04b_697e                            ; $56fd: $cc $7e $69
	ld e, a                                          ; $5700: $5f
	cp $99                                           ; $5701: $fe $99
	push de                                          ; $5703: $d5
	dec hl                                           ; $5704: $2b
	xor d                                            ; $5705: $aa
	ld d, l                                          ; $5706: $55
	call nc, $772b                                   ; $5707: $d4 $2b $77
	ld c, [hl]                                       ; $570a: $4e
	ld a, a                                          ; $570b: $7f
	ld h, d                                          ; $570c: $62
	ld [hl], a                                       ; $570d: $77
	db $fc                                           ; $570e: $fc
	add b                                            ; $570f: $80
	inc [hl]                                         ; $5710: $34
	rst $38                                          ; $5711: $ff
	ld d, b                                          ; $5712: $50
	xor a                                            ; $5713: $af
	and l                                            ; $5714: $a5
	ld e, d                                          ; $5715: $5a
	ld b, d                                          ; $5716: $42
	cp h                                             ; $5717: $bc
	and c                                            ; $5718: $a1
	ld e, b                                          ; $5719: $58
	ld b, b                                          ; $571a: $40
	or c                                             ; $571b: $b1
	and l                                            ; $571c: $a5
	ld b, d                                          ; $571d: $42
	ld c, e                                          ; $571e: $4b
	add h                                            ; $571f: $84
	ld c, d                                          ; $5720: $4a
	add b                                            ; $5721: $80
	sub h                                            ; $5722: $94
	inc de                                           ; $5723: $13
	ld l, d                                          ; $5724: $6a
	ld sp, $70e0                                     ; $5725: $31 $e0 $70
	and c                                            ; $5728: $a1
	ldh a, [$61]                                     ; $5729: $f0 $61
	ldh a, [$72]                                     ; $572b: $f0 $72
	pop hl                                           ; $572d: $e1
	pop af                                           ; $572e: $f1
	add [hl]                                         ; $572f: $86
	ld h, d                                          ; $5730: $62
	nop                                              ; $5731: $00
	add b                                            ; $5732: $80
	db $10                                           ; $5733: $10
	ret nz                                           ; $5734: $c0

	ld hl, sp-$20                                    ; $5735: $f8 $e0
	dec h                                            ; $5737: $25
	ldh a, [$80]                                     ; $5738: $f0 $80
	ld hl, sp+$09                                    ; $573a: $f8 $09
	db $fc                                           ; $573c: $fc
	inc d                                            ; $573d: $14
	cp $12                                           ; $573e: $fe $12
	rst $38                                          ; $5740: $ff
	push de                                          ; $5741: $d5
	xor d                                            ; $5742: $aa
	ld l, e                                          ; $5743: $6b
	sub h                                            ; $5744: $94
	push de                                          ; $5745: $d5
	xor d                                            ; $5746: $aa
	ld l, d                                          ; $5747: $6a
	sub l                                            ; $5748: $95
	ld l, a                                          ; $5749: $6f
	ld hl, sp-$6d                                    ; $574a: $f8 $93
	xor d                                            ; $574c: $aa
	push de                                          ; $574d: $d5
	cp [hl]                                          ; $574e: $be
	ld b, c                                          ; $574f: $41
	db $dd                                           ; $5750: $dd
	ld h, d                                          ; $5751: $62
	cp d                                             ; $5752: $ba
	ld b, l                                          ; $5753: $45
	sub l                                            ; $5754: $95
	ld l, d                                          ; $5755: $6a
	adc d                                            ; $5756: $8a
	ld [hl], l                                       ; $5757: $75
	ld l, a                                          ; $5758: $6f
	db $fc                                           ; $5759: $fc
	adc l                                            ; $575a: $8d
	ldh [$1f], a                                     ; $575b: $e0 $1f
	ld d, b                                          ; $575d: $50
	adc a                                            ; $575e: $8f
	ldh [c], a                                       ; $575f: $e2
	dec e                                            ; $5760: $1d
	ld d, l                                          ; $5761: $55
	adc d                                            ; $5762: $8a
	db $eb                                           ; $5763: $eb
	inc d                                            ; $5764: $14
	ld e, a                                          ; $5765: $5f
	add b                                            ; $5766: $80
	ld h, b                                          ; $5767: $60
	sbc a                                            ; $5768: $9f
	ld c, b                                          ; $5769: $48
	sbc a                                            ; $576a: $9f
	dec hl                                           ; $576b: $2b
	call nc, $a66c                                   ; $576c: $d4 $6c $a6
	ld a, a                                          ; $576f: $7f
	db $fc                                           ; $5770: $fc
	ld a, a                                          ; $5771: $7f
	ld de, $2086                                     ; $5772: $11 $86 $20
	rst $38                                          ; $5775: $ff
	ld d, h                                          ; $5776: $54
	rst $38                                          ; $5777: $ff
	db $ec                                           ; $5778: $ec
	dec de                                           ; $5779: $1b
	ret nz                                           ; $577a: $c0

	ccf                                              ; $577b: $3f
	xor h                                            ; $577c: $ac
	ld e, e                                          ; $577d: $5b
	ld b, b                                          ; $577e: $40
	cp a                                             ; $577f: $bf
	sbc h                                            ; $5780: $9c
	ld a, e                                          ; $5781: $7b
	jp hl                                            ; $5782: $e9


	ld e, $02                                        ; $5783: $1e $02
	rst $38                                          ; $5785: $ff
	ld bc, $57ff                                     ; $5786: $01 $ff $57
	rrca                                             ; $5789: $0f
	xor b                                            ; $578a: $a8
	rlca                                             ; $578b: $07
	ld d, h                                          ; $578c: $54
	ld a, e                                          ; $578d: $7b
	ld c, [hl]                                       ; $578e: $4e
	ld [hl], l                                       ; $578f: $75
	adc h                                            ; $5790: $8c
	sub h                                            ; $5791: $94
	db $fd                                           ; $5792: $fd
	nop                                              ; $5793: $00
	ld d, l                                          ; $5794: $55
	xor d                                            ; $5795: $aa
	nop                                              ; $5796: $00
	rst $38                                          ; $5797: $ff
	ret nz                                           ; $5798: $c0

	ccf                                              ; $5799: $3f
	ld [$ff15], a                                    ; $579a: $ea $15 $ff
	ld a, d                                          ; $579d: $7a

Jump_04b_579e:
	ld c, [hl]                                       ; $579e: $4e
	sub e                                            ; $579f: $93
	ld a, [hl+]                                      ; $57a0: $2a
	nop                                              ; $57a1: $00
	ld e, l                                          ; $57a2: $5d
	ld [bc], a                                       ; $57a3: $02
	adc c                                            ; $57a4: $89
	ld [hl], a                                       ; $57a5: $77
	dec b                                            ; $57a6: $05
	ld a, [$fd02]                                    ; $57a7: $fa $02 $fd
	ld d, l                                          ; $57aa: $55
	xor d                                            ; $57ab: $aa
	ld a, c                                          ; $57ac: $79
	xor b                                            ; $57ad: $a8
	ld a, e                                          ; $57ae: $7b
	ldh [$98], a                                     ; $57af: $e0 $98
	add d                                            ; $57b1: $82
	ld a, a                                          ; $57b2: $7f
	ld d, l                                          ; $57b3: $55
	ei                                               ; $57b4: $fb
	dec d                                            ; $57b5: $15
	ld [$7abf], a                                    ; $57b6: $ea $bf $7a
	push bc                                          ; $57b9: $c5
	ld a, a                                          ; $57ba: $7f
	db $f4                                           ; $57bb: $f4
	sbc [hl]                                         ; $57bc: $9e
	ld b, b                                          ; $57bd: $40
	ld a, e                                          ; $57be: $7b
	db $fc                                           ; $57bf: $fc
	ld a, a                                          ; $57c0: $7f
	call nc, Call_04b_4198                           ; $57c1: $d4 $98 $41
	cp $5e                                           ; $57c4: $fe $5e
	and b                                            ; $57c6: $a0
	ld a, [$7400]                                    ; $57c7: $fa $00 $74
	ld [hl], a                                       ; $57ca: $77
	db $f4                                           ; $57cb: $f4
	ld a, e                                          ; $57cc: $7b
	ret nc                                           ; $57cd: $d0

	ld a, a                                          ; $57ce: $7f
	add h                                            ; $57cf: $84
	adc l                                            ; $57d0: $8d
	ld d, c                                          ; $57d1: $51
	rst $38                                          ; $57d2: $ff
	ret c                                            ; $57d3: $d8

	ld h, a                                          ; $57d4: $67
	pop de                                           ; $57d5: $d1
	ld l, [hl]                                       ; $57d6: $6e
	jp c, $dd65                                      ; $57d7: $da $65 $dd

	ld h, d                                          ; $57da: $62
	rst SubAFromDE                                          ; $57db: $df
	ld h, b                                          ; $57dc: $60
	rst SubAFromDE                                          ; $57dd: $df
	ld h, b                                          ; $57de: $60
	ld [hl-], a                                      ; $57df: $32
	rst GetHLinHL                                          ; $57e0: $cf
	ld d, l                                          ; $57e1: $55
	rst AddAOntoHL                                          ; $57e2: $ef
	ld [hl], h                                       ; $57e3: $74
	ld c, b                                          ; $57e4: $48
	ld a, a                                          ; $57e5: $7f
	add h                                            ; $57e6: $84
	ld a, h                                          ; $57e7: $7c
	ld b, b                                          ; $57e8: $40
	ld a, a                                          ; $57e9: $7f
	jp z, $f59c                                      ; $57ea: $ca $9c $f5

	ld a, [bc]                                       ; $57ed: $0a
	xor d                                            ; $57ee: $aa
	ld a, d                                          ; $57ef: $7a
	add [hl]                                         ; $57f0: $86
	ld h, [hl]                                       ; $57f1: $66
	ret z                                            ; $57f2: $c8

	sbc [hl]                                         ; $57f3: $9e
	ld [hl], e                                       ; $57f4: $73
	ld a, e                                          ; $57f5: $7b
	db $fc                                           ; $57f6: $fc
	sub a                                            ; $57f7: $97
	or e                                             ; $57f8: $b3
	pop hl                                           ; $57f9: $e1
	ld b, c                                          ; $57fa: $41
	rst $38                                          ; $57fb: $ff
	ld de, $58be                                     ; $57fc: $11 $be $58
	cp [hl]                                          ; $57ff: $be
	ld h, a                                          ; $5800: $67
	db $fc                                           ; $5801: $fc
	sbc h                                            ; $5802: $9c
	inc de                                           ; $5803: $13
	cp h                                             ; $5804: $bc
	ld e, b                                          ; $5805: $58
	ld a, d                                          ; $5806: $7a
	ret nz                                           ; $5807: $c0

	sbc [hl]                                         ; $5808: $9e
	ld e, c                                          ; $5809: $59
	ld a, e                                          ; $580a: $7b
	ld [hl], d                                       ; $580b: $72
	ld a, l                                          ; $580c: $7d
	add b                                            ; $580d: $80
	ld [hl], a                                       ; $580e: $77
	db $fc                                           ; $580f: $fc
	sbc d                                            ; $5810: $9a
	cp c                                             ; $5811: $b9
	inc bc                                           ; $5812: $03
	reti                                             ; $5813: $d9


	inc bc                                           ; $5814: $03
	ld [bc], a                                       ; $5815: $02
	ld a, d                                          ; $5816: $7a
	call z, $0a7f                                    ; $5817: $cc $7f $0a
	sbc h                                            ; $581a: $9c
	ld a, [bc]                                       ; $581b: $0a
	rst $38                                          ; $581c: $ff
	ld [bc], a                                       ; $581d: $02
	ld a, d                                          ; $581e: $7a
	ld d, d                                          ; $581f: $52
	ld a, a                                          ; $5820: $7f
	ret nz                                           ; $5821: $c0

	rst SubAFromDE                                          ; $5822: $df
	rst $38                                          ; $5823: $ff
	sbc e                                            ; $5824: $9b
	ret nc                                           ; $5825: $d0

	cpl                                              ; $5826: $2f
	xor c                                            ; $5827: $a9
	ld d, [hl]                                       ; $5828: $56
	ld [hl], l                                       ; $5829: $75
	add b                                            ; $582a: $80
	ld a, a                                          ; $582b: $7f
	pop af                                           ; $582c: $f1
	sbc h                                            ; $582d: $9c
	ret nz                                           ; $582e: $c0

	nop                                              ; $582f: $00
	ld c, a                                          ; $5830: $4f
	ld a, c                                          ; $5831: $79
	sub b                                            ; $5832: $90
	ld a, a                                          ; $5833: $7f
	inc e                                            ; $5834: $1c
	halt                                             ; $5835: $76
	cp d                                             ; $5836: $ba
	ld a, a                                          ; $5837: $7f
	db $e4                                           ; $5838: $e4
	ld a, a                                          ; $5839: $7f
	ldh a, [$7b]                                     ; $583a: $f0 $7b

jr_04b_583c:
	ld [hl], c                                       ; $583c: $71
	sub a                                            ; $583d: $97
	rst $38                                          ; $583e: $ff
	dec b                                            ; $583f: $05
	ld a, [$f76a]                                    ; $5840: $fa $6a $f7
	jr z, jr_04b_583c                                ; $5843: $28 $f7

	jr nz, jr_04b_58be                               ; $5845: $20 $77

	call nc, $f073                                   ; $5847: $d4 $73 $f0
	ld a, h                                          ; $584a: $7c
	cp h                                             ; $584b: $bc
	ld h, h                                          ; $584c: $64
	rst SubAFromHL                                          ; $584d: $d7
	ld [hl], h                                       ; $584e: $74
	xor [hl]                                         ; $584f: $ae
	ld a, a                                          ; $5850: $7f
	ld [hl], $7b                                     ; $5851: $36 $7b
	ld a, [$3478]                                    ; $5853: $fa $78 $34
	ld a, a                                          ; $5856: $7f
	db $fc                                           ; $5857: $fc
	adc a                                            ; $5858: $8f
	ld l, a                                          ; $5859: $6f
	sbc a                                            ; $585a: $9f
	ld e, a                                          ; $585b: $5f
	xor a                                            ; $585c: $af
	ld l, a                                          ; $585d: $6f
	sbc a                                            ; $585e: $9f
	dec c                                            ; $585f: $0d
	ld a, [$00a0]                                    ; $5860: $fa $a0 $00

Call_04b_5863:
	ld a, [hl+]                                      ; $5863: $2a
	push de                                          ; $5864: $d5
	sub l                                            ; $5865: $95
	ld l, d                                          ; $5866: $6a
	ld a, [hl+]                                      ; $5867: $2a
	push de                                          ; $5868: $d5
	db $db                                           ; $5869: $db
	rst $38                                          ; $586a: $ff
	ld a, e                                          ; $586b: $7b
	ld [bc], a                                       ; $586c: $02
	sub a                                            ; $586d: $97
	nop                                              ; $586e: $00
	ld b, l                                          ; $586f: $45
	sbc d                                            ; $5870: $9a
	ld l, a                                          ; $5871: $6f
	sub b                                            ; $5872: $90
	ld d, l                                          ; $5873: $55
	add b                                            ; $5874: $80
	cp $63                                           ; $5875: $fe $63
	ldh a, [$9c]                                     ; $5877: $f0 $9c
	ld d, h                                          ; $5879: $54
	xor e                                            ; $587a: $ab
	rst $38                                          ; $587b: $ff
	ld [hl], h                                       ; $587c: $74
	ld [hl], b                                       ; $587d: $70
	ld h, e                                          ; $587e: $63
	ldh a, [$9d]                                     ; $587f: $f0 $9d
	ld [$77f7], sp                                   ; $5881: $08 $f7 $77
	or [hl]                                          ; $5884: $b6
	ld a, a                                          ; $5885: $7f
	ldh a, [$9e]                                     ; $5886: $f0 $9e
	ld e, l                                          ; $5888: $5d
	ld a, e                                          ; $5889: $7b
	add h                                            ; $588a: $84
	ld [hl], a                                       ; $588b: $77
	ldh a, [$9d]                                     ; $588c: $f0 $9d
	ld a, [bc]                                       ; $588e: $0a
	push af                                          ; $588f: $f5
	ld l, a                                          ; $5890: $6f
	ldh a, [$75]                                     ; $5891: $f0 $75
	xor h                                            ; $5893: $ac
	ld [hl], a                                       ; $5894: $77
	ldh a, [$7c]                                     ; $5895: $f0 $7c
	ldh a, [c]                                       ; $5897: $f2
	ld [hl], d                                       ; $5898: $72
	db $e4                                           ; $5899: $e4
	ld a, e                                          ; $589a: $7b

Call_04b_589b:
	ldh [$9e], a                                     ; $589b: $e0 $9e
	adc d                                            ; $589d: $8a
	ld [hl], e                                       ; $589e: $73
	ldh a, [$df]                                     ; $589f: $f0 $df
	rst $38                                          ; $58a1: $ff
	ld a, a                                          ; $58a2: $7f
	ei                                               ; $58a3: $fb
	sbc [hl]                                         ; $58a4: $9e
	ld bc, $c073                                     ; $58a5: $01 $73 $c0
	sbc [hl]                                         ; $58a8: $9e
	cp a                                             ; $58a9: $bf
	ld h, e                                          ; $58aa: $63
	ldh a, [$9c]                                     ; $58ab: $f0 $9c
	ld d, c                                          ; $58ad: $51
	nop                                              ; $58ae: $00
	and b                                            ; $58af: $a0
	call c, Call_04b_7eff                            ; $58b0: $dc $ff $7e
	ld a, d                                          ; $58b3: $7a
	ld [hl], a                                       ; $58b4: $77
	ldh a, [rPCM34]                                  ; $58b5: $f0 $77
	and b                                            ; $58b7: $a0
	sbc [hl]                                         ; $58b8: $9e
	db $10                                           ; $58b9: $10
	call c, Call_04b_7bff                            ; $58ba: $dc $ff $7b
	ld e, b                                          ; $58bd: $58

jr_04b_58be:
	ld a, e                                          ; $58be: $7b
	ldh a, [$9c]                                     ; $58bf: $f0 $9c
	ld [hl], l                                       ; $58c1: $75
	adc d                                            ; $58c2: $8a
	ld b, b                                          ; $58c3: $40
	ld [hl], e                                       ; $58c4: $73
	jp hl                                            ; $58c5: $e9


	ld a, e                                          ; $58c6: $7b
	sub b                                            ; $58c7: $90
	ld [hl], e                                       ; $58c8: $73
	ldh a, [$7d]                                     ; $58c9: $f0 $7d
	ldh [$73], a                                     ; $58cb: $e0 $73
	dec [hl]                                         ; $58cd: $35
	ld h, e                                          ; $58ce: $63
	ldh a, [$9e]                                     ; $58cf: $f0 $9e
	dec b                                            ; $58d1: $05
	ld [hl], a                                       ; $58d2: $77
	inc h                                            ; $58d3: $24
	call c, Call_04b_7aff                            ; $58d4: $dc $ff $7a
	ld l, c                                          ; $58d7: $69
	sub [hl]                                         ; $58d8: $96
	nop                                              ; $58d9: $00
	inc sp                                           ; $58da: $33
	sbc h                                            ; $58db: $9c
	ld e, c                                          ; $58dc: $59
	cp [hl]                                          ; $58dd: $be
	xor e                                            ; $58de: $ab
	inc d                                            ; $58df: $14
	dec b                                            ; $58e0: $05
	ld a, [$8470]                                    ; $58e1: $fa $70 $84
	sub h                                            ; $58e4: $94
	cp $00                                           ; $58e5: $fe $00
	nop                                              ; $58e7: $00
	cp e                                             ; $58e8: $bb
	ld bc, $00ff                                     ; $58e9: $01 $ff $00
	ccf                                              ; $58ec: $3f
	ld b, b                                          ; $58ed: $40
	ret nc                                           ; $58ee: $d0

	cpl                                              ; $58ef: $2f
	ld [hl], a                                       ; $58f0: $77
	inc c                                            ; $58f1: $0c
	ld a, [hl]                                       ; $58f2: $7e
	add h                                            ; $58f3: $84
	rst $38                                          ; $58f4: $ff
	sbc [hl]                                         ; $58f5: $9e
	ret nz                                           ; $58f6: $c0

	ld a, e                                          ; $58f7: $7b
	jp nc, Jump_04b_579e                             ; $58f8: $d2 $9e $57

	ld [hl], d                                       ; $58fb: $72
	ld a, [$249d]                                    ; $58fc: $fa $9d $24
	rst $38                                          ; $58ff: $ff
	ld a, e                                          ; $5900: $7b
	pop hl                                           ; $5901: $e1
	sbc l                                            ; $5902: $9d
	nop                                              ; $5903: $00
	push af                                          ; $5904: $f5
	ld [hl], d                                       ; $5905: $72
	ld c, b                                          ; $5906: $48
	ld [hl], a                                       ; $5907: $77
	cp $7c                                           ; $5908: $fe $7c
	pop hl                                           ; $590a: $e1
	db $fd                                           ; $590b: $fd
	ld a, a                                          ; $590c: $7f
	add h                                            ; $590d: $84
	sbc l                                            ; $590e: $9d
	cp d                                             ; $590f: $ba
	dec b                                            ; $5910: $05
	ld l, a                                          ; $5911: $6f
	ldh a, [rPCM34]                                  ; $5912: $f0 $77
	pop af                                           ; $5914: $f1
	sbc [hl]                                         ; $5915: $9e
	ccf                                              ; $5916: $3f
	ld a, c                                          ; $5917: $79
	ld hl, sp+$77                                    ; $5918: $f8 $77
	db $f4                                           ; $591a: $f4
	sub e                                            ; $591b: $93
	ccf                                              ; $591c: $3f
	rst $38                                          ; $591d: $ff
	ld e, a                                          ; $591e: $5f
	and b                                            ; $591f: $a0
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	rlca                                             ; $5922: $07
	nop                                              ; $5923: $00
	ld a, a                                          ; $5924: $7f
	rst $38                                          ; $5925: $ff
	ld [$7715], a                                    ; $5926: $ea $15 $77
	ldh a, [$9d]                                     ; $5929: $f0 $9d
	add a                                            ; $592b: $87
	ld hl, sp+$77                                    ; $592c: $f8 $77
	ldh [c], a                                       ; $592e: $e2
	sbc h                                            ; $592f: $9c
	ld hl, sp+$07                                    ; $5930: $f8 $07
	ldh a, [$73]                                     ; $5932: $f0 $73
	ld a, [hl]                                       ; $5934: $7e
	db $db                                           ; $5935: $db
	rst $38                                          ; $5936: $ff
	sbc [hl]                                         ; $5937: $9e
	inc bc                                           ; $5938: $03
	ld a, [$fd9e]                                    ; $5939: $fa $9e $fd
	reti                                             ; $593c: $d9


	rst $38                                          ; $593d: $ff
	ld a, [$987c]                                    ; $593e: $fa $7c $98
	sbc [hl]                                         ; $5941: $9e
	ld [$9879], a                                    ; $5942: $ea $79 $98
	sbc [hl]                                         ; $5945: $9e
	ld a, [$f063]                                    ; $5946: $fa $63 $f0
	ld a, e                                          ; $5949: $7b
	and [hl]                                         ; $594a: $a6
	ld a, e                                          ; $594b: $7b
	ld b, $7a                                        ; $594c: $06 $7a
	cp $63                                           ; $594e: $fe $63
	ldh a, [$7f]                                     ; $5950: $f0 $7f
	cp $57                                           ; $5952: $fe $57
	ldh a, [$7f]                                     ; $5954: $f0 $7f
	ld b, h                                          ; $5956: $44
	ld [hl], a                                       ; $5957: $77
	ldh a, [$7f]                                     ; $5958: $f0 $7f
	call c, $f067                                    ; $595a: $dc $67 $f0
	ld a, a                                          ; $595d: $7f
	db $f4                                           ; $595e: $f4
	ld a, [hl]                                       ; $595f: $7e
	ld [de], a                                       ; $5960: $12
	ld a, a                                          ; $5961: $7f
	db $fc                                           ; $5962: $fc
	sbc h                                            ; $5963: $9c
	rra                                              ; $5964: $1f
	rst $38                                          ; $5965: $ff
	db $fc                                           ; $5966: $fc
	ld l, e                                          ; $5967: $6b
	sbc a                                            ; $5968: $9f
	ld a, a                                          ; $5969: $7f
	db $f4                                           ; $596a: $f4
	sbc [hl]                                         ; $596b: $9e
	cp e                                             ; $596c: $bb
	ld a, d                                          ; $596d: $7a
	db $fc                                           ; $596e: $fc
	ld l, [hl]                                       ; $596f: $6e
	ldh [c], a                                       ; $5970: $e2
	ld l, e                                          ; $5971: $6b
	pop bc                                           ; $5972: $c1
	ld [hl], c                                       ; $5973: $71
	db $f4                                           ; $5974: $f4
	ld d, a                                          ; $5975: $57
	ldh a, [$7e]                                     ; $5976: $f0 $7e
	db $ec                                           ; $5978: $ec
	ld a, a                                          ; $5979: $7f
	ret nz                                           ; $597a: $c0

	ld a, c                                          ; $597b: $79
	ld c, e                                          ; $597c: $4b
	db $fc                                           ; $597d: $fc
	sbc l                                            ; $597e: $9d
	ld hl, sp+$00                                    ; $597f: $f8 $00
	ld a, d                                          ; $5981: $7a
	ld h, [hl]                                       ; $5982: $66
	sbc l                                            ; $5983: $9d
	rst $38                                          ; $5984: $ff
	ld a, [hl+]                                      ; $5985: $2a
	ld [hl], d                                       ; $5986: $72
	jp nc, $9cfb                                     ; $5987: $d2 $fb $9c

	xor [hl]                                         ; $598a: $ae
	rst $38                                          ; $598b: $ff
	ld e, a                                          ; $598c: $5f
	ld a, d                                          ; $598d: $7a
	add d                                            ; $598e: $82
	ld a, a                                          ; $598f: $7f
	inc [hl]                                         ; $5990: $34
	ld h, a                                          ; $5991: $67
	rst AddAOntoHL                                          ; $5992: $ef
	sbc [hl]                                         ; $5993: $9e
	xor l                                            ; $5994: $ad
	ld [hl], a                                       ; $5995: $77
	db $f4                                           ; $5996: $f4
	ld e, e                                          ; $5997: $5b
	ld c, [hl]                                       ; $5998: $4e
	sbc [hl]                                         ; $5999: $9e
	db $fc                                           ; $599a: $fc
	jp c, $9dff                                      ; $599b: $da $ff $9d

jr_04b_599e:
	rst SubAFromHL                                          ; $599e: $d7
	jr z, jr_04b_599e                                ; $599f: $28 $fd

	ld a, a                                          ; $59a1: $7f
	ld a, [bc]                                       ; $59a2: $0a
	ld a, a                                          ; $59a3: $7f
	or [hl]                                          ; $59a4: $b6
	sbc [hl]                                         ; $59a5: $9e
	ld hl, sp+$7b                                    ; $59a6: $f8 $7b
	cp $df                                           ; $59a8: $fe $df
	rst $38                                          ; $59aa: $ff
	ld a, h                                          ; $59ab: $7c
	cp h                                             ; $59ac: $bc
	rst $38                                          ; $59ad: $ff
	ld a, a                                          ; $59ae: $7f
	ld a, e                                          ; $59af: $7b
	sbc l                                            ; $59b0: $9d
	and a                                            ; $59b1: $a7
	ld e, a                                          ; $59b2: $5f
	ld a, c                                          ; $59b3: $79
	rrca                                             ; $59b4: $0f
	ld a, e                                          ; $59b5: $7b
	or d                                             ; $59b6: $b2
	sbc l                                            ; $59b7: $9d
	xor a                                            ; $59b8: $af
	ldh a, [rPCM12]                                  ; $59b9: $f0 $76
	db $fc                                           ; $59bb: $fc
	sbc h                                            ; $59bc: $9c
	and l                                            ; $59bd: $a5
	ld e, a                                          ; $59be: $5f
	ld a, [$f27b]                                    ; $59bf: $fa $7b $f2
	ld a, a                                          ; $59c2: $7f
	sbc $9c                                          ; $59c3: $de $9c
	ei                                               ; $59c5: $fb
	db $fc                                           ; $59c6: $fc
	ldh [$fe], a                                     ; $59c7: $e0 $fe
	sbc h                                            ; $59c9: $9c
	inc [hl]                                         ; $59ca: $34
	dec bc                                           ; $59cb: $0b
	ld a, [hl]                                       ; $59cc: $7e
	ld [hl], d                                       ; $59cd: $72
	call nz, $d39e                                   ; $59ce: $c4 $9e $d3
	ld [hl], e                                       ; $59d1: $73
	ldh a, [c]                                       ; $59d2: $f2
	sbc l                                            ; $59d3: $9d
	ld e, $03                                        ; $59d4: $1e $03
	ld [hl], a                                       ; $59d6: $77
	inc d                                            ; $59d7: $14
	ld a, a                                          ; $59d8: $7f
	db $fc                                           ; $59d9: $fc
	sbc l                                            ; $59da: $9d
	ld e, e                                          ; $59db: $5b
	cp $77                                           ; $59dc: $fe $77
	ldh a, [c]                                       ; $59de: $f2
	sbc l                                            ; $59df: $9d
	ccf                                              ; $59e0: $3f
	nop                                              ; $59e1: $00
	ld [hl], a                                       ; $59e2: $77
	sub $7f                                          ; $59e3: $d6 $7f
	cp $9c                                           ; $59e5: $fe $9c
	dec hl                                           ; $59e7: $2b
	rst $38                                          ; $59e8: $ff
	db $fc                                           ; $59e9: $fc
	cp $9c                                           ; $59ea: $fe $9c
	inc e                                            ; $59ec: $1c
	inc bc                                           ; $59ed: $03
	ld e, d                                          ; $59ee: $5a
	ld a, e                                          ; $59ef: $7b
	db $f4                                           ; $59f0: $f4

jr_04b_59f1:
	sbc l                                            ; $59f1: $9d
	ld [hl], a                                       ; $59f2: $77
	db $fc                                           ; $59f3: $fc
	ld c, h                                          ; $59f4: $4c
	nop                                              ; $59f5: $00
	sbc l                                            ; $59f6: $9d
	ld b, h                                          ; $59f7: $44
	ld [hl], e                                       ; $59f8: $73
	db $dd                                           ; $59f9: $dd
	inc sp                                           ; $59fa: $33
	sbc e                                            ; $59fb: $9b
	dec [hl]                                         ; $59fc: $35
	ld d, e                                          ; $59fd: $53
	ld d, l                                          ; $59fe: $55
	ld d, l                                          ; $59ff: $55
	ld h, a                                          ; $5a00: $67
	or $7f                                           ; $5a01: $f6 $7f
	db $fd                                           ; $5a03: $fd
	sbc l                                            ; $5a04: $9d
	ld b, h                                          ; $5a05: $44
	halt                                             ; $5a06: $76
	ld l, e                                          ; $5a07: $6b
	or $9c                                           ; $5a08: $f6 $9c
	inc sp                                           ; $5a0a: $33
	ld b, h                                          ; $5a0b: $44
	ld d, e                                          ; $5a0c: $53
	ld a, e                                          ; $5a0d: $7b
	db $eb                                           ; $5a0e: $eb
	sub d                                            ; $5a0f: $92
	ld d, l                                          ; $5a10: $55
	dec [hl]                                         ; $5a11: $35
	ld d, [hl]                                       ; $5a12: $56
	ld d, [hl]                                       ; $5a13: $56
	ld h, [hl]                                       ; $5a14: $66
	ld b, h                                          ; $5a15: $44
	ld b, h                                          ; $5a16: $44
	ld h, l                                          ; $5a17: $65
	ld d, l                                          ; $5a18: $55
	ld d, l                                          ; $5a19: $55
	ld h, e                                          ; $5a1a: $63
	dec [hl]                                         ; $5a1b: $35
	ld b, h                                          ; $5a1c: $44
	ld [hl], a                                       ; $5a1d: $77
	or $9d                                           ; $5a1e: $f6 $9d
	ld h, e                                          ; $5a20: $63
	inc sp                                           ; $5a21: $33
	ld [hl], a                                       ; $5a22: $77
	db $db                                           ; $5a23: $db
	sbc l                                            ; $5a24: $9d
	ld d, l                                          ; $5a25: $55
	ld b, [hl]                                       ; $5a26: $46
	ld [hl], a                                       ; $5a27: $77
	or $7b                                           ; $5a28: $f6 $7b
	ret c                                            ; $5a2a: $d8

	ld a, a                                          ; $5a2b: $7f
	or $9b                                           ; $5a2c: $f6 $9b
	ld d, [hl]                                       ; $5a2e: $56
	ld b, h                                          ; $5a2f: $44
	ld b, h                                          ; $5a30: $44
	ld b, l                                          ; $5a31: $45
	ld [hl], e                                       ; $5a32: $73
	or $9d                                           ; $5a33: $f6 $9d
	ld d, e                                          ; $5a35: $53
	dec [hl]                                         ; $5a36: $35
	ld l, e                                          ; $5a37: $6b
	or $9b                                           ; $5a38: $f6 $9b
	ld b, [hl]                                       ; $5a3a: $46
	ld d, l                                          ; $5a3b: $55
	ld d, l                                          ; $5a3c: $55
	ld h, [hl]                                       ; $5a3d: $66
	adc $55                                          ; $5a3e: $ce $55
	ld e, [hl]                                       ; $5a40: $5e
	adc d                                            ; $5a41: $8a
	sub l                                            ; $5a42: $95
	ld b, b                                          ; $5a43: $40
	ld d, c                                          ; $5a44: $51
	ld [hl], c                                       ; $5a45: $71
	ld sp, $4131                                     ; $5a46: $31 $31 $41
	pop bc                                           ; $5a49: $c1
	ld bc, $a283                                     ; $5a4a: $01 $83 $a2
	db $db                                           ; $5a4d: $db
	add d                                            ; $5a4e: $82
	sub h                                            ; $5a4f: $94
	ld h, a                                          ; $5a50: $67
	push hl                                          ; $5a51: $e5
	ldh [c], a                                       ; $5a52: $e2
	db $e3                                           ; $5a53: $e3
	ldh [c], a                                       ; $5a54: $e2
	ldh [$e0], a                                     ; $5a55: $e0 $e0
	jr nz, jr_04b_59f1                               ; $5a57: $20 $98

	ld a, [de]                                       ; $5a59: $1a
	inc e                                            ; $5a5a: $1c
	call c, $9218                                    ; $5a5b: $dc $18 $92
	sbc c                                            ; $5a5e: $99
	and c                                            ; $5a5f: $a1
	cp c                                             ; $5a60: $b9
	or c                                             ; $5a61: $b1
	and b                                            ; $5a62: $a0
	sbc b                                            ; $5a63: $98
	add b                                            ; $5a64: $80
	add b                                            ; $5a65: $80
	ld b, d                                          ; $5a66: $42
	ld d, d                                          ; $5a67: $52
	ld b, d                                          ; $5a68: $42
	ld e, d                                          ; $5a69: $5a
	ld d, e                                          ; $5a6a: $53
	sbc $43                                          ; $5a6b: $de $43
	sub l                                            ; $5a6d: $95
	ld de, $0201                                     ; $5a6e: $11 $01 $02
	ld b, $02                                        ; $5a71: $06 $02
	inc bc                                           ; $5a73: $03
	nop                                              ; $5a74: $00
	nop                                              ; $5a75: $00
	inc c                                            ; $5a76: $0c
	ld c, $db                                        ; $5a77: $0e $db
	inc c                                            ; $5a79: $0c
	sub [hl]                                         ; $5a7a: $96
	sbc e                                            ; $5a7b: $9b
	ld e, $0f                                        ; $5a7c: $1e $0f
	ld b, $07                                        ; $5a7e: $06 $07
	ld c, $0b                                        ; $5a80: $0e $0b
	inc de                                           ; $5a82: $13
	ld h, l                                          ; $5a83: $65
	jp c, $9361                                      ; $5a84: $da $61 $93

	ld e, c                                          ; $5a87: $59
	adc c                                            ; $5a88: $89
	ret                                              ; $5a89: $c9


	jp hl                                            ; $5a8a: $e9


	ld sp, hl                                        ; $5a8b: $f9
	jp hl                                            ; $5a8c: $e9


	reti                                             ; $5a8d: $d9


	ei                                               ; $5a8e: $fb
	and [hl]                                         ; $5a8f: $a6
	or $b6                                           ; $5a90: $f6 $b6
	sub [hl]                                         ; $5a92: $96
	db $dd                                           ; $5a93: $dd
	add [hl]                                         ; $5a94: $86
	sub [hl]                                         ; $5a95: $96
	cp e                                             ; $5a96: $bb
	ld c, e                                          ; $5a97: $4b
	ld c, e                                          ; $5a98: $4b
	ld l, a                                          ; $5a99: $6f
	dec bc                                           ; $5a9a: $0b
	dec hl                                           ; $5a9b: $2b
	dec bc                                           ; $5a9c: $0b
	dec bc                                           ; $5a9d: $0b
	ld b, h                                          ; $5a9e: $44
	jp c, $9304                                      ; $5a9f: $da $04 $93

	and b                                            ; $5aa2: $a0
	ret nz                                           ; $5aa3: $c0

	cp b                                             ; $5aa4: $b8
	cp c                                             ; $5aa5: $b9
	sbc l                                            ; $5aa6: $9d
	sbc c                                            ; $5aa7: $99
	sbc l                                            ; $5aa8: $9d
	sbc c                                            ; $5aa9: $99
	ld a, a                                          ; $5aaa: $7f
	ld a, a                                          ; $5aab: $7f
	ld h, a                                          ; $5aac: $67
	ld b, [hl]                                       ; $5aad: $46
	db $dd                                           ; $5aae: $dd
	ld h, [hl]                                       ; $5aaf: $66
	sbc h                                            ; $5ab0: $9c
	add b                                            ; $5ab1: $80
	sbc b                                            ; $5ab2: $98
	nop                                              ; $5ab3: $00
	sbc $98                                          ; $5ab4: $de $98
	sbc d                                            ; $5ab6: $9a
	sbc h                                            ; $5ab7: $9c
	cp b                                             ; $5ab8: $b8

jr_04b_5ab9:
	ld a, a                                          ; $5ab9: $7f
	ld h, a                                          ; $5aba: $67
	rst $38                                          ; $5abb: $ff
	call c, $9d67                                    ; $5abc: $dc $67 $9d
	pop bc                                           ; $5abf: $c1
	add b                                            ; $5ac0: $80
	ld l, a                                          ; $5ac1: $6f
	cp $9d                                           ; $5ac2: $fe $9d
	ld a, $7f                                        ; $5ac4: $3e $7f
	ld l, a                                          ; $5ac6: $6f
	cp $97                                           ; $5ac7: $fe $97
	ld a, [hl+]                                      ; $5ac9: $2a
	ld b, b                                          ; $5aca: $40
	nop                                              ; $5acb: $00
	ld d, b                                          ; $5acc: $50
	ld a, a                                          ; $5acd: $7f
	ld a, a                                          ; $5ace: $7f
	ld a, l                                          ; $5acf: $7d
	ld d, [hl]                                       ; $5ad0: $56
	db $db                                           ; $5ad1: $db
	rst $38                                          ; $5ad2: $ff
	sub c                                            ; $5ad3: $91
	ld a, [$e0f9]                                    ; $5ad4: $fa $f9 $e0
	ld h, b                                          ; $5ad7: $60
	ret nz                                           ; $5ad8: $c0

jr_04b_5ad9:
	ld l, b                                          ; $5ad9: $68
	call nz, Call_04b_74ec                           ; $5ada: $c4 $ec $74
	ld l, h                                          ; $5add: $6c
	ldh a, [$f8]                                     ; $5ade: $f0 $f8
	db $fc                                           ; $5ae0: $fc
	cp $dd                                           ; $5ae1: $fe $dd
	rst $38                                          ; $5ae3: $ff
	sub a                                            ; $5ae4: $97
	ld d, l                                          ; $5ae5: $55
	xor d                                            ; $5ae6: $aa
	push de                                          ; $5ae7: $d5
	xor d                                            ; $5ae8: $aa
	push de                                          ; $5ae9: $d5
	ld [$faf5], a                                    ; $5aea: $ea $f5 $fa
	ld sp, hl                                        ; $5aed: $f9
	sub a                                            ; $5aee: $97
	ld h, l                                          ; $5aef: $65
	xor d                                            ; $5af0: $aa
	ld c, l                                          ; $5af1: $4d
	and d                                            ; $5af2: $a2
	ld d, l                                          ; $5af3: $55
	or d                                             ; $5af4: $b2
	ld d, l                                          ; $5af5: $55
	and [hl]                                         ; $5af6: $a6
	sbc $10                                          ; $5af7: $de $10
	sbc [hl]                                         ; $5af9: $9e
	jr jr_04b_5ad9                                   ; $5afa: $18 $dd

	ld [$e07f], sp                                   ; $5afc: $08 $7f $e0
	ld l, a                                          ; $5aff: $6f
	cp $f9                                           ; $5b00: $fe $f9
	add b                                            ; $5b02: $80
	ld e, d                                          ; $5b03: $5a
	xor d                                            ; $5b04: $aa
	ld d, h                                          ; $5b05: $54
	or [hl]                                          ; $5b06: $b6
	ld c, d                                          ; $5b07: $4a
	xor [hl]                                         ; $5b08: $ae
	ld h, [hl]                                       ; $5b09: $66
	adc h                                            ; $5b0a: $8c
	dec b                                            ; $5b0b: $05
	dec b                                            ; $5b0c: $05
	ld a, [bc]                                       ; $5b0d: $0a
	ld [$1115], sp                                   ; $5b0e: $08 $15 $11
	add hl, de                                       ; $5b11: $19
	inc sp                                           ; $5b12: $33
	add [hl]                                         ; $5b13: $86
	dec d                                            ; $5b14: $15
	add a                                            ; $5b15: $87
	ld a, [de]                                       ; $5b16: $1a
	dec b                                            ; $5b17: $05
	ld a, [de]                                       ; $5b18: $1a
	and l                                            ; $5b19: $a5
	ld a, [de]                                       ; $5b1a: $1a
	inc sp                                           ; $5b1b: $33
	ld h, [hl]                                       ; $5b1c: $66
	ld l, h                                          ; $5b1d: $6c
	call z, $b0d8                                    ; $5b1e: $cc $d8 $b0
	jr nc, jr_04b_5ab9                               ; $5b21: $30 $96

	ld h, b                                          ; $5b23: $60
	cp a                                             ; $5b24: $bf
	rst $38                                          ; $5b25: $ff
	ld a, a                                          ; $5b26: $7f
	rst $38                                          ; $5b27: $ff
	rst $38                                          ; $5b28: $ff
	cp a                                             ; $5b29: $bf
	ld a, a                                          ; $5b2a: $7f
	xor a                                            ; $5b2b: $af
	ld sp, hl                                        ; $5b2c: $f9
	reti                                             ; $5b2d: $d9


	rst $38                                          ; $5b2e: $ff
	ld c, e                                          ; $5b2f: $4b
	ldh a, [$9e]                                     ; $5b30: $f0 $9e
	cp $fa                                           ; $5b32: $fe $fa
	sub h                                            ; $5b34: $94
	ld bc, $6161                                     ; $5b35: $01 $61 $61
	ld e, l                                          ; $5b38: $5d
	ld a, l                                          ; $5b39: $7d
	ld b, c                                          ; $5b3a: $41
	cp [hl]                                          ; $5b3b: $be
	rst $38                                          ; $5b3c: $ff
	rst $38                                          ; $5b3d: $ff
	add d                                            ; $5b3e: $82
	add d                                            ; $5b3f: $82
	ld a, d                                          ; $5b40: $7a
	cp a                                             ; $5b41: $bf
	sub d                                            ; $5b42: $92
	jp $0000                                        ; $5b43: $c3 $00 $00


	and h                                            ; $5b46: $a4
	and h                                            ; $5b47: $a4
	inc hl                                           ; $5b48: $23
	rst SubAFromBC                                          ; $5b49: $e7
	ldh [$ce], a                                     ; $5b4a: $e0 $ce
	rst $38                                          ; $5b4c: $ff
	rst $38                                          ; $5b4d: $ff
	jr jr_04b_5b68                                   ; $5b4e: $18 $18

	ld a, d                                          ; $5b50: $7a
	ret nz                                           ; $5b51: $c0

	sub e                                            ; $5b52: $93
	add hl, sp                                       ; $5b53: $39
	nop                                              ; $5b54: $00
	nop                                              ; $5b55: $00
	sub b                                            ; $5b56: $90
	inc [hl]                                         ; $5b57: $34
	dec a                                            ; $5b58: $3d
	jr c, @-$7e                                      ; $5b59: $38 $80

	ld e, h                                          ; $5b5b: $5c
	rst $38                                          ; $5b5c: $ff
	rst $38                                          ; $5b5d: $ff
	ld h, e                                          ; $5b5e: $63
	sbc $c3                                          ; $5b5f: $de $c3
	add b                                            ; $5b61: $80
	ld b, e                                          ; $5b62: $43
	db $e3                                           ; $5b63: $e3
	nop                                              ; $5b64: $00
	nop                                              ; $5b65: $00
	adc b                                            ; $5b66: $88
	inc a                                            ; $5b67: $3c

jr_04b_5b68:
	cp [hl]                                          ; $5b68: $be
	ld e, c                                          ; $5b69: $59
	ret z                                            ; $5b6a: $c8

	di                                               ; $5b6b: $f3
	rst $38                                          ; $5b6c: $ff
	rst $38                                          ; $5b6d: $ff
	inc b                                            ; $5b6e: $04
	add [hl]                                         ; $5b6f: $86
	inc b                                            ; $5b70: $04
	and [hl]                                         ; $5b71: $a6
	inc b                                            ; $5b72: $04
	inc c                                            ; $5b73: $0c
	nop                                              ; $5b74: $00
	nop                                              ; $5b75: $00
	rra                                              ; $5b76: $1f
	dec hl                                           ; $5b77: $2b
	adc e                                            ; $5b78: $8b
	adc h                                            ; $5b79: $8c
	sbc e                                            ; $5b7a: $9b
	sbc h                                            ; $5b7b: $9c
	rst $38                                          ; $5b7c: $ff
	rst $38                                          ; $5b7d: $ff
	ld h, c                                          ; $5b7e: $61
	ld [hl], c                                       ; $5b7f: $71
	ld [hl], c                                       ; $5b80: $71
	sub l                                            ; $5b81: $95
	ld [hl], e                                       ; $5b82: $73
	ld h, l                                          ; $5b83: $65
	ld h, e                                          ; $5b84: $63
	nop                                              ; $5b85: $00
	nop                                              ; $5b86: $00
	dec h                                            ; $5b87: $25
	xor c                                            ; $5b88: $a9
	dec d                                            ; $5b89: $15
	reti                                             ; $5b8a: $d9


	ld h, c                                          ; $5b8b: $61
	ld a, e                                          ; $5b8c: $7b
	sbc d                                            ; $5b8d: $9a
	sbc d                                            ; $5b8e: $9a
	adc $c6                                          ; $5b8f: $ce $c6
	adc $a6                                          ; $5b91: $ce $a6
	add [hl]                                         ; $5b93: $86
	ld a, e                                          ; $5b94: $7b
	adc d                                            ; $5b95: $8a
	sbc c                                            ; $5b96: $99
	ei                                               ; $5b97: $fb
	ld c, d                                          ; $5b98: $4a
	add hl, hl                                       ; $5b99: $29
	add hl, hl                                       ; $5b9a: $29
	ld a, [bc]                                       ; $5b9b: $0a
	ld d, c                                          ; $5b9c: $51
	ld a, e                                          ; $5b9d: $7b
	ret nc                                           ; $5b9e: $d0

	sub e                                            ; $5b9f: $93
	sub h                                            ; $5ba0: $94
	sub $d6                                          ; $5ba1: $d6 $d6
	inc b                                            ; $5ba3: $04
	xor [hl]                                         ; $5ba4: $ae
	nop                                              ; $5ba5: $00
	nop                                              ; $5ba6: $00
	ld d, c                                          ; $5ba7: $51
	inc b                                            ; $5ba8: $04
	dec e                                            ; $5ba9: $1d
	ld de, $7b3e                                     ; $5baa: $11 $3e $7b
	ldh [$df], a                                     ; $5bad: $e0 $df
	xor $9c                                          ; $5baf: $ee $9c
	and $ee                                          ; $5bb1: $e6 $ee
	ld b, h                                          ; $5bb3: $44
	ld a, e                                          ; $5bb4: $7b
	ldh [hDisp1_LCDC], a                                     ; $5bb5: $e0 $8f
	call nz, $5490                                   ; $5bb7: $c4 $90 $54
	db $10                                           ; $5bba: $10
	ld c, h                                          ; $5bbb: $4c
	nop                                              ; $5bbc: $00
	ld hl, sp-$08                                    ; $5bbd: $f8 $f8
	ld a, a                                          ; $5bbf: $7f
	ld l, a                                          ; $5bc0: $6f
	rst AddAOntoHL                                          ; $5bc1: $ef
	rst AddAOntoHL                                          ; $5bc2: $ef
	daa                                              ; $5bc3: $27
	rst $38                                          ; $5bc4: $ff
	rlca                                             ; $5bc5: $07
	rlca                                             ; $5bc6: $07
	ld l, d                                          ; $5bc7: $6a
	ret nz                                           ; $5bc8: $c0

	sbc [hl]                                         ; $5bc9: $9e
	add d                                            ; $5bca: $82
	ld l, d                                          ; $5bcb: $6a
	ret nz                                           ; $5bcc: $c0

	sbc h                                            ; $5bcd: $9c
	ld a, l                                          ; $5bce: $7d
	ld l, l                                          ; $5bcf: $6d
	ld d, a                                          ; $5bd0: $57
	ld a, e                                          ; $5bd1: $7b
	cp $9a                                           ; $5bd2: $fe $9a
	ld [hl], l                                       ; $5bd4: $75
	ld h, a                                          ; $5bd5: $67
	ld d, l                                          ; $5bd6: $55
	ldh a, [c]                                       ; $5bd7: $f2
	ld hl, sp+$7b                                    ; $5bd8: $f8 $7b
	cp $8d                                           ; $5bda: $fe $8d
	ld a, [$faf8]                                    ; $5bdc: $fa $f8 $fa
	adc e                                            ; $5bdf: $8b
	sub e                                            ; $5be0: $93
	add e                                            ; $5be1: $83
	sub l                                            ; $5be2: $95
	adc d                                            ; $5be3: $8a
	sub l                                            ; $5be4: $95
	add c                                            ; $5be5: $81
	dec d                                            ; $5be6: $15
	ld [hl], h                                       ; $5be7: $74
	ld l, h                                          ; $5be8: $6c
	ld a, h                                          ; $5be9: $7c
	ld l, d                                          ; $5bea: $6a
	ld [hl], l                                       ; $5beb: $75
	ld l, e                                          ; $5bec: $6b
	ld a, a                                          ; $5bed: $7f
	ld a, d                                          ; $5bee: $7a
	add $99                                          ; $5bef: $c6 $99
	db $fd                                           ; $5bf1: $fd
	xor $ff                                          ; $5bf2: $ee $ff
	cp $ff                                           ; $5bf4: $fe $ff
	ld a, d                                          ; $5bf6: $7a
	cp $df                                           ; $5bf7: $fe $df
	ldh a, [$de]                                     ; $5bf9: $f0 $de
	ld hl, sp-$69                                    ; $5bfb: $f8 $97
	ld e, c                                          ; $5bfd: $59
	xor d                                            ; $5bfe: $aa
	ld e, e                                          ; $5bff: $5b
	xor d                                            ; $5c00: $aa
	ld d, e                                          ; $5c01: $53
	xor h                                            ; $5c02: $ac
	ld d, l                                          ; $5c03: $55
	xor b                                            ; $5c04: $a8
	call c, $9c04                                    ; $5c05: $dc $04 $9c
	inc bc                                           ; $5c08: $03
	ld [bc], a                                       ; $5c09: $02
	ld [bc], a                                       ; $5c0a: $02
	ld [hl], d                                       ; $5c0b: $72
	jp nz, $907f                                     ; $5c0c: $c2 $7f $90

	ld l, [hl]                                       ; $5c0f: $6e
	ret nz                                           ; $5c10: $c0

	ld a, e                                          ; $5c11: $7b
	sub b                                            ; $5c12: $90
	sbc l                                            ; $5c13: $9d
	ld b, c                                          ; $5c14: $41
	xor [hl]                                         ; $5c15: $ae
	ld l, a                                          ; $5c16: $6f
	ldh a, [$9e]                                     ; $5c17: $f0 $9e
	ld [hl], $6b                                     ; $5c19: $36 $6b
	ldh a, [$9d]                                     ; $5c1b: $f0 $9d
	ld [hl], l                                       ; $5c1d: $75
	ld [$f06f], a                                    ; $5c1e: $ea $6f $f0
	sbc [hl]                                         ; $5c21: $9e
	ret nz                                           ; $5c22: $c0

	ld l, e                                          ; $5c23: $6b
	ldh a, [$9b]                                     ; $5c24: $f0 $9b
	ld e, a                                          ; $5c26: $5f
	cp a                                             ; $5c27: $bf
	ld e, a                                          ; $5c28: $5f
	xor e                                            ; $5c29: $ab
	ld d, a                                          ; $5c2a: $57
	ret nc                                           ; $5c2b: $d0

	halt                                             ; $5c2c: $76
	call nc, Call_04b_589b                           ; $5c2d: $d4 $9b $58
	ld bc, $9ecb                                     ; $5c30: $01 $cb $9e

jr_04b_5c33:
	halt                                             ; $5c33: $76
	call nc, $078d                                   ; $5c34: $d4 $8d $07
	cp $34                                           ; $5c37: $fe $34
	jr nz, jr_04b_5c33                               ; $5c39: $20 $f8

	pop hl                                           ; $5c3b: $e1
	adc e                                            ; $5c3c: $8b
	ld d, $bd                                        ; $5c3d: $16 $bd
	ld l, d                                          ; $5c3f: $6a
	ld d, a                                          ; $5c40: $57
	cp a                                             ; $5c41: $bf
	rlca                                             ; $5c42: $07
	ld e, $74                                        ; $5c43: $1e $74
	add sp, $40                                      ; $5c45: $e8 $40
	add b                                            ; $5c47: $80
	ld l, d                                          ; $5c48: $6a
	xor a                                            ; $5c49: $af
	sbc h                                            ; $5c4a: $9c
	cp $e6                                           ; $5c4b: $fe $e6
	add $da                                          ; $5c4d: $c6 $da
	rst $38                                          ; $5c4f: $ff
	ld a, [hl]                                       ; $5c50: $7e
	cp [hl]                                          ; $5c51: $be
	sbc $ff                                          ; $5c52: $de $ff
	sbc e                                            ; $5c54: $9b
	db $db                                           ; $5c55: $db
	rra                                              ; $5c56: $1f
	inc sp                                           ; $5c57: $33
	inc sp                                           ; $5c58: $33
	db $dd                                           ; $5c59: $dd
	rst $38                                          ; $5c5a: $ff
	rst SubAFromDE                                          ; $5c5b: $df
	ld sp, $11df                                     ; $5c5c: $31 $df $11
	ld l, [hl]                                       ; $5c5f: $6e
	adc a                                            ; $5c60: $8f
	rst SubAFromDE                                          ; $5c61: $df
	db $fc                                           ; $5c62: $fc
	ld l, a                                          ; $5c63: $6f
	ld sp, hl                                        ; $5c64: $f9
	rst SubAFromDE                                          ; $5c65: $df
	ld hl, sp+$77                                    ; $5c66: $f8 $77
	ldh a, [$9b]                                     ; $5c68: $f0 $9b
	db $fd                                           ; $5c6a: $fd
	and c                                            ; $5c6b: $a1
	cp c                                             ; $5c6c: $b9
	db $eb                                           ; $5c6d: $eb
	call c, $9cff                                    ; $5c6e: $dc $ff $9c
	call c, Call_04b_5444                            ; $5c71: $dc $44 $54
	ld [hl], a                                       ; $5c74: $77
	ldh a, [$9c]                                     ; $5c75: $f0 $9c
	cp a                                             ; $5c77: $bf
	cp e                                             ; $5c78: $bb
	db $e3                                           ; $5c79: $e3
	ld [hl], e                                       ; $5c7a: $73
	ret nz                                           ; $5c7b: $c0

	sbc e                                            ; $5c7c: $9b
	rra                                              ; $5c7d: $1f
	rla                                              ; $5c7e: $17
	inc de                                           ; $5c7f: $13
	ld [hl-], a                                      ; $5c80: $32
	ld [hl], e                                       ; $5c81: $73
	ret nz                                           ; $5c82: $c0

	sbc h                                            ; $5c83: $9c
	db $f4                                           ; $5c84: $f4
	ld b, h                                          ; $5c85: $44
	ld c, a                                          ; $5c86: $4f
	db $dd                                           ; $5c87: $dd
	rst $38                                          ; $5c88: $ff
	sbc e                                            ; $5c89: $9b
	db $ec                                           ; $5c8a: $ec
	ret z                                            ; $5c8b: $c8

	ret z                                            ; $5c8c: $c8

	ld c, b                                          ; $5c8d: $48
	ld [hl], a                                       ; $5c8e: $77
	ldh a, [$9b]                                     ; $5c8f: $f0 $9b
	ld a, a                                          ; $5c91: $7f
	di                                               ; $5c92: $f3
	add e                                            ; $5c93: $83
	ldh [c], a                                       ; $5c94: $e2
	call c, $9dff                                    ; $5c95: $dc $ff $9d
	ld a, a                                          ; $5c98: $7f
	ld [hl], c                                       ; $5c99: $71
	ld [hl], a                                       ; $5c9a: $77
	or b                                             ; $5c9b: $b0
	sbc d                                            ; $5c9c: $9a
	ccf                                              ; $5c9d: $3f
	rra                                              ; $5c9e: $1f
	cp a                                             ; $5c9f: $bf
	ccf                                              ; $5ca0: $3f
	ld a, [hl]                                       ; $5ca1: $7e
	db $dd                                           ; $5ca2: $dd
	rst $38                                          ; $5ca3: $ff
	ld a, a                                          ; $5ca4: $7f
	rst FarCall                                          ; $5ca5: $f7
	rst SubAFromDE                                          ; $5ca6: $df
	rra                                              ; $5ca7: $1f
	sbc h                                            ; $5ca8: $9c
	nop                                              ; $5ca9: $00
	db $fc                                           ; $5caa: $fc
	ld hl, sp+$7b                                    ; $5cab: $f8 $7b
	cp $9d                                           ; $5cad: $fe $9d
	add sp, $4c                                      ; $5caf: $e8 $4c
	jp c, $93ff                                      ; $5cb1: $da $ff $93

	daa                                              ; $5cb4: $27
	push de                                          ; $5cb5: $d5
	cp e                                             ; $5cb6: $bb
	db $fd                                           ; $5cb7: $fd
	rst FarCall                                          ; $5cb8: $f7
	ld [$a2c5], a                                    ; $5cb9: $ea $c5 $a2
	ret nz                                           ; $5cbc: $c0

	ld a, [hl+]                                      ; $5cbd: $2a
	ld b, h                                          ; $5cbe: $44
	ld [bc], a                                       ; $5cbf: $02
	db $fc                                           ; $5cc0: $fc
	sub a                                            ; $5cc1: $97
	ld a, [hl+]                                      ; $5cc2: $2a
	ld a, a                                          ; $5cc3: $7f
	ld a, a                                          ; $5cc4: $7f
	ld [hl], a                                       ; $5cc5: $77
	ld e, c                                          ; $5cc6: $59
	cpl                                              ; $5cc7: $2f
	ld e, l                                          ; $5cc8: $5d
	dec hl                                           ; $5cc9: $2b
	ld [hl], l                                       ; $5cca: $75
	add e                                            ; $5ccb: $83
	add b                                            ; $5ccc: $80
	ldh a, [c]                                       ; $5ccd: $f2
	ldh a, [$f2]                                     ; $5cce: $f0 $f2
	db $f4                                           ; $5cd0: $f4
	inc bc                                           ; $5cd1: $03
	sub l                                            ; $5cd2: $95
	and e                                            ; $5cd3: $a3
	ld d, l                                          ; $5cd4: $55
	db $eb                                           ; $5cd5: $eb
	ld d, l                                          ; $5cd6: $55
	ei                                               ; $5cd7: $fb
	ld d, l                                          ; $5cd8: $55
	db $fc                                           ; $5cd9: $fc
	ld [$eadc], a                                    ; $5cda: $ea $dc $ea
	ld d, h                                          ; $5cdd: $54
	db $eb                                           ; $5cde: $eb
	ld b, a                                          ; $5cdf: $47
	ld [$9dc0], a                                    ; $5ce0: $ea $c0 $9d
	adc $97                                          ; $5ce3: $ce $97
	ld a, [de]                                       ; $5ce5: $1a
	rst SubAFromDE                                          ; $5ce6: $df
	sbc d                                            ; $5ce7: $9a
	rla                                              ; $5ce8: $17
	jr nc, jr_04b_5d4d                               ; $5ce9: $30 $62

	scf                                              ; $5ceb: $37
	adc l                                            ; $5cec: $8d
	ld l, [hl]                                       ; $5ced: $6e
	push hl                                          ; $5cee: $e5
	ldh [$e5], a                                     ; $5cef: $e0 $e5
	add sp, $00                                      ; $5cf1: $e8 $00
	rst $38                                          ; $5cf3: $ff
	ld b, b                                          ; $5cf4: $40
	ret nz                                           ; $5cf5: $c0

	ret nz                                           ; $5cf6: $c0

	call nz, $c4c5                                   ; $5cf7: $c4 $c5 $c4
	rst $38                                          ; $5cfa: $ff
	nop                                              ; $5cfb: $00
	add b                                            ; $5cfc: $80
	add b                                            ; $5cfd: $80
	adc a                                            ; $5cfe: $8f
	sbc $88                                          ; $5cff: $de $88
	ld a, d                                          ; $5d01: $7a
	db $fc                                           ; $5d02: $fc
	ld a, [hl]                                       ; $5d03: $7e
	db $f4                                           ; $5d04: $f4
	sbc h                                            ; $5d05: $9c
	ld [bc], a                                       ; $5d06: $02
	ld d, d                                          ; $5d07: $52
	and d                                            ; $5d08: $a2
	ld [hl], l                                       ; $5d09: $75
	cp a                                             ; $5d0a: $bf
	ld a, [hl]                                       ; $5d0b: $7e
	dec sp                                           ; $5d0c: $3b
	rst SubAFromDE                                          ; $5d0d: $df
	inc b                                            ; $5d0e: $04
	ld [hl], e                                       ; $5d0f: $73
	ldh a, [$df]                                     ; $5d10: $f0 $df
	ld bc, $a19e                                     ; $5d12: $01 $9e $a1
	ld [hl], e                                       ; $5d15: $73
	ldh a, [$de]                                     ; $5d16: $f0 $de
	ld [bc], a                                       ; $5d18: $02
	ld a, a                                          ; $5d19: $7f

jr_04b_5d1a:
	ei                                               ; $5d1a: $fb
	sbc [hl]                                         ; $5d1b: $9e
	dec d                                            ; $5d1c: $15
	halt                                             ; $5d1d: $76
	call nc, Call_04b_549e                           ; $5d1e: $d4 $9e $54
	ld [hl], e                                       ; $5d21: $73
	ldh a, [$de]                                     ; $5d22: $f0 $de
	ld bc, $fb7f                                     ; $5d24: $01 $7f $fb
	ld a, c                                          ; $5d27: $79
	ld d, h                                          ; $5d28: $54
	rst SubAFromDE                                          ; $5d29: $df
	add b                                            ; $5d2a: $80
	sbc [hl]                                         ; $5d2b: $9e
	xor d                                            ; $5d2c: $aa
	ld [hl], e                                       ; $5d2d: $73
	ldh a, [$fe]                                     ; $5d2e: $f0 $fe
	sbc d                                            ; $5d30: $9a
	rla                                              ; $5d31: $17
	rst SubAFromDE                                          ; $5d32: $df
	ld d, l                                          ; $5d33: $55
	sbc d                                            ; $5d34: $9a
	ld d, l                                          ; $5d35: $55
	sbc $50                                          ; $5d36: $de $50
	ld a, h                                          ; $5d38: $7c
	ld l, [hl]                                       ; $5d39: $6e
	rst SubAFromDE                                          ; $5d3a: $df
	jr nz, jr_04b_5d1a                               ; $5d3b: $20 $dd

	and b                                            ; $5d3d: $a0
	ld a, e                                          ; $5d3e: $7b
	dec sp                                           ; $5d3f: $3b
	sbc e                                            ; $5d40: $9b
	rst $38                                          ; $5d41: $ff
	ld d, a                                          ; $5d42: $57
	xor e                                            ; $5d43: $ab
	dec d                                            ; $5d44: $15
	ld l, a                                          ; $5d45: $6f
	ld h, e                                          ; $5d46: $63
	cp $96                                           ; $5d47: $fe $96
	dec bc                                           ; $5d49: $0b
	add b                                            ; $5d4a: $80
	add hl, de                                       ; $5d4b: $19
	cp h                                             ; $5d4c: $bc

jr_04b_5d4d:
	add hl, bc                                       ; $5d4d: $09
	adc h                                            ; $5d4e: $8c
	ld de, $c198                                     ; $5d4f: $11 $98 $c1
	jp c, $97c3                                      ; $5d52: $da $c3 $97

	ld h, a                                          ; $5d55: $67
	ld a, [hl]                                       ; $5d56: $7e
	rst SubAFromBC                                          ; $5d57: $e7
	ld l, [hl]                                       ; $5d58: $6e
	ld l, e                                          ; $5d59: $6b
	di                                               ; $5d5a: $f3
	db $e3                                           ; $5d5b: $e3
	inc bc                                           ; $5d5c: $03
	jp c, $9511                                      ; $5d5d: $da $11 $95

	ld sp, $056d                                     ; $5d60: $31 $6d $05
	sbc l                                            ; $5d63: $9d
	sbc l                                            ; $5d64: $9d
	sbc h                                            ; $5d65: $9c
	call $fcac                                       ; $5d66: $cd $ac $fc
	sbc b                                            ; $5d69: $98
	db $dd                                           ; $5d6a: $dd
	ld [$3883], sp                                   ; $5d6b: $08 $83 $38
	jr jr_04b_5d78                                   ; $5d6e: $18 $08

	dec l                                            ; $5d70: $2d
	ld a, [hl+]                                      ; $5d71: $2a
	ld l, $2d                                        ; $5d72: $2e $2d
	cpl                                              ; $5d74: $2f
	dec hl                                           ; $5d75: $2b
	add hl, sp                                       ; $5d76: $39
	add hl, sp                                       ; $5d77: $39

jr_04b_5d78:
	ret nc                                           ; $5d78: $d0

	push de                                          ; $5d79: $d5
	pop de                                           ; $5d7a: $d1
	ret nc                                           ; $5d7b: $d0

	ret nc                                           ; $5d7c: $d0

Jump_04b_5d7d:
	call nc, $c4c4                                   ; $5d7d: $d4 $c4 $c4
	xor b                                            ; $5d80: $a8
	xor h                                            ; $5d81: $ac
	and h                                            ; $5d82: $a4
	and h                                            ; $5d83: $a4
	xor l                                            ; $5d84: $ad
	db $fd                                           ; $5d85: $fd
	and h                                            ; $5d86: $a4
	add h                                            ; $5d87: $84
	ld d, $dd                                        ; $5d88: $16 $dd
	ld [de], a                                       ; $5d8a: $12
	sub h                                            ; $5d8b: $94
	ld [bc], a                                       ; $5d8c: $02
	ld [de], a                                       ; $5d8d: $12
	ld [de], a                                       ; $5d8e: $12
	rla                                              ; $5d8f: $17
	ld [hl], l                                       ; $5d90: $75
	dec [hl]                                         ; $5d91: $35
	daa                                              ; $5d92: $27
	and a                                            ; $5d93: $a7
	add l                                            ; $5d94: $85
	and l                                            ; $5d95: $a5
	dec [hl]                                         ; $5d96: $35
	reti                                             ; $5d97: $d9


	ld c, b                                          ; $5d98: $48
	sub [hl]                                         ; $5d99: $96
	ld bc, $8f82                                     ; $5d9a: $01 $82 $8f
	add d                                            ; $5d9d: $82
	add l                                            ; $5d9e: $85
	add d                                            ; $5d9f: $82
	add e                                            ; $5da0: $83
	add d                                            ; $5da1: $82
	di                                               ; $5da2: $f3
	sbc $71                                          ; $5da3: $de $71
	sbc [hl]                                         ; $5da5: $9e
	ld [hl], e                                       ; $5da6: $73
	sbc $71                                          ; $5da7: $de $71
	sub e                                            ; $5da9: $93
	ld [hl-], a                                      ; $5daa: $32
	ret nz                                           ; $5dab: $c0

	pop hl                                           ; $5dac: $e1
	ld c, h                                          ; $5dad: $4c
	ret nz                                           ; $5dae: $c0

	db $e4                                           ; $5daf: $e4
	push bc                                          ; $5db0: $c5
	call nz, $331f                                   ; $5db1: $c4 $1f $33
	inc de                                           ; $5db4: $13
	inc sp                                           ; $5db5: $33
	ld [hl], a                                       ; $5db6: $77
	db $fd                                           ; $5db7: $fd
	sub [hl]                                         ; $5db8: $96
	ld b, h                                          ; $5db9: $44
	ret z                                            ; $5dba: $c8

	call z, $dcc0                                    ; $5dbb: $cc $c0 $dc
	jr @+$16                                         ; $5dbe: $18 $14

	db $10                                           ; $5dc0: $10
	cpl                                              ; $5dc1: $2f
	sbc $3f                                          ; $5dc2: $de $3f
	rst SubAFromDE                                          ; $5dc4: $df
	daa                                              ; $5dc5: $27
	rst SubAFromDE                                          ; $5dc6: $df
	cpl                                              ; $5dc7: $2f
	sbc h                                            ; $5dc8: $9c
	add d                                            ; $5dc9: $82
	nop                                              ; $5dca: $00
	add b                                            ; $5dcb: $80
	ld [hl], e                                       ; $5dcc: $73
	cp $f9                                           ; $5dcd: $fe $f9
	sbc l                                            ; $5dcf: $9d
	ld e, l                                          ; $5dd0: $5d
	add hl, hl                                       ; $5dd1: $29
	ld a, e                                          ; $5dd2: $7b
	cp $9a                                           ; $5dd3: $fe $9a
	add hl, bc                                       ; $5dd5: $09
	ld d, l                                          ; $5dd6: $55
	ld a, a                                          ; $5dd7: $7f
	ldh a, [c]                                       ; $5dd8: $f2
	or $77                                           ; $5dd9: $f6 $77
	cp $80                                           ; $5ddb: $fe $80
	ld a, [$efff]                                    ; $5ddd: $fa $ff $ef
	ld e, l                                          ; $5de0: $5d
	ld [$ea45], a                                    ; $5de1: $ea $45 $ea
	pop hl                                           ; $5de4: $e1
	ld h, b                                          ; $5de5: $60
	db $e3                                           ; $5de6: $e3
	ld b, b                                          ; $5de7: $40
	ldh [c], a                                       ; $5de8: $e2
	ld b, c                                          ; $5de9: $41
	ldh [c], a                                       ; $5dea: $e2
	ld b, c                                          ; $5deb: $41
	ld b, d                                          ; $5dec: $42
	jp $9ac3                                         ; $5ded: $c3 $c3 $9a


	sub a                                            ; $5df0: $97
	adc d                                            ; $5df1: $8a
	adc [hl]                                         ; $5df2: $8e
	adc d                                            ; $5df3: $8a
	adc h                                            ; $5df4: $8c
	ld l, b                                          ; $5df5: $68
	rst GetHLinHL                                          ; $5df6: $cf
	ld h, l                                          ; $5df7: $65
	ld l, [hl]                                       ; $5df8: $6e
	ld h, l                                          ; $5df9: $65
	ld h, c                                          ; $5dfa: $61
	ld h, l                                          ; $5dfb: $65
	sbc h                                            ; $5dfc: $9c
	ld h, e                                          ; $5dfd: $63
	rst JumpTable                                          ; $5dfe: $c7
	and $db                                          ; $5dff: $e6 $db
	call nz, $849d                                   ; $5e01: $c4 $9d $84
	ret nz                                           ; $5e04: $c0

	jp c, $9c88                                      ; $5e05: $da $88 $9c

	adc a                                            ; $5e08: $8f
	ld d, d                                          ; $5e09: $52
	ld [hl+], a                                      ; $5e0a: $22
	ld [hl], a                                       ; $5e0b: $77
	cp $7f                                           ; $5e0c: $fe $7f
	ld de, $04da                                     ; $5e0e: $11 $da $04
	sbc h                                            ; $5e11: $9c
	rst $38                                          ; $5e12: $ff
	ld d, c                                          ; $5e13: $51
	and c                                            ; $5e14: $a1
	ld a, e                                          ; $5e15: $7b
	cp $7a                                           ; $5e16: $fe $7a
	reti                                             ; $5e18: $d9


	jp c, $9b02                                      ; $5e19: $da $02 $9b

	rst $38                                          ; $5e1c: $ff
	xor b                                            ; $5e1d: $a8
	ld d, h                                          ; $5e1e: $54
	jr z, @+$6e                                      ; $5e1f: $28 $6c

	ld [hl], a                                       ; $5e21: $77
	db $db                                           ; $5e22: $db
	ld bc, $ff98                                     ; $5e23: $01 $98 $ff
	sub h                                            ; $5e26: $94
	xor d                                            ; $5e27: $aa
	sub h                                            ; $5e28: $94
	adc d                                            ; $5e29: $8a
	add h                                            ; $5e2a: $84
	add d                                            ; $5e2b: $82
	ld h, e                                          ; $5e2c: $63
	add b                                            ; $5e2d: $80
	sbc [hl]                                         ; $5e2e: $9e
	rst $38                                          ; $5e2f: $ff
	reti                                             ; $5e30: $d9


	ld d, b                                          ; $5e31: $50
	reti                                             ; $5e32: $d9


	and b                                            ; $5e33: $a0
	sbc h                                            ; $5e34: $9c
	dec b                                            ; $5e35: $05
	ld [bc], a                                       ; $5e36: $02
	ld bc, $96f4                                     ; $5e37: $01 $f4 $96
	add hl, bc                                       ; $5e3a: $09
	sbc b                                            ; $5e3b: $98
	ld b, b                                          ; $5e3c: $40
	inc b                                            ; $5e3d: $04

jr_04b_5e3e:
	add h                                            ; $5e3e: $84
	ld b, l                                          ; $5e3f: $45
	or b                                             ; $5e40: $b0
	ld sp, $dad3                                     ; $5e41: $31 $d3 $da
	jp Jump_04b_4f97                                 ; $5e44: $c3 $97 $4f


	ld b, d                                          ; $5e47: $42
	rlca                                             ; $5e48: $07
	ld b, $c3                                        ; $5e49: $06 $c3
	inc bc                                           ; $5e4b: $03
	add e                                            ; $5e4c: $83
	sbc c                                            ; $5e4d: $99
	jp c, $9431                                      ; $5e4e: $da $31 $94

	inc sp                                           ; $5e51: $33
	db $fd                                           ; $5e52: $fd
	db $dd                                           ; $5e53: $dd
	db $ed                                           ; $5e54: $ed
	xor l                                            ; $5e55: $ad
	db $ec                                           ; $5e56: $ec
	sbc h                                            ; $5e57: $9c
	ld e, $58                                        ; $5e58: $1e $58
	ld [$de08], sp                                   ; $5e5a: $08 $08 $de
	jr jr_04b_5e3e                                   ; $5e5d: $18 $df

	ld [$8e9e], sp                                   ; $5e5f: $08 $9e $8e
	sbc $39                                          ; $5e62: $de $39
	call c, $de29                                    ; $5e64: $dc $29 $de
	call nz, $d4dc                                   ; $5e67: $c4 $dc $d4
	sbc e                                            ; $5e6a: $9b
	add h                                            ; $5e6b: $84
	adc h                                            ; $5e6c: $8c
	add b                                            ; $5e6d: $80
	add c                                            ; $5e6e: $81
	sbc $84                                          ; $5e6f: $de $84
	sbc [hl]                                         ; $5e71: $9e
	dec c                                            ; $5e72: $0d
	jp c, $9612                                      ; $5e73: $da $12 $96

	sub d                                            ; $5e76: $92
	ld h, l                                          ; $5e77: $65
	daa                                              ; $5e78: $27
	dec [hl]                                         ; $5e79: $35
	and h                                            ; $5e7a: $a4
	or h                                             ; $5e7b: $b4

Jump_04b_5e7c:
	inc h                                            ; $5e7c: $24
	inc h                                            ; $5e7d: $24
	ld [de], a                                       ; $5e7e: $12
	jp c, $8a48                                      ; $5e7f: $da $48 $8a

	ld l, h                                          ; $5e82: $6c
	add e                                            ; $5e83: $83
	jp nz, $8243                                     ; $5e84: $c2 $43 $82

	ld h, e                                          ; $5e87: $63
	jp nz, $8ac3                                     ; $5e88: $c2 $c3 $8a

	ld [hl], c                                       ; $5e8b: $71
	ld sp, $71b1                                     ; $5e8c: $31 $b1 $71
	sub c                                            ; $5e8f: $91
	ld sp, $7131                                     ; $5e90: $31 $31 $71
	inc h                                            ; $5e93: $24
	add d                                            ; $5e94: $82
	jp nz, $deae                                     ; $5e95: $c2 $ae $de

	and d                                            ; $5e98: $a2
	sbc l                                            ; $5e99: $9d
	or e                                             ; $5e9a: $b3
	inc de                                           ; $5e9b: $13
	ld [hl], l                                       ; $5e9c: $75
	inc hl                                           ; $5e9d: $23
	sbc $11                                          ; $5e9e: $de $11
	sub [hl]                                         ; $5ea0: $96
	inc b                                            ; $5ea1: $04
	ret nc                                           ; $5ea2: $d0

	ld d, h                                          ; $5ea3: $54
	db $10                                           ; $5ea4: $10
	ld [$3c08], sp                                   ; $5ea5: $08 $08 $3c
	ld d, b                                          ; $5ea8: $50
	ccf                                              ; $5ea9: $3f
	sbc $2f                                          ; $5eaa: $de $2f
	sbc $27                                          ; $5eac: $de $27
	ld a, [hl]                                       ; $5eae: $7e
	ret nz                                           ; $5eaf: $c0

	sbc b                                            ; $5eb0: $98
	add b                                            ; $5eb1: $80
	add d                                            ; $5eb2: $82
	add c                                            ; $5eb3: $81
	jp nz, $ca85                                     ; $5eb4: $c2 $85 $ca

	rst SubAFromHL                                          ; $5eb7: $d7
	ld sp, hl                                        ; $5eb8: $f9
	sub d                                            ; $5eb9: $92
	ld a, [hl]                                       ; $5eba: $7e
	ld [hl], c                                       ; $5ebb: $71
	dec bc                                           ; $5ebc: $0b
	ld de, $110a                                     ; $5ebd: $11 $0a $11
	dec bc                                           ; $5ec0: $0b
	ld de, $feff                                     ; $5ec1: $11 $ff $fe
	db $fc                                           ; $5ec4: $fc
	cp $fd                                           ; $5ec5: $fe $fd
	ld a, e                                          ; $5ec7: $7b
	db $fc                                           ; $5ec8: $fc
	add b                                            ; $5ec9: $80
	ld h, c                                          ; $5eca: $61
	ldh [c], a                                       ; $5ecb: $e2
	pop bc                                           ; $5ecc: $c1
	ld h, d                                          ; $5ecd: $62
	pop bc                                           ; $5ece: $c1
	ld h, e                                          ; $5ecf: $63
	pop af                                           ; $5ed0: $f1
	ld hl, sp-$3d                                    ; $5ed1: $f8 $c3
	ld b, c                                          ; $5ed3: $41
	ld b, d                                          ; $5ed4: $42
	pop bc                                           ; $5ed5: $c1
	ld b, d                                          ; $5ed6: $42
	ret nz                                           ; $5ed7: $c0

	ld b, d                                          ; $5ed8: $42
	ld b, e                                          ; $5ed9: $43
	jr nz, @-$75                                     ; $5eda: $20 $89

	xor d                                            ; $5edc: $aa
	adc c                                            ; $5edd: $89
	inc h                                            ; $5ede: $24
	add [hl]                                         ; $5edf: $86
	cp $14                                           ; $5ee0: $fe $14
	rst GetHLinHL                                          ; $5ee2: $cf
	ld h, d                                          ; $5ee3: $62
	ld b, c                                          ; $5ee4: $41
	ld h, d                                          ; $5ee5: $62
	bit 5, a                                         ; $5ee6: $cb $6f
	ld b, c                                          ; $5ee8: $41
	sub [hl]                                         ; $5ee9: $96
	db $eb                                           ; $5eea: $eb
	ldh [$d0], a                                     ; $5eeb: $e0 $d0
	add sp, -$2c                                     ; $5eed: $e8 $d4
	ld [$ead5], a                                    ; $5eef: $ea $d5 $ea
	push de                                          ; $5ef2: $d5
	reti                                             ; $5ef3: $d9


	add b                                            ; $5ef4: $80

Jump_04b_5ef5:
	db $fd                                           ; $5ef5: $fd
	sbc [hl]                                         ; $5ef6: $9e
	and b                                            ; $5ef7: $a0
	ld [hl], h                                       ; $5ef8: $74
	ld e, l                                          ; $5ef9: $5d
	or $9e                                           ; $5efa: $f6 $9e
	ld a, [bc]                                       ; $5efc: $0a
	ld c, e                                          ; $5efd: $4b
	ldh a, [$9e]                                     ; $5efe: $f0 $9e
	ld [$f05b], sp                                   ; $5f00: $08 $5b $f0
	sbc [hl]                                         ; $5f03: $9e
	ld a, [bc]                                       ; $5f04: $0a
	cp $9e                                           ; $5f05: $fe $9e
	adc b                                            ; $5f07: $88
	ld e, e                                          ; $5f08: $5b
	ldh a, [$9e]                                     ; $5f09: $f0 $9e
	sub b                                            ; $5f0b: $90
	db $dd                                           ; $5f0c: $dd
	db $10                                           ; $5f0d: $10
	sbc h                                            ; $5f0e: $9c
	ld d, b                                          ; $5f0f: $50
	sub b                                            ; $5f10: $90
	ld a, a                                          ; $5f11: $7f
	jp c, $9e20                                      ; $5f12: $da $20 $9e

	ld a, a                                          ; $5f15: $7f
	ld h, [hl]                                       ; $5f16: $66
	xor b                                            ; $5f17: $a8
	ld h, a                                          ; $5f18: $67
	ld hl, sp-$66                                    ; $5f19: $f8 $9a
	dec h                                            ; $5f1b: $25
	nop                                              ; $5f1c: $00
	cp a                                             ; $5f1d: $bf
	rst $38                                          ; $5f1e: $ff
	rst $38                                          ; $5f1f: $ff
	ld a, b                                          ; $5f20: $78
	xor e                                            ; $5f21: $ab
	sbc $c3                                          ; $5f22: $de $c3
	ld [hl], b                                       ; $5f24: $70
	inc [hl]                                         ; $5f25: $34
	sbc h                                            ; $5f26: $9c
	sub c                                            ; $5f27: $91
	dec bc                                           ; $5f28: $0b
	db $dd                                           ; $5f29: $dd
	ld [hl], e                                       ; $5f2a: $73
	ldh a, [$9c]                                     ; $5f2b: $f0 $9c
	dec sp                                           ; $5f2d: $3b
	ld sp, $7333                                     ; $5f2e: $31 $33 $73
	ldh a, [$9d]                                     ; $5f31: $f0 $9d
	ld a, [bc]                                       ; $5f33: $0a
	inc e                                            ; $5f34: $1c
	ld a, b                                          ; $5f35: $78
	ld d, l                                          ; $5f36: $55
	ld a, e                                          ; $5f37: $7b
	rst FarCall                                          ; $5f38: $f7
	sbc h                                            ; $5f39: $9c
	sbc h                                            ; $5f3a: $9c
	adc b                                            ; $5f3b: $88
	inc e                                            ; $5f3c: $1c
	ld [hl], e                                       ; $5f3d: $73
	ldh a, [$9c]                                     ; $5f3e: $f0 $9c
	ld l, a                                          ; $5f40: $6f
	add hl, bc                                       ; $5f41: $09
	and d                                            ; $5f42: $a2
	ld [hl], e                                       ; $5f43: $73
	ldh a, [$9c]                                     ; $5f44: $f0 $9c
	call nc, $ddd6                                   ; $5f46: $d4 $d6 $dd
	ld [hl], e                                       ; $5f49: $73
	ldh a, [$9c]                                     ; $5f4a: $f0 $9c
	jp c, $650b                                      ; $5f4c: $da $0b $65

	ld [hl], e                                       ; $5f4f: $73
	ldh a, [$9c]                                     ; $5f50: $f0 $9c
	sub e                                            ; $5f52: $93
	sub d                                            ; $5f53: $92
	sbc d                                            ; $5f54: $9a
	ld [hl], e                                       ; $5f55: $73
	ldh a, [$7d]                                     ; $5f56: $f0 $7d
	push bc                                          ; $5f58: $c5
	sbc [hl]                                         ; $5f59: $9e
	inc bc                                           ; $5f5a: $03
	ld [hl], a                                       ; $5f5b: $77
	ldh a, [$9e]                                     ; $5f5c: $f0 $9e
	rst FarCall                                          ; $5f5e: $f7
	sbc $6c                                          ; $5f5f: $de $6c
	ld [hl], e                                       ; $5f61: $73
	ldh a, [$9c]                                     ; $5f62: $f0 $9c
	ld h, c                                          ; $5f64: $61
	ld d, [hl]                                       ; $5f65: $56
	add e                                            ; $5f66: $83
	ld [hl], e                                       ; $5f67: $73
	ldh [$9c], a                                     ; $5f68: $e0 $9c
	sbc a                                            ; $5f6a: $9f
	cp c                                             ; $5f6b: $b9
	ld [hl], c                                       ; $5f6c: $71
	ld [hl], e                                       ; $5f6d: $73
	ldh a, [$9c]                                     ; $5f6e: $f0 $9c
	ld c, $c0                                        ; $5f70: $0e $c0
	ld e, e                                          ; $5f72: $5b
	ld [hl], e                                       ; $5f73: $73
	ldh a, [$9c]                                     ; $5f74: $f0 $9c
	di                                               ; $5f76: $f3
	inc sp                                           ; $5f77: $33

jr_04b_5f78:
	or c                                             ; $5f78: $b1
	ld [hl], e                                       ; $5f79: $73
	ldh a, [hDisp1_BGP]                                     ; $5f7a: $f0 $92
	jr nc, @+$42                                     ; $5f7c: $30 $40

	jr nc, jr_04b_5f78                               ; $5f7e: $30 $f8

	ld hl, sp+$60                                    ; $5f80: $f8 $60
	ld hl, sp-$08                                    ; $5f82: $f8 $f8
	ld l, a                                          ; $5f84: $6f
	ccf                                              ; $5f85: $3f
	cpl                                              ; $5f86: $2f
	rlca                                             ; $5f87: $07
	rlca                                             ; $5f88: $07
	sbc $ff                                          ; $5f89: $de $ff
	add h                                            ; $5f8b: $84
	xor $dd                                          ; $5f8c: $ee $dd
	cp a                                             ; $5f8e: $bf
	ld e, l                                          ; $5f8f: $5d
	cp e                                             ; $5f90: $bb
	ld [hl], l                                       ; $5f91: $75
	xor e                                            ; $5f92: $ab
	ld [hl], l                                       ; $5f93: $75
	nop                                              ; $5f94: $00
	ld [bc], a                                       ; $5f95: $02
	ld b, b                                          ; $5f96: $40
	add d                                            ; $5f97: $82
	ld b, h                                          ; $5f98: $44
	adc d                                            ; $5f99: $8a
	ld d, h                                          ; $5f9a: $54
	adc d                                            ; $5f9b: $8a
	ld a, [bc]                                       ; $5f9c: $0a
	ld de, $5509                                     ; $5f9d: $11 $09 $55
	rst $38                                          ; $5fa0: $ff
	ld a, a                                          ; $5fa1: $7f
	rst SubAFromBC                                          ; $5fa2: $e7
	ld c, d                                          ; $5fa3: $4a
	db $fd                                           ; $5fa4: $fd
	cp $fe                                           ; $5fa5: $fe $fe
	db $dd                                           ; $5fa7: $dd
	rst $38                                          ; $5fa8: $ff
	sub d                                            ; $5fa9: $92
	push af                                          ; $5faa: $f5
	rst $38                                          ; $5fab: $ff
	db $ed                                           ; $5fac: $ed
	inc d                                            ; $5fad: $14
	add hl, hl                                       ; $5fae: $29
	sub l                                            ; $5faf: $95
	and e                                            ; $5fb0: $a3
	sub l                                            ; $5fb1: $95
	and e                                            ; $5fb2: $a3
	ld b, e                                          ; $5fb3: $43
	ld d, d                                          ; $5fb4: $52
	ld [$78d6], a                                    ; $5fb5: $ea $d6 $78
	dec a                                            ; $5fb8: $3d
	adc [hl]                                         ; $5fb9: $8e
	call c, $54fe                                    ; $5fba: $dc $fe $54
	ld hl, sp+$57                                    ; $5fbd: $f8 $57
	xor b                                            ; $5fbf: $a8
	ld d, h                                          ; $5fc0: $54
	xor d                                            ; $5fc1: $aa
	inc d                                            ; $5fc2: $14
	pop bc                                           ; $5fc3: $c1
	db $eb                                           ; $5fc4: $eb
	ld b, a                                          ; $5fc5: $47
	xor $57                                          ; $5fc6: $ee $57
	db $eb                                           ; $5fc8: $eb
	ld d, l                                          ; $5fc9: $55
	db $eb                                           ; $5fca: $eb
	ld a, d                                          ; $5fcb: $7a
	rst GetHLinHL                                          ; $5fcc: $cf
	sbc d                                            ; $5fcd: $9a
	xor d                                            ; $5fce: $aa
	sub b                                            ; $5fcf: $90
	cp a                                             ; $5fd0: $bf
	push de                                          ; $5fd1: $d5
	ld a, [hl+]                                      ; $5fd2: $2a
	sbc $80                                          ; $5fd3: $de $80
	call c, Call_04b_74ff                            ; $5fd5: $dc $ff $74
	sbc l                                            ; $5fd8: $9d
	ld a, a                                          ; $5fd9: $7f
	xor $9d                                          ; $5fda: $ee $9d
	db $10                                           ; $5fdc: $10

jr_04b_5fdd:
	sbc b                                            ; $5fdd: $98
	cp $9e                                           ; $5fde: $fe $9e
	db $f4                                           ; $5fe0: $f4
	ld l, e                                          ; $5fe1: $6b
	ldh a, [$78]                                     ; $5fe2: $f0 $78
	ld a, $9d                                        ; $5fe4: $3e $9d
	ld [bc], a                                       ; $5fe6: $02
	inc bc                                           ; $5fe7: $03
	ld [hl], e                                       ; $5fe8: $73
	inc bc                                           ; $5fe9: $03
	sbc h                                            ; $5fea: $9c
	rst $38                                          ; $5feb: $ff
	db $fd                                           ; $5fec: $fd
	cp $6e                                           ; $5fed: $fe $6e
	db $f4                                           ; $5fef: $f4
	sbc [hl]                                         ; $5ff0: $9e
	ld [$f36e], sp                                   ; $5ff1: $08 $6e $f3
	ld a, a                                          ; $5ff4: $7f
	ld c, c                                          ; $5ff5: $49
	ld a, a                                          ; $5ff6: $7f
	db $f4                                           ; $5ff7: $f4
	sbc c                                            ; $5ff8: $99
	rlca                                             ; $5ff9: $07
	nop                                              ; $5ffa: $00
	ldh a, [$08]                                     ; $5ffb: $f0 $08
	inc c                                            ; $5ffd: $0c
	ld a, [bc]                                       ; $5ffe: $0a
	ld a, e                                          ; $5fff: $7b
	inc de                                           ; $6000: $13
	ld a, a                                          ; $6001: $7f
	db $dd                                           ; $6002: $dd
	adc e                                            ; $6003: $8b
	db $fc                                           ; $6004: $fc
	rst FarCall                                          ; $6005: $f7
	rst FarCall                                          ; $6006: $f7
	rst SubAFromBC                                          ; $6007: $e7
	ld a, a                                          ; $6008: $7f
	nop                                              ; $6009: $00
	ld a, a                                          ; $600a: $7f
	xor d                                            ; $600b: $aa
	dec d                                            ; $600c: $15
	ld a, [de]                                       ; $600d: $1a
	ld c, b                                          ; $600e: $48
	cp a                                             ; $600f: $bf
	ld a, a                                          ; $6010: $7f
	rst $38                                          ; $6011: $ff
	add b                                            ; $6012: $80
	ld d, l                                          ; $6013: $55
	ld a, [hl+]                                      ; $6014: $2a
	dec b                                            ; $6015: $05
	cp a                                             ; $6016: $bf
	ld e, a                                          ; $6017: $5f
	ld a, e                                          ; $6018: $7b
	ld b, h                                          ; $6019: $44
	ld a, [hl]                                       ; $601a: $7e
	and e                                            ; $601b: $a3
	sbc h                                            ; $601c: $9c
	xor d                                            ; $601d: $aa
	nop                                              ; $601e: $00
	xor e                                            ; $601f: $ab
	ld a, e                                          ; $6020: $7b
	or [hl]                                          ; $6021: $b6
	ld a, d                                          ; $6022: $7a
	sbc d                                            ; $6023: $9a
	rst SubAFromDE                                          ; $6024: $df
	rst $38                                          ; $6025: $ff
	sub [hl]                                         ; $6026: $96
	ld l, e                                          ; $6027: $6b
	rla                                              ; $6028: $17
	dec e                                            ; $6029: $1d
	ld [hl], h                                       ; $602a: $74
	jr jr_04b_5fdd                                   ; $602b: $18 $b0

	ret nc                                           ; $602d: $d0

	or h                                             ; $602e: $b4
	sbc a                                            ; $602f: $9f
	sbc $8b                                          ; $6030: $de $8b
	add b                                            ; $6032: $80
	adc a                                            ; $6033: $8f
	rrca                                             ; $6034: $0f
	cpl                                              ; $6035: $2f
	dec bc                                           ; $6036: $0b
	rst $38                                          ; $6037: $ff
	jp hl                                            ; $6038: $e9


	call $4b4b                                       ; $6039: $cd $4b $4b
	cpl                                              ; $603c: $2f
	ld [$ff4b], sp                                   ; $603d: $08 $4b $ff
	inc sp                                           ; $6040: $33
	inc sp                                           ; $6041: $33
	ld sp, $f131                                     ; $6042: $31 $31 $f1
	rst FarCall                                          ; $6045: $f7
	ld sp, $074b                                     ; $6046: $31 $4b $07
	ld c, $d0                                        ; $6049: $0e $d0
	ld sp, hl                                        ; $604b: $f9
	ld sp, hl                                        ; $604c: $f9
	ret                                              ; $604d: $c9


	cp l                                             ; $604e: $bd
	add a                                            ; $604f: $87
	inc bc                                           ; $6050: $03
	inc bc                                           ; $6051: $03
	sbc [hl]                                         ; $6052: $9e
	ld c, $de                                        ; $6053: $0e $de
	ld b, $7d                                        ; $6055: $06 $7d
	rrca                                             ; $6057: $0f
	db $dd                                           ; $6058: $dd
	rst $38                                          ; $6059: $ff
	sbc h                                            ; $605a: $9c
	ld b, [hl]                                       ; $605b: $46
	ld b, h                                          ; $605c: $44
	add hl, hl                                       ; $605d: $29
	sbc $ff                                          ; $605e: $de $ff
	rst SubAFromDE                                          ; $6060: $df
	ld a, a                                          ; $6061: $7f
	sub h                                            ; $6062: $94
	rst $38                                          ; $6063: $ff
	jp nz, $ffc6                                     ; $6064: $c2 $c6 $ff

	rst $38                                          ; $6067: $ff
	db $e4                                           ; $6068: $e4
	db $ec                                           ; $6069: $ec
	pop hl                                           ; $606a: $e1
	xor l                                            ; $606b: $ad
	inc l                                            ; $606c: $2c
	push hl                                          ; $606d: $e5
	ld a, d                                          ; $606e: $7a
	xor $90                                          ; $606f: $ee $90
	di                                               ; $6071: $f3
	ldh a, [c]                                       ; $6072: $f2
	ld [hl], d                                       ; $6073: $72
	inc sp                                           ; $6074: $33
	ld [hl-], a                                      ; $6075: $32
	ldh [$63], a                                     ; $6076: $e0 $63
	ld d, b                                          ; $6078: $50
	ld h, b                                          ; $6079: $60
	ld c, h                                          ; $607a: $4c
	db $f4                                           ; $607b: $f4
	call c, $e35c                                    ; $607c: $dc $5c $e3
	ldh [$db], a                                     ; $607f: $e0 $db
	inc hl                                           ; $6081: $23
	ld a, [hl]                                       ; $6082: $7e
	ld [$1b85], a                                    ; $6083: $ea $85 $1b
	ccf                                              ; $6086: $3f
	dec e                                            ; $6087: $1d
	ld a, l                                          ; $6088: $7d
	dec [hl]                                         ; $6089: $35
	ld e, h                                          ; $608a: $5c
	rra                                              ; $608b: $1f
	rrca                                             ; $608c: $0f
	inc c                                            ; $608d: $0c
	ld [$0868], sp                                   ; $608e: $08 $68 $08
	ld [$fc2b], sp                                   ; $6091: $08 $2b $fc
	db $fc                                           ; $6094: $fc
	ld e, l                                          ; $6095: $5d
	ld e, l                                          ; $6096: $5d
	ld l, c                                          ; $6097: $69
	ld h, c                                          ; $6098: $61
	ld l, c                                          ; $6099: $69
	ld [hl], c                                       ; $609a: $71
	cp $fe                                           ; $609b: $fe $fe
	and $e2                                          ; $609d: $e6 $e2
	sbc $c6                                          ; $609f: $de $c6
	sub [hl]                                         ; $60a1: $96
	adc $78                                          ; $60a2: $ce $78
	ld l, b                                          ; $60a4: $68
	ld e, b                                          ; $60a5: $58
	ld [hl], b                                       ; $60a6: $70
	ld d, b                                          ; $60a7: $50
	ld [hl], b                                       ; $60a8: $70
	db $10                                           ; $60a9: $10
	sub b                                            ; $60aa: $90
	ld a, b                                          ; $60ab: $78
	ld b, d                                          ; $60ac: $42
	sbc $2f                                          ; $60ad: $de $2f
	rst SubAFromDE                                          ; $60af: $df
	ld l, a                                          ; $60b0: $6f
	add b                                            ; $60b1: $80
	xor c                                            ; $60b2: $a9
	ld d, l                                          ; $60b3: $55
	xor c                                            ; $60b4: $a9
	dec d                                            ; $60b5: $15
	xor c                                            ; $60b6: $a9
	dec d                                            ; $60b7: $15
	xor e                                            ; $60b8: $ab
	ld d, l                                          ; $60b9: $55
	ld d, [hl]                                       ; $60ba: $56
	xor d                                            ; $60bb: $aa
	ld d, [hl]                                       ; $60bc: $56
	ld [$ea56], a                                    ; $60bd: $ea $56 $ea
	ld d, h                                          ; $60c0: $54
	xor d                                            ; $60c1: $aa
	ld a, a                                          ; $60c2: $7f
	xor [hl]                                         ; $60c3: $ae
	ld d, a                                          ; $60c4: $57
	xor [hl]                                         ; $60c5: $ae
	ld e, c                                          ; $60c6: $59
	xor b                                            ; $60c7: $a8
	ld b, c                                          ; $60c8: $41
	ld [hl+], a                                      ; $60c9: $22
	add b                                            ; $60ca: $80
	ld d, c                                          ; $60cb: $51
	xor b                                            ; $60cc: $a8
	ld d, c                                          ; $60cd: $51
	and [hl]                                         ; $60ce: $a6
	ld d, a                                          ; $60cf: $57
	cp [hl]                                          ; $60d0: $be

jr_04b_60d1:
	add h                                            ; $60d1: $84
	db $dd                                           ; $60d2: $dd
	sub h                                            ; $60d3: $94
	and e                                            ; $60d4: $a3
	add a                                            ; $60d5: $87
	and e                                            ; $60d6: $a3
	inc b                                            ; $60d7: $04
	ld [hl+], a                                      ; $60d8: $22
	add $a2                                          ; $60d9: $c6 $a2
	db $eb                                           ; $60db: $eb
	rst SubAFromDE                                          ; $60dc: $df
	ei                                               ; $60dd: $fb
	call c, $dcfa                                    ; $60de: $dc $fa $dc
	cp b                                             ; $60e1: $b8
	call c, $d7ea                                    ; $60e2: $dc $ea $d7
	rst AddAOntoHL                                          ; $60e5: $ef
	ld e, a                                          ; $60e6: $5f
	rst AddAOntoHL                                          ; $60e7: $ef
	ld d, d                                          ; $60e8: $52
	rst AddAOntoHL                                          ; $60e9: $ef
	ld e, a                                          ; $60ea: $5f
	rst $38                                          ; $60eb: $ff
	cp $de                                           ; $60ec: $fe $de
	ldh a, [hDisp1_OBP1]                                     ; $60ee: $f0 $94
	rst $38                                          ; $60f0: $ff
	ldh a, [$f0]                                     ; $60f1: $f0 $f0
	ld a, a                                          ; $60f3: $7f
	ld a, [hl+]                                      ; $60f4: $2a
	sub l                                            ; $60f5: $95
	ld a, [hl+]                                      ; $60f6: $2a
	dec d                                            ; $60f7: $15
	rst $38                                          ; $60f8: $ff
	ld d, l                                          ; $60f9: $55
	xor d                                            ; $60fa: $aa
	reti                                             ; $60fb: $d9


	rst $38                                          ; $60fc: $ff
	sub a                                            ; $60fd: $97
	push af                                          ; $60fe: $f5
	xor b                                            ; $60ff: $a8
	ld e, b                                          ; $6100: $58
	xor b                                            ; $6101: $a8
	ld e, b                                          ; $6102: $58
	cp $58                                           ; $6103: $fe $58
	xor b                                            ; $6105: $a8
	reti                                             ; $6106: $d9


	rst $38                                          ; $6107: $ff
	ld [hl], c                                       ; $6108: $71
	and a                                            ; $6109: $a7
	sbc l                                            ; $610a: $9d
	xor d                                            ; $610b: $aa
	ld b, b                                          ; $610c: $40
	halt                                             ; $610d: $76
	ld b, l                                          ; $610e: $45

jr_04b_610f:
	ld l, a                                          ; $610f: $6f
	ldh a, [$98]                                     ; $6110: $f0 $98
	add b                                            ; $6112: $80
	ld b, b                                          ; $6113: $40
	ld h, b                                          ; $6114: $60
	jr nz, jr_04b_60d1                               ; $6115: $20 $ba

	jr jr_04b_6125                                   ; $6117: $18 $0c

	reti                                             ; $6119: $d9


	rst $38                                          ; $611a: $ff
	sub a                                            ; $611b: $97
	ld a, d                                          ; $611c: $7a
	inc e                                            ; $611d: $1c
	ld a, [de]                                       ; $611e: $1a
	inc e                                            ; $611f: $1c
	ld a, [de]                                       ; $6120: $1a
	xor a                                            ; $6121: $af
	rlca                                             ; $6122: $07
	inc bc                                           ; $6123: $03
	db $dd                                           ; $6124: $dd

jr_04b_6125:
	rst AddAOntoHL                                          ; $6125: $ef
	db $dd                                           ; $6126: $dd
	rst $38                                          ; $6127: $ff
	adc d                                            ; $6128: $8a
	cp a                                             ; $6129: $bf
	call $d596                                       ; $612a: $cd $96 $d5
	ld d, $d3                                        ; $612d: $16 $d3
	di                                               ; $612f: $f3
	rst $38                                          ; $6130: $ff
	ld e, a                                          ; $6131: $5f
	ld [hl], e                                       ; $6132: $73
	ld a, e                                          ; $6133: $7b
	ld a, e                                          ; $6134: $7b
	ei                                               ; $6135: $fb
	rst $38                                          ; $6136: $ff
	rst SubAFromDE                                          ; $6137: $df
	rst SubAFromDE                                          ; $6138: $df
	rst $38                                          ; $6139: $ff
	rrca                                             ; $613a: $0f
	xor a                                            ; $613b: $af
	ld d, a                                          ; $613c: $57
	xor a                                            ; $613d: $af
	sub $ff                                          ; $613e: $d6 $ff
	add h                                            ; $6140: $84
	and h                                            ; $6141: $a4
	call nc, $4494                                   ; $6142: $d4 $94 $44
	call nz, $d020                                   ; $6145: $c4 $20 $d0
	ld [hl], h                                       ; $6148: $74
	dec de                                           ; $6149: $1b
	dec hl                                           ; $614a: $2b
	dec bc                                           ; $614b: $0b
	cp e                                             ; $614c: $bb
	dec sp                                           ; $614d: $3b
	sbc a                                            ; $614e: $9f
	cpl                                              ; $614f: $2f
	adc e                                            ; $6150: $8b
	call z, $0ccd                                    ; $6151: $cc $cd $0c
	set 1, a                                         ; $6154: $cb $cf
	rst GetHLinHL                                          ; $6156: $cf
	ld c, a                                          ; $6157: $4f
	rst GetHLinHL                                          ; $6158: $cf
	inc sp                                           ; $6159: $33
	inc sp                                           ; $615a: $33

jr_04b_615b:
	di                                               ; $615b: $f3
	call c, $df31                                    ; $615c: $dc $31 $df
	ld sp, hl                                        ; $615f: $f9
	rst SubAFromDE                                          ; $6160: $df
	db $ed                                           ; $6161: $ed
	rst SubAFromDE                                          ; $6162: $df
	db $fd                                           ; $6163: $fd
	sbc l                                            ; $6164: $9d
	db $dd                                           ; $6165: $dd
	db $fd                                           ; $6166: $fd
	ld a, d                                          ; $6167: $7a
	push bc                                          ; $6168: $c5
	call c, $9402                                    ; $6169: $dc $02 $94
	ld b, c                                          ; $616c: $41
	jr nc, jr_04b_610f                               ; $616d: $30 $a0

	ld h, b                                          ; $616f: $60
	ld hl, $2069                                     ; $6170: $21 $69 $20
	jr z, jr_04b_615b                                ; $6173: $28 $e6

	add $47                                          ; $6175: $c6 $47
	db $dd                                           ; $6177: $dd
	add $9c                                          ; $6178: $c6 $9c
	sub $65                                          ; $617a: $d6 $65
	ld h, h                                          ; $617c: $64
	sbc $ec                                          ; $617d: $de $ec
	sbc e                                            ; $617f: $9b
	call z, Call_04b_446c                            ; $6180: $cc $6c $44
	ld [hl-], a                                      ; $6183: $32
	jp c, $df33                                      ; $6184: $da $33 $df

	ld d, h                                          ; $6187: $54
	sub a                                            ; $6188: $97
	ld [hl], l                                       ; $6189: $75
	ld d, l                                          ; $618a: $55
	ld a, l                                          ; $618b: $7d
	ld d, h                                          ; $618c: $54
	ld a, l                                          ; $618d: $7d
	ld e, l                                          ; $618e: $5d
	inc hl                                           ; $618f: $23
	inc hl                                           ; $6190: $23
	sbc $22                                          ; $6191: $de $22
	ld a, e                                          ; $6193: $7b
	db $fc                                           ; $6194: $fc
	sub a                                            ; $6195: $97
	halt                                             ; $6196: $76
	ld a, [hl-]                                      ; $6197: $3a
	halt                                             ; $6198: $76
	ld [hl], a                                       ; $6199: $77
	ld [hl], a                                       ; $619a: $77
	ld a, [hl]                                       ; $619b: $7e
	ld d, [hl]                                       ; $619c: $56
	ld a, a                                          ; $619d: $7f
	sbc $09                                          ; $619e: $de $09
	rst SubAFromDE                                          ; $61a0: $df
	ld [$0993], sp                                   ; $61a1: $08 $93 $09
	add hl, hl                                       ; $61a4: $29
	ld [$6931], sp                                   ; $61a5: $08 $31 $69
	add hl, sp                                       ; $61a8: $39
	ld [hl], c                                       ; $61a9: $71
	ld sp, $3b69                                     ; $61aa: $31 $69 $3b
	ld h, c                                          ; $61ad: $61
	adc $7a                                          ; $61ae: $ce $7a
	call nz, $ce93                                   ; $61b0: $c4 $93 $ce
	sub $c6                                          ; $61b3: $d6 $c6
	sbc $90                                          ; $61b5: $de $90
	sub b                                            ; $61b7: $90
	db $10                                           ; $61b8: $10
	sub b                                            ; $61b9: $90
	sub b                                            ; $61ba: $90
	nop                                              ; $61bb: $00
	sub b                                            ; $61bc: $90
	sub b                                            ; $61bd: $90
	call c, $846f                                    ; $61be: $dc $6f $84
	ld a, a                                          ; $61c1: $7f
	ld l, a                                          ; $61c2: $6f
	ld l, a                                          ; $61c3: $6f
	xor e                                            ; $61c4: $ab
	ld d, c                                          ; $61c5: $51
	and e                                            ; $61c6: $a3
	ld de, $0181                                     ; $61c7: $11 $81 $01
	add e                                            ; $61ca: $83
	dec b                                            ; $61cb: $05
	ld d, h                                          ; $61cc: $54
	xor [hl]                                         ; $61cd: $ae
	ld e, h                                          ; $61ce: $5c
	xor $7e                                          ; $61cf: $ee $7e
	cp $7c                                           ; $61d1: $fe $7c
	ld a, [$7f00]                                    ; $61d3: $fa $00 $7f
	rst $38                                          ; $61d6: $ff
	rst $38                                          ; $61d7: $ff
	ld a, [$ab47]                                    ; $61d8: $fa $47 $ab
	dec d                                            ; $61db: $15
	db $dd                                           ; $61dc: $dd
	rst $38                                          ; $61dd: $ff
	add e                                            ; $61de: $83
	db $fd                                           ; $61df: $fd
	ld hl, sp+$54                                    ; $61e0: $f8 $54
	ld [$2a46], a                                    ; $61e2: $ea $46 $2a
	add $a3                                          ; $61e5: $c6 $a3
	ld b, l                                          ; $61e7: $45
	jr nz, jr_04b_6239                               ; $61e8: $20 $4f

	daa                                              ; $61ea: $27
	cp b                                             ; $61eb: $b8
	call nc, $dcb8                                   ; $61ec: $d4 $b8 $dc
	cp d                                             ; $61ef: $ba
	rst SubAFromDE                                          ; $61f0: $df
	or b                                             ; $61f1: $b0
	ret c                                            ; $61f2: $d8

	push af                                          ; $61f3: $f5
	ld a, [$ffdd]                                    ; $61f4: $fa $dd $ff
	push de                                          ; $61f7: $d5
	adc d                                            ; $61f8: $8a
	dec d                                            ; $61f9: $15
	ld a, [bc]                                       ; $61fa: $0a
	ld h, d                                          ; $61fb: $62
	ldh a, [$79]                                     ; $61fc: $f0 $79
	db $eb                                           ; $61fe: $eb
	ld a, e                                          ; $61ff: $7b
	db $fc                                           ; $6200: $fc
	ld h, d                                          ; $6201: $62
	ret nz                                           ; $6202: $c0

	sbc b                                            ; $6203: $98
	ld d, h                                          ; $6204: $54
	xor h                                            ; $6205: $ac
	ld d, h                                          ; $6206: $54
	rst $38                                          ; $6207: $ff
	ld d, h                                          ; $6208: $54
	and d                                            ; $6209: $a2
	ld d, [hl]                                       ; $620a: $56
	ld h, e                                          ; $620b: $63
	ldh a, [rIE]                                     ; $620c: $f0 $ff
	sbc d                                            ; $620e: $9a
	ld b, b                                          ; $620f: $40
	xor d                                            ; $6210: $aa
	nop                                              ; $6211: $00
	add b                                            ; $6212: $80
	nop                                              ; $6213: $00
	ld l, l                                          ; $6214: $6d
	ld h, e                                          ; $6215: $63
	sbc $ff                                          ; $6216: $de $ff
	ld a, a                                          ; $6218: $7f
	add hl, hl                                       ; $6219: $29
	sbc l                                            ; $621a: $9d
	ld bc, $6daa                                     ; $621b: $01 $aa $6d
	add h                                            ; $621e: $84
	db $db                                           ; $621f: $db
	rst $38                                          ; $6220: $ff
	sub a                                            ; $6221: $97
	ld bc, $0500                                     ; $6222: $01 $00 $05
	xor d                                            ; $6225: $aa
	ld b, c                                          ; $6226: $41
	ld h, d                                          ; $6227: $62
	dec [hl]                                         ; $6228: $35
	ld a, [hl-]                                      ; $6229: $3a
	rst SubAFromHL                                          ; $622a: $d7
	rst $38                                          ; $622b: $ff
	ld a, l                                          ; $622c: $7d
	add b                                            ; $622d: $80
	ld [hl], a                                       ; $622e: $77
	or b                                             ; $622f: $b0
	ld a, [hl]                                       ; $6230: $7e
	rst JumpTable                                          ; $6231: $c7
	ret c                                            ; $6232: $d8

	rst $38                                          ; $6233: $ff
	ld a, [hl]                                       ; $6234: $7e
	cp a                                             ; $6235: $bf
	sbc [hl]                                         ; $6236: $9e
	xor e                                            ; $6237: $ab
	ld e, [hl]                                       ; $6238: $5e

jr_04b_6239:
	cp l                                             ; $6239: $bd
	sub [hl]                                         ; $623a: $96
	ld d, h                                          ; $623b: $54
	ld [hl], h                                       ; $623c: $74
	ld [hl], h                                       ; $623d: $74
	inc e                                            ; $623e: $1c
	inc d                                            ; $623f: $14
	ld d, h                                          ; $6240: $54
	call nc, $ab61                                   ; $6241: $d4 $61 $ab
	db $db                                           ; $6244: $db
	adc e                                            ; $6245: $8b
	sub e                                            ; $6246: $93
	sbc e                                            ; $6247: $9b
	rrca                                             ; $6248: $0f
	db $ec                                           ; $6249: $ec
	ld b, a                                          ; $624a: $47
	ld e, [hl]                                       ; $624b: $5e
	ld c, a                                          ; $624c: $4f
	ld e, [hl]                                       ; $624d: $5e
	db $d3                                           ; $624e: $d3
	jp nc, $33f1                                     ; $624f: $d2 $f1 $33

	add hl, sp                                       ; $6252: $39
	sbc $31                                          ; $6253: $de $31
	rst SubAFromDE                                          ; $6255: $df
	add hl, sp                                       ; $6256: $39
	rst SubAFromDE                                          ; $6257: $df
	ld sp, hl                                        ; $6258: $f9
	sbc c                                            ; $6259: $99
	db $dd                                           ; $625a: $dd
	call $e9cd                                       ; $625b: $cd $cd $e9
	rst SubAFromBC                                          ; $625e: $e7
	db $e4                                           ; $625f: $e4
	ld [hl], d                                       ; $6260: $72
	ret nz                                           ; $6261: $c0

	ld a, e                                          ; $6262: $7b
	db $fc                                           ; $6263: $fc
	sub a                                            ; $6264: $97
	jr nz, jr_04b_62c8                               ; $6265: $20 $61

	ld hl, $2161                                     ; $6267: $21 $61 $21
	ld c, e                                          ; $626a: $4b
	sub c                                            ; $626b: $91
	ld b, b                                          ; $626c: $40
	call c, $94c6                                    ; $626d: $dc $c6 $94
	and $66                                          ; $6270: $e6 $66
	and $64                                          ; $6272: $e6 $64
	ld l, h                                          ; $6274: $6c
	ld b, h                                          ; $6275: $44
	ld h, h                                          ; $6276: $64
	ld b, h                                          ; $6277: $44
	ld l, h                                          ; $6278: $6c
	sbc h                                            ; $6279: $9c
	add hl, bc                                       ; $627a: $09
	db $db                                           ; $627b: $db
	inc sp                                           ; $627c: $33
	rst SubAFromDE                                          ; $627d: $df
	ld [hl], e                                       ; $627e: $73
	sbc h                                            ; $627f: $9c
	ld a, h                                          ; $6280: $7c
	ld d, h                                          ; $6281: $54
	ld [hl], h                                       ; $6282: $74

jr_04b_6283:
	ld a, e                                          ; $6283: $7b
	cp $9d                                           ; $6284: $fe $9d
	ld d, h                                          ; $6286: $54
	ld c, [hl]                                       ; $6287: $4e
	db $db                                           ; $6288: $db
	inc hl                                           ; $6289: $23
	sub l                                            ; $628a: $95
	and e                                            ; $628b: $a3
	or c                                             ; $628c: $b1
	scf                                              ; $628d: $37
	ccf                                              ; $628e: $3f
	ld [hl], $3f                                     ; $628f: $36 $3f
	scf                                              ; $6291: $37
	cp a                                             ; $6292: $bf
	ld [hl], a                                       ; $6293: $77
	ld d, e                                          ; $6294: $53
	ld a, d                                          ; $6295: $7a
	jp $08de                                         ; $6296: $c3 $de $08


	sub d                                            ; $6299: $92
	adc b                                            ; $629a: $88
	xor h                                            ; $629b: $ac
	inc hl                                           ; $629c: $23
	ld [hl], c                                       ; $629d: $71
	inc hl                                           ; $629e: $23
	ld [hl], c                                       ; $629f: $71
	inc sp                                           ; $62a0: $33
	ld [hl], c                                       ; $62a1: $71
	ld d, e                                          ; $62a2: $53
	jr jr_04b_6283                                   ; $62a3: $18 $de

	adc $de                                          ; $62a5: $ce $de
	sbc $ce                                          ; $62a7: $de $ce
	sbc l                                            ; $62a9: $9d
	xor $e7                                          ; $62aa: $ee $e7
	sbc $90                                          ; $62ac: $de $90
	sbc d                                            ; $62ae: $9a
	ret nc                                           ; $62af: $d0

	sub b                                            ; $62b0: $90
	ret nc                                           ; $62b1: $d0

	or b                                             ; $62b2: $b0
	ret nc                                           ; $62b3: $d0

	reti                                             ; $62b4: $d9


	ld l, a                                          ; $62b5: $6f
	add b                                            ; $62b6: $80
	dec bc                                           ; $62b7: $0b
	ld d, l                                          ; $62b8: $55
	xor e                                            ; $62b9: $ab
	ld d, l                                          ; $62ba: $55
	xor c                                            ; $62bb: $a9
	ld d, c                                          ; $62bc: $51
	ld hl, $f401                                     ; $62bd: $21 $01 $f4
	xor d                                            ; $62c0: $aa
	ld d, h                                          ; $62c1: $54
	xor d                                            ; $62c2: $aa
	ld d, [hl]                                       ; $62c3: $56
	xor [hl]                                         ; $62c4: $ae
	sbc $fe                                          ; $62c5: $de $fe
	dec hl                                           ; $62c7: $2b

jr_04b_62c8:
	ld d, l                                          ; $62c8: $55
	ld a, [hl+]                                      ; $62c9: $2a
	ld d, l                                          ; $62ca: $55
	ld a, [hl+]                                      ; $62cb: $2a
	ld [hl], l                                       ; $62cc: $75
	jr jr_04b_62cf                                   ; $62cd: $18 $00

jr_04b_62cf:
	call nc, $d5aa                                   ; $62cf: $d4 $aa $d5
	xor d                                            ; $62d2: $aa
	push de                                          ; $62d3: $d5
	adc d                                            ; $62d4: $8a
	rst JumpTable                                          ; $62d5: $c7
	sub [hl]                                         ; $62d6: $96
	rst $38                                          ; $62d7: $ff
	rst SubAFromHL                                          ; $62d8: $d7
	cp a                                             ; $62d9: $bf
	rst SubAFromHL                                          ; $62da: $d7
	cp a                                             ; $62db: $bf
	sub $af                                          ; $62dc: $d6 $af
	rst SubAFromDE                                          ; $62de: $df
	cp l                                             ; $62df: $bd
	db $dd                                           ; $62e0: $dd
	ld hl, sp-$6d                                    ; $62e1: $f8 $93
	ld sp, hl                                        ; $62e3: $f9
	ldh a, [$f0]                                     ; $62e4: $f0 $f0
	ldh [c], a                                       ; $62e6: $e2
	dec d                                            ; $62e7: $15
	ld a, [bc]                                       ; $62e8: $0a
	ld d, l                                          ; $62e9: $55
	adc d                                            ; $62ea: $8a
	ld e, a                                          ; $62eb: $5f
	xor d                                            ; $62ec: $aa
	dec b                                            ; $62ed: $05
	ld a, [hl+]                                      ; $62ee: $2a
	ld e, d                                          ; $62ef: $5a
	ret nz                                           ; $62f0: $c0

	ld a, d                                          ; $62f1: $7a
	call nc, $717d                                   ; $62f2: $d4 $7d $71
	reti                                             ; $62f5: $d9


	rst $38                                          ; $62f6: $ff
	sub a                                            ; $62f7: $97
	ld d, a                                          ; $62f8: $57
	xor d                                            ; $62f9: $aa
	ld d, a                                          ; $62fa: $57
	xor e                                            ; $62fb: $ab
	rst $38                                          ; $62fc: $ff
	xor e                                            ; $62fd: $ab
	push de                                          ; $62fe: $d5
	db $eb                                           ; $62ff: $eb
	ld e, [hl]                                       ; $6300: $5e
	ret nz                                           ; $6301: $c0

	ld a, d                                          ; $6302: $7a
	call nc, $807d                                   ; $6303: $d4 $7d $80
	sbc [hl]                                         ; $6306: $9e
	and b                                            ; $6307: $a0

Call_04b_6308:
	ld c, a                                          ; $6308: $4f
	ldh a, [$5e]                                     ; $6309: $f0 $5e
	ret nz                                           ; $630b: $c0

	sbc d                                            ; $630c: $9a
	ld e, l                                          ; $630d: $5d
	ld c, $57                                        ; $630e: $0e $57
	inc bc                                           ; $6310: $03
	rst $38                                          ; $6311: $ff
	ld b, a                                          ; $6312: $47
	or b                                             ; $6313: $b0
	ld a, a                                          ; $6314: $7f
	db $fc                                           ; $6315: $fc
	sbc [hl]                                         ; $6316: $9e
	ld [$ffd9], a                                    ; $6317: $ea $d9 $ff
	sub a                                            ; $631a: $97
	ld e, a                                          ; $631b: $5f
	xor a                                            ; $631c: $af
	ld e, a                                          ; $631d: $5f
	xor a                                            ; $631e: $af
	rst $38                                          ; $631f: $ff
	cp a                                             ; $6320: $bf
	ld e, a                                          ; $6321: $5f
	cp a                                             ; $6322: $bf
	reti                                             ; $6323: $d9


	rst $38                                          ; $6324: $ff
	ld a, [hl]                                       ; $6325: $7e
	jp nz, $e09e                                     ; $6326: $c2 $9e $e0

	ld a, e                                          ; $6329: $7b
	db $db                                           ; $632a: $db
	sbc [hl]                                         ; $632b: $9e
	rst $38                                          ; $632c: $ff
	ld a, b                                          ; $632d: $78
	ld b, c                                          ; $632e: $41
	sbc [hl]                                         ; $632f: $9e
	sbc a                                            ; $6330: $9f
	ld [hl], a                                       ; $6331: $77
	cp e                                             ; $6332: $bb
	sbc e                                            ; $6333: $9b
	db $fc                                           ; $6334: $fc
	nop                                              ; $6335: $00
	sub $81                                          ; $6336: $d6 $81
	ld [hl], a                                       ; $6338: $77
	ldh a, [$9b]                                     ; $6339: $f0 $9b
	xor l                                            ; $633b: $ad
	rst $38                                          ; $633c: $ff
	add hl, sp                                       ; $633d: $39
	ld a, a                                          ; $633e: $7f
	ld [hl], a                                       ; $633f: $77
	ldh a, [$9c]                                     ; $6340: $f0 $9c
	ld [hl], e                                       ; $6342: $73
	db $db                                           ; $6343: $db
	db $fd                                           ; $6344: $fd
	ld a, e                                          ; $6345: $7b
	ld a, [$f07f]                                    ; $6346: $fa $7f $f0
	sbc h                                            ; $6349: $9c
	or a                                             ; $634a: $b7
	ld h, $02                                        ; $634b: $26 $02
	ld a, e                                          ; $634d: $7b
	sub l                                            ; $634e: $95
	rst SubAFromDE                                          ; $634f: $df
	rst $38                                          ; $6350: $ff
	sbc e                                            ; $6351: $9b
	rst GetHLinHL                                          ; $6352: $cf
	sub c                                            ; $6353: $91
	ld l, c                                          ; $6354: $69
	sub b                                            ; $6355: $90
	ld [hl], a                                       ; $6356: $77
	ldh a, [$9b]                                     ; $6357: $f0 $9b
	rst $38                                          ; $6359: $ff
	ld l, [hl]                                       ; $635a: $6e
	add $ef                                          ; $635b: $c6 $ef
	ld [hl], e                                       ; $635d: $73
	adc e                                            ; $635e: $8b
	sbc h                                            ; $635f: $9c
	add h                                            ; $6360: $84
	db $ec                                           ; $6361: $ec
	adc b                                            ; $6362: $88
	ld [hl], a                                       ; $6363: $77
	ldh a, [$9b]                                     ; $6364: $f0 $9b
	cp b                                             ; $6366: $b8
	ld a, e                                          ; $6367: $7b
	inc sp                                           ; $6368: $33
	ld [hl], a                                       ; $6369: $77
	ld [hl], a                                       ; $636a: $77
	ldh a, [$9b]                                     ; $636b: $f0 $9b
	add $e4                                          ; $636d: $c6 $e4
	ld e, h                                          ; $636f: $5c
	cp h                                             ; $6370: $bc
	ld [hl], a                                       ; $6371: $77
	ldh a, [$9b]                                     ; $6372: $f0 $9b
	ld a, [$233b]                                    ; $6374: $fa $3b $23
	ld h, e                                          ; $6377: $63
	ld [hl], a                                       ; $6378: $77

jr_04b_6379:
	ldh a, [$9b]                                     ; $6379: $f0 $9b
	ccf                                              ; $637b: $3f
	di                                               ; $637c: $f3

Call_04b_637d:
	inc h                                            ; $637d: $24
	ret nz                                           ; $637e: $c0

	ld [hl], a                                       ; $637f: $77
	ldh a, [$9b]                                     ; $6380: $f0 $9b
	xor d                                            ; $6382: $aa
	inc c                                            ; $6383: $0c
	dec de                                           ; $6384: $1b
	ccf                                              ; $6385: $3f
	ld [hl], e                                       ; $6386: $73
	ret nc                                           ; $6387: $d0

	rst SubAFromDE                                          ; $6388: $df
	ld b, d                                          ; $6389: $42
	sbc [hl]                                         ; $638a: $9e
	ld b, h                                          ; $638b: $44
	ld [hl], a                                       ; $638c: $77
	ldh a, [$9e]                                     ; $638d: $f0 $9e
	adc h                                            ; $638f: $8c
	ld [hl], e                                       ; $6390: $73
	ld b, l                                          ; $6391: $45
	ld a, e                                          ; $6392: $7b
	sub b                                            ; $6393: $90
	sub d                                            ; $6394: $92
	and b                                            ; $6395: $a0
	ret nc                                           ; $6396: $d0

	jr nz, jr_04b_6379                               ; $6397: $20 $e0

	ret nz                                           ; $6399: $c0

	ld d, b                                          ; $639a: $50
	ldh a, [rAUD1SWEEP]                              ; $639b: $f0 $10
	ld a, a                                          ; $639d: $7f
	ld l, a                                          ; $639e: $6f
	rst $38                                          ; $639f: $ff
	rra                                              ; $63a0: $1f
	ccf                                              ; $63a1: $3f
	ld a, e                                          ; $63a2: $7b
	and b                                            ; $63a3: $a0
	reti                                             ; $63a4: $d9


	ld bc, $fed9                                     ; $63a5: $01 $d9 $fe
	pop de                                           ; $63a8: $d1
	rst $38                                          ; $63a9: $ff
	sub a                                            ; $63aa: $97
	jp nz, $84c4                                     ; $63ab: $c2 $c4 $84

	ld c, b                                          ; $63ae: $48
	adc b                                            ; $63af: $88
	ld d, b                                          ; $63b0: $50
	and b                                            ; $63b1: $a0
	db $10                                           ; $63b2: $10
	ld h, e                                          ; $63b3: $63
	jr nz, @+$7c                                     ; $63b4: $20 $7a

	and c                                            ; $63b6: $a1
	ld [hl], a                                       ; $63b7: $77
	cp $61                                           ; $63b8: $fe $61
	jp nc, $fe7b                                     ; $63ba: $d2 $7b $fe

	ld [hl], a                                       ; $63bd: $77
	ld a, [$4060]                                    ; $63be: $fa $60 $40
	sbc l                                            ; $63c1: $9d
	ei                                               ; $63c2: $fb
	db $fd                                           ; $63c3: $fd
	call nc, $9dff                                   ; $63c4: $d4 $ff $9d
	ld d, b                                          ; $63c7: $50
	xor b                                            ; $63c8: $a8
	ld a, d                                          ; $63c9: $7a
	ld a, b                                          ; $63ca: $78
	ld a, a                                          ; $63cb: $7f
	cp $62                                           ; $63cc: $fe $62
	ldh a, [$7d]                                     ; $63ce: $f0 $7d
	add d                                            ; $63d0: $82
	halt                                             ; $63d1: $76
	sbc $5d                                          ; $63d2: $de $5d
	ld d, b                                          ; $63d4: $50
	ld l, a                                          ; $63d5: $6f
	ldh a, [c]                                       ; $63d6: $f2
	ld e, [hl]                                       ; $63d7: $5e
	ret nc                                           ; $63d8: $d0

	sub a                                            ; $63d9: $97
	ld [hl], l                                       ; $63da: $75
	cp d                                             ; $63db: $ba
	ld e, l                                          ; $63dc: $5d
	xor [hl]                                         ; $63dd: $ae
	ld d, a                                          ; $63de: $57
	xor e                                            ; $63df: $ab
	ld d, l                                          ; $63e0: $55
	xor e                                            ; $63e1: $ab
	ld h, d                                          ; $63e2: $62
	ret nz                                           ; $63e3: $c0

jr_04b_63e4:
	sbc [hl]                                         ; $63e4: $9e
	cp a                                             ; $63e5: $bf
	ld l, a                                          ; $63e6: $6f
	sbc [hl]                                         ; $63e7: $9e
	reti                                             ; $63e8: $d9


	rst $38                                          ; $63e9: $ff
	sub e                                            ; $63ea: $93
	sbc e                                            ; $63eb: $9b
	ei                                               ; $63ec: $fb
	cp h                                             ; $63ed: $bc
	ld sp, $71c5                                     ; $63ee: $31 $c5 $71
	rst FarCall                                          ; $63f1: $f7
	ld [hl], d                                       ; $63f2: $72
	db $fc                                           ; $63f3: $fc
	db $fc                                           ; $63f4: $fc
	call z, $ddcc                                    ; $63f5: $cc $cc $dd
	adc h                                            ; $63f8: $8c
	ld a, l                                          ; $63f9: $7d
	db $ed                                           ; $63fa: $ed
	sbc c                                            ; $63fb: $99
	ld b, d                                          ; $63fc: $42
	call z, Call_04b_42ee                            ; $63fd: $cc $ee $42
	db $e4                                           ; $6400: $e4
	ld b, d                                          ; $6401: $42
	call c, $8f31                                    ; $6402: $dc $31 $8f
	or c                                             ; $6405: $b1
	ld sp, $7e31                                     ; $6406: $31 $31 $7e
	cp h                                             ; $6409: $bc
	call $f4c1                                       ; $640a: $cd $c1 $f4
	ldh a, [hDisp0_SCX]                                     ; $640d: $f0 $84

jr_04b_640f:
	ret nz                                           ; $640f: $c0

	add a                                            ; $6410: $87
	add $86                                          ; $6411: $c6 $86
	add [hl]                                         ; $6413: $86
	add a                                            ; $6414: $87
	sbc $86                                          ; $6415: $de $86
	add a                                            ; $6417: $87
	sub [hl]                                         ; $6418: $96
	nop                                              ; $6419: $00
	inc b                                            ; $641a: $04
	ld h, l                                          ; $641b: $65
	ld h, a                                          ; $641c: $67
	ld h, $64                                        ; $641d: $26 $64
	and c                                            ; $641f: $a1
	ld a, c                                          ; $6420: $79
	jr jr_04b_643b                                   ; $6421: $18 $18

	sbc d                                            ; $6423: $9a
	sbc b                                            ; $6424: $98
	jr @-$66                                         ; $6425: $18 $98

	jr jr_04b_63e4                                   ; $6427: $18 $bb

	ld l, c                                          ; $6429: $69
	jr jr_04b_642c                                   ; $642a: $18 $00

jr_04b_642c:
	add hl, bc                                       ; $642c: $09
	add hl, sp                                       ; $642d: $39
	ld c, c                                          ; $642e: $49
	jr c, jr_04b_640f                                ; $642f: $38 $de

	add $9e                                          ; $6431: $c6 $9e
	or $dd                                           ; $6433: $f6 $dd
	add $87                                          ; $6435: $c6 $87
	push de                                          ; $6437: $d5
	rst $38                                          ; $6438: $ff
	ld e, d                                          ; $6439: $5a
	db $ec                                           ; $643a: $ec

jr_04b_643b:
	ret nc                                           ; $643b: $d0

	ld l, h                                          ; $643c: $6c
	ldh [$cc], a                                     ; $643d: $e0 $cc
	ccf                                              ; $643f: $3f
	ccf                                              ; $6440: $3f
	scf                                              ; $6441: $37
	inc sp                                           ; $6442: $33
	inc sp                                           ; $6443: $33

jr_04b_6444:
	or e                                             ; $6444: $b3
	ccf                                              ; $6445: $3f
	inc sp                                           ; $6446: $33
	ld [hl], l                                       ; $6447: $75
	rst $38                                          ; $6448: $ff
	cp l                                             ; $6449: $bd
	xor $60                                          ; $644a: $ee $60
	rst GetHLinHL                                          ; $644c: $cf
	ld b, d                                          ; $644d: $42
	add $7a                                          ; $644e: $c6 $7a
	ld [hl], l                                       ; $6450: $75
	sub d                                            ; $6451: $92
	ld sp, $313f                                     ; $6452: $31 $3f $31
	cp l                                             ; $6455: $bd
	add hl, sp                                       ; $6456: $39
	ld c, b                                          ; $6457: $48
	ei                                               ; $6458: $fb
	adc a                                            ; $6459: $8f
	ld d, a                                          ; $645a: $57
	rla                                              ; $645b: $17
	rla                                              ; $645c: $17
	rst FarCall                                          ; $645d: $f7
	dec hl                                           ; $645e: $2b
	sbc $fc                                          ; $645f: $de $fc
	sbc c                                            ; $6461: $99
	adc h                                            ; $6462: $8c
	db $ec                                           ; $6463: $ec
	db $ec                                           ; $6464: $ec
	adc h                                            ; $6465: $8c
	call c, $da10                                    ; $6466: $dc $10 $da
	jr nc, jr_04b_6444                               ; $6469: $30 $d9

	rst GetHLinHL                                          ; $646b: $cf
	ld b, $c0                                        ; $646c: $06 $c0
	sub a                                            ; $646e: $97
	and b                                            ; $646f: $a0
	ld b, b                                          ; $6470: $40
	ldh [$c0], a                                     ; $6471: $e0 $c0
	add b                                            ; $6473: $80
	ret nz                                           ; $6474: $c0

	add b                                            ; $6475: $80
	ld b, b                                          ; $6476: $40
	ld e, [hl]                                       ; $6477: $5e
	ret nz                                           ; $6478: $c0

	sbc [hl]                                         ; $6479: $9e
	ld e, a                                          ; $647a: $5f
	ld a, e                                          ; $647b: $7b
	ld [hl+], a                                      ; $647c: $22
	ld e, a                                          ; $647d: $5f
	jr nz, jr_04b_64d7                               ; $647e: $20 $57

	inc h                                            ; $6480: $24
	call $9eff                                       ; $6481: $cd $ff $9e
	push af                                          ; $6484: $f5
	ld h, c                                          ; $6485: $61
	halt                                             ; $6486: $76
	db $db                                           ; $6487: $db
	rst $38                                          ; $6488: $ff
	sbc [hl]                                         ; $6489: $9e
	ld [hl], a                                       ; $648a: $77
	jp nc, $9dff                                     ; $648b: $d2 $ff $9d

	db $fd                                           ; $648e: $fd
	cp $7b                                           ; $648f: $fe $7b
	cp $9c                                           ; $6491: $fe $9c
	ld a, [$fafd]                                    ; $6493: $fa $fd $fa
	ld h, e                                          ; $6496: $63
	and b                                            ; $6497: $a0
	ld [hl], a                                       ; $6498: $77
	and d                                            ; $6499: $a2
	ld e, d                                          ; $649a: $5a
	and b                                            ; $649b: $a0
	pop de                                           ; $649c: $d1
	rst $38                                          ; $649d: $ff
	dec l                                            ; $649e: $2d
	nop                                              ; $649f: $00
	db $dd                                           ; $64a0: $dd
	inc sp                                           ; $64a1: $33
	sbc l                                            ; $64a2: $9d
	ld [hl], $37                                     ; $64a3: $36 $37
	db $dd                                           ; $64a5: $dd
	ld b, h                                          ; $64a6: $44
	ld [hl], e                                       ; $64a7: $73
	or $9e                                           ; $64a8: $f6 $9e
	ld [hl], $5f                                     ; $64aa: $36 $5f
	or $9e                                           ; $64ac: $f6 $9e
	ld h, h                                          ; $64ae: $64
	inc de                                           ; $64af: $13
	or $9c                                           ; $64b0: $f6 $9c
	ld h, l                                          ; $64b2: $65
	ld d, l                                          ; $64b3: $55
	ld d, l                                          ; $64b4: $55
	call c, $9c33                                    ; $64b5: $dc $33 $9c
	ld [hl], $66                                     ; $64b8: $36 $66
	ld [hl], l                                       ; $64ba: $75
	sbc $55                                          ; $64bb: $de $55
	ld l, a                                          ; $64bd: $6f
	or $dd                                           ; $64be: $f6 $dd
	ld d, l                                          ; $64c0: $55
	ld [hl], e                                       ; $64c1: $73
	or $9e                                           ; $64c2: $f6 $9e
	ld h, a                                          ; $64c4: $67
	ld h, e                                          ; $64c5: $63
	or $dc                                           ; $64c6: $f6 $dc
	ld d, l                                          ; $64c8: $55
	ld e, a                                          ; $64c9: $5f
	or $a7                                           ; $64ca: $f6 $a7
	adc b                                            ; $64cc: $88
	reti                                             ; $64cd: $d9


	rst $38                                          ; $64ce: $ff
	ld sp, hl                                        ; $64cf: $f9
	inc bc                                           ; $64d0: $03
	ldh a, [$03]                                     ; $64d1: $f0 $03
	ldh a, [$8d]                                     ; $64d3: $f0 $8d
	rst $38                                          ; $64d5: $ff
	ei                                               ; $64d6: $fb

jr_04b_64d7:
	rst $38                                          ; $64d7: $ff
	rst SubAFromDE                                          ; $64d8: $df
	cp a                                             ; $64d9: $bf
	db $fd                                           ; $64da: $fd
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	ld bc, $0f07                                     ; $64dd: $01 $07 $0f
	ccf                                              ; $64e0: $3f
	ld a, a                                          ; $64e1: $7f
	ld a, [hl]                                       ; $64e2: $7e
	rst SubAFromBC                                          ; $64e3: $e7
	ccf                                              ; $64e4: $3f
	rst $38                                          ; $64e5: $ff
	cp $de                                           ; $64e6: $fe $de
	rst $38                                          ; $64e8: $ff
	sbc l                                            ; $64e9: $9d
	rst FarCall                                          ; $64ea: $f7
	rra                                              ; $64eb: $1f
	db $db                                           ; $64ec: $db
	rst $38                                          ; $64ed: $ff
	sbc h                                            ; $64ee: $9c
	rrca                                             ; $64ef: $0f
	ei                                               ; $64f0: $fb
	cp a                                             ; $64f1: $bf
	sbc $ff                                          ; $64f2: $de $ff
	sbc d                                            ; $64f4: $9a
	cp a                                             ; $64f5: $bf
	rst AddAOntoHL                                          ; $64f6: $ef
	rst $38                                          ; $64f7: $ff
	db $fc                                           ; $64f8: $fc
	ret nz                                           ; $64f9: $c0

	cp $9c                                           ; $64fa: $fe $9c
	ret nz                                           ; $64fc: $c0

	ldh a, [$f8]                                     ; $64fd: $f0 $f8
	inc sp                                           ; $64ff: $33
	or b                                             ; $6500: $b0
	ld a, a                                          ; $6501: $7f
	call z, $f05f                                    ; $6502: $cc $5f $f0
	ld [hl], a                                       ; $6505: $77
	jp nz, $ed77                                     ; $6506: $c2 $77 $ed

	sbc [hl]                                         ; $6509: $9e
	ld bc, $8ffb                                     ; $650a: $01 $fb $8f
	rst FarCall                                          ; $650d: $f7
	cp $df                                           ; $650e: $fe $df
	rst $38                                          ; $6510: $ff
	ld sp, hl                                        ; $6511: $f9
	db $fd                                           ; $6512: $fd
	ei                                               ; $6513: $fb
	rst FarCall                                          ; $6514: $f7
	ld hl, sp-$01                                    ; $6515: $f8 $ff
	ccf                                              ; $6517: $3f
	rlca                                             ; $6518: $07
	inc bc                                           ; $6519: $03
	ld bc, $0301                                     ; $651a: $01 $01 $03
	sbc $ff                                          ; $651d: $de $ff
	sbc e                                            ; $651f: $9b
	db $e3                                           ; $6520: $e3
	push af                                          ; $6521: $f5
	ld a, [$7bfd]                                    ; $6522: $fa $fd $7b
	ret nc                                           ; $6525: $d0

	sbc e                                            ; $6526: $9b
	add b                                            ; $6527: $80
	ldh a, [$f8]                                     ; $6528: $f0 $f8
	db $fc                                           ; $652a: $fc
	ld l, e                                          ; $652b: $6b
	db $d3                                           ; $652c: $d3
	inc bc                                           ; $652d: $03
	ld d, b                                          ; $652e: $50
	inc de                                           ; $652f: $13
	ldh a, [$9c]                                     ; $6530: $f0 $9c
	cp $f5                                           ; $6532: $fe $f5
	rst AddAOntoHL                                          ; $6534: $ef
	ld d, a                                          ; $6535: $57
	add b                                            ; $6536: $80
	sbc h                                            ; $6537: $9c
	push de                                          ; $6538: $d5
	xor d                                            ; $6539: $aa
	ld e, a                                          ; $653a: $5f
	ld a, e                                          ; $653b: $7b
	db $ec                                           ; $653c: $ec
	ld sp, hl                                        ; $653d: $f9
	sub a                                            ; $653e: $97
	push af                                          ; $653f: $f5
	xor d                                            ; $6540: $aa
	ld d, l                                          ; $6541: $55
	xor a                                            ; $6542: $af
	rst $38                                          ; $6543: $ff
	rst $38                                          ; $6544: $ff
	push de                                          ; $6545: $d5
	xor d                                            ; $6546: $aa
	ld e, e                                          ; $6547: $5b
	ret nc                                           ; $6548: $d0

	sbc h                                            ; $6549: $9c
	cp a                                             ; $654a: $bf
	rst SubAFromHL                                          ; $654b: $d7
	ld a, [$d073]                                    ; $654c: $fa $73 $d0
	sbc h                                            ; $654f: $9c
	ret nz                                           ; $6550: $c0

	ld a, h                                          ; $6551: $7c
	rlca                                             ; $6552: $07
	ld h, a                                          ; $6553: $67
	or b                                             ; $6554: $b0
	sbc [hl]                                         ; $6555: $9e
	ld d, a                                          ; $6556: $57
	ld a, e                                          ; $6557: $7b
	nop                                              ; $6558: $00
	cp $9c                                           ; $6559: $fe $9c
	add b                                            ; $655b: $80
	ld hl, sp+$06                                    ; $655c: $f8 $06
	inc bc                                           ; $655e: $03
	sub b                                            ; $655f: $90
	ld a, a                                          ; $6560: $7f
	ld c, l                                          ; $6561: $4d
	sbc $fd                                          ; $6562: $de $fd
	ld a, e                                          ; $6564: $7b
	ldh a, [$7b]                                     ; $6565: $f0 $7b
	inc [hl]                                         ; $6567: $34
	db $dd                                           ; $6568: $dd
	inc bc                                           ; $6569: $03
	db $dd                                           ; $656a: $dd
	rst $38                                          ; $656b: $ff
	db $dd                                           ; $656c: $dd
	cp a                                             ; $656d: $bf
	sbc l                                            ; $656e: $9d
	ldh a, [$e0]                                     ; $656f: $f0 $e0
	db $db                                           ; $6571: $db
	ret nz                                           ; $6572: $c0

	ld h, a                                          ; $6573: $67
	nop                                              ; $6574: $00
	ld a, a                                          ; $6575: $7f
	inc d                                            ; $6576: $14
	ei                                               ; $6577: $fb
	ld a, a                                          ; $6578: $7f
	push de                                          ; $6579: $d5
	ld a, d                                          ; $657a: $7a
	jp $d07b                                         ; $657b: $c3 $7b $d0


	ld a, a                                          ; $657e: $7f
	jp hl                                            ; $657f: $e9


	sbc e                                            ; $6580: $9b
	ld a, a                                          ; $6581: $7f
	rra                                              ; $6582: $1f
	rlca                                             ; $6583: $07
	inc bc                                           ; $6584: $03
	ld a, e                                          ; $6585: $7b
	ret nz                                           ; $6586: $c0

	sub e                                            ; $6587: $93
	ld a, d                                          ; $6588: $7a
	ldh a, [$e0]                                     ; $6589: $f0 $e0
	db $fd                                           ; $658b: $fd
	cp $7d                                           ; $658c: $fe $7d
	ld [$8000], a                                    ; $658e: $ea $00 $80
	call nz, $fbeb                                   ; $6591: $c4 $eb $fb
	db $dd                                           ; $6594: $dd
	rst $38                                          ; $6595: $ff
	sub l                                            ; $6596: $95
	xor a                                            ; $6597: $af
	ld d, a                                          ; $6598: $57
	nop                                              ; $6599: $00
	ld a, [$5bed]                                    ; $659a: $fa $ed $5b
	cp a                                             ; $659d: $bf
	nop                                              ; $659e: $00
	ld d, b                                          ; $659f: $50
	xor b                                            ; $65a0: $a8
	jp c, $99ff                                      ; $65a1: $da $ff $99

	cp $fb                                           ; $65a4: $fe $fb
	ld e, a                                          ; $65a6: $5f
	ld a, a                                          ; $65a7: $7f
	db $fd                                           ; $65a8: $fd
	rst FarCall                                          ; $65a9: $f7
	halt                                             ; $65aa: $76
	ld [hl], b                                       ; $65ab: $70
	ld a, [hl]                                       ; $65ac: $7e
	add l                                            ; $65ad: $85
	sub a                                            ; $65ae: $97
	cp $f8                                           ; $65af: $fe $f8
	rst SubAFromHL                                          ; $65b1: $d7
	rst SubAFromDE                                          ; $65b2: $df
	rst $38                                          ; $65b3: $ff
	db $fd                                           ; $65b4: $fd
	rst AddAOntoHL                                          ; $65b5: $ef
	ld a, a                                          ; $65b6: $7f
	ld a, d                                          ; $65b7: $7a
	ld [hl], a                                       ; $65b8: $77
	ld a, d                                          ; $65b9: $7a
	ld l, b                                          ; $65ba: $68
	sbc l                                            ; $65bb: $9d
	ldh a, [$80]                                     ; $65bc: $f0 $80
	ld a, e                                          ; $65be: $7b
	ret nz                                           ; $65bf: $c0

	sbc l                                            ; $65c0: $9d
	rst SubAFromHL                                          ; $65c1: $d7
	ld a, e                                          ; $65c2: $7b
	ld a, e                                          ; $65c3: $7b
	or d                                             ; $65c4: $b2
	db $dd                                           ; $65c5: $dd
	rst $38                                          ; $65c6: $ff
	sbc [hl]                                         ; $65c7: $9e
	add a                                            ; $65c8: $87
	ld a, d                                          ; $65c9: $7a
	or c                                             ; $65ca: $b1
	rst SubAFromDE                                          ; $65cb: $df
	ld bc, $5f8f                                     ; $65cc: $01 $8f $5f
	xor a                                            ; $65cf: $af
	rst AddAOntoHL                                          ; $65d0: $ef
	rst FarCall                                          ; $65d1: $f7
	db $d3                                           ; $65d2: $d3
	ei                                               ; $65d3: $fb
	db $fd                                           ; $65d4: $fd
	db $dd                                           ; $65d5: $dd
	and b                                            ; $65d6: $a0
	ldh a, [$d0]                                     ; $65d7: $f0 $d0
	ret c                                            ; $65d9: $d8

	db $ec                                           ; $65da: $ec
	db $ec                                           ; $65db: $ec
	and $e2                                          ; $65dc: $e6 $e2
	cpl                                              ; $65de: $2f
	ld b, b                                          ; $65df: $40
	ld a, [hl]                                       ; $65e0: $7e
	ld a, [$d056]                                    ; $65e1: $fa $56 $d0
	ld a, [hl]                                       ; $65e4: $7e
	ldh a, [c]                                       ; $65e5: $f2
	sbc [hl]                                         ; $65e6: $9e
	ld d, b                                          ; $65e7: $50
	ld a, e                                          ; $65e8: $7b
	or [hl]                                          ; $65e9: $b6
	ld l, e                                          ; $65ea: $6b
	ldh a, [$9b]                                     ; $65eb: $f0 $9b
	ld a, [$aa55]                                    ; $65ed: $fa $55 $aa
	ld d, h                                          ; $65f0: $54
	or $7f                                           ; $65f1: $f6 $7f
	db $e4                                           ; $65f3: $e4
	sbc [hl]                                         ; $65f4: $9e
	ld d, h                                          ; $65f5: $54
	ld h, e                                          ; $65f6: $63
	db $e4                                           ; $65f7: $e4
	db $fd                                           ; $65f8: $fd
	sbc [hl]                                         ; $65f9: $9e
	ld d, l                                          ; $65fa: $55
	ld d, e                                          ; $65fb: $53
	ldh a, [c]                                       ; $65fc: $f2
	ld a, $f0                                        ; $65fd: $3e $f0
	ld h, [hl]                                       ; $65ff: $66
	ld a, $6b                                        ; $6600: $3e $6b
	ld de, $009c                                     ; $6602: $11 $9c $00
	sbc a                                            ; $6605: $9f
	db $eb                                           ; $6606: $eb
	ld l, a                                          ; $6607: $6f
	ld h, c                                          ; $6608: $61
	sbc l                                            ; $6609: $9d
	ldh [$3c], a                                     ; $660a: $e0 $3c
	ld a, e                                          ; $660c: $7b
	inc de                                           ; $660d: $13
	ld [hl], e                                       ; $660e: $73
	ret nc                                           ; $660f: $d0

	sbc l                                            ; $6610: $9d
	ld a, a                                          ; $6611: $7f
	rst GetHLinHL                                          ; $6612: $cf
	ld a, d                                          ; $6613: $7a
	sub c                                            ; $6614: $91
	halt                                             ; $6615: $76
	db $10                                           ; $6616: $10
	sbc l                                            ; $6617: $9d
	ld [hl], b                                       ; $6618: $70
	rrca                                             ; $6619: $0f
	ld h, a                                          ; $661a: $67
	ret nz                                           ; $661b: $c0

	sbc h                                            ; $661c: $9c
	ld e, a                                          ; $661d: $5f
	db $eb                                           ; $661e: $eb
	cp $7b                                           ; $661f: $fe $7b
	ld b, e                                          ; $6621: $43
	rst $38                                          ; $6622: $ff
	adc h                                            ; $6623: $8c
	ldh [rAUD3LEVEL], a                              ; $6624: $e0 $1c
	inc bc                                           ; $6626: $03
	rst SubAFromDE                                          ; $6627: $df
	rst AddAOntoHL                                          ; $6628: $ef
	rst SubAFromDE                                          ; $6629: $df
	rst AddAOntoHL                                          ; $662a: $ef
	push af                                          ; $662b: $f5
	ld a, [$76ed]                                    ; $662c: $fa $ed $76
	ldh [$f0], a                                     ; $662f: $e0 $f0
	ldh a, [$f8]                                     ; $6631: $f0 $f8
	ld a, [hl]                                       ; $6633: $7e
	ccf                                              ; $6634: $3f
	rra                                              ; $6635: $1f
	adc a                                            ; $6636: $8f
	ld l, c                                          ; $6637: $69
	jp nz, $cd9e                                     ; $6638: $c2 $9e $cd

	ei                                               ; $663b: $fb
	sbc l                                            ; $663c: $9d
	ret nz                                           ; $663d: $c0

	di                                               ; $663e: $f3
	ld [hl], d                                       ; $663f: $72
	rst AddAOntoHL                                          ; $6640: $ef
	ld a, [hl]                                       ; $6641: $7e
	rst $38                                          ; $6642: $ff
	halt                                             ; $6643: $76
	jr nc, jr_04b_66c4                               ; $6644: $30 $7e

	rst AddAOntoHL                                          ; $6646: $ef
	ld a, c                                          ; $6647: $79
	ld l, e                                          ; $6648: $6b
	adc e                                            ; $6649: $8b
	ld d, h                                          ; $664a: $54
	ldh [rLCDC], a                                   ; $664b: $e0 $40
	add b                                            ; $664d: $80
	nop                                              ; $664e: $00
	add b                                            ; $664f: $80
	add b                                            ; $6650: $80
	nop                                              ; $6651: $00
	rst $38                                          ; $6652: $ff
	ei                                               ; $6653: $fb
	rst SubAFromBC                                          ; $6654: $e7
	rst SubAFromDE                                          ; $6655: $df
	xor a                                            ; $6656: $af
	rst SubAFromHL                                          ; $6657: $d7
	xor a                                            ; $6658: $af
	ld a, a                                          ; $6659: $7f
	ccf                                              ; $665a: $3f
	rrca                                             ; $665b: $0f
	ld b, $03                                        ; $665c: $06 $03
	ld [hl], a                                       ; $665e: $77
	or h                                             ; $665f: $b4
	reti                                             ; $6660: $d9


	rst $38                                          ; $6661: $ff
	ld a, [hl]                                       ; $6662: $7e
	pop de                                           ; $6663: $d1
	ld a, a                                          ; $6664: $7f
	and d                                            ; $6665: $a2
	sbc e                                            ; $6666: $9b
	xor a                                            ; $6667: $af
	db $db                                           ; $6668: $db
	cp l                                             ; $6669: $bd
	rst SubAFromDE                                          ; $666a: $df
	db $dd                                           ; $666b: $dd
	ldh [$9e], a                                     ; $666c: $e0 $9e
	ldh a, [$65]                                     ; $666e: $f0 $65
	and b                                            ; $6670: $a0
	ld a, l                                          ; $6671: $7d
	sbc $9e                                          ; $6672: $de $9e
	add hl, hl                                       ; $6674: $29
	ld a, [$8389]                                    ; $6675: $fa $89 $83
	db $fd                                           ; $6678: $fd
	rst $38                                          ; $6679: $ff
	ei                                               ; $667a: $fb
	rst FarCall                                          ; $667b: $f7
	rst AddAOntoHL                                          ; $667c: $ef
	call c, Call_04b_72fd                            ; $667d: $dc $fd $72
	inc bc                                           ; $6680: $03
	inc bc                                           ; $6681: $03
	rlca                                             ; $6682: $07
	rrca                                             ; $6683: $0f
	rra                                              ; $6684: $1f
	ld a, [hl]                                       ; $6685: $7e
	cp h                                             ; $6686: $bc
	ld hl, sp-$02                                    ; $6687: $f8 $fe
	cp $bd                                           ; $6689: $fe $bd
	ld a, [hl+]                                      ; $668b: $2a
	ld d, l                                          ; $668c: $55
	ld a, d                                          ; $668d: $7a
	ldh a, [$9c]                                     ; $668e: $f0 $9c
	jp $c0c1                                         ; $6690: $c3 $c1 $c0


	ld [hl], e                                       ; $6693: $73
	ld d, $9a                                        ; $6694: $16 $9a
	push af                                          ; $6696: $f5
	ld a, [hl+]                                      ; $6697: $2a
	ld d, l                                          ; $6698: $55
	ld a, [hl+]                                      ; $6699: $2a
	db $10                                           ; $669a: $10
	ld [hl], c                                       ; $669b: $71
	db $f4                                           ; $669c: $f4
	sbc c                                            ; $669d: $99
	add b                                            ; $669e: $80
	ret nz                                           ; $669f: $c0

	ld b, b                                          ; $66a0: $40
	ld h, b                                          ; $66a1: $60
	jr nc, jr_04b_66b4                               ; $66a2: $30 $10

	ld a, e                                          ; $66a4: $7b
	db $e4                                           ; $66a5: $e4
	ldh [$d2], a                                     ; $66a6: $e0 $d2
	sbc [hl]                                         ; $66a8: $9e
	ld h, b                                          ; $66a9: $60
	ld [hl], e                                       ; $66aa: $73
	add hl, bc                                       ; $66ab: $09
	rst $38                                          ; $66ac: $ff
	ld l, h                                          ; $66ad: $6c
	cp [hl]                                          ; $66ae: $be
	sbc [hl]                                         ; $66af: $9e
	nop                                              ; $66b0: $00
	ld a, c                                          ; $66b1: $79
	sbc h                                            ; $66b2: $9c
	rst $38                                          ; $66b3: $ff

jr_04b_66b4:
	ld a, [hl]                                       ; $66b4: $7e
	ld b, e                                          ; $66b5: $43
	ld h, [hl]                                       ; $66b6: $66
	add $9c                                          ; $66b7: $c6 $9c
	ld a, d                                          ; $66b9: $7a
	ld [hl], l                                       ; $66ba: $75
	dec bc                                           ; $66bb: $0b
	ld a, e                                          ; $66bc: $7b
	ld [hl], $9b                                     ; $66bd: $36 $9b
	inc sp                                           ; $66bf: $33
	dec a                                            ; $66c0: $3d
	db $fd                                           ; $66c1: $fd
	ld a, [bc]                                       ; $66c2: $0a
	ld a, e                                          ; $66c3: $7b

jr_04b_66c4:
	nop                                              ; $66c4: $00
	sub b                                            ; $66c5: $90
	ld [hl-], a                                      ; $66c6: $32
	ld a, $3c                                        ; $66c7: $3e $3c
	cp a                                             ; $66c9: $bf
	cp $f5                                           ; $66ca: $fe $f5
	ret c                                            ; $66cc: $d8

	ld d, $53                                        ; $66cd: $16 $53
	add b                                            ; $66cf: $80
	nop                                              ; $66d0: $00
	ld b, b                                          ; $66d1: $40
	ld bc, $3fea                                     ; $66d2: $01 $ea $3f
	ld a, e                                          ; $66d5: $7b
	and $6f                                          ; $66d6: $e6 $6f
	jp c, $fe9c                                      ; $66d8: $da $9c $fe

	jr c, jr_04b_66fb                                ; $66db: $38 $1e

	ld d, d                                          ; $66dd: $52
	sub b                                            ; $66de: $90
	ld a, a                                          ; $66df: $7f
	ld b, $6e                                        ; $66e0: $06 $6e
	or e                                             ; $66e2: $b3
	ld a, [hl-]                                      ; $66e3: $3a
	add b                                            ; $66e4: $80
	sbc l                                            ; $66e5: $9d
	db $d3                                           ; $66e6: $d3
	db $fc                                           ; $66e7: $fc
	db $dd                                           ; $66e8: $dd
	rst $38                                          ; $66e9: $ff
	ld a, a                                          ; $66ea: $7f
	ld a, [hl+]                                      ; $66eb: $2a
	sbc [hl]                                         ; $66ec: $9e
	ld a, a                                          ; $66ed: $7f
	ld [hl], a                                       ; $66ee: $77
	sbc $98                                          ; $66ef: $de $98
	ld bc, $0202                                     ; $66f1: $01 $02 $02
	rst SubAFromDE                                          ; $66f4: $df
	rst $38                                          ; $66f5: $ff
	ccf                                              ; $66f6: $3f
	rst FarCall                                          ; $66f7: $f7
	jp c, $9eff                                      ; $66f8: $da $ff $9e

jr_04b_66fb:
	adc a                                            ; $66fb: $8f
	db $fd                                           ; $66fc: $fd
	sbc d                                            ; $66fd: $9a
	ld a, [$d5ef]                                    ; $66fe: $fa $ef $d5
	ld [$797f], a                                    ; $6701: $ea $7f $79
	sub a                                            ; $6704: $97
	sbc l                                            ; $6705: $9d
	db $fd                                           ; $6706: $fd
	pop af                                           ; $6707: $f1
	ld a, b                                          ; $6708: $78
	scf                                              ; $6709: $37
	adc a                                            ; $670a: $8f
	rlca                                             ; $670b: $07
	ld bc, $8400                                     ; $670c: $01 $00 $84
	ld [bc], a                                       ; $670f: $02
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	ld [$0684], sp                                   ; $6712: $08 $84 $06
	nop                                              ; $6715: $00
	rst $38                                          ; $6716: $ff
	adc a                                            ; $6717: $8f
	ld a, a                                          ; $6718: $7f
	dec hl                                           ; $6719: $2b
	ld a, a                                          ; $671a: $7f
	ld a, e                                          ; $671b: $7b
	ei                                               ; $671c: $fb
	db $fc                                           ; $671d: $fc
	ld [hl], d                                       ; $671e: $72
	and [hl]                                         ; $671f: $a6
	db $db                                           ; $6720: $db
	rst $38                                          ; $6721: $ff
	sub [hl]                                         ; $6722: $96
	ld a, a                                          ; $6723: $7f
	rst JumpTable                                          ; $6724: $c7
	ld l, e                                          ; $6725: $6b
	rst FarCall                                          ; $6726: $f7
	ld a, l                                          ; $6727: $7d
	jp z, Jump_04b_4ab5                              ; $6728: $ca $b5 $4a

	rst $38                                          ; $672b: $ff
	ld a, b                                          ; $672c: $78
	xor h                                            ; $672d: $ac
	sbc [hl]                                         ; $672e: $9e
	cp $de                                           ; $672f: $fe $de
	ldh [hDisp1_OBP0], a                                     ; $6731: $e0 $93
	adc $ff                                          ; $6733: $ce $ff
	ld sp, hl                                        ; $6735: $f9
	adc d                                            ; $6736: $8a
	push de                                          ; $6737: $d5
	xor b                                            ; $6738: $a8
	ld b, b                                          ; $6739: $40
	xor d                                            ; $673a: $aa
	rst $38                                          ; $673b: $ff
	rst $38                                          ; $673c: $ff
	db $fc                                           ; $673d: $fc
	ldh [$fd], a                                     ; $673e: $e0 $fd
	sbc e                                            ; $6740: $9b
	call nc, Call_04b_5068                           ; $6741: $d4 $68 $50
	and b                                            ; $6744: $a0
	db $fd                                           ; $6745: $fd
	sbc [hl]                                         ; $6746: $9e
	ldh [rOBP1], a                                   ; $6747: $e0 $49
	add sp, -$0b                                     ; $6749: $e8 $f5
	sub e                                            ; $674b: $93
	ld [bc], a                                       ; $674c: $02
	inc b                                            ; $674d: $04
	ld [$1810], sp                                   ; $674e: $08 $10 $18
	ld [$060c], sp                                   ; $6751: $08 $0c $06
	ld b, $0c                                        ; $6754: $06 $0c
	jr jr_04b_6788                                   ; $6756: $18 $30

	ldh [$cb], a                                     ; $6758: $e0 $cb
	sbc l                                            ; $675a: $9d
	rst AddAOntoHL                                          ; $675b: $ef
	ld d, l                                          ; $675c: $55
	ei                                               ; $675d: $fb
	sbc l                                            ; $675e: $9d
	db $10                                           ; $675f: $10
	ld a, [hl+]                                      ; $6760: $2a
	db $fc                                           ; $6761: $fc
	sbc l                                            ; $6762: $9d
	ccf                                              ; $6763: $3f

jr_04b_6764:
	ld [$f06b], a                                    ; $6764: $ea $6b $f0
	sub d                                            ; $6767: $92
	dec d                                            ; $6768: $15
	xor d                                            ; $6769: $aa
	jr nc, jr_04b_6764                               ; $676a: $30 $f8

	ld sp, $0062                                     ; $676c: $31 $62 $00
	inc b                                            ; $676f: $04
	cp d                                             ; $6770: $ba
	push af                                          ; $6771: $f5
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	adc $fb                                          ; $6774: $ce $fb
	adc b                                            ; $6776: $88
	ld b, b                                          ; $6777: $40
	ld l, b                                          ; $6778: $68
	sbc l                                            ; $6779: $9d
	ret z                                            ; $677a: $c8

	inc d                                            ; $677b: $14
	ld [hl], h                                       ; $677c: $74
	ld hl, sp+$00                                    ; $677d: $f8 $00
	ld bc, $e0d0                                     ; $677f: $01 $d0 $e0
	ld h, h                                          ; $6782: $64
	jr nz, jr_04b_67a5                               ; $6783: $20 $20

	nop                                              ; $6785: $00
	adc a                                            ; $6786: $8f
	add e                                            ; $6787: $83

jr_04b_6788:
	nop                                              ; $6788: $00
	rlca                                             ; $6789: $07
	rlca                                             ; $678a: $07
	inc d                                            ; $678b: $14
	ld de, $73c0                                     ; $678c: $11 $c0 $73
	ld a, b                                          ; $678f: $78
	add b                                            ; $6790: $80
	inc bc                                           ; $6791: $03
	ld [hl-], a                                      ; $6792: $32
	jr nz, jr_04b_6814                               ; $6793: $20 $7f

	rst $38                                          ; $6795: $ff
	dec de                                           ; $6796: $1b
	rst AddAOntoHL                                          ; $6797: $ef
	add b                                            ; $6798: $80
	db $10                                           ; $6799: $10
	ld a, [hl+]                                      ; $679a: $2a
	daa                                              ; $679b: $27
	add b                                            ; $679c: $80
	nop                                              ; $679d: $00
	db $e4                                           ; $679e: $e4
	ldh a, [$60]                                     ; $679f: $f0 $60
	nop                                              ; $67a1: $00
	db $10                                           ; $67a2: $10
	ret c                                            ; $67a3: $d8

	inc e                                            ; $67a4: $1c

jr_04b_67a5:
	cp [hl]                                          ; $67a5: $be
	cp $69                                           ; $67a6: $fe $69
	rst $38                                          ; $67a8: $ff
	nop                                              ; $67a9: $00
	ld d, b                                          ; $67aa: $50
	adc b                                            ; $67ab: $88
	db $e3                                           ; $67ac: $e3
	ld b, c                                          ; $67ad: $41
	ld bc, $fe97                                     ; $67ae: $01 $97 $fe
	sub d                                            ; $67b1: $92
	ld [hl], b                                       ; $67b2: $70
	ld sp, hl                                        ; $67b3: $f9
	rst $38                                          ; $67b4: $ff
	di                                               ; $67b5: $f3
	rst FarCall                                          ; $67b6: $f7
	ld [hl], b                                       ; $67b7: $70
	inc b                                            ; $67b8: $04
	ld [bc], a                                       ; $67b9: $02
	ld bc, $0406                                     ; $67ba: $01 $06 $04
	inc c                                            ; $67bd: $0c
	ld [$4d7b], sp                                   ; $67be: $08 $7b $4d
	ld a, [hl]                                       ; $67c1: $7e
	ld d, a                                          ; $67c2: $57
	ld a, l                                          ; $67c3: $7d
	cp [hl]                                          ; $67c4: $be
	ld [hl], a                                       ; $67c5: $77
	ld h, $7c                                        ; $67c6: $26 $7c
	ld l, e                                          ; $67c8: $6b
	ld l, l                                          ; $67c9: $6d
	add b                                            ; $67ca: $80
	ld a, b                                          ; $67cb: $78
	ld c, b                                          ; $67cc: $48
	sbc d                                            ; $67cd: $9a
	rst SubAFromHL                                          ; $67ce: $d7
	xor e                                            ; $67cf: $ab
	nop                                              ; $67d0: $00
	ld bc, $5f01                                     ; $67d1: $01 $01 $5f
	ld [de], a                                       ; $67d4: $12
	sub a                                            ; $67d5: $97
	rla                                              ; $67d6: $17
	cp $e0                                           ; $67d7: $fe $e0
	nop                                              ; $67d9: $00
	ld [$0002], sp                                   ; $67da: $08 $02 $00
	ld e, l                                          ; $67dd: $5d
	ld [hl], l                                       ; $67de: $75
	add hl, sp                                       ; $67df: $39
	ld a, d                                          ; $67e0: $7a
	ret nz                                           ; $67e1: $c0

	sbc [hl]                                         ; $67e2: $9e
	ld a, b                                          ; $67e3: $78
	ld [hl], e                                       ; $67e4: $73
	sub [hl]                                         ; $67e5: $96
	ld e, [hl]                                       ; $67e6: $5e
	ld l, b                                          ; $67e7: $68
	ld a, [hl]                                       ; $67e8: $7e
	add $99                                          ; $67e9: $c6 $99
	or l                                             ; $67eb: $b5
	ld c, b                                          ; $67ec: $48
	and b                                            ; $67ed: $a0
	ld b, b                                          ; $67ee: $40
	and b                                            ; $67ef: $a0
	ld b, b                                          ; $67f0: $40
	reti                                             ; $67f1: $d9


	ldh [$6e], a                                     ; $67f2: $e0 $6e
	jp nc, $91f5                                     ; $67f4: $d2 $f5 $91

Call_04b_67f7:
	inc bc                                           ; $67f7: $03
	inc c                                            ; $67f8: $0c
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	jr nz, jr_04b_681e                               ; $67fb: $20 $21

	nop                                              ; $67fd: $00
	inc bc                                           ; $67fe: $03
	rra                                              ; $67ff: $1f
	inc a                                            ; $6800: $3c
	jr nc, jr_04b_683a                               ; $6801: $30 $37

	ld a, $3b                                        ; $6803: $3e $3b
	ld a, [$ac7f]                                    ; $6805: $fa $7f $ac
	sub [hl]                                         ; $6808: $96
	rst $38                                          ; $6809: $ff
	add b                                            ; $680a: $80
	rlca                                             ; $680b: $07
	inc a                                            ; $680c: $3c
	rst $38                                          ; $680d: $ff
	nop                                              ; $680e: $00
	ldh a, [rP1]                                     ; $680f: $f0 $00
	rra                                              ; $6811: $1f
	ld [hl], e                                       ; $6812: $73
	ld b, [hl]                                       ; $6813: $46

jr_04b_6814:
	sub d                                            ; $6814: $92
	rrca                                             ; $6815: $0f
	rst $38                                          ; $6816: $ff
	rst $38                                          ; $6817: $ff
	ret nz                                           ; $6818: $c0

	db $fc                                           ; $6819: $fc
	ccf                                              ; $681a: $3f
	ldh a, [rTAC]                                    ; $681b: $f0 $07
	rra                                              ; $681d: $1f

jr_04b_681e:
	nop                                              ; $681e: $00
	ldh a, [$08]                                     ; $681f: $f0 $08
	ld [$96fe], sp                                   ; $6821: $08 $fe $96
	add h                                            ; $6824: $84
	ld hl, sp-$04                                    ; $6825: $f8 $fc
	ld c, $0e                                        ; $6827: $0e $0e
	cp $1e                                           ; $6829: $fe $1e
	ld c, $86                                        ; $682b: $0e $86
	pop hl                                           ; $682d: $e1
	adc h                                            ; $682e: $8c
	ld a, [hl]                                       ; $682f: $7e
	ld a, l                                          ; $6830: $7d
	ld a, d                                          ; $6831: $7a
	ld a, l                                          ; $6832: $7d
	ld a, d                                          ; $6833: $7a
	ld d, l                                          ; $6834: $55
	ld a, d                                          ; $6835: $7a
	ld d, l                                          ; $6836: $55
	ld bc, $0502                                     ; $6837: $01 $02 $05

jr_04b_683a:
	ld [bc], a                                       ; $683a: $02
	dec b                                            ; $683b: $05
	ld a, [hl+]                                      ; $683c: $2a
	dec b                                            ; $683d: $05
	ld a, [hl+]                                      ; $683e: $2a
	xor b                                            ; $683f: $a8
	ld d, b                                          ; $6840: $50
	add b                                            ; $6841: $80
	ld a, b                                          ; $6842: $78
	rst GetHLinHL                                          ; $6843: $cf
	ld a, e                                          ; $6844: $7b
	cpl                                              ; $6845: $2f
	ld a, h                                          ; $6846: $7c
	push de                                          ; $6847: $d5
	sbc l                                            ; $6848: $9d
	cp a                                             ; $6849: $bf
	ld a, a                                          ; $684a: $7f
	sbc $ff                                          ; $684b: $de $ff
	sub [hl]                                         ; $684d: $96
	xor e                                            ; $684e: $ab
	ld b, [hl]                                       ; $684f: $46
	rrca                                             ; $6850: $0f
	adc c                                            ; $6851: $89
	add d                                            ; $6852: $82
	push hl                                          ; $6853: $e5
	ld c, d                                          ; $6854: $4a
	ld d, a                                          ; $6855: $57
	nop                                              ; $6856: $00
	ld [hl], b                                       ; $6857: $70
	ld c, a                                          ; $6858: $4f
	rst SubAFromDE                                          ; $6859: $df
	and b                                            ; $685a: $a0
	sub a                                            ; $685b: $97
	add d                                            ; $685c: $82
	jp Jump_04b_44a0                                 ; $685d: $c3 $a0 $44


	and b                                            ; $6860: $a0
	ld d, l                                          ; $6861: $55
	ld [$7ac4], a                                    ; $6862: $ea $c4 $7a
	or a                                             ; $6865: $b7
	ld [hl], l                                       ; $6866: $75
	rst FarCall                                          ; $6867: $f7
	sub h                                            ; $6868: $94
	ld bc, $f3c5                                     ; $6869: $01 $c5 $f3
	sbc a                                            ; $686c: $9f
	rst $38                                          ; $686d: $ff
	rst $38                                          ; $686e: $ff
	cp [hl]                                          ; $686f: $be
	ld a, [hl]                                       ; $6870: $7e
	cp [hl]                                          ; $6871: $be
	add d                                            ; $6872: $82
	jp $3879                                         ; $6873: $c3 $79 $38


	sub h                                            ; $6876: $94
	ld b, c                                          ; $6877: $41
	pop bc                                           ; $6878: $c1
	ld b, c                                          ; $6879: $41
	inc e                                            ; $687a: $1c
	ld a, $0b                                        ; $687b: $3e $0b
	dec d                                            ; $687d: $15
	ld l, d                                          ; $687e: $6a
	push de                                          ; $687f: $d5
	ld a, [$fa5d]                                    ; $6880: $fa $5d $fa
	ld a, h                                          ; $6883: $7c
	dec sp                                           ; $6884: $3b
	ld a, h                                          ; $6885: $7c
	and e                                            ; $6886: $a3
	sub a                                            ; $6887: $97
	ld e, l                                          ; $6888: $5d
	rst SubAFromDE                                          ; $6889: $df
	cp $af                                           ; $688a: $fe $af
	ld e, a                                          ; $688c: $5f
	nop                                              ; $688d: $00
	db $10                                           ; $688e: $10
	inc h                                            ; $688f: $24
	ld a, d                                          ; $6890: $7a
	sub d                                            ; $6891: $92
	ld a, d                                          ; $6892: $7a
	sbc $9b                                          ; $6893: $de $9b
	cp h                                             ; $6895: $bc
	add c                                            ; $6896: $81
	sbc a                                            ; $6897: $9f
	sbc a                                            ; $6898: $9f
	sbc $bf                                          ; $6899: $de $bf
	sbc d                                            ; $689b: $9a
	ccf                                              ; $689c: $3f
	ld b, e                                          ; $689d: $43
	ld a, [hl]                                       ; $689e: $7e
	ld h, b                                          ; $689f: $60
	ld h, b                                          ; $68a0: $60
	sbc $40                                          ; $68a1: $de $40
	sbc h                                            ; $68a3: $9c
	cp $16                                           ; $68a4: $fe $16
	adc $6d                                          ; $68a6: $ce $6d
	ld h, b                                          ; $68a8: $60
	sbc l                                            ; $68a9: $9d
	ldh [$31], a                                     ; $68aa: $e0 $31
	ld l, [hl]                                       ; $68ac: $6e
	ld h, c                                          ; $68ad: $61
	sub h                                            ; $68ae: $94
	ld h, b                                          ; $68af: $60
	ld a, a                                          ; $68b0: $7f
	ld e, d                                          ; $68b1: $5a
	ld a, l                                          ; $68b2: $7d
	ld a, d                                          ; $68b3: $7a
	ld a, a                                          ; $68b4: $7f
	ld a, [hl]                                       ; $68b5: $7e
	add b                                            ; $68b6: $80
	add b                                            ; $68b7: $80
	add d                                            ; $68b8: $82
	db $e3                                           ; $68b9: $e3
	db $dd                                           ; $68ba: $dd
	add b                                            ; $68bb: $80
	rst $38                                          ; $68bc: $ff
	sbc [hl]                                         ; $68bd: $9e
	inc h                                            ; $68be: $24
	ld a, c                                          ; $68bf: $79
	ld a, [hl]                                       ; $68c0: $7e
	sbc l                                            ; $68c1: $9d
	nop                                              ; $68c2: $00
	jr jr_04b_693f                                   ; $68c3: $18 $7a

	jp $879c                                         ; $68c5: $c3 $9c $87


	rst $38                                          ; $68c8: $ff
	ld a, a                                          ; $68c9: $7f
	ld l, c                                          ; $68ca: $69
	add b                                            ; $68cb: $80
	ld e, d                                          ; $68cc: $5a
	ret nz                                           ; $68cd: $c0

	sub a                                            ; $68ce: $97
	ld b, c                                          ; $68cf: $41
	and a                                            ; $68d0: $a7
	ld e, a                                          ; $68d1: $5f
	cp h                                             ; $68d2: $bc
	ld d, b                                          ; $68d3: $50
	cp l                                             ; $68d4: $bd
	ld c, a                                          ; $68d5: $4f
	cp a                                             ; $68d6: $bf
	sbc $e0                                          ; $68d7: $de $e0
	sub l                                            ; $68d9: $95
	db $e3                                           ; $68da: $e3
	rst AddAOntoHL                                          ; $68db: $ef
	ldh [c], a                                       ; $68dc: $e2
	ldh a, [$e0]                                     ; $68dd: $f0 $e0
	ldh a, [$ee]                                     ; $68df: $f0 $ee

jr_04b_68e1:
	sub a                                            ; $68e1: $97
	ld a, $7f                                        ; $68e2: $3e $7f
	ld a, c                                          ; $68e4: $79
	ld l, $7f                                        ; $68e5: $2e $7f
	sub b                                            ; $68e7: $90
	sbc h                                            ; $68e8: $9c
	ld l, b                                          ; $68e9: $68
	pop bc                                           ; $68ea: $c1
	add b                                            ; $68eb: $80
	ld a, d                                          ; $68ec: $7a
	or $97                                           ; $68ed: $f6 $97
	db $10                                           ; $68ef: $10
	inc d                                            ; $68f0: $14
	dec d                                            ; $68f1: $15
	inc d                                            ; $68f2: $14
	call nc, $d0d8                                   ; $68f3: $d4 $d8 $d0
	ret nc                                           ; $68f6: $d0

	call c, $8023                                    ; $68f7: $dc $23 $80
	daa                                              ; $68fa: $27
	ccf                                              ; $68fb: $3f
	ccf                                              ; $68fc: $3f
	ld b, b                                          ; $68fd: $40
	nop                                              ; $68fe: $00
	ld d, h                                          ; $68ff: $54
	ld hl, $030b                                     ; $6900: $21 $0b $03
	ld [bc], a                                       ; $6903: $02
	inc d                                            ; $6904: $14
	ldh a, [$f0]                                     ; $6905: $f0 $f0
	ldh [$38], a                                     ; $6907: $e0 $38
	ldh a, [$fc]                                     ; $6909: $f0 $fc
	db $fc                                           ; $690b: $fc
	cp $28                                           ; $690c: $fe $28
	db $e4                                           ; $690e: $e4
	ldh [c], a                                       ; $690f: $e2
	or $f0                                           ; $6910: $f6 $f0
	pop bc                                           ; $6912: $c1
	sub e                                            ; $6913: $93
	ld e, $1f                                        ; $6914: $1e $1f
	rra                                              ; $6916: $1f
	inc de                                           ; $6917: $13
	rra                                              ; $6918: $1f
	sub b                                            ; $6919: $90
	rra                                              ; $691a: $1f
	ccf                                              ; $691b: $3f
	ld a, a                                          ; $691c: $7f
	ld a, [hl]                                       ; $691d: $7e
	ld b, d                                          ; $691e: $42
	ld [bc], a                                       ; $691f: $02
	ld [hl+], a                                      ; $6920: $22
	inc bc                                           ; $6921: $03
	add e                                            ; $6922: $83
	sub e                                            ; $6923: $93
	ld c, e                                          ; $6924: $4b
	dec hl                                           ; $6925: $2b
	add h                                            ; $6926: $84
	call nz, $dec4                                   ; $6927: $c4 $c4 $de
	db $e4                                           ; $692a: $e4
	sbc h                                            ; $692b: $9c
	db $f4                                           ; $692c: $f4
	inc [hl]                                         ; $692d: $34
	inc bc                                           ; $692e: $03
	ld l, c                                          ; $692f: $69
	ld d, $f9                                        ; $6930: $16 $f9
	sbc d                                            ; $6932: $9a
	add b                                            ; $6933: $80
	ld b, c                                          ; $6934: $41
	xor d                                            ; $6935: $aa
	ld b, l                                          ; $6936: $45
	adc e                                            ; $6937: $8b
	ld a, d                                          ; $6938: $7a
	db $d3                                           ; $6939: $d3
	ld sp, hl                                        ; $693a: $f9
	sub h                                            ; $693b: $94
	ld l, d                                          ; $693c: $6a
	ld b, b                                          ; $693d: $40
	ld b, b                                          ; $693e: $40

jr_04b_693f:
	jr nz, jr_04b_68e1                               ; $693f: $20 $a0

	jr nz, jr_04b_69c2                               ; $6941: $20 $7f

	ret                                              ; $6943: $c9


	dec d                                            ; $6944: $15
	ccf                                              ; $6945: $3f
	ccf                                              ; $6946: $3f
	sbc $7f                                          ; $6947: $de $7f
	sbc l                                            ; $6949: $9d
	ccf                                              ; $694a: $3f
	ld [hl], $6b                                     ; $694b: $36 $6b
	ld h, d                                          ; $694d: $62
	sbc [hl]                                         ; $694e: $9e
	and c                                            ; $694f: $a1
	jp c, $80ff                                      ; $6950: $da $ff $80

	ld c, $5a                                        ; $6953: $0e $5a
	adc a                                            ; $6955: $8f
	ld a, h                                          ; $6956: $7c
	xor [hl]                                         ; $6957: $ae
	sub l                                            ; $6958: $95

jr_04b_6959:
	db $ec                                           ; $6959: $ec
	ld [hl], b                                       ; $695a: $70
	inc bc                                           ; $695b: $03
	and b                                            ; $695c: $a0
	ldh a, [$e3]                                     ; $695d: $f0 $e3
	ld [hl], c                                       ; $695f: $71
	ld h, e                                          ; $6960: $63
	di                                               ; $6961: $f3
	rst $38                                          ; $6962: $ff
	db $fc                                           ; $6963: $fc
	ld c, d                                          ; $6964: $4a
	xor $ec                                          ; $6965: $ee $ec
	cp b                                             ; $6967: $b8
	or h                                             ; $6968: $b4
	ld a, [hl-]                                      ; $6969: $3a
	ld bc, $8107                                     ; $696a: $01 $07 $81
	sub c                                            ; $696d: $91
	sub e                                            ; $696e: $93
	rst JumpTable                                          ; $696f: $c7
	jp $dfc7                                         ; $6970: $c3 $c7 $df


	rst $38                                          ; $6973: $ff
	add b                                            ; $6974: $80
	ld d, l                                          ; $6975: $55
	ld c, a                                          ; $6976: $4f
	push de                                          ; $6977: $d5
	ld h, $76                                        ; $6978: $26 $76
	inc d                                            ; $697a: $14
	add $40                                          ; $697b: $c6 $40
	add b                                            ; $697d: $80

Call_04b_697e:
	add b                                            ; $697e: $80
	adc b                                            ; $697f: $88
	ret                                              ; $6980: $c9


	adc c                                            ; $6981: $89
	jp hl                                            ; $6982: $e9


	add hl, sp                                       ; $6983: $39
	cp a                                             ; $6984: $bf
	xor a                                            ; $6985: $af
	ld e, l                                          ; $6986: $5d
	nop                                              ; $6987: $00
	add d                                            ; $6988: $82
	jp z, $0e4a                                      ; $6989: $ca $4a $0e

	dec d                                            ; $698c: $15
	ret nz                                           ; $698d: $c0

	ldh [$fc], a                                     ; $698e: $e0 $fc
	db $fc                                           ; $6990: $fc
	db $f4                                           ; $6991: $f4
	db $e4                                           ; $6992: $e4
	ldh a, [hDisp1_WX]                                     ; $6993: $f0 $96
	ld hl, sp-$52                                    ; $6995: $f8 $ae
	ld e, l                                          ; $6997: $5d
	ld c, d                                          ; $6998: $4a
	ld e, b                                          ; $6999: $58
	db $dd                                           ; $699a: $dd
	or [hl]                                          ; $699b: $b6
	ld c, c                                          ; $699c: $49
	ld [hl], a                                       ; $699d: $77
	db $fc                                           ; $699e: $fc
	add l                                            ; $699f: $85
	ld c, b                                          ; $69a0: $48
	sbc b                                            ; $69a1: $98
	sbc b                                            ; $69a2: $98
	sub a                                            ; $69a3: $97
	sbc a                                            ; $69a4: $9f
	and l                                            ; $69a5: $a5
	jr z, jr_04b_6959                                ; $69a6: $28 $b1

	xor e                                            ; $69a8: $ab
	cp e                                             ; $69a9: $bb
	ld c, $40                                        ; $69aa: $0e $40
	ld b, b                                          ; $69ac: $40
	ld d, b                                          ; $69ad: $50
	ret nc                                           ; $69ae: $d0

	ld b, b                                          ; $69af: $40
	ld d, b                                          ; $69b0: $50
	ld b, b                                          ; $69b1: $40
	rst $38                                          ; $69b2: $ff
	push af                                          ; $69b3: $f5
	db $e3                                           ; $69b4: $e3
	ld d, h                                          ; $69b5: $54
	ld bc, $cd55                                     ; $69b6: $01 $55 $cd
	ld [hl], $72                                     ; $69b9: $36 $72
	add sp, -$6e                                     ; $69bb: $e8 $92
	xor d                                            ; $69bd: $aa
	jr nz, jr_04b_69c0                               ; $69be: $20 $00

jr_04b_69c0:
	rst $38                                          ; $69c0: $ff
	ld a, [hl+]                                      ; $69c1: $2a

jr_04b_69c2:
	ld d, l                                          ; $69c2: $55
	jr z, jr_04b_69d9                                ; $69c3: $28 $14

	jr @+$43                                         ; $69c5: $18 $41

	ldh [$c3], a                                     ; $69c7: $e0 $c3
	add c                                            ; $69c9: $81
	sbc $80                                          ; $69ca: $de $80
	sbc d                                            ; $69cc: $9a
	ldh [rAUD1SWEEP], a                              ; $69cd: $e0 $10
	ld de, $80e0                                     ; $69cf: $11 $e0 $80
	ld a, d                                          ; $69d2: $7a
	jp nz, $4094                                     ; $69d3: $c2 $94 $40

	jp nz, $0002                                     ; $69d6: $c2 $02 $00

jr_04b_69d9:
	rst $38                                          ; $69d9: $ff
	sbc a                                            ; $69da: $9f
	rst $38                                          ; $69db: $ff
	ld b, a                                          ; $69dc: $47
	ccf                                              ; $69dd: $3f
	rst $38                                          ; $69de: $ff
	adc a                                            ; $69df: $8f
	ld h, e                                          ; $69e0: $63
	jr c, @-$25                                      ; $69e1: $38 $d9

	rst $38                                          ; $69e3: $ff
	sub a                                            ; $69e4: $97
	ld e, a                                          ; $69e5: $5f
	cp a                                             ; $69e6: $bf
	ld e, a                                          ; $69e7: $5f
	cp a                                             ; $69e8: $bf
	ld c, a                                          ; $69e9: $4f
	cp a                                             ; $69ea: $bf
	ld e, a                                          ; $69eb: $5f
	cp [hl]                                          ; $69ec: $be
	db $dd                                           ; $69ed: $dd
	ldh [$7e], a                                     ; $69ee: $e0 $7e
	db $ed                                           ; $69f0: $ed
	add b                                            ; $69f1: $80
	ldh [$e1], a                                     ; $69f2: $e0 $e1
	and b                                            ; $69f4: $a0
	ld e, e                                          ; $69f5: $5b
	and h                                            ; $69f6: $a4
	ld d, d                                          ; $69f7: $52
	xor l                                            ; $69f8: $ad
	ld e, d                                          ; $69f9: $5a
	add hl, hl                                       ; $69fa: $29
	rlc b                                            ; $69fb: $cb $00
	inc b                                            ; $69fd: $04
	dec bc                                           ; $69fe: $0b
	ld [$0400], sp                                   ; $69ff: $08 $00 $04
	add h                                            ; $6a02: $84
	add h                                            ; $6a03: $84
	cp [hl]                                          ; $6a04: $be
	ld a, [de]                                       ; $6a05: $1a
	ld d, b                                          ; $6a06: $50
	jp c, $b849                                      ; $6a07: $da $49 $b8

	ld a, [bc]                                       ; $6a0a: $0a
	jr c, jr_04b_6a2c                                ; $6a0b: $38 $1f

	scf                                              ; $6a0d: $37
	cp a                                             ; $6a0e: $bf
	dec a                                            ; $6a0f: $3d
	rra                                              ; $6a10: $1f
	add b                                            ; $6a11: $80
	ld d, a                                          ; $6a12: $57
	sub h                                            ; $6a13: $94
	sbc h                                            ; $6a14: $9c
	ld h, c                                          ; $6a15: $61
	add sp, $34                                      ; $6a16: $e8 $34
	dec h                                            ; $6a18: $25
	xor a                                            ; $6a19: $af
	di                                               ; $6a1a: $f3
	sbc $79                                          ; $6a1b: $de $79
	cp $5f                                           ; $6a1d: $fe $5f
	ei                                               ; $6a1f: $fb
	cp $f8                                           ; $6a20: $fe $f8
	jr z, jr_04b_6a45                                ; $6a22: $28 $21

	and $9e                                          ; $6a24: $e6 $9e
	ld [de], a                                       ; $6a26: $12
	ld h, h                                          ; $6a27: $64
	ld h, b                                          ; $6a28: $60
	ld bc, $fdd9                                     ; $6a29: $01 $d9 $fd

jr_04b_6a2c:
	call c, $fd7e                                    ; $6a2c: $dc $7e $fd
	db $fd                                           ; $6a2f: $fd
	sbc l                                            ; $6a30: $9d
	adc [hl]                                         ; $6a31: $8e
	cp $27                                           ; $6a32: $fe $27
	ld a, [$c3fb]                                    ; $6a34: $fa $fb $c3
	ld de, $0bfb                                     ; $6a37: $11 $fb $0b
	dec sp                                           ; $6a3a: $3b
	db $eb                                           ; $6a3b: $eb
	db $db                                           ; $6a3c: $db
	db $db                                           ; $6a3d: $db
	call nz, $f4f8                                   ; $6a3e: $c4 $f8 $f4
	db $f4                                           ; $6a41: $f4
	call nz, $24de                                   ; $6a42: $c4 $de $24

jr_04b_6a45:
	sub a                                            ; $6a45: $97
	add h                                            ; $6a46: $84
	ld c, b                                          ; $6a47: $48
	add b                                            ; $6a48: $80

jr_04b_6a49:
	ld h, b                                          ; $6a49: $60
	ld d, b                                          ; $6a4a: $50
	and b                                            ; $6a4b: $a0
	ld d, b                                          ; $6a4c: $50
	cp b                                             ; $6a4d: $b8
	halt                                             ; $6a4e: $76
	push bc                                          ; $6a4f: $c5
	ld [hl], c                                       ; $6a50: $71
	ld d, [hl]                                       ; $6a51: $56
	sbc d                                            ; $6a52: $9a
	ld [$2012], sp                                   ; $6a53: $08 $12 $20
	ld b, d                                          ; $6a56: $42
	add d                                            ; $6a57: $82
	ld [hl], l                                       ; $6a58: $75
	call nz, $96fb                                   ; $6a59: $c4 $fb $96
	inc h                                            ; $6a5c: $24
	cp b                                             ; $6a5d: $b8
	ld d, l                                          ; $6a5e: $55
	xor d                                            ; $6a5f: $aa
	ld d, l                                          ; $6a60: $55
	xor b                                            ; $6a61: $a8
	nop                                              ; $6a62: $00
	add b                                            ; $6a63: $80
	sub b                                            ; $6a64: $90
	ld l, d                                          ; $6a65: $6a
	ld h, $9a                                        ; $6a66: $26 $9a
	ld c, l                                          ; $6a68: $4d
	ld [de], a                                       ; $6a69: $12

jr_04b_6a6a:
	ld c, d                                          ; $6a6a: $4a
	and b                                            ; $6a6b: $a0
	ld b, b                                          ; $6a6c: $40
	ld a, c                                          ; $6a6d: $79
	sub e                                            ; $6a6e: $93
	sbc l                                            ; $6a6f: $9d
	ld [hl-], a                                      ; $6a70: $32
	rst SubAFromBC                                          ; $6a71: $e7
	ld l, b                                          ; $6a72: $68
	xor [hl]                                         ; $6a73: $ae
	sbc b                                            ; $6a74: $98
	ld a, a                                          ; $6a75: $7f
	ld b, b                                          ; $6a76: $40
	dec d                                            ; $6a77: $15
	xor d                                            ; $6a78: $aa
	ld d, h                                          ; $6a79: $54
	xor d                                            ; $6a7a: $aa
	ld d, l                                          ; $6a7b: $55
	sbc $ff                                          ; $6a7c: $de $ff
	ld a, h                                          ; $6a7e: $7c
	dec hl                                           ; $6a7f: $2b
	sbc h                                            ; $6a80: $9c
	xor e                                            ; $6a81: $ab
	ld d, l                                          ; $6a82: $55
	xor d                                            ; $6a83: $aa
	ld a, c                                          ; $6a84: $79
	ld c, $9c                                        ; $6a85: $0e $9c
	db $10                                           ; $6a87: $10
	add b                                            ; $6a88: $80
	ld d, b                                          ; $6a89: $50
	ld a, e                                          ; $6a8a: $7b
	rla                                              ; $6a8b: $17
	rst SubAFromDE                                          ; $6a8c: $df
	rst $38                                          ; $6a8d: $ff
	sub d                                            ; $6a8e: $92
	rst AddAOntoHL                                          ; $6a8f: $ef
	ld a, a                                          ; $6a90: $7f
	xor a                                            ; $6a91: $af
	rst SubAFromDE                                          ; $6a92: $df
	rst $38                                          ; $6a93: $ff
	daa                                              ; $6a94: $27
	nop                                              ; $6a95: $00
	ld a, h                                          ; $6a96: $7c
	ld d, b                                          ; $6a97: $50
	ld [$a854], sp                                   ; $6a98: $08 $54 $a8
	inc d                                            ; $6a9b: $14
	sbc $ff                                          ; $6a9c: $de $ff
	sub [hl]                                         ; $6a9e: $96
	xor a                                            ; $6a9f: $af
	rst FarCall                                          ; $6aa0: $f7
	xor e                                            ; $6aa1: $ab
	ld d, a                                          ; $6aa2: $57
	db $eb                                           ; $6aa3: $eb
	db $ec                                           ; $6aa4: $ec
	call $2703                                       ; $6aa5: $cd $03 $27

jr_04b_6aa8:
	ld h, a                                          ; $6aa8: $67
	jr nz, jr_04b_6a49                               ; $6aa9: $20 $9e

	ld d, a                                          ; $6aab: $57
	ld [hl], a                                       ; $6aac: $77
	xor b                                            ; $6aad: $a8
	sbc h                                            ; $6aae: $9c
	or c                                             ; $6aaf: $b1
	db $fd                                           ; $6ab0: $fd
	db $fd                                           ; $6ab1: $fd
	ld [hl], a                                       ; $6ab2: $77
	and l                                            ; $6ab3: $a5
	sbc [hl]                                         ; $6ab4: $9e
	cp a                                             ; $6ab5: $bf
	db $dd                                           ; $6ab6: $dd
	rst $38                                          ; $6ab7: $ff
	sub e                                            ; $6ab8: $93
	cpl                                              ; $6ab9: $2f
	ld d, b                                          ; $6aba: $50
	nop                                              ; $6abb: $00
	cp $cf                                           ; $6abc: $fe $cf
	cp $ff                                           ; $6abe: $fe $ff
	db $fd                                           ; $6ac0: $fd
	db $fc                                           ; $6ac1: $fc
	nop                                              ; $6ac2: $00

jr_04b_6ac3:
	nop                                              ; $6ac3: $00
	cp $dc                                           ; $6ac4: $fe $dc
	rst $38                                          ; $6ac6: $ff
	sub l                                            ; $6ac7: $95
	ld d, a                                          ; $6ac8: $57
	ld a, [bc]                                       ; $6ac9: $0a
	ld a, h                                          ; $6aca: $7c
	rst $38                                          ; $6acb: $ff
	rrca                                             ; $6acc: $0f
	rst AddAOntoHL                                          ; $6acd: $ef
	rst SubAFromDE                                          ; $6ace: $df
	rrca                                             ; $6acf: $0f
	rra                                              ; $6ad0: $1f
	add hl, bc                                       ; $6ad1: $09
	jp c, $93ff                                      ; $6ad2: $da $ff $93

	cp a                                             ; $6ad5: $bf
	rst JumpTable                                          ; $6ad6: $c7
	inc e                                            ; $6ad7: $1c
	inc b                                            ; $6ad8: $04
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	jr nc, jr_04b_6a6a                               ; $6adb: $30 $8d

	db $fd                                           ; $6add: $fd
	jr nz, jr_04b_6ac3                               ; $6ade: $20 $e3

	ei                                               ; $6ae0: $fb
	ld l, [hl]                                       ; $6ae1: $6e
	ld [$b274], sp                                   ; $6ae2: $08 $74 $b2
	cp $9c                                           ; $6ae5: $fe $9c
	ld [hl], a                                       ; $6ae7: $77
	or a                                             ; $6ae8: $b7
	rst SubAFromDE                                          ; $6ae9: $df
	call c, Call_04b_46bf                            ; $6aea: $dc $bf $46
	ret nz                                           ; $6aed: $c0

	sub e                                            ; $6aee: $93
	ld d, c                                          ; $6aef: $51
	and h                                            ; $6af0: $a4
	push de                                          ; $6af1: $d5
	cp h                                             ; $6af2: $bc
	call nc, $c1a5                                   ; $6af3: $d4 $a5 $c1
	add a                                            ; $6af6: $87
	rst AddAOntoHL                                          ; $6af7: $ef
	ei                                               ; $6af8: $fb
	db $eb                                           ; $6af9: $eb
	rst SubAFromBC                                          ; $6afa: $e7
	ld a, e                                          ; $6afb: $7b
	adc $80                                          ; $6afc: $ce $80
	ld hl, sp+$54                                    ; $6afe: $f8 $54
	cpl                                              ; $6b00: $2f
	ld a, $e4                                        ; $6b01: $3e $e4
	rst SubAFromHL                                          ; $6b03: $d7
	cp b                                             ; $6b04: $b8
	ret nz                                           ; $6b05: $c0

	ld b, $80                                        ; $6b06: $06 $80
	ret nz                                           ; $6b08: $c0

	pop bc                                           ; $6b09: $c1
	add hl, de                                       ; $6b0a: $19
	add hl, hl                                       ; $6b0b: $29
	ld b, a                                          ; $6b0c: $47
	rlca                                             ; $6b0d: $07
	rrca                                             ; $6b0e: $0f
	ld h, d                                          ; $6b0f: $62
	ld c, b                                          ; $6b10: $48
	jr nz, jr_04b_6b3b                               ; $6b11: $20 $28

	ld c, h                                          ; $6b13: $4c
	ld bc, $1061                                     ; $6b14: $01 $61 $10
	sbc h                                            ; $6b17: $9c
	sbc [hl]                                         ; $6b18: $9e
	sbc [hl]                                         ; $6b19: $9e
	sub [hl]                                         ; $6b1a: $96
	or e                                             ; $6b1b: $b3
	cp $80                                           ; $6b1c: $fe $80
	sbc [hl]                                         ; $6b1e: $9e
	rst AddAOntoHL                                          ; $6b1f: $ef
	sbc h                                            ; $6b20: $9c
	sbc l                                            ; $6b21: $9d
	add c                                            ; $6b22: $81
	sub b                                            ; $6b23: $90
	jr jr_04b_6aa8                                   ; $6b24: $18 $82

	add a                                            ; $6b26: $87
	nop                                              ; $6b27: $00
	ld a, a                                          ; $6b28: $7f
	ld [hl], e                                       ; $6b29: $73
	ld a, a                                          ; $6b2a: $7f
	ld l, [hl]                                       ; $6b2b: $6e
	rst $38                                          ; $6b2c: $ff
	ld a, h                                          ; $6b2d: $7c
	ld a, b                                          ; $6b2e: $78
	rst $38                                          ; $6b2f: $ff
	ld [bc], a                                       ; $6b30: $02
	sbc h                                            ; $6b31: $9c
	ld e, h                                          ; $6b32: $5c
	jr nz, jr_04b_6b57                               ; $6b33: $20 $22

	inc d                                            ; $6b35: $14
	sub b                                            ; $6b36: $90
	ld a, [bc]                                       ; $6b37: $0a
	rst $38                                          ; $6b38: $ff
	ei                                               ; $6b39: $fb
	daa                                              ; $6b3a: $27

jr_04b_6b3b:
	ld b, e                                          ; $6b3b: $43
	db $dd                                           ; $6b3c: $dd
	adc c                                            ; $6b3d: $89
	ld h, a                                          ; $6b3e: $67
	ld c, a                                          ; $6b3f: $4f
	pop af                                           ; $6b40: $f1
	sbc e                                            ; $6b41: $9b
	add a                                            ; $6b42: $87
	rst $38                                          ; $6b43: $ff
	ld a, c                                          ; $6b44: $79
	add a                                            ; $6b45: $87
	ld a, [de]                                       ; $6b46: $1a
	rrca                                             ; $6b47: $0f
	nop                                              ; $6b48: $00
	ld a, h                                          ; $6b49: $7c
	ld a, b                                          ; $6b4a: $78
	nop                                              ; $6b4b: $00
	ld b, $78                                        ; $6b4c: $06 $78
	ldh [$f0], a                                     ; $6b4e: $e0 $f0
	nop                                              ; $6b50: $00
	inc d                                            ; $6b51: $14
	xor d                                            ; $6b52: $aa
	ld d, l                                          ; $6b53: $55
	db $f4                                           ; $6b54: $f4
	sub a                                            ; $6b55: $97
	db $10                                           ; $6b56: $10

jr_04b_6b57:
	ld a, [hl+]                                      ; $6b57: $2a
	ld b, l                                          ; $6b58: $45
	ld a, [hl+]                                      ; $6b59: $2a
	ld d, [hl]                                       ; $6b5a: $56
	jr z, jr_04b_6bad                                ; $6b5b: $28 $50

	adc b                                            ; $6b5d: $88
	ld hl, sp+$7e                                    ; $6b5e: $f8 $7e
	xor d                                            ; $6b60: $aa
	ld l, a                                          ; $6b61: $6f
	cp $ea                                           ; $6b62: $fe $ea
	ld a, a                                          ; $6b64: $7f
	pop bc                                           ; $6b65: $c1
	ld l, a                                          ; $6b66: $6f
	cp $6b                                           ; $6b67: $fe $6b
	ld sp, hl                                        ; $6b69: $f9
	rst SubAFromDE                                          ; $6b6a: $df
	xor d                                            ; $6b6b: $aa
	ld c, e                                          ; $6b6c: $4b
	ldh a, [$9d]                                     ; $6b6d: $f0 $9d
	xor b                                            ; $6b6f: $a8
	ld d, h                                          ; $6b70: $54
	ld l, a                                          ; $6b71: $6f
	cp $9d                                           ; $6b72: $fe $9d
	ld d, a                                          ; $6b74: $57
	xor e                                            ; $6b75: $ab
	ld l, a                                          ; $6b76: $6f
	cp $dc                                           ; $6b77: $fe $dc
	ld a, a                                          ; $6b79: $7f
	sbc h                                            ; $6b7a: $9c
	cpl                                              ; $6b7b: $2f
	ld d, l                                          ; $6b7c: $55
	ld l, e                                          ; $6b7d: $6b
	reti                                             ; $6b7e: $d9


	add b                                            ; $6b7f: $80
	rst SubAFromDE                                          ; $6b80: $df
	rst $38                                          ; $6b81: $ff
	ld l, [hl]                                       ; $6b82: $6e
	sub $53                                          ; $6b83: $d6 $53
	ld [$d59e], sp                                   ; $6b85: $08 $9e $d5
	ld e, a                                          ; $6b88: $5f
	ldh a, [hDisp0_OBP1]                                     ; $6b89: $f0 $87
	db $fc                                           ; $6b8b: $fc
	rst $38                                          ; $6b8c: $ff
	ld [$fafd], a                                    ; $6b8d: $ea $fd $fa
	ld e, l                                          ; $6b90: $5d
	cp $ff                                           ; $6b91: $fe $ff
	inc bc                                           ; $6b93: $03
	nop                                              ; $6b94: $00
	dec d                                            ; $6b95: $15
	ld [bc], a                                       ; $6b96: $02
	dec b                                            ; $6b97: $05
	ld [bc], a                                       ; $6b98: $02
	ld bc, $7f00                                     ; $6b99: $01 $00 $7f
	add h                                            ; $6b9c: $84
	ld b, b                                          ; $6b9d: $40
	add b                                            ; $6b9e: $80
	ld d, b                                          ; $6b9f: $50
	xor b                                            ; $6ba0: $a8
	ld d, l                                          ; $6ba1: $55
	xor d                                            ; $6ba2: $aa
	ld a, e                                          ; $6ba3: $7b
	rst AddAOntoHL                                          ; $6ba4: $ef
	ei                                               ; $6ba5: $fb
	sub e                                            ; $6ba6: $93
	xor b                                            ; $6ba7: $a8
	inc b                                            ; $6ba8: $04
	ld a, [bc]                                       ; $6ba9: $0a
	dec d                                            ; $6baa: $15
	nop                                              ; $6bab: $00
	ld b, b                                          ; $6bac: $40

jr_04b_6bad:
	xor d                                            ; $6bad: $aa
	cp a                                             ; $6bae: $bf
	ld d, h                                          ; $6baf: $54
	ld [bc], a                                       ; $6bb0: $02
	dec d                                            ; $6bb1: $15
	ld a, [bc]                                       ; $6bb2: $0a
	db $fc                                           ; $6bb3: $fc
	add h                                            ; $6bb4: $84
	ld bc, $5ebe                                     ; $6bb5: $01 $be $5e
	jr nz, jr_04b_6c0e                               ; $6bb8: $20 $54

	nop                                              ; $6bba: $00
	ccf                                              ; $6bbb: $3f
	ld e, l                                          ; $6bbc: $5d
	xor d                                            ; $6bbd: $aa
	ld b, c                                          ; $6bbe: $41
	and b                                            ; $6bbf: $a0
	ld d, b                                          ; $6bc0: $50
	ld a, [hl+]                                      ; $6bc1: $2a
	nop                                              ; $6bc2: $00
	stop                                             ; $6bc3: $10 $00
	ld e, c                                          ; $6bc5: $59
	cp c                                             ; $6bc6: $b9
	rla                                              ; $6bc7: $17
	add b                                            ; $6bc8: $80
	ld h, c                                          ; $6bc9: $61
	nop                                              ; $6bca: $00
	add sp, $40                                      ; $6bcb: $e8 $40
	add b                                            ; $6bcd: $80
	rra                                              ; $6bce: $1f
	rrca                                             ; $6bcf: $0f
	cp $92                                           ; $6bd0: $fe $92
	rlca                                             ; $6bd2: $07
	ld c, [hl]                                       ; $6bd3: $4e
	ld a, d                                          ; $6bd4: $7a
	ld sp, hl                                        ; $6bd5: $f9
	ld e, a                                          ; $6bd6: $5f
	ret nz                                           ; $6bd7: $c0

	nop                                              ; $6bd8: $00
	ld [bc], a                                       ; $6bd9: $02
	rrca                                             ; $6bda: $0f
	inc a                                            ; $6bdb: $3c
	pop af                                           ; $6bdc: $f1
	rst SubAFromBC                                          ; $6bdd: $e7
	ld a, [hl]                                       ; $6bde: $7e
	cp $9a                                           ; $6bdf: $fe $9a
	rst SubAFromBC                                          ; $6be1: $e7
	sub b                                            ; $6be2: $90
	inc de                                           ; $6be3: $13
	ld a, a                                          ; $6be4: $7f
	inc a                                            ; $6be5: $3c
	ld a, e                                          ; $6be6: $7b
	add hl, sp                                       ; $6be7: $39
	sbc e                                            ; $6be8: $9b
	cp $78                                           ; $6be9: $fe $78
	pop hl                                           ; $6beb: $e1
	sbc [hl]                                         ; $6bec: $9e
	db $fd                                           ; $6bed: $fd
	sbc e                                            ; $6bee: $9b
	ld [hl], e                                       ; $6bef: $73
	ld a, [hl]                                       ; $6bf0: $7e
	ldh a, [$a0]                                     ; $6bf1: $f0 $a0
	ld [hl], a                                       ; $6bf3: $77
	add hl, hl                                       ; $6bf4: $29
	sbc h                                            ; $6bf5: $9c
	ccf                                              ; $6bf6: $3f
	ld a, h                                          ; $6bf7: $7c
	ldh [$fc], a                                     ; $6bf8: $e0 $fc
	sub l                                            ; $6bfa: $95
	pop bc                                           ; $6bfb: $c1
	inc bc                                           ; $6bfc: $03
	inc bc                                           ; $6bfd: $03
	ld bc, $0000                                     ; $6bfe: $01 $00 $00
	dec d                                            ; $6c01: $15
	xor d                                            ; $6c02: $aa
	add c                                            ; $6c03: $81
	ld bc, $f97b                                     ; $6c04: $01 $7b $f9
	halt                                             ; $6c07: $76
	pop af                                           ; $6c08: $f1
	rst SubAFromDE                                          ; $6c09: $df
	ret nz                                           ; $6c0a: $c0

	sbc h                                            ; $6c0b: $9c
	nop                                              ; $6c0c: $00
	add c                                            ; $6c0d: $81

jr_04b_6c0e:
	ld a, [bc]                                       ; $6c0e: $0a
	ld a, c                                          ; $6c0f: $79
	ret c                                            ; $6c10: $d8

	sbc $80                                          ; $6c11: $de $80
	db $fd                                           ; $6c13: $fd
	ld a, e                                          ; $6c14: $7b
	inc e                                            ; $6c15: $1c
	sbc e                                            ; $6c16: $9b
	xor [hl]                                         ; $6c17: $ae
	cpl                                              ; $6c18: $2f
	ld e, [hl]                                       ; $6c19: $5e
	or l                                             ; $6c1a: $b5
	ld [hl], e                                       ; $6c1b: $73
	add l                                            ; $6c1c: $85
	ld a, l                                          ; $6c1d: $7d
	ld a, b                                          ; $6c1e: $78
	sbc e                                            ; $6c1f: $9b
	ld b, b                                          ; $6c20: $40
	and b                                            ; $6c21: $a0
	ld e, a                                          ; $6c22: $5f
	xor a                                            ; $6c23: $af
	ld [hl], l                                       ; $6c24: $75
	cp d                                             ; $6c25: $ba
	ld a, e                                          ; $6c26: $7b
	ldh [$66], a                                     ; $6c27: $e0 $66
	ldh [$9e], a                                     ; $6c29: $e0 $9e
	push de                                          ; $6c2b: $d5
	ld [hl], e                                       ; $6c2c: $73
	cp $9e                                           ; $6c2d: $fe $9e
	db $dd                                           ; $6c2f: $dd
	rst FarCall                                          ; $6c30: $f7
	sbc [hl]                                         ; $6c31: $9e
	and b                                            ; $6c32: $a0
	ld [hl], d                                       ; $6c33: $72
	rst SubAFromBC                                          ; $6c34: $e7
	ld e, d                                          ; $6c35: $5a
	ret nz                                           ; $6c36: $c0

	sbc l                                            ; $6c37: $9d
	dec d                                            ; $6c38: $15
	xor b                                            ; $6c39: $a8
	ld a, e                                          ; $6c3a: $7b
	and l                                            ; $6c3b: $a5
	ld a, e                                          ; $6c3c: $7b
	db $ed                                           ; $6c3d: $ed
	sbc l                                            ; $6c3e: $9d
	ld [$6a57], a                                    ; $6c3f: $ea $57 $6a
	or b                                             ; $6c42: $b0
	sbc l                                            ; $6c43: $9d
	ld a, [hl+]                                      ; $6c44: $2a
	ld [hl], l                                       ; $6c45: $75
	ld [hl], e                                       ; $6c46: $73
	ldh a, [$7f]                                     ; $6c47: $f0 $7f
	ret                                              ; $6c49: $c9


	sbc [hl]                                         ; $6c4a: $9e
	adc d                                            ; $6c4b: $8a
	ld a, e                                          ; $6c4c: $7b
	ld hl, $c276                                     ; $6c4d: $21 $76 $c2
	ld a, e                                          ; $6c50: $7b
	jp nc, $c26e                                     ; $6c51: $d2 $6e $c2

	rst $38                                          ; $6c54: $ff
	sbc b                                            ; $6c55: $98
	ld [hl], l                                       ; $6c56: $75
	ld l, d                                          ; $6c57: $6a
	sub l                                            ; $6c58: $95
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	and d                                            ; $6c5b: $a2
	ld de, $6f62                                     ; $6c5c: $11 $62 $6f
	sbc b                                            ; $6c5f: $98
	ld a, a                                          ; $6c60: $7f
	xor e                                            ; $6c61: $ab
	ld d, l                                          ; $6c62: $55
	ld [bc], a                                       ; $6c63: $02
	nop                                              ; $6c64: $00
	ld a, [hl+]                                      ; $6c65: $2a
	ld d, c                                          ; $6c66: $51
	ld h, e                                          ; $6c67: $63
	sub b                                            ; $6c68: $90
	rst SubAFromDE                                          ; $6c69: $df
	rst $38                                          ; $6c6a: $ff
	ld a, a                                          ; $6c6b: $7f
	pop bc                                           ; $6c6c: $c1
	sbc h                                            ; $6c6d: $9c
	ld d, l                                          ; $6c6e: $55
	and d                                            ; $6c6f: $a2
	dec d                                            ; $6c70: $15
	ld e, e                                          ; $6c71: $5b
	ldh a, [$9e]                                     ; $6c72: $f0 $9e
	ld d, a                                          ; $6c74: $57
	ld [hl], d                                       ; $6c75: $72
	ld a, b                                          ; $6c76: $78
	rst $38                                          ; $6c77: $ff
	ld a, l                                          ; $6c78: $7d
	inc l                                            ; $6c79: $2c
	ld [hl], e                                       ; $6c7a: $73
	ldh a, [$9d]                                     ; $6c7b: $f0 $9d
	cp $f5                                           ; $6c7d: $fe $f5
	ld l, e                                          ; $6c7f: $6b
	ldh a, [$fb]                                     ; $6c80: $f0 $fb
	sbc [hl]                                         ; $6c82: $9e
	db $fd                                           ; $6c83: $fd
	ld l, [hl]                                       ; $6c84: $6e
	ld e, b                                          ; $6c85: $58
	ld h, d                                          ; $6c86: $62
	jr nz, jr_04b_6d06                               ; $6c87: $20 $7d

	ld e, [hl]                                       ; $6c89: $5e
	ld [hl], a                                       ; $6c8a: $77
	ldh a, [$7e]                                     ; $6c8b: $f0 $7e
	ret nz                                           ; $6c8d: $c0

	ld e, e                                          ; $6c8e: $5b
	or b                                             ; $6c8f: $b0
	sbc l                                            ; $6c90: $9d
	xor d                                            ; $6c91: $aa
	ld b, b                                          ; $6c92: $40
	ld e, d                                          ; $6c93: $5a
	ld [bc], a                                       ; $6c94: $02
	sbc l                                            ; $6c95: $9d
	rst $38                                          ; $6c96: $ff
	ld a, [$b278]                                    ; $6c97: $fa $78 $b2
	or $9b                                           ; $6c9a: $f6 $9b
	ldh a, [$ea]                                     ; $6c9c: $f0 $ea
	ld b, b                                          ; $6c9e: $40
	adc d                                            ; $6c9f: $8a
	ld a, e                                          ; $6ca0: $7b
	jp nc, $019d                                     ; $6ca1: $d2 $9d $01

	dec b                                            ; $6ca4: $05
	ld a, [$019e]                                    ; $6ca5: $fa $9e $01
	ld [hl], e                                       ; $6ca8: $73
	and h                                            ; $6ca9: $a4
	sbc l                                            ; $6caa: $9d
	ld bc, $671f                                     ; $6cab: $01 $1f $67
	cp [hl]                                          ; $6cae: $be
	sub a                                            ; $6caf: $97
	ld e, l                                          ; $6cb0: $5d
	ld a, [bc]                                       ; $6cb1: $0a
	ld d, l                                          ; $6cb2: $55
	xor a                                            ; $6cb3: $af
	ld d, l                                          ; $6cb4: $55
	ld a, [hl+]                                      ; $6cb5: $2a
	ld d, a                                          ; $6cb6: $57
	cp $f9                                           ; $6cb7: $fe $f9
	ld a, a                                          ; $6cb9: $7f
	ldh [c], a                                       ; $6cba: $e2
	sbc [hl]                                         ; $6cbb: $9e
	ld a, a                                          ; $6cbc: $7f
	ld [hl], e                                       ; $6cbd: $73
	ld l, [hl]                                       ; $6cbe: $6e
	ld h, e                                          ; $6cbf: $63
	ldh a, [rSVBK]                                   ; $6cc0: $f0 $70
	rst JumpTable                                          ; $6cc2: $c7
	ld e, e                                          ; $6cc3: $5b
	ldh a, [$9c]                                     ; $6cc4: $f0 $9c
	ld a, [$f7ec]                                    ; $6cc6: $fa $ec $f7
	ld l, a                                          ; $6cc9: $6f
	ldh a, [$9e]                                     ; $6cca: $f0 $9e
	rra                                              ; $6ccc: $1f
	ld [hl], b                                       ; $6ccd: $70
	and $94                                          ; $6cce: $e6 $94
	ld c, d                                          ; $6cd0: $4a
	db $ed                                           ; $6cd1: $ed
	inc bc                                           ; $6cd2: $03
	ld h, d                                          ; $6cd3: $62
	xor a                                            ; $6cd4: $af
	rst $38                                          ; $6cd5: $ff
	ld a, a                                          ; $6cd6: $7f
	xor l                                            ; $6cd7: $ad
	inc e                                            ; $6cd8: $1c
	ld [bc], a                                       ; $6cd9: $02
	db $fc                                           ; $6cda: $fc
	ld a, b                                          ; $6cdb: $78
	xor d                                            ; $6cdc: $aa
	rst $38                                          ; $6cdd: $ff
	sbc e                                            ; $6cde: $9b
	xor [hl]                                         ; $6cdf: $ae
	rst JumpTable                                          ; $6ce0: $c7
	ld c, e                                          ; $6ce1: $4b
	cp a                                             ; $6ce2: $bf
	ld a, e                                          ; $6ce3: $7b
	inc a                                            ; $6ce4: $3c
	sbc e                                            ; $6ce5: $9b
	ld l, d                                          ; $6ce6: $6a
	nop                                              ; $6ce7: $00
	jr c, @+$32                                      ; $6ce8: $38 $30

	ld d, l                                          ; $6cea: $55
	ld a, a                                          ; $6ceb: $7f
	ld a, [hl]                                       ; $6cec: $7e
	rla                                              ; $6ced: $17
	ld h, l                                          ; $6cee: $65
	ld b, b                                          ; $6cef: $40
	sbc l                                            ; $6cf0: $9d
	cp d                                             ; $6cf1: $ba
	ld d, a                                          ; $6cf2: $57
	halt                                             ; $6cf3: $76
	add b                                            ; $6cf4: $80
	ld h, e                                          ; $6cf5: $63
	ld e, h                                          ; $6cf6: $5c
	sbc h                                            ; $6cf7: $9c
	ld [hl], l                                       ; $6cf8: $75
	rst AddAOntoHL                                          ; $6cf9: $ef
	push de                                          ; $6cfa: $d5
	halt                                             ; $6cfb: $76
	sbc l                                            ; $6cfc: $9d
	ld l, b                                          ; $6cfd: $68
	sbc d                                            ; $6cfe: $9a
	rst $38                                          ; $6cff: $ff
	sbc e                                            ; $6d00: $9b
	push de                                          ; $6d01: $d5
	cp d                                             ; $6d02: $ba
	ld d, l                                          ; $6d03: $55
	ei                                               ; $6d04: $fb
	ld d, a                                          ; $6d05: $57

jr_04b_6d06:
	ldh [$79], a                                     ; $6d06: $e0 $79
	or [hl]                                          ; $6d08: $b6
	sbc [hl]                                         ; $6d09: $9e
	ld [$715a], a                                    ; $6d0a: $ea $5a $71
	ld [hl], d                                       ; $6d0d: $72
	adc b                                            ; $6d0e: $88

jr_04b_6d0f:
	ld a, e                                          ; $6d0f: $7b
	ret nc                                           ; $6d10: $d0

	ld d, a                                          ; $6d11: $57
	ldh a, [$9e]                                     ; $6d12: $f0 $9e
	adc d                                            ; $6d14: $8a
	ld a, e                                          ; $6d15: $7b
	db $fc                                           ; $6d16: $fc
	ld l, l                                          ; $6d17: $6d
	and l                                            ; $6d18: $a5
	cp $9e                                           ; $6d19: $fe $9e
	ld b, l                                          ; $6d1b: $45
	ld a, e                                          ; $6d1c: $7b
	sub h                                            ; $6d1d: $94
	ld a, a                                          ; $6d1e: $7f
	ldh a, [$9d]                                     ; $6d1f: $f0 $9d
	ld b, l                                          ; $6d21: $45

jr_04b_6d22:
	ld [bc], a                                       ; $6d22: $02
	ld sp, hl                                        ; $6d23: $f9
	sbc [hl]                                         ; $6d24: $9e
	ld d, h                                          ; $6d25: $54
	ld l, c                                          ; $6d26: $69
	jr jr_04b_6d22                                   ; $6d27: $18 $f9

	sbc h                                            ; $6d29: $9c
	dec d                                            ; $6d2a: $15
	cpl                                              ; $6d2b: $2f
	rra                                              ; $6d2c: $1f
	ld a, d                                          ; $6d2d: $7a
	ld e, b                                          ; $6d2e: $58
	ld e, e                                          ; $6d2f: $5b
	jr nc, jr_04b_6d0f                               ; $6d30: $30 $dd

	rst $38                                          ; $6d32: $ff
	ld e, e                                          ; $6d33: $5b
	ldh [$9c], a                                     ; $6d34: $e0 $9c
	ld b, b                                          ; $6d36: $40
	xor b                                            ; $6d37: $a8
	ld d, b                                          ; $6d38: $50
	ld d, e                                          ; $6d39: $53
	ret nc                                           ; $6d3a: $d0

	sbc h                                            ; $6d3b: $9c
	inc bc                                           ; $6d3c: $03
	rrca                                             ; $6d3d: $0f
	rla                                              ; $6d3e: $17
	ld [hl], d                                       ; $6d3f: $72
	adc [hl]                                         ; $6d40: $8e
	ld d, l                                          ; $6d41: $55
	nop                                              ; $6d42: $00
	sbc [hl]                                         ; $6d43: $9e
	ld e, a                                          ; $6d44: $5f
	ld d, [hl]                                       ; $6d45: $56
	ld h, b                                          ; $6d46: $60
	sbc h                                            ; $6d47: $9c
	ld a, [rIE]                                    ; $6d48: $fa $ff $ff
	halt                                             ; $6d4b: $76
	ld e, h                                          ; $6d4c: $5c
	ld e, a                                          ; $6d4d: $5f
	ld [hl], b                                       ; $6d4e: $70
	ld [hl], a                                       ; $6d4f: $77
	jr nc, jr_04b_6da9                               ; $6d50: $30 $57

	ldh a, [$7b]                                     ; $6d52: $f0 $7b
	cp $57                                           ; $6d54: $fe $57
	sub b                                            ; $6d56: $90
	sbc c                                            ; $6d57: $99
	xor d                                            ; $6d58: $aa
	ld d, a                                          ; $6d59: $57
	rst $38                                          ; $6d5a: $ff
	ld a, a                                          ; $6d5b: $7f
	rst $38                                          ; $6d5c: $ff
	ld a, a                                          ; $6d5d: $7f
	ld h, e                                          ; $6d5e: $63
	ldh a, [$9d]                                     ; $6d5f: $f0 $9d
	ld d, a                                          ; $6d61: $57
	cp a                                             ; $6d62: $bf
	ld [hl], b                                       ; $6d63: $70
	and b                                            ; $6d64: $a0
	sbc [hl]                                         ; $6d65: $9e
	xor [hl]                                         ; $6d66: $ae
	ld a, d                                          ; $6d67: $7a
	ld l, h                                          ; $6d68: $6c
	ld l, e                                          ; $6d69: $6b
	and b                                            ; $6d6a: $a0
	ld a, a                                          ; $6d6b: $7f
	ldh [c], a                                       ; $6d6c: $e2
	ld [hl], a                                       ; $6d6d: $77
	xor [hl]                                         ; $6d6e: $ae
	ld [hl], h                                       ; $6d6f: $74
	daa                                              ; $6d70: $27
	db $fd                                           ; $6d71: $fd
	ld c, h                                          ; $6d72: $4c
	nop                                              ; $6d73: $00
	rst SubAFromDE                                          ; $6d74: $df
	ld [hl], a                                       ; $6d75: $77
	sbc d                                            ; $6d76: $9a
	ld [hl], h                                       ; $6d77: $74
	ld b, h                                          ; $6d78: $44
	ld [hl], a                                       ; $6d79: $77
	ld b, h                                          ; $6d7a: $44
	ld b, a                                          ; $6d7b: $47
	call c, $dc77                                    ; $6d7c: $dc $77 $dc
	ld b, h                                          ; $6d7f: $44
	call c, Call_04b_7f77                            ; $6d80: $dc $77 $7f
	db $ec                                           ; $6d83: $ec
	ld [hl], e                                       ; $6d84: $73
	or $9d                                           ; $6d85: $f6 $9d
	ld b, h                                          ; $6d87: $44
	inc sp                                           ; $6d88: $33
	ld [hl], e                                       ; $6d89: $73
	db $eb                                           ; $6d8a: $eb
	ld a, e                                          ; $6d8b: $7b
	ldh [c], a                                       ; $6d8c: $e2
	sbc e                                            ; $6d8d: $9b
	ld h, [hl]                                       ; $6d8e: $66
	ld d, [hl]                                       ; $6d8f: $56
	ld h, e                                          ; $6d90: $63
	scf                                              ; $6d91: $37
	ld l, a                                          ; $6d92: $6f
	reti                                             ; $6d93: $d9


	sbc c                                            ; $6d94: $99
	ld h, [hl]                                       ; $6d95: $66
	ld d, l                                          ; $6d96: $55
	ld h, l                                          ; $6d97: $65
	ld d, l                                          ; $6d98: $55
	ld d, [hl]                                       ; $6d99: $56
	ld b, h                                          ; $6d9a: $44
	sbc $66                                          ; $6d9b: $de $66
	ld a, a                                          ; $6d9d: $7f
	ld sp, hl                                        ; $6d9e: $f9
	db $dd                                           ; $6d9f: $dd
	ld d, l                                          ; $6da0: $55
	sub d                                            ; $6da1: $92
	ld b, h                                          ; $6da2: $44

jr_04b_6da3:
	ld h, l                                          ; $6da3: $65
	ld d, l                                          ; $6da4: $55
	ld h, [hl]                                       ; $6da5: $66
	ld d, l                                          ; $6da6: $55
	inc sp                                           ; $6da7: $33
	ld d, l                                          ; $6da8: $55

jr_04b_6da9:
	ld d, a                                          ; $6da9: $57
	ld [hl], a                                       ; $6daa: $77
	ld [hl], l                                       ; $6dab: $75
	ld b, h                                          ; $6dac: $44
	ld h, l                                          ; $6dad: $65
	ld h, [hl]                                       ; $6dae: $66
	ld [hl], a                                       ; $6daf: $77
	or $9c                                           ; $6db0: $f6 $9c
	ld d, e                                          ; $6db2: $53
	inc sp                                           ; $6db3: $33
	scf                                              ; $6db4: $37
	db $dd                                           ; $6db5: $dd
	ld [hl], a                                       ; $6db6: $77
	rst SubAFromDE                                          ; $6db7: $df
	inc sp                                           ; $6db8: $33
	sbc l                                            ; $6db9: $9d
	ld h, [hl]                                       ; $6dba: $66
	ld h, e                                          ; $6dbb: $63
	rst GetHLinHL                                          ; $6dbc: $cf
	inc sp                                           ; $6dbd: $33
	ld b, e                                          ; $6dbe: $43
	adc c                                            ; $6dbf: $89
	jp c, $9eff                                      ; $6dc0: $da $ff $9e

	ld d, l                                          ; $6dc3: $55
	ld sp, hl                                        ; $6dc4: $f9
	db $db                                           ; $6dc5: $db
	rst $38                                          ; $6dc6: $ff
	sbc [hl]                                         ; $6dc7: $9e
	cp $4b                                           ; $6dc8: $fe $4b
	ldh a, [$9e]                                     ; $6dca: $f0 $9e
	xor d                                            ; $6dcc: $aa
	dec bc                                           ; $6dcd: $0b
	ldh a, [$9e]                                     ; $6dce: $f0 $9e
	xor a                                            ; $6dd0: $af
	ld c, e                                          ; $6dd1: $4b
	ldh a, [$9d]                                     ; $6dd2: $f0 $9d
	rst $38                                          ; $6dd4: $ff
	ld d, a                                          ; $6dd5: $57
	ld c, e                                          ; $6dd6: $4b
	ldh a, [$9e]                                     ; $6dd7: $f0 $9e
	rst $38                                          ; $6dd9: $ff
	inc bc                                           ; $6dda: $03
	ldh a, [$03]                                     ; $6ddb: $f0 $03
	ldh a, [$03]                                     ; $6ddd: $f0 $03
	ldh a, [$1f]                                     ; $6ddf: $f0 $1f
	ldh a, [$9d]                                     ; $6de1: $f0 $9d
	ld a, [$57d5]                                    ; $6de3: $fa $d5 $57
	ldh a, [$7f]                                     ; $6de6: $f0 $7f
	ldh a, [c]                                       ; $6de8: $f2
	sbc l                                            ; $6de9: $9d
	xor b                                            ; $6dea: $a8
	ld d, l                                          ; $6deb: $55
	ld d, a                                          ; $6dec: $57
	ldh a, [$7b]                                     ; $6ded: $f0 $7b
	inc sp                                           ; $6def: $33
	sbc l                                            ; $6df0: $9d
	ld b, d                                          ; $6df1: $42
	or l                                             ; $6df2: $b5
	ei                                               ; $6df3: $fb
	sbc l                                            ; $6df4: $9d
	rlca                                             ; $6df5: $07
	ld a, a                                          ; $6df6: $7f
	sbc $ff                                          ; $6df7: $de $ff
	sbc d                                            ; $6df9: $9a
	xor e                                            ; $6dfa: $ab
	ld d, l                                          ; $6dfb: $55
	ld h, b                                          ; $6dfc: $60
	ld hl, sp+$3f                                    ; $6dfd: $f8 $3f
	db $fc                                           ; $6dff: $fc
	sbc l                                            ; $6e00: $9d
	ldh a, [$fe]                                     ; $6e01: $f0 $fe
	ld l, [hl]                                       ; $6e03: $6e
	db $e3                                           ; $6e04: $e3
	sbc h                                            ; $6e05: $9c
	ld a, [hl+]                                      ; $6e06: $2a
	nop                                              ; $6e07: $00
	add b                                            ; $6e08: $80
	ld a, [$c19e]                                    ; $6e09: $fa $9e $c1
	ld [hl], a                                       ; $6e0c: $77
	ret nc                                           ; $6e0d: $d0

	sbc e                                            ; $6e0e: $9b
	ld d, [hl]                                       ; $6e0f: $56
	dec b                                            ; $6e10: $05
	jr z, jr_04b_6da3                                ; $6e11: $28 $90

	db $fd                                           ; $6e13: $fd
	sbc e                                            ; $6e14: $9b
	inc bc                                           ; $6e15: $03
	rrca                                             ; $6e16: $0f
	ld a, a                                          ; $6e17: $7f
	ld hl, sp+$5e                                    ; $6e18: $f8 $5e
	or $ff                                           ; $6e1a: $f6 $ff
	sbc c                                            ; $6e1c: $99
	ld a, [bc]                                       ; $6e1d: $0a
	ld d, l                                          ; $6e1e: $55
	ld a, [hl+]                                      ; $6e1f: $2a
	ld bc, $15aa                                     ; $6e20: $01 $aa $15
	or $9a                                           ; $6e23: $f6 $9a
	ld d, a                                          ; $6e25: $57
	xor d                                            ; $6e26: $aa
	ld d, l                                          ; $6e27: $55
	xor d                                            ; $6e28: $aa
	ld bc, $9af7                                     ; $6e29: $01 $f7 $9a
	ld l, $75                                        ; $6e2c: $2e $75
	xor d                                            ; $6e2e: $aa
	inc b                                            ; $6e2f: $04
	xor d                                            ; $6e30: $aa
	or $99                                           ; $6e31: $f6 $99
	add b                                            ; $6e33: $80
	ld d, h                                          ; $6e34: $54
	xor d                                            ; $6e35: $aa
	nop                                              ; $6e36: $00
	xor d                                            ; $6e37: $aa
	dec b                                            ; $6e38: $05
	push af                                          ; $6e39: $f5
	sbc l                                            ; $6e3a: $9d
	add b                                            ; $6e3b: $80
	rrca                                             ; $6e3c: $0f
	ld [hl], e                                       ; $6e3d: $73
	or b                                             ; $6e3e: $b0
	sbc l                                            ; $6e3f: $9d
	inc bc                                           ; $6e40: $03
	rra                                              ; $6e41: $1f
	ld l, a                                          ; $6e42: $6f
	ld h, b                                          ; $6e43: $60
	sbc l                                            ; $6e44: $9d
	inc bc                                           ; $6e45: $03
	ld a, a                                          ; $6e46: $7f
	ld l, [hl]                                       ; $6e47: $6e
	sub [hl]                                         ; $6e48: $96
	sbc h                                            ; $6e49: $9c
	ld hl, sp-$20                                    ; $6e4a: $f8 $e0
	call c, $9dfc                                    ; $6e4c: $dc $fc $9d
	db $fc                                           ; $6e4f: $fc
	db $f4                                           ; $6e50: $f4
	ld e, d                                          ; $6e51: $5a
	add [hl]                                         ; $6e52: $86
	cp $9a                                           ; $6e53: $fe $9a
	dec b                                            ; $6e55: $05
	ld a, [hl+]                                      ; $6e56: $2a
	nop                                              ; $6e57: $00
	rst $38                                          ; $6e58: $ff
	ld d, l                                          ; $6e59: $55
	ld e, e                                          ; $6e5a: $5b
	xor [hl]                                         ; $6e5b: $ae
	sbc h                                            ; $6e5c: $9c
	ld d, b                                          ; $6e5d: $50
	xor d                                            ; $6e5e: $aa
	ld bc, $f053                                     ; $6e5f: $01 $53 $f0
	rst $38                                          ; $6e62: $ff
	sbc [hl]                                         ; $6e63: $9e
	ld d, h                                          ; $6e64: $54
	ld c, e                                          ; $6e65: $4b
	ldh a, [rOCPD]                                   ; $6e66: $f0 $6b
	ret nc                                           ; $6e68: $d0

	sbc l                                            ; $6e69: $9d
	rrca                                             ; $6e6a: $0f
	rra                                              ; $6e6b: $1f
	ei                                               ; $6e6c: $fb
	sub [hl]                                         ; $6e6d: $96
	rra                                              ; $6e6e: $1f
	ld a, a                                          ; $6e6f: $7f
	ld [$8855], a                                    ; $6e70: $ea $55 $88
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	ccf                                              ; $6e75: $3f
	cp $73                                           ; $6e76: $fe $73
	sub b                                            ; $6e78: $90
	sbc [hl]                                         ; $6e79: $9e
	rrca                                             ; $6e7a: $0f
	ld [hl], d                                       ; $6e7b: $72
	di                                               ; $6e7c: $f3
	sbc c                                            ; $6e7d: $99
	ld [rRAMG], sp                                   ; $6e7e: $08 $00 $00
	ld a, [$4ef5]                                    ; $6e81: $fa $f5 $4e
	db $fd                                           ; $6e84: $fd
	sbc [hl]                                         ; $6e85: $9e
	ld d, c                                          ; $6e86: $51
	ld l, [hl]                                       ; $6e87: $6e
	db $e3                                           ; $6e88: $e3
	sbc d                                            ; $6e89: $9a
	inc bc                                           ; $6e8a: $03
	inc [hl]                                         ; $6e8b: $34
	adc b                                            ; $6e8c: $88
	db $10                                           ; $6e8d: $10
	jr nz, jr_04b_6eff                               ; $6e8e: $20 $6f

	pop hl                                           ; $6e90: $e1
	sub e                                            ; $6e91: $93
	cp d                                             ; $6e92: $ba
	ldh a, [$ab]                                     ; $6e93: $f0 $ab
	dec e                                            ; $6e95: $1d
	ld l, d                                          ; $6e96: $6a
	rst SubAFromBC                                          ; $6e97: $e7
	add a                                            ; $6e98: $87
	inc bc                                           ; $6e99: $03
	rrca                                             ; $6e9a: $0f
	xor a                                            ; $6e9b: $af
	ld bc, $7a0f                                     ; $6e9c: $01 $0f $7a
	push de                                          ; $6e9f: $d5
	sub h                                            ; $6ea0: $94
	sbc a                                            ; $6ea1: $9f
	ccf                                              ; $6ea2: $3f
	rst $38                                          ; $6ea3: $ff
	db $eb                                           ; $6ea4: $eb
	ld a, a                                          ; $6ea5: $7f
	ld a, [$e2f5]                                    ; $6ea6: $fa $f5 $e2
	ret z                                            ; $6ea9: $c8

	ld [hl], c                                       ; $6eaa: $71
	and h                                            ; $6eab: $a4
	call c, $94ff                                    ; $6eac: $dc $ff $94
	rst FarCall                                          ; $6eaf: $f7
	adc e                                            ; $6eb0: $8b
	dec de                                           ; $6eb1: $1b
	ld a, [hl+]                                      ; $6eb2: $2a
	ld e, l                                          ; $6eb3: $5d
	ld a, [hl+]                                      ; $6eb4: $2a
	inc b                                            ; $6eb5: $04
	ld a, [bc]                                       ; $6eb6: $0a
	and l                                            ; $6eb7: $a5
	ld [de], a                                       ; $6eb8: $12
	dec l                                            ; $6eb9: $2d
	db $dd                                           ; $6eba: $dd
	rst $38                                          ; $6ebb: $ff
	rst SubAFromDE                                          ; $6ebc: $df
	rst SubAFromDE                                          ; $6ebd: $df
	sub h                                            ; $6ebe: $94
	rst GetHLinHL                                          ; $6ebf: $cf
	jp $d1a0                                         ; $6ec0: $c3 $a0 $d1


	xor e                                            ; $6ec3: $ab
	ld e, l                                          ; $6ec4: $5d
	xor d                                            ; $6ec5: $aa
	ld d, l                                          ; $6ec6: $55
	adc b                                            ; $6ec7: $88
	ld d, b                                          ; $6ec8: $50
	rst GetHLinHL                                          ; $6ec9: $cf
	jp c, $94ff                                      ; $6eca: $da $ff $94

	ld c, $11                                        ; $6ecd: $0e $11
	xor d                                            ; $6ecf: $aa
	ret nc                                           ; $6ed0: $d0

	xor [hl]                                         ; $6ed1: $ae
	ld d, l                                          ; $6ed2: $55
	ld a, [hl+]                                      ; $6ed3: $2a
	ld d, h                                          ; $6ed4: $54
	ldh a, [$ec]                                     ; $6ed5: $f0 $ec
	pop af                                           ; $6ed7: $f1
	call c, $96ff                                    ; $6ed8: $dc $ff $96
	rst SubAFromDE                                          ; $6edb: $df
	add l                                            ; $6edc: $85
	xor [hl]                                         ; $6edd: $ae
	rla                                              ; $6ede: $17
	add d                                            ; $6edf: $82
	dec hl                                           ; $6ee0: $2b
	ld bc, $00d5                                     ; $6ee1: $01 $d5 $00
	halt                                             ; $6ee4: $76
	add [hl]                                         ; $6ee5: $86
	sub e                                            ; $6ee6: $93
	rst SubAFromHL                                          ; $6ee7: $d7
	cp [hl]                                          ; $6ee8: $be
	jr nz, jr_04b_6f4a                               ; $6ee9: $20 $5f

	push af                                          ; $6eeb: $f5
	cp [hl]                                          ; $6eec: $be
	ld d, h                                          ; $6eed: $54
	ldh [c], a                                       ; $6eee: $e2
	adc b                                            ; $6eef: $88
	ld d, b                                          ; $6ef0: $50
	ld [hl+], a                                      ; $6ef1: $22
	and b                                            ; $6ef2: $a0
	db $dd                                           ; $6ef3: $dd
	rst $38                                          ; $6ef4: $ff
	add b                                            ; $6ef5: $80
	ld [hl], a                                       ; $6ef6: $77
	xor a                                            ; $6ef7: $af

jr_04b_6ef8:
	ld e, l                                          ; $6ef8: $5d
	push de                                          ; $6ef9: $d5
	ld c, d                                          ; $6efa: $4a
	or h                                             ; $6efb: $b4
	ld b, b                                          ; $6efc: $40

Jump_04b_6efd:
	add c                                            ; $6efd: $81
	ld a, [hl+]                                      ; $6efe: $2a

jr_04b_6eff:
	ld d, d                                          ; $6eff: $52
	add l                                            ; $6f00: $85
	nop                                              ; $6f01: $00
	ldh [$fb], a                                     ; $6f02: $e0 $fb
	rst $38                                          ; $6f04: $ff
	cp $d5                                           ; $6f05: $fe $d5
	xor b                                            ; $6f07: $a8
	ld b, b                                          ; $6f08: $40
	ld e, [hl]                                       ; $6f09: $5e
	rst AddAOntoHL                                          ; $6f0a: $ef
	ld hl, sp+$5c                                    ; $6f0b: $f8 $5c
	or d                                             ; $6f0d: $b2
	ld d, h                                          ; $6f0e: $54
	add l                                            ; $6f0f: $85
	ld d, e                                          ; $6f10: $53
	ld bc, $ff1f                                     ; $6f11: $01 $1f $ff
	and e                                            ; $6f14: $a3
	add e                                            ; $6f15: $83
	rrca                                             ; $6f16: $0f
	ccf                                              ; $6f17: $3f
	ld a, b                                          ; $6f18: $78
	xor b                                            ; $6f19: $a8
	ccf                                              ; $6f1a: $3f
	ld a, [$39c4]                                    ; $6f1b: $fa $c4 $39
	jp nz, $a815                                     ; $6f1e: $c2 $15 $a8

	add h                                            ; $6f21: $84
	rst $38                                          ; $6f22: $ff
	rst $38                                          ; $6f23: $ff
	ccf                                              ; $6f24: $3f
	cp $fd                                           ; $6f25: $fe $fd
	db $eb                                           ; $6f27: $eb
	ld d, a                                          ; $6f28: $57
	ld a, d                                          ; $6f29: $7a
	rst SubAFromHL                                          ; $6f2a: $d7
	cp h                                             ; $6f2b: $bc
	db $10                                           ; $6f2c: $10
	ld b, b                                          ; $6f2d: $40
	and b                                            ; $6f2e: $a0
	ld b, b                                          ; $6f2f: $40
	add a                                            ; $6f30: $87
	xor d                                            ; $6f31: $aa
	sbc $ff                                          ; $6f32: $de $ff
	add c                                            ; $6f34: $81
	cp a                                             ; $6f35: $bf
	ld e, a                                          ; $6f36: $5f
	rst $38                                          ; $6f37: $ff
	ld hl, sp+$00                                    ; $6f38: $f8 $00
	adc [hl]                                         ; $6f3a: $8e
	nop                                              ; $6f3b: $00
	ld [bc], a                                       ; $6f3c: $02
	ld d, l                                          ; $6f3d: $55
	xor a                                            ; $6f3e: $af
	ld e, a                                          ; $6f3f: $5f
	ldh [c], a                                       ; $6f40: $e2
	xor c                                            ; $6f41: $a9
	rst $38                                          ; $6f42: $ff
	rst $38                                          ; $6f43: $ff
	db $fd                                           ; $6f44: $fd
	xor d                                            ; $6f45: $aa
	ld d, b                                          ; $6f46: $50
	and a                                            ; $6f47: $a7
	rra                                              ; $6f48: $1f
	rlca                                             ; $6f49: $07

jr_04b_6f4a:
	jr z, jr_04b_6fa1                                ; $6f4a: $28 $55

	xor d                                            ; $6f4c: $aa
	rst $38                                          ; $6f4d: $ff
	dec b                                            ; $6f4e: $05
	ld a, [$1404]                                    ; $6f4f: $fa $04 $14
	ret nz                                           ; $6f52: $c0

	ld a, e                                          ; $6f53: $7b
	daa                                              ; $6f54: $27
	rst SubAFromDE                                          ; $6f55: $df
	rst $38                                          ; $6f56: $ff
	ld a, a                                          ; $6f57: $7f
	xor h                                            ; $6f58: $ac
	sub a                                            ; $6f59: $97
	dec d                                            ; $6f5a: $15
	ld [$aec5], a                                    ; $6f5b: $ea $c5 $ae
	call nc, $0aa1                                   ; $6f5e: $d4 $a1 $0a
	sub l                                            ; $6f61: $95
	ld a, d                                          ; $6f62: $7a
	ei                                               ; $6f63: $fb
	ld a, c                                          ; $6f64: $79
	add hl, bc                                       ; $6f65: $09
	sub e                                            ; $6f66: $93
	ldh a, [$2a]                                     ; $6f67: $f0 $2a
	rst $38                                          ; $6f69: $ff
	call c, $aadf                                    ; $6f6a: $dc $df $aa
	nop                                              ; $6f6d: $00
	ld d, b                                          ; $6f6e: $50
	add b                                            ; $6f6f: $80
	dec b                                            ; $6f70: $05
	nop                                              ; $6f71: $00
	inc bc                                           ; $6f72: $03
	ld [hl], l                                       ; $6f73: $75
	add hl, hl                                       ; $6f74: $29
	ld a, [hl]                                       ; $6f75: $7e
	jr nz, jr_04b_6ef8                               ; $6f76: $20 $80

	cp b                                             ; $6f78: $b8
	rst $38                                          ; $6f79: $ff
	db $ec                                           ; $6f7a: $ec
	add e                                            ; $6f7b: $83
	ld a, a                                          ; $6f7c: $7f
	ld a, l                                          ; $6f7d: $7d
	xor e                                            ; $6f7e: $ab
	ld e, [hl]                                       ; $6f7f: $5e
	ld b, a                                          ; $6f80: $47
	rst $38                                          ; $6f81: $ff
	rst $38                                          ; $6f82: $ff
	db $fc                                           ; $6f83: $fc
	add b                                            ; $6f84: $80
	add b                                            ; $6f85: $80
	nop                                              ; $6f86: $00
	ld bc, $aef7                                     ; $6f87: $01 $f7 $ae
	ld d, l                                          ; $6f8a: $55
	ld h, d                                          ; $6f8b: $62
	push de                                          ; $6f8c: $d5
	sub d                                            ; $6f8d: $92
	push hl                                          ; $6f8e: $e5
	ld b, e                                          ; $6f8f: $43
	rst $38                                          ; $6f90: $ff
	rst $38                                          ; $6f91: $ff
	rst AddAOntoHL                                          ; $6f92: $ef
	rst SubAFromDE                                          ; $6f93: $df
	ld a, a                                          ; $6f94: $7f
	ld l, a                                          ; $6f95: $6f
	ld e, $80                                        ; $6f96: $1e $80
	cp [hl]                                          ; $6f98: $be
	ld hl, sp-$5a                                    ; $6f99: $f8 $a6
	ld e, h                                          ; $6f9b: $5c
	cp [hl]                                          ; $6f9c: $be
	dec d                                            ; $6f9d: $15
	xor e                                            ; $6f9e: $ab
	ld e, h                                          ; $6f9f: $5c
	ld h, a                                          ; $6fa0: $67

jr_04b_6fa1:
	rst $38                                          ; $6fa1: $ff
	ld sp, hl                                        ; $6fa2: $f9
	di                                               ; $6fa3: $f3
	ldh [$c0], a                                     ; $6fa4: $e0 $c0
	nop                                              ; $6fa6: $00
	inc bc                                           ; $6fa7: $03
	rst SubAFromDE                                          ; $6fa8: $df
	ld bc, $bf10                                     ; $6fa9: $01 $10 $bf
	ei                                               ; $6fac: $fb
	or $63                                           ; $6fad: $f6 $63
	ld d, $ba                                        ; $6faf: $16 $ba
	rst $38                                          ; $6fb1: $ff
	rst $38                                          ; $6fb2: $ff
	ld b, b                                          ; $6fb3: $40
	inc b                                            ; $6fb4: $04
	add hl, bc                                       ; $6fb5: $09
	rra                                              ; $6fb6: $1f
	sub c                                            ; $6fb7: $91
	cp a                                             ; $6fb8: $bf
	cp $3d                                           ; $6fb9: $fe $3d
	ld [hl], a                                       ; $6fbb: $77
	inc b                                            ; $6fbc: $04
	ld l, d                                          ; $6fbd: $6a
	and c                                            ; $6fbe: $a1
	sub a                                            ; $6fbf: $97
	ldh [$0c], a                                     ; $6fc0: $e0 $0c
	jp $ff8f                                         ; $6fc2: $c3 $8f $ff


	pop bc                                           ; $6fc5: $c1
	ld a, e                                          ; $6fc6: $7b

Jump_04b_6fc7:
	ld [hl], c                                       ; $6fc7: $71
	sub c                                            ; $6fc8: $91
	nop                                              ; $6fc9: $00
	push bc                                          ; $6fca: $c5
	adc d                                            ; $6fcb: $8a
	dec c                                            ; $6fcc: $0d
	ld e, $78                                        ; $6fcd: $1e $78
	ld [$8050], a                                    ; $6fcf: $ea $50 $80
	cp $fc                                           ; $6fd2: $fe $fc
	ldh a, [$e0]                                     ; $6fd4: $f0 $e0
	adc l                                            ; $6fd6: $8d
	cp $99                                           ; $6fd7: $fe $99
	ld [hl], h                                       ; $6fd9: $74
	add sp, $5d                                      ; $6fda: $e8 $5d
	xor d                                            ; $6fdc: $aa
	dec d                                            ; $6fdd: $15
	xor l                                            ; $6fde: $ad
	ld a, d                                          ; $6fdf: $7a
	and e                                            ; $6fe0: $a3
	add b                                            ; $6fe1: $80
	rlca                                             ; $6fe2: $07
	ld b, $1c                                        ; $6fe3: $06 $1c
	ld a, d                                          ; $6fe5: $7a
	ld [de], a                                       ; $6fe6: $12
	nop                                              ; $6fe7: $00
	inc bc                                           ; $6fe8: $03
	ld d, a                                          ; $6fe9: $57
	and d                                            ; $6fea: $a2
	db $e4                                           ; $6feb: $e4
	ld c, d                                          ; $6fec: $4a
	ld h, a                                          ; $6fed: $67
	xor d                                            ; $6fee: $aa
	ld d, [hl]                                       ; $6fef: $56
	and h                                            ; $6ff0: $a4
	ldh [$f0], a                                     ; $6ff1: $e0 $f0
	dec de                                           ; $6ff3: $1b
	ccf                                              ; $6ff4: $3f
	ld a, a                                          ; $6ff5: $7f
	ld a, a                                          ; $6ff6: $7f
	ld [$7100], sp                                   ; $6ff7: $08 $00 $71
	ret nz                                           ; $6ffa: $c0

	inc h                                            ; $6ffb: $24
	ccf                                              ; $6ffc: $3f
	ld [hl], a                                       ; $6ffd: $77
	cpl                                              ; $6ffe: $2f
	sub c                                            ; $6fff: $91
	ld l, d                                          ; $7000: $6a
	ld a, a                                          ; $7001: $7f
	ld hl, $df9e                                     ; $7002: $21 $9e $df
	sbc $ff                                          ; $7005: $de $ff
	sbc d                                            ; $7007: $9a
	ccf                                              ; $7008: $3f
	rra                                              ; $7009: $1f
	xor a                                            ; $700a: $af
	db $db                                           ; $700b: $db
	ccf                                              ; $700c: $3f
	halt                                             ; $700d: $76
	sub $9e                                          ; $700e: $d6 $9e
	cp a                                             ; $7010: $bf
	reti                                             ; $7011: $d9


	rst $38                                          ; $7012: $ff
	sub h                                            ; $7013: $94
	ld a, d                                          ; $7014: $7a
	ld l, c                                          ; $7015: $69
	rst $38                                          ; $7016: $ff
	rst $38                                          ; $7017: $ff
	ld bc, $01ea                                     ; $7018: $01 $ea $01
	ld b, b                                          ; $701b: $40
	ldh [$fc], a                                     ; $701c: $e0 $fc
	db $fc                                           ; $701e: $fc
	ld a, e                                          ; $701f: $7b
	rst FarCall                                          ; $7020: $f7
	rst $38                                          ; $7021: $ff
	sub l                                            ; $7022: $95
	cp h                                             ; $7023: $bc
	ld e, e                                          ; $7024: $5b
	db $dd                                           ; $7025: $dd
	cp a                                             ; $7026: $bf
	rra                                              ; $7027: $1f
	ld c, a                                          ; $7028: $4f
	and h                                            ; $7029: $a4
	ld d, h                                          ; $702a: $54
	nop                                              ; $702b: $00
	adc h                                            ; $702c: $8c
	ld [hl], a                                       ; $702d: $77
	jp c, $1b91                                      ; $702e: $da $91 $1b

	ld bc, $e454                                     ; $7031: $01 $54 $e4
	sbc e                                            ; $7034: $9b
	ld d, l                                          ; $7035: $55
	cp e                                             ; $7036: $bb
	ld d, l                                          ; $7037: $55
	add e                                            ; $7038: $83
	or b                                             ; $7039: $b0
	ld [bc], a                                       ; $703a: $02
	dec de                                           ; $703b: $1b
	xor $be                                          ; $703c: $ee $be
	sbc $ff                                          ; $703e: $de $ff
	add h                                            ; $7040: $84
	rrca                                             ; $7041: $0f
	cp l                                             ; $7042: $bd
	sub b                                            ; $7043: $90
	pop de                                           ; $7044: $d1
	and a                                            ; $7045: $a7
	ld l, c                                          ; $7046: $69
	ldh a, [$c8]                                     ; $7047: $f0 $c8
	or b                                             ; $7049: $b0
	nop                                              ; $704a: $00
	ld h, b                                          ; $704b: $60
	ld h, b                                          ; $704c: $60
	ret c                                            ; $704d: $d8

	cp [hl]                                          ; $704e: $be
	rst $38                                          ; $704f: $ff
	ld a, a                                          ; $7050: $7f
	ld c, a                                          ; $7051: $4f
	pop de                                           ; $7052: $d1
	xor e                                            ; $7053: $ab
	ld b, c                                          ; $7054: $41
	or [hl]                                          ; $7055: $b6
	rst $38                                          ; $7056: $ff
	jr c, @-$28                                      ; $7057: $38 $d6

	sbc b                                            ; $7059: $98
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	ld a, e                                          ; $705c: $7b
	pop hl                                           ; $705d: $e1
	add b                                            ; $705e: $80
	rst SubAFromBC                                          ; $705f: $e7
	nop                                              ; $7060: $00
	scf                                              ; $7061: $37
	push af                                          ; $7062: $f5
	ld [hl], $41                                     ; $7063: $36 $41
	sub b                                            ; $7065: $90
	ld e, l                                          ; $7066: $5d
	ld [hl], l                                       ; $7067: $75
	ld a, [hl+]                                      ; $7068: $2a
	ld b, [hl]                                       ; $7069: $46
	nop                                              ; $706a: $00
	db $ec                                           ; $706b: $ec
	rst $38                                          ; $706c: $ff
	rst AddAOntoHL                                          ; $706d: $ef
	and d                                            ; $706e: $a2
	add b                                            ; $706f: $80
	add b                                            ; $7070: $80
	sub c                                            ; $7071: $91
	ld d, d                                          ; $7072: $52
	xor e                                            ; $7073: $ab
	sub b                                            ; $7074: $90
	ld a, [de]                                       ; $7075: $1a
	dec d                                            ; $7076: $15
	ld d, a                                          ; $7077: $57
	ld c, d                                          ; $7078: $4a
	db $eb                                           ; $7079: $eb
	rlca                                             ; $707a: $07
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	pop hl                                           ; $707d: $e1
	add b                                            ; $707e: $80
	rst AddAOntoHL                                          ; $707f: $ef
	nop                                              ; $7080: $00
	ldh [$fc], a                                     ; $7081: $e0 $fc
	and [hl]                                         ; $7083: $a6
	xor h                                            ; $7084: $ac
	ld h, b                                          ; $7085: $60
	cp a                                             ; $7086: $bf
	ld b, [hl]                                       ; $7087: $46
	dec b                                            ; $7088: $05
	adc a                                            ; $7089: $8f
	and l                                            ; $708a: $a5
	ld hl, sp+$03                                    ; $708b: $f8 $03
	rra                                              ; $708d: $1f
	ldh [$f2], a                                     ; $708e: $e0 $f2
	rst $38                                          ; $7090: $ff
	ccf                                              ; $7091: $3f
	ld a, a                                          ; $7092: $7f
	add a                                            ; $7093: $87
	dec de                                           ; $7094: $1b
	ret c                                            ; $7095: $d8

	ld [$0085], sp                                   ; $7096: $08 $85 $00
	ld d, l                                          ; $7099: $55
	xor $78                                          ; $709a: $ee $78
	ldh [rTAC], a                                    ; $709c: $e0 $07
	rst SubAFromDE                                          ; $709e: $df
	ld a, a                                          ; $709f: $7f
	sbc $ff                                          ; $70a0: $de $ff
	sub d                                            ; $70a2: $92
	ld l, d                                          ; $70a3: $6a
	ld d, a                                          ; $70a4: $57
	xor d                                            ; $70a5: $aa
	sub l                                            ; $70a6: $95
	db $eb                                           ; $70a7: $eb
	ld [hl], c                                       ; $70a8: $71
	xor b                                            ; $70a9: $a8
	ldh a, [c]                                       ; $70aa: $f2
	add b                                            ; $70ab: $80
	nop                                              ; $70ac: $00
	rlca                                             ; $70ad: $07
	rst $38                                          ; $70ae: $ff
	db $f4                                           ; $70af: $f4
	ld a, e                                          ; $70b0: $7b
	ld l, l                                          ; $70b1: $6d
	sub [hl]                                         ; $70b2: $96
	or l                                             ; $70b3: $b5
	ld e, $fd                                        ; $70b4: $1e $fd
	ld c, b                                          ; $70b6: $48
	dec de                                           ; $70b7: $1b
	dec a                                            ; $70b8: $3d
	ld a, $7b                                        ; $70b9: $3e $7b
	rra                                              ; $70bb: $1f
	sbc $ff                                          ; $70bc: $de $ff
	rst SubAFromDE                                          ; $70be: $df
	ld hl, sp-$6b                                    ; $70bf: $f8 $95
	reti                                             ; $70c1: $d9


	rst $38                                          ; $70c2: $ff
	ld d, l                                          ; $70c3: $55
	rst $38                                          ; $70c4: $ff
	ld e, a                                          ; $70c5: $5f
	rrca                                             ; $70c6: $0f
	jp Jump_04b_75c3                                 ; $70c7: $c3 $c3 $75


	ld [hl+], a                                      ; $70ca: $22
	db $dd                                           ; $70cb: $dd
	rst $38                                          ; $70cc: $ff
	sub e                                            ; $70cd: $93

jr_04b_70ce:
	ccf                                              ; $70ce: $3f
	inc a                                            ; $70cf: $3c
	jr nz, jr_04b_70ce                               ; $70d0: $20 $fc

	adc a                                            ; $70d2: $8f
	rst SubAFromDE                                          ; $70d3: $df
	xor a                                            ; $70d4: $af
	ld a, d                                          ; $70d5: $7a
	rst GetHLinHL                                          ; $70d6: $cf
	cp d                                             ; $70d7: $ba
	ld d, h                                          ; $70d8: $54
	add d                                            ; $70d9: $82
	db $dd                                           ; $70da: $dd
	rst $38                                          ; $70db: $ff
	sbc [hl]                                         ; $70dc: $9e
	ldh a, [$fe]                                     ; $70dd: $f0 $fe
	sub a                                            ; $70df: $97
	call nz, $9d88                                   ; $70e0: $c4 $88 $9d
	and [hl]                                         ; $70e3: $a6
	inc b                                            ; $70e4: $04
	call c, $1f76                                    ; $70e5: $dc $76 $1f
	ld [hl], b                                       ; $70e8: $70
	add [hl]                                         ; $70e9: $86
	add b                                            ; $70ea: $80
	inc bc                                           ; $70eb: $03
	dec bc                                           ; $70ec: $0b
	rst $38                                          ; $70ed: $ff
	or b                                             ; $70ee: $b0
	ld d, l                                          ; $70ef: $55
	ld bc, $22af                                     ; $70f0: $01 $af $22
	sub l                                            ; $70f3: $95
	ld [hl-], a                                      ; $70f4: $32
	ld d, c                                          ; $70f5: $51
	inc c                                            ; $70f6: $0c
	cp [hl]                                          ; $70f7: $be
	cp $ff                                           ; $70f8: $fe $ff
	rst SubAFromDE                                          ; $70fa: $df
	ld b, e                                          ; $70fb: $43
	rst GetHLinHL                                          ; $70fc: $cf
	rst $38                                          ; $70fd: $ff
	nop                                              ; $70fe: $00
	ld d, c                                          ; $70ff: $51
	adc a                                            ; $7100: $8f
	rra                                              ; $7101: $1f
	rra                                              ; $7102: $1f
	dec b                                            ; $7103: $05
	inc e                                            ; $7104: $1c
	xor a                                            ; $7105: $af
	nop                                              ; $7106: $00
	jr nz, jr_04b_7179                               ; $7107: $20 $70

	ldh [$9e], a                                     ; $7109: $e0 $9e
	ldh [$7b], a                                     ; $710b: $e0 $7b
	db $db                                           ; $710d: $db
	sub d                                            ; $710e: $92
	ld d, l                                          ; $710f: $55
	db $eb                                           ; $7110: $eb
	ld d, l                                          ; $7111: $55
	db $fc                                           ; $7112: $fc
	ld hl, sp+$25                                    ; $7113: $f8 $25
	set 7, a                                         ; $7115: $cb $ff
	inc bc                                           ; $7117: $03
	nop                                              ; $7118: $00
	ld [bc], a                                       ; $7119: $02
	inc bc                                           ; $711a: $03

jr_04b_711b:
	rlca                                             ; $711b: $07
	ld a, d                                          ; $711c: $7a
	db $dd                                           ; $711d: $dd
	add l                                            ; $711e: $85
	ld d, d                                          ; $711f: $52
	cp h                                             ; $7120: $bc
	rst JumpTable                                          ; $7121: $c7
	ld [$1710], sp                                   ; $7122: $08 $10 $17
	xor e                                            ; $7125: $ab
	rst $38                                          ; $7126: $ff
	adc b                                            ; $7127: $88

jr_04b_7128:
	inc bc                                           ; $7128: $03
	jr nc, jr_04b_711b                               ; $7129: $30 $f0

	ldh [$e0], a                                     ; $712b: $e0 $e0
	rst $38                                          ; $712d: $ff
	rst $38                                          ; $712e: $ff
	and b                                            ; $712f: $a0
	jr z, jr_04b_7128                                ; $7130: $28 $f6

	xor d                                            ; $7132: $aa
	ld e, l                                          ; $7133: $5d
	inc e                                            ; $7134: $1c
	and e                                            ; $7135: $a3
	ret c                                            ; $7136: $d8

	rra                                              ; $7137: $1f
	rst JumpTable                                          ; $7138: $c7
	ld a, d                                          ; $7139: $7a
	db $e3                                           ; $713a: $e3
	add d                                            ; $713b: $82
	ret nz                                           ; $713c: $c0

	ret c                                            ; $713d: $d8

	rst $38                                          ; $713e: $ff
	dec d                                            ; $713f: $15
	ld [$b2ef], sp                                   ; $7140: $08 $ef $b2
	ld d, e                                          ; $7143: $53
	ld a, [bc]                                       ; $7144: $0a
	nop                                              ; $7145: $00
	ld h, [hl]                                       ; $7146: $66
	rst $38                                          ; $7147: $ff
	rst FarCall                                          ; $7148: $f7
	sub b                                            ; $7149: $90
	inc c                                            ; $714a: $0c
	inc c                                            ; $714b: $0c
	nop                                              ; $714c: $00
	inc b                                            ; $714d: $04
	dec c                                            ; $714e: $0d
	ld l, d                                          ; $714f: $6a
	ld a, [bc]                                       ; $7150: $0a
	ld b, a                                          ; $7151: $47
	dec hl                                           ; $7152: $2b
	ld d, a                                          ; $7153: $57
	ldh [$7e], a                                     ; $7154: $e0 $7e
	xor e                                            ; $7156: $ab
	nop                                              ; $7157: $00
	rra                                              ; $7158: $1f
	ld a, d                                          ; $7159: $7a
	nop                                              ; $715a: $00
	ld a, b                                          ; $715b: $78
	ld [$6295], a                                    ; $715c: $ea $95 $62
	ld c, c                                          ; $715f: $49
	xor e                                            ; $7160: $ab
	rst FarCall                                          ; $7161: $f7
	ei                                               ; $7162: $fb
	db $10                                           ; $7163: $10
	ld a, [$c075]                                    ; $7164: $fa $75 $c0
	rst FarCall                                          ; $7167: $f7
	db $dd                                           ; $7168: $dd
	rst $38                                          ; $7169: $ff
	rst $38                                          ; $716a: $ff
	add h                                            ; $716b: $84
	ld a, [hl+]                                      ; $716c: $2a
	ld [hl], c                                       ; $716d: $71
	and h                                            ; $716e: $a4
	ld d, a                                          ; $716f: $57
	and d                                            ; $7170: $a2
	dec a                                            ; $7171: $3d
	xor d                                            ; $7172: $aa
	ld d, l                                          ; $7173: $55
	ld [hl], b                                       ; $7174: $70
	ld hl, sp-$05                                    ; $7175: $f8 $fb
	rst $38                                          ; $7177: $ff
	rst $38                                          ; $7178: $ff

jr_04b_7179:
	ret nz                                           ; $7179: $c0

	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	ld [$ca74], a                                    ; $717c: $ea $74 $ca
	db $d3                                           ; $717f: $d3

Jump_04b_7180:
	xor d                                            ; $7180: $aa
	ld [hl], b                                       ; $7181: $70
	xor d                                            ; $7182: $aa
	ld d, h                                          ; $7183: $54
	nop                                              ; $7184: $00
	ret z                                            ; $7185: $c8

	db $fd                                           ; $7186: $fd
	ld [hl], e                                       ; $7187: $73
	ld d, b                                          ; $7188: $50
	sub a                                            ; $7189: $97
	sub l                                            ; $718a: $95
	xor [hl]                                         ; $718b: $ae
	sub h                                            ; $718c: $94
	ld a, [bc]                                       ; $718d: $0a
	and c                                            ; $718e: $a1
	inc d                                            ; $718f: $14
	and b                                            ; $7190: $a0
	nop                                              ; $7191: $00
	ld [hl], a                                       ; $7192: $77
	inc bc                                           ; $7193: $03
	sbc [hl]                                         ; $7194: $9e
	ld e, $fe                                        ; $7195: $1e $fe
	sbc d                                            ; $7197: $9a
	push de                                          ; $7198: $d5
	cp e                                             ; $7199: $bb
	ld a, [hl]                                       ; $719a: $7e
	rlca                                             ; $719b: $07
	xor b                                            ; $719c: $a8
	ld a, e                                          ; $719d: $7b
	sub l                                            ; $719e: $95
	ld [hl], a                                       ; $719f: $77
	ld de, $97fd                                     ; $71a0: $11 $fd $97
	db $dd                                           ; $71a3: $dd
	rst $38                                          ; $71a4: $ff
	db $fd                                           ; $71a5: $fd
	ld a, d                                          ; $71a6: $7a
	sbc [hl]                                         ; $71a7: $9e
	ld c, d                                          ; $71a8: $4a
	and l                                            ; $71a9: $a5
	ld b, b                                          ; $71aa: $40
	sbc $ff                                          ; $71ab: $de $ff
	ld a, l                                          ; $71ad: $7d
	ldh a, [c]                                       ; $71ae: $f2
	sub h                                            ; $71af: $94
	cp a                                             ; $71b0: $bf
	ld [$6f00], sp                                   ; $71b1: $08 $00 $6f
	cp a                                             ; $71b4: $bf
	cp a                                             ; $71b5: $bf
	dec sp                                           ; $71b6: $3b
	ld d, l                                          ; $71b7: $55
	adc d                                            ; $71b8: $8a
	ld d, h                                          ; $71b9: $54
	ld a, [hl+]                                      ; $71ba: $2a
	db $db                                           ; $71bb: $db
	rst $38                                          ; $71bc: $ff
	sub l                                            ; $71bd: $95
	rrca                                             ; $71be: $0f
	ld bc, $ab5d                                     ; $71bf: $01 $5d $ab
	ld d, l                                          ; $71c2: $55
	xor e                                            ; $71c3: $ab
	ld d, h                                          ; $71c4: $54
	ld a, [bc]                                       ; $71c5: $0a
	dec b                                            ; $71c6: $05
	ld c, $da                                        ; $71c7: $0e $da
	rst $38                                          ; $71c9: $ff
	sub [hl]                                         ; $71ca: $96
	rst FarCall                                          ; $71cb: $f7
	push de                                          ; $71cc: $d5
	cp [hl]                                          ; $71cd: $be
	ld e, a                                          ; $71ce: $5f
	ld [$8316], a                                    ; $71cf: $ea $16 $83
	ld l, b                                          ; $71d2: $68
	sub l                                            ; $71d3: $95
	db $dd                                           ; $71d4: $dd
	rst $38                                          ; $71d5: $ff
	sub e                                            ; $71d6: $93
	ldh [$0e], a                                     ; $71d7: $e0 $0e
	sbc $e8                                          ; $71d9: $de $e8
	ld [hl], l                                       ; $71db: $75

jr_04b_71dc:
	rst AddAOntoHL                                          ; $71dc: $ef
	push af                                          ; $71dd: $f5
	ld d, $ab                                        ; $71de: $16 $ab
	ldh [c], a                                       ; $71e0: $e2
	ld d, h                                          ; $71e1: $54
	adc c                                            ; $71e2: $89
	ld [hl], a                                       ; $71e3: $77
	pop af                                           ; $71e4: $f1
	sub e                                            ; $71e5: $93
	nop                                              ; $71e6: $00
	dec e                                            ; $71e7: $1d
	rst $38                                          ; $71e8: $ff
	ld h, a                                          ; $71e9: $67
	ld d, b                                          ; $71ea: $50
	ld hl, sp+$21                                    ; $71eb: $f8 $21
	and d                                            ; $71ed: $a2
	rlca                                             ; $71ee: $07
	ld a, [hl+]                                      ; $71ef: $2a
	ld d, l                                          ; $71f0: $55
	jr z, @-$20                                      ; $71f1: $28 $de

	rst $38                                          ; $71f3: $ff
	ld a, [hl]                                       ; $71f4: $7e
	sbc a                                            ; $71f5: $9f
	sbc $ff                                          ; $71f6: $de $ff
	sub [hl]                                         ; $71f8: $96
	ld h, l                                          ; $71f9: $65
	cp $df                                           ; $71fa: $fe $df
	cp [hl]                                          ; $71fc: $be
	ld d, l                                          ; $71fd: $55
	xor d                                            ; $71fe: $aa
	ld d, l                                          ; $71ff: $55
	ldh a, [$9b]                                     ; $7200: $f0 $9b
	ld l, e                                          ; $7202: $6b
	xor a                                            ; $7203: $af
	sub a                                            ; $7204: $97
	ld d, a                                          ; $7205: $57
	cp d                                             ; $7206: $ba
	dec b                                            ; $7207: $05
	ld l, l                                          ; $7208: $6d
	ld e, d                                          ; $7209: $5a
	xor h                                            ; $720a: $ac
	ld b, e                                          ; $720b: $43
	add [hl]                                         ; $720c: $86
	ld a, c                                          ; $720d: $79
	inc sp                                           ; $720e: $33
	ld a, d                                          ; $720f: $7a
	cpl                                              ; $7210: $2f
	adc [hl]                                         ; $7211: $8e
	db $ec                                           ; $7212: $ec
	ld [hl], b                                       ; $7213: $70
	ld d, c                                          ; $7214: $51
	xor e                                            ; $7215: $ab
	add b                                            ; $7216: $80
	ld b, c                                          ; $7217: $41
	ld [bc], a                                       ; $7218: $02
	sbc c                                            ; $7219: $99
	ret nz                                           ; $721a: $c0

	sub h                                            ; $721b: $94
	rst $38                                          ; $721c: $ff
	rst $38                                          ; $721d: $ff
	ld a, a                                          ; $721e: $7f
	ld a, $fc                                        ; $721f: $3e $fc
	cp $3e                                           ; $7221: $fe $3e
	ld a, b                                          ; $7223: $78
	sbc c                                            ; $7224: $99
	sbc d                                            ; $7225: $9a
	ld c, d                                          ; $7226: $4a
	inc d                                            ; $7227: $14
	adc c                                            ; $7228: $89
	ld b, c                                          ; $7229: $41
	cp [hl]                                          ; $722a: $be
	ld [hl], a                                       ; $722b: $77
	ld [hl], b                                       ; $722c: $70
	sub e                                            ; $722d: $93
	jp $3e36                                         ; $722e: $c3 $36 $3e


	ld bc, $ee00                                     ; $7231: $01 $00 $ee
	ld d, a                                          ; $7234: $57
	add d                                            ; $7235: $82
	ld bc, $5b88                                     ; $7236: $01 $88 $5b
	db $fd                                           ; $7239: $fd
	ld [hl], a                                       ; $723a: $77
	or b                                             ; $723b: $b0
	sbc h                                            ; $723c: $9c
	cp $77                                           ; $723d: $fe $77
	add h                                            ; $723f: $84
	ld a, e                                          ; $7240: $7b
	jr nz, jr_04b_71dc                               ; $7241: $20 $99

	rst FarCall                                          ; $7243: $f7
	inc hl                                           ; $7244: $23
	ld d, a                                          ; $7245: $57
	ld a, [de]                                       ; $7246: $1a
	push de                                          ; $7247: $d5
	ld b, e                                          ; $7248: $43
	ld [hl], a                                       ; $7249: $77
	sub b                                            ; $724a: $90
	ld a, [hl]                                       ; $724b: $7e
	ld [de], a                                       ; $724c: $12
	rst $38                                          ; $724d: $ff
	sub [hl]                                         ; $724e: $96
	ld b, e                                          ; $724f: $43
	xor d                                            ; $7250: $aa
	sub $ff                                          ; $7251: $d6 $ff
	inc b                                            ; $7253: $04
	xor e                                            ; $7254: $ab
	ld d, l                                          ; $7255: $55
	xor b                                            ; $7256: $a8
	ld d, l                                          ; $7257: $55
	ld l, [hl]                                       ; $7258: $6e
	ldh a, [c]                                       ; $7259: $f2
	sub h                                            ; $725a: $94
	db $10                                           ; $725b: $10
	cp b                                             ; $725c: $b8
	push de                                          ; $725d: $d5
	cp e                                             ; $725e: $bb
	ld d, l                                          ; $725f: $55
	ld bc, $11aa                                     ; $7260: $01 $aa $11
	ld bc, $7bb6                                     ; $7263: $01 $b6 $7b
	ld a, e                                          ; $7266: $7b
	ret nc                                           ; $7267: $d0

	rst $38                                          ; $7268: $ff
	sbc l                                            ; $7269: $9d
	jr jr_04b_7285                                   ; $726a: $18 $19

	ld a, e                                          ; $726c: $7b
	db $eb                                           ; $726d: $eb
	sbc e                                            ; $726e: $9b
	nop                                              ; $726f: $00
	dec c                                            ; $7270: $0d
	ld [$f808], sp                                   ; $7271: $08 $08 $f8
	ld [hl], a                                       ; $7274: $77
	ldh a, [$9b]                                     ; $7275: $f0 $9b
	dec de                                           ; $7277: $1b
	add hl, bc                                       ; $7278: $09
	jr @+$12                                         ; $7279: $18 $10

	db $fc                                           ; $727b: $fc
	ld a, e                                          ; $727c: $7b
	ld a, [$f07b]                                    ; $727d: $fa $7b $f0
	sbc e                                            ; $7280: $9b
	rst $38                                          ; $7281: $ff
	cp c                                             ; $7282: $b9
	xor c                                            ; $7283: $a9
	db $10                                           ; $7284: $10

jr_04b_7285:
	ld h, e                                          ; $7285: $63
	ldh a, [$fe]                                     ; $7286: $f0 $fe
	ld a, l                                          ; $7288: $7d
	ld [$229c], a                                    ; $7289: $ea $9c $22
	jr nz, @+$22                                     ; $728c: $20 $20

	push af                                          ; $728e: $f5
	sbc e                                            ; $728f: $9b
	ret z                                            ; $7290: $c8

	ld h, h                                          ; $7291: $64
	ld b, b                                          ; $7292: $40
	ld b, b                                          ; $7293: $40
	push af                                          ; $7294: $f5
	sbc e                                            ; $7295: $9b
	ld bc, $0690                                     ; $7296: $01 $90 $06
	add b                                            ; $7299: $80
	ei                                               ; $729a: $fb
	ld [hl], e                                       ; $729b: $73
	ld sp, hl                                        ; $729c: $f9
	sbc d                                            ; $729d: $9a
	ret nz                                           ; $729e: $c0

	ld e, $f7                                        ; $729f: $1e $f7
	ldh a, [c]                                       ; $72a1: $f2
	inc sp                                           ; $72a2: $33
	db $fd                                           ; $72a3: $fd
	sbc d                                            ; $72a4: $9a
	ldh [$ec], a                                     ; $72a5: $e0 $ec
	ld [hl], a                                       ; $72a7: $77
	scf                                              ; $72a8: $37
	rlca                                             ; $72a9: $07
	ld a, d                                          ; $72aa: $7a
	and h                                            ; $72ab: $a4
	ld a, a                                          ; $72ac: $7f
	xor $9c                                          ; $72ad: $ee $9c
	ld a, h                                          ; $72af: $7c
	jr z, @+$05                                      ; $72b0: $28 $03

	db $fc                                           ; $72b2: $fc
	sbc h                                            ; $72b3: $9c
	ld hl, sp-$10                                    ; $72b4: $f8 $f0
	ld a, [$d66b]                                    ; $72b6: $fa $6b $d6
	sbc [hl]                                         ; $72b9: $9e
	db $fc                                           ; $72ba: $fc
	ld sp, hl                                        ; $72bb: $f9
	sbc [hl]                                         ; $72bc: $9e
	ld c, h                                          ; $72bd: $4c
	di                                               ; $72be: $f3
	sbc l                                            ; $72bf: $9d
	dec h                                            ; $72c0: $25
	ld a, $6f                                        ; $72c1: $3e $6f
	or a                                             ; $72c3: $b7
	sbc [hl]                                         ; $72c4: $9e
	ld [bc], a                                       ; $72c5: $02
	ld a, [$0296]                                    ; $72c6: $fa $96 $02
	ld d, l                                          ; $72c9: $55
	ld [hl+], a                                      ; $72ca: $22
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	ld c, $75                                        ; $72cd: $0e $75
	dec d                                            ; $72cf: $15
	ld hl, sp+$77                                    ; $72d0: $f8 $77
	ld a, [hl]                                       ; $72d2: $7e
	add b                                            ; $72d3: $80
	ld bc, $001f                                     ; $72d4: $01 $1f $00
	cp h                                             ; $72d7: $bc
	ld d, l                                          ; $72d8: $55
	xor b                                            ; $72d9: $a8
	rla                                              ; $72da: $17
	ld d, l                                          ; $72db: $55
	and e                                            ; $72dc: $a3
	ld b, c                                          ; $72dd: $41
	ld de, $0003                                     ; $72de: $11 $03 $00
	inc bc                                           ; $72e1: $03
	ld bc, $5dab                                     ; $72e2: $01 $ab $5d
	cp [hl]                                          ; $72e5: $be
	xor $04                                          ; $72e6: $ee $04
	add d                                            ; $72e8: $82
	db $ed                                           ; $72e9: $ed
	add hl, de                                       ; $72ea: $19
	ldh [$f4], a                                     ; $72eb: $e0 $f4
	cp $ed                                           ; $72ed: $fe $ed
	rst $38                                          ; $72ef: $ff
	ld a, h                                          ; $72f0: $7c
	ld [bc], a                                       ; $72f1: $02
	add [hl]                                         ; $72f2: $86
	add c                                            ; $72f3: $81
	ret nz                                           ; $72f4: $c0

	ld hl, sp-$01                                    ; $72f5: $f8 $ff
	rst FarCall                                          ; $72f7: $f7
	ld a, [de]                                       ; $72f8: $1a
	and l                                            ; $72f9: $a5
	ret c                                            ; $72fa: $d8

	ld b, l                                          ; $72fb: $45
	cpl                                              ; $72fc: $2f

Call_04b_72fd:
	sbc [hl]                                         ; $72fd: $9e
	dec l                                            ; $72fe: $2d

Call_04b_72ff:
	ld d, [hl]                                       ; $72ff: $56
	ldh [$08], a                                     ; $7300: $e0 $08
	jr nz, jr_04b_7307                               ; $7302: $20 $03

	rra                                              ; $7304: $1f
	ld a, a                                          ; $7305: $7f
	rst $38                                          ; $7306: $ff

jr_04b_7307:
	cp a                                             ; $7307: $bf
	add c                                            ; $7308: $81
	ld a, [de]                                       ; $7309: $1a
	db $dd                                           ; $730a: $dd
	ld l, d                                          ; $730b: $6a
	push de                                          ; $730c: $d5
	xor d                                            ; $730d: $aa
	ld d, l                                          ; $730e: $55
	xor d                                            ; $730f: $aa
	nop                                              ; $7310: $00
	rlca                                             ; $7311: $07
	ld a, c                                          ; $7312: $79
	ret nc                                           ; $7313: $d0

	sbc $ff                                          ; $7314: $de $ff
	sbc e                                            ; $7316: $9b
	reti                                             ; $7317: $d9


	xor l                                            ; $7318: $ad
	ld d, h                                          ; $7319: $54
	xor e                                            ; $731a: $ab
	ld a, d                                          ; $731b: $7a
	add b                                            ; $731c: $80
	sbc e                                            ; $731d: $9b
	xor e                                            ; $731e: $ab
	ld [hl], b                                       ; $731f: $70
	ld hl, sp-$04                                    ; $7320: $f8 $fc
	ld [hl], l                                       ; $7322: $75
	ld c, l                                          ; $7323: $4d
	add b                                            ; $7324: $80
	cp $35                                           ; $7325: $fe $35
	ld d, e                                          ; $7327: $53
	rst GetHLinHL                                          ; $7328: $cf
	ld e, d                                          ; $7329: $5a
	inc [hl]                                         ; $732a: $34
	db $db                                           ; $732b: $db
	pop bc                                           ; $732c: $c1
	ld c, b                                          ; $732d: $48
	rst GetHLinHL                                          ; $732e: $cf
	rst $38                                          ; $732f: $ff
	scf                                              ; $7330: $37
	ccf                                              ; $7331: $3f
	sbc a                                            ; $7332: $9f
	and $fe                                          ; $7333: $e6 $fe
	add a                                            ; $7335: $87
	ld c, d                                          ; $7336: $4a
	ld e, h                                          ; $7337: $5c
	inc hl                                           ; $7338: $23
	ld [$874d], sp                                   ; $7339: $08 $4d $87
	nop                                              ; $733c: $00
	ld l, [hl]                                       ; $733d: $6e
	cp l                                             ; $733e: $bd
	rst $38                                          ; $733f: $ff
	db $fc                                           ; $7340: $fc
	ldh a, [$30]                                     ; $7341: $f0 $30
	ld a, b                                          ; $7343: $78
	adc l                                            ; $7344: $8d
	rst $38                                          ; $7345: $ff
	sbc h                                            ; $7346: $9c
	rst SubAFromDE                                          ; $7347: $df
	ld d, l                                          ; $7348: $55
	push de                                          ; $7349: $d5
	ld l, d                                          ; $734a: $6a
	add $ba                                          ; $734b: $c6 $ba
	ld [hl], l                                       ; $734d: $75
	rst AddAOntoHL                                          ; $734e: $ef
	cp a                                             ; $734f: $bf
	rst $38                                          ; $7350: $ff
	ldh [$c0], a                                     ; $7351: $e0 $c0
	ld bc, $8b41                                     ; $7353: $01 $41 $8b
	inc e                                            ; $7356: $1c
	ldh [$cd], a                                     ; $7357: $e0 $cd
	ld l, a                                          ; $7359: $6f
	dec l                                            ; $735a: $2d
	ei                                               ; $735b: $fb
	halt                                             ; $735c: $76
	rst JumpTable                                          ; $735d: $c7
	ld a, d                                          ; $735e: $7a
	jp nz, $357d                                     ; $735f: $c2 $7d $35

	ld a, [$3d7a]                                    ; $7362: $fa $7a $3d
	ld [hl], a                                       ; $7365: $77
	daa                                              ; $7366: $27
	halt                                             ; $7367: $76
	jp c, Jump_04b_5ef5                              ; $7368: $da $f5 $5e

	ld e, a                                          ; $736b: $5f
	db $fd                                           ; $736c: $fd
	sbc h                                            ; $736d: $9c
	jr nz, jr_04b_7392                               ; $736e: $20 $22

	ld b, $67                                        ; $7370: $06 $67
	or $fe                                           ; $7372: $f6 $fe
	sbc d                                            ; $7374: $9a
	jr jr_04b_737f                                   ; $7375: $18 $08

	ld bc, $cb09                                     ; $7377: $01 $09 $cb
	ld l, a                                          ; $737a: $6f
	ret                                              ; $737b: $c9


	sub a                                            ; $737c: $97
	inc bc                                           ; $737d: $03
	ld d, c                                          ; $737e: $51

jr_04b_737f:
	inc bc                                           ; $737f: $03
	rra                                              ; $7380: $1f
	rra                                              ; $7381: $1f
	rrca                                             ; $7382: $0f
	rrca                                             ; $7383: $0f
	rst SubAFromBC                                          ; $7384: $e7
	ld [hl], a                                       ; $7385: $77
	push af                                          ; $7386: $f5
	add b                                            ; $7387: $80
	dec b                                            ; $7388: $05
	ld a, [bc]                                       ; $7389: $0a
	ld e, $0e                                        ; $738a: $1e $0e
	ld h, b                                          ; $738c: $60
	nop                                              ; $738d: $00
	add b                                            ; $738e: $80
	jr nc, @-$6e                                     ; $738f: $30 $90

	ld a, [bc]                                       ; $7391: $0a

jr_04b_7392:
	rst SubAFromHL                                          ; $7392: $d7
	ld l, d                                          ; $7393: $6a
	ld d, a                                          ; $7394: $57
	dec bc                                           ; $7395: $0b
	ld b, b                                          ; $7396: $40
	ld h, b                                          ; $7397: $60
	ld a, h                                          ; $7398: $7c
	ld a, h                                          ; $7399: $7c
	ld a, [hl]                                       ; $739a: $7e
	rst $38                                          ; $739b: $ff
	rrca                                             ; $739c: $0f
	rra                                              ; $739d: $1f
	dec [hl]                                         ; $739e: $35
	dec a                                            ; $739f: $3d
	ld d, d                                          ; $73a0: $52
	ld bc, $0100                                     ; $73a1: $01 $00 $01
	ld [$08f8], sp                                   ; $73a4: $08 $f8 $08
	ld a, h                                          ; $73a7: $7c
	push bc                                          ; $73a8: $c5
	cp $91                                           ; $73a9: $fe $91
	ldh a, [$f8]                                     ; $73ab: $f0 $f8
	jr c, jr_04b_7400                                ; $73ad: $38 $51

	ld [$055b], sp                                   ; $73af: $08 $5b $05
	adc b                                            ; $73b2: $88
	db $10                                           ; $73b3: $10
	inc b                                            ; $73b4: $04
	add a                                            ; $73b5: $87
	ldh a, [$f0]                                     ; $73b6: $f0 $f0
	inc bc                                           ; $73b8: $03
	halt                                             ; $73b9: $76
	ld l, h                                          ; $73ba: $6c
	add a                                            ; $73bb: $87
	ret nc                                           ; $73bc: $d0

	dec b                                            ; $73bd: $05
	xor c                                            ; $73be: $a9
	ld e, c                                          ; $73bf: $59
	adc d                                            ; $73c0: $8a
	add hl, de                                       ; $73c1: $19
	dec sp                                           ; $73c2: $3b
	inc b                                            ; $73c3: $04
	ld l, a                                          ; $73c4: $6f
	ld a, a                                          ; $73c5: $7f
	ld a, [hl]                                       ; $73c6: $7e
	ld b, $10                                        ; $73c7: $06 $10
	ld [de], a                                       ; $73c9: $12
	ld [bc], a                                       ; $73ca: $02
	ld [bc], a                                       ; $73cb: $02
	cpl                                              ; $73cc: $2f
	ld d, [hl]                                       ; $73cd: $56
	xor e                                            ; $73ce: $ab
	ld d, a                                          ; $73cf: $57
	and e                                            ; $73d0: $a3
	ld b, $60                                        ; $73d1: $06 $60
	db $dd                                           ; $73d3: $dd
	db $dd                                           ; $73d4: $dd
	rst $38                                          ; $73d5: $ff
	sub e                                            ; $73d6: $93
	rra                                              ; $73d7: $1f
	ld h, c                                          ; $73d8: $61
	ld l, b                                          ; $73d9: $68
	ld l, b                                          ; $73da: $68
	ld d, b                                          ; $73db: $50
	xor d                                            ; $73dc: $aa
	ld h, l                                          ; $73dd: $65
	adc b                                            ; $73de: $88
	ld de, $0462                                     ; $73df: $11 $62 $04
	ld l, b                                          ; $73e2: $68
	db $dd                                           ; $73e3: $dd
	rst $38                                          ; $73e4: $ff
	sub e                                            ; $73e5: $93
	rst SubAFromDE                                          ; $73e6: $df
	rra                                              ; $73e7: $1f
	ld bc, $0400                                     ; $73e8: $01 $00 $04
	nop                                              ; $73eb: $00
	ld d, h                                          ; $73ec: $54
	adc b                                            ; $73ed: $88
	ld e, l                                          ; $73ee: $5d
	and d                                            ; $73ef: $a2
	inc b                                            ; $73f0: $04
	jr z, jr_04b_7469                                ; $73f1: $28 $76

	jp Jump_04b_5d7d                                 ; $73f3: $c3 $7d $5d


	sub e                                            ; $73f6: $93
	rst FarCall                                          ; $73f7: $f7
	rlca                                             ; $73f8: $07
	cpl                                              ; $73f9: $2f
	rlca                                             ; $73fa: $07
	nop                                              ; $73fb: $00
	xor b                                            ; $73fc: $a8
	db $dd                                           ; $73fd: $dd
	adc d                                            ; $73fe: $8a
	push de                                          ; $73ff: $d5

jr_04b_7400:
	ld a, [hl+]                                      ; $7400: $2a
	add b                                            ; $7401: $80
	ld hl, sp-$22                                    ; $7402: $f8 $de
	rst $38                                          ; $7404: $ff
	sub c                                            ; $7405: $91
	db $fd                                           ; $7406: $fd
	ld a, a                                          ; $7407: $7f
	rst FarCall                                          ; $7408: $f7
	add b                                            ; $7409: $80
	ret nz                                           ; $740a: $c0

	dec d                                            ; $740b: $15
	ld [hl+], a                                      ; $740c: $22
	ld d, l                                          ; $740d: $55
	add b                                            ; $740e: $80
	sub l                                            ; $740f: $95
	ld b, d                                          ; $7410: $42
	inc e                                            ; $7411: $1c
	ld bc, $74c3                                     ; $7412: $01 $c3 $74
	db $fd                                           ; $7415: $fd
	sub l                                            ; $7416: $95
	ldh [$bd], a                                     ; $7417: $e0 $bd
	cp $75                                           ; $7419: $fe $75
	xor e                                            ; $741b: $ab
	ld d, l                                          ; $741c: $55
	cp d                                             ; $741d: $ba
	add l                                            ; $741e: $85
	ld a, [bc]                                       ; $741f: $0a
	ld a, [hl]                                       ; $7420: $7e
	halt                                             ; $7421: $76
	sub e                                            ; $7422: $93
	ld a, h                                          ; $7423: $7c
	and l                                            ; $7424: $a5
	sbc [hl]                                         ; $7425: $9e
	dec d                                            ; $7426: $15
	ld a, d                                          ; $7427: $7a
	dec h                                            ; $7428: $25
	sbc d                                            ; $7429: $9a
	add b                                            ; $742a: $80
	rst SubAFromDE                                          ; $742b: $df
	rst SubAFromDE                                          ; $742c: $df
	add e                                            ; $742d: $83
	add b                                            ; $742e: $80
	ld a, e                                          ; $742f: $7b
	ld sp, hl                                        ; $7430: $f9
	sub h                                            ; $7431: $94
	nop                                              ; $7432: $00
	add hl, bc                                       ; $7433: $09
	adc e                                            ; $7434: $8b
	add e                                            ; $7435: $83
	add b                                            ; $7436: $80
	ld [bc], a                                       ; $7437: $02
	ld [bc], a                                       ; $7438: $02
	nop                                              ; $7439: $00
	ld b, $86                                        ; $743a: $06 $86
	add hl, bc                                       ; $743c: $09
	halt                                             ; $743d: $76
	rla                                              ; $743e: $17
	cp $7f                                           ; $743f: $fe $7f
	and e                                            ; $7441: $a3
	ld [hl], l                                       ; $7442: $75
	adc e                                            ; $7443: $8b
	sbc l                                            ; $7444: $9d
	sub [hl]                                         ; $7445: $96
	add [hl]                                         ; $7446: $86
	ld sp, hl                                        ; $7447: $f9
	ld a, c                                          ; $7448: $79
	call nc, $209a                                   ; $7449: $d4 $9a $20
	ld bc, $6361                                     ; $744c: $01 $61 $63
	ld h, c                                          ; $744f: $61
	ld l, c                                          ; $7450: $69
	sbc c                                            ; $7451: $99
	halt                                             ; $7452: $76
	call nz, $08df                                   ; $7453: $c4 $df $08
	sbc h                                            ; $7456: $9c
	ld [hl], c                                       ; $7457: $71
	ld h, b                                          ; $7458: $60
	ld h, b                                          ; $7459: $60
	ei                                               ; $745a: $fb
	ld [hl], e                                       ; $745b: $73
	ld sp, hl                                        ; $745c: $f9
	sbc h                                            ; $745d: $9c
	ld bc, $4070                                     ; $745e: $01 $70 $40
	ld l, c                                          ; $7461: $69
	ld h, h                                          ; $7462: $64
	sbc [hl]                                         ; $7463: $9e
	jr nz, jr_04b_74d7                               ; $7464: $20 $71

	ld l, h                                          ; $7466: $6c
	sbc h                                            ; $7467: $9c
	inc l                                            ; $7468: $2c

jr_04b_7469:
	ld l, b                                          ; $7469: $68
	ld a, b                                          ; $746a: $78
	ei                                               ; $746b: $fb

jr_04b_746c:
	sbc l                                            ; $746c: $9d
	ld a, b                                          ; $746d: $78
	jr jr_04b_746c                                   ; $746e: $18 $fc

	sbc l                                            ; $7470: $9d
	db $ec                                           ; $7471: $ec
	adc h                                            ; $7472: $8c
	ld l, c                                          ; $7473: $69
	sbc c                                            ; $7474: $99
	ld l, c                                          ; $7475: $69
	ld c, [hl]                                       ; $7476: $4e
	sbc [hl]                                         ; $7477: $9e
	ld d, b                                          ; $7478: $50
	rst AddAOntoHL                                          ; $7479: $ef
	sbc h                                            ; $747a: $9c
	inc c                                            ; $747b: $0c
	ld h, h                                          ; $747c: $64
	jr nc, jr_04b_74ee                               ; $747d: $30 $6f

	cp l                                             ; $747f: $bd
	ld [hl], h                                       ; $7480: $74
	jp hl                                            ; $7481: $e9


	sbc e                                            ; $7482: $9b
	dec d                                            ; $7483: $15
	ld e, [hl]                                       ; $7484: $5e
	dec h                                            ; $7485: $25
	ld d, $77                                        ; $7486: $16 $77
	ld [hl], l                                       ; $7488: $75
	sbc h                                            ; $7489: $9c
	ccf                                              ; $748a: $3f
	cpl                                              ; $748b: $2f
	ld c, $fc                                        ; $748c: $0e $fc
	sbc c                                            ; $748e: $99
	ld d, h                                          ; $748f: $54
	and d                                            ; $7490: $a2
	ld b, b                                          ; $7491: $40
	add e                                            ; $7492: $83
	ld a, h                                          ; $7493: $7c
	inc a                                            ; $7494: $3c
	ld a, c                                          ; $7495: $79
	ld b, [hl]                                       ; $7496: $46
	ld a, c                                          ; $7497: $79
	pop de                                           ; $7498: $d1
	sbc [hl]                                         ; $7499: $9e
	ccf                                              ; $749a: $3f
	ld e, c                                          ; $749b: $59
	dec de                                           ; $749c: $1b
	ld a, e                                          ; $749d: $7b
	ld d, l                                          ; $749e: $55
	ld a, e                                          ; $749f: $7b
	ld a, $fc                                        ; $74a0: $3e $fc
	ld l, l                                          ; $74a2: $6d
	dec h                                            ; $74a3: $25
	ld a, [$7f9d]                                    ; $74a4: $fa $9d $7f
	inc bc                                           ; $74a7: $03
	ld [hl], a                                       ; $74a8: $77
	ld l, b                                          ; $74a9: $68
	ld a, a                                          ; $74aa: $7f
	cp [hl]                                          ; $74ab: $be
	ld h, [hl]                                       ; $74ac: $66
	ccf                                              ; $74ad: $3f
	sbc h                                            ; $74ae: $9c
	ld l, e                                          ; $74af: $6b
	ld a, [de]                                       ; $74b0: $1a
	dec de                                           ; $74b1: $1b
	ld [hl], a                                       ; $74b2: $77
	inc hl                                           ; $74b3: $23
	sbc h                                            ; $74b4: $9c
	jr nc, jr_04b_751f                               ; $74b5: $30 $68

	ld l, e                                          ; $74b7: $6b
	ld [hl], e                                       ; $74b8: $73
	rra                                              ; $74b9: $1f
	sub e                                            ; $74ba: $93
	jr nz, jr_04b_751e                               ; $74bb: $20 $61

	ld l, b                                          ; $74bd: $68
	ld h, l                                          ; $74be: $65
	push hl                                          ; $74bf: $e5
	dec e                                            ; $74c0: $1d
	nop                                              ; $74c1: $00
	ret nz                                           ; $74c2: $c0

	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	ld h, h                                          ; $74c5: $64
	ld l, h                                          ; $74c6: $6c
	halt                                             ; $74c7: $76
	ld l, a                                          ; $74c8: $6f
	ld a, h                                          ; $74c9: $7c
	sub e                                            ; $74ca: $93
	add b                                            ; $74cb: $80
	sbc a                                            ; $74cc: $9f
	adc c                                            ; $74cd: $89
	sbc e                                            ; $74ce: $9b
	sub e                                            ; $74cf: $93
	ld a, c                                          ; $74d0: $79
	ld a, [hl]                                       ; $74d1: $7e
	ld a, a                                          ; $74d2: $7f
	ld a, a                                          ; $74d3: $7f
	ld bc, $9990                                     ; $74d4: $01 $90 $99

jr_04b_74d7:
	add hl, de                                       ; $74d7: $19
	inc bc                                           ; $74d8: $03
	ld bc, $a500                                     ; $74d9: $01 $00 $a5
	ld b, b                                          ; $74dc: $40
	ld [bc], a                                       ; $74dd: $02
	ld [hl+], a                                      ; $74de: $22
	ld b, a                                          ; $74df: $47
	rlca                                             ; $74e0: $07
	sub [hl]                                         ; $74e1: $96
	ld d, l                                          ; $74e2: $55
	ld h, b                                          ; $74e3: $60
	db $e3                                           ; $74e4: $e3
	rlca                                             ; $74e5: $07
	rlca                                             ; $74e6: $07
	ld [bc], a                                       ; $74e7: $02
	ldh [c], a                                       ; $74e8: $e2
	and $02                                          ; $74e9: $e6 $02
	ld a, a                                          ; $74eb: $7f

Call_04b_74ec:
	ld h, [hl]                                       ; $74ec: $66
	ld a, [hl]                                       ; $74ed: $7e

jr_04b_74ee:
	inc b                                            ; $74ee: $04
	ld a, [hl]                                       ; $74ef: $7e
	sbc h                                            ; $74f0: $9c
	ld a, a                                          ; $74f1: $7f
	cp $da                                           ; $74f2: $fe $da
	rra                                              ; $74f4: $1f
	sub [hl]                                         ; $74f5: $96
	ccf                                              ; $74f6: $3f
	ld h, b                                          ; $74f7: $60
	ccf                                              ; $74f8: $3f
	jr nz, jr_04b_74fb                               ; $74f9: $20 $00

jr_04b_74fb:
	ld d, $13                                        ; $74fb: $16 $13
	nop                                              ; $74fd: $00
	adc b                                            ; $74fe: $88

Call_04b_74ff:
	ld a, b                                          ; $74ff: $78
	xor e                                            ; $7500: $ab
	sub e                                            ; $7501: $93
	ldh [$e8], a                                     ; $7502: $e0 $e8
	inc c                                            ; $7504: $0c
	ld e, $06                                        ; $7505: $1e $06
	nop                                              ; $7507: $00
	sub b                                            ; $7508: $90
	nop                                              ; $7509: $00
	inc b                                            ; $750a: $04
	ld b, $14                                        ; $750b: $06 $14
	jr z, @+$76                                      ; $750d: $28 $74

	ld d, [hl]                                       ; $750f: $56
	sbc d                                            ; $7510: $9a
	inc bc                                           ; $7511: $03
	add hl, de                                       ; $7512: $19
	ld [$e0d0], sp                                   ; $7513: $08 $d0 $e0
	ld [hl], l                                       ; $7516: $75
	sbc a                                            ; $7517: $9f
	ld a, a                                          ; $7518: $7f
	sbc $9e                                          ; $7519: $de $9e
	add b                                            ; $751b: $80
	ld [hl], a                                       ; $751c: $77
	ld [de], a                                       ; $751d: $12

jr_04b_751e:
	ld a, [hl]                                       ; $751e: $7e

jr_04b_751f:
	ld [hl], l                                       ; $751f: $75
	ld l, a                                          ; $7520: $6f
	ld h, c                                          ; $7521: $61
	ld a, [hl]                                       ; $7522: $7e
	ld c, d                                          ; $7523: $4a
	ld a, l                                          ; $7524: $7d
	push hl                                          ; $7525: $e5
	ld l, b                                          ; $7526: $68
	or e                                             ; $7527: $b3
	ld [hl], l                                       ; $7528: $75
	sbc b                                            ; $7529: $98
	ld a, l                                          ; $752a: $7d
	dec hl                                           ; $752b: $2b
	sbc e                                            ; $752c: $9b
	rst SubAFromBC                                          ; $752d: $e7
	dec de                                           ; $752e: $1b
	dec de                                           ; $752f: $1b
	inc h                                            ; $7530: $24
	db $fd                                           ; $7531: $fd
	sbc e                                            ; $7532: $9b
	jr jr_04b_7539                                   ; $7533: $18 $04

	add b                                            ; $7535: $80
	ret c                                            ; $7536: $d8

	ld [hl], h                                       ; $7537: $74
	ld [hl], l                                       ; $7538: $75

jr_04b_7539:
	rst SubAFromDE                                          ; $7539: $df
	rst $38                                          ; $753a: $ff
	sbc [hl]                                         ; $753b: $9e
	rst AddAOntoHL                                          ; $753c: $ef
	di                                               ; $753d: $f3
	sbc h                                            ; $753e: $9c
	ldh [rIE], a                                     ; $753f: $e0 $ff
	rrca                                             ; $7541: $0f
	ld sp, hl                                        ; $7542: $f9
	sbc [hl]                                         ; $7543: $9e
	ld d, b                                          ; $7544: $50
	ld [hl], d                                       ; $7545: $72
	ret z                                            ; $7546: $c8

	ld a, a                                          ; $7547: $7f
	sub h                                            ; $7548: $94
	ldh [$c6], a                                     ; $7549: $e0 $c6
	sbc d                                            ; $754b: $9a
	ld c, $6e                                        ; $754c: $0e $6e
	ld b, a                                          ; $754e: $47
	jr c, jr_04b_75c1                                ; $754f: $38 $70

	ld h, c                                          ; $7551: $61
	ld b, d                                          ; $7552: $42
	db $fd                                           ; $7553: $fd
	sbc [hl]                                         ; $7554: $9e
	add [hl]                                         ; $7555: $86
	ld h, l                                          ; $7556: $65
	ld sp, $6073                                     ; $7557: $31 $73 $60
	sbc l                                            ; $755a: $9d
	jr nc, @+$28                                     ; $755b: $30 $26

	ld a, [$309e]                                    ; $755d: $fa $9e $30
	ld [hl], e                                       ; $7560: $73
	jp hl                                            ; $7561: $e9


	sbc l                                            ; $7562: $9d
	ld d, e                                          ; $7563: $53
	ld d, b                                          ; $7564: $50
	ld [hl], d                                       ; $7565: $72
	and [hl]                                         ; $7566: $a6
	ld [hl], a                                       ; $7567: $77
	call nc, $f96f                                   ; $7568: $d4 $6f $f9
	halt                                             ; $756b: $76
	rst JumpTable                                          ; $756c: $c7
	ld [hl], d                                       ; $756d: $72
	dec d                                            ; $756e: $15
	ld h, b                                          ; $756f: $60
	push hl                                          ; $7570: $e5
	ld l, e                                          ; $7571: $6b
	xor $6f                                          ; $7572: $ee $6f
	ld sp, hl                                        ; $7574: $f9
	ld a, l                                          ; $7575: $7d
	ld a, a                                          ; $7576: $7f
	ld a, a                                          ; $7577: $7f
	cp l                                             ; $7578: $bd
	ld l, d                                          ; $7579: $6a
	ld a, l                                          ; $757a: $7d
	ld a, e                                          ; $757b: $7b
	ld hl, $2283                                     ; $757c: $21 $83 $22
	dec d                                            ; $757f: $15
	ld l, d                                          ; $7580: $6a
	ld l, h                                          ; $7581: $6c
	ld a, $79                                        ; $7582: $3e $79
	cp h                                             ; $7584: $bc
	ld a, [hl]                                       ; $7585: $7e
	nop                                              ; $7586: $00
	jr nz, jr_04b_75b9                               ; $7587: $20 $30

	ld a, b                                          ; $7589: $78
	ld a, h                                          ; $758a: $7c
	cp $fe                                           ; $758b: $fe $fe
	rst $38                                          ; $758d: $ff
	di                                               ; $758e: $f3
	ld [hl], a                                       ; $758f: $77
	or e                                             ; $7590: $b3
	ld [hl], a                                       ; $7591: $77
	ld l, a                                          ; $7592: $6f
	ld a, d                                          ; $7593: $7a
	ld a, [hl]                                       ; $7594: $7e
	db $fd                                           ; $7595: $fd
	ccf                                              ; $7596: $3f
	ccf                                              ; $7597: $3f
	ld a, a                                          ; $7598: $7f
	ld a, a                                          ; $7599: $7f
	db $dd                                           ; $759a: $dd
	rst $38                                          ; $759b: $ff
	sbc l                                            ; $759c: $9d
	ld b, d                                          ; $759d: $42
	ld d, h                                          ; $759e: $54
	ld l, a                                          ; $759f: $6f
	cp c                                             ; $75a0: $b9
	sbc [hl]                                         ; $75a1: $9e
	inc a                                            ; $75a2: $3c
	ld l, e                                          ; $75a3: $6b
	ld [hl], h                                       ; $75a4: $74
	sbc l                                            ; $75a5: $9d
	ld a, b                                          ; $75a6: $78
	cp h                                             ; $75a7: $bc
	ld e, b                                          ; $75a8: $58
	ld h, a                                          ; $75a9: $67
	db $ed                                           ; $75aa: $ed
	sbc l                                            ; $75ab: $9d
	ld bc, $6b3f                                     ; $75ac: $01 $3f $6b
	ld d, e                                          ; $75af: $53
	ld l, a                                          ; $75b0: $6f
	rst SubAFromDE                                          ; $75b1: $df
	sbc l                                            ; $75b2: $9d
	ld b, b                                          ; $75b3: $40
	ld sp, hl                                        ; $75b4: $f9
	ld [hl], e                                       ; $75b5: $73
	rst JumpTable                                          ; $75b6: $c7
	sbc [hl]                                         ; $75b7: $9e
	db $10                                           ; $75b8: $10

jr_04b_75b9:
	ld l, l                                          ; $75b9: $6d
	db $f4                                           ; $75ba: $f4
	ld a, l                                          ; $75bb: $7d
	rst SubAFromBC                                          ; $75bc: $e7

jr_04b_75bd:
	sbc [hl]                                         ; $75bd: $9e
	ld a, [bc]                                       ; $75be: $0a
	ld l, e                                          ; $75bf: $6b
	ldh [c], a                                       ; $75c0: $e2

jr_04b_75c1:
	sbc [hl]                                         ; $75c1: $9e
	dec b                                            ; $75c2: $05

Jump_04b_75c3:
	ld l, e                                          ; $75c3: $6b
	ld h, d                                          ; $75c4: $62
	sub d                                            ; $75c5: $92
	and b                                            ; $75c6: $a0
	nop                                              ; $75c7: $00
	rrca                                             ; $75c8: $0f
	jr nz, jr_04b_75bd                               ; $75c9: $20 $f2

	jr nz, jr_04b_7605                               ; $75cb: $20 $38

	nop                                              ; $75cd: $00
	ret nz                                           ; $75ce: $c0

	ret nz                                           ; $75cf: $c0

	nop                                              ; $75d0: $00
	ld e, $01                                        ; $75d1: $1e $01
	ld a, c                                          ; $75d3: $79
	sub e                                            ; $75d4: $93
	ld a, h                                          ; $75d5: $7c
	sbc d                                            ; $75d6: $9a
	sbc d                                            ; $75d7: $9a
	push bc                                          ; $75d8: $c5
	add b                                            ; $75d9: $80
	nop                                              ; $75da: $00
	ld h, h                                          ; $75db: $64
	cpl                                              ; $75dc: $2f
	db $fd                                           ; $75dd: $fd
	ld a, h                                          ; $75de: $7c
	db $fd                                           ; $75df: $fd
	sbc c                                            ; $75e0: $99
	inc bc                                           ; $75e1: $03
	stop                                             ; $75e2: $10 $00
	ld c, $fe                                        ; $75e4: $0e $fe
	ld hl, sp+$7b                                    ; $75e6: $f8 $7b
	rla                                              ; $75e8: $17
	sbc [hl]                                         ; $75e9: $9e
	ldh [$6f], a                                     ; $75ea: $e0 $6f
	ld c, a                                          ; $75ec: $4f
	ld l, [hl]                                       ; $75ed: $6e
	ld e, a                                          ; $75ee: $5f
	ld a, l                                          ; $75ef: $7d
	ld a, a                                          ; $75f0: $7f
	sbc l                                            ; $75f1: $9d
	nop                                              ; $75f2: $00
	inc h                                            ; $75f3: $24
	ld l, l                                          ; $75f4: $6d
	ld d, e                                          ; $75f5: $53
	ld a, [hl]                                       ; $75f6: $7e
	ld l, [hl]                                       ; $75f7: $6e
	ld l, c                                          ; $75f8: $69
	xor l                                            ; $75f9: $ad
	rst FarCall                                          ; $75fa: $f7
	ld [hl], a                                       ; $75fb: $77
	inc e                                            ; $75fc: $1c
	sbc e                                            ; $75fd: $9b
	ld a, l                                          ; $75fe: $7d
	ld a, a                                          ; $75ff: $7f
	ld a, $e1                                        ; $7600: $3e $e1
	push af                                          ; $7602: $f5
	sbc [hl]                                         ; $7603: $9e
	sbc [hl]                                         ; $7604: $9e

jr_04b_7605:
	ld a, b                                          ; $7605: $78
	ld h, l                                          ; $7606: $65
	push af                                          ; $7607: $f5
	sbc [hl]                                         ; $7608: $9e
	add b                                            ; $7609: $80
	sbc $ff                                          ; $760a: $de $ff
	push af                                          ; $760c: $f5
	sbc e                                            ; $760d: $9b
	ld b, $ff                                        ; $760e: $06 $ff
	cp $fc                                           ; $7610: $fe $fc
	ld l, e                                          ; $7612: $6b
	ld b, e                                          ; $7613: $43
	ld [hl], a                                       ; $7614: $77
	sbc b                                            ; $7615: $98
	sbc e                                            ; $7616: $9b
	rlca                                             ; $7617: $07
	ld sp, hl                                        ; $7618: $f9
	ld sp, hl                                        ; $7619: $f9
	ld b, h                                          ; $761a: $44
	ld l, a                                          ; $761b: $6f
	add sp, -$63                                     ; $761c: $e8 $9d
	ld b, $bb                                        ; $761e: $06 $bb
	ld [hl], a                                       ; $7620: $77
	ret c                                            ; $7621: $d8

	sbc e                                            ; $7622: $9b
	ret c                                            ; $7623: $d8

	cp a                                             ; $7624: $bf
	db $fd                                           ; $7625: $fd
	ld [$d075], sp                                   ; $7626: $08 $75 $d0
	ld a, a                                          ; $7629: $7f
	inc [hl]                                         ; $762a: $34
	add [hl]                                         ; $762b: $86
	ld [bc], a                                       ; $762c: $02
	rst FarCall                                          ; $762d: $f7
	rst AddAOntoHL                                          ; $762e: $ef
	ld a, [bc]                                       ; $762f: $0a
	dec d                                            ; $7630: $15
	nop                                              ; $7631: $00
	dec bc                                           ; $7632: $0b
	cp d                                             ; $7633: $ba
	cp l                                             ; $7634: $bd
	ei                                               ; $7635: $fb
	db $fc                                           ; $7636: $fc
	ld bc, $190f                                     ; $7637: $01 $0f $19
	add hl, de                                       ; $763a: $19
	dec e                                            ; $763b: $1d
	ld a, a                                          ; $763c: $7f
	ccf                                              ; $763d: $3f
	ccf                                              ; $763e: $3f
	rst $38                                          ; $763f: $ff
	rst SubAFromDE                                          ; $7640: $df
	rst AddAOntoHL                                          ; $7641: $ef
	rst SubAFromDE                                          ; $7642: $df
	rst $38                                          ; $7643: $ff
	rst FarCall                                          ; $7644: $f7
	rst SubAFromHL                                          ; $7645: $d7
	rst $38                                          ; $7646: $ff
	sub a                                            ; $7647: $97
	jp nc, $c7e3                                     ; $7648: $d2 $e3 $c7

	rst $38                                          ; $764b: $ff
	rst SubAFromBC                                          ; $764c: $e7
	rst AddAOntoHL                                          ; $764d: $ef
	rst SubAFromDE                                          ; $764e: $df
	rst AddAOntoHL                                          ; $764f: $ef
	sbc $ff                                          ; $7650: $de $ff
	ld [hl], a                                       ; $7652: $77
	db $fc                                           ; $7653: $fc
	ld d, e                                          ; $7654: $53
	sbc b                                            ; $7655: $98
	ld e, e                                          ; $7656: $5b
	ld e, l                                          ; $7657: $5d
	or $73                                           ; $7658: $f6 $73
	db $dd                                           ; $765a: $dd
	sbc [hl]                                         ; $765b: $9e
	dec hl                                           ; $765c: $2b
	ld a, [$987f]                                    ; $765d: $fa $7f $98
	sbc l                                            ; $7660: $9d
	adc h                                            ; $7661: $8c
	or h                                             ; $7662: $b4
	ld [hl], a                                       ; $7663: $77
	add [hl]                                         ; $7664: $86
	ld h, c                                          ; $7665: $61
	ret nz                                           ; $7666: $c0

	sbc h                                            ; $7667: $9c
	ld b, $38                                        ; $7668: $06 $38
	ld c, b                                          ; $766a: $48
	ld h, [hl]                                       ; $766b: $66
	ld [de], a                                       ; $766c: $12
	ld l, a                                          ; $766d: $6f
	jp $039d                                         ; $766e: $c3 $9d $03


	rrca                                             ; $7671: $0f
	ld l, b                                          ; $7672: $68
	ld c, a                                          ; $7673: $4f
	ld l, e                                          ; $7674: $6b
	rst GetHLinHL                                          ; $7675: $cf
	sbc [hl]                                         ; $7676: $9e
	cp $76                                           ; $7677: $fe $76
	db $eb                                           ; $7679: $eb
	sbc [hl]                                         ; $767a: $9e
	ld b, $6a                                        ; $767b: $06 $6a
	ldh a, [$7b]                                     ; $767d: $f0 $7b
	inc h                                            ; $767f: $24
	sbc [hl]                                         ; $7680: $9e
	inc bc                                           ; $7681: $03
	ld h, h                                          ; $7682: $64
	or [hl]                                          ; $7683: $b6
	ld a, d                                          ; $7684: $7a
	jr jr_04b_76fb                                   ; $7685: $18 $74

	cp [hl]                                          ; $7687: $be
	ld h, $58                                        ; $7688: $26 $58
	ld c, l                                          ; $768a: $4d
	db $db                                           ; $768b: $db
	ld hl, sp-$62                                    ; $768c: $f8 $9e
	ld b, c                                          ; $768e: $41
	ld a, c                                          ; $768f: $79
	rst GetHLinHL                                          ; $7690: $cf
	ld [hl], a                                       ; $7691: $77
	ld e, a                                          ; $7692: $5f
	ld a, d                                          ; $7693: $7a
	and a                                            ; $7694: $a7
	ld [hl], e                                       ; $7695: $73
	cp a                                             ; $7696: $bf
	sbc c                                            ; $7697: $99
	rst $38                                          ; $7698: $ff
	ld a, a                                          ; $7699: $7f
	db $10                                           ; $769a: $10
	ld bc, $7c70                                     ; $769b: $01 $70 $7c
	db $fd                                           ; $769e: $fd
	sbc [hl]                                         ; $769f: $9e
	rrca                                             ; $76a0: $0f
	ld [hl], d                                       ; $76a1: $72
	add d                                            ; $76a2: $82
	sbc [hl]                                         ; $76a3: $9e
	db $fd                                           ; $76a4: $fd
	ld a, d                                          ; $76a5: $7a
	ld a, d                                          ; $76a6: $7a
	sbc c                                            ; $76a7: $99
	rrca                                             ; $76a8: $0f
	ld b, $03                                        ; $76a9: $06 $03
	nop                                              ; $76ab: $00
	ld [bc], a                                       ; $76ac: $02
	rst $38                                          ; $76ad: $ff
	ld a, b                                          ; $76ae: $78
	ld hl, $c37b                                     ; $76af: $21 $7b $c3
	halt                                             ; $76b2: $76
	ld a, a                                          ; $76b3: $7f
	sbc e                                            ; $76b4: $9b
	ret nz                                           ; $76b5: $c0

	adc a                                            ; $76b6: $8f
	db $10                                           ; $76b7: $10
	ld b, c                                          ; $76b8: $41
	ld [hl], l                                       ; $76b9: $75
	db $d3                                           ; $76ba: $d3
	ld a, a                                          ; $76bb: $7f
	rst AddAOntoHL                                          ; $76bc: $ef
	sbc l                                            ; $76bd: $9d
	ldh [$3e], a                                     ; $76be: $e0 $3e
	ld [hl], e                                       ; $76c0: $73
	ld c, h                                          ; $76c1: $4c
	sbc h                                            ; $76c2: $9c
	rst SubAFromBC                                          ; $76c3: $e7
	nop                                              ; $76c4: $00
	add [hl]                                         ; $76c5: $86
	db $dd                                           ; $76c6: $dd
	rst $38                                          ; $76c7: $ff
	sbc [hl]                                         ; $76c8: $9e
	ld sp, hl                                        ; $76c9: $f9
	ld a, e                                          ; $76ca: $7b
	ld l, d                                          ; $76cb: $6a
	sbc c                                            ; $76cc: $99
	rst $38                                          ; $76cd: $ff
	push af                                          ; $76ce: $f5
	db $fd                                           ; $76cf: $fd
	sbc $ef                                          ; $76d0: $de $ef
	ld e, a                                          ; $76d2: $5f
	ld a, d                                          ; $76d3: $7a
	pop bc                                           ; $76d4: $c1
	rst SubAFromDE                                          ; $76d5: $df
	ld c, $7c                                        ; $76d6: $0e $7c
	ld l, h                                          ; $76d8: $6c
	sub h                                            ; $76d9: $94
	ccf                                              ; $76da: $3f
	ld c, $00                                        ; $76db: $0e $00
	cp [hl]                                          ; $76dd: $be
	ld l, a                                          ; $76de: $6f
	cp $ff                                           ; $76df: $fe $ff
	rst $38                                          ; $76e1: $ff
	rst FarCall                                          ; $76e2: $f7
	ld l, c                                          ; $76e3: $69
	nop                                              ; $76e4: $00
	db $db                                           ; $76e5: $db
	rst $38                                          ; $76e6: $ff
	sub [hl]                                         ; $76e7: $96
	add d                                            ; $76e8: $82
	nop                                              ; $76e9: $00
	rst $38                                          ; $76ea: $ff
	ld a, l                                          ; $76eb: $7d
	rst $38                                          ; $76ec: $ff
	db $fd                                           ; $76ed: $fd
	rst $38                                          ; $76ee: $ff
	rst $38                                          ; $76ef: $ff
	ld c, e                                          ; $76f0: $4b
	ld l, e                                          ; $76f1: $6b
	ldh a, [$7f]                                     ; $76f2: $f0 $7f
	cp [hl]                                          ; $76f4: $be
	rst SubAFromDE                                          ; $76f5: $df
	sbc a                                            ; $76f6: $9f
	ld a, e                                          ; $76f7: $7b
	pop af                                           ; $76f8: $f1
	rst SubAFromDE                                          ; $76f9: $df
	rst $38                                          ; $76fa: $ff

jr_04b_76fb:
	halt                                             ; $76fb: $76
	ld e, l                                          ; $76fc: $5d
	db $dd                                           ; $76fd: $dd
	rst $38                                          ; $76fe: $ff
	sbc [hl]                                         ; $76ff: $9e
	ld a, a                                          ; $7700: $7f
	ld [hl], $00                                     ; $7701: $36 $00
	rst GetHLinHL                                          ; $7703: $cf
	ld d, l                                          ; $7704: $55
	sbc l                                            ; $7705: $9d
	ld b, [hl]                                       ; $7706: $46
	ld h, [hl]                                       ; $7707: $66
	sub $44                                          ; $7708: $d6 $44
	ld a, e                                          ; $770a: $7b
	db $f4                                           ; $770b: $f4
	sbc e                                            ; $770c: $9b
	ld h, h                                          ; $770d: $64
	ld b, h                                          ; $770e: $44
	ld b, h                                          ; $770f: $44
	ld b, [hl]                                       ; $7710: $46
	ld a, e                                          ; $7711: $7b
	rst FarCall                                          ; $7712: $f7
	sbc l                                            ; $7713: $9d
	ld h, [hl]                                       ; $7714: $66
	ld h, h                                          ; $7715: $64
	ld a, e                                          ; $7716: $7b
	db $fc                                           ; $7717: $fc
	db $dd                                           ; $7718: $dd
	ld h, [hl]                                       ; $7719: $66
	call c, $9a33                                    ; $771a: $dc $33 $9a
	inc [hl]                                         ; $771d: $34
	ld h, [hl]                                       ; $771e: $66
	ld [hl], a                                       ; $771f: $77
	ld [hl], h                                       ; $7720: $74
	ld h, h                                          ; $7721: $64
	call c, $9d33                                    ; $7722: $dc $33 $9d
	ld h, [hl]                                       ; $7725: $66
	ld b, a                                          ; $7726: $47
	sbc $77                                          ; $7727: $de $77
	ld l, a                                          ; $7729: $6f
	or $6b                                           ; $772a: $f6 $6b
	db $fc                                           ; $772c: $fc
	db $db                                           ; $772d: $db
	inc sp                                           ; $772e: $33
	ld h, e                                          ; $772f: $63
	or $9e                                           ; $7730: $f6 $9e
	ld [hl], $63                                     ; $7732: $36 $63
	or $df                                           ; $7734: $f6 $df
	ld h, [hl]                                       ; $7736: $66
	ld [bc], a                                       ; $7737: $02
	add [hl]                                         ; $7738: $86
	ldh [$a1], a                                     ; $7739: $e0 $a1
	reti                                             ; $773b: $d9


	rst $38                                          ; $773c: $ff
	reti                                             ; $773d: $d9


	add b                                            ; $773e: $80
	reti                                             ; $773f: $d9


	rst $38                                          ; $7740: $ff
	ld b, a                                          ; $7741: $47
	ldh [$03], a                                     ; $7742: $e0 $03

Call_04b_7744:
	ldh a, [$03]                                     ; $7744: $f0 $03
	ldh a, [$03]                                     ; $7746: $f0 $03
	ldh a, [$03]                                     ; $7748: $f0 $03
	ldh a, [$03]                                     ; $774a: $f0 $03
	ldh a, [$3b]                                     ; $774c: $f0 $3b
	ldh a, [$e0]                                     ; $774e: $f0 $e0
	and c                                            ; $7750: $a1
	call c, $9cff                                    ; $7751: $dc $ff $9c
	push de                                          ; $7754: $d5
	xor d                                            ; $7755: $aa
	push de                                          ; $7756: $d5
	ld d, d                                          ; $7757: $52
	ret nz                                           ; $7758: $c0

	sbc h                                            ; $7759: $9c
	ld d, l                                          ; $775a: $55
	xor d                                            ; $775b: $aa
	ld d, l                                          ; $775c: $55
	ld d, e                                          ; $775d: $53
	ldh [$27], a                                     ; $775e: $e0 $27

Call_04b_7760:
	ldh a, [$9c]                                     ; $7760: $f0 $9c
	ld [bc], a                                       ; $7762: $02
	dec b                                            ; $7763: $05
	ld [bc], a                                       ; $7764: $02
	db $dd                                           ; $7765: $dd
	rst $38                                          ; $7766: $ff
	sbc [hl]                                         ; $7767: $9e
	ld l, d                                          ; $7768: $6a
	ld l, e                                          ; $7769: $6b
	ldh a, [$9b]                                     ; $776a: $f0 $9b
	sub b                                            ; $776c: $90
	and b                                            ; $776d: $a0
	ld d, b                                          ; $776e: $50
	and b                                            ; $776f: $a0
	db $dd                                           ; $7770: $dd
	rst $38                                          ; $7771: $ff
	ld a, a                                          ; $7772: $7f
	ldh a, [c]                                       ; $7773: $f2
	ld e, e                                          ; $7774: $5b
	ret nc                                           ; $7775: $d0

	sub b                                            ; $7776: $90

jr_04b_7777:
	rst SubAFromDE                                          ; $7777: $df

Call_04b_7778:
	db $d3                                           ; $7778: $d3
	xor l                                            ; $7779: $ad
	ld d, h                                          ; $777a: $54
	dec hl                                           ; $777b: $2b
	add b                                            ; $777c: $80
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	jr nz, jr_04b_77ad                               ; $777f: $20 $2c

	ld d, b                                          ; $7781: $50
	xor e                                            ; $7782: $ab
	ld d, h                                          ; $7783: $54
	ld a, [hl+]                                      ; $7784: $2a
	ld d, h                                          ; $7785: $54
	ld l, a                                          ; $7786: $6f
	jp nz, $aa9e                                     ; $7787: $c2 $9e $aa

	ld e, e                                          ; $778a: $5b
	add b                                            ; $778b: $80
	sbc [hl]                                         ; $778c: $9e
	ld a, [$f04b]                                    ; $778d: $fa $4b $f0
	ld [hl], a                                       ; $7790: $77
	jp nz, $f01b                                     ; $7791: $c2 $1b $f0

	sbc [hl]                                         ; $7794: $9e
	db $fd                                           ; $7795: $fd
	ld [hl], a                                       ; $7796: $77
	ldh a, [$7b]                                     ; $7797: $f0 $7b
	or b                                             ; $7799: $b0
	ld h, a                                          ; $779a: $67
	ldh a, [rPCM34]                                  ; $779b: $f0 $77
	ldh [c], a                                       ; $779d: $e2
	ld h, e                                          ; $779e: $63
	sub d                                            ; $779f: $92
	rst $38                                          ; $77a0: $ff
	sbc [hl]                                         ; $77a1: $9e
	db $fd                                           ; $77a2: $fd
	ld [hl], a                                       ; $77a3: $77
	ldh a, [$9e]                                     ; $77a4: $f0 $9e
	ld d, c                                          ; $77a6: $51
	ld a, e                                          ; $77a7: $7b
	ld h, l                                          ; $77a8: $65
	ld a, e                                          ; $77a9: $7b
	ld h, h                                          ; $77aa: $64
	sbc e                                            ; $77ab: $9b
	dec d                                            ; $77ac: $15

jr_04b_77ad:
	ld a, [bc]                                       ; $77ad: $0a
	dec b                                            ; $77ae: $05
	inc hl                                           ; $77af: $23
	ldh [$a1], a                                     ; $77b0: $e0 $a1
	sub h                                            ; $77b2: $94
	xor d                                            ; $77b3: $aa
	add b                                            ; $77b4: $80
	ret z                                            ; $77b5: $c8

	ldh [$e1], a                                     ; $77b6: $e0 $e1
	ldh [$f3], a                                     ; $77b8: $e0 $f3
	add d                                            ; $77ba: $82
	add b                                            ; $77bb: $80
	call c, $dcfc                                    ; $77bc: $dc $fc $dc
	rst $38                                          ; $77bf: $ff
	ld [hl], a                                       ; $77c0: $77
	ld d, [hl]                                       ; $77c1: $56
	sbc e                                            ; $77c2: $9b
	add b                                            ; $77c3: $80
	inc bc                                           ; $77c4: $03
	daa                                              ; $77c5: $27
	ld [bc], a                                       ; $77c6: $02
	db $fd                                           ; $77c7: $fd
	sbc l                                            ; $77c8: $9d
	jp Jump_04b_6fc7                                 ; $77c9: $c3 $c7 $6f


	ldh a, [$9c]                                     ; $77cc: $f0 $9c
	nop                                              ; $77ce: $00
	pop bc                                           ; $77cf: $c1
	di                                               ; $77d0: $f3
	db $fc                                           ; $77d1: $fc
	sbc l                                            ; $77d2: $9d
	jp Jump_04b_77f3                                 ; $77d3: $c3 $f3 $77


	ldh a, [hDisp1_WY]                                     ; $77d6: $f0 $95
	ld bc, $3800                                     ; $77d8: $01 $00 $38
	add h                                            ; $77db: $84
	rst $38                                          ; $77dc: $ff
	rlca                                             ; $77dd: $07
	nop                                              ; $77de: $00
	rlca                                             ; $77df: $07
	ld [bc], a                                       ; $77e0: $02
	ccf                                              ; $77e1: $3f
	db $dd                                           ; $77e2: $dd
	rst $38                                          ; $77e3: $ff
	sub e                                            ; $77e4: $93
	and b                                            ; $77e5: $a0
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	rlca                                             ; $77e8: $07
	inc c                                            ; $77e9: $0c
	ld a, l                                          ; $77ea: $7d
	rst $38                                          ; $77eb: $ff
	rst FarCall                                          ; $77ec: $f7
	nop                                              ; $77ed: $00
	ld b, b                                          ; $77ee: $40
	adc a                                            ; $77ef: $8f
	sbc a                                            ; $77f0: $9f
	ld [hl], a                                       ; $77f1: $77
	rst AddAOntoHL                                          ; $77f2: $ef

Jump_04b_77f3:
	cp $9b                                           ; $77f3: $fe $9b
	jr nc, jr_04b_7777                               ; $77f5: $30 $80

	ld bc, $77cf                                     ; $77f7: $01 $cf $77
	ld sp, hl                                        ; $77fa: $f9
	sbc [hl]                                         ; $77fb: $9e
	ldh a, [$6d]                                     ; $77fc: $f0 $6d
	ld hl, sp-$69                                    ; $77fe: $f8 $97
	ld b, b                                          ; $7800: $40
	ld hl, sp-$10                                    ; $7801: $f8 $f0
	ld a, $ff                                        ; $7803: $3e $ff
	nop                                              ; $7805: $00
	jr nc, jr_04b_7874                               ; $7806: $30 $6c

	ld h, c                                          ; $7808: $61
	add sp, -$65                                     ; $7809: $e8 $9b
	ld h, b                                          ; $780b: $60
	stop                                             ; $780c: $10 $00
	ldh [$fd], a                                     ; $780e: $e0 $fd
	rst SubAFromDE                                          ; $7810: $df
	ld hl, sp-$64                                    ; $7811: $f8 $9c
	ldh a, [$fe]                                     ; $7813: $f0 $fe
	cp $fb                                           ; $7815: $fe $fb
	sbc [hl]                                         ; $7817: $9e
	ld a, [bc]                                       ; $7818: $0a
	ei                                               ; $7819: $fb
	sbc h                                            ; $781a: $9c
	ld [bc], a                                       ; $781b: $02
	rra                                              ; $781c: $1f
	rra                                              ; $781d: $1f
	ld a, e                                          ; $781e: $7b
	ei                                               ; $781f: $fb
	rst SubAFromDE                                          ; $7820: $df
	rlca                                             ; $7821: $07
	rst SubAFromDE                                          ; $7822: $df
	ccf                                              ; $7823: $3f
	sbc c                                            ; $7824: $99
	inc bc                                           ; $7825: $03
	nop                                              ; $7826: $00
	ld [bc], a                                       ; $7827: $02
	rrca                                             ; $7828: $0f
	rrca                                             ; $7829: $0f
	rra                                              ; $782a: $1f
	ld a, e                                          ; $782b: $7b
	xor a                                            ; $782c: $af
	rst $38                                          ; $782d: $ff
	sub a                                            ; $782e: $97
	ld e, b                                          ; $782f: $58
	adc h                                            ; $7830: $8c
	inc bc                                           ; $7831: $03
	ldh a, [$f1]                                     ; $7832: $f0 $f1
	inc bc                                           ; $7834: $03
	nop                                              ; $7835: $00
	jr jr_04b_78a7                                   ; $7836: $18 $6f

	ld h, b                                          ; $7838: $60
	rst $38                                          ; $7839: $ff
	rst SubAFromDE                                          ; $783a: $df
	ld bc, $079b                                     ; $783b: $01 $9b $07
	ld bc, $6100                                     ; $783e: $01 $00 $61
	ld a, e                                          ; $7841: $7b
	ld hl, sp-$6a                                    ; $7842: $f8 $96
	rlca                                             ; $7844: $07
	add a                                            ; $7845: $87
	adc a                                            ; $7846: $8f
	add a                                            ; $7847: $87
	rst $38                                          ; $7848: $ff
	nop                                              ; $7849: $00
	inc bc                                           ; $784a: $03
	sbc a                                            ; $784b: $9f
	rst SubAFromDE                                          ; $784c: $df
	db $dd                                           ; $784d: $dd
	rst $38                                          ; $784e: $ff
	sbc l                                            ; $784f: $9d
	ld bc, $731f                                     ; $7850: $01 $1f $73
	ld sp, hl                                        ; $7853: $f9
	ld a, a                                          ; $7854: $7f
	ld [hl], b                                       ; $7855: $70
	sub [hl]                                         ; $7856: $96
	sub b                                            ; $7857: $90
	ld b, $f2                                        ; $7858: $06 $f2
	pop bc                                           ; $785a: $c1
	rst JumpTable                                          ; $785b: $c7
	cp $ff                                           ; $785c: $fe $ff
	push af                                          ; $785e: $f5
	cp $01                                           ; $785f: $fe $01
	ld a, b                                          ; $7861: $78
	ldh [$bb], a                                     ; $7862: $e0 $bb
	adc c                                            ; $7864: $89
	nop                                              ; $7865: $00
	dec bc                                           ; $7866: $0b
	ld [bc], a                                       ; $7867: $02
	ld a, h                                          ; $7868: $7c
	ld a, l                                          ; $7869: $7d
	ld a, h                                          ; $786a: $7c
	ld a, h                                          ; $786b: $7c
	add b                                            ; $786c: $80
	adc b                                            ; $786d: $88
	jp $8383                                         ; $786e: $c3 $83 $83


	add d                                            ; $7871: $82
	add b                                            ; $7872: $80
	add c                                            ; $7873: $81

jr_04b_7874:
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	xor [hl]                                         ; $7876: $ae
	ld b, c                                          ; $7877: $41
	ret nc                                           ; $7878: $d0

	ld h, b                                          ; $7879: $60
	inc b                                            ; $787a: $04
	ld a, d                                          ; $787b: $7a
	ret nz                                           ; $787c: $c0

	add l                                            ; $787d: $85
	sbc $ff                                          ; $787e: $de $ff
	ld l, a                                          ; $7880: $6f
	rst SubAFromDE                                          ; $7881: $df
	set 1, l                                         ; $7882: $cb $cd
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	ld b, h                                          ; $7886: $44
	nop                                              ; $7887: $00
	rst $38                                          ; $7888: $ff
	ccf                                              ; $7889: $3f
	daa                                              ; $788a: $27
	rlca                                             ; $788b: $07
	nop                                              ; $788c: $00
	ld hl, $0011                                     ; $788d: $21 $11 $00
	add b                                            ; $7890: $80
	add b                                            ; $7891: $80
	and b                                            ; $7892: $a0
	ld hl, sp+$02                                    ; $7893: $f8 $02
	ld [bc], a                                       ; $7895: $02
	inc de                                           ; $7896: $13
	inc bc                                           ; $7897: $03
	db $dd                                           ; $7898: $dd
	ei                                               ; $7899: $fb
	rst SubAFromDE                                          ; $789a: $df
	inc bc                                           ; $789b: $03
	sbc [hl]                                         ; $789c: $9e
	inc hl                                           ; $789d: $23
	call c, $9703                                    ; $789e: $dc $03 $97
	ld d, b                                          ; $78a1: $50
	jr nc, jr_04b_78b4                               ; $78a2: $30 $10

	and b                                            ; $78a4: $a0
	ldh a, [$b1]                                     ; $78a5: $f0 $b1

jr_04b_78a7:
	pop hl                                           ; $78a7: $e1
	db $e3                                           ; $78a8: $e3
	sbc $e0                                          ; $78a9: $de $e0
	sbc b                                            ; $78ab: $98
	ldh a, [$e0]                                     ; $78ac: $f0 $e0
	ldh [$f1], a                                     ; $78ae: $e0 $f1
	ldh a, [rP1]                                     ; $78b0: $f0 $00
	add hl, de                                       ; $78b2: $19
	ld a, e                                          ; $78b3: $7b

jr_04b_78b4:
	push bc                                          ; $78b4: $c5
	sbc h                                            ; $78b5: $9c
	or e                                             ; $78b6: $b3
	rst FarCall                                          ; $78b7: $f7
	dec l                                            ; $78b8: $2d
	db $fc                                           ; $78b9: $fc
	adc d                                            ; $78ba: $8a
	ld de, $04c3                                     ; $78bb: $11 $c3 $04
	nop                                              ; $78be: $00
	ld b, d                                          ; $78bf: $42
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	jr @-$65                                         ; $78c2: $18 $99

	ld de, $00b3                                     ; $78c4: $11 $b3 $00
	add b                                            ; $78c7: $80
	ld b, b                                          ; $78c8: $40
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	stop                                             ; $78cb: $10 $00
	ld de, $c300                                     ; $78cd: $11 $00 $c3
	ld a, d                                          ; $78d0: $7a
	ld h, b                                          ; $78d1: $60
	sbc l                                            ; $78d2: $9d
	rst AddAOntoHL                                          ; $78d3: $ef
	ret                                              ; $78d4: $c9


	ld a, d                                          ; $78d5: $7a
	sbc a                                            ; $78d6: $9f
	ld a, e                                          ; $78d7: $7b
	ldh a, [$9c]                                     ; $78d8: $f0 $9c
	ld bc, $0281                                     ; $78da: $01 $81 $02
	db $dd                                           ; $78dd: $dd
	inc b                                            ; $78de: $04
	db $dd                                           ; $78df: $dd
	ld b, $9e                                        ; $78e0: $06 $9e
	add e                                            ; $78e2: $83
	jp c, $9e03                                      ; $78e3: $da $03 $9e

	add c                                            ; $78e6: $81
	sbc $80                                          ; $78e7: $de $80
	sbc e                                            ; $78e9: $9b
	sbc h                                            ; $78ea: $9c
	ld a, b                                          ; $78eb: $78
	adc $60                                          ; $78ec: $ce $60
	db $fd                                           ; $78ee: $fd
	sbc d                                            ; $78ef: $9a
	ldh [$f7], a                                     ; $78f0: $e0 $f7
	pop af                                           ; $78f2: $f1
	rst $38                                          ; $78f3: $ff
	inc a                                            ; $78f4: $3c
	halt                                             ; $78f5: $76
	and l                                            ; $78f6: $a5
	sbc h                                            ; $78f7: $9c
	adc [hl]                                         ; $78f8: $8e
	and h                                            ; $78f9: $a4
	or b                                             ; $78fa: $b0
	ld a, d                                          ; $78fb: $7a
	ld c, [hl]                                       ; $78fc: $4e
	rst $38                                          ; $78fd: $ff
	add b                                            ; $78fe: $80
	rrca                                             ; $78ff: $0f
	jp Jump_04b_7f7e                                 ; $7900: $c3 $7e $7f


	sbc c                                            ; $7903: $99
	ld b, h                                          ; $7904: $44
	dec b                                            ; $7905: $05
	nop                                              ; $7906: $00
	ld b, a                                          ; $7907: $47
	ld h, c                                          ; $7908: $61
	ld l, $ff                                        ; $7909: $2e $ff
	ld h, a                                          ; $790b: $67
	dec sp                                           ; $790c: $3b
	ld [bc], a                                       ; $790d: $02
	nop                                              ; $790e: $00
	add b                                            ; $790f: $80
	rst $38                                          ; $7910: $ff
	rra                                              ; $7911: $1f
	rst $38                                          ; $7912: $ff
	cp a                                             ; $7913: $bf
	xor a                                            ; $7914: $af
	ld b, e                                          ; $7915: $43
	ld e, l                                          ; $7916: $5d
	dec b                                            ; $7917: $05
	add b                                            ; $7918: $80
	ld [hl], b                                       ; $7919: $70
	rst $38                                          ; $791a: $ff
	rst $38                                          ; $791b: $ff
	ld a, a                                          ; $791c: $7f
	rst $38                                          ; $791d: $ff
	ld a, [hl]                                       ; $791e: $7e
	adc d                                            ; $791f: $8a
	sub h                                            ; $7920: $94
	add b                                            ; $7921: $80
	ldh a, [$d6]                                     ; $7922: $f0 $d6
	reti                                             ; $7924: $d9


	call c, $dadd                                    ; $7925: $dc $dd $da
	push bc                                          ; $7928: $c5
	ld b, d                                          ; $7929: $42
	dec [hl]                                         ; $792a: $35
	xor a                                            ; $792b: $af
	call c, $9ebf                                    ; $792c: $dc $bf $9e
	ccf                                              ; $792f: $3f
	ld a, d                                          ; $7930: $7a
	ld [hl], b                                       ; $7931: $70
	ldh [$a3], a                                     ; $7932: $e0 $a3
	sub l                                            ; $7934: $95
	ld a, l                                          ; $7935: $7d
	ld d, a                                          ; $7936: $57
	ld a, a                                          ; $7937: $7f
	nop                                              ; $7938: $00
	ld a, a                                          ; $7939: $7f
	ld a, [hl+]                                      ; $793a: $2a
	ld [hl], l                                       ; $793b: $75
	ld a, [hl+]                                      ; $793c: $2a
	add d                                            ; $793d: $82
	xor e                                            ; $793e: $ab
	ld l, h                                          ; $793f: $6c
	ld b, l                                          ; $7940: $45
	sbc e                                            ; $7941: $9b
	push bc                                          ; $7942: $c5
	rst $38                                          ; $7943: $ff
	rst $38                                          ; $7944: $ff
	rrca                                             ; $7945: $0f
	ld [hl], h                                       ; $7946: $74
	db $fd                                           ; $7947: $fd
	sbc l                                            ; $7948: $9d
	adc d                                            ; $7949: $8a
	rst $38                                          ; $794a: $ff
	ld l, h                                          ; $794b: $6c
	ld d, l                                          ; $794c: $55
	sub l                                            ; $794d: $95
	rrca                                             ; $794e: $0f
	ld a, [$fdff]                                    ; $794f: $fa $ff $fd
	ld d, l                                          ; $7952: $55
	xor h                                            ; $7953: $ac
	ld d, l                                          ; $7954: $55
	xor h                                            ; $7955: $ac

Call_04b_7956:
	ld hl, sp-$03                                    ; $7956: $f8 $fd
	ld a, b                                          ; $7958: $78
	push bc                                          ; $7959: $c5
	sbc $fd                                          ; $795a: $de $fd
	sub h                                            ; $795c: $94
	ld hl, sp-$47                                    ; $795d: $f8 $b9
	ld sp, hl                                        ; $795f: $f9
	cp $57                                           ; $7960: $fe $57
	xor d                                            ; $7962: $aa
	push de                                          ; $7963: $d5
	xor d                                            ; $7964: $aa
	inc bc                                           ; $7965: $03
	ld b, e                                          ; $7966: $43
	inc bc                                           ; $7967: $03
	call c, Call_04b_7eff                            ; $7968: $dc $ff $7e
	jp nz, $e098                                     ; $796b: $c2 $98 $e0

	xor a                                            ; $796e: $af
	ld e, a                                          ; $796f: $5f
	xor d                                            ; $7970: $aa
	ld [hl], l                                       ; $7971: $75
	cp d                                             ; $7972: $ba
	ldh [$de], a                                     ; $7973: $e0 $de
	ldh a, [$dd]                                     ; $7975: $f0 $dd
	rst $38                                          ; $7977: $ff
	sbc [hl]                                         ; $7978: $9e
	jr nz, jr_04b_79ef                               ; $7979: $20 $74

	ld c, l                                          ; $797b: $4d
	sbc h                                            ; $797c: $9c
	sub l                                            ; $797d: $95
	jp c, $fddd                                      ; $797e: $da $dd $fd

	sbc [hl]                                         ; $7981: $9e
	rst SubAFromDE                                          ; $7982: $df
	sbc $cf                                          ; $7983: $de $cf
	sub e                                            ; $7985: $93
	ld [de], a                                       ; $7986: $12
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	ret z                                            ; $7989: $c8

	rst $38                                          ; $798a: $ff
	ld d, a                                          ; $798b: $57
	xor e                                            ; $798c: $ab
	ld d, a                                          ; $798d: $57
	ld [rRAMG], sp                                   ; $798e: $08 $00 $00
	scf                                              ; $7991: $37
	ld l, e                                          ; $7992: $6b
	ldh [$9a], a                                     ; $7993: $e0 $9a
	nop                                              ; $7995: $00
	ld a, [$aa53]                                    ; $7996: $fa $53 $aa
	ld d, e                                          ; $7999: $53
	ld [hl], h                                       ; $799a: $74
	add l                                            ; $799b: $85
	sub [hl]                                         ; $799c: $96
	ei                                               ; $799d: $fb
	ld sp, hl                                        ; $799e: $f9
	ei                                               ; $799f: $fb
	ld sp, hl                                        ; $79a0: $f9
	ld b, $04                                        ; $79a1: $06 $04
	ld b, $05                                        ; $79a3: $06 $05
	ld [$8f7b], a                                    ; $79a5: $ea $7b $8f
	sbc $03                                          ; $79a8: $de $03
	call c, $97ff                                    ; $79aa: $dc $ff $97
	cp $77                                           ; $79ad: $fe $77
	xor d                                            ; $79af: $aa
	db $dd                                           ; $79b0: $dd
	xor b                                            ; $79b1: $a8
	ld e, h                                          ; $79b2: $5c
	xor b                                            ; $79b3: $a8
	ld [hl], h                                       ; $79b4: $74
	sbc $ff                                          ; $79b5: $de $ff
	call c, $9dfc                                    ; $79b7: $dc $fc $9d
	ld a, a                                          ; $79ba: $7f
	and d                                            ; $79bb: $a2
	ld [hl], h                                       ; $79bc: $74
	ld e, [hl]                                       ; $79bd: $5e
	sbc h                                            ; $79be: $9c
	xor [hl]                                         ; $79bf: $ae
	ld e, l                                          ; $79c0: $5d
	rst $38                                          ; $79c1: $ff
	ld [hl], c                                       ; $79c2: $71
	and c                                            ; $79c3: $a1
	ld a, a                                          ; $79c4: $7f
	ei                                               ; $79c5: $fb
	sbc d                                            ; $79c6: $9a
	cp h                                             ; $79c7: $bc
	ld a, d                                          ; $79c8: $7a
	rst $38                                          ; $79c9: $ff
	ld a, a                                          ; $79ca: $7f
	xor [hl]                                         ; $79cb: $ae
	ld a, e                                          ; $79cc: $7b
	xor $9e                                          ; $79cd: $ee $9e
	pop bc                                           ; $79cf: $c1
	ld l, l                                          ; $79d0: $6d
	ld [hl], c                                       ; $79d1: $71
	sub e                                            ; $79d2: $93
	rst $38                                          ; $79d3: $ff
	add b                                            ; $79d4: $80
	ld b, h                                          ; $79d5: $44
	rst GetHLinHL                                          ; $79d6: $cf
	ld a, l                                          ; $79d7: $7d
	adc d                                            ; $79d8: $8a
	ld b, l                                          ; $79d9: $45
	adc e                                            ; $79da: $8b
	ld c, l                                          ; $79db: $4d
	ldh [$38], a                                     ; $79dc: $e0 $38
	rst $38                                          ; $79de: $ff
	call c, $96cf                                    ; $79df: $dc $cf $96
	nop                                              ; $79e2: $00
	dec d                                            ; $79e3: $15
	xor $5d                                          ; $79e4: $ee $5d
	xor d                                            ; $79e6: $aa
	push de                                          ; $79e7: $d5
	cp [hl]                                          ; $79e8: $be
	ld [hl], l                                       ; $79e9: $75
	ccf                                              ; $79ea: $3f
	ld [hl], b                                       ; $79eb: $70
	ldh [c], a                                       ; $79ec: $e2
	ld d, c                                          ; $79ed: $51
	ld a, a                                          ; $79ee: $7f

jr_04b_79ef:
	sub e                                            ; $79ef: $93
	jr nc, jr_04b_7a71                               ; $79f0: $30 $7f

	rst $38                                          ; $79f2: $ff
	jr nc, jr_04b_79f5                               ; $79f3: $30 $00

jr_04b_79f5:
	rst $38                                          ; $79f5: $ff
	nop                                              ; $79f6: $00
	ld b, $0f                                        ; $79f7: $06 $0f
	add e                                            ; $79f9: $83
	rlca                                             ; $79fa: $07
	ld e, $7b                                        ; $79fb: $1e $7b
	ld [hl], c                                       ; $79fd: $71

Call_04b_79fe:
	ld a, a                                          ; $79fe: $7f
	rst FarCall                                          ; $79ff: $f7
	sbc h                                            ; $7a00: $9c
	inc bc                                           ; $7a01: $03
	add e                                            ; $7a02: $83
	inc c                                            ; $7a03: $0c
	ld a, e                                          ; $7a04: $7b
	ldh a, [$7e]                                     ; $7a05: $f0 $7e
	ld l, d                                          ; $7a07: $6a
	sbc h                                            ; $7a08: $9c
	ld c, $86                                        ; $7a09: $0e $86
	rst SubAFromBC                                          ; $7a0b: $e7
	halt                                             ; $7a0c: $76
	ld d, b                                          ; $7a0d: $50
	sub d                                            ; $7a0e: $92
	rlca                                             ; $7a0f: $07
	inc b                                            ; $7a10: $04
	add h                                            ; $7a11: $84
	jp nz, $f800                                     ; $7a12: $c2 $00 $f8

	inc c                                            ; $7a15: $0c
	inc c                                            ; $7a16: $0c
	db $ec                                           ; $7a17: $ec
	db $ec                                           ; $7a18: $ec
	call z, $0ccc                                    ; $7a19: $cc $cc $0c
	cp $9b                                           ; $7a1c: $fe $9b
	ret nz                                           ; $7a1e: $c0

	ld b, b                                          ; $7a1f: $40
	nop                                              ; $7a20: $00
	add b                                            ; $7a21: $80
	ldh [$e0], a                                     ; $7a22: $e0 $e0
	ld [hl], a                                       ; $7a24: $77
	ld a, l                                          ; $7a25: $7d
	sbc b                                            ; $7a26: $98
	add c                                            ; $7a27: $81
	add e                                            ; $7a28: $83
	add e                                            ; $7a29: $83
	add a                                            ; $7a2a: $87
	ld [hl], l                                       ; $7a2b: $75
	ld a, [hl+]                                      ; $7a2c: $2a
	ld [hl], l                                       ; $7a2d: $75
	db $dd                                           ; $7a2e: $dd
	ld a, a                                          ; $7a2f: $7f
	sbc [hl]                                         ; $7a30: $9e
	ld a, h                                          ; $7a31: $7c
	ld [hl], a                                       ; $7a32: $77
	adc [hl]                                         ; $7a33: $8e
	rst SubAFromDE                                          ; $7a34: $df
	add b                                            ; $7a35: $80
	ld a, a                                          ; $7a36: $7f
	db $fd                                           ; $7a37: $fd
	ld a, e                                          ; $7a38: $7b
	ld e, l                                          ; $7a39: $5d
	call c, $dfff                                    ; $7a3a: $dc $ff $df
	db $fd                                           ; $7a3d: $fd
	sbc [hl]                                         ; $7a3e: $9e
	ld sp, hl                                        ; $7a3f: $f9
	db $fc                                           ; $7a40: $fc
	sbc h                                            ; $7a41: $9c
	ld d, l                                          ; $7a42: $55
	xor b                                            ; $7a43: $a8
	ld d, a                                          ; $7a44: $57
	reti                                             ; $7a45: $d9


	rst $38                                          ; $7a46: $ff
	ld l, a                                          ; $7a47: $6f
	ldh a, [rOCPD]                                   ; $7a48: $f0 $6b
	ldh [$74], a                                     ; $7a4a: $e0 $74
	push bc                                          ; $7a4c: $c5
	ld d, a                                          ; $7a4d: $57
	ldh a, [$7f]                                     ; $7a4e: $f0 $7f
	ld e, $97                                        ; $7a50: $1e $97
	or e                                             ; $7a52: $b3
	ldh [$80], a                                     ; $7a53: $e0 $80
	ret nz                                           ; $7a55: $c0

	ret nz                                           ; $7a56: $c0

	db $eb                                           ; $7a57: $eb
	ld c, d                                          ; $7a58: $4a

jr_04b_7a59:
	push bc                                          ; $7a59: $c5
	ld a, b                                          ; $7a5a: $78
	cp a                                             ; $7a5b: $bf
	ld [hl], e                                       ; $7a5c: $73
	inc a                                            ; $7a5d: $3c
	sbc h                                            ; $7a5e: $9c
	ld [bc], a                                       ; $7a5f: $02
	inc bc                                           ; $7a60: $03
	nop                                              ; $7a61: $00
	ld a, d                                          ; $7a62: $7a
	db $e4                                           ; $7a63: $e4
	ld [hl], e                                       ; $7a64: $73
	pop hl                                           ; $7a65: $e1
	adc h                                            ; $7a66: $8c
	db $fd                                           ; $7a67: $fd
	rst $38                                          ; $7a68: $ff
	rst $38                                          ; $7a69: $ff
	ei                                               ; $7a6a: $fb
	ei                                               ; $7a6b: $fb
	ld a, b                                          ; $7a6c: $78
	ret c                                            ; $7a6d: $d8

	sbc b                                            ; $7a6e: $98
	jr c, jr_04b_7aa1                                ; $7a6f: $38 $30

jr_04b_7a71:
	rst FarCall                                          ; $7a71: $f7
	xor d                                            ; $7a72: $aa
	ld d, c                                          ; $7a73: $51
	and a                                            ; $7a74: $a7
	rst SubAFromBC                                          ; $7a75: $e7
	ld a, a                                          ; $7a76: $7f
	rst $38                                          ; $7a77: $ff
	rst $38                                          ; $7a78: $ff
	cp e                                             ; $7a79: $bb
	ld [hl], e                                       ; $7a7a: $73
	or c                                             ; $7a7b: $b1
	rst SubAFromDE                                          ; $7a7c: $df
	ld c, $9e                                        ; $7a7d: $0e $9e
	cp $6f                                           ; $7a7f: $fe $6f
	pop bc                                           ; $7a81: $c1
	ld a, a                                          ; $7a82: $7f
	rst SubAFromDE                                          ; $7a83: $df
	sub [hl]                                         ; $7a84: $96
	db $fc                                           ; $7a85: $fc
	db $e4                                           ; $7a86: $e4
	inc a                                            ; $7a87: $3c
	ld e, $1c                                        ; $7a88: $1e $1c
	jr @+$1a                                         ; $7a8a: $18 $18

	ld a, e                                          ; $7a8c: $7b
	cp h                                             ; $7a8d: $bc
	ld a, e                                          ; $7a8e: $7b
	halt                                             ; $7a8f: $76
	rst SubAFromDE                                          ; $7a90: $df
	rst SubAFromBC                                          ; $7a91: $e7
	sbc [hl]                                         ; $7a92: $9e
	rst AddAOntoHL                                          ; $7a93: $ef
	ld h, a                                          ; $7a94: $67
	sub c                                            ; $7a95: $91
	ld a, a                                          ; $7a96: $7f
	ret nz                                           ; $7a97: $c0

	sbc [hl]                                         ; $7a98: $9e
	push de                                          ; $7a99: $d5
	ld d, e                                          ; $7a9a: $53
	add c                                            ; $7a9b: $81
	ld l, a                                          ; $7a9c: $6f
	or b                                             ; $7a9d: $b0
	sbc $ff                                          ; $7a9e: $de $ff
	ld a, d                                          ; $7aa0: $7a

jr_04b_7aa1:
	adc $df                                          ; $7aa1: $ce $df
	ld bc, $039a                                     ; $7aa3: $01 $9a $03
	ld b, $ff                                        ; $7aa6: $06 $ff
	adc d                                            ; $7aa8: $8a
	ld b, l                                          ; $7aa9: $45
	reti                                             ; $7aaa: $d9


	rst $38                                          ; $7aab: $ff
	ld a, a                                          ; $7aac: $7f
	add d                                            ; $7aad: $82
	sbc h                                            ; $7aae: $9c
	ldh [$30], a                                     ; $7aaf: $e0 $30
	ret c                                            ; $7ab1: $d8

	ld h, e                                          ; $7ab2: $63
	ldh [$7d], a                                     ; $7ab3: $e0 $7d
	ld [$0f47], a                                    ; $7ab5: $ea $47 $0f
	rrca                                             ; $7ab8: $0f
	ldh a, [$9d]                                     ; $7ab9: $f0 $9d
	db $fc                                           ; $7abb: $fc
	ld hl, sp-$05                                    ; $7abc: $f8 $fb
	halt                                             ; $7abe: $76
	sbc a                                            ; $7abf: $9f
	ldh [$dd], a                                     ; $7ac0: $e0 $dd
	add [hl]                                         ; $7ac2: $86
	ld h, b                                          ; $7ac3: $60
	ld l, b                                          ; $7ac4: $68
	ld l, $47                                        ; $7ac5: $2e $47
	ld de, $2045                                     ; $7ac7: $11 $45 $20
	ld d, c                                          ; $7aca: $51
	db $fd                                           ; $7acb: $fd
	db $fd                                           ; $7acc: $fd
	rst GetHLinHL                                          ; $7acd: $cf
	adc d                                            ; $7ace: $8a
	adc d                                            ; $7acf: $8a
	sbc b                                            ; $7ad0: $98
	di                                               ; $7ad1: $f3
	ldh [c], a                                       ; $7ad2: $e2
	ccf                                              ; $7ad3: $3f
	sub a                                            ; $7ad4: $97
	xor d                                            ; $7ad5: $aa
	ld d, l                                          ; $7ad6: $55
	jr nz, jr_04b_7a59                               ; $7ad7: $20 $80

	add b                                            ; $7ad9: $80
	adc d                                            ; $7ada: $8a
	rst $38                                          ; $7adb: $ff
	ld l, a                                          ; $7adc: $6f
	cp b                                             ; $7add: $b8
	sbc l                                            ; $7ade: $9d
	inc b                                            ; $7adf: $04
	rst $38                                          ; $7ae0: $ff
	ld a, e                                          ; $7ae1: $7b
	halt                                             ; $7ae2: $76
	ld a, [hl]                                       ; $7ae3: $7e
	ld d, [hl]                                       ; $7ae4: $56
	sbc l                                            ; $7ae5: $9d
	ld e, $1f                                        ; $7ae6: $1e $1f
	ld [hl], e                                       ; $7ae8: $73
	sbc c                                            ; $7ae9: $99
	sbc d                                            ; $7aea: $9a
	inc c                                            ; $7aeb: $0c

jr_04b_7aec:
	rra                                              ; $7aec: $1f
	rra                                              ; $7aed: $1f
	ld hl, sp-$0b                                    ; $7aee: $f8 $f5
	ld a, e                                          ; $7af0: $7b
	ldh a, [$5b]                                     ; $7af1: $f0 $5b
	adc c                                            ; $7af3: $89
	sbc h                                            ; $7af4: $9c
	ld bc, $aa55                                     ; $7af5: $01 $55 $aa
	ld l, a                                          ; $7af8: $6f
	ld a, c                                          ; $7af9: $79
	ld [hl], d                                       ; $7afa: $72
	cp d                                             ; $7afb: $ba
	ld a, d                                          ; $7afc: $7a
	ld c, e                                          ; $7afd: $4b
	sbc l                                            ; $7afe: $9d

Call_04b_7aff:
	adc d                                            ; $7aff: $8a
	sub l                                            ; $7b00: $95
	ld l, a                                          ; $7b01: $6f
	ldh a, [rSVBK]                                   ; $7b02: $f0 $70
	ld a, [hl]                                       ; $7b04: $7e
	rst $38                                          ; $7b05: $ff
	sbc h                                            ; $7b06: $9c
	dec d                                            ; $7b07: $15
	xor a                                            ; $7b08: $af
	ld d, l                                          ; $7b09: $55
	ld a, b                                          ; $7b0a: $78
	cpl                                              ; $7b0b: $2f
	rst $38                                          ; $7b0c: $ff
	sbc [hl]                                         ; $7b0d: $9e
	rst AddAOntoHL                                          ; $7b0e: $ef
	ld l, e                                          ; $7b0f: $6b
	ldh [$7d], a                                     ; $7b10: $e0 $7d
	ld d, h                                          ; $7b12: $54
	ld [hl], e                                       ; $7b13: $73
	rst GetHLinHL                                          ; $7b14: $cf
	sbc h                                            ; $7b15: $9c
	inc bc                                           ; $7b16: $03
	cp b                                             ; $7b17: $b8
	db $10                                           ; $7b18: $10
	ld [hl], e                                       ; $7b19: $73
	jp nz, $018c                                     ; $7b1a: $c2 $8c $01

	ccf                                              ; $7b1d: $3f
	ld a, a                                          ; $7b1e: $7f
	ld e, h                                          ; $7b1f: $5c
	ld [$7c34], sp                                   ; $7b20: $08 $34 $7c
	ld l, h                                          ; $7b23: $6c
	inc c                                            ; $7b24: $0c
	ld a, a                                          ; $7b25: $7f
	rst $38                                          ; $7b26: $ff
	sbc h                                            ; $7b27: $9c
	jr z, jr_04b_7b4a                                ; $7b28: $28 $20

	db $10                                           ; $7b2a: $10
	add b                                            ; $7b2b: $80
	add b                                            ; $7b2c: $80
	xor a                                            ; $7b2d: $af
	push hl                                          ; $7b2e: $e5
	ld [hl], h                                       ; $7b2f: $74
	ld c, a                                          ; $7b30: $4f
	rst $38                                          ; $7b31: $ff
	sbc l                                            ; $7b32: $9d
	ld [hl], b                                       ; $7b33: $70
	ret nz                                           ; $7b34: $c0

	ld l, e                                          ; $7b35: $6b
	ld hl, $477e                                     ; $7b36: $21 $7e $47
	sbc d                                            ; $7b39: $9a
	inc bc                                           ; $7b3a: $03
	rlca                                             ; $7b3b: $07
	rlca                                             ; $7b3c: $07
	rrca                                             ; $7b3d: $0f
	inc bc                                           ; $7b3e: $03
	ld [hl], l                                       ; $7b3f: $75
	ldh [$df], a                                     ; $7b40: $e0 $df
	rrca                                             ; $7b42: $0f
	rst SubAFromDE                                          ; $7b43: $df
	rlca                                             ; $7b44: $07
	ld a, a                                          ; $7b45: $7f
	ldh a, [$9b]                                     ; $7b46: $f0 $9b
	ld a, [hl+]                                      ; $7b48: $2a
	add b                                            ; $7b49: $80

jr_04b_7b4a:
	add b                                            ; $7b4a: $80
	ret nz                                           ; $7b4b: $c0

	ld l, l                                          ; $7b4c: $6d
	add sp, $7a                                      ; $7b4d: $e8 $7a
	jr jr_04b_7aec                                   ; $7b4f: $18 $9b

	nop                                              ; $7b51: $00
	ld [$a054], a                                    ; $7b52: $ea $54 $a0
	ld l, a                                          ; $7b55: $6f
	ld a, b                                          ; $7b56: $78
	rst SubAFromDE                                          ; $7b57: $df
	ld bc, $99fc                                     ; $7b58: $01 $fc $99
	dec [hl]                                         ; $7b5b: $35
	xor d                                            ; $7b5c: $aa
	dec d                                            ; $7b5d: $15
	ld [hl+], a                                      ; $7b5e: $22
	jr nz, jr_04b_7b93                               ; $7b5f: $20 $32

	ld a, e                                          ; $7b61: $7b
	ld a, b                                          ; $7b62: $78
	ld a, [hl]                                       ; $7b63: $7e
	cp d                                             ; $7b64: $ba
	sbc l                                            ; $7b65: $9d
	ld h, b                                          ; $7b66: $60
	jr nc, jr_04b_7bde                               ; $7b67: $30 $75

	inc de                                           ; $7b69: $13
	ldh [$a1], a                                     ; $7b6a: $e0 $a1
	sub l                                            ; $7b6c: $95
	ld b, c                                          ; $7b6d: $41
	ld b, $45                                        ; $7b6e: $06 $45
	nop                                              ; $7b70: $00
	rlca                                             ; $7b71: $07
	ld b, d                                          ; $7b72: $42
	ld bc, $86c3                                     ; $7b73: $01 $c3 $86
	add a                                            ; $7b76: $87
	ld a, b                                          ; $7b77: $78
	ccf                                              ; $7b78: $3f
	add b                                            ; $7b79: $80
	add d                                            ; $7b7a: $82
	add $1e                                          ; $7b7b: $c6 $1e
	ccf                                              ; $7b7d: $3f
	rra                                              ; $7b7e: $1f
	inc e                                            ; $7b7f: $1c
	inc c                                            ; $7b80: $0c
	ld c, c                                          ; $7b81: $49
	and a                                            ; $7b82: $a7
	scf                                              ; $7b83: $37
	ld e, $3e                                        ; $7b84: $1e $3e
	ld a, $0c                                        ; $7b86: $3e $0c
	rst $38                                          ; $7b88: $ff
	rst FarCall                                          ; $7b89: $f7
	ld e, c                                          ; $7b8a: $59
	ret z                                            ; $7b8b: $c8

	ld c, $0c                                        ; $7b8c: $0e $0c
	ld c, d                                          ; $7b8e: $4a
	ld [hl-], a                                      ; $7b8f: $32
	nop                                              ; $7b90: $00
	or d                                             ; $7b91: $b2
	dec h                                            ; $7b92: $25

jr_04b_7b93:
	jr nz, jr_04b_7bb4                               ; $7b93: $20 $1f

	ld c, $3f                                        ; $7b95: $0e $3f
	ld h, l                                          ; $7b97: $65
	rst $38                                          ; $7b98: $ff
	sbc l                                            ; $7b99: $9d
	rst $38                                          ; $7b9a: $ff

jr_04b_7b9b:
	or d                                             ; $7b9b: $b2
	halt                                             ; $7b9c: $76
	ret                                              ; $7b9d: $c9


	sbc e                                            ; $7b9e: $9b
	ld b, b                                          ; $7b9f: $40
	ld c, a                                          ; $7ba0: $4f
	ret nz                                           ; $7ba1: $c0

	ld hl, $467b                                     ; $7ba2: $21 $7b $46
	rst SubAFromDE                                          ; $7ba5: $df
	add b                                            ; $7ba6: $80
	rst SubAFromDE                                          ; $7ba7: $df
	rst $38                                          ; $7ba8: $ff
	sbc l                                            ; $7ba9: $9d
	ret nz                                           ; $7baa: $c0

	pop hl                                           ; $7bab: $e1
	db $fd                                           ; $7bac: $fd
	sbc e                                            ; $7bad: $9b
	ld a, a                                          ; $7bae: $7f
	and l                                            ; $7baf: $a5
	add b                                            ; $7bb0: $80
	push de                                          ; $7bb1: $d5
	ld [hl], e                                       ; $7bb2: $73
	inc d                                            ; $7bb3: $14

jr_04b_7bb4:
	sbc [hl]                                         ; $7bb4: $9e
	ret c                                            ; $7bb5: $d8

	ld [hl], a                                       ; $7bb6: $77
	ld l, $7b                                        ; $7bb7: $2e $7b
	ld hl, sp-$64                                    ; $7bb9: $f8 $9c
	ld d, [hl]                                       ; $7bbb: $56
	nop                                              ; $7bbc: $00
	ld d, d                                          ; $7bbd: $52
	ld [hl], e                                       ; $7bbe: $73
	ld hl, sp-$22                                    ; $7bbf: $f8 $de
	inc c                                            ; $7bc1: $0c
	db $fd                                           ; $7bc2: $fd
	sbc e                                            ; $7bc3: $9b
	ldh a, [$aa]                                     ; $7bc4: $f0 $aa
	inc b                                            ; $7bc6: $04
	xor b                                            ; $7bc7: $a8
	ld e, d                                          ; $7bc8: $5a
	adc h                                            ; $7bc9: $8c
	sbc d                                            ; $7bca: $9a
	ld [$6040], sp                                   ; $7bcb: $08 $40 $60
	ld a, [bc]                                       ; $7bce: $0a
	nop                                              ; $7bcf: $00
	ld a, e                                          ; $7bd0: $7b
	ld [de], a                                       ; $7bd1: $12
	ld a, [hl]                                       ; $7bd2: $7e
	db $f4                                           ; $7bd3: $f4
	sbc $c0                                          ; $7bd4: $de $c0
	sub b                                            ; $7bd6: $90
	inc b                                            ; $7bd7: $04
	dec c                                            ; $7bd8: $0d
	ld [$1800], sp                                   ; $7bd9: $08 $00 $18
	nop                                              ; $7bdc: $00
	and l                                            ; $7bdd: $a5

jr_04b_7bde:
	ld [$0e08], sp                                   ; $7bde: $08 $08 $0e
	ld [bc], a                                       ; $7be1: $02
	di                                               ; $7be2: $f3
	rst $38                                          ; $7be3: $ff
	jr @+$1a                                         ; $7be4: $18 $18

	db $fc                                           ; $7be6: $fc
	rst SubAFromDE                                          ; $7be7: $df
	ld [bc], a                                       ; $7be8: $02
	sbc [hl]                                         ; $7be9: $9e
	ld d, b                                          ; $7bea: $50
	ld l, h                                          ; $7beb: $6c
	push hl                                          ; $7bec: $e5
	rst SubAFromDE                                          ; $7bed: $df
	ld b, $93                                        ; $7bee: $06 $93
	nop                                              ; $7bf0: $00
	inc d                                            ; $7bf1: $14
	jr c, @+$3a                                      ; $7bf2: $38 $38

	nop                                              ; $7bf4: $00
	inc e                                            ; $7bf5: $1c
	add hl, de                                       ; $7bf6: $19
	ld h, b                                          ; $7bf7: $60
	nop                                              ; $7bf8: $00
	rrca                                             ; $7bf9: $0f
	rra                                              ; $7bfa: $1f
	rra                                              ; $7bfb: $1f
	ld a, c                                          ; $7bfc: $79
	jr nc, jr_04b_7b9b                               ; $7bfd: $30 $9c

Call_04b_7bff:
	ccf                                              ; $7bff: $3f
	nop                                              ; $7c00: $00
	ret nz                                           ; $7c01: $c0

	ld a, d                                          ; $7c02: $7a
	db $eb                                           ; $7c03: $eb
	sub a                                            ; $7c04: $97
	ld [$0830], a                                    ; $7c05: $ea $30 $08
	nop                                              ; $7c08: $00
	and b                                            ; $7c09: $a0
	ldh [$f0], a                                     ; $7c0a: $e0 $f0
	rst $38                                          ; $7c0c: $ff
	sbc $f0                                          ; $7c0d: $de $f0
	db $fd                                           ; $7c0f: $fd
	ld a, a                                          ; $7c10: $7f
	or c                                             ; $7c11: $b1
	sbc l                                            ; $7c12: $9d
	jr nz, jr_04b_7c55                               ; $7c13: $20 $40

	ld [hl], e                                       ; $7c15: $73
	ret nc                                           ; $7c16: $d0

	rst SubAFromDE                                          ; $7c17: $df
	ld b, b                                          ; $7c18: $40
	db $fd                                           ; $7c19: $fd
	sbc e                                            ; $7c1a: $9b
	ld d, b                                          ; $7c1b: $50
	db $10                                           ; $7c1c: $10
	db $10                                           ; $7c1d: $10
	ld a, [de]                                       ; $7c1e: $1a
	db $fd                                           ; $7c1f: $fd
	sbc h                                            ; $7c20: $9c
	cpl                                              ; $7c21: $2f
	rst $38                                          ; $7c22: $ff
	db $10                                           ; $7c23: $10
	ld [hl], d                                       ; $7c24: $72
	ld e, h                                          ; $7c25: $5c
	ldh [$a3], a                                     ; $7c26: $e0 $a3
	sbc l                                            ; $7c28: $9d
	rst SubAFromHL                                          ; $7c29: $d7
	db $eb                                           ; $7c2a: $eb
	sbc $ff                                          ; $7c2b: $de $ff
	rst SubAFromDE                                          ; $7c2d: $df
	add [hl]                                         ; $7c2e: $86
	ld a, e                                          ; $7c2f: $7b
	ld [$7fde], sp                                   ; $7c30: $08 $de $7f
	ld a, e                                          ; $7c33: $7b
	ei                                               ; $7c34: $fb
	sbc l                                            ; $7c35: $9d
	rst $38                                          ; $7c36: $ff
	cp a                                             ; $7c37: $bf
	ld [hl], h                                       ; $7c38: $74
	db $dd                                           ; $7c39: $dd
	sbc [hl]                                         ; $7c3a: $9e
	rlca                                             ; $7c3b: $07
	ld l, h                                          ; $7c3c: $6c
	ld h, $7b                                        ; $7c3d: $26 $7b
	ei                                               ; $7c3f: $fb
	sbc [hl]                                         ; $7c40: $9e
	ld [hl], a                                       ; $7c41: $77
	ld [hl], a                                       ; $7c42: $77
	ldh a, [$9c]                                     ; $7c43: $f0 $9c
	ld c, $df                                        ; $7c45: $0e $df
	ld c, $77                                        ; $7c47: $0e $77
	ldh a, [$9a]                                     ; $7c49: $f0 $9a
	cp $0e                                           ; $7c4b: $fe $0e
	ld h, $f7                                        ; $7c4d: $26 $f7
	pop bc                                           ; $7c4f: $c1
	ld [hl], h                                       ; $7c50: $74
	sbc d                                            ; $7c51: $9a
	ld [hl], d                                       ; $7c52: $72
	dec d                                            ; $7c53: $15
	ld [hl], e                                       ; $7c54: $73

jr_04b_7c55:
	pop hl                                           ; $7c55: $e1
	ld a, b                                          ; $7c56: $78
	jp nc, $ba7a                                     ; $7c57: $d2 $7a $ba

	ld [hl], d                                       ; $7c5a: $72
	jp z, $b17e                                      ; $7c5b: $ca $7e $b1

	ld a, a                                          ; $7c5e: $7f
	ld sp, hl                                        ; $7c5f: $f9
	ld l, a                                          ; $7c60: $6f
	db $ec                                           ; $7c61: $ec
	sbc l                                            ; $7c62: $9d
	inc c                                            ; $7c63: $0c
	dec c                                            ; $7c64: $0d
	ld [hl], a                                       ; $7c65: $77
	rst SubAFromDE                                          ; $7c66: $df
	sbc l                                            ; $7c67: $9d
	scf                                              ; $7c68: $37
	db $fc                                           ; $7c69: $fc
	ld [hl], e                                       ; $7c6a: $73
	call c, $0f98                                    ; $7c6b: $dc $98 $0f
	rst $38                                          ; $7c6e: $ff
	cp $f0                                           ; $7c6f: $fe $f0
	ld a, h                                          ; $7c71: $7c
	or b                                             ; $7c72: $b0
	or b                                             ; $7c73: $b0
	ld a, e                                          ; $7c74: $7b
	db $f4                                           ; $7c75: $f4
	sbc h                                            ; $7c76: $9c
	ldh a, [$60]                                     ; $7c77: $f0 $60
	inc hl                                           ; $7c79: $23
	ld a, d                                          ; $7c7a: $7a
	rst $38                                          ; $7c7b: $ff
	ld a, e                                          ; $7c7c: $7b
	pop de                                           ; $7c7d: $d1
	ld l, l                                          ; $7c7e: $6d
	and l                                            ; $7c7f: $a5
	ld a, a                                          ; $7c80: $7f
	ld de, $9d73                                     ; $7c81: $11 $73 $9d
	rst SubAFromDE                                          ; $7c84: $df
	rst $38                                          ; $7c85: $ff
	sbc l                                            ; $7c86: $9d
	jr jr_04b_7ca2                                   ; $7c87: $18 $19

	ld h, h                                          ; $7c89: $64
	or a                                             ; $7c8a: $b7
	ld l, a                                          ; $7c8b: $6f
	ldh a, [hDisp1_SCX]                                     ; $7c8c: $f0 $91
	ld [hl], b                                       ; $7c8e: $70
	cp a                                             ; $7c8f: $bf
	ret c                                            ; $7c90: $d8

	ld e, b                                          ; $7c91: $58
	ld d, b                                          ; $7c92: $50
	nop                                              ; $7c93: $00
	rlca                                             ; $7c94: $07
	ld a, [hl]                                       ; $7c95: $7e
	jr nc, @+$12                                     ; $7c96: $30 $10

	sub a                                            ; $7c98: $97
	sub a                                            ; $7c99: $97
	sbc a                                            ; $7c9a: $9f
	rlca                                             ; $7c9b: $07
	ld l, b                                          ; $7c9c: $68
	ld c, a                                          ; $7c9d: $4f
	ld l, e                                          ; $7c9e: $6b
	pop hl                                           ; $7c9f: $e1
	sbc $ff                                          ; $7ca0: $de $ff

jr_04b_7ca2:
	sbc [hl]                                         ; $7ca2: $9e
	ret nz                                           ; $7ca3: $c0

	ld [hl], l                                       ; $7ca4: $75
	ld [hl], h                                       ; $7ca5: $74
	ld e, e                                          ; $7ca6: $5b
	ldh a, [$9d]                                     ; $7ca7: $f0 $9d
	ld a, b                                          ; $7ca9: $78
	db $fc                                           ; $7caa: $fc
	db $dd                                           ; $7cab: $dd
	jr jr_04b_7d2d                                   ; $7cac: $18 $7f

	di                                               ; $7cae: $f3
	sbc l                                            ; $7caf: $9d
	jr nc, @+$1d                                     ; $7cb0: $30 $1b

	db $dd                                           ; $7cb2: $dd
	rst GetHLinHL                                          ; $7cb3: $cf
	ld h, a                                          ; $7cb4: $67
	pop de                                           ; $7cb5: $d1
	sbc l                                            ; $7cb6: $9d
	inc bc                                           ; $7cb7: $03
	ld hl, sp+$6f                                    ; $7cb8: $f8 $6f
	pop hl                                           ; $7cba: $e1
	ldh [$a1], a                                     ; $7cbb: $e0 $a1
	sbc $80                                          ; $7cbd: $de $80
	call c, $d9ff                                    ; $7cbf: $dc $ff $d9
	ld a, a                                          ; $7cc2: $7f
	rst $38                                          ; $7cc3: $ff
	sbc [hl]                                         ; $7cc4: $9e
	ccf                                              ; $7cc5: $3f
	call nc, $dfff                                   ; $7cc6: $d4 $ff $df
	rrca                                             ; $7cc9: $0f

jr_04b_7cca:
	db $db                                           ; $7cca: $db
	rst $38                                          ; $7ccb: $ff
	sbc $f6                                          ; $7ccc: $de $f6
	call c, Call_04b_67f7                            ; $7cce: $dc $f7 $67
	ld c, d                                          ; $7cd1: $4a
	reti                                             ; $7cd2: $d9


	rst $38                                          ; $7cd3: $ff
	ld a, l                                          ; $7cd4: $7d
	or a                                             ; $7cd5: $b7
	ld c, e                                          ; $7cd6: $4b
	ldh a, [$dc]                                     ; $7cd7: $f0 $dc
	cp $9d                                           ; $7cd9: $fe $9d
	ldh a, [$e0]                                     ; $7cdb: $f0 $e0
	reti                                             ; $7cdd: $d9


	rst $38                                          ; $7cde: $ff
	reti                                             ; $7cdf: $d9


	or b                                             ; $7ce0: $b0
	reti                                             ; $7ce1: $d9


	ccf                                              ; $7ce2: $3f
	ld sp, hl                                        ; $7ce3: $f9
	ld h, e                                          ; $7ce4: $63
	ret nc                                           ; $7ce5: $d0

	ld c, e                                          ; $7ce6: $4b
	ldh a, [$d9]                                     ; $7ce7: $f0 $d9
	ld d, b                                          ; $7ce9: $50
	reti                                             ; $7cea: $d9


	sbc a                                            ; $7ceb: $9f
	rlca                                             ; $7cec: $07
	ret nc                                           ; $7ced: $d0

	reti                                             ; $7cee: $d9


	jr jr_04b_7cca                                   ; $7cef: $18 $d9

	rst GetHLinHL                                          ; $7cf1: $cf
	daa                                              ; $7cf2: $27
	ret nc                                           ; $7cf3: $d0

	ldh [$a9], a                                     ; $7cf4: $e0 $a9
	reti                                             ; $7cf6: $d9


	rst $38                                          ; $7cf7: $ff
	reti                                             ; $7cf8: $d9


	ld a, a                                          ; $7cf9: $7f
	ret                                              ; $7cfa: $c9


	rst $38                                          ; $7cfb: $ff
	reti                                             ; $7cfc: $d9


	rst FarCall                                          ; $7cfd: $f7
	pop bc                                           ; $7cfe: $c1

Call_04b_7cff:
	rst $38                                          ; $7cff: $ff
	call c, $9ee0                                    ; $7d00: $dc $e0 $9e
	pop hl                                           ; $7d03: $e1
	ld h, e                                          ; $7d04: $63
	ldh a, [c]                                       ; $7d05: $f2
	sbc [hl]                                         ; $7d06: $9e
	add b                                            ; $7d07: $80
	call c, $deb0                                    ; $7d08: $dc $b0 $de
	cp a                                             ; $7d0b: $bf
	db $db                                           ; $7d0c: $db
	ccf                                              ; $7d0d: $3f
	rst SubAFromDE                                          ; $7d0e: $df
	jr nz, jr_04b_7d64                               ; $7d0f: $20 $53

	adc e                                            ; $7d11: $8b
	ld l, l                                          ; $7d12: $6d
	ld [hl], a                                       ; $7d13: $77
	ld a, c                                          ; $7d14: $79
	ld e, l                                          ; $7d15: $5d
	db $db                                           ; $7d16: $db
	rst $38                                          ; $7d17: $ff
	ld a, c                                          ; $7d18: $79
	ld c, a                                          ; $7d19: $4f
	ld a, h                                          ; $7d1a: $7c
	add d                                            ; $7d1b: $82
	sbc $50                                          ; $7d1c: $de $50
	db $dd                                           ; $7d1e: $dd
	rst SubAFromDE                                          ; $7d1f: $df
	db $dd                                           ; $7d20: $dd
	sbc a                                            ; $7d21: $9f
	db $dd                                           ; $7d22: $dd
	db $10                                           ; $7d23: $10
	ld a, $f5                                        ; $7d24: $3e $f5
	ld a, c                                          ; $7d26: $79
	ld l, [hl]                                       ; $7d27: $6e
	ld e, e                                          ; $7d28: $5b
	ldh a, [$7d]                                     ; $7d29: $f0 $7d
	ld b, e                                          ; $7d2b: $43
	db $db                                           ; $7d2c: $db

jr_04b_7d2d:
	rst SubAFromDE                                          ; $7d2d: $df
	rst SubAFromDE                                          ; $7d2e: $df
	rst GetHLinHL                                          ; $7d2f: $cf
	sbc [hl]                                         ; $7d30: $9e
	adc h                                            ; $7d31: $8c
	call c, Call_04b_6308                            ; $7d32: $dc $08 $63
	jp nc, $b377                                     ; $7d35: $d2 $77 $b3

	cp $16                                           ; $7d38: $fe $16
	nop                                              ; $7d3a: $00
	sbc $33                                          ; $7d3b: $de $33
	jp c, $2b44                                      ; $7d3d: $da $44 $2b

	or $df                                           ; $7d40: $f6 $df
	ld h, [hl]                                       ; $7d42: $66
	call c, $5377                                    ; $7d43: $dc $77 $53
	or $d7                                           ; $7d46: $f6 $d7
	inc sp                                           ; $7d48: $33
	jp c, Jump_04b_5355                              ; $7d49: $da $55 $53

	or $c6                                           ; $7d4c: $f6 $c6
	inc sp                                           ; $7d4e: $33
	rst $38                                          ; $7d4f: $ff
	adc c                                            ; $7d50: $89
	db $fd                                           ; $7d51: $fd
	sbc e                                            ; $7d52: $9b
	ld bc, $9703                                     ; $7d53: $01 $03 $97
	ld a, [$9dfb]                                    ; $7d56: $fa $fb $9d
	ld l, b                                          ; $7d59: $68
	db $fd                                           ; $7d5a: $fd
	db $fc                                           ; $7d5b: $fc
	sbc h                                            ; $7d5c: $9c
	ld b, b                                          ; $7d5d: $40
	call z, $fc48                                    ; $7d5e: $cc $48 $fc
	sub h                                            ; $7d61: $94
	jr nz, jr_04b_7d94                               ; $7d62: $20 $30

jr_04b_7d64:
	cp h                                             ; $7d64: $bc
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	add b                                            ; $7d67: $80
	ld [bc], a                                       ; $7d68: $02
	ld [hl+], a                                      ; $7d69: $22
	ld [hl+], a                                      ; $7d6a: $22
	call nc, Call_04b_7760                           ; $7d6b: $d4 $60 $77
	ldh a, [c]                                       ; $7d6e: $f2
	rst SubAFromDE                                          ; $7d6f: $df
	db $10                                           ; $7d70: $10
	sbc l                                            ; $7d71: $9d
	nop                                              ; $7d72: $00
	db $10                                           ; $7d73: $10
	sbc $40                                          ; $7d74: $de $40
	sbc [hl]                                         ; $7d76: $9e
	ld a, b                                          ; $7d77: $78
	db $fd                                           ; $7d78: $fd
	rst SubAFromDE                                          ; $7d79: $df
	ret nz                                           ; $7d7a: $c0

	sbc l                                            ; $7d7b: $9d
	ld l, h                                          ; $7d7c: $6c
	ld a, a                                          ; $7d7d: $7f
	ld a, e                                          ; $7d7e: $7b
	rst SubAFromHL                                          ; $7d7f: $d7
	sbc [hl]                                         ; $7d80: $9e
	ld b, b                                          ; $7d81: $40
	cp $9e                                           ; $7d82: $fe $9e
	add b                                            ; $7d84: $80
	ld [hl], e                                       ; $7d85: $73
	cp h                                             ; $7d86: $bc
	sbc d                                            ; $7d87: $9a
	ld b, c                                          ; $7d88: $41
	ld hl, $80ff                                     ; $7d89: $21 $ff $80
	rst $38                                          ; $7d8c: $ff
	db $fc                                           ; $7d8d: $fc
	sub l                                            ; $7d8e: $95
	ret nz                                           ; $7d8f: $c0

	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	ld [bc], a                                       ; $7d92: $02
	dec h                                            ; $7d93: $25

jr_04b_7d94:
	ld bc, $5f10                                     ; $7d94: $01 $10 $5f
	rst $38                                          ; $7d97: $ff
	pop bc                                           ; $7d98: $c1
	sbc $ff                                          ; $7d99: $de $ff
	ld a, [$a093]                                    ; $7d9b: $fa $93 $a0
	nop                                              ; $7d9e: $00
	adc b                                            ; $7d9f: $88
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	ld [bc], a                                       ; $7da2: $02
	cp $00                                           ; $7da3: $fe $00
	ldh [rP1], a                                     ; $7da5: $e0 $00
	nop                                              ; $7da7: $00
	db $10                                           ; $7da8: $10
	db $fc                                           ; $7da9: $fc
	sbc e                                            ; $7daa: $9b
	jr @-$66                                         ; $7dab: $18 $98

	ld hl, sp-$10                                    ; $7dad: $f8 $f0
	db $fd                                           ; $7daf: $fd
	adc [hl]                                         ; $7db0: $8e
	add hl, bc                                       ; $7db1: $09
	call z, $2402                                    ; $7db2: $cc $02 $24
	ld c, b                                          ; $7db5: $48
	inc d                                            ; $7db6: $14
	ld d, b                                          ; $7db7: $50
	ld b, a                                          ; $7db8: $47
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	ld b, h                                          ; $7dbb: $44
	nop                                              ; $7dbc: $00
	jr nz, jr_04b_7e07                               ; $7dbd: $20 $48

	ld bc, $2022                                     ; $7dbf: $01 $22 $20
	ld h, e                                          ; $7dc2: $63
	xor [hl]                                         ; $7dc3: $ae
	sbc $80                                          ; $7dc4: $de $80
	ld hl, sp-$63                                    ; $7dc6: $f8 $9d
	ld bc, $f407                                     ; $7dc8: $01 $07 $f4
	sbc h                                            ; $7dcb: $9c
	inc bc                                           ; $7dcc: $03
	adc a                                            ; $7dcd: $8f
	sbc e                                            ; $7dce: $9b
	ei                                               ; $7dcf: $fb
	sub [hl]                                         ; $7dd0: $96
	jr jr_04b_7e4f                                   ; $7dd1: $18 $7c

	ld a, [hl+]                                      ; $7dd3: $2a
	db $10                                           ; $7dd4: $10
	inc c                                            ; $7dd5: $0c
	ld b, $00                                        ; $7dd6: $06 $00
	add c                                            ; $7dd8: $81
	ldh [$73], a                                     ; $7dd9: $e0 $73
	or h                                             ; $7ddb: $b4
	sbc [hl]                                         ; $7ddc: $9e
	ld [bc], a                                       ; $7ddd: $02
	cp $88                                           ; $7dde: $fe $88
	adc b                                            ; $7de0: $88
	inc l                                            ; $7de1: $2c
	inc de                                           ; $7de2: $13
	xor d                                            ; $7de3: $aa
	ld b, h                                          ; $7de4: $44
	add hl, hl                                       ; $7de5: $29
	sub b                                            ; $7de6: $90
	ld b, l                                          ; $7de7: $45
	ld sp, $8891                                     ; $7de8: $31 $91 $88
	nop                                              ; $7deb: $00
	ld hl, $4414                                     ; $7dec: $21 $14 $44
	jr nc, jr_04b_7e11                               ; $7def: $30 $20

	ldh [rLCDC], a                                   ; $7df1: $e0 $40
	ld b, b                                          ; $7df3: $40
	jr nz, jr_04b_7e36                               ; $7df4: $20 $40

	add b                                            ; $7df6: $80
	ld [hl], a                                       ; $7df7: $77
	ld l, e                                          ; $7df8: $6b
	ld l, a                                          ; $7df9: $6f
	or [hl]                                          ; $7dfa: $b6
	jp c, $f301                                      ; $7dfb: $da $01 $f3

	sbc l                                            ; $7dfe: $9d
	ld bc, $db0f                                     ; $7dff: $01 $0f $db
	rst $38                                          ; $7e02: $ff
	sub a                                            ; $7e03: $97
	cp $f0                                           ; $7e04: $fe $f0
	nop                                              ; $7e06: $00

jr_04b_7e07:
	rra                                              ; $7e07: $1f
	ld bc, $0406                                     ; $7e08: $01 $06 $04

jr_04b_7e0b:
	rra                                              ; $7e0b: $1f
	db $dd                                           ; $7e0c: $dd
	rst $38                                          ; $7e0d: $ff
	sbc e                                            ; $7e0e: $9b
	db $fd                                           ; $7e0f: $fd
	rst FarCall                                          ; $7e10: $f7

jr_04b_7e11:
	rst FarCall                                          ; $7e11: $f7
	db $ec                                           ; $7e12: $ec
	cp $9b                                           ; $7e13: $fe $9b
	add a                                            ; $7e15: $87
	nop                                              ; $7e16: $00
	ld bc, $6f7e                                     ; $7e17: $01 $7e $6f
	db $e4                                           ; $7e1a: $e4
	sbc h                                            ; $7e1b: $9c
	ei                                               ; $7e1c: $fb
	add a                                            ; $7e1d: $87
	inc c                                            ; $7e1e: $0c
	cp $9a                                           ; $7e1f: $fe $9a
	pop bc                                           ; $7e21: $c1
	cp a                                             ; $7e22: $bf
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst AddAOntoHL                                          ; $7e25: $ef
	ld a, e                                          ; $7e26: $7b
	ldh a, [c]                                       ; $7e27: $f2
	ld a, a                                          ; $7e28: $7f
	ld [hl+], a                                      ; $7e29: $22
	sub d                                            ; $7e2a: $92
	add c                                            ; $7e2b: $81
	ld h, c                                          ; $7e2c: $61
	jr nc, jr_04b_7e2f                               ; $7e2d: $30 $00

jr_04b_7e2f:
	nop                                              ; $7e2f: $00
	ldh a, [$e4]                                     ; $7e30: $f0 $e4
	ld h, h                                          ; $7e32: $64
	ld h, h                                          ; $7e33: $64
	jr nc, @+$63                                     ; $7e34: $30 $61

jr_04b_7e36:
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	ld a, e                                          ; $7e38: $7b
	db $eb                                           ; $7e39: $eb
	sbc c                                            ; $7e3a: $99
	db $ec                                           ; $7e3b: $ec
	ldh a, [$f3]                                     ; $7e3c: $f0 $f3
	ld a, a                                          ; $7e3e: $7f
	sbc a                                            ; $7e3f: $9f
	jr jr_04b_7ebc                                   ; $7e40: $18 $7a

	db $dd                                           ; $7e42: $dd
	add b                                            ; $7e43: $80
	nop                                              ; $7e44: $00
	jr nc, jr_04b_7ebf                               ; $7e45: $30 $78

	ld [hl], c                                       ; $7e47: $71
	cp h                                             ; $7e48: $bc
	dec e                                            ; $7e49: $1d
	ldh a, [$e0]                                     ; $7e4a: $f0 $e0
	ld l, h                                          ; $7e4c: $6c
	cp $ff                                           ; $7e4d: $fe $ff

jr_04b_7e4f:
	rst $38                                          ; $7e4f: $ff
	ld d, h                                          ; $7e50: $54
	and d                                            ; $7e51: $a2
	db $e4                                           ; $7e52: $e4
	ld a, [$96de]                                    ; $7e53: $fa $de $96
	ld d, $de                                        ; $7e56: $16 $de
	adc b                                            ; $7e58: $88
	ld c, b                                          ; $7e59: $48
	ld [$3801], sp                                   ; $7e5a: $08 $01 $38
	ld h, [hl]                                       ; $7e5d: $66
	ldh [c], a                                       ; $7e5e: $e2
	pop hl                                           ; $7e5f: $e1
	ret nc                                           ; $7e60: $d0

	sub b                                            ; $7e61: $90
	ld l, b                                          ; $7e62: $68
	sbc c                                            ; $7e63: $99
	xor h                                            ; $7e64: $ac
	ld d, b                                          ; $7e65: $50
	nop                                              ; $7e66: $00
	pop bc                                           ; $7e67: $c1
	adc a                                            ; $7e68: $8f
	nop                                              ; $7e69: $00
	ld a, e                                          ; $7e6a: $7b
	jr jr_04b_7e0b                                   ; $7e6b: $18 $9e

	add hl, bc                                       ; $7e6d: $09
	ld a, e                                          ; $7e6e: $7b
	ret z                                            ; $7e6f: $c8

	add b                                            ; $7e70: $80
	inc bc                                           ; $7e71: $03
	nop                                              ; $7e72: $00
	adc e                                            ; $7e73: $8b
	xor a                                            ; $7e74: $af
	db $e3                                           ; $7e75: $e3
	rst FarCall                                          ; $7e76: $f7
	rst $38                                          ; $7e77: $ff
	rst SubAFromDE                                          ; $7e78: $df
	inc bc                                           ; $7e79: $03
	ld bc, $4707                                     ; $7e7a: $01 $07 $47
	rst FarCall                                          ; $7e7d: $f7
	ei                                               ; $7e7e: $fb
	ld a, a                                          ; $7e7f: $7f
	ld a, a                                          ; $7e80: $7f
	xor [hl]                                         ; $7e81: $ae
	cp [hl]                                          ; $7e82: $be
	add $a2                                          ; $7e83: $c6 $a2
	add [hl]                                         ; $7e85: $86
	add d                                            ; $7e86: $82
	rst $38                                          ; $7e87: $ff
	cp [hl]                                          ; $7e88: $be
	ld l, l                                          ; $7e89: $6d
	ld a, l                                          ; $7e8a: $7d
	add hl, sp                                       ; $7e8b: $39
	ld [hl], l                                       ; $7e8c: $75
	ld h, l                                          ; $7e8d: $65
	ld a, l                                          ; $7e8e: $7d
	ld bc, $7d9e                                     ; $7e8f: $01 $9e $7d
	ld a, d                                          ; $7e92: $7a
	ld hl, sp-$76                                    ; $7e93: $f8 $8a
	ret nc                                           ; $7e95: $d0

	ldh [$c0], a                                     ; $7e96: $e0 $c0
	add b                                            ; $7e98: $80
	ld b, b                                          ; $7e99: $40
	add b                                            ; $7e9a: $80
	jp nz, $fcf0                                     ; $7e9b: $c2 $f0 $fc

	or $fe                                           ; $7e9e: $f6 $fe
	db $fc                                           ; $7ea0: $fc
	rst FarCall                                          ; $7ea1: $f7
	nop                                              ; $7ea2: $00
	ldh [$c0], a                                     ; $7ea3: $e0 $c0
	ret nc                                           ; $7ea5: $d0

	ldh a, [$f0]                                     ; $7ea6: $f0 $f0
	sub b                                            ; $7ea8: $90
	and b                                            ; $7ea9: $a0
	ld a, d                                          ; $7eaa: $7a
	ld [hl], c                                       ; $7eab: $71
	adc h                                            ; $7eac: $8c
	jr nz, jr_04b_7eaf                               ; $7ead: $20 $00

jr_04b_7eaf:
	nop                                              ; $7eaf: $00
	ld h, b                                          ; $7eb0: $60
	ld [hl], b                                       ; $7eb1: $70
	inc h                                            ; $7eb2: $24
	inc c                                            ; $7eb3: $0c
	inc c                                            ; $7eb4: $0c
	add hl, bc                                       ; $7eb5: $09
	nop                                              ; $7eb6: $00
	ld a, [$7ef0]                                    ; $7eb7: $fa $f0 $7e
	ld [de], a                                       ; $7eba: $12
	inc b                                            ; $7ebb: $04

jr_04b_7ebc:
	inc b                                            ; $7ebc: $04
	rlca                                             ; $7ebd: $07
	rrca                                             ; $7ebe: $0f

jr_04b_7ebf:
	db $dd                                           ; $7ebf: $dd
	halt                                             ; $7ec0: $76
	sub b                                            ; $7ec1: $90
	sbc c                                            ; $7ec2: $99
	add b                                            ; $7ec3: $80
	ld h, [hl]                                       ; $7ec4: $66
	jp nc, $1597                                     ; $7ec5: $d2 $97 $15

	ld l, a                                          ; $7ec8: $6f
	halt                                             ; $7ec9: $76
	cp a                                             ; $7eca: $bf
	sub b                                            ; $7ecb: $90
	inc h                                            ; $7ecc: $24
	ld l, [hl]                                       ; $7ecd: $6e
	rst AddAOntoHL                                          ; $7ece: $ef
	sbc h                                            ; $7ecf: $9c
	ld c, $0a                                        ; $7ed0: $0e $0a
	ld [hl], b                                       ; $7ed2: $70
	cp $fe                                           ; $7ed3: $fe $fe
	ld c, l                                          ; $7ed5: $4d
	rra                                              ; $7ed6: $1f
	ccf                                              ; $7ed7: $3f
	rlca                                             ; $7ed8: $07
	rla                                              ; $7ed9: $17
	ld a, a                                          ; $7eda: $7f
	call c, Call_04b_72ff                            ; $7edb: $dc $ff $72
	ld c, h                                          ; $7ede: $4c
	sbc b                                            ; $7edf: $98
	sbc l                                            ; $7ee0: $9d
	sub b                                            ; $7ee1: $90
	ldh [$3f], a                                     ; $7ee2: $e0 $3f
	ld [hl], $ec                                     ; $7ee4: $36 $ec
	ldh [$7b], a                                     ; $7ee6: $e0 $7b
	add hl, sp                                       ; $7ee8: $39
	add l                                            ; $7ee9: $85
	rst $38                                          ; $7eea: $ff
	ldh a, [$78]                                     ; $7eeb: $f0 $78
	or $da                                           ; $7eed: $f6 $da
	ld c, a                                          ; $7eef: $4f
	cp [hl]                                          ; $7ef0: $be
	ccf                                              ; $7ef1: $3f
	inc b                                            ; $7ef2: $04
	nop                                              ; $7ef3: $00
	add b                                            ; $7ef4: $80
	add hl, bc                                       ; $7ef5: $09
	ld sp, $c1b0                                     ; $7ef6: $31 $b0 $c1
	ret nz                                           ; $7ef9: $c0

	ld a, [$2950]                                    ; $7efa: $fa $50 $29
	dec d                                            ; $7efd: $15
	dec c                                            ; $7efe: $0d

Call_04b_7eff:
Jump_04b_7eff:
	sub d                                            ; $7eff: $92
	cp e                                             ; $7f00: $bb
	pop af                                           ; $7f01: $f1
	ret nc                                           ; $7f02: $d0

	ld [$93fe], sp                                   ; $7f03: $08 $fe $93
	dec c                                            ; $7f06: $0d
	inc [hl]                                         ; $7f07: $34
	ld a, $6f                                        ; $7f08: $3e $6f
	add b                                            ; $7f0a: $80
	nop                                              ; $7f0b: $00
	jr @+$3a                                         ; $7f0c: $18 $38

	ld e, [hl]                                       ; $7f0e: $5e
	inc c                                            ; $7f0f: $0c
	sub e                                            ; $7f10: $93
	ld [hl], e                                       ; $7f11: $73
	ld [hl], d                                       ; $7f12: $72
	dec sp                                           ; $7f13: $3b
	sbc h                                            ; $7f14: $9c
	ldh a, [c]                                       ; $7f15: $f2
	ld l, h                                          ; $7f16: $6c
	db $fc                                           ; $7f17: $fc
	db $db                                           ; $7f18: $db
	ld bc, $819e                                     ; $7f19: $01 $9e $81
	ld h, [hl]                                       ; $7f1c: $66
	ret nz                                           ; $7f1d: $c0

	sbc l                                            ; $7f1e: $9d
	add b                                            ; $7f1f: $80
	ccf                                              ; $7f20: $3f
	jp c, $66ff                                      ; $7f21: $da $ff $66

	and b                                            ; $7f24: $a0
	reti                                             ; $7f25: $d9


	rst $38                                          ; $7f26: $ff
	ld sp, hl                                        ; $7f27: $f9
	rlca                                             ; $7f28: $07
	ldh a, [$9c]                                     ; $7f29: $f0 $9c
	ld b, e                                          ; $7f2b: $43
	di                                               ; $7f2c: $f3
	sbc [hl]                                         ; $7f2d: $9e
	sbc $ff                                          ; $7f2e: $de $ff
	sbc [hl]                                         ; $7f30: $9e
	db $fc                                           ; $7f31: $fc
	ld a, d                                          ; $7f32: $7a
	sub $9e                                          ; $7f33: $d6 $9e
	rst SubAFromDE                                          ; $7f35: $df
	call c, $86ff                                    ; $7f36: $dc $ff $86
	db $fd                                           ; $7f39: $fd
	add e                                            ; $7f3a: $83
	ld de, $8180                                     ; $7f3b: $11 $80 $81
	or l                                             ; $7f3e: $b5
	inc e                                            ; $7f3f: $1c
	dec c                                            ; $7f40: $0d
	rst $38                                          ; $7f41: $ff
	ld hl, sp-$01                                    ; $7f42: $f8 $ff
	call $bfe7                                       ; $7f44: $cd $e7 $bf
	db $fc                                           ; $7f47: $fc
	rst $38                                          ; $7f48: $ff
	add b                                            ; $7f49: $80
	or h                                             ; $7f4a: $b4
	ld hl, $f0b0                                     ; $7f4b: $21 $b0 $f0
	add b                                            ; $7f4e: $80
	jp nz, $e1fc                                     ; $7f4f: $c2 $fc $e1

	ld [hl], a                                       ; $7f52: $77
	add $8f                                          ; $7f53: $c6 $8f
	cp a                                             ; $7f55: $bf
	rst FarCall                                          ; $7f56: $f7
	rst $38                                          ; $7f57: $ff
	nop                                              ; $7f58: $00
	db $10                                           ; $7f59: $10
	sub c                                            ; $7f5a: $91
	adc l                                            ; $7f5b: $8d
	rst AddAOntoHL                                          ; $7f5c: $ef
	ld a, a                                          ; $7f5d: $7f
	ccf                                              ; $7f5e: $3f
	ccf                                              ; $7f5f: $3f
	rrca                                             ; $7f60: $0f
	rst $38                                          ; $7f61: $ff
	ccf                                              ; $7f62: $3f
	rra                                              ; $7f63: $1f
	rst $38                                          ; $7f64: $ff
	ld a, e                                          ; $7f65: $7b
	dec l                                            ; $7f66: $2d
	rst SubAFromDE                                          ; $7f67: $df
	ld c, $99                                        ; $7f68: $0e $99
	ld b, $8b                                        ; $7f6a: $06 $8b
	sub e                                            ; $7f6c: $93
	ld h, d                                          ; $7f6d: $62
	db $e3                                           ; $7f6e: $e3
	pop af                                           ; $7f6f: $f1
	ld [hl], a                                       ; $7f70: $77
	push bc                                          ; $7f71: $c5
	db $dd                                           ; $7f72: $dd
	db $fd                                           ; $7f73: $fd
	adc [hl]                                         ; $7f74: $8e
	and e                                            ; $7f75: $a3
	cp d                                             ; $7f76: $ba

Call_04b_7f77:
	ld a, [$b7b7]                                    ; $7f77: $fa $b7 $b7
	or [hl]                                          ; $7f7a: $b6
	db $d3                                           ; $7f7b: $d3
	or $7c                                           ; $7f7c: $f6 $7c

Jump_04b_7f7e:
	db $f4                                           ; $7f7e: $f4
	or l                                             ; $7f7f: $b5
	push af                                          ; $7f80: $f5
	rst $38                                          ; $7f81: $ff
	ld [hl], l                                       ; $7f82: $75
	dec [hl]                                         ; $7f83: $35
	dec a                                            ; $7f84: $3d
	inc c                                            ; $7f85: $0c
	ld a, d                                          ; $7f86: $7a
	jp c, $8380                                      ; $7f87: $da $80 $83

	ldh a, [$fd]                                     ; $7f8a: $f0 $fd
	sub e                                            ; $7f8c: $93
	ld [hl], c                                       ; $7f8d: $71
	db $db                                           ; $7f8e: $db
	cp $bf                                           ; $7f8f: $fe $bf
	rst FarCall                                          ; $7f91: $f7
	cp $f9                                           ; $7f92: $fe $f9
	rst $38                                          ; $7f94: $ff
	ld c, c                                          ; $7f95: $49
	ld b, d                                          ; $7f96: $42
	add hl, hl                                       ; $7f97: $29
	add hl, de                                       ; $7f98: $19
	adc b                                            ; $7f99: $88
	sub b                                            ; $7f9a: $90
	ld hl, $b205                                     ; $7f9b: $21 $05 $b2
	db $e3                                           ; $7f9e: $e3
	ld [hl], e                                       ; $7f9f: $73
	ld sp, hl                                        ; $7fa0: $f9
	pop de                                           ; $7fa1: $d1
	rst AddAOntoHL                                          ; $7fa2: $ef
	rst JumpTable                                          ; $7fa3: $c7
	adc e                                            ; $7fa4: $8b
	nop                                              ; $7fa5: $00
	ld a, h                                          ; $7fa6: $7c
	db $fc                                           ; $7fa7: $fc
	sbc c                                            ; $7fa8: $99
	cp b                                             ; $7fa9: $b8
	dec de                                           ; $7faa: $1b
	ld a, e                                          ; $7fab: $7b
	ei                                               ; $7fac: $fb
	cp e                                             ; $7fad: $bb
	ld a, l                                          ; $7fae: $7d
	sbc $fb                                          ; $7faf: $de $fb
	sbc [hl]                                         ; $7fb1: $9e
	rst $38                                          ; $7fb2: $ff
	sbc $fb                                          ; $7fb3: $de $fb
	sub [hl]                                         ; $7fb5: $96
	ld hl, $1849                                     ; $7fb6: $21 $49 $18
	ld bc, $cf83                                     ; $7fb9: $01 $83 $cf
	db $fc                                           ; $7fbc: $fc
	ld hl, sp-$62                                    ; $7fbd: $f8 $9e
	ld a, d                                          ; $7fbf: $7a
	ld e, $dd                                        ; $7fc0: $1e $dd
	rst $38                                          ; $7fc2: $ff
	sub a                                            ; $7fc3: $97
	ld a, $3f                                        ; $7fc4: $3e $3f
	ccf                                              ; $7fc6: $3f
	ld c, $ff                                        ; $7fc7: $0e $ff
	ld a, a                                          ; $7fc9: $7f
	db $fd                                           ; $7fca: $fd
	ld a, a                                          ; $7fcb: $7f
	ld [hl], a                                       ; $7fcc: $77
	sub h                                            ; $7fcd: $94
	ld a, e                                          ; $7fce: $7b
	sbc l                                            ; $7fcf: $9d
	sub h                                            ; $7fd0: $94
	rst $38                                          ; $7fd1: $ff
	ld c, b                                          ; $7fd2: $48
	ld [hl+], a                                      ; $7fd3: $22
	ld [bc], a                                       ; $7fd4: $02
	nop                                              ; $7fd5: $00
	db $10                                           ; $7fd6: $10
	cp $fe                                           ; $7fd7: $fe $fe
	cp [hl]                                          ; $7fd9: $be
	or $fc                                           ; $7fda: $f6 $fc
	ld l, l                                          ; $7fdc: $6d
	db $eb                                           ; $7fdd: $eb
	sub h                                            ; $7fde: $94
	ld [$6020], sp                                   ; $7fdf: $08 $20 $60
	pop af                                           ; $7fe2: $f1
	db $e4                                           ; $7fe3: $e4
	call nz, $8cfc                                   ; $7fe4: $c4 $fc $8c
	di                                               ; $7fe7: $f3
	rst $38                                          ; $7fe8: $ff
	ld sp, hl                                        ; $7fe9: $f9
	call c, Call_04b_7cff                            ; $7fea: $dc $ff $7c
	or h                                             ; $7fed: $b4
	rst SubAFromDE                                          ; $7fee: $df
	ret nz                                           ; $7fef: $c0

	sbc d                                            ; $7ff0: $9a
	rrca                                             ; $7ff1: $0f
	dec e                                            ; $7ff2: $1d
	add hl, sp                                       ; $7ff3: $39
	rst $38                                          ; $7ff4: $ff
	ld l, a                                          ; $7ff5: $6f
	jp c, Jump_04b_7eff                              ; $7ff6: $da $ff $7e

	sub $7f                                          ; $7ff9: $d6 $7f
	ld a, a                                          ; $7ffb: $7f
	sbc b                                            ; $7ffc: $98
	ld b, c                                          ; $7ffd: $41
	add c                                            ; $7ffe: $81
	db $01                                           ; $7fff: $01
