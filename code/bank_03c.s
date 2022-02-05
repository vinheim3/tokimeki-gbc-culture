; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

	or $f6                                           ; $4000: $f6 $f6
	ldh a, [$c1]                                     ; $4002: $f0 $c1

jr_03c_4004:
	and b                                            ; $4004: $a0
	pop bc                                           ; $4005: $c1
	add b                                            ; $4006: $80
	or a                                             ; $4007: $b7
	sbc c                                            ; $4008: $99
	pop af                                           ; $4009: $f1
	rst FarCall                                          ; $400a: $f7
	nop                                              ; $400b: $00
	add b                                            ; $400c: $80
	db $10                                           ; $400d: $10
	ld a, a                                          ; $400e: $7f
	pop bc                                           ; $400f: $c1
	ld a, e                                          ; $4010: $7b
	rla                                              ; $4011: $17
	sbc d                                            ; $4012: $9a
	push de                                          ; $4013: $d5
	ld e, d                                          ; $4014: $5a
	call $8c01                                       ; $4015: $cd $01 $8c
	ld a, e                                          ; $4018: $7b
	ld c, $f9                                        ; $4019: $0e $f9
	sbc e                                            ; $401b: $9b
	ld b, l                                          ; $401c: $45
	ld b, $04                                        ; $401d: $06 $04
	ei                                               ; $401f: $fb
	sbc $04                                          ; $4020: $de $04
	sbc c                                            ; $4022: $99
	add h                                            ; $4023: $84
	rra                                              ; $4024: $1f
	rrca                                             ; $4025: $0f
	rrca                                             ; $4026: $0f
	inc hl                                           ; $4027: $23
	rrca                                             ; $4028: $0f
	sbc $6f                                          ; $4029: $de $6f
	add [hl]                                         ; $402b: $86
	ld c, a                                          ; $402c: $4f
	and e                                            ; $402d: $a3
	ld d, e                                          ; $402e: $53
	adc a                                            ; $402f: $8f
	ld b, b                                          ; $4030: $40
	db $10                                           ; $4031: $10
	ld e, a                                          ; $4032: $5f
	sbc [hl]                                         ; $4033: $9e
	ld a, a                                          ; $4034: $7f
	ld a, a                                          ; $4035: $7f
	rst $38                                          ; $4036: $ff
	ld a, d                                          ; $4037: $7a
	nop                                              ; $4038: $00
	ld a, b                                          ; $4039: $78
	ld a, a                                          ; $403a: $7f
	ld a, a                                          ; $403b: $7f
	db $eb                                           ; $403c: $eb
	adc e                                            ; $403d: $8b
	dec de                                           ; $403e: $1b
	dec b                                            ; $403f: $05
	ld [hl], e                                       ; $4040: $73
	rst SubAFromBC                                          ; $4041: $e7
	rst $38                                          ; $4042: $ff
	ei                                               ; $4043: $fb
	ret nz                                           ; $4044: $c0

	ld a, e                                          ; $4045: $7b
	ld l, a                                          ; $4046: $6f
	sub e                                            ; $4047: $93
	add b                                            ; $4048: $80
	ldh a, [$f0]                                     ; $4049: $f0 $f0
	ldh [$ea], a                                     ; $404b: $e0 $ea
	add c                                            ; $404d: $81
	ld a, [bc]                                       ; $404e: $0a
	nop                                              ; $404f: $00
	ld a, [bc]                                       ; $4050: $0a
	inc b                                            ; $4051: $04
	ret nz                                           ; $4052: $c0

	sub h                                            ; $4053: $94
	db $fd                                           ; $4054: $fd
	sbc c                                            ; $4055: $99
	ld bc, $0102                                     ; $4056: $01 $02 $01
	ld a, [bc]                                       ; $4059: $0a
	nop                                              ; $405a: $00
	ld d, b                                          ; $405b: $50
	ld a, e                                          ; $405c: $7b
	ld sp, hl                                        ; $405d: $f9
	add b                                            ; $405e: $80
	dec b                                            ; $405f: $05
	ld c, $05                                        ; $4060: $0e $05
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	ld b, $00                                        ; $4064: $06 $00
	nop                                              ; $4066: $00
	add d                                            ; $4067: $82
	ld e, $9e                                        ; $4068: $1e $9e
	ld [hl+], a                                      ; $406a: $22
	ld b, a                                          ; $406b: $47
	jr z, jr_03c_4004                                ; $406c: $28 $96

	xor [hl]                                         ; $406e: $ae
	inc a                                            ; $406f: $3c

Call_03c_4070:
	and b                                            ; $4070: $a0
	jr nz, jr_03c_4076                               ; $4071: $20 $03

	inc bc                                           ; $4073: $03
	ld c, a                                          ; $4074: $4f
	nop                                              ; $4075: $00

jr_03c_4076:
	inc bc                                           ; $4076: $03
	ld e, a                                          ; $4077: $5f
	rst $38                                          ; $4078: $ff
	di                                               ; $4079: $f3
	db $fc                                           ; $407a: $fc
	ld a, h                                          ; $407b: $7c
	or b                                             ; $407c: $b0
	add e                                            ; $407d: $83
	sbc e                                            ; $407e: $9b
	ld hl, sp-$60                                    ; $407f: $f8 $a0
	nop                                              ; $4081: $00
	inc c                                            ; $4082: $0c
	halt                                             ; $4083: $76
	jp nz, Jump_03c_6a7f                             ; $4084: $c2 $7f $6a

	rst SubAFromDE                                          ; $4087: $df
	cp [hl]                                          ; $4088: $be
	sub e                                            ; $4089: $93
	ld a, [$c1c0]                                    ; $408a: $fa $c0 $c1
	rst SubAFromDE                                          ; $408d: $df
	ld sp, $5fff                                     ; $408e: $31 $ff $5f
	rst SubAFromHL                                          ; $4091: $d7
	ld [hl], a                                       ; $4092: $77
	halt                                             ; $4093: $76
	ld b, b                                          ; $4094: $40
	ld [hl], a                                       ; $4095: $77
	sbc $f7                                          ; $4096: $de $f7
	add b                                            ; $4098: $80
	rst SubAFromBC                                          ; $4099: $e7
	halt                                             ; $409a: $76
	halt                                             ; $409b: $76
	ccf                                              ; $409c: $3f
	adc a                                            ; $409d: $8f

Call_03c_409e:
	ccf                                              ; $409e: $3f
	ld l, a                                          ; $409f: $6f
	ld l, a                                          ; $40a0: $6f
	sbc $10                                          ; $40a1: $de $10
	add b                                            ; $40a3: $80
	ld d, b                                          ; $40a4: $50
	add b                                            ; $40a5: $80
	add c                                            ; $40a6: $81
	ldh [$a0], a                                     ; $40a7: $e0 $a0
	nop                                              ; $40a9: $00
	inc b                                            ; $40aa: $04
	db $10                                           ; $40ab: $10
	ld hl, $e443                                     ; $40ac: $21 $43 $e4
	adc e                                            ; $40af: $8b
	ld d, h                                          ; $40b0: $54
	and e                                            ; $40b1: $a3
	inc b                                            ; $40b2: $04
	inc b                                            ; $40b3: $04
	dec b                                            ; $40b4: $05
	ld b, h                                          ; $40b5: $44
	add l                                            ; $40b6: $85
	nop                                              ; $40b7: $00
	rst SubAFromDE                                          ; $40b8: $df
	inc b                                            ; $40b9: $04
	add b                                            ; $40ba: $80
	sub e                                            ; $40bb: $93
	db $e3                                           ; $40bc: $e3
	ldh a, [c]                                       ; $40bd: $f2
	and e                                            ; $40be: $a3
	ld h, d                                          ; $40bf: $62
	inc b                                            ; $40c0: $04
	ld h, b                                          ; $40c1: $60
	db $e3                                           ; $40c2: $e3
	ld [$fe00], sp                                   ; $40c3: $08 $00 $fe

jr_03c_40c6:
	nop                                              ; $40c6: $00
	xor $25                                          ; $40c7: $ee $25
	jr nz, jr_03c_40c6                               ; $40c9: $20 $fb

	ld [bc], a                                       ; $40cb: $02
	cp $fe                                           ; $40cc: $fe $fe
	ld [bc], a                                       ; $40ce: $02
	db $10                                           ; $40cf: $10
	jp c, $dbdb                                      ; $40d0: $da $db $db

	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	ei                                               ; $40d5: $fb
	inc bc                                           ; $40d6: $03
	nop                                              ; $40d7: $00
	add h                                            ; $40d8: $84
	ld h, b                                          ; $40d9: $60
	sbc l                                            ; $40da: $9d
	db $fc                                           ; $40db: $fc
	ldh a, [$dd]                                     ; $40dc: $f0 $dd
	ei                                               ; $40de: $fb
	adc c                                            ; $40df: $89

Jump_03c_40e0:
	dec de                                           ; $40e0: $1b
	add b                                            ; $40e1: $80
	cp h                                             ; $40e2: $bc
	add h                                            ; $40e3: $84
	cp $84                                           ; $40e4: $fe $84
	add hl, sp                                       ; $40e6: $39
	db $fd                                           ; $40e7: $fd
	db $fd                                           ; $40e8: $fd
	ld a, l                                          ; $40e9: $7d
	nop                                              ; $40ea: $00
	rlca                                             ; $40eb: $07
	cp $04                                           ; $40ec: $fe $04
	add hl, sp                                       ; $40ee: $39
	ld a, l                                          ; $40ef: $7d
	push af                                          ; $40f0: $f5
	ld c, l                                          ; $40f1: $4d
	nop                                              ; $40f2: $00
	nop                                              ; $40f3: $00
	cp $01                                           ; $40f4: $fe $01
	db $fd                                           ; $40f6: $fd
	ld a, [hl]                                       ; $40f7: $7e
	sbc h                                            ; $40f8: $9c
	ld a, a                                          ; $40f9: $7f
	ld sp, hl                                        ; $40fa: $f9
	db $dd                                           ; $40fb: $dd
	rst AddAOntoHL                                          ; $40fc: $ef
	cp $9d                                           ; $40fd: $fe $9d
	dec bc                                           ; $40ff: $0b
	inc b                                            ; $4100: $04
	cp $9a                                           ; $4101: $fe $9a
	rst FarCall                                          ; $4103: $f7
	ld [hl], a                                       ; $4104: $77
	ld a, a                                          ; $4105: $7f
	inc bc                                           ; $4106: $03
	ldh a, [$dd]                                     ; $4107: $f0 $dd
	rst FarCall                                          ; $4109: $f7
	rst $38                                          ; $410a: $ff
	sbc l                                            ; $410b: $9d
	dec sp                                           ; $410c: $3b
	ld b, l                                          ; $410d: $45
	cp $99                                           ; $410e: $fe $99
	cp e                                             ; $4110: $bb
	dec sp                                           ; $4111: $3b
	ld a, e                                          ; $4112: $7b
	dec sp                                           ; $4113: $3b
	nop                                              ; $4114: $00
	cp a                                             ; $4115: $bf
	sbc $bb                                          ; $4116: $de $bb
	rst $38                                          ; $4118: $ff
	sbc l                                            ; $4119: $9d
	rst SubAFromDE                                          ; $411a: $df
	and c                                            ; $411b: $a1
	ld [hl], l                                       ; $411c: $75
	pop af                                           ; $411d: $f1
	sbc $df                                          ; $411e: $de $df
	ld a, a                                          ; $4120: $7f
	push bc                                          ; $4121: $c5
	sbc $de                                          ; $4122: $de $de
	rst $38                                          ; $4124: $ff
	sbc l                                            ; $4125: $9d
	ld a, a                                          ; $4126: $7f
	di                                               ; $4127: $f3
	ld [hl], e                                       ; $4128: $73
	ret nc                                           ; $4129: $d0

	rst SubAFromDE                                          ; $412a: $df
	ld [hl], a                                       ; $412b: $77
	ld a, a                                          ; $412c: $7f
	ei                                               ; $412d: $fb
	sbc $f7                                          ; $412e: $de $f7
	sbc d                                            ; $4130: $9a
	ld bc, $ff21                                     ; $4131: $01 $21 $ff
	ld bc, $7b40                                     ; $4134: $01 $40 $7b
	ldh [rPCM34], a                                  ; $4137: $e0 $77
	push hl                                          ; $4139: $e5
	sbc [hl]                                         ; $413a: $9e
	sbc [hl]                                         ; $413b: $9e
	ld [hl], e                                       ; $413c: $73
	ldh [$7e], a                                     ; $413d: $e0 $7e
	ret                                              ; $413f: $c9


	sbc $01                                          ; $4140: $de $01
	db $dd                                           ; $4142: $dd
	ei                                               ; $4143: $fb
	ld a, a                                          ; $4144: $7f
	or $77                                           ; $4145: $f6 $77
	ei                                               ; $4147: $fb
	ld a, a                                          ; $4148: $7f
	ret nz                                           ; $4149: $c0

	sbc e                                            ; $414a: $9b
	jr nz, @+$42                                     ; $414b: $20 $40

	ld b, b                                          ; $414d: $40
	ld b, c                                          ; $414e: $41
	ld a, c                                          ; $414f: $79
	jp c, $c07f                                      ; $4150: $da $7f $c0

	ld a, e                                          ; $4153: $7b
	inc d                                            ; $4154: $14
	sbc d                                            ; $4155: $9a
	sbc $04                                          ; $4156: $de $04
	inc b                                            ; $4158: $04
	ld [hl], a                                       ; $4159: $77
	adc b                                            ; $415a: $88
	sbc $80                                          ; $415b: $de $80
	sbc d                                            ; $415d: $9a
	rst FarCall                                          ; $415e: $f7
	ld a, e                                          ; $415f: $7b
	ld [hl], e                                       ; $4160: $73
	ldh a, [rTAC]                                    ; $4161: $f0 $07
	db $dd                                           ; $4163: $dd
	ld [hl], a                                       ; $4164: $77
	ld a, a                                          ; $4165: $7f
	ld a, c                                          ; $4166: $79
	ld a, a                                          ; $4167: $7f
	and c                                            ; $4168: $a1
	sbc h                                            ; $4169: $9c
	ld hl, $0101                                     ; $416a: $21 $01 $01
	ld a, e                                          ; $416d: $7b
	and $7f                                          ; $416e: $e6 $7f
	pop hl                                           ; $4170: $e1
	db $dd                                           ; $4171: $dd
	sbc $7e                                          ; $4172: $de $7e
	ld [hl], d                                       ; $4174: $72
	sbc [hl]                                         ; $4175: $9e
	db $10                                           ; $4176: $10
	sbc $08                                          ; $4177: $de $08
	ld a, a                                          ; $4179: $7f
	and l                                            ; $417a: $a5
	rst SubAFromDE                                          ; $417b: $df
	rst SubAFromBC                                          ; $417c: $e7
	ld [hl], e                                       ; $417d: $73
	and c                                            ; $417e: $a1
	sub [hl]                                         ; $417f: $96
	rst FarCall                                          ; $4180: $f7
	ld hl, $9e21                                     ; $4181: $21 $21 $9e
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	inc c                                            ; $4186: $0c
	ld d, $fa                                        ; $4187: $16 $fa
	ld a, e                                          ; $4189: $7b
	ldh [$dc], a                                     ; $418a: $e0 $dc
	cp $9c                                           ; $418c: $fe $9c
	rrca                                             ; $418e: $0f
	inc bc                                           ; $418f: $03
	rst $38                                          ; $4190: $ff
	db $fd                                           ; $4191: $fd
	sbc d                                            ; $4192: $9a
	rst FarCall                                          ; $4193: $f7
	ldh a, [$80]                                     ; $4194: $f0 $80
	ld bc, $ddff                                     ; $4196: $01 $ff $dd
	rst FarCall                                          ; $4199: $f7
	sub h                                            ; $419a: $94
	add b                                            ; $419b: $80
	ldh [$de], a                                     ; $419c: $e0 $de

jr_03c_419e:
	ld b, d                                          ; $419e: $42
	ld b, b                                          ; $419f: $40
	ld b, b                                          ; $41a0: $40
	pop bc                                           ; $41a1: $c1
	db $fd                                           ; $41a2: $fd
	ld e, $1c                                        ; $41a3: $1e $1c
	db $fd                                           ; $41a5: $fd
	sbc $bd                                          ; $41a6: $de $bd
	sbc l                                            ; $41a8: $9d
	inc a                                            ; $41a9: $3c
	ld a, b                                          ; $41aa: $78
	ld a, e                                          ; $41ab: $7b
	sub b                                            ; $41ac: $90
	halt                                             ; $41ad: $76
	ld a, [hl]                                       ; $41ae: $7e
	sbc l                                            ; $41af: $9d
	sub b                                            ; $41b0: $90
	rst SubAFromBC                                          ; $41b1: $e7
	call c, Call_03c_7edf                            ; $41b2: $dc $df $7e
	db $e4                                           ; $41b5: $e4
	ld a, [hl]                                       ; $41b6: $7e
	jr nz, @-$60                                     ; $41b7: $20 $9e

	ei                                               ; $41b9: $fb
	sbc $80                                          ; $41ba: $de $80
	ld a, [hl]                                       ; $41bc: $7e
	xor h                                            ; $41bd: $ac

jr_03c_41be:
	ld a, a                                          ; $41be: $7f
	jr nc, jr_03c_419e                               ; $41bf: $30 $dd

	ld a, e                                          ; $41c1: $7b
	sub h                                            ; $41c2: $94
	nop                                              ; $41c3: $00
	ld [hl], a                                       ; $41c4: $77
	ld b, $02                                        ; $41c5: $06 $02
	ld l, a                                          ; $41c7: $6f
	ld [bc], a                                       ; $41c8: $02
	ld [hl+], a                                      ; $41c9: $22
	nop                                              ; $41ca: $00
	ld [$a96e], sp                                   ; $41cb: $08 $6e $a9
	sbc $6d                                          ; $41ce: $de $6d
	sbc e                                            ; $41d0: $9b
	ld c, l                                          ; $41d1: $4d
	inc h                                            ; $41d2: $24
	ld h, l                                          ; $41d3: $65
	ld l, l                                          ; $41d4: $6d
	add hl, bc                                       ; $41d5: $09
	nop                                              ; $41d6: $00
	call $9d33                                       ; $41d7: $cd $33 $9d
	ld d, l                                          ; $41da: $55
	ld b, l                                          ; $41db: $45
	reti                                             ; $41dc: $d9


	ld d, l                                          ; $41dd: $55
	call nc, $8006                                   ; $41de: $d4 $06 $80
	jr nz, jr_03c_41be                               ; $41e1: $20 $db

jr_03c_41e3:
	jr nz, @-$23                                     ; $41e3: $20 $db

	xor d                                            ; $41e5: $aa
	ld d, c                                          ; $41e6: $51
	add h                                            ; $41e7: $84
	nop                                              ; $41e8: $00
	ld bc, $dbda                                     ; $41e9: $01 $da $db
	db $db                                           ; $41ec: $db
	nop                                              ; $41ed: $00
	db $db                                           ; $41ee: $db
	db $10                                           ; $41ef: $10
	db $eb                                           ; $41f0: $eb
	ld b, b                                          ; $41f1: $40
	cp e                                             ; $41f2: $bb
	ld b, b                                          ; $41f3: $40
	cp e                                             ; $41f4: $bb
	ld b, c                                          ; $41f5: $41
	cp d                                             ; $41f6: $ba
	ld bc, $01ba                                     ; $41f7: $01 $ba $01
	inc bc                                           ; $41fa: $03
	ldh [$c0], a                                     ; $41fb: $e0 $c0
	inc hl                                           ; $41fd: $23
	ret c                                            ; $41fe: $d8

	inc hl                                           ; $41ff: $23
	add b                                            ; $4200: $80
	reti                                             ; $4201: $d9


	inc c                                            ; $4202: $0c
	ld sp, $251d                                     ; $4203: $31 $1d $25
	ld hl, sp-$33                                    ; $4206: $f8 $cd
	ldh a, [$9d]                                     ; $4208: $f0 $9d
	ldh a, [$fd]                                     ; $420a: $f0 $fd
	ld b, b                                          ; $420c: $40
	ld e, l                                          ; $420d: $5d
	dec c                                            ; $420e: $0d
	db $10                                           ; $420f: $10
	add b                                            ; $4210: $80
	ld bc, $0070                                     ; $4211: $01 $70 $00
	scf                                              ; $4214: $37
	jp $f007                                         ; $4215: $c3 $07 $f0


	inc bc                                           ; $4218: $03
	ldh a, [$75]                                     ; $4219: $f0 $75
	ret nc                                           ; $421b: $d0

	ld [hl], a                                       ; $421c: $77
	ret nz                                           ; $421d: $c0

	or a                                             ; $421e: $b7
	nop                                              ; $421f: $00
	sub h                                            ; $4220: $94
	jr c, jr_03c_41e3                                ; $4221: $38 $c0

	nop                                              ; $4223: $00
	rla                                              ; $4224: $17
	nop                                              ; $4225: $00
	ld [bc], a                                       ; $4226: $02
	dec de                                           ; $4227: $1b
	ld h, b                                          ; $4228: $60
	nop                                              ; $4229: $00
	ei                                               ; $422a: $fb
	nop                                              ; $422b: $00
	sbc $7b                                          ; $422c: $de $7b
	ld a, a                                          ; $422e: $7f
	db $fc                                           ; $422f: $fc
	add b                                            ; $4230: $80
	ld a, b                                          ; $4231: $78
	inc bc                                           ; $4232: $03
	nop                                              ; $4233: $00
	cp e                                             ; $4234: $bb
	nop                                              ; $4235: $00
	add hl, sp                                       ; $4236: $39
	cp b                                             ; $4237: $b8
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	cp l                                             ; $423a: $bd
	ld [$a9b5], sp                                   ; $423b: $08 $b5 $a9
	cp l                                             ; $423e: $bd
	cp h                                             ; $423f: $bc
	ld bc, $8000                                     ; $4240: $01 $00 $80
	nop                                              ; $4243: $00
	sbc $00                                          ; $4244: $de $00
	adc $00                                          ; $4246: $ce $00
	nop                                              ; $4248: $00
	dec h                                            ; $4249: $25
	jp z, $45aa                                      ; $424a: $ca $aa $45

	xor d                                            ; $424d: $aa
	rst AddAOntoHL                                          ; $424e: $ef
	rst AddAOntoHL                                          ; $424f: $ef
	cp $80                                           ; $4250: $fe $80
	ld [bc], a                                       ; $4252: $02
	push af                                          ; $4253: $f5
	ld d, l                                          ; $4254: $55
	and d                                            ; $4255: $a2
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	ld d, l                                          ; $4258: $55
	ld [hl+], a                                      ; $4259: $22
	ld a, [hl+]                                      ; $425a: $2a
	ld d, l                                          ; $425b: $55
	ld [hl], d                                       ; $425c: $72
	ld [hl], a                                       ; $425d: $77
	ld [hl], e                                       ; $425e: $73
	inc b                                            ; $425f: $04
	rrca                                             ; $4260: $0f
	rlca                                             ; $4261: $07
	adc d                                            ; $4262: $8a
	inc d                                            ; $4263: $14
	inc b                                            ; $4264: $04
	sbc d                                            ; $4265: $9a
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	dec d                                            ; $4268: $15
	adc d                                            ; $4269: $8a
	jp z, $0014                                      ; $426a: $ca $14 $00

	sbc $de                                          ; $426d: $de $de
	nop                                              ; $426f: $00
	sbc $9a                                          ; $4270: $de $9a
	ret nz                                           ; $4272: $c0

	xor c                                            ; $4273: $a9
	ld d, e                                          ; $4274: $53
	ld d, d                                          ; $4275: $52
	xor c                                            ; $4276: $a9
	ld a, e                                          ; $4277: $7b
	ldh [$df], a                                     ; $4278: $e0 $df
	xor e                                            ; $427a: $ab
	add l                                            ; $427b: $85
	ld d, c                                          ; $427c: $51
	xor e                                            ; $427d: $ab
	ei                                               ; $427e: $fb
	ei                                               ; $427f: $fb
	ld bc, $01fb                                     ; $4280: $01 $fb $01
	ld b, b                                          ; $4283: $40
	rst $38                                          ; $4284: $ff
	adc [hl]                                         ; $4285: $8e
	ld b, b                                          ; $4286: $40
	nop                                              ; $4287: $00
	nop                                              ; $4288: $00
	ld d, h                                          ; $4289: $54
	bit 1, b                                         ; $428a: $cb $48
	sub $1e                                          ; $428c: $d6 $1e
	jp z, Jump_03c_54ca                              ; $428e: $ca $ca $54

	call nc, $004a                                   ; $4291: $d4 $4a $00
	rst FarCall                                          ; $4294: $f7
	ld [hl], a                                       ; $4295: $77
	cp $81                                           ; $4296: $fe $81
	ld d, a                                          ; $4298: $57
	jr nz, jr_03c_42c5                               ; $4299: $20 $2a

	push de                                          ; $429b: $d5

Call_03c_429c:
	rst $38                                          ; $429c: $ff
	or a                                             ; $429d: $b7
	xor d                                            ; $429e: $aa
	ld d, l                                          ; $429f: $55
	ld e, l                                          ; $42a0: $5d
	and d                                            ; $42a1: $a2
	ld hl, $e1de                                     ; $42a2: $21 $de $e1
	ld e, $00                                        ; $42a5: $1e $00
	nop                                              ; $42a7: $00
	cp h                                             ; $42a8: $bc
	ld b, e                                          ; $42a9: $43
	ld b, b                                          ; $42aa: $40
	cp l                                             ; $42ab: $bd
	db $fd                                           ; $42ac: $fd
	cp l                                             ; $42ad: $bd
	ret nz                                           ; $42ae: $c0

	dec a                                            ; $42af: $3d
	ld d, d                                          ; $42b0: $52
	xor l                                            ; $42b1: $ad
	nop                                              ; $42b2: $00
	rst FarCall                                          ; $42b3: $f7
	scf                                              ; $42b4: $37
	ret nz                                           ; $42b5: $c0

	cp $9d                                           ; $42b6: $fe $9d
	rst $38                                          ; $42b8: $ff
	nop                                              ; $42b9: $00
	sbc $f7                                          ; $42ba: $de $f7
	ld a, a                                          ; $42bc: $7f
	db $fc                                           ; $42bd: $fc
	sbc l                                            ; $42be: $9d
	nop                                              ; $42bf: $00
	or $7b                                           ; $42c0: $f6 $7b
	xor e                                            ; $42c2: $ab
	cp $8e                                           ; $42c3: $fe $8e

jr_03c_42c5:
	cp c                                             ; $42c5: $b9
	xor [hl]                                         ; $42c6: $ae
	or b                                             ; $42c7: $b0
	xor h                                            ; $42c8: $ac
	and b                                            ; $42c9: $a0
	sbc h                                            ; $42ca: $9c
	adc b                                            ; $42cb: $88
	cp h                                             ; $42cc: $bc
	nop                                              ; $42cd: $00
	nop                                              ; $42ce: $00
	ld e, $e0                                        ; $42cf: $1e $e0
	nop                                              ; $42d1: $00
	nop                                              ; $42d2: $00
	db $f4                                           ; $42d3: $f4
	di                                               ; $42d4: $f3
	inc d                                            ; $42d5: $14
	ld a, e                                          ; $42d6: $7b
	cp $90                                           ; $42d7: $fe $90
	di                                               ; $42d9: $f3
	rst $38                                          ; $42da: $ff
	jr @-$17                                         ; $42db: $18 $e7

	stop                                             ; $42dd: $10 $00
	cp $00                                           ; $42df: $fe $00
	nop                                              ; $42e1: $00
	ld bc, $7d82                                     ; $42e2: $01 $82 $7d
	ld [bc], a                                       ; $42e5: $02
	ld a, c                                          ; $42e6: $79
	ld [bc], a                                       ; $42e7: $02
	sbc $79                                          ; $42e8: $de $79
	sbc c                                            ; $42ea: $99
	ld bc, $6c04                                     ; $42eb: $01 $04 $6c
	inc de                                           ; $42ee: $13
	ld b, b                                          ; $42ef: $40
	ld e, $7b                                        ; $42f0: $1e $7b
	ld c, [hl]                                       ; $42f2: $4e
	ld a, e                                          ; $42f3: $7b
	cp $9a                                           ; $42f4: $fe $9a
	ld hl, $0ec0                                     ; $42f6: $21 $c0 $0e
	jr nz, @-$3e                                     ; $42f9: $20 $c0

	ld a, e                                          ; $42fb: $7b
	db $f4                                           ; $42fc: $f4
	sbc l                                            ; $42fd: $9d
	add b                                            ; $42fe: $80
	ld [hl], a                                       ; $42ff: $77
	ld [hl], e                                       ; $4300: $73
	cp $8b                                           ; $4301: $fe $8b
	ld [hl], b                                       ; $4303: $70

jr_03c_4304:
	sbc h                                            ; $4304: $9c
	inc bc                                           ; $4305: $03
	rst $38                                          ; $4306: $ff
	ld [hl], a                                       ; $4307: $77
	ld [$08f7], sp                                   ; $4308: $08 $f7 $08
	rst FarCall                                          ; $430b: $f7
	ld [bc], a                                       ; $430c: $02
	ld l, l                                          ; $430d: $6d
	ld [bc], a                                       ; $430e: $02
	ld l, l                                          ; $430f: $6d
	nop                                              ; $4310: $00
	ld c, l                                          ; $4311: $4d
	nop                                              ; $4312: $00
	add hl, bc                                       ; $4313: $09
	nop                                              ; $4314: $00
	ld l, l                                          ; $4315: $6d
	ld l, [hl]                                       ; $4316: $6e
	ld [hl], a                                       ; $4317: $77
	ld hl, sp-$80                                    ; $4318: $f8 $80
	ld c, l                                          ; $431a: $4d
	ld [$00f1], sp                                   ; $431b: $08 $f1 $00
	nop                                              ; $431e: $00
	di                                               ; $431f: $f3
	inc c                                            ; $4320: $0c
	db $fd                                           ; $4321: $fd
	rst SubAFromDE                                          ; $4322: $df
	jr nz, @-$21                                     ; $4323: $20 $dd

	jr nz, jr_03c_4304                               ; $4325: $20 $dd

	inc h                                            ; $4327: $24
	reti                                             ; $4328: $d9


	ld sp, $22c0                                     ; $4329: $31 $c0 $22
	reti                                             ; $432c: $d9


	ld [hl+], a                                      ; $432d: $22
	reti                                             ; $432e: $d9


	ld [bc], a                                       ; $432f: $02
	add hl, de                                       ; $4330: $19
	db $e3                                           ; $4331: $e3
	pop bc                                           ; $4332: $c1
	ld [$01f8], sp                                   ; $4333: $08 $f8 $01
	ld a, [$7a82]                                    ; $4336: $fa $82 $7a
	add b                                            ; $4339: $80
	nop                                              ; $433a: $00
	ld a, [hl-]                                      ; $433b: $3a
	ld e, l                                          ; $433c: $5d
	ld e, h                                          ; $433d: $5c
	sbc c                                            ; $433e: $99
	ld a, [de]                                       ; $433f: $1a
	ld e, c                                          ; $4340: $59
	ld [de], a                                       ; $4341: $12
	pop af                                           ; $4342: $f1
	and b                                            ; $4343: $a0
	ld h, c                                          ; $4344: $61
	ld b, b                                          ; $4345: $40
	rlca                                             ; $4346: $07
	ld hl, sp-$1e                                    ; $4347: $f8 $e2
	pop hl                                           ; $4349: $e1
	ld a, [hl]                                       ; $434a: $7e
	ld [de], a                                       ; $434b: $12
	rst FarCall                                          ; $434c: $f7
	ldh [$60], a                                     ; $434d: $e0 $60
	rst FarCall                                          ; $434f: $f7
	jr nz, jr_03c_43c9                               ; $4350: $20 $77

	scf                                              ; $4352: $37
	ld [hl], a                                       ; $4353: $77
	jr nc, jr_03c_43cd                               ; $4354: $30 $77

	ld [$8803], sp                                   ; $4356: $08 $03 $88
	add b                                            ; $4359: $80
	ld b, b                                          ; $435a: $40
	jr nc, jr_03c_43d5                               ; $435b: $30 $78

	ret nz                                           ; $435d: $c0

	nop                                              ; $435e: $00
	ld a, [de]                                       ; $435f: $1a
	ld h, c                                          ; $4360: $61
	ld bc, $797a                                     ; $4361: $01 $7a $79
	ld a, e                                          ; $4364: $7b
	ld bc, $5a7a                                     ; $4365: $01 $7a $5a
	ld hl, $0600                                     ; $4368: $21 $00 $06
	jr nz, @+$1b                                     ; $436b: $20 $19

	ld bc, $aa00                                     ; $436d: $01 $00 $aa
	inc d                                            ; $4370: $14
	dec d                                            ; $4371: $15
	xor e                                            ; $4372: $ab
	rrca                                             ; $4373: $0f
	or a                                             ; $4374: $b7
	dec de                                           ; $4375: $1b
	xor l                                            ; $4376: $ad
	xor h                                            ; $4377: $ac
	add hl, de                                       ; $4378: $19
	add c                                            ; $4379: $81
	rrca                                             ; $437a: $0f
	ld c, $df                                        ; $437b: $0e $df
	dec c                                            ; $437d: $0d
	cp d                                             ; $437e: $ba
	ld b, h                                          ; $437f: $44
	ld b, h                                          ; $4380: $44
	xor d                                            ; $4381: $aa
	jp z, $2ac4                                      ; $4382: $ca $c4 $2a

	ld l, $fa                                        ; $4385: $2e $fa
	sub h                                            ; $4387: $94
	rst $38                                          ; $4388: $ff
	rst GetHLinHL                                          ; $4389: $cf
	cp $eb                                           ; $438a: $fe $eb
	ld a, [$3fff]                                    ; $438c: $fa $ff $3f
	rrca                                             ; $438f: $0f
	rra                                              ; $4390: $1f
	rrca                                             ; $4391: $0f
	rra                                              ; $4392: $1f
	ld e, $df                                        ; $4393: $1e $df
	call c, $0c5f                                    ; $4395: $dc $5f $0c
	sbc $ff                                          ; $4398: $de $ff
	ld a, e                                          ; $439a: $7b
	jr @-$1f                                         ; $439b: $18 $df

	ldh [$df], a                                     ; $439d: $e0 $df
	ldh a, [hDisp1_BGP]                                     ; $439f: $f0 $92
	cp $50                                           ; $43a1: $fe $50

jr_03c_43a3:
	or c                                             ; $43a3: $b1
	jr nc, jr_03c_43a3                               ; $43a4: $30 $fd

	inc a                                            ; $43a6: $3c
	rst FarCall                                          ; $43a7: $f7
	xor $e3                                          ; $43a8: $ee $e3
	rra                                              ; $43aa: $1f
	ld bc, $faff                                     ; $43ab: $01 $ff $fa
	ld a, d                                          ; $43ae: $7a
	call z, $0499                                    ; $43af: $cc $99 $04
	nop                                              ; $43b2: $00
	ld bc, $7a7b                                     ; $43b3: $01 $7b $7a
	ld bc, $fe77                                     ; $43b6: $01 $77 $fe
	sub e                                            ; $43b9: $93
	add h                                            ; $43ba: $84
	add b                                            ; $43bb: $80
	sbc [hl]                                         ; $43bc: $9e
	ld b, b                                          ; $43bd: $40
	sbc $40                                          ; $43be: $de $40
	nop                                              ; $43c0: $00
	ld hl, $5e80                                     ; $43c1: $21 $80 $5e
	sbc [hl]                                         ; $43c4: $9e
	ld b, b                                          ; $43c5: $40
	ld [hl], a                                       ; $43c6: $77
	cp $80                                           ; $43c7: $fe $80

jr_03c_43c9:
	and c                                            ; $43c9: $a1
	ld b, b                                          ; $43ca: $40
	ld a, [hl+]                                      ; $43cb: $2a
	ld d, l                                          ; $43cc: $55

jr_03c_43cd:
	add b                                            ; $43cd: $80
	nop                                              ; $43ce: $00
	ld a, [bc]                                       ; $43cf: $0a
	ld d, l                                          ; $43d0: $55
	and d                                            ; $43d1: $a2
	rst FarCall                                          ; $43d2: $f7
	ldh [c], a                                       ; $43d3: $e2
	dec d                                            ; $43d4: $15

jr_03c_43d5:
	push de                                          ; $43d5: $d5
	ld [hl+], a                                      ; $43d6: $22
	ldh [c], a                                       ; $43d7: $e2
	dec d                                            ; $43d8: $15
	nop                                              ; $43d9: $00
	nop                                              ; $43da: $00
	ld [$0300], a                                    ; $43db: $ea $00 $03
	ld b, b                                          ; $43de: $40
	xor b                                            ; $43df: $a8
	ld d, l                                          ; $43e0: $55
	xor c                                            ; $43e1: $a9
	db $fd                                           ; $43e2: $fd
	xor b                                            ; $43e3: $a8
	ld d, l                                          ; $43e4: $55
	ld de, $02ec                                     ; $43e5: $11 $ec $02
	sub l                                            ; $43e8: $95
	ld b, b                                          ; $43e9: $40
	rrca                                             ; $43ea: $0f
	nop                                              ; $43eb: $00
	ld [rRAMG], sp                                   ; $43ec: $08 $00 $00
	rst FarCall                                          ; $43ef: $f7
	and b                                            ; $43f0: $a0
	ld d, a                                          ; $43f1: $57
	rst FarCall                                          ; $43f2: $f7
	ld a, e                                          ; $43f3: $7b
	db $fc                                           ; $43f4: $fc
	sub h                                            ; $43f5: $94
	ld e, b                                          ; $43f6: $58
	and b                                            ; $43f7: $a0
	nop                                              ; $43f8: $00
	nop                                              ; $43f9: $00
	xor $01                                          ; $43fa: $ee $01
	dec c                                            ; $43fc: $0d
	add e                                            ; $43fd: $83
	add hl, sp                                       ; $43fe: $39

jr_03c_43ff:
	ccf                                              ; $43ff: $3f
	ld [$4fde], sp                                   ; $4400: $08 $de $4f
	add [hl]                                         ; $4403: $86
	ld b, b                                          ; $4404: $40
	ld a, h                                          ; $4405: $7c
	ld bc, $1f00                                     ; $4406: $01 $00 $1f
	ldh a, [c]                                       ; $4409: $f2
	db $e3                                           ; $440a: $e3
	ld a, [$e7f8]                                    ; $440b: $fa $f8 $e7
	jr nc, jr_03c_43ff                               ; $440e: $30 $ef

	jr nc, @-$0f                                     ; $4410: $30 $ef

	rst $38                                          ; $4412: $ff
	rst AddAOntoHL                                          ; $4413: $ef
	nop                                              ; $4414: $00
	ld a, [bc]                                       ; $4415: $0a
	inc a                                            ; $4416: $3c
	ldh [c], a                                       ; $4417: $e2
	ld l, $f1                                        ; $4418: $2e $f1
	adc [hl]                                         ; $441a: $8e
	ld [hl], c                                       ; $441b: $71
	nop                                              ; $441c: $00
	ld a, d                                          ; $441d: $7a
	ld a, [bc]                                       ; $441e: $0a
	ld a, a                                          ; $441f: $7f
	cp $df                                           ; $4420: $fe $df
	ld [hl], b                                       ; $4422: $70
	ld a, e                                          ; $4423: $7b
	add $72                                          ; $4424: $c6 $72
	sub $7a                                          ; $4426: $d6 $7a
	call nz, $be89                                   ; $4428: $c4 $89 $be
	ld h, b                                          ; $442b: $60
	add b                                            ; $442c: $80
	ccf                                              ; $442d: $3f
	nop                                              ; $442e: $00
	add b                                            ; $442f: $80
	dec a                                            ; $4430: $3d
	nop                                              ; $4431: $00
	cp l                                             ; $4432: $bd
	nop                                              ; $4433: $00
	cp a                                             ; $4434: $bf
	nop                                              ; $4435: $00
	cp h                                             ; $4436: $bc
	ld [$20f6], sp                                   ; $4437: $08 $f6 $20
	ret nz                                           ; $443a: $c0

	ld [hl], $00                                     ; $443b: $36 $00
	rst FarCall                                          ; $443d: $f7
	or $00                                           ; $443e: $f6 $00
	ld [hl], a                                       ; $4440: $77
	cp $76                                           ; $4441: $fe $76
	ld h, [hl]                                       ; $4443: $66
	add b                                            ; $4444: $80
	dec c                                            ; $4445: $0d
	add d                                            ; $4446: $82
	ld b, b                                          ; $4447: $40
	ld [bc], a                                       ; $4448: $02
	ret nc                                           ; $4449: $d0

	sbc $dd                                          ; $444a: $de $dd
	ld [bc], a                                       ; $444c: $02
	db $dd                                           ; $444d: $dd
	ld [bc], a                                       ; $444e: $02
	dec e                                            ; $444f: $1d
	ld [bc], a                                       ; $4450: $02
	ld de, $9082                                     ; $4451: $11 $82 $90
	inc b                                            ; $4454: $04
	jr z, jr_03c_445b                                ; $4455: $28 $04

	ld e, d                                          ; $4457: $5a
	ld d, h                                          ; $4458: $54
	xor d                                            ; $4459: $aa
	ld d, h                                          ; $445a: $54

jr_03c_445b:
	xor d                                            ; $445b: $aa
	ld e, h                                          ; $445c: $5c
	and d                                            ; $445d: $a2
	ld b, b                                          ; $445e: $40
	cp [hl]                                          ; $445f: $be
	nop                                              ; $4460: $00
	add d                                            ; $4461: $82
	inc bc                                           ; $4462: $03
	inc a                                            ; $4463: $3c
	ld a, a                                          ; $4464: $7f
	ld [hl], c                                       ; $4465: $71
	add b                                            ; $4466: $80
	ld bc, $c3f1                                     ; $4467: $01 $f1 $c3
	ld a, [hl-]                                      ; $446a: $3a
	jp $c13a                                         ; $446b: $c3 $3a $c1


	dec sp                                           ; $446e: $3b
	adc e                                            ; $446f: $8b
	ld l, e                                          ; $4470: $6b
	dec de                                           ; $4471: $1b
	cp d                                             ; $4472: $ba
	add hl, de                                       ; $4473: $19
	ld hl, sp-$44                                    ; $4474: $f8 $bc
	call z, $13f3                                    ; $4476: $cc $f3 $13
	db $e3                                           ; $4479: $e3
	ld h, d                                          ; $447a: $62
	jp $e3b6                                         ; $447b: $c3 $b6 $e3


	sub d                                            ; $447e: $92
	db $e3                                           ; $447f: $e3
	ld [de], a                                       ; $4480: $12
	db $e3                                           ; $4481: $e3
	inc de                                           ; $4482: $13
	dec [hl]                                         ; $4483: $35
	pop bc                                           ; $4484: $c1
	ld a, a                                          ; $4485: $7f
	add b                                            ; $4486: $80
	ld a, a                                          ; $4487: $7f
	nop                                              ; $4488: $00
	ld a, a                                          ; $4489: $7f
	add b                                            ; $448a: $80
	rst $38                                          ; $448b: $ff
	add b                                            ; $448c: $80
	cp a                                             ; $448d: $bf
	add b                                            ; $448e: $80
	add b                                            ; $448f: $80
	db $d3                                           ; $4490: $d3
	call z, Call_03c_6ce3                            ; $4491: $cc $e3 $6c
	ldh a, [c]                                       ; $4494: $f2
	sbc l                                            ; $4495: $9d
	cp [hl]                                          ; $4496: $be
	ld a, $bc                                        ; $4497: $3e $bc
	nop                                              ; $4499: $00
	sbc h                                            ; $449a: $9c
	ld [hl+], a                                      ; $449b: $22
	sbc h                                            ; $449c: $9c
	ld [hl+], a                                      ; $449d: $22
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	add b                                            ; $44a0: $80
	ld b, b                                          ; $44a1: $40
	sub h                                            ; $44a2: $94
	ld l, e                                          ; $44a3: $6b
	sbc h                                            ; $44a4: $9c
	ld h, e                                          ; $44a5: $63
	add [hl]                                         ; $44a6: $86
	rst SubAFromDE                                          ; $44a7: $df
	db $dd                                           ; $44a8: $dd
	sbc $20                                          ; $44a9: $de $20
	adc $30                                          ; $44ab: $ce $30
	sbc $00                                          ; $44ad: $de $00
	ld e, [hl]                                       ; $44af: $5e
	add b                                            ; $44b0: $80
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	ld b, b                                          ; $44b3: $40
	sbc h                                            ; $44b4: $9c
	ret nc                                           ; $44b5: $d0

	inc c                                            ; $44b6: $0c
	ei                                               ; $44b7: $fb
	rst $38                                          ; $44b8: $ff
	rst $38                                          ; $44b9: $ff
	rrca                                             ; $44ba: $0f
	rst $38                                          ; $44bb: $ff
	rlca                                             ; $44bc: $07
	rst FarCall                                          ; $44bd: $f7
	ld bc, $fef6                                     ; $44be: $01 $f6 $fe
	ld [hl], l                                       ; $44c1: $75
	rst AddAOntoHL                                          ; $44c2: $ef
	ld a, a                                          ; $44c3: $7f
	call nz, $ffdf                                   ; $44c4: $c4 $df $ff
	ld a, l                                          ; $44c7: $7d
	push bc                                          ; $44c8: $c5
	add l                                            ; $44c9: $85
	ld [$fdff], a                                    ; $44ca: $ea $ff $fd
	ld a, a                                          ; $44cd: $7f
	ccf                                              ; $44ce: $3f
	rlca                                             ; $44cf: $07
	add d                                            ; $44d0: $82
	nop                                              ; $44d1: $00
	cp [hl]                                          ; $44d2: $be
	nop                                              ; $44d3: $00
	ld [hl-], a                                      ; $44d4: $32
	db $fd                                           ; $44d5: $fd
	push hl                                          ; $44d6: $e5
	ld a, [$fd52]                                    ; $44d7: $fa $52 $fd
	and c                                            ; $44da: $a1
	cp $52                                           ; $44db: $fe $52
	db $fd                                           ; $44dd: $fd
	jp hl                                            ; $44de: $e9


	cp $34                                           ; $44df: $fe $34
	rra                                              ; $44e1: $1f
	ld a, [de]                                       ; $44e2: $1a
	rrca                                             ; $44e3: $0f
	sbc $fb                                          ; $44e4: $de $fb
	adc [hl]                                         ; $44e6: $8e
	ret nz                                           ; $44e7: $c0

	cp e                                             ; $44e8: $bb
	ldh [$7b], a                                     ; $44e9: $e0 $7b
	ldh a, [$bb]                                     ; $44eb: $f0 $bb

jr_03c_44ed:
	ldh a, [rHDMA3]                                  ; $44ed: $f0 $53
	ldh a, [$b8]                                     ; $44ef: $f0 $b8
	ld hl, sp+$67                                    ; $44f1: $f8 $67
	cp $de                                           ; $44f3: $fe $de
	sbc $0a                                          ; $44f5: $de $0a
	call nc, $ee6d                                   ; $44f7: $d4 $6d $ee
	ld a, e                                          ; $44fa: $7b
	cp $7d                                           ; $44fb: $fe $7d
	jp nz, $c09e                                     ; $44fd: $c2 $9e $c0

	sbc $f7                                          ; $4500: $de $f7
	add d                                            ; $4502: $82

jr_03c_4503:
	ld [$a857], sp                                   ; $4503: $08 $57 $a8
	dec hl                                           ; $4506: $2b
	call nc, $ea05                                   ; $4507: $d4 $05 $ea
	dec bc                                           ; $450a: $0b
	db $e4                                           ; $450b: $e4
	nop                                              ; $450c: $00
	nop                                              ; $450d: $00
	jp z, $bf25                                      ; $450e: $ca $25 $bf

	ld a, l                                          ; $4511: $7d
	cp l                                             ; $4512: $bd

jr_03c_4513:
	ld b, d                                          ; $4513: $42
	cp l                                             ; $4514: $bd
	ld b, d                                          ; $4515: $42
	cp c                                             ; $4516: $b9
	ld b, [hl]                                       ; $4517: $46
	cp c                                             ; $4518: $b9
	ld b, [hl]                                       ; $4519: $46
	nop                                              ; $451a: $00
	add b                                            ; $451b: $80
	ld bc, $3a02                                     ; $451c: $01 $02 $3a
	ld b, c                                          ; $451f: $41
	ld a, d                                          ; $4520: $7a
	push hl                                          ; $4521: $e5
	add b                                            ; $4522: $80
	db $10                                           ; $4523: $10
	rst AddAOntoHL                                          ; $4524: $ef
	db $10                                           ; $4525: $10
	xor $11                                          ; $4526: $ee $11
	nop                                              ; $4528: $00
	ld hl, sp+$02                                    ; $4529: $f8 $02
	inc b                                            ; $452b: $04
	ld c, [hl]                                       ; $452c: $4e
	sub b                                            ; $452d: $90
	adc [hl]                                         ; $452e: $8e
	ld d, b                                          ; $452f: $50
	ei                                               ; $4530: $fb
	rst $38                                          ; $4531: $ff
	ei                                               ; $4532: $fb
	add [hl]                                         ; $4533: $86
	ld a, e                                          ; $4534: $7b
	add [hl]                                         ; $4535: $86
	nop                                              ; $4536: $00
	add b                                            ; $4537: $80
	inc bc                                           ; $4538: $03
	scf                                              ; $4539: $37
	rst FarCall                                          ; $453a: $f7
	inc bc                                           ; $453b: $03
	rst FarCall                                          ; $453c: $f7
	nop                                              ; $453d: $00
	ld [hl], h                                       ; $453e: $74
	add e                                            ; $453f: $83
	rst SubAFromDE                                          ; $4540: $df
	cp a                                             ; $4541: $bf
	ld a, l                                          ; $4542: $7d
	and l                                            ; $4543: $a5
	ld a, a                                          ; $4544: $7f
	ld d, [hl]                                       ; $4545: $56
	adc l                                            ; $4546: $8d
	dec b                                            ; $4547: $05
	ld a, [bc]                                       ; $4548: $0a
	cp a                                             ; $4549: $bf

jr_03c_454a:
	nop                                              ; $454a: $00
	sbc l                                            ; $454b: $9d
	ld [hl+], a                                      ; $454c: $22
	sbc l                                            ; $454d: $9d
	jr nz, jr_03c_44ed                               ; $454e: $20 $9d

	ld h, b                                          ; $4550: $60
	jr nc, jr_03c_454a                               ; $4551: $30 $f7

	nop                                              ; $4553: $00
	nop                                              ; $4554: $00
	inc bc                                           ; $4555: $03

jr_03c_4556:
	nop                                              ; $4556: $00
	rst SubAFromBC                                          ; $4557: $e7
	ld [$fe77], sp                                   ; $4558: $08 $77 $fe
	sbc l                                            ; $455b: $9d
	and $08                                          ; $455c: $e6 $08
	ld a, c                                          ; $455e: $79
	ld h, e                                          ; $455f: $63
	ld a, a                                          ; $4560: $7f
	cp d                                             ; $4561: $ba
	add b                                            ; $4562: $80

jr_03c_4563:
	ld [$583b], sp                                   ; $4563: $08 $3b $58
	dec sp                                           ; $4566: $3b
	nop                                              ; $4567: $00
	dec sp                                           ; $4568: $3b
	ld b, b                                          ; $4569: $40
	ld a, b                                          ; $456a: $78
	ld bc, $0300                                     ; $456b: $01 $00 $03
	ld [bc], a                                       ; $456e: $02
	ld a, c                                          ; $456f: $79
	ld [de], a                                       ; $4570: $12
	jr nz, jr_03c_4503                               ; $4571: $20 $90

	and b                                            ; $4573: $a0
	sbc c                                            ; $4574: $99
	jr nz, @-$66                                     ; $4575: $20 $98

	jr nz, @-$7e                                     ; $4577: $20 $80

	ld bc, $1b00                                     ; $4579: $01 $00 $1b
	dec bc                                           ; $457c: $0b
	or b                                             ; $457d: $b0
	cp e                                             ; $457e: $bb
	nop                                              ; $457f: $00
	adc h                                            ; $4580: $8c

jr_03c_4581:
	sub b                                            ; $4581: $90
	add b                                            ; $4582: $80
	adc a                                            ; $4583: $8f
	ld d, b                                          ; $4584: $50
	sbc a                                            ; $4585: $9f
	ld b, b                                          ; $4586: $40
	rra                                              ; $4587: $1f
	nop                                              ; $4588: $00
	dec d                                            ; $4589: $15
	ret nz                                           ; $458a: $c0

	db $10                                           ; $458b: $10
	ret nz                                           ; $458c: $c0

	jr jr_03c_4513                                   ; $458d: $18 $84

	sbc d                                            ; $458f: $9a
	dec b                                            ; $4590: $05
	ld e, e                                          ; $4591: $5b
	and l                                            ; $4592: $a5
	ld b, e                                          ; $4593: $43
	sbc c                                            ; $4594: $99
	ld e, e                                          ; $4595: $5b
	add b                                            ; $4596: $80
	inc bc                                           ; $4597: $03
	ret nz                                           ; $4598: $c0

	inc bc                                           ; $4599: $03
	inc b                                            ; $459a: $04
	ld e, e                                          ; $459b: $5b
	and b                                            ; $459c: $a0
	dec hl                                           ; $459d: $2b
	ret nc                                           ; $459e: $d0

	ld e, e                                          ; $459f: $5b
	and b                                            ; $45a0: $a0
	pop af                                           ; $45a1: $f1
	add b                                            ; $45a2: $80
	ldh a, [$f9]                                     ; $45a3: $f0 $f9
	ldh a, [$7c]                                     ; $45a5: $f0 $7c
	ld h, c                                          ; $45a7: $61
	inc e                                            ; $45a8: $1c
	jr nz, jr_03c_45af                               ; $45a9: $20 $04

	ld [$8080], sp                                   ; $45ab: $08 $80 $80
	sub b                                            ; $45ae: $90

jr_03c_45af:
	jr nz, jr_03c_4556                               ; $45af: $20 $a5

	jr jr_03c_45b3                                   ; $45b1: $18 $00

jr_03c_45b3:
	or d                                             ; $45b3: $b2
	ld [$6062], sp                                   ; $45b4: $08 $62 $60
	sub a                                            ; $45b7: $97
	ld [hl], e                                       ; $45b8: $73
	add h                                            ; $45b9: $84
	ld [hl], b                                       ; $45ba: $70
	add a                                            ; $45bb: $87
	jr nc, jr_03c_4581                               ; $45bc: $30 $c3

	nop                                              ; $45be: $00
	inc de                                           ; $45bf: $13
	add b                                            ; $45c0: $80
	nop                                              ; $45c1: $00
	adc e                                            ; $45c2: $8b
	ld a, d                                          ; $45c3: $7a
	ld [hl], l                                       ; $45c4: $75
	add hl, sp                                       ; $45c5: $39
	ld a, $18                                        ; $45c6: $3e $18
	sbc c                                            ; $45c8: $99
	jr jr_03c_4563                                   ; $45c9: $18 $98

	inc bc                                           ; $45cb: $03
	ret z                                            ; $45cc: $c8

	inc de                                           ; $45cd: $13
	rst SubAFromDE                                          ; $45ce: $df
	dec de                                           ; $45cf: $1b
	rst $38                                          ; $45d0: $ff
	ld a, a                                          ; $45d1: $7f
	ld [hl], b                                       ; $45d2: $70
	rst SubAFromDE                                          ; $45d3: $df
	nop                                              ; $45d4: $00
	rst SubAFromDE                                          ; $45d5: $df
	jr nz, @+$7a                                     ; $45d6: $20 $78

	db $fd                                           ; $45d8: $fd
	ld a, b                                          ; $45d9: $78
	ld e, d                                          ; $45da: $5a
	sub l                                            ; $45db: $95
	adc $de                                          ; $45dc: $ce $de
	xor $fe                                          ; $45de: $ee $fe
	xor $00                                          ; $45e0: $ee $00
	ret nz                                           ; $45e2: $c0

	inc e                                            ; $45e3: $1c
	ret nc                                           ; $45e4: $d0

	inc c                                            ; $45e5: $0c
	cp $96                                           ; $45e6: $fe $96
	adc [hl]                                         ; $45e8: $8e
	nop                                              ; $45e9: $00
	rst $38                                          ; $45ea: $ff
	rst $38                                          ; $45eb: $ff
	push af                                          ; $45ec: $f5
	rst $38                                          ; $45ed: $ff
	rst FarCall                                          ; $45ee: $f7
	rst JumpTable                                          ; $45ef: $c7
	jr nc, @+$78                                     ; $45f0: $30 $76

	dec hl                                           ; $45f2: $2b
	ld a, a                                          ; $45f3: $7f
	ld h, b                                          ; $45f4: $60
	sub [hl]                                         ; $45f5: $96
	nop                                              ; $45f6: $00
	ld a, b                                          ; $45f7: $78
	inc bc                                           ; $45f8: $03
	ld hl, sp-$05                                    ; $45f9: $f8 $fb
	ld d, b                                          ; $45fb: $50
	ei                                               ; $45fc: $fb
	ld hl, sp-$05                                    ; $45fd: $f8 $fb
	ld a, d                                          ; $45ff: $7a
	jr z, jr_03c_4679                                ; $4600: $28 $77

	cp $80                                           ; $4602: $fe $80
	inc b                                            ; $4604: $04
	add hl, sp                                       ; $4605: $39
	add c                                            ; $4606: $81
	nop                                              ; $4607: $00
	cp h                                             ; $4608: $bc
	nop                                              ; $4609: $00
	cp l                                             ; $460a: $bd
	dec a                                            ; $460b: $3d
	cp l                                             ; $460c: $bd
	nop                                              ; $460d: $00
	rst AddAOntoHL                                          ; $460e: $ef
	rlca                                             ; $460f: $07
	rrca                                             ; $4610: $0f
	db $e3                                           ; $4611: $e3
	rrca                                             ; $4612: $0f
	pop hl                                           ; $4613: $e1
	rst AddAOntoHL                                          ; $4614: $ef
	ld bc, $00ef                                     ; $4615: $01 $ef $00
	rrca                                             ; $4618: $0f
	nop                                              ; $4619: $00
	rst SubAFromBC                                          ; $461a: $e7
	rst SubAFromBC                                          ; $461b: $e7
	db $e3                                           ; $461c: $e3
	nop                                              ; $461d: $00
	ei                                               ; $461e: $fb
	xor a                                            ; $461f: $af
	db $fd                                           ; $4620: $fd
	rst SubAFromHL                                          ; $4621: $d7
	cp $94                                           ; $4622: $fe $94
	xor e                                            ; $4624: $ab
	rst $38                                          ; $4625: $ff
	push de                                          ; $4626: $d5
	cp $eb                                           ; $4627: $fe $eb
	rst $38                                          ; $4629: $ff
	push af                                          ; $462a: $f5
	ld a, a                                          ; $462b: $7f
	ld a, d                                          ; $462c: $7a
	ccf                                              ; $462d: $3f
	dec a                                            ; $462e: $3d
	ld a, d                                          ; $462f: $7a
	ret                                              ; $4630: $c9


	add b                                            ; $4631: $80
	add b                                            ; $4632: $80
	sbc $80                                          ; $4633: $de $80
	ld e, [hl]                                       ; $4635: $5e
	ret nz                                           ; $4636: $c0

	cp $e0                                           ; $4637: $fe $e0
	ld [hl], b                                       ; $4639: $70
	ldh a, [$bf]                                     ; $463a: $f0 $bf
	rst $38                                          ; $463c: $ff
	rst SubAFromDE                                          ; $463d: $df
	ld hl, sp+$21                                    ; $463e: $f8 $21
	adc $21                                          ; $4640: $ce $21
	adc $20                                          ; $4642: $ce $20
	rst GetHLinHL                                          ; $4644: $cf
	jr nz, @-$2f                                     ; $4645: $20 $cf

	ld hl, $00ce                                     ; $4647: $21 $ce $00
	ld bc, $eaef                                     ; $464a: $01 $ef $ea
	rst AddAOntoHL                                          ; $464d: $ef
	rlca                                             ; $464e: $07
	ld de, $916a                                     ; $464f: $11 $6a $91
	ld a, [hl+]                                      ; $4652: $2a
	ld d, c                                          ; $4653: $51
	ld de, $286a                                     ; $4654: $11 $6a $28
	ld d, h                                          ; $4657: $54
	nop                                              ; $4658: $00
	inc bc                                           ; $4659: $03
	ld [$7f17], sp                                   ; $465a: $08 $17 $7f
	dec hl                                           ; $465d: $2b
	dec hl                                           ; $465e: $2b
	inc d                                            ; $465f: $14
	halt                                             ; $4660: $76
	call z, Call_03c_409e                            ; $4661: $cc $9e $40
	ld a, b                                          ; $4664: $78
	ld e, b                                          ; $4665: $58
	sub e                                            ; $4666: $93
	ld b, $f9                                        ; $4667: $06 $f9
	ld a, l                                          ; $4669: $7d
	sbc $de                                          ; $466a: $de $de
	rst AddAOntoHL                                          ; $466c: $ef
	sbc $21                                          ; $466d: $de $21
	ld [hl], a                                       ; $466f: $77
	add b                                            ; $4670: $80
	ldh a, [c]                                       ; $4671: $f2
	dec b                                            ; $4672: $05
	cp $df                                           ; $4673: $fe $df
	rst AddAOntoHL                                          ; $4675: $ef
	add b                                            ; $4676: $80
	db $10                                           ; $4677: $10
	rst $38                                          ; $4678: $ff

jr_03c_4679:
	rst AddAOntoHL                                          ; $4679: $ef
	rst AddAOntoHL                                          ; $467a: $ef
	rst FarCall                                          ; $467b: $f7
	xor $11                                          ; $467c: $ee $11
	sub b                                            ; $467e: $90
	ld [$0100], sp                                   ; $467f: $08 $00 $01
	ld bc, $08be                                     ; $4682: $01 $be $08
	or a                                             ; $4685: $b7
	cp e                                             ; $4686: $bb
	ld b, h                                          ; $4687: $44
	rst $38                                          ; $4688: $ff
	cp a                                             ; $4689: $bf
	cp a                                             ; $468a: $bf
	rst $38                                          ; $468b: $ff
	nop                                              ; $468c: $00
	cp b                                             ; $468d: $b8
	nop                                              ; $468e: $00
	rra                                              ; $468f: $1f
	ld c, $c1                                        ; $4690: $0e $c1
	ret z                                            ; $4692: $c8

	ld h, $0e                                        ; $4693: $26 $0e
	pop hl                                           ; $4695: $e1
	ld a, a                                          ; $4696: $7f
	xor e                                            ; $4697: $ab
	sub h                                            ; $4698: $94
	ldh [$c0], a                                     ; $4699: $e0 $c0

jr_03c_469b:
	rst SubAFromBC                                          ; $469b: $e7
	nop                                              ; $469c: $00
	ld a, [bc]                                       ; $469d: $0a
	dec d                                            ; $469e: $15
	ld [hl], d                                       ; $469f: $72
	add hl, bc                                       ; $46a0: $09
	ld [hl], e                                       ; $46a1: $73
	ld [$7b70], sp                                   ; $46a2: $08 $70 $7b
	cpl                                              ; $46a5: $2f
	sbc h                                            ; $46a6: $9c
	ld bc, $773e                                     ; $46a7: $01 $3e $77
	sbc $f7                                          ; $46aa: $de $f7
	sbc c                                            ; $46ac: $99
	and a                                            ; $46ad: $a7
	ld d, b                                          ; $46ae: $50
	inc sp                                           ; $46af: $33
	add b                                            ; $46b0: $80
	and b                                            ; $46b1: $a0
	ld d, $fe                                        ; $46b2: $16 $fe
	add b                                            ; $46b4: $80
	cp e                                             ; $46b5: $bb
	ei                                               ; $46b6: $fb
	nop                                              ; $46b7: $00
	ei                                               ; $46b8: $fb
	cp e                                             ; $46b9: $bb
	ld a, d                                          ; $46ba: $7a
	jr c, jr_03c_472d                                ; $46bb: $38 $70

	add hl, bc                                       ; $46bd: $09
	sbc d                                            ; $46be: $9a
	dec h                                            ; $46bf: $25
	or b                                             ; $46c0: $b0
	inc bc                                           ; $46c1: $03
	or b                                             ; $46c2: $b0
	nop                                              ; $46c3: $00
	and b                                            ; $46c4: $a0
	ld d, $a2                                        ; $46c5: $16 $a2
	dec d                                            ; $46c7: $15
	or [hl]                                          ; $46c8: $b6
	rla                                              ; $46c9: $17
	or [hl]                                          ; $46ca: $b6
	rla                                              ; $46cb: $17
	ld [hl], $17                                     ; $46cc: $36 $17
	xor c                                            ; $46ce: $a9
	ld d, d                                          ; $46cf: $52
	ld d, c                                          ; $46d0: $51
	xor d                                            ; $46d1: $aa
	and c                                            ; $46d2: $a1
	ld c, d                                          ; $46d3: $4a
	add b                                            ; $46d4: $80
	dec b                                            ; $46d5: $05
	add d                                            ; $46d6: $82
	inc bc                                           ; $46d7: $03
	inc e                                            ; $46d8: $1c
	ld d, l                                          ; $46d9: $55
	adc d                                            ; $46da: $8a
	adc c                                            ; $46db: $89
	ld d, d                                          ; $46dc: $52
	ld d, d                                          ; $46dd: $52
	xor h                                            ; $46de: $ac
	add b                                            ; $46df: $80
	dec a                                            ; $46e0: $3d
	add c                                            ; $46e1: $81
	inc c                                            ; $46e2: $0c
	and b                                            ; $46e3: $a0
	ld bc, $08b0                                     ; $46e4: $01 $b0 $08
	or b                                             ; $46e7: $b0
	inc c                                            ; $46e8: $0c
	sbc l                                            ; $46e9: $9d
	ld hl, $0f8e                                     ; $46ea: $21 $8e $0f
	rra                                              ; $46ed: $1f
	jr nz, jr_03c_469b                               ; $46ee: $20 $ab

	ld d, l                                          ; $46f0: $55
	ld d, a                                          ; $46f1: $57
	xor e                                            ; $46f2: $ab
	inc l                                            ; $46f3: $2c
	sbc b                                            ; $46f4: $98
	sbc $10                                          ; $46f5: $de $10
	ld a, e                                          ; $46f7: $7b
	ld h, b                                          ; $46f8: $60
	ld a, e                                          ; $46f9: $7b
	pop bc                                           ; $46fa: $c1
	add [hl]                                         ; $46fb: $86
	ld a, b                                          ; $46fc: $78
	sub c                                            ; $46fd: $91
	ld a, [hl]                                       ; $46fe: $7e
	ldh [$7e], a                                     ; $46ff: $e0 $7e
	ld e, l                                          ; $4701: $5d
	ld a, [hl]                                       ; $4702: $7e
	ld [$bfdf], sp                                   ; $4703: $08 $df $bf
	sbc h                                            ; $4706: $9c
	nop                                              ; $4707: $00
	jr nz, @-$5f                                     ; $4708: $20 $9f

	ld a, c                                          ; $470a: $79
	dec de                                           ; $470b: $1b
	ld a, e                                          ; $470c: $7b
	ldh a, [$7e]                                     ; $470d: $f0 $7e
	adc $7e                                          ; $470f: $ce $7e
	dec d                                            ; $4711: $15
	sub e                                            ; $4712: $93
	db $fc                                           ; $4713: $fc
	nop                                              ; $4714: $00
	rst $38                                          ; $4715: $ff
	rlca                                             ; $4716: $07
	rst $38                                          ; $4717: $ff
	db $10                                           ; $4718: $10
	ldh a, [rP1]                                     ; $4719: $f0 $00
	jr nc, jr_03c_473d                               ; $471b: $30 $20

	ei                                               ; $471d: $fb
	dec sp                                           ; $471e: $3b
	ld [hl], l                                       ; $471f: $75
	sbc h                                            ; $4720: $9c
	add a                                            ; $4721: $87
	adc b                                            ; $4722: $88
	nop                                              ; $4723: $00
	add sp, $17                                      ; $4724: $e8 $17
	push af                                          ; $4726: $f5
	ld c, d                                          ; $4727: $4a
	ld [$6015], a                                    ; $4728: $ea $15 $60
	jr nz, @+$01                                     ; $472b: $20 $ff

jr_03c_472d:
	jr nz, jr_03c_472f                               ; $472d: $20 $00

jr_03c_472f:
	ld a, e                                          ; $472f: $7b
	jr nz, jr_03c_478d                               ; $4730: $20 $5b

	add b                                            ; $4732: $80
	nop                                              ; $4733: $00
	jr nz, jr_03c_4793                               ; $4734: $20 $5d

	ld d, h                                          ; $4736: $54

jr_03c_4737:
	ld a, [hl+]                                      ; $4737: $2a
	xor d                                            ; $4738: $aa
	ld d, l                                          ; $4739: $55
	cp $98                                           ; $473a: $fe $98
	rst $38                                          ; $473c: $ff

jr_03c_473d:
	cp l                                             ; $473d: $bd
	nop                                              ; $473e: $00
	dec e                                            ; $473f: $1d
	and b                                            ; $4740: $a0
	nop                                              ; $4741: $00
	ld bc, $c37a                                     ; $4742: $01 $7a $c3
	ld a, d                                          ; $4745: $7a
	pop bc                                           ; $4746: $c1
	ld [hl], a                                       ; $4747: $77
	ldh a, [$97]                                     ; $4748: $f0 $97
	db $ec                                           ; $474a: $ec
	nop                                              ; $474b: $00
	ld c, d                                          ; $474c: $4a
	and l                                            ; $474d: $a5
	and l                                            ; $474e: $a5

Call_03c_474f:
	ld c, d                                          ; $474f: $4a
	ld a, [bc]                                       ; $4750: $0a
	dec b                                            ; $4751: $05
	ld a, c                                          ; $4752: $79
	ld d, c                                          ; $4753: $51
	ld a, a                                          ; $4754: $7f
	or e                                             ; $4755: $b3
	add b                                            ; $4756: $80
	stop                                             ; $4757: $10 $00
	rst $38                                          ; $4759: $ff
	rra                                              ; $475a: $1f
	rra                                              ; $475b: $1f
	cpl                                              ; $475c: $2f
	ld e, a                                          ; $475d: $5f
	ld d, a                                          ; $475e: $57
	cpl                                              ; $475f: $2f
	inc hl                                           ; $4760: $23
	ld e, a                                          ; $4761: $5f
	ld bc, $2801                                     ; $4762: $01 $01 $28
	ld d, $14                                        ; $4765: $16 $14
	ld a, [hl+]                                      ; $4767: $2a
	add b                                            ; $4768: $80
	ld a, $ec                                        ; $4769: $3e $ec
	ld a, h                                          ; $476b: $7c
	or $be                                           ; $476c: $f6 $be
	ei                                               ; $476e: $fb
	ld e, a                                          ; $476f: $5f
	rst $38                                          ; $4770: $ff
	xor a                                            ; $4771: $af
	cp $df                                           ; $4772: $fe $df
	rst $38                                          ; $4774: $ff
	ld a, c                                          ; $4775: $79
	rst SubAFromDE                                          ; $4776: $df
	rra                                              ; $4777: $1f
	rst SubAFromDE                                          ; $4778: $df
	inc bc                                           ; $4779: $03
	add h                                            ; $477a: $84
	rst AddAOntoHL                                          ; $477b: $ef
	ld a, [bc]                                       ; $477c: $0a
	rst JumpTable                                          ; $477d: $c7
	dec b                                            ; $477e: $05
	db $eb                                           ; $477f: $eb
	dec bc                                           ; $4780: $0b
	ldh a, [$e0]                                     ; $4781: $f0 $e0
	rst FarCall                                          ; $4783: $f7
	rst FarCall                                          ; $4784: $f7
	ld a, a                                          ; $4785: $7f
	rst FarCall                                          ; $4786: $f7
	cp b                                             ; $4787: $b8
	ld hl, sp-$21                                    ; $4788: $f8 $df
	ld hl, sp+$25                                    ; $478a: $f8 $25
	ld a, [de]                                       ; $478c: $1a

jr_03c_478d:
	ld a, d                                          ; $478d: $7a
	ld h, l                                          ; $478e: $65
	ld h, b                                          ; $478f: $60
	ld [hl], b                                       ; $4790: $70
	nop                                              ; $4791: $00
	inc bc                                           ; $4792: $03

jr_03c_4793:
	ld h, l                                          ; $4793: $65
	ld a, d                                          ; $4794: $7a
	ld l, d                                          ; $4795: $6a
	ld a, e                                          ; $4796: $7b
	and b                                            ; $4797: $a0
	ld a, a                                          ; $4798: $7f
	cp l                                             ; $4799: $bd
	sub l                                            ; $479a: $95
	ld e, c                                          ; $479b: $59
	and [hl]                                         ; $479c: $a6
	jr nz, jr_03c_4737                               ; $479d: $20 $98

	nop                                              ; $479f: $00
	ld bc, $2954                                     ; $47a0: $01 $54 $29
	add hl, bc                                       ; $47a3: $09
	or h                                             ; $47a4: $b4
	ld [hl], a                                       ; $47a5: $77
	and b                                            ; $47a6: $a0
	ld a, a                                          ; $47a7: $7f
	ldh a, [hDisp1_OBP0]                                     ; $47a8: $f0 $93
	add b                                            ; $47aa: $80
	ld a, a                                          ; $47ab: $7f
	nop                                              ; $47ac: $00
	rlca                                             ; $47ad: $07
	ld b, l                                          ; $47ae: $45
	xor d                                            ; $47af: $aa
	xor d                                            ; $47b0: $aa
	ld b, l                                          ; $47b1: $45
	ld b, l                                          ; $47b2: $45
	xor d                                            ; $47b3: $aa
	ld [bc], a                                       ; $47b4: $02
	db $ed                                           ; $47b5: $ed
	ld [hl], a                                       ; $47b6: $77
	ldh a, [$99]                                     ; $47b7: $f0 $99
	ld bc, $2a0a                                     ; $47b9: $01 $0a $2a
	ld d, c                                          ; $47bc: $51
	ld d, c                                          ; $47bd: $51
	ld a, [hl+]                                      ; $47be: $2a
	ld a, e                                          ; $47bf: $7b
	db $fc                                           ; $47c0: $fc
	ld a, h                                          ; $47c1: $7c
	adc $7e                                          ; $47c2: $ce $7e
	adc h                                            ; $47c4: $8c
	ld a, e                                          ; $47c5: $7b
	ldh a, [$9b]                                     ; $47c6: $f0 $9b
	ld d, h                                          ; $47c8: $54
	adc c                                            ; $47c9: $89
	adc b                                            ; $47ca: $88
	ld d, l                                          ; $47cb: $55
	ld a, e                                          ; $47cc: $7b
	db $fc                                           ; $47cd: $fc
	sbc d                                            ; $47ce: $9a
	ld d, b                                          ; $47cf: $50
	nop                                              ; $47d0: $00
	add c                                            ; $47d1: $81
	nop                                              ; $47d2: $00
	dec a                                            ; $47d3: $3d
	ld [hl], e                                       ; $47d4: $73
	ldh a, [hDisp1_OBP1]                                     ; $47d5: $f0 $94
	and d                                            ; $47d7: $a2
	and b                                            ; $47d8: $a0
	ld d, h                                          ; $47d9: $54
	ldh [rP1], a                                     ; $47da: $e0 $00
	dec b                                            ; $47dc: $05
	ld a, [bc]                                       ; $47dd: $0a
	adc d                                            ; $47de: $8a
	ld b, h                                          ; $47df: $44
	ld b, b                                          ; $47e0: $40
	sbc [hl]                                         ; $47e1: $9e
	ld [hl], a                                       ; $47e2: $77
	ldh a, [$80]                                     ; $47e3: $f0 $80
	and b                                            ; $47e5: $a0
	dec bc                                           ; $47e6: $0b
	add d                                            ; $47e7: $82
	dec d                                            ; $47e8: $15
	and h                                            ; $47e9: $a4
	inc de                                           ; $47ea: $13
	ld d, b                                          ; $47eb: $50
	daa                                              ; $47ec: $27
	inc h                                            ; $47ed: $24
	ld c, e                                          ; $47ee: $4b
	ld a, [bc]                                       ; $47ef: $0a
	push hl                                          ; $47f0: $e5
	nop                                              ; $47f1: $00
	ld [bc], a                                       ; $47f2: $02
	rst $38                                          ; $47f3: $ff
	nop                                              ; $47f4: $00
	ld b, d                                          ; $47f5: $42
	rla                                              ; $47f6: $17
	ld b, c                                          ; $47f7: $41
	rlca                                             ; $47f8: $07
	ld b, b                                          ; $47f9: $40
	ld hl, $1068                                     ; $47fa: $21 $68 $10
	ld d, l                                          ; $47fd: $55
	ld a, [hl+]                                      ; $47fe: $2a
	ld l, d                                          ; $47ff: $6a
	dec d                                            ; $4800: $15
	ld d, l                                          ; $4801: $55
	ld a, [hl+]                                      ; $4802: $2a
	add d                                            ; $4803: $82
	sub c                                            ; $4804: $91
	dec c                                            ; $4805: $0d
	adc b                                            ; $4806: $88
	ld d, b                                          ; $4807: $50
	ld b, c                                          ; $4808: $41
	sub b                                            ; $4809: $90
	add a                                            ; $480a: $87
	ld b, e                                          ; $480b: $43
	ld c, $0d                                        ; $480c: $0e $0d
	add hl, sp                                       ; $480e: $39
	ld [hl], $ea                                     ; $480f: $36 $ea
	push de                                          ; $4811: $d5
	push de                                          ; $4812: $d5
	ld a, e                                          ; $4813: $7b
	inc e                                            ; $4814: $1c
	ld a, h                                          ; $4815: $7c
	xor c                                            ; $4816: $a9
	sub a                                            ; $4817: $97
	ldh [c], a                                       ; $4818: $e2
	db $dd                                           ; $4819: $dd
	sub l                                            ; $481a: $95
	ld l, d                                          ; $481b: $6a
	xor d                                            ; $481c: $aa
	ld d, l                                          ; $481d: $55
	ld d, l                                          ; $481e: $55
	xor d                                            ; $481f: $aa
	ld l, a                                          ; $4820: $6f
	db $fc                                           ; $4821: $fc
	rst SubAFromDE                                          ; $4822: $df
	rst $38                                          ; $4823: $ff
	ld e, a                                          ; $4824: $5f
	db $f4                                           ; $4825: $f4
	ld h, a                                          ; $4826: $67
	ldh a, [$9b]                                     ; $4827: $f0 $9b
	ld d, h                                          ; $4829: $54
	xor e                                            ; $482a: $ab
	xor b                                            ; $482b: $a8
	ld d, a                                          ; $482c: $57
	ld l, a                                          ; $482d: $6f
	db $fc                                           ; $482e: $fc
	ld a, e                                          ; $482f: $7b
	ldh a, [$98]                                     ; $4830: $f0 $98
	ei                                               ; $4832: $fb
	ld l, $e0                                        ; $4833: $2e $e0
	ld [hl], $d6                                     ; $4835: $36 $d6
	rra                                              ; $4837: $1f
	rst AddAOntoHL                                          ; $4838: $ef
	ld a, e                                          ; $4839: $7b

jr_03c_483a:
	sub l                                            ; $483a: $95
	ld [hl], e                                       ; $483b: $73
	cp $99                                           ; $483c: $fe $99
	cp a                                             ; $483e: $bf
	ccf                                              ; $483f: $3f
	jr nz, jr_03c_4861                               ; $4840: $20 $1f

	ld b, b                                          ; $4842: $40
	ld a, a                                          ; $4843: $7f
	ld h, a                                          ; $4844: $67
	ldh a, [c]                                       ; $4845: $f2
	ld a, c                                          ; $4846: $79
	ld a, d                                          ; $4847: $7a
	ld h, e                                          ; $4848: $63
	or $03                                           ; $4849: $f6 $03
	ldh a, [rOCPD]                                   ; $484b: $f0 $6b
	ldh a, [$80]                                     ; $484d: $f0 $80
	ld a, [hl+]                                      ; $484f: $2a
	push de                                          ; $4850: $d5
	dec d                                            ; $4851: $15
	ld [$f50a], a                                    ; $4852: $ea $0a $f5
	dec d                                            ; $4855: $15
	ld [$d52a], a                                    ; $4856: $ea $2a $d5
	db $10                                           ; $4859: $10
	rst AddAOntoHL                                          ; $485a: $ef
	rlca                                             ; $485b: $07
	ld hl, sp-$01                                    ; $485c: $f8 $ff
	rst $38                                          ; $485e: $ff
	add b                                            ; $485f: $80
	ld a, a                                          ; $4860: $7f

jr_03c_4861:
	ld d, b                                          ; $4861: $50
	xor a                                            ; $4862: $af
	and d                                            ; $4863: $a2
	ld e, l                                          ; $4864: $5d
	ld d, b                                          ; $4865: $50
	xor a                                            ; $4866: $af
	xor d                                            ; $4867: $aa
	ld d, l                                          ; $4868: $55
	dec d                                            ; $4869: $15
	ld [$7f80], a                                    ; $486a: $ea $80 $7f
	rst $38                                          ; $486d: $ff
	sub d                                            ; $486e: $92
	rst $38                                          ; $486f: $ff
	cp $7d                                           ; $4870: $fe $7d
	ld a, a                                          ; $4872: $7f
	cp [hl]                                          ; $4873: $be
	ccf                                              ; $4874: $3f
	sbc $1f                                          ; $4875: $de $1f
	xor $0f                                          ; $4877: $ee $0f
	or $07                                           ; $4879: $f6 $07
	ld a, [$e077]                                    ; $487b: $fa $77 $e0
	ld b, a                                          ; $487e: $47
	ret nz                                           ; $487f: $c0

	sub l                                            ; $4880: $95
	ld [bc], a                                       ; $4881: $02
	db $fd                                           ; $4882: $fd
	dec b                                            ; $4883: $05
	ld a, [$fd02]                                    ; $4884: $fa $02 $fd
	ld bc, $02fe                                     ; $4887: $01 $fe $02
	db $fd                                           ; $488a: $fd
	ld l, a                                          ; $488b: $6f
	ldh a, [rPCM34]                                  ; $488c: $f0 $77
	ld c, b                                          ; $488e: $48
	ld a, a                                          ; $488f: $7f
	or h                                             ; $4890: $b4
	sbc c                                            ; $4891: $99
	ld d, c                                          ; $4892: $51
	xor [hl]                                         ; $4893: $ae
	xor b                                            ; $4894: $a8
	ld d, a                                          ; $4895: $57
	dec d                                            ; $4896: $15
	ld [$f067], a                                    ; $4897: $ea $67 $f0
	ld l, a                                          ; $489a: $6f
	db $ec                                           ; $489b: $ec
	ld b, a                                          ; $489c: $47
	jr nz, jr_03c_483a                               ; $489d: $20 $9b

	ld b, l                                          ; $489f: $45
	cp d                                             ; $48a0: $ba
	ld a, [bc]                                       ; $48a1: $0a
	push af                                          ; $48a2: $f5
	scf                                              ; $48a3: $37
	db $10                                           ; $48a4: $10
	ld d, a                                          ; $48a5: $57
	ldh a, [$97]                                     ; $48a6: $f0 $97
	pop hl                                           ; $48a8: $e1
	jp nz, Jump_03c_70b8                             ; $48a9: $c2 $b8 $70

	ld e, [hl]                                       ; $48ac: $5e
	xor h                                            ; $48ad: $ac
	xor e                                            ; $48ae: $ab
	ld d, a                                          ; $48af: $57
	ld h, a                                          ; $48b0: $67
	ldh a, [$1f]                                     ; $48b1: $f0 $1f
	nop                                              ; $48b3: $00
	sbc l                                            ; $48b4: $9d
	ld d, l                                          ; $48b5: $55
	ld h, a                                          ; $48b6: $67
	call c, $9e55                                    ; $48b7: $dc $55 $9e
	ld h, l                                          ; $48ba: $65
	call c, $9e55                                    ; $48bb: $dc $55 $9e
	ld d, [hl]                                       ; $48be: $56
	ld l, a                                          ; $48bf: $6f
	ld sp, hl                                        ; $48c0: $f9
	sbc $44                                          ; $48c1: $de $44
	sbc l                                            ; $48c3: $9d
	ld b, [hl]                                       ; $48c4: $46
	halt                                             ; $48c5: $76
	ret c                                            ; $48c6: $d8

	ld b, h                                          ; $48c7: $44
	sbc l                                            ; $48c8: $9d
	ld b, a                                          ; $48c9: $47
	ld h, h                                          ; $48ca: $64
	ret c                                            ; $48cb: $d8

	ld b, h                                          ; $48cc: $44
	ld e, a                                          ; $48cd: $5f
	db $eb                                           ; $48ce: $eb
	call c, $8544                                    ; $48cf: $dc $44 $85
	inc bc                                           ; $48d2: $03
	sbc h                                            ; $48d3: $9c
	ld a, [hl-]                                      ; $48d4: $3a
	inc bc                                           ; $48d5: $03
	ld a, $73                                        ; $48d6: $3e $73
	cp $80                                           ; $48d8: $fe $80
	ld a, d                                          ; $48da: $7a
	rlca                                             ; $48db: $07
	halt                                             ; $48dc: $76
	dec bc                                           ; $48dd: $0b
	ld l, d                                          ; $48de: $6a
	rla                                              ; $48df: $17
	ld b, [hl]                                       ; $48e0: $46
	dec sp                                           ; $48e1: $3b
	sbc b                                            ; $48e2: $98
	daa                                              ; $48e3: $27
	ld d, [hl]                                       ; $48e4: $56

jr_03c_48e5:
	dec bc                                           ; $48e5: $0b
	ld a, [hl+]                                      ; $48e6: $2a
	inc de                                           ; $48e7: $13
	ld b, [hl]                                       ; $48e8: $46
	dec sp                                           ; $48e9: $3b
	sbc d                                            ; $48ea: $9a
	ld h, a                                          ; $48eb: $67
	inc l                                            ; $48ec: $2c
	ld b, a                                          ; $48ed: $47
	call nc, $ec03                                   ; $48ee: $d4 $03 $ec
	rlca                                             ; $48f1: $07
	add l                                            ; $48f2: $85
	ei                                               ; $48f3: $fb
	xor c                                            ; $48f4: $a9
	dec de                                           ; $48f5: $1b
	ld c, c                                          ; $48f6: $49
	dec de                                           ; $48f7: $1b
	xor c                                            ; $48f8: $a9
	sbc e                                            ; $48f9: $9b
	dec de                                           ; $48fa: $1b
	ld b, c                                          ; $48fb: $41
	rra                                              ; $48fc: $1f
	inc bc                                           ; $48fd: $03
	call c, $80ff                                    ; $48fe: $dc $ff $80
	ld hl, sp-$07                                    ; $4901: $f8 $f9
	ld hl, sp+$0f                                    ; $4903: $f8 $0f
	ld [$093f], sp                                   ; $4905: $08 $3f $09
	ld l, $5b                                        ; $4908: $2e $5b
	xor h                                            ; $490a: $ac
	rra                                              ; $490b: $1f
	ld hl, sp-$03                                    ; $490c: $f8 $fd
	cp $f9                                           ; $490e: $fe $f9
	cp $87                                           ; $4910: $fe $87
	add sp, -$5e                                     ; $4912: $e8 $a2
	push bc                                          ; $4914: $c5
	xor c                                            ; $4915: $a9

jr_03c_4916:
	jp nz, $c5b0                                     ; $4916: $c2 $b0 $c5

	or b                                             ; $4919: $b0
	ret z                                            ; $491a: $c8

	inc e                                            ; $491b: $1c
	ldh [$af], a                                     ; $491c: $e0 $af
	ret nc                                           ; $491e: $d0

jr_03c_491f:
	or a                                             ; $491f: $b7
	sbc e                                            ; $4920: $9b
	ret z                                            ; $4921: $c8

	rla                                              ; $4922: $17
	add b                                            ; $4923: $80
	adc [hl]                                         ; $4924: $8e
	cp [hl]                                          ; $4925: $be
	db $dd                                           ; $4926: $dd
	ld a, [$8171]                                    ; $4927: $fa $71 $81
	add b                                            ; $492a: $80
	cp e                                             ; $492b: $bb
	ld b, b                                          ; $492c: $40
	ld e, l                                          ; $492d: $5d
	jr nz, jr_03c_491f                               ; $492e: $20 $ef

	db $10                                           ; $4930: $10
	ld e, h                                          ; $4931: $5c
	ld bc, $02a8                                     ; $4932: $01 $a8 $02
	ld d, c                                          ; $4935: $51
	inc b                                            ; $4936: $04
	and d                                            ; $4937: $a2
	ld [$1044], sp                                   ; $4938: $08 $44 $10
	ret                                              ; $493b: $c9


	jr nz, jr_03c_48e5                               ; $493c: $20 $a7

	ld d, b                                          ; $493e: $50
	ld d, e                                          ; $493f: $53
	xor h                                            ; $4940: $ac
	sub l                                            ; $4941: $95
	ret nz                                           ; $4942: $c0

	xor d                                            ; $4943: $aa
	ret nz                                           ; $4944: $c0

	sub l                                            ; $4945: $95
	ret nz                                           ; $4946: $c0

	add c                                            ; $4947: $81
	ld a, e                                          ; $4948: $7b
	cp $8e                                           ; $4949: $fe $8e
	ld b, $c1                                        ; $494b: $06 $c1
	adc l                                            ; $494d: $8d
	jp nz, $e49b                                     ; $494e: $c2 $9b $e4

	ld l, a                                          ; $4951: $6f
	db $10                                           ; $4952: $10
	inc h                                            ; $4953: $24
	jr jr_03c_49b4                                   ; $4954: $18 $5e

	jr nz, jr_03c_4997                               ; $4956: $20 $3f

	ld b, b                                          ; $4958: $40
	dec hl                                           ; $4959: $2b
	add b                                            ; $495a: $80
	rst JumpTable                                          ; $495b: $c7
	cp d                                             ; $495c: $ba
	rrca                                             ; $495d: $0f
	add a                                            ; $495e: $87
	ld e, e                                          ; $495f: $5b
	db $f4                                           ; $4960: $f4
	ei                                               ; $4961: $fb
	db $fd                                           ; $4962: $fd
	db $fc                                           ; $4963: $fc
	add b                                            ; $4964: $80
	inc bc                                           ; $4965: $03
	ld sp, hl                                        ; $4966: $f9
	inc bc                                           ; $4967: $03
	ld [hl], d                                       ; $4968: $72
	adc a                                            ; $4969: $8f
	jp z, Jump_03c_6116                              ; $496a: $ca $16 $61

	jr nc, @-$5e                                     ; $496d: $30 $a0

	jr nc, jr_03c_49d3                               ; $496f: $30 $62

	jr nc, jr_03c_4916                               ; $4971: $30 $a3

	jr nc, jr_03c_49d6                               ; $4973: $30 $61

	or b                                             ; $4975: $b0
	ld h, b                                          ; $4976: $60
	ldh a, [rBCPS]                                   ; $4977: $f0 $68
	or a                                             ; $4979: $b7
	ld h, $71                                        ; $497a: $26 $71
	push de                                          ; $497c: $d5
	ld [$04ea], sp                                   ; $497d: $08 $ea $04
	call nc, Call_03c_6c2b                           ; $4980: $d4 $2b $6c
	inc de                                           ; $4983: $13
	add b                                            ; $4984: $80
	dec de                                           ; $4985: $1b
	inc h                                            ; $4986: $24
	or [hl]                                          ; $4987: $b6
	ld c, b                                          ; $4988: $48
	db $ed                                           ; $4989: $ed
	db $10                                           ; $498a: $10
	ld d, h                                          ; $498b: $54
	xor b                                            ; $498c: $a8
	sub b                                            ; $498d: $90
	ld b, c                                          ; $498e: $41
	jr nz, @-$7c                                     ; $498f: $20 $82

	ld b, c                                          ; $4991: $41
	inc b                                            ; $4992: $04
	add e                                            ; $4993: $83
	ld [$9046], sp                                   ; $4994: $08 $46 $90

jr_03c_4997:
	adc l                                            ; $4997: $8d
	ld h, b                                          ; $4998: $60
	dec de                                           ; $4999: $1b
	ld h, b                                          ; $499a: $60
	ld h, [hl]                                       ; $499b: $66
	ld de, $1ff0                                     ; $499c: $11 $f0 $1f
	db $f4                                           ; $499f: $f4
	dec de                                           ; $49a0: $1b
	or b                                             ; $49a1: $b0
	rra                                              ; $49a2: $1f
	ld [hl], b                                       ; $49a3: $70
	sbc l                                            ; $49a4: $9d
	rra                                              ; $49a5: $1f
	ldh a, [$73]                                     ; $49a6: $f0 $73
	cp $84                                           ; $49a8: $fe $84
	ld [hl], b                                       ; $49aa: $70
	sbc a                                            ; $49ab: $9f
	dec [hl]                                         ; $49ac: $35
	ret nz                                           ; $49ad: $c0

	ld c, d                                          ; $49ae: $4a
	and b                                            ; $49af: $a0
	add l                                            ; $49b0: $85
	ld d, b                                          ; $49b1: $50
	ld b, b                                          ; $49b2: $40
	xor b                                            ; $49b3: $a8

jr_03c_49b4:
	add b                                            ; $49b4: $80
	ld e, l                                          ; $49b5: $5d
	ld b, b                                          ; $49b6: $40
	cp d                                             ; $49b7: $ba
	ld [hl+], a                                      ; $49b8: $22
	db $dd                                           ; $49b9: $dd
	ld b, l                                          ; $49ba: $45
	cp d                                             ; $49bb: $ba
	push de                                          ; $49bc: $d5
	ld [bc], a                                       ; $49bd: $02
	adc d                                            ; $49be: $8a
	ld hl, $4031                                     ; $49bf: $21 $31 $40
	ld a, h                                          ; $49c2: $7c
	add b                                            ; $49c3: $80
	rst $38                                          ; $49c4: $ff
	cp [hl]                                          ; $49c5: $be
	rst $38                                          ; $49c6: $ff
	rst $38                                          ; $49c7: $ff
	ld a, a                                          ; $49c8: $7f
	add b                                            ; $49c9: $80
	add b                                            ; $49ca: $80
	ld c, b                                          ; $49cb: $48
	inc c                                            ; $49cc: $0c
	xor b                                            ; $49cd: $a8
	inc c                                            ; $49ce: $0c
	ld e, b                                          ; $49cf: $58

jr_03c_49d0:
	adc h                                            ; $49d0: $8c
	xor c                                            ; $49d1: $a9
	ld c, h                                          ; $49d2: $4c

jr_03c_49d3:
	ld e, c                                          ; $49d3: $59
	inc l                                            ; $49d4: $2c
	sbc c                                            ; $49d5: $99

jr_03c_49d6:
	inc l                                            ; $49d6: $2c
	sbc e                                            ; $49d7: $9b
	ld c, h                                          ; $49d8: $4c
	ld a, [de]                                       ; $49d9: $1a
	adc h                                            ; $49da: $8c
	ret nz                                           ; $49db: $c0

	call c, $dd40                                    ; $49dc: $dc $40 $dd
	jr nz, jr_03c_49d3                               ; $49df: $20 $f2

	ld [hl], b                                       ; $49e1: $70
	db $fd                                           ; $49e2: $fd
	ld a, b                                          ; $49e3: $78
	adc $78                                          ; $49e4: $ce $78
	rst GetHLinHL                                          ; $49e6: $cf
	jr c, jr_03c_49d0                                ; $49e7: $38 $e7

	sbc e                                            ; $49e9: $9b
	inc a                                            ; $49ea: $3c
	or $00                                           ; $49eb: $f6 $00
	ld [bc], a                                       ; $49ed: $02
	sbc $07                                          ; $49ee: $de $07
	sbc e                                            ; $49f0: $9b
	adc a                                            ; $49f1: $8f
	rra                                              ; $49f2: $1f
	ld e, a                                          ; $49f3: $5f
	ld a, $de                                        ; $49f4: $3e $de
	rst $38                                          ; $49f6: $ff
	add b                                            ; $49f7: $80
	cp a                                             ; $49f8: $bf
	rst $38                                          ; $49f9: $ff
	ccf                                              ; $49fa: $3f
	and e                                            ; $49fb: $a3
	ld l, $04                                        ; $49fc: $2e $04
	sub l                                            ; $49fe: $95
	add h                                            ; $49ff: $84
	db $ec                                           ; $4a00: $ec
	call nz, $c4d5                                   ; $4a01: $c4 $d5 $c4
	call c, Call_03c_7cc4                            ; $4a04: $dc $c4 $7c
	db $e4                                           ; $4a07: $e4
	xor l                                            ; $4a08: $ad
	ld [hl], h                                       ; $4a09: $74
	and h                                            ; $4a0a: $a4
	ld a, h                                          ; $4a0b: $7c
	ld b, b                                          ; $4a0c: $40
	ccf                                              ; $4a0d: $3f
	ld [bc], a                                       ; $4a0e: $02
	ccf                                              ; $4a0f: $3f
	ld d, [hl]                                       ; $4a10: $56
	dec hl                                           ; $4a11: $2b
	and b                                            ; $4a12: $a0
	ld e, a                                          ; $4a13: $5f
	ld b, [hl]                                       ; $4a14: $46
	cp e                                             ; $4a15: $bb
	add d                                            ; $4a16: $82
	adc [hl]                                         ; $4a17: $8e
	ld a, a                                          ; $4a18: $7f
	ld d, h                                          ; $4a19: $54
	xor e                                            ; $4a1a: $ab
	and b                                            ; $4a1b: $a0
	ld e, a                                          ; $4a1c: $5f
	db $fc                                           ; $4a1d: $fc
	inc bc                                           ; $4a1e: $03
	adc $37                                          ; $4a1f: $ce $37
	add [hl]                                         ; $4a21: $86
	ld [hl], e                                       ; $4a22: $73
	ld d, $ef                                        ; $4a23: $16 $ef
	ld b, d                                          ; $4a25: $42
	cp a                                             ; $4a26: $bf
	add [hl]                                         ; $4a27: $86
	ld a, a                                          ; $4a28: $7f
	ld [hl], a                                       ; $4a29: $77
	db $fc                                           ; $4a2a: $fc
	add b                                            ; $4a2b: $80
	dec c                                            ; $4a2c: $0d
	rst $38                                          ; $4a2d: $ff
	add hl, bc                                       ; $4a2e: $09
	ld e, e                                          ; $4a2f: $5b
	dec bc                                           ; $4a30: $0b
	cp c                                             ; $4a31: $b9
	dec hl                                           ; $4a32: $2b
	ld e, c                                          ; $4a33: $59
	ld c, e                                          ; $4a34: $4b
	cp l                                             ; $4a35: $bd
	xor e                                            ; $4a36: $ab
	ld e, l                                          ; $4a37: $5d
	rrca                                             ; $4a38: $0f
	ld sp, hl                                        ; $4a39: $f9
	rrca                                             ; $4a3a: $0f
	rst SubAFromDE                                          ; $4a3b: $df
	db $ed                                           ; $4a3c: $ed
	ld e, $89                                        ; $4a3d: $1e $89
	ld a, [hl]                                       ; $4a3f: $7e
	adc l                                            ; $4a40: $8d
	cp $0b                                           ; $4a41: $fe $0b
	db $fc                                           ; $4a43: $fc
	dec e                                            ; $4a44: $1d
	xor $09                                          ; $4a45: $ee $09
	cp $7d                                           ; $4a47: $fe $7d
	adc [hl]                                         ; $4a49: $8e
	ld sp, hl                                        ; $4a4a: $f9
	add d                                            ; $4a4b: $82
	cp $13                                           ; $4a4c: $fe $13
	db $ec                                           ; $4a4e: $ec
	xor c                                            ; $4a4f: $a9
	sub $94                                          ; $4a50: $d6 $94
	db $eb                                           ; $4a52: $eb
	ld [hl+], a                                      ; $4a53: $22
	push de                                          ; $4a54: $d5
	ld de, $2aea                                     ; $4a55: $11 $ea $2a
	push de                                          ; $4a58: $d5
	sub l                                            ; $4a59: $95
	ld [$df20], a                                    ; $4a5a: $ea $20 $df
	db $f4                                           ; $4a5d: $f4
	dec bc                                           ; $4a5e: $0b
	ld [$d415], a                                    ; $4a5f: $ea $15 $d4
	dec hl                                           ; $4a62: $2b
	xor d                                            ; $4a63: $aa
	ld d, l                                          ; $4a64: $55
	ld d, h                                          ; $4a65: $54
	xor e                                            ; $4a66: $ab
	add b                                            ; $4a67: $80
	ld a, a                                          ; $4a68: $7f
	cp a                                             ; $4a69: $bf
	rst $38                                          ; $4a6a: $ff
	rst $38                                          ; $4a6b: $ff
	add a                                            ; $4a6c: $87
	ld a, [bc]                                       ; $4a6d: $0a
	push af                                          ; $4a6e: $f5
	dec d                                            ; $4a6f: $15
	ld [$5fa0], a                                    ; $4a70: $ea $a0 $5f
	ld b, c                                          ; $4a73: $41
	cp [hl]                                          ; $4a74: $be
	nop                                              ; $4a75: $00
	rst $38                                          ; $4a76: $ff
	ld bc, $0afe                                     ; $4a77: $01 $fe $0a
	push af                                          ; $4a7a: $f5
	ld [bc], a                                       ; $4a7b: $02
	db $fd                                           ; $4a7c: $fd
	rlca                                             ; $4a7d: $07
	ld hl, sp-$79                                    ; $4a7e: $f8 $87
	ld hl, sp-$6d                                    ; $4a80: $f8 $93
	db $ec                                           ; $4a82: $ec
	inc bc                                           ; $4a83: $03
	db $fc                                           ; $4a84: $fc
	ld [hl], a                                       ; $4a85: $77
	ccf                                              ; $4a86: $3f
	ld [hl], a                                       ; $4a87: $77
	db $fc                                           ; $4a88: $fc
	sbc [hl]                                         ; $4a89: $9e
	dec bc                                           ; $4a8a: $0b
	cp l                                             ; $4a8b: $bd
	add a                                            ; $4a8c: $87
	adc e                                            ; $4a8d: $8b
	rst SubAFromHL                                          ; $4a8e: $d7
	ld l, e                                          ; $4a8f: $6b
	sbc e                                            ; $4a90: $9b
	add b                                            ; $4a91: $80
	ld d, $c0                                        ; $4a92: $16 $c0
	db $eb                                           ; $4a94: $eb
	cp a                                             ; $4a95: $bf
	push de                                          ; $4a96: $d5
	rst $38                                          ; $4a97: $ff
	add b                                            ; $4a98: $80
	ld [bc], a                                       ; $4a99: $02
	db $eb                                           ; $4a9a: $eb
	ld d, $f4                                        ; $4a9b: $16 $f4
	dec bc                                           ; $4a9d: $0b
	cp c                                             ; $4a9e: $b9
	ld b, a                                          ; $4a9f: $47
	reti                                             ; $4aa0: $d9


	daa                                              ; $4aa1: $27
	add sp, $17                                      ; $4aa2: $e8 $17
	ld h, b                                          ; $4aa4: $60
	sbc a                                            ; $4aa5: $9f
	sub c                                            ; $4aa6: $91
	ld l, [hl]                                       ; $4aa7: $6e
	cp d                                             ; $4aa8: $ba
	dec d                                            ; $4aa9: $15
	sub l                                            ; $4aaa: $95
	ld a, [hl-]                                      ; $4aab: $3a
	ld d, b                                          ; $4aac: $50
	rra                                              ; $4aad: $1f
	ld d, c                                          ; $4aae: $51
	ld c, $28                                        ; $4aaf: $0e $28
	adc a                                            ; $4ab1: $8f
	xor h                                            ; $4ab2: $ac
	adc e                                            ; $4ab3: $8b
	adc b                                            ; $4ab4: $88
	rst GetHLinHL                                          ; $4ab5: $cf
	ld c, b                                          ; $4ab6: $48
	rst $38                                          ; $4ab7: $ff
	sbc c                                            ; $4ab8: $99
	ld d, b                                          ; $4ab9: $50
	xor h                                            ; $4aba: $ac
	and b                                            ; $4abb: $a0
	ld d, a                                          ; $4abc: $57
	ld d, b                                          ; $4abd: $50
	xor a                                            ; $4abe: $af
	cp h                                             ; $4abf: $bc
	rst $38                                          ; $4ac0: $ff
	rst $38                                          ; $4ac1: $ff
	rst $38                                          ; $4ac2: $ff
	rst $38                                          ; $4ac3: $ff
	rst $38                                          ; $4ac4: $ff
	adc l                                            ; $4ac5: $8d
	push bc                                          ; $4ac6: $c5
	ld a, [hl+]                                      ; $4ac7: $2a
	ld b, d                                          ; $4ac8: $42
	sub l                                            ; $4ac9: $95
	adc l                                            ; $4aca: $8d
	ld [hl+], a                                      ; $4acb: $22
	ld [de], a                                       ; $4acc: $12
	ld b, l                                          ; $4acd: $45
	add hl, sp                                       ; $4ace: $39
	add d                                            ; $4acf: $82
	ld b, d                                          ; $4ad0: $42
	cp l                                             ; $4ad1: $bd
	cp l                                             ; $4ad2: $bd
	ld a, [hl]                                       ; $4ad3: $7e
	cp $ff                                           ; $4ad4: $fe $ff
	ld [hl], b                                       ; $4ad6: $70
	sbc a                                            ; $4ad7: $9f
	ld [hl], a                                       ; $4ad8: $77
	cp $76                                           ; $4ad9: $fe $76
	add $9e                                          ; $4adb: $c6 $9e
	ldh [$7a], a                                     ; $4add: $e0 $7a
	ret nz                                           ; $4adf: $c0

	ld a, a                                          ; $4ae0: $7f
	cp [hl]                                          ; $4ae1: $be
	sub a                                            ; $4ae2: $97
	dec bc                                           ; $4ae3: $0b
	db $f4                                           ; $4ae4: $f4
	dec b                                            ; $4ae5: $05
	ld a, [$f40b]                                    ; $4ae6: $fa $0b $f4
	rlca                                             ; $4ae9: $07
	ld hl, sp+$77                                    ; $4aea: $f8 $77
	ld hl, sp+$7f                                    ; $4aec: $f8 $7f
	add d                                            ; $4aee: $82
	add b                                            ; $4aef: $80
	inc b                                            ; $4af0: $04
	ei                                               ; $4af1: $fb
	cp [hl]                                          ; $4af2: $be
	ld b, c                                          ; $4af3: $41
	db $dd                                           ; $4af4: $dd
	ld [hl+], a                                      ; $4af5: $22
	db $eb                                           ; $4af6: $eb
	inc d                                            ; $4af7: $14
	rst FarCall                                          ; $4af8: $f7
	ld [$946b], sp                                   ; $4af9: $08 $6b $94
	db $dd                                           ; $4afc: $dd
	ld [hl+], a                                      ; $4afd: $22
	cp [hl]                                          ; $4afe: $be
	ld b, c                                          ; $4aff: $41
	ld a, h                                          ; $4b00: $7c
	add e                                            ; $4b01: $83
	cp b                                             ; $4b02: $b8
	inc c                                            ; $4b03: $0c
	add hl, sp                                       ; $4b04: $39
	adc h                                            ; $4b05: $8c
	adc c                                            ; $4b06: $89
	ld a, h                                          ; $4b07: $7c
	adc e                                            ; $4b08: $8b
	ld a, h                                          ; $4b09: $7c
	ld c, c                                          ; $4b0a: $49
	cp h                                             ; $4b0b: $bc
	add hl, bc                                       ; $4b0c: $09
	db $fc                                           ; $4b0d: $fc
	cp e                                             ; $4b0e: $bb
	sbc d                                            ; $4b0f: $9a
	ld c, h                                          ; $4b10: $4c
	dec de                                           ; $4b11: $1b
	db $ec                                           ; $4b12: $ec
	ld a, $f3                                        ; $4b13: $3e $f3
	ld a, e                                          ; $4b15: $7b
	ld a, [de]                                       ; $4b16: $1a
	add b                                            ; $4b17: $80
	db $fc                                           ; $4b18: $fc
	rlca                                             ; $4b19: $07
	cp $09                                           ; $4b1a: $fe $09
	rst FarCall                                          ; $4b1c: $f7
	inc d                                            ; $4b1d: $14
	db $eb                                           ; $4b1e: $eb
	ld [$20f7], sp                                   ; $4b1f: $08 $f7 $20
	rst SubAFromDE                                          ; $4b22: $df
	ccf                                              ; $4b23: $3f
	ld hl, $a2be                                     ; $4b24: $21 $be $a2
	ld [$ed76], a                                    ; $4b27: $ea $76 $ed
	rra                                              ; $4b2a: $1f
	ldh [$3e], a                                     ; $4b2b: $e0 $3e
	db $ec                                           ; $4b2d: $ec
	xor h                                            ; $4b2e: $ac
	ret nz                                           ; $4b2f: $c0

	ret nz                                           ; $4b30: $c0

	ld b, b                                          ; $4b31: $40
	ret nz                                           ; $4b32: $c0

	add h                                            ; $4b33: $84
	ld a, l                                          ; $4b34: $7d
	inc b                                            ; $4b35: $04
	rst $38                                          ; $4b36: $ff
	ld a, a                                          ; $4b37: $7f
	cp $94                                           ; $4b38: $fe $94
	add h                                            ; $4b3a: $84
	rst $38                                          ; $4b3b: $ff
	db $e4                                           ; $4b3c: $e4
	rst $38                                          ; $4b3d: $ff
	ld [hl], h                                       ; $4b3e: $74
	rra                                              ; $4b3f: $1f
	ld a, h                                          ; $4b40: $7c
	rrca                                             ; $4b41: $0f
	ld a, h                                          ; $4b42: $7c
	ld b, a                                          ; $4b43: $47
	ld [bc], a                                       ; $4b44: $02
	ld [hl], e                                       ; $4b45: $73
	ld a, d                                          ; $4b46: $7a
	adc [hl]                                         ; $4b47: $8e
	jp nz, $e4ff                                     ; $4b48: $c2 $ff $e4

	ld a, e                                          ; $4b4b: $7b
	ld a, d                                          ; $4b4c: $7a
	dec d                                            ; $4b4d: $15
	sbc b                                            ; $4b4e: $98
	rrca                                             ; $4b4f: $0f
	ld hl, sp-$71                                    ; $4b50: $f8 $8f
	add e                                            ; $4b52: $83
	ld a, a                                          ; $4b53: $7f
	add a                                            ; $4b54: $87
	ld a, a                                          ; $4b55: $7f
	add d                                            ; $4b56: $82
	ld a, a                                          ; $4b57: $7f
	add [hl]                                         ; $4b58: $86
	ld [hl], e                                       ; $4b59: $73
	db $fc                                           ; $4b5a: $fc
	sbc h                                            ; $4b5b: $9c
	ld b, $ff                                        ; $4b5c: $06 $ff
	ld b, $dc                                        ; $4b5e: $06 $dc
	rst $38                                          ; $4b60: $ff
	sbc e                                            ; $4b61: $9b
	dec hl                                           ; $4b62: $2b
	rst SubAFromDE                                          ; $4b63: $df
	cpl                                              ; $4b64: $2f
	db $db                                           ; $4b65: $db
	ld l, a                                          ; $4b66: $6f
	cp $7e                                           ; $4b67: $fe $7e
	ld a, a                                          ; $4b69: $7f
	ld a, l                                          ; $4b6a: $7d
	adc h                                            ; $4b6b: $8c
	sbc c                                            ; $4b6c: $99
	db $ed                                           ; $4b6d: $ed
	ld a, $7d                                        ; $4b6e: $3e $7d
	xor [hl]                                         ; $4b70: $ae
	db $fd                                           ; $4b71: $fd
	ld l, $6f                                        ; $4b72: $2e $6f
	cp $9e                                           ; $4b74: $fe $9e
	db $fc                                           ; $4b76: $fc
	ld [hl], e                                       ; $4b77: $73
	jp nz, $336a                                     ; $4b78: $c2 $6a $33

	rst SubAFromDE                                          ; $4b7b: $df
	rst $38                                          ; $4b7c: $ff
	rst $38                                          ; $4b7d: $ff
	ld h, e                                          ; $4b7e: $63
	jr z, jr_03c_4be8                                ; $4b7f: $28 $67

	ldh a, [$7d]                                     ; $4b81: $f0 $7d
	ld c, d                                          ; $4b83: $4a
	adc [hl]                                         ; $4b84: $8e
	dec b                                            ; $4b85: $05
	rst $38                                          ; $4b86: $ff
	dec bc                                           ; $4b87: $0b
	rst $38                                          ; $4b88: $ff
	rrca                                             ; $4b89: $0f
	rst $38                                          ; $4b8a: $ff
	rra                                              ; $4b8b: $1f
	rst $38                                          ; $4b8c: $ff
	ld a, [hl]                                       ; $4b8d: $7e
	rst AddAOntoHL                                          ; $4b8e: $ef
	ld a, [$b1ff]                                    ; $4b8f: $fa $ff $b1
	rst FarCall                                          ; $4b92: $f7
	ldh [rIE], a                                     ; $4b93: $e0 $ff
	ldh a, [$7b]                                     ; $4b95: $f0 $7b
	cp $9c                                           ; $4b97: $fe $9c

jr_03c_4b99:
	ld hl, sp-$01                                    ; $4b99: $f8 $ff
	ld hl, sp+$7b                                    ; $4b9b: $f8 $7b
	ld [hl+], a                                      ; $4b9d: $22
	sub h                                            ; $4b9e: $94
	push bc                                          ; $4b9f: $c5
	ld a, [hl-]                                      ; $4ba0: $3a
	ld b, b                                          ; $4ba1: $40
	rst $38                                          ; $4ba2: $ff
	ld de, $20e8                                     ; $4ba3: $11 $e8 $20
	sbc $50                                          ; $4ba6: $de $50
	xor a                                            ; $4ba8: $af
	ld [$527b], sp                                   ; $4ba9: $08 $7b $52
	ld a, [hl]                                       ; $4bac: $7e
	and d                                            ; $4bad: $a2
	cp a                                             ; $4bae: $bf
	rst $38                                          ; $4baf: $ff
	rst $38                                          ; $4bb0: $ff
	sbc [hl]                                         ; $4bb1: $9e
	xor b                                            ; $4bb2: $a8

jr_03c_4bb3:
	ld l, d                                          ; $4bb3: $6a
	ldh [c], a                                       ; $4bb4: $e2
	sub b                                            ; $4bb5: $90
	ld b, b                                          ; $4bb6: $40
	cp a                                             ; $4bb7: $bf
	jr nz, jr_03c_4b99                               ; $4bb8: $20 $df

	ld a, d                                          ; $4bba: $7a
	add l                                            ; $4bbb: $85
	nop                                              ; $4bbc: $00
	rst $38                                          ; $4bbd: $ff
	jr c, @+$01                                      ; $4bbe: $38 $ff

	jr @+$01                                         ; $4bc0: $18 $ff

	jr jr_03c_4bb3                                   ; $4bc2: $18 $ef

	inc c                                            ; $4bc4: $0c
	ld a, e                                          ; $4bc5: $7b
	ld c, h                                          ; $4bc6: $4c
	ld [hl], a                                       ; $4bc7: $77
	ld [hl], d                                       ; $4bc8: $72
	sbc d                                            ; $4bc9: $9a
	rlca                                             ; $4bca: $07
	ld sp, hl                                        ; $4bcb: $f9
	add c                                            ; $4bcc: $81
	ld a, a                                          ; $4bcd: $7f
	inc bc                                           ; $4bce: $03
	ld a, e                                          ; $4bcf: $7b
	xor h                                            ; $4bd0: $ac
	sbc [hl]                                         ; $4bd1: $9e
	ld bc, $886f                                     ; $4bd2: $01 $6f $88
	ld a, l                                          ; $4bd5: $7d
	pop bc                                           ; $4bd6: $c1
	sbc e                                            ; $4bd7: $9b
	ld a, a                                          ; $4bd8: $7f
	rlca                                             ; $4bd9: $07
	rst $38                                          ; $4bda: $ff
	di                                               ; $4bdb: $f3
	sbc $ff                                          ; $4bdc: $de $ff
	ld a, a                                          ; $4bde: $7f
	and b                                            ; $4bdf: $a0
	sub l                                            ; $4be0: $95
	ld a, a                                          ; $4be1: $7f
	adc a                                            ; $4be2: $8f
	rst FarCall                                          ; $4be3: $f7
	rrca                                             ; $4be4: $0f
	ld [hl], l                                       ; $4be5: $75
	adc d                                            ; $4be6: $8a
	jp hl                                            ; $4be7: $e9


jr_03c_4be8:
	rst SubAFromHL                                          ; $4be8: $d7
	ld [$bff7], sp                                   ; $4be9: $08 $f7 $bf
	sbc a                                            ; $4bec: $9f
	adc a                                            ; $4bed: $8f
	sbc b                                            ; $4bee: $98
	add b                                            ; $4bef: $80
	sbc a                                            ; $4bf0: $9f
	jr nc, jr_03c_4c32                               ; $4bf1: $30 $3f

	ld a, b                                          ; $4bf3: $78
	rst $38                                          ; $4bf4: $ff
	ld a, [hl]                                       ; $4bf5: $7e
	ld a, c                                          ; $4bf6: $79
	adc $7f                                          ; $4bf7: $ce $7f
	xor d                                            ; $4bf9: $aa
	halt                                             ; $4bfa: $76
	ret z                                            ; $4bfb: $c8

	ld a, [hl]                                       ; $4bfc: $7e
	ld b, b                                          ; $4bfd: $40
	ld a, l                                          ; $4bfe: $7d

jr_03c_4bff:
	add h                                            ; $4bff: $84
	adc l                                            ; $4c00: $8d
	ld d, l                                          ; $4c01: $55
	xor d                                            ; $4c02: $aa
	xor d                                            ; $4c03: $aa
	ld d, l                                          ; $4c04: $55
	nop                                              ; $4c05: $00
	rst $38                                          ; $4c06: $ff
	ld a, e                                          ; $4c07: $7b
	add h                                            ; $4c08: $84
	scf                                              ; $4c09: $37
	ret z                                            ; $4c0a: $c8

	xor h                                            ; $4c0b: $ac
	ld d, e                                          ; $4c0c: $53

jr_03c_4c0d:
	call c, $3823                                    ; $4c0d: $dc $23 $38
	rst JumpTable                                          ; $4c10: $c7
	ld a, b                                          ; $4c11: $78
	add a                                            ; $4c12: $87
	ld [hl], a                                       ; $4c13: $77
	ld h, b                                          ; $4c14: $60
	sub e                                            ; $4c15: $93
	ld c, b                                          ; $4c16: $48
	cp a                                             ; $4c17: $bf
	adc b                                            ; $4c18: $88

jr_03c_4c19:
	ld a, a                                          ; $4c19: $7f
	cp b                                             ; $4c1a: $b8
	ld c, a                                          ; $4c1b: $4f
	jr jr_03c_4c0d                                   ; $4c1c: $18 $ef

	jr z, jr_03c_4bff                                ; $4c1e: $28 $df

	ld e, b                                          ; $4c20: $58
	xor a                                            ; $4c21: $af
	ld [hl], a                                       ; $4c22: $77
	ldh a, [$7e]                                     ; $4c23: $f0 $7e
	inc b                                            ; $4c25: $04
	add b                                            ; $4c26: $80
	xor c                                            ; $4c27: $a9
	ld d, [hl]                                       ; $4c28: $56
	ld d, h                                          ; $4c29: $54
	xor e                                            ; $4c2a: $ab

jr_03c_4c2b:
	ld a, [hl+]                                      ; $4c2b: $2a
	push de                                          ; $4c2c: $d5
	dec b                                            ; $4c2d: $05
	ld a, [$f50a]                                    ; $4c2e: $fa $0a $f5
	db $fc                                           ; $4c31: $fc

jr_03c_4c32:
	inc bc                                           ; $4c32: $03
	nop                                              ; $4c33: $00
	rst $38                                          ; $4c34: $ff
	ld a, h                                          ; $4c35: $7c
	ret nz                                           ; $4c36: $c0

	jr c, jr_03c_4c19                                ; $4c37: $38 $e0

	jr jr_03c_4c2b                                   ; $4c39: $18 $f0

	inc e                                            ; $4c3b: $1c
	rst $38                                          ; $4c3c: $ff
	inc de                                           ; $4c3d: $13
	db $f4                                           ; $4c3e: $f4
	and d                                            ; $4c3f: $a2
	ld h, b                                          ; $4c40: $60
	ld b, h                                          ; $4c41: $44
	ret nz                                           ; $4c42: $c0

	add b                                            ; $4c43: $80
	add b                                            ; $4c44: $80
	cp h                                             ; $4c45: $bc
	sub b                                            ; $4c46: $90
	rst SubAFromBC                                          ; $4c47: $e7
	sbc [hl]                                         ; $4c48: $9e
	di                                               ; $4c49: $f3
	adc [hl]                                         ; $4c4a: $8e
	ei                                               ; $4c4b: $fb

Call_03c_4c4c:
	add a                                            ; $4c4c: $87
	db $fd                                           ; $4c4d: $fd
	rst JumpTable                                          ; $4c4e: $c7
	db $fc                                           ; $4c4f: $fc
	rst JumpTable                                          ; $4c50: $c7
	ld a, e                                          ; $4c51: $7b
	ld h, b                                          ; $4c52: $60
	ccf                                              ; $4c53: $3f
	ld h, b                                          ; $4c54: $60
	ld a, $1b                                        ; $4c55: $3e $1b
	nop                                              ; $4c57: $00
	reti                                             ; $4c58: $d9


	ld b, h                                          ; $4c59: $44
	sbc c                                            ; $4c5a: $99
	ld b, l                                          ; $4c5b: $45
	ld d, h                                          ; $4c5c: $54
	ld d, h                                          ; $4c5d: $54
	ld d, l                                          ; $4c5e: $55
	ld b, h                                          ; $4c5f: $44
	ld d, h                                          ; $4c60: $54
	ld a, e                                          ; $4c61: $7b
	cp $7f                                           ; $4c62: $fe $7f
	or $94                                           ; $4c64: $f6 $94
	ld h, l                                          ; $4c66: $65
	ld b, h                                          ; $4c67: $44
	ld d, l                                          ; $4c68: $55
	ld b, h                                          ; $4c69: $44
	ld d, l                                          ; $4c6a: $55
	ld d, h                                          ; $4c6b: $54
	ld d, e                                          ; $4c6c: $53
	ld h, e                                          ; $4c6d: $63
	ld d, h                                          ; $4c6e: $54
	ld b, h                                          ; $4c6f: $44
	ld b, l                                          ; $4c70: $45
	add d                                            ; $4c71: $82
	inc b                                            ; $4c72: $04
	sbc [hl]                                         ; $4c73: $9e
	ld [hl], b                                       ; $4c74: $70
	sbc $ff                                          ; $4c75: $de $ff
	sbc [hl]                                         ; $4c77: $9e
	nop                                              ; $4c78: $00
	ld e, e                                          ; $4c79: $5b
	cp $9c                                           ; $4c7a: $fe $9c
	ld b, $ff                                        ; $4c7c: $06 $ff
	rst FarCall                                          ; $4c7e: $f7
	ld a, e                                          ; $4c7f: $7b
	db $fc                                           ; $4c80: $fc
	sbc l                                            ; $4c81: $9d
	ld b, $f7                                        ; $4c82: $06 $f7
	ld l, e                                          ; $4c84: $6b
	db $fc                                           ; $4c85: $fc
	sbc l                                            ; $4c86: $9d
	rst $38                                          ; $4c87: $ff
	jp $ffde                                         ; $4c88: $c3 $de $ff


	sbc c                                            ; $4c8b: $99
	add hl, bc                                       ; $4c8c: $09
	rst $38                                          ; $4c8d: $ff
	rst SubAFromBC                                          ; $4c8e: $e7
	add hl, de                                       ; $4c8f: $19
	rst AddAOntoHL                                          ; $4c90: $ef
	add hl, de                                       ; $4c91: $19
	ld [hl], a                                       ; $4c92: $77
	db $fc                                           ; $4c93: $fc
	sub l                                            ; $4c94: $95
	add a                                            ; $4c95: $87
	add hl, de                                       ; $4c96: $19
	ld a, a                                          ; $4c97: $7f
	db $fc                                           ; $4c98: $fc
	rst $38                                          ; $4c99: $ff
	rst $38                                          ; $4c9a: $ff

Jump_03c_4c9b:
	inc c                                            ; $4c9b: $0c
	rst $38                                          ; $4c9c: $ff
	inc e                                            ; $4c9d: $1c
	rst AddAOntoHL                                          ; $4c9e: $ef
	ld h, a                                          ; $4c9f: $67
	cp $7f                                           ; $4ca0: $fe $7f
	adc $4f                                          ; $4ca2: $ce $4f
	ret nz                                           ; $4ca4: $c0

	ld h, a                                          ; $4ca5: $67
	ldh a, [$80]                                     ; $4ca6: $f0 $80
	ld bc, $02ff                                     ; $4ca8: $01 $ff $02
	cp $04                                           ; $4cab: $fe $04
	cp $04                                           ; $4cad: $fe $04
	db $fc                                           ; $4caf: $fc
	ldh [c], a                                       ; $4cb0: $e2
	db $e3                                           ; $4cb1: $e3
	pop bc                                           ; $4cb2: $c1
	pop hl                                           ; $4cb3: $e1
	ldh [$e0], a                                     ; $4cb4: $e0 $e0
	sub c                                            ; $4cb6: $91
	sub c                                            ; $4cb7: $91
	dec de                                           ; $4cb8: $1b
	ld a, $0f                                        ; $4cb9: $3e $0f
	ld a, $07                                        ; $4cbb: $3e $07
	rra                                              ; $4cbd: $1f
	rra                                              ; $4cbe: $1f
	inc e                                            ; $4cbf: $1c
	nop                                              ; $4cc0: $00
	ccf                                              ; $4cc1: $3f
	rra                                              ; $4cc2: $1f
	rra                                              ; $4cc3: $1f
	ldh a, [rIE]                                     ; $4cc4: $f0 $ff
	or b                                             ; $4cc6: $b0
	sub a                                            ; $4cc7: $97
	rst SubAFromDE                                          ; $4cc8: $df
	ld e, b                                          ; $4cc9: $58
	rst AddAOntoHL                                          ; $4cca: $ef
	inc [hl]                                         ; $4ccb: $34
	rst $38                                          ; $4ccc: $ff
	ld a, [de]                                       ; $4ccd: $1a
	rst $38                                          ; $4cce: $ff
	adc l                                            ; $4ccf: $8d
	ld h, e                                          ; $4cd0: $63
	ret nc                                           ; $4cd1: $d0

	ld b, a                                          ; $4cd2: $47
	ret nz                                           ; $4cd3: $c0

	ld a, a                                          ; $4cd4: $7f
	cp $90                                           ; $4cd5: $fe $90
	dec d                                            ; $4cd7: $15
	ld [$55aa], a                                    ; $4cd8: $ea $aa $55
	ld d, l                                          ; $4cdb: $55
	xor d                                            ; $4cdc: $aa
	rlca                                             ; $4cdd: $07
	db $fd                                           ; $4cde: $fd
	cp $fd                                           ; $4cdf: $fe $fd
	rlca                                             ; $4ce1: $07
	db $fc                                           ; $4ce2: $fc
	inc bc                                           ; $4ce3: $03
	cp $01                                           ; $4ce4: $fe $01
	ld a, e                                          ; $4ce6: $7b
	xor $9a                                          ; $4ce7: $ee $9a
	and b                                            ; $4ce9: $a0
	ld e, a                                          ; $4cea: $5f
	ld d, h                                          ; $4ceb: $54
	xor e                                            ; $4cec: $ab
	add b                                            ; $4ced: $80
	sbc $ff                                          ; $4cee: $de $ff
	add b                                            ; $4cf0: $80
	cp $82                                           ; $4cf1: $fe $82
	ld a, h                                          ; $4cf3: $7c
	call nz, $35d8                                   ; $4cf4: $c4 $d8 $35
	ld l, b                                          ; $4cf7: $68
	sbc e                                            ; $4cf8: $9b
	or d                                             ; $4cf9: $b2
	adc $5b                                          ; $4cfa: $ce $5b
	rst SubAFromBC                                          ; $4cfc: $e7
	ld a, [hl-]                                      ; $4cfd: $3a
	db $fc                                           ; $4cfe: $fc
	sub [hl]                                         ; $4cff: $96
	jr z, jr_03c_4d1c                                ; $4d00: $28 $1a

	ld bc, $4111                                     ; $4d02: $01 $11 $41
	ld b, b                                          ; $4d05: $40
	sub c                                            ; $4d06: $91
	add b                                            ; $4d07: $80
	sub b                                            ; $4d08: $90
	ld [bc], a                                       ; $4d09: $02
	adc [hl]                                         ; $4d0a: $8e
	ret nz                                           ; $4d0b: $c0

	ld b, b                                          ; $4d0c: $40
	ld a, a                                          ; $4d0d: $7f
	ld h, b                                          ; $4d0e: $60
	ccf                                              ; $4d0f: $3f
	sub d                                            ; $4d10: $92
	rra                                              ; $4d11: $1f
	jr @+$11                                         ; $4d12: $18 $0f

	inc c                                            ; $4d14: $0c
	rlca                                             ; $4d15: $07
	sbc [hl]                                         ; $4d16: $9e
	rla                                              ; $4d17: $17
	db $ed                                           ; $4d18: $ed
	or e                                             ; $4d19: $b3
	rst FarCall                                          ; $4d1a: $f7
	ld a, b                                          ; $4d1b: $78

jr_03c_4d1c:
	ld e, l                                          ; $4d1c: $5d
	ld a, $57                                        ; $4d1d: $3e $57
	and b                                            ; $4d1f: $a0
	sbc e                                            ; $4d20: $9b
	jp nz, $a5fd                                     ; $4d21: $c2 $fd $a5

	ld a, d                                          ; $4d24: $7a
	ld d, a                                          ; $4d25: $57
	ldh a, [$9b]                                     ; $4d26: $f0 $9b
	xor b                                            ; $4d28: $a8
	ld d, a                                          ; $4d29: $57
	ld d, l                                          ; $4d2a: $55
	xor d                                            ; $4d2b: $aa
	ld d, a                                          ; $4d2c: $57
	ldh a, [$9d]                                     ; $4d2d: $f0 $9d
	ld a, [hl+]                                      ; $4d2f: $2a
	push de                                          ; $4d30: $d5
	ld d, a                                          ; $4d31: $57
	ldh a, [$6f]                                     ; $4d32: $f0 $6f
	add b                                            ; $4d34: $80
	add a                                            ; $4d35: $87
	ld b, b                                          ; $4d36: $40
	ret nz                                           ; $4d37: $c0

	or b                                             ; $4d38: $b0
	ldh a, [$7f]                                     ; $4d39: $f0 $7f
	rst GetHLinHL                                          ; $4d3b: $cf
	ld [hl], l                                       ; $4d3c: $75
	adc $7f                                          ; $4d3d: $ce $7f
	call nz, $c47f                                   ; $4d3f: $c4 $7f $c4
	cp l                                             ; $4d42: $bd
	ld c, [hl]                                       ; $4d43: $4e
	dec a                                            ; $4d44: $3d
	jp z, $243b                                      ; $4d45: $ca $3b $24

	ld a, a                                          ; $4d48: $7f
	ld a, a                                          ; $4d49: $7f
	ret nz                                           ; $4d4a: $c0

	rst $38                                          ; $4d4b: $ff
	ret nz                                           ; $4d4c: $c0

	ld a, a                                          ; $4d4d: $7f
	ld [hl], a                                       ; $4d4e: $77
	cp $9b                                           ; $4d4f: $fe $9b
	push de                                          ; $4d51: $d5
	ld l, d                                          ; $4d52: $6a
	ld [$7355], a                                    ; $4d53: $ea $55 $73
	inc d                                            ; $4d56: $14
	add b                                            ; $4d57: $80
	cp $0c                                           ; $4d58: $fe $0c
	ldh a, [$61]                                     ; $4d5a: $f0 $61
	add a                                            ; $4d5c: $87
	rlca                                             ; $4d5d: $07
	rra                                              ; $4d5e: $1f
	ld e, $ff                                        ; $4d5f: $1e $ff
	ei                                               ; $4d61: $fb
	rst $38                                          ; $4d62: $ff
	rrca                                             ; $4d63: $0f
	or $65                                           ; $4d64: $f6 $65
	sbc [hl]                                         ; $4d66: $9e
	add hl, de                                       ; $4d67: $19
	ccf                                              ; $4d68: $3f
	ld a, e                                          ; $4d69: $7b
	rst $38                                          ; $4d6a: $ff
	ld sp, hl                                        ; $4d6b: $f9

jr_03c_4d6c:
	cp $d9                                           ; $4d6c: $fe $d9
	cp $b9                                           ; $4d6e: $fe $b9
	cp $59                                           ; $4d70: $fe $59
	cp $5f                                           ; $4d72: $fe $5f
	ccf                                              ; $4d74: $3f
	ld [hl], a                                       ; $4d75: $77
	ld sp, hl                                        ; $4d76: $f9
	sbc l                                            ; $4d77: $9d
	db $db                                           ; $4d78: $db
	db $ed                                           ; $4d79: $ed
	halt                                             ; $4d7a: $76
	cp h                                             ; $4d7b: $bc
	adc [hl]                                         ; $4d7c: $8e
	di                                               ; $4d7d: $f3
	dec c                                            ; $4d7e: $0d
	ld sp, hl                                        ; $4d7f: $f9
	dec c                                            ; $4d80: $0d
	ld [hl], c                                       ; $4d81: $71
	dec c                                            ; $4d82: $0d
	db $fc                                           ; $4d83: $fc
	rst $38                                          ; $4d84: $ff
	inc a                                            ; $4d85: $3c
	rst $38                                          ; $4d86: $ff
	ld h, [hl]                                       ; $4d87: $66
	db $fd                                           ; $4d88: $fd
	push de                                          ; $4d89: $d5
	xor [hl]                                         ; $4d8a: $ae
	and [hl]                                         ; $4d8b: $a6
	ld e, l                                          ; $4d8c: $5d
	ld d, l                                          ; $4d8d: $55
	ld [hl], e                                       ; $4d8e: $73
	db $fc                                           ; $4d8f: $fc
	ld [hl], a                                       ; $4d90: $77
	ret nz                                           ; $4d91: $c0

	sbc e                                            ; $4d92: $9b
	jr z, jr_03c_4d6c                                ; $4d93: $28 $d7

	ld d, l                                          ; $4d95: $55
	xor d                                            ; $4d96: $aa
	ld [hl], a                                       ; $4d97: $77
	sub h                                            ; $4d98: $94
	ld [hl], a                                       ; $4d99: $77
	db $fc                                           ; $4d9a: $fc
	add b                                            ; $4d9b: $80
	inc c                                            ; $4d9c: $0c
	db $f4                                           ; $4d9d: $f4
	inc d                                            ; $4d9e: $14
	db $ec                                           ; $4d9f: $ec
	and d                                            ; $4da0: $a2
	ld e, [hl]                                       ; $4da1: $5e
	ld c, a                                          ; $4da2: $4f
	cp a                                             ; $4da3: $bf
	sub c                                            ; $4da4: $91
	ld a, e                                          ; $4da5: $7b
	ld d, e                                          ; $4da6: $53
	or e                                             ; $4da7: $b3
	or b                                             ; $4da8: $b0
	ld e, e                                          ; $4da9: $5b
	ld c, b                                          ; $4daa: $48
	adc l                                            ; $4dab: $8d
	ccf                                              ; $4dac: $3f
	ld a, $3f                                        ; $4dad: $3e $3f
	ld hl, $407f                                     ; $4daf: $21 $7f $40
	add e                                            ; $4db2: $83
	db $fc                                           ; $4db3: $fc
	rst $38                                          ; $4db4: $ff
	ld hl, sp-$23                                    ; $4db5: $f8 $dd
	inc sp                                           ; $4db7: $33
	ei                                               ; $4db8: $fb
	and [hl]                                         ; $4db9: $a6
	rst SubAFromHL                                          ; $4dba: $d7
	sub [hl]                                         ; $4dbb: $96
	db $fc                                           ; $4dbc: $fc
	ld [hl], e                                       ; $4dbd: $73
	rst AddAOntoHL                                          ; $4dbe: $ef
	ccf                                              ; $4dbf: $3f
	rst $38                                          ; $4dc0: $ff
	add b                                            ; $4dc1: $80
	rst $38                                          ; $4dc2: $ff
	add b                                            ; $4dc3: $80
	ret nc                                           ; $4dc4: $d0

	ld a, e                                          ; $4dc5: $7b
	cp $92                                           ; $4dc6: $fe $92
	ld b, b                                          ; $4dc8: $40
	add b                                            ; $4dc9: $80
	ld d, b                                          ; $4dca: $50
	ret nz                                           ; $4dcb: $c0

jr_03c_4dcc:
	ld e, a                                          ; $4dcc: $5f
	ei                                               ; $4dcd: $fb
	db $fc                                           ; $4dce: $fc
	di                                               ; $4dcf: $f3
	ld hl, sp+$03                                    ; $4dd0: $f8 $03
	ldh [$03], a                                     ; $4dd2: $e0 $03
	jr nz, jr_03c_4e41                               ; $4dd4: $20 $6b

	cp $98                                           ; $4dd6: $fe $98
	xor h                                            ; $4dd8: $ac
	xor d                                            ; $4dd9: $aa
	ld d, l                                          ; $4dda: $55
	push af                                          ; $4ddb: $f5
	ld a, [bc]                                       ; $4ddc: $0a
	db $eb                                           ; $4ddd: $eb
	inc d                                            ; $4dde: $14
	ld e, [hl]                                       ; $4ddf: $5e
	or c                                             ; $4de0: $b1
	ld [hl], a                                       ; $4de1: $77
	xor h                                            ; $4de2: $ac
	sbc l                                            ; $4de3: $9d
	xor e                                            ; $4de4: $ab
	ld d, h                                          ; $4de5: $54
	ld e, a                                          ; $4de6: $5f
	ldh a, [$99]                                     ; $4de7: $f0 $99
	ld [hl], $ff                                     ; $4de9: $36 $ff
	xor d                                            ; $4deb: $aa
	ld e, l                                          ; $4dec: $5d
	ld d, l                                          ; $4ded: $55
	xor d                                            ; $4dee: $aa
	ld [hl], a                                       ; $4def: $77
	db $ec                                           ; $4df0: $ec
	ld a, a                                          ; $4df1: $7f
	ret c                                            ; $4df2: $d8

	ld [hl], a                                       ; $4df3: $77
	ldh a, [$80]                                     ; $4df4: $f0 $80
	or b                                             ; $4df6: $b0
	ld [hl], b                                       ; $4df7: $70
	ld e, b                                          ; $4df8: $58
	xor b                                            ; $4df9: $a8
	xor h                                            ; $4dfa: $ac
	ld d, [hl]                                       ; $4dfb: $56
	ld d, [hl]                                       ; $4dfc: $56
	xor a                                            ; $4dfd: $af
	ld a, [$eb08]                                    ; $4dfe: $fa $08 $eb
	db $10                                           ; $4e01: $10
	push af                                          ; $4e02: $f5
	inc d                                            ; $4e03: $14
	push de                                          ; $4e04: $d5
	inc h                                            ; $4e05: $24
	rra                                              ; $4e06: $1f
	inc sp                                           ; $4e07: $33
	rra                                              ; $4e08: $1f
	jr nc, jr_03c_4e3a                               ; $4e09: $30 $2f

	jr nc, jr_03c_4dcc                               ; $4e0b: $30 $bf

	ret z                                            ; $4e0d: $c8

	rla                                              ; $4e0e: $17
	inc c                                            ; $4e0f: $0c
	dec hl                                           ; $4e10: $2b
	ld b, $2d                                        ; $4e11: $06 $2d
	inc bc                                           ; $4e13: $03
	scf                                              ; $4e14: $37
	sub d                                            ; $4e15: $92
	ld bc, $9d72                                     ; $4e16: $01 $72 $9d
	rst SubAFromDE                                          ; $4e19: $df
	rst AddAOntoHL                                          ; $4e1a: $ef
	xor [hl]                                         ; $4e1b: $ae
	ld [hl], c                                       ; $4e1c: $71
	ld d, a                                          ; $4e1d: $57
	cp [hl]                                          ; $4e1e: $be
	cp a                                             ; $4e1f: $bf
	ld d, l                                          ; $4e20: $55
	ld e, l                                          ; $4e21: $5d
	xor d                                            ; $4e22: $aa
	ld a, e                                          ; $4e23: $7b
	ret nc                                           ; $4e24: $d0

	sbc [hl]                                         ; $4e25: $9e
	add b                                            ; $4e26: $80
	ld [hl], e                                       ; $4e27: $73
	ld e, b                                          ; $4e28: $58
	ld a, [hl]                                       ; $4e29: $7e
	ret c                                            ; $4e2a: $d8

	rst SubAFromDE                                          ; $4e2b: $df
	ld [$559a], a                                    ; $4e2c: $ea $9a $55
	ld [hl], l                                       ; $4e2f: $75
	adc d                                            ; $4e30: $8a
	ei                                               ; $4e31: $fb
	inc b                                            ; $4e32: $04
	ld l, a                                          ; $4e33: $6f
	and b                                            ; $4e34: $a0
	ld [hl], a                                       ; $4e35: $77
	db $fc                                           ; $4e36: $fc
	sbc l                                            ; $4e37: $9d
	cp a                                             ; $4e38: $bf
	ld b, b                                          ; $4e39: $40

jr_03c_4e3a:
	ld h, a                                          ; $4e3a: $67
	sub b                                            ; $4e3b: $90
	ld a, [hl]                                       ; $4e3c: $7e
	ld e, h                                          ; $4e3d: $5c
	ld [hl], a                                       ; $4e3e: $77
	ldh a, [$79]                                     ; $4e3f: $f0 $79

jr_03c_4e41:
	rst $38                                          ; $4e41: $ff
	ld [hl], e                                       ; $4e42: $73
	cp $95                                           ; $4e43: $fe $95
	cp a                                             ; $4e45: $bf
	sub d                                            ; $4e46: $92
	sub [hl]                                         ; $4e47: $96
	cp d                                             ; $4e48: $ba
	adc e                                            ; $4e49: $8b
	or l                                             ; $4e4a: $b5
	ld a, l                                          ; $4e4b: $7d
	and e                                            ; $4e4c: $a3
	rst $38                                          ; $4e4d: $ff
	ld hl, $fe7b                                     ; $4e4e: $21 $7b $fe
	sbc h                                            ; $4e51: $9c
	ld h, b                                          ; $4e52: $60
	rst $38                                          ; $4e53: $ff
	ld b, b                                          ; $4e54: $40
	halt                                             ; $4e55: $76
	call z, $9597                                    ; $4e56: $cc $97 $95
	ld l, d                                          ; $4e59: $6a
	ld e, d                                          ; $4e5a: $5a
	dec h                                            ; $4e5b: $25
	ld a, a                                          ; $4e5c: $7f
	and b                                            ; $4e5d: $a0
	rst $38                                          ; $4e5e: $ff
	jr nz, jr_03c_4edc                               ; $4e5f: $20 $7b

	cp $89                                           ; $4e61: $fe $89
	and b                                            ; $4e63: $a0
	db $e4                                           ; $4e64: $e4
	rst $38                                          ; $4e65: $ff
	ld c, c                                          ; $4e66: $49
	rst $38                                          ; $4e67: $ff
	sub d                                            ; $4e68: $92
	rst $38                                          ; $4e69: $ff
	dec b                                            ; $4e6a: $05
	rst $38                                          ; $4e6b: $ff
	ld [$90ff], sp                                   ; $4e6c: $08 $ff $90
	ld a, a                                          ; $4e6f: $7f
	ld b, b                                          ; $4e70: $40
	cp a                                             ; $4e71: $bf
	add c                                            ; $4e72: $81
	ld a, a                                          ; $4e73: $7f
	cp e                                             ; $4e74: $bb
	cp $5f                                           ; $4e75: $fe $5f
	cp $bf                                           ; $4e77: $fe $bf
	ld l, e                                          ; $4e79: $6b
	db $fc                                           ; $4e7a: $fc
	ld a, a                                          ; $4e7b: $7f
	db $f4                                           ; $4e7c: $f4
	ld a, [hl]                                       ; $4e7d: $7e
	ret nz                                           ; $4e7e: $c0

	sbc [hl]                                         ; $4e7f: $9e
	ld a, c                                          ; $4e80: $79
	ld a, d                                          ; $4e81: $7a
	call z, $fc77                                    ; $4e82: $cc $77 $fc
	add a                                            ; $4e85: $87
	ld h, c                                          ; $4e86: $61
	dec c                                            ; $4e87: $0d
	ld e, a                                          ; $4e88: $5f
	rrca                                             ; $4e89: $0f
	add hl, sp                                       ; $4e8a: $39
	rra                                              ; $4e8b: $1f
	ld [hl], a                                       ; $4e8c: $77
	add hl, sp                                       ; $4e8d: $39
	ld h, a                                          ; $4e8e: $67
	adc h                                            ; $4e8f: $8c
	ld h, a                                          ; $4e90: $67
	adc h                                            ; $4e91: $8c
	ld [hl], h                                       ; $4e92: $74
	adc a                                            ; $4e93: $8f
	halt                                             ; $4e94: $76
	adc a                                            ; $4e95: $8f
	dec b                                            ; $4e96: $05
	rst $38                                          ; $4e97: $ff
	cp $ff                                           ; $4e98: $fe $ff
	dec a                                            ; $4e9a: $3d
	rst $38                                          ; $4e9b: $ff
	ld a, e                                          ; $4e9c: $7b
	cp $77                                           ; $4e9d: $fe $77
	adc h                                            ; $4e9f: $8c
	ld a, a                                          ; $4ea0: $7f
	db $fd                                           ; $4ea1: $fd
	adc [hl]                                         ; $4ea2: $8e
	xor c                                            ; $4ea3: $a9
	cp $53                                           ; $4ea4: $fe $53

jr_03c_4ea6:
	db $fc                                           ; $4ea6: $fc
	and a                                            ; $4ea7: $a7
	ld hl, sp+$47                                    ; $4ea8: $f8 $47
	ld hl, sp-$73                                    ; $4eaa: $f8 $8d
	ldh a, [$1f]                                     ; $4eac: $f0 $1f
	rst SubAFromDE                                          ; $4eae: $df
	db $f4                                           ; $4eaf: $f4
	dec bc                                           ; $4eb0: $0b
	db $fc                                           ; $4eb1: $fc
	inc bc                                           ; $4eb2: $03
	db $fd                                           ; $4eb3: $fd
	ld l, l                                          ; $4eb4: $6d
	rst GetHLinHL                                          ; $4eb5: $cf
	ld a, e                                          ; $4eb6: $7b
	cp $95                                           ; $4eb7: $fe $95
	ret c                                            ; $4eb9: $d8

	adc a                                            ; $4eba: $8f
	adc [hl]                                         ; $4ebb: $8e
	rst JumpTable                                          ; $4ebc: $c7
	ld b, e                                          ; $4ebd: $43
	pop hl                                           ; $4ebe: $e1
	rst SubAFromBC                                          ; $4ebf: $e7
	rst $38                                          ; $4ec0: $ff
	db $10                                           ; $4ec1: $10
	rst AddAOntoHL                                          ; $4ec2: $ef
	ld [hl], a                                       ; $4ec3: $77
	ldh a, [c]                                       ; $4ec4: $f2
	sub e                                            ; $4ec5: $93
	push af                                          ; $4ec6: $f5
	nop                                              ; $4ec7: $00
	ld a, a                                          ; $4ec8: $7f
	rst SubAFromDE                                          ; $4ec9: $df
	rst $38                                          ; $4eca: $ff
	ccf                                              ; $4ecb: $3f
	rst $38                                          ; $4ecc: $ff
	rst $38                                          ; $4ecd: $ff
	ld hl, sp-$01                                    ; $4ece: $f8 $ff
	rlca                                             ; $4ed0: $07
	ld hl, sp+$6f                                    ; $4ed1: $f8 $6f
	ldh [$97], a                                     ; $4ed3: $e0 $97
	di                                               ; $4ed5: $f3
	db $fc                                           ; $4ed6: $fc
	rst GetHLinHL                                          ; $4ed7: $cf
	ldh a, [$bf]                                     ; $4ed8: $f0 $bf
	ret nz                                           ; $4eda: $c0

	ld a, a                                          ; $4edb: $7f

jr_03c_4edc:
	add b                                            ; $4edc: $80
	ld [hl], a                                       ; $4edd: $77
	db $f4                                           ; $4ede: $f4
	sbc h                                            ; $4edf: $9c
	ld [$d500], a                                    ; $4ee0: $ea $00 $d5
	ld e, c                                          ; $4ee3: $59
	ld [hl], a                                       ; $4ee4: $77
	sbc d                                            ; $4ee5: $9a
	ld a, a                                          ; $4ee6: $7f
	nop                                              ; $4ee7: $00
	xor e                                            ; $4ee8: $ab
	nop                                              ; $4ee9: $00
	ld d, a                                          ; $4eea: $57
	ld e, e                                          ; $4eeb: $5b
	ldh a, [$9c]                                     ; $4eec: $f0 $9c
	ld e, a                                          ; $4eee: $5f
	nop                                              ; $4eef: $00
	xor [hl]                                         ; $4ef0: $ae
	ld d, e                                          ; $4ef1: $53
	ldh a, [$7f]                                     ; $4ef2: $f0 $7f
	cp $7f                                           ; $4ef4: $fe $7f
	ldh [$7e], a                                     ; $4ef6: $e0 $7e
	ld bc, $ed80                                     ; $4ef8: $01 $80 $ed
	jr z, jr_03c_4ea6                                ; $4efb: $28 $a9

	ld c, b                                          ; $4efd: $48
	ret c                                            ; $4efe: $d8

	ld d, c                                          ; $4eff: $51
	db $fc                                           ; $4f00: $fc

Jump_03c_4f01:
	add hl, sp                                       ; $4f01: $39
	rst AddAOntoHL                                          ; $4f02: $ef
	rra                                              ; $4f03: $1f
	db $fc                                           ; $4f04: $fc
	inc de                                           ; $4f05: $13
	xor $11                                          ; $4f06: $ee $11
	sub $21                                          ; $4f08: $d6 $21
	inc d                                            ; $4f0a: $14
	ld bc, $1105                                     ; $4f0b: $01 $05 $11
	rrca                                             ; $4f0e: $0f
	ld e, $f7                                        ; $4f0f: $1e $f7
	jr c, @-$2f                                      ; $4f11: $38 $cf

	ldh a, [$5f]                                     ; $4f13: $f0 $5f
	ldh a, [$bf]                                     ; $4f15: $f0 $bf
	ldh [hDisp1_LCDC], a                                     ; $4f17: $e0 $8f
	sbc [hl]                                         ; $4f19: $9e
	ldh [$7a], a                                     ; $4f1a: $e0 $7a
	ld d, e                                          ; $4f1c: $53
	ld l, e                                          ; $4f1d: $6b
	jp nc, $a47f                                     ; $4f1e: $d2 $7f $a4

	ld a, l                                          ; $4f21: $7d
	and e                                            ; $4f22: $a3
	ld [hl], c                                       ; $4f23: $71
	pop de                                           ; $4f24: $d1
	ld a, e                                          ; $4f25: $7b
	cp $9c                                           ; $4f26: $fe $9c
	db $fd                                           ; $4f28: $fd
	nop                                              ; $4f29: $00
	cp a                                             ; $4f2a: $bf
	ld a, e                                          ; $4f2b: $7b
	db $f4                                           ; $4f2c: $f4
	ld e, a                                          ; $4f2d: $5f
	ldh a, [$7f]                                     ; $4f2e: $f0 $7f
	cp $9c                                           ; $4f30: $fe $9c
	ld a, [$7500]                                    ; $4f32: $fa $00 $75
	ld [hl], e                                       ; $4f35: $73
	ldh a, [$8d]                                     ; $4f36: $f0 $8d
	xor [hl]                                         ; $4f38: $ae
	ld bc, $02d7                                     ; $4f39: $01 $d7 $02
	xor a                                            ; $4f3c: $af
	inc bc                                           ; $4f3d: $03
	ld e, h                                          ; $4f3e: $5c
	inc b                                            ; $4f3f: $04
	cp c                                             ; $4f40: $b9
	add hl, bc                                       ; $4f41: $09
	ld d, e                                          ; $4f42: $53
	inc de                                           ; $4f43: $13
	cp a                                             ; $4f44: $bf
	rra                                              ; $4f45: $1f
	ld e, b                                          ; $4f46: $58
	rlca                                             ; $4f47: $07
	cp a                                             ; $4f48: $bf
	ld b, b                                          ; $4f49: $40
	ld a, e                                          ; $4f4a: $7b
	ld h, h                                          ; $4f4b: $64
	ld a, e                                          ; $4f4c: $7b
	cp $9c                                           ; $4f4d: $fe $9c
	adc a                                            ; $4f4f: $8f
	rst $38                                          ; $4f50: $ff
	cp a                                             ; $4f51: $bf
	ld [hl], h                                       ; $4f52: $74
	db $e4                                           ; $4f53: $e4
	ld a, b                                          ; $4f54: $78
	ei                                               ; $4f55: $fb
	add b                                            ; $4f56: $80
	rra                                              ; $4f57: $1f
	ldh [$5f], a                                     ; $4f58: $e0 $5f
	and b                                            ; $4f5a: $a0
	cp a                                             ; $4f5b: $bf
	ldh a, [hDisp0_WX]                                     ; $4f5c: $f0 $89
	adc [hl]                                         ; $4f5e: $8e
	rst JumpTable                                          ; $4f5f: $c7
	rst JumpTable                                          ; $4f60: $c7
	ld l, a                                          ; $4f61: $6f
	rst AddAOntoHL                                          ; $4f62: $ef
	add b                                            ; $4f63: $80
	ld a, a                                          ; $4f64: $7f
	ld d, d                                          ; $4f65: $52
	xor a                                            ; $4f66: $af
	xor h                                            ; $4f67: $ac
	ld d, a                                          ; $4f68: $57
	push af                                          ; $4f69: $f5
	ld a, [bc]                                       ; $4f6a: $0a
	ld [$dd15], a                                    ; $4f6b: $ea $15 $dd
	ld [hl+], a                                      ; $4f6e: $22
	or e                                             ; $4f6f: $b3
	ld c, l                                          ; $4f70: $4d
	ld h, [hl]                                       ; $4f71: $66
	sbc e                                            ; $4f72: $9b
	call $3f36                                       ; $4f73: $cd $36 $3f
	adc l                                            ; $4f76: $8d
	ld hl, sp+$3f                                    ; $4f77: $f8 $3f
	ld sp, hl                                        ; $4f79: $f9
	rra                                              ; $4f7a: $1f
	ei                                               ; $4f7b: $fb
	sbc a                                            ; $4f7c: $9f
	ld a, b                                          ; $4f7d: $78
	dec d                                            ; $4f7e: $15
	ld hl, sp+$1a                                    ; $4f7f: $f8 $1a
	ld hl, sp+$75                                    ; $4f81: $f8 $75
	cp b                                             ; $4f83: $b8
	ld a, [$d359]                                    ; $4f84: $fa $59 $d3
	pop hl                                           ; $4f87: $e1
	add c                                            ; $4f88: $81
	ld [hl], h                                       ; $4f89: $74
	adc $91                                          ; $4f8a: $ce $91
	ld bc, $005f                                     ; $4f8c: $01 $5f $00
	cp d                                             ; $4f8f: $ba
	rlca                                             ; $4f90: $07
	ld [hl], l                                       ; $4f91: $75
	rra                                              ; $4f92: $1f
	xor e                                            ; $4f93: $ab
	cp $f5                                           ; $4f94: $fe $f5
	ld a, a                                          ; $4f96: $7f
	xor $bf                                          ; $4f97: $ee $bf
	db $fc                                           ; $4f99: $fc
	ld a, c                                          ; $4f9a: $79
	ld c, [hl]                                       ; $4f9b: $4e
	sbc [hl]                                         ; $4f9c: $9e
	cp $7b                                           ; $4f9d: $fe $7b
	ld [hl], b                                       ; $4f9f: $70
	ld a, a                                          ; $4fa0: $7f
	db $10                                           ; $4fa1: $10
	ld a, [hl]                                       ; $4fa2: $7e
	ldh a, [$9b]                                     ; $4fa3: $f0 $9b
	dec sp                                           ; $4fa5: $3b
	ret nz                                           ; $4fa6: $c0

	ld [hl], a                                       ; $4fa7: $77
	add b                                            ; $4fa8: $80
	ld [hl], a                                       ; $4fa9: $77
	ld [$8477], sp                                   ; $4faa: $08 $77 $84
	ld a, a                                          ; $4fad: $7f
	db $fc                                           ; $4fae: $fc
	sbc [hl]                                         ; $4faf: $9e
	ld h, l                                          ; $4fb0: $65
	ld [hl], d                                       ; $4fb1: $72
	call c, $f07f                                    ; $4fb2: $dc $7f $f0
	ld l, a                                          ; $4fb5: $6f
	ld h, h                                          ; $4fb6: $64
	ld [hl], a                                       ; $4fb7: $77
	db $fc                                           ; $4fb8: $fc
	ld [hl], a                                       ; $4fb9: $77
	inc e                                            ; $4fba: $1c
	ld [hl], a                                       ; $4fbb: $77
	db $fc                                           ; $4fbc: $fc
	ld h, a                                          ; $4fbd: $67
	ldh a, [$7f]                                     ; $4fbe: $f0 $7f
	db $fc                                           ; $4fc0: $fc
	ld h, a                                          ; $4fc1: $67
	call nc, $fc03                                   ; $4fc2: $d4 $03 $fc
	inc bc                                           ; $4fc5: $03
	db $fc                                           ; $4fc6: $fc
	ld [hl], a                                       ; $4fc7: $77
	db $fc                                           ; $4fc8: $fc
	add b                                            ; $4fc9: $80
	db $fd                                           ; $4fca: $fd
	inc hl                                           ; $4fcb: $23
	ld e, l                                          ; $4fcc: $5d
	inc hl                                           ; $4fcd: $23

jr_03c_4fce:
	xor a                                            ; $4fce: $af
	ld [hl+], a                                      ; $4fcf: $22
	dec hl                                           ; $4fd0: $2b
	ld b, [hl]                                       ; $4fd1: $46
	rst GetHLinHL                                          ; $4fd2: $cf
	ld b, h                                          ; $4fd3: $44
	rra                                              ; $4fd4: $1f
	ld b, h                                          ; $4fd5: $44
	db $fd                                           ; $4fd6: $fd
	ld b, [hl]                                       ; $4fd7: $46
	ld [hl], a                                       ; $4fd8: $77
	ld c, [hl]                                       ; $4fd9: $4e
	ld c, d                                          ; $4fda: $4a
	ret nz                                           ; $4fdb: $c0

	dec d                                            ; $4fdc: $15
	ret nz                                           ; $4fdd: $c0

	xor d                                            ; $4fde: $aa
	add b                                            ; $4fdf: $80
	dec d                                            ; $4fe0: $15

jr_03c_4fe1:
	ret nz                                           ; $4fe1: $c0

	ld [$c540], a                                    ; $4fe2: $ea $40 $c5
	jr nz, jr_03c_4fe1                               ; $4fe5: $20 $fa

	jr nz, jr_03c_4fce                               ; $4fe7: $20 $e5

	sbc [hl]                                         ; $4fe9: $9e
	db $10                                           ; $4fea: $10
	inc bc                                           ; $4feb: $03
	cp h                                             ; $4fec: $bc
	inc bc                                           ; $4fed: $03
	db $fc                                           ; $4fee: $fc
	ccf                                              ; $4fef: $3f
	db $fc                                           ; $4ff0: $fc
	sbc [hl]                                         ; $4ff1: $9e
	xor a                                            ; $4ff2: $af
	ld a, d                                          ; $4ff3: $7a
	jr c, jr_03c_506c                                ; $4ff4: $38 $76

	inc h                                            ; $4ff6: $24
	ld [hl], a                                       ; $4ff7: $77
	db $fc                                           ; $4ff8: $fc
	add b                                            ; $4ff9: $80
	sbc e                                            ; $4ffa: $9b
	ld l, h                                          ; $4ffb: $6c
	ld [hl], a                                       ; $4ffc: $77
	adc e                                            ; $4ffd: $8b
	adc $37                                          ; $4ffe: $ce $37
	ld a, h                                          ; $5000: $7c
	adc a                                            ; $5001: $8f
	ldh a, [rAUD3HIGH]                               ; $5002: $f0 $1e
	ldh [$3f], a                                     ; $5004: $e0 $3f
	jp $c67f                                         ; $5006: $c3 $7f $c6


	ccf                                              ; $5009: $3f
	rst SubAFromHL                                          ; $500a: $d7
	cp c                                             ; $500b: $b9
	or [hl]                                          ; $500c: $b6
	ld e, a                                          ; $500d: $5f
	rst $38                                          ; $500e: $ff
	rra                                              ; $500f: $1f
	nop                                              ; $5010: $00
	ld a, a                                          ; $5011: $7f
	ld l, d                                          ; $5012: $6a
	rst $38                                          ; $5013: $ff
	xor e                                            ; $5014: $ab
	call nc, $a857                                   ; $5015: $d4 $57 $a8
	xor a                                            ; $5018: $af
	sub a                                            ; $5019: $97
	ld d, b                                          ; $501a: $50
	ld d, a                                          ; $501b: $57
	db $fc                                           ; $501c: $fc
	xor a                                            ; $501d: $af
	ld hl, sp+$5f                                    ; $501e: $f8 $5f
	ldh a, [rLCDC]                                   ; $5020: $f0 $40
	ld a, b                                          ; $5022: $78
	sub e                                            ; $5023: $93
	ld d, [hl]                                       ; $5024: $56
	ld b, $fd                                        ; $5025: $06 $fd
	ld [hl], a                                       ; $5027: $77
	ld hl, sp+$7e                                    ; $5028: $f8 $7e
	cp d                                             ; $502a: $ba
	ld a, [hl]                                       ; $502b: $7e
	ld c, b                                          ; $502c: $48
	ld a, [hl]                                       ; $502d: $7e
	ret nc                                           ; $502e: $d0

	ld e, a                                          ; $502f: $5f
	ldh a, [$66]                                     ; $5030: $f0 $66
	inc l                                            ; $5032: $2c
	db $fd                                           ; $5033: $fd
	ld e, [hl]                                       ; $5034: $5e
	ret c                                            ; $5035: $d8

	ld a, a                                          ; $5036: $7f
	call c, Call_03c_57fd                            ; $5037: $dc $fd $57
	ld a, h                                          ; $503a: $7c
	ld c, a                                          ; $503b: $4f
	ldh a, [$7f]                                     ; $503c: $f0 $7f
	ld a, b                                          ; $503e: $78
	db $fd                                           ; $503f: $fd
	ld a, l                                          ; $5040: $7d
	sub b                                            ; $5041: $90
	ld a, a                                          ; $5042: $7f
	ld l, b                                          ; $5043: $68
	ld d, a                                          ; $5044: $57
	ret nz                                           ; $5045: $c0

	ld b, a                                          ; $5046: $47
	or b                                             ; $5047: $b0
	ld e, a                                          ; $5048: $5f
	ldh a, [$6f]                                     ; $5049: $f0 $6f
	ret nz                                           ; $504b: $c0

	ld a, a                                          ; $504c: $7f
	adc b                                            ; $504d: $88
	ld [hl], a                                       ; $504e: $77
	db $f4                                           ; $504f: $f4
	add b                                            ; $5050: $80
	push af                                          ; $5051: $f5
	ld c, a                                          ; $5052: $4f
	ld [hl-], a                                      ; $5053: $32
	ld c, l                                          ; $5054: $4d
	ei                                               ; $5055: $fb
	ld c, h                                          ; $5056: $4c
	cp b                                             ; $5057: $b8
	ld c, b                                          ; $5058: $48
	add sp, $58                                      ; $5059: $e8 $58
	rst JumpTable                                          ; $505b: $c7
	ld e, b                                          ; $505c: $58
	ld c, a                                          ; $505d: $4f
	ret nc                                           ; $505e: $d0

	rra                                              ; $505f: $1f

jr_03c_5060:
	ret nc                                           ; $5060: $d0

	ld a, [$e510]                                    ; $5061: $fa $10 $e5
	sbc b                                            ; $5064: $98
	ld a, d                                          ; $5065: $7a
	adc b                                            ; $5066: $88
	ld [hl], h                                       ; $5067: $74
	ld c, h                                          ; $5068: $4c
	inc [hl]                                         ; $5069: $34
	inc l                                            ; $506a: $2c
	rst SubAFromBC                                          ; $506b: $e7

jr_03c_506c:
	ld b, $f1                                        ; $506c: $06 $f1
	rla                                              ; $506e: $17
	cp $9e                                           ; $506f: $fe $9e
	add hl, bc                                       ; $5071: $09
	ld e, a                                          ; $5072: $5f
	ret nc                                           ; $5073: $d0

	ld [hl], l                                       ; $5074: $75
	sbc h                                            ; $5075: $9c
	ld l, a                                          ; $5076: $6f
	call z, $8047                                    ; $5077: $cc $47 $80
	ld l, a                                          ; $507a: $6f
	ldh a, [$7d]                                     ; $507b: $f0 $7d
	sbc $4f                                          ; $507d: $de $4f
	ldh a, [$78]                                     ; $507f: $f0 $78
	inc [hl]                                         ; $5081: $34
	ld c, e                                          ; $5082: $4b
	add b                                            ; $5083: $80
	ld e, l                                          ; $5084: $5d
	ld d, b                                          ; $5085: $50
	ld h, a                                          ; $5086: $67
	ld [hl], b                                       ; $5087: $70
	ld [hl], h                                       ; $5088: $74
	add h                                            ; $5089: $84
	ld a, a                                          ; $508a: $7f
	cp $9e                                           ; $508b: $fe $9e
	ld a, [$f573]                                    ; $508d: $fa $73 $f5
	ld a, l                                          ; $5090: $7d
	xor h                                            ; $5091: $ac
	sub e                                            ; $5092: $93
	ld [bc], a                                       ; $5093: $02
	db $fc                                           ; $5094: $fc
	dec b                                            ; $5095: $05
	ld hl, sp+$03                                    ; $5096: $f8 $03
	db $fc                                           ; $5098: $fc
	nop                                              ; $5099: $00
	ldh a, [$a7]                                     ; $509a: $f0 $a7
	ld hl, sp+$00                                    ; $509c: $f8 $00
	rst $38                                          ; $509e: $ff
	ld [hl], l                                       ; $509f: $75
	cp h                                             ; $50a0: $bc
	ld a, [hl]                                       ; $50a1: $7e
	ldh [c], a                                       ; $50a2: $e2
	ld a, l                                          ; $50a3: $7d
	jr jr_03c_511d                                   ; $50a4: $18 $77

	call nc, $fc7f                                   ; $50a6: $d4 $7f $fc
	sbc l                                            ; $50a9: $9d
	ccf                                              ; $50aa: $3f
	ret nz                                           ; $50ab: $c0

	ld [hl], a                                       ; $50ac: $77
	call nz, $9875                                   ; $50ad: $c4 $75 $98
	ld a, a                                          ; $50b0: $7f
	db $ec                                           ; $50b1: $ec
	rst $38                                          ; $50b2: $ff
	sbc [hl]                                         ; $50b3: $9e
	ret nz                                           ; $50b4: $c0

	ld e, e                                          ; $50b5: $5b
	and h                                            ; $50b6: $a4
	ld b, a                                          ; $50b7: $47
	sub h                                            ; $50b8: $94
	inc bc                                           ; $50b9: $03
	ldh a, [$03]                                     ; $50ba: $f0 $03
	ldh a, [$03]                                     ; $50bc: $f0 $03
	ldh a, [$7c]                                     ; $50be: $f0 $7c
	ld e, [hl]                                       ; $50c0: $5e
	sbc b                                            ; $50c1: $98
	ld b, $f8                                        ; $50c2: $06 $f8
	ld [$08a4], sp                                   ; $50c4: $08 $a4 $08
	ld d, a                                          ; $50c7: $57
	rlca                                             ; $50c8: $07
	ld [hl], l                                       ; $50c9: $75
	jr z, jr_03c_5060                                ; $50ca: $28 $94

	ld e, a                                          ; $50cc: $5f
	ret nc                                           ; $50cd: $d0

	ldh a, [rSVBK]                                   ; $50ce: $f0 $70
	jr nc, @+$21                                     ; $50d0: $30 $1f

	ld a, a                                          ; $50d2: $7f
	rra                                              ; $50d3: $1f
	rst $38                                          ; $50d4: $ff
	ld a, a                                          ; $50d5: $7f
	rst $38                                          ; $50d6: $ff
	ld a, e                                          ; $50d7: $7b
	ld a, $90                                        ; $50d8: $3e $90
	ld b, l                                          ; $50da: $45
	nop                                              ; $50db: $00
	db $eb                                           ; $50dc: $eb
	add hl, de                                       ; $50dd: $19
	inc de                                           ; $50de: $13
	inc sp                                           ; $50df: $33
	ld h, $e3                                        ; $50e0: $26 $e3
	cp $e7                                           ; $50e2: $fe $e7
	ei                                               ; $50e4: $fb
	db $fc                                           ; $50e5: $fc
	dec e                                            ; $50e6: $1d
	ldh [$fa], a                                     ; $50e7: $e0 $fa
	ld e, e                                          ; $50e9: $5b
	ret nz                                           ; $50ea: $c0

	ld c, [hl]                                       ; $50eb: $4e
	add h                                            ; $50ec: $84
	inc bc                                           ; $50ed: $03
	sub b                                            ; $50ee: $90
	inc bc                                           ; $50ef: $03
	ldh a, [$67]                                     ; $50f0: $f0 $67
	ldh a, [rAUD3LEVEL]                              ; $50f2: $f0 $1c
	nop                                              ; $50f4: $00
	sbc $77                                          ; $50f5: $de $77
	sbc e                                            ; $50f7: $9b
	ld d, a                                          ; $50f8: $57
	ld [hl], a                                       ; $50f9: $77
	ld [hl], a                                       ; $50fa: $77
	ld h, a                                          ; $50fb: $67
	db $db                                           ; $50fc: $db
	ld [hl], a                                       ; $50fd: $77
	sbc e                                            ; $50fe: $9b
	ld d, e                                          ; $50ff: $53
	scf                                              ; $5100: $37
	ld [hl], a                                       ; $5101: $77
	halt                                             ; $5102: $76
	ret c                                            ; $5103: $d8

	ld [hl], a                                       ; $5104: $77
	sbc [hl]                                         ; $5105: $9e
	ld h, [hl]                                       ; $5106: $66
	ld [hl], e                                       ; $5107: $73
	db $fd                                           ; $5108: $fd
	ld l, e                                          ; $5109: $6b
	or $5f                                           ; $510a: $f6 $5f
	db $ec                                           ; $510c: $ec
	sub $77                                          ; $510d: $d6 $77
	jp nz, $f982                                     ; $510f: $c2 $82 $f9

	sbc l                                            ; $5112: $9d
	xor d                                            ; $5113: $aa
	ld d, l                                          ; $5114: $55
	ld [hl], e                                       ; $5115: $73
	cp $9e                                           ; $5116: $fe $9e
	ld e, l                                          ; $5118: $5d
	reti                                             ; $5119: $d9


	rrca                                             ; $511a: $0f
	sbc e                                            ; $511b: $9b
	db $fc                                           ; $511c: $fc

jr_03c_511d:
	ld a, h                                          ; $511d: $7c
	xor h                                            ; $511e: $ac
	ld e, h                                          ; $511f: $5c
	ld [hl], a                                       ; $5120: $77
	cp $f9                                           ; $5121: $fe $f9
	sub a                                            ; $5123: $97
	rst $38                                          ; $5124: $ff
	ld a, l                                          ; $5125: $7d
	rst $38                                          ; $5126: $ff
	ld a, l                                          ; $5127: $7d
	cp e                                             ; $5128: $bb
	ld d, l                                          ; $5129: $55
	xor e                                            ; $512a: $ab
	ld d, l                                          ; $512b: $55
	db $db                                           ; $512c: $db
	and b                                            ; $512d: $a0
	sbc l                                            ; $512e: $9d
	add b                                            ; $512f: $80
	rst $38                                          ; $5130: $ff
	db $db                                           ; $5131: $db
	ret nz                                           ; $5132: $c0

	rst SubAFromDE                                          ; $5133: $df
	rst $38                                          ; $5134: $ff
	db $db                                           ; $5135: $db
	ld [bc], a                                       ; $5136: $02
	ld a, a                                          ; $5137: $7f
	pop hl                                           ; $5138: $e1
	db $db                                           ; $5139: $db
	ld bc, $ffdf                                     ; $513a: $01 $df $ff
	call c, $9ea0                                    ; $513d: $dc $a0 $9e
	or l                                             ; $5140: $b5
	ld e, a                                          ; $5141: $5f
	ldh [$97], a                                     ; $5142: $e0 $97
	dec c                                            ; $5144: $0d
	dec b                                            ; $5145: $05
	dec c                                            ; $5146: $0d
	dec d                                            ; $5147: $15
	xor l                                            ; $5148: $ad
	ld d, l                                          ; $5149: $55
	ld bc, $dbff                                     ; $514a: $01 $ff $db
	inc bc                                           ; $514d: $03
	rst SubAFromDE                                          ; $514e: $df
	rst $38                                          ; $514f: $ff
	sub a                                            ; $5150: $97
	ld h, b                                          ; $5151: $60
	ld b, b                                          ; $5152: $40
	ld h, b                                          ; $5153: $60
	ld d, h                                          ; $5154: $54
	ld l, d                                          ; $5155: $6a
	ld d, l                                          ; $5156: $55
	nop                                              ; $5157: $00
	rst $38                                          ; $5158: $ff
	db $db                                           ; $5159: $db
	add b                                            ; $515a: $80
	rst SubAFromDE                                          ; $515b: $df
	rst $38                                          ; $515c: $ff
	call c, $9e05                                    ; $515d: $dc $05 $9e
	ld b, l                                          ; $5160: $45
	ld e, a                                          ; $5161: $5f
	ldh [$dd], a                                     ; $5162: $e0 $dd
	add b                                            ; $5164: $80
	sub e                                            ; $5165: $93
	add h                                            ; $5166: $84
	adc d                                            ; $5167: $8a
	di                                               ; $5168: $f3
	ld a, [bc]                                       ; $5169: $0a
	nop                                              ; $516a: $00
	nop                                              ; $516b: $00
	inc c                                            ; $516c: $0c
	ld e, $1e                                        ; $516d: $1e $1e
	ld a, [de]                                       ; $516f: $1a
	ld [bc], a                                       ; $5170: $02
	rst $38                                          ; $5171: $ff
	sbc $0b                                          ; $5172: $de $0b
	sbc d                                            ; $5174: $9a
	add hl, bc                                       ; $5175: $09
	ld a, [bc]                                       ; $5176: $0a

jr_03c_5177:
	add hl, bc                                       ; $5177: $09
	ld a, [$de01]                                    ; $5178: $fa $01 $de
	rlca                                             ; $517b: $07
	sbc b                                            ; $517c: $98
	dec b                                            ; $517d: $05
	ld b, $05                                        ; $517e: $06 $05
	ld b, $fd                                        ; $5180: $06 $fd
	inc bc                                           ; $5182: $03
	ld [bc], a                                       ; $5183: $02
	ld [hl], e                                       ; $5184: $73
	cp $8e                                           ; $5185: $fe $8e
	inc bc                                           ; $5187: $03
	db $fd                                           ; $5188: $fd
	db $fd                                           ; $5189: $fd
	ld sp, hl                                        ; $518a: $f9
	db $fd                                           ; $518b: $fd
	ld sp, hl                                        ; $518c: $f9
	push af                                          ; $518d: $f5
	ld sp, hl                                        ; $518e: $f9
	ld [hl], l                                       ; $518f: $75
	ld d, b                                          ; $5190: $50
	jr z, @+$52                                      ; $5191: $28 $50

	ld a, [hl+]                                      ; $5193: $2a
	ld d, l                                          ; $5194: $55
	ld a, [hl+]                                      ; $5195: $2a
	db $10                                           ; $5196: $10
	jr z, jr_03c_5177                                ; $5197: $28 $de

	rst $38                                          ; $5199: $ff
	add d                                            ; $519a: $82
	ld a, a                                          ; $519b: $7f
	rst $38                                          ; $519c: $ff
	ld a, a                                          ; $519d: $7f
	cp a                                             ; $519e: $bf
	rst $38                                          ; $519f: $ff
	inc b                                            ; $51a0: $04
	inc b                                            ; $51a1: $04
	inc c                                            ; $51a2: $0c
	cp l                                             ; $51a3: $bd
	ld c, a                                          ; $51a4: $4f
	xor h                                            ; $51a5: $ac
	inc b                                            ; $51a6: $04
	inc b                                            ; $51a7: $04
	ld a, [$f8f8]                                    ; $51a8: $fa $f8 $f8
	ld sp, hl                                        ; $51ab: $f9
	ld sp, hl                                        ; $51ac: $f9
	ei                                               ; $51ad: $fb
	ei                                               ; $51ae: $fb
	ld sp, hl                                        ; $51af: $f9
	nop                                              ; $51b0: $00
	ld a, $38                                        ; $51b1: $3e $38
	nop                                              ; $51b3: $00
	nop                                              ; $51b4: $00
	ld c, c                                          ; $51b5: $49
	ld a, b                                          ; $51b6: $78
	ld a, c                                          ; $51b7: $79
	reti                                             ; $51b8: $d9


	rst $38                                          ; $51b9: $ff
	ld a, a                                          ; $51ba: $7f
	db $db                                           ; $51bb: $db
	sbc c                                            ; $51bc: $99
	ld h, e                                          ; $51bd: $63
	jp hl                                            ; $51be: $e9


	ld h, c                                          ; $51bf: $61
	db $e3                                           ; $51c0: $e3
	ld c, e                                          ; $51c1: $4b
	and c                                            ; $51c2: $a1
	ld a, e                                          ; $51c3: $7b
	db $d3                                           ; $51c4: $d3
	sub d                                            ; $51c5: $92
	rst AddAOntoHL                                          ; $51c6: $ef
	ld h, a                                          ; $51c7: $67
	rst FarCall                                          ; $51c8: $f7
	ld e, a                                          ; $51c9: $5f
	cp c                                             ; $51ca: $b9
	rst $38                                          ; $51cb: $ff
	db $e3                                           ; $51cc: $e3
	pop de                                           ; $51cd: $d1
	jp hl                                            ; $51ce: $e9


	pop hl                                           ; $51cf: $e1
	di                                               ; $51d0: $f3
	push hl                                          ; $51d1: $e5
	call nz, $ffde                                   ; $51d2: $c4 $de $ff
	sbc b                                            ; $51d5: $98
	rst AddAOntoHL                                          ; $51d6: $ef
	rst SubAFromBC                                          ; $51d7: $e7
	rst FarCall                                          ; $51d8: $f7
	db $fd                                           ; $51d9: $fd
	call c, $a060                                    ; $51da: $dc $60 $a0
	ld l, a                                          ; $51dd: $6f
	cp $95                                           ; $51de: $fe $95
	adc $d5                                          ; $51e0: $ce $d5
	jp z, $cad5                                      ; $51e2: $ca $d5 $ca

	push bc                                          ; $51e5: $c5
	jp nz, $88c0                                     ; $51e6: $c2 $c0 $88

	ld c, b                                          ; $51e9: $48
	ld a, e                                          ; $51ea: $7b
	cp $9a                                           ; $51eb: $fe $9a
	ld b, b                                          ; $51ed: $40
	adc a                                            ; $51ee: $8f
	ld b, b                                          ; $51ef: $40
	or b                                             ; $51f0: $b0
	ld [hl], b                                       ; $51f1: $70
	ld a, e                                          ; $51f2: $7b
	cp $9c                                           ; $51f3: $fe $9c
	ld a, a                                          ; $51f5: $7f
	or b                                             ; $51f6: $b0
	ld a, a                                          ; $51f7: $7f
	db $fd                                           ; $51f8: $fd
	sbc e                                            ; $51f9: $9b
	ccf                                              ; $51fa: $3f
	rst $38                                          ; $51fb: $ff
	nop                                              ; $51fc: $00
	rst $38                                          ; $51fd: $ff
	ld l, [hl]                                       ; $51fe: $6e
	db $eb                                           ; $51ff: $eb
	rst SubAFromDE                                          ; $5200: $df
	rst $38                                          ; $5201: $ff
	sub d                                            ; $5202: $92
	and d                                            ; $5203: $a2
	ld d, l                                          ; $5204: $55
	jp z, $974f                                      ; $5205: $ca $4f $97

	sub e                                            ; $5208: $93
	add e                                            ; $5209: $83
	add e                                            ; $520a: $83
	cp d                                             ; $520b: $ba
	ld a, l                                          ; $520c: $7d
	ld [$ff6f], a                                    ; $520d: $ea $6f $ff
	sbc $bb                                          ; $5210: $de $bb
	sub [hl]                                         ; $5212: $96
	rrca                                             ; $5213: $0f
	ld e, a                                          ; $5214: $5f
	xor a                                            ; $5215: $af
	rst $38                                          ; $5216: $ff
	rlca                                             ; $5217: $07
	rst $38                                          ; $5218: $ff
	rlca                                             ; $5219: $07
	inc bc                                           ; $521a: $03
	xor h                                            ; $521b: $ac
	db $dd                                           ; $521c: $dd
	db $fc                                           ; $521d: $fc
	sbc $fe                                          ; $521e: $de $fe
	ld sp, hl                                        ; $5220: $f9
	sbc h                                            ; $5221: $9c
	xor c                                            ; $5222: $a9
	ld d, l                                          ; $5223: $55
	add hl, hl                                       ; $5224: $29
	ld [hl], a                                       ; $5225: $77
	cp $7f                                           ; $5226: $fe $7f
	rla                                              ; $5228: $17
	jp c, Jump_03c_6a80                              ; $5229: $da $80 $6a

	rst SubAFromDE                                          ; $522c: $df
	ld a, [hl]                                       ; $522d: $7e
	sbc $66                                          ; $522e: $de $66
	and b                                            ; $5230: $a0
	jp c, $9701                                      ; $5231: $da $01 $97

	nop                                              ; $5234: $00
	ld b, b                                          ; $5235: $40
	ld b, b                                          ; $5236: $40
	ld b, c                                          ; $5237: $41
	ld b, c                                          ; $5238: $41
	ld c, b                                          ; $5239: $48
	ld b, h                                          ; $523a: $44
	ld c, l                                          ; $523b: $4d
	ld a, e                                          ; $523c: $7b
	ret c                                            ; $523d: $d8

	rst SubAFromDE                                          ; $523e: $df
	add c                                            ; $523f: $81
	sbc e                                            ; $5240: $9b
	sbc b                                            ; $5241: $98
	sbc h                                            ; $5242: $9c
	adc a                                            ; $5243: $8f
	nop                                              ; $5244: $00
	sbc $02                                          ; $5245: $de $02
	sbc e                                            ; $5247: $9b
	ld b, d                                          ; $5248: $42
	ld h, d                                          ; $5249: $62
	sub b                                            ; $524a: $90
	add sp, $7b                                      ; $524b: $e8 $7b
	ldh [$99], a                                     ; $524d: $e0 $99
	add c                                            ; $524f: $81
	pop bc                                           ; $5250: $c1
	pop hl                                           ; $5251: $e1
	pop af                                           ; $5252: $f1
	ld hl, sp+$00                                    ; $5253: $f8 $00
	db $db                                           ; $5255: $db
	add b                                            ; $5256: $80
	sbc [hl]                                         ; $5257: $9e
	ld c, a                                          ; $5258: $4f
	ld l, a                                          ; $5259: $6f
	ret z                                            ; $525a: $c8

	sbc l                                            ; $525b: $9d
	ld c, $ff                                        ; $525c: $0e $ff
	ld h, a                                          ; $525e: $67
	ret z                                            ; $525f: $c8

	ld l, d                                          ; $5260: $6a
	cp a                                             ; $5261: $bf
	add b                                            ; $5262: $80
	inc bc                                           ; $5263: $03
	rrca                                             ; $5264: $0f
	ld b, $06                                        ; $5265: $06 $06
	dec b                                            ; $5267: $05
	ld [bc], a                                       ; $5268: $02
	rra                                              ; $5269: $1f
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	rst AddAOntoHL                                          ; $526c: $ef
	ld d, a                                          ; $526d: $57
	ld e, a                                          ; $526e: $5f
	ld l, a                                          ; $526f: $6f
	ccf                                              ; $5270: $3f
	ccf                                              ; $5271: $3f
	rra                                              ; $5272: $1f
	rra                                              ; $5273: $1f
	add d                                            ; $5274: $82
	ld bc, $8182                                     ; $5275: $01 $82 $81
	ld [bc], a                                       ; $5278: $02
	nop                                              ; $5279: $00
	ld [bc], a                                       ; $527a: $02
	nop                                              ; $527b: $00
	cp $0d                                           ; $527c: $fe $0d
	adc [hl]                                         ; $527e: $8e
	adc l                                            ; $527f: $8d
	adc [hl]                                         ; $5280: $8e
	inc c                                            ; $5281: $0c
	sbc l                                            ; $5282: $9d
	ld c, $0c                                        ; $5283: $0e $0c
	sbc $03                                          ; $5285: $de $03
	call c, Call_03c_7f02                            ; $5287: $dc $02 $7f
	ld [hl], b                                       ; $528a: $70
	sbc h                                            ; $528b: $9c
	xor c                                            ; $528c: $a9
	ld d, c                                          ; $528d: $51
	ld hl, $4e72                                     ; $528e: $21 $72 $4e
	ld l, e                                          ; $5291: $6b
	add b                                            ; $5292: $80
	rst SubAFromDE                                          ; $5293: $df
	rst $38                                          ; $5294: $ff
	ld a, [hl]                                       ; $5295: $7e
	ld bc, $2a89                                     ; $5296: $01 $89 $2a
	nop                                              ; $5299: $00
	nop                                              ; $529a: $00
	rst SubAFromHL                                          ; $529b: $d7
	and a                                            ; $529c: $a7
	dec b                                            ; $529d: $05
	inc bc                                           ; $529e: $03
	ld bc, $0507                                     ; $529f: $01 $07 $05
	dec b                                            ; $52a2: $05
	push af                                          ; $52a3: $f5
	di                                               ; $52a4: $f3
	di                                               ; $52a5: $f3
	or a                                             ; $52a6: $b7
	ld d, a                                          ; $52a7: $57
	or c                                             ; $52a8: $b1
	dec e                                            ; $52a9: $1d
	dec e                                            ; $52aa: $1d
	nop                                              ; $52ab: $00
	ld sp, $7a38                                     ; $52ac: $31 $38 $7a
	cp a                                             ; $52af: $bf
	sbc b                                            ; $52b0: $98
	db $10                                           ; $52b1: $10
	jr @+$01                                         ; $52b2: $18 $ff

	or a                                             ; $52b4: $b7
	cp a                                             ; $52b5: $bf
	cp a                                             ; $52b6: $bf
	rst $38                                          ; $52b7: $ff
	ld a, e                                          ; $52b8: $7b
	ei                                               ; $52b9: $fb
	adc h                                            ; $52ba: $8c
	inc b                                            ; $52bb: $04
	and b                                            ; $52bc: $a0
	add hl, bc                                       ; $52bd: $09
	add e                                            ; $52be: $83
	inc bc                                           ; $52bf: $03
	add e                                            ; $52c0: $83
	ld bc, $3c81                                     ; $52c1: $01 $81 $3c
	cp h                                             ; $52c4: $bc
	ld e, c                                          ; $52c5: $59
	cp a                                             ; $52c6: $bf
	ld e, a                                          ; $52c7: $5f
	sbc e                                            ; $52c8: $9b
	ld e, c                                          ; $52c9: $59
	adc c                                            ; $52ca: $89
	add h                                            ; $52cb: $84
	and d                                            ; $52cc: $a2
	ldh [$dc], a                                     ; $52cd: $e0 $dc
	pop hl                                           ; $52cf: $e1
	sub a                                            ; $52d0: $97
	sbc h                                            ; $52d1: $9c
	cp d                                             ; $52d2: $ba
	db $fc                                           ; $52d3: $fc
	rst $38                                          ; $52d4: $ff
	rst $38                                          ; $52d5: $ff
	db $ed                                           ; $52d6: $ed
	jp hl                                            ; $52d7: $e9


	jp hl                                            ; $52d8: $e9


	ld h, [hl]                                       ; $52d9: $66
	ret nz                                           ; $52da: $c0

	reti                                             ; $52db: $d9


	ret nz                                           ; $52dc: $c0

jr_03c_52dd:
	sbc h                                            ; $52dd: $9c
	add b                                            ; $52de: $80
	ld d, b                                          ; $52df: $50
	sub b                                            ; $52e0: $90
	ld [hl], a                                       ; $52e1: $77
	cp $9e                                           ; $52e2: $fe $9e
	db $10                                           ; $52e4: $10
	ld [hl], d                                       ; $52e5: $72
	ret nz                                           ; $52e6: $c0

	ld a, a                                          ; $52e7: $7f
	cp $9e                                           ; $52e8: $fe $9e
	jr nc, jr_03c_52dd                               ; $52ea: $30 $f1

	sub d                                            ; $52ec: $92
	add d                                            ; $52ed: $82
	add e                                            ; $52ee: $83
	jp nz, $c8c7                                     ; $52ef: $c2 $c7 $c8

	sub b                                            ; $52f2: $90
	add b                                            ; $52f3: $80
	add h                                            ; $52f4: $84
	cp d                                             ; $52f5: $ba
	cp e                                             ; $52f6: $bb
	jp c, $d8ff                                      ; $52f7: $da $ff $d8

	ld a, e                                          ; $52fa: $7b
	ld hl, sp+$76                                    ; $52fb: $f8 $76
	db $fd                                           ; $52fd: $fd
	db $fd                                           ; $52fe: $fd
	sbc h                                            ; $52ff: $9c
	xor [hl]                                         ; $5300: $ae
	ld d, a                                          ; $5301: $57
	xor d                                            ; $5302: $aa
	ld h, [hl]                                       ; $5303: $66
	push hl                                          ; $5304: $e5
	db $fc                                           ; $5305: $fc
	sbc [hl]                                         ; $5306: $9e
	ld de, $e76b                                     ; $5307: $11 $6b $e7
	ld [hl], l                                       ; $530a: $75

jr_03c_530b:
	xor h                                            ; $530b: $ac
	db $fd                                           ; $530c: $fd
	halt                                             ; $530d: $76
	cp l                                             ; $530e: $bd
	db $fd                                           ; $530f: $fd
	ld e, a                                          ; $5310: $5f
	ld a, $7f                                        ; $5311: $3e $7f
	rst FarCall                                          ; $5313: $f7
	db $fd                                           ; $5314: $fd
	sbc d                                            ; $5315: $9a
	add $c0                                          ; $5316: $c6 $c0
	ldh a, [$e3]                                     ; $5318: $f0 $e3
	inc h                                            ; $531a: $24
	sbc $38                                          ; $531b: $de $38
	add b                                            ; $531d: $80
	add $c7                                          ; $531e: $c6 $c7
	rst $38                                          ; $5320: $ff
	rst $38                                          ; $5321: $ff
	inc a                                            ; $5322: $3c
	jr c, @+$32                                      ; $5323: $38 $30

	db $10                                           ; $5325: $10
	inc c                                            ; $5326: $0c
	ld b, $03                                        ; $5327: $06 $03
	add a                                            ; $5329: $87
	rst JumpTable                                          ; $532a: $c7
	ld a, [hl]                                       ; $532b: $7e
	ld c, a                                          ; $532c: $4f
	ld b, a                                          ; $532d: $47
	ld [$fefe], sp                                   ; $532e: $08 $fe $fe
	db $fd                                           ; $5331: $fd
	db $fc                                           ; $5332: $fc
	ld a, [hl]                                       ; $5333: $7e
	ld a, a                                          ; $5334: $7f
	ld c, a                                          ; $5335: $4f
	ld [hl], e                                       ; $5336: $73
	ld a, e                                          ; $5337: $7b
	ccf                                              ; $5338: $3f
	ccf                                              ; $5339: $3f
	inc hl                                           ; $533a: $23
	and e                                            ; $533b: $a3
	rst $38                                          ; $533c: $ff
	sub a                                            ; $533d: $97
	add b                                            ; $533e: $80
	ld b, b                                          ; $533f: $40
	ld h, b                                          ; $5340: $60
	inc a                                            ; $5341: $3c
	ld [hl-], a                                      ; $5342: $32
	ld [bc], a                                       ; $5343: $02
	inc bc                                           ; $5344: $03
	ld h, e                                          ; $5345: $63
	ld a, c                                          ; $5346: $79
	ld a, [hl]                                       ; $5347: $7e
	ld l, a                                          ; $5348: $6f
	ld e, c                                          ; $5349: $59
	ld a, a                                          ; $534a: $7f
	xor a                                            ; $534b: $af
	sbc [hl]                                         ; $534c: $9e
	cp a                                             ; $534d: $bf
	sbc $80                                          ; $534e: $de $80
	adc e                                            ; $5350: $8b
	nop                                              ; $5351: $00
	ld a, a                                          ; $5352: $7f
	pop af                                           ; $5353: $f1
	ld a, [$0aea]                                    ; $5354: $fa $ea $0a
	dec bc                                           ; $5357: $0b
	add hl, bc                                       ; $5358: $09
	ld de, $fff5                                     ; $5359: $11 $f5 $ff
	cp $ee                                           ; $535c: $fe $ee
	ld c, $0f                                        ; $535e: $0e $0f
	dec bc                                           ; $5360: $0b
	dec de                                           ; $5361: $1b
	rst $38                                          ; $5362: $ff
	db $fc                                           ; $5363: $fc
	db $fc                                           ; $5364: $fc
	db $fc                                           ; $5365: $fc
	sbc l                                            ; $5366: $9d
	ld a, a                                          ; $5367: $7f
	inc b                                            ; $5368: $04
	ld l, a                                          ; $5369: $6f
	rst FarCall                                          ; $536a: $f7
	ld a, c                                          ; $536b: $79
	db $10                                           ; $536c: $10
	sbc [hl]                                         ; $536d: $9e
	inc bc                                           ; $536e: $03
	ld h, [hl]                                       ; $536f: $66
	ld d, c                                          ; $5370: $51
	ld [hl], e                                       ; $5371: $73
	ld hl, sp+$73                                    ; $5372: $f8 $73
	db $fd                                           ; $5374: $fd
	ld [hl], a                                       ; $5375: $77
	ei                                               ; $5376: $fb
	ld l, a                                          ; $5377: $6f
	ld a, c                                          ; $5378: $79
	ld a, c                                          ; $5379: $79
	jr nc, jr_03c_530b                               ; $537a: $30 $8f

	push hl                                          ; $537c: $e5
	ld c, $08                                        ; $537d: $0e $08
	ld [$e00e], sp                                   ; $537f: $08 $0e $e0
	dec c                                            ; $5382: $0d
	db $ed                                           ; $5383: $ed
	rst SubAFromBC                                          ; $5384: $e7
	nop                                              ; $5385: $00
	ld b, $06                                        ; $5386: $06 $06
	rrca                                             ; $5388: $0f
	ldh [rAUD1SWEEP], a                              ; $5389: $e0 $10
	db $10                                           ; $538b: $10
	ld a, d                                          ; $538c: $7a
	jp nz, $fe7f                                     ; $538d: $c2 $7f $fe

	sbc h                                            ; $5390: $9c
	ld c, h                                          ; $5391: $4c
	or a                                             ; $5392: $b7
	or a                                             ; $5393: $b7
	ld a, d                                          ; $5394: $7a
	jp nz, $b7df                                     ; $5395: $c2 $df $b7

	add [hl]                                         ; $5398: $86
	ei                                               ; $5399: $fb
	add hl, bc                                       ; $539a: $09
	ret                                              ; $539b: $c9


	jp $0300                                         ; $539c: $c3 $00 $03


	ld de, $3905                                     ; $539f: $11 $05 $39
	ld c, c                                          ; $53a2: $49
	jp hl                                            ; $53a3: $e9


	db $eb                                           ; $53a4: $eb
	ld a, [hl+]                                      ; $53a5: $2a
	dec hl                                           ; $53a6: $2b
	add hl, de                                       ; $53a7: $19
	dec c                                            ; $53a8: $0d
	call $e9e9                                       ; $53a9: $cd $e9 $e9
	pop hl                                           ; $53ac: $e1
	db $10                                           ; $53ad: $10
	db $10                                           ; $53ae: $10
	inc d                                            ; $53af: $14
	ld a, [de]                                       ; $53b0: $1a
	ld [$e9de], sp                                   ; $53b1: $08 $de $e9
	rst SubAFromDE                                          ; $53b4: $df
	inc e                                            ; $53b5: $1c
	ld a, l                                          ; $53b6: $7d
	rrca                                             ; $53b7: $0f
	sbc [hl]                                         ; $53b8: $9e
	rst AddAOntoHL                                          ; $53b9: $ef
	ld a, d                                          ; $53ba: $7a
	call nz, $9073                                   ; $53bb: $c4 $73 $90
	rst SubAFromDE                                          ; $53be: $df
	ret nz                                           ; $53bf: $c0

	sbc [hl]                                         ; $53c0: $9e
	ldh [$fc], a                                     ; $53c1: $e0 $fc
	sbc h                                            ; $53c3: $9c
	jr nc, jr_03c_5405                               ; $53c4: $30 $3f

	ccf                                              ; $53c6: $3f
	ld l, e                                          ; $53c7: $6b
	sbc b                                            ; $53c8: $98
	ld [hl], e                                       ; $53c9: $73
	ld hl, sp+$76                                    ; $53ca: $f8 $76
	ld d, a                                          ; $53cc: $57
	ld d, a                                          ; $53cd: $57
	adc b                                            ; $53ce: $88
	sbc [hl]                                         ; $53cf: $9e
	nop                                              ; $53d0: $00
	dec e                                            ; $53d1: $1d
	nop                                              ; $53d2: $00
	sub c                                            ; $53d3: $91
	inc sp                                           ; $53d4: $33
	ld [hl], $66                                     ; $53d5: $36 $66
	ld h, [hl]                                       ; $53d7: $66
	ld h, a                                          ; $53d8: $67
	ld [hl], e                                       ; $53d9: $73
	inc sp                                           ; $53da: $33
	ld [hl], a                                       ; $53db: $77
	ld [hl], e                                       ; $53dc: $73
	halt                                             ; $53dd: $76

jr_03c_53de:
	ld [hl], e                                       ; $53de: $73
	ld [hl], $67                                     ; $53df: $36 $67
	ld [hl], a                                       ; $53e1: $77
	ld l, e                                          ; $53e2: $6b
	or $9a                                           ; $53e3: $f6 $9a
	inc sp                                           ; $53e5: $33
	dec [hl]                                         ; $53e6: $35
	ld d, l                                          ; $53e7: $55
	scf                                              ; $53e8: $37
	inc sp                                           ; $53e9: $33
	ld a, e                                          ; $53ea: $7b
	or $9e                                           ; $53eb: $f6 $9e
	inc sp                                           ; $53ed: $33
	cp c                                             ; $53ee: $b9
	add [hl]                                         ; $53ef: $86
	adc h                                            ; $53f0: $8c
	call nz, $c8c8                                   ; $53f1: $c4 $c8 $c8
	adc b                                            ; $53f4: $88
	adc b                                            ; $53f5: $88
	adc h                                            ; $53f6: $8c
	ld d, b                                          ; $53f7: $50
	nop                                              ; $53f8: $00
	rst SubAFromHL                                          ; $53f9: $d7
	jp z, $aad9                                      ; $53fa: $ca $d9 $aa

	sbc c                                            ; $53fd: $99
	xor [hl]                                         ; $53fe: $ae
	db $fd                                           ; $53ff: $fd
	cp $00                                           ; $5400: $fe $00
	ld d, l                                          ; $5402: $55
	xor d                                            ; $5403: $aa
	ld a, e                                          ; $5404: $7b

jr_03c_5405:
	cp $9c                                           ; $5405: $fe $9c
	ld a, [hl+]                                      ; $5407: $2a
	ld e, a                                          ; $5408: $5f
	rst $38                                          ; $5409: $ff
	ld [hl], a                                       ; $540a: $77
	ld sp, hl                                        ; $540b: $f9
	ld a, a                                          ; $540c: $7f
	cp $9e                                           ; $540d: $fe $9e
	and b                                            ; $540f: $a0
	ld l, a                                          ; $5410: $6f
	ldh a, [$9d]                                     ; $5411: $f0 $9d
	xor d                                            ; $5413: $aa
	db $f4                                           ; $5414: $f4
	ld l, e                                          ; $5415: $6b
	ldh a, [$80]                                     ; $5416: $f0 $80
	ld a, [bc]                                       ; $5418: $0a
	nop                                              ; $5419: $00
	ld d, l                                          ; $541a: $55
	rst $38                                          ; $541b: $ff
	ld a, [hl]                                       ; $541c: $7e
	ei                                               ; $541d: $fb
	pop af                                           ; $541e: $f1
	or $04                                           ; $541f: $f6 $04
	rst $38                                          ; $5421: $ff
	xor d                                            ; $5422: $aa
	nop                                              ; $5423: $00
	add d                                            ; $5424: $82
	ld b, $06                                        ; $5425: $06 $06
	dec b                                            ; $5427: $05
	dec b                                            ; $5428: $05
	nop                                              ; $5429: $00
	ld d, h                                          ; $542a: $54
	dec sp                                           ; $542b: $3b
	inc b                                            ; $542c: $04
	dec b                                            ; $542d: $05
	ld [$8b82], sp                                   ; $542e: $08 $82 $8b
	rst $38                                          ; $5431: $ff
	xor e                                            ; $5432: $ab
	inc b                                            ; $5433: $04
	inc c                                            ; $5434: $0c
	inc c                                            ; $5435: $0c
	ld bc, $09df                                     ; $5436: $01 $df $09
	sbc e                                            ; $5439: $9b
	jr z, jr_03c_5474                                ; $543a: $28 $38

	ld hl, sp+$18                                    ; $543c: $f8 $18
	sbc $0c                                          ; $543e: $de $0c
	sbc d                                            ; $5440: $9a
	ld [$f8f8], sp                                   ; $5441: $08 $f8 $f8
	jr c, jr_03c_53de                                ; $5444: $38 $98

	sbc $1c                                          ; $5446: $de $1c
	adc [hl]                                         ; $5448: $8e
	sbc h                                            ; $5449: $9c
	ld b, b                                          ; $544a: $40
	ld d, l                                          ; $544b: $55
	ld l, d                                          ; $544c: $6a
	ld b, c                                          ; $544d: $41
	ld b, b                                          ; $544e: $40
	ld e, c                                          ; $544f: $59
	cp [hl]                                          ; $5450: $be
	add b                                            ; $5451: $80
	ld a, a                                          ; $5452: $7f
	ld l, d                                          ; $5453: $6a
	ld d, l                                          ; $5454: $55
	ld b, b                                          ; $5455: $40
	pop bc                                           ; $5456: $c1
	ret nz                                           ; $5457: $c0

	pop bc                                           ; $5458: $c1
	add b                                            ; $5459: $80
	ld a, e                                          ; $545a: $7b
	ret nz                                           ; $545b: $c0

	sbc d                                            ; $545c: $9a
	nop                                              ; $545d: $00
	add b                                            ; $545e: $80
	ccf                                              ; $545f: $3f
	cp a                                             ; $5460: $bf
	nop                                              ; $5461: $00
	ld a, e                                          ; $5462: $7b
	ret nz                                           ; $5463: $c0

	ld a, a                                          ; $5464: $7f
	db $f4                                           ; $5465: $f4
	ld a, a                                          ; $5466: $7f
	cp $ff                                           ; $5467: $fe $ff
	sbc e                                            ; $5469: $9b
	ld d, l                                          ; $546a: $55
	cp $01                                           ; $546b: $fe $01
	ld [bc], a                                       ; $546d: $02
	ld a, e                                          ; $546e: $7b
	adc c                                            ; $546f: $89
	ld a, a                                          ; $5470: $7f
	ldh a, [$7f]                                     ; $5471: $f0 $7f
	ld sp, hl                                        ; $5473: $f9

jr_03c_5474:
	ld a, e                                          ; $5474: $7b
	cp $9e                                           ; $5475: $fe $9e
	nop                                              ; $5477: $00
	db $dd                                           ; $5478: $dd
	ld de, $3280                                     ; $5479: $11 $80 $32
	jr nz, jr_03c_547e                               ; $547c: $20 $00

jr_03c_547e:
	nop                                              ; $547e: $00
	rst $38                                          ; $547f: $ff
	cp a                                             ; $5480: $bf
	rra                                              ; $5481: $1f
	dec de                                           ; $5482: $1b
	dec sp                                           ; $5483: $3b
	add hl, sp                                       ; $5484: $39
	ld [$0015], sp                                   ; $5485: $08 $15 $00
	xor d                                            ; $5488: $aa
	push de                                          ; $5489: $d5
	ld a, [de]                                       ; $548a: $1a
	dec l                                            ; $548b: $2d
	xor d                                            ; $548c: $aa
	dec d                                            ; $548d: $15
	ccf                                              ; $548e: $3f
	rst $38                                          ; $548f: $ff
	ld d, l                                          ; $5490: $55
	ld a, [hl+]                                      ; $5491: $2a
	dec b                                            ; $5492: $05
	ld [bc], a                                       ; $5493: $02
	push de                                          ; $5494: $d5
	xor d                                            ; $5495: $aa
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	xor d                                            ; $5498: $aa
	ld d, l                                          ; $5499: $55
	sub h                                            ; $549a: $94
	sub l                                            ; $549b: $95
	ld l, d                                          ; $549c: $6a
	xor d                                            ; $549d: $aa
	ld d, l                                          ; $549e: $55
	rst $38                                          ; $549f: $ff
	rst $38                                          ; $54a0: $ff
	ld d, l                                          ; $54a1: $55
	xor d                                            ; $54a2: $aa
	ld b, b                                          ; $54a3: $40
	add b                                            ; $54a4: $80
	ld d, l                                          ; $54a5: $55
	ld [hl], e                                       ; $54a6: $73
	ldh a, [$7f]                                     ; $54a7: $f0 $7f
	ld a, [$f06f]                                    ; $54a9: $fa $6f $f0
	ld a, e                                          ; $54ac: $7b
	or h                                             ; $54ad: $b4
	ld a, e                                          ; $54ae: $7b
	db $fc                                           ; $54af: $fc
	add e                                            ; $54b0: $83
	inc b                                            ; $54b1: $04
	ld b, d                                          ; $54b2: $42
	ld a, [bc]                                       ; $54b3: $0a
	add h                                            ; $54b4: $84
	xor c                                            ; $54b5: $a9
	ld d, [hl]                                       ; $54b6: $56
	rst $38                                          ; $54b7: $ff
	xor $ea                                          ; $54b8: $ee $ea
	cp h                                             ; $54ba: $bc
	ld e, d                                          ; $54bb: $5a
	dec sp                                           ; $54bc: $3b
	ld d, [hl]                                       ; $54bd: $56
	xor c                                            ; $54be: $a9
	nop                                              ; $54bf: $00
	or e                                             ; $54c0: $b3
	or e                                             ; $54c1: $b3
	cp a                                             ; $54c2: $bf
	cp a                                             ; $54c3: $bf
	ld c, h                                          ; $54c4: $4c
	ld d, l                                          ; $54c5: $55
	xor d                                            ; $54c6: $aa
	push de                                          ; $54c7: $d5
	rst $38                                          ; $54c8: $ff
	rst $38                                          ; $54c9: $ff

Jump_03c_54ca:
	di                                               ; $54ca: $f3
	di                                               ; $54cb: $f3
	or e                                             ; $54cc: $b3
	ld a, e                                          ; $54cd: $7b
	daa                                              ; $54ce: $27
	sub l                                            ; $54cf: $95
	or h                                             ; $54d0: $b4
	ld e, c                                          ; $54d1: $59
	adc a                                            ; $54d2: $8f
	call Call_03c_5de1                               ; $54d3: $cd $e1 $5d
	xor e                                            ; $54d6: $ab
	ld d, l                                          ; $54d7: $55
	ld c, l                                          ; $54d8: $4d
	xor b                                            ; $54d9: $a8
	sbc $0c                                          ; $54da: $de $0c
	adc b                                            ; $54dc: $88
	and b                                            ; $54dd: $a0
	ld d, h                                          ; $54de: $54
	xor d                                            ; $54df: $aa
	add hl, bc                                       ; $54e0: $09
	ld c, $e7                                        ; $54e1: $0e $e7
	dec bc                                           ; $54e3: $0b
	ld a, [bc]                                       ; $54e4: $0a
	ret z                                            ; $54e5: $c8

	db $ed                                           ; $54e6: $ed
	ld e, a                                          ; $54e7: $5f
	rst AddAOntoHL                                          ; $54e8: $ef
	ret                                              ; $54e9: $c9


	add hl, de                                       ; $54ea: $19
	db $d3                                           ; $54eb: $d3
	ld de, $1213                                     ; $54ec: $11 $13 $12
	and b                                            ; $54ef: $a0
	nop                                              ; $54f0: $00
	push de                                          ; $54f1: $d5
	ld a, [hl+]                                      ; $54f2: $2a
	dec [hl]                                         ; $54f3: $35
	ld [hl], a                                       ; $54f4: $77
	jp nc, Jump_03c_7f99                             ; $54f5: $d2 $99 $7f

	xor d                                            ; $54f8: $aa
	push de                                          ; $54f9: $d5
	adc d                                            ; $54fa: $8a
	ld d, l                                          ; $54fb: $55
	ld a, [hl+]                                      ; $54fc: $2a
	ld [hl], a                                       ; $54fd: $77
	ld h, b                                          ; $54fe: $60
	sbc c                                            ; $54ff: $99
	xor d                                            ; $5500: $aa
	ld d, a                                          ; $5501: $57
	xor d                                            ; $5502: $aa
	ld d, [hl]                                       ; $5503: $56
	rst $38                                          ; $5504: $ff
	cp $7b                                           ; $5505: $fe $7b
	nop                                              ; $5507: $00
	sbc h                                            ; $5508: $9c
	xor b                                            ; $5509: $a8
	ld d, h                                          ; $550a: $54
	xor b                                            ; $550b: $a8
	ld [hl], e                                       ; $550c: $73
	ldh a, [$9e]                                     ; $550d: $f0 $9e
	ld d, l                                          ; $550f: $55
	ld a, e                                          ; $5510: $7b
	adc h                                            ; $5511: $8c
	ld a, e                                          ; $5512: $7b
	ld d, b                                          ; $5513: $50
	ld a, a                                          ; $5514: $7f
	db $fc                                           ; $5515: $fc
	db $fd                                           ; $5516: $fd
	sub e                                            ; $5517: $93
	ld d, a                                          ; $5518: $57
	xor c                                            ; $5519: $a9
	push de                                          ; $551a: $d5
	xor d                                            ; $551b: $aa
	sub $2a                                          ; $551c: $d6 $2a
	ld d, a                                          ; $551e: $57
	dec sp                                           ; $551f: $3b
	xor b                                            ; $5520: $a8
	ld d, h                                          ; $5521: $54
	jr z, jr_03c_5534                                ; $5522: $28 $10

	db $fd                                           ; $5524: $fd
	sub a                                            ; $5525: $97
	rst $38                                          ; $5526: $ff
	ld a, c                                          ; $5527: $79
	ld a, b                                          ; $5528: $78
	db $fc                                           ; $5529: $fc
	xor h                                            ; $552a: $ac
	and l                                            ; $552b: $a5
	ld c, c                                          ; $552c: $49
	ld c, l                                          ; $552d: $4d
	cp $8f                                           ; $552e: $fe $8f
	ld bc, $1b13                                     ; $5530: $01 $13 $1b
	rra                                              ; $5533: $1f

jr_03c_5534:
	rra                                              ; $5534: $1f
	cp $50                                           ; $5535: $fe $50
	rrca                                             ; $5537: $0f
	db $fd                                           ; $5538: $fd
	cp b                                             ; $5539: $b8
	ld a, a                                          ; $553a: $7f
	pop bc                                           ; $553b: $c1
	ldh [rP1], a                                     ; $553c: $e0 $00
	rst AddAOntoHL                                          ; $553e: $ef
	rlca                                             ; $553f: $07
	sbc $ff                                          ; $5540: $de $ff
	sbc l                                            ; $5542: $9d
	jp Jump_03c_7bc1                                 ; $5543: $c3 $c1 $7b


	sbc $7f                                          ; $5546: $de $7f
	add $9b                                          ; $5548: $c6 $9b
	db $fd                                           ; $554a: $fd
	ldh [c], a                                       ; $554b: $e2
	db $fd                                           ; $554c: $fd
	dec b                                            ; $554d: $05
	db $dd                                           ; $554e: $dd
	rst $38                                          ; $554f: $ff
	sub e                                            ; $5550: $93
	inc bc                                           ; $5551: $03
	pop af                                           ; $5552: $f1
	ld hl, sp-$79                                    ; $5553: $f8 $87
	add e                                            ; $5555: $83
	rst $38                                          ; $5556: $ff
	xor e                                            ; $5557: $ab
	rst SubAFromHL                                          ; $5558: $d7
	jp nz, $73a8                                     ; $5559: $c2 $a8 $73

	add hl, bc                                       ; $555c: $09
	db $dd                                           ; $555d: $dd
	ld a, l                                          ; $555e: $7d
	add e                                            ; $555f: $83
	rst $38                                          ; $5560: $ff
	rst JumpTable                                          ; $5561: $c7
	adc h                                            ; $5562: $8c
	inc e                                            ; $5563: $1c
	dec e                                            ; $5564: $1d
	ld sp, hl                                        ; $5565: $f9
	reti                                             ; $5566: $d9


	cp c                                             ; $5567: $b9
	pop de                                           ; $5568: $d1
	ld h, e                                          ; $5569: $63
	and d                                            ; $556a: $a2
	sub h                                            ; $556b: $94
	db $fc                                           ; $556c: $fc
	add sp, -$17                                     ; $556d: $e8 $e9
	pop de                                           ; $556f: $d1
	jp $06a2                                         ; $5570: $c3 $a2 $06


	rst $38                                          ; $5573: $ff
	nop                                              ; $5574: $00
	rst $38                                          ; $5575: $ff
	rst $38                                          ; $5576: $ff
	ld [$8140], a                                    ; $5577: $ea $40 $81
	ld hl, sp-$80                                    ; $557a: $f8 $80
	call c, Call_03c_7aff                            ; $557c: $dc $ff $7a
	ret c                                            ; $557f: $d8

	ld a, e                                          ; $5580: $7b
	ldh a, [$9b]                                     ; $5581: $f0 $9b
	xor b                                            ; $5583: $a8
	ld bc, $0f7d                                     ; $5584: $01 $7d $0f
	ld a, e                                          ; $5587: $7b
	ld sp, hl                                        ; $5588: $f9
	sbc $ff                                          ; $5589: $de $ff
	sbc [hl]                                         ; $558b: $9e
	add d                                            ; $558c: $82
	ld [hl], e                                       ; $558d: $73
	ldh a, [$9b]                                     ; $558e: $f0 $9b
	ld [bc], a                                       ; $5590: $02
	ld d, h                                          ; $5591: $54
	ld [hl+], a                                      ; $5592: $22
	ld [$f06f], a                                    ; $5593: $ea $6f $f0
	sbc h                                            ; $5596: $9c
	rst $38                                          ; $5597: $ff
	dec d                                            ; $5598: $15
	ldh [$7b], a                                     ; $5599: $e0 $7b
	rst FarCall                                          ; $559b: $f7
	ld [hl], a                                       ; $559c: $77
	ld e, [hl]                                       ; $559d: $5e
	ld l, e                                          ; $559e: $6b
	ldh a, [$7b]                                     ; $559f: $f0 $7b
	ld e, e                                          ; $55a1: $5b
	rst SubAFromDE                                          ; $55a2: $df
	rst $38                                          ; $55a3: $ff
	ld a, e                                          ; $55a4: $7b
	ld c, h                                          ; $55a5: $4c
	ld a, [hl]                                       ; $55a6: $7e
	and a                                            ; $55a7: $a7
	jp c, Jump_03c_77ff                              ; $55a8: $da $ff $77

	ldh a, [$7f]                                     ; $55ab: $f0 $7f
	ldh [$9e], a                                     ; $55ad: $e0 $9e
	cp a                                             ; $55af: $bf
	ld a, e                                          ; $55b0: $7b
	ccf                                              ; $55b1: $3f
	ld e, a                                          ; $55b2: $5f
	ldh a, [$9b]                                     ; $55b3: $f0 $9b
	cp d                                             ; $55b5: $ba
	rst $38                                          ; $55b6: $ff
	add e                                            ; $55b7: $83
	scf                                              ; $55b8: $37
	ld l, e                                          ; $55b9: $6b
	ldh a, [$9e]                                     ; $55ba: $f0 $9e
	rst GetHLinHL                                          ; $55bc: $cf
	ld [hl], e                                       ; $55bd: $73
	ldh [$9c], a                                     ; $55be: $e0 $9c
	ld a, a                                          ; $55c0: $7f
	rst $38                                          ; $55c1: $ff
	jp z, $e057                                      ; $55c2: $ca $57 $e0

	sbc e                                            ; $55c5: $9b
	rst $38                                          ; $55c6: $ff
	xor a                                            ; $55c7: $af
	ld l, e                                          ; $55c8: $6b
	ld [hl], l                                       ; $55c9: $75
	ld l, a                                          ; $55ca: $6f
	ldh a, [$9d]                                     ; $55cb: $f0 $9d
	rst SubAFromDE                                          ; $55cd: $df
	adc a                                            ; $55ce: $8f
	ld [hl], e                                       ; $55cf: $73
	ldh a, [$9c]                                     ; $55d0: $f0 $9c
	rst $38                                          ; $55d2: $ff
	add sp, $50                                      ; $55d3: $e8 $50
	ld l, a                                          ; $55d5: $6f
	ldh a, [$9e]                                     ; $55d6: $f0 $9e
	db $fd                                           ; $55d8: $fd
	ld l, a                                          ; $55d9: $6f
	ldh [$9c], a                                     ; $55da: $e0 $9c
	rst $38                                          ; $55dc: $ff
	dec bc                                           ; $55dd: $0b
	rlca                                             ; $55de: $07
	ld l, e                                          ; $55df: $6b
	ret nc                                           ; $55e0: $d0

	sbc [hl]                                         ; $55e1: $9e
	sbc a                                            ; $55e2: $9f
	ld [hl], e                                       ; $55e3: $73
	ldh a, [$9c]                                     ; $55e4: $f0 $9c
	rst SubAFromHL                                          ; $55e6: $d7
	ld a, [$57f5]                                    ; $55e7: $fa $f5 $57
	ret nz                                           ; $55ea: $c0

	sbc e                                            ; $55eb: $9b
	ld a, [$b8fd]                                    ; $55ec: $fa $fd $b8
	ld h, c                                          ; $55ef: $61
	ld l, e                                          ; $55f0: $6b
	ldh a, [$7f]                                     ; $55f1: $f0 $7f
	ccf                                              ; $55f3: $3f
	ld a, e                                          ; $55f4: $7b
	rst FarCall                                          ; $55f5: $f7
	sbc h                                            ; $55f6: $9c
	cp a                                             ; $55f7: $bf
	ld bc, $773c                                     ; $55f8: $01 $3c $77
	ld c, c                                          ; $55fb: $49
	halt                                             ; $55fc: $76
	ldh a, [$9a]                                     ; $55fd: $f0 $9a
	nop                                              ; $55ff: $00
	inc de                                           ; $5600: $13
	inc bc                                           ; $5601: $03
	ld bc, $7b03                                     ; $5602: $01 $03 $7b
	adc [hl]                                         ; $5605: $8e
	ld a, d                                          ; $5606: $7a
	ld b, a                                          ; $5607: $47
	ei                                               ; $5608: $fb
	sub a                                            ; $5609: $97
	jp z, $cfcd                                      ; $560a: $ca $cd $cf

	adc $e7                                          ; $560d: $ce $e7
	rst $38                                          ; $560f: $ff
	sbc a                                            ; $5610: $9f
	sbc a                                            ; $5611: $9f
	sbc $1f                                          ; $5612: $de $1f
	sub b                                            ; $5614: $90
	rrca                                             ; $5615: $0f
	rra                                              ; $5616: $1f
	rlca                                             ; $5617: $07
	inc bc                                           ; $5618: $03
	inc bc                                           ; $5619: $03
	ldh a, [$f8]                                     ; $561a: $f0 $f8
	rst FarCall                                          ; $561c: $f7
	ldh a, [c]                                       ; $561d: $f2
	ld [hl], l                                       ; $561e: $75
	ld [hl], d                                       ; $561f: $72
	or l                                             ; $5620: $b5
	or d                                             ; $5621: $b2
	ret nz                                           ; $5622: $c0

	ret nz                                           ; $5623: $c0

	db $dd                                           ; $5624: $dd
	rst GetHLinHL                                          ; $5625: $cf
	rst SubAFromDE                                          ; $5626: $df
	rst AddAOntoHL                                          ; $5627: $ef
	add a                                            ; $5628: $87
	nop                                              ; $5629: $00
	db $fc                                           ; $562a: $fc
	ld hl, sp-$0c                                    ; $562b: $f8 $f4
	ld sp, hl                                        ; $562d: $f9
	add b                                            ; $562e: $80
	sbc $e1                                          ; $562f: $de $e1
	nop                                              ; $5631: $00
	inc bc                                           ; $5632: $03
	rst $38                                          ; $5633: $ff
	ld sp, hl                                        ; $5634: $f9
	ret nz                                           ; $5635: $c0

	ld hl, sp-$7f                                    ; $5636: $f8 $81
	add b                                            ; $5638: $80
	add b                                            ; $5639: $80
	rst $38                                          ; $563a: $ff
	add b                                            ; $563b: $80
	ld d, l                                          ; $563c: $55
	xor e                                            ; $563d: $ab
	rst $38                                          ; $563e: $ff
	nop                                              ; $563f: $00
	adc [hl]                                         ; $5640: $8e
	sbc $7f                                          ; $5641: $de $7f
	add d                                            ; $5643: $82
	xor e                                            ; $5644: $ab
	ld d, h                                          ; $5645: $54
	ld bc, $71ff                                     ; $5646: $01 $ff $71
	ld l, b                                          ; $5649: $68
	ld [$80d0], sp                                   ; $564a: $08 $d0 $80
	ld hl, $c384                                     ; $564d: $21 $84 $c3
	ret nz                                           ; $5650: $c0

	inc b                                            ; $5651: $04
	call nz, $1f8b                                   ; $5652: $c4 $8b $1f
	ld e, $3c                                        ; $5655: $1e $3c
	sbc a                                            ; $5657: $9f
	ld a, a                                          ; $5658: $7f
	ld sp, hl                                        ; $5659: $f9
	rst $38                                          ; $565a: $ff
	add b                                            ; $565b: $80
	ld l, c                                          ; $565c: $69
	ret nc                                           ; $565d: $d0

	ld h, c                                          ; $565e: $61
	sbc $02                                          ; $565f: $de $02
	ld a, d                                          ; $5661: $7a
	ld l, $9c                                        ; $5662: $2e $9c
	sub [hl]                                         ; $5664: $96
	cpl                                              ; $5665: $2f
	ld h, c                                          ; $5666: $61
	ld a, e                                          ; $5667: $7b
	ld [hl], b                                       ; $5668: $70
	sub [hl]                                         ; $5669: $96
	xor $03                                          ; $566a: $ee $03
	nop                                              ; $566c: $00
	ld h, b                                          ; $566d: $60
	ld [bc], a                                       ; $566e: $02
	db $fd                                           ; $566f: $fd
	inc bc                                           ; $5670: $03
	nop                                              ; $5671: $00
	cp $7b                                           ; $5672: $fe $7b
	ld d, e                                          ; $5674: $53

jr_03c_5675:
	ld a, [hl]                                       ; $5675: $7e
	and d                                            ; $5676: $a2
	sbc e                                            ; $5677: $9b
	db $fc                                           ; $5678: $fc
	nop                                              ; $5679: $00
	inc bc                                           ; $567a: $03
	sbc $79                                          ; $567b: $de $79
	call z, $f79d                                    ; $567d: $cc $9d $f7
	ld [$b07b], sp                                   ; $5680: $08 $7b $b0
	rst SubAFromDE                                          ; $5683: $df
	rst $38                                          ; $5684: $ff
	ld a, a                                          ; $5685: $7f
	ld l, c                                          ; $5686: $69
	sbc [hl]                                         ; $5687: $9e
	rst FarCall                                          ; $5688: $f7
	ld a, d                                          ; $5689: $7a
	xor a                                            ; $568a: $af
	sbc c                                            ; $568b: $99
	nop                                              ; $568c: $00
	jr nz, jr_03c_56af                               ; $568d: $20 $20

	rst SubAFromDE                                          ; $568f: $df
	nop                                              ; $5690: $00
	ld a, [hl+]                                      ; $5691: $2a
	ld [hl], a                                       ; $5692: $77
	ld [de], a                                       ; $5693: $12
	ld a, l                                          ; $5694: $7d
	adc d                                            ; $5695: $8a
	ld a, a                                          ; $5696: $7f
	ldh a, [c]                                       ; $5697: $f2
	sub a                                            ; $5698: $97
	di                                               ; $5699: $f3
	ldh [rSB], a                                     ; $569a: $e0 $01
	inc c                                            ; $569c: $0c
	ld bc, $01be                                     ; $569d: $01 $be $01
	cp a                                             ; $56a0: $bf
	ld a, e                                          ; $56a1: $7b
	ld b, h                                          ; $56a2: $44
	sbc [hl]                                         ; $56a3: $9e
	ei                                               ; $56a4: $fb
	ld a, d                                          ; $56a5: $7a
	dec a                                            ; $56a6: $3d
	sbc h                                            ; $56a7: $9c
	rlca                                             ; $56a8: $07
	dec bc                                           ; $56a9: $0b
	ld [hl], b                                       ; $56aa: $70
	ld a, d                                          ; $56ab: $7a
	ld h, $9c                                        ; $56ac: $26 $9c
	db $fd                                           ; $56ae: $fd

jr_03c_56af:
	ld [bc], a                                       ; $56af: $02
	rst SubAFromDE                                          ; $56b0: $df
	jp c, $96ff                                      ; $56b1: $da $ff $96

	ld [hl], a                                       ; $56b4: $77
	cp e                                             ; $56b5: $bb
	nop                                              ; $56b6: $00
	ld b, b                                          ; $56b7: $40
	sbc h                                            ; $56b8: $9c
	cp a                                             ; $56b9: $bf
	pop hl                                           ; $56ba: $e1
	nop                                              ; $56bb: $00
	rst FarCall                                          ; $56bc: $f7
	ld a, e                                          ; $56bd: $7b
	add hl, hl                                       ; $56be: $29
	sbc [hl]                                         ; $56bf: $9e
	sbc a                                            ; $56c0: $9f
	ld a, e                                          ; $56c1: $7b
	db $db                                           ; $56c2: $db
	sub a                                            ; $56c3: $97
	add h                                            ; $56c4: $84
	cp a                                             ; $56c5: $bf
	ld b, $00                                        ; $56c6: $06 $00
	ldh [$ce], a                                     ; $56c8: $e0 $ce
	rst AddAOntoHL                                          ; $56ca: $ef
	nop                                              ; $56cb: $00
	ld a, e                                          ; $56cc: $7b
	push af                                          ; $56cd: $f5
	rst SubAFromDE                                          ; $56ce: $df
	rst $38                                          ; $56cf: $ff
	sbc [hl]                                         ; $56d0: $9e
	sbc $7b                                          ; $56d1: $de $7b
	ldh a, [$99]                                     ; $56d3: $f0 $99
	or $e3                                           ; $56d5: $f6 $e3
	inc e                                            ; $56d7: $1c
	di                                               ; $56d8: $f3
	ld c, $78                                        ; $56d9: $0e $78
	ld a, e                                          ; $56db: $7b
	ld de, $fc85                                     ; $56dc: $11 $85 $fc
	ldh [$03], a                                     ; $56df: $e0 $03
	adc a                                            ; $56e1: $8f
	rst $38                                          ; $56e2: $ff
	rst $38                                          ; $56e3: $ff
	add b                                            ; $56e4: $80
	rst AddAOntoHL                                          ; $56e5: $ef
	add b                                            ; $56e6: $80
	inc bc                                           ; $56e7: $03
	add c                                            ; $56e8: $81
	db $fc                                           ; $56e9: $fc
	nop                                              ; $56ea: $00
	jr jr_03c_5675                                   ; $56eb: $18 $88

	rst $38                                          ; $56ed: $ff
	ld a, a                                          ; $56ee: $7f
	rra                                              ; $56ef: $1f
	add e                                            ; $56f0: $83
	db $fd                                           ; $56f1: $fd
	rst $38                                          ; $56f2: $ff
	rst SubAFromBC                                          ; $56f3: $e7
	add h                                            ; $56f4: $84
	add b                                            ; $56f5: $80
	inc e                                            ; $56f6: $1c
	ret nz                                           ; $56f7: $c0

	ld a, c                                          ; $56f8: $79
	rst JumpTable                                          ; $56f9: $c7
	sbc [hl]                                         ; $56fa: $9e
	add hl, bc                                       ; $56fb: $09
	db $dd                                           ; $56fc: $dd
	rst $38                                          ; $56fd: $ff
	add b                                            ; $56fe: $80
	ld sp, hl                                        ; $56ff: $f9
	db $e3                                           ; $5700: $e3
	rst JumpTable                                          ; $5701: $c7
	add [hl]                                         ; $5702: $86
	cp h                                             ; $5703: $bc
	nop                                              ; $5704: $00
	daa                                              ; $5705: $27
	adc l                                            ; $5706: $8d
	ld [hl], h                                       ; $5707: $74
	jr z, jr_03c_575a                                ; $5708: $28 $50

	inc h                                            ; $570a: $24
	rst $38                                          ; $570b: $ff
	rst $38                                          ; $570c: $ff
	rst SubAFromBC                                          ; $570d: $e7
	adc [hl]                                         ; $570e: $8e
	ld a, b                                          ; $570f: $78
	pop de                                           ; $5710: $d1
	and c                                            ; $5711: $a1
	jp $9f00                                         ; $5712: $c3 $00 $9f


	cp $00                                           ; $5715: $fe $00
	jr nz, jr_03c_5725                               ; $5717: $20 $0c

	ld h, d                                          ; $5719: $62
	add hl, de                                       ; $571a: $19
	rst $38                                          ; $571b: $ff
	ld a, a                                          ; $571c: $7f
	ld a, [hl]                                       ; $571d: $7e
	adc d                                            ; $571e: $8a
	ld sp, hl                                        ; $571f: $f9
	rra                                              ; $5720: $1f
	inc bc                                           ; $5721: $03
	add c                                            ; $5722: $81
	ldh [rSCX], a                                    ; $5723: $e0 $43

jr_03c_5725:
	ld a, $ff                                        ; $5725: $3e $ff
	ret z                                            ; $5727: $c8

	push de                                          ; $5728: $d5
	ld a, [hl+]                                      ; $5729: $2a
	ld d, e                                          ; $572a: $53
	cp $80                                           ; $572b: $fe $80
	nop                                              ; $572d: $00
	cp $f7                                           ; $572e: $fe $f7
	xor e                                            ; $5730: $ab
	push de                                          ; $5731: $d5
	xor [hl]                                         ; $5732: $ae
	pop bc                                           ; $5733: $c1
	ld a, c                                          ; $5734: $79
	ld bc, $0079                                     ; $5735: $01 $79 $00
	ld [hl], a                                       ; $5738: $77
	ld c, d                                          ; $5739: $4a
	ld [hl], c                                       ; $573a: $71
	add d                                            ; $573b: $82
	ld a, a                                          ; $573c: $7f
	adc b                                            ; $573d: $88
	sub [hl]                                         ; $573e: $96
	ld e, a                                          ; $573f: $5f
	ld a, a                                          ; $5740: $7f
	ld a, a                                          ; $5741: $7f
	cp a                                             ; $5742: $bf
	xor a                                            ; $5743: $af
	nop                                              ; $5744: $00
	rst FarCall                                          ; $5745: $f7
	ld bc, $fe21                                     ; $5746: $01 $21 $fe
	sub h                                            ; $5749: $94
	db $10                                           ; $574a: $10
	rst $38                                          ; $574b: $ff
	ld [$6a55], sp                                   ; $574c: $08 $55 $6a
	xor b                                            ; $574f: $a8
	sub [hl]                                         ; $5750: $96
	push de                                          ; $5751: $d5
	jp z, $e529                                      ; $5752: $ca $29 $e5

	halt                                             ; $5755: $76
	ld d, e                                          ; $5756: $53
	sub a                                            ; $5757: $97
	ld a, [hl]                                       ; $5758: $7e
	ld a, a                                          ; $5759: $7f

jr_03c_575a:
	rst $38                                          ; $575a: $ff
	ccf                                              ; $575b: $3f
	ldh a, [$f8]                                     ; $575c: $f0 $f8
	db $fd                                           ; $575e: $fd
	db $fc                                           ; $575f: $fc
	ld [hl], a                                       ; $5760: $77
	cp $de                                           ; $5761: $fe $de
	add b                                            ; $5763: $80
	call c, $7f83                                    ; $5764: $dc $83 $7f
	xor b                                            ; $5767: $a8
	ld [hl], h                                       ; $5768: $74
	push bc                                          ; $5769: $c5
	ld a, [hl]                                       ; $576a: $7e
	cp l                                             ; $576b: $bd
	sbc [hl]                                         ; $576c: $9e
	ccf                                              ; $576d: $3f
	ld l, [hl]                                       ; $576e: $6e
	scf                                              ; $576f: $37
	ld a, e                                          ; $5770: $7b
	adc c                                            ; $5771: $89
	ld a, a                                          ; $5772: $7f
	ld d, a                                          ; $5773: $57
	add b                                            ; $5774: $80
	ld [hl], h                                       ; $5775: $74
	ldh [$c0], a                                     ; $5776: $e0 $c0
	add c                                            ; $5778: $81
	rst $38                                          ; $5779: $ff
	rra                                              ; $577a: $1f
	inc bc                                           ; $577b: $03
	db $fc                                           ; $577c: $fc
	ld hl, sp-$01                                    ; $577d: $f8 $ff
	ldh a, [$e7]                                     ; $577f: $f0 $e7
	rst $38                                          ; $5781: $ff
	push bc                                          ; $5782: $c5
	db $fc                                           ; $5783: $fc
	dec b                                            ; $5784: $05
	ld b, $81                                        ; $5785: $06 $81
	ld b, $f1                                        ; $5787: $06 $f1
	rst $38                                          ; $5789: $ff
	rst $38                                          ; $578a: $ff
	db $e3                                           ; $578b: $e3
	ld [bc], a                                       ; $578c: $02
	add hl, sp                                       ; $578d: $39
	cp $00                                           ; $578e: $fe $00
	ret nz                                           ; $5790: $c0

	rst $38                                          ; $5791: $ff
	ld d, c                                          ; $5792: $51
	xor d                                            ; $5793: $aa
	add b                                            ; $5794: $80
	ld d, a                                          ; $5795: $57
	and b                                            ; $5796: $a0
	ld [bc], a                                       ; $5797: $02
	dec e                                            ; $5798: $1d
	add b                                            ; $5799: $80
	rst $38                                          ; $579a: $ff
	cp $d5                                           ; $579b: $fe $d5
	xor b                                            ; $579d: $a8
	ld b, c                                          ; $579e: $41
	nop                                              ; $579f: $00
	ld [bc], a                                       ; $57a0: $02
	ld a, a                                          ; $57a1: $7f
	push af                                          ; $57a2: $f5
	adc b                                            ; $57a3: $88
	ld [$a954], a                                    ; $57a4: $ea $54 $a9
	ld [hl+], a                                      ; $57a7: $22
	ld c, a                                          ; $57a8: $4f

jr_03c_57a9:
	jr jr_03c_57a9                                   ; $57a9: $18 $fe

	ld b, $15                                        ; $57ab: $06 $15
	xor e                                            ; $57ad: $ab
	ld d, a                                          ; $57ae: $57
	dec e                                            ; $57af: $1d
	or b                                             ; $57b0: $b0
	pop hl                                           ; $57b1: $e1
	ld a, d                                          ; $57b2: $7a
	sub c                                            ; $57b3: $91
	sub a                                            ; $57b4: $97
	nop                                              ; $57b5: $00
	cp b                                             ; $57b6: $b8
	nop                                              ; $57b7: $00
	jr z, @+$55                                      ; $57b8: $28 $53

	inc b                                            ; $57ba: $04
	dec b                                            ; $57bb: $05
	ld l, [hl]                                       ; $57bc: $6e
	ld [hl], l                                       ; $57bd: $75
	ld hl, sp-$6b                                    ; $57be: $f8 $95
	and b                                            ; $57c0: $a0
	ld hl, sp+$30                                    ; $57c1: $f8 $30
	or b                                             ; $57c3: $b0
	jr nz, jr_03c_57cb                               ; $57c4: $20 $05

	ld a, d                                          ; $57c6: $7a
	ldh a, [$c3]                                     ; $57c7: $f0 $c3
	ld h, h                                          ; $57c9: $64
	ld a, e                                          ; $57ca: $7b

jr_03c_57cb:
	sbc b                                            ; $57cb: $98
	add b                                            ; $57cc: $80
	ld a, [$0085]                                    ; $57cd: $fa $85 $00
	jr nz, jr_03c_57ed                               ; $57d0: $20 $1b

	ld [$2e40], sp                                   ; $57d2: $08 $40 $2e
	rlca                                             ; $57d5: $07
	cp c                                             ; $57d6: $b9
	db $fc                                           ; $57d7: $fc
	add e                                            ; $57d8: $83
	cpl                                              ; $57d9: $2f
	rst $38                                          ; $57da: $ff
	rst $38                                          ; $57db: $ff
	pop af                                           ; $57dc: $f1
	ld hl, sp+$40                                    ; $57dd: $f8 $40
	nop                                              ; $57df: $00
	ld a, h                                          ; $57e0: $7c
	ret nc                                           ; $57e1: $d0

	inc a                                            ; $57e2: $3c
	ld d, l                                          ; $57e3: $55
	xor b                                            ; $57e4: $a8
	push de                                          ; $57e5: $d5
	ld c, b                                          ; $57e6: $48
	inc [hl]                                         ; $57e7: $34
	rst SubAFromHL                                          ; $57e8: $d7
	ld [$aaff], sp                                   ; $57e9: $08 $ff $aa
	adc [hl]                                         ; $57ec: $8e

jr_03c_57ed:
	ld d, c                                          ; $57ed: $51
	jr nz, jr_03c_5800                               ; $57ee: $20 $10

	ld [$f708], sp                                   ; $57f0: $08 $08 $f7
	nop                                              ; $57f3: $00
	ld d, h                                          ; $57f4: $54
	dec hl                                           ; $57f5: $2b
	ld d, l                                          ; $57f6: $55
	nop                                              ; $57f7: $00
	dec b                                            ; $57f8: $05
	xor d                                            ; $57f9: $aa
	ld a, b                                          ; $57fa: $78
	rst $38                                          ; $57fb: $ff
	xor e                                            ; $57fc: $ab

Call_03c_57fd:
	ld d, b                                          ; $57fd: $50
	ld [hl], e                                       ; $57fe: $73
	cpl                                              ; $57ff: $2f

jr_03c_5800:
	sub h                                            ; $5800: $94
	jr nz, @-$79                                     ; $5801: $20 $85

	xor d                                            ; $5803: $aa
	ld [hl], l                                       ; $5804: $75
	ld a, [hl+]                                      ; $5805: $2a
	rst SubAFromBC                                          ; $5806: $e7
	inc a                                            ; $5807: $3c
	ld h, a                                          ; $5808: $67
	rst $38                                          ; $5809: $ff
	ld a, d                                          ; $580a: $7a
	ld d, c                                          ; $580b: $51
	cp $92                                           ; $580c: $fe $92
	jp $03f8                                         ; $580e: $c3 $f8 $03


	ld [hl], $d9                                     ; $5811: $36 $d9
	xor h                                            ; $5813: $ac
	ld de, $c200                                     ; $5814: $11 $00 $c2
	dec a                                            ; $5817: $3d
	cp $cc                                           ; $5818: $fe $cc
	inc c                                            ; $581a: $0c
	ld a, d                                          ; $581b: $7a
	ld a, b                                          ; $581c: $78
	add b                                            ; $581d: $80
	ld bc, $4fc3                                     ; $581e: $01 $c3 $4f
	sub l                                            ; $5821: $95
	ld h, e                                          ; $5822: $63
	add h                                            ; $5823: $84
	ld b, d                                          ; $5824: $42
	ld [hl], e                                       ; $5825: $73
	pop bc                                           ; $5826: $c1
	jp hl                                            ; $5827: $e9


	inc bc                                           ; $5828: $03
	rlca                                             ; $5829: $07
	ld b, $18                                        ; $582a: $06 $18
	sbc h                                            ; $582c: $9c
	adc h                                            ; $582d: $8c
	ld a, $f0                                        ; $582e: $3e $f0
	call $008d                                       ; $5830: $cd $8d $00
	scf                                              ; $5833: $37
	ld a, $c3                                        ; $5834: $3e $c3
	jr nc, jr_03c_5839                               ; $5836: $30 $01

	add l                                            ; $5838: $85

jr_03c_5839:
	dec b                                            ; $5839: $05
	nop                                              ; $583a: $00
	ld b, $2f                                        ; $583b: $06 $2f
	sbc e                                            ; $583d: $9b
	ld a, h                                          ; $583e: $7c
	ret nz                                           ; $583f: $c0

	ld bc, $78fe                                     ; $5840: $01 $fe $78
	adc l                                            ; $5843: $8d
	ld a, [hl]                                       ; $5844: $7e
	ld sp, hl                                        ; $5845: $f9
	ld a, a                                          ; $5846: $7f
	cp b                                             ; $5847: $b8
	sbc [hl]                                         ; $5848: $9e
	ret c                                            ; $5849: $d8

	ld a, b                                          ; $584a: $78
	dec a                                            ; $584b: $3d
	adc e                                            ; $584c: $8b
	rst $38                                          ; $584d: $ff
	rrca                                             ; $584e: $0f
	nop                                              ; $584f: $00
	nop                                              ; $5850: $00
	ld c, a                                          ; $5851: $4f
	and c                                            ; $5852: $a1
	ld [$2a55], sp                                   ; $5853: $08 $55 $2a
	inc e                                            ; $5856: $1c
	ld [hl], c                                       ; $5857: $71
	cp $30                                           ; $5858: $fe $30
	ld e, $77                                        ; $585a: $1e $77
	xor d                                            ; $585c: $aa
	push de                                          ; $585d: $d5
	db $e3                                           ; $585e: $e3
	ld a, [hl]                                       ; $585f: $7e
	rst $38                                          ; $5860: $ff
	sbc $05                                          ; $5861: $de $05
	sbc $02                                          ; $5863: $de $02
	rst SubAFromDE                                          ; $5865: $df
	dec b                                            ; $5866: $05
	ld sp, hl                                        ; $5867: $f9
	add a                                            ; $5868: $87
	ld d, a                                          ; $5869: $57
	ld e, [hl]                                       ; $586a: $5e
	ld e, d                                          ; $586b: $5a
	cp d                                             ; $586c: $ba
	cp [hl]                                          ; $586d: $be
	cp l                                             ; $586e: $bd
	ld e, l                                          ; $586f: $5d
	ld e, [hl]                                       ; $5870: $5e
	ld [$0400], sp                                   ; $5871: $08 $00 $04
	inc b                                            ; $5874: $04
	nop                                              ; $5875: $00
	ld [bc], a                                       ; $5876: $02
	ld [bc], a                                       ; $5877: $02
	ld bc, $72f2                                     ; $5878: $01 $f2 $72
	ld a, c                                          ; $587b: $79
	ld a, c                                          ; $587c: $79
	inc a                                            ; $587d: $3c
	inc a                                            ; $587e: $3c
	ld a, $3d                                        ; $587f: $3e $3d
	ld a, c                                          ; $5881: $79
	ld [hl], c                                       ; $5882: $71
	sbc l                                            ; $5883: $9d
	rrca                                             ; $5884: $0f
	rlca                                             ; $5885: $07
	ld a, c                                          ; $5886: $79
	ld [hl], b                                       ; $5887: $70
	add l                                            ; $5888: $85
	db $fd                                           ; $5889: $fd
	cp h                                             ; $588a: $bc
	ld a, l                                          ; $588b: $7d
	inc a                                            ; $588c: $3c
	cp l                                             ; $588d: $bd
	sbc h                                            ; $588e: $9c
	ld e, l                                          ; $588f: $5d
	ld c, a                                          ; $5890: $4f
	add e                                            ; $5891: $83
	jp $e3c3                                         ; $5892: $c3 $c3 $e3


	db $e3                                           ; $5895: $e3
	di                                               ; $5896: $f3
	ei                                               ; $5897: $fb
	ei                                               ; $5898: $fb
	ld d, a                                          ; $5899: $57
	xor e                                            ; $589a: $ab
	ld e, c                                          ; $589b: $59
	xor h                                            ; $589c: $ac
	ld e, [hl]                                       ; $589d: $5e
	cp a                                             ; $589e: $bf
	ld e, a                                          ; $589f: $5f
	rst FarCall                                          ; $58a0: $f7
	rst $38                                          ; $58a1: $ff
	db $fc                                           ; $58a2: $fc
	db $db                                           ; $58a3: $db
	ld hl, sp+$7f                                    ; $58a4: $f8 $7f
	sub [hl]                                         ; $58a6: $96
	sbc c                                            ; $58a7: $99
	ldh [$f3], a                                     ; $58a8: $e0 $f3
	dec [hl]                                         ; $58aa: $35
	ld a, [de]                                       ; $58ab: $1a
	adc l                                            ; $58ac: $8d
	ret nz                                           ; $58ad: $c0

	ld a, d                                          ; $58ae: $7a
	ld l, a                                          ; $58af: $6f
	ld a, a                                          ; $58b0: $7f
	jp nc, $8a7c                                     ; $58b1: $d2 $7c $8a

	halt                                             ; $58b4: $76
	ld l, l                                          ; $58b5: $6d
	ld a, d                                          ; $58b6: $7a
	and b                                            ; $58b7: $a0
	ld a, d                                          ; $58b8: $7a
	sbc e                                            ; $58b9: $9b
	ld l, [hl]                                       ; $58ba: $6e
	and b                                            ; $58bb: $a0
	ld a, a                                          ; $58bc: $7f
	ld [hl], h                                       ; $58bd: $74
	add [hl]                                         ; $58be: $86
	push af                                          ; $58bf: $f5
	ld [bc], a                                       ; $58c0: $02
	pop hl                                           ; $58c1: $e1
	ld [hl], b                                       ; $58c2: $70
	cp d                                             ; $58c3: $ba
	db $fd                                           ; $58c4: $fd
	rst $38                                          ; $58c5: $ff
	rst $38                                          ; $58c6: $ff
	ld b, $03                                        ; $58c7: $06 $03
	pop af                                           ; $58c9: $f1
	ld hl, sp-$04                                    ; $58ca: $f8 $fc
	cp $00                                           ; $58cc: $fe $00
	ld c, b                                          ; $58ce: $48
	push af                                          ; $58cf: $f5
	inc bc                                           ; $58d0: $03
	rst $38                                          ; $58d1: $ff
	add sp, $75                                      ; $58d2: $e8 $75
	jr jr_03c_58d6                                   ; $58d4: $18 $00

jr_03c_58d6:
	add b                                            ; $58d6: $80
	dec bc                                           ; $58d7: $0b
	sbc $ff                                          ; $58d8: $de $ff
	sub l                                            ; $58da: $95
	ld a, [hl]                                       ; $58db: $7e
	ccf                                              ; $58dc: $3f
	rra                                              ; $58dd: $1f
	inc [hl]                                         ; $58de: $34
	rst FarCall                                          ; $58df: $f7
	nop                                              ; $58e0: $00
	ld a, [hl+]                                      ; $58e1: $2a
	db $f4                                           ; $58e2: $f4
	ld l, d                                          ; $58e3: $6a
	dec [hl]                                         ; $58e4: $35
	ld a, c                                          ; $58e5: $79
	ld [hl], l                                       ; $58e6: $75
	sub b                                            ; $58e7: $90
	rst $38                                          ; $58e8: $ff
	push de                                          ; $58e9: $d5
	dec bc                                           ; $58ea: $0b
	dec d                                            ; $58eb: $15
	ld a, [bc]                                       ; $58ec: $0a
	nop                                              ; $58ed: $00
	ld l, a                                          ; $58ee: $6f
	rst AddAOntoHL                                          ; $58ef: $ef
	nop                                              ; $58f0: $00
	ld h, b                                          ; $58f1: $60
	dec d                                            ; $58f2: $15
	cpl                                              ; $58f3: $2f
	ld a, h                                          ; $58f4: $7c
	di                                               ; $58f5: $f3
	ld l, a                                          ; $58f6: $6f
	ld a, c                                          ; $58f7: $79
	ld d, c                                          ; $58f8: $51
	add e                                            ; $58f9: $83
	ld [$83d0], a                                    ; $58fa: $ea $d0 $83
	inc c                                            ; $58fd: $0c
	adc a                                            ; $58fe: $8f
	rst AddAOntoHL                                          ; $58ff: $ef
	nop                                              ; $5900: $00
	add a                                            ; $5901: $87
	ld d, b                                          ; $5902: $50
	ld a, [hl+]                                      ; $5903: $2a
	rst FarCall                                          ; $5904: $f7
	ccf                                              ; $5905: $3f
	sbc a                                            ; $5906: $9f
	rst $38                                          ; $5907: $ff
	rst $38                                          ; $5908: $ff
	ld a, b                                          ; $5909: $78
	xor a                                            ; $590a: $af
	push de                                          ; $590b: $d5
	ld [$7700], sp                                   ; $590c: $08 $00 $77
	rst FarCall                                          ; $590f: $f7
	nop                                              ; $5910: $00
	ld d, [hl]                                       ; $5911: $56
	cp c                                             ; $5912: $b9
	ld c, [hl]                                       ; $5913: $4e
	xor a                                            ; $5914: $af
	push af                                          ; $5915: $f5
	ld a, e                                          ; $5916: $7b
	sbc [hl]                                         ; $5917: $9e
	sub c                                            ; $5918: $91
	xor c                                            ; $5919: $a9
	ld b, b                                          ; $591a: $40
	or b                                             ; $591b: $b0
	ld d, b                                          ; $591c: $50
	ld a, [bc]                                       ; $591d: $0a
	xor $f7                                          ; $591e: $ee $f7
	nop                                              ; $5920: $00
	ld b, b                                          ; $5921: $40
	ld [$ea75], a                                    ; $5922: $ea $75 $ea
	ld e, a                                          ; $5925: $5f
	xor $79                                          ; $5926: $ee $79
	ld [hl], b                                       ; $5928: $70
	ld a, a                                          ; $5929: $7f
	pop bc                                           ; $592a: $c1
	sub h                                            ; $592b: $94
	dec d                                            ; $592c: $15
	and b                                            ; $592d: $a0
	call c, $3eed                                    ; $592e: $dc $ed $3e
	nop                                              ; $5931: $00

jr_03c_5932:
	and c                                            ; $5932: $a1
	ld c, a                                          ; $5933: $4f
	sbc b                                            ; $5934: $98
	inc sp                                           ; $5935: $33
	db $e3                                           ; $5936: $e3
	sbc $ff                                          ; $5937: $de $ff
	sub b                                            ; $5939: $90
	ld e, [hl]                                       ; $593a: $5e
	or b                                             ; $593b: $b0
	ld h, b                                          ; $593c: $60
	ret nz                                           ; $593d: $c0

	ld bc, $fce0                                     ; $593e: $01 $e0 $fc
	ccf                                              ; $5941: $3f
	adc a                                            ; $5942: $8f
	ldh [$fc], a                                     ; $5943: $e0 $fc
	adc b                                            ; $5945: $88
	cp $e3                                           ; $5946: $fe $e3
	db $fc                                           ; $5948: $fc
	ld a, c                                          ; $5949: $79
	ld a, [hl]                                       ; $594a: $7e
	sub d                                            ; $594b: $92
	inc bc                                           ; $594c: $03
	ld [hl], a                                       ; $594d: $77
	ret nz                                           ; $594e: $c0

	rrca                                             ; $594f: $0f
	jr c, jr_03c_5932                                ; $5950: $38 $e0

	inc bc                                           ; $5952: $03
	inc e                                            ; $5953: $1c
	ld hl, $306c                                     ; $5954: $21 $6c $30
	rst GetHLinHL                                          ; $5957: $cf
	ccf                                              ; $5958: $3f
	ld a, c                                          ; $5959: $79
	ld e, [hl]                                       ; $595a: $5e
	add l                                            ; $595b: $85
	ret nz                                           ; $595c: $c0

	add e                                            ; $595d: $83
	sbc b                                            ; $595e: $98
	rrca                                             ; $595f: $0f
	rst $38                                          ; $5960: $ff
	ld [$0ac5], a                                    ; $5961: $ea $c5 $0a
	ret nc                                           ; $5964: $d0

	add l                                            ; $5965: $85
	add a                                            ; $5966: $87
	rst $38                                          ; $5967: $ff
	ld a, a                                          ; $5968: $7f
	push de                                          ; $5969: $d5
	ld [bc], a                                       ; $596a: $02
	dec d                                            ; $596b: $15
	xor a                                            ; $596c: $af
	ld a, d                                          ; $596d: $7a
	ldh a, [$df]                                     ; $596e: $f0 $df
	add a                                            ; $5970: $87
	db $10                                           ; $5971: $10
	dec hl                                           ; $5972: $2b
	ld d, l                                          ; $5973: $55
	xor b                                            ; $5974: $a8
	ld c, c                                          ; $5975: $49
	sbc $ff                                          ; $5976: $de $ff
	add d                                            ; $5978: $82
	rst AddAOntoHL                                          ; $5979: $ef
	call nc, $57aa                                   ; $597a: $d4 $aa $57
	or [hl]                                          ; $597d: $b6
	rst $38                                          ; $597e: $ff
	jr nc, jr_03c_5981                               ; $597f: $30 $00

jr_03c_5981:
	ld a, h                                          ; $5981: $7c
	add l                                            ; $5982: $85
	ld l, d                                          ; $5983: $6a
	ld d, l                                          ; $5984: $55
	xor [hl]                                         ; $5985: $ae
	rra                                              ; $5986: $1f
	rst GetHLinHL                                          ; $5987: $cf
	rst $38                                          ; $5988: $ff
	add e                                            ; $5989: $83
	ld [bc], a                                       ; $598a: $02
	sub l                                            ; $598b: $95
	xor d                                            ; $598c: $aa
	ld d, c                                          ; $598d: $51
	dec b                                            ; $598e: $05
	rra                                              ; $598f: $1f
	rst $38                                          ; $5990: $ff
	rra                                              ; $5991: $1f
	dec b                                            ; $5992: $05
	dec b                                            ; $5993: $05
	ld bc, $f902                                     ; $5994: $01 $02 $f9
	sbc [hl]                                         ; $5997: $9e
	ld e, [hl]                                       ; $5998: $5e
	ld a, e                                          ; $5999: $7b
	db $10                                           ; $599a: $10
	sbc c                                            ; $599b: $99
	ld a, [hl]                                       ; $599c: $7e
	ld e, [hl]                                       ; $599d: $5e
	ld e, [hl]                                       ; $599e: $5e
	cp [hl]                                          ; $599f: $be
	ld bc, $6d01                                     ; $59a0: $01 $01 $6d
	ld l, l                                          ; $59a3: $6d
	sub a                                            ; $59a4: $97
	cp a                                             ; $59a5: $bf
	cp $00                                           ; $59a6: $fe $00
	rst SubAFromDE                                          ; $59a8: $df
	ld e, a                                          ; $59a9: $5f
	sbc a                                            ; $59aa: $9f
	sbc l                                            ; $59ab: $9d
	ld e, h                                          ; $59ac: $5c
	ld a, e                                          ; $59ad: $7b
	ldh a, [$df]                                     ; $59ae: $f0 $df
	add b                                            ; $59b0: $80
	sbc $40                                          ; $59b1: $de $40
	add b                                            ; $59b3: $80
	inc h                                            ; $59b4: $24
	sub l                                            ; $59b5: $95
	or d                                             ; $59b6: $b2
	ld c, d                                          ; $59b7: $4a
	reti                                             ; $59b8: $d9


	and h                                            ; $59b9: $a4
	db $ec                                           ; $59ba: $ec
	jp nc, $feff                                     ; $59bb: $d2 $ff $fe

	rst SubAFromDE                                          ; $59be: $df
	rst $38                                          ; $59bf: $ff
	ld l, a                                          ; $59c0: $6f
	ld a, a                                          ; $59c1: $7f
	scf                                              ; $59c2: $37
	ccf                                              ; $59c3: $3f
	rlca                                             ; $59c4: $07
	rlca                                             ; $59c5: $07
	add a                                            ; $59c6: $87
	add a                                            ; $59c7: $87
	ld b, a                                          ; $59c8: $47
	rst SubAFromBC                                          ; $59c9: $e7
	and a                                            ; $59ca: $a7
	ld [hl], a                                       ; $59cb: $77
	ld hl, sp-$08                                    ; $59cc: $f8 $f8
	ld a, b                                          ; $59ce: $78
	ld a, b                                          ; $59cf: $78
	cp b                                             ; $59d0: $b8
	sbc b                                            ; $59d1: $98
	ret c                                            ; $59d2: $d8

	sbc c                                            ; $59d3: $99
	ret z                                            ; $59d4: $c8

	ldh [$e0], a                                     ; $59d5: $e0 $e0
	ldh [c], a                                       ; $59d7: $e2
	db $e4                                           ; $59d8: $e4
	ldh [$7b], a                                     ; $59d9: $e0 $7b
	cp $7e                                           ; $59db: $fe $7e
	jp nz, $0fdb                                     ; $59dd: $c2 $db $0f

	rst $38                                          ; $59e0: $ff
	ld a, l                                          ; $59e1: $7d
	inc sp                                           ; $59e2: $33
	ld l, l                                          ; $59e3: $6d
	dec h                                            ; $59e4: $25
	db $db                                           ; $59e5: $db
	rst $38                                          ; $59e6: $ff
	ld a, e                                          ; $59e7: $7b
	rst FarCall                                          ; $59e8: $f7
	ld a, [hl]                                       ; $59e9: $7e
	ld c, a                                          ; $59ea: $4f
	sbc h                                            ; $59eb: $9c
	dec b                                            ; $59ec: $05
	ld a, [hl+]                                      ; $59ed: $2a
	ld d, l                                          ; $59ee: $55
	ld h, a                                          ; $59ef: $67
	ldh a, [$80]                                     ; $59f0: $f0 $80
	dec b                                            ; $59f2: $05
	ld a, [bc]                                       ; $59f3: $0a
	pop af                                           ; $59f4: $f1
	ld [hl], d                                       ; $59f5: $72
	or c                                             ; $59f6: $b1
	ld [hl], b                                       ; $59f7: $70
	jp hl                                            ; $59f8: $e9


	call nc, $f50a                                   ; $59f9: $d4 $0a $f5
	cp $fd                                           ; $59fc: $fe $fd
	cp $ff                                           ; $59fe: $fe $ff
	or $ab                                           ; $5a00: $f6 $ab
	ld e, h                                          ; $5a02: $5c
	cp a                                             ; $5a03: $bf
	ld h, l                                          ; $5a04: $65
	cp $55                                           ; $5a05: $fe $55
	and b                                            ; $5a07: $a0
	ld b, b                                          ; $5a08: $40
	nop                                              ; $5a09: $00
	and c                                            ; $5a0a: $a1
	ld b, b                                          ; $5a0b: $40
	add e                                            ; $5a0c: $83
	ld bc, $5faa                                     ; $5a0d: $01 $aa $5f
	cp a                                             ; $5a10: $bf
	add b                                            ; $5a11: $80
	rst $38                                          ; $5a12: $ff
	add d                                            ; $5a13: $82
	inc c                                            ; $5a14: $0c
	ld e, a                                          ; $5a15: $5f
	xor a                                            ; $5a16: $af
	rla                                              ; $5a17: $17
	ld a, [bc]                                       ; $5a18: $0a
	dec b                                            ; $5a19: $05
	ld [bc], a                                       ; $5a1a: $02
	ld a, h                                          ; $5a1b: $7c
	ldh a, [$a0]                                     ; $5a1c: $f0 $a0
	ld d, b                                          ; $5a1e: $50
	add sp, -$0b                                     ; $5a1f: $e8 $f5
	ld a, [$22fd]                                    ; $5a21: $fa $fd $22
	ret                                              ; $5a24: $c9


	sbc a                                            ; $5a25: $9f
	cp [hl]                                          ; $5a26: $be
	push af                                          ; $5a27: $f5
	xor b                                            ; $5a28: $a8
	ld d, b                                          ; $5a29: $50
	nop                                              ; $5a2a: $00
	dec e                                            ; $5a2b: $1d
	ld [hl], $60                                     ; $5a2c: $36 $60
	ld b, c                                          ; $5a2e: $41
	ld a, [bc]                                       ; $5a2f: $0a
	ld d, a                                          ; $5a30: $57
	add b                                            ; $5a31: $80
	xor a                                            ; $5a32: $af
	rst $38                                          ; $5a33: $ff
	and b                                            ; $5a34: $a0
	ld e, b                                          ; $5a35: $58
	db $f4                                           ; $5a36: $f4
	ld a, a                                          ; $5a37: $7f
	xor d                                            ; $5a38: $aa

jr_03c_5a39:
	ld d, l                                          ; $5a39: $55
	ld [bc], a                                       ; $5a3a: $02
	ld bc, $a75f                                     ; $5a3b: $01 $5f $a7
	dec bc                                           ; $5a3e: $0b
	add b                                            ; $5a3f: $80
	ld d, l                                          ; $5a40: $55
	xor d                                            ; $5a41: $aa
	db $fd                                           ; $5a42: $fd
	cp $17                                           ; $5a43: $fe $17
	xor a                                            ; $5a45: $af
	jr jr_03c_5a39                                   ; $5a46: $18 $f1

	ld a, a                                          ; $5a48: $7f
	db $fd                                           ; $5a49: $fd
	cp d                                             ; $5a4a: $ba
	ld d, h                                          ; $5a4b: $54
	add sp, $50                                      ; $5a4c: $e8 $50
	ldh [rP1], a                                     ; $5a4e: $e0 $00
	add b                                            ; $5a50: $80
	add l                                            ; $5a51: $85
	ld [bc], a                                       ; $5a52: $02
	ld b, l                                          ; $5a53: $45
	xor e                                            ; $5a54: $ab
	rst $38                                          ; $5a55: $ff
	db $e3                                           ; $5a56: $e3
	ld a, a                                          ; $5a57: $7f
	rst FarCall                                          ; $5a58: $f7
	and d                                            ; $5a59: $a2
	ld c, a                                          ; $5a5a: $4f
	ld a, [bc]                                       ; $5a5b: $0a
	nop                                              ; $5a5c: $00
	nop                                              ; $5a5d: $00
	inc e                                            ; $5a5e: $1c
	nop                                              ; $5a5f: $00
	ld [$b05c], sp                                   ; $5a60: $08 $5c $b0
	push af                                          ; $5a63: $f5
	rst $38                                          ; $5a64: $ff
	rst $38                                          ; $5a65: $ff
	ldh a, [$e0]                                     ; $5a66: $f0 $e0
	add l                                            ; $5a68: $85
	ld l, $dd                                        ; $5a69: $2e $dd
	xor d                                            ; $5a6b: $aa
	db $fc                                           ; $5a6c: $fc
	adc b                                            ; $5a6d: $88
	ld bc, $5522                                     ; $5a6e: $01 $22 $55
	rst $38                                          ; $5a71: $ff
	pop bc                                           ; $5a72: $c1
	add sp, $16                                      ; $5a73: $e8 $16
	ld a, l                                          ; $5a75: $7d
	ld a, [$1075]                                    ; $5a76: $fa $75 $10
	nop                                              ; $5a79: $00
	ld a, $17                                        ; $5a7a: $3e $17
	add hl, bc                                       ; $5a7c: $09
	ld [bc], a                                       ; $5a7d: $02
	dec b                                            ; $5a7e: $05
	adc d                                            ; $5a7f: $8a
	rst AddAOntoHL                                          ; $5a80: $ef
	rst $38                                          ; $5a81: $ff
	ld a, [bc]                                       ; $5a82: $0a
	inc d                                            ; $5a83: $14
	xor d                                            ; $5a84: $aa
	ld [hl], c                                       ; $5a85: $71
	ld b, a                                          ; $5a86: $47
	sbc e                                            ; $5a87: $9b
	push af                                          ; $5a88: $f5
	db $eb                                           ; $5a89: $eb
	ld d, l                                          ; $5a8a: $55
	xor a                                            ; $5a8b: $af
	db $dd                                           ; $5a8c: $dd
	rst $38                                          ; $5a8d: $ff
	sbc h                                            ; $5a8e: $9c
	ld [bc], a                                       ; $5a8f: $02
	ld d, l                                          ; $5a90: $55
	and d                                            ; $5a91: $a2
	ld a, b                                          ; $5a92: $78
	ld hl, $9bff                                     ; $5a93: $21 $ff $9b
	db $fc                                           ; $5a96: $fc
	xor b                                            ; $5a97: $a8
	ld e, l                                          ; $5a98: $5d
	rst AddAOntoHL                                          ; $5a99: $ef
	db $dd                                           ; $5a9a: $dd
	rst $38                                          ; $5a9b: $ff
	sbc h                                            ; $5a9c: $9c
	cpl                                              ; $5a9d: $2f
	rra                                              ; $5a9e: $1f
	ld [$7ffc], sp                                   ; $5a9f: $08 $fc $7f
	and c                                            ; $5aa2: $a1
	ld a, l                                          ; $5aa3: $7d
	call $ffdd                                       ; $5aa4: $cd $dd $ff
	ld h, $00                                        ; $5aa7: $26 $00
	sbc h                                            ; $5aa9: $9c
	halt                                             ; $5aaa: $76
	ld h, [hl]                                       ; $5aab: $66
	ld h, a                                          ; $5aac: $67
	ld a, e                                          ; $5aad: $7b
	cp $dc                                           ; $5aae: $fe $dc
	ld h, [hl]                                       ; $5ab0: $66
	sbc l                                            ; $5ab1: $9d
	ld h, h                                          ; $5ab2: $64
	ld b, l                                          ; $5ab3: $45
	ret c                                            ; $5ab4: $d8

	ld h, [hl]                                       ; $5ab5: $66
	jp c, $9e77                                      ; $5ab6: $da $77 $9e

	ld [hl], h                                       ; $5ab9: $74
	sbc $66                                          ; $5aba: $de $66
	call c, $9d44                                    ; $5abc: $dc $44 $9d
	ld b, l                                          ; $5abf: $45
	ld d, a                                          ; $5ac0: $57
	db $dd                                           ; $5ac1: $dd
	ld h, [hl]                                       ; $5ac2: $66
	sbc [hl]                                         ; $5ac3: $9e
	ld h, a                                          ; $5ac4: $67
	ld [hl], a                                       ; $5ac5: $77
	db $ed                                           ; $5ac6: $ed
	sbc [hl]                                         ; $5ac7: $9e
	ld b, a                                          ; $5ac8: $47
	db $dd                                           ; $5ac9: $dd
	ld h, [hl]                                       ; $5aca: $66
	db $db                                           ; $5acb: $db
	ld b, h                                          ; $5acc: $44
	dec c                                            ; $5acd: $0d
	add c                                            ; $5ace: $81
	rst $38                                          ; $5acf: $ff
	sbc $ff                                          ; $5ad0: $de $ff
	sbc [hl]                                         ; $5ad2: $9e
	call z, $fa73                                    ; $5ad3: $cc $73 $fa
	call c, Call_03c_73ff                            ; $5ad6: $dc $ff $73
	or $9d                                           ; $5ad9: $f6 $9d
	jp z, Jump_03c_4f01                              ; $5adb: $ca $01 $4f

	ldh a, [$9c]                                     ; $5ade: $f0 $9c
	xor e                                            ; $5ae0: $ab
	ld d, a                                          ; $5ae1: $57
	ld a, [bc]                                       ; $5ae2: $0a
	ld e, a                                          ; $5ae3: $5f
	ldh a, [$de]                                     ; $5ae4: $f0 $de
	db $fc                                           ; $5ae6: $fc
	sbc d                                            ; $5ae7: $9a
	cp h                                             ; $5ae8: $bc
	ld e, h                                          ; $5ae9: $5c
	xor h                                            ; $5aea: $ac
	rst $38                                          ; $5aeb: $ff
	rst $38                                          ; $5aec: $ff
	db $db                                           ; $5aed: $db
	ei                                               ; $5aee: $fb
	ld sp, hl                                        ; $5aef: $f9
	ld e, a                                          ; $5af0: $5f
	ldh [$dc], a                                     ; $5af1: $e0 $dc
	rra                                              ; $5af3: $1f
	sbc [hl]                                         ; $5af4: $9e
	ld e, $53                                        ; $5af5: $1e $53
	ret nz                                           ; $5af7: $c0

	sbc h                                            ; $5af8: $9c
	xor d                                            ; $5af9: $aa
	ld d, l                                          ; $5afa: $55
	xor d                                            ; $5afb: $aa
	ld d, e                                          ; $5afc: $53
	ldh a, [$9e]                                     ; $5afd: $f0 $9e
	add b                                            ; $5aff: $80
	ld c, e                                          ; $5b00: $4b
	sub b                                            ; $5b01: $90
	ld d, e                                          ; $5b02: $53
	ret nz                                           ; $5b03: $c0

	ld c, a                                          ; $5b04: $4f
	ldh a, [$df]                                     ; $5b05: $f0 $df
	inc bc                                           ; $5b07: $03
	sbc $ff                                          ; $5b08: $de $ff
	sbc $0f                                          ; $5b0a: $de $0f
	ld e, a                                          ; $5b0c: $5f
	ldh [$fd], a                                     ; $5b0d: $e0 $fd
	ld a, a                                          ; $5b0f: $7f
	ld h, b                                          ; $5b10: $60
	reti                                             ; $5b11: $d9


	db $10                                           ; $5b12: $10
	db $fc                                           ; $5b13: $fc
	sbc h                                            ; $5b14: $9c
	halt                                             ; $5b15: $76

jr_03c_5b16:
	ld e, h                                          ; $5b16: $5c
	add c                                            ; $5b17: $81
	ei                                               ; $5b18: $fb
	sbc [hl]                                         ; $5b19: $9e
	db $e3                                           ; $5b1a: $e3
	ld a, [$409d]                                    ; $5b1b: $fa $9d $40
	add b                                            ; $5b1e: $80
	db $db                                           ; $5b1f: $db
	ld [$889b], sp                                   ; $5b20: $08 $9b $88
	ld [$80ff], sp                                   ; $5b23: $08 $ff $80
	ld l, a                                          ; $5b26: $6f
	jp z, $f973                                      ; $5b27: $ca $73 $f9

	ld [hl], e                                       ; $5b2a: $73
	push af                                          ; $5b2b: $f5
	ld l, e                                          ; $5b2c: $6b
	cp d                                             ; $5b2d: $ba
	ld d, e                                          ; $5b2e: $53
	ldh a, [$9e]                                     ; $5b2f: $f0 $9e
	ld a, [bc]                                       ; $5b31: $0a
	ld c, e                                          ; $5b32: $4b
	ldh a, [$7f]                                     ; $5b33: $f0 $7f
	ld c, a                                          ; $5b35: $4f
	ld c, a                                          ; $5b36: $4f
	ldh a, [$9e]                                     ; $5b37: $f0 $9e
	cp a                                             ; $5b39: $bf
	ld h, e                                          ; $5b3a: $63
	ldh a, [$9d]                                     ; $5b3b: $f0 $9d
	db $fc                                           ; $5b3d: $fc
	inc b                                            ; $5b3e: $04
	db $db                                           ; $5b3f: $db
	db $fc                                           ; $5b40: $fc
	sbc [hl]                                         ; $5b41: $9e
	inc bc                                           ; $5b42: $03
	jp c, $3ffb                                      ; $5b43: $da $fb $3f

	nop                                              ; $5b46: $00
	ld c, a                                          ; $5b47: $4f
	ldh a, [$d9]                                     ; $5b48: $f0 $d9
	inc bc                                           ; $5b4a: $03
	sbc [hl]                                         ; $5b4b: $9e
	rst $38                                          ; $5b4c: $ff
	jp c, $9bfe                                      ; $5b4d: $da $fe $9b

	ld e, h                                          ; $5b50: $5c
	inc l                                            ; $5b51: $2c
	inc e                                            ; $5b52: $1c
	inc c                                            ; $5b53: $0c
	ld [hl], a                                       ; $5b54: $77
	cp $d9                                           ; $5b55: $fe $d9
	ei                                               ; $5b57: $fb
	ld b, a                                          ; $5b58: $47
	ret nc                                           ; $5b59: $d0

	sbc l                                            ; $5b5a: $9d
	dec e                                            ; $5b5b: $1d
	ld a, [de]                                       ; $5b5c: $1a
	ld [hl], a                                       ; $5b5d: $77
	cp $9d                                           ; $5b5e: $fe $9d
	inc e                                            ; $5b60: $1c
	ld a, [de]                                       ; $5b61: $1a
	reti                                             ; $5b62: $d9


	rst $38                                          ; $5b63: $ff
	sbc [hl]                                         ; $5b64: $9e
	ld d, b                                          ; $5b65: $50
	ld a, d                                          ; $5b66: $7a
	call nc, $a017                                   ; $5b67: $d4 $17 $a0
	rlca                                             ; $5b6a: $07
	ldh a, [$9e]                                     ; $5b6b: $f0 $9e
	rlca                                             ; $5b6d: $07
	db $db                                           ; $5b6e: $db
	inc bc                                           ; $5b6f: $03
	ld h, e                                          ; $5b70: $63
	ldh a, [$7e]                                     ; $5b71: $f0 $7e
	add $73                                          ; $5b73: $c6 $73
	db $e3                                           ; $5b75: $e3
	ld a, d                                          ; $5b76: $7a
	ret nz                                           ; $5b77: $c0

	sbc [hl]                                         ; $5b78: $9e
	rra                                              ; $5b79: $1f
	ld [hl], e                                       ; $5b7a: $73
	db $db                                           ; $5b7b: $db
	sub a                                            ; $5b7c: $97
	inc de                                           ; $5b7d: $13
	sub [hl]                                         ; $5b7e: $96
	and d                                            ; $5b7f: $a2
	jr nc, jr_03c_5b16                               ; $5b80: $30 $94

	add e                                            ; $5b82: $83
	add b                                            ; $5b83: $80
	inc h                                            ; $5b84: $24
	db $fc                                           ; $5b85: $fc
	sbc c                                            ; $5b86: $99
	push de                                          ; $5b87: $d5
	rst $38                                          ; $5b88: $ff
	db $db                                           ; $5b89: $db
	add b                                            ; $5b8a: $80
	add b                                            ; $5b8b: $80
	ld b, b                                          ; $5b8c: $40
	ld [hl], e                                       ; $5b8d: $73
	ldh [$df], a                                     ; $5b8e: $e0 $df
	ld [$f89e], sp                                   ; $5b90: $08 $9e $f8
	ld l, [hl]                                       ; $5b93: $6e
	ld d, l                                          ; $5b94: $55
	db $dd                                           ; $5b95: $dd
	add b                                            ; $5b96: $80
	inc bc                                           ; $5b97: $03
	sub b                                            ; $5b98: $90
	rra                                              ; $5b99: $1f
	ldh a, [$9c]                                     ; $5b9a: $f0 $9c
	xor d                                            ; $5b9c: $aa
	dec d                                            ; $5b9d: $15
	ld [bc], a                                       ; $5b9e: $02
	ld l, e                                          ; $5b9f: $6b
	adc l                                            ; $5ba0: $8d
	ld l, d                                          ; $5ba1: $6a
	ret nz                                           ; $5ba2: $c0

	sbc h                                            ; $5ba3: $9c
	ld a, h                                          ; $5ba4: $7c
	cp h                                             ; $5ba5: $bc
	ld e, h                                          ; $5ba6: $5c
	ld [hl], a                                       ; $5ba7: $77
	cp $27                                           ; $5ba8: $fe $27
	nop                                              ; $5baa: $00
	ld h, $c0                                        ; $5bab: $26 $c0
	reti                                             ; $5bad: $d9


	cp $d9                                           ; $5bae: $fe $d9
	inc c                                            ; $5bb0: $0c
	daa                                              ; $5bb1: $27
	ret nz                                           ; $5bb2: $c0

	sbc [hl]                                         ; $5bb3: $9e
	inc e                                            ; $5bb4: $1c
	jp c, $0318                                      ; $5bb5: $da $18 $03

	ld h, b                                          ; $5bb8: $60
	inc bc                                           ; $5bb9: $03
	ldh a, [$2f]                                     ; $5bba: $f0 $2f
	ldh a, [$df]                                     ; $5bbc: $f0 $df
	ld bc, $f04f                                     ; $5bbe: $01 $4f $f0
	rst SubAFromDE                                          ; $5bc1: $df
	rst $38                                          ; $5bc2: $ff
	sbc [hl]                                         ; $5bc3: $9e
	ld h, [hl]                                       ; $5bc4: $66
	db $fc                                           ; $5bc5: $fc
	sbc [hl]                                         ; $5bc6: $9e
	add c                                            ; $5bc7: $81
	jp c, Jump_03c_72ff                              ; $5bc8: $da $ff $72

	db $d3                                           ; $5bcb: $d3
	inc bc                                           ; $5bcc: $03
	or b                                             ; $5bcd: $b0
	inc bc                                           ; $5bce: $03
	ldh a, [rAUD4GO]                                 ; $5bcf: $f0 $23
	ldh a, [$9c]                                     ; $5bd1: $f0 $9c
	inc a                                            ; $5bd3: $3c
	ld e, h                                          ; $5bd4: $5c
	inc a                                            ; $5bd5: $3c
	call c, $d91c                                    ; $5bd6: $dc $1c $d9
	ei                                               ; $5bd9: $fb
	dec e                                            ; $5bda: $1d
	nop                                              ; $5bdb: $00

Jump_03c_5bdc:
	rst SubAFromDE                                          ; $5bdc: $df
	ld [hl], a                                       ; $5bdd: $77
	sbc d                                            ; $5bde: $9a
	scf                                              ; $5bdf: $37
	ld [hl], a                                       ; $5be0: $77
	ld [hl], a                                       ; $5be1: $77
	ld [hl], h                                       ; $5be2: $74
	ld b, h                                          ; $5be3: $44
	sbc $77                                          ; $5be4: $de $77
	sub l                                            ; $5be6: $95
	inc sp                                           ; $5be7: $33
	scf                                              ; $5be8: $37
	scf                                              ; $5be9: $37
	inc sp                                           ; $5bea: $33
	inc sp                                           ; $5beb: $33
	inc [hl]                                         ; $5bec: $34
	ld b, h                                          ; $5bed: $44
	inc sp                                           ; $5bee: $33
	inc sp                                           ; $5bef: $33
	scf                                              ; $5bf0: $37
	ld [hl], e                                       ; $5bf1: $73
	or $dd                                           ; $5bf2: $f6 $dd
	inc sp                                           ; $5bf4: $33
	sbc [hl]                                         ; $5bf5: $9e
	scf                                              ; $5bf6: $37
	jp nc, $f984                                     ; $5bf7: $d2 $84 $f9

	reti                                             ; $5bfa: $d9


	rst $38                                          ; $5bfb: $ff
	ld b, a                                          ; $5bfc: $47
	ldh a, [$d9]                                     ; $5bfd: $f0 $d9
	inc bc                                           ; $5bff: $03
	reti                                             ; $5c00: $d9


	cp $d9                                           ; $5c01: $fe $d9
	inc c                                            ; $5c03: $0c
	reti                                             ; $5c04: $d9


	ei                                               ; $5c05: $fb
	ld b, a                                          ; $5c06: $47
	ret nc                                           ; $5c07: $d0

	reti                                             ; $5c08: $d9


	jr jr_03c_5c32                                   ; $5c09: $18 $27

	or b                                             ; $5c0b: $b0
	dec sp                                           ; $5c0c: $3b
	ldh a, [$9a]                                     ; $5c0d: $f0 $9a
	ld bc, $0603                                     ; $5c0f: $01 $03 $06
	inc b                                            ; $5c12: $04
	inc c                                            ; $5c13: $0c
	db $db                                           ; $5c14: $db
	rst $38                                          ; $5c15: $ff
	rst SubAFromDE                                          ; $5c16: $df
	cp $ff                                           ; $5c17: $fe $ff
	sbc c                                            ; $5c19: $99
	ld a, h                                          ; $5c1a: $7c
	rst $38                                          ; $5c1b: $ff
	add c                                            ; $5c1c: $81
	ld e, h                                          ; $5c1d: $5c
	sub h                                            ; $5c1e: $94
	call nc, $ffdc                                   ; $5c1f: $d4 $dc $ff
	sbc $01                                          ; $5c22: $de $01
	db $fd                                           ; $5c24: $fd
	sbc e                                            ; $5c25: $9b
	add b                                            ; $5c26: $80
	ret nz                                           ; $5c27: $c0

	ld b, b                                          ; $5c28: $40
	ld h, b                                          ; $5c29: $60
	rla                                              ; $5c2a: $17
	ret nz                                           ; $5c2b: $c0

	ld a, a                                          ; $5c2c: $7f
	cp a                                             ; $5c2d: $bf
	sbc l                                            ; $5c2e: $9d
	nop                                              ; $5c2f: $00
	inc b                                            ; $5c30: $04
	db $db                                           ; $5c31: $db

jr_03c_5c32:
	rst $38                                          ; $5c32: $ff
	rst SubAFromDE                                          ; $5c33: $df
	db $fd                                           ; $5c34: $fd
	ld a, e                                          ; $5c35: $7b
	jp nc, $709a                                     ; $5c36: $d2 $9a $70

	ld c, b                                          ; $5c39: $48
	ld [$2214], sp                                   ; $5c3a: $08 $14 $22
	sbc $ff                                          ; $5c3d: $de $ff
	sbc d                                            ; $5c3f: $9a
	ld a, a                                          ; $5c40: $7f
	ld l, a                                          ; $5c41: $6f
	ld e, a                                          ; $5c42: $5f
	ld e, a                                          ; $5c43: $5f
	ld [hl], e                                       ; $5c44: $73
	db $fd                                           ; $5c45: $fd
	ld a, a                                          ; $5c46: $7f
	and b                                            ; $5c47: $a0
	sbc l                                            ; $5c48: $9d
	dec b                                            ; $5c49: $05
	rlca                                             ; $5c4a: $07
	ld e, e                                          ; $5c4b: $5b
	ret nc                                           ; $5c4c: $d0

	sbc d                                            ; $5c4d: $9a
	ldh a, [$cc]                                     ; $5c4e: $f0 $cc
	adc h                                            ; $5c50: $8c
	add h                                            ; $5c51: $84
	cp [hl]                                          ; $5c52: $be
	inc bc                                           ; $5c53: $03
	ld h, b                                          ; $5c54: $60
	dec hl                                           ; $5c55: $2b
	ldh a, [$d9]                                     ; $5c56: $f0 $d9
	inc e                                            ; $5c58: $1c
	ld h, e                                          ; $5c59: $63
	nop                                              ; $5c5a: $00
	jp c, $d901                                      ; $5c5b: $da $01 $d9

	rst $38                                          ; $5c5e: $ff
	sbc h                                            ; $5c5f: $9c
	ret nz                                           ; $5c60: $c0

	and b                                            ; $5c61: $a0
	nop                                              ; $5c62: $00
	sbc $20                                          ; $5c63: $de $20
	sub [hl]                                         ; $5c65: $96
	db $10                                           ; $5c66: $10
	ldh a, [rIE]                                     ; $5c67: $f0 $ff
	rst $38                                          ; $5c69: $ff
	ccf                                              ; $5c6a: $3f
	ccf                                              ; $5c6b: $3f
	cp a                                             ; $5c6c: $bf
	ld a, a                                          ; $5c6d: $7f
	ccf                                              ; $5c6e: $3f
	ld h, $c0                                        ; $5c6f: $26 $c0
	sbc [hl]                                         ; $5c71: $9e
	call z, $c002                                    ; $5c72: $cc $02 $c0
	inc bc                                           ; $5c75: $03
	ld [hl], b                                       ; $5c76: $70
	db $db                                           ; $5c77: $db
	rst $38                                          ; $5c78: $ff
	sub a                                            ; $5c79: $97
	inc c                                            ; $5c7a: $0c
	dec c                                            ; $5c7b: $0d
	rrca                                             ; $5c7c: $0f
	ld c, $0f                                        ; $5c7d: $0e $0f
	dec b                                            ; $5c7f: $05
	dec b                                            ; $5c80: $05
	inc bc                                           ; $5c81: $03
	ld l, d                                          ; $5c82: $6a
	pop bc                                           ; $5c83: $c1
	sub [hl]                                         ; $5c84: $96
	cp $06                                           ; $5c85: $fe $06
	rst $38                                          ; $5c87: $ff
	push hl                                          ; $5c88: $e5
	ccf                                              ; $5c89: $3f
	add sp, $6f                                      ; $5c8a: $e8 $6f
	ld l, e                                          ; $5c8c: $6b
	rla                                              ; $5c8d: $17
	ld a, e                                          ; $5c8e: $7b
	add b                                            ; $5c8f: $80
	sub d                                            ; $5c90: $92
	and l                                            ; $5c91: $a5
	rst SubAFromBC                                          ; $5c92: $e7
	add $c6                                          ; $5c93: $c6 $c6
	nop                                              ; $5c95: $00
	ld h, b                                          ; $5c96: $60
	ldh [$60], a                                     ; $5c97: $e0 $60
	ld h, b                                          ; $5c99: $60
	ldh [$a0], a                                     ; $5c9a: $e0 $a0
	and b                                            ; $5c9c: $a0
	ret nz                                           ; $5c9d: $c0

	db $db                                           ; $5c9e: $db
	rst $38                                          ; $5c9f: $ff
	rst SubAFromDE                                          ; $5ca0: $df
	ld a, a                                          ; $5ca1: $7f
	ld b, a                                          ; $5ca2: $47
	ret nz                                           ; $5ca3: $c0

	sub l                                            ; $5ca4: $95
	ld c, $0c                                        ; $5ca5: $0e $0c
	dec c                                            ; $5ca7: $0d
	dec c                                            ; $5ca8: $0d
	ld c, $0c                                        ; $5ca9: $0e $0c
	inc b                                            ; $5cab: $04
	dec bc                                           ; $5cac: $0b
	ld sp, hl                                        ; $5cad: $f9
	ld sp, hl                                        ; $5cae: $f9
	sbc $f8                                          ; $5caf: $de $f8
	add l                                            ; $5cb1: $85
	db $fc                                           ; $5cb2: $fc
	rst $38                                          ; $5cb3: $ff
	rst $38                                          ; $5cb4: $ff
	inc h                                            ; $5cb5: $24
	ld [$0400], sp                                   ; $5cb6: $08 $00 $04
	jr jr_03c_5ceb                                   ; $5cb9: $18 $30

	ld h, b                                          ; $5cbb: $60
	ld h, b                                          ; $5cbc: $60
	cpl                                              ; $5cbd: $2f
	sbc a                                            ; $5cbe: $9f
	add e                                            ; $5cbf: $83
	ld c, a                                          ; $5cc0: $4f
	rra                                              ; $5cc1: $1f
	ccf                                              ; $5cc2: $3f
	ccf                                              ; $5cc3: $3f
	ld a, a                                          ; $5cc4: $7f
	rlca                                             ; $5cc5: $07
	dec b                                            ; $5cc6: $05
	nop                                              ; $5cc7: $00
	inc b                                            ; $5cc8: $04
	inc bc                                           ; $5cc9: $03
	rrca                                             ; $5cca: $0f
	rla                                              ; $5ccb: $17
	halt                                             ; $5ccc: $76
	ret nz                                           ; $5ccd: $c0

	rst SubAFromDE                                          ; $5cce: $df
	cp $8c                                           ; $5ccf: $fe $8c
	rst $38                                          ; $5cd1: $ff
	ldh a, [c]                                       ; $5cd2: $f2
	ldh [c], a                                       ; $5cd3: $e2
	cp $c0                                           ; $5cd4: $fe $c0
	add b                                            ; $5cd6: $80
	inc b                                            ; $5cd7: $04
	ld a, [bc]                                       ; $5cd8: $0a
	ld bc, $0e93                                     ; $5cd9: $01 $93 $0e
	rst $38                                          ; $5cdc: $ff
	ei                                               ; $5cdd: $fb
	db $eb                                           ; $5cde: $eb
	rrca                                             ; $5cdf: $0f
	rrca                                             ; $5ce0: $0f
	rra                                              ; $5ce1: $1f
	jp hl                                            ; $5ce2: $e9


	ld hl, $9cfc                                     ; $5ce3: $21 $fc $9c
	add b                                            ; $5ce6: $80
	jr nz, @+$0a                                     ; $5ce7: $20 $08

	db $db                                           ; $5ce9: $db
	rst $38                                          ; $5cea: $ff

jr_03c_5ceb:
	sbc l                                            ; $5ceb: $9d
	ccf                                              ; $5cec: $3f
	rra                                              ; $5ced: $1f
	ei                                               ; $5cee: $fb
	sbc l                                            ; $5cef: $9d
	ld b, $0a                                        ; $5cf0: $06 $0a
	jp c, Jump_03c_6bff                              ; $5cf2: $da $ff $6b

	jr nz, @-$61                                     ; $5cf5: $20 $9d

	add b                                            ; $5cf7: $80
	ld b, b                                          ; $5cf8: $40
	jp c, $9eff                                      ; $5cf9: $da $ff $9e

	ld a, a                                          ; $5cfc: $7f
	ld b, d                                          ; $5cfd: $42
	ret nz                                           ; $5cfe: $c0

	halt                                             ; $5cff: $76
	ccf                                              ; $5d00: $3f
	ld a, d                                          ; $5d01: $7a
	cp e                                             ; $5d02: $bb
	sbc [hl]                                         ; $5d03: $9e
	db $fc                                           ; $5d04: $fc
	jp c, $88fd                                      ; $5d05: $da $fd $88

	ldh a, [$b8]                                     ; $5d08: $f0 $b8
	sub b                                            ; $5d0a: $90
	or h                                             ; $5d0b: $b4
	or h                                             ; $5d0c: $b4
	add sp, $08                                      ; $5d0d: $e8 $08
	ld e, b                                          ; $5d0f: $58
	ld a, a                                          ; $5d10: $7f
	ld d, a                                          ; $5d11: $57
	ld h, a                                          ; $5d12: $67
	ld b, e                                          ; $5d13: $43
	ld h, e                                          ; $5d14: $63
	di                                               ; $5d15: $f3
	di                                               ; $5d16: $f3
	inc hl                                           ; $5d17: $23
	inc bc                                           ; $5d18: $03
	inc bc                                           ; $5d19: $03
	rlca                                             ; $5d1a: $07
	ld c, $0b                                        ; $5d1b: $0e $0b
	ld a, [bc]                                       ; $5d1d: $0a
	ld [bc], a                                       ; $5d1e: $02
	ld [hl], a                                       ; $5d1f: $77
	jr nz, @-$70                                     ; $5d20: $20 $8e

	push af                                          ; $5d22: $f5
	pop af                                           ; $5d23: $f1
	pop af                                           ; $5d24: $f1
	ld sp, hl                                        ; $5d25: $f9
	ld sp, hl                                        ; $5d26: $f9
	db $fc                                           ; $5d27: $fc
	cp h                                             ; $5d28: $bc
	adc h                                            ; $5d29: $8c
	inc c                                            ; $5d2a: $0c
	db $ec                                           ; $5d2b: $ec
	ld l, h                                          ; $5d2c: $6c
	db $fc                                           ; $5d2d: $fc
	call z, $dbdb                                    ; $5d2e: $cc $db $db
	dec de                                           ; $5d31: $1b
	sbc e                                            ; $5d32: $9b
	ld a, e                                          ; $5d33: $7b
	db $fc                                           ; $5d34: $fc
	sbc [hl]                                         ; $5d35: $9e
	dec sp                                           ; $5d36: $3b
	ld [bc], a                                       ; $5d37: $02
	ret nz                                           ; $5d38: $c0

	ld a, [bc]                                       ; $5d39: $0a
	ret nz                                           ; $5d3a: $c0

	sub a                                            ; $5d3b: $97
	ld [bc], a                                       ; $5d3c: $02
	ld bc, $0701                                     ; $5d3d: $01 $01 $07
	dec c                                            ; $5d40: $0d
	inc a                                            ; $5d41: $3c
	ld l, b                                          ; $5d42: $68
	adc h                                            ; $5d43: $8c
	ld l, d                                          ; $5d44: $6a
	ret nz                                           ; $5d45: $c0

	add [hl]                                         ; $5d46: $86
	adc e                                            ; $5d47: $8b
	ld bc, $bb31                                     ; $5d48: $01 $31 $bb
	dec a                                            ; $5d4b: $3d
	add d                                            ; $5d4c: $82
	inc a                                            ; $5d4d: $3c
	nop                                              ; $5d4e: $00
	nop                                              ; $5d4f: $00
	db $10                                           ; $5d50: $10
	jr jr_03c_5d8c                                   ; $5d51: $18 $39

	cp e                                             ; $5d53: $bb
	ld b, a                                          ; $5d54: $47
	ccf                                              ; $5d55: $3f
	rra                                              ; $5d56: $1f
	rrca                                             ; $5d57: $0f
	ret nz                                           ; $5d58: $c0

	ldh [$fc], a                                     ; $5d59: $e0 $fc
	ld c, e                                          ; $5d5b: $4b
	xor a                                            ; $5d5c: $af
	xor b                                            ; $5d5d: $a8
	jr z, jr_03c_5d88                                ; $5d5e: $28 $28

	sbc $ff                                          ; $5d60: $de $ff
	sbc [hl]                                         ; $5d62: $9e
	rst FarCall                                          ; $5d63: $f7
	db $dd                                           ; $5d64: $dd
	ldh a, [$71]                                     ; $5d65: $f0 $71
	ld [hl], c                                       ; $5d67: $71
	sbc h                                            ; $5d68: $9c
	ld [hl], c                                       ; $5d69: $71
	ld a, $1c                                        ; $5d6a: $3e $1c
	ld [hl], e                                       ; $5d6c: $73
	inc sp                                           ; $5d6d: $33
	sub l                                            ; $5d6e: $95
	ccf                                              ; $5d6f: $3f
	ld e, $0c                                        ; $5d70: $1e $0c
	add hl, de                                       ; $5d72: $19
	inc l                                            ; $5d73: $2c
	ld d, [hl]                                       ; $5d74: $56
	and a                                            ; $5d75: $a7
	add $02                                          ; $5d76: $c6 $02
	ld a, [bc]                                       ; $5d78: $0a
	ld a, c                                          ; $5d79: $79
	add b                                            ; $5d7a: $80
	sub b                                            ; $5d7b: $90
	rst SubAFromBC                                          ; $5d7c: $e7
	jp $8783                                         ; $5d7d: $c3 $83 $87


	rlca                                             ; $5d80: $07
	rrca                                             ; $5d81: $0f
	ret nz                                           ; $5d82: $c0

	add b                                            ; $5d83: $80
	add b                                            ; $5d84: $80
	ld bc, $0402                                     ; $5d85: $01 $02 $04

jr_03c_5d88:
	ld [$7f30], sp                                   ; $5d88: $08 $30 $7f
	db $dd                                           ; $5d8b: $dd

jr_03c_5d8c:
	rst $38                                          ; $5d8c: $ff
	adc d                                            ; $5d8d: $8a
	db $fc                                           ; $5d8e: $fc
	ld hl, sp-$10                                    ; $5d8f: $f8 $f0
	dec b                                            ; $5d91: $05
	ld b, a                                          ; $5d92: $47
	add h                                            ; $5d93: $84
	inc b                                            ; $5d94: $04
	inc d                                            ; $5d95: $14
	inc e                                            ; $5d96: $1c
	dec h                                            ; $5d97: $25
	ld b, h                                          ; $5d98: $44
	and $c4                                          ; $5d99: $e6 $c4
	rst JumpTable                                          ; $5d9b: $c7
	adc a                                            ; $5d9c: $8f
	rra                                              ; $5d9d: $1f
	ccf                                              ; $5d9e: $3f
	ld a, a                                          ; $5d9f: $7f
	rst $38                                          ; $5da0: $ff
	ld b, $0f                                        ; $5da1: $06 $0f
	ld a, e                                          ; $5da3: $7b
	and $80                                          ; $5da4: $e6 $80
	ld b, $fe                                        ; $5da6: $06 $fe
	ld e, a                                          ; $5da8: $5f
	ld bc, $8080                                     ; $5da9: $01 $80 $80
	nop                                              ; $5dac: $00
	nop                                              ; $5dad: $00
	db $fd                                           ; $5dae: $fd
	db $fd                                           ; $5daf: $fd
	and b                                            ; $5db0: $a0
	inc b                                            ; $5db1: $04
	ld [bc], a                                       ; $5db2: $02
	inc bc                                           ; $5db3: $03
	add c                                            ; $5db4: $81
	ld hl, $571a                                     ; $5db5: $21 $1a $57
	ld hl, $070f                                     ; $5db8: $21 $0f $07
	add c                                            ; $5dbb: $81
	ld b, b                                          ; $5dbc: $40
	ldh [$f8], a                                     ; $5dbd: $e0 $f8
	rst $38                                          ; $5dbf: $ff
	rst $38                                          ; $5dc0: $ff
	ld [$f808], sp                                   ; $5dc1: $08 $08 $f8
	sbc b                                            ; $5dc4: $98
	ld a, a                                          ; $5dc5: $7f
	or d                                             ; $5dc6: $b2
	sub c                                            ; $5dc7: $91
	jr @-$0e                                         ; $5dc8: $18 $f0

	ld a, [$fcfc]                                    ; $5dca: $fa $fc $fc
	ld e, $0f                                        ; $5dcd: $1e $0f
	rrca                                             ; $5dcf: $0f
	ccf                                              ; $5dd0: $3f
	rst $38                                          ; $5dd1: $ff
	jr nz, jr_03c_5de4                               ; $5dd2: $20 $10

	db $10                                           ; $5dd4: $10
	ldh [$7b], a                                     ; $5dd5: $e0 $7b
	sub $9b                                          ; $5dd7: $d6 $9b
	nop                                              ; $5dd9: $00
	ccf                                              ; $5dda: $3f
	ld e, a                                          ; $5ddb: $5f
	rra                                              ; $5ddc: $1f
	ld [hl], e                                       ; $5ddd: $73
	xor l                                            ; $5dde: $ad
	ld a, $c0                                        ; $5ddf: $3e $c0

Call_03c_5de1:
	sbc d                                            ; $5de1: $9a
	inc bc                                           ; $5de2: $03
	ld [bc], a                                       ; $5de3: $02

jr_03c_5de4:
	ld l, c                                          ; $5de4: $69
	ld d, a                                          ; $5de5: $57
	cp $79                                           ; $5de6: $fe $79
	ld b, $7a                                        ; $5de8: $06 $7a
	ld b, e                                          ; $5dea: $43
	sbc $fe                                          ; $5deb: $de $fe
	add b                                            ; $5ded: $80
	ld b, h                                          ; $5dee: $44
	ld e, b                                          ; $5def: $58
	xor b                                            ; $5df0: $a8
	ld h, b                                          ; $5df1: $60
	add sp, $45                                      ; $5df2: $e8 $45
	ld c, d                                          ; $5df4: $4a
	ld c, a                                          ; $5df5: $4f
	ld l, [hl]                                       ; $5df6: $6e
	db $fd                                           ; $5df7: $fd
	ld a, [$fffd]                                    ; $5df8: $fa $fd $ff
	ld e, a                                          ; $5dfb: $5f
	ld c, a                                          ; $5dfc: $4f
	ld c, a                                          ; $5dfd: $4f
	inc bc                                           ; $5dfe: $03
	inc bc                                           ; $5dff: $03
	ld [bc], a                                       ; $5e00: $02
	dec bc                                           ; $5e01: $0b
	xor e                                            ; $5e02: $ab
	ld e, c                                          ; $5e03: $59
	xor e                                            ; $5e04: $ab
	rst $38                                          ; $5e05: $ff
	ld sp, hl                                        ; $5e06: $f9
	ld hl, sp-$03                                    ; $5e07: $f8 $fd
	or $f6                                           ; $5e09: $f6 $f6
	rst FarCall                                          ; $5e0b: $f7
	rst $38                                          ; $5e0c: $ff
	adc [hl]                                         ; $5e0d: $8e
	ei                                               ; $5e0e: $fb
	db $ec                                           ; $5e0f: $ec
	ld l, h                                          ; $5e10: $6c
	inc l                                            ; $5e11: $2c
	db $ec                                           ; $5e12: $ec
	ld h, h                                          ; $5e13: $64
	db $ec                                           ; $5e14: $ec
	db $fc                                           ; $5e15: $fc

jr_03c_5e16:
	rst $38                                          ; $5e16: $ff
	dec hl                                           ; $5e17: $2b
	db $eb                                           ; $5e18: $eb
	db $eb                                           ; $5e19: $eb
	cpl                                              ; $5e1a: $2f
	xor a                                            ; $5e1b: $af
	rst AddAOntoHL                                          ; $5e1c: $ef
	rst GetHLinHL                                          ; $5e1d: $cf
	rst GetHLinHL                                          ; $5e1e: $cf
	ld c, d                                          ; $5e1f: $4a
	pop af                                           ; $5e20: $f1
	ld l, d                                          ; $5e21: $6a
	ret nz                                           ; $5e22: $c0

	sbc [hl]                                         ; $5e23: $9e
	rra                                              ; $5e24: $1f
	ret c                                            ; $5e25: $d8

	rst $38                                          ; $5e26: $ff
	ld c, e                                          ; $5e27: $4b
	pop hl                                           ; $5e28: $e1
	ld a, h                                          ; $5e29: $7c
	ld l, l                                          ; $5e2a: $6d
	rst SubAFromDE                                          ; $5e2b: $df
	ld [bc], a                                       ; $5e2c: $02
	ld a, l                                          ; $5e2d: $7d
	rst AddAOntoHL                                          ; $5e2e: $ef
	sbc h                                            ; $5e2f: $9c
	inc b                                            ; $5e30: $04
	ld hl, sp-$08                                    ; $5e31: $f8 $f8
	ld a, e                                          ; $5e33: $7b
	sub h                                            ; $5e34: $94
	sbc $fc                                          ; $5e35: $de $fc
	rst SubAFromDE                                          ; $5e37: $df
	ld hl, sp-$69                                    ; $5e38: $f8 $97
	ld c, $07                                        ; $5e3a: $0e $07
	ld d, $17                                        ; $5e3c: $16 $17
	rra                                              ; $5e3e: $1f
	rla                                              ; $5e3f: $17
	scf                                              ; $5e40: $37
	ld d, $de                                        ; $5e41: $16 $de
	add hl, bc                                       ; $5e43: $09
	db $dd                                           ; $5e44: $dd
	ld [$2f9a], sp                                   ; $5e45: $08 $9a $2f
	inc c                                            ; $5e48: $0c
	ld h, b                                          ; $5e49: $60
	ld b, c                                          ; $5e4a: $41
	add e                                            ; $5e4b: $83
	sbc $ff                                          ; $5e4c: $de $ff
	sbc d                                            ; $5e4e: $9a
	ld b, c                                          ; $5e4f: $41
	ld bc, $8683                                     ; $5e50: $01 $83 $86
	ld a, h                                          ; $5e53: $7c
	ld [hl], a                                       ; $5e54: $77
	rst JumpTable                                          ; $5e55: $c7
	rst SubAFromDE                                          ; $5e56: $df
	ldh [$99], a                                     ; $5e57: $e0 $99
	add sp, -$13                                     ; $5e59: $e8 $ed
	db $eb                                           ; $5e5b: $eb
	db $e3                                           ; $5e5c: $e3
	di                                               ; $5e5d: $f3
	rst $38                                          ; $5e5e: $ff
	sbc $30                                          ; $5e5f: $de $30
	add b                                            ; $5e61: $80
	ld [hl-], a                                      ; $5e62: $32
	inc d                                            ; $5e63: $14
	dec e                                            ; $5e64: $1d
	dec c                                            ; $5e65: $0d
	adc a                                            ; $5e66: $8f
	ld d, $0c                                        ; $5e67: $16 $0c
	nop                                              ; $5e69: $00
	ld b, b                                          ; $5e6a: $40
	ldh [$b0], a                                     ; $5e6b: $e0 $b0
	call z, $0cf9                                    ; $5e6d: $cc $f9 $0c
	ld [$8000], sp                                   ; $5e70: $08 $00 $80
	add b                                            ; $5e73: $80
	ret nz                                           ; $5e74: $c0

	ldh a, [$fe]                                     ; $5e75: $f0 $fe
	inc b                                            ; $5e77: $04
	ld c, $19                                        ; $5e78: $0e $19
	jr c, @+$60                                      ; $5e7a: $38 $5e

	cp a                                             ; $5e7c: $bf
	rst $38                                          ; $5e7d: $ff
	rst $38                                          ; $5e7e: $ff
	rrca                                             ; $5e7f: $0f
	jr jr_03c_5e16                                   ; $5e80: $18 $94

	ld [$3410], sp                                   ; $5e82: $08 $10 $34
	ld a, l                                          ; $5e85: $7d
	rst $38                                          ; $5e86: $ff
	rst $38                                          ; $5e87: $ff
	ldh [$73], a                                     ; $5e88: $e0 $73
	inc b                                            ; $5e8a: $04
	jr jr_03c_5eed                                   ; $5e8b: $18 $60

	ld a, c                                          ; $5e8d: $79
	ld d, d                                          ; $5e8e: $52
	sbc d                                            ; $5e8f: $9a
	ld sp, hl                                        ; $5e90: $f9
	ld a, a                                          ; $5e91: $7f
	rra                                              ; $5e92: $1f
	rra                                              ; $5e93: $1f
	ccf                                              ; $5e94: $3f
	sbc $ff                                          ; $5e95: $de $ff
	sbc e                                            ; $5e97: $9b
	add d                                            ; $5e98: $82
	inc bc                                           ; $5e99: $03
	ld bc, $5701                                     ; $5e9a: $01 $01 $57
	add b                                            ; $5e9d: $80
	ld a, a                                          ; $5e9e: $7f
	db $ec                                           ; $5e9f: $ec
	adc c                                            ; $5ea0: $89
	rra                                              ; $5ea1: $1f
	cp b                                             ; $5ea2: $b8
	db $ed                                           ; $5ea3: $ed
	rst SubAFromDE                                          ; $5ea4: $df
	sub a                                            ; $5ea5: $97
	adc e                                            ; $5ea6: $8b
	ret c                                            ; $5ea7: $d8

	adc b                                            ; $5ea8: $88
	add sp, $4f                                      ; $5ea9: $e8 $4f
	ld e, [hl]                                       ; $5eab: $5e
	ccf                                              ; $5eac: $3f
	add sp, -$0c                                     ; $5ead: $e8 $f4
	jr nc, @+$12                                     ; $5eaf: $30 $10

	db $10                                           ; $5eb1: $10
	or b                                             ; $5eb2: $b0
	ld [hl], b                                       ; $5eb3: $70
	db $10                                           ; $5eb4: $10
	sbc a                                            ; $5eb5: $9f
	ld c, a                                          ; $5eb6: $4f
	halt                                             ; $5eb7: $76
	ld [hl], c                                       ; $5eb8: $71
	ld a, e                                          ; $5eb9: $7b
	db $fd                                           ; $5eba: $fd
	sbc [hl]                                         ; $5ebb: $9e
	cp a                                             ; $5ebc: $bf
	ld b, a                                          ; $5ebd: $47
	ld d, b                                          ; $5ebe: $50
	ld b, a                                          ; $5ebf: $47
	ldh a, [$db]                                     ; $5ec0: $f0 $db
	inc e                                            ; $5ec2: $1c
	rst SubAFromDE                                          ; $5ec3: $df
	db $fc                                           ; $5ec4: $fc
	reti                                             ; $5ec5: $d9


	ei                                               ; $5ec6: $fb
	sbc $ff                                          ; $5ec7: $de $ff
	sbc d                                            ; $5ec9: $9a
	ldh [c], a                                       ; $5eca: $e2
	ld [bc], a                                       ; $5ecb: $02
	ld [bc], a                                       ; $5ecc: $02
	dec e                                            ; $5ecd: $1d
	jr nz, @-$20                                     ; $5ece: $20 $de

	cp $de                                           ; $5ed0: $fe $de
	db $fc                                           ; $5ed2: $fc
	sub h                                            ; $5ed3: $94
	ldh [c], a                                       ; $5ed4: $e2
	rst SubAFromDE                                          ; $5ed5: $df
	rst AddAOntoHL                                          ; $5ed6: $ef
	ld l, a                                          ; $5ed7: $6f
	rst AddAOntoHL                                          ; $5ed8: $ef
	ld hl, sp+$68                                    ; $5ed9: $f8 $68

jr_03c_5edb:
	jr z, jr_03c_5f0c                                ; $5edb: $28 $2f

	ld c, b                                          ; $5edd: $48
	ld c, a                                          ; $5ede: $4f
	sbc $ef                                          ; $5edf: $de $ef
	rst SubAFromDE                                          ; $5ee1: $df
	rst GetHLinHL                                          ; $5ee2: $cf
	sbc l                                            ; $5ee3: $9d
	ret c                                            ; $5ee4: $d8

	cp a                                             ; $5ee5: $bf
	sbc $fb                                          ; $5ee6: $de $fb
	sbc e                                            ; $5ee8: $9b
	ld b, $16                                        ; $5ee9: $06 $16
	ld d, $f7                                        ; $5eeb: $16 $f7

jr_03c_5eed:
	halt                                             ; $5eed: $76
	sub b                                            ; $5eee: $90
	sbc $f3                                          ; $5eef: $de $f3
	sub l                                            ; $5ef1: $95
	ld d, $ff                                        ; $5ef2: $16 $ff
	ld a, a                                          ; $5ef4: $7f
	ld a, h                                          ; $5ef5: $7c
	jr c, jr_03c_5f28                                ; $5ef6: $38 $30

	jr nc, @+$22                                     ; $5ef8: $30 $20

	rst $38                                          ; $5efa: $ff
	jr c, jr_03c_5edb                                ; $5efb: $38 $de

	rst $38                                          ; $5efd: $ff
	sbc $ef                                          ; $5efe: $de $ef
	ld [hl], l                                       ; $5f00: $75
	jp hl                                            ; $5f01: $e9


	db $fd                                           ; $5f02: $fd
	sbc [hl]                                         ; $5f03: $9e
	ldh a, [$6c]                                     ; $5f04: $f0 $6c
	add b                                            ; $5f06: $80
	ld a, a                                          ; $5f07: $7f
	db $f4                                           ; $5f08: $f4
	ld a, d                                          ; $5f09: $7a
	ld a, e                                          ; $5f0a: $7b
	ld [hl], a                                       ; $5f0b: $77

jr_03c_5f0c:
	sub c                                            ; $5f0c: $91
	ld l, e                                          ; $5f0d: $6b
	adc a                                            ; $5f0e: $8f
	ld [hl], e                                       ; $5f0f: $73
	add [hl]                                         ; $5f10: $86
	ld [hl], e                                       ; $5f11: $73
	ldh a, [$7b]                                     ; $5f12: $f0 $7b
	add sp, $73                                      ; $5f14: $e8 $73
	ldh a, [$80]                                     ; $5f16: $f0 $80
	inc bc                                           ; $5f18: $03
	ld hl, sp-$10                                    ; $5f19: $f8 $f0
	nop                                              ; $5f1b: $00
	jr nz, @+$03                                     ; $5f1c: $20 $01

	jp $0705                                         ; $5f1e: $c3 $05 $07


	ldh a, [$f0]                                     ; $5f21: $f0 $f0
	ldh [$e0], a                                     ; $5f23: $e0 $e0
	ret nz                                           ; $5f25: $c0

	ld b, c                                          ; $5f26: $41
	add d                                            ; $5f27: $82

jr_03c_5f28:
	inc b                                            ; $5f28: $04
	ld e, a                                          ; $5f29: $5f
	ld b, e                                          ; $5f2a: $43
	or d                                             ; $5f2b: $b2
	db $fd                                           ; $5f2c: $fd
	cp $ff                                           ; $5f2d: $fe $ff
	rra                                              ; $5f2f: $1f
	rst FarCall                                          ; $5f30: $f7
	ld l, $3e                                        ; $5f31: $2e $3e
	ld a, a                                          ; $5f33: $7f
	ld d, e                                          ; $5f34: $53
	sub e                                            ; $5f35: $93
	ld [de], a                                       ; $5f36: $12
	add b                                            ; $5f37: $80
	ld d, $1e                                        ; $5f38: $16 $1e
	ld e, e                                          ; $5f3a: $5b
	cp $be                                           ; $5f3b: $fe $be
	rst $38                                          ; $5f3d: $ff
	and [hl]                                         ; $5f3e: $a6
	ld d, $10                                        ; $5f3f: $16 $10
	ld [hl], h                                       ; $5f41: $74
	rst FarCall                                          ; $5f42: $f7
	pop af                                           ; $5f43: $f1
	pop af                                           ; $5f44: $f1
	nop                                              ; $5f45: $00
	rla                                              ; $5f46: $17
	scf                                              ; $5f47: $37
	scf                                              ; $5f48: $37
	inc de                                           ; $5f49: $13
	ld e, a                                          ; $5f4a: $5f
	rst GetHLinHL                                          ; $5f4b: $cf
	ldh a, [c]                                       ; $5f4c: $f2
	ldh a, [c]                                       ; $5f4d: $f2
	ld [hl], l                                       ; $5f4e: $75
	scf                                              ; $5f4f: $37
	ld h, l                                          ; $5f50: $65
	halt                                             ; $5f51: $76
	db $e3                                           ; $5f52: $e3
	ld [hl], e                                       ; $5f53: $73
	adc a                                            ; $5f54: $8f
	rrca                                             ; $5f55: $0f
	ld c, $de                                        ; $5f56: $0e $de
	inc e                                            ; $5f58: $1c
	ld [hl], a                                       ; $5f59: $77
	cp e                                             ; $5f5a: $bb
	ld a, e                                          ; $5f5b: $7b
	and c                                            ; $5f5c: $a1
	ld [hl], e                                       ; $5f5d: $73
	sbc a                                            ; $5f5e: $9f
	ld l, a                                          ; $5f5f: $6f
	ld h, $07                                        ; $5f60: $26 $07
	ldh a, [$7c]                                     ; $5f62: $f0 $7c
	cp a                                             ; $5f64: $bf
	sbc h                                            ; $5f65: $9c
	ld sp, hl                                        ; $5f66: $f9
	db $10                                           ; $5f67: $10
	ldh [$7a], a                                     ; $5f68: $e0 $7a
	xor [hl]                                         ; $5f6a: $ae
	ld a, [hl]                                       ; $5f6b: $7e
	ld c, [hl]                                       ; $5f6c: $4e
	add b                                            ; $5f6d: $80
	add hl, bc                                       ; $5f6e: $09
	db $10                                           ; $5f6f: $10
	jr nz, jr_03c_5fb2                               ; $5f70: $20 $40

	rst FarCall                                          ; $5f72: $f7
	rst AddAOntoHL                                          ; $5f73: $ef
	rst FarCall                                          ; $5f74: $f7
	db $fc                                           ; $5f75: $fc
	ld sp, hl                                        ; $5f76: $f9
	rst $38                                          ; $5f77: $ff
	ld a, l                                          ; $5f78: $7d
	ld e, a                                          ; $5f79: $5f
	adc h                                            ; $5f7a: $8c
	inc e                                            ; $5f7b: $1c
	adc b                                            ; $5f7c: $88
	jp $bc66                                         ; $5f7d: $c3 $66 $bc


	ld e, a                                          ; $5f80: $5f
	ld a, a                                          ; $5f81: $7f
	ld c, a                                          ; $5f82: $4f
	ld h, a                                          ; $5f83: $67
	ld h, h                                          ; $5f84: $64
	call nz, $dfff                                   ; $5f85: $c4 $ff $df
	or h                                             ; $5f88: $b4
	cp $bf                                           ; $5f89: $fe $bf
	sbc a                                            ; $5f8b: $9f
	sbc a                                            ; $5f8c: $9f
	sbc d                                            ; $5f8d: $9a
	ccf                                              ; $5f8e: $3f
	ld a, h                                          ; $5f8f: $7c
	db $fc                                           ; $5f90: $fc
	call z, Call_03c_7387                            ; $5f91: $cc $87 $73
	ret nz                                           ; $5f94: $c0

	ld a, a                                          ; $5f95: $7f
	db $fc                                           ; $5f96: $fc
	sbc [hl]                                         ; $5f97: $9e
	ld a, b                                          ; $5f98: $78
	ld l, e                                          ; $5f99: $6b
	ret nz                                           ; $5f9a: $c0

	ld [hl], e                                       ; $5f9b: $73
	ldh a, [$7f]                                     ; $5f9c: $f0 $7f
	ld b, e                                          ; $5f9e: $43
	sbc l                                            ; $5f9f: $9d
	nop                                              ; $5fa0: $00
	ld a, [hl]                                       ; $5fa1: $7e
	db $dd                                           ; $5fa2: $dd
	rst $38                                          ; $5fa3: $ff
	sbc [hl]                                         ; $5fa4: $9e
	inc bc                                           ; $5fa5: $03
	ld a, b                                          ; $5fa6: $78
	ld d, l                                          ; $5fa7: $55
	ld a, l                                          ; $5fa8: $7d
	cp c                                             ; $5fa9: $b9
	ld [hl], e                                       ; $5faa: $73
	jr nc, jr_03c_601a                               ; $5fab: $30 $6d

	rst SubAFromDE                                          ; $5fad: $df
	rst $38                                          ; $5fae: $ff
	sbc d                                            ; $5faf: $9a
	ldh [rOBP0], a                                   ; $5fb0: $e0 $48

jr_03c_5fb2:
	sub h                                            ; $5fb2: $94
	ld l, b                                          ; $5fb3: $68
	sub b                                            ; $5fb4: $90
	db $fd                                           ; $5fb5: $fd
	sbc e                                            ; $5fb6: $9b
	or a                                             ; $5fb7: $b7
	ld l, e                                          ; $5fb8: $6b
	sub c                                            ; $5fb9: $91
	ld h, e                                          ; $5fba: $63
	db $dd                                           ; $5fbb: $dd
	rst $38                                          ; $5fbc: $ff
	rst SubAFromDE                                          ; $5fbd: $df
	ld c, b                                          ; $5fbe: $48
	add b                                            ; $5fbf: $80
	inc l                                            ; $5fc0: $2c
	inc hl                                           ; $5fc1: $23
	nop                                              ; $5fc2: $00
	inc bc                                           ; $5fc3: $03
	inc bc                                           ; $5fc4: $03
	ld bc, $bfbf                                     ; $5fc5: $01 $bf $bf
	jp $ffc0                                         ; $5fc8: $c3 $c0 $ff


	db $fc                                           ; $5fcb: $fc
	db $fc                                           ; $5fcc: $fc
	cp $1c                                           ; $5fcd: $fe $1c
	ld a, a                                          ; $5fcf: $7f
	inc hl                                           ; $5fd0: $23
	dec bc                                           ; $5fd1: $0b
	add e                                            ; $5fd2: $83
	ld bc, $a021                                     ; $5fd3: $01 $21 $a0
	rst FarCall                                          ; $5fd6: $f7
	sbc h                                            ; $5fd7: $9c
	call nz, Call_03c_7ce4                           ; $5fd8: $c4 $e4 $7c
	cp $de                                           ; $5fdb: $fe $de
	ld e, a                                          ; $5fdd: $5f
	add hl, sp                                       ; $5fde: $39
	add b                                            ; $5fdf: $80
	ld [$e0f9], a                                    ; $5fe0: $ea $f9 $e0
	pop bc                                           ; $5fe3: $c1
	call nz, $0583                                   ; $5fe4: $c4 $83 $05
	cp $3d                                           ; $5fe7: $fe $3d
	ld b, $03                                        ; $5fe9: $06 $03
	ld a, $3b                                        ; $5feb: $3e $3b
	ld a, h                                          ; $5fed: $7c
	ld a, [$c10e]                                    ; $5fee: $fa $0e $c1
	ld c, $01                                        ; $5ff1: $0e $01
	ld a, a                                          ; $5ff3: $7f
	sbc a                                            ; $5ff4: $9f
	ld a, a                                          ; $5ff5: $7f
	ld a, a                                          ; $5ff6: $7f
	pop af                                           ; $5ff7: $f1
	ld a, $f1                                        ; $5ff8: $3e $f1
	cp $80                                           ; $5ffa: $fe $80
	ld h, b                                          ; $5ffc: $60
	add b                                            ; $5ffd: $80
	add b                                            ; $5ffe: $80
	ld [hl], c                                       ; $5fff: $71
	dec de                                           ; $6000: $1b
	sbc h                                            ; $6001: $9c
	db $e3                                           ; $6002: $e3
	ldh [$f4], a                                     ; $6003: $e0 $f4
	ld [hl], l                                       ; $6005: $75
	inc c                                            ; $6006: $0c
	adc [hl]                                         ; $6007: $8e
	inc c                                            ; $6008: $0c
	inc de                                           ; $6009: $13
	add hl, de                                       ; $600a: $19
	inc c                                            ; $600b: $0c
	ld a, [$f8f4]                                    ; $600c: $fa $f4 $f8
	db $fc                                           ; $600f: $fc
	jp nc, Jump_03c_61a3                             ; $6010: $d2 $a3 $61

	inc sp                                           ; $6013: $33
	ld b, $0c                                        ; $6014: $06 $0c
	ld [$3e1c], sp                                   ; $6016: $08 $1c $3e
	ld a, b                                          ; $6019: $78

jr_03c_601a:
	adc [hl]                                         ; $601a: $8e
	add b                                            ; $601b: $80
	dec b                                            ; $601c: $05
	dec bc                                           ; $601d: $0b
	rrca                                             ; $601e: $0f
	rra                                              ; $601f: $1f
	cpl                                              ; $6020: $2f
	ld h, a                                          ; $6021: $67
	rst SubAFromBC                                          ; $6022: $e7
	rst FarCall                                          ; $6023: $f7
	ld c, $0c                                        ; $6024: $0e $0c
	jr jr_03c_6058                                   ; $6026: $18 $30

	ld h, b                                          ; $6028: $60
	ret nz                                           ; $6029: $c0

	add b                                            ; $602a: $80
	nop                                              ; $602b: $00
	ld a, [de]                                       ; $602c: $1a
	inc e                                            ; $602d: $1c
	dec d                                            ; $602e: $15
	ld a, [de]                                       ; $602f: $1a
	rrca                                             ; $6030: $0f
	inc d                                            ; $6031: $14
	dec e                                            ; $6032: $1d
	ld [$1014], sp                                   ; $6033: $08 $14 $10
	jr @+$1f                                         ; $6036: $18 $1d

	rra                                              ; $6038: $1f
	rrca                                             ; $6039: $0f
	ld c, $7e                                        ; $603a: $0e $7e
	or a                                             ; $603c: $b7
	add b                                            ; $603d: $80
	ldh [c], a                                       ; $603e: $e2
	rst FarCall                                          ; $603f: $f7
	db $eb                                           ; $6040: $eb
	db $f4                                           ; $6041: $f4
	or [hl]                                          ; $6042: $b6
	ld h, [hl]                                       ; $6043: $66
	dec e                                            ; $6044: $1d
	ld [de], a                                       ; $6045: $12
	ld d, $16                                        ; $6046: $16 $16
	sub a                                            ; $6048: $97
	ret                                              ; $6049: $c9


	ld a, a                                          ; $604a: $7f
	ccf                                              ; $604b: $3f
	and b                                            ; $604c: $a0
	jr nz, jr_03c_6089                               ; $604d: $20 $3a

	inc sp                                           ; $604f: $33
	inc bc                                           ; $6050: $03
	rst $38                                          ; $6051: $ff
	cpl                                              ; $6052: $2f
	adc e                                            ; $6053: $8b
	bit 3, [hl]                                      ; $6054: $cb $5e
	sbc $ce                                          ; $6056: $de $ce

jr_03c_6058:
	cp [hl]                                          ; $6058: $be
	db $fc                                           ; $6059: $fc
	ld hl, sp+$7c                                    ; $605a: $f8 $7c
	inc a                                            ; $605c: $3c
	ld a, c                                          ; $605d: $79
	call c, $db7d                                    ; $605e: $dc $7d $db
	sbc h                                            ; $6061: $9c
	cp [hl]                                          ; $6062: $be
	cp b                                             ; $6063: $b8
	rst JumpTable                                          ; $6064: $c7
	ld sp, hl                                        ; $6065: $f9
	db $dd                                           ; $6066: $dd
	rst $38                                          ; $6067: $ff
	sbc [hl]                                         ; $6068: $9e
	ret nz                                           ; $6069: $c0

	ld a, c                                          ; $606a: $79
	sub a                                            ; $606b: $97
	ld d, a                                          ; $606c: $57
	ldh a, [$9d]                                     ; $606d: $f0 $9d
	rra                                              ; $606f: $1f
	db $e3                                           ; $6070: $e3
	ld a, e                                          ; $6071: $7b
	ld c, $fa                                        ; $6072: $0e $fa
	adc [hl]                                         ; $6074: $8e
	or $ee                                           ; $6075: $f6 $ee
	sbc c                                            ; $6077: $99
	db $e3                                           ; $6078: $e3
	db $eb                                           ; $6079: $eb
	rst $38                                          ; $607a: $ff
	rst FarCall                                          ; $607b: $f7
	rst SubAFromBC                                          ; $607c: $e7
	ld b, b                                          ; $607d: $40
	add c                                            ; $607e: $81
	add a                                            ; $607f: $87
	sbc [hl]                                         ; $6080: $9e
	sbc h                                            ; $6081: $9c
	adc b                                            ; $6082: $88
	adc b                                            ; $6083: $88
	sbc b                                            ; $6084: $98
	rra                                              ; $6085: $1f
	ld a, c                                          ; $6086: $79
	ld e, h                                          ; $6087: $5c
	db $dd                                           ; $6088: $dd

jr_03c_6089:
	rst $38                                          ; $6089: $ff
	sbc l                                            ; $608a: $9d
	ei                                               ; $608b: $fb
	jp $8dfb                                         ; $608c: $c3 $fb $8d


	rst GetHLinHL                                          ; $608f: $cf
	add a                                            ; $6090: $87
	add [hl]                                         ; $6091: $86
	add e                                            ; $6092: $83
	ld b, e                                          ; $6093: $43
	ld h, b                                          ; $6094: $60
	jr nz, jr_03c_60a7                               ; $6095: $20 $10

	ld [bc], a                                       ; $6097: $02
	ld [bc], a                                       ; $6098: $02
	add e                                            ; $6099: $83
	add c                                            ; $609a: $81

Jump_03c_609b:
	ld b, c                                          ; $609b: $41
	ld h, c                                          ; $609c: $61
	ld hl, $8730                                     ; $609d: $21 $30 $87
	ld hl, sp-$22                                    ; $60a0: $f8 $de
	cp $9a                                           ; $60a2: $fe $9a
	ld a, [hl]                                       ; $60a4: $7e
	inc a                                            ; $60a5: $3c
	ld e, h                                          ; $60a6: $5c

jr_03c_60a7:
	ld a, b                                          ; $60a7: $78
	ld b, $fe                                        ; $60a8: $06 $fe
	ld a, l                                          ; $60aa: $7d
	rra                                              ; $60ab: $1f
	sbc e                                            ; $60ac: $9b
	ld h, b                                          ; $60ad: $60
	ld bc, $411e                                     ; $60ae: $01 $1e $41
	ld [hl], e                                       ; $60b1: $73
	dec l                                            ; $60b2: $2d
	sbc h                                            ; $60b3: $9c
	ld a, [hl]                                       ; $60b4: $7e
	ld h, c                                          ; $60b5: $61
	ld a, $fc                                        ; $60b6: $3e $fc
	sub a                                            ; $60b8: $97
	ldh [$1f], a                                     ; $60b9: $e0 $1f
	ldh [$1f], a                                     ; $60bb: $e0 $1f
	ldh a, [rIE]                                     ; $60bd: $f0 $ff
	db $fc                                           ; $60bf: $fc
	rst $38                                          ; $60c0: $ff
	ld a, e                                          ; $60c1: $7b
	ld sp, hl                                        ; $60c2: $f9
	sbc d                                            ; $60c3: $9a
	ldh [rIF], a                                     ; $60c4: $e0 $0f
	nop                                              ; $60c6: $00
	inc bc                                           ; $60c7: $03
	nop                                              ; $60c8: $00
	ld [hl-], a                                      ; $60c9: $32
	nop                                              ; $60ca: $00
	sbc h                                            ; $60cb: $9c
	inc sp                                           ; $60cc: $33
	scf                                              ; $60cd: $37
	scf                                              ; $60ce: $37
	db $db                                           ; $60cf: $db
	inc sp                                           ; $60d0: $33
	ld a, a                                          ; $60d1: $7f
	ld sp, hl                                        ; $60d2: $f9
	ld a, e                                          ; $60d3: $7b
	or $9e                                           ; $60d4: $f6 $9e
	dec [hl]                                         ; $60d6: $35
	ld h, e                                          ; $60d7: $63
	or $98                                           ; $60d8: $f6 $98
	ld [hl], $33                                     ; $60da: $36 $33
	ld [hl], e                                       ; $60dc: $73
	dec [hl]                                         ; $60dd: $35
	inc sp                                           ; $60de: $33
	scf                                              ; $60df: $37
	dec [hl]                                         ; $60e0: $35
	ld a, e                                          ; $60e1: $7b
	or $9d                                           ; $60e2: $f6 $9d
	ld d, l                                          ; $60e4: $55
	ld d, e                                          ; $60e5: $53
	ld a, e                                          ; $60e6: $7b
	jp hl                                            ; $60e7: $e9


	sbc h                                            ; $60e8: $9c
	scf                                              ; $60e9: $37
	ld d, l                                          ; $60ea: $55
	dec [hl]                                         ; $60eb: $35
	sbc $55                                          ; $60ec: $de $55
	ld a, e                                          ; $60ee: $7b
	db $fc                                           ; $60ef: $fc
	ld a, a                                          ; $60f0: $7f
	db $fd                                           ; $60f1: $fd
	db $dd                                           ; $60f2: $dd
	ld h, [hl]                                       ; $60f3: $66
	sbc [hl]                                         ; $60f4: $9e
	ld d, l                                          ; $60f5: $55
	sbc $44                                          ; $60f6: $de $44
	sbc l                                            ; $60f8: $9d
	inc [hl]                                         ; $60f9: $34
	ld b, h                                          ; $60fa: $44
	ld [hl], c                                       ; $60fb: $71
	add e                                            ; $60fc: $83
	sub a                                            ; $60fd: $97
	ld e, d                                          ; $60fe: $5a
	add hl, sp                                       ; $60ff: $39
	dec a                                            ; $6100: $3d
	cp [hl]                                          ; $6101: $be
	ei                                               ; $6102: $fb
	di                                               ; $6103: $f3
	rst FarCall                                          ; $6104: $f7
	rst SubAFromBC                                          ; $6105: $e7
	reti                                             ; $6106: $d9


	rst $38                                          ; $6107: $ff
	sbc d                                            ; $6108: $9a
	ld a, a                                          ; $6109: $7f
	ccf                                              ; $610a: $3f
	ccf                                              ; $610b: $3f
	rra                                              ; $610c: $1f
	cp a                                             ; $610d: $bf
	sub $ff                                          ; $610e: $d6 $ff
	add e                                            ; $6110: $83
	ldh a, [$f8]                                     ; $6111: $f0 $f8
	push af                                          ; $6113: $f5
	ld sp, hl                                        ; $6114: $f9
	ld [hl], b                                       ; $6115: $70

Jump_03c_6116:
	add hl, bc                                       ; $6116: $09
	reti                                             ; $6117: $d9


	jp hl                                            ; $6118: $e9


	rst $38                                          ; $6119: $ff
	rst $38                                          ; $611a: $ff
	ei                                               ; $611b: $fb
	rst $38                                          ; $611c: $ff
	rst $38                                          ; $611d: $ff
	rst FarCall                                          ; $611e: $f7
	rst SubAFromBC                                          ; $611f: $e7
	rst FarCall                                          ; $6120: $f7
	ld [hl], l                                       ; $6121: $75
	ccf                                              ; $6122: $3f
	or e                                             ; $6123: $b3
	sub c                                            ; $6124: $91
	rst GetHLinHL                                          ; $6125: $cf
	rst SubAFromDE                                          ; $6126: $df
	rst $38                                          ; $6127: $ff
	sbc a                                            ; $6128: $9f
	cp e                                             ; $6129: $bb
	ei                                               ; $612a: $fb
	rst AddAOntoHL                                          ; $612b: $ef
	rst AddAOntoHL                                          ; $612c: $ef
	db $dd                                           ; $612d: $dd
	rst $38                                          ; $612e: $ff
	sub [hl]                                         ; $612f: $96
	sub a                                            ; $6130: $97
	db $e3                                           ; $6131: $e3
	ld h, e                                          ; $6132: $63
	ei                                               ; $6133: $fb
	rst FarCall                                          ; $6134: $f7
	ld [$fadf], a                                    ; $6135: $ea $df $fa
	ld hl, sp-$22                                    ; $6138: $f8 $de
	db $fc                                           ; $613a: $fc
	ld a, a                                          ; $613b: $7f
	db $fc                                           ; $613c: $fc
	sbc l                                            ; $613d: $9d
	ld hl, sp-$10                                    ; $613e: $f8 $f0
	db $db                                           ; $6140: $db
	rst $38                                          ; $6141: $ff
	sbc l                                            ; $6142: $9d
	cp a                                             ; $6143: $bf
	db $ed                                           ; $6144: $ed
	ld sp, hl                                        ; $6145: $f9
	jp c, $9eff                                      ; $6146: $da $ff $9e

	xor $f9                                          ; $6149: $ee $f9
	sbc h                                            ; $614b: $9c
	db $eb                                           ; $614c: $eb
	rst $38                                          ; $614d: $ff
	rst SubAFromBC                                          ; $614e: $e7
	ld a, e                                          ; $614f: $7b
	sub h                                            ; $6150: $94
	sbc h                                            ; $6151: $9c
	and $e2                                          ; $6152: $e6 $e2
	inc e                                            ; $6154: $1c
	jp c, $9718                                      ; $6155: $da $18 $97

	ld b, e                                          ; $6158: $43
	ld b, b                                          ; $6159: $40
	ld b, b                                          ; $615a: $40
	ld h, b                                          ; $615b: $60
	ld h, b                                          ; $615c: $60
	reti                                             ; $615d: $d9


	and d                                            ; $615e: $a2
	ld d, b                                          ; $615f: $50
	sbc $bf                                          ; $6160: $de $bf
	rst SubAFromDE                                          ; $6162: $df
	rra                                              ; $6163: $1f
	sub h                                            ; $6164: $94
	ld a, $7c                                        ; $6165: $3e $7c
	db $ed                                           ; $6167: $ed
	nop                                              ; $6168: $00
	rra                                              ; $6169: $1f
	ld a, a                                          ; $616a: $7f
	rst $38                                          ; $616b: $ff
	cp [hl]                                          ; $616c: $be
	ld a, $60                                        ; $616d: $3e $60
	ret nz                                           ; $616f: $c0

	ld a, e                                          ; $6170: $7b
	cp h                                             ; $6171: $bc
	adc d                                            ; $6172: $8a
	ccf                                              ; $6173: $3f
	ld a, $7e                                        ; $6174: $3e $7e
	rst $38                                          ; $6176: $ff
	cp a                                             ; $6177: $bf
	ld b, c                                          ; $6178: $41
	ld b, [hl]                                       ; $6179: $46
	call $a094                                       ; $617a: $cd $94 $a0
	ldh [rLCDC], a                                   ; $617d: $e0 $40
	nop                                              ; $617f: $00
	cp a                                             ; $6180: $bf
	cp a                                             ; $6181: $bf
	ld a, $78                                        ; $6182: $3e $78
	ld [hl], b                                       ; $6184: $70
	ret nz                                           ; $6185: $c0

	add b                                            ; $6186: $80
	nop                                              ; $6187: $00
	ld a, e                                          ; $6188: $7b
	db $fd                                           ; $6189: $fd
	sbc d                                            ; $618a: $9a
	inc bc                                           ; $618b: $03
	ld c, $08                                        ; $618c: $0e $08
	ld a, [bc]                                       ; $618e: $0a
	ld a, [bc]                                       ; $618f: $0a
	db $fd                                           ; $6190: $fd
	add d                                            ; $6191: $82
	ld bc, $0406                                     ; $6192: $01 $06 $04
	inc b                                            ; $6195: $04
	ld [bc], a                                       ; $6196: $02
	ld [hl-], a                                      ; $6197: $32
	jp nz, $b212                                     ; $6198: $c2 $12 $b2

	or b                                             ; $619b: $b0
	or h                                             ; $619c: $b4
	cp b                                             ; $619d: $b8
	ld bc, $3101                                     ; $619e: $01 $01 $31
	pop hl                                           ; $61a1: $e1
	ld b, c                                          ; $61a2: $41

Jump_03c_61a3:
	ld b, e                                          ; $61a3: $43
	ld b, e                                          ; $61a4: $43
	ld b, a                                          ; $61a5: $47
	inc b                                            ; $61a6: $04
	add h                                            ; $61a7: $84
	nop                                              ; $61a8: $00
	db $10                                           ; $61a9: $10
	ld [hl], c                                       ; $61aa: $71
	pop hl                                           ; $61ab: $e1
	rst SubAFromBC                                          ; $61ac: $e7
	rst JumpTable                                          ; $61ad: $c7
	cp $da                                           ; $61ae: $fe $da
	rst $38                                          ; $61b0: $ff
	rst SubAFromDE                                          ; $61b1: $df
	cp l                                             ; $61b2: $bd
	sbc h                                            ; $61b3: $9c
	dec a                                            ; $61b4: $3d
	dec e                                            ; $61b5: $1d
	dec c                                            ; $61b6: $0d
	sbc $3d                                          ; $61b7: $de $3d
	rst SubAFromDE                                          ; $61b9: $df
	ld b, c                                          ; $61ba: $41
	sbc l                                            ; $61bb: $9d
	pop hl                                           ; $61bc: $e1
	pop af                                           ; $61bd: $f1
	db $dd                                           ; $61be: $dd
	ld sp, hl                                        ; $61bf: $f9
	ld a, a                                          ; $61c0: $7f
	add hl, sp                                       ; $61c1: $39
	sbc $fb                                          ; $61c2: $de $fb
	rst SubAFromDE                                          ; $61c4: $df
	db $db                                           ; $61c5: $db
	sbc l                                            ; $61c6: $9d
	rst $38                                          ; $61c7: $ff
	db $dd                                           ; $61c8: $dd
	db $dd                                           ; $61c9: $dd
	dec d                                            ; $61ca: $15
	rst SubAFromDE                                          ; $61cb: $df
	dec [hl]                                         ; $61cc: $35
	sub h                                            ; $61cd: $94
	nop                                              ; $61ce: $00
	db $ec                                           ; $61cf: $ec
	xor e                                            ; $61d0: $ab
	ld a, [hl+]                                      ; $61d1: $2a
	dec hl                                           ; $61d2: $2b
	ld a, [hl+]                                      ; $61d3: $2a
	ld a, [hl+]                                      ; $61d4: $2a
	xor e                                            ; $61d5: $ab
	ld l, e                                          ; $61d6: $6b
	db $db                                           ; $61d7: $db
	call c, $dddd                                    ; $61d8: $dc $dd $dd
	add b                                            ; $61db: $80
	call c, Call_03c_429c                            ; $61dc: $dc $9c $42
	ld c, c                                          ; $61df: $49
	db $fc                                           ; $61e0: $fc
	ld c, a                                          ; $61e1: $4f
	ld c, [hl]                                       ; $61e2: $4e
	inc l                                            ; $61e3: $2c
	ld h, l                                          ; $61e4: $65
	cpl                                              ; $61e5: $2f
	cp a                                             ; $61e6: $bf
	or a                                             ; $61e7: $b7
	inc bc                                           ; $61e8: $03
	or e                                             ; $61e9: $b3
	inc sp                                           ; $61ea: $33
	ld [hl], a                                       ; $61eb: $77
	cp $fe                                           ; $61ec: $fe $fe
	pop af                                           ; $61ee: $f1
	rst GetHLinHL                                          ; $61ef: $cf
	cp a                                             ; $61f0: $bf
	sbc e                                            ; $61f1: $9b
	ld l, l                                          ; $61f2: $6d

jr_03c_61f3:
	rst SubAFromBC                                          ; $61f3: $e7
	or c                                             ; $61f4: $b1
	ld a, e                                          ; $61f5: $7b
	rst $38                                          ; $61f6: $ff
	ld a, [hl]                                       ; $61f7: $7e
	ld a, h                                          ; $61f8: $7c
	rst $38                                          ; $61f9: $ff
	sbc e                                            ; $61fa: $9b
	add l                                            ; $61fb: $85
	jr jr_03c_627c                                   ; $61fc: $18 $7e

	rst $38                                          ; $61fe: $ff
	dec a                                            ; $61ff: $3d
	dec de                                           ; $6200: $1b
	ld a, [bc]                                       ; $6201: $0a
	add hl, bc                                       ; $6202: $09
	dec hl                                           ; $6203: $2b
	rst $38                                          ; $6204: $ff
	rst GetHLinHL                                          ; $6205: $cf
	cp $7e                                           ; $6206: $fe $7e
	ld a, h                                          ; $6208: $7c
	ld a, l                                          ; $6209: $7d
	cp a                                             ; $620a: $bf
	db $fd                                           ; $620b: $fd
	db $fd                                           ; $620c: $fd
	ccf                                              ; $620d: $3f
	ld a, a                                          ; $620e: $7f
	rst GetHLinHL                                          ; $620f: $cf
	rst SubAFromDE                                          ; $6210: $df
	rst GetHLinHL                                          ; $6211: $cf
	adc e                                            ; $6212: $8b
	sub l                                            ; $6213: $95
	inc hl                                           ; $6214: $23
	jr nc, jr_03c_61f3                               ; $6215: $30 $dc

	rst $38                                          ; $6217: $ff
	ld a, d                                          ; $6218: $7a
	sbc $7a                                          ; $6219: $de $7a
	call c, $ef99                                    ; $621b: $dc $99 $ef
	db $db                                           ; $621e: $db
	sub a                                            ; $621f: $97
	ld [hl], b                                       ; $6220: $70
	ld bc, $7687                                     ; $6221: $01 $87 $76
	db $d3                                           ; $6224: $d3
	db $dd                                           ; $6225: $dd
	rst $38                                          ; $6226: $ff
	sub l                                            ; $6227: $95
	add c                                            ; $6228: $81
	and a                                            ; $6229: $a7
	adc a                                            ; $622a: $8f
	rst GetHLinHL                                          ; $622b: $cf
	adc a                                            ; $622c: $8f
	dec hl                                           ; $622d: $2b
	jp hl                                            ; $622e: $e9


Call_03c_622f:
	ld sp, hl                                        ; $622f: $f9
	rst $38                                          ; $6230: $ff
	rst SubAFromDE                                          ; $6231: $df
	db $db                                           ; $6232: $db
	rst $38                                          ; $6233: $ff
	sub e                                            ; $6234: $93
	rst JumpTable                                          ; $6235: $c7
	or $f7                                           ; $6236: $f6 $f7
	rst SubAFromBC                                          ; $6238: $e7
	rst GetHLinHL                                          ; $6239: $cf
	sbc [hl]                                         ; $623a: $9e
	cp [hl]                                          ; $623b: $be
	cp [hl]                                          ; $623c: $be
	rst $38                                          ; $623d: $ff
	rst $38                                          ; $623e: $ff
	rst AddAOntoHL                                          ; $623f: $ef
	rst GetHLinHL                                          ; $6240: $cf
	db $dd                                           ; $6241: $dd
	rst $38                                          ; $6242: $ff
	add a                                            ; $6243: $87
	ld [hl], c                                       ; $6244: $71
	ld [hl], a                                       ; $6245: $77
	or $fc                                           ; $6246: $f6 $fc
	ld h, d                                          ; $6248: $62
	rrca                                             ; $6249: $0f
	ld d, h                                          ; $624a: $54
	ld [hl], b                                       ; $624b: $70
	ldh a, [c]                                       ; $624c: $f2
	ld hl, sp-$07                                    ; $624d: $f8 $f9
	di                                               ; $624f: $f3
	db $fd                                           ; $6250: $fd
	ld hl, sp-$05                                    ; $6251: $f8 $fb
	rst $38                                          ; $6253: $ff
	dec de                                           ; $6254: $1b
	and [hl]                                         ; $6255: $a6
	ld e, c                                          ; $6256: $59
	ld h, $59                                        ; $6257: $26 $59
	nop                                              ; $6259: $00
	and b                                            ; $625a: $a0
	ldh a, [$fe]                                     ; $625b: $f0 $fe
	ld a, a                                          ; $625d: $7f
	ld d, $94                                        ; $625e: $16 $94
	cp $de                                           ; $6260: $fe $de
	adc $39                                          ; $6262: $ce $39
	db $e4                                           ; $6264: $e4
	sbc e                                            ; $6265: $9b
	inc h                                            ; $6266: $24
	nop                                              ; $6267: $00
	add b                                            ; $6268: $80
	inc bc                                           ; $6269: $03
	inc bc                                           ; $626a: $03
	ld sp, hl                                        ; $626b: $f9
	sub l                                            ; $626c: $95
	jr c, @-$26                                      ; $626d: $38 $d8

	add hl, hl                                       ; $626f: $29
	adc c                                            ; $6270: $89
	add hl, de                                       ; $6271: $19
	ld h, c                                          ; $6272: $61
	sbc c                                            ; $6273: $99
	adc c                                            ; $6274: $89
	nop                                              ; $6275: $00
	ld bc, $80fe                                     ; $6276: $01 $fe $80
	jr jr_03c_627b                                   ; $6279: $18 $00

jr_03c_627b:
	nop                                              ; $627b: $00

jr_03c_627c:
	ld sp, $51f3                                     ; $627c: $31 $f3 $51
	add c                                            ; $627f: $81
	ld b, c                                          ; $6280: $41
	pop bc                                           ; $6281: $c1
	pop bc                                           ; $6282: $c1
	add e                                            ; $6283: $83
	rst GetHLinHL                                          ; $6284: $cf
	adc [hl]                                         ; $6285: $8e
	xor [hl]                                         ; $6286: $ae
	ld a, [hl]                                       ; $6287: $7e
	cp [hl]                                          ; $6288: $be
	ld a, $3e                                        ; $6289: $3e $3e
	inc a                                            ; $628b: $3c
	ret nz                                           ; $628c: $c0

	ld b, b                                          ; $628d: $40
	ld b, h                                          ; $628e: $44
	ld c, a                                          ; $628f: $4f
	rst JumpTable                                          ; $6290: $c7
	rst JumpTable                                          ; $6291: $c7
	rst GetHLinHL                                          ; $6292: $cf
	rst GetHLinHL                                          ; $6293: $cf
	ccf                                              ; $6294: $3f
	cp a                                             ; $6295: $bf
	cp a                                             ; $6296: $bf
	cp c                                             ; $6297: $b9
	sub e                                            ; $6298: $93
	jr c, jr_03c_62d7                                ; $6299: $38 $3c

	ccf                                              ; $629b: $3f
	ccf                                              ; $629c: $3f
	nop                                              ; $629d: $00
	nop                                              ; $629e: $00
	pop af                                           ; $629f: $f1
	dec de                                           ; $62a0: $1b
	set 7, e                                         ; $62a1: $cb $fb
	db $eb                                           ; $62a3: $eb
	set 7, [hl]                                      ; $62a4: $cb $fe
	sub a                                            ; $62a6: $97
	pop af                                           ; $62a7: $f1
	ld sp, $9101                                     ; $62a8: $31 $01 $91
	or c                                             ; $62ab: $b1
	ld a, [bc]                                       ; $62ac: $0a
	ld a, [bc]                                       ; $62ad: $0a
	adc d                                            ; $62ae: $8a
	db $dd                                           ; $62af: $dd
	ld a, [bc]                                       ; $62b0: $0a
	sbc [hl]                                         ; $62b1: $9e
	dec bc                                           ; $62b2: $0b
	sbc $04                                          ; $62b3: $de $04
	call c, $9684                                    ; $62b5: $dc $84 $96
	ld c, b                                          ; $62b8: $48
	ld d, b                                          ; $62b9: $50
	ld h, b                                          ; $62ba: $60
	ld b, b                                          ; $62bb: $40
	ld b, [hl]                                       ; $62bc: $46
	ld d, [hl]                                       ; $62bd: $56
	ld a, h                                          ; $62be: $7c
	ld e, [hl]                                       ; $62bf: $5e
	rst JumpTable                                          ; $62c0: $c7
	ld a, d                                          ; $62c1: $7a
	dec hl                                           ; $62c2: $2b
	ld a, a                                          ; $62c3: $7f
	dec [hl]                                         ; $62c4: $35
	ld a, a                                          ; $62c5: $7f
	cp $95                                           ; $62c6: $fe $95
	ld a, a                                          ; $62c8: $7f
	ld [hl], d                                       ; $62c9: $72
	sbc $90                                          ; $62ca: $de $90
	pop bc                                           ; $62cc: $c1
	and $e4                                          ; $62cd: $e6 $e4
	or $83                                           ; $62cf: $f6 $83
	sbc a                                            ; $62d1: $9f
	ld a, c                                          ; $62d2: $79
	ld a, [$1b7e]                                    ; $62d3: $fa $7e $1b
	add b                                            ; $62d6: $80

jr_03c_62d7:
	rst $38                                          ; $62d7: $ff
	ld a, h                                          ; $62d8: $7c
	ccf                                              ; $62d9: $3f
	rrca                                             ; $62da: $0f
	rra                                              ; $62db: $1f
	ccf                                              ; $62dc: $3f
	ld a, [hl]                                       ; $62dd: $7e
	cp $ff                                           ; $62de: $fe $ff
	db $fc                                           ; $62e0: $fc
	rst $38                                          ; $62e1: $ff
	rst $38                                          ; $62e2: $ff
	cp $fc                                           ; $62e3: $fe $fc
	db $fd                                           ; $62e5: $fd
	ld sp, hl                                        ; $62e6: $f9
	db $fc                                           ; $62e7: $fc
	ld a, [$e5e3]                                    ; $62e8: $fa $e3 $e5
	add a                                            ; $62eb: $87
	rra                                              ; $62ec: $1f
	dec sp                                           ; $62ed: $3b
	ld d, e                                          ; $62ee: $53
	rra                                              ; $62ef: $1f
	ld bc, $c0c0                                     ; $62f0: $01 $c0 $c0
	ld b, b                                          ; $62f3: $40
	ld bc, $df07                                     ; $62f4: $01 $07 $df
	rrca                                             ; $62f7: $0f
	sbc d                                            ; $62f8: $9a
	cp $fd                                           ; $62f9: $fe $fd
	cp $ff                                           ; $62fb: $fe $ff
	adc $de                                          ; $62fd: $ce $de

Jump_03c_62ff:
	cp $80                                           ; $62ff: $fe $80
	dec e                                            ; $6301: $1d
	rst $38                                          ; $6302: $ff
	rst $38                                          ; $6303: $ff
	ret nc                                           ; $6304: $d0

	ldh a, [$f3]                                     ; $6305: $f0 $f3
	ld sp, hl                                        ; $6307: $f9
	db $fd                                           ; $6308: $fd
	daa                                              ; $6309: $27
	db $e3                                           ; $630a: $e3
	rst $38                                          ; $630b: $ff
	dec hl                                           ; $630c: $2b
	ld [hl], b                                       ; $630d: $70
	add [hl]                                         ; $630e: $86
	or b                                             ; $630f: $b0
	add b                                            ; $6310: $80
	ld a, a                                          ; $6311: $7f
	rst $38                                          ; $6312: $ff
	rst $38                                          ; $6313: $ff
	ld hl, sp+$0f                                    ; $6314: $f8 $0f
	rst $38                                          ; $6316: $ff
	rst GetHLinHL                                          ; $6317: $cf
	pop af                                           ; $6318: $f1
	rst $38                                          ; $6319: $ff
	rst $38                                          ; $631a: $ff
	ret c                                            ; $631b: $d8

	rrca                                             ; $631c: $0f
	ld h, b                                          ; $631d: $60
	ldh [$e0], a                                     ; $631e: $e0 $e0
	sbc [hl]                                         ; $6320: $9e
	ld h, c                                          ; $6321: $61
	ld a, e                                          ; $6322: $7b
	ld b, $df                                        ; $6323: $06 $df
	rst $38                                          ; $6325: $ff
	rst SubAFromDE                                          ; $6326: $df
	ccf                                              ; $6327: $3f
	add l                                            ; $6328: $85
	cp [hl]                                          ; $6329: $be
	db $f4                                           ; $632a: $f4
	ld b, e                                          ; $632b: $43
	scf                                              ; $632c: $37
	rst $38                                          ; $632d: $ff
	inc a                                            ; $632e: $3c
	inc de                                           ; $632f: $13
	db $fc                                           ; $6330: $fc
	rst JumpTable                                          ; $6331: $c7
	di                                               ; $6332: $f3

jr_03c_6333:
	ccf                                              ; $6333: $3f
	ld hl, sp+$00                                    ; $6334: $f8 $00
	jp $03ec                                         ; $6336: $c3 $ec $03


	jr c, jr_03c_6333                                ; $6339: $38 $f8

	ei                                               ; $633b: $fb
	ei                                               ; $633c: $fb
	dec sp                                           ; $633d: $3b
	db $db                                           ; $633e: $db
	cp l                                             ; $633f: $bd
	ld a, [hl]                                       ; $6340: $7e
	rst AddAOntoHL                                          ; $6341: $ef
	rst $38                                          ; $6342: $ff
	sbc $fc                                          ; $6343: $de $fc
	adc [hl]                                         ; $6345: $8e
	inc a                                            ; $6346: $3c
	ld a, [hl]                                       ; $6347: $7e
	cp a                                             ; $6348: $bf
	sbc a                                            ; $6349: $9f
	ld de, $b309                                     ; $634a: $11 $09 $b3
	and b                                            ; $634d: $a0
	ld h, $73                                        ; $634e: $26 $73
	dec de                                           ; $6350: $1b
	add [hl]                                         ; $6351: $86
	rst $38                                          ; $6352: $ff
	rst FarCall                                          ; $6353: $f7
	ld a, l                                          ; $6354: $7d
	ld a, a                                          ; $6355: $7f
	db $fd                                           ; $6356: $fd
	sbc $ff                                          ; $6357: $de $ff
	sub a                                            ; $6359: $97
	rrca                                             ; $635a: $0f
	rst GetHLinHL                                          ; $635b: $cf
	sbc a                                            ; $635c: $9f
	jr nc, jr_03c_6392                               ; $635d: $30 $33

	push af                                          ; $635f: $f5
	inc de                                           ; $6360: $13
	sub e                                            ; $6361: $93
	db $dd                                           ; $6362: $dd
	rst $38                                          ; $6363: $ff
	sub e                                            ; $6364: $93
	db $fc                                           ; $6365: $fc
	ei                                               ; $6366: $fb
	rst $38                                          ; $6367: $ff
	rst AddAOntoHL                                          ; $6368: $ef
	cp [hl]                                          ; $6369: $be
	cp a                                             ; $636a: $bf
	ld b, a                                          ; $636b: $47
	ld h, a                                          ; $636c: $67
	pop hl                                           ; $636d: $e1
	ret nc                                           ; $636e: $d0

	set 2, a                                         ; $636f: $cb $d7
	call c, $96ff                                    ; $6371: $dc $ff $96
	rst AddAOntoHL                                          ; $6374: $ef
	rst SubAFromBC                                          ; $6375: $e7
	rst AddAOntoHL                                          ; $6376: $ef
	ld h, e                                          ; $6377: $63
	db $fc                                           ; $6378: $fc

jr_03c_6379:
	cp b                                             ; $6379: $b8
	or l                                             ; $637a: $b5
	adc l                                            ; $637b: $8d
	ret                                              ; $637c: $c9


	ld [hl], d                                       ; $637d: $72
	sub l                                            ; $637e: $95
	rst SubAFromDE                                          ; $637f: $df
	ei                                               ; $6380: $fb
	sbc $ff                                          ; $6381: $de $ff
	sub e                                            ; $6383: $93
	ldh a, [c]                                       ; $6384: $f2
	sub d                                            ; $6385: $92
	add b                                            ; $6386: $80
	push hl                                          ; $6387: $e5
	ldh [hDisp0_WX], a                                     ; $6388: $e0 $89
	add h                                            ; $638a: $84
	db $fc                                           ; $638b: $fc
	call z, $ffec                                    ; $638c: $cc $ec $ff
	jp c, $ed7b                                      ; $638f: $da $7b $ed

jr_03c_6392:
	sub [hl]                                         ; $6392: $96
	di                                               ; $6393: $f3
	ld [bc], a                                       ; $6394: $02
	inc bc                                           ; $6395: $03
	ld [bc], a                                       ; $6396: $02
	inc sp                                           ; $6397: $33
	inc de                                           ; $6398: $13
	db $d3                                           ; $6399: $d3
	db $d3                                           ; $639a: $d3
	rst SubAFromHL                                          ; $639b: $d7
	cp $92                                           ; $639c: $fe $92
	ret nz                                           ; $639e: $c0

	ldh [rAUD4LEN], a                                ; $639f: $e0 $20
	ld h, b                                          ; $63a1: $60
	ldh [$8b], a                                     ; $63a2: $e0 $8b
	adc a                                            ; $63a4: $8f
	cp a                                             ; $63a5: $bf
	xor [hl]                                         ; $63a6: $ae
	ld hl, sp-$28                                    ; $63a7: $f8 $d8
	sub $f3                                          ; $63a9: $d6 $f3
	cp $87                                           ; $63ab: $fe $87
	db $10                                           ; $63ad: $10
	inc b                                            ; $63ae: $04
	jr nz, jr_03c_63df                               ; $63af: $20 $2e

	ld a, [bc]                                       ; $63b1: $0a
	and b                                            ; $63b2: $a0
	call nz, $ccc6                                   ; $63b3: $c4 $c6 $cc
	db $ec                                           ; $63b6: $ec
	cp d                                             ; $63b7: $ba
	cp $ef                                           ; $63b8: $fe $ef
	jr @+$35                                         ; $63ba: $18 $33

	dec sp                                           ; $63bc: $3b
	ccf                                              ; $63bd: $3f
	rra                                              ; $63be: $1f
	ld a, a                                          ; $63bf: $7f
	ld a, a                                          ; $63c0: $7f
	ld hl, sp-$39                                    ; $63c1: $f8 $c7
	ret nz                                           ; $63c3: $c0

	jp $e0de                                         ; $63c4: $c3 $de $e0


	sbc e                                            ; $63c7: $9b
	ccf                                              ; $63c8: $3f
	or c                                             ; $63c9: $b1
	ccf                                              ; $63ca: $3f
	cp a                                             ; $63cb: $bf
	ld a, e                                          ; $63cc: $7b
	ld c, $92                                        ; $63cd: $0e $92
	rst $38                                          ; $63cf: $ff
	ret nz                                           ; $63d0: $c0

	ld e, $cb                                        ; $63d1: $1e $cb
	ld c, e                                          ; $63d3: $4b
	ld c, e                                          ; $63d4: $4b
	ld c, b                                          ; $63d5: $48
	ld c, b                                          ; $63d6: $48
	ret z                                            ; $63d7: $c8

	rst $38                                          ; $63d8: $ff
	ld [hl], b                                       ; $63d9: $70
	ld sp, $dd31                                     ; $63da: $31 $31 $dd
	jr nc, jr_03c_6379                               ; $63dd: $30 $9a

jr_03c_63df:
	nop                                              ; $63df: $00
	rrca                                             ; $63e0: $0f
	ld a, [bc]                                       ; $63e1: $0a
	inc c                                            ; $63e2: $0c

jr_03c_63e3:
	add b                                            ; $63e3: $80

jr_03c_63e4:
	cp $9c                                           ; $63e4: $fe $9c
	inc c                                            ; $63e6: $0c
	ld a, h                                          ; $63e7: $7c
	add h                                            ; $63e8: $84
	ld [hl], a                                       ; $63e9: $77
	ld sp, hl                                        ; $63ea: $f9
	ld a, [hl]                                       ; $63eb: $7e
	ld a, e                                          ; $63ec: $7b
	sub e                                            ; $63ed: $93
	ld bc, $02c3                                     ; $63ee: $01 $c3 $02
	ld bc, $0103                                     ; $63f1: $01 $03 $01
	rst $38                                          ; $63f4: $ff
	adc c                                            ; $63f5: $89
	adc l                                            ; $63f6: $8d
	rlca                                             ; $63f7: $07
	rlca                                             ; $63f8: $07
	inc bc                                           ; $63f9: $03
	ld a, d                                          ; $63fa: $7a
	ld l, [hl]                                       ; $63fb: $6e
	sbc l                                            ; $63fc: $9d
	ld hl, sp-$38                                    ; $63fd: $f8 $c8
	call c, $9cff                                    ; $63ff: $dc $ff $9c
	jr nz, jr_03c_63e4                               ; $6402: $20 $e0

	jr nz, jr_03c_63e3                               ; $6404: $20 $dd

	rst $38                                          ; $6406: $ff
	ld a, l                                          ; $6407: $7d
	inc [hl]                                         ; $6408: $34
	rst SubAFromDE                                          ; $6409: $df
	rra                                              ; $640a: $1f
	rst SubAFromDE                                          ; $640b: $df
	cp $9c                                           ; $640c: $fe $9c
	db $fc                                           ; $640e: $fc
	ldh a, [$fe]                                     ; $640f: $f0 $fe
	sbc $01                                          ; $6411: $de $01
	rst SubAFromDE                                          ; $6413: $df
	db $fd                                           ; $6414: $fd
	ld a, h                                          ; $6415: $7c
	rst GetHLinHL                                          ; $6416: $cf
	sbc [hl]                                         ; $6417: $9e
	ld bc, $fede                                     ; $6418: $01 $de $fe
	ld a, l                                          ; $641b: $7d
	pop hl                                           ; $641c: $e1
	sub a                                            ; $641d: $97
	cp a                                             ; $641e: $bf
	db $e3                                           ; $641f: $e3
	di                                               ; $6420: $f3
	ld c, l                                          ; $6421: $4d
	rst GetHLinHL                                          ; $6422: $cf
	sub l                                            ; $6423: $95
	rrca                                             ; $6424: $0f
	rra                                              ; $6425: $1f
	ld a, e                                          ; $6426: $7b
	ld b, c                                          ; $6427: $41
	sbc e                                            ; $6428: $9b
	rst FarCall                                          ; $6429: $f7
	rst $38                                          ; $642a: $ff
	rst $38                                          ; $642b: $ff
	or $de                                           ; $642c: $f6 $de
	cp $9b                                           ; $642e: $fe $9b
	xor $42                                          ; $6430: $ee $42
	jp nz, $dd42                                     ; $6432: $c2 $42 $dd

	db $fd                                           ; $6435: $fd
	sbc [hl]                                         ; $6436: $9e
	pop af                                           ; $6437: $f1
	sbc $fd                                          ; $6438: $de $fd
	add b                                            ; $643a: $80
	sbc $bb                                          ; $643b: $de $bb
	cp h                                             ; $643d: $bc
	add c                                            ; $643e: $81
	jp hl                                            ; $643f: $e9


	sbc [hl]                                         ; $6440: $9e
	and a                                            ; $6441: $a7
	cp c                                             ; $6442: $b9
	ldh [$c0], a                                     ; $6443: $e0 $c0
	jp $f0fe                                         ; $6445: $c3 $fe $f0


	pop hl                                           ; $6448: $e1
	ret c                                            ; $6449: $d8

	ret nz                                           ; $644a: $c0

	ld a, b                                          ; $644b: $78
	rst $38                                          ; $644c: $ff
	ld a, b                                          ; $644d: $78
	ld h, a                                          ; $644e: $67
	ld a, c                                          ; $644f: $79
	ld h, [hl]                                       ; $6450: $66
	ei                                               ; $6451: $fb
	dec h                                            ; $6452: $25
	daa                                              ; $6453: $27
	ld h, b                                          ; $6454: $60
	rst SubAFromBC                                          ; $6455: $e7
	cp b                                             ; $6456: $b8
	and [hl]                                         ; $6457: $a6
	jr c, @+$26                                      ; $6458: $38 $24

	adc [hl]                                         ; $645a: $8e
	ld a, b                                          ; $645b: $78
	ldh a, [rIF]                                     ; $645c: $f0 $0f
	ldh a, [$0c]                                     ; $645e: $f0 $0c
	ldh a, [hDisp1_LCDC]                                     ; $6460: $f0 $8f
	ld [hl], b                                       ; $6462: $70
	adc h                                            ; $6463: $8c
	rrca                                             ; $6464: $0f
	ldh a, [rIF]                                     ; $6465: $f0 $0f
	di                                               ; $6467: $f3
	rrca                                             ; $6468: $0f
	ld [hl], b                                       ; $6469: $70
	rrca                                             ; $646a: $0f
	ld [hl], e                                       ; $646b: $73
	ld hl, $df00                                     ; $646c: $21 $00 $df
	inc sp                                           ; $646f: $33
	rst SubAFromDE                                          ; $6470: $df
	ld b, h                                          ; $6471: $44
	sub [hl]                                         ; $6472: $96
	ld d, l                                          ; $6473: $55
	ld [hl], h                                       ; $6474: $74
	ld b, [hl]                                       ; $6475: $46
	inc sp                                           ; $6476: $33
	ld b, [hl]                                       ; $6477: $46
	ld h, [hl]                                       ; $6478: $66
	inc sp                                           ; $6479: $33
	inc sp                                           ; $647a: $33
	inc [hl]                                         ; $647b: $34
	ld a, e                                          ; $647c: $7b
	or $9b                                           ; $647d: $f6 $9b
	ld h, e                                          ; $647f: $63
	ld b, e                                          ; $6480: $43
	ld [hl], $55                                     ; $6481: $36 $55
	sbc $33                                          ; $6483: $de $33
	sbc b                                            ; $6485: $98
	ld b, e                                          ; $6486: $43
	dec [hl]                                         ; $6487: $35
	ld [hl], a                                       ; $6488: $77
	halt                                             ; $6489: $76

jr_03c_648a:
	ld d, h                                          ; $648a: $54
	ld h, l                                          ; $648b: $65
	ld d, l                                          ; $648c: $55
	add a                                            ; $648d: $87
	add l                                            ; $648e: $85
	adc a                                            ; $648f: $8f
	rst SubAFromHL                                          ; $6490: $d7
	xor a                                            ; $6491: $af
	rst SubAFromDE                                          ; $6492: $df
	cp h                                             ; $6493: $bc
	cp a                                             ; $6494: $bf
	ld d, a                                          ; $6495: $57
	ld [bc], a                                       ; $6496: $02
	dec b                                            ; $6497: $05
	adc a                                            ; $6498: $8f
	rst SubAFromDE                                          ; $6499: $df
	rst $38                                          ; $649a: $ff
	rst $38                                          ; $649b: $ff
	ld a, a                                          ; $649c: $7f
	ccf                                              ; $649d: $3f
	dec b                                            ; $649e: $05
	nop                                              ; $649f: $00
	sbc $ff                                          ; $64a0: $de $ff
	sbc d                                            ; $64a2: $9a
	ei                                               ; $64a3: $fb
	db $db                                           ; $64a4: $db
	db $dd                                           ; $64a5: $dd
	dec l                                            ; $64a6: $2d
	db $ec                                           ; $64a7: $ec
	call c, $84ff                                    ; $64a8: $dc $ff $84
	ld sp, hl                                        ; $64ab: $f9
	ret c                                            ; $64ac: $d8

	jr jr_03c_648a                                   ; $64ad: $18 $db

	jp $dee7                                         ; $64af: $c3 $e7 $de


	pop bc                                           ; $64b2: $c1
	ld a, [de]                                       ; $64b3: $1a
	ldh [c], a                                       ; $64b4: $e2
	add b                                            ; $64b5: $80
	rst SubAFromBC                                          ; $64b6: $e7
	rst $38                                          ; $64b7: $ff
	ld e, a                                          ; $64b8: $5f
	rst $38                                          ; $64b9: $ff
	rst $38                                          ; $64ba: $ff
	db $e4                                           ; $64bb: $e4
	add b                                            ; $64bc: $80
	inc bc                                           ; $64bd: $03
	rst GetHLinHL                                          ; $64be: $cf
	sbc a                                            ; $64bf: $9f
	cp [hl]                                          ; $64c0: $be
	ld a, c                                          ; $64c1: $79
	rst FarCall                                          ; $64c2: $f7
	ld d, l                                          ; $64c3: $55
	ld [hl], l                                       ; $64c4: $75
	ld l, a                                          ; $64c5: $6f
	ld [hl], e                                       ; $64c6: $73
	pop hl                                           ; $64c7: $e1
	add b                                            ; $64c8: $80
	ld sp, hl                                        ; $64c9: $f9
	set 6, c                                         ; $64ca: $cb $f1
	rst $38                                          ; $64cc: $ff
	db $e4                                           ; $64cd: $e4
	pop af                                           ; $64ce: $f1
	add hl, sp                                       ; $64cf: $39
	dec l                                            ; $64d0: $2d
	ld h, e                                          ; $64d1: $63
	scf                                              ; $64d2: $37
	rra                                              ; $64d3: $1f
	rst $38                                          ; $64d4: $ff
	rst $38                                          ; $64d5: $ff
	cp a                                             ; $64d6: $bf
	xor a                                            ; $64d7: $af
	or a                                             ; $64d8: $b7
	sbc [hl]                                         ; $64d9: $9e
	jp nz, $ff82                                     ; $64da: $c2 $82 $ff

	rst $38                                          ; $64dd: $ff
	cp c                                             ; $64de: $b9
	cp l                                             ; $64df: $bd
	cp b                                             ; $64e0: $b8
	ldh a, [c]                                       ; $64e1: $f2
	ldh [$c6], a                                     ; $64e2: $e0 $c6
	rst $38                                          ; $64e4: $ff
	rst $38                                          ; $64e5: $ff
	cp $c3                                           ; $64e6: $fe $c3
	adc [hl]                                         ; $64e8: $8e
	ld b, h                                          ; $64e9: $44
	ld a, [bc]                                       ; $64ea: $0a
	db $10                                           ; $64eb: $10
	ld h, $ef                                        ; $64ec: $26 $ef
	db $eb                                           ; $64ee: $eb
	jp nz, Jump_03c_40e0                             ; $64ef: $c2 $e0 $40

	ld a, b                                          ; $64f2: $78
	inc a                                            ; $64f3: $3c
	db $fd                                           ; $64f4: $fd
	ret nz                                           ; $64f5: $c0

	add c                                            ; $64f6: $81
	ld bc, $e000                                     ; $64f7: $01 $00 $e0
	cp $9c                                           ; $64fa: $fe $9c
	di                                               ; $64fc: $f3
	pop bc                                           ; $64fd: $c1
	db $dd                                           ; $64fe: $dd
	ld a, e                                          ; $64ff: $7b
	sub [hl]                                         ; $6500: $96
	sbc c                                            ; $6501: $99
	pop af                                           ; $6502: $f1
	or a                                             ; $6503: $b7
	rra                                              ; $6504: $1f
	dec sp                                           ; $6505: $3b
	dec hl                                           ; $6506: $2b
	cpl                                              ; $6507: $2f
	sbc $0f                                          ; $6508: $de $0f
	sbc l                                            ; $650a: $9d
	inc c                                            ; $650b: $0c
	db $ec                                           ; $650c: $ec
	sbc $fc                                          ; $650d: $de $fc
	rst SubAFromDE                                          ; $650f: $df
	inc e                                            ; $6510: $1c
	sbc l                                            ; $6511: $9d
	call c, $da9d                                    ; $6512: $dc $9d $da
	ld hl, sp-$65                                    ; $6515: $f8 $9b
	ld a, b                                          ; $6517: $78
	ld sp, $7171                                     ; $6518: $31 $71 $71
	db $dd                                           ; $651b: $dd
	ld sp, $b19e                                     ; $651c: $31 $9e $b1
	reti                                             ; $651f: $d9


	ld e, $9e                                        ; $6520: $1e $9e
	inc de                                           ; $6522: $13
	sbc $17                                          ; $6523: $de $17
	sbc d                                            ; $6525: $9a
	rlca                                             ; $6526: $07
	inc bc                                           ; $6527: $03
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	inc c                                            ; $652a: $0c
	db $dd                                           ; $652b: $dd
	ld [$8dfe], sp                                   ; $652c: $08 $fe $8d
	ld h, [hl]                                       ; $652f: $66
	ld [hl], a                                       ; $6530: $77
	ld l, a                                          ; $6531: $6f
	ld a, l                                          ; $6532: $7d
	ld d, b                                          ; $6533: $50
	db $e4                                           ; $6534: $e4
	inc d                                            ; $6535: $14
	ld de, $0f01                                     ; $6536: $11 $01 $0f
	rra                                              ; $6539: $1f
	rra                                              ; $653a: $1f
	dec e                                            ; $653b: $1d
	dec de                                           ; $653c: $1b
	add hl, bc                                       ; $653d: $09
	rrca                                             ; $653e: $0f
	inc a                                            ; $653f: $3c
	dec a                                            ; $6540: $3d
	db $dd                                           ; $6541: $dd
	cp l                                             ; $6542: $bd
	sbc l                                            ; $6543: $9d
	add h                                            ; $6544: $84
	dec a                                            ; $6545: $3d
	db $db                                           ; $6546: $db
	ret nz                                           ; $6547: $c0

	sbc e                                            ; $6548: $9b
	ld hl, sp+$00                                    ; $6549: $f8 $00
	and b                                            ; $654b: $a0
	jr nz, jr_03c_65bd                               ; $654c: $20 $6f

	cp $d9                                           ; $654e: $fe $d9
	rra                                              ; $6550: $1f
	rst SubAFromDE                                          ; $6551: $df
	ld bc, $009e                                     ; $6552: $01 $9e $00
	ld [hl], e                                       ; $6555: $73
	cp $9e                                           ; $6556: $fe $9e
	cp $da                                           ; $6558: $fe $da
	rst $38                                          ; $655a: $ff
	sub a                                            ; $655b: $97
	sub l                                            ; $655c: $95
	add b                                            ; $655d: $80
	dec d                                            ; $655e: $15
	ld d, l                                          ; $655f: $55
	ld d, l                                          ; $6560: $55
	ld d, c                                          ; $6561: $51
	ld de, $d915                                     ; $6562: $11 $15 $d9
	rst $38                                          ; $6565: $ff
	rst SubAFromDE                                          ; $6566: $df
	ld b, d                                          ; $6567: $42
	sbc l                                            ; $6568: $9d
	ld b, [hl]                                       ; $6569: $46
	ld b, b                                          ; $656a: $40
	ld [hl], a                                       ; $656b: $77
	cp $d9                                           ; $656c: $fe $d9
	db $fd                                           ; $656e: $fd
	add b                                            ; $656f: $80
	or h                                             ; $6570: $b4
	cp a                                             ; $6571: $bf
	adc d                                            ; $6572: $8a
	cp e                                             ; $6573: $bb
	add [hl]                                         ; $6574: $86
	cp c                                             ; $6575: $b9

jr_03c_6576:
	add d                                            ; $6576: $82
	adc a                                            ; $6577: $8f
	jp $f1c0                                         ; $6578: $c3 $c0 $f1


	call nz, $c6f1                                   ; $657b: $c4 $f1 $c6
	pop af                                           ; $657e: $f1
	ldh a, [$fb]                                     ; $657f: $f0 $fb
	ld h, l                                          ; $6581: $65
	ld hl, sp+$67                                    ; $6582: $f8 $67
	rst $38                                          ; $6584: $ff
	ld a, e                                          ; $6585: $7b
	cp $79                                           ; $6586: $fe $79
	inc h                                            ; $6588: $24
	jr c, jr_03c_65b2                                ; $6589: $38 $27

	jr c, jr_03c_65ad                                ; $658b: $38 $20

	inc h                                            ; $658d: $24
	jr nz, @-$78                                     ; $658e: $20 $86

	ld h, $30                                        ; $6590: $26 $30
	rst GetHLinHL                                          ; $6592: $cf
	ld [hl], b                                       ; $6593: $70
	jr jr_03c_6576                                   ; $6594: $18 $e0

	sbc a                                            ; $6596: $9f
	ld [hl], b                                       ; $6597: $70
	rra                                              ; $6598: $1f
	rrca                                             ; $6599: $0f
	jr nc, jr_03c_65ab                               ; $659a: $30 $0f

	rst SubAFromBC                                          ; $659c: $e7
	rra                                              ; $659d: $1f
	ld a, a                                          ; $659e: $7f
	rrca                                             ; $659f: $0f
	rst SubAFromBC                                          ; $65a0: $e7
	ld a, a                                          ; $65a1: $7f
	db $fc                                           ; $65a2: $fc
	ret nz                                           ; $65a3: $c0

	add hl, de                                       ; $65a4: $19
	ret nz                                           ; $65a5: $c0

	rlca                                             ; $65a6: $07
	ccf                                              ; $65a7: $3f
	db $fc                                           ; $65a8: $fc
	cp $9d                                           ; $65a9: $fe $9d

jr_03c_65ab:
	ld b, $3f                                        ; $65ab: $06 $3f

jr_03c_65ad:
	sbc $ff                                          ; $65ad: $de $ff
	add b                                            ; $65af: $80
	sub h                                            ; $65b0: $94
	ld d, [hl]                                       ; $65b1: $56

jr_03c_65b2:
	push de                                          ; $65b2: $d5
	db $db                                           ; $65b3: $db
	jp c, $3518                                      ; $65b4: $da $18 $35

	scf                                              ; $65b7: $37
	jr c, jr_03c_65f3                                ; $65b8: $38 $39

	dec sp                                           ; $65ba: $3b
	rst $38                                          ; $65bb: $ff
	ld a, a                                          ; $65bc: $7f

jr_03c_65bd:
	rst $38                                          ; $65bd: $ff
	jp c, $2fd8                                      ; $65be: $da $d8 $2f

	rst SubAFromDE                                          ; $65c1: $df
	ccf                                              ; $65c2: $3f
	rst FarCall                                          ; $65c3: $f7
	ld e, c                                          ; $65c4: $59
	jp rIE                                         ; $65c5: $c3 $ff $ff


	inc de                                           ; $65c8: $13
	jr nc, jr_03c_65ab                               ; $65c9: $30 $e0

	adc [hl]                                         ; $65cb: $8e
	cp [hl]                                          ; $65cc: $be
	inc a                                            ; $65cd: $3c
	nop                                              ; $65ce: $00
	add b                                            ; $65cf: $80
	nop                                              ; $65d0: $00
	ld a, a                                          ; $65d1: $7f
	ld a, c                                          ; $65d2: $79
	ld h, a                                          ; $65d3: $67
	ld c, a                                          ; $65d4: $4f
	ld a, a                                          ; $65d5: $7f
	rst $38                                          ; $65d6: $ff
	rst AddAOntoHL                                          ; $65d7: $ef
	ld b, b                                          ; $65d8: $40
	pop bc                                           ; $65d9: $c1
	rst JumpTable                                          ; $65da: $c7
	rst SubAFromDE                                          ; $65db: $df
	ld sp, hl                                        ; $65dc: $f9
	pop bc                                           ; $65dd: $c1
	ret nz                                           ; $65de: $c0

	ret nc                                           ; $65df: $d0

	rst $38                                          ; $65e0: $ff
	sbc a                                            ; $65e1: $9f
	adc a                                            ; $65e2: $8f
	cp a                                             ; $65e3: $bf
	rst $38                                          ; $65e4: $ff
	db $ec                                           ; $65e5: $ec
	jr @+$34                                         ; $65e6: $18 $32

	rst $38                                          ; $65e8: $ff
	jp nz, $c1f0                                     ; $65e9: $c2 $f0 $c1

	add e                                            ; $65ec: $83
	sbc h                                            ; $65ed: $9c
	ld hl, sp-$71                                    ; $65ee: $f8 $8f
	ei                                               ; $65f0: $fb
	rst $38                                          ; $65f1: $ff
	cp a                                             ; $65f2: $bf

jr_03c_65f3:
	ret z                                            ; $65f3: $c8

	ld [hl], e                                       ; $65f4: $73
	ld a, a                                          ; $65f5: $7f
	ld a, [hl]                                       ; $65f6: $7e
	pop bc                                           ; $65f7: $c1
	nop                                              ; $65f8: $00
	ld b, b                                          ; $65f9: $40
	ld b, d                                          ; $65fa: $42
	ld [hl], a                                       ; $65fb: $77
	rst $38                                          ; $65fc: $ff
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	ld a, $7a                                        ; $65ff: $3e $7a
	cp d                                             ; $6601: $ba
	sub [hl]                                         ; $6602: $96
	rra                                              ; $6603: $1f
	inc e                                            ; $6604: $1c
	db $fc                                           ; $6605: $fc
	nop                                              ; $6606: $00
	ld bc, $073c                                     ; $6607: $01 $3c $07
	nop                                              ; $660a: $00
	ldh [rPCM12], a                                  ; $660b: $e0 $76
	jp nz, $1f7f                                     ; $660d: $c2 $7f $1f

	sub a                                            ; $6610: $97
	or [hl]                                          ; $6611: $b6
	ld d, a                                          ; $6612: $57
	and d                                            ; $6613: $a2
	ld b, l                                          ; $6614: $45
	cp h                                             ; $6615: $bc
	ld c, h                                          ; $6616: $4c
	cp a                                             ; $6617: $bf
	ld c, h                                          ; $6618: $4c
	sbc $0c                                          ; $6619: $de $0c
	add b                                            ; $661b: $80
	ld [$1f07], sp                                   ; $661c: $08 $07 $1f
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	or $7f                                           ; $6621: $f6 $7f
	jp hl                                            ; $6623: $e9


	ld [hl], d                                       ; $6624: $72
	jr c, jr_03c_6635                                ; $6625: $38 $0e

	rst $38                                          ; $6627: $ff
	rra                                              ; $6628: $1f
	ld [$0600], sp                                   ; $6629: $08 $00 $06
	dec c                                            ; $662c: $0d
	rst JumpTable                                          ; $662d: $c7
	pop af                                           ; $662e: $f1
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	ld sp, $f3b1                                     ; $6631: $31 $b1 $f3
	ld [hl], l                                       ; $6634: $75

jr_03c_6635:
	adc c                                            ; $6635: $89
	inc sp                                           ; $6636: $33
	adc a                                            ; $6637: $8f
	jp $1e1e                                         ; $6638: $c3 $1e $1e


	sbc d                                            ; $663b: $9a
	inc e                                            ; $663c: $1c
	sbc b                                            ; $663d: $98
	ld [hl], b                                       ; $663e: $70
	ret nz                                           ; $663f: $c0

jr_03c_6640:
	ld [hl], b                                       ; $6640: $70
	ld a, e                                          ; $6641: $7b
	adc [hl]                                         ; $6642: $8e
	sbc c                                            ; $6643: $99
	ld bc, $0d02                                     ; $6644: $01 $02 $0d
	ld e, $33                                        ; $6647: $1e $33
	ld [hl], $7b                                     ; $6649: $36 $7b
	ld hl, sp-$80                                    ; $664b: $f8 $80
	inc bc                                           ; $664d: $03
	ld b, $0d                                        ; $664e: $06 $0d
	rra                                              ; $6650: $1f
	ld e, $79                                        ; $6651: $1e $79
	and a                                            ; $6653: $a7
	ld [hl], b                                       ; $6654: $70
	db $e4                                           ; $6655: $e4
	and h                                            ; $6656: $a4
	inc h                                            ; $6657: $24
	and h                                            ; $6658: $a4
	ld h, h                                          ; $6659: $64
	dec hl                                           ; $665a: $2b
	rst SubAFromDE                                          ; $665b: $df
	adc a                                            ; $665c: $8f
	rra                                              ; $665d: $1f
	ld e, a                                          ; $665e: $5f
	rst SubAFromDE                                          ; $665f: $df
	rst SubAFromDE                                          ; $6660: $df
	ld e, a                                          ; $6661: $5f
	nop                                              ; $6662: $00
	add b                                            ; $6663: $80
	ldh [c], a                                       ; $6664: $e2
	db $fd                                           ; $6665: $fd
	cp e                                             ; $6666: $bb
	sub c                                            ; $6667: $91
	add e                                            ; $6668: $83
	add a                                            ; $6669: $87
	nop                                              ; $666a: $00
	add b                                            ; $666b: $80
	sub c                                            ; $666c: $91
	pop bc                                           ; $666d: $c1
	jp nz, $ffe6                                     ; $666e: $c2 $e6 $ff

	cp $fc                                           ; $6671: $fe $fc
	and b                                            ; $6673: $a0
	and b                                            ; $6674: $a0
	ldh [$a0], a                                     ; $6675: $e0 $a0
	and b                                            ; $6677: $a0
	ld h, b                                          ; $6678: $60
	jr nz, @-$4e                                     ; $6679: $20 $b0

	sbc $1f                                          ; $667b: $de $1f
	rst SubAFromDE                                          ; $667d: $df
	ld e, a                                          ; $667e: $5f
	sbc l                                            ; $667f: $9d
	sbc a                                            ; $6680: $9f
	rra                                              ; $6681: $1f
	ld a, e                                          ; $6682: $7b
	sbc [hl]                                         ; $6683: $9e
	ei                                               ; $6684: $fb
	reti                                             ; $6685: $d9


	rst $38                                          ; $6686: $ff
	sbc [hl]                                         ; $6687: $9e
	call z, $f04b                                    ; $6688: $cc $4b $f0
	sbc d                                            ; $668b: $9a
	add [hl]                                         ; $668c: $86
	ld [bc], a                                       ; $668d: $02
	ld b, $02                                        ; $668e: $06 $02
	inc b                                            ; $6690: $04
	ld a, e                                          ; $6691: $7b
	cp $d9                                           ; $6692: $fe $d9
	db $fd                                           ; $6694: $fd
	add b                                            ; $6695: $80
	db $e4                                           ; $6696: $e4
	ei                                               ; $6697: $fb
	db $fc                                           ; $6698: $fc
	sbc a                                            ; $6699: $9f
	adc d                                            ; $669a: $8a
	sub a                                            ; $669b: $97
	add b                                            ; $669c: $80
	sub a                                            ; $669d: $97
	sbc e                                            ; $669e: $9b
	add b                                            ; $669f: $80
	add e                                            ; $66a0: $83
	ldh [$f1], a                                     ; $66a1: $e0 $f1
	ld hl, sp-$01                                    ; $66a3: $f8 $ff
	xor $fe                                          ; $66a5: $ee $fe
	ld a, c                                          ; $66a7: $79
	cp $7f                                           ; $66a8: $fe $7f
	pop af                                           ; $66aa: $f1
	ld h, b                                          ; $66ab: $60
	rst $38                                          ; $66ac: $ff
	ld h, c                                          ; $66ad: $61
	jr nz, jr_03c_66d6                               ; $66ae: $20 $26

	jr nz, jr_03c_66d2                               ; $66b0: $20 $20

	ld l, $3e                                        ; $66b2: $2e $3e
	jr nz, jr_03c_6640                               ; $66b4: $20 $8a

	ld a, $60                                        ; $66b6: $3e $60
	rra                                              ; $66b8: $1f
	ldh [rTAC], a                                    ; $66b9: $e0 $07
	ret nz                                           ; $66bb: $c0

	add e                                            ; $66bc: $83
	nop                                              ; $66bd: $00
	ld a, a                                          ; $66be: $7f
	rra                                              ; $66bf: $1f
	rst SubAFromBC                                          ; $66c0: $e7
	rra                                              ; $66c1: $1f
	rst $38                                          ; $66c2: $ff
	ccf                                              ; $66c3: $3f
	ld a, h                                          ; $66c4: $7c
	rst $38                                          ; $66c5: $ff
	rst $38                                          ; $66c6: $ff
	ldh a, [$c1]                                     ; $66c7: $f0 $c1
	rlca                                             ; $66c9: $07
	dec e                                            ; $66ca: $1d
	ld a, c                                          ; $66cb: $79
	jp nz, $fedf                                     ; $66cc: $c2 $df $fe

	sub l                                            ; $66cf: $95
	ei                                               ; $66d0: $fb
	rst AddAOntoHL                                          ; $66d1: $ef

jr_03c_66d2:
	cp [hl]                                          ; $66d2: $be
	cp b                                             ; $66d3: $b8
	ldh [rP1], a                                     ; $66d4: $e0 $00

jr_03c_66d6:
	ld bc, $b737                                     ; $66d6: $01 $37 $b7
	rla                                              ; $66d9: $17
	sbc $97                                          ; $66da: $de $97
	sbc c                                            ; $66dc: $99
	rst SubAFromHL                                          ; $66dd: $d7
	rla                                              ; $66de: $17
	ret c                                            ; $66df: $d8

	ret c                                            ; $66e0: $d8

	ld hl, sp+$78                                    ; $66e1: $f8 $78
	sbc $38                                          ; $66e3: $de $38
	sbc [hl]                                         ; $66e5: $9e
	cp b                                             ; $66e6: $b8
	sbc $7f                                          ; $66e7: $de $7f
	ld a, d                                          ; $66e9: $7a
	ei                                               ; $66ea: $fb
	sbc l                                            ; $66eb: $9d
	db $fc                                           ; $66ec: $fc
	add c                                            ; $66ed: $81
	sbc $80                                          ; $66ee: $de $80
	ld [hl], a                                       ; $66f0: $77
	dec a                                            ; $66f1: $3d
	sbc c                                            ; $66f2: $99
	ld a, a                                          ; $66f3: $7f
	nop                                              ; $66f4: $00
	pop af                                           ; $66f5: $f1
	rst GetHLinHL                                          ; $66f6: $cf
	sbc a                                            ; $66f7: $9f
	ccf                                              ; $66f8: $3f
	ld a, e                                          ; $66f9: $7b
	db $ed                                           ; $66fa: $ed
	sbc d                                            ; $66fb: $9a
	rst $38                                          ; $66fc: $ff
	ld c, $3e                                        ; $66fd: $0e $3e
	ld a, h                                          ; $66ff: $7c
	db $fd                                           ; $6700: $fd
	sbc $ff                                          ; $6701: $de $ff
	sbc e                                            ; $6703: $9b
	ld e, a                                          ; $6704: $5f
	rra                                              ; $6705: $1f
	nop                                              ; $6706: $00
	rst SubAFromHL                                          ; $6707: $d7
	db $dd                                           ; $6708: $dd
	rst $38                                          ; $6709: $ff
	sbc e                                            ; $670a: $9b
	adc a                                            ; $670b: $8f
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	inc a                                            ; $670e: $3c
	db $dd                                           ; $670f: $dd
	rst $38                                          ; $6710: $ff
	sub [hl]                                         ; $6711: $96
	pop bc                                           ; $6712: $c1
	rst $38                                          ; $6713: $ff
	nop                                              ; $6714: $00
	ret nz                                           ; $6715: $c0

	ccf                                              ; $6716: $3f
	adc $fa                                          ; $6717: $ce $fa
	db $fc                                           ; $6719: $fc
	cp $76                                           ; $671a: $fe $76
	jp nc, $df7b                                     ; $671c: $d2 $7b $df

	sub [hl]                                         ; $671f: $96
	and e                                            ; $6720: $a3
	db $fd                                           ; $6721: $fd
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	add sp, $1c                                      ; $6724: $e8 $1c
	rlca                                             ; $6726: $07
	db $ec                                           ; $6727: $ec
	ld a, h                                          ; $6728: $7c
	db $fd                                           ; $6729: $fd
	sbc d                                            ; $672a: $9a
	ldh [$f8], a                                     ; $672b: $e0 $f8
	rst $38                                          ; $672d: $ff
	xor d                                            ; $672e: $aa
	ld d, l                                          ; $672f: $55
	ld [hl], a                                       ; $6730: $77
	cp $9d                                           ; $6731: $fe $9d
	adc b                                            ; $6733: $88
	ret nz                                           ; $6734: $c0

	ld sp, hl                                        ; $6735: $f9
	sbc c                                            ; $6736: $99
	xor a                                            ; $6737: $af
	ld d, a                                          ; $6738: $57
	add e                                            ; $6739: $83
	nop                                              ; $673a: $00
	and b                                            ; $673b: $a0
	ld b, b                                          ; $673c: $40
	rst FarCall                                          ; $673d: $f7
	sub h                                            ; $673e: $94
	ldh a, [$fc]                                     ; $673f: $f0 $fc
	ld a, [$7ffc]                                    ; $6741: $fa $fc $7f
	ccf                                              ; $6744: $3f
	dec e                                            ; $6745: $1d
	ld c, $0f                                        ; $6746: $0e $0f
	inc bc                                           ; $6748: $03
	ld bc, $80fc                                     ; $6749: $01 $fc $80
	db $f4                                           ; $674c: $f4
	ld a, b                                          ; $674d: $78
	ld d, a                                          ; $674e: $57
	or a                                             ; $674f: $b7
	ld h, l                                          ; $6750: $65
	pop af                                           ; $6751: $f1
	ld hl, sp-$06                                    ; $6752: $f8 $fa
	inc a                                            ; $6754: $3c
	ld hl, sp-$08                                    ; $6755: $f8 $f8
	ld a, h                                          ; $6757: $7c
	ld a, e                                          ; $6758: $7b
	ld c, $07                                        ; $6759: $0e $07
	ld bc, $4d4d                                     ; $675b: $01 $4d $4d
	ld a, a                                          ; $675e: $7f
	dec sp                                           ; $675f: $3b
	ld b, c                                          ; $6760: $41
	ret nz                                           ; $6761: $c0

	ret nc                                           ; $6762: $d0

	adc h                                            ; $6763: $8c
	ld a, a                                          ; $6764: $7f
	ld a, a                                          ; $6765: $7f
	ld a, [hl]                                       ; $6766: $7e
	ld a, [hl]                                       ; $6767: $7e
	cp a                                             ; $6768: $bf
	ccf                                              ; $6769: $3f
	ccf                                              ; $676a: $3f
	sbc c                                            ; $676b: $99
	ld a, a                                          ; $676c: $7f
	xor $ff                                          ; $676d: $ee $ff
	cp d                                             ; $676f: $ba
	call Call_03c_7bb2                               ; $6770: $cd $b2 $7b
	cp $9d                                           ; $6773: $fe $9d
	ld hl, sp+$30                                    ; $6775: $f8 $30
	ei                                               ; $6777: $fb
	ld a, [hl]                                       ; $6778: $7e
	add $6f                                          ; $6779: $c6 $6f
	cp $d9                                           ; $677b: $fe $d9
	rra                                              ; $677d: $1f
	ld b, [hl]                                       ; $677e: $46
	ret nz                                           ; $677f: $c0

	ld b, a                                          ; $6780: $47
	ldh a, [rPCM12]                                  ; $6781: $f0 $76
	call nz, $049b                                   ; $6783: $c4 $9b $04
	inc bc                                           ; $6786: $03
	dec b                                            ; $6787: $05
	nop                                              ; $6788: $00
	call c, $defd                                    ; $6789: $dc $fd $de
	db $fc                                           ; $678c: $fc
	add c                                            ; $678d: $81
	add b                                            ; $678e: $80
	rst $38                                          ; $678f: $ff
	add b                                            ; $6790: $80
	cp h                                             ; $6791: $bc
	add e                                            ; $6792: $83
	ret nz                                           ; $6793: $c0

	db $ec                                           ; $6794: $ec
	dec e                                            ; $6795: $1d
	rst $38                                          ; $6796: $ff
	add [hl]                                         ; $6797: $86
	rst $38                                          ; $6798: $ff
	jp $fffc                                         ; $6799: $c3 $fc $ff


	rra                                              ; $679c: $1f
	inc bc                                           ; $679d: $03
	db $fc                                           ; $679e: $fc
	ld h, b                                          ; $679f: $60
	pop af                                           ; $67a0: $f1
	db $ed                                           ; $67a1: $ed
	pop hl                                           ; $67a2: $e1
	ld l, c                                          ; $67a3: $69
	ld hl, $23e0                                     ; $67a4: $21 $e0 $23
	ld a, $2e                                        ; $67a7: $3e $2e
	ld [hl-], a                                      ; $67a9: $32
	ld a, $b7                                        ; $67aa: $3e $b7
	ld a, e                                          ; $67ac: $7b
	ret nz                                           ; $67ad: $c0

	sbc e                                            ; $67ae: $9b
	rrca                                             ; $67af: $0f
	nop                                              ; $67b0: $00
	rst $38                                          ; $67b1: $ff
	nop                                              ; $67b2: $00
	ld a, d                                          ; $67b3: $7a
	push bc                                          ; $67b4: $c5
	call nc, $9dff                                   ; $67b5: $d4 $ff $9d
	db $fd                                           ; $67b8: $fd
	ei                                               ; $67b9: $fb
	ld l, a                                          ; $67ba: $6f
	xor b                                            ; $67bb: $a8
	ld a, a                                          ; $67bc: $7f
	or [hl]                                          ; $67bd: $b6
	sub a                                            ; $67be: $97
	nop                                              ; $67bf: $00
	ld de, $8197                                     ; $67c0: $11 $97 $81
	cp a                                             ; $67c3: $bf
	adc b                                            ; $67c4: $88
	pop af                                           ; $67c5: $f1
	and d                                            ; $67c6: $a2
	ld a, b                                          ; $67c7: $78
	inc sp                                           ; $67c8: $33
	sub a                                            ; $67c9: $97
	ld a, a                                          ; $67ca: $7f
	ld b, b                                          ; $67cb: $40
	ld [hl], a                                       ; $67cc: $77
	rra                                              ; $67cd: $1f
	ld a, a                                          ; $67ce: $7f
	rst $38                                          ; $67cf: $ff
	ld a, [$7a32]                                    ; $67d0: $fa $32 $7a
	rst JumpTable                                          ; $67d3: $c7
	adc l                                            ; $67d4: $8d
	dec b                                            ; $67d5: $05
	dec a                                            ; $67d6: $3d
	rst $38                                          ; $67d7: $ff
	db $fd                                           ; $67d8: $fd
	db $fd                                           ; $67d9: $fd
	cp $78                                           ; $67da: $fe $78
	ldh [$c8], a                                     ; $67dc: $e0 $c8
	rst GetHLinHL                                          ; $67de: $cf
	rst $38                                          ; $67df: $ff
	rra                                              ; $67e0: $1f
	add a                                            ; $67e1: $87
	ld l, c                                          ; $67e2: $69
	rlca                                             ; $67e3: $07
	nop                                              ; $67e4: $00
	rst $38                                          ; $67e5: $ff
	cp a                                             ; $67e6: $bf
	ld a, e                                          ; $67e7: $7b
	ldh [rPCM34], a                                  ; $67e8: $e0 $77
	ld h, l                                          ; $67ea: $65
	sub [hl]                                         ; $67eb: $96
	rra                                              ; $67ec: $1f
	ccf                                              ; $67ed: $3f
	ld sp, hl                                        ; $67ee: $f9
	adc h                                            ; $67ef: $8c
	or c                                             ; $67f0: $b1
	rst $38                                          ; $67f1: $ff
	nop                                              ; $67f2: $00
	add b                                            ; $67f3: $80
	cp $78                                           ; $67f4: $fe $78
	pop hl                                           ; $67f6: $e1
	sbc [hl]                                         ; $67f7: $9e
	adc $73                                          ; $67f8: $ce $73
	ld bc, $ffdf                                     ; $67fa: $01 $df $ff
	sbc d                                            ; $67fd: $9a
	rst FarCall                                          ; $67fe: $f7
	sbc $25                                          ; $67ff: $de $25
	ld c, d                                          ; $6801: $4a
	and c                                            ; $6802: $a1
	ld a, e                                          ; $6803: $7b
	ld h, b                                          ; $6804: $60
	sbc [hl]                                         ; $6805: $9e
	ret z                                            ; $6806: $c8

	ld l, a                                          ; $6807: $6f
	ld e, b                                          ; $6808: $58
	sub a                                            ; $6809: $97
	cp a                                             ; $680a: $bf
	db $fd                                           ; $680b: $fd
	ld h, b                                          ; $680c: $60
	ld b, l                                          ; $680d: $45
	adc d                                            ; $680e: $8a
	ld b, l                                          ; $680f: $45
	xor d                                            ; $6810: $aa
	ld hl, sp+$6a                                    ; $6811: $f8 $6a
	adc $97                                          ; $6813: $ce $97
	ret nz                                           ; $6815: $c0

	adc d                                            ; $6816: $8a
	ld d, b                                          ; $6817: $50
	xor b                                            ; $6818: $a8
	ld d, b                                          ; $6819: $50
	ld [$2014], sp                                   ; $681a: $08 $14 $20
	jp hl                                            ; $681d: $e9


	ld l, d                                          ; $681e: $6a
	ret                                              ; $681f: $c9


	ld hl, sp-$67                                    ; $6820: $f8 $99
	cp l                                             ; $6822: $bd
	ld d, l                                          ; $6823: $55
	xor e                                            ; $6824: $ab
	ld d, l                                          ; $6825: $55
	ld a, [bc]                                       ; $6826: $0a
	dec d                                            ; $6827: $15
	ld a, b                                          ; $6828: $78
	ccf                                              ; $6829: $3f
	cp $7b                                           ; $682a: $fe $7b
	push hl                                          ; $682c: $e5
	sub [hl]                                         ; $682d: $96
	ld bc, $8888                                     ; $682e: $01 $88 $88
	adc c                                            ; $6831: $89
	adc c                                            ; $6832: $89
	add hl, bc                                       ; $6833: $09
	adc d                                            ; $6834: $8a
	ld a, [bc]                                       ; $6835: $0a
	adc h                                            ; $6836: $8c
	ld a, d                                          ; $6837: $7a
	dec a                                            ; $6838: $3d
	ld a, a                                          ; $6839: $7f
	db $fd                                           ; $683a: $fd
	rst SubAFromDE                                          ; $683b: $df
	cp $8e                                           ; $683c: $fe $8e
	ld a, h                                          ; $683e: $7c
	ldh a, [c]                                       ; $683f: $f2
	dec a                                            ; $6840: $3d
	ld c, $f3                                        ; $6841: $0e $f3
	ld [hl], h                                       ; $6843: $74
	add b                                            ; $6844: $80
	ld h, a                                          ; $6845: $67
	add hl, de                                       ; $6846: $19
	add b                                            ; $6847: $80
	ldh [$f8], a                                     ; $6848: $e0 $f8
	ld c, $83                                        ; $684a: $0e $83
	ld a, a                                          ; $684c: $7f
	jr jr_03c_6855                                   ; $684d: $18 $06

	halt                                             ; $684f: $76
	call nz, $e79b                                   ; $6850: $c4 $9b $e7
	ld e, a                                          ; $6853: $5f
	ld a, a                                          ; $6854: $7f

jr_03c_6855:
	add c                                            ; $6855: $81
	db $dd                                           ; $6856: $dd
	rra                                              ; $6857: $1f
	sbc [hl]                                         ; $6858: $9e
	sbc a                                            ; $6859: $9f
	ld l, d                                          ; $685a: $6a
	jp nc, Jump_03c_4c9b                             ; $685b: $d2 $9b $4c

	rst $38                                          ; $685e: $ff
	rst $38                                          ; $685f: $ff
	ld [bc], a                                       ; $6860: $02
	ld d, [hl]                                       ; $6861: $56
	jp nz, $cc9b                                     ; $6862: $c2 $9b $cc

	rst $38                                          ; $6865: $ff
	rst $38                                          ; $6866: $ff
	ld [$f067], sp                                   ; $6867: $08 $67 $f0
	ld a, a                                          ; $686a: $7f
	ld c, $7f                                        ; $686b: $0e $7f
	cp $de                                           ; $686d: $fe $de
	db $fc                                           ; $686f: $fc
	sbc [hl]                                         ; $6870: $9e
	jr nz, @-$23                                     ; $6871: $20 $db

	db $fc                                           ; $6873: $fc
	ld a, d                                          ; $6874: $7a
	dec e                                            ; $6875: $1d
	sbc b                                            ; $6876: $98
	rra                                              ; $6877: $1f
	dec b                                            ; $6878: $05
	ld [bc], a                                       ; $6879: $02
	dec b                                            ; $687a: $05
	ld a, [bc]                                       ; $687b: $0a
	ld d, c                                          ; $687c: $51
	adc d                                            ; $687d: $8a
	ld sp, hl                                        ; $687e: $f9
	sbc h                                            ; $687f: $9c
	rlca                                             ; $6880: $07
	ldh [c], a                                       ; $6881: $e2
	ld a, l                                          ; $6882: $7d
	ld [hl], d                                       ; $6883: $72
	dec c                                            ; $6884: $0d
	ld h, [hl]                                       ; $6885: $66
	ld [hl], a                                       ; $6886: $77
	sub h                                            ; $6887: $94
	add b                                            ; $6888: $80
	inc a                                            ; $6889: $3c
	add hl, de                                       ; $688a: $19
	pop hl                                           ; $688b: $e1
	ld a, a                                          ; $688c: $7f
	rla                                              ; $688d: $17

jr_03c_688e:
	ld a, [hl+]                                      ; $688e: $2a

jr_03c_688f:
	ld d, l                                          ; $688f: $55
	rst $38                                          ; $6890: $ff
	rst $38                                          ; $6891: $ff
	rlca                                             ; $6892: $07
	db $fc                                           ; $6893: $fc
	ld a, l                                          ; $6894: $7d
	db $dd                                           ; $6895: $dd
	adc [hl]                                         ; $6896: $8e
	rst GetHLinHL                                          ; $6897: $cf
	inc bc                                           ; $6898: $03
	pop bc                                           ; $6899: $c1
	add c                                            ; $689a: $81
	inc bc                                           ; $689b: $03
	rlca                                             ; $689c: $07
	inc bc                                           ; $689d: $03
	rlca                                             ; $689e: $07
	ccf                                              ; $689f: $3f
	rst $38                                          ; $68a0: $ff
	rst JumpTable                                          ; $68a1: $c7
	add e                                            ; $68a2: $83
	adc a                                            ; $68a3: $8f
	rra                                              ; $68a4: $1f
	ld b, a                                          ; $68a5: $47
	rrca                                             ; $68a6: $0f
	rra                                              ; $68a7: $1f
	ld [hl], c                                       ; $68a8: $71
	and c                                            ; $68a9: $a1
	inc bc                                           ; $68aa: $03
	rst $38                                          ; $68ab: $ff
	ld h, d                                          ; $68ac: $62
	add h                                            ; $68ad: $84
	ld a, a                                          ; $68ae: $7f
	ld a, [hl-]                                      ; $68af: $3a
	rst SubAFromDE                                          ; $68b0: $df
	ld hl, sp+$79                                    ; $68b1: $f8 $79
	jr c, jr_03c_688f                                ; $68b3: $38 $da

	rst $38                                          ; $68b5: $ff
	sbc [hl]                                         ; $68b6: $9e
	db $e4                                           ; $68b7: $e4
	sbc $ff                                          ; $68b8: $de $ff
	sbc l                                            ; $68ba: $9d
	ld h, b                                          ; $68bb: $60
	ld l, b                                          ; $68bc: $68
	ld a, e                                          ; $68bd: $7b
	ld h, [hl]                                       ; $68be: $66
	sbc [hl]                                         ; $68bf: $9e
	ldh [$7a], a                                     ; $68c0: $e0 $7a
	xor l                                            ; $68c2: $ad
	sbc $ff                                          ; $68c3: $de $ff
	sub a                                            ; $68c5: $97
	ld b, b                                          ; $68c6: $40
	sub h                                            ; $68c7: $94
	and b                                            ; $68c8: $a0
	sbc $7f                                          ; $68c9: $de $7f
	ccf                                              ; $68cb: $3f
	ld e, a                                          ; $68cc: $5f
	ccf                                              ; $68cd: $3f
	db $fd                                           ; $68ce: $fd
	sbc h                                            ; $68cf: $9c
	sub b                                            ; $68d0: $90
	ldh a, [$e2]                                     ; $68d1: $f0 $e2
	ld [hl], l                                       ; $68d3: $75
	ld l, c                                          ; $68d4: $69
	ld a, e                                          ; $68d5: $7b
	ld a, e                                          ; $68d6: $7b
	sbc [hl]                                         ; $68d7: $9e
	add b                                            ; $68d8: $80
	ld h, c                                          ; $68d9: $61
	add b                                            ; $68da: $80
	ldh [$df], a                                     ; $68db: $e0 $df
	ld l, [hl]                                       ; $68dd: $6e
	xor a                                            ; $68de: $af
	rst SubAFromDE                                          ; $68df: $df
	ld bc, $046b                                     ; $68e0: $01 $6b $04
	sub [hl]                                         ; $68e3: $96
	inc c                                            ; $68e4: $0c
	call z, Call_03c_4c4c                            ; $68e5: $cc $4c $4c
	inc c                                            ; $68e8: $0c
	inc c                                            ; $68e9: $0c
	ld c, h                                          ; $68ea: $4c
	ld a, h                                          ; $68eb: $7c
	ld hl, sp-$25                                    ; $68ec: $f8 $db
	jr c, jr_03c_688e                                ; $68ee: $38 $9e

	ld b, $6b                                        ; $68f0: $06 $6b
	add sp, $66                                      ; $68f2: $e8 $66
	adc c                                            ; $68f4: $89
	sbc l                                            ; $68f5: $9d
	ld a, a                                          ; $68f6: $7f
	add b                                            ; $68f7: $80
	ld l, [hl]                                       ; $68f8: $6e
	db $db                                           ; $68f9: $db
	sbc l                                            ; $68fa: $9d
	add b                                            ; $68fb: $80
	ld a, a                                          ; $68fc: $7f
	ei                                               ; $68fd: $fb
	sbc [hl]                                         ; $68fe: $9e
	ld a, [hl]                                       ; $68ff: $7e
	ld a, c                                          ; $6900: $79
	pop de                                           ; $6901: $d1
	db $fd                                           ; $6902: $fd
	sbc [hl]                                         ; $6903: $9e
	add c                                            ; $6904: $81
	ld l, d                                          ; $6905: $6a
	call nz, $fb9e                                   ; $6906: $c4 $9e $fb
	ld l, a                                          ; $6909: $6f
	ldh a, [$9d]                                     ; $690a: $f0 $9d
	inc bc                                           ; $690c: $03
	inc b                                            ; $690d: $04
	ld l, e                                          ; $690e: $6b
	ldh a, [hDisp1_WX]                                     ; $690f: $f0 $96
	db $ed                                           ; $6911: $ed
	ld bc, $01f9                                     ; $6912: $01 $f9 $01
	ld bc, $0504                                     ; $6915: $01 $04 $05
	db $fc                                           ; $6918: $fc
	db $10                                           ; $6919: $10
	ld a, d                                          ; $691a: $7a
	call nz, $bb7b                                   ; $691b: $c4 $7b $bb
	sub [hl]                                         ; $691e: $96
	ld bc, $a245                                     ; $691f: $01 $45 $a2
	push de                                          ; $6922: $d5
	xor d                                            ; $6923: $aa
	ld [hl], l                                       ; $6924: $75
	xor d                                            ; $6925: $aa
	ld e, l                                          ; $6926: $5d
	xor [hl]                                         ; $6927: $ae
	ld [hl], e                                       ; $6928: $73
	cp h                                             ; $6929: $bc
	sbc e                                            ; $692a: $9b
	ld b, b                                          ; $692b: $40
	and b                                            ; $692c: $a0
	ld d, b                                          ; $692d: $50
	ld d, h                                          ; $692e: $54
	ld l, h                                          ; $692f: $6c
	rst GetHLinHL                                          ; $6930: $cf
	sbc [hl]                                         ; $6931: $9e
	xor d                                            ; $6932: $aa
	ld sp, hl                                        ; $6933: $f9
	sub a                                            ; $6934: $97
	ld a, [hl+]                                      ; $6935: $2a
	add l                                            ; $6936: $85
	ld c, d                                          ; $6937: $4a
	sub l                                            ; $6938: $95
	ld a, [hl+]                                      ; $6939: $2a
	ld d, l                                          ; $693a: $55
	dec hl                                           ; $693b: $2b
	ld d, l                                          ; $693c: $55
	ld sp, hl                                        ; $693d: $f9
	sub d                                            ; $693e: $92
	push hl                                          ; $693f: $e5
	db $e4                                           ; $6940: $e4
	xor $1f                                          ; $6941: $ee $1f
	ld a, $f8                                        ; $6943: $3e $f8
	adc a                                            ; $6945: $8f
	nop                                              ; $6946: $00
	rra                                              ; $6947: $1f
	rra                                              ; $6948: $1f
	ld de, $c1e1                                     ; $6949: $11 $e1 $c1
	ld a, d                                          ; $694c: $7a
	xor l                                            ; $694d: $ad
	sbc c                                            ; $694e: $99
	adc a                                            ; $694f: $8f
	ccf                                              ; $6950: $3f
	rst $38                                          ; $6951: $ff
	jp $fd35                                         ; $6952: $c3 $35 $fd


	ld a, c                                          ; $6955: $79
	ld e, e                                          ; $6956: $5b
	sbc $ff                                          ; $6957: $de $ff
	sbc [hl]                                         ; $6959: $9e
	bit 7, d                                         ; $695a: $cb $7a
	add hl, bc                                       ; $695c: $09
	sbc l                                            ; $695d: $9d
	rst $38                                          ; $695e: $ff
	cp e                                             ; $695f: $bb
	db $dd                                           ; $6960: $dd
	rst $38                                          ; $6961: $ff
	sbc e                                            ; $6962: $9b
	rst AddAOntoHL                                          ; $6963: $ef
	nop                                              ; $6964: $00
	rst $38                                          ; $6965: $ff
	rst JumpTable                                          ; $6966: $c7
	sbc $ff                                          ; $6967: $de $ff
	sbc [hl]                                         ; $6969: $9e
	rst GetHLinHL                                          ; $696a: $cf
	ld a, e                                          ; $696b: $7b
	add b                                            ; $696c: $80
	sbc b                                            ; $696d: $98
	ei                                               ; $696e: $fb
	cp $ff                                           ; $696f: $fe $ff
	ld hl, $dffd                                     ; $6971: $21 $fd $df
	ld e, $dd                                        ; $6974: $1e $dd
	rst $38                                          ; $6976: $ff
	ld a, h                                          ; $6977: $7c
	xor d                                            ; $6978: $aa
	sbc [hl]                                         ; $6979: $9e
	ld a, $6c                                        ; $697a: $3e $6c
	ld hl, sp-$69                                    ; $697c: $f8 $97
	and $80                                          ; $697e: $e6 $80
	nop                                              ; $6980: $00
	rst $38                                          ; $6981: $ff
	ld a, h                                          ; $6982: $7c
	ei                                               ; $6983: $fb
	rst $38                                          ; $6984: $ff
	and $75                                          ; $6985: $e6 $75
	and b                                            ; $6987: $a0
	ld a, l                                          ; $6988: $7d
	dec bc                                           ; $6989: $0b
	rst SubAFromDE                                          ; $698a: $df
	rst $38                                          ; $698b: $ff
	ld a, d                                          ; $698c: $7a
	jp c, $ffde                                      ; $698d: $da $de $ff

	sbc l                                            ; $6990: $9d
	ld a, $3c                                        ; $6991: $3e $3c
	ld [hl], l                                       ; $6993: $75
	add b                                            ; $6994: $80
	sbc h                                            ; $6995: $9c
	db $fc                                           ; $6996: $fc
	ldh a, [$e4]                                     ; $6997: $f0 $e4
	halt                                             ; $6999: $76
	db $d3                                           ; $699a: $d3
	sbc l                                            ; $699b: $9d
	db $fc                                           ; $699c: $fc
	add sp, $6e                                      ; $699d: $e8 $6e
	call $d67f                                       ; $699f: $cd $7f $d6
	ldh [$c3], a                                     ; $69a2: $e0 $c3
	sub a                                            ; $69a4: $97
	ld c, h                                          ; $69a5: $4c
	ld e, h                                          ; $69a6: $5c
	ld d, h                                          ; $69a7: $54
	ld d, a                                          ; $69a8: $57
	ld [hl], b                                       ; $69a9: $70
	jr z, jr_03c_69b0                                ; $69aa: $28 $04

	db $10                                           ; $69ac: $10
	db $dd                                           ; $69ad: $dd
	jr c, @-$63                                      ; $69ae: $38 $9b

jr_03c_69b0:
	rra                                              ; $69b0: $1f
	inc de                                           ; $69b1: $13
	add hl, de                                       ; $69b2: $19
	rrca                                             ; $69b3: $0f
	db $fd                                           ; $69b4: $fd
	sbc e                                            ; $69b5: $9b
	ldh [rIF], a                                     ; $69b6: $e0 $0f
	ld b, b                                          ; $69b8: $40
	ld e, b                                          ; $69b9: $58
	db $fc                                           ; $69ba: $fc
	ld a, [hl]                                       ; $69bb: $7e
	dec sp                                           ; $69bc: $3b
	sbc [hl]                                         ; $69bd: $9e
	cp a                                             ; $69be: $bf
	ld l, l                                          ; $69bf: $6d
	dec de                                           ; $69c0: $1b
	sbc [hl]                                         ; $69c1: $9e
	rst FarCall                                          ; $69c2: $f7
	ld a, [$997d]                                    ; $69c3: $fa $7d $99
	db $fc                                           ; $69c6: $fc
	sbc h                                            ; $69c7: $9c
	ld h, b                                          ; $69c8: $60
	ret nc                                           ; $69c9: $d0

	db $10                                           ; $69ca: $10
	ld l, b                                          ; $69cb: $68
	ld [hl+], a                                      ; $69cc: $22
	sbc c                                            ; $69cd: $99
	ldh [$fc], a                                     ; $69ce: $e0 $fc
	sbc a                                            ; $69d0: $9f
	jr nz, jr_03c_69d7                               ; $69d1: $20 $04

	dec b                                            ; $69d3: $05
	halt                                             ; $69d4: $76
	sub e                                            ; $69d5: $93
	sbc e                                            ; $69d6: $9b

jr_03c_69d7:
	ld h, b                                          ; $69d7: $60
	db $10                                           ; $69d8: $10
	ld [$fd02], sp                                   ; $69d9: $08 $02 $fd
	sbc b                                            ; $69dc: $98
	db $fc                                           ; $69dd: $fc
	inc b                                            ; $69de: $04
	inc a                                            ; $69df: $3c
	sub $ff                                          ; $69e0: $d6 $ff
	ld b, b                                          ; $69e2: $40
	ld de, $01dd                                     ; $69e3: $11 $dd $01
	add h                                            ; $69e6: $84
	add hl, sp                                       ; $69e7: $39
	nop                                              ; $69e8: $00
	add b                                            ; $69e9: $80
	jr nz, jr_03c_6a49                               ; $69ea: $20 $5d

	xor a                                            ; $69ec: $af
	rst SubAFromHL                                          ; $69ed: $d7
	ld l, e                                          ; $69ee: $6b
	add l                                            ; $69ef: $85
	ldh [c], a                                       ; $69f0: $e2
	or c                                             ; $69f1: $b1
	db $ec                                           ; $69f2: $ec
	and b                                            ; $69f3: $a0
	ld d, b                                          ; $69f4: $50
	xor b                                            ; $69f5: $a8
	call nc, $fdfa                                   ; $69f6: $d4 $fa $fd
	ld a, [hl]                                       ; $69f9: $7e
	rra                                              ; $69fa: $1f
	jp nc, $d2a5                                     ; $69fb: $d2 $a5 $d2

	db $ec                                           ; $69fe: $ec
	ei                                               ; $69ff: $fb
	rst $38                                          ; $6a00: $ff
	ld d, a                                          ; $6a01: $57
	ld l, d                                          ; $6a02: $6a
	ret nz                                           ; $6a03: $c0

	sub [hl]                                         ; $6a04: $96
	xor b                                            ; $6a05: $a8
	ld d, l                                          ; $6a06: $55
	xor e                                            ; $6a07: $ab
	ld e, a                                          ; $6a08: $5f
	cp a                                             ; $6a09: $bf
	ld a, a                                          ; $6a0a: $7f
	push af                                          ; $6a0b: $f5
	ld [$73d5], a                                    ; $6a0c: $ea $d5 $73
	ldh a, [$7c]                                     ; $6a0f: $f0 $7c
	add sp, $7e                                      ; $6a11: $e8 $7e
	or [hl]                                          ; $6a13: $b6
	ld a, [hl-]                                      ; $6a14: $3a
	nop                                              ; $6a15: $00
	adc [hl]                                         ; $6a16: $8e
	ld b, [hl]                                       ; $6a17: $46
	ld b, e                                          ; $6a18: $43
	ld [hl], $37                                     ; $6a19: $36 $37
	ld b, l                                          ; $6a1b: $45
	ld b, a                                          ; $6a1c: $47
	ld b, l                                          ; $6a1d: $45
	ld d, h                                          ; $6a1e: $54
	ld d, l                                          ; $6a1f: $55
	ld d, l                                          ; $6a20: $55
	ld b, l                                          ; $6a21: $45
	ld h, l                                          ; $6a22: $65
	ld h, h                                          ; $6a23: $64
	ld b, a                                          ; $6a24: $47
	ld [hl], a                                       ; $6a25: $77
	ld b, e                                          ; $6a26: $43
	ld b, l                                          ; $6a27: $45
	sbc $55                                          ; $6a28: $de $55
	sbc c                                            ; $6a2a: $99
	ld h, l                                          ; $6a2b: $65
	ld h, e                                          ; $6a2c: $63
	ld b, h                                          ; $6a2d: $44
	ld b, a                                          ; $6a2e: $47
	ld [hl], a                                       ; $6a2f: $77
	ld [hl], e                                       ; $6a30: $73
	call c, Call_03c_7b55                            ; $6a31: $dc $55 $7b
	rst FarCall                                          ; $6a34: $f7
	sub e                                            ; $6a35: $93
	ld [hl], a                                       ; $6a36: $77
	ld [hl], h                                       ; $6a37: $74
	ld [hl], l                                       ; $6a38: $75
	ld d, l                                          ; $6a39: $55
	ld d, a                                          ; $6a3a: $57
	ld [hl], a                                       ; $6a3b: $77
	ld h, e                                          ; $6a3c: $63
	inc sp                                           ; $6a3d: $33
	inc sp                                           ; $6a3e: $33
	ld b, a                                          ; $6a3f: $47
	ld [hl], h                                       ; $6a40: $74
	ld b, h                                          ; $6a41: $44
	db $dd                                           ; $6a42: $dd
	ld [hl], a                                       ; $6a43: $77
	sbc d                                            ; $6a44: $9a
	ld b, e                                          ; $6a45: $43
	inc [hl]                                         ; $6a46: $34
	ld b, h                                          ; $6a47: $44
	ld [hl], a                                       ; $6a48: $77

jr_03c_6a49:
	ld [hl], h                                       ; $6a49: $74
	sbc $44                                          ; $6a4a: $de $44
	ld a, a                                          ; $6a4c: $7f
	and $32                                          ; $6a4d: $e6 $32
	add d                                            ; $6a4f: $82
	sub a                                            ; $6a50: $97
	ld a, [$bfff]                                    ; $6a51: $fa $ff $bf
	ld d, l                                          ; $6a54: $55
	xor d                                            ; $6a55: $aa
	ld d, l                                          ; $6a56: $55
	xor d                                            ; $6a57: $aa
	ld b, b                                          ; $6a58: $40
	ld sp, hl                                        ; $6a59: $f9
	sbc c                                            ; $6a5a: $99
	add b                                            ; $6a5b: $80
	ld b, b                                          ; $6a5c: $40
	and b                                            ; $6a5d: $a0
	ret nc                                           ; $6a5e: $d0

jr_03c_6a5f:
	xor b                                            ; $6a5f: $a8
	ld d, h                                          ; $6a60: $54
	pop af                                           ; $6a61: $f1
	sbc l                                            ; $6a62: $9d
	inc bc                                           ; $6a63: $03
	ld [$9efa], sp                                   ; $6a64: $08 $fa $9e

jr_03c_6a67:
	rlca                                             ; $6a67: $07
	db $fd                                           ; $6a68: $fd
	sbc h                                            ; $6a69: $9c
	ld a, h                                          ; $6a6a: $7c
	add d                                            ; $6a6b: $82
	ld bc, $9bfb                                     ; $6a6c: $01 $fb $9b
	ld a, h                                          ; $6a6f: $7c
	cp $ff                                           ; $6a70: $fe $ff
	dec bc                                           ; $6a72: $0b
	ld l, a                                          ; $6a73: $6f
	jp z, $209d                                      ; $6a74: $ca $9d $20

	nop                                              ; $6a77: $00
	ld l, a                                          ; $6a78: $6f
	db $ed                                           ; $6a79: $ed
	sub [hl]                                         ; $6a7a: $96
	ret nz                                           ; $6a7b: $c0

	ld d, e                                          ; $6a7c: $53
	or e                                             ; $6a7d: $b3
	ld d, e                                          ; $6a7e: $53

Jump_03c_6a7f:
	or e                                             ; $6a7f: $b3

Jump_03c_6a80:
	db $d3                                           ; $6a80: $d3
	or e                                             ; $6a81: $b3
	ret nc                                           ; $6a82: $d0

	ldh a, [$d9]                                     ; $6a83: $f0 $d9
	rrca                                             ; $6a85: $0f
	sbc b                                            ; $6a86: $98
	sub $eb                                          ; $6a87: $d6 $eb
	push af                                          ; $6a89: $f5
	db $eb                                           ; $6a8a: $eb
	push de                                          ; $6a8b: $d5
	rst $38                                          ; $6a8c: $ff
	nop                                              ; $6a8d: $00
	reti                                             ; $6a8e: $d9


	rst $38                                          ; $6a8f: $ff
	add b                                            ; $6a90: $80
	nop                                              ; $6a91: $00
	push hl                                          ; $6a92: $e5
	push bc                                          ; $6a93: $c5
	push de                                          ; $6a94: $d5
	db $dd                                           ; $6a95: $dd
	push de                                          ; $6a96: $d5
	db $fd                                           ; $6a97: $fd
	nop                                              ; $6a98: $00
	rst $38                                          ; $6a99: $ff
	call $fded                                       ; $6a9a: $cd $ed $fd
	push af                                          ; $6a9d: $f5
	db $fd                                           ; $6a9e: $fd
	push af                                          ; $6a9f: $f5
	rst $38                                          ; $6aa0: $ff
	nop                                              ; $6aa1: $00
	sbc b                                            ; $6aa2: $98
	sbc e                                            ; $6aa3: $9b
	sbc e                                            ; $6aa4: $9b
	cp b                                             ; $6aa5: $b8
	jr c, jr_03c_6a67                                ; $6aa6: $38 $bf

	nop                                              ; $6aa8: $00
	rst $38                                          ; $6aa9: $ff
	or b                                             ; $6aaa: $b0
	ld [hl-], a                                      ; $6aab: $32
	ld [hl-], a                                      ; $6aac: $32
	jr nc, jr_03c_6a5f                               ; $6aad: $30 $b0

	jr nc, jr_03c_6b30                               ; $6aaf: $30 $7f

	ldh a, [$9a]                                     ; $6ab1: $f0 $9a
	nop                                              ; $6ab3: $00
	db $ec                                           ; $6ab4: $ec
	db $ec                                           ; $6ab5: $ec
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	ld a, e                                          ; $6ab8: $7b
	ret nc                                           ; $6ab9: $d0

	rst $38                                          ; $6aba: $ff
	sbc [hl]                                         ; $6abb: $9e
	and b                                            ; $6abc: $a0
	cp $7f                                           ; $6abd: $fe $7f
	ld sp, hl                                        ; $6abf: $f9
	sbc [hl]                                         ; $6ac0: $9e
	ld a, a                                          ; $6ac1: $7f
	db $dd                                           ; $6ac2: $dd
	ld b, b                                          ; $6ac3: $40
	sbc [hl]                                         ; $6ac4: $9e
	ret nz                                           ; $6ac5: $c0

	ld [hl], a                                       ; $6ac6: $77
	ldh a, [$fd]                                     ; $6ac7: $f0 $fd
	ld [hl], e                                       ; $6ac9: $73
	rst SubAFromBC                                          ; $6aca: $e7
	ld l, a                                          ; $6acb: $6f
	rst FarCall                                          ; $6acc: $f7
	ld l, e                                          ; $6acd: $6b
	ld sp, hl                                        ; $6ace: $f9
	sub b                                            ; $6acf: $90
	or $1f                                           ; $6ad0: $f6 $1f
	ld hl, $1110                                     ; $6ad2: $21 $10 $11
	add hl, hl                                       ; $6ad5: $29
	nop                                              ; $6ad6: $00
	cp $0f                                           ; $6ad7: $fe $0f
	rrca                                             ; $6ad9: $0f
	inc de                                           ; $6ada: $13
	ld hl, $1020                                     ; $6adb: $21 $20 $10
	rst $38                                          ; $6ade: $ff
	sbc $01                                          ; $6adf: $de $01
	add b                                            ; $6ae1: $80
	add e                                            ; $6ae2: $83
	add $7c                                          ; $6ae3: $c6 $7c
	add b                                            ; $6ae5: $80
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	ld l, h                                          ; $6ae8: $6c
	cp d                                             ; $6ae9: $ba
	ld b, h                                          ; $6aea: $44
	add hl, sp                                       ; $6aeb: $39
	add d                                            ; $6aec: $82
	jp z, $00ff                                      ; $6aed: $ca $ff $00

	add e                                            ; $6af0: $83
	ret nz                                           ; $6af1: $c0

	and a                                            ; $6af2: $a7
	inc d                                            ; $6af3: $14
	ld d, $27                                        ; $6af4: $16 $27
	nop                                              ; $6af6: $00
	ld a, a                                          ; $6af7: $7f
	ld hl, sp-$45                                    ; $6af8: $f8 $bb
	jr jr_03c_6b04                                   ; $6afa: $18 $08

	ld [$ff18], sp                                   ; $6afc: $08 $18 $ff
	nop                                              ; $6aff: $00
	ret nz                                           ; $6b00: $c0

	sbc l                                            ; $6b01: $9d
	ld b, b                                          ; $6b02: $40
	rst GetHLinHL                                          ; $6b03: $cf

jr_03c_6b04:
	ld [hl], e                                       ; $6b04: $73
	cp c                                             ; $6b05: $b9
	sbc l                                            ; $6b06: $9d
	rrca                                             ; $6b07: $0f
	adc a                                            ; $6b08: $8f
	ld l, a                                          ; $6b09: $6f
	ret nz                                           ; $6b0a: $c0

	rst SubAFromDE                                          ; $6b0b: $df
	ld b, a                                          ; $6b0c: $47
	sbc h                                            ; $6b0d: $9c
	add a                                            ; $6b0e: $87
	rlca                                             ; $6b0f: $07
	rrca                                             ; $6b10: $0f
	ld a, e                                          ; $6b11: $7b
	ldh a, [$df]                                     ; $6b12: $f0 $df
	add e                                            ; $6b14: $83
	db $dd                                           ; $6b15: $dd
	inc bc                                           ; $6b16: $03
	ld a, a                                          ; $6b17: $7f
	rst FarCall                                          ; $6b18: $f7
	jp c, $9e50                                      ; $6b19: $da $50 $9e

	ret nc                                           ; $6b1c: $d0

	jp c, $9cbf                                      ; $6b1d: $da $bf $9c

	ccf                                              ; $6b20: $3f
	ld h, $25                                        ; $6b21: $26 $25
	ld l, a                                          ; $6b23: $6f
	cp $d9                                           ; $6b24: $fe $d9
	rst GetHLinHL                                          ; $6b26: $cf
	ld a, d                                          ; $6b27: $7a
	call nc, $fe73                                   ; $6b28: $d4 $73 $fe
	ld h, e                                          ; $6b2b: $63
	cpl                                              ; $6b2c: $2f
	cp $9b                                           ; $6b2d: $fe $9b
	ld [bc], a                                       ; $6b2f: $02

jr_03c_6b30:
	ld [$0340], sp                                   ; $6b30: $08 $40 $03
	db $fd                                           ; $6b33: $fd
	adc e                                            ; $6b34: $8b
	ld bc, $3f07                                     ; $6b35: $01 $07 $3f
	db $fc                                           ; $6b38: $fc
	nop                                              ; $6b39: $00
	ld [bc], a                                       ; $6b3a: $02
	db $10                                           ; $6b3b: $10
	ld b, b                                          ; $6b3c: $40
	inc bc                                           ; $6b3d: $03
	rra                                              ; $6b3e: $1f
	ld a, l                                          ; $6b3f: $7d
	ld [$0100], a                                    ; $6b40: $ea $00 $01
	rrca                                             ; $6b43: $0f
	ccf                                              ; $6b44: $3f
	db $fc                                           ; $6b45: $fc
	ldh [$80], a                                     ; $6b46: $e0 $80
	nop                                              ; $6b48: $00
	ld a, e                                          ; $6b49: $7b
	di                                               ; $6b4a: $f3
	sbc l                                            ; $6b4b: $9d
	ld a, [$7bf5]                                    ; $6b4c: $fa $f5 $7b
	rst GetHLinHL                                          ; $6b4f: $cf
	ld a, e                                          ; $6b50: $7b
	di                                               ; $6b51: $f3
	ld l, [hl]                                       ; $6b52: $6e
	call $ff9e                                       ; $6b53: $cd $9e $ff
	ld [hl], a                                       ; $6b56: $77
	pop bc                                           ; $6b57: $c1
	sbc h                                            ; $6b58: $9c
	ld b, l                                          ; $6b59: $45
	nop                                              ; $6b5a: $00
	add e                                            ; $6b5b: $83
	ld a, [$049a]                                    ; $6b5c: $fa $9a $04
	add b                                            ; $6b5f: $80
	ldh a, [$be]                                     ; $6b60: $f0 $be
	ld d, a                                          ; $6b62: $57
	ld a, e                                          ; $6b63: $7b
	xor $9c                                          ; $6b64: $ee $9c
	ld hl, sp+$7f                                    ; $6b66: $f8 $7f
	rrca                                             ; $6b68: $0f
	ld [hl], d                                       ; $6b69: $72
	cp [hl]                                          ; $6b6a: $be
	sbc h                                            ; $6b6b: $9c
	ld [hl], b                                       ; $6b6c: $70

jr_03c_6b6d:
	di                                               ; $6b6d: $f3
	di                                               ; $6b6e: $f3
	sbc $d3                                          ; $6b6f: $de $d3
	sbc l                                            ; $6b71: $9d
	ld d, e                                          ; $6b72: $53
	sub e                                            ; $6b73: $93
	sbc $0f                                          ; $6b74: $de $0f
	call c, Call_03c_622f                            ; $6b76: $dc $2f $62
	add $67                                          ; $6b79: $c6 $67
	sub b                                            ; $6b7b: $90
	inc bc                                           ; $6b7c: $03
	ldh a, [$03]                                     ; $6b7d: $f0 $03
	ldh a, [$03]                                     ; $6b7f: $f0 $03
	ldh a, [$03]                                     ; $6b81: $f0 $03
	ldh a, [$57]                                     ; $6b83: $f0 $57
	ldh a, [$98]                                     ; $6b85: $f0 $98
	cp $fd                                           ; $6b87: $fe $fd
	ld a, [$eaf5]                                    ; $6b89: $fa $f5 $ea
	push de                                          ; $6b8c: $d5
	ld [$ffd9], a                                    ; $6b8d: $ea $d9 $ff
	reti                                             ; $6b90: $d9


	ld d, b                                          ; $6b91: $50
	reti                                             ; $6b92: $d9


	cp a                                             ; $6b93: $bf
	rst SubAFromDE                                          ; $6b94: $df
	ld h, $df                                        ; $6b95: $26 $df
	dec h                                            ; $6b97: $25
	sub [hl]                                         ; $6b98: $96
	ld h, $24                                        ; $6b99: $26 $24
	daa                                              ; $6b9b: $27

jr_03c_6b9c:
	jr nz, jr_03c_6b6d                               ; $6b9c: $20 $cf

	call $cece                                       ; $6b9e: $cd $ce $ce
	call z, $c076                                    ; $6ba1: $cc $76 $c0
	sbc e                                            ; $6ba4: $9b
	ld d, h                                          ; $6ba5: $54
	rst $38                                          ; $6ba6: $ff
	db $fc                                           ; $6ba7: $fc
	ld b, c                                          ; $6ba8: $41
	halt                                             ; $6ba9: $76
	ld a, a                                          ; $6baa: $7f
	rst SubAFromDE                                          ; $6bab: $df
	rst $38                                          ; $6bac: $ff
	ld a, [hl]                                       ; $6bad: $7e
	call z, $ffde                                    ; $6bae: $cc $de $ff
	sub [hl]                                         ; $6bb1: $96
	rrca                                             ; $6bb2: $0f
	ld a, a                                          ; $6bb3: $7f
	db $fd                                           ; $6bb4: $fd
	ld a, [$aad5]                                    ; $6bb5: $fa $d5 $aa
	ld d, l                                          ; $6bb8: $55
	xor b                                            ; $6bb9: $a8
	ldh a, [$7a]                                     ; $6bba: $f0 $7a
	ld c, h                                          ; $6bbc: $4c
	db $fd                                           ; $6bbd: $fd
	ld [hl], a                                       ; $6bbe: $77
	db $f4                                           ; $6bbf: $f4
	sbc [hl]                                         ; $6bc0: $9e
	ld d, b                                          ; $6bc1: $50
	ld l, e                                          ; $6bc2: $6b
	db $f4                                           ; $6bc3: $f4
	db $fd                                           ; $6bc4: $fd
	ld d, a                                          ; $6bc5: $57
	db $f4                                           ; $6bc6: $f4
	db $ed                                           ; $6bc7: $ed
	sbc l                                            ; $6bc8: $9d
	dec d                                            ; $6bc9: $15
	ld [bc], a                                       ; $6bca: $02
	ld l, c                                          ; $6bcb: $69
	ld [hl], h                                       ; $6bcc: $74
	ld a, [$439a]                                    ; $6bcd: $fa $9a $43
	and d                                            ; $6bd0: $a2
	ld b, d                                          ; $6bd1: $42
	ld [hl+], a                                      ; $6bd2: $22
	ld d, d                                          ; $6bd3: $52
	sbc $02                                          ; $6bd4: $de $02
	sbc $1f                                          ; $6bd6: $de $1f
	call c, $9a0f                                    ; $6bd8: $dc $0f $9a
	rst $38                                          ; $6bdb: $ff
	ccf                                              ; $6bdc: $3f
	ld a, $b6                                        ; $6bdd: $3e $b6
	ld [hl], $7b                                     ; $6bdf: $36 $7b
	cp $df                                           ; $6be1: $fe $df
	rst $38                                          ; $6be3: $ff
	sub c                                            ; $6be4: $91
	db $e3                                           ; $6be5: $e3
	db $eb                                           ; $6be6: $eb
	db $e3                                           ; $6be7: $e3
	ld l, e                                          ; $6be8: $6b
	db $e3                                           ; $6be9: $e3
	db $eb                                           ; $6bea: $eb
	rst $38                                          ; $6beb: $ff
	rst $38                                          ; $6bec: $ff
	ccf                                              ; $6bed: $3f
	ld sp, $3531                                     ; $6bee: $31 $31 $35
	dec [hl]                                         ; $6bf1: $35
	ld sp, $ffde                                     ; $6bf2: $31 $de $ff
	call c, $decf                                    ; $6bf5: $dc $cf $de
	rst $38                                          ; $6bf8: $ff
	sbc d                                            ; $6bf9: $9a
	inc b                                            ; $6bfa: $04
	ld [hl], h                                       ; $6bfb: $74
	ld d, h                                          ; $6bfc: $54
	ld [hl], h                                       ; $6bfd: $74
	ld d, h                                          ; $6bfe: $54

Jump_03c_6bff:
	ld e, d                                          ; $6bff: $5a
	jr nc, jr_03c_6b9c                               ; $6c00: $30 $9a

	halt                                             ; $6c02: $76
	ld [hl], d                                       ; $6c03: $72
	ld [hl], b                                       ; $6c04: $70
	ld [hl], c                                       ; $6c05: $71
	ld h, [hl]                                       ; $6c06: $66
	sbc $ff                                          ; $6c07: $de $ff
	sub d                                            ; $6c09: $92
	adc c                                            ; $6c0a: $89
	xor l                                            ; $6c0b: $ad
	xor a                                            ; $6c0c: $af
	adc a                                            ; $6c0d: $8f
	cp a                                             ; $6c0e: $bf
	nop                                              ; $6c0f: $00
	ld [$da09], sp                                   ; $6c10: $08 $09 $da
	ld e, $bf                                        ; $6c13: $1e $bf
	ld a, a                                          ; $6c15: $7f
	ld a, a                                          ; $6c16: $7f
	sbc $ff                                          ; $6c17: $de $ff
	sbc e                                            ; $6c19: $9b
	ld a, a                                          ; $6c1a: $7f
	rst FarCall                                          ; $6c1b: $f7
	or $fe                                           ; $6c1c: $f6 $fe
	ld [hl], d                                       ; $6c1e: $72
	db $10                                           ; $6c1f: $10
	sbc e                                            ; $6c20: $9b
	rst $38                                          ; $6c21: $ff
	rst SubAFromDE                                          ; $6c22: $df
	cp a                                             ; $6c23: $bf
	and c                                            ; $6c24: $a1
	db $dd                                           ; $6c25: $dd
	rst $38                                          ; $6c26: $ff
	sbc e                                            ; $6c27: $9b
	jr nz, jr_03c_6c8a                               ; $6c28: $20 $60

	ret nz                                           ; $6c2a: $c0

Call_03c_6c2b:
	ret nz                                           ; $6c2b: $c0

	db $dd                                           ; $6c2c: $dd
	rst $38                                          ; $6c2d: $ff
	sbc e                                            ; $6c2e: $9b
	jp c, $9edf                                      ; $6c2f: $da $df $9e

	ld e, $dd                                        ; $6c32: $1e $dd
	rst $38                                          ; $6c34: $ff
	sbc e                                            ; $6c35: $9b
	scf                                              ; $6c36: $37
	jr nc, jr_03c_6c78                               ; $6c37: $30 $3f

	ccf                                              ; $6c39: $3f
	db $dd                                           ; $6c3a: $dd
	rst $38                                          ; $6c3b: $ff
	sbc h                                            ; $6c3c: $9c
	and h                                            ; $6c3d: $a4
	sbc e                                            ; $6c3e: $9b
	sub d                                            ; $6c3f: $92
	ld a, e                                          ; $6c40: $7b
	sub b                                            ; $6c41: $90
	sbc $ff                                          ; $6c42: $de $ff
	sbc h                                            ; $6c44: $9c
	inc h                                            ; $6c45: $24
	db $ed                                           ; $6c46: $ed
	db $ed                                           ; $6c47: $ed
	db $dd                                           ; $6c48: $dd
	rst $38                                          ; $6c49: $ff
	sbc e                                            ; $6c4a: $9b
	sbc b                                            ; $6c4b: $98
	ld a, a                                          ; $6c4c: $7f
	rra                                              ; $6c4d: $1f
	sbc b                                            ; $6c4e: $98

jr_03c_6c4f:
	call c, $9dff                                    ; $6c4f: $dc $ff $9d
	sbc b                                            ; $6c52: $98
	ld hl, sp-$25                                    ; $6c53: $f8 $db
	rst $38                                          ; $6c55: $ff
	sbc h                                            ; $6c56: $9c
	ret                                              ; $6c57: $c9


	rst $38                                          ; $6c58: $ff
	db $db                                           ; $6c59: $db
	ld h, a                                          ; $6c5a: $67
	rst FarCall                                          ; $6c5b: $f7
	ld a, a                                          ; $6c5c: $7f
	db $10                                           ; $6c5d: $10
	ld a, e                                          ; $6c5e: $7b
	ld c, $9c                                        ; $6c5f: $0e $9c
	ld [$c2c1], a                                    ; $6c61: $ea $c1 $c2
	call c, $9cff                                    ; $6c64: $dc $ff $9c
	ld a, a                                          ; $6c67: $7f
	ld b, e                                          ; $6c68: $43
	ld b, e                                          ; $6c69: $43
	ld b, [hl]                                       ; $6c6a: $46
	ret nz                                           ; $6c6b: $c0

	rst SubAFromDE                                          ; $6c6c: $df
	cpl                                              ; $6c6d: $2f
	sbc [hl]                                         ; $6c6e: $9e
	jr nz, jr_03c_6c4f                               ; $6c6f: $20 $de

	daa                                              ; $6c71: $27
	ld a, [hl]                                       ; $6c72: $7e
	cp l                                             ; $6c73: $bd
	rst SubAFromDE                                          ; $6c74: $df
	ret nz                                           ; $6c75: $c0

	db $db                                           ; $6c76: $db
	rst GetHLinHL                                          ; $6c77: $cf

jr_03c_6c78:
	ld l, [hl]                                       ; $6c78: $6e
	ld a, [hl]                                       ; $6c79: $7e
	ld a, l                                          ; $6c7a: $7d
	ret nc                                           ; $6c7b: $d0

	ld a, e                                          ; $6c7c: $7b
	ld a, d                                          ; $6c7d: $7a
	call c, $17ff                                    ; $6c7e: $dc $ff $17
	nop                                              ; $6c81: $00
	rst SubAFromDE                                          ; $6c82: $df
	ld d, l                                          ; $6c83: $55
	sbc [hl]                                         ; $6c84: $9e
	ld d, e                                          ; $6c85: $53
	sbc $44                                          ; $6c86: $de $44
	sbc [hl]                                         ; $6c88: $9e
	ld b, a                                          ; $6c89: $47

jr_03c_6c8a:
	sbc $44                                          ; $6c8a: $de $44
	ld l, a                                          ; $6c8c: $6f
	or $dd                                           ; $6c8d: $f6 $dd
	ld b, h                                          ; $6c8f: $44
	ld [hl], a                                       ; $6c90: $77
	or $9d                                           ; $6c91: $f6 $9d
	ld b, [hl]                                       ; $6c93: $46
	ld h, [hl]                                       ; $6c94: $66
	db $dd                                           ; $6c95: $dd
	ld b, h                                          ; $6c96: $44
	adc e                                            ; $6c97: $8b
	add h                                            ; $6c98: $84
	sbc l                                            ; $6c99: $9d
	ld d, b                                          ; $6c9a: $50
	add b                                            ; $6c9b: $80
	ldh [$b3], a                                     ; $6c9c: $e0 $b3
	reti                                             ; $6c9e: $d9


	ld [bc], a                                       ; $6c9f: $02
	reti                                             ; $6ca0: $d9


	rrca                                             ; $6ca1: $0f
	sbc l                                            ; $6ca2: $9d
	ld [hl], $b6                                     ; $6ca3: $36 $b6
	ld [hl], a                                       ; $6ca5: $77
	cp $93                                           ; $6ca6: $fe $93
	ccf                                              ; $6ca8: $3f
	or b                                             ; $6ca9: $b0
	db $e3                                           ; $6caa: $e3
	ld l, e                                          ; $6cab: $6b
	db $e3                                           ; $6cac: $e3
	db $eb                                           ; $6cad: $eb
	db $e3                                           ; $6cae: $e3
	ld l, e                                          ; $6caf: $6b
	ldh [$e0], a                                     ; $6cb0: $e0 $e0
	dec [hl]                                         ; $6cb2: $35
	ld sp, $fe77                                     ; $6cb3: $31 $77 $fe
	sbc l                                            ; $6cb6: $9d
	rst $38                                          ; $6cb7: $ff
	nop                                              ; $6cb8: $00
	db $db                                           ; $6cb9: $db
	rst GetHLinHL                                          ; $6cba: $cf
	rst $38                                          ; $6cbb: $ff
	sbc l                                            ; $6cbc: $9d
	ld [hl], h                                       ; $6cbd: $74
	ld d, h                                          ; $6cbe: $54
	ld a, e                                          ; $6cbf: $7b
	cp $9c                                           ; $6cc0: $fe $9c
	ld [hl], h                                       ; $6cc2: $74
	rst $38                                          ; $6cc3: $ff
	ld bc, $ffdb                                     ; $6cc4: $01 $db $ff
	rst $38                                          ; $6cc7: $ff
	sub l                                            ; $6cc8: $95
	ld l, h                                          ; $6cc9: $6c
	ld e, l                                          ; $6cca: $5d
	ccf                                              ; $6ccb: $3f
	ccf                                              ; $6ccc: $3f
	ld [hl], e                                       ; $6ccd: $73
	rst JumpTable                                          ; $6cce: $c7
	ld l, a                                          ; $6ccf: $6f
	xor c                                            ; $6cd0: $a9
	cp a                                             ; $6cd1: $bf
	cp a                                             ; $6cd2: $bf
	db $dd                                           ; $6cd3: $dd
	rst $38                                          ; $6cd4: $ff
	rst SubAFromDE                                          ; $6cd5: $df
	rst SubAFromDE                                          ; $6cd6: $df
	rst SubAFromDE                                          ; $6cd7: $df
	rst $38                                          ; $6cd8: $ff
	sbc [hl]                                         ; $6cd9: $9e
	cp $dd                                           ; $6cda: $fe $dd
	rst $38                                          ; $6cdc: $ff
	sbc [hl]                                         ; $6cdd: $9e
	cp e                                             ; $6cde: $bb
	reti                                             ; $6cdf: $d9


	rst $38                                          ; $6ce0: $ff
	add a                                            ; $6ce1: $87
	cp a                                             ; $6ce2: $bf

Call_03c_6ce3:
	ret nz                                           ; $6ce3: $c0

	ldh a, [$39]                                     ; $6ce4: $f0 $39
	inc a                                            ; $6ce6: $3c
	cp [hl]                                          ; $6ce7: $be
	sub [hl]                                         ; $6ce8: $96
	cp $c0                                           ; $6ce9: $fe $c0
	ldh a, [$f8]                                     ; $6ceb: $f0 $f8
	db $fc                                           ; $6ced: $fc
	rst SubAFromDE                                          ; $6cee: $df
	rst GetHLinHL                                          ; $6cef: $cf
	rst AddAOntoHL                                          ; $6cf0: $ef
	rst JumpTable                                          ; $6cf1: $c7
	sbc $12                                          ; $6cf2: $de $12
	ld [de], a                                       ; $6cf4: $12
	add $f6                                          ; $6cf5: $c6 $f6
	or $34                                           ; $6cf7: $f6 $34
	dec [hl]                                         ; $6cf9: $35
	sbc $3f                                          ; $6cfa: $de $3f
	sbc d                                            ; $6cfc: $9a
	rrca                                             ; $6cfd: $0f
	cpl                                              ; $6cfe: $2f
	rst GetHLinHL                                          ; $6cff: $cf
	adc a                                            ; $6d00: $8f
	rrca                                             ; $6d01: $0f
	jp c, $9eb6                                      ; $6d02: $da $b6 $9e

	ld e, e                                          ; $6d05: $5b
	reti                                             ; $6d06: $d9


	db $ed                                           ; $6d07: $ed
	rst SubAFromDE                                          ; $6d08: $df
	sbc b                                            ; $6d09: $98
	sbc $9a                                          ; $6d0a: $de $9a
	sbc d                                            ; $6d0c: $9a
	sub d                                            ; $6d0d: $92
	ld [de], a                                       ; $6d0e: $12
	ld sp, rIE                                     ; $6d0f: $31 $ff $ff
	call c, $9efd                                    ; $6d12: $dc $fd $9e
	cp $d9                                           ; $6d15: $fe $d9
	ld l, l                                          ; $6d17: $6d
	reti                                             ; $6d18: $d9


	db $db                                           ; $6d19: $db
	sub h                                            ; $6d1a: $94
	pop bc                                           ; $6d1b: $c1
	and $7d                                          ; $6d1c: $e6 $7d
	and $a5                                          ; $6d1e: $e6 $a5
	and [hl]                                         ; $6d20: $a6
	and l                                            ; $6d21: $a5
	and [hl]                                         ; $6d22: $a6
	ld b, e                                          ; $6d23: $43
	ld a, a                                          ; $6d24: $7f
	jp Jump_03c_5bdc                                 ; $6d25: $c3 $dc $5b


	db $db                                           ; $6d28: $db
	ld d, b                                          ; $6d29: $50
	sbc l                                            ; $6d2a: $9d
	ld d, e                                          ; $6d2b: $53
	ld d, h                                          ; $6d2c: $54
	db $db                                           ; $6d2d: $db
	cp a                                             ; $6d2e: $bf
	sbc b                                            ; $6d2f: $98
	cp h                                             ; $6d30: $bc
	cp b                                             ; $6d31: $b8
	dec h                                            ; $6d32: $25
	ld h, $27                                        ; $6d33: $26 $27
	ld h, $27                                        ; $6d35: $26 $27
	sbc $2f                                          ; $6d37: $de $2f
	call c, $94cf                                    ; $6d39: $dc $cf $94
	ret nz                                           ; $6d3c: $c0

	ld b, b                                          ; $6d3d: $40
	ld b, b                                          ; $6d3e: $40
	ld d, l                                          ; $6d3f: $55
	xor d                                            ; $6d40: $aa
	ld d, l                                          ; $6d41: $55
	xor d                                            ; $6d42: $aa
	push de                                          ; $6d43: $d5
	ld l, d                                          ; $6d44: $6a
	ld h, l                                          ; $6d45: $65
	ld b, d                                          ; $6d46: $42
	ld h, a                                          ; $6d47: $67
	ld [hl], c                                       ; $6d48: $71
	rst SubAFromDE                                          ; $6d49: $df
	rra                                              ; $6d4a: $1f
	sbc h                                            ; $6d4b: $9c
	dec e                                            ; $6d4c: $1d
	ld a, [de]                                       ; $6d4d: $1a
	rra                                              ; $6d4e: $1f
	ld a, e                                          ; $6d4f: $7b
	cp $fc                                           ; $6d50: $fe $fc
	sbc l                                            ; $6d52: $9d
	ld bc, $7b00                                     ; $6d53: $01 $00 $7b
	jr c, @+$81                                      ; $6d56: $38 $7f

	ldh [$9b], a                                     ; $6d58: $e0 $9b
	ret nc                                           ; $6d5a: $d0

	ld hl, sp+$74                                    ; $6d5b: $f8 $74
	cp d                                             ; $6d5d: $ba
	ei                                               ; $6d5e: $fb
	sbc l                                            ; $6d5f: $9d
	add b                                            ; $6d60: $80
	ld b, b                                          ; $6d61: $40
	ld [hl], a                                       ; $6d62: $77
	ldh a, [$f5]                                     ; $6d63: $f0 $f5
	rst SubAFromDE                                          ; $6d65: $df
	rst $38                                          ; $6d66: $ff
	sbc c                                            ; $6d67: $99
	ld d, [hl]                                       ; $6d68: $56
	xor d                                            ; $6d69: $aa
	ld b, $0a                                        ; $6d6a: $06 $0a
	ld b, $0a                                        ; $6d6c: $06 $0a
	ld e, a                                          ; $6d6e: $5f
	ldh a, [$7f]                                     ; $6d6f: $f0 $7f
	ldh [$9c], a                                     ; $6d71: $e0 $9c
	ld b, b                                          ; $6d73: $40
	add b                                            ; $6d74: $80
	ld b, b                                          ; $6d75: $40
	ld h, d                                          ; $6d76: $62
	ld a, d                                          ; $6d77: $7a
	rst SubAFromDE                                          ; $6d78: $df
	ldh a, [c]                                       ; $6d79: $f2
	sbc c                                            ; $6d7a: $99
	ld d, d                                          ; $6d7b: $52
	and d                                            ; $6d7c: $a2
	ld [bc], a                                       ; $6d7d: $02
	inc bc                                           ; $6d7e: $03
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	ld h, d                                          ; $6d81: $62
	ret nz                                           ; $6d82: $c0

	adc a                                            ; $6d83: $8f
	and e                                            ; $6d84: $a3
	ld c, $3c                                        ; $6d85: $0e $3c
	ccf                                              ; $6d87: $3f
	db $fc                                           ; $6d88: $fc
	nop                                              ; $6d89: $00
	ld bc, $4fc1                                     ; $6d8a: $01 $c1 $4f
	rst SubAFromDE                                          ; $6d8d: $df
	rst SubAFromDE                                          ; $6d8e: $df
	rst AddAOntoHL                                          ; $6d8f: $ef
	cp $fd                                           ; $6d90: $fe $fd
	ei                                               ; $6d92: $fb
	nop                                              ; $6d93: $00
	ld a, d                                          ; $6d94: $7a
	call c, $f59b                                    ; $6d95: $dc $9b $f5
	ld a, a                                          ; $6d98: $7f
	ret nz                                           ; $6d99: $c0

	add b                                            ; $6d9a: $80
	ld a, d                                          ; $6d9b: $7a
	call nc, $ff9d                                   ; $6d9c: $d4 $9d $ff
	rst GetHLinHL                                          ; $6d9f: $cf
	sbc $ff                                          ; $6da0: $de $ff
	ld a, a                                          ; $6da2: $7f
	adc a                                            ; $6da3: $8f
	rst SubAFromDE                                          ; $6da4: $df
	ld bc, $759e                                     ; $6da5: $01 $9e $75
	ld a, e                                          ; $6da8: $7b
	db $fc                                           ; $6da9: $fc
	ld [hl], a                                       ; $6daa: $77
	or $dd                                           ; $6dab: $f6 $dd
	rst $38                                          ; $6dad: $ff
	adc b                                            ; $6dae: $88
	push hl                                          ; $6daf: $e5
	push af                                          ; $6db0: $f5
	or l                                             ; $6db1: $b5
	and [hl]                                         ; $6db2: $a6
	di                                               ; $6db3: $f3
	ld sp, hl                                        ; $6db4: $f9
	adc $ca                                          ; $6db5: $ce $ca
	sbc e                                            ; $6db7: $9b
	adc e                                            ; $6db8: $8b
	jp $c0c1                                         ; $6db9: $c3 $c1 $c0


	ret nz                                           ; $6dbc: $c0

	ldh a, [$f4]                                     ; $6dbd: $f0 $f4
	cp e                                             ; $6dbf: $bb
	cp c                                             ; $6dc0: $b9
	ld e, c                                          ; $6dc1: $59
	ld l, e                                          ; $6dc2: $6b
	db $eb                                           ; $6dc3: $eb
	rst SubAFromHL                                          ; $6dc4: $d7
	sbc h                                            ; $6dc5: $9c
	ld a, e                                          ; $6dc6: $7b
	db $e3                                           ; $6dc7: $e3
	add e                                            ; $6dc8: $83
	cp a                                             ; $6dc9: $bf
	sbc l                                            ; $6dca: $9d
	inc e                                            ; $6dcb: $1c
	ld [$2400], sp                                   ; $6dcc: $08 $00 $24
	cp d                                             ; $6dcf: $ba
	or d                                             ; $6dd0: $b2
	ld h, a                                          ; $6dd1: $67
	ld b, a                                          ; $6dd2: $47
	rst JumpTable                                          ; $6dd3: $c7
	rla                                              ; $6dd4: $17
	sub a                                            ; $6dd5: $97
	ld d, $c7                                        ; $6dd6: $16 $c7
	rst GetHLinHL                                          ; $6dd8: $cf
	sbc a                                            ; $6dd9: $9f
	sbc a                                            ; $6dda: $9f
	ccf                                              ; $6ddb: $3f
	ccf                                              ; $6ddc: $3f
	ld a, a                                          ; $6ddd: $7f
	rst $38                                          ; $6dde: $ff
	dec [hl]                                         ; $6ddf: $35
	ld [hl], l                                       ; $6de0: $75
	ld [hl], l                                       ; $6de1: $75
	ld [hl], c                                       ; $6de2: $71
	rrca                                             ; $6de3: $0f
	ld a, a                                          ; $6de4: $7f
	ld a, e                                          ; $6de5: $7b
	sub b                                            ; $6de6: $90
	sbc e                                            ; $6de7: $9b
	adc a                                            ; $6de8: $8f
	rst GetHLinHL                                          ; $6de9: $cf
	adc a                                            ; $6dea: $8f
	adc a                                            ; $6deb: $8f
	sbc $ff                                          ; $6dec: $de $ff
	sbc $5b                                          ; $6dee: $de $5b
	sbc l                                            ; $6df0: $9d
	ld e, c                                          ; $6df1: $59
	or a                                             ; $6df2: $b7
	ld a, e                                          ; $6df3: $7b
	sbc h                                            ; $6df4: $9c
	sbc $ed                                          ; $6df5: $de $ed
	sbc l                                            ; $6df7: $9d
	rst AddAOntoHL                                          ; $6df8: $ef
	ret                                              ; $6df9: $c9


	sbc $ff                                          ; $6dfa: $de $ff
	db $dd                                           ; $6dfc: $dd
	ld sp, $cd9e                                     ; $6dfd: $31 $9e $cd
	ld a, e                                          ; $6e00: $7b
	ldh a, [$dd]                                     ; $6e01: $f0 $dd
	cp $9e                                           ; $6e03: $fe $9e
	ld [hl-], a                                      ; $6e05: $32
	sbc $ff                                          ; $6e06: $de $ff
	sbc d                                            ; $6e08: $9a
	db $db                                           ; $6e09: $db
	db $ed                                           ; $6e0a: $ed
	db $ec                                           ; $6e0b: $ec
	db $ed                                           ; $6e0c: $ed
	db $ed                                           ; $6e0d: $ed
	ld a, e                                          ; $6e0e: $7b
	ldh a, [$7f]                                     ; $6e0f: $f0 $7f
	rst FarCall                                          ; $6e11: $f7
	sbc $db                                          ; $6e12: $de $db
	sbc $ff                                          ; $6e14: $de $ff
	ld a, d                                          ; $6e16: $7a
	call nz, $be9d                                   ; $6e17: $c4 $9d $be
	cp l                                             ; $6e1a: $bd
	ld a, e                                          ; $6e1b: $7b
	ldh a, [$de]                                     ; $6e1c: $f0 $de
	ld e, e                                          ; $6e1e: $5b
	sbc l                                            ; $6e1f: $9d
	ld b, e                                          ; $6e20: $43
	jp $ffde                                         ; $6e21: $c3 $de $ff


	sbc l                                            ; $6e24: $9d
	ld d, c                                          ; $6e25: $51
	ld d, d                                          ; $6e26: $52
	ld [hl], a                                       ; $6e27: $77
	cp $9d                                           ; $6e28: $fe $9d
	ld d, e                                          ; $6e2a: $53
	ld d, d                                          ; $6e2b: $52
	reti                                             ; $6e2c: $d9


	cp b                                             ; $6e2d: $b8
	reti                                             ; $6e2e: $d9


	ld hl, $4ed9                                     ; $6e2f: $21 $d9 $4e
	adc a                                            ; $6e32: $8f
	rlca                                             ; $6e33: $07
	ld c, a                                          ; $6e34: $4f
	rrca                                             ; $6e35: $0f
	ld c, a                                          ; $6e36: $4f
	ld c, a                                          ; $6e37: $4f
	rrca                                             ; $6e38: $0f
	rrca                                             ; $6e39: $0f
	ld c, a                                          ; $6e3a: $4f
	rst $38                                          ; $6e3b: $ff
	or a                                             ; $6e3c: $b7
	rst FarCall                                          ; $6e3d: $f7
	or a                                             ; $6e3e: $b7
	or a                                             ; $6e3f: $b7
	rst FarCall                                          ; $6e40: $f7
	rst FarCall                                          ; $6e41: $f7
	or a                                             ; $6e42: $b7
	halt                                             ; $6e43: $76
	call nz, $c072                                   ; $6e44: $c4 $72 $c0
	ld a, d                                          ; $6e47: $7a
	call nz, $fe77                                   ; $6e48: $c4 $77 $fe
	sbc h                                            ; $6e4b: $9c
	ld [hl], h                                       ; $6e4c: $74
	xor [hl]                                         ; $6e4d: $ae
	ld d, l                                          ; $6e4e: $55
	ld [hl], e                                       ; $6e4f: $73
	cp $9c                                           ; $6e50: $fe $9c
	adc b                                            ; $6e52: $88
	ld d, b                                          ; $6e53: $50
	xor b                                            ; $6e54: $a8
	ld [hl], e                                       ; $6e55: $73
	cp $f1                                           ; $6e56: $fe $f1
	halt                                             ; $6e58: $76
	call nz, $c056                                   ; $6e59: $c4 $56 $c0
	halt                                             ; $6e5c: $76
	call nz, $c056                                   ; $6e5d: $c4 $56 $c0
	reti                                             ; $6e60: $d9


	inc bc                                           ; $6e61: $03
	reti                                             ; $6e62: $d9


	rrca                                             ; $6e63: $0f
	sbc d                                            ; $6e64: $9a
	ld [bc], a                                       ; $6e65: $02
	and $fc                                          ; $6e66: $e6 $fc
	ld hl, sp-$10                                    ; $6e68: $f8 $f0
	cp $9d                                           ; $6e6a: $fe $9d
	rst FarCall                                          ; $6e6c: $f7
	rst AddAOntoHL                                          ; $6e6d: $ef
	reti                                             ; $6e6e: $d9


	rst $38                                          ; $6e6f: $ff
	ld a, d                                          ; $6e70: $7a
	ccf                                              ; $6e71: $3f
	ld a, d                                          ; $6e72: $7a
	ld l, l                                          ; $6e73: $6d
	rst SubAFromHL                                          ; $6e74: $d7
	rst $38                                          ; $6e75: $ff
	sub a                                            ; $6e76: $97
	xor a                                            ; $6e77: $af
	ld e, a                                          ; $6e78: $5f
	xor a                                            ; $6e79: $af
	ld e, d                                          ; $6e7a: $5a
	xor b                                            ; $6e7b: $a8
	rrca                                             ; $6e7c: $0f
	rst $38                                          ; $6e7d: $ff
	rst $38                                          ; $6e7e: $ff
	sbc $f8                                          ; $6e7f: $de $f8
	sub e                                            ; $6e81: $93
	db $fd                                           ; $6e82: $fd
	ld hl, sp-$08                                    ; $6e83: $f8 $f8
	ret                                              ; $6e85: $c9


	ld l, d                                          ; $6e86: $6a
	ld a, d                                          ; $6e87: $7a
	ld a, [hl-]                                      ; $6e88: $3a
	cp [hl]                                          ; $6e89: $be
	rra                                              ; $6e8a: $1f
	rst GetHLinHL                                          ; $6e8b: $cf
	daa                                              ; $6e8c: $27
	or $de                                           ; $6e8d: $f6 $de
	rst $38                                          ; $6e8f: $ff
	ld a, [hl]                                       ; $6e90: $7e
	ldh [c], a                                       ; $6e91: $e2
	sub d                                            ; $6e92: $92
	ccf                                              ; $6e93: $3f
	rra                                              ; $6e94: $1f
	add e                                            ; $6e95: $83
	adc b                                            ; $6e96: $88
	ret                                              ; $6e97: $c9


	ld b, a                                          ; $6e98: $47
	rrca                                             ; $6e99: $0f
	sbc a                                            ; $6e9a: $9f
	rst $38                                          ; $6e9b: $ff
	rst $38                                          ; $6e9c: $ff
	inc [hl]                                         ; $6e9d: $34
	scf                                              ; $6e9e: $37
	scf                                              ; $6e9f: $37
	ld [hl], c                                       ; $6ea0: $71
	ld l, [hl]                                       ; $6ea1: $6e
	sub l                                            ; $6ea2: $95
	ld e, $fc                                        ; $6ea3: $1e $fc
	rst $38                                          ; $6ea5: $ff
	ei                                               ; $6ea6: $fb
	rst $38                                          ; $6ea7: $ff
	rst FarCall                                          ; $6ea8: $f7
	rst $38                                          ; $6ea9: $ff
	ldh [rIE], a                                     ; $6eaa: $e0 $ff
	rst $38                                          ; $6eac: $ff
	sbc $fc                                          ; $6ead: $de $fc
	rst SubAFromDE                                          ; $6eaf: $df
	ld hl, sp-$62                                    ; $6eb0: $f8 $9e
	ldh a, [$de]                                     ; $6eb2: $f0 $de
	rst $38                                          ; $6eb4: $ff
	db $dd                                           ; $6eb5: $dd
	ccf                                              ; $6eb6: $3f
	sbc h                                            ; $6eb7: $9c
	ld a, [hl-]                                      ; $6eb8: $3a
	rst $38                                          ; $6eb9: $ff
	rst $38                                          ; $6eba: $ff
	db $db                                           ; $6ebb: $db
	rra                                              ; $6ebc: $1f
	rst SubAFromDE                                          ; $6ebd: $df
	rst FarCall                                          ; $6ebe: $f7
	sbc c                                            ; $6ebf: $99
	rst SubAFromHL                                          ; $6ec0: $d7
	or a                                             ; $6ec1: $b7
	rst SubAFromHL                                          ; $6ec2: $d7
	or a                                             ; $6ec3: $b7
	ld d, a                                          ; $6ec4: $57
	or a                                             ; $6ec5: $b7
	reti                                             ; $6ec6: $d9


	rst AddAOntoHL                                          ; $6ec7: $ef
	pop bc                                           ; $6ec8: $c1
	rst $38                                          ; $6ec9: $ff
	ld a, c                                          ; $6eca: $79
	jr nz, @-$64                                     ; $6ecb: $20 $9a

	ld hl, sp-$2c                                    ; $6ecd: $f8 $d4
	xor b                                            ; $6ecf: $a8
	call nc, $d9a8                                   ; $6ed0: $d4 $a8 $d9
	rst $38                                          ; $6ed3: $ff
	ld a, [hl]                                       ; $6ed4: $7e
	add $76                                          ; $6ed5: $c6 $76
	ret nz                                           ; $6ed7: $c0

	sbc l                                            ; $6ed8: $9d
	ld d, b                                          ; $6ed9: $50
	ld d, a                                          ; $6eda: $57
	ld c, d                                          ; $6edb: $4a
	ret nz                                           ; $6edc: $c0

	sbc [hl]                                         ; $6edd: $9e
	and b                                            ; $6ede: $a0
	call c, $df4e                                    ; $6edf: $dc $4e $df
	ld c, a                                          ; $6ee2: $4f
	sbc [hl]                                         ; $6ee3: $9e
	ld b, b                                          ; $6ee4: $40
	halt                                             ; $6ee5: $76
	pop bc                                           ; $6ee6: $c1
	ld [hl], h                                       ; $6ee7: $74
	rst JumpTable                                          ; $6ee8: $c7
	halt                                             ; $6ee9: $76
	pop bc                                           ; $6eea: $c1
	sbc $37                                          ; $6eeb: $de $37
	sub [hl]                                         ; $6eed: $96
	nop                                              ; $6eee: $00
	rra                                              ; $6eef: $1f
	ld a, [de]                                       ; $6ef0: $1a
	dec de                                           ; $6ef1: $1b
	ld a, [de]                                       ; $6ef2: $1a
	dec de                                           ; $6ef3: $1b
	dec de                                           ; $6ef4: $1b
	add hl, de                                       ; $6ef5: $19
	add hl, de                                       ; $6ef6: $19
	ld [hl], d                                       ; $6ef7: $72
	jp nz, Jump_03c_7afe                             ; $6ef8: $c2 $fe $7a

	call nz, $aa9a                                   ; $6efb: $c4 $9a $aa
	ld a, a                                          ; $6efe: $7f
	or $ff                                           ; $6eff: $f6 $ff
	cp $76                                           ; $6f01: $fe $76
	call nz, $eb6a                                   ; $6f03: $c4 $6a $eb
	ld a, a                                          ; $6f06: $7f
	ld sp, hl                                        ; $6f07: $f9
	ld a, a                                          ; $6f08: $7f
	cp $61                                           ; $6f09: $fe $61
	ld a, h                                          ; $6f0b: $7c
	ld l, d                                          ; $6f0c: $6a
	ret nz                                           ; $6f0d: $c0

	ld h, e                                          ; $6f0e: $63
	ldh a, [rOCPS]                                   ; $6f0f: $f0 $6a
	ret nz                                           ; $6f11: $c0

	ld h, e                                          ; $6f12: $63
	ldh a, [$9e]                                     ; $6f13: $f0 $9e
	inc bc                                           ; $6f15: $03
	sbc $13                                          ; $6f16: $de $13
	rst SubAFromDE                                          ; $6f18: $df
	inc sp                                           ; $6f19: $33
	sbc l                                            ; $6f1a: $9d
	inc hl                                           ; $6f1b: $23
	ld [hl], e                                       ; $6f1c: $73
	db $db                                           ; $6f1d: $db
	rrca                                             ; $6f1e: $0f
	sbc [hl]                                         ; $6f1f: $9e
	rra                                              ; $6f20: $1f
	ld a, d                                          ; $6f21: $7a
	add sp, -$63                                     ; $6f22: $e8 $9d
	jp c, $ddb7                                      ; $6f24: $da $b7 $dd

	ld l, l                                          ; $6f27: $6d
	rst SubAFromDE                                          ; $6f28: $df
	rst $38                                          ; $6f29: $ff
	sbc l                                            ; $6f2a: $9d
	rst FarCall                                          ; $6f2b: $f7
	db $ed                                           ; $6f2c: $ed
	db $dd                                           ; $6f2d: $dd
	db $db                                           ; $6f2e: $db
	ld a, e                                          ; $6f2f: $7b
	or c                                             ; $6f30: $b1
	rst SubAFromDE                                          ; $6f31: $df
	add b                                            ; $6f32: $80
	sbc h                                            ; $6f33: $9c
	rst $38                                          ; $6f34: $ff
	or b                                             ; $6f35: $b0
	add a                                            ; $6f36: $87
	call c, $9cff                                    ; $6f37: $dc $ff $9c
	add b                                            ; $6f3a: $80
	rst GetHLinHL                                          ; $6f3b: $cf
	rst $38                                          ; $6f3c: $ff
	sbc $0c                                          ; $6f3d: $de $0c
	add b                                            ; $6f3f: $80
	ld c, $0c                                        ; $6f40: $0e $0c
	db $ec                                           ; $6f42: $ec
	ld l, h                                          ; $6f43: $6c
	xor h                                            ; $6f44: $ac
	ld sp, hl                                        ; $6f45: $f9
	ld hl, sp-$08                                    ; $6f46: $f8 $f8
	ld sp, hl                                        ; $6f48: $f9
	ld hl, sp+$18                                    ; $6f49: $f8 $18
	sbc b                                            ; $6f4b: $98
	ret c                                            ; $6f4c: $d8

	rlca                                             ; $6f4d: $07
	inc bc                                           ; $6f4e: $03
	ld [bc], a                                       ; $6f4f: $02
	nop                                              ; $6f50: $00
	inc bc                                           ; $6f51: $03
	inc b                                            ; $6f52: $04
	inc b                                            ; $6f53: $04
	ld [$07ef], sp                                   ; $6f54: $08 $ef $07
	inc bc                                           ; $6f57: $03
	rst $38                                          ; $6f58: $ff
	ld [bc], a                                       ; $6f59: $02
	rlca                                             ; $6f5a: $07
	inc b                                            ; $6f5b: $04
	inc c                                            ; $6f5c: $0c
	rst $38                                          ; $6f5d: $ff
	rst $38                                          ; $6f5e: $ff
	sbc c                                            ; $6f5f: $99
	ld l, [hl]                                       ; $6f60: $6e
	ld d, [hl]                                       ; $6f61: $56
	ei                                               ; $6f62: $fb
	rst JumpTable                                          ; $6f63: $c7
	rrca                                             ; $6f64: $0f
	rlca                                             ; $6f65: $07
	sbc $ff                                          ; $6f66: $de $ff
	sub d                                            ; $6f68: $92
	rst AddAOntoHL                                          ; $6f69: $ef
	ld b, [hl]                                       ; $6f6a: $46
	jr c, jr_03c_6f6d                                ; $6f6b: $38 $00

jr_03c_6f6d:
	nop                                              ; $6f6d: $00
	ret nz                                           ; $6f6e: $c0

	ret nz                                           ; $6f6f: $c0

	add b                                            ; $6f70: $80
	add [hl]                                         ; $6f71: $86
	adc h                                            ; $6f72: $8c
	inc e                                            ; $6f73: $1c
	add sp, -$10                                     ; $6f74: $e8 $f0
	db $dd                                           ; $6f76: $dd
	ret nz                                           ; $6f77: $c0

	sbc c                                            ; $6f78: $99
	ld b, b                                          ; $6f79: $40
	ldh [$30], a                                     ; $6f7a: $e0 $30
	jr c, @+$39                                      ; $6f7c: $38 $37

	ld a, [hl-]                                      ; $6f7e: $3a
	ld a, e                                          ; $6f7f: $7b
	cp $9c                                           ; $6f80: $fe $9c
	ld [hl], $3f                                     ; $6f82: $36 $3f
	ld a, $dc                                        ; $6f84: $3e $dc
	rra                                              ; $6f86: $1f
	sbc $13                                          ; $6f87: $de $13
	ld a, [hl]                                       ; $6f89: $7e
	add $9c                                          ; $6f8a: $c6 $9c
	ld d, a                                          ; $6f8c: $57
	or b                                             ; $6f8d: $b0
	ld d, b                                          ; $6f8e: $50
	ld c, [hl]                                       ; $6f8f: $4e
	ret nz                                           ; $6f90: $c0

	ld [hl], h                                       ; $6f91: $74

Call_03c_6f92:
	db $db                                           ; $6f92: $db
	push de                                          ; $6f93: $d5
	rst $38                                          ; $6f94: $ff
	ld d, e                                          ; $6f95: $53
	ldh a, [$7e]                                     ; $6f96: $f0 $7e
	add $9e                                          ; $6f98: $c6 $9e
	push de                                          ; $6f9a: $d5
	ld a, e                                          ; $6f9b: $7b
	ldh a, [$9d]                                     ; $6f9c: $f0 $9d
	ld a, [$d9d4]                                    ; $6f9e: $fa $d4 $d9
	rst $38                                          ; $6fa1: $ff
	reti                                             ; $6fa2: $d9


	ld d, b                                          ; $6fa3: $50
	reti                                             ; $6fa4: $d9


	cp a                                             ; $6fa5: $bf
	sbc l                                            ; $6fa6: $9d
	jr nz, jr_03c_6fd8                               ; $6fa7: $20 $2f

	db $dd                                           ; $6fa9: $dd
	daa                                              ; $6faa: $27
	sbc e                                            ; $6fab: $9b
	ld h, $25                                        ; $6fac: $26 $25
	ret nz                                           ; $6fae: $c0

	ret nz                                           ; $6faf: $c0

	db $db                                           ; $6fb0: $db
	rst GetHLinHL                                          ; $6fb1: $cf
	ld l, a                                          ; $6fb2: $6f
	call nz, $aa9d                                   ; $6fb3: $c4 $9d $aa
	ld d, a                                          ; $6fb6: $57
	ld l, e                                          ; $6fb7: $6b
	cp e                                             ; $6fb8: $bb
	ld a, [hl]                                       ; $6fb9: $7e
	ld [hl-], a                                      ; $6fba: $32
	ld [hl], e                                       ; $6fbb: $73
	pop af                                           ; $6fbc: $f1
	ld a, b                                          ; $6fbd: $78
	xor d                                            ; $6fbe: $aa
	ld a, b                                          ; $6fbf: $78
	ld a, b                                          ; $6fc0: $78
	sbc [hl]                                         ; $6fc1: $9e
	ld d, l                                          ; $6fc2: $55
	ld [hl], h                                       ; $6fc3: $74
	xor e                                            ; $6fc4: $ab
	ld [hl], a                                       ; $6fc5: $77
	add hl, hl                                       ; $6fc6: $29
	sbc h                                            ; $6fc7: $9c
	sbc a                                            ; $6fc8: $9f
	db $10                                           ; $6fc9: $10
	db $10                                           ; $6fca: $10
	ld [hl], a                                       ; $6fcb: $77
	ldh a, [$9b]                                     ; $6fcc: $f0 $9b
	ccf                                              ; $6fce: $3f
	cp a                                             ; $6fcf: $bf
	or b                                             ; $6fd0: $b0
	or b                                             ; $6fd1: $b0
	ld [hl], e                                       ; $6fd2: $73
	adc a                                            ; $6fd3: $8f
	sbc h                                            ; $6fd4: $9c
	db $fc                                           ; $6fd5: $fc
	inc b                                            ; $6fd6: $04
	inc b                                            ; $6fd7: $04

jr_03c_6fd8:
	ld [hl], a                                       ; $6fd8: $77
	ldh a, [$df]                                     ; $6fd9: $f0 $df
	rst $38                                          ; $6fdb: $ff
	sbc l                                            ; $6fdc: $9d
	add a                                            ; $6fdd: $87
	sub a                                            ; $6fde: $97
	scf                                              ; $6fdf: $37
	ret nc                                           ; $6fe0: $d0

	ld a, e                                          ; $6fe1: $7b
	ldh a, [$9e]                                     ; $6fe2: $f0 $9e
	cp $67                                           ; $6fe4: $fe $67
	ldh a, [$9b]                                     ; $6fe6: $f0 $9b
	ld [hl], e                                       ; $6fe8: $73
	di                                               ; $6fe9: $f3
	jp $de43                                         ; $6fea: $c3 $43 $de


	jp $d39a                                         ; $6fed: $c3 $9a $d3


	adc a                                            ; $6ff0: $8f
	adc a                                            ; $6ff1: $8f
	xor a                                            ; $6ff2: $af
	xor a                                            ; $6ff3: $af
	db $dd                                           ; $6ff4: $dd
	cpl                                              ; $6ff5: $2f
	reti                                             ; $6ff6: $d9


	ld l, l                                          ; $6ff7: $6d
	reti                                             ; $6ff8: $d9


	db $db                                           ; $6ff9: $db
	sub a                                            ; $6ffa: $97
	ccf                                              ; $6ffb: $3f
	inc hl                                           ; $6ffc: $23
	dec l                                            ; $6ffd: $2d
	dec e                                            ; $6ffe: $1d
	dec d                                            ; $6fff: $15
	rla                                              ; $7000: $17
	rra                                              ; $7001: $1f
	ld c, $de                                        ; $7002: $0e $de
	ret nz                                           ; $7004: $c0

	db $dd                                           ; $7005: $dd
	ldh [$99], a                                     ; $7006: $e0 $99
	pop af                                           ; $7008: $f1
	xor h                                            ; $7009: $ac
	and h                                            ; $700a: $a4
	and e                                            ; $700b: $a3
	adc h                                            ; $700c: $8c
	or b                                             ; $700d: $b0
	ld a, c                                          ; $700e: $79
	ld b, c                                          ; $700f: $41
	sub [hl]                                         ; $7010: $96
	ret c                                            ; $7011: $d8

	reti                                             ; $7012: $d9


	call c, Call_03c_4070                            ; $7013: $dc $70 $40
	add b                                            ; $7016: $80
	add b                                            ; $7017: $80
	nop                                              ; $7018: $00
	jr nz, @-$04                                     ; $7019: $20 $fa

	sbc l                                            ; $701b: $9d
	ld a, $e3                                        ; $701c: $3e $e3
	ei                                               ; $701e: $fb
	sbc [hl]                                         ; $701f: $9e
	rrca                                             ; $7020: $0f
	ld sp, hl                                        ; $7021: $f9
	ld a, e                                          ; $7022: $7b
	add hl, bc                                       ; $7023: $09
	db $fd                                           ; $7024: $fd
	sbc l                                            ; $7025: $9d
	adc b                                            ; $7026: $88
	inc b                                            ; $7027: $04
	ld [hl], d                                       ; $7028: $72
	add hl, de                                       ; $7029: $19
	sbc d                                            ; $702a: $9a
	nop                                              ; $702b: $00
	ld a, [hl]                                       ; $702c: $7e
	rst $38                                          ; $702d: $ff
	rra                                              ; $702e: $1f
	rlca                                             ; $702f: $07
	db $fd                                           ; $7030: $fd
	adc a                                            ; $7031: $8f
	ccf                                              ; $7032: $3f
	cp h                                             ; $7033: $bc
	ld l, a                                          ; $7034: $6f
	or b                                             ; $7035: $b0
	add sp, $14                                      ; $7036: $e8 $14
	ld b, $23                                        ; $7038: $06 $23
	inc de                                           ; $703a: $13
	inc de                                           ; $703b: $13
	sub b                                            ; $703c: $90
	ld a, a                                          ; $703d: $7f
	rra                                              ; $703e: $1f
	rrca                                             ; $703f: $0f
	rlca                                             ; $7040: $07
	inc bc                                           ; $7041: $03
	ld a, d                                          ; $7042: $7a
	ret nz                                           ; $7043: $c0

	sbc d                                            ; $7044: $9a
	or a                                             ; $7045: $b7
	ld [hl], a                                       ; $7046: $77
	or a                                             ; $7047: $b7
	ld [hl], b                                       ; $7048: $70
	cp a                                             ; $7049: $bf
	jp c, Jump_03c_79ef                              ; $704a: $da $ef $79

	ld e, b                                          ; $704d: $58
	ld [hl], e                                       ; $704e: $73
	ld a, $62                                        ; $704f: $3e $62
	call nz, $f047                                   ; $7051: $c4 $47 $f0
	sbc l                                            ; $7054: $9d
	xor d                                            ; $7055: $aa
	call nc, $fe7b                                   ; $7056: $d4 $7b $fe
	ld a, [hl]                                       ; $7059: $7e
	cp l                                             ; $705a: $bd
	sbc [hl]                                         ; $705b: $9e
	cp $da                                           ; $705c: $fe $da
	rst $38                                          ; $705e: $ff
	sbc [hl]                                         ; $705f: $9e
	ld bc, $c046                                     ; $7060: $01 $46 $c0
	ld a, [hl]                                       ; $7063: $7e
	add $6f                                          ; $7064: $c6 $6f
	cp $d9                                           ; $7066: $fe $d9
	rst GetHLinHL                                          ; $7068: $cf
	sbc l                                            ; $7069: $9d
	xor d                                            ; $706a: $aa
	ld d, [hl]                                       ; $706b: $56
	ld [hl], e                                       ; $706c: $73
	cp $9e                                           ; $706d: $fe $9e
	ld e, d                                          ; $706f: $5a
	jp c, $9efc                                      ; $7070: $da $fc $9e

	db $e4                                           ; $7073: $e4
	ld l, e                                          ; $7074: $6b
	or c                                             ; $7075: $b1
	ld l, e                                          ; $7076: $6b
	ld e, h                                          ; $7077: $5c
	ld a, a                                          ; $7078: $7f
	ld hl, sp-$25                                    ; $7079: $f8 $db
	db $10                                           ; $707b: $10
	sbc e                                            ; $707c: $9b
	rra                                              ; $707d: $1f
	nop                                              ; $707e: $00
	or b                                             ; $707f: $b0
	cp b                                             ; $7080: $b8
	sbc $b0                                          ; $7081: $de $b0
	ld [hl], a                                       ; $7083: $77
	push hl                                          ; $7084: $e5
	call c, $7e02                                    ; $7085: $dc $02 $7e
	pop hl                                           ; $7088: $e1
	sbc e                                            ; $7089: $9b
	and a                                            ; $708a: $a7
	rst GetHLinHL                                          ; $708b: $cf
	rlca                                             ; $708c: $07
	rlca                                             ; $708d: $07
	ld l, l                                          ; $708e: $6d
	bit 1, a                                         ; $708f: $cb $4f
	ret nc                                           ; $7091: $d0

	rst SubAFromDE                                          ; $7092: $df
	cp $67                                           ; $7093: $fe $67
	ldh a, [$7b]                                     ; $7095: $f0 $7b
	jr z, @+$7d                                      ; $7097: $28 $7b

	or $9d                                           ; $7099: $f6 $9d
	db $d3                                           ; $709b: $d3
	di                                               ; $709c: $f3
	sbc $d3                                          ; $709d: $de $d3
	sub h                                            ; $709f: $94
	ld [hl], e                                       ; $70a0: $73
	jp $2f43                                         ; $70a1: $c3 $43 $2f


	rrca                                             ; $70a4: $0f
	rrca                                             ; $70a5: $0f
	adc a                                            ; $70a6: $8f
	adc a                                            ; $70a7: $8f
	rst GetHLinHL                                          ; $70a8: $cf
	rst $38                                          ; $70a9: $ff
	ld a, a                                          ; $70aa: $7f
	ld b, [hl]                                       ; $70ab: $46
	ret nz                                           ; $70ac: $c0

	rst SubAFromDE                                          ; $70ad: $df
	cp $9e                                           ; $70ae: $fe $9e
	db $f4                                           ; $70b0: $f4
	ld a, b                                          ; $70b1: $78
	adc d                                            ; $70b2: $8a
	sbc d                                            ; $70b3: $9a
	ldh [$c0], a                                     ; $70b4: $e0 $c0
	di                                               ; $70b6: $f3
	ldh a, [c]                                       ; $70b7: $f2

Jump_03c_70b8:
	cp $78                                           ; $70b8: $fe $78
	daa                                              ; $70ba: $27
	ld a, a                                          ; $70bb: $7f
	ld hl, sp+$7e                                    ; $70bc: $f8 $7e
	rst GetHLinHL                                          ; $70be: $cf
	rst SubAFromDE                                          ; $70bf: $df
	ld [$189b], sp                                   ; $70c0: $08 $9b $18
	rra                                              ; $70c3: $1f
	inc d                                            ; $70c4: $14
	db $10                                           ; $70c5: $10
	ei                                               ; $70c6: $fb
	rst SubAFromDE                                          ; $70c7: $df
	ld [$9bfd], sp                                   ; $70c8: $08 $fd $9b
	rra                                              ; $70cb: $1f
	ldh [rSB], a                                     ; $70cc: $e0 $01
	rra                                              ; $70ce: $1f
	or $9a                                           ; $70cf: $f6 $9a
	ld bc, $5fff                                     ; $70d1: $01 $ff $5f
	adc [hl]                                         ; $70d4: $8e
	sbc [hl]                                         ; $70d5: $9e
	ld hl, sp-$67                                    ; $70d6: $f8 $99
	jr nz, @+$42                                     ; $70d8: $20 $40

	add b                                            ; $70da: $80
	db $fc                                           ; $70db: $fc
	ld a, [hl]                                       ; $70dc: $7e
	rra                                              ; $70dd: $1f
	ld h, d                                          ; $70de: $62
	xor c                                            ; $70df: $a9
	sub [hl]                                         ; $70e0: $96
	ld hl, $6061                                     ; $70e1: $21 $61 $60
	ldh a, [$d0]                                     ; $70e4: $f0 $d0
	ret nc                                           ; $70e6: $d0

	sbc $fc                                          ; $70e7: $de $fc
	ld bc, $817b                                     ; $70e9: $01 $7b $81
	sbc $20                                          ; $70ec: $de $20
	sbc l                                            ; $70ee: $9d
	nop                                              ; $70ef: $00
	ld [hl], b                                       ; $70f0: $70
	ld a, b                                          ; $70f1: $78
	and a                                            ; $70f2: $a7
	sbc e                                            ; $70f3: $9b
	ld h, a                                          ; $70f4: $67
	ld [hl], a                                       ; $70f5: $77
	scf                                              ; $70f6: $37
	rla                                              ; $70f7: $17
	db $dd                                           ; $70f8: $dd
	rst AddAOntoHL                                          ; $70f9: $ef
	rst SubAFromDE                                          ; $70fa: $df
	ld a, a                                          ; $70fb: $7f
	sbc l                                            ; $70fc: $9d
	ccf                                              ; $70fd: $3f
	rra                                              ; $70fe: $1f
	ld c, c                                          ; $70ff: $49
	add h                                            ; $7100: $84
	ld e, [hl]                                       ; $7101: $5e
	add $63                                          ; $7102: $c6 $63
	ldh a, [rPCM12]                                  ; $7104: $f0 $76
	cp a                                             ; $7106: $bf
	ld e, h                                          ; $7107: $5c
	ld b, b                                          ; $7108: $40
	ld b, d                                          ; $7109: $42
	ret nz                                           ; $710a: $c0

	sbc l                                            ; $710b: $9d
	ld h, l                                          ; $710c: $65
	ld h, [hl]                                       ; $710d: $66
	ld [hl], e                                       ; $710e: $73
	cp $9e                                           ; $710f: $fe $9e
	rst GetHLinHL                                          ; $7111: $cf
	jp c, $9c8f                                      ; $7112: $da $8f $9c

	ld a, [de]                                       ; $7115: $1a
	rra                                              ; $7116: $1f
	ld a, a                                          ; $7117: $7f
	call c, $9cff                                    ; $7118: $dc $ff $9c
	db $e4                                           ; $711b: $e4
	di                                               ; $711c: $f3
	di                                               ; $711d: $f3
	ld a, e                                          ; $711e: $7b
	ei                                               ; $711f: $fb
	rst SubAFromDE                                          ; $7120: $df
	ret nz                                           ; $7121: $c0

	ld [hl], $00                                     ; $7122: $36 $00
	rst SubAFromDE                                          ; $7124: $df
	ld d, l                                          ; $7125: $55
	sub a                                            ; $7126: $97
	ld d, e                                          ; $7127: $53
	ld b, h                                          ; $7128: $44
	ld b, [hl]                                       ; $7129: $46
	ld h, [hl]                                       ; $712a: $66
	ld h, h                                          ; $712b: $64
	ld b, l                                          ; $712c: $45
	inc [hl]                                         ; $712d: $34
	ld b, h                                          ; $712e: $44
	ld l, a                                          ; $712f: $6f
	or $7f                                           ; $7130: $f6 $7f
	ld hl, sp-$63                                    ; $7132: $f8 $9d
	inc [hl]                                         ; $7134: $34
	ld b, a                                          ; $7135: $47
	ld a, e                                          ; $7136: $7b
	or $9c                                           ; $7137: $f6 $9c
	ld h, h                                          ; $7139: $64
	ld b, [hl]                                       ; $713a: $46
	ld h, [hl]                                       ; $713b: $66
	sbc $44                                          ; $713c: $de $44
	ld [hl], a                                       ; $713e: $77
	or $9d                                           ; $713f: $f6 $9d
	ld d, h                                          ; $7141: $54
	ld b, l                                          ; $7142: $45
	ld [hl], a                                       ; $7143: $77
	or $de                                           ; $7144: $f6 $de
	ld b, h                                          ; $7146: $44
	sbc d                                            ; $7147: $9a
	ld b, e                                          ; $7148: $43
	ld d, [hl]                                       ; $7149: $56
	ld h, l                                          ; $714a: $65
	ld d, l                                          ; $714b: $55
	inc [hl]                                         ; $714c: $34
	ld [hl], a                                       ; $714d: $77
	db $eb                                           ; $714e: $eb
	sbc c                                            ; $714f: $99
	ld [hl], h                                       ; $7150: $74
	ld b, e                                          ; $7151: $43
	ld d, l                                          ; $7152: $55
	ld h, [hl]                                       ; $7153: $66
	ld h, [hl]                                       ; $7154: $66
	ld h, h                                          ; $7155: $64
	ld a, e                                          ; $7156: $7b
	rst FarCall                                          ; $7157: $f7
	ld c, l                                          ; $7158: $4d
	ld [bc], a                                       ; $7159: $02

jr_03c_715a:
	sbc e                                            ; $715a: $9b
	ld [hl], $0f                                     ; $715b: $36 $0f
	ld d, $2f                                        ; $715d: $16 $2f
	ld e, a                                          ; $715f: $5f
	cp $9d                                           ; $7160: $fe $9d
	ld d, [hl]                                       ; $7162: $56
	cpl                                              ; $7163: $2f
	ldh [$c1], a                                     ; $7164: $e0 $c1
	sbc [hl]                                         ; $7166: $9e
	ld bc, $9cfc                                     ; $7167: $01 $fc $9c
	ld [bc], a                                       ; $716a: $02
	ld bc, $fc03                                     ; $716b: $01 $03 $fc
	ld a, a                                          ; $716e: $7f
	ld a, [$ff92]                                    ; $716f: $fa $92 $ff
	nop                                              ; $7172: $00
	ld a, a                                          ; $7173: $7f
	nop                                              ; $7174: $00
	rra                                              ; $7175: $1f
	nop                                              ; $7176: $00
	rrca                                             ; $7177: $0f
	ret nz                                           ; $7178: $c0

	and e                                            ; $7179: $a3
	ld b, b                                          ; $717a: $40
	add c                                            ; $717b: $81
	ld h, b                                          ; $717c: $60
	nop                                              ; $717d: $00
	ld a, e                                          ; $717e: $7b
	cp $8e                                           ; $717f: $fe $8e
	db $10                                           ; $7181: $10
	ldh [hDisp0_WY], a                                     ; $7182: $e0 $88
	ld [hl], b                                       ; $7184: $70
	call nz, $f238                                   ; $7185: $c4 $38 $f2
	inc c                                            ; $7188: $0c
	ld sp, hl                                        ; $7189: $f9
	ld b, $fc                                        ; $718a: $06 $fc
	inc bc                                           ; $718c: $03
	ld a, [hl]                                       ; $718d: $7e
	ld bc, $003f                                     ; $718e: $01 $3f $00
	inc b                                            ; $7191: $04
	ld hl, sp-$68                                    ; $7192: $f8 $98
	add b                                            ; $7194: $80
	nop                                              ; $7195: $00
	ld b, b                                          ; $7196: $40
	add b                                            ; $7197: $80
	jr nz, jr_03c_715a                               ; $7198: $20 $c0

	inc b                                            ; $719a: $04
	ld a, e                                          ; $719b: $7b
	cp [hl]                                          ; $719c: $be
	sbc [hl]                                         ; $719d: $9e
	ld [$b86b], sp                                   ; $719e: $08 $6b $b8
	sbc [hl]                                         ; $71a1: $9e
	ld [bc], a                                       ; $71a2: $02
	cp $9c                                           ; $71a3: $fe $9c
	xor e                                            ; $71a5: $ab
	nop                                              ; $71a6: $00
	ld d, a                                          ; $71a7: $57
	ld a, e                                          ; $71a8: $7b
	db $fc                                           ; $71a9: $fc
	sbc b                                            ; $71aa: $98
	ld d, l                                          ; $71ab: $55
	nop                                              ; $71ac: $00
	dec hl                                           ; $71ad: $2b
	nop                                              ; $71ae: $00
	dec d                                            ; $71af: $15
	nop                                              ; $71b0: $00
	ld c, d                                          ; $71b1: $4a
	ld a, e                                          ; $71b2: $7b
	db $fc                                           ; $71b3: $fc
	sub [hl]                                         ; $71b4: $96
	db $fd                                           ; $71b5: $fd
	ld [bc], a                                       ; $71b6: $02
	rst SubAFromDE                                          ; $71b7: $df

jr_03c_71b8:
	jr nz, jr_03c_71b8                               ; $71b8: $20 $fe

	ld bc, $08f7                                     ; $71ba: $01 $f7 $08
	rst $38                                          ; $71bd: $ff
	ld a, e                                          ; $71be: $7b
	and [hl]                                         ; $71bf: $a6
	ld a, e                                          ; $71c0: $7b
	cp $8c                                           ; $71c1: $fe $8c
	ld hl, sp-$16                                    ; $71c3: $f8 $ea
	dec d                                            ; $71c5: $15
	or l                                             ; $71c6: $b5
	ld c, d                                          ; $71c7: $4a
	ld [$d515], a                                    ; $71c8: $ea $15 $d5
	ld a, [hl+]                                      ; $71cb: $2a
	ld l, d                                          ; $71cc: $6a
	sub l                                            ; $71cd: $95
	push de                                          ; $71ce: $d5
	ld a, [hl+]                                      ; $71cf: $2a
	ld [$5515], a                                    ; $71d0: $ea $15 $55
	xor d                                            ; $71d3: $aa
	xor d                                            ; $71d4: $aa
	ld d, l                                          ; $71d5: $55
	inc bc                                           ; $71d6: $03
	db $fc                                           ; $71d7: $fc
	inc bc                                           ; $71d8: $03
	db $fc                                           ; $71d9: $fc
	ld e, a                                          ; $71da: $5f
	db $fc                                           ; $71db: $fc
	sbc l                                            ; $71dc: $9d
	ld d, b                                          ; $71dd: $50
	xor a                                            ; $71de: $af
	ld d, a                                          ; $71df: $57
	ldh a, [$9b]                                     ; $71e0: $f0 $9b
	add b                                            ; $71e2: $80
	ld a, a                                          ; $71e3: $7f
	nop                                              ; $71e4: $00
	rst $38                                          ; $71e5: $ff
	ld h, a                                          ; $71e6: $67
	db $f4                                           ; $71e7: $f4
	sbc l                                            ; $71e8: $9d
	xor b                                            ; $71e9: $a8
	ld d, a                                          ; $71ea: $57
	ld l, a                                          ; $71eb: $6f
	ld a, a                                          ; $71ec: $7f
	ld a, [hl]                                       ; $71ed: $7e
	adc $7f                                          ; $71ee: $ce $7f
	cp $56                                           ; $71f0: $fe $56
	cp [hl]                                          ; $71f2: $be
	ldh [$d7], a                                     ; $71f3: $e0 $d7
	sbc h                                            ; $71f5: $9c
	inc bc                                           ; $71f6: $03
	db $fc                                           ; $71f7: $fc
	cp $7b                                           ; $71f8: $fe $7b
	cp a                                             ; $71fa: $bf
	rst $38                                          ; $71fb: $ff
	ld a, a                                          ; $71fc: $7f
	call Call_03c_6f92                               ; $71fd: $cd $92 $6f
	nop                                              ; $7200: $00
	ld d, b                                          ; $7201: $50
	cpl                                              ; $7202: $2f
	ld a, a                                          ; $7203: $7f
	nop                                              ; $7204: $00
	add b                                            ; $7205: $80
	ld a, a                                          ; $7206: $7f
	ld e, [hl]                                       ; $7207: $5e
	ld hl, $7f80                                     ; $7208: $21 $80 $7f
	inc bc                                           ; $720b: $03
	ld a, d                                          ; $720c: $7a
	call z, $f57f                                    ; $720d: $cc $7f $f5
	sbc d                                            ; $7210: $9a
	add e                                            ; $7211: $83
	add b                                            ; $7212: $80
	inc bc                                           ; $7213: $03
	add b                                            ; $7214: $80
	add c                                            ; $7215: $81
	ld a, e                                          ; $7216: $7b
	db $fc                                           ; $7217: $fc
	sbc d                                            ; $7218: $9a

jr_03c_7219:
	ld [bc], a                                       ; $7219: $02
	add b                                            ; $721a: $80
	add b                                            ; $721b: $80
	ld h, b                                          ; $721c: $60
	add b                                            ; $721d: $80
	ld a, d                                          ; $721e: $7a
	jp z, $fa77                                      ; $721f: $ca $77 $fa

	ld [hl], a                                       ; $7222: $77
	cp $9a                                           ; $7223: $fe $9a
	cp h                                             ; $7225: $bc
	ld a, [hl]                                       ; $7226: $7e
	rra                                              ; $7227: $1f
	nop                                              ; $7228: $00
	rlca                                             ; $7229: $07
	ld a, e                                          ; $722a: $7b
	sbc $6e                                          ; $722b: $de $6e
	sbc d                                            ; $722d: $9a
	db $fd                                           ; $722e: $fd
	sbc c                                            ; $722f: $99
	sub b                                            ; $7230: $90
	ld h, b                                          ; $7231: $60
	ret z                                            ; $7232: $c8

	jr nc, jr_03c_7219                               ; $7233: $30 $e4

	jr @+$78                                         ; $7235: $18 $76

	or b                                             ; $7237: $b0
	sbc d                                            ; $7238: $9a
	ld a, h                                          ; $7239: $7c
	inc bc                                           ; $723a: $03
	ld e, $01                                        ; $723b: $1e $01
	ld c, $5f                                        ; $723d: $0e $5f
	rst SubAFromBC                                          ; $723f: $e7
	ld [hl], d                                       ; $7240: $72
	or b                                             ; $7241: $b0
	add h                                            ; $7242: $84
	and b                                            ; $7243: $a0

jr_03c_7244:
	ret nz                                           ; $7244: $c0

	inc bc                                           ; $7245: $03
	rlca                                             ; $7246: $07
	rlca                                             ; $7247: $07
	rrca                                             ; $7248: $0f
	dec c                                            ; $7249: $0d
	ld c, $0a                                        ; $724a: $0e $0a
	dec e                                            ; $724c: $1d
	db $10                                           ; $724d: $10
	rra                                              ; $724e: $1f
	inc de                                           ; $724f: $13
	ccf                                              ; $7250: $3f
	rra                                              ; $7251: $1f
	ccf                                              ; $7252: $3f
	rra                                              ; $7253: $1f
	jr nc, @+$01                                     ; $7254: $30 $ff

	db $fc                                           ; $7256: $fc
	ld b, a                                          ; $7257: $47
	sbc a                                            ; $7258: $9f
	ld [hl], e                                       ; $7259: $73
	rrca                                             ; $725a: $0f
	db $e3                                           ; $725b: $e3
	rra                                              ; $725c: $1f
	dec de                                           ; $725d: $1b
	db $db                                           ; $725e: $db
	rst $38                                          ; $725f: $ff
	sbc [hl]                                         ; $7260: $9e
	rlca                                             ; $7261: $07
	ld [hl], e                                       ; $7262: $73
	jr nc, jr_03c_7244                               ; $7263: $30 $df

	push de                                          ; $7265: $d5
	sub a                                            ; $7266: $97
	ld [$f5ca], a                                    ; $7267: $ea $ca $f5
	push bc                                          ; $726a: $c5
	ld a, [$ffe0]                                    ; $726b: $fa $e0 $ff
	ldh [$63], a                                     ; $726e: $e0 $63
	jr nz, @+$81                                     ; $7270: $20 $7f

	db $fc                                           ; $7272: $fc
	sbc l                                            ; $7273: $9d
	ld b, b                                          ; $7274: $40
	cp a                                             ; $7275: $bf
	ld [hl], a                                       ; $7276: $77
	jr nz, jr_03c_72e0                               ; $7277: $20 $67

	ldh a, [$9d]                                     ; $7279: $f0 $9d
	and b                                            ; $727b: $a0
	ld e, a                                          ; $727c: $5f
	ld l, a                                          ; $727d: $6f
	db $10                                           ; $727e: $10
	ld l, a                                          ; $727f: $6f
	ldh a, [$6f]                                     ; $7280: $f0 $6f
	db $f4                                           ; $7282: $f4
	ld l, a                                          ; $7283: $6f
	cp $96                                           ; $7284: $fe $96
	ld [hl], b                                       ; $7286: $70
	rst $38                                          ; $7287: $ff
	sbc b                                            ; $7288: $98
	rst $38                                          ; $7289: $ff
	ld hl, sp-$21                                    ; $728a: $f8 $df

jr_03c_728c:
	ld hl, sp-$01                                    ; $728c: $f8 $ff
	ldh a, [$7b]                                     ; $728e: $f0 $7b
	or $9d                                           ; $7290: $f6 $9d
	adc b                                            ; $7292: $88

jr_03c_7293:
	rrca                                             ; $7293: $0f
	ld d, a                                          ; $7294: $57
	and $7f                                          ; $7295: $e6 $7f
	cp $9e                                           ; $7297: $fe $9e
	inc bc                                           ; $7299: $03
	ld d, e                                          ; $729a: $53
	ldh a, [c]                                       ; $729b: $f2
	sbc [hl]                                         ; $729c: $9e
	rrca                                             ; $729d: $0f
	sbc $ff                                          ; $729e: $de $ff
	ld d, a                                          ; $72a0: $57
	db $f4                                           ; $72a1: $f4
	sbc e                                            ; $72a2: $9b
	cp $ff                                           ; $72a3: $fe $ff
	db $e4                                           ; $72a5: $e4
	ld hl, sp+$56                                    ; $72a6: $f8 $56
	call nz, Call_03c_747d                           ; $72a8: $c4 $7d $74
	ld a, a                                          ; $72ab: $7f
	cp $fd                                           ; $72ac: $fe $fd
	sub [hl]                                         ; $72ae: $96
	ld h, h                                          ; $72af: $64
	jr jr_03c_72f2                                   ; $72b0: $18 $40

	inc a                                            ; $72b2: $3c
	ld e, b                                          ; $72b3: $58
	inc b                                            ; $72b4: $04
	ld a, b                                          ; $72b5: $78
	inc b                                            ; $72b6: $04
	ld a, d                                          ; $72b7: $7a
	ld a, e                                          ; $72b8: $7b
	cp $f1                                           ; $72b9: $fe $f1
	sbc d                                            ; $72bb: $9a
	ld h, c                                          ; $72bc: $61
	sbc [hl]                                         ; $72bd: $9e
	di                                               ; $72be: $f3
	inc c                                            ; $72bf: $0c
	ldh [$7b], a                                     ; $72c0: $e0 $7b
	cp a                                             ; $72c2: $bf
	ld l, a                                          ; $72c3: $6f
	sub a                                            ; $72c4: $97
	sub a                                            ; $72c5: $97
	inc e                                            ; $72c6: $1c
	db $e3                                           ; $72c7: $e3
	jr c, @+$01                                      ; $72c8: $38 $ff

	add d                                            ; $72ca: $82
	ld a, l                                          ; $72cb: $7d
	cp $01                                           ; $72cc: $fe $01
	ld [hl], a                                       ; $72ce: $77
	cp $7f                                           ; $72cf: $fe $7f
	inc b                                            ; $72d1: $04
	ld a, [hl]                                       ; $72d2: $7e
	ret nz                                           ; $72d3: $c0

	ld a, a                                          ; $72d4: $7f
	ld hl, $8080                                     ; $72d5: $21 $80 $80
	ld bc, $0783                                     ; $72d8: $01 $83 $07
	add l                                            ; $72db: $85
	ld c, $8b                                        ; $72dc: $0e $8b
	inc e                                            ; $72de: $1c
	sub a                                            ; $72df: $97

jr_03c_72e0:
	jr @-$5f                                         ; $72e0: $18 $9f

	jr nc, jr_03c_7293                               ; $72e2: $30 $af

	jr nc, jr_03c_728c                               ; $72e4: $30 $a6

	ld a, c                                          ; $72e6: $79
	cp $ff                                           ; $72e7: $fe $ff
	ld e, l                                          ; $72e9: $5d
	db $e3                                           ; $72ea: $e3
	or a                                             ; $72eb: $b7
	ld a, b                                          ; $72ec: $78
	db $db                                           ; $72ed: $db
	inc a                                            ; $72ee: $3c
	call c, $9e3f                                    ; $72ef: $dc $3f $9e

jr_03c_72f2:
	ld a, a                                          ; $72f2: $7f
	ccf                                              ; $72f3: $3f
	rst $38                                          ; $72f4: $ff
	ld a, e                                          ; $72f5: $7b
	ld a, a                                          ; $72f6: $7f
	ldh [$8c], a                                     ; $72f7: $e0 $8c
	nop                                              ; $72f9: $00
	ret nz                                           ; $72fa: $c0

	ret nz                                           ; $72fb: $c0

	ld h, b                                          ; $72fc: $60
	ldh [$30], a                                     ; $72fd: $e0 $30

Jump_03c_72ff:
	ldh a, [$38]                                     ; $72ff: $f0 $38
	ldh a, [rAUD2LOW]                                ; $7301: $f0 $18
	ld hl, sp-$64                                    ; $7303: $f8 $9c
	ld hl, sp-$04                                    ; $7305: $f8 $fc
	db $fc                                           ; $7307: $fc
	ld b, $01                                        ; $7308: $06 $01
	ld [bc], a                                       ; $730a: $02
	ld bc, $b17a                                     ; $730b: $01 $7a $b1
	ld h, e                                          ; $730e: $63
	cp $80                                           ; $730f: $fe $80
	sub b                                            ; $7311: $90
	ldh [$e8], a                                     ; $7312: $e0 $e8
	sub b                                            ; $7314: $90
	db $f4                                           ; $7315: $f4
	adc b                                            ; $7316: $88
	cp d                                             ; $7317: $ba
	add h                                            ; $7318: $84
	sbc l                                            ; $7319: $9d
	add d                                            ; $731a: $82
	add h                                            ; $731b: $84
	add e                                            ; $731c: $83
	add d                                            ; $731d: $82
	add c                                            ; $731e: $81
	add c                                            ; $731f: $81
	add b                                            ; $7320: $80
	rla                                              ; $7321: $17
	jr c, jr_03c_735b                                ; $7322: $38 $37

	jr @+$03                                         ; $7324: $18 $01

	ld e, $0f                                        ; $7326: $1e $0f
	inc e                                            ; $7328: $1c
	add hl, de                                       ; $7329: $19
	ld d, $35                                        ; $732a: $16 $35
	sbc $fd                                          ; $732c: $de $fd
	ld e, $bb                                        ; $732e: $1e $bb
	sbc l                                            ; $7330: $9d
	inc e                                            ; $7331: $1c
	di                                               ; $7332: $f3
	ld a, d                                          ; $7333: $7a
	call nz, $c393                                   ; $7334: $c4 $93 $c3
	ccf                                              ; $7337: $3f
	db $db                                           ; $7338: $db
	ccf                                              ; $7339: $3f
	pop hl                                           ; $733a: $e1
	ccf                                              ; $733b: $3f
	pop af                                           ; $733c: $f1
	scf                                              ; $733d: $37
	pop af                                           ; $733e: $f1
	scf                                              ; $733f: $37
	ld sp, hl                                        ; $7340: $f9
	rlca                                             ; $7341: $07
	halt                                             ; $7342: $76
	call z, $fe6f                                    ; $7343: $cc $6f $fe
	sbc $ff                                          ; $7346: $de $ff
	ld a, e                                          ; $7348: $7b
	ld sp, hl                                        ; $7349: $f9
	ld e, a                                          ; $734a: $5f
	ld [de], a                                       ; $734b: $12
	ld [hl], a                                       ; $734c: $77
	inc d                                            ; $734d: $14
	ld a, l                                          ; $734e: $7d
	ld d, d                                          ; $734f: $52
	ld c, a                                          ; $7350: $4f
	ldh a, [$7e]                                     ; $7351: $f0 $7e
	add $7e                                          ; $7353: $c6 $7e
	xor $81                                          ; $7355: $ee $81
	dec b                                            ; $7357: $05
	cp $0a                                           ; $7358: $fe $0a
	db $fc                                           ; $735a: $fc

jr_03c_735b:
	inc c                                            ; $735b: $0c

jr_03c_735c:
	ld hl, sp+$0c                                    ; $735c: $f8 $0c
	ld hl, sp-$07                                    ; $735e: $f8 $f9
	db $fc                                           ; $7360: $fc
	dec bc                                           ; $7361: $0b
	db $fc                                           ; $7362: $fc
	add h                                            ; $7363: $84
	ld a, [hl]                                       ; $7364: $7e
	xor a                                            ; $7365: $af
	rst SubAFromDE                                          ; $7366: $df
	adc c                                            ; $7367: $89
	rra                                              ; $7368: $1f
	adc [hl]                                         ; $7369: $8e
	sbc c                                            ; $736a: $99
	xor [hl]                                         ; $736b: $ae
	reti                                             ; $736c: $d9


	db $db                                           ; $736d: $db
	ld [hl], h                                       ; $736e: $74
	ei                                               ; $736f: $fb
	ld [hl], h                                       ; $7370: $74
	ld [hl+], a                                      ; $7371: $22
	ld a, l                                          ; $7372: $7d
	ld [hl+], a                                      ; $7373: $22
	ld a, a                                          ; $7374: $7f
	db $dd                                           ; $7375: $dd
	rst $38                                          ; $7376: $ff
	ld a, [hl]                                       ; $7377: $7e

jr_03c_7378:
	or [hl]                                          ; $7378: $b6
	add b                                            ; $7379: $80
	jr jr_03c_735c                                   ; $737a: $18 $e0

	ld a, h                                          ; $737c: $7c
	add e                                            ; $737d: $83
	ld a, a                                          ; $737e: $7f
	add e                                            ; $737f: $83
	ld [hl], a                                       ; $7380: $77
	adc e                                            ; $7381: $8b
	or $0b                                           ; $7382: $f6 $0b
	cp $ff                                           ; $7384: $fe $ff
	jp hl                                            ; $7386: $e9


Call_03c_7387:
	cp $5f                                           ; $7387: $fe $5f

jr_03c_7389:
	sbc [hl]                                         ; $7389: $9e
	rra                                              ; $738a: $1f
	rla                                              ; $738b: $17
	or $f3                                           ; $738c: $f6 $f3
	db $fc                                           ; $738e: $fc
	ei                                               ; $738f: $fb
	jr c, jr_03c_7389                                ; $7390: $38 $f7

	add sp, $17                                      ; $7392: $e8 $17
	jr nz, @-$3e                                     ; $7394: $20 $c0

	inc c                                            ; $7396: $0c
	inc bc                                           ; $7397: $03
	add c                                            ; $7398: $81
	sub h                                            ; $7399: $94
	ld a, [hl]                                       ; $739a: $7e
	db $fd                                           ; $739b: $fd
	db $fc                                           ; $739c: $fc
	rst $38                                          ; $739d: $ff
	db $fc                                           ; $739e: $fc
	ld a, [$4af1]                                    ; $739f: $fa $f1 $4a
	pop af                                           ; $73a2: $f1
	jr z, jr_03c_7378                                ; $73a3: $28 $d3

	ld d, $00                                        ; $73a5: $16 $00
	call c, $9e33                                    ; $73a7: $dc $33 $9e
	ld [hl], l                                       ; $73aa: $75
	db $dd                                           ; $73ab: $dd
	ld d, l                                          ; $73ac: $55
	call c, $9e33                                    ; $73ad: $dc $33 $9e
	ld b, h                                          ; $73b0: $44
	ld l, a                                          ; $73b1: $6f
	or $9c                                           ; $73b2: $f6 $9c
	inc [hl]                                         ; $73b4: $34
	ld b, h                                          ; $73b5: $44
	inc sp                                           ; $73b6: $33
	ld [hl], a                                       ; $73b7: $77
	ld hl, sp-$62                                    ; $73b8: $f8 $9e
	ld h, [hl]                                       ; $73ba: $66
	ld [hl], l                                       ; $73bb: $75
	add [hl]                                         ; $73bc: $86
	sbc [hl]                                         ; $73bd: $9e
	ld [hl], $dd                                     ; $73be: $36 $dd
	ld d, $9b                                        ; $73c0: $16 $9b
	ld [hl], $26                                     ; $73c2: $36 $26
	ld h, $0f                                        ; $73c4: $26 $0f
	db $dd                                           ; $73c6: $dd
	cpl                                              ; $73c7: $2f
	sbc $0f                                          ; $73c8: $de $0f
	sbc h                                            ; $73ca: $9c
	dec de                                           ; $73cb: $1b
	ld a, b                                          ; $73cc: $78
	ld l, c                                          ; $73cd: $69
	sbc $79                                          ; $73ce: $de $79
	sbc e                                            ; $73d0: $9b
	ld l, b                                          ; $73d1: $68
	ld l, c                                          ; $73d2: $69
	inc b                                            ; $73d3: $04
	rlca                                             ; $73d4: $07
	db $db                                           ; $73d5: $db
	ld b, $9d                                        ; $73d6: $06 $9d
	ret nz                                           ; $73d8: $c0

	db $10                                           ; $73d9: $10
	db $dd                                           ; $73da: $dd
	ldh [$9a], a                                     ; $73db: $e0 $9a
	ld h, b                                          ; $73dd: $60
	ldh [rP1], a                                     ; $73de: $e0 $00
	ldh [$30], a                                     ; $73e0: $e0 $30
	call c, $9810                                    ; $73e2: $dc $10 $98
	rst $38                                          ; $73e5: $ff
	rst SubAFromBC                                          ; $73e6: $e7
	ld b, $03                                        ; $73e7: $06 $03
	ei                                               ; $73e9: $fb
	cp $fe                                           ; $73ea: $fe $fe
	db $fd                                           ; $73ec: $fd
	rst SubAFromDE                                          ; $73ed: $df
	inc b                                            ; $73ee: $04
	rst $38                                          ; $73ef: $ff
	sub [hl]                                         ; $73f0: $96
	rst $38                                          ; $73f1: $ff
	cp $fe                                           ; $73f2: $fe $fe
	ld a, $04                                        ; $73f4: $3e $04
	ld c, $fe                                        ; $73f6: $0e $fe
	db $fc                                           ; $73f8: $fc
	nop                                              ; $73f9: $00
	sbc $01                                          ; $73fa: $de $01
	sbc b                                            ; $73fc: $98
	ei                                               ; $73fd: $fb
	pop af                                           ; $73fe: $f1

Call_03c_73ff:
	ld bc, $ff03                                     ; $73ff: $01 $03 $ff
	and b                                            ; $7402: $a0
	di                                               ; $7403: $f3
	db $dd                                           ; $7404: $dd
	rst $38                                          ; $7405: $ff
	sbc l                                            ; $7406: $9d
	or c                                             ; $7407: $b1
	and l                                            ; $7408: $a5
	jp c, $857f                                      ; $7409: $da $7f $85

	ld [hl], a                                       ; $740c: $77
	db $fd                                           ; $740d: $fd
	sbc $95                                          ; $740e: $de $95
	rst FarCall                                          ; $7410: $f7
	cp $17                                           ; $7411: $fe $17
	cp c                                             ; $7413: $b9
	sub $fb                                          ; $7414: $d6 $fb
	ld sp, hl                                        ; $7416: $f9
	ld hl, sp-$47                                    ; $7417: $f8 $b9
	ei                                               ; $7419: $fb
	db $ed                                           ; $741a: $ed
	ld [hl], a                                       ; $741b: $77
	ld e, l                                          ; $741c: $5d
	db $fc                                           ; $741d: $fc
	cp h                                             ; $741e: $bc
	db $fc                                           ; $741f: $fc
	cp h                                             ; $7420: $bc
	xor h                                            ; $7421: $ac
	ld hl, sp-$10                                    ; $7422: $f8 $f0
	ld d, b                                          ; $7424: $50
	db $fc                                           ; $7425: $fc
	ld a, e                                          ; $7426: $7b
	rst FarCall                                          ; $7427: $f7
	sub a                                            ; $7428: $97
	ret c                                            ; $7429: $d8

	ld e, b                                          ; $742a: $58
	ld e, b                                          ; $742b: $58
	cp b                                             ; $742c: $b8
	nop                                              ; $742d: $00
	ld bc, $0300                                     ; $742e: $01 $00 $03
	sbc $07                                          ; $7431: $de $07
	sbc [hl]                                         ; $7433: $9e
	ld e, a                                          ; $7434: $5f
	ld [hl], e                                       ; $7435: $73
	ld sp, hl                                        ; $7436: $f9
	sub h                                            ; $7437: $94
	rrca                                             ; $7438: $0f
	rlca                                             ; $7439: $07
	daa                                              ; $743a: $27
	add c                                            ; $743b: $81
	add c                                            ; $743c: $81
	ld hl, $e1a1                                     ; $743d: $21 $a1 $e1
	pop hl                                           ; $7440: $e1
	sub b                                            ; $7441: $90
	adc $de                                          ; $7442: $ce $de
	add b                                            ; $7444: $80
	sbc $c0                                          ; $7445: $de $c0
	add b                                            ; $7447: $80
	rst AddAOntoHL                                          ; $7448: $ef
	or c                                             ; $7449: $b1
	cp a                                             ; $744a: $bf
	adc [hl]                                         ; $744b: $8e
	adc l                                            ; $744c: $8d
	adc h                                            ; $744d: $8c
	add a                                            ; $744e: $87
	adc l                                            ; $744f: $8d
	add d                                            ; $7450: $82
	add l                                            ; $7451: $85
	db $10                                           ; $7452: $10
	ld de, $0313                                     ; $7453: $11 $13 $03
	ld [$050b], sp                                   ; $7456: $08 $0b $05
	ld b, $7d                                        ; $7459: $06 $7d
	inc a                                            ; $745b: $3c
	inc a                                            ; $745c: $3c
	db $fc                                           ; $745d: $fc
	db $ec                                           ; $745e: $ec
	ret c                                            ; $745f: $d8

	jr nc, @-$0c                                     ; $7460: $30 $f2

	add e                                            ; $7462: $83
	jp $03c3                                         ; $7463: $c3 $c3 $03


	inc sp                                           ; $7466: $33
	add b                                            ; $7467: $80
	rst SubAFromBC                                          ; $7468: $e7
	rst GetHLinHL                                          ; $7469: $cf
	rrca                                             ; $746a: $0f
	and b                                            ; $746b: $a0
	ld h, $68                                        ; $746c: $26 $68
	pop af                                           ; $746e: $f1
	ldh a, [c]                                       ; $746f: $f2
	nop                                              ; $7470: $00
	call z, $a0cc                                    ; $7471: $cc $cc $a0
	ld hl, $ce67                                     ; $7474: $21 $67 $ce
	adc l                                            ; $7477: $8d
	sbc a                                            ; $7478: $9f
	cp a                                             ; $7479: $bf
	rst $38                                          ; $747a: $ff
	jr nz, jr_03c_74ac                               ; $747b: $20 $2f

Call_03c_747d:
	jr z, jr_03c_74a2                                ; $747d: $28 $23

	dec hl                                           ; $747f: $2b
	daa                                              ; $7480: $27
	cpl                                              ; $7481: $2f
	jr nz, @+$21                                     ; $7482: $20 $1f

	sbc a                                            ; $7484: $9f
	rra                                              ; $7485: $1f
	inc e                                            ; $7486: $1c
	sbc b                                            ; $7487: $98
	sbc h                                            ; $7488: $9c
	jr @+$1a                                         ; $7489: $18 $18

	sbc a                                            ; $748b: $9f
	nop                                              ; $748c: $00
	ld a, l                                          ; $748d: $7d
	add l                                            ; $748e: $85
	sbc $fd                                          ; $748f: $de $fd
	sbc d                                            ; $7491: $9a
	ret                                              ; $7492: $c9


	pop hl                                           ; $7493: $e1
	rst $38                                          ; $7494: $ff
	cp $7b                                           ; $7495: $fe $7b
	sbc $03                                          ; $7497: $de $03
	sub b                                            ; $7499: $90
	scf                                              ; $749a: $37
	rra                                              ; $749b: $1f
	dec b                                            ; $749c: $05
	dec b                                            ; $749d: $05
	and l                                            ; $749e: $a5
	reti                                             ; $749f: $d9


	jp hl                                            ; $74a0: $e9


	ei                                               ; $74a1: $fb

jr_03c_74a2:
	ld a, [$fefa]                                    ; $74a2: $fa $fa $fe
	rst $38                                          ; $74a5: $ff
	ld e, a                                          ; $74a6: $5f
	cpl                                              ; $74a7: $2f
	rra                                              ; $74a8: $1f
	sbc $0f                                          ; $74a9: $de $0f
	sbc e                                            ; $74ab: $9b

jr_03c_74ac:
	ld e, l                                          ; $74ac: $5d
	ld a, c                                          ; $74ad: $79
	reti                                             ; $74ae: $d9


	ld a, e                                          ; $74af: $7b
	ld a, e                                          ; $74b0: $7b
	xor c                                            ; $74b1: $a9
	adc l                                            ; $74b2: $8d
	dec b                                            ; $74b3: $05
	ld [hl], a                                       ; $74b4: $77
	adc l                                            ; $74b5: $8d
	adc c                                            ; $74b6: $89
	ei                                               ; $74b7: $fb
	ei                                               ; $74b8: $fb
	cp $fc                                           ; $74b9: $fe $fc
	cp $f7                                           ; $74bb: $fe $f7
	push af                                          ; $74bd: $f5
	push af                                          ; $74be: $f5
	rst FarCall                                          ; $74bf: $f7
	push af                                          ; $74c0: $f5
	jp $f434                                         ; $74c1: $c3 $34 $f4


	ld [$0bdb], sp                                   ; $74c4: $08 $db $0b
	sub c                                            ; $74c7: $91
	ld [$3fdc], sp                                   ; $74c8: $08 $dc $3f
	rst $38                                          ; $74cb: $ff
	db $fd                                           ; $74cc: $fd
	add hl, hl                                       ; $74cd: $29
	rst $38                                          ; $74ce: $ff
	rst $38                                          ; $74cf: $ff
	nop                                              ; $74d0: $00
	ccf                                              ; $74d1: $3f
	rst $38                                          ; $74d2: $ff
	rst $38                                          ; $74d3: $ff
	ei                                               ; $74d4: $fb
	jp c, $f87b                                      ; $74d5: $da $7b $f8

	adc a                                            ; $74d8: $8f
	rst $38                                          ; $74d9: $ff
	or $ef                                           ; $74da: $f6 $ef
	or l                                             ; $74dc: $b5
	ld hl, $fbff                                     ; $74dd: $21 $ff $fb

jr_03c_74e0:
	ld h, b                                          ; $74e0: $60
	ei                                               ; $74e1: $fb
	ld a, [$64f2]                                    ; $74e2: $fa $f2 $64
	ld c, h                                          ; $74e5: $4c
	db $fc                                           ; $74e6: $fc
	ld sp, hl                                        ; $74e7: $f9
	add hl, de                                       ; $74e8: $19
	reti                                             ; $74e9: $d9


	ld d, $72                                        ; $74ea: $16 $72
	jp nz, $fc7b                                     ; $74ec: $c2 $7b $fc

	db $dd                                           ; $74ef: $dd
	ld a, c                                          ; $74f0: $79
	sbc e                                            ; $74f1: $9b
	ld l, c                                          ; $74f2: $69
	ld a, b                                          ; $74f3: $78
	ld a, c                                          ; $74f4: $79
	ld a, c                                          ; $74f5: $79
	call c, $7a06                                    ; $74f6: $dc $06 $7a
	cp h                                             ; $74f9: $bc
	halt                                             ; $74fa: $76
	jp Jump_03c_609b                                 ; $74fb: $c3 $9b $60


	jr nz, jr_03c_74e0                               ; $74fe: $20 $e0

	ldh [$dc], a                                     ; $7500: $e0 $dc
	db $10                                           ; $7502: $10
	sbc [hl]                                         ; $7503: $9e
	ldh a, [$7a]                                     ; $7504: $f0 $7a
	ret nz                                           ; $7506: $c0

	sbc h                                            ; $7507: $9c
	rst $38                                          ; $7508: $ff
	ld h, e                                          ; $7509: $63
	nop                                              ; $750a: $00
	ld a, e                                          ; $750b: $7b
	cp d                                             ; $750c: $ba
	sbc [hl]                                         ; $750d: $9e
	ld h, a                                          ; $750e: $67
	db $fc                                           ; $750f: $fc
	ld a, a                                          ; $7510: $7f
	rst FarCall                                          ; $7511: $f7
	sub [hl]                                         ; $7512: $96
	nop                                              ; $7513: $00
	cp $fe                                           ; $7514: $fe $fe
	ld b, b                                          ; $7516: $40
	ld c, $fe                                        ; $7517: $0e $fe
	nop                                              ; $7519: $00
	rst $38                                          ; $751a: $ff
	rra                                              ; $751b: $1f
	call c, Call_03c_7b01                            ; $751c: $dc $01 $7b
	ldh a, [$80]                                     ; $751f: $f0 $80
	db $ed                                           ; $7521: $ed
	xor d                                            ; $7522: $aa
	adc e                                            ; $7523: $8b
	adc e                                            ; $7524: $8b
	adc a                                            ; $7525: $8f
	add e                                            ; $7526: $83
	sub e                                            ; $7527: $93
	pop af                                           ; $7528: $f1
	dec [hl]                                         ; $7529: $35
	dec d                                            ; $752a: $15
	inc d                                            ; $752b: $14
	inc d                                            ; $752c: $14
	db $10                                           ; $752d: $10
	jr jr_03c_7548                                   ; $752e: $18 $18

	ld e, $f7                                        ; $7530: $1e $f7
	ld l, l                                          ; $7532: $6d
	ld l, c                                          ; $7533: $69
	add hl, de                                       ; $7534: $19
	rrca                                             ; $7535: $0f
	ld d, a                                          ; $7536: $57
	ld d, a                                          ; $7537: $57
	sbc b                                            ; $7538: $98
	call z, $f098                                    ; $7539: $cc $98 $f0
	ldh [hDisp1_SCY], a                                     ; $753c: $e0 $90
	xor a                                            ; $753e: $af
	xor a                                            ; $753f: $af
	add e                                            ; $7540: $83
	ld h, a                                          ; $7541: $67
	and b                                            ; $7542: $a0
	ldh a, [rSVBK]                                   ; $7543: $f0 $70
	ldh a, [$e8]                                     ; $7545: $f0 $e8
	ld a, h                                          ; $7547: $7c

jr_03c_7548:
	ld e, a                                          ; $7548: $5f
	reti                                             ; $7549: $d9


	ld hl, sp+$08                                    ; $754a: $f8 $08
	adc b                                            ; $754c: $88
	adc b                                            ; $754d: $88
	db $10                                           ; $754e: $10
	sub b                                            ; $754f: $90
	cp [hl]                                          ; $7550: $be
	ccf                                              ; $7551: $3f
	inc de                                           ; $7552: $13
	rra                                              ; $7553: $1f
	ld a, [de]                                       ; $7554: $1a
	jr nc, jr_03c_7577                               ; $7555: $30 $20

	ld h, d                                          ; $7557: $62
	ld [$4fff], a                                    ; $7558: $ea $ff $4f
	ld b, a                                          ; $755b: $47
	ld c, a                                          ; $755c: $4f
	halt                                             ; $755d: $76
	sub c                                            ; $755e: $91
	adc [hl]                                         ; $755f: $8e
	rst $38                                          ; $7560: $ff
	ld e, h                                          ; $7561: $5c
	xor [hl]                                         ; $7562: $ae
	ld a, [hl]                                       ; $7563: $7e
	ld a, [hl-]                                      ; $7564: $3a
	sub b                                            ; $7565: $90
	sbc b                                            ; $7566: $98
	ld a, $f9                                        ; $7567: $3e $f9
	and c                                            ; $7569: $a1
	pop bc                                           ; $756a: $c1
	pop hl                                           ; $756b: $e1
	pop af                                           ; $756c: $f1
	ld a, d                                          ; $756d: $7a
	ld a, d                                          ; $756e: $7a
	ld sp, hl                                        ; $756f: $f9

jr_03c_7570:
	rst $38                                          ; $7570: $ff
	db $dd                                           ; $7571: $dd
	add c                                            ; $7572: $81
	sbc c                                            ; $7573: $99
	ld b, b                                          ; $7574: $40
	ld b, c                                          ; $7575: $41
	rst $38                                          ; $7576: $ff

jr_03c_7577:
	or e                                             ; $7577: $b3
	ld [bc], a                                       ; $7578: $02
	ld bc, $9e7a                                     ; $7579: $01 $7a $9e
	add b                                            ; $757c: $80
	inc bc                                           ; $757d: $03
	cp $fe                                           ; $757e: $fe $fe
	db $e4                                           ; $7580: $e4
	sbc b                                            ; $7581: $98
	ldh [$c0], a                                     ; $7582: $e0 $c0
	ret nz                                           ; $7584: $c0

	add b                                            ; $7585: $80
	sub b                                            ; $7586: $90
	sub c                                            ; $7587: $91
	rra                                              ; $7588: $1f
	ld a, a                                          ; $7589: $7f
	rst $38                                          ; $758a: $ff
	cp a                                             ; $758b: $bf
	cp a                                             ; $758c: $bf
	rst $38                                          ; $758d: $ff
	rst AddAOntoHL                                          ; $758e: $ef
	rst AddAOntoHL                                          ; $758f: $ef
	rst $38                                          ; $7590: $ff
	ld l, e                                          ; $7591: $6b
	ld a, e                                          ; $7592: $7b
	ld e, e                                          ; $7593: $5b
	cp e                                             ; $7594: $bb
	cp l                                             ; $7595: $bd
	ld [de], a                                       ; $7596: $12
	ld d, c                                          ; $7597: $51
	rst SubAFromDE                                          ; $7598: $df
	rst $38                                          ; $7599: $ff
	db $fd                                           ; $759a: $fd
	db $fd                                           ; $759b: $fd
	sub c                                            ; $759c: $91
	call c, $ffde                                    ; $759d: $dc $de $ff
	cp a                                             ; $75a0: $bf
	inc h                                            ; $75a1: $24
	and b                                            ; $75a2: $a0
	sbc c                                            ; $75a3: $99
	add a                                            ; $75a4: $87
	ld [bc], a                                       ; $75a5: $02
	jr nz, jr_03c_7570                               ; $75a6: $20 $c8

	and b                                            ; $75a8: $a0
	sbc e                                            ; $75a9: $9b
	rra                                              ; $75aa: $1f
	db $fc                                           ; $75ab: $fc
	sub l                                            ; $75ac: $95
	ret nz                                           ; $75ad: $c0

	inc sp                                           ; $75ae: $33
	nop                                              ; $75af: $00
	ld l, e                                          ; $75b0: $6b
	push de                                          ; $75b1: $d5
	ld l, d                                          ; $75b2: $6a
	sbc a                                            ; $75b3: $9f
	dec l                                            ; $75b4: $2d
	ld bc, $7bcc                                     ; $75b5: $01 $cc $7b
	ld h, h                                          ; $75b8: $64
	db $fd                                           ; $75b9: $fd
	sub h                                            ; $75ba: $94
	cp $e2                                           ; $75bb: $fe $e2
	and $bb                                          ; $75bd: $e6 $bb
	xor e                                            ; $75bf: $ab
	ld c, e                                          ; $75c0: $4b
	pop af                                           ; $75c1: $f1
	ld d, e                                          ; $75c2: $53
	rrca                                             ; $75c3: $0f
	rra                                              ; $75c4: $1f
	rra                                              ; $75c5: $1f
	sbc $07                                          ; $75c6: $de $07
	rst SubAFromDE                                          ; $75c8: $df
	rrca                                             ; $75c9: $0f
	rst SubAFromDE                                          ; $75ca: $df
	rlca                                             ; $75cb: $07
	adc e                                            ; $75cc: $8b
	ld [hl], $fe                                     ; $75cd: $36 $fe
	rst $38                                          ; $75cf: $ff
	db $fc                                           ; $75d0: $fc
	jr jr_03c_7603                                   ; $75d1: $18 $30

	rst $38                                          ; $75d3: $ff
	db $fc                                           ; $75d4: $fc
	db $fc                                           ; $75d5: $fc
	rst $38                                          ; $75d6: $ff
	db $fc                                           ; $75d7: $fc
	rst $38                                          ; $75d8: $ff
	sub a                                            ; $75d9: $97
	rra                                              ; $75da: $1f
	rst $38                                          ; $75db: $ff
	rrca                                             ; $75dc: $0f
	nop                                              ; $75dd: $00
	inc b                                            ; $75de: $04
	cp $3f                                           ; $75df: $fe $3f
	ld a, e                                          ; $75e1: $7b
	dec h                                            ; $75e2: $25
	sub l                                            ; $75e3: $95
	inc bc                                           ; $75e4: $03
	nop                                              ; $75e5: $00
	ld hl, sp+$7f                                    ; $75e6: $f8 $7f
	pop bc                                           ; $75e8: $c1
	rst $38                                          ; $75e9: $ff
	rst $38                                          ; $75ea: $ff
	pop bc                                           ; $75eb: $c1
	rst $38                                          ; $75ec: $ff
	inc e                                            ; $75ed: $1c
	ld a, e                                          ; $75ee: $7b
	bit 7, a                                         ; $75ef: $cb $7f
	rst AddAOntoHL                                          ; $75f1: $ef
	ld a, a                                          ; $75f2: $7f
	db $db                                           ; $75f3: $db
	ld a, a                                          ; $75f4: $7f
	rst AddAOntoHL                                          ; $75f5: $ef
	ld a, a                                          ; $75f6: $7f
	ldh [$7f], a                                     ; $75f7: $e0 $7f
	ldh a, [c]                                       ; $75f9: $f2
	adc h                                            ; $75fa: $8c
	dec [hl]                                         ; $75fb: $35
	rst $38                                          ; $75fc: $ff
	nop                                              ; $75fd: $00
	ld e, $00                                        ; $75fe: $1e $00
	inc e                                            ; $7600: $1c
	di                                               ; $7601: $f3
	ld a, a                                          ; $7602: $7f

jr_03c_7603:
	jp nz, $fff3                                     ; $7603: $c2 $f3 $ff

	ld bc, $e101                                     ; $7606: $01 $01 $e1
	rst $38                                          ; $7609: $ff
	adc a                                            ; $760a: $8f
	ld d, $34                                        ; $760b: $16 $34
	ld [hl-], a                                      ; $760d: $32
	ld [hl], e                                       ; $760e: $73
	cp $d9                                           ; $760f: $fe $d9
	rrca                                             ; $7611: $0f
	ld a, [hl]                                       ; $7612: $7e
	jp $fe7f                                         ; $7613: $c3 $7f $fe


	ld a, c                                          ; $7616: $79
	ld a, [hl]                                       ; $7617: $7e
	sbc [hl]                                         ; $7618: $9e
	ld l, c                                          ; $7619: $69
	reti                                             ; $761a: $d9


	ld b, $dd                                        ; $761b: $06 $dd
	ld h, b                                          ; $761d: $60
	ld a, c                                          ; $761e: $79
	add c                                            ; $761f: $81
	ld l, [hl]                                       ; $7620: $6e
	ret nz                                           ; $7621: $c0

	sbc $10                                          ; $7622: $de $10
	sbc b                                            ; $7624: $98
	xor $77                                          ; $7625: $ee $77
	xor [hl]                                         ; $7627: $ae
	ld d, a                                          ; $7628: $57
	xor [hl]                                         ; $7629: $ae
	ld b, [hl]                                       ; $762a: $46
	add [hl]                                         ; $762b: $86
	ld a, c                                          ; $762c: $79
	add l                                            ; $762d: $85
	ei                                               ; $762e: $fb
	sub h                                            ; $762f: $94
	ld bc, $0c07                                     ; $7630: $01 $07 $0c
	ld [$1010], sp                                   ; $7633: $08 $10 $10
	jr nc, jr_03c_7668                               ; $7636: $30 $30

	ld bc, $0703                                     ; $7638: $01 $03 $07
	ld a, e                                          ; $763b: $7b
	ld l, l                                          ; $763c: $6d
	rst SubAFromDE                                          ; $763d: $df
	rra                                              ; $763e: $1f
	sub a                                            ; $763f: $97
	ld sp, hl                                        ; $7640: $f9
	inc c                                            ; $7641: $0c
	inc h                                            ; $7642: $24
	db $10                                           ; $7643: $10
	inc l                                            ; $7644: $2c
	ld de, $59a9                                     ; $7645: $11 $a9 $59
	db $dd                                           ; $7648: $dd
	db $fc                                           ; $7649: $fc
	db $dd                                           ; $764a: $dd
	ld hl, sp-$6c                                    ; $764b: $f8 $94
	rst AddAOntoHL                                          ; $764d: $ef
	rst SubAFromHL                                          ; $764e: $d7
	ret nc                                           ; $764f: $d0

	rst $38                                          ; $7650: $ff
	rst $38                                          ; $7651: $ff
	rst SubAFromDE                                          ; $7652: $df
	rst $38                                          ; $7653: $ff
	xor a                                            ; $7654: $af
	jr nc, jr_03c_768f                               ; $7655: $30 $38

	ccf                                              ; $7657: $3f
	ld a, e                                          ; $7658: $7b
	reti                                             ; $7659: $d9


	add b                                            ; $765a: $80
	jr nz, jr_03c_76cd                               ; $765b: $20 $70

	cp [hl]                                          ; $765d: $be
	ld d, l                                          ; $765e: $55
	sbc d                                            ; $765f: $9a
	cp c                                             ; $7660: $b9
	and [hl]                                         ; $7661: $a6
	db $ed                                           ; $7662: $ed
	xor $dd                                          ; $7663: $ee $dd
	ld l, a                                          ; $7665: $6f
	rst AddAOntoHL                                          ; $7666: $ef
	rst AddAOntoHL                                          ; $7667: $ef

jr_03c_7668:
	ld c, a                                          ; $7668: $4f
	ld e, a                                          ; $7669: $5f
	rra                                              ; $766a: $1f
	ccf                                              ; $766b: $3f
	ld a, a                                          ; $766c: $7f
	dec sp                                           ; $766d: $3b
	ld e, b                                          ; $766e: $58
	xor b                                            ; $766f: $a8
	ld c, l                                          ; $7670: $4d
	xor a                                            ; $7671: $af
	ld e, a                                          ; $7672: $5f
	or a                                             ; $7673: $b7
	rra                                              ; $7674: $1f
	rst $38                                          ; $7675: $ff
	ldh a, [$f8]                                     ; $7676: $f0 $f8
	ld hl, sp-$01                                    ; $7678: $f8 $ff
	ld a, c                                          ; $767a: $79
	ld [hl-], a                                      ; $767b: $32
	sub a                                            ; $767c: $97
	jp hl                                            ; $767d: $e9


	ld bc, $fe02                                     ; $767e: $01 $02 $fe
	rst $38                                          ; $7681: $ff
	db $fd                                           ; $7682: $fd
	dec b                                            ; $7683: $05
	dec b                                            ; $7684: $05
	ld a, e                                          ; $7685: $7b
	ld h, d                                          ; $7686: $62
	ld a, d                                          ; $7687: $7a
	jp nc, $fedf                                     ; $7688: $d2 $df $fe

	sub e                                            ; $768b: $93
	xor $93                                          ; $768c: $ee $93
	ld b, e                                          ; $768e: $43

jr_03c_768f:
	jp nz, $8181                                     ; $768f: $c2 $81 $81

	add b                                            ; $7692: $80
	ret nz                                           ; $7693: $c0

	di                                               ; $7694: $f3
	db $e3                                           ; $7695: $e3
	add e                                            ; $7696: $83
	ld bc, $97fd                                     ; $7697: $01 $fd $97
	ld a, [hl]                                       ; $769a: $7e
	xor $c7                                          ; $769b: $ee $c7
	add a                                            ; $769d: $87
	add e                                            ; $769e: $83
	rst JumpTable                                          ; $769f: $c7
	inc bc                                           ; $76a0: $03
	add l                                            ; $76a1: $85
	call c, $8281                                    ; $76a2: $dc $81 $82
	add e                                            ; $76a5: $83
	cp $7e                                           ; $76a6: $fe $7e
	ld d, b                                          ; $76a8: $50
	and b                                            ; $76a9: $a0
	and b                                            ; $76aa: $a0
	db $ec                                           ; $76ab: $ec
	ld a, a                                          ; $76ac: $7f
	sbc [hl]                                         ; $76ad: $9e
	db $fd                                           ; $76ae: $fd
	db $fd                                           ; $76af: $fd
	cp a                                             ; $76b0: $bf
	rst $38                                          ; $76b1: $ff
	rst $38                                          ; $76b2: $ff
	di                                               ; $76b3: $f3
	ldh [$61], a                                     ; $76b4: $e0 $61
	inc bc                                           ; $76b6: $03
	ld [bc], a                                       ; $76b7: $02
	ld c, b                                          ; $76b8: $48
	jr z, jr_03c_76da                                ; $76b9: $28 $1f

	jr jr_03c_7735                                   ; $76bb: $18 $78

	adc h                                            ; $76bd: $8c
	adc l                                            ; $76be: $8d
	add h                                            ; $76bf: $84
	ldh [$f0], a                                     ; $76c0: $e0 $f0
	db $dd                                           ; $76c2: $dd
	rst $38                                          ; $76c3: $ff
	sbc h                                            ; $76c4: $9c
	ld a, [hl]                                       ; $76c5: $7e
	ld a, a                                          ; $76c6: $7f
	ld bc, $1b76                                     ; $76c7: $01 $76 $1b
	sbc h                                            ; $76ca: $9c
	jr z, @+$56                                      ; $76cb: $28 $54

jr_03c_76cd:
	xor d                                            ; $76cd: $aa
	ld a, d                                          ; $76ce: $7a
	xor $df                                          ; $76cf: $ee $df

jr_03c_76d1:
	rst $38                                          ; $76d1: $ff
	sub c                                            ; $76d2: $91
	rst SubAFromHL                                          ; $76d3: $d7
	xor e                                            ; $76d4: $ab
	ld d, l                                          ; $76d5: $55
	sub c                                            ; $76d6: $91
	add l                                            ; $76d7: $85
	add l                                            ; $76d8: $85
	ld l, a                                          ; $76d9: $6f

jr_03c_76da:
	rlca                                             ; $76da: $07
	rlca                                             ; $76db: $07
	dec b                                            ; $76dc: $05
	sbc a                                            ; $76dd: $9f
	rrca                                             ; $76de: $0f
	inc bc                                           ; $76df: $03
	add e                                            ; $76e0: $83
	db $dd                                           ; $76e1: $dd
	rst AddAOntoHL                                          ; $76e2: $ef
	sub d                                            ; $76e3: $92
	ld h, e                                          ; $76e4: $63
	ld [hl-], a                                      ; $76e5: $32
	ld e, $96                                        ; $76e6: $1e $96
	adc d                                            ; $76e8: $8a
	ld [hl+], a                                      ; $76e9: $22
	ld [hl], $d6                                     ; $76ea: $36 $d6
	ret nc                                           ; $76ec: $d0

	inc e                                            ; $76ed: $1c
	inc a                                            ; $76ee: $3c
	inc a                                            ; $76ef: $3c
	inc [hl]                                         ; $76f0: $34
	sbc $9c                                          ; $76f1: $de $9c
	sbc c                                            ; $76f3: $99
	sbc [hl]                                         ; $76f4: $9e
	nop                                              ; $76f5: $00
	add b                                            ; $76f6: $80
	ld h, b                                          ; $76f7: $60
	ld a, b                                          ; $76f8: $78
	inc l                                            ; $76f9: $2c
	sbc $3c                                          ; $76fa: $de $3c
	sbc d                                            ; $76fc: $9a
	rst $38                                          ; $76fd: $ff
	ld a, a                                          ; $76fe: $7f
	ld a, a                                          ; $76ff: $7f
	ccf                                              ; $7700: $3f
	rra                                              ; $7701: $1f
	sbc $03                                          ; $7702: $de $03
	sub h                                            ; $7704: $94
	nop                                              ; $7705: $00
	ld h, b                                          ; $7706: $60
	jr jr_03c_76d1                                   ; $7707: $18 $c8

	ld c, b                                          ; $7709: $48
	call nz, Call_03c_474f                           ; $770a: $c4 $4f $47
	rst $38                                          ; $770d: $ff
	rst SubAFromDE                                          ; $770e: $df
	rst GetHLinHL                                          ; $770f: $cf
	sbc $8f                                          ; $7710: $de $8f
	sbc h                                            ; $7712: $9c
	add [hl]                                         ; $7713: $86
	add e                                            ; $7714: $83
	rlca                                             ; $7715: $07
	db $fc                                           ; $7716: $fc
	ld a, a                                          ; $7717: $7f
	ld [hl], b                                       ; $7718: $70
	ld a, e                                          ; $7719: $7b
	ld d, e                                          ; $771a: $53
	sbc $ff                                          ; $771b: $de $ff
	ld a, [hl]                                       ; $771d: $7e
	dec sp                                           ; $771e: $3b
	ld l, [hl]                                       ; $771f: $6e
	jp nz, $129d                                     ; $7720: $c2 $9d $12

	inc d                                            ; $7723: $14
	db $db                                           ; $7724: $db
	rrca                                             ; $7725: $0f
	rst SubAFromDE                                          ; $7726: $df
	cpl                                              ; $7727: $2f
	sbc b                                            ; $7728: $98
	ld c, e                                          ; $7729: $4b
	ld l, e                                          ; $772a: $6b
	ld c, e                                          ; $772b: $4b
	ld c, a                                          ; $772c: $4f
	rlca                                             ; $772d: $07
	ld b, $04                                        ; $772e: $06 $04
	ld a, b                                          ; $7730: $78
	ld h, e                                          ; $7731: $63
	ld l, [hl]                                       ; $7732: $6e
	db $dd                                           ; $7733: $dd
	sub a                                            ; $7734: $97

jr_03c_7735:
	or b                                             ; $7735: $b0
	ld d, b                                          ; $7736: $50
	or b                                             ; $7737: $b0
	ld d, b                                          ; $7738: $50
	jr nc, jr_03c_778c                               ; $7739: $30 $51

	nop                                              ; $773b: $00
	ld b, b                                          ; $773c: $40
	ld l, d                                          ; $773d: $6a
	jp nc, $3c7b                                     ; $773e: $d2 $7b $3c

	sbc c                                            ; $7741: $99
	ld bc, $d4e2                                     ; $7742: $01 $e2 $d4
	ret z                                            ; $7745: $c8

	db $db                                           ; $7746: $db
	ld a, [hl]                                       ; $7747: $7e
	ld [hl], a                                       ; $7748: $77
	di                                               ; $7749: $f3
	sub e                                            ; $774a: $93
	inc hl                                           ; $774b: $23
	rst FarCall                                          ; $774c: $f7
	or [hl]                                          ; $774d: $b6
	rra                                              ; $774e: $1f
	jr z, jr_03c_778d                                ; $774f: $28 $3c

	jr nc, jr_03c_7783                               ; $7751: $30 $30

	ld b, b                                          ; $7753: $40
	ld b, d                                          ; $7754: $42
	jp $dee1                                         ; $7755: $c3 $e1 $de


	rra                                              ; $7758: $1f
	rst SubAFromDE                                          ; $7759: $df
	ccf                                              ; $775a: $3f
	sbc $7f                                          ; $775b: $de $7f
	sub e                                            ; $775d: $93
	inc sp                                           ; $775e: $33
	ld a, e                                          ; $775f: $7b
	inc hl                                           ; $7760: $23
	scf                                              ; $7761: $37
	ld b, a                                          ; $7762: $47
	ld l, a                                          ; $7763: $6f
	rst GetHLinHL                                          ; $7764: $cf
	adc $f8                                          ; $7765: $ce $f8
	ldh a, [$f0]                                     ; $7767: $f0 $f0
	ldh [$79], a                                     ; $7769: $e0 $79
	sub $9b                                          ; $776b: $d6 $9b
	add c                                            ; $776d: $81
	rst $38                                          ; $776e: $ff
	rst SubAFromHL                                          ; $776f: $d7
	db $ec                                           ; $7770: $ec
	ld l, a                                          ; $7771: $6f
	sub [hl]                                         ; $7772: $96
	sbc h                                            ; $7773: $9c
	ld l, a                                          ; $7774: $6f
	ld [hl], e                                       ; $7775: $73
	ld a, a                                          ; $7776: $7f
	db $dd                                           ; $7777: $dd
	rst $38                                          ; $7778: $ff
	sub a                                            ; $7779: $97
	sbc e                                            ; $777a: $9b
	dec [hl]                                         ; $777b: $35
	jp c, $eab7                                      ; $777c: $da $b7 $ea

	sub $be                                          ; $777f: $d6 $be
	sbc $d9                                          ; $7781: $de $d9

jr_03c_7783:
	rst $38                                          ; $7783: $ff
	sub [hl]                                         ; $7784: $96
	cp a                                             ; $7785: $bf
	ld e, a                                          ; $7786: $5f
	ccf                                              ; $7787: $3f
	ld a, a                                          ; $7788: $7f
	cp a                                             ; $7789: $bf
	ld l, a                                          ; $778a: $6f
	rra                                              ; $778b: $1f

jr_03c_778c:
	cpl                                              ; $778c: $2f

jr_03c_778d:
	cp $da                                           ; $778d: $fe $da
	rst $38                                          ; $778f: $ff
	ld a, l                                          ; $7790: $7d
	inc sp                                           ; $7791: $33
	adc c                                            ; $7792: $89
	rlca                                             ; $7793: $07
	rst FarCall                                          ; $7794: $f7
	ld a, [$06ea]                                    ; $7795: $fa $ea $06
	db $f4                                           ; $7798: $f4
	db $fd                                           ; $7799: $fd
	db $fd                                           ; $779a: $fd
	db $fc                                           ; $779b: $fc
	inc c                                            ; $779c: $0c
	inc c                                            ; $779d: $0c
	inc e                                            ; $779e: $1c
	ld hl, sp-$06                                    ; $779f: $f8 $fa
	ret nz                                           ; $77a1: $c0

	ldh [$64], a                                     ; $77a2: $e0 $64
	add [hl]                                         ; $77a4: $86
	ld a, $d9                                        ; $77a5: $3e $d9
	add h                                            ; $77a7: $84
	call nz, $4c7b                                   ; $77a8: $c4 $7b $4c
	add b                                            ; $77ab: $80
	ld a, b                                          ; $77ac: $78
	rst $38                                          ; $77ad: $ff
	rst SubAFromBC                                          ; $77ae: $e7
	add e                                            ; $77af: $83

jr_03c_77b0:
	add e                                            ; $77b0: $83
	ld a, a                                          ; $77b1: $7f
	rst $38                                          ; $77b2: $ff
	ccf                                              ; $77b3: $3f
	ld l, a                                          ; $77b4: $6f
	ld e, a                                          ; $77b5: $5f
	rst GetHLinHL                                          ; $77b6: $cf
	and e                                            ; $77b7: $a3
	jp Jump_03c_78fc                                 ; $77b8: $c3 $fc $78


	ld [hl], b                                       ; $77bb: $70
	jr nc, @+$22                                     ; $77bc: $30 $20

	add b                                            ; $77be: $80
	ret nz                                           ; $77bf: $c0

	ldh [$fb], a                                     ; $77c0: $e0 $fb
	ei                                               ; $77c2: $fb
	push af                                          ; $77c3: $f5
	ldh a, [$ea]                                     ; $77c4: $f0 $ea
	push hl                                          ; $77c6: $e5
	pop de                                           ; $77c7: $d1
	db $d3                                           ; $77c8: $d3
	ld b, $04                                        ; $77c9: $06 $04
	sub c                                            ; $77cb: $91
	ld [$1109], sp                                   ; $77cc: $08 $09 $11
	ld [de], a                                       ; $77cf: $12
	ld h, $2c                                        ; $77d0: $26 $2c
	ld b, $06                                        ; $77d2: $06 $06
	ld [bc], a                                       ; $77d4: $02
	ld b, e                                          ; $77d5: $43
	jp $82c3                                         ; $77d6: $c3 $c3 $82


	add e                                            ; $77d9: $83
	ld [hl], a                                       ; $77da: $77
	and l                                            ; $77db: $a5
	sbc [hl]                                         ; $77dc: $9e
	ld a, $7b                                        ; $77dd: $3e $7b
	ld l, a                                          ; $77df: $6f
	add b                                            ; $77e0: $80
	ld d, l                                          ; $77e1: $55
	ld a, [hl+]                                      ; $77e2: $2a
	dec d                                            ; $77e3: $15
	adc d                                            ; $77e4: $8a
	push af                                          ; $77e5: $f5
	cp $03                                           ; $77e6: $fe $03
	rst $38                                          ; $77e8: $ff
	xor d                                            ; $77e9: $aa
	push de                                          ; $77ea: $d5
	ld [$7af5], a                                    ; $77eb: $ea $f5 $7a
	db $fd                                           ; $77ee: $fd
	rst $38                                          ; $77ef: $ff
	rst $38                                          ; $77f0: $ff
	ld e, e                                          ; $77f1: $5b
	xor [hl]                                         ; $77f2: $ae
	ld d, a                                          ; $77f3: $57
	xor b                                            ; $77f4: $a8
	ld d, l                                          ; $77f5: $55
	xor d                                            ; $77f6: $aa
	ld d, h                                          ; $77f7: $54
	ld a, [hl+]                                      ; $77f8: $2a
	xor h                                            ; $77f9: $ac
	ld d, a                                          ; $77fa: $57
	xor a                                            ; $77fb: $af
	ld d, a                                          ; $77fc: $57
	xor d                                            ; $77fd: $aa
	ld d, l                                          ; $77fe: $55

Jump_03c_77ff:
	xor e                                            ; $77ff: $ab
	sub [hl]                                         ; $7800: $96
	push de                                          ; $7801: $d5
	sbc [hl]                                         ; $7802: $9e
	cp a                                             ; $7803: $bf
	cp e                                             ; $7804: $bb
	ld [hl], h                                       ; $7805: $74
	ld l, b                                          ; $7806: $68
	ld l, a                                          ; $7807: $6f
	rst $38                                          ; $7808: $ff
	ldh [$de], a                                     ; $7809: $e0 $de
	rst SubAFromDE                                          ; $780b: $df
	sbc l                                            ; $780c: $9d
	db $db                                           ; $780d: $db

jr_03c_780e:
	rst SubAFromDE                                          ; $780e: $df
	sbc $ff                                          ; $780f: $de $ff
	sbc [hl]                                         ; $7811: $9e
	ld hl, sp-$22                                    ; $7812: $f8 $de
	jr nz, jr_03c_77b0                               ; $7814: $20 $9a

	inc a                                            ; $7816: $3c
	ei                                               ; $7817: $fb
	jp c, $0714                                      ; $7818: $da $14 $07

	call c, $9dbf                                    ; $781b: $dc $bf $9d
	or c                                             ; $781e: $b1
	ld hl, sp-$22                                    ; $781f: $f8 $de
	ld b, c                                          ; $7821: $41
	sbc d                                            ; $7822: $9a
	inc hl                                           ; $7823: $23
	ld e, $02                                        ; $7824: $1e $02
	ldh [c], a                                       ; $7826: $e2
	cp d                                             ; $7827: $ba
	sbc $80                                          ; $7828: $de $80
	sbc l                                            ; $782a: $9d
	ret nz                                           ; $782b: $c0

	push hl                                          ; $782c: $e5
	ld a, e                                          ; $782d: $7b
	add hl, sp                                       ; $782e: $39
	db $dd                                           ; $782f: $dd
	ret nz                                           ; $7830: $c0

	db $fd                                           ; $7831: $fd
	db $dd                                           ; $7832: $dd
	ccf                                              ; $7833: $3f
	db $dd                                           ; $7834: $dd
	rst $38                                          ; $7835: $ff
	ld a, [hl]                                       ; $7836: $7e
	add $6f                                          ; $7837: $c6 $6f
	cp $d9                                           ; $7839: $fe $d9
	cpl                                              ; $783b: $2f
	sbc [hl]                                         ; $783c: $9e
	ld [bc], a                                       ; $783d: $02
	ld [hl], d                                       ; $783e: $72
	reti                                             ; $783f: $d9


	ld a, [hl]                                       ; $7840: $7e
	adc c                                            ; $7841: $89
	ld a, [$917e]                                    ; $7842: $fa $7e $91
	sub [hl]                                         ; $7845: $96
	inc b                                            ; $7846: $04
	ld bc, $0c02                                     ; $7847: $01 $02 $0c
	inc c                                            ; $784a: $0c
	push hl                                          ; $784b: $e5
	ld b, b                                          ; $784c: $40
	ld [bc], a                                       ; $784d: $02
	inc bc                                           ; $784e: $03
	ld a, d                                          ; $784f: $7a
	xor e                                            ; $7850: $ab
	sub c                                            ; $7851: $91
	nop                                              ; $7852: $00
	jr jr_03c_780e                                   ; $7853: $18 $b9

	ld c, a                                          ; $7855: $4f
	rra                                              ; $7856: $1f
	ld a, c                                          ; $7857: $79
	ei                                               ; $7858: $fb
	ld h, l                                          ; $7859: $65
	ld b, a                                          ; $785a: $47
	add $d6                                          ; $785b: $c6 $d6
	ccf                                              ; $785d: $3f
	rst $38                                          ; $785e: $ff
	ccf                                              ; $785f: $3f
	halt                                             ; $7860: $76
	ldh a, [$97]                                     ; $7861: $f0 $97
	rst AddAOntoHL                                          ; $7863: $ef
	ld h, b                                          ; $7864: $60
	ld b, a                                          ; $7865: $47
	adc e                                            ; $7866: $8b
	add e                                            ; $7867: $83
	ld b, $3c                                        ; $7868: $06 $3c
	ld a, b                                          ; $786a: $78
	ld a, d                                          ; $786b: $7a
	ld [de], a                                       ; $786c: $12
	adc a                                            ; $786d: $8f
	ld a, [hl]                                       ; $786e: $7e
	cp $fc                                           ; $786f: $fe $fc
	ld hl, sp-$30                                    ; $7871: $f8 $d0
	and b                                            ; $7873: $a0
	sbc a                                            ; $7874: $9f
	sbc a                                            ; $7875: $9f
	dec a                                            ; $7876: $3d
	ccf                                              ; $7877: $3f
	ccf                                              ; $7878: $3f
	ld a, e                                          ; $7879: $7b
	ld a, a                                          ; $787a: $7f
	rst FarCall                                          ; $787b: $f7
	add c                                            ; $787c: $81
	ld bc, $03de                                     ; $787d: $01 $de $03
	ld a, b                                          ; $7880: $78
	rst SubAFromDE                                          ; $7881: $df
	ld a, c                                          ; $7882: $79
	xor h                                            ; $7883: $ac
	call nc, $97ff                                   ; $7884: $d4 $ff $97
	cp e                                             ; $7887: $bb
	ld [hl], a                                       ; $7888: $77
	ld a, [$ecf6]                                    ; $7889: $fa $f6 $ec
	call c, $fcde                                    ; $788c: $dc $de $fc
	reti                                             ; $788f: $d9


	rst $38                                          ; $7890: $ff
	sub a                                            ; $7891: $97
	ld d, a                                          ; $7892: $57
	cpl                                              ; $7893: $2f
	rlca                                             ; $7894: $07
	rra                                              ; $7895: $1f
	ld c, a                                          ; $7896: $4f
	sub a                                            ; $7897: $97
	xor e                                            ; $7898: $ab
	rst FarCall                                          ; $7899: $f7
	reti                                             ; $789a: $d9


	rst $38                                          ; $789b: $ff
	adc a                                            ; $789c: $8f
	ld a, [$999b]                                    ; $789d: $fa $9b $99
	sbc b                                            ; $78a0: $98
	db $db                                           ; $78a1: $db
	jp c, $d9d9                                      ; $78a2: $da $d9 $d9

	ldh a, [$f0]                                     ; $78a5: $f0 $f0
	ldh a, [c]                                       ; $78a7: $f2
	di                                               ; $78a8: $f3
	pop af                                           ; $78a9: $f1
	pop af                                           ; $78aa: $f1
	ldh a, [$f0]                                     ; $78ab: $f0 $f0
	db $db                                           ; $78ad: $db
	call nz, $de9d                                   ; $78ae: $c4 $9d $de
	cp l                                             ; $78b1: $bd
	db $db                                           ; $78b2: $db
	add e                                            ; $78b3: $83
	add b                                            ; $78b4: $80
	add c                                            ; $78b5: $81
	jp $f3b3                                         ; $78b6: $c3 $b3 $f3


	rst SubAFromBC                                          ; $78b9: $e7
	rst SubAFromBC                                          ; $78ba: $e7
	xor a                                            ; $78bb: $af
	rst SubAFromHL                                          ; $78bc: $d7
	res 0, a                                         ; $78bd: $cb $87
	ldh [$a0], a                                     ; $78bf: $e0 $a0
	or b                                             ; $78c1: $b0
	or b                                             ; $78c2: $b0
	ldh a, [$f8]                                     ; $78c3: $f0 $f8
	db $fc                                           ; $78c5: $fc
	cp $d7                                           ; $78c6: $fe $d7
	sub $d7                                          ; $78c8: $d6 $d7
	push de                                          ; $78ca: $d5
	xor e                                            ; $78cb: $ab
	xor l                                            ; $78cc: $ad
	and a                                            ; $78cd: $a7
	cp b                                             ; $78ce: $b8
	jr c, jr_03c_790a                                ; $78cf: $38 $39

	add hl, sp                                       ; $78d1: $39
	dec sp                                           ; $78d2: $3b
	halt                                             ; $78d3: $76
	sub h                                            ; $78d4: $94
	halt                                             ; $78d5: $76
	ld a, a                                          ; $78d6: $7f
	ld a, a                                          ; $78d7: $7f
	ld b, e                                          ; $78d8: $43
	add e                                            ; $78d9: $83
	inc bc                                           ; $78da: $03
	add e                                            ; $78db: $83
	rlca                                             ; $78dc: $07
	rst JumpTable                                          ; $78dd: $c7
	ld b, a                                          ; $78de: $47
	and a                                            ; $78df: $a7
	halt                                             ; $78e0: $76
	ld c, l                                          ; $78e1: $4d
	ld a, l                                          ; $78e2: $7d
	cp [hl]                                          ; $78e3: $be
	sbc l                                            ; $78e4: $9d
	cp a                                             ; $78e5: $bf
	rst SubAFromDE                                          ; $78e6: $df
	ld sp, hl                                        ; $78e7: $f9
	reti                                             ; $78e8: $d9


	rst $38                                          ; $78e9: $ff
	sub [hl]                                         ; $78ea: $96
	or e                                             ; $78eb: $b3
	xor a                                            ; $78ec: $af
	cp d                                             ; $78ed: $ba
	cp h                                             ; $78ee: $bc
	cp b                                             ; $78ef: $b8
	or h                                             ; $78f0: $b4
	cp b                                             ; $78f1: $b8
	or h                                             ; $78f2: $b4
	rst AddAOntoHL                                          ; $78f3: $ef
	jp c, $8bff                                      ; $78f4: $da $ff $8b

	ld h, b                                          ; $78f7: $60
	jr nz, jr_03c_78fc                               ; $78f8: $20 $02

	dec d                                            ; $78fa: $15
	ld a, [hl+]                                      ; $78fb: $2a

Jump_03c_78fc:
jr_03c_78fc:
	dec d                                            ; $78fc: $15
	dec bc                                           ; $78fd: $0b
	dec d                                            ; $78fe: $15
	rst $38                                          ; $78ff: $ff
	rst $38                                          ; $7900: $ff
	db $fd                                           ; $7901: $fd
	ld [$ead5], a                                    ; $7902: $ea $d5 $ea
	db $f4                                           ; $7905: $f4
	ld [$3fd8], a                                    ; $7906: $ea $d8 $3f
	nop                                              ; $7909: $00

jr_03c_790a:
	ld d, h                                          ; $790a: $54
	ld [hl], a                                       ; $790b: $77
	ld c, [hl]                                       ; $790c: $4e
	ld a, d                                          ; $790d: $7a
	db $e3                                           ; $790e: $e3
	sbc [hl]                                         ; $790f: $9e
	xor e                                            ; $7910: $ab
	ld [hl], e                                       ; $7911: $73
	ret z                                            ; $7912: $c8

	adc c                                            ; $7913: $89
	pop af                                           ; $7914: $f1
	jr nc, jr_03c_7930                               ; $7915: $30 $19

	dec c                                            ; $7917: $0d
	pop af                                           ; $7918: $f1
	ret                                              ; $7919: $c9


	cp e                                             ; $791a: $bb
	rst $38                                          ; $791b: $ff
	ei                                               ; $791c: $fb
	ei                                               ; $791d: $fb
	ld [bc], a                                       ; $791e: $02
	ld [bc], a                                       ; $791f: $02
	dec bc                                           ; $7920: $0b
	inc sp                                           ; $7921: $33
	ld b, a                                          ; $7922: $47
	add b                                            ; $7923: $80
	ldh [$bc], a                                     ; $7924: $e0 $bc
	ld c, a                                          ; $7926: $4f
	dec c                                            ; $7927: $0d
	ld [hl], e                                       ; $7928: $73
	rst JumpTable                                          ; $7929: $c7
	ld [hl], a                                       ; $792a: $77
	and c                                            ; $792b: $a1
	sbc h                                            ; $792c: $9c
	ccf                                              ; $792d: $3f
	inc bc                                           ; $792e: $03
	add a                                            ; $792f: $87

jr_03c_7930:
	ld a, $c0                                        ; $7930: $3e $c0
	ld a, d                                          ; $7932: $7a
	jp $dfff                                         ; $7933: $c3 $ff $df


	inc bc                                           ; $7936: $03
	ld [hl], h                                       ; $7937: $74
	call nc, $9375                                   ; $7938: $d4 $75 $93
	rst $38                                          ; $793b: $ff
	sub e                                            ; $793c: $93
	adc b                                            ; $793d: $88
	sbc a                                            ; $793e: $9f
	ld a, [hl+]                                      ; $793f: $2a
	ld c, b                                          ; $7940: $48
	ret z                                            ; $7941: $c8

	ld c, b                                          ; $7942: $48
	ld c, c                                          ; $7943: $49
	ld sp, hl                                        ; $7944: $f9
	ld a, c                                          ; $7945: $79
	ld a, b                                          ; $7946: $78
	ld hl, sp-$08                                    ; $7947: $f8 $f8
	sbc $38                                          ; $7949: $de $38
	sub [hl]                                         ; $794b: $96
	cp $b6                                           ; $794c: $fe $b6
	daa                                              ; $794e: $27
	cpl                                              ; $794f: $2f
	cpl                                              ; $7950: $2f
	ccf                                              ; $7951: $3f
	ld e, l                                          ; $7952: $5d
	and $8f                                          ; $7953: $e6 $8f
	ld [hl], h                                       ; $7955: $74
	ld d, d                                          ; $7956: $52
	rst SubAFromDE                                          ; $7957: $df
	rrca                                             ; $7958: $0f
	sub [hl]                                         ; $7959: $96
	add hl, de                                       ; $795a: $19
	or b                                             ; $795b: $b0
	or b                                             ; $795c: $b0
	ld e, c                                          ; $795d: $59
	ld e, c                                          ; $795e: $59
	ld c, [hl]                                       ; $795f: $4e
	ld h, $a0                                        ; $7960: $26 $a0
	ld d, b                                          ; $7962: $50
	db $dd                                           ; $7963: $dd
	ldh [$9d], a                                     ; $7964: $e0 $9d
	pop af                                           ; $7966: $f1
	ld sp, hl                                        ; $7967: $f9
	db $dd                                           ; $7968: $dd
	rst $38                                          ; $7969: $ff
	sub c                                            ; $796a: $91
	db $ed                                           ; $796b: $ed
	ld a, [$a9d7]                                    ; $796c: $fa $d7 $a9
	ld l, e                                          ; $796f: $6b
	rst SubAFromBC                                          ; $7970: $e7
	rrca                                             ; $7971: $0f
	rrca                                             ; $7972: $0f
	ld e, $1c                                        ; $7973: $1e $1c
	jr c, jr_03c_79ed                                ; $7975: $38 $76

	push af                                          ; $7977: $f5
	ld a, [$987b]                                    ; $7978: $fa $7b $98
	sbc d                                            ; $797b: $9a
	ld c, h                                          ; $797c: $4c
	nop                                              ; $797d: $00
	adc a                                            ; $797e: $8f
	rst SubAFromDE                                          ; $797f: $df
	ld h, [hl]                                       ; $7980: $66
	ld [hl], a                                       ; $7981: $77
	ld l, l                                          ; $7982: $6d
	cp $9a                                           ; $7983: $fe $9a
	sbc a                                            ; $7985: $9f
	db $fd                                           ; $7986: $fd
	cp $cd                                           ; $7987: $fe $cd
	add d                                            ; $7989: $82
	ld a, d                                          ; $798a: $7a
	add a                                            ; $798b: $87
	sbc [hl]                                         ; $798c: $9e
	ld a, $78                                        ; $798d: $3e $78
	sub c                                            ; $798f: $91
	ld [hl], a                                       ; $7990: $77
	and c                                            ; $7991: $a1
	sbc [hl]                                         ; $7992: $9e
	pop bc                                           ; $7993: $c1
	ld a, e                                          ; $7994: $7b
	ld a, c                                          ; $7995: $79
	sbc d                                            ; $7996: $9a
	sbc a                                            ; $7997: $9f
	ld c, a                                          ; $7998: $4f
	rst GetHLinHL                                          ; $7999: $cf
	rst GetHLinHL                                          ; $799a: $cf
	rra                                              ; $799b: $1f
	ld l, l                                          ; $799c: $6d
	ld e, e                                          ; $799d: $5b
	ld a, a                                          ; $799e: $7f
	and $de                                          ; $799f: $e6 $de
	reti                                             ; $79a1: $d9


	sbc d                                            ; $79a2: $9a
	ld hl, sp-$07                                    ; $79a3: $f8 $f9
	ld sp, hl                                        ; $79a5: $f9
	ldh [c], a                                       ; $79a6: $e2
	db $e4                                           ; $79a7: $e4
	sbc $f0                                          ; $79a8: $de $f0
	sbc $d1                                          ; $79aa: $de $d1
	sub l                                            ; $79ac: $95
	sbc d                                            ; $79ad: $9a
	ld hl, sp-$40                                    ; $79ae: $f8 $c0
	rst $38                                          ; $79b0: $ff
	ldh a, [$8e]                                     ; $79b1: $f0 $8e
	sbc c                                            ; $79b3: $99
	ld d, $2f                                        ; $79b4: $16 $2f
	xor a                                            ; $79b6: $af
	sbc $ff                                          ; $79b7: $de $ff
	sub c                                            ; $79b9: $91
	rst SubAFromDE                                          ; $79ba: $df
	cp a                                             ; $79bb: $bf
	ld e, c                                          ; $79bc: $59
	jr nc, jr_03c_79ef                               ; $79bd: $30 $30

	adc l                                            ; $79bf: $8d
	rlca                                             ; $79c0: $07
	inc bc                                           ; $79c1: $03
	add c                                            ; $79c2: $81
	ret nz                                           ; $79c3: $c0

	ld h, b                                          ; $79c4: $60
	ldh a, [rAUD2LOW]                                ; $79c5: $f0 $18
	di                                               ; $79c7: $f3
	ld a, d                                          ; $79c8: $7a
	call nz, $1a77                                   ; $79c9: $c4 $77 $1a
	adc b                                            ; $79cc: $88
	inc a                                            ; $79cd: $3c
	or $bb                                           ; $79ce: $f6 $bb
	rst AddAOntoHL                                          ; $79d0: $ef
	ld [hl], l                                       ; $79d1: $75
	dec a                                            ; $79d2: $3d
	ld a, [de]                                       ; $79d3: $1a
	ld c, $fb                                        ; $79d4: $0e $fb
	ld sp, hl                                        ; $79d6: $f9
	ld a, h                                          ; $79d7: $7c
	inc e                                            ; $79d8: $1c
	adc [hl]                                         ; $79d9: $8e
	add $e7                                          ; $79da: $c6 $e7
	di                                               ; $79dc: $f3
	ld b, a                                          ; $79dd: $47
	ld c, a                                          ; $79de: $4f
	xor a                                            ; $79df: $af
	rst AddAOntoHL                                          ; $79e0: $ef
	rst GetHLinHL                                          ; $79e1: $cf
	rst SubAFromDE                                          ; $79e2: $df
	sbc a                                            ; $79e3: $9f
	ld a, e                                          ; $79e4: $7b
	ld bc, $a77f                                     ; $79e5: $01 $7f $a7
	ld a, b                                          ; $79e8: $78
	rst AddAOntoHL                                          ; $79e9: $ef
	ld a, b                                          ; $79ea: $78
	ld b, e                                          ; $79eb: $43
	ld d, d                                          ; $79ec: $52

jr_03c_79ed:
	pop bc                                           ; $79ed: $c1
	sub a                                            ; $79ee: $97

Jump_03c_79ef:
jr_03c_79ef:
	rst $38                                          ; $79ef: $ff
	cp d                                             ; $79f0: $ba
	cp l                                             ; $79f1: $bd
	cp [hl]                                          ; $79f2: $be
	cp l                                             ; $79f3: $bd
	cp [hl]                                          ; $79f4: $be
	cp a                                             ; $79f5: $bf
	cp [hl]                                          ; $79f6: $be
	ld [hl], c                                       ; $79f7: $71
	call nz, $ffdd                                   ; $79f8: $c4 $dd $ff
	sub h                                            ; $79fb: $94
	dec bc                                           ; $79fc: $0b
	dec b                                            ; $79fd: $05
	ld [bc], a                                       ; $79fe: $02
	ld bc, $4080                                     ; $79ff: $01 $80 $40
	and b                                            ; $7a02: $a0
	ld d, b                                          ; $7a03: $50
	db $f4                                           ; $7a04: $f4
	ld a, [$6efd]                                    ; $7a05: $fa $fd $6e
	rla                                              ; $7a08: $17
	ld a, a                                          ; $7a09: $7f
	ld sp, hl                                        ; $7a0a: $f9
	ld a, h                                          ; $7a0b: $7c
	ldh a, [$9c]                                     ; $7a0c: $f0 $9c
	ld e, a                                          ; $7a0e: $5f
	cpl                                              ; $7a0f: $2f
	rla                                              ; $7a10: $17
	ld [hl], h                                       ; $7a11: $74
	ld e, e                                          ; $7a12: $5b
	ld a, a                                          ; $7a13: $7f
	jp hl                                            ; $7a14: $e9


	sub e                                            ; $7a15: $93
	ret nc                                           ; $7a16: $d0

	add sp, $18                                      ; $7a17: $e8 $18
	add b                                            ; $7a19: $80
	add a                                            ; $7a1a: $87
	pop hl                                           ; $7a1b: $e1
	ld e, b                                          ; $7a1c: $58
	db $e4                                           ; $7a1d: $e4
	sbc b                                            ; $7a1e: $98
	ldh a, [c]                                       ; $7a1f: $f2
	daa                                              ; $7a20: $27
	rra                                              ; $7a21: $1f
	ei                                               ; $7a22: $fb
	sub h                                            ; $7a23: $94
	xor $35                                          ; $7a24: $ee $35
	ld a, [$1fff]                                    ; $7a26: $fa $ff $1f
	rlca                                             ; $7a29: $07
	ld bc, $f100                                     ; $7a2a: $01 $00 $f1
	jp z, $fc05                                      ; $7a2d: $ca $05 $fc

	dec sp                                           ; $7a30: $3b
	nop                                              ; $7a31: $00
	rst SubAFromDE                                          ; $7a32: $df
	inc sp                                           ; $7a33: $33
	sub a                                            ; $7a34: $97
	inc [hl]                                         ; $7a35: $34
	ld b, h                                          ; $7a36: $44
	inc sp                                           ; $7a37: $33
	ld d, l                                          ; $7a38: $55
	ld h, l                                          ; $7a39: $65
	ld d, e                                          ; $7a3a: $53
	ld h, e                                          ; $7a3b: $63
	ld [hl], $73                                     ; $7a3c: $36 $73
	or $98                                           ; $7a3e: $f6 $98
	dec [hl]                                         ; $7a40: $35
	inc sp                                           ; $7a41: $33
	inc sp                                           ; $7a42: $33
	ld h, a                                          ; $7a43: $67
	ld [hl], a                                       ; $7a44: $77
	inc sp                                           ; $7a45: $33
	inc sp                                           ; $7a46: $33
	sbc $44                                          ; $7a47: $de $44
	sub h                                            ; $7a49: $94
	inc [hl]                                         ; $7a4a: $34
	inc sp                                           ; $7a4b: $33
	inc sp                                           ; $7a4c: $33
	ld [hl], a                                       ; $7a4d: $77
	ld [hl], a                                       ; $7a4e: $77
	inc sp                                           ; $7a4f: $33
	ld [hl], $44                                     ; $7a50: $36 $44
	ld h, h                                          ; $7a52: $64
	ld b, e                                          ; $7a53: $43
	ld d, e                                          ; $7a54: $53
	ld [hl], e                                       ; $7a55: $73
	or $9e                                           ; $7a56: $f6 $9e
	ld h, [hl]                                       ; $7a58: $66
	sbc $44                                          ; $7a59: $de $44
	sub b                                            ; $7a5b: $90
	ld d, l                                          ; $7a5c: $55
	inc sp                                           ; $7a5d: $33
	ld b, e                                          ; $7a5e: $43
	inc sp                                           ; $7a5f: $33
	scf                                              ; $7a60: $37
	inc sp                                           ; $7a61: $33
	inc sp                                           ; $7a62: $33
	ld d, h                                          ; $7a63: $54
	ld b, h                                          ; $7a64: $44
	ld h, h                                          ; $7a65: $64
	ld d, l                                          ; $7a66: $55
	ld d, e                                          ; $7a67: $53
	ld b, e                                          ; $7a68: $43
	inc sp                                           ; $7a69: $33
	inc sp                                           ; $7a6a: $33
	or h                                             ; $7a6b: $b4
	add c                                            ; $7a6c: $81
	pop hl                                           ; $7a6d: $e1
	reti                                             ; $7a6e: $d9


	inc e                                            ; $7a6f: $1c
	reti                                             ; $7a70: $d9


	ld [$03d9], sp                                   ; $7a71: $08 $d9 $03
	ld sp, hl                                        ; $7a74: $f9
	db $db                                           ; $7a75: $db
	inc [hl]                                         ; $7a76: $34
	rst SubAFromDE                                          ; $7a77: $df
	or h                                             ; $7a78: $b4
	reti                                             ; $7a79: $d9


	dec de                                           ; $7a7a: $1b
	db $db                                           ; $7a7b: $db
	call z, $df9d                                    ; $7a7c: $cc $9d $df
	db $db                                           ; $7a7f: $db
	db $db                                           ; $7a80: $db
	add h                                            ; $7a81: $84
	sub e                                            ; $7a82: $93
	adc a                                            ; $7a83: $8f
	sbc h                                            ; $7a84: $9c
	db $10                                           ; $7a85: $10
	db $10                                           ; $7a86: $10
	inc d                                            ; $7a87: $14
	db $10                                           ; $7a88: $10
	db $10                                           ; $7a89: $10
	ld a, [bc]                                       ; $7a8a: $0a
	db $fc                                           ; $7a8b: $fc
	inc bc                                           ; $7a8c: $03
	ld h, a                                          ; $7a8d: $67
	ld h, a                                          ; $7a8e: $67
	sbc $63                                          ; $7a8f: $de $63
	sbc h                                            ; $7a91: $9c
	ld [hl], c                                       ; $7a92: $71
	rst $38                                          ; $7a93: $ff
	rst $38                                          ; $7a94: $ff
	ld sp, hl                                        ; $7a95: $f9
	reti                                             ; $7a96: $d9


	rst $38                                          ; $7a97: $ff
	reti                                             ; $7a98: $d9


	inc bc                                           ; $7a99: $03
	reti                                             ; $7a9a: $d9


	cp $d9                                           ; $7a9b: $fe $d9
	ld a, d                                          ; $7a9d: $7a
	reti                                             ; $7a9e: $d9


	inc [hl]                                         ; $7a9f: $34
	sbc h                                            ; $7aa0: $9c
	nop                                              ; $7aa1: $00
	ld a, e                                          ; $7aa2: $7b
	ld a, a                                          ; $7aa3: $7f
	cp $9d                                           ; $7aa4: $fe $9d
	ld h, [hl]                                       ; $7aa6: $66
	cp a                                             ; $7aa7: $bf
	ld a, [$4096]                                    ; $7aa8: $fa $96 $40
	ld [bc], a                                       ; $7aab: $02
	ld [bc], a                                       ; $7aac: $02
	ld a, [$0212]                                    ; $7aad: $fa $12 $02
	ld [bc], a                                       ; $7ab0: $02
	ld [hl], d                                       ; $7ab1: $72
	ld a, [hl+]                                      ; $7ab2: $2a
	jp c, $9101                                      ; $7ab3: $da $01 $91

	ld de, $007f                                     ; $7ab6: $11 $7f $00
	ld a, a                                          ; $7ab9: $7f
	add b                                            ; $7aba: $80
	ret nz                                           ; $7abb: $c0

	add b                                            ; $7abc: $80
	or l                                             ; $7abd: $b5
	add b                                            ; $7abe: $80
	add b                                            ; $7abf: $80
	rst $38                                          ; $7ac0: $ff
	add b                                            ; $7ac1: $80
	nop                                              ; $7ac2: $00

jr_03c_7ac3:
	jr nz, jr_03c_7ac3                               ; $7ac3: $20 $fe

	adc a                                            ; $7ac5: $8f
	db $fc                                           ; $7ac6: $fc
	nop                                              ; $7ac7: $00
	ld hl, sp+$00                                    ; $7ac8: $f8 $00
	ld [$a000], sp                                   ; $7aca: $08 $00 $a0
	ld [bc], a                                       ; $7acd: $02
	ld [bc], a                                       ; $7ace: $02
	cp $06                                           ; $7acf: $fe $06
	ld b, $16                                        ; $7ad1: $06 $16
	ld b, $06                                        ; $7ad3: $06 $06
	inc b                                            ; $7ad5: $04
	reti                                             ; $7ad6: $d9


	rst SubAFromDE                                          ; $7ad7: $df
	reti                                             ; $7ad8: $d9


	ccf                                              ; $7ad9: $3f
	pop bc                                           ; $7ada: $c1
	rst $38                                          ; $7adb: $ff
	inc bc                                           ; $7adc: $03
	rst $38                                          ; $7add: $ff
	jp nc, $97ff                                     ; $7ade: $d2 $ff $97

	nop                                              ; $7ae1: $00
	add b                                            ; $7ae2: $80
	ldh [$f8], a                                     ; $7ae3: $e0 $f8
	cp [hl]                                          ; $7ae5: $be
	rst AddAOntoHL                                          ; $7ae6: $ef
	ei                                               ; $7ae7: $fb
	ld c, $fe                                        ; $7ae8: $0e $fe
	sbc h                                            ; $7aea: $9c
	ldh [$38], a                                     ; $7aeb: $e0 $38
	ld c, $6a                                        ; $7aed: $0e $6a
	jp hl                                            ; $7aef: $e9


	ld a, a                                          ; $7af0: $7f
	db $ec                                           ; $7af1: $ec
	sbc [hl]                                         ; $7af2: $9e
	db $ec                                           ; $7af3: $ec
	ld l, e                                          ; $7af4: $6b
	rst FarCall                                          ; $7af5: $f7
	sbc [hl]                                         ; $7af6: $9e
	ldh a, [$3e]                                     ; $7af7: $f0 $3e
	ret nz                                           ; $7af9: $c0

	db $db                                           ; $7afa: $db
	ld bc, $dff9                                     ; $7afb: $01 $f9 $df

Jump_03c_7afe:
	or b                                             ; $7afe: $b0

Call_03c_7aff:
	sbc c                                            ; $7aff: $99
	or c                                             ; $7b00: $b1

Call_03c_7b01:
	or e                                             ; $7b01: $b3
	ldh a, [c]                                       ; $7b02: $f2
	push af                                          ; $7b03: $f5
	db $f4                                           ; $7b04: $f4
	ld a, [$1fdc]                                    ; $7b05: $fa $dc $1f
	rst SubAFromDE                                          ; $7b08: $df
	ld e, $80                                        ; $7b09: $1e $80
	inc e                                            ; $7b0b: $1c
	scf                                              ; $7b0c: $37
	ret c                                            ; $7b0d: $d8

	sbc [hl]                                         ; $7b0e: $9e
	ld e, a                                          ; $7b0f: $5f
	sbc a                                            ; $7b10: $9f
	ld l, $24                                        ; $7b11: $2e $24
	rla                                              ; $7b13: $17
	ld hl, sp-$01                                    ; $7b14: $f8 $ff
	rst $38                                          ; $7b16: $ff
	cp a                                             ; $7b17: $bf
	ccf                                              ; $7b18: $3f
	rra                                              ; $7b19: $1f
	rra                                              ; $7b1a: $1f
	ld [$e0f8], sp                                   ; $7b1b: $08 $f8 $e0
	ld a, [hl]                                       ; $7b1e: $7e
	and $4a                                          ; $7b1f: $e6 $4a
	ld d, c                                          ; $7b21: $51
	sub c                                            ; $7b22: $91
	cp b                                             ; $7b23: $b8
	rlca                                             ; $7b24: $07
	rra                                              ; $7b25: $1f
	add c                                            ; $7b26: $81
	add c                                            ; $7b27: $81
	add a                                            ; $7b28: $87
	adc a                                            ; $7b29: $8f
	adc [hl]                                         ; $7b2a: $8e
	rrca                                             ; $7b2b: $0f
	rlca                                             ; $7b2c: $07
	ret nz                                           ; $7b2d: $c0

	ld h, b                                          ; $7b2e: $60
	sub b                                            ; $7b2f: $90
	jr jr_03c_7b7e                                   ; $7b30: $18 $4c

	ld c, h                                          ; $7b32: $4c
	and [hl]                                         ; $7b33: $a6
	add $ff                                          ; $7b34: $c6 $ff
	rst $38                                          ; $7b36: $ff
	ld a, a                                          ; $7b37: $7f
	rst $38                                          ; $7b38: $ff
	cp a                                             ; $7b39: $bf
	cp a                                             ; $7b3a: $bf
	rst SubAFromDE                                          ; $7b3b: $df
	ld a, [hl+]                                      ; $7b3c: $2a
	ret nz                                           ; $7b3d: $c0

	rst SubAFromDE                                          ; $7b3e: $df
	ld a, b                                          ; $7b3f: $78
	db $db                                           ; $7b40: $db
	inc [hl]                                         ; $7b41: $34
	rst SubAFromDE                                          ; $7b42: $df
	scf                                              ; $7b43: $37
	cp $9b                                           ; $7b44: $fe $9b
	ld d, [hl]                                       ; $7b46: $56
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	cp $fd                                           ; $7b49: $fe $fd
	ld a, d                                          ; $7b4b: $7a
	pop hl                                           ; $7b4c: $e1
	rst SubAFromDE                                          ; $7b4d: $df
	rst $38                                          ; $7b4e: $ff
	sbc $02                                          ; $7b4f: $de $02
	sbc d                                            ; $7b51: $9a
	xor d                                            ; $7b52: $aa
	ld [bc], a                                       ; $7b53: $02
	ld [bc], a                                       ; $7b54: $02

Call_03c_7b55:
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	halt                                             ; $7b57: $76
	call nz, $01df                                   ; $7b58: $c4 $df $01
	rst SubAFromDE                                          ; $7b5b: $df
	rst $38                                          ; $7b5c: $ff
	rst SubAFromDE                                          ; $7b5d: $df
	sbc a                                            ; $7b5e: $9f
	sbc l                                            ; $7b5f: $9d
	add b                                            ; $7b60: $80
	or [hl]                                          ; $7b61: $b6
	db $dd                                           ; $7b62: $dd
	add b                                            ; $7b63: $80
	ld sp, hl                                        ; $7b64: $f9
	sbc l                                            ; $7b65: $9d
	ldh [c], a                                       ; $7b66: $e2
	jp nz, $02db                                     ; $7b67: $c2 $db $02

	reti                                             ; $7b6a: $d9


	inc b                                            ; $7b6b: $04
	ld [bc], a                                       ; $7b6c: $02
	ret nz                                           ; $7b6d: $c0

	inc bc                                           ; $7b6e: $03
	rst $38                                          ; $7b6f: $ff
	jp Jump_03c_62ff                                 ; $7b70: $c3 $ff $62


	rst FarCall                                          ; $7b73: $f7
	ld a, [$dd9d]                                    ; $7b74: $fa $9d $dd
	ld [hl], e                                       ; $7b77: $73
	ld l, [hl]                                       ; $7b78: $6e
	cp e                                             ; $7b79: $bb
	sbc [hl]                                         ; $7b7a: $9e
	ld e, $6a                                        ; $7b7b: $1e $6a
	or l                                             ; $7b7d: $b5

jr_03c_7b7e:
	adc a                                            ; $7b7e: $8f
	inc e                                            ; $7b7f: $1c
	ld e, h                                          ; $7b80: $5c
	call c, $ffbc                                    ; $7b81: $dc $bc $ff
	ccf                                              ; $7b84: $3f
	ld c, $0c                                        ; $7b85: $0e $0c
	ld [$e888], sp                                   ; $7b87: $08 $88 $e8
	jr c, jr_03c_7b94                                ; $7b8a: $38 $08

	add hl, bc                                       ; $7b8c: $09
	add hl, bc                                       ; $7b8d: $09
	ld [$c572], sp                                   ; $7b8e: $08 $72 $c5
	sbc h                                            ; $7b91: $9c
	ldh [$58], a                                     ; $7b92: $e0 $58

jr_03c_7b94:
	call c, Call_03c_7efb                            ; $7b94: $dc $fb $7e
	adc l                                            ; $7b97: $8d
	sbc [hl]                                         ; $7b98: $9e
	ld sp, hl                                        ; $7b99: $f9
	call c, $dfb0                                    ; $7b9a: $dc $b0 $df
	cp b                                             ; $7b9d: $b8
	sbc [hl]                                         ; $7b9e: $9e
	ld e, $da                                        ; $7b9f: $1e $da
	rra                                              ; $7ba1: $1f
	add e                                            ; $7ba2: $83
	add [hl]                                         ; $7ba3: $86
	db $e4                                           ; $7ba4: $e4
	db $fd                                           ; $7ba5: $fd
	ret c                                            ; $7ba6: $d8

	ret c                                            ; $7ba7: $d8

	sbc b                                            ; $7ba8: $98
	sbc d                                            ; $7ba9: $9a
	ld a, [bc]                                       ; $7baa: $0a
	nop                                              ; $7bab: $00
	ld [bc], a                                       ; $7bac: $02
	ld [bc], a                                       ; $7bad: $02
	daa                                              ; $7bae: $27
	daa                                              ; $7baf: $27
	ld h, a                                          ; $7bb0: $67
	ld h, a                                          ; $7bb1: $67

Call_03c_7bb2:
	rst FarCall                                          ; $7bb2: $f7
	sbc d                                            ; $7bb3: $9a
	dec e                                            ; $7bb4: $1d
	add l                                            ; $7bb5: $85
	adc d                                            ; $7bb6: $8a
	xor b                                            ; $7bb7: $a8
	xor h                                            ; $7bb8: $ac
	xor [hl]                                         ; $7bb9: $ae
	ld a, [hl]                                       ; $7bba: $7e
	ld h, a                                          ; $7bbb: $67
	ld h, e                                          ; $7bbc: $63
	ld a, e                                          ; $7bbd: $7b
	ld a, l                                          ; $7bbe: $7d
	sbc $7f                                          ; $7bbf: $de $7f

Jump_03c_7bc1:
	sbc e                                            ; $7bc1: $9b
	rst $38                                          ; $7bc2: $ff
	rst JumpTable                                          ; $7bc3: $c7
	ld [hl], a                                       ; $7bc4: $77
	rst AddAOntoHL                                          ; $7bc5: $ef
	db $db                                           ; $7bc6: $db
	rst $38                                          ; $7bc7: $ff
	ld l, e                                          ; $7bc8: $6b
	ld sp, hl                                        ; $7bc9: $f9
	rst SubAFromDE                                          ; $7bca: $df
	inc bc                                           ; $7bcb: $03
	db $db                                           ; $7bcc: $db
	add e                                            ; $7bcd: $83
	reti                                             ; $7bce: $d9


	cp $de                                           ; $7bcf: $fe $de
	ld a, b                                          ; $7bd1: $78
	sbc l                                            ; $7bd2: $9d
	ld a, d                                          ; $7bd3: $7a
	ld a, c                                          ; $7bd4: $79
	ld a, e                                          ; $7bd5: $7b
	cp $de                                           ; $7bd6: $fe $de
	scf                                              ; $7bd8: $37
	sbc l                                            ; $7bd9: $9d
	dec [hl]                                         ; $7bda: $35
	ld [hl], $7b                                     ; $7bdb: $36 $7b
	cp $8a                                           ; $7bdd: $fe $8a
	nop                                              ; $7bdf: $00
	ld a, [hl+]                                      ; $7be0: $2a
	ld d, l                                          ; $7be1: $55
	xor d                                            ; $7be2: $aa
	ld d, l                                          ; $7be3: $55
	xor a                                            ; $7be4: $af
	ld a, a                                          ; $7be5: $7f
	rst $38                                          ; $7be6: $ff
	rst $38                                          ; $7be7: $ff
	push de                                          ; $7be8: $d5
	xor d                                            ; $7be9: $aa
	ld d, l                                          ; $7bea: $55
	xor d                                            ; $7beb: $aa
	ld d, b                                          ; $7bec: $50
	add b                                            ; $7bed: $80
	nop                                              ; $7bee: $00
	ld d, h                                          ; $7bef: $54
	xor d                                            ; $7bf0: $aa
	ld d, h                                          ; $7bf1: $54
	xor [hl]                                         ; $7bf2: $ae
	ld a, [hl]                                       ; $7bf3: $7e
	sbc $fe                                          ; $7bf4: $de $fe
	sbc d                                            ; $7bf6: $9a
	xor e                                            ; $7bf7: $ab
	ld d, l                                          ; $7bf8: $55
	xor e                                            ; $7bf9: $ab
	ld d, c                                          ; $7bfa: $51
	add c                                            ; $7bfb: $81
	sbc $01                                          ; $7bfc: $de $01
	sbc l                                            ; $7bfe: $9d
	add b                                            ; $7bff: $80
	cp a                                             ; $7c00: $bf
	ld l, a                                          ; $7c01: $6f
	cp $f9                                           ; $7c02: $fe $f9
	sbc l                                            ; $7c04: $9d
	ld [bc], a                                       ; $7c05: $02
	ldh a, [c]                                       ; $7c06: $f2
	ld l, a                                          ; $7c07: $6f
	cp $02                                           ; $7c08: $fe $02
	ret nz                                           ; $7c0a: $c0

	inc bc                                           ; $7c0b: $03
	rst $38                                          ; $7c0c: $ff
	push de                                          ; $7c0d: $d5
	rst $38                                          ; $7c0e: $ff
	sbc l                                            ; $7c0f: $9d
	ldh a, [$cc]                                     ; $7c10: $f0 $cc
	jp c, $9eff                                      ; $7c12: $da $ff $9e

	di                                               ; $7c15: $f3
	db $db                                           ; $7c16: $db
	rst $38                                          ; $7c17: $ff
	sbc l                                            ; $7c18: $9d
	rra                                              ; $7c19: $1f
	rst JumpTable                                          ; $7c1a: $c7
	jp c, $9eff                                      ; $7c1b: $da $ff $9e

	ccf                                              ; $7c1e: $3f
	inc d                                            ; $7c1f: $14
	nop                                              ; $7c20: $00
	rst SubAFromDE                                          ; $7c21: $df
	inc sp                                           ; $7c22: $33
	sbc h                                            ; $7c23: $9c
	ld b, e                                          ; $7c24: $43
	ld b, h                                          ; $7c25: $44
	ld b, e                                          ; $7c26: $43
	jp c, $9e33                                      ; $7c27: $da $33 $9e

	inc [hl]                                         ; $7c2a: $34
	ld h, e                                          ; $7c2b: $63
	or $df                                           ; $7c2c: $f6 $df
	ld b, h                                          ; $7c2e: $44
	ld [hl], e                                       ; $7c2f: $73
	or $9e                                           ; $7c30: $f6 $9e
	ld h, [hl]                                       ; $7c32: $66
	dec d                                            ; $7c33: $15
	add l                                            ; $7c34: $85
	pop hl                                           ; $7c35: $e1
	reti                                             ; $7c36: $d9


	inc e                                            ; $7c37: $1c
	reti                                             ; $7c38: $d9


	ld [$169d], sp                                   ; $7c39: $08 $9d $16
	ld b, $fb                                        ; $7c3c: $06 $fb
	sbc l                                            ; $7c3e: $9d
	ld c, $02                                        ; $7c3f: $0e $02
	ei                                               ; $7c41: $fb
	rst SubAFromDE                                          ; $7c42: $df
	cp d                                             ; $7c43: $ba
	sbc c                                            ; $7c44: $99
	rst $38                                          ; $7c45: $ff
	rst AddAOntoHL                                          ; $7c46: $ef
	rst AddAOntoHL                                          ; $7c47: $ef
	ld l, a                                          ; $7c48: $6f
	ld h, a                                          ; $7c49: $67
	ld l, e                                          ; $7c4a: $6b
	jp c, $9a1f                                      ; $7c4b: $da $1f $9a

	rla                                              ; $7c4e: $17
	ld a, [bc]                                       ; $7c4f: $0a
	sbc e                                            ; $7c50: $9b
	db $d3                                           ; $7c51: $d3
	db $d3                                           ; $7c52: $d3
	sbc $f3                                          ; $7c53: $de $f3
	sbc h                                            ; $7c55: $9c
	ei                                               ; $7c56: $fb
	rst FarCall                                          ; $7c57: $f7
	rst FarCall                                          ; $7c58: $f7
	db $db                                           ; $7c59: $db
	rst $38                                          ; $7c5a: $ff
	rst SubAFromDE                                          ; $7c5b: $df
	ld l, a                                          ; $7c5c: $6f
	sbc d                                            ; $7c5d: $9a
	ld a, a                                          ; $7c5e: $7f
	ld l, a                                          ; $7c5f: $6f
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	ld a, a                                          ; $7c62: $7f
	ret c                                            ; $7c63: $d8

	rst $38                                          ; $7c64: $ff
	rst SubAFromDE                                          ; $7c65: $df
	ei                                               ; $7c66: $fb
	sbc h                                            ; $7c67: $9c
	ld a, [$fafe]                                    ; $7c68: $fa $fe $fa
	sbc $f1                                          ; $7c6b: $de $f1
	reti                                             ; $7c6d: $d9


	rst $38                                          ; $7c6e: $ff
	db $db                                           ; $7c6f: $db
	inc bc                                           ; $7c70: $03
	rst SubAFromDE                                          ; $7c71: $df
	add e                                            ; $7c72: $83
	db $db                                           ; $7c73: $db
	cp $df                                           ; $7c74: $fe $df
	ld a, [hl]                                       ; $7c76: $7e
	sbc e                                            ; $7c77: $9b
	ld a, e                                          ; $7c78: $7b
	ld [hl], b                                       ; $7c79: $70
	ld [hl], b                                       ; $7c7a: $70
	ld [hl], h                                       ; $7c7b: $74
	sbc $75                                          ; $7c7c: $de $75
	sbc d                                            ; $7c7e: $9a
	ld [hl], h                                       ; $7c7f: $74
	inc [hl]                                         ; $7c80: $34
	scf                                              ; $7c81: $37
	scf                                              ; $7c82: $37
	inc sp                                           ; $7c83: $33
	sbc $32                                          ; $7c84: $de $32
	sub a                                            ; $7c86: $97
	inc sp                                           ; $7c87: $33
	rst $38                                          ; $7c88: $ff
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	rst $38                                          ; $7c8b: $ff
	dec [hl]                                         ; $7c8c: $35
	rst $38                                          ; $7c8d: $ff
	ld [hl], l                                       ; $7c8e: $75
	ld a, e                                          ; $7c8f: $7b
	ld a, [$f67f]                                    ; $7c90: $fa $7f $f6
	add [hl]                                         ; $7c93: $86
	jp z, $8a00                                      ; $7c94: $ca $00 $8a

	adc d                                            ; $7c97: $8a
	rst $38                                          ; $7c98: $ff
	ld [bc], a                                       ; $7c99: $02
	ld a, [bc]                                       ; $7c9a: $0a
	jp nz, $fac2                                     ; $7c9b: $c2 $c2 $fa

	sub d                                            ; $7c9e: $92
	sub d                                            ; $7c9f: $92
	nop                                              ; $7ca0: $00
	db $fc                                           ; $7ca1: $fc
	db $f4                                           ; $7ca2: $f4
	inc a                                            ; $7ca3: $3c
	inc a                                            ; $7ca4: $3c
	inc b                                            ; $7ca5: $04
	ld l, h                                          ; $7ca6: $6c
	ld l, h                                          ; $7ca7: $6c
	add b                                            ; $7ca8: $80
	cp a                                             ; $7ca9: $bf
	add b                                            ; $7caa: $80
	add b                                            ; $7cab: $80
	cp a                                             ; $7cac: $bf
	sbc $ff                                          ; $7cad: $de $ff
	cp $df                                           ; $7caf: $fe $df
	ld b, b                                          ; $7cb1: $40
	cp $9a                                           ; $7cb2: $fe $9a
	ld [bc], a                                       ; $7cb4: $02
	ldh a, [c]                                       ; $7cb5: $f2
	ld [bc], a                                       ; $7cb6: $02
	ld [bc], a                                       ; $7cb7: $02
	cp $de                                           ; $7cb8: $fe $de
	ld a, [$04de]                                    ; $7cba: $fa $de $04
	sbc l                                            ; $7cbd: $9d
	inc c                                            ; $7cbe: $0c
	nop                                              ; $7cbf: $00
	sbc $04                                          ; $7cc0: $de $04
	reti                                             ; $7cc2: $d9


	rst SubAFromDE                                          ; $7cc3: $df

Call_03c_7cc4:
	reti                                             ; $7cc4: $d9


	ccf                                              ; $7cc5: $3f
	jp c, $9eff                                      ; $7cc6: $da $ff $9e

	ldh [$d2], a                                     ; $7cc9: $e0 $d2
	rst $38                                          ; $7ccb: $ff
	ld e, a                                          ; $7ccc: $5f
	ld e, a                                          ; $7ccd: $5f
	rst SubAFromDE                                          ; $7cce: $df
	rst $38                                          ; $7ccf: $ff
	call c, $d9fe                                    ; $7cd0: $dc $fe $d9
	rst $38                                          ; $7cd3: $ff
	sbc d                                            ; $7cd4: $9a

jr_03c_7cd5:
	sbc [hl]                                         ; $7cd5: $9e
	and c                                            ; $7cd6: $a1
	ld l, a                                          ; $7cd7: $6f
	ld [hl], b                                       ; $7cd8: $70
	inc a                                            ; $7cd9: $3c
	sbc $3f                                          ; $7cda: $de $3f
	sbc e                                            ; $7cdc: $9b
	rst SubAFromBC                                          ; $7cdd: $e7
	rst GetHLinHL                                          ; $7cde: $cf
	add b                                            ; $7cdf: $80
	add b                                            ; $7ce0: $80
	db $dd                                           ; $7ce1: $dd
	ret nz                                           ; $7ce2: $c0

	adc a                                            ; $7ce3: $8f

Call_03c_7ce4:
	inc de                                           ; $7ce4: $13
	db $db                                           ; $7ce5: $db
	jp hl                                            ; $7ce6: $e9


	dec e                                            ; $7ce7: $1d
	dec a                                            ; $7ce8: $3d
	push hl                                          ; $7ce9: $e5
	and c                                            ; $7cea: $a1
	and b                                            ; $7ceb: $a0
	rst AddAOntoHL                                          ; $7cec: $ef
	rst SubAFromBC                                          ; $7ced: $e7
	rlca                                             ; $7cee: $07
	inc bc                                           ; $7cef: $03
	inc bc                                           ; $7cf0: $03
	dec de                                           ; $7cf1: $1b
	ld e, a                                          ; $7cf2: $5f
	ld e, a                                          ; $7cf3: $5f
	pop hl                                           ; $7cf4: $e1
	db $dd                                           ; $7cf5: $dd
	jr jr_03c_7cd5                                   ; $7cf6: $18 $dd

	inc e                                            ; $7cf8: $1c
	reti                                             ; $7cf9: $d9


	inc c                                            ; $7cfa: $0c
	ld a, [$ba6a]                                    ; $7cfb: $fa $6a $ba
	sbc b                                            ; $7cfe: $98
	nop                                              ; $7cff: $00
	rra                                              ; $7d00: $1f
	ld l, e                                          ; $7d01: $6b
	dec hl                                           ; $7d02: $2b
	add hl, hl                                       ; $7d03: $29
	jr z, jr_03c_7d0e                                ; $7d04: $28 $08

	sbc $02                                          ; $7d06: $de $02
	call c, $de17                                    ; $7d08: $dc $17 $de
	dec e                                            ; $7d0b: $1d
	sbc [hl]                                         ; $7d0c: $9e
	ei                                               ; $7d0d: $fb

jr_03c_7d0e:
	call c, $9dff                                    ; $7d0e: $dc $ff $9d
	cp a                                             ; $7d11: $bf
	sbc a                                            ; $7d12: $9f
	db $db                                           ; $7d13: $db
	rst $38                                          ; $7d14: $ff
	sbc l                                            ; $7d15: $9d
	cp a                                             ; $7d16: $bf
	sbc l                                            ; $7d17: $9d
	ld l, a                                          ; $7d18: $6f
	ld l, [hl]                                       ; $7d19: $6e
	rst SubAFromDE                                          ; $7d1a: $df
	db $fc                                           ; $7d1b: $fc
	jp c, $97ff                                      ; $7d1c: $da $ff $97

	ld sp, hl                                        ; $7d1f: $f9
	pop af                                           ; $7d20: $f1
	db $e3                                           ; $7d21: $e3
	rst GetHLinHL                                          ; $7d22: $cf
	rst GetHLinHL                                          ; $7d23: $cf
	sbc a                                            ; $7d24: $9f
	sbc a                                            ; $7d25: $9f
	ccf                                              ; $7d26: $3f
	ld a, e                                          ; $7d27: $7b
	ld d, b                                          ; $7d28: $50
	ld a, [hl]                                       ; $7d29: $7e
	sbc a                                            ; $7d2a: $9f
	adc a                                            ; $7d2b: $8f
	rst AddAOntoHL                                          ; $7d2c: $ef
	rst $38                                          ; $7d2d: $ff
	rst SubAFromDE                                          ; $7d2e: $df
	cp a                                             ; $7d2f: $bf
	jp $a383                                         ; $7d30: $c3 $83 $a3


	add e                                            ; $7d33: $83
	sub e                                            ; $7d34: $93
	add e                                            ; $7d35: $83
	add c                                            ; $7d36: $81
	adc c                                            ; $7d37: $89
	ld a, $be                                        ; $7d38: $3e $be
	sbc [hl]                                         ; $7d3a: $9e
	sbc [hl]                                         ; $7d3b: $9e
	sbc $8e                                          ; $7d3c: $de $8e
	sbc [hl]                                         ; $7d3e: $9e
	add [hl]                                         ; $7d3f: $86
	sbc $75                                          ; $7d40: $de $75
	rst SubAFromDE                                          ; $7d42: $df
	push af                                          ; $7d43: $f5
	sbc e                                            ; $7d44: $9b
	ld a, a                                          ; $7d45: $7f
	nop                                              ; $7d46: $00
	rst $38                                          ; $7d47: $ff
	ld [hl-], a                                      ; $7d48: $32
	ld a, d                                          ; $7d49: $7a
	jp nz, $229e                                     ; $7d4a: $c2 $9e $22

	cp $9d                                           ; $7d4d: $fe $9d
	ld [hl], h                                       ; $7d4f: $74
	ldh a, [$dd]                                     ; $7d50: $f0 $dd
	rst $38                                          ; $7d52: $ff
	ld a, a                                          ; $7d53: $7f
	ldh a, [$9e]                                     ; $7d54: $f0 $9e
	adc e                                            ; $7d56: $8b
	halt                                             ; $7d57: $76
	sbc $fe                                          ; $7d58: $de $fe
	sbc l                                            ; $7d5a: $9d
	add d                                            ; $7d5b: $82
	ld [bc], a                                       ; $7d5c: $02
	sbc $ff                                          ; $7d5d: $de $ff
	sbc d                                            ; $7d5f: $9a
	ld [$ff00], a                                    ; $7d60: $ea $00 $ff
	ld a, h                                          ; $7d63: $7c
	db $fc                                           ; $7d64: $fc
	cp $9e                                           ; $7d65: $fe $9e
	dec d                                            ; $7d67: $15
	halt                                             ; $7d68: $76
	xor c                                            ; $7d69: $a9
	rst SubAFromDE                                          ; $7d6a: $df
	rst $38                                          ; $7d6b: $ff
	sbc [hl]                                         ; $7d6c: $9e
	add b                                            ; $7d6d: $80
	halt                                             ; $7d6e: $76
	and e                                            ; $7d6f: $a3
	db $fd                                           ; $7d70: $fd
	halt                                             ; $7d71: $76
	sub e                                            ; $7d72: $93
	ld a, a                                          ; $7d73: $7f
	sub h                                            ; $7d74: $94
	add l                                            ; $7d75: $85
	cp $0b                                           ; $7d76: $fe $0b
	ld a, [bc]                                       ; $7d78: $0a
	ld hl, sp-$04                                    ; $7d79: $f8 $fc
	inc bc                                           ; $7d7b: $03
	dec b                                            ; $7d7c: $05
	ld [$0c00], sp                                   ; $7d7d: $08 $00 $0c
	db $fd                                           ; $7d80: $fd
	rrca                                             ; $7d81: $0f
	rlca                                             ; $7d82: $07
	rst SubAFromDE                                          ; $7d83: $df
	cp a                                             ; $7d84: $bf
	ld e, h                                          ; $7d85: $5c
	ld e, a                                          ; $7d86: $5f
	sbc a                                            ; $7d87: $9f
	db $10                                           ; $7d88: $10
	ld e, a                                          ; $7d89: $5f
	ld e, a                                          ; $7d8a: $5f
	rst $38                                          ; $7d8b: $ff
	ld a, a                                          ; $7d8c: $7f
	cp a                                             ; $7d8d: $bf
	inc a                                            ; $7d8e: $3c
	ld a, h                                          ; $7d8f: $7c
	sbc $f0                                          ; $7d90: $de $f0
	add d                                            ; $7d92: $82
	add $52                                          ; $7d93: $c6 $52
	ret                                              ; $7d95: $c9


	ret nc                                           ; $7d96: $d0

	call z, $f567                                    ; $7d97: $cc $67 $f5
	ld a, [$effd]                                    ; $7d9a: $fa $fd $ef
	ld h, [hl]                                       ; $7d9d: $66
	ld h, b                                          ; $7d9e: $60
	ld [hl], b                                       ; $7d9f: $70
	ld a, b                                          ; $7da0: $78
	ld a, d                                          ; $7da1: $7a
	ld a, a                                          ; $7da2: $7f
	ld a, a                                          ; $7da3: $7f
	cp a                                             ; $7da4: $bf
	ld a, a                                          ; $7da5: $7f
	ccf                                              ; $7da6: $3f
	cp a                                             ; $7da7: $bf
	ld h, b                                          ; $7da8: $60
	ld h, b                                          ; $7da9: $60
	ldh [rIE], a                                     ; $7daa: $e0 $ff
	ld a, a                                          ; $7dac: $7f
	ccf                                              ; $7dad: $3f
	ld a, a                                          ; $7dae: $7f
	ld a, a                                          ; $7daf: $7f
	sbc $e0                                          ; $7db0: $de $e0
	rst SubAFromDE                                          ; $7db2: $df
	rst $38                                          ; $7db3: $ff
	sbc e                                            ; $7db4: $9b
	db $fd                                           ; $7db5: $fd
	rst $38                                          ; $7db6: $ff
	db $fc                                           ; $7db7: $fc
	dec b                                            ; $7db8: $05
	ld [hl], a                                       ; $7db9: $77
	ld d, b                                          ; $7dba: $50
	sbc h                                            ; $7dbb: $9c
	db $fc                                           ; $7dbc: $fc
	ld hl, sp-$05                                    ; $7dbd: $f8 $fb
	sbc $03                                          ; $7dbf: $de $03
	add h                                            ; $7dc1: $84
	rla                                              ; $7dc2: $17
	sub a                                            ; $7dc3: $97
	sub l                                            ; $7dc4: $95
	sub l                                            ; $7dc5: $95
	sub c                                            ; $7dc6: $91
	pop de                                           ; $7dc7: $d1
	pop bc                                           ; $7dc8: $c1
	ld h, b                                          ; $7dc9: $60
	add sp, -$18                                     ; $7dca: $e8 $e8
	ld [$eeea], a                                    ; $7dcc: $ea $ea $ee
	xor $fe                                          ; $7dcf: $ee $fe
	rst $38                                          ; $7dd1: $ff
	or b                                             ; $7dd2: $b0
	or b                                             ; $7dd3: $b0
	sub b                                            ; $7dd4: $90
	db $10                                           ; $7dd5: $10
	dec d                                            ; $7dd6: $15
	dec d                                            ; $7dd7: $15
	dec b                                            ; $7dd8: $05
	dec b                                            ; $7dd9: $05
	ld c, a                                          ; $7dda: $4f
	ld c, a                                          ; $7ddb: $4f
	ld l, a                                          ; $7ddc: $6f
	sbc $ef                                          ; $7ddd: $de $ef
	ld [hl], e                                       ; $7ddf: $73
	adc b                                            ; $7de0: $88
	sbc e                                            ; $7de1: $9b
	ld bc, $f1fe                                     ; $7de2: $01 $fe $f1
	ldh a, [$fc]                                     ; $7de5: $f0 $fc
	sbc h                                            ; $7de7: $9c
	rrca                                             ; $7de8: $0f
	cp $0f                                           ; $7de9: $fe $0f
	ld a, e                                          ; $7deb: $7b
	ldh a, [$9b]                                     ; $7dec: $f0 $9b
	rrca                                             ; $7dee: $0f
	ld hl, sp+$07                                    ; $7def: $f8 $07
	ret nz                                           ; $7df1: $c0

	db $fc                                           ; $7df2: $fc
	sbc l                                            ; $7df3: $9d
	ccf                                              ; $7df4: $3f
	ld hl, sp+$7a                                    ; $7df5: $f8 $7a
	ld d, d                                          ; $7df7: $52
	sbc e                                            ; $7df8: $9b
	dec c                                            ; $7df9: $0d
	cp $e1                                           ; $7dfa: $fe $e1
	jr @-$01                                         ; $7dfc: $18 $fd

	sbc e                                            ; $7dfe: $9b
	inc c                                            ; $7dff: $0c
	rlca                                             ; $7e00: $07
	cp $e7                                           ; $7e01: $fe $e7
	db $dd                                           ; $7e03: $dd
	rst $38                                          ; $7e04: $ff
	sub e                                            ; $7e05: $93
	ldh [c], a                                       ; $7e06: $e2
	ld e, $82                                        ; $7e07: $1e $82
	ld [bc], a                                       ; $7e09: $02
	inc bc                                           ; $7e0a: $03
	ld [bc], a                                       ; $7e0b: $02
	ld [bc], a                                       ; $7e0c: $02
	inc bc                                           ; $7e0d: $03
	ld a, l                                          ; $7e0e: $7d
	pop hl                                           ; $7e0f: $e1
	ld a, l                                          ; $7e10: $7d
	db $fd                                           ; $7e11: $fd
	db $dd                                           ; $7e12: $dd
	db $fc                                           ; $7e13: $fc
	ld a, l                                          ; $7e14: $7d
	pop af                                           ; $7e15: $f1
	sbc [hl]                                         ; $7e16: $9e
	ld a, [bc]                                       ; $7e17: $0a
	sbc $8a                                          ; $7e18: $de $8a
	sbc h                                            ; $7e1a: $9c
	adc e                                            ; $7e1b: $8b
	ld c, c                                          ; $7e1c: $49
	dec e                                            ; $7e1d: $1d
	db $db                                           ; $7e1e: $db
	dec d                                            ; $7e1f: $15
	add [hl]                                         ; $7e20: $86
	sub a                                            ; $7e21: $97
	sbc [hl]                                         ; $7e22: $9e
	sbc [hl]                                         ; $7e23: $9e
	xor a                                            ; $7e24: $af
	sbc $e0                                          ; $7e25: $de $e0
	add b                                            ; $7e27: $80
	ld b, b                                          ; $7e28: $40
	ret nz                                           ; $7e29: $c0

	sub a                                            ; $7e2a: $97
	sub e                                            ; $7e2b: $93
	cp a                                             ; $7e2c: $bf
	ldh [$c0], a                                     ; $7e2d: $e0 $c0
	ret nz                                           ; $7e2f: $c0

	add b                                            ; $7e30: $80
	add b                                            ; $7e31: $80
	ldh a, [$80]                                     ; $7e32: $f0 $80
	rst $38                                          ; $7e34: $ff
	nop                                              ; $7e35: $00
	ld a, a                                          ; $7e36: $7f
	inc e                                            ; $7e37: $1c
	inc bc                                           ; $7e38: $03
	inc bc                                           ; $7e39: $03
	ld [hl], e                                       ; $7e3a: $73
	sub l                                            ; $7e3b: $95
	sub h                                            ; $7e3c: $94
	inc bc                                           ; $7e3d: $03
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	ld a, a                                          ; $7e40: $7f
	ld a, l                                          ; $7e41: $7d
	ld sp, hl                                        ; $7e42: $f9
	db $d3                                           ; $7e43: $d3
	ld a, [de]                                       ; $7e44: $1a
	ld e, $0c                                        ; $7e45: $1e $0c
	adc [hl]                                         ; $7e47: $8e
	sbc $ff                                          ; $7e48: $de $ff
	sub [hl]                                         ; $7e4a: $96
	dec sp                                           ; $7e4b: $3b
	ld [$f6ee], a                                    ; $7e4c: $ea $ee $f6
	ld [hl], e                                       ; $7e4f: $73
	add b                                            ; $7e50: $80
	add h                                            ; $7e51: $84
	add b                                            ; $7e52: $80
	nop                                              ; $7e53: $00
	ld [hl], l                                       ; $7e54: $75
	dec [hl]                                         ; $7e55: $35
	sbc e                                            ; $7e56: $9b
	add a                                            ; $7e57: $87
	inc bc                                           ; $7e58: $03
	add e                                            ; $7e59: $83
	inc bc                                           ; $7e5a: $03
	sbc $01                                          ; $7e5b: $de $01
	ld a, e                                          ; $7e5d: $7b
	rst SubAFromDE                                          ; $7e5e: $df
	sbc [hl]                                         ; $7e5f: $9e
	ccf                                              ; $7e60: $3f
	ld l, [hl]                                       ; $7e61: $6e
	push af                                          ; $7e62: $f5
	sbc l                                            ; $7e63: $9d
	rst $38                                          ; $7e64: $ff
	ret nz                                           ; $7e65: $c0

	call c, $9eff                                    ; $7e66: $dc $ff $9e
	rra                                              ; $7e69: $1f
	ld h, [hl]                                       ; $7e6a: $66
	push hl                                          ; $7e6b: $e5
	ld a, d                                          ; $7e6c: $7a
	cp h                                             ; $7e6d: $bc
	jp c, $13ff                                      ; $7e6e: $da $ff $13

	ldh a, [$7f]                                     ; $7e71: $f0 $7f
	ld e, $7d                                        ; $7e73: $1e $7d
	add sp, -$65                                     ; $7e75: $e8 $9b
	rrca                                             ; $7e77: $0f
	dec de                                           ; $7e78: $1b
	dec a                                            ; $7e79: $3d
	ld l, $de                                        ; $7e7a: $2e $de
	rst $38                                          ; $7e7c: $ff
	sbc d                                            ; $7e7d: $9a
	db $fd                                           ; $7e7e: $fd
	ldh a, [$f8]                                     ; $7e7f: $f0 $f8
	db $ec                                           ; $7e81: $ec
	call nz, $eb7a                                   ; $7e82: $c4 $7a $eb
	ld a, a                                          ; $7e85: $7f
	ld sp, hl                                        ; $7e86: $f9
	rst SubAFromDE                                          ; $7e87: $df
	db $f4                                           ; $7e88: $f4
	sbc [hl]                                         ; $7e89: $9e
	dec c                                            ; $7e8a: $0d
	sbc $ff                                          ; $7e8b: $de $ff
	sbc [hl]                                         ; $7e8d: $9e
	rst GetHLinHL                                          ; $7e8e: $cf
	db $dd                                           ; $7e8f: $dd
	rlca                                             ; $7e90: $07
	rst SubAFromDE                                          ; $7e91: $df
	rst $38                                          ; $7e92: $ff
	rst SubAFromDE                                          ; $7e93: $df
	ccf                                              ; $7e94: $3f
	sbc h                                            ; $7e95: $9c
	rra                                              ; $7e96: $1f
	ld a, a                                          ; $7e97: $7f
	rst SubAFromDE                                          ; $7e98: $df
	ld a, b                                          ; $7e99: $78
	db $ec                                           ; $7e9a: $ec
	db $dd                                           ; $7e9b: $dd
	rst $38                                          ; $7e9c: $ff
	sbc l                                            ; $7e9d: $9d
	sbc a                                            ; $7e9e: $9f
	adc a                                            ; $7e9f: $8f
	ld a, c                                          ; $7ea0: $79

jr_03c_7ea1:
	ld [hl], l                                       ; $7ea1: $75
	sbc $e0                                          ; $7ea2: $de $e0
	sbc l                                            ; $7ea4: $9d
	ret nc                                           ; $7ea5: $d0

	call c, $8361                                    ; $7ea6: $dc $61 $83
	sbc [hl]                                         ; $7ea9: $9e
	db $fc                                           ; $7eaa: $fc
	sbc $04                                          ; $7eab: $de $04
	sbc h                                            ; $7ead: $9c
	dec b                                            ; $7eae: $05
	rlca                                             ; $7eaf: $07
	ld b, $79                                        ; $7eb0: $06 $79
	inc a                                            ; $7eb2: $3c
	db $dd                                           ; $7eb3: $dd
	ei                                               ; $7eb4: $fb
	sub a                                            ; $7eb5: $97
	cp $70                                           ; $7eb6: $fe $70
	ld [hl-], a                                      ; $7eb8: $32
	rra                                              ; $7eb9: $1f
	rrca                                             ; $7eba: $0f
	ld sp, $cee4                                     ; $7ebb: $31 $e4 $ce
	ld [hl], l                                       ; $7ebe: $75
	ld c, b                                          ; $7ebf: $48
	sub a                                            ; $7ec0: $97
	rst FarCall                                          ; $7ec1: $f7
	rst AddAOntoHL                                          ; $7ec2: $ef
	jp $0001                                         ; $7ec3: $c3 $01 $00


	dec l                                            ; $7ec6: $2d
	cpl                                              ; $7ec7: $2f
	cpl                                              ; $7ec8: $2f
	ld [hl], l                                       ; $7ec9: $75
	ld h, h                                          ; $7eca: $64
	ld a, d                                          ; $7ecb: $7a
	nop                                              ; $7ecc: $00
	ld a, e                                          ; $7ecd: $7b
	ld sp, hl                                        ; $7ece: $f9
	sbc [hl]                                         ; $7ecf: $9e
	ccf                                              ; $7ed0: $3f
	ld a, e                                          ; $7ed1: $7b
	cpl                                              ; $7ed2: $2f
	ld a, [$7353]                                    ; $7ed3: $fa $53 $73
	dec de                                           ; $7ed6: $1b
	ldh a, [$7b]                                     ; $7ed7: $f0 $7b
	adc $99                                          ; $7ed9: $ce $99
	ld bc, $0c07                                     ; $7edb: $01 $07 $0c
	inc e                                            ; $7ede: $1c

Call_03c_7edf:
	inc a                                            ; $7edf: $3c
	db $fd                                           ; $7ee0: $fd
	ld [hl], a                                       ; $7ee1: $77
	sub h                                            ; $7ee2: $94
	rst SubAFromDE                                          ; $7ee3: $df
	ld hl, sp-$65                                    ; $7ee4: $f8 $9b
	ldh a, [rSCX]                                    ; $7ee6: $f0 $43
	rst AddAOntoHL                                          ; $7ee8: $ef
	ret c                                            ; $7ee9: $d8

	ld [hl], d                                       ; $7eea: $72
	sub d                                            ; $7eeb: $92
	sbc e                                            ; $7eec: $9b
	sbc a                                            ; $7eed: $9f
	sbc h                                            ; $7eee: $9c
	ldh a, [$80]                                     ; $7eef: $f0 $80
	db $fd                                           ; $7ef1: $fd
	sbc l                                            ; $7ef2: $9d
	ld a, [hl]                                       ; $7ef3: $7e
	rrca                                             ; $7ef4: $0f
	ei                                               ; $7ef5: $fb
	ld [hl], e                                       ; $7ef6: $73
	di                                               ; $7ef7: $f3
	halt                                             ; $7ef8: $76
	ld a, e                                          ; $7ef9: $7b
	sbc l                                            ; $7efa: $9d

Call_03c_7efb:
	ret nz                                           ; $7efb: $c0

	ld d, b                                          ; $7efc: $50
	call c, Call_03c_7f40                            ; $7efd: $dc $40 $7f
	rst FarCall                                          ; $7f00: $f7
	db $db                                           ; $7f01: $db

Call_03c_7f02:
	jr nz, jr_03c_7ea1                               ; $7f02: $20 $9d

	rra                                              ; $7f04: $1f
	pop hl                                           ; $7f05: $e1
	ld l, e                                          ; $7f06: $6b
	or b                                             ; $7f07: $b0
	sbc [hl]                                         ; $7f08: $9e
	ld hl, sp-$05                                    ; $7f09: $f8 $fb
	sbc e                                            ; $7f0b: $9b
	ret nz                                           ; $7f0c: $c0

	ldh a, [$3e]                                     ; $7f0d: $f0 $3e
	rrca                                             ; $7f0f: $0f
	ld a, d                                          ; $7f10: $7a
	jp z, $d07f                                      ; $7f11: $ca $7f $d0

	sbc h                                            ; $7f14: $9c
	ldh [rAUD3LEVEL], a                              ; $7f15: $e0 $1c
	inc bc                                           ; $7f17: $03
	ld [hl], e                                       ; $7f18: $73
	ld hl, sp+$7c                                    ; $7f19: $f8 $7c
	ld a, c                                          ; $7f1b: $79
	sub d                                            ; $7f1c: $92
	nop                                              ; $7f1d: $00
	xor h                                            ; $7f1e: $ac
	ld b, b                                          ; $7f1f: $40
	jr nc, @+$21                                     ; $7f20: $30 $1f

	ld a, a                                          ; $7f22: $7f
	ld a, a                                          ; $7f23: $7f
	ccf                                              ; $7f24: $3f
	ccf                                              ; $7f25: $3f
	sbc a                                            ; $7f26: $9f
	ld b, e                                          ; $7f27: $43
	inc sp                                           ; $7f28: $33
	rra                                              ; $7f29: $1f
	scf                                              ; $7f2a: $37
	ld [hl], b                                       ; $7f2b: $70
	rst SubAFromDE                                          ; $7f2c: $df
	inc bc                                           ; $7f2d: $03
	ld a, a                                          ; $7f2e: $7f
	ld a, h                                          ; $7f2f: $7c
	db $dd                                           ; $7f30: $dd
	rst $38                                          ; $7f31: $ff
	rst SubAFromDE                                          ; $7f32: $df
	db $fd                                           ; $7f33: $fd
	ld a, a                                          ; $7f34: $7f
	ld a, l                                          ; $7f35: $7d
	ld d, e                                          ; $7f36: $53
	db $e4                                           ; $7f37: $e4
	add b                                            ; $7f38: $80
	add b                                            ; $7f39: $80
	pop bc                                           ; $7f3a: $c1
	ld a, a                                          ; $7f3b: $7f

jr_03c_7f3c:
	ld h, a                                          ; $7f3c: $67
	ld b, a                                          ; $7f3d: $47
	ld b, l                                          ; $7f3e: $45
	ld b, h                                          ; $7f3f: $44

Call_03c_7f40:
	call nz, $f7f8                                   ; $7f40: $c4 $f8 $f7
	db $d3                                           ; $7f43: $d3
	jp nz, $c0c1                                     ; $7f44: $c2 $c1 $c0

	add b                                            ; $7f47: $80
	ret z                                            ; $7f48: $c8

	xor b                                            ; $7f49: $a8
	inc de                                           ; $7f4a: $13
	rst SubAFromBC                                          ; $7f4b: $e7
	db $fc                                           ; $7f4c: $fc
	cp $fc                                           ; $7f4d: $fe $fc
	jr nc, jr_03c_7fc9                               ; $7f4f: $30 $78

	ld [hl], c                                       ; $7f51: $71
	pop de                                           ; $7f52: $d1
	ret                                              ; $7f53: $c9


	ld a, [bc]                                       ; $7f54: $0a
	db $f4                                           ; $7f55: $f4
	ld [$8018], sp                                   ; $7f56: $08 $18 $80
	db $10                                           ; $7f59: $10
	jr nz, jr_03c_7f3c                               ; $7f5a: $20 $e0

	ldh a, [c]                                       ; $7f5c: $f2
	cpl                                              ; $7f5d: $2f
	sbc a                                            ; $7f5e: $9f
	rst SubAFromDE                                          ; $7f5f: $df
	rst AddAOntoHL                                          ; $7f60: $ef
	rst SubAFromBC                                          ; $7f61: $e7
	ldh a, [rIE]                                     ; $7f62: $f0 $ff
	ld l, a                                          ; $7f64: $6f
	adc a                                            ; $7f65: $8f
	add a                                            ; $7f66: $87
	ld b, a                                          ; $7f67: $47
	ld b, e                                          ; $7f68: $43
	ld hl, $1f30                                     ; $7f69: $21 $30 $1f
	nop                                              ; $7f6c: $00
	call c, $b696                                    ; $7f6d: $dc $96 $b6
	or a                                             ; $7f70: $b7
	ld c, l                                          ; $7f71: $4d
	sbc l                                            ; $7f72: $9d
	ld sp, hl                                        ; $7f73: $f9
	ld sp, hl                                        ; $7f74: $f9
	rst AddAOntoHL                                          ; $7f75: $ef
	db $e3                                           ; $7f76: $e3
	jp $c18a                                         ; $7f77: $c3 $8a $c1


	push bc                                          ; $7f7a: $c5
	sbc c                                            ; $7f7b: $99
	pop af                                           ; $7f7c: $f1
	inc bc                                           ; $7f7d: $03
	ld b, $0e                                        ; $7f7e: $06 $0e
	dec bc                                           ; $7f80: $0b
	dec de                                           ; $7f81: $1b
	ld de, $3131                                     ; $7f82: $11 $31 $31
	ld hl, $fcfc                                     ; $7f85: $21 $fc $fc
	ld a, [$f1f2]                                    ; $7f88: $fa $f2 $f1
	pop hl                                           ; $7f8b: $e1
	ldh [$e0], a                                     ; $7f8c: $e0 $e0
	ld [hl], a                                       ; $7f8e: $77
	ld a, c                                          ; $7f8f: $79
	sbc e                                            ; $7f90: $9b
	sbc a                                            ; $7f91: $9f
	rst GetHLinHL                                          ; $7f92: $cf
	rst JumpTable                                          ; $7f93: $c7
	rst SubAFromBC                                          ; $7f94: $e7
	ld l, e                                          ; $7f95: $6b
	ld a, [hl+]                                      ; $7f96: $2a
	ld l, [hl]                                       ; $7f97: $6e
	dec hl                                           ; $7f98: $2b

Jump_03c_7f99:
	ld e, d                                          ; $7f99: $5a
	add sp, $02                                      ; $7f9a: $e8 $02
	ret nz                                           ; $7f9c: $c0

	db $fd                                           ; $7f9d: $fd
	sbc $01                                          ; $7f9e: $de $01
	reti                                             ; $7fa0: $d9


	rst $38                                          ; $7fa1: $ff
	sub b                                            ; $7fa2: $90
	inc a                                            ; $7fa3: $3c
	ld h, h                                          ; $7fa4: $64
	ld h, b                                          ; $7fa5: $60
	ret nz                                           ; $7fa6: $c0

	jp nz, $8482                                     ; $7fa7: $c2 $82 $84

	inc b                                            ; $7faa: $04
	ldh a, [$e0]                                     ; $7fab: $f0 $e0
	call nz, $84c4                                   ; $7fad: $c4 $c4 $84
	add h                                            ; $7fb0: $84
	ld [bc], a                                       ; $7fb1: $02
	ld [hl], l                                       ; $7fb2: $75
	push bc                                          ; $7fb3: $c5
	db $e4                                           ; $7fb4: $e4
	rst SubAFromDE                                          ; $7fb5: $df
	ld b, b                                          ; $7fb6: $40
	sbc [hl]                                         ; $7fb7: $9e
	ld h, b                                          ; $7fb8: $60
	jp c, $e420                                      ; $7fb9: $da $20 $e4

	halt                                             ; $7fbc: $76
	push bc                                          ; $7fbd: $c5
	db $fc                                           ; $7fbe: $fc
	sbc e                                            ; $7fbf: $9b
	ld c, $8e                                        ; $7fc0: $0e $8e
	add l                                            ; $7fc2: $85
	add a                                            ; $7fc3: $87
	sbc $83                                          ; $7fc4: $de $83
	sbc e                                            ; $7fc6: $9b
	adc a                                            ; $7fc7: $8f
	rrca                                             ; $7fc8: $0f

jr_03c_7fc9:
	ld [$dd0e], sp                                   ; $7fc9: $08 $0e $dd
	rlca                                             ; $7fcc: $07
	ld a, a                                          ; $7fcd: $7f
	add sp, $7d                                      ; $7fce: $e8 $7d
	dec [hl]                                         ; $7fd0: $35
	rst SubAFromDE                                          ; $7fd1: $df
	ldh [rPCM34], a                                  ; $7fd2: $e0 $77
	ld c, d                                          ; $7fd4: $4a
	rst SubAFromDE                                          ; $7fd5: $df
	ccf                                              ; $7fd6: $3f
	sbc $ff                                          ; $7fd7: $de $ff
	ld l, h                                          ; $7fd9: $6c
	rst SubAFromBC                                          ; $7fda: $e7
	ld d, a                                          ; $7fdb: $57
	ld h, d                                          ; $7fdc: $62
	adc h                                            ; $7fdd: $8c
	db $fc                                           ; $7fde: $fc
	ld l, l                                          ; $7fdf: $6d
	rrca                                             ; $7fe0: $0f
	rrca                                             ; $7fe1: $0f
	ld b, c                                          ; $7fe2: $41
	ld h, [hl]                                       ; $7fe3: $66
	and d                                            ; $7fe4: $a2
	and d                                            ; $7fe5: $a2
	ccf                                              ; $7fe6: $3f
	sbc [hl]                                         ; $7fe7: $9e
	sbc a                                            ; $7fe8: $9f
	rst SubAFromDE                                          ; $7fe9: $df
	rst SubAFromDE                                          ; $7fea: $df
	ret nc                                           ; $7feb: $d0

	ld d, b                                          ; $7fec: $50
	ld d, b                                          ; $7fed: $50
	ld [$1f37], sp                                   ; $7fee: $08 $37 $1f
	ld a, b                                          ; $7ff1: $78
	ld a, h                                          ; $7ff2: $7c
	sbc e                                            ; $7ff3: $9b
	rst SubAFromDE                                          ; $7ff4: $df
	ccf                                              ; $7ff5: $3f
	rst SubAFromBC                                          ; $7ff6: $e7
	ld [$f97b], sp                                   ; $7ff7: $08 $7b $f9
	ld a, a                                          ; $7ffa: $7f
	inc bc                                           ; $7ffb: $03
	adc b                                            ; $7ffc: $88
	rra                                              ; $7ffd: $1f
	db $01                                           ; $7ffe: $01
	rst AddAOntoHL                                          ; $7fff: $ef
