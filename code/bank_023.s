; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

	rst SubAFromDE                                          ; $4000: $df
	add [hl]                                         ; $4001: $86
	sbc l                                            ; $4002: $9d
	xor d                                            ; $4003: $aa
	ld d, l                                          ; $4004: $55
	ld l, a                                          ; $4005: $6f
	cp $f9                                           ; $4006: $fe $f9
	inc bc                                           ; $4008: $03
	ldh a, [$03]                                     ; $4009: $f0 $03
	ldh a, [$73]                                     ; $400b: $f0 $73
	cp $9e                                           ; $400d: $fe $9e
	ld d, a                                          ; $400f: $57
	ld a, [$019e]                                    ; $4010: $fa $9e $01
	ld [hl], a                                       ; $4013: $77
	db $f4                                           ; $4014: $f4
	sbc e                                            ; $4015: $9b
	cp h                                             ; $4016: $bc
	ld d, b                                          ; $4017: $50
	ldh [$80], a                                     ; $4018: $e0 $80
	cp $90                                           ; $401a: $fe $90
	inc bc                                           ; $401c: $03
	rrca                                             ; $401d: $0f
	ccf                                              ; $401e: $3f
	ld a, a                                          ; $401f: $7f
	rst $38                                          ; $4020: $ff
	cp b                                             ; $4021: $b8
	ld h, b                                          ; $4022: $60
	add b                                            ; $4023: $80
	ld bc, $0f03                                     ; $4024: $01 $03 $0f
	inc a                                            ; $4027: $3c
	pop af                                           ; $4028: $f1
	rra                                              ; $4029: $1f
	ld a, a                                          ; $402a: $7f
	call c, $98ff                                    ; $402b: $dc $ff $98
	cp $0f                                           ; $402e: $fe $0f
	inc e                                            ; $4030: $1c
	ld a, c                                          ; $4031: $79
	rst SubAFromBC                                          ; $4032: $e7
	adc a                                            ; $4033: $8f
	ccf                                              ; $4034: $3f
	ld [hl], e                                       ; $4035: $73
	push af                                          ; $4036: $f5
	sbc d                                            ; $4037: $9a
	ld hl, sp-$10                                    ; $4038: $f8 $f0
	ret nz                                           ; $403a: $c0

	nop                                              ; $403b: $00
	nop                                              ; $403c: $00
	ld a, e                                          ; $403d: $7b
	db $dd                                           ; $403e: $dd
	call c, $9eff                                    ; $403f: $dc $ff $9e
	ret nz                                           ; $4042: $c0

	ld [hl], a                                       ; $4043: $77
	adc $fe                                          ; $4044: $ce $fe
	sbc [hl]                                         ; $4046: $9e
	add b                                            ; $4047: $80
	db $db                                           ; $4048: $db
	rst $38                                          ; $4049: $ff
	sbc l                                            ; $404a: $9d
	call $fb7f                                       ; $404b: $cd $7f $fb
	adc [hl]                                         ; $404e: $8e
	ld [hl-], a                                      ; $404f: $32
	rra                                              ; $4050: $1f
	rrca                                             ; $4051: $0f
	jp $f0e1                                         ; $4052: $c3 $e1 $f0


	ld hl, sp-$50                                    ; $4055: $f8 $b0
	nop                                              ; $4057: $00
	ldh [$f0], a                                     ; $4058: $e0 $f0
	inc a                                            ; $405a: $3c
	ld e, $0f                                        ; $405b: $1e $0f
	rlca                                             ; $405d: $07
	ld c, a                                          ; $405e: $4f
	rst $38                                          ; $405f: $ff
	db $db                                           ; $4060: $db
	ld hl, sp-$63                                    ; $4061: $f8 $9d
	ld [$fb03], sp                                   ; $4063: $08 $03 $fb
	ld a, a                                          ; $4066: $7f
	and $9c                                          ; $4067: $e6 $9c
	inc e                                            ; $4069: $1c
	ld e, $1e                                        ; $406a: $1e $1e
	call c, $9e1f                                    ; $406c: $dc $1f $9e
	ld bc, $8ffa                                     ; $406f: $01 $fa $8f
	jp nz, Jump_023_6142                             ; $4072: $c2 $42 $61

	ld hl, $1810                                     ; $4075: $21 $10 $18
	ld [$fe0c], sp                                   ; $4078: $08 $0c $fe

Jump_023_407b:
	rst $38                                          ; $407b: $ff
	rst $38                                          ; $407c: $ff
	ld a, a                                          ; $407d: $7f
	ccf                                              ; $407e: $3f
	ccf                                              ; $407f: $3f

Call_023_4080:
	rra                                              ; $4080: $1f
	rra                                              ; $4081: $1f
	ld [hl], e                                       ; $4082: $73
	ld h, d                                          ; $4083: $62
	sbc h                                            ; $4084: $9c
	sub l                                            ; $4085: $95
	ld l, d                                          ; $4086: $6a
	dec [hl]                                         ; $4087: $35
	ld [hl], a                                       ; $4088: $77
	and l                                            ; $4089: $a5
	sbc e                                            ; $408a: $9b
	add b                                            ; $408b: $80
	ret nz                                           ; $408c: $c0

	ret nz                                           ; $408d: $c0

	ldh [$03], a                                     ; $408e: $e0 $03
	jr nc, @+$05                                     ; $4090: $30 $03

	ldh a, [$03]                                     ; $4092: $f0 $03
	ldh a, [$03]                                     ; $4094: $f0 $03
	ldh a, [$9b]                                     ; $4096: $f0 $9b
	xor c                                            ; $4098: $a9
	ld d, [hl]                                       ; $4099: $56
	cp b                                             ; $409a: $b8
	ldh [$fd], a                                     ; $409b: $e0 $fd
	ld a, [hl]                                       ; $409d: $7e
	add sp, $7e                                      ; $409e: $e8 $7e
	ld [$ae9d], a                                    ; $40a0: $ea $9d $ae
	ld c, b                                          ; $40a3: $48
	ld a, d                                          ; $40a4: $7a
	ld a, [$039a]                                    ; $40a5: $fa $9a $03

jr_023_40a8:
	rlca                                             ; $40a8: $07
	ld e, $07                                        ; $40a9: $1e $07
	rra                                              ; $40ab: $1f
	ld [hl], d                                       ; $40ac: $72
	db $eb                                           ; $40ad: $eb
	sbc b                                            ; $40ae: $98
	rst $38                                          ; $40af: $ff
	ld bc, $1e07                                     ; $40b0: $01 $07 $1e
	jr c, jr_023_40a8                                ; $40b3: $38 $f3

	rst JumpTable                                          ; $40b5: $c7
	ld l, [hl]                                       ; $40b6: $6e
	jp nc, $fc99                                     ; $40b7: $d2 $99 $fc

	ld hl, sp-$20                                    ; $40ba: $f8 $e0
	add b                                            ; $40bc: $80
	rst JumpTable                                          ; $40bd: $c7
	sbc a                                            ; $40be: $9f
	ld [hl], e                                       ; $40bf: $73
	add sp, -$64                                     ; $40c0: $e8 $9c
	ei                                               ; $40c2: $fb
	ld hl, sp-$20                                    ; $40c3: $f8 $e0
	ld a, d                                          ; $40c5: $7a
	db $d3                                           ; $40c6: $d3
	sbc h                                            ; $40c7: $9c
	nop                                              ; $40c8: $00
	rlca                                             ; $40c9: $07
	rra                                              ; $40ca: $1f
	ld l, d                                          ; $40cb: $6a
	jp nc, $0f9e                                     ; $40cc: $d2 $9e $0f

	db $fc                                           ; $40cf: $fc
	rst SubAFromDE                                          ; $40d0: $df
	rst $38                                          ; $40d1: $ff
	adc l                                            ; $40d2: $8d
	ldh a, [$fe]                                     ; $40d3: $f0 $fe
	jp nz, $f3f8                                     ; $40d5: $c2 $f8 $f3

	rst AddAOntoHL                                          ; $40d8: $ef
	rst SubAFromDE                                          ; $40d9: $df
	ccf                                              ; $40da: $3f
	rst FarCall                                          ; $40db: $f7
	ld bc, $073d                                     ; $40dc: $01 $3d $07
	inc c                                            ; $40df: $0c
	db $10                                           ; $40e0: $10
	ldh [$f8], a                                     ; $40e1: $e0 $f8
	ld c, $1a                                        ; $40e3: $0e $1a
	ld l, a                                          ; $40e5: $6f
	cp c                                             ; $40e6: $b9
	sbc l                                            ; $40e7: $9d
	rst $38                                          ; $40e8: $ff
	push hl                                          ; $40e9: $e5
	ld [hl], a                                       ; $40ea: $77
	pop de                                           ; $40eb: $d1
	cp $9d                                           ; $40ec: $fe $9d
	inc b                                            ; $40ee: $04
	inc h                                            ; $40ef: $24
	db $db                                           ; $40f0: $db
	rst $38                                          ; $40f1: $ff
	sbc l                                            ; $40f2: $9d
	ei                                               ; $40f3: $fb
	db $db                                           ; $40f4: $db
	ei                                               ; $40f5: $fb
	sbc e                                            ; $40f6: $9b
	ld [bc], a                                       ; $40f7: $02
	add e                                            ; $40f8: $83
	jp $dcf9                                         ; $40f9: $c3 $f9 $dc


	ld hl, sp-$63                                    ; $40fc: $f8 $9d
	ld a, b                                          ; $40fe: $78
	jr c, @-$02                                      ; $40ff: $38 $fc

	sub h                                            ; $4101: $94
	ld l, a                                          ; $4102: $6f
	rst SubAFromBC                                          ; $4103: $e7
	db $e3                                           ; $4104: $e3
	ldh [$60], a                                     ; $4105: $e0 $60
	jr nz, jr_023_4129                               ; $4107: $20 $20

	nop                                              ; $4109: $00
	db $10                                           ; $410a: $10
	jr jr_023_4129                                   ; $410b: $18 $1c

	call c, $821f                                    ; $410d: $dc $1f $82
	inc b                                            ; $4110: $04
	ld [bc], a                                       ; $4111: $02
	ld [bc], a                                       ; $4112: $02
	ld [hl], c                                       ; $4113: $71
	ld [hl], c                                       ; $4114: $71
	db $10                                           ; $4115: $10
	jr @+$12                                         ; $4116: $18 $10

	rrca                                             ; $4118: $0f
	rlca                                             ; $4119: $07
	rlca                                             ; $411a: $07
	dec bc                                           ; $411b: $0b
	dec bc                                           ; $411c: $0b
	dec c                                            ; $411d: $0d
	dec b                                            ; $411e: $05
	ld c, $2a                                        ; $411f: $0e $2a
	dec d                                            ; $4121: $15
	ld [de], a                                       ; $4122: $12
	dec c                                            ; $4123: $0d
	add [hl]                                         ; $4124: $86
	add l                                            ; $4125: $85
	jp nz, $f043                                     ; $4126: $c2 $43 $f0

jr_023_4129:
	ldh a, [$f8]                                     ; $4129: $f0 $f8
	ld hl, sp-$04                                    ; $412b: $f8 $fc
	sbc $fe                                          ; $412d: $de $fe
	inc bc                                           ; $412f: $03
	jr nz, @+$05                                     ; $4130: $20 $03

	ldh a, [$03]                                     ; $4132: $f0 $03
	ldh a, [$79]                                     ; $4134: $f0 $79
	cp [hl]                                          ; $4136: $be
	sbc l                                            ; $4137: $9d
	xor d                                            ; $4138: $aa
	ld l, h                                          ; $4139: $6c
	ld l, l                                          ; $413a: $6d
	or d                                             ; $413b: $b2
	ld a, a                                          ; $413c: $7f
	db $10                                           ; $413d: $10
	sbc e                                            ; $413e: $9b
	xor d                                            ; $413f: $aa
	ld d, e                                          ; $4140: $53
	cp h                                             ; $4141: $bc
	ld d, b                                          ; $4142: $50
	ld a, c                                          ; $4143: $79
	cp l                                             ; $4144: $bd
	sbc e                                            ; $4145: $9b
	rlca                                             ; $4146: $07
	ld bc, $0f07                                     ; $4147: $01 $07 $0f
	ld [hl], e                                       ; $414a: $73
	ld h, $71                                        ; $414b: $26 $71
	or d                                             ; $414d: $b2
	sbc h                                            ; $414e: $9c
	ld a, c                                          ; $414f: $79
	db $e3                                           ; $4150: $e3
	add a                                            ; $4151: $87
	ld l, l                                          ; $4152: $6d
	or d                                             ; $4153: $b2
	ld a, [hl]                                       ; $4154: $7e
	sbc $9c                                          ; $4155: $de $9c
	ld a, b                                          ; $4157: $78
	db $e3                                           ; $4158: $e3
	rst GetHLinHL                                          ; $4159: $cf
	ld l, d                                          ; $415a: $6a
	db $d3                                           ; $415b: $d3
	sbc [hl]                                         ; $415c: $9e
	ldh a, [$71]                                     ; $415d: $f0 $71
	adc e                                            ; $415f: $8b
	ld a, a                                          ; $4160: $7f
	rla                                              ; $4161: $17
	adc c                                            ; $4162: $89
	db $fc                                           ; $4163: $fc
	rst SubAFromBC                                          ; $4164: $e7
	ei                                               ; $4165: $fb
	db $ed                                           ; $4166: $ed
	di                                               ; $4167: $f3
	add $1e                                          ; $4168: $c6 $1e
	dec c                                            ; $416a: $0d
	ld b, $7a                                        ; $416b: $06 $7a
	rst $38                                          ; $416d: $ff
	rra                                              ; $416e: $1f
	ccf                                              ; $416f: $3f
	db $fc                                           ; $4170: $fc
	db $e4                                           ; $4171: $e4
	ret z                                            ; $4172: $c8

	sub c                                            ; $4173: $91
	sbc a                                            ; $4174: $9f
	cp h                                             ; $4175: $bc
	ldh [hDisp0_SCY], a                                     ; $4176: $e0 $83
	ld c, $79                                        ; $4178: $0e $79
	sbc b                                            ; $417a: $98
	sbc h                                            ; $417b: $9c
	cp $f0                                           ; $417c: $fe $f0
	ret nz                                           ; $417e: $c0

	ld a, e                                          ; $417f: $7b
	xor a                                            ; $4180: $af
	sbc b                                            ; $4181: $98
	ld h, b                                          ; $4182: $60
	ld hl, sp-$01                                    ; $4183: $f8 $ff
	nop                                              ; $4185: $00
	ld a, a                                          ; $4186: $7f
	ret nz                                           ; $4187: $c0

	inc bc                                           ; $4188: $03
	sbc $ff                                          ; $4189: $de $ff
	sbc l                                            ; $418b: $9d
	rlca                                             ; $418c: $07
	nop                                              ; $418d: $00
	ld a, e                                          ; $418e: $7b
	xor [hl]                                         ; $418f: $ae
	sub [hl]                                         ; $4190: $96
	sbc l                                            ; $4191: $9d
	ld a, b                                          ; $4192: $78
	rlca                                             ; $4193: $07
	ret nz                                           ; $4194: $c0

	ei                                               ; $4195: $fb
	cp $0f                                           ; $4196: $fe $0f
	inc bc                                           ; $4198: $03
	db $e3                                           ; $4199: $e3
	sbc $ff                                          ; $419a: $de $ff
	sbc [hl]                                         ; $419c: $9e
	inc a                                            ; $419d: $3c
	db $dd                                           ; $419e: $dd
	rst $38                                          ; $419f: $ff
	ld a, l                                          ; $41a0: $7d
	jp z, $df92                                      ; $41a1: $ca $92 $df

	cp a                                             ; $41a4: $bf
	rst SubAFromBC                                          ; $41a5: $e7
	dec sp                                           ; $41a6: $3b
	call $c080                                       ; $41a7: $cd $80 $c0
	ldh [$f0], a                                     ; $41aa: $e0 $f0
	ld a, b                                          ; $41ac: $78
	inc e                                            ; $41ad: $1c
	add $f3                                          ; $41ae: $c6 $f3
	db $db                                           ; $41b0: $db
	rst $38                                          ; $41b1: $ff
	sbc l                                            ; $41b2: $9d
	cp $f9                                           ; $41b3: $fe $f9
	ld l, c                                          ; $41b5: $69
	ld hl, $0683                                     ; $41b6: $21 $83 $06
	ld hl, sp-$05                                    ; $41b9: $f8 $fb
	di                                               ; $41bb: $f3
	db $e3                                           ; $41bc: $e3
	res 3, d                                         ; $41bd: $cb $9a
	ld a, [$00f2]                                    ; $41bf: $fa $f2 $00
	nop                                              ; $41c2: $00
	ld [$3018], sp                                   ; $41c3: $08 $18 $30
	ld h, b                                          ; $41c6: $60
	nop                                              ; $41c7: $00
	ld [$6120], sp                                   ; $41c8: $08 $20 $61
	rst AddAOntoHL                                          ; $41cb: $ef
	sbc a                                            ; $41cc: $9f
	rra                                              ; $41cd: $1f
	rra                                              ; $41ce: $1f
	inc e                                            ; $41cf: $1c
	db $10                                           ; $41d0: $10
	rra                                              ; $41d1: $1f
	ld e, $10                                        ; $41d2: $1e $10
	ld [hl], d                                       ; $41d4: $72
	ld l, $95                                        ; $41d5: $2e $95
	ld [hl], b                                       ; $41d7: $70
	inc bc                                           ; $41d8: $03
	rrca                                             ; $41d9: $0f
	inc c                                            ; $41da: $0c
	nop                                              ; $41db: $00
	nop                                              ; $41dc: $00
	ld [hl], d                                       ; $41dd: $72
	ld a, [hl]                                       ; $41de: $7e
	ld c, $0c                                        ; $41df: $0e $0c
	ld a, e                                          ; $41e1: $7b
	di                                               ; $41e2: $f3
	rst SubAFromDE                                          ; $41e3: $df
	inc c                                            ; $41e4: $0c
	sbc h                                            ; $41e5: $9c
	nop                                              ; $41e6: $00
	ld hl, $7931                                     ; $41e7: $21 $31 $79
	ld [hl], d                                       ; $41ea: $72
	adc h                                            ; $41eb: $8c
	ld c, h                                          ; $41ec: $4c

jr_023_41ed:
	db $e4                                           ; $41ed: $e4
	ldh a, [c]                                       ; $41ee: $f2
	ld a, a                                          ; $41ef: $7f
	ld a, a                                          ; $41f0: $7f
	cp a                                             ; $41f1: $bf
	cp a                                             ; $41f2: $bf
	sbc a                                            ; $41f3: $9f
	rra                                              ; $41f4: $1f
	rrca                                             ; $41f5: $0f
	rlca                                             ; $41f6: $07
	xor d                                            ; $41f7: $aa
	ld d, l                                          ; $41f8: $55
	ld [$6a95], a                                    ; $41f9: $ea $95 $6a
	ld d, l                                          ; $41fc: $55
	ld a, [hl-]                                      ; $41fd: $3a
	dec d                                            ; $41fe: $15
	ld l, l                                          ; $41ff: $6d
	ld [hl], d                                       ; $4200: $72
	ld a, a                                          ; $4201: $7f
	sbc h                                            ; $4202: $9c
	ld [bc], a                                       ; $4203: $02
	ldh a, [rAUD1LOW]                                ; $4204: $f0 $13
	ldh a, [$7e]                                     ; $4206: $f0 $7e
	di                                               ; $4208: $f3
	ld a, a                                          ; $4209: $7f
	or $9b                                           ; $420a: $f6 $9b
	xor l                                            ; $420c: $ad
	ld d, [hl]                                       ; $420d: $56
	sbc b                                            ; $420e: $98
	and b                                            ; $420f: $a0
	halt                                             ; $4210: $76
	inc de                                           ; $4211: $13
	ld [hl], b                                       ; $4212: $70
	sub c                                            ; $4213: $91
	sbc l                                            ; $4214: $9d
	rst $38                                          ; $4215: $ff
	or b                                             ; $4216: $b0
	ld [hl], c                                       ; $4217: $71
	or d                                             ; $4218: $b2
	sbc l                                            ; $4219: $9d
	ld a, b                                          ; $421a: $78
	pop af                                           ; $421b: $f1
	ld l, b                                          ; $421c: $68
	xor c                                            ; $421d: $a9
	sub [hl]                                         ; $421e: $96
	cp $1e                                           ; $421f: $fe $1e
	inc a                                            ; $4221: $3c
	ldh a, [$c6]                                     ; $4222: $f0 $c6
	adc h                                            ; $4224: $8c
	dec a                                            ; $4225: $3d
	ld sp, hl                                        ; $4226: $f9
	ei                                               ; $4227: $fb
	sbc $ff                                          ; $4228: $de $ff
	sbc b                                            ; $422a: $98
	ld sp, hl                                        ; $422b: $f9
	di                                               ; $422c: $f3
	jp nz, $0406                                     ; $422d: $c2 $06 $04

	scf                                              ; $4230: $37
	ld h, a                                          ; $4231: $67
	ld l, l                                          ; $4232: $6d
	xor a                                            ; $4233: $af
	sbc h                                            ; $4234: $9c
	ret z                                            ; $4235: $c8

	sbc b                                            ; $4236: $98
	ld h, b                                          ; $4237: $60
	ld [hl], c                                       ; $4238: $71
	sbc $7f                                          ; $4239: $de $7f
	sbc $80                                          ; $423b: $de $80
	ei                                               ; $423d: $fb
	db $fd                                           ; $423e: $fd
	ld a, [$f3fd]                                    ; $423f: $fa $fd $f3
	di                                               ; $4242: $f3
	ld bc, $0603                                     ; $4243: $01 $03 $06
	ld b, $0d                                        ; $4246: $06 $0d
	dec bc                                           ; $4248: $0b
	dec de                                           ; $4249: $1b
	rla                                              ; $424a: $17
	jr jr_023_41ed                                   ; $424b: $18 $a0

	ld b, c                                          ; $424d: $41
	add c                                            ; $424e: $81
	add [hl]                                         ; $424f: $86
	ld [$2190], sp                                   ; $4250: $08 $90 $21
	ld hl, sp+$70                                    ; $4253: $f8 $70
	ldh [$c3], a                                     ; $4255: $e0 $c3
	add a                                            ; $4257: $87
	adc a                                            ; $4258: $8f
	rra                                              ; $4259: $1f
	ld a, $38                                        ; $425a: $3e $38
	sbc b                                            ; $425c: $98
	ld h, c                                          ; $425d: $61
	add b                                            ; $425e: $80
	ld b, $11                                        ; $425f: $06 $11
	ld a, [bc]                                       ; $4261: $0a
	push bc                                          ; $4262: $c5
	cp d                                             ; $4263: $ba
	ld [hl], d                                       ; $4264: $72

jr_023_4265:
	sbc e                                            ; $4265: $9b
	add h                                            ; $4266: $84
	db $fd                                           ; $4267: $fd
	ld a, [hl]                                       ; $4268: $7e
	ld h, a                                          ; $4269: $67
	db $10                                           ; $426a: $10
	adc h                                            ; $426b: $8c
	ld l, e                                          ; $426c: $6b
	sbc $a5                                          ; $426d: $de $a5
	ld e, d                                          ; $426f: $5a
	dec [hl]                                         ; $4270: $35
	jp z, rIE                                      ; $4271: $ca $ff $ff

	rst FarCall                                          ; $4274: $f7
	add hl, sp                                       ; $4275: $39
	sbc $e7                                          ; $4276: $de $e7
	ei                                               ; $4278: $fb
	dec a                                            ; $4279: $3d
	pop hl                                           ; $427a: $e1
	jr jr_023_4281                                   ; $427b: $18 $04

	jp nz, $d021                                     ; $427d: $c2 $21 $d0

	ld l, b                                          ; $4280: $68

jr_023_4281:
	or h                                             ; $4281: $b4
	call c, $93ff                                    ; $4282: $dc $ff $93
	ccf                                              ; $4285: $3f
	sbc a                                            ; $4286: $9f
	rst GetHLinHL                                          ; $4287: $cf
	ldh a, [c]                                       ; $4288: $f2
	db $fc                                           ; $4289: $fc
	ld b, a                                          ; $428a: $47
	jr nz, jr_023_42a5                               ; $428b: $20 $18

	adc [hl]                                         ; $428d: $8e
	ld c, a                                          ; $428e: $4f
	daa                                              ; $428f: $27
	db $fd                                           ; $4290: $fd
	reti                                             ; $4291: $d9


	rst $38                                          ; $4292: $ff
	ld a, d                                          ; $4293: $7a
	or b                                             ; $4294: $b0
	sbc e                                            ; $4295: $9b
	ccf                                              ; $4296: $3f
	rrca                                             ; $4297: $0f
	add e                                            ; $4298: $83
	pop hl                                           ; $4299: $e1
	halt                                             ; $429a: $76
	or b                                             ; $429b: $b0
	ld a, c                                          ; $429c: $79
	cp a                                             ; $429d: $bf
	ld a, l                                          ; $429e: $7d
	ld c, a                                          ; $429f: $4f
	ld a, [hl]                                       ; $42a0: $7e
	ld e, c                                          ; $42a1: $59
	sbc h                                            ; $42a2: $9c
	add sp, -$28                                     ; $42a3: $e8 $d8

jr_023_42a5:
	ret c                                            ; $42a5: $d8

	ld a, b                                          ; $42a6: $78
	ld a, $7e                                        ; $42a7: $3e $7e
	pop bc                                           ; $42a9: $c1
	sbc [hl]                                         ; $42aa: $9e
	db $10                                           ; $42ab: $10
	ld a, c                                          ; $42ac: $79
	adc c                                            ; $42ad: $89
	sub h                                            ; $42ae: $94
	nop                                              ; $42af: $00
	rrca                                             ; $42b0: $0f
	ld de, $1f18                                     ; $42b1: $11 $18 $1f
	dec d                                            ; $42b4: $15
	rlca                                             ; $42b5: $07
	rlca                                             ; $42b6: $07
	nop                                              ; $42b7: $00
	db $10                                           ; $42b8: $10
	ld b, b                                          ; $42b9: $40
	ei                                               ; $42ba: $fb
	sbc b                                            ; $42bb: $98
	ld c, $0f                                        ; $42bc: $0e $0f
	inc bc                                           ; $42be: $03
	rlca                                             ; $42bf: $07
	rrca                                             ; $42c0: $0f
	rrca                                             ; $42c1: $0f
	ld c, $f8                                        ; $42c2: $0e $f8
	sbc h                                            ; $42c4: $9c
	di                                               ; $42c5: $f3
	ld sp, hl                                        ; $42c6: $f9
	add c                                            ; $42c7: $81
	halt                                             ; $42c8: $76
	jr z, jr_023_4265                                ; $42c9: $28 $9a

	ld [$0307], sp                                   ; $42cb: $08 $07 $03
	inc bc                                           ; $42ce: $03
	ld bc, $7dfd                                     ; $42cf: $01 $fd $7d
	ld [hl], d                                       ; $42d2: $72
	sbc c                                            ; $42d3: $99
	adc d                                            ; $42d4: $8a
	add l                                            ; $42d5: $85
	ld b, h                                          ; $42d6: $44
	ld [hl+], a                                      ; $42d7: $22
	ld hl, $7911                                     ; $42d8: $21 $11 $79
	ld [hl], d                                       ; $42db: $72
	ld a, e                                          ; $42dc: $7b
	or d                                             ; $42dd: $b2
	rst SubAFromDE                                          ; $42de: $df
	ld a, a                                          ; $42df: $7f
	ld c, d                                          ; $42e0: $4a
	ldh [$9e], a                                     ; $42e1: $e0 $9e
	add b                                            ; $42e3: $80
	ld [bc], a                                       ; $42e4: $02
	ret nz                                           ; $42e5: $c0

	sbc b                                            ; $42e6: $98
	ld d, h                                          ; $42e7: $54
	xor b                                            ; $42e8: $a8
	ld e, b                                          ; $42e9: $58
	xor b                                            ; $42ea: $a8
	ld e, b                                          ; $42eb: $58
	cp b                                             ; $42ec: $b8
	ld e, b                                          ; $42ed: $58
	ld a, e                                          ; $42ee: $7b
	sbc e                                            ; $42ef: $9b
	sbc $0f                                          ; $42f0: $de $0f
	rst SubAFromDE                                          ; $42f2: $df
	rra                                              ; $42f3: $1f
	ld a, [hl]                                       ; $42f4: $7e
	jp z, $1e99                                      ; $42f5: $ca $99 $1e

	jr jr_023_431d                                   ; $42f8: $18 $23

	daa                                              ; $42fa: $27
	daa                                              ; $42fb: $27
	cpl                                              ; $42fc: $2f
	ld l, h                                          ; $42fd: $6c
	sub b                                            ; $42fe: $90
	sub c                                            ; $42ff: $91
	ld hl, sp-$10                                    ; $4300: $f8 $f0
	rst JumpTable                                          ; $4302: $c7
	rrca                                             ; $4303: $0f
	cpl                                              ; $4304: $2f
	rst AddAOntoHL                                          ; $4305: $ef
	rst $38                                          ; $4306: $ff
	rst FarCall                                          ; $4307: $f7
	rst SubAFromBC                                          ; $4308: $e7
	db $e3                                           ; $4309: $e3
	ld hl, sp-$10                                    ; $430a: $f8 $f0
	ret nc                                           ; $430c: $d0

	db $10                                           ; $430d: $10
	ld a, d                                          ; $430e: $7a
	dec e                                            ; $430f: $1d
	adc [hl]                                         ; $4310: $8e
	inc e                                            ; $4311: $1c
	rst $38                                          ; $4312: $ff
	db $e3                                           ; $4313: $e3
	rst $38                                          ; $4314: $ff
	rst SubAFromDE                                          ; $4315: $df
	rst SubAFromDE                                          ; $4316: $df
	adc a                                            ; $4317: $8f
	rra                                              ; $4318: $1f
	ccf                                              ; $4319: $3f
	nop                                              ; $431a: $00
	inc e                                            ; $431b: $1c
	nop                                              ; $431c: $00

jr_023_431d:
	jr nz, @+$22                                     ; $431d: $20 $20

	ld [hl], b                                       ; $431f: $70
	ldh [$c0], a                                     ; $4320: $e0 $c0
	reti                                             ; $4322: $d9


	rst $38                                          ; $4323: $ff
	ld sp, hl                                        ; $4324: $f9
	sbc d                                            ; $4325: $9a
	and $f7                                          ; $4326: $e6 $f7
	xor $e6                                          ; $4328: $ee $e6
	ld a, [$ebde]                                    ; $432a: $fa $de $eb
	add b                                            ; $432d: $80
	scf                                              ; $432e: $37
	ld h, $26                                        ; $432f: $26 $26
	ld l, $2e                                        ; $4331: $2e $2e
	ld a, $3f                                        ; $4333: $3e $3f
	ccf                                              ; $4335: $3f
	ld hl, $4745                                     ; $4336: $21 $45 $47
	xor e                                            ; $4339: $ab
	adc e                                            ; $433a: $8b

jr_023_433b:
	jp c, $cb49                                      ; $433b: $da $49 $cb

	ld a, $7a                                        ; $433e: $3e $7a
	ld a, d                                          ; $4340: $7a
	jp c, $83da                                      ; $4341: $da $da $83

	add e                                            ; $4344: $83
	ld b, c                                          ; $4345: $41
	or l                                             ; $4346: $b5
	ld d, h                                          ; $4347: $54
	ld e, d                                          ; $4348: $5a
	ld l, c                                          ; $4349: $69
	db $ec                                           ; $434a: $ec
	or [hl]                                          ; $434b: $b6
	di                                               ; $434c: $f3
	add b                                            ; $434d: $80
	ld e, c                                          ; $434e: $59
	ld h, e                                          ; $434f: $63
	or e                                             ; $4350: $b3
	or c                                             ; $4351: $b1
	ret c                                            ; $4352: $d8

	ld e, b                                          ; $4353: $58
	ld l, h                                          ; $4354: $6c
	ld l, $b7                                        ; $4355: $2e $b7
	ld h, l                                          ; $4357: $65
	or d                                             ; $4358: $b2
	ld h, c                                          ; $4359: $61
	inc a                                            ; $435a: $3c
	sbc a                                            ; $435b: $9f
	ld c, a                                          ; $435c: $4f
	rlca                                             ; $435d: $07
	or e                                             ; $435e: $b3
	sbc [hl]                                         ; $435f: $9e
	rst GetHLinHL                                          ; $4360: $cf
	rst $38                                          ; $4361: $ff
	rst $38                                          ; $4362: $ff
	ld [hl], e                                       ; $4363: $73
	jr c, jr_023_4382                                ; $4364: $38 $1c

	adc $57                                          ; $4366: $ce $57
	inc sp                                           ; $4368: $33
	rra                                              ; $4369: $1f
	rst GetHLinHL                                          ; $436a: $cf
	rst $38                                          ; $436b: $ff
	ei                                               ; $436c: $fb
	adc l                                            ; $436d: $8d
	push af                                          ; $436e: $f5
	rst AddAOntoHL                                          ; $436f: $ef
	rst AddAOntoHL                                          ; $4370: $ef
	cp $ff                                           ; $4371: $fe $ff
	ld hl, sp-$04                                    ; $4373: $f8 $fc

Jump_023_4375:
	rlca                                             ; $4375: $07
	ld c, $18                                        ; $4376: $0e $18
	daa                                              ; $4378: $27
	sub l                                            ; $4379: $95
	sbc $ff                                          ; $437a: $de $ff
	rst FarCall                                          ; $437c: $f7
	ld a, l                                          ; $437d: $7d
	rst $38                                          ; $437e: $ff
	add $76                                          ; $437f: $c6 $76
	rst JumpTable                                          ; $4381: $c7

jr_023_4382:
	sub b                                            ; $4382: $90
	db $fc                                           ; $4383: $fc
	sub [hl]                                         ; $4384: $96
	ld [bc], a                                       ; $4385: $02
	ccf                                              ; $4386: $3f
	or h                                             ; $4387: $b4
	jp z, $3265                                      ; $4388: $ca $65 $32

	sbc c                                            ; $438b: $99
	adc h                                            ; $438c: $8c
	add $e3                                          ; $438d: $c6 $e3
	ei                                               ; $438f: $fb
	db $fd                                           ; $4390: $fd
	cp $76                                           ; $4391: $fe $76
	or e                                             ; $4393: $b3
	sub [hl]                                         ; $4394: $96
	ld a, a                                          ; $4395: $7f
	ld hl, sp+$78                                    ; $4396: $f8 $78
	ld a, [hl-]                                      ; $4398: $3a
	ret c                                            ; $4399: $d8

	ld l, b                                          ; $439a: $68
	ldh a, [$a9]                                     ; $439b: $f0 $a9
	ld d, c                                          ; $439d: $51
	ld a, d                                          ; $439e: $7a
	or b                                             ; $439f: $b0
	sub l                                            ; $43a0: $95
	jr nc, jr_023_433b                               ; $43a1: $30 $98

	ret z                                            ; $43a3: $c8

	ld [hl], b                                       ; $43a4: $70
	cp b                                             ; $43a5: $b8
	ld bc, $4040                                     ; $43a6: $01 $40 $40
	nop                                              ; $43a9: $00
	inc b                                            ; $43aa: $04
	rst FarCall                                          ; $43ab: $f7
	ld a, d                                          ; $43ac: $7a
	cp d                                             ; $43ad: $ba
	sbc [hl]                                         ; $43ae: $9e
	ld [$e875], sp                                   ; $43af: $08 $75 $e8
	rst FarCall                                          ; $43b2: $f7
	ld a, l                                          ; $43b3: $7d
	ld e, h                                          ; $43b4: $5c
	db $f4                                           ; $43b5: $f4
	ld a, c                                          ; $43b6: $79
	ld [hl], d                                       ; $43b7: $72
	sub e                                            ; $43b8: $93
	inc b                                            ; $43b9: $04
	ld b, $02                                        ; $43ba: $06 $02
	inc bc                                           ; $43bc: $03
	ld bc, $3f3f                                     ; $43bd: $01 $3f $3f
	rra                                              ; $43c0: $1f
	rrca                                             ; $43c1: $0f
	rrca                                             ; $43c2: $0f
	rlca                                             ; $43c3: $07
	rlca                                             ; $43c4: $07
	ld a, c                                          ; $43c5: $79
	ret nz                                           ; $43c6: $c0

	sbc c                                            ; $43c7: $99
	ld c, d                                          ; $43c8: $4a
	dec [hl]                                         ; $43c9: $35
	ld a, [hl+]                                      ; $43ca: $2a
	dec d                                            ; $43cb: $15
	ld a, [bc]                                       ; $43cc: $0a
	add hl, bc                                       ; $43cd: $09
	ld [hl], c                                       ; $43ce: $71
	ld [hl], e                                       ; $43cf: $73
	ld a, d                                          ; $43d0: $7a
	ld e, [hl]                                       ; $43d1: $5e
	ld b, $c0                                        ; $43d2: $06 $c0
	ld a, [hl]                                       ; $43d4: $7e
	add $99                                          ; $43d5: $c6 $99
	cp h                                             ; $43d7: $bc
	ld e, h                                          ; $43d8: $5c
	cp [hl]                                          ; $43d9: $be
	ld c, [hl]                                       ; $43da: $4e
	or a                                             ; $43db: $b7
	ld d, a                                          ; $43dc: $57
	db $db                                           ; $43dd: $db
	rra                                              ; $43de: $1f
	rst SubAFromDE                                          ; $43df: $df
	rrca                                             ; $43e0: $0f
	rst SubAFromDE                                          ; $43e1: $df
	cpl                                              ; $43e2: $2f
	ld a, e                                          ; $43e3: $7b
	ld a, [$07df]                                    ; $43e4: $fa $df $07
	sbc [hl]                                         ; $43e7: $9e
	add e                                            ; $43e8: $83
	db $dd                                           ; $43e9: $dd
	ldh a, [rPCM12]                                  ; $43ea: $f0 $76
	ld l, l                                          ; $43ec: $6d
	sbc [hl]                                         ; $43ed: $9e
	pop af                                           ; $43ee: $f1
	ld a, d                                          ; $43ef: $7a
	dec de                                           ; $43f0: $1b
	db $dd                                           ; $43f1: $dd
	cp $9c                                           ; $43f2: $fe $9c
	ld c, $07                                        ; $43f4: $0e $07
	inc bc                                           ; $43f6: $03
	call c, $de01                                    ; $43f7: $dc $01 $de
	ccf                                              ; $43fa: $3f
	ld a, a                                          ; $43fb: $7f
	scf                                              ; $43fc: $37
	ld a, l                                          ; $43fd: $7d
	adc [hl]                                         ; $43fe: $8e
	ld a, h                                          ; $43ff: $7c
	adc [hl]                                         ; $4400: $8e
	rst SubAFromDE                                          ; $4401: $df
	ret nz                                           ; $4402: $c0

	ld a, c                                          ; $4403: $79
	rrca                                             ; $4404: $0f
	ld a, [hl]                                       ; $4405: $7e
	ld h, b                                          ; $4406: $60
	ld [hl], d                                       ; $4407: $72
	sbc b                                            ; $4408: $98
	ld a, l                                          ; $4409: $7d
	ld [hl], c                                       ; $440a: $71
	sbc [hl]                                         ; $440b: $9e
	db $e3                                           ; $440c: $e3
	db $fd                                           ; $440d: $fd
	ld a, l                                          ; $440e: $7d
	adc l                                            ; $440f: $8d
	sub e                                            ; $4410: $93
	inc b                                            ; $4411: $04
	inc e                                            ; $4412: $1c
	di                                               ; $4413: $f3
	ldh a, [c]                                       ; $4414: $f2
	di                                               ; $4415: $f3
	ldh a, [c]                                       ; $4416: $f2
	jp nc, $f3f2                                     ; $4417: $d2 $f2 $f3

	di                                               ; $441a: $f3
	ccf                                              ; $441b: $3f
	ccf                                              ; $441c: $3f
	sbc $3e                                          ; $441d: $de $3e
	rst SubAFromDE                                          ; $441f: $df
	ld e, $80                                        ; $4420: $1e $80
	inc e                                            ; $4422: $1c
	ld d, h                                          ; $4423: $54
	ld d, l                                          ; $4424: $55
	ld h, [hl]                                       ; $4425: $66
	inc l                                            ; $4426: $2c
	inc sp                                           ; $4427: $33
	sub d                                            ; $4428: $92
	add hl, de                                       ; $4429: $19
	ld c, h                                          ; $442a: $4c
	ld c, c                                          ; $442b: $49
	ld c, h                                          ; $442c: $4c
	ld c, h                                          ; $442d: $4c
	ld h, [hl]                                       ; $442e: $66
	ld h, [hl]                                       ; $442f: $66
	ld [hl], a                                       ; $4430: $77
	rst $38                                          ; $4431: $ff
	cp a                                             ; $4432: $bf
	db $fc                                           ; $4433: $fc
	xor h                                            ; $4434: $ac
	sbc $67                                          ; $4435: $de $67
	di                                               ; $4437: $f3
	dec a                                            ; $4438: $3d
	rra                                              ; $4439: $1f
	adc $9b                                          ; $443a: $ce $9b
	rst SubAFromDE                                          ; $443c: $df
	rst AddAOntoHL                                          ; $443d: $ef
	rst $38                                          ; $443e: $ff
	ld e, [hl]                                       ; $443f: $5e
	rst AddAOntoHL                                          ; $4440: $ef
	ld a, l                                          ; $4441: $7d
	ldh a, [c]                                       ; $4442: $f2
	sub a                                            ; $4443: $97
	call $3f78                                       ; $4444: $cd $78 $3f
	rrca                                             ; $4447: $0f
	jp rIE                                         ; $4448: $c3 $ff $ff


	ld l, a                                          ; $444b: $6f
	ld a, b                                          ; $444c: $78
	ld h, a                                          ; $444d: $67
	adc l                                            ; $444e: $8d
	ld hl, sp-$02                                    ; $444f: $f8 $fe
	ccf                                              ; $4451: $3f
	add b                                            ; $4452: $80
	ldh a, [$f7]                                     ; $4453: $f0 $f7
	ld a, l                                          ; $4455: $7d
	ld a, [$fdff]                                    ; $4456: $fa $ff $fd
	ld hl, sp-$40                                    ; $4459: $f8 $c0
	add b                                            ; $445b: $80
	sbc b                                            ; $445c: $98
	db $e3                                           ; $445d: $e3
	rst FarCall                                          ; $445e: $f7
	ld b, $07                                        ; $445f: $06 $07
	ld a, e                                          ; $4461: $7b
	add hl, bc                                       ; $4462: $09
	adc e                                            ; $4463: $8b
	db $fd                                           ; $4464: $fd
	xor a                                            ; $4465: $af
	ld [hl], e                                       ; $4466: $73
	ld [hl], e                                       ; $4467: $73
	ld [$dfa7], a                                    ; $4468: $ea $a7 $df
	ld a, a                                          ; $446b: $7f
	rst $38                                          ; $446c: $ff
	ld sp, hl                                        ; $446d: $f9
	add hl, sp                                       ; $446e: $39
	ld a, c                                          ; $446f: $79
	ld [hl], l                                       ; $4470: $75
	call z, $20f8                                    ; $4471: $cc $f8 $20
	pop af                                           ; $4474: $f1
	ld a, b                                          ; $4475: $78
	ld a, l                                          ; $4476: $7d
	add $79                                          ; $4477: $c6 $79
	add [hl]                                         ; $4479: $86
	sbc h                                            ; $447a: $9c
	adc h                                            ; $447b: $8c
	ld a, a                                          ; $447c: $7f
	rst $38                                          ; $447d: $ff
	halt                                             ; $447e: $76
	ret nz                                           ; $447f: $c0

	rst SubAFromDE                                          ; $4480: $df
	rst $38                                          ; $4481: $ff
	add b                                            ; $4482: $80
	cp e                                             ; $4483: $bb
	ld e, e                                          ; $4484: $5b
	add hl, hl                                       ; $4485: $29
	reti                                             ; $4486: $d9


	ld [hl], e                                       ; $4487: $73
	cp e                                             ; $4488: $bb
	ld c, c                                          ; $4489: $49
	inc hl                                           ; $448a: $23
	ret z                                            ; $448b: $c8

	ldh [$f0], a                                     ; $448c: $e0 $f0
	jr c, @-$76                                      ; $448e: $38 $88

	ret nz                                           ; $4490: $c0

	ldh a, [$f8]                                     ; $4491: $f0 $f8
	ld d, b                                          ; $4493: $50
	ld l, b                                          ; $4494: $68
	and [hl]                                         ; $4495: $a6
	ld b, c                                          ; $4496: $41
	ld a, b                                          ; $4497: $78
	and $01                                          ; $4498: $e6 $01
	ld hl, sp+$30                                    ; $449a: $f8 $30
	jr jr_023_44fc                                   ; $449c: $18 $5e

	ccf                                              ; $449e: $3f
	rra                                              ; $449f: $1f
	rra                                              ; $44a0: $1f
	ld a, a                                          ; $44a1: $7f
	sbc [hl]                                         ; $44a2: $9e
	rra                                              ; $44a3: $1f
	ld [hl], d                                       ; $44a4: $72
	call Call_023_789c                               ; $44a5: $cd $9c $78
	ld d, a                                          ; $44a8: $57
	ld d, b                                          ; $44a9: $50
	ei                                               ; $44aa: $fb
	rst SubAFromDE                                          ; $44ab: $df
	cpl                                              ; $44ac: $2f
	ld a, [$e09e]                                    ; $44ad: $fa $9e $e0
	ld h, a                                          ; $44b0: $67
	ld hl, sp+$7f                                    ; $44b1: $f8 $7f
	sbc l                                            ; $44b3: $9d
	ld l, [hl]                                       ; $44b4: $6e
	xor a                                            ; $44b5: $af
	ld l, l                                          ; $44b6: $6d
	ld [hl], d                                       ; $44b7: $72
	rst $38                                          ; $44b8: $ff
	sub a                                            ; $44b9: $97
	add [hl]                                         ; $44ba: $86
	push bc                                          ; $44bb: $c5
	ld b, d                                          ; $44bc: $42
	ld h, d                                          ; $44bd: $62
	ld hl, $1030                                     ; $44be: $21 $30 $10
	ld [$0a7b], sp                                   ; $44c1: $08 $7b $0a
	ld a, d                                          ; $44c4: $7a
	ld h, d                                          ; $44c5: $62
	ld a, a                                          ; $44c6: $7f
	cp l                                             ; $44c7: $bd
	ld [hl], d                                       ; $44c8: $72
	jp nc, $d59e                                     ; $44c9: $d2 $9e $d5

	ld l, d                                          ; $44cc: $6a
	ret nc                                           ; $44cd: $d0

	ld a, e                                          ; $44ce: $7b
	ld c, $46                                        ; $44cf: $0e $46
	ret nz                                           ; $44d1: $c0

	sub a                                            ; $44d2: $97
	xor e                                            ; $44d3: $ab
	ld e, c                                          ; $44d4: $59
	xor l                                            ; $44d5: $ad
	ld d, [hl]                                       ; $44d6: $56
	xor d                                            ; $44d7: $aa
	ld d, l                                          ; $44d8: $55
	xor e                                            ; $44d9: $ab
	ld d, l                                          ; $44da: $55
	ld a, d                                          ; $44db: $7a
	add l                                            ; $44dc: $85
	rst SubAFromDE                                          ; $44dd: $df
	ld bc, $97fe                                     ; $44de: $01 $fe $97
	add e                                            ; $44e1: $83
	pop bc                                           ; $44e2: $c1
	pop bc                                           ; $44e3: $c1
	ldh [$f0], a                                     ; $44e4: $e0 $f0
	ld [hl], b                                       ; $44e6: $70
	ld a, b                                          ; $44e7: $78
	cp b                                             ; $44e8: $b8
	ld l, a                                          ; $44e9: $6f
	ld h, d                                          ; $44ea: $62
	ld a, a                                          ; $44eb: $7f
	cp l                                             ; $44ec: $bd
	db $dd                                           ; $44ed: $dd
	cp $9b                                           ; $44ee: $fe $9b
	ld a, a                                          ; $44f0: $7f
	ld a, l                                          ; $44f1: $7d
	inc a                                            ; $44f2: $3c
	inc a                                            ; $44f3: $3c
	sbc $01                                          ; $44f4: $de $01
	sbc b                                            ; $44f6: $98
	add c                                            ; $44f7: $81
	ret nz                                           ; $44f8: $c0

	jp nz, $e3e3                                     ; $44f9: $c2 $e3 $e3

jr_023_44fc:
	ccf                                              ; $44fc: $3f
	inc a                                            ; $44fd: $3c
	ld [hl], h                                       ; $44fe: $74

Call_023_44ff:
	ld a, [hl+]                                      ; $44ff: $2a
	rst SubAFromDE                                          ; $4500: $df
	ld a, a                                          ; $4501: $7f
	sbc h                                            ; $4502: $9c
	ret nz                                           ; $4503: $c0

	jp Jump_023_78c0                                 ; $4504: $c3 $c0 $78


	ld sp, hl                                        ; $4507: $f9
	rst SubAFromDE                                          ; $4508: $df
	add b                                            ; $4509: $80
	sbc [hl]                                         ; $450a: $9e
	rlca                                             ; $450b: $07
	jp c, $9eff                                      ; $450c: $da $ff $9e

	ld hl, sp-$06                                    ; $450f: $f8 $fa
	sbc e                                            ; $4511: $9b
	rst AddAOntoHL                                          ; $4512: $ef
	db $fd                                           ; $4513: $fd
	ld a, [$7bec]                                    ; $4514: $fa $ec $7b
	add l                                            ; $4517: $85
	sbc c                                            ; $4518: $99
	rst $38                                          ; $4519: $ff
	dec e                                            ; $451a: $1d
	dec bc                                           ; $451b: $0b
	rlca                                             ; $451c: $07
	rra                                              ; $451d: $1f
	inc sp                                           ; $451e: $33
	ld a, e                                          ; $451f: $7b
	xor l                                            ; $4520: $ad
	sub e                                            ; $4521: $93
	ld c, [hl]                                       ; $4522: $4e
	ld h, a                                          ; $4523: $67
	and e                                            ; $4524: $a3
	pop de                                           ; $4525: $d1
	ld h, b                                          ; $4526: $60
	ld a, b                                          ; $4527: $78
	ld l, $37                                        ; $4528: $2e $37
	cp a                                             ; $452a: $bf
	sbc a                                            ; $452b: $9f
	sbc $ef                                          ; $452c: $de $ef
	db $dd                                           ; $452e: $dd
	rst $38                                          ; $452f: $ff
	add b                                            ; $4530: $80
	dec a                                            ; $4531: $3d
	sbc a                                            ; $4532: $9f
	rst $38                                          ; $4533: $ff
	db $fd                                           ; $4534: $fd
	rst FarCall                                          ; $4535: $f7
	ld a, e                                          ; $4536: $7b
	rra                                              ; $4537: $1f
	ei                                               ; $4538: $fb
	rst $38                                          ; $4539: $ff
	di                                               ; $453a: $f3
	ld a, [hl]                                       ; $453b: $7e
	ld b, $8c                                        ; $453c: $06 $8c
	db $ec                                           ; $453e: $ec
	ld sp, hl                                        ; $453f: $f9
	rst $38                                          ; $4540: $ff
	rst $38                                          ; $4541: $ff
	db $e3                                           ; $4542: $e3
	cp $ea                                           ; $4543: $fe $ea
	dec e                                            ; $4545: $1d
	call c, $abfb                                    ; $4546: $dc $fb $ab
	add b                                            ; $4549: $80
	inc e                                            ; $454a: $1c
	ld a, $7e                                        ; $454b: $3e $7e
	adc $9f                                          ; $454d: $ce $9f
	db $fd                                           ; $454f: $fd
	sub [hl]                                         ; $4550: $96
	ldh a, [c]                                       ; $4551: $f2
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	inc c                                            ; $4554: $0c
	ld c, $06                                        ; $4555: $0e $06
	adc h                                            ; $4557: $8c
	nop                                              ; $4558: $00
	rlca                                             ; $4559: $07
	db $fd                                           ; $455a: $fd
	sbc e                                            ; $455b: $9b
	ld [$010c], sp                                   ; $455c: $08 $0c $01
	inc bc                                           ; $455f: $03
	ld [hl], l                                       ; $4560: $75
	db $ec                                           ; $4561: $ec
	sbc e                                            ; $4562: $9b
	ld [bc], a                                       ; $4563: $02
	add e                                            ; $4564: $83
	jp $fd03                                         ; $4565: $c3 $03 $fd


	sbc c                                            ; $4568: $99
	ld bc, wPastTitleScreen                                     ; $4569: $01 $41 $c1
	pop bc                                           ; $456c: $c1
	rst JumpTable                                          ; $456d: $c7
	and e                                            ; $456e: $a3
	ld a, c                                          ; $456f: $79
	add d                                            ; $4570: $82
	sbc h                                            ; $4571: $9c
	and a                                            ; $4572: $a7
	db $d3                                           ; $4573: $d3
	ld l, c                                          ; $4574: $69
	reti                                             ; $4575: $d9


	rst $38                                          ; $4576: $ff
	sbc [hl]                                         ; $4577: $9e
	inc d                                            ; $4578: $14
	ld a, c                                          ; $4579: $79
	ld [hl], h                                       ; $457a: $74
	sbc e                                            ; $457b: $9b

jr_023_457c:
	ld [hl], c                                       ; $457c: $71
	cp b                                             ; $457d: $b8
	db $fc                                           ; $457e: $fc
	cp $d9                                           ; $457f: $fe $d9
	ei                                               ; $4581: $fb
	sub [hl]                                         ; $4582: $96
	add [hl]                                         ; $4583: $86
	add c                                            ; $4584: $81
	nop                                              ; $4585: $00
	ret nz                                           ; $4586: $c0

	ldh a, [$fe]                                     ; $4587: $f0 $fe
	ld a, a                                          ; $4589: $7f
	ccf                                              ; $458a: $3f
	ld a, a                                          ; $458b: $7f
	ld a, e                                          ; $458c: $7b
	ld e, d                                          ; $458d: $5a
	db $dd                                           ; $458e: $dd
	rst $38                                          ; $458f: $ff
	sub [hl]                                         ; $4590: $96
	db $10                                           ; $4591: $10
	add d                                            ; $4592: $82
	add c                                            ; $4593: $81
	add b                                            ; $4594: $80
	rlca                                             ; $4595: $07
	nop                                              ; $4596: $00
	ret nz                                           ; $4597: $c0

	rst $38                                          ; $4598: $ff
	ld l, a                                          ; $4599: $6f
	sbc $7f                                          ; $459a: $de $7f
	db $dd                                           ; $459c: $dd
	rst $38                                          ; $459d: $ff
	sub [hl]                                         ; $459e: $96
	jr jr_023_45a7                                   ; $459f: $18 $06

	ret nz                                           ; $45a1: $c0

	jr c, jr_023_45ab                                ; $45a2: $38 $07

	ldh [rAUD3LEVEL], a                              ; $45a4: $e0 $1c
	add e                                            ; $45a6: $83

jr_023_45a7:
	ld hl, sp+$6b                                    ; $45a7: $f8 $6b
	rra                                              ; $45a9: $1f
	rst $38                                          ; $45aa: $ff

jr_023_45ab:
	sbc c                                            ; $45ab: $99
	ret nz                                           ; $45ac: $c0

	jr nc, jr_023_45bb                               ; $45ad: $30 $0c

	jp $0c30                                         ; $45af: $c3 $30 $0c


	ld a, e                                          ; $45b2: $7b
	ld hl, sp-$63                                    ; $45b3: $f8 $9d
	ldh a, [$fc]                                     ; $45b5: $f0 $fc
	sbc $ff                                          ; $45b7: $de $ff
	sbc [hl]                                         ; $45b9: $9e
	inc c                                            ; $45ba: $0c

jr_023_45bb:
	ld [hl], c                                       ; $45bb: $71
	ld [hl], d                                       ; $45bc: $72
	sbc l                                            ; $45bd: $9d
	add b                                            ; $45be: $80
	ld b, b                                          ; $45bf: $40
	ld l, l                                          ; $45c0: $6d
	ld [hl], d                                       ; $45c1: $72
	sub l                                            ; $45c2: $95
	add c                                            ; $45c3: $81
	pop bc                                           ; $45c4: $c1
	ld c, d                                          ; $45c5: $4a
	dec h                                            ; $45c6: $25
	ld a, [de]                                       ; $45c7: $1a
	dec d                                            ; $45c8: $15
	ld a, [bc]                                       ; $45c9: $0a
	adc c                                            ; $45ca: $89
	add [hl]                                         ; $45cb: $86
	push bc                                          ; $45cc: $c5
	ld [hl], l                                       ; $45cd: $75
	ld [hl], e                                       ; $45ce: $73
	ld [hl], l                                       ; $45cf: $75
	or b                                             ; $45d0: $b0
	dec b                                            ; $45d1: $05
	ld [hl], b                                       ; $45d2: $70
	sub a                                            ; $45d3: $97
	sbc h                                            ; $45d4: $9c
	ld e, h                                          ; $45d5: $5c
	xor $6f                                          ; $45d6: $ee $6f
	or a                                             ; $45d8: $b7
	ld d, a                                          ; $45d9: $57
	xor e                                            ; $45da: $ab
	ld e, c                                          ; $45db: $59
	ld a, d                                          ; $45dc: $7a
	add l                                            ; $45dd: $85
	ld [hl], e                                       ; $45de: $73
	cp l                                             ; $45df: $bd
	sbc [hl]                                         ; $45e0: $9e
	inc e                                            ; $45e1: $1c
	ld a, c                                          ; $45e2: $79
	jr nz, jr_023_457c                               ; $45e3: $20 $97

	dec b                                            ; $45e5: $05
	add e                                            ; $45e6: $83
	add e                                            ; $45e7: $83
	pop bc                                           ; $45e8: $c1
	di                                               ; $45e9: $f3
	rst FarCall                                          ; $45ea: $f7
	rst $38                                          ; $45eb: $ff
	rst $38                                          ; $45ec: $ff
	sbc $fe                                          ; $45ed: $de $fe
	ld a, d                                          ; $45ef: $7a
	add $7b                                          ; $45f0: $c6 $7b
	ld a, c                                          ; $45f2: $79
	rst SubAFromDE                                          ; $45f3: $df
	cp $9e                                           ; $45f4: $fe $9e
	rst FarCall                                          ; $45f6: $f7
	sbc $80                                          ; $45f7: $de $80
	db $fc                                           ; $45f9: $fc
	call c, $dfff                                    ; $45fa: $dc $ff $df
	ccf                                              ; $45fd: $3f
	sbc [hl]                                         ; $45fe: $9e
	xor a                                            ; $45ff: $af
	ld h, h                                          ; $4600: $64
	pop af                                           ; $4601: $f1
	ld [hl], a                                       ; $4602: $77
	db $e3                                           ; $4603: $e3
	sbc e                                            ; $4604: $9b
	db $fc                                           ; $4605: $fc
	db $fd                                           ; $4606: $fd
	ei                                               ; $4607: $fb
	ld sp, hl                                        ; $4608: $f9
	ld a, e                                          ; $4609: $7b
	ld [de], a                                       ; $460a: $12
	ld a, a                                          ; $460b: $7f
	inc bc                                           ; $460c: $03
	add b                                            ; $460d: $80
	ld [bc], a                                       ; $460e: $02
	inc b                                            ; $460f: $04
	ld b, $93                                        ; $4610: $06 $93
	rst GetHLinHL                                          ; $4612: $cf
	call $f7e6                                       ; $4613: $cd $e6 $f7
	ei                                               ; $4616: $fb
	ei                                               ; $4617: $fb
	db $fd                                           ; $4618: $fd
	rst $38                                          ; $4619: $ff
	cp e                                             ; $461a: $bb
	ld a, e                                          ; $461b: $7b
	ld e, l                                          ; $461c: $5d
	inc l                                            ; $461d: $2c
	ld d, $16                                        ; $461e: $16 $16
	dec bc                                           ; $4620: $0b
	ld a, $3f                                        ; $4621: $3e $3f
	sbc l                                            ; $4623: $9d
	sbc a                                            ; $4624: $9f
	ld l, e                                          ; $4625: $6b
	ld a, c                                          ; $4626: $79
	or h                                             ; $4627: $b4
	cp h                                             ; $4628: $bc
	rst $38                                          ; $4629: $ff
	rst $38                                          ; $462a: $ff
	ei                                               ; $462b: $fb
	db $fc                                           ; $462c: $fc
	adc c                                            ; $462d: $89
	sbc $cf                                          ; $462e: $de $cf
	ld l, a                                          ; $4630: $6f
	ld h, a                                          ; $4631: $67
	ld d, [hl]                                       ; $4632: $56
	ret z                                            ; $4633: $c8

	ldh [$58], a                                     ; $4634: $e0 $58
	or e                                             ; $4636: $b3
	rst AddAOntoHL                                          ; $4637: $ef
	xor e                                            ; $4638: $ab

jr_023_4639:
	db $f4                                           ; $4639: $f4
	call c, $8000                                    ; $463a: $dc $00 $80
	ldh [$7c], a                                     ; $463d: $e0 $7c
	rst $38                                          ; $463f: $ff
	rst SubAFromDE                                          ; $4640: $df
	rst GetHLinHL                                          ; $4641: $cf
	ld a, [bc]                                       ; $4642: $0a
	ld [bc], a                                       ; $4643: $02
	cp $9c                                           ; $4644: $fe $9c
	jr nc, jr_023_4639                               ; $4646: $30 $f1

	ei                                               ; $4648: $fb
	ld [hl], l                                       ; $4649: $75
	add h                                            ; $464a: $84
	ld a, e                                          ; $464b: $7b
	add hl, bc                                       ; $464c: $09
	adc a                                            ; $464d: $8f
	db $fc                                           ; $464e: $fc
	ld b, c                                          ; $464f: $41
	rst JumpTable                                          ; $4650: $c7
	add e                                            ; $4651: $83
	rrca                                             ; $4652: $0f
	rla                                              ; $4653: $17
	rst SubAFromDE                                          ; $4654: $df
	rst $38                                          ; $4655: $ff
	ld a, $c3                                        ; $4656: $3e $c3
	add d                                            ; $4658: $82
	ld b, $04                                        ; $4659: $06 $04
	inc c                                            ; $465b: $0c
	jr c, @-$1e                                      ; $465c: $38 $e0

	ld [hl], a                                       ; $465e: $77
	sub b                                            ; $465f: $90
	ld a, a                                          ; $4660: $7f
	dec sp                                           ; $4661: $3b
	sbc l                                            ; $4662: $9d
	ld a, l                                          ; $4663: $7d
	ld a, [hl]                                       ; $4664: $7e
	ld [hl], l                                       ; $4665: $75
	push hl                                          ; $4666: $e5

Call_023_4667:
	ld a, a                                          ; $4667: $7f
	ld h, d                                          ; $4668: $62
	ld a, c                                          ; $4669: $79
	set 3, a                                         ; $466a: $cb $df
	ei                                               ; $466c: $fb
	sbc d                                            ; $466d: $9a
	dec b                                            ; $466e: $05
	inc b                                            ; $466f: $04
	dec b                                            ; $4670: $05
	rra                                              ; $4671: $1f
	sbc a                                            ; $4672: $9f
	ld a, e                                          ; $4673: $7b
	ld l, e                                          ; $4674: $6b
	rst SubAFromDE                                          ; $4675: $df
	ei                                               ; $4676: $fb
	sub a                                            ; $4677: $97
	ld a, [$e0e0]                                    ; $4678: $fa $e0 $e0
	ret nz                                           ; $467b: $c0

	rra                                              ; $467c: $1f
	adc a                                            ; $467d: $8f
	rst JumpTable                                          ; $467e: $c7
	pop hl                                           ; $467f: $e1
	ld a, b                                          ; $4680: $78
	rst JumpTable                                          ; $4681: $c7
	rst SubAFromDE                                          ; $4682: $df
	cp $7a                                           ; $4683: $fe $7a
	rst SubAFromDE                                          ; $4685: $df
	ld a, l                                          ; $4686: $7d
	ld h, $7f                                        ; $4687: $26 $7f

jr_023_4689:
	sbc $dc                                          ; $4689: $de $dc
	rst AddAOntoHL                                          ; $468b: $ef
	sbc e                                            ; $468c: $9b
	ld l, a                                          ; $468d: $6f
	cpl                                              ; $468e: $2f
	rra                                              ; $468f: $1f
	dec hl                                           ; $4690: $2b
	sbc $2a                                          ; $4691: $de $2a
	sub a                                            ; $4693: $97
	xor d                                            ; $4694: $aa
	ld [$faea], a                                    ; $4695: $ea $ea $fa
	ld hl, sp-$34                                    ; $4698: $f8 $cc
	rst SubAFromBC                                          ; $469a: $e7
	db $f4                                           ; $469b: $f4
	halt                                             ; $469c: $76
	jr nz, jr_023_471e                               ; $469d: $20 $7f

	scf                                              ; $469f: $37
	add b                                            ; $46a0: $80
	cp a                                             ; $46a1: $bf
	sbc h                                            ; $46a2: $9c
	adc [hl]                                         ; $46a3: $8e
	and d                                            ; $46a4: $a2
	and c                                            ; $46a5: $a1
	sub b                                            ; $46a6: $90
	jp $2c31                                         ; $46a7: $c3 $31 $2c


	db $d3                                           ; $46aa: $d3
	jr z, jr_023_46c1                                ; $46ab: $28 $14

	ld c, $87                                        ; $46ad: $0e $87
	rst $38                                          ; $46af: $ff
	rst $38                                          ; $46b0: $ff
	rst AddAOntoHL                                          ; $46b1: $ef
	di                                               ; $46b2: $f3
	jr c, @+$1e                                      ; $46b3: $38 $1c

	ld c, $87                                        ; $46b5: $0e $87
	jr nz, jr_023_4689                               ; $46b7: $20 $d0

	xor b                                            ; $46b9: $a8
	ld e, h                                          ; $46ba: $5c
	db $ec                                           ; $46bb: $ec
	ld [hl], $1a                                     ; $46bc: $36 $1a
	ld [$9ce0], sp                                   ; $46be: $08 $e0 $9c

jr_023_46c1:
	ldh a, [$b8]                                     ; $46c1: $f0 $b8
	call c, $f877                                    ; $46c3: $dc $77 $f8
	sub a                                            ; $46c6: $97
	ld b, d                                          ; $46c7: $42
	ld h, c                                          ; $46c8: $61
	ld hl, $1810                                     ; $46c9: $21 $10 $18
	ld [$040c], sp                                   ; $46cc: $08 $0c $04
	ld a, e                                          ; $46cf: $7b
	ld b, $df                                        ; $46d0: $06 $df
	ccf                                              ; $46d2: $3f
	ld a, d                                          ; $46d3: $7a
	db $ed                                           ; $46d4: $ed
	ld [hl], c                                       ; $46d5: $71
	ld [hl], d                                       ; $46d6: $72
	sbc h                                            ; $46d7: $9c
	ld [hl], l                                       ; $46d8: $75
	ld c, d                                          ; $46d9: $4a
	dec [hl]                                         ; $46da: $35
	ld l, l                                          ; $46db: $6d
	ld [hl], d                                       ; $46dc: $72
	rst SubAFromDE                                          ; $46dd: $df
	ldh [rAUD3LOW], a                                ; $46de: $e0 $1d
	nop                                              ; $46e0: $00
	db $d3                                           ; $46e1: $d3
	ld de, $019e                                     ; $46e2: $11 $9e $01
	reti                                             ; $46e5: $d9


	ld de, $6bff                                     ; $46e6: $11 $ff $6b
	push af                                          ; $46e9: $f5
	sbc [hl]                                         ; $46ea: $9e
	db $10                                           ; $46eb: $10
	cp $5f                                           ; $46ec: $fe $5f
	or $6f                                           ; $46ee: $f6 $6f
	ld [$f64b], a                                    ; $46f0: $ea $4b $f6
	ld l, a                                          ; $46f3: $6f
	push af                                          ; $46f4: $f5
	rst $38                                          ; $46f5: $ff
	sbc d                                            ; $46f6: $9a
	dec b                                            ; $46f7: $05
	inc [hl]                                         ; $46f8: $34
	ld b, h                                          ; $46f9: $44
	nop                                              ; $46fa: $00
	ld de, $8825                                     ; $46fb: $11 $25 $88
	sbc l                                            ; $46fe: $9d
	xor d                                            ; $46ff: $aa
	ld d, l                                          ; $4700: $55
	ld l, a                                          ; $4701: $6f
	cp $f9                                           ; $4702: $fe $f9
	sbc d                                            ; $4704: $9a
	xor l                                            ; $4705: $ad
	ld d, [hl]                                       ; $4706: $56
	xor d                                            ; $4707: $aa
	ld d, l                                          ; $4708: $55
	xor e                                            ; $4709: $ab
	ld a, e                                          ; $470a: $7b
	ldh a, [$9c]                                     ; $470b: $f0 $9c
	inc bc                                           ; $470d: $03
	ld bc, $fc01                                     ; $470e: $01 $01 $fc
	sub a                                            ; $4711: $97
	pop bc                                           ; $4712: $c1
	ldh [$f0], a                                     ; $4713: $e0 $f0
	ld [hl], b                                       ; $4715: $70
	ld a, b                                          ; $4716: $78
	cp b                                             ; $4717: $b8
	sbc h                                            ; $4718: $9c
	ld e, h                                          ; $4719: $5c
	call c, $dfff                                    ; $471a: $dc $ff $df
	ld a, a                                          ; $471d: $7f

jr_023_471e:
	add [hl]                                         ; $471e: $86
	ccf                                              ; $471f: $3f
	ei                                               ; $4720: $fb
	pop hl                                           ; $4721: $e1
	ld b, b                                          ; $4722: $40
	ld b, c                                          ; $4723: $41
	inc hl                                           ; $4724: $23
	inc sp                                           ; $4725: $33
	db $10                                           ; $4726: $10
	dec e                                            ; $4727: $1d
	nop                                              ; $4728: $00
	add b                                            ; $4729: $80
	ret nz                                           ; $472a: $c0

	ret nz                                           ; $472b: $c0

	ldh [$e0], a                                     ; $472c: $e0 $e0
	pop af                                           ; $472e: $f1
	ldh a, [c]                                       ; $472f: $f2
	rst AddAOntoHL                                          ; $4730: $ef
	ld l, a                                          ; $4731: $6f
	ld l, a                                          ; $4732: $6f
	rst SubAFromDE                                          ; $4733: $df
	rst SubAFromHL                                          ; $4734: $d7
	and a                                            ; $4735: $a7
	ld a, b                                          ; $4736: $78
	ld hl, sp-$22                                    ; $4737: $f8 $de
	db $10                                           ; $4739: $10
	rst SubAFromDE                                          ; $473a: $df
	jr nz, @-$6e                                     ; $473b: $20 $90

	ld b, b                                          ; $473d: $40
	add b                                            ; $473e: $80
	nop                                              ; $473f: $00
	ld sp, hl                                        ; $4740: $f9
	db $fd                                           ; $4741: $fd
	di                                               ; $4742: $f3
	rst FarCall                                          ; $4743: $f7
	adc a                                            ; $4744: $8f
	adc a                                            ; $4745: $8f
	rrca                                             ; $4746: $0f
	ld c, a                                          ; $4747: $4f
	ld b, $02                                        ; $4748: $06 $02
	inc c                                            ; $474a: $0c
	ld [$30dd], sp                                   ; $474b: $08 $dd $30
	rst SubAFromDE                                          ; $474e: $df
	cp $80                                           ; $474f: $fe $80
	db $fd                                           ; $4751: $fd
	rst $38                                          ; $4752: $ff
	di                                               ; $4753: $f3
	rst $38                                          ; $4754: $ff
	sbc a                                            ; $4755: $9f
	cp a                                             ; $4756: $bf
	add hl, bc                                       ; $4757: $09
	dec b                                            ; $4758: $05
	ld b, $02                                        ; $4759: $06 $02
	dec c                                            ; $475b: $0d
	nop                                              ; $475c: $00
	ld h, b                                          ; $475d: $60
	ld b, b                                          ; $475e: $40
	jp c, Jump_023_6dce                              ; $475f: $da $ce $6d

	and [hl]                                         ; $4762: $a6
	or [hl]                                          ; $4763: $b6
	db $d3                                           ; $4764: $d3
	reti                                             ; $4765: $d9


	add sp, -$49                                     ; $4766: $e8 $b7
	cp e                                             ; $4768: $bb
	db $db                                           ; $4769: $db
	ld a, l                                          ; $476a: $7d
	ld l, l                                          ; $476b: $6d
	cp [hl]                                          ; $476c: $be
	or a                                             ; $476d: $b7
	ld e, a                                          ; $476e: $5f
	ld d, h                                          ; $476f: $54
	add a                                            ; $4770: $87
	ld a, d                                          ; $4771: $7a
	ld a, [hl+]                                      ; $4772: $2a
	cp l                                             ; $4773: $bd
	ld [hl], l                                       ; $4774: $75
	ld a, d                                          ; $4775: $7a
	cp d                                             ; $4776: $ba
	sbc h                                            ; $4777: $9c
	rst AddAOntoHL                                          ; $4778: $ef
	rst SubAFromBC                                          ; $4779: $e7
	rst FarCall                                          ; $477a: $f7
	di                                               ; $477b: $f3
	ei                                               ; $477c: $fb
	db $fd                                           ; $477d: $fd
	ld a, l                                          ; $477e: $7d
	rst $38                                          ; $477f: $ff
	sbc h                                            ; $4780: $9c
	ld e, [hl]                                       ; $4781: $5e
	ld c, a                                          ; $4782: $4f
	cpl                                              ; $4783: $2f
	daa                                              ; $4784: $27
	sub a                                            ; $4785: $97
	ld d, a                                          ; $4786: $57
	ld c, a                                          ; $4787: $4f
	cp $dd                                           ; $4788: $fe $dd
	rst $38                                          ; $478a: $ff
	sub h                                            ; $478b: $94
	cp $fc                                           ; $478c: $fe $fc
	ld sp, hl                                        ; $478e: $f9
	nop                                              ; $478f: $00
	nop                                              ; $4790: $00
	sub b                                            ; $4791: $90
	ld [$c3c6], sp                                   ; $4792: $08 $c6 $c3
	ret nz                                           ; $4795: $c0

	add b                                            ; $4796: $80
	cp $dd                                           ; $4797: $fe $dd
	add b                                            ; $4799: $80
	adc [hl]                                         ; $479a: $8e
	nop                                              ; $479b: $00
	ccf                                              ; $479c: $3f
	inc e                                            ; $479d: $1c
	ld [rRAMG], sp                                   ; $479e: $08 $00 $00
	ld h, b                                          ; $47a1: $60
	ld b, c                                          ; $47a2: $41
	rrca                                             ; $47a3: $0f
	nop                                              ; $47a4: $00
	ld [hl+], a                                      ; $47a5: $22
	inc [hl]                                         ; $47a6: $34
	jr c, jr_023_47b9                                ; $47a7: $38 $10

	nop                                              ; $47a9: $00
	ld hl, $776f                                     ; $47aa: $21 $6f $77
	ld l, h                                          ; $47ad: $6c
	rst SubAFromDE                                          ; $47ae: $df
	ccf                                              ; $47af: $3f
	rst SubAFromDE                                          ; $47b0: $df
	rst $38                                          ; $47b1: $ff
	sbc h                                            ; $47b2: $9c
	ret nz                                           ; $47b3: $c0

	ld b, b                                          ; $47b4: $40
	ld b, b                                          ; $47b5: $40
	sbc $20                                          ; $47b6: $de $20
	sbc l                                            ; $47b8: $9d

jr_023_47b9:
	ldh [rAUD1SWEEP], a                              ; $47b9: $e0 $10
	reti                                             ; $47bb: $d9


	rst $38                                          ; $47bc: $ff
	ld l, a                                          ; $47bd: $6f
	ld b, d                                          ; $47be: $42
	rst $38                                          ; $47bf: $ff
	sub d                                            ; $47c0: $92
	rrca                                             ; $47c1: $0f
	adc a                                            ; $47c2: $8f
	rst JumpTable                                          ; $47c3: $c7
	rst SubAFromBC                                          ; $47c4: $e7
	di                                               ; $47c5: $f3
	jp hl                                            ; $47c6: $e9


	db $ed                                           ; $47c7: $ed
	db $ec                                           ; $47c8: $ec
	ld a, [$7efa]                                    ; $47c9: $fa $fa $7e
	ld a, $3e                                        ; $47cc: $3e $3e
	sbc $2f                                          ; $47ce: $de $2f
	sbc c                                            ; $47d0: $99
	ld hl, sp-$04                                    ; $47d1: $f8 $fc
	cp a                                             ; $47d3: $bf
	cp a                                             ; $47d4: $bf
	sbc a                                            ; $47d5: $9f
	sbc a                                            ; $47d6: $9f
	sbc $8f                                          ; $47d7: $de $8f
	sbc l                                            ; $47d9: $9d
	add a                                            ; $47da: $87
	jp Jump_023_407b                                 ; $47db: $c3 $7b $40


	rst SubAFromDE                                          ; $47de: $df
	ldh a, [hDisp1_LCDC]                                     ; $47df: $f0 $8f
	ld b, e                                          ; $47e1: $43
	ld hl, $f020                                     ; $47e2: $21 $20 $f0
	ret z                                            ; $47e5: $c8

	db $f4                                           ; $47e6: $f4
	add d                                            ; $47e7: $82
	ld bc, $e1c3                                     ; $47e8: $01 $c3 $e1
	ldh [$f0], a                                     ; $47eb: $e0 $f0
	jr c, jr_023_47fb                                ; $47ed: $38 $0c

	ld a, [hl]                                       ; $47ef: $7e
	rst $38                                          ; $47f0: $ff
	ld a, e                                          ; $47f1: $7b
	sbc d                                            ; $47f2: $9a
	ld a, a                                          ; $47f3: $7f
	or l                                             ; $47f4: $b5
	db $fd                                           ; $47f5: $fd
	ld l, e                                          ; $47f6: $6b
	ld hl, sp-$62                                    ; $47f7: $f8 $9e
	ld b, $6a                                        ; $47f9: $06 $6a

jr_023_47fb:
	rst FarCall                                          ; $47fb: $f7
	sbc h                                            ; $47fc: $9c
	rrca                                             ; $47fd: $0f
	rlca                                             ; $47fe: $07
	inc bc                                           ; $47ff: $03
	ld [hl], e                                       ; $4800: $73
	or $92                                           ; $4801: $f6 $92
	ld a, [de]                                       ; $4803: $1a
	dec d                                            ; $4804: $15
	ld a, [bc]                                       ; $4805: $0a
	adc c                                            ; $4806: $89
	add [hl]                                         ; $4807: $86
	jp Jump_023_6142                                 ; $4808: $c3 $42 $61


	ldh a, [$f8]                                     ; $480b: $f0 $f8
	ld hl, sp-$04                                    ; $480d: $f8 $fc
	db $fc                                           ; $480f: $fc
	ld a, e                                          ; $4810: $7b
	ld e, e                                          ; $4811: $5b
	ld b, [hl]                                       ; $4812: $46
	ret nz                                           ; $4813: $c0

	ld b, a                                          ; $4814: $47
	ldh a, [hDisp1_BGP]                                     ; $4815: $f0 $92
	adc $6f                                          ; $4817: $ce $6f
	or a                                             ; $4819: $b7
	ld d, a                                          ; $481a: $57
	xor e                                            ; $481b: $ab
	ld e, c                                          ; $481c: $59
	xor l                                            ; $481d: $ad
	ld d, h                                          ; $481e: $54
	ccf                                              ; $481f: $3f
	rra                                              ; $4820: $1f
	rrca                                             ; $4821: $0f
	rrca                                             ; $4822: $0f
	rlca                                             ; $4823: $07
	ld a, e                                          ; $4824: $7b
	cp h                                             ; $4825: $bc
	sub e                                            ; $4826: $93
	add hl, bc                                       ; $4827: $09
	inc b                                            ; $4828: $04
	ld b, $82                                        ; $4829: $06 $82
	add e                                            ; $482b: $83
	pop bc                                           ; $482c: $c1
	pop hl                                           ; $482d: $e1
	ldh [$fe], a                                     ; $482e: $e0 $fe
	cp $fc                                           ; $4830: $fe $fc
	cp $77                                           ; $4832: $fe $77
	inc e                                            ; $4834: $1c
	add b                                            ; $4835: $80
	pop af                                           ; $4836: $f1
	ld b, b                                          ; $4837: $40
	nop                                              ; $4838: $00
	ld b, $08                                        ; $4839: $06 $08
	ld [$8204], sp                                   ; $483b: $08 $04 $82
	nop                                              ; $483e: $00
	ld bc, $0100                                     ; $483f: $01 $00 $01
	rlca                                             ; $4842: $07
	rlca                                             ; $4843: $07
	sbc e                                            ; $4844: $9b
	cp l                                             ; $4845: $bd
	adc a                                            ; $4846: $8f
	rra                                              ; $4847: $1f
	ld e, $7c                                        ; $4848: $1e $7c
	jr nc, jr_023_484f                               ; $484a: $30 $03

	rlca                                             ; $484c: $07
	rlca                                             ; $484d: $07
	ld [hl], b                                       ; $484e: $70

jr_023_484f:
	ldh [$e1], a                                     ; $484f: $e0 $e1
	add e                                            ; $4851: $83
	rst GetHLinHL                                          ; $4852: $cf
	db $fc                                           ; $4853: $fc
	ld hl, sp-$6e                                    ; $4854: $f8 $92
	ld [hl], b                                       ; $4856: $70
	ld a, [hl]                                       ; $4857: $7e
	ld a, l                                          ; $4858: $7d
	ld b, l                                          ; $4859: $45
	rlca                                             ; $485a: $07
	ld a, a                                          ; $485b: $7f
	rst $38                                          ; $485c: $ff
	rst $38                                          ; $485d: $ff
	or $81                                           ; $485e: $f6 $81
	add d                                            ; $4860: $82
	cp d                                             ; $4861: $ba
	ld hl, sp+$76                                    ; $4862: $f8 $76
	ei                                               ; $4864: $fb
	sub h                                            ; $4865: $94
	db $f4                                           ; $4866: $f4
	or $f3                                           ; $4867: $f6 $f3
	jp hl                                            ; $4869: $e9


	push hl                                          ; $486a: $e5
	ld [bc], a                                       ; $486b: $02
	ld de, $2f14                                     ; $486c: $11 $14 $2f
	rra                                              ; $486f: $1f
	rra                                              ; $4870: $1f
	ld a, e                                          ; $4871: $7b
	ld l, l                                          ; $4872: $6d
	ld a, a                                          ; $4873: $7f
	res 3, d                                         ; $4874: $cb $9a
	ld c, h                                          ; $4876: $4c
	ld h, [hl]                                       ; $4877: $66
	ld [hl-], a                                      ; $4878: $32
	sbc c                                            ; $4879: $99
	sbc h                                            ; $487a: $9c
	ld a, e                                          ; $487b: $7b
	sbc e                                            ; $487c: $9b
	jp c, $95ff                                      ; $487d: $da $ff $95

	cp $2f                                           ; $4880: $fe $2f
	rla                                              ; $4882: $17
	rla                                              ; $4883: $17
	dec bc                                           ; $4884: $0b
	adc a                                            ; $4885: $8f
	rst JumpTable                                          ; $4886: $c7
	db $e3                                           ; $4887: $e3
	pop af                                           ; $4888: $f1
	ld sp, hl                                        ; $4889: $f9
	ld a, e                                          ; $488a: $7b
	ld h, d                                          ; $488b: $62
	ld a, a                                          ; $488c: $7f
	and b                                            ; $488d: $a0
	rst SubAFromDE                                          ; $488e: $df
	ld a, a                                          ; $488f: $7f
	ld a, d                                          ; $4890: $7a
	ld e, b                                          ; $4891: $58
	sbc l                                            ; $4892: $9d
	pop hl                                           ; $4893: $e1
	ld sp, hl                                        ; $4894: $f9
	sbc $ff                                          ; $4895: $de $ff
	add b                                            ; $4897: $80
	ld c, $98                                        ; $4898: $0e $98
	ld [hl], b                                       ; $489a: $70
	ld sp, $0619                                     ; $489b: $31 $19 $06
	inc bc                                           ; $489e: $03
	add c                                            ; $489f: $81
	ccf                                              ; $48a0: $3f
	ld a, a                                          ; $48a1: $7f
	db $fc                                           ; $48a2: $fc
	di                                               ; $48a3: $f3
	rst SubAFromBC                                          ; $48a4: $e7
	rst GetHLinHL                                          ; $48a5: $cf
	rst SubAFromDE                                          ; $48a6: $df
	sbc $30                                          ; $48a7: $de $30
	ld b, e                                          ; $48a9: $43
	adc h                                            ; $48aa: $8c
	inc de                                           ; $48ab: $13
	inc h                                            ; $48ac: $24
	ld c, b                                          ; $48ad: $48
	ld d, b                                          ; $48ae: $50
	pop de                                           ; $48af: $d1
	rst $38                                          ; $48b0: $ff
	rra                                              ; $48b1: $1f
	rst $38                                          ; $48b2: $ff
	rst $38                                          ; $48b3: $ff
	rst FarCall                                          ; $48b4: $f7
	rst SubAFromHL                                          ; $48b5: $d7
	inc de                                           ; $48b6: $13
	sub a                                            ; $48b7: $97
	ld a, [bc]                                       ; $48b8: $0a
	ldh a, [rAUD1SWEEP]                              ; $48b9: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $48bb: $f0 $10
	jr jr_023_48f7                                   ; $48bd: $18 $38

	db $fd                                           ; $48bf: $fd
	ld [hl], d                                       ; $48c0: $72
	adc c                                            ; $48c1: $89
	sbc e                                            ; $48c2: $9b
	rst $38                                          ; $48c3: $ff
	db $fc                                           ; $48c4: $fc
	add b                                            ; $48c5: $80
	ccf                                              ; $48c6: $3f
	db $fd                                           ; $48c7: $fd
	sbc d                                            ; $48c8: $9a
	inc bc                                           ; $48c9: $03
	ld a, h                                          ; $48ca: $7c
	add b                                            ; $48cb: $80
	ccf                                              ; $48cc: $3f
	rst AddAOntoHL                                          ; $48cd: $ef
	db $dd                                           ; $48ce: $dd
	xor $9c                                          ; $48cf: $ee $9c
	ld c, $fe                                        ; $48d1: $0e $fe
	cp $dd                                           ; $48d3: $fe $dd
	dec hl                                           ; $48d5: $2b
	sub d                                            ; $48d6: $92
	db $eb                                           ; $48d7: $eb
	dec bc                                           ; $48d8: $0b
	ei                                               ; $48d9: $fb
	inc bc                                           ; $48da: $03
	adc a                                            ; $48db: $8f
	adc a                                            ; $48dc: $8f
	ld b, a                                          ; $48dd: $47
	ld b, a                                          ; $48de: $47
	ld hl, $1020                                     ; $48df: $21 $20 $10
	db $10                                           ; $48e2: $10
	ldh a, [$7a]                                     ; $48e3: $f0 $7a
	rst $38                                          ; $48e5: $ff
	ld [hl], a                                       ; $48e6: $77
	db $d3                                           ; $48e7: $d3
	ld a, e                                          ; $48e8: $7b
	and b                                            ; $48e9: $a0
	ld a, [hl]                                       ; $48ea: $7e
	rst JumpTable                                          ; $48eb: $c7
	sbc d                                            ; $48ec: $9a
	ld hl, sp+$7e                                    ; $48ed: $f8 $7e
	ccf                                              ; $48ef: $3f
	rst $38                                          ; $48f0: $ff
	ld a, a                                          ; $48f1: $7f
	ld a, e                                          ; $48f2: $7b
	ld e, $94                                        ; $48f3: $1e $94
	rlca                                             ; $48f5: $07
	add c                                            ; $48f6: $81

jr_023_48f7:
	ret nz                                           ; $48f7: $c0

	add b                                            ; $48f8: $80
	ld b, b                                          ; $48f9: $40
	jr nz, @+$12                                     ; $48fa: $20 $10

	ld [$0204], sp                                   ; $48fc: $08 $04 $02
	add c                                            ; $48ff: $81
	ld [hl], e                                       ; $4900: $73
	jp hl                                            ; $4901: $e9


	ld a, a                                          ; $4902: $7f
	ld a, l                                          ; $4903: $7d
	ld a, a                                          ; $4904: $7f
	add b                                            ; $4905: $80
	ldh a, [c]                                       ; $4906: $f2
	sub a                                            ; $4907: $97
	ld sp, $1810                                     ; $4908: $31 $10 $18
	ld [$060c], sp                                   ; $490b: $08 $0c $06
	ld [bc], a                                       ; $490e: $02
	inc bc                                           ; $490f: $03
	ld a, d                                          ; $4910: $7a
	ld c, d                                          ; $4911: $4a
	ld [hl], a                                       ; $4912: $77
	ld a, $9e                                        ; $4913: $3e $9e
	rlca                                             ; $4915: $07
	ld b, $c0                                        ; $4916: $06 $c0
	sbc l                                            ; $4918: $9d
	xor d                                            ; $4919: $aa
	ld d, a                                          ; $491a: $57
	ld [hl], l                                       ; $491b: $75
	ld [hl], d                                       ; $491c: $72
	ld a, a                                          ; $491d: $7f
	cp $66                                           ; $491e: $fe $66
	jr nc, jr_023_4993                               ; $4920: $30 $71

	ld [hl], d                                       ; $4922: $72
	sbc h                                            ; $4923: $9c
	ld e, [hl]                                       ; $4924: $5e
	adc $6f                                          ; $4925: $ce $6f
	ld l, l                                          ; $4927: $6d
	ld [hl], d                                       ; $4928: $72
	ld a, a                                          ; $4929: $7f
	cp h                                             ; $492a: $bc
	sbc d                                            ; $492b: $9a
	ld d, d                                          ; $492c: $52
	ld c, b                                          ; $492d: $48
	ld l, $24                                        ; $492e: $2e $24
	inc d                                            ; $4930: $14
	ld a, e                                          ; $4931: $7b
	adc [hl]                                         ; $4932: $8e
	sbc l                                            ; $4933: $9d
	db $ec                                           ; $4934: $ec
	or $7b                                           ; $4935: $f6 $7b
	ld l, a                                          ; $4937: $6f
	ld a, d                                          ; $4938: $7a

jr_023_4939:
	ld l, h                                          ; $4939: $6c
	sbc b                                            ; $493a: $98
	nop                                              ; $493b: $00
	ld l, c                                          ; $493c: $69
	ld e, h                                          ; $493d: $5c
	stop                                             ; $493e: $10 $00
	ld b, b                                          ; $4940: $40
	nop                                              ; $4941: $00
	ld a, c                                          ; $4942: $79
	db $db                                           ; $4943: $db
	ld l, c                                          ; $4944: $69
	jr nc, jr_023_4939                               ; $4945: $30 $f2

	sbc l                                            ; $4947: $9d
	ld c, h                                          ; $4948: $4c

jr_023_4949:
	jr nz, jr_023_4949                               ; $4949: $20 $fe

	sbc h                                            ; $494b: $9c
	ld bc, $1c18                                     ; $494c: $01 $18 $1c
	ld sp, hl                                        ; $494f: $f9
	ld a, a                                          ; $4950: $7f
	cp h                                             ; $4951: $bc
	sub c                                            ; $4952: $91
	add hl, de                                       ; $4953: $19
	inc e                                            ; $4954: $1c
	ld e, $3f                                        ; $4955: $1e $3f
	ccf                                              ; $4957: $3f
	ld a, a                                          ; $4958: $7f
	ld a, [hl]                                       ; $4959: $7e
	ld a, $19                                        ; $495a: $3e $19
	inc d                                            ; $495c: $14
	ld [de], a                                       ; $495d: $12
	add hl, hl                                       ; $495e: $29
	inc h                                            ; $495f: $24
	ld b, d                                          ; $4960: $42
	ld a, e                                          ; $4961: $7b
	ld c, h                                          ; $4962: $4c
	ld a, e                                          ; $4963: $7b
	dec [hl]                                         ; $4964: $35
	sbc l                                            ; $4965: $9d
	sbc a                                            ; $4966: $9f
	rst GetHLinHL                                          ; $4967: $cf
	ld a, e                                          ; $4968: $7b
	ld [hl-], a                                      ; $4969: $32
	ld a, a                                          ; $496a: $7f
	ld d, $9c                                        ; $496b: $16 $9c
	inc hl                                           ; $496d: $23
	sub c                                            ; $496e: $91
	ld c, b                                          ; $496f: $48
	ld [hl], a                                       ; $4970: $77
	sbc d                                            ; $4971: $9a
	sbc e                                            ; $4972: $9b
	cp a                                             ; $4973: $bf
	rst SubAFromDE                                          ; $4974: $df
	rst $38                                          ; $4975: $ff
	rst $38                                          ; $4976: $ff
	ld [hl], c                                       ; $4977: $71
	ld de, $0b7b                                     ; $4978: $11 $7b $0b
	sub l                                            ; $497b: $95
	ld e, h                                          ; $497c: $5c
	or h                                             ; $497d: $b4
	ret c                                            ; $497e: $d8

	and $e3                                          ; $497f: $e6 $e3
	add $98                                          ; $4981: $c6 $98
	db $e3                                           ; $4983: $e3
	db $d3                                           ; $4984: $d3
	ld a, e                                          ; $4985: $7b
	ld a, e                                          ; $4986: $7b
	ld b, b                                          ; $4987: $40
	adc e                                            ; $4988: $8b
	ccf                                              ; $4989: $3f
	ld a, b                                          ; $498a: $78
	ld h, e                                          ; $498b: $63
	inc c                                            ; $498c: $0c
	add hl, bc                                       ; $498d: $09
	ld a, [bc]                                       ; $498e: $0a
	dec c                                            ; $498f: $0d
	adc e                                            ; $4990: $8b
	ld l, a                                          ; $4991: $6f
	ld a, a                                          ; $4992: $7f

jr_023_4993:
	adc a                                            ; $4993: $8f
	db $fc                                           ; $4994: $fc
	ld sp, hl                                        ; $4995: $f9
	ei                                               ; $4996: $fb
	rst $38                                          ; $4997: $ff
	cp $fd                                           ; $4998: $fe $fd
	ld a, a                                          ; $499a: $7f
	db $fc                                           ; $499b: $fc
	ret nz                                           ; $499c: $c0

	ld a, c                                          ; $499d: $79
	ld [hl], h                                       ; $499e: $74
	db $db                                           ; $499f: $db
	rst $38                                          ; $49a0: $ff
	sbc c                                            ; $49a1: $99
	xor $a8                                          ; $49a2: $ee $a8
	or b                                             ; $49a4: $b0
	and c                                            ; $49a5: $a1
	add $98                                          ; $49a6: $c6 $98
	ret c                                            ; $49a8: $d8

	rst $38                                          ; $49a9: $ff
	sbc [hl]                                         ; $49aa: $9e
	ret nz                                           ; $49ab: $c0

	ld [hl], a                                       ; $49ac: $77
	ld b, e                                          ; $49ad: $43
	sub l                                            ; $49ae: $95
	jr c, jr_023_4a21                                ; $49af: $38 $70

	adc b                                            ; $49b1: $88
	adc b                                            ; $49b2: $88
	add h                                            ; $49b3: $84
	call nz, $c7c4                                   ; $49b4: $c4 $c4 $c7
	and $f8                                          ; $49b7: $e6 $f8
	ld [hl], e                                       ; $49b9: $73
	ld b, b                                          ; $49ba: $40
	ld l, [hl]                                       ; $49bb: $6e
	ei                                               ; $49bc: $fb

jr_023_49bd:
	ld a, l                                          ; $49bd: $7d
	inc l                                            ; $49be: $2c
	ld a, a                                          ; $49bf: $7f
	push af                                          ; $49c0: $f5
	sbc [hl]                                         ; $49c1: $9e
	ld e, a                                          ; $49c2: $5f
	ld a, e                                          ; $49c3: $7b
	and e                                            ; $49c4: $a3
	ld a, e                                          ; $49c5: $7b
	call c, $8095                                    ; $49c6: $dc $95 $80
	ldh [$c0], a                                     ; $49c9: $e0 $c0
	ret nz                                           ; $49cb: $c0

	add b                                            ; $49cc: $80
	ld a, b                                          ; $49cd: $78
	rst $38                                          ; $49ce: $ff
	rst SubAFromBC                                          ; $49cf: $e7
	ld sp, hl                                        ; $49d0: $f9
	db $fc                                           ; $49d1: $fc
	ld a, e                                          ; $49d2: $7b
	ld l, l                                          ; $49d3: $6d
	sbc c                                            ; $49d4: $99
	rst $38                                          ; $49d5: $ff
	add a                                            ; $49d6: $87
	ld a, b                                          ; $49d7: $78
	ld e, $07                                        ; $49d8: $1e $07
	add b                                            ; $49da: $80
	ld [hl], l                                       ; $49db: $75
	jr z, jr_023_49bd                                ; $49dc: $28 $df

	sub b                                            ; $49de: $90
	sbc [hl]                                         ; $49df: $9e
	ld d, b                                          ; $49e0: $50
	ld l, e                                          ; $49e1: $6b
	add b                                            ; $49e2: $80
	sbc [hl]                                         ; $49e3: $9e
	ldh a, [$66]                                     ; $49e4: $f0 $66
	ld hl, sp+$64                                    ; $49e6: $f8 $64
	ld h, b                                          ; $49e8: $60
	ld [bc], a                                       ; $49e9: $02
	ret nz                                           ; $49ea: $c0

	ld c, e                                          ; $49eb: $4b
	ldh a, [$7d]                                     ; $49ec: $f0 $7d
	ld [hl], d                                       ; $49ee: $72
	sbc [hl]                                         ; $49ef: $9e
	cp e                                             ; $49f0: $bb
	ld a, c                                          ; $49f1: $79
	ld [hl], d                                       ; $49f2: $72
	ld a, [hl]                                       ; $49f3: $7e
	xor d                                            ; $49f4: $aa
	ld l, l                                          ; $49f5: $6d
	ld [hl], d                                       ; $49f6: $72
	ld a, a                                          ; $49f7: $7f
	cp h                                             ; $49f8: $bc
	ld l, l                                          ; $49f9: $6d
	ld [hl], d                                       ; $49fa: $72
	ld a, [hl]                                       ; $49fb: $7e
	xor d                                            ; $49fc: $aa
	ld l, l                                          ; $49fd: $6d
	ld [hl], d                                       ; $49fe: $72

jr_023_49ff:
	ld a, d                                          ; $49ff: $7a
	jr nc, jr_023_49ff                               ; $4a00: $30 $fd

	ld a, l                                          ; $4a02: $7d
	ld b, $9e                                        ; $4a03: $06 $9e
	ld h, b                                          ; $4a05: $60
	ld l, b                                          ; $4a06: $68
	db $fd                                           ; $4a07: $fd
	sbc [hl]                                         ; $4a08: $9e
	ret nz                                           ; $4a09: $c0

	halt                                             ; $4a0a: $76
	pop de                                           ; $4a0b: $d1
	sbc l                                            ; $4a0c: $9d
	inc e                                            ; $4a0d: $1c
	inc c                                            ; $4a0e: $0c
	di                                               ; $4a0f: $f3
	sbc [hl]                                         ; $4a10: $9e
	ld [bc], a                                       ; $4a11: $02
	or $7f                                           ; $4a12: $f6 $7f
	ld b, [hl]                                       ; $4a14: $46
	ld a, a                                          ; $4a15: $7f
	inc bc                                           ; $4a16: $03
	sub b                                            ; $4a17: $90
	ld e, a                                          ; $4a18: $5f
	ccf                                              ; $4a19: $3f
	ld a, $2f                                        ; $4a1a: $3e $2f
	ld h, c                                          ; $4a1c: $61
	ld [hl], b                                       ; $4a1d: $70
	ld e, b                                          ; $4a1e: $58
	ld b, h                                          ; $4a1f: $44
	ld h, d                                          ; $4a20: $62

jr_023_4a21:
	ld hl, $3021                                     ; $4a21: $21 $21 $30
	rst SubAFromBC                                          ; $4a24: $e7
	di                                               ; $4a25: $f3
	ld sp, hl                                        ; $4a26: $f9
	ld [hl], h                                       ; $4a27: $74
	jp hl                                            ; $4a28: $e9


	sub a                                            ; $4a29: $97
	rst $38                                          ; $4a2a: $ff
	inc h                                            ; $4a2b: $24
	sub d                                            ; $4a2c: $92
	ld c, c                                          ; $4a2d: $49
	inc h                                            ; $4a2e: $24
	ld [de], a                                       ; $4a2f: $12
	add hl, bc                                       ; $4a30: $09
	add h                                            ; $4a31: $84

jr_023_4a32:
	ld [hl], l                                       ; $4a32: $75
	ld l, l                                          ; $4a33: $6d
	add d                                            ; $4a34: $82
	cp $67                                           ; $4a35: $fe $67
	add hl, bc                                       ; $4a37: $09
	or e                                             ; $4a38: $b3
	rst $38                                          ; $4a39: $ff
	ld a, b                                          ; $4a3a: $78
	rra                                              ; $4a3b: $1f
	ld c, $9e                                        ; $4a3c: $0e $9e
	ld h, a                                          ; $4a3e: $67
	rrca                                             ; $4a3f: $0f
	cp a                                             ; $4a40: $bf
	rst $38                                          ; $4a41: $ff
	adc h                                            ; $4a42: $8c
	ld sp, $9f47                                     ; $4a43: $31 $47 $9f
	ccf                                              ; $4a46: $3f
	rst $38                                          ; $4a47: $ff
	db $fd                                           ; $4a48: $fd
	ld sp, hl                                        ; $4a49: $f9
	adc a                                            ; $4a4a: $8f
	ccf                                              ; $4a4b: $3f
	ld a, [hl]                                       ; $4a4c: $7e
	rst $38                                          ; $4a4d: $ff
	ld hl, sp-$1a                                    ; $4a4e: $f8 $e6
	ret                                              ; $4a50: $c9


	ld sp, hl                                        ; $4a51: $f9
	ld a, c                                          ; $4a52: $79
	inc h                                            ; $4a53: $24
	db $dd                                           ; $4a54: $dd
	rst $38                                          ; $4a55: $ff
	sub [hl]                                         ; $4a56: $96
	ld a, a                                          ; $4a57: $7f
	ld hl, sp-$27                                    ; $4a58: $f8 $d9
	ld h, h                                          ; $4a5a: $64
	adc [hl]                                         ; $4a5b: $8e
	dec a                                            ; $4a5c: $3d
	ret                                              ; $4a5d: $c9


	ld l, a                                          ; $4a5e: $6f
	ld d, h                                          ; $4a5f: $54
	db $dd                                           ; $4a60: $dd
	rst $38                                          ; $4a61: $ff
	sub h                                            ; $4a62: $94
	rst SubAFromDE                                          ; $4a63: $df
	rst GetHLinHL                                          ; $4a64: $cf
	rst $38                                          ; $4a65: $ff
	rst $38                                          ; $4a66: $ff
	ld h, c                                          ; $4a67: $61
	ld h, b                                          ; $4a68: $60
	and b                                            ; $4a69: $a0
	ld h, b                                          ; $4a6a: $60
	ld [hl], b                                       ; $4a6b: $70

jr_023_4a6c:
	rst $38                                          ; $4a6c: $ff
	rst $38                                          ; $4a6d: $ff
	halt                                             ; $4a6e: $76
	ret c                                            ; $4a6f: $d8

	ld a, e                                          ; $4a70: $7b
	cp l                                             ; $4a71: $bd
	adc l                                            ; $4a72: $8d
	ld hl, sp-$10                                    ; $4a73: $f8 $f0
	add b                                            ; $4a75: $80
	ld bc, $0703                                     ; $4a76: $01 $03 $07
	ld e, $e0                                        ; $4a79: $1e $e0
	add b                                            ; $4a7b: $80
	nop                                              ; $4a7c: $00
	ret nz                                           ; $4a7d: $c0

	nop                                              ; $4a7e: $00
	cp $f5                                           ; $4a7f: $fe $f5
	ld a, [$0e05]                                    ; $4a81: $fa $05 $0e
	ld e, $de                                        ; $4a84: $1e $de
	rst $38                                          ; $4a86: $ff
	sbc l                                            ; $4a87: $9d
	db $fd                                           ; $4a88: $fd
	ld c, $7b                                        ; $4a89: $0e $7b
	ld a, $9a                                        ; $4a8b: $3e $9a
	ccf                                              ; $4a8d: $3f
	jr c, jr_023_4ac0                                ; $4a8e: $38 $30

	jr nz, jr_023_4a32                               ; $4a90: $20 $a0

	ld a, d                                          ; $4a92: $7a
	call nc, $e09c                                   ; $4a93: $d4 $9c $e0
	rst SubAFromBC                                          ; $4a96: $e7
	rst AddAOntoHL                                          ; $4a97: $ef
	halt                                             ; $4a98: $76
	xor [hl]                                         ; $4a99: $ae
	ld a, a                                          ; $4a9a: $7f
	push de                                          ; $4a9b: $d5
	sbc [hl]                                         ; $4a9c: $9e
	ld c, $fe                                        ; $4a9d: $0e $fe
	ld a, b                                          ; $4a9f: $78
	ld h, l                                          ; $4aa0: $65
	sbc l                                            ; $4aa1: $9d
	inc bc                                           ; $4aa2: $03
	pop af                                           ; $4aa3: $f1
	db $db                                           ; $4aa4: $db
	rst $38                                          ; $4aa5: $ff

jr_023_4aa6:
	ld a, c                                          ; $4aa6: $79
	ld d, l                                          ; $4aa7: $55
	call c, $d910                                    ; $4aa8: $dc $10 $d9
	ldh a, [$f1]                                     ; $4aab: $f0 $f1
	ld [bc], a                                       ; $4aad: $02
	ret nz                                           ; $4aae: $c0

	ld c, e                                          ; $4aaf: $4b
	ldh a, [$6d]                                     ; $4ab0: $f0 $6d
	ld [hl], d                                       ; $4ab2: $72
	ld e, a                                          ; $4ab3: $5f
	ldh a, [$6d]                                     ; $4ab4: $f0 $6d
	ld [hl], d                                       ; $4ab6: $72
	ld a, [hl]                                       ; $4ab7: $7e
	xor d                                            ; $4ab8: $aa
	ld l, l                                          ; $4ab9: $6d
	ld [hl], d                                       ; $4aba: $72
	rst SubAFromDE                                          ; $4abb: $df
	rrca                                             ; $4abc: $0f
	rst SubAFromDE                                          ; $4abd: $df
	jr nz, jr_023_4b3d                               ; $4abe: $20 $7d

jr_023_4ac0:
	ld [hl], e                                       ; $4ac0: $73
	sbc e                                            ; $4ac1: $9b
	inc c                                            ; $4ac2: $0c
	inc b                                            ; $4ac3: $04
	ld b, $82                                        ; $4ac4: $06 $82
	ld [hl], l                                       ; $4ac6: $75
	call nc, $797b                                   ; $4ac7: $d4 $7b $79
	sbc [hl]                                         ; $4aca: $9e
	cp $f0                                           ; $4acb: $fe $f0
	sbc [hl]                                         ; $4acd: $9e
	inc b                                            ; $4ace: $04
	di                                               ; $4acf: $f3
	ld a, b                                          ; $4ad0: $78
	jr c, jr_023_4a6c                                ; $4ad1: $38 $99

	rra                                              ; $4ad3: $1f
	rla                                              ; $4ad4: $17
	rla                                              ; $4ad5: $17

jr_023_4ad6:
	rrca                                             ; $4ad6: $0f
	rrca                                             ; $4ad7: $0f
	ld sp, $11de                                     ; $4ad8: $31 $de $11
	rst SubAFromDE                                          ; $4adb: $df
	add hl, de                                       ; $4adc: $19
	rst SubAFromDE                                          ; $4add: $df
	add hl, bc                                       ; $4ade: $09
	rst GetHLinHL                                          ; $4adf: $cf
	rst $38                                          ; $4ae0: $ff
	ld l, d                                          ; $4ae1: $6a
	ld h, a                                          ; $4ae2: $67
	ld a, h                                          ; $4ae3: $7c
	ld l, e                                          ; $4ae4: $6b
	ld [hl], d                                       ; $4ae5: $72
	xor b                                            ; $4ae6: $a8
	sbc b                                            ; $4ae7: $98
	ld sp, hl                                        ; $4ae8: $f9
	ld hl, sp-$08                                    ; $4ae9: $f8 $f8
	ld a, b                                          ; $4aeb: $78
	jr c, jr_023_4aa6                                ; $4aec: $38 $b8

	cp b                                             ; $4aee: $b8
	ld a, e                                          ; $4aef: $7b
	and e                                            ; $4af0: $a3
	ld a, a                                          ; $4af1: $7f
	ld sp, hl                                        ; $4af2: $f9
	rst SubAFromDE                                          ; $4af3: $df
	db $10                                           ; $4af4: $10
	rst SubAFromDE                                          ; $4af5: $df
	add b                                            ; $4af6: $80
	sbc e                                            ; $4af7: $9b
	ld e, [hl]                                       ; $4af8: $5e

jr_023_4af9:
	ld e, $0e                                        ; $4af9: $1e $0e
	rrca                                             ; $4afb: $0f
	ld a, e                                          ; $4afc: $7b
	ld bc, $ff9d                                     ; $4afd: $01 $9d $ff
	inc de                                           ; $4b00: $13
	ld a, d                                          ; $4b01: $7a
	inc sp                                           ; $4b02: $33
	db $dd                                           ; $4b03: $dd
	ld bc, $7978                                     ; $4b04: $01 $78 $79
	sbc c                                            ; $4b07: $99
	rra                                              ; $4b08: $1f
	adc a                                            ; $4b09: $8f
	rst JumpTable                                          ; $4b0a: $c7
	jp $fce1                                         ; $4b0b: $c3 $e1 $fc


	jp c, $dfff                                      ; $4b0e: $da $ff $df

	ldh [$98], a                                     ; $4b11: $e0 $98
	ret nz                                           ; $4b13: $c0

	push de                                          ; $4b14: $d5
	sub $96                                          ; $4b15: $d6 $96
	or [hl]                                          ; $4b17: $b6
	or [hl]                                          ; $4b18: $b6
	jr nz, jr_023_4af9                               ; $4b19: $20 $de

	ret nz                                           ; $4b1b: $c0

	sbc [hl]                                         ; $4b1c: $9e
	add b                                            ; $4b1d: $80
	sbc $92                                          ; $4b1e: $de $92
	ld a, l                                          ; $4b20: $7d
	ld c, h                                          ; $4b21: $4c
	ld l, [hl]                                       ; $4b22: $6e
	adc [hl]                                         ; $4b23: $8e
	ld a, [hl]                                       ; $4b24: $7e
	or c                                             ; $4b25: $b1
	ld a, [hl]                                       ; $4b26: $7e
	or b                                             ; $4b27: $b0
	sbc h                                            ; $4b28: $9c
	rrca                                             ; $4b29: $0f
	rra                                              ; $4b2a: $1f
	ld e, a                                          ; $4b2b: $5f
	ld a, c                                          ; $4b2c: $79
	ld h, $d3                                        ; $4b2d: $26 $d3
	rst $38                                          ; $4b2f: $ff
	db $dd                                           ; $4b30: $dd
	db $fc                                           ; $4b31: $fc
	ld [hl], a                                       ; $4b32: $77
	ei                                               ; $4b33: $fb
	ld h, a                                          ; $4b34: $67
	di                                               ; $4b35: $f3
	rst SubAFromDE                                          ; $4b36: $df
	jr nz, jr_023_4ad6                               ; $4b37: $20 $9d

	ld b, b                                          ; $4b39: $40
	add b                                            ; $4b3a: $80
	db $fd                                           ; $4b3b: $fd
	ld a, e                                          ; $4b3c: $7b

jr_023_4b3d:
	cp b                                             ; $4b3d: $b8
	ld [hl], e                                       ; $4b3e: $73
	ld hl, sp+$02                                    ; $4b3f: $f8 $02
	ret nz                                           ; $4b41: $c0

	inc bc                                           ; $4b42: $03
	ldh a, [rVBK]                                    ; $4b43: $f0 $4f
	ldh a, [$71]                                     ; $4b45: $f0 $71
	ld [hl], d                                       ; $4b47: $72
	sbc h                                            ; $4b48: $9c
	ld d, [hl]                                       ; $4b49: $56
	xor e                                            ; $4b4a: $ab
	ld d, l                                          ; $4b4b: $55
	ld [hl], c                                       ; $4b4c: $71
	ld [hl], d                                       ; $4b4d: $72
	ld a, c                                          ; $4b4e: $79
	dec l                                            ; $4b4f: $2d
	sbc l                                            ; $4b50: $9d
	jp nz, Jump_023_79c1                             ; $4b51: $c2 $c1 $79

	add hl, de                                       ; $4b54: $19
	sbc h                                            ; $4b55: $9c
	ld [hl], b                                       ; $4b56: $70
	ld a, b                                          ; $4b57: $78
	cp h                                             ; $4b58: $bc
	jp c, $9eff                                      ; $4b59: $da $ff $9e

	ld a, a                                          ; $4b5c: $7f
	ld a, c                                          ; $4b5d: $79
	ld a, d                                          ; $4b5e: $7a
	ld a, c                                          ; $4b5f: $79
	ld [hl], d                                       ; $4b60: $72
	rst SubAFromDE                                          ; $4b61: $df
	jr nz, jr_023_4bd1                               ; $4b62: $20 $6d

	ld [hl], d                                       ; $4b64: $72
	ld a, a                                          ; $4b65: $7f
	push hl                                          ; $4b66: $e5
	pop af                                           ; $4b67: $f1
	sbc l                                            ; $4b68: $9d
	dec bc                                           ; $4b69: $0b
	rlca                                             ; $4b6a: $07
	ld a, c                                          ; $4b6b: $79
	dec sp                                           ; $4b6c: $3b
	cp $9d                                           ; $4b6d: $fe $9d
	dec c                                            ; $4b6f: $0d
	inc b                                            ; $4b70: $04
	ld l, a                                          ; $4b71: $6f
	ld hl, sp-$22                                    ; $4b72: $f8 $de
	rst $38                                          ; $4b74: $ff
	sbc d                                            ; $4b75: $9a
	rst FarCall                                          ; $4b76: $f7
	rst SubAFromBC                                          ; $4b77: $e7
	db $e3                                           ; $4b78: $e3
	jp Jump_023_7943                                 ; $4b79: $c3 $43 $79


	ld [hl], $95                                     ; $4b7c: $36 $95
	ld [$9c98], sp                                   ; $4b7e: $08 $98 $9c
	cp h                                             ; $4b81: $bc
	ld a, h                                          ; $4b82: $7c
	rst $38                                          ; $4b83: $ff
	rst $38                                          ; $4b84: $ff
	cpl                                              ; $4b85: $2f
	rra                                              ; $4b86: $1f
	inc d                                            ; $4b87: $14
	ld a, b                                          ; $4b88: $78
	adc e                                            ; $4b89: $8b
	rst SubAFromDE                                          ; $4b8a: $df
	rst $38                                          ; $4b8b: $ff
	rst SubAFromDE                                          ; $4b8c: $df
	pop af                                           ; $4b8d: $f1
	sbc [hl]                                         ; $4b8e: $9e
	ei                                               ; $4b8f: $fb
	sbc $7f                                          ; $4b90: $de $7f
	rst SubAFromDE                                          ; $4b92: $df
	pop af                                           ; $4b93: $f1
	sbc c                                            ; $4b94: $99
	ld sp, $bb13                                     ; $4b95: $31 $13 $bb
	ld l, e                                          ; $4b98: $6b
	ld l, a                                          ; $4b99: $6f
	and a                                            ; $4b9a: $a7
	ld l, h                                          ; $4b9b: $6c
	ld [hl-], a                                      ; $4b9c: $32
	sbc l                                            ; $4b9d: $9d
	add sp, -$14                                     ; $4b9e: $e8 $ec
	jp c, $9eff                                      ; $4ba0: $da $ff $9e

	db $fd                                           ; $4ba3: $fd
	ld a, d                                          ; $4ba4: $7a
	ldh a, [hDisp1_OBP0]                                     ; $4ba5: $f0 $93
	inc bc                                           ; $4ba7: $03
	inc b                                            ; $4ba8: $04
	inc b                                            ; $4ba9: $04
	ld c, $1f                                        ; $4baa: $0e $1f
	pop af                                           ; $4bac: $f1
	jr nc, jr_023_4be7                               ; $4bad: $30 $38

	inc a                                            ; $4baf: $3c
	sbc h                                            ; $4bb0: $9c
	sbc [hl]                                         ; $4bb1: $9e
	sbc [hl]                                         ; $4bb2: $9e
	ld a, c                                          ; $4bb3: $79
	ld a, [hl]                                       ; $4bb4: $7e
	adc l                                            ; $4bb5: $8d
	rst AddAOntoHL                                          ; $4bb6: $ef
	rst SubAFromBC                                          ; $4bb7: $e7
	rst FarCall                                          ; $4bb8: $f7
	di                                               ; $4bb9: $f3
	di                                               ; $4bba: $f3
	ld a, e                                          ; $4bbb: $7b
	or [hl]                                          ; $4bbc: $b6
	jp c, Jump_023_4f7d                              ; $4bbd: $da $7d $4f

	daa                                              ; $4bc0: $27
	sub e                                            ; $4bc1: $93
	db $d3                                           ; $4bc2: $d3
	ld [hl], c                                       ; $4bc3: $71
	or [hl]                                          ; $4bc4: $b6
	or a                                             ; $4bc5: $b7
	rst $38                                          ; $4bc6: $ff
	ld hl, sp+$70                                    ; $4bc7: $f8 $70
	call c, Call_023_4f69                            ; $4bc9: $dc $69 $4f
	sub a                                            ; $4bcc: $97
	ld e, b                                          ; $4bcd: $58
	db $f4                                           ; $4bce: $f4
	or h                                             ; $4bcf: $b4
	sub d                                            ; $4bd0: $92

jr_023_4bd1:
	ld b, d                                          ; $4bd1: $42
	ld b, d                                          ; $4bd2: $42
	ld b, e                                          ; $4bd3: $43
	rst GetHLinHL                                          ; $4bd4: $cf
	sbc $c0                                          ; $4bd5: $de $c0
	sbc d                                            ; $4bd7: $9a
	and b                                            ; $4bd8: $a0
	sub c                                            ; $4bd9: $91
	adc d                                            ; $4bda: $8a
	add h                                            ; $4bdb: $84
	ld b, [hl]                                       ; $4bdc: $46
	reti                                             ; $4bdd: $d9


	rst $38                                          ; $4bde: $ff
	sub a                                            ; $4bdf: $97
	ld c, [hl]                                       ; $4be0: $4e
	ld b, [hl]                                       ; $4be1: $46
	ld h, e                                          ; $4be2: $63
	and c                                            ; $4be3: $a1
	ld de, $0810                                     ; $4be4: $11 $10 $08

jr_023_4be7:
	ld [$4a66], sp                                   ; $4be7: $08 $66 $4a
	ld h, h                                          ; $4bea: $64
	cp b                                             ; $4beb: $b8
	ld d, a                                          ; $4bec: $57
	ld hl, sp-$01                                    ; $4bed: $f8 $ff
	ld l, b                                          ; $4bef: $68
	ld b, e                                          ; $4bf0: $43
	ld a, b                                          ; $4bf1: $78
	add hl, sp                                       ; $4bf2: $39
	ld [bc], a                                       ; $4bf3: $02
	ret nc                                           ; $4bf4: $d0

	inc bc                                           ; $4bf5: $03
	ldh a, [rVBK]                                    ; $4bf6: $f0 $4f
	ldh a, [$97]                                     ; $4bf8: $f0 $97
	sbc h                                            ; $4bfa: $9c
	sbc $ce                                          ; $4bfb: $de $ce
	ld l, a                                          ; $4bfd: $6f
	and a                                            ; $4bfe: $a7
	ld d, a                                          ; $4bff: $57
	cp e                                             ; $4c00: $bb
	ld e, c                                          ; $4c01: $59
	ld [hl], l                                       ; $4c02: $75
	ld [hl], d                                       ; $4c03: $72
	ld a, l                                          ; $4c04: $7d
	ld [hl], c                                       ; $4c05: $71
	rst SubAFromDE                                          ; $4c06: $df
	rlca                                             ; $4c07: $07
	ld l, l                                          ; $4c08: $6d
	ld [hl], d                                       ; $4c09: $72
	ld a, [hl]                                       ; $4c0a: $7e
	xor d                                            ; $4c0b: $aa
	ld l, l                                          ; $4c0c: $6d
	ld [hl], d                                       ; $4c0d: $72
	ld l, a                                          ; $4c0e: $6f
	ld [hl], b                                       ; $4c0f: $70
	ld [hl], a                                       ; $4c10: $77
	ld [hl], l                                       ; $4c11: $75
	jp hl                                            ; $4c12: $e9


	sub d                                            ; $4c13: $92
	ld b, e                                          ; $4c14: $43
	ld hl, $0911                                     ; $4c15: $21 $11 $09
	dec b                                            ; $4c18: $05
	inc b                                            ; $4c19: $04
	ld [bc], a                                       ; $4c1a: $02
	ld bc, $3e7c                                     ; $4c1b: $01 $7c $3e
	ld e, $0e                                        ; $4c1e: $1e $0e
	ld b, $7a                                        ; $4c20: $06 $7a
	and h                                            ; $4c22: $a4
	sub a                                            ; $4c23: $97
	add e                                            ; $4c24: $83
	pop bc                                           ; $4c25: $c1
	pop bc                                           ; $4c26: $c1
	jp $c5c3                                         ; $4c27: $c3 $c3 $c5


	push hl                                          ; $4c2a: $e5
	ld [$b07b], a                                    ; $4c2b: $ea $7b $b0
	sbc $3f                                          ; $4c2e: $de $3f
	rst SubAFromDE                                          ; $4c30: $df
	rra                                              ; $4c31: $1f
	sbc d                                            ; $4c32: $9a
	and e                                            ; $4c33: $a3
	ret nc                                           ; $4c34: $d0

	add sp, -$19                                     ; $4c35: $e8 $e7
	ldh a, [$79]                                     ; $4c37: $f0 $79
	ldh [c], a                                       ; $4c39: $e2
	sub c                                            ; $4c3a: $91
	rst SubAFromBC                                          ; $4c3b: $e7
	inc sp                                           ; $4c3c: $33
	jr jr_023_4c5e                                   ; $4c3d: $18 $1f

	rrca                                             ; $4c3f: $0f
	inc bc                                           ; $4c40: $03
	add b                                            ; $4c41: $80
	add b                                            ; $4c42: $80
	push hl                                          ; $4c43: $e5
	dec b                                            ; $4c44: $05
	dec de                                           ; $4c45: $1b
	rst SubAFromBC                                          ; $4c46: $e7
	rrca                                             ; $4c47: $0f
	rrca                                             ; $4c48: $0f
	sbc $ff                                          ; $4c49: $de $ff
	sub a                                            ; $4c4b: $97
	rst SubAFromBC                                          ; $4c4c: $e7
	inc e                                            ; $4c4d: $1c
	ld hl, sp-$10                                    ; $4c4e: $f8 $f0
	pop af                                           ; $4c50: $f1
	ld bc, $cf01                                     ; $4c51: $01 $01 $cf
	ld a, d                                          ; $4c54: $7a
	add $dd                                          ; $4c55: $c6 $dd
	rst $38                                          ; $4c57: $ff
	sub b                                            ; $4c58: $90
	ld a, e                                          ; $4c59: $7b
	ld a, c                                          ; $4c5a: $79
	cp c                                             ; $4c5b: $b9
	cp c                                             ; $4c5c: $b9
	xor b                                            ; $4c5d: $a8

jr_023_4c5e:
	xor b                                            ; $4c5e: $a8
	and c                                            ; $4c5f: $a1
	add a                                            ; $4c60: $87
	ld e, b                                          ; $4c61: $58
	db $dd                                           ; $4c62: $dd
	inc b                                            ; $4c63: $04
	ld a, $be                                        ; $4c64: $3e $be
	cp a                                             ; $4c66: $bf
	cp a                                             ; $4c67: $bf
	ld a, b                                          ; $4c68: $78
	ld h, a                                          ; $4c69: $67
	add b                                            ; $4c6a: $80
	rst $38                                          ; $4c6b: $ff
	jp $c1c3                                         ; $4c6c: $c3 $c3 $c1


	pop bc                                           ; $4c6f: $c1
	add a                                            ; $4c70: $87
	ld [hl], b                                       ; $4c71: $70
	add a                                            ; $4c72: $87
	cp $7b                                           ; $4c73: $fe $7b
	dec [hl]                                         ; $4c75: $35
	dec de                                           ; $4c76: $1b
	rst AddAOntoHL                                          ; $4c77: $ef
	add a                                            ; $4c78: $87
	rst $38                                          ; $4c79: $ff
	ld a, b                                          ; $4c7a: $78
	ld bc, $ce87                                     ; $4c7b: $01 $87 $ce
	db $fc                                           ; $4c7e: $fc
	ldh a, [$f8]                                     ; $4c7f: $f0 $f8
	add hl, hl                                       ; $4c81: $29
	ldh a, [hDisp1_WX]                                     ; $4c82: $f0 $96
	ld l, e                                          ; $4c84: $6b
	push af                                          ; $4c85: $f5
	ei                                               ; $4c86: $fb
	cp $fd                                           ; $4c87: $fe $fd
	rst $38                                          ; $4c89: $ff
	sub h                                            ; $4c8a: $94
	ld a, a                                          ; $4c8b: $7f
	ld sp, hl                                        ; $4c8c: $f9
	sbc h                                            ; $4c8d: $9c
	ld c, $06                                        ; $4c8e: $0e $06
	inc bc                                           ; $4c90: $03
	inc bc                                           ; $4c91: $03
	dec b                                            ; $4c92: $05
	add e                                            ; $4c93: $83
	add a                                            ; $4c94: $87
	ld c, a                                          ; $4c95: $4f
	ld [hl], a                                       ; $4c96: $77
	pop de                                           ; $4c97: $d1
	ld a, c                                          ; $4c98: $79
	ld [$fc99], sp                                   ; $4c99: $08 $99 $fc
	ld [hl], d                                       ; $4c9c: $72
	ld h, c                                          ; $4c9d: $61
	ldh [hDisp1_SCY], a                                     ; $4c9e: $e0 $90
	add b                                            ; $4ca0: $80
	ld a, d                                          ; $4ca1: $7a
	inc c                                            ; $4ca2: $0c
	adc c                                            ; $4ca3: $89
	ei                                               ; $4ca4: $fb
	db $fc                                           ; $4ca5: $fc
	ld hl, sp-$20                                    ; $4ca6: $f8 $e0
	add b                                            ; $4ca8: $80
	ret nz                                           ; $4ca9: $c0

	ld h, b                                          ; $4caa: $60
	ld sp, $0f1b                                     ; $4cab: $31 $1b $0f
	sbc a                                            ; $4cae: $9f
	rst $38                                          ; $4caf: $ff
	ld c, $28                                        ; $4cb0: $0e $28
	jr nc, @-$3e                                     ; $4cb2: $30 $c0

	nop                                              ; $4cb4: $00
	inc bc                                           ; $4cb5: $03
	rlca                                             ; $4cb6: $07
	rra                                              ; $4cb7: $1f
	rlca                                             ; $4cb8: $07
	rra                                              ; $4cb9: $1f
	ld l, [hl]                                       ; $4cba: $6e
	ld [hl], a                                       ; $4cbb: $77
	ld [bc], a                                       ; $4cbc: $02
	ldh [$03], a                                     ; $4cbd: $e0 $03
	ldh a, [rVBK]                                    ; $4cbf: $f0 $4f
	ldh a, [$7d]                                     ; $4cc1: $f0 $7d
	ld [hl], d                                       ; $4cc3: $72
	sbc [hl]                                         ; $4cc4: $9e
	xor [hl]                                         ; $4cc5: $ae
	ld a, c                                          ; $4cc6: $79
	ld [hl], d                                       ; $4cc7: $72
	ld a, a                                          ; $4cc8: $7f
	ldh a, [$6d]                                     ; $4cc9: $f0 $6d
	ld [hl], d                                       ; $4ccb: $72
	ld [hl], l                                       ; $4ccc: $75
	ld [$7275], sp                                   ; $4ccd: $08 $75 $72
	ld a, [hl]                                       ; $4cd0: $7e
	xor d                                            ; $4cd1: $aa
	ld l, l                                          ; $4cd2: $6d
	ld [hl], d                                       ; $4cd3: $72
	ld a, [hl]                                       ; $4cd4: $7e
	ld a, [$726d]                                    ; $4cd5: $fa $6d $72
	sbc l                                            ; $4cd8: $9d
	jr jr_023_4ce3                                   ; $4cd9: $18 $08

	ld l, l                                          ; $4cdb: $6d
	ld [hl], d                                       ; $4cdc: $72
	ld a, a                                          ; $4cdd: $7f
	ld b, b                                          ; $4cde: $40
	pop af                                           ; $4cdf: $f1
	ld h, [hl]                                       ; $4ce0: $66
	daa                                              ; $4ce1: $27
	ld h, a                                          ; $4ce2: $67

jr_023_4ce3:
	ld hl, sp-$7c                                    ; $4ce3: $f8 $84
	ld l, d                                          ; $4ce5: $6a
	ld [$76b6], a                                    ; $4ce6: $ea $b6 $76
	ld d, [hl]                                       ; $4ce9: $56
	dec [hl]                                         ; $4cea: $35
	inc sp                                           ; $4ceb: $33
	inc de                                           ; $4cec: $13
	sbc a                                            ; $4ced: $9f
	sbc a                                            ; $4cee: $9f
	db $dd                                           ; $4cef: $dd
	ld e, l                                          ; $4cf0: $5d
	ld a, l                                          ; $4cf1: $7d
	ld a, $3e                                        ; $4cf2: $3e $3e
	ld e, $fc                                        ; $4cf4: $1e $fc
	ld hl, sp-$08                                    ; $4cf6: $f8 $f8
	ldh a, [$f0]                                     ; $4cf8: $f0 $f0
	ld [hl], b                                       ; $4cfa: $70
	ld h, b                                          ; $4cfb: $60
	ld h, b                                          ; $4cfc: $60
	add e                                            ; $4cfd: $83
	add a                                            ; $4cfe: $87
	add a                                            ; $4cff: $87
	sbc $8f                                          ; $4d00: $de $8f
	rst SubAFromDE                                          ; $4d02: $df
	sbc a                                            ; $4d03: $9f
	adc b                                            ; $4d04: $88
	cp $7e                                           ; $4d05: $fe $7e
	inc a                                            ; $4d07: $3c
	inc a                                            ; $4d08: $3c
	inc e                                            ; $4d09: $1c
	jr jr_023_4d18                                   ; $4d0a: $18 $0c

	nop                                              ; $4d0c: $00
	inc bc                                           ; $4d0d: $03
	add e                                            ; $4d0e: $83
	rst JumpTable                                          ; $4d0f: $c7
	rst JumpTable                                          ; $4d10: $c7
	rst SubAFromBC                                          ; $4d11: $e7
	rst SubAFromBC                                          ; $4d12: $e7
	di                                               ; $4d13: $f3
	rst $38                                          ; $4d14: $ff
	ld hl, sp-$7e                                    ; $4d15: $f8 $82
	sbc [hl]                                         ; $4d17: $9e

jr_023_4d18:
	cp a                                             ; $4d18: $bf
	or a                                             ; $4d19: $b7
	xor c                                            ; $4d1a: $a9
	or a                                             ; $4d1b: $b7
	ld a, e                                          ; $4d1c: $7b
	sub b                                            ; $4d1d: $90
	ld a, l                                          ; $4d1e: $7d
	dec sp                                           ; $4d1f: $3b
	sbc b                                            ; $4d20: $98
	rst GetHLinHL                                          ; $4d21: $cf
	rst SubAFromDE                                          ; $4d22: $df
	ld sp, hl                                        ; $4d23: $f9
	pop hl                                           ; $4d24: $e1
	ld hl, sp-$09                                    ; $4d25: $f8 $f7
	rst SubAFromDE                                          ; $4d27: $df
	ld a, d                                          ; $4d28: $7a
	ldh a, [c]                                       ; $4d29: $f2
	ld a, a                                          ; $4d2a: $7f
	cp $9c                                           ; $4d2b: $fe $9c
	rrca                                             ; $4d2d: $0f
	jr c, jr_023_4d90                                ; $4d2e: $38 $60

	ld a, b                                          ; $4d30: $78
	ld a, a                                          ; $4d31: $7f
	rst SubAFromDE                                          ; $4d32: $df
	add b                                            ; $4d33: $80
	sub h                                            ; $4d34: $94
	ld b, e                                          ; $4d35: $43
	jp $e0a1                                         ; $4d36: $c3 $a1 $e0


	ret nc                                           ; $4d39: $d0

	ldh a, [$e9]                                     ; $4d3a: $f0 $e9
	rst $38                                          ; $4d3c: $ff
	db $fc                                           ; $4d3d: $fc
	ld a, h                                          ; $4d3e: $7c
	ld a, [hl]                                       ; $4d3f: $7e
	ld [hl], d                                       ; $4d40: $72
	ld e, $db                                        ; $4d41: $1e $db
	rst $38                                          ; $4d43: $ff
	sub l                                            ; $4d44: $95
	cp $f8                                           ; $4d45: $fe $f8
	ld bc, $0403                                     ; $4d47: $01 $03 $04
	ld a, [de]                                       ; $4d4a: $1a
	ld h, c                                          ; $4d4b: $61
	and c                                            ; $4d4c: $a1
	rla                                              ; $4d4d: $17
	rra                                              ; $4d4e: $1f
	ld a, d                                          ; $4d4f: $7a
	ret                                              ; $4d50: $c9


	sub a                                            ; $4d51: $97
	ldh a, [$c0]                                     ; $4d52: $f0 $c0
	nop                                              ; $4d54: $00
	ld bc, $0907                                     ; $4d55: $01 $07 $09
	rlca                                             ; $4d58: $07
	adc a                                            ; $4d59: $8f
	ld [hl], d                                       ; $4d5a: $72
	rst SubAFromDE                                          ; $4d5b: $df
	sub a                                            ; $4d5c: $97
	add b                                            ; $4d5d: $80
	ld bc, $0f03                                     ; $4d5e: $01 $03 $0f
	ccf                                              ; $4d61: $3f
	db $fc                                           ; $4d62: $fc
	ld hl, sp-$1f                                    ; $4d63: $f8 $e1
	jp c, Jump_023_7fff                              ; $4d65: $da $ff $7f

	sub c                                            ; $4d68: $91
	sbc b                                            ; $4d69: $98
	ld hl, sp-$0f                                    ; $4d6a: $f8 $f1
	rst JumpTable                                          ; $4d6c: $c7
	ld a, [bc]                                       ; $4d6d: $0a
	dec [hl]                                         ; $4d6e: $35
	ld [$7755], a                                    ; $4d6f: $ea $55 $77
	call z, $d77b                                    ; $4d72: $cc $7b $d7
	ld a, a                                          ; $4d75: $7f
	xor [hl]                                         ; $4d76: $ae
	add b                                            ; $4d77: $80
	inc b                                            ; $4d78: $04
	dec [hl]                                         ; $4d79: $35
	dec h                                            ; $4d7a: $25
	dec l                                            ; $4d7b: $2d
	ld hl, $2525                                     ; $4d7c: $21 $25 $25
	nop                                              ; $4d7f: $00
	ld sp, $4a4a                                     ; $4d80: $31 $4a $4a
	ld b, d                                          ; $4d83: $42
	ld b, d                                          ; $4d84: $42
	ld c, d                                          ; $4d85: $4a
	ld c, d                                          ; $4d86: $4a
	jr nz, @+$4b                                     ; $4d87: $20 $49

	xor c                                            ; $4d89: $a9
	dec h                                            ; $4d8a: $25
	ld hl, $2929                                     ; $4d8b: $21 $29 $29
	dec l                                            ; $4d8e: $2d
	nop                                              ; $4d8f: $00

jr_023_4d90:
	sub d                                            ; $4d90: $92
	ld d, d                                          ; $4d91: $52
	ld e, d                                          ; $4d92: $5a
	ld e, [hl]                                       ; $4d93: $5e
	ld d, [hl]                                       ; $4d94: $56
	ld d, [hl]                                       ; $4d95: $56
	ld d, d                                          ; $4d96: $52
	add l                                            ; $4d97: $85
	add d                                            ; $4d98: $82
	db $10                                           ; $4d99: $10
	ld h, e                                          ; $4d9a: $63
	ld l, d                                          ; $4d9b: $6a
	ld d, d                                          ; $4d9c: $52
	ld c, b                                          ; $4d9d: $48
	ld l, e                                          ; $4d9e: $6b
	ld b, d                                          ; $4d9f: $42
	nop                                              ; $4da0: $00
	ld h, a                                          ; $4da1: $67
	sub h                                            ; $4da2: $94
	sub h                                            ; $4da3: $94
	add h                                            ; $4da4: $84
	or a                                             ; $4da5: $b7
	sub h                                            ; $4da6: $94
	sub h                                            ; $4da7: $94
	ld [$5984], sp                                   ; $4da8: $08 $84 $59
	ld d, e                                          ; $4dab: $53
	ld d, d                                          ; $4dac: $52
	add e                                            ; $4dad: $83
	ld e, d                                          ; $4dae: $5a
	ld d, e                                          ; $4daf: $53
	nop                                              ; $4db0: $00
	add hl, de                                       ; $4db1: $19
	sbc $a4                                          ; $4db2: $de $a4
	sub d                                            ; $4db4: $92
	inc a                                            ; $4db5: $3c
	and h                                            ; $4db6: $a4
	and h                                            ; $4db7: $a4
	ld [$ba0a], sp                                   ; $4db8: $08 $0a $ba
	ld a, [hl+]                                      ; $4dbb: $2a
	ld a, [hl+]                                      ; $4dbc: $2a
	ld [hl+], a                                      ; $4dbd: $22
	ld a, [hl+]                                      ; $4dbe: $2a
	ld [hl+], a                                      ; $4dbf: $22
	nop                                              ; $4dc0: $00
	db $f4                                           ; $4dc1: $f4
	db $db                                           ; $4dc2: $db
	ld b, h                                          ; $4dc3: $44
	sbc e                                            ; $4dc4: $9b
	add b                                            ; $4dc5: $80
	ld b, h                                          ; $4dc6: $44
	ld c, d                                          ; $4dc7: $4a
	ld c, h                                          ; $4dc8: $4c
	ld a, e                                          ; $4dc9: $7b
	cp $9d                                           ; $4dca: $fe $9d
	ld c, l                                          ; $4dcc: $4d
	nop                                              ; $4dcd: $00
	jp c, $8d90                                      ; $4dce: $da $90 $8d

	adc $18                                          ; $4dd1: $ce $18
	ld l, [hl]                                       ; $4dd3: $6e

jr_023_4dd4:
	ld c, [hl]                                       ; $4dd4: $4e
	ld c, [hl]                                       ; $4dd5: $4e
	ld c, $6e                                        ; $4dd6: $0e $6e
	ld c, [hl]                                       ; $4dd8: $4e
	rra                                              ; $4dd9: $1f
	ld l, a                                          ; $4dda: $6f
	sub a                                            ; $4ddb: $97
	sub a                                            ; $4ddc: $97
	sub e                                            ; $4ddd: $93
	di                                               ; $4dde: $f3
	sub e                                            ; $4ddf: $93
	sub c                                            ; $4de0: $91
	inc c                                            ; $4de1: $0c
	rst SubAFromHL                                          ; $4de2: $d7
	sbc $14                                          ; $4de3: $de $14
	rst SubAFromDE                                          ; $4de5: $df
	ld d, h                                          ; $4de6: $54
	sbc e                                            ; $4de7: $9b
	ld [hl], h                                       ; $4de8: $74
	ld hl, sp+$2c                                    ; $4de9: $f8 $2c
	ld c, b                                          ; $4deb: $48
	call c, Call_023_7f60                            ; $4dec: $dc $60 $7f
	ret c                                            ; $4def: $d8

	add b                                            ; $4df0: $80
	ld [de], a                                       ; $4df1: $12
	ld a, [bc]                                       ; $4df2: $0a
	dec bc                                           ; $4df3: $0b
	ld [bc], a                                       ; $4df4: $02
	ld [bc], a                                       ; $4df5: $02
	ld a, [bc]                                       ; $4df6: $0a
	nop                                              ; $4df7: $00
	inc h                                            ; $4df8: $24
	and l                                            ; $4df9: $a5
	or l                                             ; $4dfa: $b5
	or h                                             ; $4dfb: $b4
	xor h                                            ; $4dfc: $ac
	xor h                                            ; $4dfd: $ac
	and l                                            ; $4dfe: $a5
	nop                                              ; $4dff: $00
	jr nz, @-$2e                                     ; $4e00: $20 $d0

	or b                                             ; $4e02: $b0

jr_023_4e03:
	ld b, b                                          ; $4e03: $40
	and b                                            ; $4e04: $a0
	ld d, b                                          ; $4e05: $50
	sub b                                            ; $4e06: $90
	nop                                              ; $4e07: $00
	ret nz                                           ; $4e08: $c0

	jr nz, jr_023_4e0b                               ; $4e09: $20 $00

jr_023_4e0b:
	add b                                            ; $4e0b: $80
	ld b, b                                          ; $4e0c: $40
	jr nz, jr_023_4e2f                               ; $4e0d: $20 $20

	inc de                                           ; $4e0f: $13
	ld a, l                                          ; $4e10: $7d
	ld [hl], d                                       ; $4e11: $72
	rst SubAFromDE                                          ; $4e12: $df
	ld [bc], a                                       ; $4e13: $02
	ld a, d                                          ; $4e14: $7a
	or e                                             ; $4e15: $b3
	sbc h                                            ; $4e16: $9c
	ld e, $0f                                        ; $4e17: $1e $0f
	rlca                                             ; $4e19: $07
	ld a, d                                          ; $4e1a: $7a
	ld l, l                                          ; $4e1b: $6d
	rst $38                                          ; $4e1c: $ff
	sbc $c0                                          ; $4e1d: $de $c0
	sbc $80                                          ; $4e1f: $de $80
	sbc l                                            ; $4e21: $9d
	ret nz                                           ; $4e22: $c0

	jr c, jr_023_4e03                                ; $4e23: $38 $de

	ccf                                              ; $4e25: $3f
	sbc $7f                                          ; $4e26: $de $7f
	sbc l                                            ; $4e28: $9d
	rst $38                                          ; $4e29: $ff
	ccf                                              ; $4e2a: $3f
	sbc $01                                          ; $4e2b: $de $01
	rst SubAFromDE                                          ; $4e2d: $df
	ld [bc], a                                       ; $4e2e: $02

jr_023_4e2f:
	sbc h                                            ; $4e2f: $9c
	inc b                                            ; $4e30: $04
	inc c                                            ; $4e31: $0c
	dec e                                            ; $4e32: $1d
	ld h, a                                          ; $4e33: $67
	jr nz, jr_023_4dd4                               ; $4e34: $20 $9e

	cp a                                             ; $4e36: $bf
	ld [hl], a                                       ; $4e37: $77
	add sp, $79                                      ; $4e38: $e8 $79
	jr jr_023_4eaf                                   ; $4e3a: $18 $73

	ret c                                            ; $4e3c: $d8

	ld a, a                                          ; $4e3d: $7f
	inc b                                            ; $4e3e: $04
	sbc [hl]                                         ; $4e3f: $9e
	dec c                                            ; $4e40: $0d
	ld h, a                                          ; $4e41: $67
	add sp, -$69                                     ; $4e42: $e8 $97
	add b                                            ; $4e44: $80
	add c                                            ; $4e45: $81
	ld b, a                                          ; $4e46: $47
	ld e, h                                          ; $4e47: $5c
	ld [hl], h                                       ; $4e48: $74
	ldh [c], a                                       ; $4e49: $e2
	inc bc                                           ; $4e4a: $03
	rlca                                             ; $4e4b: $07
	sbc $ff                                          ; $4e4c: $de $ff
	ld a, d                                          ; $4e4e: $7a
	rst SubAFromDE                                          ; $4e4f: $df
	ld a, a                                          ; $4e50: $7f
	and $9a                                          ; $4e51: $e6 $9a
	jr c, @-$1e                                      ; $4e53: $38 $e0

	inc hl                                           ; $4e55: $23
	rra                                              ; $4e56: $1f
	ccf                                              ; $4e57: $3f
	ld a, d                                          ; $4e58: $7a
	sbc $7d                                          ; $4e59: $de $7d
	and a                                            ; $4e5b: $a7
	ld a, [hl]                                       ; $4e5c: $7e
	add l                                            ; $4e5d: $85
	sbc e                                            ; $4e5e: $9b
	rrca                                             ; $4e5f: $0f
	rra                                              ; $4e60: $1f
	ld a, [hl]                                       ; $4e61: $7e
	ld hl, sp-$27                                    ; $4e62: $f8 $d9
	rst $38                                          ; $4e64: $ff
	sub a                                            ; $4e65: $97
	rra                                              ; $4e66: $1f
	ld a, $fc                                        ; $4e67: $3e $fc
	ldh a, [$c3]                                     ; $4e69: $f0 $c3
	adc l                                            ; $4e6b: $8d
	ld a, [hl-]                                      ; $4e6c: $3a
	ld [hl], l                                       ; $4e6d: $75
	db $dd                                           ; $4e6e: $dd
	rst $38                                          ; $4e6f: $ff
	ld [hl], a                                       ; $4e70: $77
	rst SubAFromHL                                          ; $4e71: $d7
	sbc e                                            ; $4e72: $9b
	add [hl]                                         ; $4e73: $86
	dec e                                            ; $4e74: $1d
	ld l, d                                          ; $4e75: $6a
	push de                                          ; $4e76: $d5
	ld [hl], l                                       ; $4e77: $75
	ldh [$79], a                                     ; $4e78: $e0 $79
	ld a, [hl]                                       ; $4e7a: $7e
	ld sp, $9dd0                                     ; $4e7b: $31 $d0 $9d
	jp z, Jump_023_6f75                              ; $4e7e: $ca $75 $6f

	ldh a, [$9e]                                     ; $4e81: $f0 $9e
	ld sp, $9dfa                                     ; $4e83: $31 $fa $9d
	ld c, c                                          ; $4e86: $49
	sbc a                                            ; $4e87: $9f
	ld l, a                                          ; $4e88: $6f
	ldh a, [$9e]                                     ; $4e89: $f0 $9e
	sub d                                            ; $4e8b: $92
	ld a, [$8a9e]                                    ; $4e8c: $fa $9e $8a
	ld l, e                                          ; $4e8f: $6b
	ret nc                                           ; $4e90: $d0

	sbc [hl]                                         ; $4e91: $9e
	ld h, h                                          ; $4e92: $64
	ld a, [$0a9e]                                    ; $4e93: $fa $9e $0a
	ld l, e                                          ; $4e96: $6b
	ldh a, [$9e]                                     ; $4e97: $f0 $9e
	and h                                            ; $4e99: $a4
	ld a, [$a89e]                                    ; $4e9a: $fa $9e $a8
	ld l, e                                          ; $4e9d: $6b
	ldh a, [$9e]                                     ; $4e9e: $f0 $9e
	ld b, e                                          ; $4ea0: $43
	ld a, [$a19e]                                    ; $4ea1: $fa $9e $a1
	ld l, e                                          ; $4ea4: $6b
	ldh a, [$9e]                                     ; $4ea5: $f0 $9e
	ld e, $65                                        ; $4ea7: $1e $65
	ret nz                                           ; $4ea9: $c0

	sbc h                                            ; $4eaa: $9c
	ld d, a                                          ; $4eab: $57
	xor e                                            ; $4eac: $ab
	ld d, l                                          ; $4ead: $55
	ld [hl], l                                       ; $4eae: $75

jr_023_4eaf:
	ld [hl], b                                       ; $4eaf: $70
	sbc [hl]                                         ; $4eb0: $9e
	sub c                                            ; $4eb1: $91
	ld a, [$7396]                                    ; $4eb2: $fa $96 $73
	ld [hl], b                                       ; $4eb5: $70
	ld a, b                                          ; $4eb6: $78
	jr c, jr_023_4ef5                                ; $4eb7: $38 $3c

	inc e                                            ; $4eb9: $1c
	sbc [hl]                                         ; $4eba: $9e
	rrca                                             ; $4ebb: $0f
	ld l, h                                          ; $4ebc: $6c
	ld l, l                                          ; $4ebd: $6d
	ld [hl], b                                       ; $4ebe: $70
	sbc l                                            ; $4ebf: $9d
	ld a, a                                          ; $4ec0: $7f
	ld h, h                                          ; $4ec1: $64
	ld a, d                                          ; $4ec2: $7a
	call c, $727d                                    ; $4ec3: $dc $7d $72
	sbc h                                            ; $4ec6: $9c
	inc c                                            ; $4ec7: $0c
	inc b                                            ; $4ec8: $04
	ret nz                                           ; $4ec9: $c0

	ld a, c                                          ; $4eca: $79
	ld d, a                                          ; $4ecb: $57
	ld a, l                                          ; $4ecc: $7d
	ld [hl], d                                       ; $4ecd: $72
	sbc h                                            ; $4ece: $9c
	ld hl, sp-$04                                    ; $4ecf: $f8 $fc
	jr nz, jr_023_4f4d                               ; $4ed1: $20 $7a

	inc l                                            ; $4ed3: $2c
	sbc l                                            ; $4ed4: $9d
	nop                                              ; $4ed5: $00
	db $db                                           ; $4ed6: $db
	ld a, d                                          ; $4ed7: $7a
	ret c                                            ; $4ed8: $d8

	ld a, e                                          ; $4ed9: $7b
	ld a, [$f97b]                                    ; $4eda: $fa $7b $f9
	ei                                               ; $4edd: $fb
	rst SubAFromDE                                          ; $4ede: $df
	add b                                            ; $4edf: $80
	ld hl, sp-$62                                    ; $4ee0: $f8 $9e
	rlca                                             ; $4ee2: $07
	ld c, e                                          ; $4ee3: $4b
	ld hl, sp-$64                                    ; $4ee4: $f8 $9c
	rst SubAFromBC                                          ; $4ee6: $e7
	rlca                                             ; $4ee7: $07
	inc bc                                           ; $4ee8: $03
	db $fd                                           ; $4ee9: $fd
	sbc h                                            ; $4eea: $9c
	inc bc                                           ; $4eeb: $03
	and $03                                          ; $4eec: $e6 $03
	ld [hl], e                                       ; $4eee: $73
	ld hl, sp-$62                                    ; $4eef: $f8 $9e
	ld bc, $0873                                     ; $4ef1: $01 $73 $08
	sub a                                            ; $4ef4: $97

jr_023_4ef5:
	ld d, b                                          ; $4ef5: $50
	ldh [$80], a                                     ; $4ef6: $e0 $80
	add hl, sp                                       ; $4ef8: $39
	ret z                                            ; $4ef9: $c8

	add h                                            ; $4efa: $84
	add a                                            ; $4efb: $87
	rst GetHLinHL                                          ; $4efc: $cf
	ld a, d                                          ; $4efd: $7a
	sbc a                                            ; $4efe: $9f
	ld a, a                                          ; $4eff: $7f
	ld [$9170], sp                                   ; $4f00: $08 $70 $91
	sbc h                                            ; $4f03: $9c
	ld a, [hl]                                       ; $4f04: $7e
	sbc a                                            ; $4f05: $9f
	cp a                                             ; $4f06: $bf
	db $db                                           ; $4f07: $db
	rst $38                                          ; $4f08: $ff
	sbc [hl]                                         ; $4f09: $9e

jr_023_4f0a:
	rlca                                             ; $4f0a: $07
	ld a, c                                          ; $4f0b: $79
	or d                                             ; $4f0c: $b2
	sbc h                                            ; $4f0d: $9c
	ldh a, [$e3]                                     ; $4f0e: $f0 $e3
	add [hl]                                         ; $4f10: $86
	ld l, [hl]                                       ; $4f11: $6e
	sub b                                            ; $4f12: $90
	ld a, b                                          ; $4f13: $78
	ld l, b                                          ; $4f14: $68
	sbc [hl]                                         ; $4f15: $9e
	pop hl                                           ; $4f16: $e1
	ld [hl], c                                       ; $4f17: $71
	or d                                             ; $4f18: $b2
	ld a, a                                          ; $4f19: $7f
	ld h, b                                          ; $4f1a: $60
	ld l, l                                          ; $4f1b: $6d
	or d                                             ; $4f1c: $b2
	nop                                              ; $4f1d: $00
	and b                                            ; $4f1e: $a0
	ld b, e                                          ; $4f1f: $43
	ldh a, [rHDMA5]                                  ; $4f20: $f0 $55
	nop                                              ; $4f22: $00
	sbc $11                                          ; $4f23: $de $11
	sbc c                                            ; $4f25: $99
	nop                                              ; $4f26: $00
	inc b                                            ; $4f27: $04
	nop                                              ; $4f28: $00
	ld b, e                                          ; $4f29: $43
	ld b, e                                          ; $4f2a: $43
	jr nc, jr_023_4f0a                               ; $4f2b: $30 $dd

	ld de, $109c                                     ; $4f2d: $11 $9c $10
	ld b, h                                          ; $4f30: $44
	ld b, e                                          ; $4f31: $43
	sbc $33                                          ; $4f32: $de $33
	sbc [hl]                                         ; $4f34: $9e
	ld sp, $f66f                                     ; $4f35: $31 $6f $f6
	sbc l                                            ; $4f38: $9d
	ld d, [hl]                                       ; $4f39: $56
	ld h, [hl]                                       ; $4f3a: $66
	ld l, a                                          ; $4f3b: $6f
	or $9a                                           ; $4f3c: $f6 $9a
	inc sp                                           ; $4f3e: $33
	ld [hl], $66                                     ; $4f3f: $36 $66
	ld d, $33                                        ; $4f41: $16 $33
	ld [hl], a                                       ; $4f43: $77
	pop hl                                           ; $4f44: $e1
	sbc c                                            ; $4f45: $99
	db $10                                           ; $4f46: $10
	jr nc, jr_023_4f49                               ; $4f47: $30 $00

jr_023_4f49:
	nop                                              ; $4f49: $00
	dec b                                            ; $4f4a: $05
	inc bc                                           ; $4f4b: $03
	ld [hl], e                                       ; $4f4c: $73

jr_023_4f4d:
	or $99                                           ; $4f4d: $f6 $99
	inc sp                                           ; $4f4f: $33
	dec [hl]                                         ; $4f50: $35
	nop                                              ; $4f51: $00
	ld h, [hl]                                       ; $4f52: $66
	inc sp                                           ; $4f53: $33
	ld bc, $11dd                                     ; $4f54: $01 $dd $11
	sbc c                                            ; $4f57: $99
	inc de                                           ; $4f58: $13
	inc sp                                           ; $4f59: $33
	ld [hl], $33                                     ; $4f5a: $36 $33
	inc sp                                           ; $4f5c: $33
	ld hl, $c373                                     ; $4f5d: $21 $73 $c3
	sbc $33                                          ; $4f60: $de $33
	sbc l                                            ; $4f62: $9d
	ld [hl+], a                                      ; $4f63: $22
	ld de, $9dfe                                     ; $4f64: $11 $fe $9d
	rlca                                             ; $4f67: $07
	nop                                              ; $4f68: $00

Call_023_4f69:
	ld [hl], a                                       ; $4f69: $77
	rst FarCall                                          ; $4f6a: $f7
	sbc [hl]                                         ; $4f6b: $9e
	db $10                                           ; $4f6c: $10
	ld [hl], a                                       ; $4f6d: $77
	or $99                                           ; $4f6e: $f6 $99
	ld [hl], b                                       ; $4f70: $70
	nop                                              ; $4f71: $00
	ld [hl+], a                                      ; $4f72: $22
	ld hl, $0010                                     ; $4f73: $21 $10 $00
	ldh [c], a                                       ; $4f76: $e2
	add h                                            ; $4f77: $84
	ldh [$31], a                                     ; $4f78: $e0 $31
	sbc e                                            ; $4f7a: $9b
	ld a, [bc]                                       ; $4f7b: $0a
	dec b                                            ; $4f7c: $05

Jump_023_4f7d:
	ld [bc], a                                       ; $4f7d: $02
	dec b                                            ; $4f7e: $05
	push af                                          ; $4f7f: $f5
	sbc l                                            ; $4f80: $9d
	xor d                                            ; $4f81: $aa
	ld d, l                                          ; $4f82: $55
	ld a, e                                          ; $4f83: $7b
	cp $9c                                           ; $4f84: $fe $9c
	dec d                                            ; $4f86: $15
	ld a, [bc]                                       ; $4f87: $0a
	dec d                                            ; $4f88: $15
	ld d, e                                          ; $4f89: $53
	ldh a, [$7b]                                     ; $4f8a: $f0 $7b
	cp $03                                           ; $4f8c: $fe $03
	ldh a, [$03]                                     ; $4f8e: $f0 $03
	ldh a, [$e0]                                     ; $4f90: $f0 $e0
	ld d, h                                          ; $4f92: $54
	sbc [hl]                                         ; $4f93: $9e
	ld [bc], a                                       ; $4f94: $02
	db $f4                                           ; $4f95: $f4
	sbc h                                            ; $4f96: $9c
	ld bc, $6a3f                                     ; $4f97: $01 $3f $6a
	ld a, [$e86e]                                    ; $4f9a: $fa $6e $e8
	sbc h                                            ; $4f9d: $9c

Jump_023_4f9e:
	jp $3e75                                         ; $4f9e: $c3 $75 $3e


	ei                                               ; $4fa1: $fb
	sbc l                                            ; $4fa2: $9d
	adc d                                            ; $4fa3: $8a
	pop bc                                           ; $4fa4: $c1
	db $fc                                           ; $4fa5: $fc
	sbc h                                            ; $4fa6: $9c
	ld b, b                                          ; $4fa7: $40
	ld d, [hl]                                       ; $4fa8: $56
	xor d                                            ; $4fa9: $aa
	ei                                               ; $4faa: $fb
	sub l                                            ; $4fab: $95
	and b                                            ; $4fac: $a0
	ld d, h                                          ; $4fad: $54
	ld a, [bc]                                       ; $4fae: $0a
	dec d                                            ; $4faf: $15
	ld a, [hl+]                                      ; $4fb0: $2a
	ld bc, $0500                                     ; $4fb1: $01 $00 $05
	ld a, [bc]                                       ; $4fb4: $0a
	reti                                             ; $4fb5: $d9


	ld a, [$069e]                                    ; $4fb6: $fa $9e $06
	ld l, e                                          ; $4fb9: $6b
	nop                                              ; $4fba: $00
	sbc [hl]                                         ; $4fbb: $9e
	ld b, l                                          ; $4fbc: $45
	ld a, [$389e]                                    ; $4fbd: $fa $9e $38
	ld [bc], a                                       ; $4fc0: $02
	ret nc                                           ; $4fc1: $d0

	ld [bc], a                                       ; $4fc2: $02
	ret nz                                           ; $4fc3: $c0

	ldh [$72], a                                     ; $4fc4: $e0 $72
	sbc b                                            ; $4fc6: $98

Call_023_4fc7:
	inc bc                                           ; $4fc7: $03
	rlca                                             ; $4fc8: $07
	inc bc                                           ; $4fc9: $03
	rrca                                             ; $4fca: $0f

jr_023_4fcb:
	ld a, [de]                                       ; $4fcb: $1a
	db $10                                           ; $4fcc: $10
	jr jr_023_4fcb                                   ; $4fcd: $18 $fc

	add b                                            ; $4fcf: $80
	dec b                                            ; $4fd0: $05
	rrca                                             ; $4fd1: $0f
	rlca                                             ; $4fd2: $07
	rlca                                             ; $4fd3: $07
	ld a, [hl+]                                      ; $4fd4: $2a
	rst SubAFromDE                                          ; $4fd5: $df
	cp l                                             ; $4fd6: $bd
	ld d, a                                          ; $4fd7: $57
	dec hl                                           ; $4fd8: $2b
	ld a, a                                          ; $4fd9: $7f
	or a                                             ; $4fda: $b7
	nop                                              ; $4fdb: $00
	dec b                                            ; $4fdc: $05
	jr nz, jr_023_501f                               ; $4fdd: $20 $40

	xor b                                            ; $4fdf: $a8
	call nc, Call_023_4080                           ; $4fe0: $d4 $80 $40
	ld b, l                                          ; $4fe3: $45
	cp a                                             ; $4fe4: $bf
	ld a, a                                          ; $4fe5: $7f
	jp c, $ea77                                      ; $4fe6: $da $77 $ea

	ld a, a                                          ; $4fe9: $7f
	cp $3a                                           ; $4fea: $fe $3a
	ld b, b                                          ; $4fec: $40
	add b                                            ; $4fed: $80
	dec h                                            ; $4fee: $25
	sbc [hl]                                         ; $4fef: $9e
	ld [$c27a], sp                                   ; $4ff0: $08 $7a $c2
	add b                                            ; $4ff3: $80
	rra                                              ; $4ff4: $1f
	ld [$b451], a                                    ; $4ff5: $ea $51 $b4
	ld [hl], a                                       ; $4ff8: $77
	rst $38                                          ; $4ff9: $ff
	rst FarCall                                          ; $4ffa: $f7
	cp a                                             ; $4ffb: $bf
	ldh [$15], a                                     ; $4ffc: $e0 $15
	xor [hl]                                         ; $4ffe: $ae
	ld c, a                                          ; $4fff: $4f
	adc b                                            ; $5000: $88
	nop                                              ; $5001: $00
	ld [$7c00], sp                                   ; $5002: $08 $00 $7c
	add hl, hl                                       ; $5005: $29
	ld d, h                                          ; $5006: $54
	add sp, -$04                                     ; $5007: $e8 $fc
	xor [hl]                                         ; $5009: $ae
	ld e, l                                          ; $500a: $5d
	or $83                                           ; $500b: $f6 $83
	rst SubAFromHL                                          ; $500d: $d7
	xor e                                            ; $500e: $ab
	rla                                              ; $500f: $17
	inc bc                                           ; $5010: $03
	ld bc, $8002                                     ; $5011: $01 $02 $80
	dec c                                            ; $5014: $0d
	xor e                                            ; $5015: $ab
	ld e, l                                          ; $5016: $5d
	ld a, [hl+]                                      ; $5017: $2a
	rla                                              ; $5018: $17
	sbc d                                            ; $5019: $9a
	adc e                                            ; $501a: $8b
	db $f4                                           ; $501b: $f4
	pop af                                           ; $501c: $f1
	ld b, h                                          ; $501d: $44
	and d                                            ; $501e: $a2

jr_023_501f:
	push de                                          ; $501f: $d5
	add sp, -$0b                                     ; $5020: $e8 $f5
	ld a, [hl]                                       ; $5022: $7e
	rra                                              ; $5023: $1f
	ld c, $fe                                        ; $5024: $0e $fe
	ld d, a                                          ; $5026: $57
	xor d                                            ; $5027: $aa
	inc de                                           ; $5028: $13
	adc e                                            ; $5029: $8b
	dec d                                            ; $502a: $15
	cp d                                             ; $502b: $ba
	ld a, l                                          ; $502c: $7d
	nop                                              ; $502d: $00
	xor b                                            ; $502e: $a8
	ld d, h                                          ; $502f: $54
	db $ec                                           ; $5030: $ec
	ld [hl], h                                       ; $5031: $74
	ld [$459d], a                                    ; $5032: $ea $9d $45
	add d                                            ; $5035: $82
	halt                                             ; $5036: $76
	db $f4                                           ; $5037: $f4
	sbc e                                            ; $5038: $9b
	ld [$ea85], a                                    ; $5039: $ea $85 $ea
	push hl                                          ; $503c: $e5
	db $fc                                           ; $503d: $fc
	sbc $f0                                          ; $503e: $de $f0
	ld [bc], a                                       ; $5040: $02
	ret nz                                           ; $5041: $c0

	ld [hl], $c0                                     ; $5042: $36 $c0
	sbc l                                            ; $5044: $9d
	ld [bc], a                                       ; $5045: $02
	ld d, l                                          ; $5046: $55
	ld l, d                                          ; $5047: $6a
	ld d, b                                          ; $5048: $50
	ld sp, hl                                        ; $5049: $f9
	sbc [hl]                                         ; $504a: $9e
	ld d, c                                          ; $504b: $51
	ld c, a                                          ; $504c: $4f
	ldh a, [$9e]                                     ; $504d: $f0 $9e
	and b                                            ; $504f: $a0
	dec bc                                           ; $5050: $0b
	ldh [$9e], a                                     ; $5051: $e0 $9e
	add b                                            ; $5053: $80
	ld c, e                                          ; $5054: $4b
	ldh [$9e], a                                     ; $5055: $e0 $9e
	jr z, jr_023_50ac                                ; $5057: $28 $53

	ldh a, [$9d]                                     ; $5059: $f0 $9d
	ld [$7b05], sp                                   ; $505b: $08 $05 $7b
	adc a                                            ; $505e: $8f
	or $9a                                           ; $505f: $f6 $9a
	dec hl                                           ; $5061: $2b
	ld d, [hl]                                       ; $5062: $56
	xor e                                            ; $5063: $ab
	ld d, a                                          ; $5064: $57
	xor e                                            ; $5065: $ab
	ld [hl], c                                       ; $5066: $71
	cp c                                             ; $5067: $b9
	ld [hl], e                                       ; $5068: $73
	ei                                               ; $5069: $fb
	sbc c                                            ; $506a: $99
	cp c                                             ; $506b: $b9
	ld [hl], a                                       ; $506c: $77
	cp d                                             ; $506d: $ba
	rst SubAFromHL                                          ; $506e: $d7
	xor [hl]                                         ; $506f: $ae
	ld d, a                                          ; $5070: $57
	cp $80                                           ; $5071: $fe $80
	adc b                                            ; $5073: $88
	ld b, l                                          ; $5074: $45
	jr z, @+$53                                      ; $5075: $28 $51

	xor b                                            ; $5077: $a8
	sub l                                            ; $5078: $95
	ld a, a                                          ; $5079: $7f
	or a                                             ; $507a: $b7
	ld a, e                                          ; $507b: $7b
	or [hl]                                          ; $507c: $b6
	ld e, a                                          ; $507d: $5f
	sbc a                                            ; $507e: $9f
	ld d, l                                          ; $507f: $55
	ld a, [bc]                                       ; $5080: $0a
	add b                                            ; $5081: $80
	ld b, b                                          ; $5082: $40
	add b                                            ; $5083: $80
	ld b, b                                          ; $5084: $40
	and b                                            ; $5085: $a0
	ld h, b                                          ; $5086: $60
	jr nz, jr_023_50c0                               ; $5087: $20 $37

	cp a                                             ; $5089: $bf
	ret nc                                           ; $508a: $d0

	inc b                                            ; $508b: $04
	sub l                                            ; $508c: $95
	sub [hl]                                         ; $508d: $96
	ld h, h                                          ; $508e: $64
	ld a, $c0                                        ; $508f: $3e $c0
	ld b, b                                          ; $5091: $40
	sub c                                            ; $5092: $91
	cpl                                              ; $5093: $2f
	ei                                               ; $5094: $fb
	ld a, b                                          ; $5095: $78
	ld a, b                                          ; $5096: $78
	sbc b                                            ; $5097: $98
	nop                                              ; $5098: $00
	rst $38                                          ; $5099: $ff
	cp a                                             ; $509a: $bf
	db $e3                                           ; $509b: $e3
	ld a, a                                          ; $509c: $7f
	rst $38                                          ; $509d: $ff
	inc e                                            ; $509e: $1c
	inc bc                                           ; $509f: $03
	ld b, d                                          ; $50a0: $42
	ld [hl], a                                       ; $50a1: $77
	adc d                                            ; $50a2: $8a
	ld a, [hl]                                       ; $50a3: $7e
	sub h                                            ; $50a4: $94
	rst $38                                          ; $50a5: $ff
	sub a                                            ; $50a6: $97
	ld e, a                                          ; $50a7: $5f
	rst $38                                          ; $50a8: $ff
	rst AddAOntoHL                                          ; $50a9: $ef
	rst $38                                          ; $50aa: $ff
	cp a                                             ; $50ab: $bf

jr_023_50ac:
	db $db                                           ; $50ac: $db
	or c                                             ; $50ad: $b1
	ld e, [hl]                                       ; $50ae: $5e
	ld [hl], c                                       ; $50af: $71
	adc c                                            ; $50b0: $89
	sub e                                            ; $50b1: $93
	inc b                                            ; $50b2: $04
	ld c, $21                                        ; $50b3: $0e $21
	push af                                          ; $50b5: $f5
	jp c, $ffaf                                      ; $50b6: $da $af $ff

	rst SubAFromHL                                          ; $50b9: $d7
	xor a                                            ; $50ba: $af
	ld b, l                                          ; $50bb: $45
	ld a, d                                          ; $50bc: $7a
	ld a, [bc]                                       ; $50bd: $0a
	ld a, e                                          ; $50be: $7b
	and e                                            ; $50bf: $a3

jr_023_50c0:
	add b                                            ; $50c0: $80
	jr nz, jr_023_5113                               ; $50c1: $20 $50

	cp d                                             ; $50c3: $ba
	add l                                            ; $50c4: $85
	cp e                                             ; $50c5: $bb
	adc a                                            ; $50c6: $8f
	cp $f1                                           ; $50c7: $fe $f1
	ld a, [$3efd]                                    ; $50c9: $fa $fd $3e
	call $0004                                       ; $50cc: $cd $04 $00
	ld bc, $050f                                     ; $50cf: $01 $0f $05
	inc bc                                           ; $50d2: $03
	ld bc, $7e32                                     ; $50d3: $01 $32 $7e
	rst FarCall                                          ; $50d6: $f7
	rst AddAOntoHL                                          ; $50d7: $ef
	dec h                                            ; $50d8: $25
	ei                                               ; $50d9: $fb
	ld a, [$deb7]                                    ; $50da: $fa $b7 $de
	add c                                            ; $50dd: $81
	ld [$8a10], sp                                   ; $50de: $08 $10 $8a
	ld a, [$fdfc]                                    ; $50e1: $fa $fc $fd
	ld e, b                                          ; $50e4: $58
	ld hl, $0dae                                     ; $50e5: $21 $ae $0d
	sub [hl]                                         ; $50e8: $96
	inc hl                                           ; $50e9: $23
	dec b                                            ; $50ea: $05
	dec a                                            ; $50eb: $3d
	ld a, [de]                                       ; $50ec: $1a
	or e                                             ; $50ed: $b3
	ld b, b                                          ; $50ee: $40
	ld hl, sp+$68                                    ; $50ef: $f8 $68
	call c, $f8fe                                    ; $50f1: $dc $fe $f8
	db $fc                                           ; $50f4: $fc
	db $fc                                           ; $50f5: $fc
	ld [hl], d                                       ; $50f6: $72
	ldh [c], a                                       ; $50f7: $e2
	sbc h                                            ; $50f8: $9c
	ld d, a                                          ; $50f9: $57
	cpl                                              ; $50fa: $2f
	rst $38                                          ; $50fb: $ff
	ei                                               ; $50fc: $fb
	rst SubAFromDE                                          ; $50fd: $df
	ret nz                                           ; $50fe: $c0

	ld a, a                                          ; $50ff: $7f
	ldh a, [c]                                       ; $5100: $f2
	ld a, a                                          ; $5101: $7f
	ld d, e                                          ; $5102: $53
	sbc [hl]                                         ; $5103: $9e
	cp a                                             ; $5104: $bf
	sbc $ff                                          ; $5105: $de $ff
	ld sp, hl                                        ; $5107: $f9
	sbc l                                            ; $5108: $9d
	xor e                                            ; $5109: $ab
	ld e, a                                          ; $510a: $5f
	db $db                                           ; $510b: $db
	rst $38                                          ; $510c: $ff
	ld sp, hl                                        ; $510d: $f9
	ld l, d                                          ; $510e: $6a
	or c                                             ; $510f: $b1
	ld h, e                                          ; $5110: $63
	jr nz, @+$05                                     ; $5111: $20 $03

jr_023_5113:
	ldh a, [$03]                                     ; $5113: $f0 $03
	ldh a, [rIF]                                     ; $5115: $f0 $0f
	ldh a, [hDisp1_OBP1]                                     ; $5117: $f0 $94
	ld d, [hl]                                       ; $5119: $56
	and l                                            ; $511a: $a5
	ld e, d                                          ; $511b: $5a
	cp l                                             ; $511c: $bd
	ld e, a                                          ; $511d: $5f
	rst AddAOntoHL                                          ; $511e: $ef
	ld a, a                                          ; $511f: $7f
	cp d                                             ; $5120: $ba
	ld bc, $050a                                     ; $5121: $01 $0a $05
	ld [hl], h                                       ; $5124: $74
	ld l, h                                          ; $5125: $6c
	add b                                            ; $5126: $80
	ld b, l                                          ; $5127: $45
	and e                                            ; $5128: $a3
	ld b, c                                          ; $5129: $41
	add b                                            ; $512a: $80
	ld [hl], h                                       ; $512b: $74
	or d                                             ; $512c: $b2
	add $ff                                          ; $512d: $c6 $ff
	ld a, a                                          ; $512f: $7f
	ld e, h                                          ; $5130: $5c
	cp [hl]                                          ; $5131: $be
	ld a, a                                          ; $5132: $7f
	adc e                                            ; $5133: $8b
	ld c, c                                          ; $5134: $49
	ld bc, $8000                                     ; $5135: $01 $00 $80
	ldh a, [$e7]                                     ; $5138: $f0 $e7
	db $db                                           ; $513a: $db
	or l                                             ; $513b: $b5
	add hl, de                                       ; $513c: $19
	dec l                                            ; $513d: $2d
	add e                                            ; $513e: $83
	rst JumpTable                                          ; $513f: $c7
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	inc b                                            ; $5142: $04
	ld c, d                                          ; $5143: $4a
	and $c2                                          ; $5144: $e6 $c2
	sub l                                            ; $5146: $95
	ld a, h                                          ; $5147: $7c
	jr c, jr_023_5176                                ; $5148: $38 $2c

	add hl, de                                       ; $514a: $19
	pop af                                           ; $514b: $f1
	sub b                                            ; $514c: $90
	ldh [rP1], a                                     ; $514d: $e0 $00
	inc e                                            ; $514f: $1c
	rst FarCall                                          ; $5150: $f7
	cp $9e                                           ; $5151: $fe $9e
	ld h, b                                          ; $5153: $60
	ld [hl], d                                       ; $5154: $72
	dec d                                            ; $5155: $15
	sbc b                                            ; $5156: $98
	add [hl]                                         ; $5157: $86
	dec sp                                           ; $5158: $3b
	ld b, $1f                                        ; $5159: $06 $1f
	db $d3                                           ; $515b: $d3
	jp Jump_023_7bc3                                 ; $515c: $c3 $c3 $7b


	ldh [$fc], a                                     ; $515f: $e0 $fc
	add [hl]                                         ; $5161: $86
	jr jr_023_5173                                   ; $5162: $18 $0f

	db $d3                                           ; $5164: $d3
	ld [hl], c                                       ; $5165: $71
	ld a, a                                          ; $5166: $7f
	rst $38                                          ; $5167: $ff
	ld a, d                                          ; $5168: $7a
	rst SubAFromHL                                          ; $5169: $d7
	ld h, a                                          ; $516a: $67
	nop                                              ; $516b: $00
	inc c                                            ; $516c: $0c
	ld c, $00                                        ; $516d: $0e $00
	nop                                              ; $516f: $00
	add l                                            ; $5170: $85
	add hl, hl                                       ; $5171: $29
	add hl, bc                                       ; $5172: $09

jr_023_5173:
	rra                                              ; $5173: $1f
	ld [de], a                                       ; $5174: $12
	rra                                              ; $5175: $1f

jr_023_5176:
	ld a, [de]                                       ; $5176: $1a
	call Call_023_74f6                               ; $5177: $cd $f6 $74
	ld b, $7a                                        ; $517a: $06 $7a
	ld h, d                                          ; $517c: $62
	ld a, a                                          ; $517d: $7f
	sbc [hl]                                         ; $517e: $9e
	add b                                            ; $517f: $80
	ld bc, $bb8b                                     ; $5180: $01 $8b $bb
	ld c, $01                                        ; $5183: $0e $01
	ccf                                              ; $5185: $3f
	ld l, $10                                        ; $5186: $2e $10
	xor e                                            ; $5188: $ab
	rra                                              ; $5189: $1f
	ld b, h                                          ; $518a: $44
	pop af                                           ; $518b: $f1
	cp $fe                                           ; $518c: $fe $fe
	rst SubAFromHL                                          ; $518e: $d7
	rst AddAOntoHL                                          ; $518f: $ef
	rst SubAFromDE                                          ; $5190: $df
	rst $38                                          ; $5191: $ff
	ld sp, hl                                        ; $5192: $f9
	ldh [$b5], a                                     ; $5193: $e0 $b5
	ld a, e                                          ; $5195: $7b
	jr nc, jr_023_51ed                               ; $5196: $30 $55

	ld b, h                                          ; $5198: $44
	ld [$1f07], a                                    ; $5199: $ea $07 $1f
	ld c, d                                          ; $519c: $4a
	add h                                            ; $519d: $84
	rst GetHLinHL                                          ; $519e: $cf
	add b                                            ; $519f: $80
	xor d                                            ; $51a0: $aa
	rst $38                                          ; $51a1: $ff
	db $fd                                           ; $51a2: $fd
	ldh a, [$d0]                                     ; $51a3: $f0 $d0
	jr z, @-$24                                      ; $51a5: $28 $da

	add b                                            ; $51a7: $80
	ld c, a                                          ; $51a8: $4f
	ccf                                              ; $51a9: $3f
	add e                                            ; $51aa: $83
	rst $38                                          ; $51ab: $ff
	ld l, a                                          ; $51ac: $6f
	rst SubAFromDE                                          ; $51ad: $df
	dec a                                            ; $51ae: $3d
	ld a, a                                          ; $51af: $7f
	cp a                                             ; $51b0: $bf
	rst SubAFromDE                                          ; $51b1: $df
	ld a, a                                          ; $51b2: $7f
	ccf                                              ; $51b3: $3f
	xor e                                            ; $51b4: $ab
	dec de                                           ; $51b5: $1b
	ld e, a                                          ; $51b6: $5f
	dec sp                                           ; $51b7: $3b
	ld [hl], a                                       ; $51b8: $77
	ld [$c074], a                                    ; $51b9: $ea $74 $c0
	ld [hl], h                                       ; $51bc: $74
	db $ec                                           ; $51bd: $ec
	ld hl, sp-$63                                    ; $51be: $f8 $9d
	db $fc                                           ; $51c0: $fc
	ld hl, sp-$26                                    ; $51c1: $f8 $da
	rst $38                                          ; $51c3: $ff
	sbc $7f                                          ; $51c4: $de $7f
	ld l, l                                          ; $51c6: $6d
	ret c                                            ; $51c7: $d8

	rst SubAFromDE                                          ; $51c8: $df
	add b                                            ; $51c9: $80
	reti                                             ; $51ca: $d9


	rst $38                                          ; $51cb: $ff
	ld d, e                                          ; $51cc: $53
	jr nz, jr_023_524d                               ; $51cd: $20 $7e

	ld c, l                                          ; $51cf: $4d
	ld c, a                                          ; $51d0: $4f
	ldh a, [$7a]                                     ; $51d1: $f0 $7a
	adc a                                            ; $51d3: $8f
	ld d, e                                          ; $51d4: $53
	ldh a, [rBGP]                                    ; $51d5: $f0 $47
	ret nc                                           ; $51d7: $d0

	sbc [hl]                                         ; $51d8: $9e
	cp $4b                                           ; $51d9: $fe $4b
	ldh a, [$9e]                                     ; $51db: $f0 $9e
	xor [hl]                                         ; $51dd: $ae
	ld c, e                                          ; $51de: $4b
	ldh a, [$9d]                                     ; $51df: $f0 $9d
	cp d                                             ; $51e1: $ba
	rst SubAFromDE                                          ; $51e2: $df
	ld e, a                                          ; $51e3: $5f
	ldh a, [$9d]                                     ; $51e4: $f0 $9d
	xor h                                            ; $51e6: $ac
	ld d, [hl]                                       ; $51e7: $56
	ld a, e                                          ; $51e8: $7b
	xor $9b                                          ; $51e9: $ee $9b
	push de                                          ; $51eb: $d5
	rst $38                                          ; $51ec: $ff

jr_023_51ed:
	ld [bc], a                                       ; $51ed: $02
	inc bc                                           ; $51ee: $03
	ld [hl], c                                       ; $51ef: $71
	sub d                                            ; $51f0: $92
	add b                                            ; $51f1: $80
	nop                                              ; $51f2: $00
	push de                                          ; $51f3: $d5
	and d                                            ; $51f4: $a2
	push de                                          ; $51f5: $d5
	ldh [c], a                                       ; $51f6: $e2
	ld d, h                                          ; $51f7: $54
	or b                                             ; $51f8: $b0
	ld h, h                                          ; $51f9: $64
	cp d                                             ; $51fa: $ba
	ld a, [hl+]                                      ; $51fb: $2a
	ld e, l                                          ; $51fc: $5d
	ld l, $1f                                        ; $51fd: $2e $1f
	dec bc                                           ; $51ff: $0b
	rrca                                             ; $5200: $0f
	dec de                                           ; $5201: $1b
	dec b                                            ; $5202: $05
	ld c, h                                          ; $5203: $4c
	inc a                                            ; $5204: $3c
	rlca                                             ; $5205: $07
	ld e, a                                          ; $5206: $5f
	rrca                                             ; $5207: $0f
	add a                                            ; $5208: $87
	xor a                                            ; $5209: $af
	xor $80                                          ; $520a: $ee $80
	ret nz                                           ; $520c: $c0

	ld hl, sp-$20                                    ; $520d: $f8 $e0
	ldh a, [$f8]                                     ; $520f: $f0 $f8
	add l                                            ; $5211: $85
	ret nc                                           ; $5212: $d0

	pop af                                           ; $5213: $f1
	ld [$6956], a                                    ; $5214: $ea $56 $69
	pop bc                                           ; $5217: $c1
	call nz, $95c2                                   ; $5218: $c4 $c2 $95
	dec hl                                           ; $521b: $2b
	inc d                                            ; $521c: $14
	jr z, jr_023_523d                                ; $521d: $28 $1e

	ccf                                              ; $521f: $3f
	ccf                                              ; $5220: $3f
	dec a                                            ; $5221: $3d
	ld l, d                                          ; $5222: $6a
	call nc, $39ff                                   ; $5223: $d4 $ff $39
	inc hl                                           ; $5226: $23
	sbc h                                            ; $5227: $9c
	adc [hl]                                         ; $5228: $8e
	cp a                                             ; $5229: $bf
	daa                                              ; $522a: $27
	ld a, l                                          ; $522b: $7d
	ld a, c                                          ; $522c: $79
	push af                                          ; $522d: $f5
	ld a, a                                          ; $522e: $7f
	ldh [$df], a                                     ; $522f: $e0 $df
	ret nz                                           ; $5231: $c0

	add b                                            ; $5232: $80
	add e                                            ; $5233: $83
	ld [$ccf0], a                                    ; $5234: $ea $f0 $cc
	ld a, [hl]                                       ; $5237: $7e
	jp hl                                            ; $5238: $e9


	xor $bd                                          ; $5239: $ee $bd
	ld c, d                                          ; $523b: $4a
	dec b                                            ; $523c: $05

jr_023_523d:
	rrca                                             ; $523d: $0f
	inc sp                                           ; $523e: $33
	ld bc, $0106                                     ; $523f: $01 $06 $01
	ld b, d                                          ; $5242: $42
	push af                                          ; $5243: $f5
	or [hl]                                          ; $5244: $b6
	db $d3                                           ; $5245: $d3
	cp [hl]                                          ; $5246: $be
	ld sp, hl                                        ; $5247: $f9
	ld d, a                                          ; $5248: $57
	ldh [$bd], a                                     ; $5249: $e0 $bd
	ld l, h                                          ; $524b: $6c
	ld c, c                                          ; $524c: $49

jr_023_524d:
	cp $7f                                           ; $524d: $fe $7f
	ld a, $e8                                        ; $524f: $3e $e8
	nop                                              ; $5251: $00
	add a                                            ; $5252: $87
	ld b, b                                          ; $5253: $40
	ldh a, [hDisp0_BGP]                                     ; $5254: $f0 $85
	add hl, hl                                       ; $5256: $29
	add h                                            ; $5257: $84
	ld e, d                                          ; $5258: $5a
	rst $38                                          ; $5259: $ff
	rst SubAFromDE                                          ; $525a: $df
	ld [$7bf4], a                                    ; $525b: $ea $f4 $7b
	rst FarCall                                          ; $525e: $f7
	ld a, e                                          ; $525f: $7b
	and l                                            ; $5260: $a5
	nop                                              ; $5261: $00
	jr nz, @+$17                                     ; $5262: $20 $15

	rrca                                             ; $5264: $0f
	cp a                                             ; $5265: $bf
	rst $38                                          ; $5266: $ff
	cp $3d                                           ; $5267: $fe $3d
	ld c, a                                          ; $5269: $4f
	rst SubAFromDE                                          ; $526a: $df
	ld a, c                                          ; $526b: $79
	ld e, e                                          ; $526c: $5b
	rst SubAFromDE                                          ; $526d: $df
	rst $38                                          ; $526e: $ff
	sbc [hl]                                         ; $526f: $9e
	cp $7b                                           ; $5270: $fe $7b
	add hl, hl                                       ; $5272: $29
	adc c                                            ; $5273: $89
	ld d, a                                          ; $5274: $57
	rst SubAFromHL                                          ; $5275: $d7
	ld l, [hl]                                       ; $5276: $6e
	db $db                                           ; $5277: $db
	ld [hl], $cb                                     ; $5278: $36 $cb
	inc b                                            ; $527a: $04
	ld c, b                                          ; $527b: $48
	ld a, [$d1e8]                                    ; $527c: $fa $e8 $d1
	inc a                                            ; $527f: $3c
	reti                                             ; $5280: $d9


	or h                                             ; $5281: $b4
	rst $38                                          ; $5282: $ff
	rst $38                                          ; $5283: $ff
	db $fd                                           ; $5284: $fd
	ld h, a                                          ; $5285: $67
	ld c, a                                          ; $5286: $4f
	ld d, a                                          ; $5287: $57
	sub a                                            ; $5288: $97
	rlca                                             ; $5289: $07
	ld a, d                                          ; $528a: $7a
	rst SubAFromDE                                          ; $528b: $df
	rst SubAFromDE                                          ; $528c: $df
	rst $38                                          ; $528d: $ff
	sbc h                                            ; $528e: $9c
	cp a                                             ; $528f: $bf
	ld a, a                                          ; $5290: $7f
	rst $38                                          ; $5291: $ff
	ld a, e                                          ; $5292: $7b
	ld a, [$b980]                                    ; $5293: $fa $80 $b9
	ld d, b                                          ; $5296: $50
	ldh [c], a                                       ; $5297: $e2
	rst FarCall                                          ; $5298: $f7
	ld sp, hl                                        ; $5299: $f9
	rst AddAOntoHL                                          ; $529a: $ef
	ld b, a                                          ; $529b: $47
	add a                                            ; $529c: $87
	cp $ff                                           ; $529d: $fe $ff
	db $fd                                           ; $529f: $fd
	db $fc                                           ; $52a0: $fc
	cp $f0                                           ; $52a1: $fe $f0
	ld hl, sp-$04                                    ; $52a3: $f8 $fc
	rst $38                                          ; $52a5: $ff
	ccf                                              ; $52a6: $3f
	rst $38                                          ; $52a7: $ff
	ccf                                              ; $52a8: $3f
	ld a, a                                          ; $52a9: $7f
	db $fd                                           ; $52aa: $fd
	ld [$00dd], a                                    ; $52ab: $ea $dd $00
	ret nz                                           ; $52ae: $c0

	add b                                            ; $52af: $80
	ret nz                                           ; $52b0: $c0

	add b                                            ; $52b1: $80
	ld [bc], a                                       ; $52b2: $02
	dec d                                            ; $52b3: $15
	sbc d                                            ; $52b4: $9a
	ld a, [hl-]                                      ; $52b5: $3a
	cp $f5                                           ; $52b6: $fe $f5
	ld [$77d5], a                                    ; $52b8: $ea $d5 $77
	dec e                                            ; $52bb: $1d
	ld a, [hl]                                       ; $52bc: $7e
	nop                                              ; $52bd: $00
	sbc l                                            ; $52be: $9d
	dec d                                            ; $52bf: $15
	ld a, [hl+]                                      ; $52c0: $2a
	ld [hl], a                                       ; $52c1: $77
	inc d                                            ; $52c2: $14
	ld b, [hl]                                       ; $52c3: $46
	or b                                             ; $52c4: $b0
	inc bc                                           ; $52c5: $03
	ldh a, [$03]                                     ; $52c6: $f0 $03
	ldh a, [rIF]                                     ; $52c8: $f0 $0f
	ldh a, [$80]                                     ; $52ca: $f0 $80
	di                                               ; $52cc: $f3
	jp hl                                            ; $52cd: $e9


	db $eb                                           ; $52ce: $eb
	sub c                                            ; $52cf: $91
	db $e3                                           ; $52d0: $e3
	jp $fde3                                         ; $52d1: $c3 $e3 $fd


	rrca                                             ; $52d4: $0f
	rra                                              ; $52d5: $1f
	rra                                              ; $52d6: $1f
	ld l, a                                          ; $52d7: $6f
	rra                                              ; $52d8: $1f
	ccf                                              ; $52d9: $3f
	rra                                              ; $52da: $1f
	inc bc                                           ; $52db: $03
	dec e                                            ; $52dc: $1d
	xor [hl]                                         ; $52dd: $ae
	ld d, b                                          ; $52de: $50
	ld l, d                                          ; $52df: $6a
	ld d, e                                          ; $52e0: $53
	and $57                                          ; $52e1: $e6 $57
	cp d                                             ; $52e3: $ba
	ldh [c], a                                       ; $52e4: $e2
	pop de                                           ; $52e5: $d1
	cp a                                             ; $52e6: $bf
	sub a                                            ; $52e7: $97
	xor $dd                                          ; $52e8: $ee $dd
	rst AddAOntoHL                                          ; $52ea: $ef
	add [hl]                                         ; $52eb: $86
	ld b, l                                          ; $52ec: $45
	adc $a4                                          ; $52ed: $ce $a4
	ld b, a                                          ; $52ef: $47
	or a                                             ; $52f0: $b7
	call nz, $0eef                                   ; $52f1: $c4 $ef $0e
	ldh [c], a                                       ; $52f4: $e2
	ld bc, $e043                                     ; $52f5: $01 $43 $e0
	ld b, b                                          ; $52f8: $40
	nop                                              ; $52f9: $00
	db $10                                           ; $52fa: $10
	pop af                                           ; $52fb: $f1
	db $dd                                           ; $52fc: $dd
	rst FarCall                                          ; $52fd: $f7
	ld a, $3f                                        ; $52fe: $3e $3f
	reti                                             ; $5300: $d9


	rst AddAOntoHL                                          ; $5301: $ef
	nop                                              ; $5302: $00
	dec a                                            ; $5303: $3d
	pop af                                           ; $5304: $f1
	ld a, d                                          ; $5305: $7a
	ret nz                                           ; $5306: $c0

	add b                                            ; $5307: $80
	ld h, $10                                        ; $5308: $26 $10
	ld hl, sp-$10                                    ; $530a: $f8 $f0
	cp $17                                           ; $530c: $fe $17
	ld l, d                                          ; $530e: $6a
	db $dd                                           ; $530f: $dd
	ei                                               ; $5310: $fb
	rst GetHLinHL                                          ; $5311: $cf
	or $ee                                           ; $5312: $f6 $ee
	rst JumpTable                                          ; $5314: $c7
	add sp, $17                                      ; $5315: $e8 $17
	inc hl                                           ; $5317: $23
	inc b                                            ; $5318: $04
	nop                                              ; $5319: $00
	add hl, bc                                       ; $531a: $09
	ld de, $c538                                     ; $531b: $11 $38 $c5
	ld d, a                                          ; $531e: $57
	sbc e                                            ; $531f: $9b
	ld a, a                                          ; $5320: $7f
	dec sp                                           ; $5321: $3b
	rst SubAFromDE                                          ; $5322: $df
	ld a, a                                          ; $5323: $7f
	sbc h                                            ; $5324: $9c
	ld a, b                                          ; $5325: $78
	add sp, -$80                                     ; $5326: $e8 $80
	ld h, h                                          ; $5328: $64
	add b                                            ; $5329: $80
	call nz, $feef                                   ; $532a: $c4 $ef $fe
	rst $38                                          ; $532d: $ff
	push hl                                          ; $532e: $e5
	jp z, $fed4                                      ; $532f: $ca $d4 $fe

	ld [hl], a                                       ; $5332: $77
	rst AddAOntoHL                                          ; $5333: $ef
	ld c, a                                          ; $5334: $4f
	xor [hl]                                         ; $5335: $ae
	ld a, [de]                                       ; $5336: $1a
	dec a                                            ; $5337: $3d
	dec hl                                           ; $5338: $2b
	ld bc, $1f89                                     ; $5339: $01 $89 $1f
	cp a                                             ; $533c: $bf
	ld e, a                                          ; $533d: $5f
	ld a, e                                          ; $533e: $7b
	ld hl, sp+$5f                                    ; $533f: $f8 $5f
	set 2, a                                         ; $5341: $cb $d7
	rst SubAFromDE                                          ; $5343: $df
	ccf                                              ; $5344: $3f
	rra                                              ; $5345: $1f
	add a                                            ; $5346: $87
	sbc h                                            ; $5347: $9c
	rlca                                             ; $5348: $07
	and e                                            ; $5349: $a3
	rst FarCall                                          ; $534a: $f7
	halt                                             ; $534b: $76
	cp e                                             ; $534c: $bb
	sub a                                            ; $534d: $97
	add d                                            ; $534e: $82
	ld d, c                                          ; $534f: $51
	xor b                                            ; $5350: $a8
	db $f4                                           ; $5351: $f4
	ld hl, sp-$0b                                    ; $5352: $f8 $f5
	ld a, [$d91f]                                    ; $5354: $fa $1f $d9
	rst $38                                          ; $5357: $ff
	sbc b                                            ; $5358: $98
	ld a, [hl+]                                      ; $5359: $2a
	nop                                              ; $535a: $00
	xor d                                            ; $535b: $aa
	push af                                          ; $535c: $f5
	rst AddAOntoHL                                          ; $535d: $ef
	ld a, l                                          ; $535e: $7d
	ld l, $68                                        ; $535f: $2e $68
	ld l, d                                          ; $5361: $6a
	rst SubAFromDE                                          ; $5362: $df
	rst $38                                          ; $5363: $ff
	sub [hl]                                         ; $5364: $96
	dec bc                                           ; $5365: $0b
	ld d, h                                          ; $5366: $54
	ld a, [hl+]                                      ; $5367: $2a
	rlca                                             ; $5368: $07
	and h                                            ; $5369: $a4
	ld a, e                                          ; $536a: $7b
	cp a                                             ; $536b: $bf
	rst $38                                          ; $536c: $ff
	db $fc                                           ; $536d: $fc
	jp c, $95ff                                      ; $536e: $da $ff $95

	ld [hl], d                                       ; $5371: $72
	push af                                          ; $5372: $f5
	db $fc                                           ; $5373: $fc
	db $fd                                           ; $5374: $fd
	ld a, [$cad5]                                    ; $5375: $fa $d5 $ca
	and c                                            ; $5378: $a1
	db $fd                                           ; $5379: $fd
	ld a, [$ffdb]                                    ; $537a: $fa $db $ff
	ld [hl], b                                       ; $537d: $70
	or e                                             ; $537e: $b3
	sbc h                                            ; $537f: $9c
	dec [hl]                                         ; $5380: $35
	jp z, Jump_023_7b25                              ; $5381: $ca $25 $7b

	ld sp, hl                                        ; $5384: $f9
	ld a, [hl]                                       ; $5385: $7e
	or a                                             ; $5386: $b7
	sbc l                                            ; $5387: $9d
	jp z, Jump_023_6bf5                              ; $5388: $ca $f5 $6b

	ld [$ff9d], a                                    ; $538b: $ea $9d $ff
	ld e, a                                          ; $538e: $5f
	ld a, [$a09e]                                    ; $538f: $fa $9e $a0
	ld [bc], a                                       ; $5392: $02
	ldh a, [$3b]                                     ; $5393: $f0 $3b
	ldh a, [$9d]                                     ; $5395: $f0 $9d
	ld [$6ffd], a                                    ; $5397: $ea $fd $6f
	ldh a, [$9e]                                     ; $539a: $f0 $9e
	dec d                                            ; $539c: $15
	ld a, b                                          ; $539d: $78
	ld l, [hl]                                       ; $539e: $6e
	sbc $ff                                          ; $539f: $de $ff
	ld a, e                                          ; $53a1: $7b
	and l                                            ; $53a2: $a5
	sbc [hl]                                         ; $53a3: $9e
	ei                                               ; $53a4: $fb
	ld [hl], a                                       ; $53a5: $77
	ldh a, [$7b]                                     ; $53a6: $f0 $7b
	sub a                                            ; $53a8: $97
	ld a, a                                          ; $53a9: $7f
	dec e                                            ; $53aa: $1d
	ld [hl], a                                       ; $53ab: $77
	and h                                            ; $53ac: $a4
	sbc l                                            ; $53ad: $9d
	xor d                                            ; $53ae: $aa
	ld d, a                                          ; $53af: $57
	ld [hl], e                                       ; $53b0: $73
	ldh [$9a], a                                     ; $53b1: $e0 $9a
	and b                                            ; $53b3: $a0
	ld d, l                                          ; $53b4: $55
	xor b                                            ; $53b5: $a8
	nop                                              ; $53b6: $00
	nop                                              ; $53b7: $00
	ld a, c                                          ; $53b8: $79
	ld b, l                                          ; $53b9: $45
	call c, Call_023_6dff                            ; $53ba: $dc $ff $6d
	ld [hl], d                                       ; $53bd: $72
	rst $38                                          ; $53be: $ff
	sub l                                            ; $53bf: $95
	set 4, a                                         ; $53c0: $cb $e7
	rst FarCall                                          ; $53c2: $f7
	db $e3                                           ; $53c3: $e3
	rst SubAFromBC                                          ; $53c4: $e7
	ld e, a                                          ; $53c5: $5f
	sbc e                                            ; $53c6: $9b
	call c, $1f3f                                    ; $53c7: $dc $3f $1f
	ld a, d                                          ; $53ca: $7a
	xor [hl]                                         ; $53cb: $ae
	sub h                                            ; $53cc: $94
	cp a                                             ; $53cd: $bf
	ld [hl], a                                       ; $53ce: $77
	inc hl                                           ; $53cf: $23
	ld b, [hl]                                       ; $53d0: $46
	and d                                            ; $53d1: $a2
	ld [hl], e                                       ; $53d2: $73
	rst FarCall                                          ; $53d3: $f7
	xor e                                            ; $53d4: $ab
	ld e, l                                          ; $53d5: $5d
	cp [hl]                                          ; $53d6: $be
	db $fd                                           ; $53d7: $fd
	ld a, e                                          ; $53d8: $7b
	xor l                                            ; $53d9: $ad
	sub d                                            ; $53da: $92
	rst $38                                          ; $53db: $ff
	rst SubAFromHL                                          ; $53dc: $d7
	and e                                            ; $53dd: $a3
	ld b, c                                          ; $53de: $41
	ld [bc], a                                       ; $53df: $02

jr_023_53e0:
	ld a, d                                          ; $53e0: $7a
	or c                                             ; $53e1: $b1
	ld b, e                                          ; $53e2: $43
	sub e                                            ; $53e3: $93
	and e                                            ; $53e4: $a3
	cp $9b                                           ; $53e5: $fe $9b
	ld [hl], $77                                     ; $53e7: $36 $77
	ldh a, [$dd]                                     ; $53e9: $f0 $dd
	rst $38                                          ; $53eb: $ff
	sub a                                            ; $53ec: $97
	add b                                            ; $53ed: $80
	ld b, h                                          ; $53ee: $44
	jp z, $2844                                      ; $53ef: $ca $44 $28

	ld b, l                                          ; $53f2: $45
	ld c, e                                          ; $53f3: $4b
	rlca                                             ; $53f4: $07
	ld a, c                                          ; $53f5: $79
	push de                                          ; $53f6: $d5
	ld a, c                                          ; $53f7: $79
	call $187f                                       ; $53f8: $cd $7f $18
	sbc b                                            ; $53fb: $98
	call nz, $5c0e                                   ; $53fc: $c4 $0e $5c
	rrca                                             ; $53ff: $0f
	dec d                                            ; $5400: $15
	sbc b                                            ; $5401: $98
	push de                                          ; $5402: $d5
	halt                                             ; $5403: $76
	push hl                                          ; $5404: $e5
	call c, $98ff                                    ; $5405: $dc $ff $98
	sbc l                                            ; $5408: $9d
	ccf                                              ; $5409: $3f
	ld e, d                                          ; $540a: $5a
	cp b                                             ; $540b: $b8
	ld d, h                                          ; $540c: $54
	ccf                                              ; $540d: $3f
	rra                                              ; $540e: $1f
	ld a, c                                          ; $540f: $79
	or e                                             ; $5410: $b3
	db $db                                           ; $5411: $db
	rst $38                                          ; $5412: $ff
	sbc e                                            ; $5413: $9b
	xor [hl]                                         ; $5414: $ae
	ld a, a                                          ; $5415: $7f
	inc sp                                           ; $5416: $33
	ld d, c                                          ; $5417: $51
	ld h, c                                          ; $5418: $61
	db $db                                           ; $5419: $db
	sbc $ff                                          ; $541a: $de $ff
	sub a                                            ; $541c: $97
	xor a                                            ; $541d: $af
	ld d, a                                          ; $541e: $57
	xor a                                            ; $541f: $af
	ld a, a                                          ; $5420: $7f
	cp [hl]                                          ; $5421: $be
	db $fd                                           ; $5422: $fd
	db $db                                           ; $5423: $db
	ld a, l                                          ; $5424: $7d
	reti                                             ; $5425: $d9


	rst $38                                          ; $5426: $ff
	sbc b                                            ; $5427: $98
	cp a                                             ; $5428: $bf
	ei                                               ; $5429: $fb
	rst FarCall                                          ; $542a: $f7
	ld a, [$ebf7]                                    ; $542b: $fa $f7 $eb
	rst $38                                          ; $542e: $ff
	ld h, [hl]                                       ; $542f: $66
	ld hl, sp+$79                                    ; $5430: $f8 $79
	ld l, [hl]                                       ; $5432: $6e
	sbc h                                            ; $5433: $9c
	cp $d5                                           ; $5434: $fe $d5
	ld [$9c79], a                                    ; $5436: $ea $79 $9c
	reti                                             ; $5439: $d9


	rst $38                                          ; $543a: $ff
	sbc h                                            ; $543b: $9c
	ret nz                                           ; $543c: $c0

	ld d, b                                          ; $543d: $50
	and b                                            ; $543e: $a0
	ld a, e                                          ; $543f: $7b
	jr nc, jr_023_53e0                               ; $5440: $30 $9e

	and d                                            ; $5442: $a2
	ld [hl], h                                       ; $5443: $74
	ld a, l                                          ; $5444: $7d
	call c, $8fff                                    ; $5445: $dc $ff $8f
	ld a, [bc]                                       ; $5448: $0a
	dec b                                            ; $5449: $05
	adc d                                            ; $544a: $8a
	ld d, l                                          ; $544b: $55
	and e                                            ; $544c: $a3
	ld b, l                                          ; $544d: $45
	ld [hl+], a                                      ; $544e: $22
	dec b                                            ; $544f: $05
	push af                                          ; $5450: $f5
	cp $fd                                           ; $5451: $fe $fd
	ld a, [$fafc]                                    ; $5453: $fa $fc $fa
	db $fd                                           ; $5456: $fd
	ld a, [$0031]                                    ; $5457: $fa $31 $00
	call c, $9d33                                    ; $545a: $dc $33 $9d
	dec [hl]                                         ; $545d: $35
	ld d, l                                          ; $545e: $55
	reti                                             ; $545f: $d9


	inc sp                                           ; $5460: $33
	ld h, e                                          ; $5461: $63
	or $7f                                           ; $5462: $f6 $7f
	rst FarCall                                          ; $5464: $f7
	rst SubAFromDE                                          ; $5465: $df
	ld d, l                                          ; $5466: $55
	ld l, e                                          ; $5467: $6b
	rst FarCall                                          ; $5468: $f7
	sbc e                                            ; $5469: $9b
	ld h, [hl]                                       ; $546a: $66
	ld d, l                                          ; $546b: $55
	ld [hl], a                                       ; $546c: $77
	ld d, e                                          ; $546d: $53
	ld [hl], e                                       ; $546e: $73
	or $df                                           ; $546f: $f6 $df
	ld h, [hl]                                       ; $5471: $66
	sbc h                                            ; $5472: $9c
	ld h, a                                          ; $5473: $67
	ld [hl], a                                       ; $5474: $77
	ld [hl], l                                       ; $5475: $75
	ld l, e                                          ; $5476: $6b
	or $9e                                           ; $5477: $f6 $9e
	ld [hl], l                                       ; $5479: $75
	ld l, a                                          ; $547a: $6f
	or $98                                           ; $547b: $f6 $98
	inc sp                                           ; $547d: $33
	ld d, a                                          ; $547e: $57
	ld [hl], a                                       ; $547f: $77
	ld [hl], a                                       ; $5480: $77
	ld [hl], l                                       ; $5481: $75
	ld d, l                                          ; $5482: $55
	ld b, h                                          ; $5483: $44
	ld h, a                                          ; $5484: $67
	adc $9d                                          ; $5485: $ce $9d
	ld d, h                                          ; $5487: $54
	ld b, h                                          ; $5488: $44
	call nz, $9d81                                   ; $5489: $c4 $81 $9d
	xor d                                            ; $548c: $aa
	ld d, l                                          ; $548d: $55
	ld l, a                                          ; $548e: $6f
	cp $6b                                           ; $548f: $fe $6b
	ld sp, hl                                        ; $5491: $f9
	sbc l                                            ; $5492: $9d
	xor d                                            ; $5493: $aa
	xor a                                            ; $5494: $af
	ld l, e                                          ; $5495: $6b
	rst FarCall                                          ; $5496: $f7
	sbc [hl]                                         ; $5497: $9e
	ld d, b                                          ; $5498: $50
	ld l, e                                          ; $5499: $6b
	ldh a, [$df]                                     ; $549a: $f0 $df
	rst $38                                          ; $549c: $ff
	ld l, a                                          ; $549d: $6f
	rst FarCall                                          ; $549e: $f7
	rst $38                                          ; $549f: $ff
	inc bc                                           ; $54a0: $03
	ldh a, [rOCPD]                                   ; $54a1: $f0 $6b
	ldh a, [$9e]                                     ; $54a3: $f0 $9e
	cp d                                             ; $54a5: $ba
	ld l, e                                          ; $54a6: $6b
	ldh a, [$9e]                                     ; $54a7: $f0 $9e
	ld b, l                                          ; $54a9: $45
	inc sp                                           ; $54aa: $33
	ldh [$9d], a                                     ; $54ab: $e0 $9d
	ld a, [$6ff5]                                    ; $54ad: $fa $f5 $6f
	ldh a, [$9d]                                     ; $54b0: $f0 $9d
	dec b                                            ; $54b2: $05
	ld a, [bc]                                       ; $54b3: $0a
	ld l, a                                          ; $54b4: $6f
	ldh a, [$9d]                                     ; $54b5: $f0 $9d
	cp a                                             ; $54b7: $bf
	ld e, a                                          ; $54b8: $5f
	ld l, a                                          ; $54b9: $6f
	ldh a, [$9d]                                     ; $54ba: $f0 $9d
	ld b, b                                          ; $54bc: $40
	and b                                            ; $54bd: $a0
	ld l, a                                          ; $54be: $6f
	ldh a, [$9d]                                     ; $54bf: $f0 $9d
	ld hl, sp-$04                                    ; $54c1: $f8 $fc
	ld l, a                                          ; $54c3: $6f
	ret nz                                           ; $54c4: $c0

	sbc l                                            ; $54c5: $9d
	rlca                                             ; $54c6: $07
	inc bc                                           ; $54c7: $03
	ld [hl], e                                       ; $54c8: $73
	ret nz                                           ; $54c9: $c0

	sub [hl]                                         ; $54ca: $96
	xor [hl]                                         ; $54cb: $ae
	rst $38                                          ; $54cc: $ff
	rst $38                                          ; $54cd: $ff
	ld a, a                                          ; $54ce: $7f
	rst SubAFromBC                                          ; $54cf: $e7
	rrca                                             ; $54d0: $0f
	ld d, a                                          ; $54d1: $57
	and a                                            ; $54d2: $a7
	ld b, a                                          ; $54d3: $47
	db $dd                                           ; $54d4: $dd
	rst $38                                          ; $54d5: $ff
	adc [hl]                                         ; $54d6: $8e
	rst FarCall                                          ; $54d7: $f7
	xor a                                            ; $54d8: $af
	ld e, a                                          ; $54d9: $5f
	cp a                                             ; $54da: $bf
	rra                                              ; $54db: $1f
	sbc d                                            ; $54dc: $9a
	inc d                                            ; $54dd: $14
	db $db                                           ; $54de: $db
	add a                                            ; $54df: $87
	add sp, -$2b                                     ; $54e0: $e8 $d5
	ld [$7fff], a                                    ; $54e2: $ea $ff $7f
	rst $38                                          ; $54e5: $ff
	cpl                                              ; $54e6: $2f
	ld a, a                                          ; $54e7: $7f
	ld [hl], a                                       ; $54e8: $77
	db $ec                                           ; $54e9: $ec
	sbc b                                            ; $54ea: $98
	cp e                                             ; $54eb: $bb
	rst $38                                          ; $54ec: $ff
	db $fc                                           ; $54ed: $fc
	rst $38                                          ; $54ee: $ff
	xor e                                            ; $54ef: $ab
	ld d, a                                          ; $54f0: $57
	ld a, [hl+]                                      ; $54f1: $2a
	reti                                             ; $54f2: $d9


	rst $38                                          ; $54f3: $ff
	sub a                                            ; $54f4: $97
	ld a, a                                          ; $54f5: $7f
	rst AddAOntoHL                                          ; $54f6: $ef
	db $fd                                           ; $54f7: $fd
	ld a, [$dffd]                                    ; $54f8: $fa $fd $df
	rst SubAFromHL                                          ; $54fb: $d7
	xor a                                            ; $54fc: $af
	reti                                             ; $54fd: $d9


	rst $38                                          ; $54fe: $ff
	sub a                                            ; $54ff: $97
	sbc $dd                                          ; $5500: $de $dd
	rst $38                                          ; $5502: $ff
	rst $38                                          ; $5503: $ff
	ld a, [hl]                                       ; $5504: $7e
	or a                                             ; $5505: $b7
	cp $ad                                           ; $5506: $fe $ad
	rst SubAFromHL                                          ; $5508: $d7
	rst $38                                          ; $5509: $ff
	sbc c                                            ; $550a: $99
	ld [$fad5], a                                    ; $550b: $ea $d5 $fa
	push de                                          ; $550e: $d5
	xor d                                            ; $550f: $aa
	ld d, l                                          ; $5510: $55
	reti                                             ; $5511: $d9


	rst $38                                          ; $5512: $ff
	sbc h                                            ; $5513: $9c
	cp $fd                                           ; $5514: $fe $fd
	ld a, [$9073]                                    ; $5516: $fa $73 $90
	ld h, e                                          ; $5519: $63
	ldh [c], a                                       ; $551a: $e2
	ld a, e                                          ; $551b: $7b
	db $f4                                           ; $551c: $f4
	sbc e                                            ; $551d: $9b
	xor e                                            ; $551e: $ab
	ld e, l                                          ; $551f: $5d
	xor [hl]                                         ; $5520: $ae
	ld d, a                                          ; $5521: $57
	reti                                             ; $5522: $d9


	rst $38                                          ; $5523: $ff
	ld [hl], a                                       ; $5524: $77
	db $e4                                           ; $5525: $e4
	sbc e                                            ; $5526: $9b
	xor e                                            ; $5527: $ab
	rst SubAFromHL                                          ; $5528: $d7
	ld a, [$63c5]                                    ; $5529: $fa $c5 $63
	ldh a, [hDisp1_WX]                                     ; $552c: $f0 $96
	ld d, h                                          ; $552e: $54
	and b                                            ; $552f: $a0
	nop                                              ; $5530: $00
	add b                                            ; $5531: $80
	ld b, b                                          ; $5532: $40
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	push af                                          ; $5535: $f5
	ei                                               ; $5536: $fb
	ld e, a                                          ; $5537: $5f
	ldh [rRP], a                                     ; $5538: $e0 $56
	ret nz                                           ; $553a: $c0

	inc bc                                           ; $553b: $03
	ldh a, [$03]                                     ; $553c: $f0 $03
	ldh a, [$03]                                     ; $553e: $f0 $03
	ldh a, [$37]                                     ; $5540: $f0 $37
	ldh a, [$9e]                                     ; $5542: $f0 $9e
	ld b, b                                          ; $5544: $40
	ld l, e                                          ; $5545: $6b
	ldh a, [hDisp1_WX]                                     ; $5546: $f0 $96
	cp a                                             ; $5548: $bf
	and [hl]                                         ; $5549: $a6
	ld e, a                                          ; $554a: $5f
	xor [hl]                                         ; $554b: $ae
	ld e, a                                          ; $554c: $5f
	and h                                            ; $554d: $a4
	ld d, l                                          ; $554e: $55
	adc h                                            ; $554f: $8c
	inc e                                            ; $5550: $1c
	ld a, e                                          ; $5551: $7b
	ld sp, hl                                        ; $5552: $f9
	ld a, e                                          ; $5553: $7b
	cp $7e                                           ; $5554: $fe $7e
	ldh a, [c]                                       ; $5556: $f2
	sub h                                            ; $5557: $94
	add a                                            ; $5558: $87
	ld h, l                                          ; $5559: $65
	jp hl                                            ; $555a: $e9


	ld h, b                                          ; $555b: $60
	ldh [$71], a                                     ; $555c: $e0 $71
	ld h, b                                          ; $555e: $60
	ld h, b                                          ; $555f: $60
	ld a, a                                          ; $5560: $7f
	ei                                               ; $5561: $fb
	ld [hl], a                                       ; $5562: $77
	ld a, d                                          ; $5563: $7a
	call $ffdd                                       ; $5564: $cd $dd $ff
	sbc d                                            ; $5567: $9a
	cp a                                             ; $5568: $bf
	ld a, a                                          ; $5569: $7f
	rst $38                                          ; $556a: $ff
	ld d, l                                          ; $556b: $55
	dec hl                                           ; $556c: $2b
	ld h, e                                          ; $556d: $63
	jr nz, @-$67                                     ; $556e: $20 $97

	ld [hl], a                                       ; $5570: $77
	cp d                                             ; $5571: $ba
	rst $38                                          ; $5572: $ff
	cp h                                             ; $5573: $bc
	scf                                              ; $5574: $37
	ld a, [hl-]                                      ; $5575: $3a
	ld [hl], l                                       ; $5576: $75
	ld l, $d8                                        ; $5577: $2e $d8
	rst $38                                          ; $5579: $ff
	sbc e                                            ; $557a: $9b
	db $fd                                           ; $557b: $fd
	ei                                               ; $557c: $fb
	ld d, l                                          ; $557d: $55
	xor d                                            ; $557e: $aa
	ld e, d                                          ; $557f: $5a
	ldh [$7e], a                                     ; $5580: $e0 $7e
	ld d, b                                          ; $5582: $50
	halt                                             ; $5583: $76
	xor $9d                                          ; $5584: $ee $9d
	xor d                                            ; $5586: $aa
	ld e, l                                          ; $5587: $5d
	ld d, [hl]                                       ; $5588: $56
	ldh a, [$7f]                                     ; $5589: $f0 $7f
	cp $7d                                           ; $558b: $fe $7d
	jp c, $f05f                                      ; $558d: $da $5f $f0

	ld a, [hl]                                       ; $5590: $7e
	jp nc, $b29c                                     ; $5591: $d2 $9c $b2

	pop bc                                           ; $5594: $c1
	ld [$f063], a                                    ; $5595: $ea $63 $f0
	sub a                                            ; $5598: $97
	xor a                                            ; $5599: $af
	rst SubAFromDE                                          ; $559a: $df
	ld a, [$faf5]                                    ; $559b: $fa $f5 $fa
	ld [hl], l                                       ; $559e: $75
	ld [$d951], a                                    ; $559f: $ea $51 $d9
	rst $38                                          ; $55a2: $ff
	sub a                                            ; $55a3: $97
	ldh [$d4], a                                     ; $55a4: $e0 $d4
	xor b                                            ; $55a6: $a8
	ld d, h                                          ; $55a7: $54
	cp d                                             ; $55a8: $ba
	ld d, l                                          ; $55a9: $55
	xor b                                            ; $55aa: $a8
	ld b, b                                          ; $55ab: $40
	reti                                             ; $55ac: $d9


	rst $38                                          ; $55ad: $ff
	ld sp, hl                                        ; $55ae: $f9
	ld e, e                                          ; $55af: $5b
	or b                                             ; $55b0: $b0
	sbc l                                            ; $55b1: $9d
	dec d                                            ; $55b2: $15
	ld [bc], a                                       ; $55b3: $02
	cp $7b                                           ; $55b4: $fe $7b
	xor e                                            ; $55b6: $ab
	sbc l                                            ; $55b7: $9d
	ld [$6ffd], a                                    ; $55b8: $ea $fd $6f
	ldh a, [$9e]                                     ; $55bb: $f0 $9e
	ld de, $7bfd                                     ; $55bd: $11 $fd $7b
	ldh a, [$9e]                                     ; $55c0: $f0 $9e
	xor $6b                                          ; $55c2: $ee $6b
	ldh [$9e], a                                     ; $55c4: $e0 $9e
	ld b, h                                          ; $55c6: $44
	ld l, e                                          ; $55c7: $6b
	ldh a, [$7e]                                     ; $55c8: $f0 $7e
	ld d, $73                                        ; $55ca: $16 $73
	ldh a, [$9d]                                     ; $55cc: $f0 $9d
	ld a, [hl+]                                      ; $55ce: $2a
	ld b, l                                          ; $55cf: $45
	ld l, a                                          ; $55d0: $6f
	ldh a, [$9d]                                     ; $55d1: $f0 $9d
	push de                                          ; $55d3: $d5
	cp d                                             ; $55d4: $ba
	ld h, a                                          ; $55d5: $67
	ld [hl], b                                       ; $55d6: $70
	ld l, e                                          ; $55d7: $6b
	ldh [$79], a                                     ; $55d8: $e0 $79
	sub h                                            ; $55da: $94
	ld [hl], e                                       ; $55db: $73
	ldh a, [$fc]                                     ; $55dc: $f0 $fc
	ld h, [hl]                                       ; $55de: $66
	dec l                                            ; $55df: $2d
	halt                                             ; $55e0: $76
	db $e4                                           ; $55e1: $e4
	ld l, e                                          ; $55e2: $6b
	ldh a, [$9e]                                     ; $55e3: $f0 $9e
	cp a                                             ; $55e5: $bf
	db $dd                                           ; $55e6: $dd
	rst $38                                          ; $55e7: $ff
	ld a, a                                          ; $55e8: $7f
	halt                                             ; $55e9: $76
	sbc [hl]                                         ; $55ea: $9e
	add b                                            ; $55eb: $80
	db $fc                                           ; $55ec: $fc
	sbc [hl]                                         ; $55ed: $9e
	ld d, a                                          ; $55ee: $57
	ld a, d                                          ; $55ef: $7a
	ld sp, hl                                        ; $55f0: $f9
	scf                                              ; $55f1: $37
	ld [hl], b                                       ; $55f2: $70
	sbc l                                            ; $55f3: $9d
	ld c, $03                                        ; $55f4: $0e $03
	ld c, a                                          ; $55f6: $4f
	ldh a, [$9c]                                     ; $55f7: $f0 $9c
	ld h, b                                          ; $55f9: $60
	db $fd                                           ; $55fa: $fd
	sbc a                                            ; $55fb: $9f
	ld d, e                                          ; $55fc: $53
	ldh a, [$9e]                                     ; $55fd: $f0 $9e
	ccf                                              ; $55ff: $3f
	ld a, c                                          ; $5600: $79
	ld d, b                                          ; $5601: $50
	ld d, a                                          ; $5602: $57
	ldh a, [$97]                                     ; $5603: $f0 $97
	cp $55                                           ; $5605: $fe $55
	db $ec                                           ; $5607: $ec
	sub l                                            ; $5608: $95
	ld [bc], a                                       ; $5609: $02
	dec d                                            ; $560a: $15
	ld a, [hl+]                                      ; $560b: $2a
	ld bc, $3063                                     ; $560c: $01 $63 $30
	ld a, d                                          ; $560f: $7a
	call nz, $a89c                                   ; $5610: $c4 $9c $a8
	ld b, a                                          ; $5613: $47
	and d                                            ; $5614: $a2
	ld h, e                                          ; $5615: $63
	db $10                                           ; $5616: $10
	ld [hl], d                                       ; $5617: $72
	ret nc                                           ; $5618: $d0

	sbc h                                            ; $5619: $9c
	rla                                              ; $561a: $17
	ld a, [hl+]                                      ; $561b: $2a
	db $10                                           ; $561c: $10
	ld e, e                                          ; $561d: $5b
	ldh a, [$9c]                                     ; $561e: $f0 $9c
	ld d, c                                          ; $5620: $51
	xor b                                            ; $5621: $a8
	db $10                                           ; $5622: $10
	ld d, e                                          ; $5623: $53
	nop                                              ; $5624: $00
	ld a, a                                          ; $5625: $7f
	cp $9d                                           ; $5626: $fe $9d
	inc d                                            ; $5628: $14
	ld [$f05f], sp                                   ; $5629: $08 $5f $f0
	sbc e                                            ; $562c: $9b
	ld d, h                                          ; $562d: $54
	xor d                                            ; $562e: $aa
	ld d, h                                          ; $562f: $54
	jr nz, @+$5d                                     ; $5630: $20 $5b

	and b                                            ; $5632: $a0
	ld b, a                                          ; $5633: $47
	ld h, b                                          ; $5634: $60
	inc bc                                           ; $5635: $03
	ldh a, [$03]                                     ; $5636: $f0 $03
	ldh a, [$03]                                     ; $5638: $f0 $03
	ldh a, [$03]                                     ; $563a: $f0 $03
	ldh a, [$03]                                     ; $563c: $f0 $03
	ldh a, [$03]                                     ; $563e: $f0 $03
	ldh a, [$5f]                                     ; $5640: $f0 $5f
	ldh a, [$9e]                                     ; $5642: $f0 $9e
	ld bc, $d003                                     ; $5644: $01 $03 $d0
	inc bc                                           ; $5647: $03
	ldh a, [$03]                                     ; $5648: $f0 $03
	ldh a, [rAUD2ENV]                                ; $564a: $f0 $17
	ldh a, [rAUD2LEN]                                ; $564c: $f0 $16
	nop                                              ; $564e: $00
	call c, $9a33                                    ; $564f: $dc $33 $9a
	dec [hl]                                         ; $5652: $35
	ld d, l                                          ; $5653: $55
	ld d, h                                          ; $5654: $54
	ld b, h                                          ; $5655: $44
	ld b, h                                          ; $5656: $44
	call c, $9e33                                    ; $5657: $dc $33 $9e
	inc [hl]                                         ; $565a: $34
	ld a, e                                          ; $565b: $7b
	rst FarCall                                          ; $565c: $f7
	ld l, e                                          ; $565d: $6b
	or $dd                                           ; $565e: $f6 $dd
	ld b, h                                          ; $5660: $44
	rst SubAFromHL                                          ; $5661: $d7
	inc sp                                           ; $5662: $33
	or h                                             ; $5663: $b4
	add a                                            ; $5664: $87
	sbc e                                            ; $5665: $9b
	adc b                                            ; $5666: $88
	ld d, l                                          ; $5667: $55
	ld [hl+], a                                      ; $5668: $22
	ld d, l                                          ; $5669: $55
	ld [hl], a                                       ; $566a: $77
	db $fc                                           ; $566b: $fc
	sbc e                                            ; $566c: $9b
	ld [hl], a                                       ; $566d: $77
	xor d                                            ; $566e: $aa
	db $dd                                           ; $566f: $dd
	xor d                                            ; $5670: $aa
	ld [hl], a                                       ; $5671: $77
	db $fc                                           ; $5672: $fc
	adc h                                            ; $5673: $8c
	adc [hl]                                         ; $5674: $8e
	ld d, h                                          ; $5675: $54
	inc h                                            ; $5676: $24
	ld d, h                                          ; $5677: $54
	adc h                                            ; $5678: $8c
	ld e, b                                          ; $5679: $58
	jr z, @+$5a                                      ; $567a: $28 $58

	ld [hl], h                                       ; $567c: $74
	xor h                                            ; $567d: $ac
	call c, Call_023_78ac                            ; $567e: $dc $ac $78
	xor b                                            ; $5681: $a8
	ret c                                            ; $5682: $d8

	xor b                                            ; $5683: $a8
	ld l, e                                          ; $5684: $6b
	ld l, e                                          ; $5685: $6b
	ld c, e                                          ; $5686: $4b
	sbc $eb                                          ; $5687: $de $eb
	sbc l                                            ; $5689: $9d
	or l                                             ; $568a: $b5
	ld [hl], l                                       ; $568b: $75
	sbc $3f                                          ; $568c: $de $3f
	db $dd                                           ; $568e: $dd
	ld e, a                                          ; $568f: $5f
	sbc e                                            ; $5690: $9b
	sbc a                                            ; $5691: $9f
	ld a, a                                          ; $5692: $7f
	ld c, a                                          ; $5693: $4f
	rst SubAFromDE                                          ; $5694: $df
	sbc $9f                                          ; $5695: $de $9f
	rst SubAFromDE                                          ; $5697: $df
	rra                                              ; $5698: $1f
	sbc l                                            ; $5699: $9d
	ldh [$f0], a                                     ; $569a: $e0 $f0
	db $db                                           ; $569c: $db
	ldh [$8a], a                                     ; $569d: $e0 $8a
	nop                                              ; $569f: $00
	add b                                            ; $56a0: $80
	add b                                            ; $56a1: $80
	ldh [$f0], a                                     ; $56a2: $e0 $f0
	add sp, -$0a                                     ; $56a4: $e8 $f6
	rst $38                                          ; $56a6: $ff
	rst $38                                          ; $56a7: $ff
	ld a, a                                          ; $56a8: $7f
	ld a, a                                          ; $56a9: $7f
	ccf                                              ; $56aa: $3f
	rra                                              ; $56ab: $1f
	rra                                              ; $56ac: $1f
	rrca                                             ; $56ad: $0f
	inc bc                                           ; $56ae: $03
	or e                                             ; $56af: $b3
	ld a, l                                          ; $56b0: $7d
	ld a, d                                          ; $56b1: $7a
	ld b, d                                          ; $56b2: $42
	inc a                                            ; $56b3: $3c
	sbc $04                                          ; $56b4: $de $04
	sbc h                                            ; $56b6: $9c
	pop bc                                           ; $56b7: $c1
	jp $dcc7                                         ; $56b8: $c3 $c7 $dc


	rst $38                                          ; $56bb: $ff
	adc h                                            ; $56bc: $8c
	cp [hl]                                          ; $56bd: $be
	cp $fe                                           ; $56be: $fe $fe
	db $fc                                           ; $56c0: $fc
	cp $bc                                           ; $56c1: $fe $bc
	ld e, a                                          ; $56c3: $5f
	cpl                                              ; $56c4: $2f
	pop bc                                           ; $56c5: $c1
	add c                                            ; $56c6: $81
	add c                                            ; $56c7: $81
	add e                                            ; $56c8: $83
	add c                                            ; $56c9: $81
	jp $f0e0                                         ; $56ca: $c3 $e0 $f0


	ccf                                              ; $56cd: $3f
	ccf                                              ; $56ce: $3f
	ld a, a                                          ; $56cf: $7f
	sbc $ff                                          ; $56d0: $de $ff
	rst SubAFromDE                                          ; $56d2: $df
	cp $df                                           ; $56d3: $fe $df
	ret nz                                           ; $56d5: $c0

	sbc [hl]                                         ; $56d6: $9e
	add b                                            ; $56d7: $80
	cp $df                                           ; $56d8: $fe $df
	ld bc, $9797                                     ; $56da: $01 $97 $97
	and a                                            ; $56dd: $a7
	and a                                            ; $56de: $a7
	daa                                              ; $56df: $27
	inc c                                            ; $56e0: $0c
	inc c                                            ; $56e1: $0c
	dec bc                                           ; $56e2: $0b
	dec bc                                           ; $56e3: $0b
	sbc $7c                                          ; $56e4: $de $7c
	add c                                            ; $56e6: $81
	db $fc                                           ; $56e7: $fc
	ld hl, sp-$08                                    ; $56e8: $f8 $f8
	db $fc                                           ; $56ea: $fc
	db $fc                                           ; $56eb: $fc
	rst SubAFromDE                                          ; $56ec: $df
	rst AddAOntoHL                                          ; $56ed: $ef
	ei                                               ; $56ee: $fb
	ldh a, [c]                                       ; $56ef: $f2
	ld a, [hl+]                                      ; $56f0: $2a
	rlca                                             ; $56f1: $07
	rst JumpTable                                          ; $56f2: $c7
	db $fd                                           ; $56f3: $fd
	ld h, d                                          ; $56f4: $62
	ld [hl-], a                                      ; $56f5: $32
	ld [hl], $1e                                     ; $56f6: $36 $1e
	ld e, $04                                        ; $56f8: $1e $04
	inc b                                            ; $56fa: $04
	rlca                                             ; $56fb: $07
	rst $38                                          ; $56fc: $ff
	ldh a, [$80]                                     ; $56fd: $f0 $80
	rrca                                             ; $56ff: $0f
	ld a, [hl]                                       ; $5700: $7e
	rst FarCall                                          ; $5701: $f7
	cp h                                             ; $5702: $bc
	ldh a, [rSB]                                     ; $5703: $f0 $01
	ld [hl], a                                       ; $5705: $77
	jp nc, $0f94                                     ; $5706: $d2 $94 $0f

	ld a, a                                          ; $5709: $7f
	rst $38                                          ; $570a: $ff
	add e                                            ; $570b: $83
	add e                                            ; $570c: $83
	rst $38                                          ; $570d: $ff
	rst $38                                          ; $570e: $ff
	db $fc                                           ; $570f: $fc
	adc b                                            ; $5710: $88
	ld de, $de3e                                     ; $5711: $11 $3e $de
	add b                                            ; $5714: $80
	ld a, e                                          ; $5715: $7b
	or $df                                           ; $5716: $f6 $df
	rst $38                                          ; $5718: $ff
	adc a                                            ; $5719: $8f
	adc h                                            ; $571a: $8c
	cp a                                             ; $571b: $bf
	sbc $ff                                          ; $571c: $de $ff
	ld a, [hl]                                       ; $571e: $7e
	ld e, a                                          ; $571f: $5f
	xor $1f                                          ; $5720: $ee $1f
	rst FarCall                                          ; $5722: $f7
	ldh [c], a                                       ; $5723: $e2
	db $e3                                           ; $5724: $e3
	jp nz, $e2c3                                     ; $5725: $c2 $c3 $e2

	di                                               ; $5728: $f3
	ldh a, [c]                                       ; $5729: $f2
	ld b, a                                          ; $572a: $47
	jr nc, @+$05                                     ; $572b: $30 $03

	ldh a, [rWX]                                     ; $572d: $f0 $4b
	ldh a, [hDisp0_OBP1]                                     ; $572f: $f0 $87
	sbc b                                            ; $5731: $98
	ld d, b                                          ; $5732: $50
	ld sp, $9151                                     ; $5733: $31 $51 $91
	ld [hl], c                                       ; $5736: $71
	inc hl                                           ; $5737: $23
	ld h, d                                          ; $5738: $62
	ld [hl], b                                       ; $5739: $70
	or b                                             ; $573a: $b0
	ret nc                                           ; $573b: $d0

	or c                                             ; $573c: $b1
	ld [hl], c                                       ; $573d: $71
	and c                                            ; $573e: $a1
	pop hl                                           ; $573f: $e1
	and d                                            ; $5740: $a2
	push de                                          ; $5741: $d5
	jp hl                                            ; $5742: $e9


	ld l, c                                          ; $5743: $69
	pop af                                           ; $5744: $f1
	di                                               ; $5745: $f3
	and e                                            ; $5746: $a3
	and e                                            ; $5747: $a3
	push bc                                          ; $5748: $c5
	sbc $bf                                          ; $5749: $de $bf
	ld a, e                                          ; $574b: $7b
	ld b, l                                          ; $574c: $45
	rst SubAFromDE                                          ; $574d: $df
	ld a, a                                          ; $574e: $7f
	add b                                            ; $574f: $80
	rra                                              ; $5750: $1f
	inc e                                            ; $5751: $1c
	rra                                              ; $5752: $1f

Jump_023_5753:
	rra                                              ; $5753: $1f
	rlca                                             ; $5754: $07
	inc bc                                           ; $5755: $03
	ld bc, $e000                                     ; $5756: $01 $00 $e0
	db $e3                                           ; $5759: $e3
	ldh [$e0], a                                     ; $575a: $e0 $e0
	ld hl, sp-$04                                    ; $575c: $f8 $fc
	cp $ff                                           ; $575e: $fe $ff
	cp $ff                                           ; $5760: $fe $ff
	ccf                                              ; $5762: $3f
	add a                                            ; $5763: $87
	ldh [$f8], a                                     ; $5764: $e0 $f8
	rst $38                                          ; $5766: $ff
	ld a, a                                          ; $5767: $7f
	ld bc, $c000                                     ; $5768: $01 $00 $c0
	ld a, b                                          ; $576b: $78
	rra                                              ; $576c: $1f
	rlca                                             ; $576d: $07
	nop                                              ; $576e: $00
	sub e                                            ; $576f: $93
	add b                                            ; $5770: $80
	call nz, $deb2                                   ; $5771: $c4 $b2 $de
	ld b, $06                                        ; $5774: $06 $06
	ld a, [hl]                                       ; $5776: $7e
	ld c, $fa                                        ; $5777: $0e $fa
	rst $38                                          ; $5779: $ff
	ld a, a                                          ; $577a: $7f
	ccf                                              ; $577b: $3f
	db $dd                                           ; $577c: $dd
	rst $38                                          ; $577d: $ff
	sbc h                                            ; $577e: $9c
	rlca                                             ; $577f: $07
	rla                                              ; $5780: $17
	rlca                                             ; $5781: $07
	sbc $0f                                          ; $5782: $de $0f
	sbc $1f                                          ; $5784: $de $1f
	rst SubAFromDE                                          ; $5786: $df
	ld hl, sp-$22                                    ; $5787: $f8 $de
	ldh a, [$de]                                     ; $5789: $f0 $de
	ldh [$dd], a                                     ; $578b: $e0 $dd
	db $fc                                           ; $578d: $fc
	rst SubAFromDE                                          ; $578e: $df
	ld hl, sp-$63                                    ; $578f: $f8 $9d
	ld sp, hl                                        ; $5791: $f9
	pop af                                           ; $5792: $f1
	db $dd                                           ; $5793: $dd
	inc bc                                           ; $5794: $03
	rst SubAFromDE                                          ; $5795: $df
	rlca                                             ; $5796: $07
	sbc d                                            ; $5797: $9a
	ld b, $0e                                        ; $5798: $06 $0e
	rrca                                             ; $579a: $0f
	dec c                                            ; $579b: $0d
	ld a, [bc]                                       ; $579c: $0a
	db $dd                                           ; $579d: $dd
	rrca                                             ; $579e: $0f
	sbc e                                            ; $579f: $9b
	dec c                                            ; $57a0: $0d
	rst $38                                          ; $57a1: $ff
	ld a, [$ddfd]                                    ; $57a2: $fa $fd $dd
	ld hl, sp-$80                                    ; $57a5: $f8 $80
	cp $c7                                           ; $57a7: $fe $c7
	ld a, $9d                                        ; $57a9: $3e $9d
	rra                                              ; $57ab: $1f
	rst FarCall                                          ; $57ac: $f7
	rst AddAOntoHL                                          ; $57ad: $ef
	rst $38                                          ; $57ae: $ff
	or $ff                                           ; $57af: $f6 $ff
	ld sp, hl                                        ; $57b1: $f9
	ld [hl], e                                       ; $57b2: $73
	ldh a, [c]                                       ; $57b3: $f2
	ld a, [hl-]                                      ; $57b4: $3a
	ld e, [hl]                                       ; $57b5: $5e
	adc b                                            ; $57b6: $88
	adc a                                            ; $57b7: $8f
	ld hl, sp-$03                                    ; $57b8: $f8 $fd
	rst $38                                          ; $57ba: $ff
	rst AddAOntoHL                                          ; $57bb: $ef
	rst SubAFromDE                                          ; $57bc: $df
	rst $38                                          ; $57bd: $ff
	cp a                                             ; $57be: $bf
	rst $38                                          ; $57bf: $ff
	rrca                                             ; $57c0: $0f
	add a                                            ; $57c1: $87
	ld b, [hl]                                       ; $57c2: $46
	dec [hl]                                         ; $57c3: $35
	cp h                                             ; $57c4: $bc
	db $e4                                           ; $57c5: $e4
	sbc b                                            ; $57c6: $98
	jp nc, Jump_023_758f                             ; $57c7: $d2 $8f $75

	xor e                                            ; $57ca: $ab
	ld e, l                                          ; $57cb: $5d
	rst AddAOntoHL                                          ; $57cc: $ef
	cp a                                             ; $57cd: $bf
	sbc $ff                                          ; $57ce: $de $ff
	sbc d                                            ; $57d0: $9a
	ld [$bed7], a                                    ; $57d1: $ea $d7 $be
	ldh a, [$c0]                                     ; $57d4: $f0 $c0
	sbc $80                                          ; $57d6: $de $80
	sub l                                            ; $57d8: $95
	ld l, d                                          ; $57d9: $6a
	cp d                                             ; $57da: $ba
	ld a, [$f3f2]                                    ; $57db: $fa $f2 $f3
	push af                                          ; $57de: $f5
	push af                                          ; $57df: $f5
	push de                                          ; $57e0: $d5
	rst $38                                          ; $57e1: $ff
	rst GetHLinHL                                          ; $57e2: $cf
	ld a, e                                          ; $57e3: $7b
	sbc d                                            ; $57e4: $9a
	sbc $3f                                          ; $57e5: $de $3f
	ld a, a                                          ; $57e7: $7f
	inc [hl]                                         ; $57e8: $34
	sbc [hl]                                         ; $57e9: $9e
	and d                                            ; $57ea: $a2
	ld l, e                                          ; $57eb: $6b
	jr nc, @-$60                                     ; $57ec: $30 $9e

	ld e, l                                          ; $57ee: $5d
	inc bc                                           ; $57ef: $03
	db $10                                           ; $57f0: $10
	ld [hl], a                                       ; $57f1: $77
	db $fc                                           ; $57f2: $fc
	sbc l                                            ; $57f3: $9d
	xor d                                            ; $57f4: $aa
	ld d, l                                          ; $57f5: $55
	ld l, a                                          ; $57f6: $6f
	cp $6b                                           ; $57f7: $fe $6b
	ld sp, hl                                        ; $57f9: $f9
	sub d                                            ; $57fa: $92
	xor d                                            ; $57fb: $aa
	and d                                            ; $57fc: $a2
	ld h, d                                          ; $57fd: $62
	ldh [c], a                                       ; $57fe: $e2
	ld b, [hl]                                       ; $57ff: $46
	add $44                                          ; $5800: $c6 $44
	call nz, Call_023_6244                           ; $5802: $c4 $44 $62
	and d                                            ; $5805: $a2
	ld b, d                                          ; $5806: $42
	jp nz, $f97b                                     ; $5807: $c2 $7b $f9

	adc d                                            ; $580a: $8a
	call nz, $85c5                                   ; $580b: $c4 $c5 $85
	and l                                            ; $580e: $a5
	adc c                                            ; $580f: $89
	xor c                                            ; $5810: $a9
	ld e, c                                          ; $5811: $59
	add hl, hl                                       ; $5812: $29
	ld b, [hl]                                       ; $5813: $46
	ld a, a                                          ; $5814: $7f
	ld a, a                                          ; $5815: $7f
	ld e, a                                          ; $5816: $5f
	ld a, a                                          ; $5817: $7f
	ld e, a                                          ; $5818: $5f
	xor a                                            ; $5819: $af
	rst SubAFromDE                                          ; $581a: $df
	cp e                                             ; $581b: $bb
	add b                                            ; $581c: $80
	add b                                            ; $581d: $80
	ret nz                                           ; $581e: $c0

	ret nz                                           ; $581f: $c0

	db $dd                                           ; $5820: $dd
	ldh [$d9], a                                     ; $5821: $e0 $d9
	rst $38                                          ; $5823: $ff
	ld a, [hl]                                       ; $5824: $7e
	dec bc                                           ; $5825: $0b
	sbc [hl]                                         ; $5826: $9e
	rrca                                             ; $5827: $0f
	ld a, e                                          ; $5828: $7b
	ld e, $df                                        ; $5829: $1e $df
	rra                                              ; $582b: $1f
	ld a, a                                          ; $582c: $7f
	db $eb                                           ; $582d: $eb
	sbc [hl]                                         ; $582e: $9e
	ldh a, [$7b]                                     ; $582f: $f0 $7b
	ld e, $df                                        ; $5831: $1e $df
	ldh [hDisp1_LCDC], a                                     ; $5833: $e0 $8f
	cp $c2                                           ; $5835: $fe $c2
	ldh [c], a                                       ; $5837: $e2
	cp $fc                                           ; $5838: $fe $fc
	db $e4                                           ; $583a: $e4
	call c, $03b9                                    ; $583b: $dc $b9 $03
	ccf                                              ; $583e: $3f
	rra                                              ; $583f: $1f
	rlca                                             ; $5840: $07
	rlca                                             ; $5841: $07
	rra                                              ; $5842: $1f
	ccf                                              ; $5843: $3f
	ld a, [hl]                                       ; $5844: $7e
	sbc $3f                                          ; $5845: $de $3f
	rst SubAFromDE                                          ; $5847: $df
	ld a, a                                          ; $5848: $7f
	sbc $ff                                          ; $5849: $de $ff
	sbc $c0                                          ; $584b: $de $c0
	rst SubAFromDE                                          ; $584d: $df
	add b                                            ; $584e: $80
	cp $8e                                           ; $584f: $fe $8e
	di                                               ; $5851: $f3
	db $e3                                           ; $5852: $e3
	rst SubAFromBC                                          ; $5853: $e7
	rst SubAFromBC                                          ; $5854: $e7
	rst AddAOntoHL                                          ; $5855: $ef
	rst GetHLinHL                                          ; $5856: $cf
	rst SubAFromDE                                          ; $5857: $df
	rst SubAFromDE                                          ; $5858: $df
	inc c                                            ; $5859: $0c
	inc e                                            ; $585a: $1c
	jr @+$1a                                         ; $585b: $18 $18

	db $10                                           ; $585d: $10
	jr nc, jr_023_5880                               ; $585e: $30 $20

	jr nz, jr_023_5871                               ; $5860: $20 $0f

	ld [hl], e                                       ; $5862: $73
	ld bc, $0fdf                                     ; $5863: $01 $df $0f
	sbc [hl]                                         ; $5866: $9e
	rst $38                                          ; $5867: $ff
	ld [hl], e                                       ; $5868: $73
	ld bc, $f8df                                     ; $5869: $01 $df $f8
	adc l                                            ; $586c: $8d
	cp a                                             ; $586d: $bf
	rst SubAFromDE                                          ; $586e: $df
	ld [hl], a                                       ; $586f: $77
	xor a                                            ; $5870: $af

jr_023_5871:
	sub a                                            ; $5871: $97
	ld l, d                                          ; $5872: $6a
	or l                                             ; $5873: $b5
	jp c, $e1c1                                      ; $5874: $da $c1 $e1

	rst $38                                          ; $5877: $ff
	ret nc                                           ; $5878: $d0

	add sp, -$2b                                     ; $5879: $e8 $d5
	ld l, d                                          ; $587b: $6a
	dec a                                            ; $587c: $3d
	ld [hl], e                                       ; $587d: $73
	sbc a                                            ; $587e: $9f
	ld a, e                                          ; $587f: $7b

jr_023_5880:
	jp nz, $d58f                                     ; $5880: $c2 $8f $d5

	ld l, e                                          ; $5883: $6b
	rst FarCall                                          ; $5884: $f7
	cp $f2                                           ; $5885: $fe $f2
	db $fc                                           ; $5887: $fc
	ld b, d                                          ; $5888: $42
	ld b, c                                          ; $5889: $41
	ld l, e                                          ; $588a: $6b
	or $fc                                           ; $588b: $f6 $fc
	cp a                                             ; $588d: $bf
	db $fc                                           ; $588e: $fc
	push de                                          ; $588f: $d5
	xor d                                            ; $5890: $aa
	ld [hl], l                                       ; $5891: $75
	ld [hl], a                                       ; $5892: $77
	or b                                             ; $5893: $b0
	ld a, [hl]                                       ; $5894: $7e
	cp $9d                                           ; $5895: $fe $9d
	push de                                          ; $5897: $d5
	adc d                                            ; $5898: $8a
	cp $df                                           ; $5899: $fe $df
	ld sp, hl                                        ; $589b: $f9
	rst SubAFromDE                                          ; $589c: $df
	pop af                                           ; $589d: $f1
	rst SubAFromDE                                          ; $589e: $df
	pop hl                                           ; $589f: $e1
	rst SubAFromDE                                          ; $58a0: $df
	pop bc                                           ; $58a1: $c1
	db $dd                                           ; $58a2: $dd
	rra                                              ; $58a3: $1f
	ld [hl], a                                       ; $58a4: $77
	sub l                                            ; $58a5: $95
	ld b, a                                          ; $58a6: $47
	jr nc, @+$05                                     ; $58a7: $30 $03

	ldh a, [rWX]                                     ; $58a9: $f0 $4b
	ldh a, [$9b]                                     ; $58ab: $f0 $9b
	adc d                                            ; $58ad: $8a
	jp z, $c2ca                                      ; $58ae: $ca $ca $c2

	sbc $c6                                          ; $58b1: $de $c6
	sbc d                                            ; $58b3: $9a
	sub h                                            ; $58b4: $94
	push bc                                          ; $58b5: $c5
	add l                                            ; $58b6: $85
	add l                                            ; $58b7: $85
	adc l                                            ; $58b8: $8d
	sbc $89                                          ; $58b9: $de $89
	adc [hl]                                         ; $58bb: $8e
	adc e                                            ; $58bc: $8b
	ld [hl], d                                       ; $58bd: $72
	ld e, d                                          ; $58be: $5a
	pop de                                           ; $58bf: $d1
	call nc, $c8c2                                   ; $58c0: $d4 $c2 $c8
	push de                                          ; $58c3: $d5
	ld d, b                                          ; $58c4: $50
	sbc a                                            ; $58c5: $9f
	or a                                             ; $58c6: $b7
	ld a, $2b                                        ; $58c7: $3e $2b
	dec a                                            ; $58c9: $3d
	scf                                              ; $58ca: $37
	ld a, [hl+]                                      ; $58cb: $2a
	cpl                                              ; $58cc: $2f
	db $dd                                           ; $58cd: $dd
	ldh a, [$79]                                     ; $58ce: $f0 $79
	ld e, b                                          ; $58d0: $58
	ld a, [hl]                                       ; $58d1: $7e
	add hl, bc                                       ; $58d2: $09
	ld h, a                                          ; $58d3: $67
	nop                                              ; $58d4: $00
	sbc e                                            ; $58d5: $9b
	ccf                                              ; $58d6: $3f
	ld e, $0f                                        ; $58d7: $1e $0f
	inc bc                                           ; $58d9: $03
	sbc $01                                          ; $58da: $de $01
	rst SubAFromDE                                          ; $58dc: $df
	ret nz                                           ; $58dd: $c0

	sbc h                                            ; $58de: $9c
	pop hl                                           ; $58df: $e1
	ldh a, [$fc]                                     ; $58e0: $f0 $fc
	sbc $fe                                          ; $58e2: $de $fe
	sub d                                            ; $58e4: $92
	ld c, c                                          ; $58e5: $49
	adc e                                            ; $58e6: $8b
	ld [hl], a                                       ; $58e7: $77
	db $d3                                           ; $58e8: $d3
	pop af                                           ; $58e9: $f1
	or b                                             ; $58ea: $b0
	ldh a, [$f0]                                     ; $58eb: $f0 $f0
	cp $fc                                           ; $58ed: $fe $fc
	sbc b                                            ; $58ef: $98
	inc a                                            ; $58f0: $3c
	ld a, $de                                        ; $58f1: $3e $de
	ld a, a                                          ; $58f3: $7f
	ld h, [hl]                                       ; $58f4: $66
	jp c, Jump_023_7efb                              ; $58f5: $da $fb $7e

	jp c, $ffdb                                      ; $58f8: $da $db $ff

	rst SubAFromDE                                          ; $58fb: $df
	cp $fb                                           ; $58fc: $fe $fb
	rst SubAFromDE                                          ; $58fe: $df
	ld bc, $fd7d                                     ; $58ff: $01 $7d $fd
	sub a                                            ; $5902: $97
	dec b                                            ; $5903: $05
	ld b, $05                                        ; $5904: $06 $05
	rlca                                             ; $5906: $07
	dec c                                            ; $5907: $0d
	ld a, [bc]                                       ; $5908: $0a
	db $fc                                           ; $5909: $fc
	db $fd                                           ; $590a: $fd
	ld a, e                                          ; $590b: $7b
	ld [$fc80], a                                    ; $590c: $ea $80 $fc
	ld a, [$7ffd]                                    ; $590f: $fa $fd $7f
	db $ed                                           ; $5912: $ed
	db $db                                           ; $5913: $db
	or a                                             ; $5914: $b7
	dec hl                                           ; $5915: $2b
	ld a, l                                          ; $5916: $7d
	ld e, e                                          ; $5917: $5b
	ld d, l                                          ; $5918: $55
	rst SubAFromBC                                          ; $5919: $e7
	adc a                                            ; $591a: $8f
	dec c                                            ; $591b: $0d
	add hl, de                                       ; $591c: $19
	ld sp, $6121                                     ; $591d: $31 $21 $61
	pop hl                                           ; $5920: $e1
	ld a, [$b2e5]                                    ; $5921: $fa $e5 $b2
	pop de                                           ; $5924: $d1
	ld [hl], h                                       ; $5925: $74
	ld d, [hl]                                       ; $5926: $56
	ld l, a                                          ; $5927: $6f
	ld e, a                                          ; $5928: $5f
	db $fd                                           ; $5929: $fd
	cp $ff                                           ; $592a: $fe $ff
	cp a                                             ; $592c: $bf
	add b                                            ; $592d: $80
	sbc e                                            ; $592e: $9b
	sbc c                                            ; $592f: $99
	sbc b                                            ; $5930: $98
	adc b                                            ; $5931: $88
	rst $38                                          ; $5932: $ff
	ld a, a                                          ; $5933: $7f
	cp a                                             ; $5934: $bf
	ld d, l                                          ; $5935: $55
	xor e                                            ; $5936: $ab
	ld d, l                                          ; $5937: $55
	xor e                                            ; $5938: $ab
	rst SubAFromDE                                          ; $5939: $df
	nop                                              ; $593a: $00
	add b                                            ; $593b: $80
	ld b, b                                          ; $593c: $40
	xor d                                            ; $593d: $aa
	push de                                          ; $593e: $d5
	db $eb                                           ; $593f: $eb
	ld [hl], l                                       ; $5940: $75
	ccf                                              ; $5941: $3f
	jp nc, $ba9b                                     ; $5942: $d2 $9b $ba

	cp l                                             ; $5945: $bd
	ld a, [hl]                                       ; $5946: $7e
	ld a, l                                          ; $5947: $7d
	ld a, [hl]                                       ; $5948: $7e
	db $fd                                           ; $5949: $fd
	rst AddAOntoHL                                          ; $594a: $ef
	and $c7                                          ; $594b: $e6 $c7
	sbc d                                            ; $594d: $9a
	add $85                                          ; $594e: $c6 $85
	add [hl]                                         ; $5950: $86
	add l                                            ; $5951: $85
	ld a, [bc]                                       ; $5952: $0a
	inc bc                                           ; $5953: $03
	db $10                                           ; $5954: $10
	ld b, a                                          ; $5955: $47
	ldh a, [$9b]                                     ; $5956: $f0 $9b
	db $dd                                           ; $5958: $dd
	xor e                                            ; $5959: $ab
	ld [hl], a                                       ; $595a: $77
	xor e                                            ; $595b: $ab
	ld a, e                                          ; $595c: $7b
	db $fc                                           ; $595d: $fc
	ld a, c                                          ; $595e: $79
	db $ed                                           ; $595f: $ed
	sub d                                            ; $5960: $92
	adc c                                            ; $5961: $89
	ld d, l                                          ; $5962: $55
	inc hl                                           ; $5963: $23
	ld d, l                                          ; $5964: $55
	adc c                                            ; $5965: $89
	sub b                                            ; $5966: $90
	sub b                                            ; $5967: $90
	db $10                                           ; $5968: $10
	sub c                                            ; $5969: $91
	adc c                                            ; $596a: $89
	adc c                                            ; $596b: $89
	adc b                                            ; $596c: $88
	and b                                            ; $596d: $a0
	sbc $8b                                          ; $596e: $de $8b
	sbc [hl]                                         ; $5970: $9e
	ld a, [bc]                                       ; $5971: $0a
	db $dd                                           ; $5972: $dd
	ld [de], a                                       ; $5973: $12
	adc a                                            ; $5974: $8f
	dec d                                            ; $5975: $15
	ld a, [de]                                       ; $5976: $1a
	dec d                                            ; $5977: $15
	ld a, [hl-]                                      ; $5978: $3a
	dec [hl]                                         ; $5979: $35
	ld a, $15                                        ; $597a: $3e $15
	ld e, $6a                                        ; $597c: $1e $6a
	ld h, l                                          ; $597e: $65
	ld l, d                                          ; $597f: $6a
	ld b, l                                          ; $5980: $45
	ld c, d                                          ; $5981: $4a
	ld b, c                                          ; $5982: $41
	ld c, d                                          ; $5983: $4a
	ld b, c                                          ; $5984: $41
	sbc $df                                          ; $5985: $de $df
	sbc l                                            ; $5987: $9d
	rst SubAFromHL                                          ; $5988: $d7
	sub a                                            ; $5989: $97
	sbc $93                                          ; $598a: $de $93
	reti                                             ; $598c: $d9


	rst $38                                          ; $598d: $ff
	sub a                                            ; $598e: $97
	ld bc, $c080                                     ; $598f: $01 $80 $c0
	ld h, b                                          ; $5992: $60
	ld h, b                                          ; $5993: $60
	jr nc, jr_023_59c6                               ; $5994: $30 $30

	jr c, jr_023_59fe                                ; $5996: $38 $66

	rst AddAOntoHL                                          ; $5998: $ef
	rst SubAFromDE                                          ; $5999: $df
	ld a, b                                          ; $599a: $78
	sbc c                                            ; $599b: $99
	ld l, h                                          ; $599c: $6c
	ld h, h                                          ; $599d: $64
	ld h, d                                          ; $599e: $62
	ld hl, $2021                                     ; $599f: $21 $21 $20
	reti                                             ; $59a2: $d9


	rst $38                                          ; $59a3: $ff
	ld a, l                                          ; $59a4: $7d
	pop hl                                           ; $59a5: $e1
	call c, $9d0f                                    ; $59a6: $dc $0f $9d
	adc a                                            ; $59a9: $8f
	ldh [$da], a                                     ; $59aa: $e0 $da
	ldh a, [$df]                                     ; $59ac: $f0 $df
	cp $de                                           ; $59ae: $fe $de
	db $fc                                           ; $59b0: $fc
	sbc d                                            ; $59b1: $9a
	db $fd                                           ; $59b2: $fd
	ld sp, hl                                        ; $59b3: $f9
	ld sp, hl                                        ; $59b4: $f9
	ld bc, $6c01                                     ; $59b5: $01 $01 $6c
	cp $7f                                           ; $59b8: $fe $7f
	ld b, $86                                        ; $59ba: $06 $86
	ld c, l                                          ; $59bc: $4d
	adc l                                            ; $59bd: $8d
	adc [hl]                                         ; $59be: $8e
	dec bc                                           ; $59bf: $0b
	rla                                              ; $59c0: $17
	dec de                                           ; $59c1: $1b
	ld a, [$fbfd]                                    ; $59c2: $fa $fd $fb
	ei                                               ; $59c5: $fb

jr_023_59c6:
	ld sp, hl                                        ; $59c6: $f9
	db $fc                                           ; $59c7: $fc
	ld hl, sp-$0c                                    ; $59c8: $f8 $f4
	ei                                               ; $59ca: $fb
	or l                                             ; $59cb: $b5
	ld l, e                                          ; $59cc: $6b
	push af                                          ; $59cd: $f5
	db $eb                                           ; $59ce: $eb
	rst SubAFromHL                                          ; $59cf: $d7
	xor e                                            ; $59d0: $ab
	rst SubAFromHL                                          ; $59d1: $d7
	pop bc                                           ; $59d2: $c1
	pop bc                                           ; $59d3: $c1
	add c                                            ; $59d4: $81
	call c, $9701                                    ; $59d5: $dc $01 $97
	db $eb                                           ; $59d8: $eb
	db $db                                           ; $59d9: $db
	db $eb                                           ; $59da: $eb
	db $d3                                           ; $59db: $d3
	db $eb                                           ; $59dc: $eb
	di                                               ; $59dd: $f3
	db $eb                                           ; $59de: $eb
	rst SubAFromHL                                          ; $59df: $d7
	db $dd                                           ; $59e0: $dd
	inc c                                            ; $59e1: $0c
	sbc $04                                          ; $59e2: $de $04
	sbc d                                            ; $59e4: $9a
	nop                                              ; $59e5: $00
	pop af                                           ; $59e6: $f1
	jp hl                                            ; $59e7: $e9


	ld sp, hl                                        ; $59e8: $f9
	db $fd                                           ; $59e9: $fd
	halt                                             ; $59ea: $76
	sbc b                                            ; $59eb: $98
	rst SubAFromDE                                          ; $59ec: $df
	rra                                              ; $59ed: $1f
	ld a, l                                          ; $59ee: $7d
	adc b                                            ; $59ef: $88
	ld a, h                                          ; $59f0: $7c
	ld a, b                                          ; $59f1: $78
	rst SubAFromDE                                          ; $59f2: $df
	inc bc                                           ; $59f3: $03
	ld a, a                                          ; $59f4: $7f
	ret z                                            ; $59f5: $c8

	sub c                                            ; $59f6: $91
	ld a, [$3a7f]                                    ; $59f7: $fa $7f $3a
	dec a                                            ; $59fa: $3d
	ld a, d                                          ; $59fb: $7a
	ld [hl], a                                       ; $59fc: $77
	dec c                                            ; $59fd: $0d

jr_023_59fe:
	ld a, [bc]                                       ; $59fe: $0a
	dec c                                            ; $59ff: $0d
	adc b                                            ; $5a00: $88
	push de                                          ; $5a01: $d5
	jp nc, $9895                                     ; $5a02: $d2 $95 $98

	ld l, c                                          ; $5a05: $69
	add hl, hl                                       ; $5a06: $29
	ld [hl], a                                       ; $5a07: $77
	jr nc, jr_023_5a7b                               ; $5a08: $30 $71

	dec d                                            ; $5a0a: $15
	rlca                                             ; $5a0b: $07
	ldh a, [rPCM34]                                  ; $5a0c: $f0 $77
	inc b                                            ; $5a0e: $04
	ld [hl], e                                       ; $5a0f: $73
	nop                                              ; $5a10: $00
	ld a, e                                          ; $5a11: $7b
	inc b                                            ; $5a12: $04
	ld [hl], a                                       ; $5a13: $77
	db $fc                                           ; $5a14: $fc
	sbc l                                            ; $5a15: $9d
	and b                                            ; $5a16: $a0
	and h                                            ; $5a17: $a4
	db $db                                           ; $5a18: $db
	inc h                                            ; $5a19: $24
	reti                                             ; $5a1a: $d9


	ld [de], a                                       ; $5a1b: $12
	sub d                                            ; $5a1c: $92
	dec e                                            ; $5a1d: $1d
	adc [hl]                                         ; $5a1e: $8e
	adc a                                            ; $5a1f: $8f
	adc a                                            ; $5a20: $8f
	adc e                                            ; $5a21: $8b
	adc a                                            ; $5a22: $8f
	xor e                                            ; $5a23: $ab
	xor a                                            ; $5a24: $af
	ld b, d                                          ; $5a25: $42
	ld b, c                                          ; $5a26: $41
	ld b, b                                          ; $5a27: $40
	ld b, b                                          ; $5a28: $40
	ld b, h                                          ; $5a29: $44
	ld a, e                                          ; $5a2a: $7b
	cp $df                                           ; $5a2b: $fe $df
	sub e                                            ; $5a2d: $93
	sbc $b3                                          ; $5a2e: $de $b3
	sbc d                                            ; $5a30: $9a
	xor c                                            ; $5a31: $a9
	ld a, c                                          ; $5a32: $79
	ld sp, hl                                        ; $5a33: $f9
	rst $38                                          ; $5a34: $ff
	rst $38                                          ; $5a35: $ff
	db $dd                                           ; $5a36: $dd
	rst SubAFromDE                                          ; $5a37: $df
	sub l                                            ; $5a38: $95
	rst GetHLinHL                                          ; $5a39: $cf
	ld c, a                                          ; $5a3a: $4f
	jr z, jr_023_5a69                                ; $5a3b: $28 $2c

	inc h                                            ; $5a3d: $24
	ld h, $22                                        ; $5a3e: $26 $22
	inc hl                                           ; $5a40: $23
	and c                                            ; $5a41: $a1
	and b                                            ; $5a42: $a0
	reti                                             ; $5a43: $d9


	rst $38                                          ; $5a44: $ff
	sbc l                                            ; $5a45: $9d
	db $10                                           ; $5a46: $10
	ld [$9dfd], sp                                   ; $5a47: $08 $fd $9d
	add b                                            ; $5a4a: $80
	ldh a, [$d9]                                     ; $5a4b: $f0 $d9
	rst $38                                          ; $5a4d: $ff
	sbc l                                            ; $5a4e: $9d
	sbc a                                            ; $5a4f: $9f
	ld e, a                                          ; $5a50: $5f
	ld [hl], a                                       ; $5a51: $77
	ld d, [hl]                                       ; $5a52: $56
	ld a, a                                          ; $5a53: $7f
	ld c, b                                          ; $5a54: $48
	db $dd                                           ; $5a55: $dd
	ldh [$7d], a                                     ; $5a56: $e0 $7d
	rst JumpTable                                          ; $5a58: $c7
	sub h                                            ; $5a59: $94
	ei                                               ; $5a5a: $fb
	rst $38                                          ; $5a5b: $ff
	ld a, [$f2fa]                                    ; $5a5c: $fa $fa $f2
	db $f4                                           ; $5a5f: $f4
	or l                                             ; $5a60: $b5
	rlca                                             ; $5a61: $07
	dec c                                            ; $5a62: $0d
	ld [$7807], sp                                   ; $5a63: $08 $07 $78
	jp z, Jump_023_4f9e                              ; $5a66: $ca $9e $4f

jr_023_5a69:
	sbc $ff                                          ; $5a69: $de $ff
	adc a                                            ; $5a6b: $8f
	rla                                              ; $5a6c: $17
	dec hl                                           ; $5a6d: $2b
	ld d, a                                          ; $5a6e: $57
	xor e                                            ; $5a6f: $ab
	ld d, a                                          ; $5a70: $57
	xor a                                            ; $5a71: $af
	ld d, a                                          ; $5a72: $57
	xor a                                            ; $5a73: $af
	ld hl, sp-$0c                                    ; $5a74: $f8 $f4
	add sp, -$2c                                     ; $5a76: $e8 $d4
	xor b                                            ; $5a78: $a8
	ld d, b                                          ; $5a79: $50
	xor b                                            ; $5a7a: $a8

jr_023_5a7b:
	ret nc                                           ; $5a7b: $d0

	ld [hl], e                                       ; $5a7c: $73
	di                                               ; $5a7d: $f3
	ld a, a                                          ; $5a7e: $7f
	cp $7e                                           ; $5a7f: $fe $7e
	xor b                                            ; $5a81: $a8
	call c, $9501                                    ; $5a82: $dc $01 $95
	inc bc                                           ; $5a85: $03
	rra                                              ; $5a86: $1f
	db $eb                                           ; $5a87: $eb
	push af                                          ; $5a88: $f5
	db $eb                                           ; $5a89: $eb
	push af                                          ; $5a8a: $f5
	ld a, [$fbf5]                                    ; $5a8b: $fa $f5 $fb
	rst $38                                          ; $5a8e: $ff
	ei                                               ; $5a8f: $fb
	sbc l                                            ; $5a90: $9d
	add b                                            ; $5a91: $80
	ldh [$de], a                                     ; $5a92: $e0 $de
	cp $df                                           ; $5a94: $fe $df
	db $fc                                           ; $5a96: $fc
	sbc h                                            ; $5a97: $9c
	db $f4                                           ; $5a98: $f4
	call nz, Call_023_7684                           ; $5a99: $c4 $84 $76
	jp $0f8b                                         ; $5a9c: $c3 $8b $0f


	ccf                                              ; $5a9f: $3f
	ld a, a                                          ; $5aa0: $7f
	rst $38                                          ; $5aa1: $ff
	ld l, d                                          ; $5aa2: $6a
	db $ed                                           ; $5aa3: $ed
	jp z, $8acf                                      ; $5aa4: $ca $cf $8a

	sbc l                                            ; $5aa7: $9d
	ld a, [de]                                       ; $5aa8: $1a
	scf                                              ; $5aa9: $37
	sbc l                                            ; $5aaa: $9d
	ld a, [de]                                       ; $5aab: $1a
	dec a                                            ; $5aac: $3d
	jr c, jr_023_5b2c                                ; $5aad: $38 $7d

	ld [hl], d                                       ; $5aaf: $72
	push af                                          ; $5ab0: $f5
	add sp, $03                                      ; $5ab1: $e8 $03
	nop                                              ; $5ab3: $00

jr_023_5ab4:
	ld c, e                                          ; $5ab4: $4b
	ldh a, [$9d]                                     ; $5ab5: $f0 $9d
	sbc $76                                          ; $5ab7: $de $76
	ld l, a                                          ; $5ab9: $6f
	cp $9d                                           ; $5aba: $fe $9d
	ld [hl+], a                                      ; $5abc: $22
	adc d                                            ; $5abd: $8a
	ld l, a                                          ; $5abe: $6f
	cp $de                                           ; $5abf: $fe $de
	inc h                                            ; $5ac1: $24
	sbc [hl]                                         ; $5ac2: $9e
	dec h                                            ; $5ac3: $25
	sbc $15                                          ; $5ac4: $de $15
	sbc [hl]                                         ; $5ac6: $9e
	dec b                                            ; $5ac7: $05
	db $dd                                           ; $5ac8: $dd
	ld [de], a                                       ; $5ac9: $12
	db $dd                                           ; $5aca: $dd
	ld [hl+], a                                      ; $5acb: $22
	adc a                                            ; $5acc: $8f
	xor e                                            ; $5acd: $ab
	cp a                                             ; $5ace: $bf
	dec sp                                           ; $5acf: $3b
	dec a                                            ; $5ad0: $3d
	add hl, sp                                       ; $5ad1: $39
	dec a                                            ; $5ad2: $3d
	add hl, bc                                       ; $5ad3: $09
	dec e                                            ; $5ad4: $1d
	ld b, h                                          ; $5ad5: $44
	ld b, b                                          ; $5ad6: $40
	call nz, $c6c2                                   ; $5ad7: $c4 $c2 $c6
	jp nz, $c2d6                                     ; $5ada: $c2 $d6 $c2

	call c, $def9                                    ; $5add: $dc $f9 $de
	ei                                               ; $5ae0: $fb
	reti                                             ; $5ae1: $d9


	ld c, a                                          ; $5ae2: $4f
	sbc [hl]                                         ; $5ae3: $9e
	or b                                             ; $5ae4: $b0
	db $dd                                           ; $5ae5: $dd
	sub b                                            ; $5ae6: $90
	sbc $10                                          ; $5ae7: $de $10
	ld h, d                                          ; $5ae9: $62
	db $10                                           ; $5aea: $10
	sbc [hl]                                         ; $5aeb: $9e
	ld bc, $d9fb                                     ; $5aec: $01 $fb $d9
	rst $38                                          ; $5aef: $ff
	ld a, a                                          ; $5af0: $7f
	rlca                                             ; $5af1: $07
	sbc [hl]                                         ; $5af2: $9e
	ccf                                              ; $5af3: $3f
	ld [hl], c                                       ; $5af4: $71
	rlca                                             ; $5af5: $07
	ld h, h                                          ; $5af6: $64
	pop de                                           ; $5af7: $d1
	sub a                                            ; $5af8: $97
	db $10                                           ; $5af9: $10
	ld h, b                                          ; $5afa: $60
	add b                                            ; $5afb: $80
	nop                                              ; $5afc: $00
	inc b                                            ; $5afd: $04
	ld c, $1f                                        ; $5afe: $0e $1f
	rra                                              ; $5b00: $1f
	db $dd                                           ; $5b01: $dd
	rst $38                                          ; $5b02: $ff
	sbc b                                            ; $5b03: $98
	ei                                               ; $5b04: $fb
	pop af                                           ; $5b05: $f1
	ldh [$e0], a                                     ; $5b06: $e0 $e0
	ld d, a                                          ; $5b08: $57
	cpl                                              ; $5b09: $2f
	inc e                                            ; $5b0a: $1c
	db $fc                                           ; $5b0b: $fc
	sbc l                                            ; $5b0c: $9d
	add sp, -$0d                                     ; $5b0d: $e8 $f3
	db $db                                           ; $5b0f: $db
	rst $38                                          ; $5b10: $ff
	sbc [hl]                                         ; $5b11: $9e
	ldh [$6f], a                                     ; $5b12: $e0 $6f
	jr jr_023_5ab4                                   ; $5b14: $18 $9e

	add b                                            ; $5b16: $80
	db $db                                           ; $5b17: $db
	rst $38                                          ; $5b18: $ff
	rst SubAFromDE                                          ; $5b19: $df
	ld a, a                                          ; $5b1a: $7f
	ld a, h                                          ; $5b1b: $7c
	rst JumpTable                                          ; $5b1c: $c7
	sbc d                                            ; $5b1d: $9a
	pop bc                                           ; $5b1e: $c1
	rst SubAFromBC                                          ; $5b1f: $e7
	rst $38                                          ; $5b20: $ff
	rst $38                                          ; $5b21: $ff
	db $fd                                           ; $5b22: $fd
	ld a, b                                          ; $5b23: $78
	ldh [c], a                                       ; $5b24: $e2
	sub [hl]                                         ; $5b25: $96
	ld a, $18                                        ; $5b26: $3e $18
	nop                                              ; $5b28: $00
	nop                                              ; $5b29: $00
	ld [bc], a                                       ; $5b2a: $02
	ld [bc], a                                       ; $5b2b: $02

jr_023_5b2c:
	inc c                                            ; $5b2c: $0c
	ld l, h                                          ; $5b2d: $6c
	db $ec                                           ; $5b2e: $ec
	sbc $ef                                          ; $5b2f: $de $ef
	sub d                                            ; $5b31: $92
	db $ed                                           ; $5b32: $ed
	rst AddAOntoHL                                          ; $5b33: $ef
	rst FarCall                                          ; $5b34: $f7
	sub a                                            ; $5b35: $97
	rla                                              ; $5b36: $17
	rla                                              ; $5b37: $17
	ld d, $14                                        ; $5b38: $16 $14
	ld d, $14                                        ; $5b3a: $16 $14
	ld e, l                                          ; $5b3c: $5d
	ld [hl], a                                       ; $5b3d: $77
	db $dd                                           ; $5b3e: $dd
	ld [hl], e                                       ; $5b3f: $73
	cp $9a                                           ; $5b40: $fe $9a
	ldh [c], a                                       ; $5b42: $e2
	ret z                                            ; $5b43: $c8

	and d                                            ; $5b44: $a2
	adc b                                            ; $5b45: $88
	ld [hl+], a                                      ; $5b46: $22
	ld a, e                                          ; $5b47: $7b
	cp $6f                                           ; $5b48: $fe $6f
	ldh a, [c]                                       ; $5b4a: $f2
	ld a, a                                          ; $5b4b: $7f
	cp $77                                           ; $5b4c: $fe $77
	db $f4                                           ; $5b4e: $f4
	inc bc                                           ; $5b4f: $03
	ldh a, [$7b]                                     ; $5b50: $f0 $7b
	cp $9b                                           ; $5b52: $fe $9b
	cp $be                                           ; $5b54: $fe $be
	ld a, [$7bee]                                    ; $5b56: $fa $ee $7b
	db $fc                                           ; $5b59: $fc
	sbc d                                            ; $5b5a: $9a
	rst $38                                          ; $5b5b: $ff
	ld [bc], a                                       ; $5b5c: $02
	ld b, d                                          ; $5b5d: $42
	ld b, $12                                        ; $5b5e: $06 $12
	ld a, e                                          ; $5b60: $7b
	db $fc                                           ; $5b61: $fc
	sbc [hl]                                         ; $5b62: $9e
	ld bc, $05de                                     ; $5b63: $01 $de $05
	rst SubAFromDE                                          ; $5b66: $df
	ld de, $3c7b                                     ; $5b67: $11 $7b $3c
	call c, $8122                                    ; $5b6a: $dc $22 $81
	ld [hl-], a                                      ; $5b6d: $32
	inc sp                                           ; $5b6e: $33
	inc sp                                           ; $5b6f: $33
	add hl, bc                                       ; $5b70: $09
	dec d                                            ; $5b71: $15
	add hl, bc                                       ; $5b72: $09
	dec d                                            ; $5b73: $15
	ld [$4a54], sp                                   ; $5b74: $08 $54 $4a
	ld e, h                                          ; $5b77: $5c
	sub $ca                                          ; $5b78: $d6 $ca
	sub $ca                                          ; $5b7a: $d6 $ca
	rst SubAFromHL                                          ; $5b7c: $d7
	adc e                                            ; $5b7d: $8b
	sub l                                            ; $5b7e: $95
	adc e                                            ; $5b7f: $8b
	cp $de                                           ; $5b80: $fe $de
	cp h                                             ; $5b82: $bc
	db $fc                                           ; $5b83: $fc
	db $fc                                           ; $5b84: $fc
	ei                                               ; $5b85: $fb
	ld hl, sp-$08                                    ; $5b86: $f8 $f8
	ld c, a                                          ; $5b88: $4f
	ld l, a                                          ; $5b89: $6f
	ld l, a                                          ; $5b8a: $6f
	sbc $2f                                          ; $5b8b: $de $2f
	rst SubAFromDE                                          ; $5b8d: $df
	ccf                                              ; $5b8e: $3f
	db $db                                           ; $5b8f: $db
	db $10                                           ; $5b90: $10
	sbc l                                            ; $5b91: $9d
	cp $21                                           ; $5b92: $fe $21
	reti                                             ; $5b94: $d9


	rst $38                                          ; $5b95: $ff
	ld a, [hl]                                       ; $5b96: $7e
	ld l, d                                          ; $5b97: $6a
	sub b                                            ; $5b98: $90
	rra                                              ; $5b99: $1f
	ccf                                              ; $5b9a: $3f
	ld a, a                                          ; $5b9b: $7f
	ccf                                              ; $5b9c: $3f
	rra                                              ; $5b9d: $1f
	ldh a, [$fc]                                     ; $5b9e: $f0 $fc
	ld hl, sp-$20                                    ; $5ba0: $f8 $e0
	ret nz                                           ; $5ba2: $c0

	add b                                            ; $5ba3: $80
	ret nz                                           ; $5ba4: $c0

	ldh [rIE], a                                     ; $5ba5: $e0 $ff
	ret nz                                           ; $5ba7: $c0

	db $dd                                           ; $5ba8: $dd
	add b                                            ; $5ba9: $80
	rst $38                                          ; $5baa: $ff
	sbc l                                            ; $5bab: $9d
	ld hl, sp+$3f                                    ; $5bac: $f8 $3f
	db $dd                                           ; $5bae: $dd
	ld a, a                                          ; $5baf: $7f
	halt                                             ; $5bb0: $76
	ldh [$7f], a                                     ; $5bb1: $e0 $7f
	pop hl                                           ; $5bb3: $e1
	call c, $df3f                                    ; $5bb4: $dc $3f $df
	ldh [$db], a                                     ; $5bb7: $e0 $db
	ret nz                                           ; $5bb9: $c0

	sbc e                                            ; $5bba: $9b
	add c                                            ; $5bbb: $81
	jp $efc7                                         ; $5bbc: $c3 $c7 $ef


	halt                                             ; $5bbf: $76
	reti                                             ; $5bc0: $d9


	sbc e                                            ; $5bc1: $9b
	ld a, [hl]                                       ; $5bc2: $7e
	inc a                                            ; $5bc3: $3c
	jr c, @+$12                                      ; $5bc4: $38 $10

	halt                                             ; $5bc6: $76
	ret                                              ; $5bc7: $c9


	call c, Call_023_7b80                            ; $5bc8: $dc $80 $7b
	ld hl, sp-$24                                    ; $5bcb: $f8 $dc
	ld a, a                                          ; $5bcd: $7f
	sbc $ff                                          ; $5bce: $de $ff
	ld a, l                                          ; $5bd0: $7d
	inc de                                           ; $5bd1: $13
	ld a, a                                          ; $5bd2: $7f
	or [hl]                                          ; $5bd3: $b6
	sbc d                                            ; $5bd4: $9a
	ld hl, sp-$07                                    ; $5bd5: $f8 $f9
	add [hl]                                         ; $5bd7: $86
	ld a, b                                          ; $5bd8: $78
	ld [bc], a                                       ; $5bd9: $02
	ld [hl], h                                       ; $5bda: $74
	db $d3                                           ; $5bdb: $d3
	add b                                            ; $5bdc: $80
	rlca                                             ; $5bdd: $07
	ld a, a                                          ; $5bde: $7f
	add a                                            ; $5bdf: $87
	db $ed                                           ; $5be0: $ed
	rst GetHLinHL                                          ; $5be1: $cf
	rst GetHLinHL                                          ; $5be2: $cf
	call $afd7                                       ; $5be3: $cd $d7 $af
	ld c, a                                          ; $5be6: $4f
	ld c, a                                          ; $5be7: $4f
	ld d, $34                                        ; $5be8: $16 $34
	inc [hl]                                         ; $5bea: $34
	ld [hl], $3c                                     ; $5beb: $36 $3c
	db $f4                                           ; $5bed: $f4

jr_023_5bee:
	or h                                             ; $5bee: $b4
	or h                                             ; $5bef: $b4
	db $fd                                           ; $5bf0: $fd
	cp a                                             ; $5bf1: $bf
	ei                                               ; $5bf2: $fb
	rst AddAOntoHL                                          ; $5bf3: $ef
	rst $38                                          ; $5bf4: $ff
	cp a                                             ; $5bf5: $bf
	ei                                               ; $5bf6: $fb
	rst $38                                          ; $5bf7: $ff
	ld [bc], a                                       ; $5bf8: $02
	ld b, b                                          ; $5bf9: $40
	inc b                                            ; $5bfa: $04
	db $10                                           ; $5bfb: $10
	adc [hl]                                         ; $5bfc: $8e
	nop                                              ; $5bfd: $00
	ld b, b                                          ; $5bfe: $40

jr_023_5bff:
	inc b                                            ; $5bff: $04
	nop                                              ; $5c00: $00
	db $dd                                           ; $5c01: $dd
	rst $38                                          ; $5c02: $ff
	or a                                             ; $5c03: $b7
	cp $7f                                           ; $5c04: $fe $7f
	rst FarCall                                          ; $5c06: $f7
	rst $38                                          ; $5c07: $ff
	rst $38                                          ; $5c08: $ff
	ld [hl+], a                                      ; $5c09: $22
	nop                                              ; $5c0a: $00
	ld c, b                                          ; $5c0b: $48
	ld bc, $7980                                     ; $5c0c: $01 $80 $79
	ld [hl], h                                       ; $5c0f: $74
	sbc c                                            ; $5c10: $99
	rst $38                                          ; $5c11: $ff
	db $dd                                           ; $5c12: $dd
	rst $38                                          ; $5c13: $ff
	ld [hl], a                                       ; $5c14: $77
	rst SubAFromDE                                          ; $5c15: $df
	ei                                               ; $5c16: $fb
	ld a, e                                          ; $5c17: $7b
	sbc a                                            ; $5c18: $9f
	ld a, a                                          ; $5c19: $7f
	rst AddAOntoHL                                          ; $5c1a: $ef
	sbc h                                            ; $5c1b: $9c
	adc b                                            ; $5c1c: $88
	jr nz, @+$06                                     ; $5c1d: $20 $04

	dec sp                                           ; $5c1f: $3b
	ldh a, [$64]                                     ; $5c20: $f0 $64
	jr c, jr_023_5bff                                ; $5c22: $38 $db

	ld bc, $9e7e                                     ; $5c24: $01 $7e $9e
	sub a                                            ; $5c27: $97
	ld [hl+], a                                      ; $5c28: $22
	ld a, [hl+]                                      ; $5c29: $2a
	ld a, [hl+]                                      ; $5c2a: $2a
	sbc d                                            ; $5c2b: $9a
	sub d                                            ; $5c2c: $92
	db $10                                           ; $5c2d: $10
	sbc b                                            ; $5c2e: $98
	ld sp, $11dd                                     ; $5c2f: $31 $dd $11
	sbc c                                            ; $5c32: $99
	add hl, de                                       ; $5c33: $19
	sbc c                                            ; $5c34: $99
	sbc c                                            ; $5c35: $99
	ld c, d                                          ; $5c36: $4a
	inc e                                            ; $5c37: $1c
	ld a, [bc]                                       ; $5c38: $0a
	ld a, e                                          ; $5c39: $7b
	cp $9b                                           ; $5c3a: $fe $9b
	ld c, $54                                        ; $5c3c: $0e $54
	sbc l                                            ; $5c3e: $9d
	adc e                                            ; $5c3f: $8b
	ld [hl], e                                       ; $5c40: $73
	cp $9e                                           ; $5c41: $fe $9e
	adc a                                            ; $5c43: $8f
	sbc $f0                                          ; $5c44: $de $f0
	sbc $e0                                          ; $5c46: $de $e0
	sbc l                                            ; $5c48: $9d
	ld hl, sp-$01                                    ; $5c49: $f8 $ff
	reti                                             ; $5c4b: $d9


	ccf                                              ; $5c4c: $3f
	sbc $20                                          ; $5c4d: $de $20
	db $dd                                           ; $5c4f: $dd
	ld b, b                                          ; $5c50: $40
	ld h, [hl]                                       ; $5c51: $66
	jr nz, jr_023_5bee                               ; $5c52: $20 $9a

	rst $38                                          ; $5c54: $ff
	rrca                                             ; $5c55: $0f
	rrca                                             ; $5c56: $0f
	ld c, $0e                                        ; $5c57: $0e $0e
	sbc $1e                                          ; $5c59: $de $1e
	sbc d                                            ; $5c5b: $9a
	inc a                                            ; $5c5c: $3c
	ldh a, [$f0]                                     ; $5c5d: $f0 $f0
	pop af                                           ; $5c5f: $f1
	pop af                                           ; $5c60: $f1
	sbc $e1                                          ; $5c61: $de $e1
	sbc l                                            ; $5c63: $9d
	jp $fa07                                         ; $5c64: $c3 $07 $fa


	reti                                             ; $5c67: $d9


	rst $38                                          ; $5c68: $ff
	sbc [hl]                                         ; $5c69: $9e
	add b                                            ; $5c6a: $80
	ld l, e                                          ; $5c6b: $6b
	jr z, @+$75                                      ; $5c6c: $28 $73

	rla                                              ; $5c6e: $17
	cp $73                                           ; $5c6f: $fe $73
	db $f4                                           ; $5c71: $f4
	sbc h                                            ; $5c72: $9c
	rst $38                                          ; $5c73: $ff
	cp $fe                                           ; $5c74: $fe $fe
	ld [hl], a                                       ; $5c76: $77
	db $f4                                           ; $5c77: $f4
	rst $38                                          ; $5c78: $ff
	rst SubAFromHL                                          ; $5c79: $d7
	ld bc, $fed9                                     ; $5c7a: $01 $d9 $fe
	sbc $f8                                          ; $5c7d: $de $f8
	db $dd                                           ; $5c7f: $dd
	ldh a, [$9e]                                     ; $5c80: $f0 $9e
	di                                               ; $5c82: $f3
	sbc $07                                          ; $5c83: $de $07
	call c, $dc0f                                    ; $5c85: $dc $0f $dc
	ld c, a                                          ; $5c88: $4f
	sbc h                                            ; $5c89: $9c
	ld e, a                                          ; $5c8a: $5f
	ccf                                              ; $5c8b: $3f
	rst $38                                          ; $5c8c: $ff
	db $dd                                           ; $5c8d: $dd
	or h                                             ; $5c8e: $b4
	sbc h                                            ; $5c8f: $9c
	cp b                                             ; $5c90: $b8
	or b                                             ; $5c91: $b0
	ldh [$63], a                                     ; $5c92: $e0 $63
	adc b                                            ; $5c94: $88
	ld sp, hl                                        ; $5c95: $f9
	inc bc                                           ; $5c96: $03
	ldh a, [$0b]                                     ; $5c97: $f0 $0b
	ldh a, [$9b]                                     ; $5c99: $f0 $9b
	sbc c                                            ; $5c9b: $99
	sbc h                                            ; $5c9c: $9c
	sbc h                                            ; $5c9d: $9c
	call c, $dede                                    ; $5c9e: $dc $de $de
	sbc c                                            ; $5ca1: $99
	cp $98                                           ; $5ca2: $fe $98
	sbc h                                            ; $5ca4: $9c
	sbc h                                            ; $5ca5: $9c
	ld d, h                                          ; $5ca6: $54
	ld d, h                                          ; $5ca7: $54
	sbc $52                                          ; $5ca8: $de $52
	add e                                            ; $5caa: $83
	ld b, [hl]                                       ; $5cab: $46
	ld d, h                                          ; $5cac: $54
	ld b, $14                                        ; $5cad: $06 $14
	ld d, $1e                                        ; $5caf: $16 $1e
	or d                                             ; $5cb1: $b2
	cp d                                             ; $5cb2: $ba
	sbc l                                            ; $5cb3: $9d
	adc a                                            ; $5cb4: $8f
	db $dd                                           ; $5cb5: $dd
	rst GetHLinHL                                          ; $5cb6: $cf
	call Call_023_4fc7                               ; $5cb7: $cd $c7 $4f
	ld b, a                                          ; $5cba: $47
	ei                                               ; $5cbb: $fb
	ei                                               ; $5cbc: $fb
	ld [hl], d                                       ; $5cbd: $72
	ld [hl], h                                       ; $5cbe: $74
	and h                                            ; $5cbf: $a4
	db $e4                                           ; $5cc0: $e4
	jp hl                                            ; $5cc1: $e9


	ret                                              ; $5cc2: $c9


	ccf                                              ; $5cc3: $3f
	ccf                                              ; $5cc4: $3f
	cp a                                             ; $5cc5: $bf
	cp a                                             ; $5cc6: $bf
	db $dd                                           ; $5cc7: $dd
	rst $38                                          ; $5cc8: $ff
	ld a, [hl]                                       ; $5cc9: $7e
	or $99                                           ; $5cca: $f6 $99
	cp $dd                                           ; $5ccc: $fe $dd
	rst SubAFromDE                                          ; $5cce: $df
	sbc e                                            ; $5ccf: $9b
	sbc a                                            ; $5cd0: $9f
	sbc a                                            ; $5cd1: $9f
	ld [hl], a                                       ; $5cd2: $77
	dec sp                                           ; $5cd3: $3b
	halt                                             ; $5cd4: $76
	ld d, l                                          ; $5cd5: $55
	sub [hl]                                         ; $5cd6: $96
	inc a                                            ; $5cd7: $3c
	rst $38                                          ; $5cd8: $ff
	rlca                                             ; $5cd9: $07
	add [hl]                                         ; $5cda: $86
	add [hl]                                         ; $5cdb: $86
	add $87                                          ; $5cdc: $c6 $87
	add a                                            ; $5cde: $87
	jp Jump_023_4375                                 ; $5cdf: $c3 $75 $43


	sbc h                                            ; $5ce2: $9c
	ccf                                              ; $5ce3: $3f
	ld a, [hl]                                       ; $5ce4: $7e
	ld a, [hl]                                       ; $5ce5: $7e
	ld a, e                                          ; $5ce6: $7b
	sbc [hl]                                         ; $5ce7: $9e
	sbc [hl]                                         ; $5ce8: $9e
	inc bc                                           ; $5ce9: $03
	halt                                             ; $5cea: $76
	xor b                                            ; $5ceb: $a8
	rst SubAFromHL                                          ; $5cec: $d7
	rst $38                                          ; $5ced: $ff
	ld a, a                                          ; $5cee: $7f
	push de                                          ; $5cef: $d5
	adc c                                            ; $5cf0: $89
	add b                                            ; $5cf1: $80
	sbc b                                            ; $5cf2: $98
	cp b                                             ; $5cf3: $b8
	cp b                                             ; $5cf4: $b8
	nop                                              ; $5cf5: $00
	nop                                              ; $5cf6: $00
	ldh [rIE], a                                     ; $5cf7: $e0 $ff
	rst $38                                          ; $5cf9: $ff
	rst SubAFromBC                                          ; $5cfa: $e7
	rst JumpTable                                          ; $5cfb: $c7
	rst JumpTable                                          ; $5cfc: $c7
	cp $fc                                           ; $5cfd: $fe $fc
	ccf                                              ; $5cff: $3f
	ldh a, [$e0]                                     ; $5d00: $f0 $e0
	db $ec                                           ; $5d02: $ec
	ld a, h                                          ; $5d03: $7c
	ld a, h                                          ; $5d04: $7c
	ld bc, $de03                                     ; $5d05: $01 $03 $de
	rst $38                                          ; $5d08: $ff
	sub e                                            ; $5d09: $93
	di                                               ; $5d0a: $f3
	db $e3                                           ; $5d0b: $e3
	db $e3                                           ; $5d0c: $e3
	ld bc, $83fc                                     ; $5d0d: $01 $fc $83
	add c                                            ; $5d10: $81
	add c                                            ; $5d11: $81
	sbc a                                            ; $5d12: $9f
	sbc a                                            ; $5d13: $9f
	cp a                                             ; $5d14: $bf
	cp $dd                                           ; $5d15: $fe $dd
	rst $38                                          ; $5d17: $ff
	rst SubAFromDE                                          ; $5d18: $df
	pop hl                                           ; $5d19: $e1
	sub d                                            ; $5d1a: $92
	pop bc                                           ; $5d1b: $c1
	xor $3a                                          ; $5d1c: $ee $3a
	sbc $9e                                          ; $5d1e: $de $9e
	sbc $de                                          ; $5d20: $de $de
	call $1fcd                                       ; $5d22: $cd $cd $1f
	rst $38                                          ; $5d25: $ff
	ei                                               ; $5d26: $fb
	ei                                               ; $5d27: $fb
	db $dd                                           ; $5d28: $dd
	cp e                                             ; $5d29: $bb
	ld l, b                                          ; $5d2a: $68
	jp hl                                            ; $5d2b: $e9


	sbc [hl]                                         ; $5d2c: $9e
	ld a, a                                          ; $5d2d: $7f
	call c, $de80                                    ; $5d2e: $dc $80 $de
	ret nz                                           ; $5d31: $c0

	inc bc                                           ; $5d32: $03
	jr nz, @+$05                                     ; $5d33: $20 $03

	ldh a, [$2f]                                     ; $5d35: $f0 $2f
	ldh a, [$80]                                     ; $5d37: $f0 $80
	ld [hl-], a                                      ; $5d39: $32
	ld sp, $1931                                     ; $5d3a: $31 $31 $19
	add hl, de                                       ; $5d3d: $19
	jr jr_023_5d48                                   ; $5d3e: $18 $08

	inc c                                            ; $5d40: $0c
	sub [hl]                                         ; $5d41: $96
	sbc d                                            ; $5d42: $9a
	or [hl]                                          ; $5d43: $b6
	cp d                                             ; $5d44: $ba
	db $ed                                           ; $5d45: $ed
	jp hl                                            ; $5d46: $e9


	db $fd                                           ; $5d47: $fd

jr_023_5d48:
	cp a                                             ; $5d48: $bf
	ld l, e                                          ; $5d49: $6b
	ld h, a                                          ; $5d4a: $67
	ld l, e                                          ; $5d4b: $6b
	ld h, a                                          ; $5d4c: $67
	inc sp                                           ; $5d4d: $33
	or a                                             ; $5d4e: $b7
	or e                                             ; $5d4f: $b3
	di                                               ; $5d50: $f3
	pop de                                           ; $5d51: $d1
	sub e                                            ; $5d52: $93
	or e                                             ; $5d53: $b3
	and d                                            ; $5d54: $a2
	and d                                            ; $5d55: $a2
	ld h, [hl]                                       ; $5d56: $66
	ld b, [hl]                                       ; $5d57: $46
	sbc [hl]                                         ; $5d58: $9e
	ld b, h                                          ; $5d59: $44
	reti                                             ; $5d5a: $d9


	rst $38                                          ; $5d5b: $ff
	sbc [hl]                                         ; $5d5c: $9e
	scf                                              ; $5d5d: $37
	db $dd                                           ; $5d5e: $dd
	ccf                                              ; $5d5f: $3f
	sbc h                                            ; $5d60: $9c
	cpl                                              ; $5d61: $2f
	ld l, [hl]                                       ; $5d62: $6e
	ld a, [hl]                                       ; $5d63: $7e
	ld [hl], d                                       ; $5d64: $72
	ld e, d                                          ; $5d65: $5a
	ld a, [hl]                                       ; $5d66: $7e
	inc c                                            ; $5d67: $0c
	sbc [hl]                                         ; $5d68: $9e
	pop hl                                           ; $5d69: $e1
	sbc $85                                          ; $5d6a: $de $85
	sbc $0f                                          ; $5d6c: $de $0f
	rst SubAFromDE                                          ; $5d6e: $df
	dec bc                                           ; $5d6f: $0b
	sbc $7e                                          ; $5d70: $de $7e
	call c, Call_023_66fc                            ; $5d72: $dc $fc $66
	dec l                                            ; $5d75: $2d
	reti                                             ; $5d76: $d9


	rst $38                                          ; $5d77: $ff
	ld a, d                                          ; $5d78: $7a
	ld sp, $70dd                                     ; $5d79: $31 $dd $70
	sbc h                                            ; $5d7c: $9c
	ldh a, [hDisp0_OBP1]                                     ; $5d7d: $f0 $87
	add a                                            ; $5d7f: $87
	call c, $9e8f                                    ; $5d80: $dc $8f $9e
	rrca                                             ; $5d83: $0f
	reti                                             ; $5d84: $d9


	ld e, b                                          ; $5d85: $58
	reti                                             ; $5d86: $d9


	rst SubAFromBC                                          ; $5d87: $e7
	reti                                             ; $5d88: $d9


	cp [hl]                                          ; $5d89: $be
	reti                                             ; $5d8a: $d9


	pop bc                                           ; $5d8b: $c1
	rst SubAFromDE                                          ; $5d8c: $df
	rst GetHLinHL                                          ; $5d8d: $cf
	sub [hl]                                         ; $5d8e: $96
	rst AddAOntoHL                                          ; $5d8f: $ef
	db $eb                                           ; $5d90: $eb
	ld [$efee], a                                    ; $5d91: $ea $ee $ef
	rst AddAOntoHL                                          ; $5d94: $ef
	cp c                                             ; $5d95: $b9
	cp c                                             ; $5d96: $b9
	sbc c                                            ; $5d97: $99
	sbc $9d                                          ; $5d98: $de $9d
	rst SubAFromDE                                          ; $5d9a: $df
	sbc h                                            ; $5d9b: $9c
	ld [hl], c                                       ; $5d9c: $71
	pop bc                                           ; $5d9d: $c1
	sbc $bf                                          ; $5d9e: $de $bf

jr_023_5da0:
	call c, $dec0                                    ; $5da0: $dc $c0 $de
	ldh [$03], a                                     ; $5da3: $e0 $03
	jr nc, @+$05                                     ; $5da5: $30 $03

	ldh a, [$2f]                                     ; $5da7: $f0 $2f
	ldh a, [$df]                                     ; $5da9: $f0 $df
	inc b                                            ; $5dab: $04
	rst SubAFromDE                                          ; $5dac: $df
	ld [bc], a                                       ; $5dad: $02
	db $fd                                           ; $5dae: $fd
	sub h                                            ; $5daf: $94
	or $fe                                           ; $5db0: $f6 $fe
	cp $fd                                           ; $5db2: $fe $fd
	db $fd                                           ; $5db4: $fd
	ei                                               ; $5db5: $fb
	ei                                               ; $5db6: $fb
	ld a, [$4b5b]                                    ; $5db7: $fa $5b $4b
	ld c, e                                          ; $5dba: $4b
	ld [hl], c                                       ; $5dbb: $71
	ld a, [hl]                                       ; $5dbc: $7e
	sub a                                            ; $5dbd: $97
	add h                                            ; $5dbe: $84
	adc h                                            ; $5dbf: $8c
	adc h                                            ; $5dc0: $8c
	adc b                                            ; $5dc1: $88
	jr jr_023_5ddc                                   ; $5dc2: $18 $18

	db $10                                           ; $5dc4: $10
	jr nc, jr_023_5da0                               ; $5dc5: $30 $d9

	rst $38                                          ; $5dc7: $ff
	sub a                                            ; $5dc8: $97
	ld a, [hl]                                       ; $5dc9: $7e
	ld e, [hl]                                       ; $5dca: $5e
	ld a, [hl]                                       ; $5dcb: $7e
	cp $be                                           ; $5dcc: $fe $be
	cp h                                             ; $5dce: $bc
	db $fc                                           ; $5dcf: $fc
	db $fc                                           ; $5dd0: $fc
	ld a, d                                          ; $5dd1: $7a
	ld d, l                                          ; $5dd2: $55
	rst SubAFromDE                                          ; $5dd3: $df
	pop bc                                           ; $5dd4: $c1
	sub h                                            ; $5dd5: $94
	jp $8383                                         ; $5dd6: $c3 $83 $83


	dec bc                                           ; $5dd9: $0b
	dec de                                           ; $5dda: $1b
	rra                                              ; $5ddb: $1f

jr_023_5ddc:
	rra                                              ; $5ddc: $1f
	rla                                              ; $5ddd: $17
	rla                                              ; $5dde: $17
	ld d, $16                                        ; $5ddf: $16 $16
	ld [hl], l                                       ; $5de1: $75
	db $f4                                           ; $5de2: $f4
	ld a, b                                          ; $5de3: $78
	ld b, a                                          ; $5de4: $47
	sbc d                                            ; $5de5: $9a
	ld sp, hl                                        ; $5de6: $f9
	ld bc, $0301                                     ; $5de7: $01 $01 $03
	inc bc                                           ; $5dea: $03
	db $dd                                           ; $5deb: $dd
	ld [bc], a                                       ; $5dec: $02
	reti                                             ; $5ded: $d9


	rst $38                                          ; $5dee: $ff
	ld [hl], b                                       ; $5def: $70
	pop bc                                           ; $5df0: $c1
	sbc $e0                                          ; $5df1: $de $e0
	rst SubAFromDE                                          ; $5df3: $df
	rrca                                             ; $5df4: $0f
	db $db                                           ; $5df5: $db
	rra                                              ; $5df6: $1f
	reti                                             ; $5df7: $d9


	ld a, b                                          ; $5df8: $78
	reti                                             ; $5df9: $d9


	rst JumpTable                                          ; $5dfa: $c7
	reti                                             ; $5dfb: $d9


	cp a                                             ; $5dfc: $bf
	reti                                             ; $5dfd: $d9


	ret nz                                           ; $5dfe: $c0

	sbc d                                            ; $5dff: $9a
	rst AddAOntoHL                                          ; $5e00: $ef
	rst SubAFromBC                                          ; $5e01: $e7
	rst SubAFromBC                                          ; $5e02: $e7
	push hl                                          ; $5e03: $e5
	push af                                          ; $5e04: $f5
	sbc $f7                                          ; $5e05: $de $f7
	sbc $9c                                          ; $5e07: $de $9c
	sbc [hl]                                         ; $5e09: $9e
	sbc [hl]                                         ; $5e0a: $9e
	db $dd                                           ; $5e0b: $dd
	adc [hl]                                         ; $5e0c: $8e
	db $dd                                           ; $5e0d: $dd
	cp a                                             ; $5e0e: $bf
	db $dd                                           ; $5e0f: $dd
	ld a, a                                          ; $5e10: $7f
	reti                                             ; $5e11: $d9


	ldh [$03], a                                     ; $5e12: $e0 $03
	jr nc, jr_023_5e21                               ; $5e14: $30 $0b

	ldh a, [$34]                                     ; $5e16: $f0 $34
	nop                                              ; $5e18: $00
	sbc l                                            ; $5e19: $9d
	inc sp                                           ; $5e1a: $33
	ld h, e                                          ; $5e1b: $63
	jp c, Jump_023_7b33                              ; $5e1c: $da $33 $7b

	ld hl, sp-$21                                    ; $5e1f: $f8 $df

jr_023_5e21:
	ld [hl], a                                       ; $5e21: $77
	sub h                                            ; $5e22: $94
	ld [hl], e                                       ; $5e23: $73
	inc sp                                           ; $5e24: $33
	inc sp                                           ; $5e25: $33
	ld h, a                                          ; $5e26: $67
	inc sp                                           ; $5e27: $33
	inc sp                                           ; $5e28: $33
	ld [hl], h                                       ; $5e29: $74
	ld b, h                                          ; $5e2a: $44
	ld [hl], e                                       ; $5e2b: $73
	inc sp                                           ; $5e2c: $33
	ld [hl], $73                                     ; $5e2d: $36 $73
	ld hl, sp-$21                                    ; $5e2f: $f8 $df
	inc sp                                           ; $5e31: $33
	sbc l                                            ; $5e32: $9d
	ld [hl], $66                                     ; $5e33: $36 $66
	ld a, e                                          ; $5e35: $7b
	ld hl, sp-$62                                    ; $5e36: $f8 $9e
	ld b, a                                          ; $5e38: $47
	ld c, a                                          ; $5e39: $4f
	ld hl, sp+$7b                                    ; $5e3a: $f8 $7b
	jp c, $f87f                                      ; $5e3c: $da $7f $f8

	sbc [hl]                                         ; $5e3f: $9e
	ld h, l                                          ; $5e40: $65
	db $db                                           ; $5e41: $db
	inc sp                                           ; $5e42: $33
	ld h, a                                          ; $5e43: $67
	ld hl, sp-$62                                    ; $5e44: $f8 $9e
	inc sp                                           ; $5e46: $33
	ld b, a                                          ; $5e47: $47
	ld hl, sp-$26                                    ; $5e48: $f8 $da
	inc sp                                           ; $5e4a: $33
	call nz, $9d80                                   ; $5e4b: $c4 $80 $9d
	adc b                                            ; $5e4e: $88
	ld [hl+], a                                      ; $5e4f: $22
	ld l, a                                          ; $5e50: $6f
	cp $9d                                           ; $5e51: $fe $9d
	ld [hl], a                                       ; $5e53: $77
	db $dd                                           ; $5e54: $dd
	ld l, a                                          ; $5e55: $6f
	cp $98                                           ; $5e56: $fe $98
	adc b                                            ; $5e58: $88
	inc hl                                           ; $5e59: $23
	adc c                                            ; $5e5a: $89
	inc hl                                           ; $5e5b: $23
	adc e                                            ; $5e5c: $8b
	ld [hl+], a                                      ; $5e5d: $22
	adc d                                            ; $5e5e: $8a
	ld [hl], e                                       ; $5e5f: $73
	ldh a, [$98]                                     ; $5e60: $f0 $98
	halt                                             ; $5e62: $76
	sbc $76                                          ; $5e63: $de $76
	sbc $9c                                          ; $5e65: $de $9c
	sbc b                                            ; $5e67: $98
	cp b                                             ; $5e68: $b8
	sbc $38                                          ; $5e69: $de $38
	sbc d                                            ; $5e6b: $9a
	ld a, h                                          ; $5e6c: $7c
	ld a, [hl]                                       ; $5e6d: $7e
	adc a                                            ; $5e6e: $8f
	rrca                                             ; $5e6f: $0f
	rrca                                             ; $5e70: $0f
	db $dd                                           ; $5e71: $dd
	rra                                              ; $5e72: $1f
	add d                                            ; $5e73: $82
	cpl                                              ; $5e74: $2f
	add a                                            ; $5e75: $87
	add e                                            ; $5e76: $83
	ld bc, $0400                                     ; $5e77: $01 $00 $04
	ld c, $2e                                        ; $5e7a: $0e $2e
	cpl                                              ; $5e7c: $2f
	ld hl, sp-$04                                    ; $5e7d: $f8 $fc
	cp $ff                                           ; $5e7f: $fe $ff
	ei                                               ; $5e81: $fb
	pop af                                           ; $5e82: $f1
	pop af                                           ; $5e83: $f1
	ldh a, [$0e]                                     ; $5e84: $f0 $0e
	add [hl]                                         ; $5e86: $86
	add a                                            ; $5e87: $87
	ld b, d                                          ; $5e88: $42
	inc bc                                           ; $5e89: $03
	ld bc, $0001                                     ; $5e8a: $01 $01 $00
	rst $38                                          ; $5e8d: $ff
	ld a, a                                          ; $5e8e: $7f
	ld a, [hl]                                       ; $5e8f: $7e
	cp a                                             ; $5e90: $bf
	db $dd                                           ; $5e91: $dd
	rst $38                                          ; $5e92: $ff
	sub l                                            ; $5e93: $95
	ld h, c                                          ; $5e94: $61
	ld de, $c999                                     ; $5e95: $11 $99 $c9
	ret                                              ; $5e98: $c9


	ld h, l                                          ; $5e99: $65
	push hl                                          ; $5e9a: $e5
	db $e3                                           ; $5e9b: $e3
	sbc a                                            ; $5e9c: $9f
	adc a                                            ; $5e9d: $8f
	sbc $07                                          ; $5e9e: $de $07
	rst SubAFromDE                                          ; $5ea0: $df
	add e                                            ; $5ea1: $83
	add l                                            ; $5ea2: $85
	add c                                            ; $5ea3: $81
	add e                                            ; $5ea4: $83
	inc bc                                           ; $5ea5: $03
	rlca                                             ; $5ea6: $07
	rlca                                             ; $5ea7: $07
	adc a                                            ; $5ea8: $8f
	adc a                                            ; $5ea9: $8f
	rst SubAFromDE                                          ; $5eaa: $df
	sbc $fc                                          ; $5eab: $de $fc
	db $fc                                           ; $5ead: $fc
	ld hl, sp-$08                                    ; $5eae: $f8 $f8
	ldh a, [$f0]                                     ; $5eb0: $f0 $f0
	ldh [$e1], a                                     ; $5eb2: $e0 $e1
	sub e                                            ; $5eb4: $93
	inc de                                           ; $5eb5: $13
	inc hl                                           ; $5eb6: $23
	daa                                              ; $5eb7: $27
	ld c, a                                          ; $5eb8: $4f
	ld c, a                                          ; $5eb9: $4f
	sbc a                                            ; $5eba: $9f
	rra                                              ; $5ebb: $1f
	ld a, h                                          ; $5ebc: $7c
	ld a, e                                          ; $5ebd: $7b
	rst AddAOntoHL                                          ; $5ebe: $ef
	ld a, e                                          ; $5ebf: $7b
	ldh a, [$8e]                                     ; $5ec0: $f0 $8e
	ldh [rIE], a                                     ; $5ec2: $e0 $ff
	or $f6                                           ; $5ec4: $f6 $f6
	rst FarCall                                          ; $5ec6: $f7
	rst AddAOntoHL                                          ; $5ec7: $ef
	xor $df                                          ; $5ec8: $ee $df
	rst SubAFromHL                                          ; $5eca: $d7
	ld b, $0f                                        ; $5ecb: $06 $0f
	rrca                                             ; $5ecd: $0f
	dec c                                            ; $5ece: $0d
	dec e                                            ; $5ecf: $1d
	dec e                                            ; $5ed0: $1d
	inc a                                            ; $5ed1: $3c
	inc a                                            ; $5ed2: $3c
	sbc $fd                                          ; $5ed3: $de $fd
	sbc d                                            ; $5ed5: $9a
	ld a, [hl]                                       ; $5ed6: $7e
	ld a, a                                          ; $5ed7: $7f
	cp a                                             ; $5ed8: $bf
	cp a                                             ; $5ed9: $bf
	ld e, a                                          ; $5eda: $5f
	sbc $03                                          ; $5edb: $de $03
	adc c                                            ; $5edd: $89
	add e                                            ; $5ede: $83
	add d                                            ; $5edf: $82
	jp nz, $e2c2                                     ; $5ee0: $c2 $c2 $e2

	ld [hl], l                                       ; $5ee3: $75
	db $f4                                           ; $5ee4: $f4
	db $fc                                           ; $5ee5: $fc
	db $fc                                           ; $5ee6: $fc
	ld a, [$fdfe]                                    ; $5ee7: $fa $fe $fd
	rst $38                                          ; $5eea: $ff
	adc l                                            ; $5eeb: $8d
	inc c                                            ; $5eec: $0c
	inc b                                            ; $5eed: $04
	inc b                                            ; $5eee: $04
	ld b, $02                                        ; $5eef: $06 $02
	inc bc                                           ; $5ef1: $03
	ld bc, $dd79                                     ; $5ef2: $01 $79 $dd
	ld sp, hl                                        ; $5ef5: $f9
	sbc $f3                                          ; $5ef6: $de $f3
	reti                                             ; $5ef8: $d9


	add b                                            ; $5ef9: $80
	adc a                                            ; $5efa: $8f
	ld hl, sp-$16                                    ; $5efb: $f8 $ea
	ld hl, sp-$06                                    ; $5efd: $f8 $fa
	ld hl, sp-$0a                                    ; $5eff: $f8 $f6
	db $f4                                           ; $5f01: $f4
	xor $57                                          ; $5f02: $ee $57
	ld e, l                                          ; $5f04: $5d
	ld c, a                                          ; $5f05: $4f
	ld c, l                                          ; $5f06: $4d
	ld c, a                                          ; $5f07: $4f
	adc l                                            ; $5f08: $8d
	adc a                                            ; $5f09: $8f
	sub l                                            ; $5f0a: $95
	ld b, e                                          ; $5f0b: $43
	jr nc, jr_023_5f19                               ; $5f0c: $30 $0b

	ldh a, [rTAC]                                    ; $5f0e: $f0 $07
	nop                                              ; $5f10: $00
	sbc l                                            ; $5f11: $9d
	inc sp                                           ; $5f12: $33
	ld d, e                                          ; $5f13: $53
	db $db                                           ; $5f14: $db
	inc sp                                           ; $5f15: $33
	rst SubAFromHL                                          ; $5f16: $d7
	nop                                              ; $5f17: $00
	sub c                                            ; $5f18: $91

jr_023_5f19:
	nop                                              ; $5f19: $00
	rst $38                                          ; $5f1a: $ff

jr_023_5f1b:
	nop                                              ; $5f1b: $00
	rst $38                                          ; $5f1c: $ff
	inc b                                            ; $5f1d: $04
	ei                                               ; $5f1e: $fb
	jr nz, @-$1f                                     ; $5f1f: $20 $df

	adc b                                            ; $5f21: $88
	ld [hl], a                                       ; $5f22: $77
	nop                                              ; $5f23: $00
	rst $38                                          ; $5f24: $ff
	ld [hl+], a                                      ; $5f25: $22
	db $dd                                           ; $5f26: $dd
	ld [hl], a                                       ; $5f27: $77
	ldh a, [c]                                       ; $5f28: $f2
	ld a, a                                          ; $5f29: $7f
	cp $97                                           ; $5f2a: $fe $97
	ld [$80f7], sp                                   ; $5f2c: $08 $f7 $80
	ld a, a                                          ; $5f2f: $7f
	ld bc, $48fe                                     ; $5f30: $01 $fe $48

Call_023_5f33:
	or a                                             ; $5f33: $b7
	ld [hl], a                                       ; $5f34: $77
	xor $96                                          ; $5f35: $ee $96
	ld [hl], $e3                                     ; $5f37: $36 $e3
	ld [hl], $e3                                     ; $5f39: $36 $e3
	inc h                                            ; $5f3b: $24
	rst SubAFromBC                                          ; $5f3c: $e7
	ld l, l                                          ; $5f3d: $6d
	rst JumpTable                                          ; $5f3e: $c7
	ld c, [hl]                                       ; $5f3f: $4e
	ld a, e                                          ; $5f40: $7b
	cp $9b                                           ; $5f41: $fe $9b
	rst SubAFromDE                                          ; $5f43: $df
	adc a                                            ; $5f44: $8f
	sbc l                                            ; $5f45: $9d
	adc a                                            ; $5f46: $8f
	ld [hl], a                                       ; $5f47: $77
	ldh [$80], a                                     ; $5f48: $e0 $80
	ldh a, [rIE]                                     ; $5f4a: $f0 $ff
	inc c                                            ; $5f4c: $0c
	rst $38                                          ; $5f4d: $ff
	inc bc                                           ; $5f4e: $03
	rst $38                                          ; $5f4f: $ff
	ld h, b                                          ; $5f50: $60
	sbc a                                            ; $5f51: $9f
	jr c, jr_023_5f1b                                ; $5f52: $38 $c7

	ld e, $e1                                        ; $5f54: $1e $e1
	adc h                                            ; $5f56: $8c
	di                                               ; $5f57: $f3
	add $f9                                          ; $5f58: $c6 $f9
	ld h, a                                          ; $5f5a: $67
	ld hl, sp+$33                                    ; $5f5b: $f8 $33
	db $fc                                           ; $5f5d: $fc
	ld de, $c9fe                                     ; $5f5e: $11 $fe $c9
	cp $3c                                           ; $5f61: $fe $3c
	rst $38                                          ; $5f63: $ff
	inc e                                            ; $5f64: $1c
	rst $38                                          ; $5f65: $ff
	inc b                                            ; $5f66: $04
	db $fc                                           ; $5f67: $fc
	inc b                                            ; $5f68: $04
	add b                                            ; $5f69: $80
	db $fc                                           ; $5f6a: $fc
	ld [bc], a                                       ; $5f6b: $02
	cp $02                                           ; $5f6c: $fe $02
	cp $82                                           ; $5f6e: $fe $82
	ld a, [hl]                                       ; $5f70: $7e
	add d                                            ; $5f71: $82
	ld a, [hl]                                       ; $5f72: $7e
	jp nz, $c23e                                     ; $5f73: $c2 $3e $c2

jr_023_5f76:
	ld a, $a1                                        ; $5f76: $3e $a1
	cp $af                                           ; $5f78: $fe $af
	ldh a, [$be]                                     ; $5f7a: $f0 $be
	pop hl                                           ; $5f7c: $e1
	or b                                             ; $5f7d: $b0
	rst AddAOntoHL                                          ; $5f7e: $ef
	and b                                            ; $5f7f: $a0
	rst $38                                          ; $5f80: $ff
	and b                                            ; $5f81: $a0
	rst $38                                          ; $5f82: $ff
	and a                                            ; $5f83: $a7
	rst $38                                          ; $5f84: $ff
	ld sp, hl                                        ; $5f85: $f9
	cp $f0                                           ; $5f86: $fe $f0
	nop                                              ; $5f88: $00
	adc a                                            ; $5f89: $8f
	rst AddAOntoHL                                          ; $5f8a: $ef
	db $10                                           ; $5f8b: $10
	rlca                                             ; $5f8c: $07
	ld hl, sp+$07                                    ; $5f8d: $f8 $07
	ld sp, hl                                        ; $5f8f: $f9
	ld e, $ff                                        ; $5f90: $1e $ff
	db $e4                                           ; $5f92: $e4
	rst $38                                          ; $5f93: $ff
	adc b                                            ; $5f94: $88
	ld a, a                                          ; $5f95: $7f
	adc c                                            ; $5f96: $89
	ld a, [hl]                                       ; $5f97: $7e
	ld hl, sp+$08                                    ; $5f98: $f8 $08
	ld [hl], a                                       ; $5f9a: $77
	cp $df                                           ; $5f9b: $fe $df
	ei                                               ; $5f9d: $fb
	sbc h                                            ; $5f9e: $9c
	ld a, a                                          ; $5f9f: $7f
	adc [hl]                                         ; $5fa0: $8e
	rst $38                                          ; $5fa1: $ff
	ld [hl], a                                       ; $5fa2: $77
	ret                                              ; $5fa3: $c9


	adc h                                            ; $5fa4: $8c
	ld [bc], a                                       ; $5fa5: $02
	ld h, $27                                        ; $5fa6: $26 $27
	ld b, $03                                        ; $5fa8: $06 $03
	rst FarCall                                          ; $5faa: $f7
	di                                               ; $5fab: $f3
	rst $38                                          ; $5fac: $ff
	rrca                                             ; $5fad: $0f
	db $fd                                           ; $5fae: $fd
	inc bc                                           ; $5faf: $03
	dec c                                            ; $5fb0: $0d
	inc bc                                           ; $5fb1: $03
	inc bc                                           ; $5fb2: $03
	ld bc, $01f3                                     ; $5fb3: $01 $f3 $01
	ld [de], a                                       ; $5fb6: $12
	di                                               ; $5fb7: $f3
	ld l, a                                          ; $5fb8: $6f
	cp $99                                           ; $5fb9: $fe $99
	add hl, bc                                       ; $5fbb: $09
	ld sp, hl                                        ; $5fbc: $f9
	add hl, de                                       ; $5fbd: $19
	jp hl                                            ; $5fbe: $e9


	add hl, sp                                       ; $5fbf: $39
	ret                                              ; $5fc0: $c9


	ld a, e                                          ; $5fc1: $7b
	cp $9a                                           ; $5fc2: $fe $9a
	ret nz                                           ; $5fc4: $c0

	ld a, c                                          ; $5fc5: $79
	add b                                            ; $5fc6: $80
	ld sp, hl                                        ; $5fc7: $f9
	nop                                              ; $5fc8: $00
	ld e, a                                          ; $5fc9: $5f

jr_023_5fca:
	cp $8f                                           ; $5fca: $fe $8f
	ret nz                                           ; $5fcc: $c0

	ld a, a                                          ; $5fcd: $7f
	call nz, $e07b                                   ; $5fce: $c4 $7b $e0
	ld a, a                                          ; $5fd1: $7f
	ldh [$7f], a                                     ; $5fd2: $e0 $7f
	ldh a, [$6f]                                     ; $5fd4: $f0 $6f
	call nc, $f07b                                   ; $5fd6: $d4 $7b $f0
	ld e, a                                          ; $5fd9: $5f
	ldh a, [c]                                       ; $5fda: $f2
	ld e, l                                          ; $5fdb: $5d
	ld b, a                                          ; $5fdc: $47
	ld b, b                                          ; $5fdd: $40
	ccf                                              ; $5fde: $3f
	jr nz, jr_023_5f76                               ; $5fdf: $20 $95

	db $10                                           ; $5fe1: $10
	rst AddAOntoHL                                          ; $5fe2: $ef
	add h                                            ; $5fe3: $84
	ld a, e                                          ; $5fe4: $7b
	nop                                              ; $5fe5: $00
	rst $38                                          ; $5fe6: $ff
	ld [bc], a                                       ; $5fe7: $02
	db $fd                                           ; $5fe8: $fd
	jr nz, jr_023_5fca                               ; $5fe9: $20 $df

	ld [hl], a                                       ; $5feb: $77
	xor $07                                          ; $5fec: $ee $07
	nop                                              ; $5fee: $00
	sbc l                                            ; $5fef: $9d
	inc sp                                           ; $5ff0: $33
	ld d, e                                          ; $5ff1: $53
	db $db                                           ; $5ff2: $db
	inc sp                                           ; $5ff3: $33
	sub c                                            ; $5ff4: $91
	add b                                            ; $5ff5: $80
	ld sp, hl                                        ; $5ff6: $f9
	reti                                             ; $5ff7: $d9


	rst $38                                          ; $5ff8: $ff
	ld b, a                                          ; $5ff9: $47
	ldh a, [$df]                                     ; $5ffa: $f0 $df
	ld b, $df                                        ; $5ffc: $06 $df
	dec c                                            ; $5ffe: $0d
	sbc c                                            ; $5fff: $99
	add hl, bc                                       ; $6000: $09
	dec de                                           ; $6001: $1b
	dec de                                           ; $6002: $1b
	inc de                                           ; $6003: $13
	db $fc                                           ; $6004: $fc
	db $fc                                           ; $6005: $fc
	sbc $f8                                          ; $6006: $de $f8
	sbc $f1                                          ; $6008: $de $f1
	db $dd                                           ; $600a: $dd
	rst $38                                          ; $600b: $ff
	sub [hl]                                         ; $600c: $96
	ld hl, sp-$3c                                    ; $600d: $f8 $c4
	add d                                            ; $600f: $82
	ld bc, $5554                                     ; $6010: $01 $54 $55
	xor e                                            ; $6013: $ab
	cp a                                             ; $6014: $bf
	cp a                                             ; $6015: $bf
	ld [hl], e                                       ; $6016: $73
	di                                               ; $6017: $f3
	rst SubAFromDE                                          ; $6018: $df
	ret nz                                           ; $6019: $c0

	sbc e                                            ; $601a: $9b
	ldh [rSVBK], a                                   ; $601b: $e0 $70
	jr c, jr_023_603b                                ; $601d: $38 $1c

	sbc $ff                                          ; $601f: $de $ff
	sbc c                                            ; $6021: $99
	ccf                                              ; $6022: $3f
	rra                                              ; $6023: $1f
	adc a                                            ; $6024: $8f
	rst JumpTable                                          ; $6025: $c7
	db $e3                                           ; $6026: $e3
	call nz, $04da                                   ; $6027: $c4 $da $04
	reti                                             ; $602a: $d9


	db $fc                                           ; $602b: $fc
	sbc [hl]                                         ; $602c: $9e
	xor a                                            ; $602d: $af
	call c, $9ca7                                    ; $602e: $dc $a7 $9c
	xor h                                            ; $6031: $ac
	or b                                             ; $6032: $b0
	ld hl, sp-$23                                    ; $6033: $f8 $dd
	db $fc                                           ; $6035: $fc
	sbc $ff                                          ; $6036: $de $ff
	sbc $02                                          ; $6038: $de $02
	sbc d                                            ; $603a: $9a

jr_023_603b:
	rlca                                             ; $603b: $07
	ld a, a                                          ; $603c: $7f
	sbc a                                            ; $603d: $9f
	rrca                                             ; $603e: $0f
	db $10                                           ; $603f: $10
	ld [hl], a                                       ; $6040: $77
	ld hl, sp-$65                                    ; $6041: $f8 $9b
	ld a, b                                          ; $6043: $78
	ldh [$f0], a                                     ; $6044: $e0 $f0
	ldh [$fe], a                                     ; $6046: $e0 $fe
	ld a, a                                          ; $6048: $7f
	ld a, [$f09c]                                    ; $6049: $fa $9c $f0
	db $10                                           ; $604c: $10
	db $10                                           ; $604d: $10
	ld [hl], a                                       ; $604e: $77
	ld hl, sp-$23                                    ; $604f: $f8 $dd
	db $10                                           ; $6051: $10
	sub e                                            ; $6052: $93
	ld h, c                                          ; $6053: $61
	ld [hl], b                                       ; $6054: $70
	jr nc, jr_023_606f                               ; $6055: $30 $18

	jr jr_023_605d                                   ; $6057: $18 $04

	inc c                                            ; $6059: $0c
	inc e                                            ; $605a: $1c
	ld a, a                                          ; $605b: $7f
	ld a, a                                          ; $605c: $7f

jr_023_605d:
	ccf                                              ; $605d: $3f
	rra                                              ; $605e: $1f
	sbc $0f                                          ; $605f: $de $0f
	sbc h                                            ; $6061: $9c
	rra                                              ; $6062: $1f
	or $77                                           ; $6063: $f6 $77
	sbc $37                                          ; $6065: $de $37
	rst SubAFromDE                                          ; $6067: $df
	inc [hl]                                         ; $6068: $34
	sbc [hl]                                         ; $6069: $9e
	ld [de], a                                       ; $606a: $12
	db $dd                                           ; $606b: $dd
	and $de                                          ; $606c: $e6 $de
	rst SubAFromBC                                          ; $606e: $e7

jr_023_606f:
	sbc h                                            ; $606f: $9c
	di                                               ; $6070: $f3
	ld h, [hl]                                       ; $6071: $66
	ld h, [hl]                                       ; $6072: $66
	db $dd                                           ; $6073: $dd
	or $9d                                           ; $6074: $f6 $9d
	ld a, $07                                        ; $6076: $3e $07
	call c, $9d43                                    ; $6078: $dc $43 $9d
	db $e3                                           ; $607b: $e3
	ei                                               ; $607c: $fb
	ld h, a                                          ; $607d: $67
	ld d, b                                          ; $607e: $50
	sbc [hl]                                         ; $607f: $9e
	ret nz                                           ; $6080: $c0

	daa                                              ; $6081: $27
	ld b, b                                          ; $6082: $40
	rlca                                             ; $6083: $07
	ldh a, [$0b]                                     ; $6084: $f0 $0b
	nop                                              ; $6086: $00
	sub a                                            ; $6087: $97
	inc sp                                           ; $6088: $33
	ld d, l                                          ; $6089: $55
	dec [hl]                                         ; $608a: $35
	ld [hl], e                                       ; $608b: $73
	inc sp                                           ; $608c: $33
	ld d, l                                          ; $608d: $55
	inc sp                                           ; $608e: $33
	inc sp                                           ; $608f: $33
	add l                                            ; $6090: $85
	add b                                            ; $6091: $80
	ld sp, hl                                        ; $6092: $f9
	reti                                             ; $6093: $d9


	rst $38                                          ; $6094: $ff
	ccf                                              ; $6095: $3f
	ldh a, [$de]                                     ; $6096: $f0 $de
	ld bc, $03df                                     ; $6098: $01 $df $03
	sbc [hl]                                         ; $609b: $9e
	ld [bc], a                                       ; $609c: $02
	call c, $deff                                    ; $609d: $dc $ff $de
	cp $80                                           ; $60a0: $fe $80
	pop bc                                           ; $60a2: $c1
	sbc l                                            ; $60a3: $9d
	add l                                            ; $60a4: $85
	cp l                                             ; $60a5: $bd

jr_023_60a6:
	ld a, [hl+]                                      ; $60a6: $2a
	ld [hl], d                                       ; $60a7: $72
	ld d, l                                          ; $60a8: $55
	push hl                                          ; $60a9: $e5
	adc h                                            ; $60aa: $8c
	adc b                                            ; $60ab: $88
	ld a, [de]                                       ; $60ac: $1a
	ld [de], a                                       ; $60ad: $12
	dec d                                            ; $60ae: $15
	dec l                                            ; $60af: $2d
	ld a, [hl+]                                      ; $60b0: $2a
	ld e, d                                          ; $60b1: $5a
	or d                                             ; $60b2: $b2
	scf                                              ; $60b3: $37
	ld h, l                                          ; $60b4: $65
	ld l, d                                          ; $60b5: $6a
	call z, $89d4                                    ; $60b6: $cc $d4 $89
	inc de                                           ; $60b9: $13
	ld c, l                                          ; $60ba: $4d
	ret                                              ; $60bb: $c9


	sbc e                                            ; $60bc: $9b
	sub a                                            ; $60bd: $97
	scf                                              ; $60be: $37
	cpl                                              ; $60bf: $2f
	ld a, a                                          ; $60c0: $7f
	sub [hl]                                         ; $60c1: $96
	rst $38                                          ; $60c2: $ff
	or [hl]                                          ; $60c3: $b6
	ld a, $6e                                        ; $60c4: $3e $6e
	ld c, h                                          ; $60c6: $4c
	call z, $9c8c                                    ; $60c7: $cc $8c $9c
	jr c, jr_023_60a6                                ; $60ca: $38 $da

	ld hl, sp-$62                                    ; $60cc: $f8 $9e
	db $fc                                           ; $60ce: $fc
	call c, $de7f                                    ; $60cf: $dc $7f $de
	rst $38                                          ; $60d2: $ff
	db $db                                           ; $60d3: $db
	ret nz                                           ; $60d4: $c0

	sbc c                                            ; $60d5: $99
	ldh [$f0], a                                     ; $60d6: $e0 $f0
	rrca                                             ; $60d8: $0f
	rlca                                             ; $60d9: $07
	rlca                                             ; $60da: $07
	add a                                            ; $60db: $87
	sbc $83                                          ; $60dc: $de $83
	sbc e                                            ; $60de: $9b
	inc bc                                           ; $60df: $03
	rlca                                             ; $60e0: $07
	rlca                                             ; $60e1: $07
	ld b, $dc                                        ; $60e2: $06 $dc
	ld [bc], a                                       ; $60e4: $02
	db $dd                                           ; $60e5: $dd
	rst $38                                          ; $60e6: $ff
	sbc c                                            ; $60e7: $99
	di                                               ; $60e8: $f3
	pop bc                                           ; $60e9: $c1
	add b                                            ; $60ea: $80
	nop                                              ; $60eb: $00
	sbc [hl]                                         ; $60ec: $9e
	inc bc                                           ; $60ed: $03
	ld d, a                                          ; $60ee: $57
	adc b                                            ; $60ef: $88
	sbc e                                            ; $60f0: $9b
	rst GetHLinHL                                          ; $60f1: $cf
	rst JumpTable                                          ; $60f2: $c7
	ld a, a                                          ; $60f3: $7f
	rst $38                                          ; $60f4: $ff
	db $db                                           ; $60f5: $db
	ld a, a                                          ; $60f6: $7f
	sbc h                                            ; $60f7: $9c
	ld c, a                                          ; $60f8: $4f
	ld e, l                                          ; $60f9: $5d
	ld e, [hl]                                       ; $60fa: $5e
	db $dd                                           ; $60fb: $dd
	ld e, l                                          ; $60fc: $5d
	sbc e                                            ; $60fd: $9b
	ld d, [hl]                                       ; $60fe: $56
	or $e7                                           ; $60ff: $f6 $e7
	rst SubAFromBC                                          ; $6101: $e7
	call c, $dee6                                    ; $6102: $dc $e6 $de
	call c, $ccdf                                    ; $6105: $dc $df $cc
	sbc e                                            ; $6108: $9b
	ld b, [hl]                                       ; $6109: $46
	ld h, [hl]                                       ; $610a: $66
	ld h, [hl]                                       ; $610b: $66
	rst JumpTable                                          ; $610c: $c7
	db $dd                                           ; $610d: $dd
	ld b, a                                          ; $610e: $47
	sbc $43                                          ; $610f: $de $43
	inc bc                                           ; $6111: $03
	ld b, b                                          ; $6112: $40
	dec bc                                           ; $6113: $0b
	ldh a, [$0b]                                     ; $6114: $f0 $0b
	nop                                              ; $6116: $00
	sub a                                            ; $6117: $97
	inc sp                                           ; $6118: $33
	ld d, [hl]                                       ; $6119: $56
	ld h, [hl]                                       ; $611a: $66
	ld b, h                                          ; $611b: $44
	ld b, a                                          ; $611c: $47
	ld h, l                                          ; $611d: $65
	inc sp                                           ; $611e: $33
	inc sp                                           ; $611f: $33
	adc h                                            ; $6120: $8c
	add b                                            ; $6121: $80
	ld sp, hl                                        ; $6122: $f9
	reti                                             ; $6123: $d9


	rst $38                                          ; $6124: $ff
	rlca                                             ; $6125: $07
	ldh a, [hDisp1_OBP0]                                     ; $6126: $f0 $93
	add hl, de                                       ; $6128: $19
	inc de                                           ; $6129: $13
	inc sp                                           ; $612a: $33
	scf                                              ; $612b: $37
	ld h, a                                          ; $612c: $67
	ld h, [hl]                                       ; $612d: $66
	ld c, [hl]                                       ; $612e: $4e
	adc $f0                                          ; $612f: $ce $f0
	pop af                                           ; $6131: $f1
	pop hl                                           ; $6132: $e1
	pop hl                                           ; $6133: $e1
	sbc $c2                                          ; $6134: $de $c2
	add c                                            ; $6136: $81
	add h                                            ; $6137: $84
	sub h                                            ; $6138: $94
	ld [de], a                                       ; $6139: $12
	and d                                            ; $613a: $a2
	add hl, hl                                       ; $613b: $29
	ld h, l                                          ; $613c: $65
	ld b, l                                          ; $613d: $45
	db $db                                           ; $613e: $db
	sbc e                                            ; $613f: $9b
	adc c                                            ; $6140: $89
	adc c                                            ; $6141: $89

Jump_023_6142:
	add hl, de                                       ; $6142: $19
	ld [de], a                                       ; $6143: $12
	ld [de], a                                       ; $6144: $12
	ld [hl-], a                                      ; $6145: $32
	inc h                                            ; $6146: $24
	ld h, h                                          ; $6147: $64
	jp nc, $f6f6                                     ; $6148: $d2 $f6 $f6

	or [hl]                                          ; $614b: $b6
	or $56                                           ; $614c: $f6 $56
	ld d, [hl]                                       ; $614e: $56
	or [hl]                                          ; $614f: $b6
	inc a                                            ; $6150: $3c
	jr c, jr_023_618b                                ; $6151: $38 $38

	ld a, b                                          ; $6153: $78
	ld a, b                                          ; $6154: $78
	sbc $f8                                          ; $6155: $de $f8
	sbc h                                            ; $6157: $9c
	dec a                                            ; $6158: $3d
	inc a                                            ; $6159: $3c
	inc a                                            ; $615a: $3c
	sbc $78                                          ; $615b: $de $78
	sbc l                                            ; $615d: $9d
	ld a, h                                          ; $615e: $7c
	ld a, [hl]                                       ; $615f: $7e
	db $dd                                           ; $6160: $dd
	ldh [$dd], a                                     ; $6161: $e0 $dd
	ret nz                                           ; $6163: $c0

	add a                                            ; $6164: $87
	cp $ff                                           ; $6165: $fe $ff
	ld a, a                                          ; $6167: $7f
	ccf                                              ; $6168: $3f
	ccf                                              ; $6169: $3f
	rra                                              ; $616a: $1f
	rra                                              ; $616b: $1f
	rrca                                             ; $616c: $0f
	ret nz                                           ; $616d: $c0

	ld h, b                                          ; $616e: $60
	jr nc, jr_023_61a9                               ; $616f: $30 $38

	inc e                                            ; $6171: $1c
	rra                                              ; $6172: $1f
	rrca                                             ; $6173: $0f
	rrca                                             ; $6174: $0f
	ld bc, $8000                                     ; $6175: $01 $00 $80
	add b                                            ; $6178: $80
	ret nz                                           ; $6179: $c0

	ldh [$f0], a                                     ; $617a: $e0 $f0
	ld hl, sp-$05                                    ; $617c: $f8 $fb
	sub l                                            ; $617e: $95
	ret nz                                           ; $617f: $c0

	ldh a, [$c0]                                     ; $6180: $f0 $c0
	add b                                            ; $6182: $80
	ld bc, $0703                                     ; $6183: $01 $03 $07
	rrca                                             ; $6186: $0f
	rra                                              ; $6187: $1f
	ccf                                              ; $6188: $3f
	cp $73                                           ; $6189: $fe $73

jr_023_618b:
	rst FarCall                                          ; $618b: $f7
	sbc [hl]                                         ; $618c: $9e
	ld [hl], h                                       ; $618d: $74
	sbc $e5                                          ; $618e: $de $e5
	rst SubAFromDE                                          ; $6190: $df
	push bc                                          ; $6191: $c5
	rst SubAFromDE                                          ; $6192: $df
	ld b, [hl]                                       ; $6193: $46
	sbc l                                            ; $6194: $9d
	ccf                                              ; $6195: $3f
	ld a, a                                          ; $6196: $7f

jr_023_6197:
	db $db                                           ; $6197: $db
	rst $38                                          ; $6198: $ff
	sbc [hl]                                         ; $6199: $9e
	sbc b                                            ; $619a: $98
	sbc $b8                                          ; $619b: $de $b8
	db $dd                                           ; $619d: $dd
	ld hl, sp-$21                                    ; $619e: $f8 $df
	rra                                              ; $61a0: $1f
	sbc c                                            ; $61a1: $99
	ccf                                              ; $61a2: $3f
	cpl                                              ; $61a3: $2f
	cpl                                              ; $61a4: $2f
	ld c, a                                          ; $61a5: $4f
	ld c, a                                          ; $61a6: $4f
	rst GetHLinHL                                          ; $61a7: $cf
	inc bc                                           ; $61a8: $03

jr_023_61a9:
	ld b, b                                          ; $61a9: $40
	dec bc                                           ; $61aa: $0b
	ldh a, [$0b]                                     ; $61ab: $f0 $0b
	nop                                              ; $61ad: $00
	sub a                                            ; $61ae: $97
	inc sp                                           ; $61af: $33
	dec [hl]                                         ; $61b0: $35
	ld h, [hl]                                       ; $61b1: $66
	ld b, h                                          ; $61b2: $44
	ld b, h                                          ; $61b3: $44
	ld b, l                                          ; $61b4: $45
	inc sp                                           ; $61b5: $33
	inc sp                                           ; $61b6: $33
	sub b                                            ; $61b7: $90
	add b                                            ; $61b8: $80
	ld sp, hl                                        ; $61b9: $f9
	reti                                             ; $61ba: $d9


	rst $38                                          ; $61bb: $ff
	rlca                                             ; $61bc: $07
	ldh a, [hDisp1_WY]                                     ; $61bd: $f0 $95
	inc bc                                           ; $61bf: $03
	ld [bc], a                                       ; $61c0: $02
	ld b, $06                                        ; $61c1: $06 $06
	inc b                                            ; $61c3: $04
	inc c                                            ; $61c4: $0c
	add hl, bc                                       ; $61c5: $09
	add hl, de                                       ; $61c6: $19
	cp $fe                                           ; $61c7: $fe $fe
	sbc $fc                                          ; $61c9: $de $fc
	rst SubAFromDE                                          ; $61cb: $df
	ld hl, sp-$77                                    ; $61cc: $f8 $89
	ldh a, [$62]                                     ; $61ce: $f0 $62
	ld [hl], c                                       ; $61d0: $71
	jr nc, jr_023_6197                               ; $61d1: $30 $c4

	db $e4                                           ; $61d3: $e4
	ld b, d                                          ; $61d4: $42
	adc c                                            ; $61d5: $89
	ret                                              ; $61d6: $c9


	ld sp, $6222                                     ; $61d7: $31 $22 $62
	ld h, d                                          ; $61da: $62
	ld b, d                                          ; $61db: $42
	call nz, $84c4                                   ; $61dc: $c4 $c4 $84
	ld d, l                                          ; $61df: $55
	jr jr_023_621c                                   ; $61e0: $18 $3a

	ld a, [hl-]                                      ; $61e2: $3a
	xor d                                            ; $61e3: $aa
	sbc $72                                          ; $61e4: $de $72
	sbc d                                            ; $61e6: $9a
	ld l, $6e                                        ; $61e7: $2e $6e
	ld c, h                                          ; $61e9: $4c
	ld c, h                                          ; $61ea: $4c
	ld e, h                                          ; $61eb: $5c
	sbc $9c                                          ; $61ec: $de $9c
	db $dd                                           ; $61ee: $dd
	rla                                              ; $61ef: $17
	sbc e                                            ; $61f0: $9b
	scf                                              ; $61f1: $37
	inc sp                                           ; $61f2: $33
	dec sp                                           ; $61f3: $3b
	add hl, sp                                       ; $61f4: $39
	db $dd                                           ; $61f5: $dd
	db $f4                                           ; $61f6: $f4
	rst SubAFromDE                                          ; $61f7: $df
	ldh [c], a                                       ; $61f8: $e2
	sub l                                            ; $61f9: $95
	db $e3                                           ; $61fa: $e3
	pop hl                                           ; $61fb: $e1
	ret nz                                           ; $61fc: $c0

	ldh [$e0], a                                     ; $61fd: $e0 $e0

jr_023_61ff:
	ldh a, [$f8]                                     ; $61ff: $f0 $f8
	db $fc                                           ; $6201: $fc
	db $fc                                           ; $6202: $fc
	cp $fa                                           ; $6203: $fe $fa
	sbc e                                            ; $6205: $9b
	add b                                            ; $6206: $80
	ld hl, $0103                                     ; $6207: $21 $03 $01
	cp $9c                                           ; $620a: $fe $9c

jr_023_620c:
	ld [bc], a                                       ; $620c: $02
	nop                                              ; $620d: $00
	jr nz, jr_023_620c                               ; $620e: $20 $fc

	ld a, a                                          ; $6210: $7f
	db $f4                                           ; $6211: $f4
	ld a, a                                          ; $6212: $7f
	ldh [hDisp1_SCX], a                                     ; $6213: $e0 $91
	ret nz                                           ; $6215: $c0

	ld b, b                                          ; $6216: $40
	ld b, b                                          ; $6217: $40
	nop                                              ; $6218: $00
	and b                                            ; $6219: $a0
	add b                                            ; $621a: $80
	nop                                              ; $621b: $00

jr_023_621c:
	nop                                              ; $621c: $00
	jr nz, jr_023_61ff                               ; $621d: $20 $e0

jr_023_621f:
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	ret nz                                           ; $6221: $c0

	nop                                              ; $6222: $00
	ld a, e                                          ; $6223: $7b
	sub c                                            ; $6224: $91
	add [hl]                                         ; $6225: $86
	ld c, $0c                                        ; $6226: $0e $0c
	inc e                                            ; $6228: $1c
	inc e                                            ; $6229: $1c
	inc a                                            ; $622a: $3c
	inc bc                                           ; $622b: $03
	inc bc                                           ; $622c: $03
	rlca                                             ; $622d: $07
	rlca                                             ; $622e: $07
	rrca                                             ; $622f: $0f
	rrca                                             ; $6230: $0f
	rra                                              ; $6231: $1f
	rra                                              ; $6232: $1f
	jp nz, $c4c6                                     ; $6233: $c2 $c6 $c4

	call z, $88cc                                    ; $6236: $cc $cc $88
	sbc b                                            ; $6239: $98
	sbc b                                            ; $623a: $98
	jp $c7c3                                         ; $623b: $c3 $c3 $c7


	add a                                            ; $623e: $87
	sbc $8f                                          ; $623f: $de $8f
	sbc [hl]                                         ; $6241: $9e
	sbc a                                            ; $6242: $9f
	inc bc                                           ; $6243: $03

Call_023_6244:
	ld b, b                                          ; $6244: $40
	dec bc                                           ; $6245: $0b
	ldh a, [$0b]                                     ; $6246: $f0 $0b
	nop                                              ; $6248: $00
	sub a                                            ; $6249: $97
	inc sp                                           ; $624a: $33
	dec [hl]                                         ; $624b: $35
	ld h, [hl]                                       ; $624c: $66
	ld b, h                                          ; $624d: $44
	ld b, h                                          ; $624e: $44
	ld b, l                                          ; $624f: $45
	inc sp                                           ; $6250: $33
	inc sp                                           ; $6251: $33
	sub a                                            ; $6252: $97
	add b                                            ; $6253: $80
	ld sp, hl                                        ; $6254: $f9
	reti                                             ; $6255: $d9


	rst $38                                          ; $6256: $ff
	inc bc                                           ; $6257: $03
	ldh a, [$fe]                                     ; $6258: $f0 $fe
	sbc $01                                          ; $625a: $de $01
	sbc [hl]                                         ; $625c: $9e
	ld [bc], a                                       ; $625d: $02
	reti                                             ; $625e: $d9


	rst $38                                          ; $625f: $ff
	add b                                            ; $6260: $80
	adc b                                            ; $6261: $88
	ret c                                            ; $6262: $d8

	sbc c                                            ; $6263: $99
	add b                                            ; $6264: $80
	jr jr_023_621f                                   ; $6265: $18 $b8

	jr nc, jr_023_62bb                               ; $6267: $30 $52

	ret z                                            ; $6269: $c8

	adc b                                            ; $626a: $88
	adc b                                            ; $626b: $88
	sbc c                                            ; $626c: $99
	sub c                                            ; $626d: $91
	ld de, $3111                                     ; $626e: $11 $11 $31
	ld l, e                                          ; $6271: $6b
	ld [hl], e                                       ; $6272: $73
	dec a                                            ; $6273: $3d
	ld a, l                                          ; $6274: $7d
	dec e                                            ; $6275: $1d
	adc l                                            ; $6276: $8d
	dec c                                            ; $6277: $0d
	dec e                                            ; $6278: $1d
	sbc $de                                          ; $6279: $de $de
	sub $96                                          ; $627b: $d6 $96
	or [hl]                                          ; $627d: $b6
	ld [hl], $36                                     ; $627e: $36 $36
	add c                                            ; $6280: $81
	ld h, $9f                                        ; $6281: $26 $9f
	sbc l                                            ; $6283: $9d
	sbc a                                            ; $6284: $9f
	sbc a                                            ; $6285: $9f
	sbc l                                            ; $6286: $9d
	sbc e                                            ; $6287: $9b
	sub a                                            ; $6288: $97
	sub a                                            ; $6289: $97
	ldh a, [$f3]                                     ; $628a: $f0 $f3
	ldh a, [$fe]                                     ; $628c: $f0 $fe
	ld sp, hl                                        ; $628e: $f9
	pop af                                           ; $628f: $f1
	ldh a, [c]                                       ; $6290: $f2
	db $f4                                           ; $6291: $f4
	cp [hl]                                          ; $6292: $be
	ld hl, sp+$5f                                    ; $6293: $f8 $5f
	set 7, l                                         ; $6295: $cb $fd
	add a                                            ; $6297: $87
	sbc a                                            ; $6298: $9f
	rst JumpTable                                          ; $6299: $c7
	ld a, a                                          ; $629a: $7f
	db $fc                                           ; $629b: $fc
	rst GetHLinHL                                          ; $629c: $cf
	dec bc                                           ; $629d: $0b
	rlca                                             ; $629e: $07
	cp $83                                           ; $629f: $fe $83
	cp $d4                                           ; $62a1: $fe $d4
	add l                                            ; $62a3: $85
	dec bc                                           ; $62a4: $0b
	jp z, $d81c                                      ; $62a5: $ca $1c $d8

	or c                                             ; $62a8: $b1
	db $d3                                           ; $62a9: $d3
	add a                                            ; $62aa: $87
	add a                                            ; $62ab: $87
	adc [hl]                                         ; $62ac: $8e
	ld c, $1c                                        ; $62ad: $0e $1c
	jr @+$32                                         ; $62af: $18 $30

	rst GetHLinHL                                          ; $62b1: $cf
	add a                                            ; $62b2: $87
	add hl, bc                                       ; $62b3: $09
	ld bc, $0103                                     ; $62b4: $01 $03 $01
	add e                                            ; $62b7: $83
	ret nz                                           ; $62b8: $c0

	add a                                            ; $62b9: $87
	adc l                                            ; $62ba: $8d

jr_023_62bb:
	ld bc, $fd01                                     ; $62bb: $01 $01 $fd
	add a                                            ; $62be: $87
	ei                                               ; $62bf: $fb
	ld e, $e7                                        ; $62c0: $1e $e7
	ld d, l                                          ; $62c2: $55
	cp c                                             ; $62c3: $b9
	pop hl                                           ; $62c4: $e1
	ei                                               ; $62c5: $fb
	db $e3                                           ; $62c6: $e3
	db $fc                                           ; $62c7: $fc
	sbc a                                            ; $62c8: $9f
	ldh a, [c]                                       ; $62c9: $f2
	ld [hl], b                                       ; $62ca: $70
	pop hl                                           ; $62cb: $e1
	ld bc, $0301                                     ; $62cc: $01 $01 $03
	and h                                            ; $62cf: $a4
	ld h, b                                          ; $62d0: $60
	ldh [$e1], a                                     ; $62d1: $e0 $e1
	ldh [$e1], a                                     ; $62d3: $e0 $e1
	pop bc                                           ; $62d5: $c1
	pop bc                                           ; $62d6: $c1
	db $dd                                           ; $62d7: $dd
	jp nz, $c3dd                                     ; $62d8: $c2 $dd $c3

	rst SubAFromDE                                          ; $62db: $df
	call c, $88de                                    ; $62dc: $dc $de $88
	sbc d                                            ; $62df: $9a
	ld [rRAMG], sp                                   ; $62e0: $08 $00 $00
	ld [hl], a                                       ; $62e3: $77
	ld [hl], a                                       ; $62e4: $77
	inc bc                                           ; $62e5: $03
	ld b, b                                          ; $62e6: $40
	inc sp                                           ; $62e7: $33
	ldh a, [$0b]                                     ; $62e8: $f0 $0b
	nop                                              ; $62ea: $00
	sub a                                            ; $62eb: $97
	inc sp                                           ; $62ec: $33
	scf                                              ; $62ed: $37
	ld h, [hl]                                       ; $62ee: $66
	ld b, h                                          ; $62ef: $44
	ld b, h                                          ; $62f0: $44
	ld b, [hl]                                       ; $62f1: $46
	ld d, e                                          ; $62f2: $53
	inc sp                                           ; $62f3: $33
	or h                                             ; $62f4: $b4
	add b                                            ; $62f5: $80
	rst SubAFromDE                                          ; $62f6: $df
	ld [bc], a                                       ; $62f7: $02
	ei                                               ; $62f8: $fb
	reti                                             ; $62f9: $d9


	rst $38                                          ; $62fa: $ff
	ld sp, hl                                        ; $62fb: $f9
	reti                                             ; $62fc: $d9


	rst $38                                          ; $62fd: $ff
	sbc [hl]                                         ; $62fe: $9e
	jr nz, jr_023_634c                               ; $62ff: $20 $4b

	ldh a, [$9e]                                     ; $6301: $f0 $9e
	ld b, $4b                                        ; $6303: $06 $4b
	ldh a, [$df]                                     ; $6305: $f0 $df
	rst SubAFromDE                                          ; $6307: $df
	sub l                                            ; $6308: $95
	ld [hl], d                                       ; $6309: $72
	ld [hl-], a                                      ; $630a: $32
	inc h                                            ; $630b: $24
	ld h, h                                          ; $630c: $64
	ld b, h                                          ; $630d: $44
	ld c, b                                          ; $630e: $48
	rst $38                                          ; $630f: $ff
	rst $38                                          ; $6310: $ff
	ldh a, [c]                                       ; $6311: $f2
	ldh a, [c]                                       ; $6312: $f2
	sbc $e4                                          ; $6313: $de $e4
	sub h                                            ; $6315: $94
	ret z                                            ; $6316: $c8

	rst FarCall                                          ; $6317: $f7
	ld a, c                                          ; $6318: $79
	rst $38                                          ; $6319: $ff
	ccf                                              ; $631a: $3f
	ld a, [hl+]                                      ; $631b: $2a
	ld l, d                                          ; $631c: $6a
	ld c, d                                          ; $631d: $4a
	ld c, d                                          ; $631e: $4a
	ld hl, sp-$79                                    ; $631f: $f8 $87
	db $db                                           ; $6321: $db
	rst $38                                          ; $6322: $ff
	add b                                            ; $6323: $80
	ld a, $eb                                        ; $6324: $3e $eb
	ld c, a                                          ; $6326: $4f
	ld c, a                                          ; $6327: $4f
	ld c, [hl]                                       ; $6328: $4e
	ld c, a                                          ; $6329: $4f
	rst GetHLinHL                                          ; $632a: $cf
	sbc a                                            ; $632b: $9f
	rst $38                                          ; $632c: $ff
	db $fc                                           ; $632d: $fc
	ld hl, sp-$08                                    ; $632e: $f8 $f8
	ld sp, hl                                        ; $6330: $f9
	rst $38                                          ; $6331: $ff
	ld hl, sp-$10                                    ; $6332: $f8 $f0
	add sp, -$0f                                     ; $6334: $e8 $f1
	and a                                            ; $6336: $a7
	ld e, a                                          ; $6337: $5f
	rst $38                                          ; $6338: $ff
	rst $38                                          ; $6339: $ff
	cp $f7                                           ; $633a: $fe $f7
	rra                                              ; $633c: $1f
	rra                                              ; $633d: $1f
	ld a, a                                          ; $633e: $7f
	ld hl, sp-$20                                    ; $633f: $f8 $e0
	add b                                            ; $6341: $80
	ld bc, $0f9d                                     ; $6342: $01 $9d $0f
	rst JumpTable                                          ; $6345: $c7
	call c, $80ff                                    ; $6346: $dc $ff $80
	rra                                              ; $6349: $1f
	cp $f8                                           ; $634a: $fe $f8

jr_023_634c:
	ldh a, [$80]                                     ; $634c: $f0 $80
	nop                                              ; $634e: $00
	ld bc, $e101                                     ; $634f: $01 $01 $e1
	di                                               ; $6352: $f3
	rst JumpTable                                          ; $6353: $c7
	adc a                                            ; $6354: $8f
	adc a                                            ; $6355: $8f
	sbc [hl]                                         ; $6356: $9e
	rla                                              ; $6357: $17
	daa                                              ; $6358: $27
	cpl                                              ; $6359: $2f
	ld b, e                                          ; $635a: $43
	ld l, l                                          ; $635b: $6d
	jp hl                                            ; $635c: $e9


	reti                                             ; $635d: $d9


	db $d3                                           ; $635e: $d3
	or e                                             ; $635f: $b3
	db $e4                                           ; $6360: $e4
	ldh [$c7], a                                     ; $6361: $e0 $c7
	ld h, a                                          ; $6363: $67
	ld b, a                                          ; $6364: $47
	ld b, a                                          ; $6365: $47
	ld sp, hl                                        ; $6366: $f9
	rst $38                                          ; $6367: $ff
	sub c                                            ; $6368: $91
	cp $ff                                           ; $6369: $fe $ff
	rst SubAFromDE                                          ; $636b: $df
	pop bc                                           ; $636c: $c1
	pop bc                                           ; $636d: $c1
	ld sp, hl                                        ; $636e: $f9
	cp [hl]                                          ; $636f: $be
	rlca                                             ; $6370: $07
	ld bc, $e000                                     ; $6371: $01 $00 $e0
	ld b, h                                          ; $6374: $44
	inc b                                            ; $6375: $04
	add b                                            ; $6376: $80
	sbc $a2                                          ; $6377: $de $a2
	rst SubAFromDE                                          ; $6379: $df
	and h                                            ; $637a: $a4
	sbc l                                            ; $637b: $9d
	add b                                            ; $637c: $80
	ret nz                                           ; $637d: $c0

	db $dd                                           ; $637e: $dd
	call nz, $c2df                                   ; $637f: $c4 $df $c2
	sub [hl]                                         ; $6382: $96
	ld h, d                                          ; $6383: $62
	ld b, d                                          ; $6384: $42
	ld h, d                                          ; $6385: $62
	ld h, d                                          ; $6386: $62
	halt                                             ; $6387: $76
	ld d, [hl]                                       ; $6388: $56
	ld d, h                                          ; $6389: $54
	ld e, h                                          ; $638a: $5c
	ld b, e                                          ; $638b: $43
	db $dd                                           ; $638c: $dd
	ld h, e                                          ; $638d: $63
	sbc h                                            ; $638e: $9c
	ld [hl], e                                       ; $638f: $73
	ld [hl], a                                       ; $6390: $77
	ld [hl], a                                       ; $6391: $77
	db $dd                                           ; $6392: $dd
	add b                                            ; $6393: $80
	ld d, e                                          ; $6394: $53
	ld d, b                                          ; $6395: $50
	sbc c                                            ; $6396: $99
	ld c, $0d                                        ; $6397: $0e $0d
	add hl, bc                                       ; $6399: $09
	inc bc                                           ; $639a: $03
	rlca                                             ; $639b: $07
	ld b, $63                                        ; $639c: $06 $63
	ldh a, [$9b]                                     ; $639e: $f0 $9b
	ret nz                                           ; $63a0: $c0

	ldh [$f0], a                                     ; $63a1: $e0 $f0
	jr nc, jr_023_641c                               ; $63a3: $30 $77

	inc l                                            ; $63a5: $2c
	reti                                             ; $63a6: $d9


	rst $38                                          ; $63a7: $ff
	dec bc                                           ; $63a8: $0b
	nop                                              ; $63a9: $00
	rst SubAFromDE                                          ; $63aa: $df
	inc sp                                           ; $63ab: $33
	sbc c                                            ; $63ac: $99
	halt                                             ; $63ad: $76
	ld b, h                                          ; $63ae: $44
	ld b, h                                          ; $63af: $44
	ld b, [hl]                                       ; $63b0: $46
	ld d, e                                          ; $63b1: $53
	inc sp                                           ; $63b2: $33
	inc b                                            ; $63b3: $04
	add c                                            ; $63b4: $81
	sub d                                            ; $63b5: $92
	ld a, a                                          ; $63b6: $7f
	ld l, a                                          ; $63b7: $6f
	xor $dd                                          ; $63b8: $ee $dd
	cp e                                             ; $63ba: $bb
	dec sp                                           ; $63bb: $3b
	inc de                                           ; $63bc: $13
	inc bc                                           ; $63bd: $03
	db $fc                                           ; $63be: $fc
	sub b                                            ; $63bf: $90
	ld de, $7f33                                     ; $63c0: $11 $33 $7f
	sbc $ff                                          ; $63c3: $de $ff
	ld a, a                                          ; $63c5: $7f
	db $fc                                           ; $63c6: $fc
	sub h                                            ; $63c7: $94
	db $fd                                           ; $63c8: $fd
	ei                                               ; $63c9: $fb
	or a                                             ; $63ca: $b7
	add a                                            ; $63cb: $87
	ld b, $00                                        ; $63cc: $06 $00
	ld sp, hl                                        ; $63ce: $f9
	pop hl                                           ; $63cf: $e1
	jp $efc7                                         ; $63d0: $c3 $c7 $ef


	sbc $ff                                          ; $63d3: $de $ff
	sub d                                            ; $63d5: $92
	db $fc                                           ; $63d6: $fc
	ld a, h                                          ; $63d7: $7c
	ld hl, sp-$10                                    ; $63d8: $f8 $f0
	db $fc                                           ; $63da: $fc
	inc a                                            ; $63db: $3c
	ld [hl], $30                                     ; $63dc: $36 $30
	add a                                            ; $63de: $87
	adc a                                            ; $63df: $8f
	daa                                              ; $63e0: $27
	ccf                                              ; $63e1: $3f
	sbc a                                            ; $63e2: $9f
	sbc $ff                                          ; $63e3: $de $ff
	sub d                                            ; $63e5: $92
	rst JumpTable                                          ; $63e6: $c7
	rst GetHLinHL                                          ; $63e7: $cf
	adc a                                            ; $63e8: $8f
	inc c                                            ; $63e9: $0c
	ld [rRAMG], sp                                   ; $63ea: $08 $00 $00
	inc bc                                           ; $63ed: $03
	jr c, jr_023_6421                                ; $63ee: $38 $31

	ld [hl], e                                       ; $63f0: $73
	di                                               ; $63f1: $f3
	rst FarCall                                          ; $63f2: $f7
	db $dd                                           ; $63f3: $dd
	rst $38                                          ; $63f4: $ff
	sbc b                                            ; $63f5: $98
	cp $9d                                           ; $63f6: $fe $9d
	rra                                              ; $63f8: $1f
	ld a, [hl]                                       ; $63f9: $7e
	db $fc                                           ; $63fa: $fc
	ld hl, sp-$07                                    ; $63fb: $f8 $f9
	ld [hl], a                                       ; $63fd: $77
	or $7f                                           ; $63fe: $f6 $7f
	ld sp, hl                                        ; $6400: $f9
	ld a, a                                          ; $6401: $7f
	ld hl, sp-$80                                    ; $6402: $f8 $80
	ld [hl], c                                       ; $6404: $71
	ld b, c                                          ; $6405: $41
	add e                                            ; $6406: $83
	rst SubAFromHL                                          ; $6407: $d7
	xor a                                            ; $6408: $af
	ld e, l                                          ; $6409: $5d
	or d                                             ; $640a: $b2

jr_023_640b:
	ld e, l                                          ; $640b: $5d
	cp a                                             ; $640c: $bf
	cp $fc                                           ; $640d: $fe $fc
	jr c, jr_023_6481                                ; $640f: $38 $70

jr_023_6411:
	db $e3                                           ; $6411: $e3
	rst GetHLinHL                                          ; $6412: $cf
	cp [hl]                                          ; $6413: $be
	adc $98                                          ; $6414: $ce $98
	ld [hl], d                                       ; $6416: $72
	call nz, $a348                                   ; $6417: $c4 $48 $a3
	ld a, h                                          ; $641a: $7c
	pop hl                                           ; $641b: $e1

jr_023_641c:
	ld bc, $0c07                                     ; $641c: $01 $07 $0c
	jr c, jr_023_6411                                ; $641f: $38 $f0

jr_023_6421:
	ret nz                                           ; $6421: $c0

	add e                                            ; $6422: $83
	add b                                            ; $6423: $80
	rra                                              ; $6424: $1f
	ld b, e                                          ; $6425: $43
	adc [hl]                                         ; $6426: $8e
	inc e                                            ; $6427: $1c
	jr nc, jr_023_640b                               ; $6428: $30 $e1

	add a                                            ; $642a: $87
	ld e, $fd                                        ; $642b: $1e $fd
	add b                                            ; $642d: $80
	ld bc, $0f03                                     ; $642e: $01 $03 $0f
	rra                                              ; $6431: $1f
	ld a, a                                          ; $6432: $7f
	rst $38                                          ; $6433: $ff
	cp $08                                           ; $6434: $fe $08
	db $10                                           ; $6436: $10
	jr nz, jr_023_647a                               ; $6437: $20 $41

	add e                                            ; $6439: $83
	rlca                                             ; $643a: $07
	rra                                              ; $643b: $1f
	ld a, a                                          ; $643c: $7f
	db $fc                                           ; $643d: $fc
	ld hl, sp-$0d                                    ; $643e: $f8 $f3
	rst SubAFromBC                                          ; $6440: $e7
	rst GetHLinHL                                          ; $6441: $cf
	cp h                                             ; $6442: $bc
	add b                                            ; $6443: $80
	ld a, b                                          ; $6444: $78
	ldh [rAUD2LOW], a                                ; $6445: $e0 $18
	jr nc, jr_023_64b9                               ; $6447: $30 $70

	pop af                                           ; $6449: $f1
	pop hl                                           ; $644a: $e1
	db $e3                                           ; $644b: $e3
	jp $7cc7                                         ; $644c: $c3 $c7 $7c


	db $fd                                           ; $644f: $fd
	reti                                             ; $6450: $d9


	sbc c                                            ; $6451: $99
	inc sp                                           ; $6452: $33
	inc sp                                           ; $6453: $33
	ld [hl], a                                       ; $6454: $77
	ld h, a                                          ; $6455: $67
	jr jr_023_6474                                   ; $6456: $18 $1c

	inc e                                            ; $6458: $1c
	ld e, $3e                                        ; $6459: $1e $3e
	ld l, $2f                                        ; $645b: $2e $2f
	daa                                              ; $645d: $27
	cp a                                             ; $645e: $bf
	or a                                             ; $645f: $b7
	or a                                             ; $6460: $b7
	or e                                             ; $6461: $b3
	db $e3                                           ; $6462: $e3
	sub b                                            ; $6463: $90
	db $e3                                           ; $6464: $e3
	pop hl                                           ; $6465: $e1
	pop hl                                           ; $6466: $e1
	jr nz, jr_023_649b                               ; $6467: $20 $32

	sub b                                            ; $6469: $90
	jr jr_023_6475                                   ; $646a: $18 $09

	ld [$444c], sp                                   ; $646c: $08 $4c $44
	inc bc                                           ; $646f: $03
	ld bc, $8101                                     ; $6470: $01 $01 $81
	db $dd                                           ; $6473: $dd

jr_023_6474:
	add b                                            ; $6474: $80

jr_023_6475:
	add b                                            ; $6475: $80
	sbc a                                            ; $6476: $9f
	sbc e                                            ; $6477: $9b
	ld b, [hl]                                       ; $6478: $46
	ld c, h                                          ; $6479: $4c

jr_023_647a:
	ld b, $02                                        ; $647a: $06 $02
	ld h, a                                          ; $647c: $67
	rst SubAFromBC                                          ; $647d: $e7
	add hl, bc                                       ; $647e: $09
	dec c                                            ; $647f: $0d
	adc l                                            ; $6480: $8d

jr_023_6481:
	add a                                            ; $6481: $87
	rst JumpTable                                          ; $6482: $c7
	rst JumpTable                                          ; $6483: $c7
	jp $ff43                                         ; $6484: $c3 $43 $ff


	rst $38                                          ; $6487: $ff
	xor $85                                          ; $6488: $ee $85
	adc a                                            ; $648a: $8f
	sbc a                                            ; $648b: $9f
	adc a                                            ; $648c: $8f
	add [hl]                                         ; $648d: $86
	ld h, e                                          ; $648e: $63
	rst SubAFromBC                                          ; $648f: $e7
	rst FarCall                                          ; $6490: $f7
	rst $38                                          ; $6491: $ff
	ldh a, [$e0]                                     ; $6492: $f0 $e0
	ldh a, [$7f]                                     ; $6494: $f0 $7f
	ld l, b                                          ; $6496: $68
	sbc [hl]                                         ; $6497: $9e
	dec h                                            ; $6498: $25
	ld a, e                                          ; $6499: $7b
	inc a                                            ; $649a: $3c

jr_023_649b:
	add h                                            ; $649b: $84
	xor a                                            ; $649c: $af
	rlca                                             ; $649d: $07
	dec b                                            ; $649e: $05
	sbc $ff                                          ; $649f: $de $ff
	rst SubAFromBC                                          ; $64a1: $e7
	add e                                            ; $64a2: $83
	rlca                                             ; $64a3: $07
	ld e, [hl]                                       ; $64a4: $5e
	cp $fe                                           ; $64a5: $fe $fe
	rst AddAOntoHL                                          ; $64a7: $ef
	rst $38                                          ; $64a8: $ff
	ld sp, hl                                        ; $64a9: $f9
	ld e, $bf                                        ; $64aa: $1e $bf
	ld sp, hl                                        ; $64ac: $f9
	ld hl, sp-$20                                    ; $64ad: $f8 $e0
	inc de                                           ; $64af: $13
	sbc a                                            ; $64b0: $9f
	rst AddAOntoHL                                          ; $64b1: $ef
	rst SubAFromBC                                          ; $64b2: $e7
	ld c, l                                          ; $64b3: $4d
	ld h, [hl]                                       ; $64b4: $66
	daa                                              ; $64b5: $27
	ld a, a                                          ; $64b6: $7f
	dec bc                                           ; $64b7: $0b
	nop                                              ; $64b8: $00

jr_023_64b9:
	rst SubAFromDE                                          ; $64b9: $df
	ld [hl+], a                                      ; $64ba: $22
	sbc c                                            ; $64bb: $99
	ld d, [hl]                                       ; $64bc: $56
	ld h, [hl]                                       ; $64bd: $66
	ld b, h                                          ; $64be: $44
	ld b, [hl]                                       ; $64bf: $46
	ld h, d                                          ; $64c0: $62
	ld [hl+], a                                      ; $64c1: $22
	ei                                               ; $64c2: $fb
	add b                                            ; $64c3: $80
	sbc l                                            ; $64c4: $9d
	rst $38                                          ; $64c5: $ff
	cp $db                                           ; $64c6: $fe $db
	rst $38                                          ; $64c8: $ff
	sub l                                            ; $64c9: $95
	inc de                                           ; $64ca: $13
	inc sp                                           ; $64cb: $33
	and e                                            ; $64cc: $a3
	dec d                                            ; $64cd: $15
	inc l                                            ; $64ce: $2c
	jr z, jr_023_64da                                ; $64cf: $28 $09

	cp a                                             ; $64d1: $bf
	rst $38                                          ; $64d2: $ff
	ccf                                              ; $64d3: $3f
	db $dd                                           ; $64d4: $dd
	rst $38                                          ; $64d5: $ff
	ld a, a                                          ; $64d6: $7f
	ld sp, hl                                        ; $64d7: $f9
	rst SubAFromDE                                          ; $64d8: $df
	db $fc                                           ; $64d9: $fc

jr_023_64da:
	sub [hl]                                         ; $64da: $96
	or b                                             ; $64db: $b0
	ld bc, $77a3                                     ; $64dc: $01 $a3 $77
	db $fd                                           ; $64df: $fd
	ld hl, sp-$02                                    ; $64e0: $f8 $fe
	rst $38                                          ; $64e2: $ff
	pop af                                           ; $64e3: $f1
	sbc $ff                                          ; $64e4: $de $ff
	sub h                                            ; $64e6: $94
	ei                                               ; $64e7: $fb
	pop af                                           ; $64e8: $f1
	ld h, e                                          ; $64e9: $63
	nop                                              ; $64ea: $00
	adc [hl]                                         ; $64eb: $8e
	ld [hl], c                                       ; $64ec: $71
	jr z, @+$42                                      ; $64ed: $28 $40

	cp $ce                                           ; $64ef: $fe $ce
	ld a, a                                          ; $64f1: $7f
	db $db                                           ; $64f2: $db
	rst $38                                          ; $64f3: $ff
	adc a                                            ; $64f4: $8f
	rst JumpTable                                          ; $64f5: $c7
	db $f4                                           ; $64f6: $f4
	db $f4                                           ; $64f7: $f4
	ld h, $c7                                        ; $64f8: $26 $c7
	ld h, e                                          ; $64fa: $63
	ld [hl+], a                                      ; $64fb: $22
	dec de                                           ; $64fc: $1b
	ld a, [hl-]                                      ; $64fd: $3a
	ccf                                              ; $64fe: $3f
	ccf                                              ; $64ff: $3f
	cp $8f                                           ; $6500: $fe $8f
	rrca                                             ; $6502: $0f
	rrca                                             ; $6503: $0f
	ld a, $77                                        ; $6504: $3e $77
	jp hl                                            ; $6506: $e9


	sbc $fe                                          ; $6507: $de $fe
	rst SubAFromDE                                          ; $6509: $df
	rst $38                                          ; $650a: $ff
	add b                                            ; $650b: $80
	db $ec                                           ; $650c: $ec
	cp b                                             ; $650d: $b8
	db $d3                                           ; $650e: $d3
	push bc                                          ; $650f: $c5
	sbc $68                                          ; $6510: $de $68
	db $d3                                           ; $6512: $d3
	xor h                                            ; $6513: $ac
	inc sp                                           ; $6514: $33
	ld h, a                                          ; $6515: $67
	ld l, a                                          ; $6516: $6f
	ld a, [hl]                                       ; $6517: $7e
	ld a, c                                          ; $6518: $79
	rst FarCall                                          ; $6519: $f7
	rst AddAOntoHL                                          ; $651a: $ef
	rst SubAFromDE                                          ; $651b: $df
	or d                                             ; $651c: $b2
	ld hl, sp-$1d                                    ; $651d: $f8 $e3
	add l                                            ; $651f: $85
	inc c                                            ; $6520: $0c
	ld hl, sp-$2f                                    ; $6521: $f8 $d1
	and e                                            ; $6523: $a3
	ld h, c                                          ; $6524: $61
	add a                                            ; $6525: $87

jr_023_6526:
	rra                                              ; $6526: $1f
	ld a, [hl]                                       ; $6527: $7e
	ld hl, sp-$10                                    ; $6528: $f8 $f0
	ldh [$80], a                                     ; $652a: $e0 $80
	ret nz                                           ; $652c: $c0

	ld [$8320], sp                                   ; $652d: $08 $20 $83
	inc c                                            ; $6530: $0c
	ld a, [hl-]                                      ; $6531: $3a
	ld h, h                                          ; $6532: $64
	ret nc                                           ; $6533: $d0

	jr nz, jr_023_6526                               ; $6534: $20 $f0

	ret nz                                           ; $6536: $c0

	nop                                              ; $6537: $00
	inc bc                                           ; $6538: $03
	inc b                                            ; $6539: $04
	jr @+$22                                         ; $653a: $18 $20

	ret nz                                           ; $653c: $c0

	ld sp, $20cc                                     ; $653d: $31 $cc $20
	add c                                            ; $6540: $81
	ld b, $19                                        ; $6541: $06 $19
	ld [hl], d                                       ; $6543: $72
	push bc                                          ; $6544: $c5
	ld c, $30                                        ; $6545: $0e $30
	ret nz                                           ; $6547: $c0

	nop                                              ; $6548: $00
	ld bc, $7f07                                     ; $6549: $01 $07 $7f
	or a                                             ; $654c: $b7
	add b                                            ; $654d: $80
	add $39                                          ; $654e: $c6 $39
	rst SubAFromBC                                          ; $6550: $e7
	sbc d                                            ; $6551: $9a
	dec h                                            ; $6552: $25
	ld c, c                                          ; $6553: $49
	and h                                            ; $6554: $a4
	ld c, d                                          ; $6555: $4a
	ld bc, $1806                                     ; $6556: $01 $06 $18
	ld h, c                                          ; $6559: $61
	jp nz, $1e86                                     ; $655a: $c2 $86 $1e

	inc a                                            ; $655d: $3c
	inc l                                            ; $655e: $2c
	rst SubAFromHL                                          ; $655f: $d7
	adc e                                            ; $6560: $8b
	and c                                            ; $6561: $a1
	inc h                                            ; $6562: $24
	ld [hl+], a                                      ; $6563: $22
	jr nc, jr_023_657f                               ; $6564: $30 $19

	jp $3020                                         ; $6566: $c3 $20 $30


	jr jr_023_6583                                   ; $6569: $18 $18

	inc e                                            ; $656b: $1c
	sbc [hl]                                         ; $656c: $9e
	sub d                                            ; $656d: $92
	cp [hl]                                          ; $656e: $be
	ld e, b                                          ; $656f: $58
	inc h                                            ; $6570: $24
	jp nc, $9c69                                     ; $6571: $d2 $69 $9c

	ld c, [hl]                                       ; $6574: $4e
	ld b, [hl]                                       ; $6575: $46
	dec h                                            ; $6576: $25
	add a                                            ; $6577: $87
	jp $1021                                         ; $6578: $c3 $21 $10


	cp $80                                           ; $657b: $fe $80
	ld [bc], a                                       ; $657d: $02
	sbc a                                            ; $657e: $9f

jr_023_657f:
	ld b, a                                          ; $657f: $47
	cpl                                              ; $6580: $2f
	inc bc                                           ; $6581: $03
	or e                                             ; $6582: $b3

jr_023_6583:
	ld d, a                                          ; $6583: $57
	ld sp, $0f0d                                     ; $6584: $31 $0d $0f
	adc a                                            ; $6587: $8f
	rst JumpTable                                          ; $6588: $c7
	rst SubAFromBC                                          ; $6589: $e7
	ld h, a                                          ; $658a: $67
	inc sp                                           ; $658b: $33
	dec de                                           ; $658c: $1b
	dec de                                           ; $658d: $1b
	rst $38                                          ; $658e: $ff
	rst $38                                          ; $658f: $ff
	db $fc                                           ; $6590: $fc
	rst SubAFromDE                                          ; $6591: $df
	ld a, a                                          ; $6592: $7f
	ld l, $fe                                        ; $6593: $2e $fe
	db $fc                                           ; $6595: $fc
	cp h                                             ; $6596: $bc
	ld a, [hl]                                       ; $6597: $7e
	rst $38                                          ; $6598: $ff
	cp b                                             ; $6599: $b8
	sub b                                            ; $659a: $90
	db $d3                                           ; $659b: $d3
	adc l                                            ; $659c: $8d
	rla                                              ; $659d: $17
	ccf                                              ; $659e: $3f
	rst $38                                          ; $659f: $ff
	cp $7f                                           ; $65a0: $fe $7f
	ld a, e                                          ; $65a2: $7b
	ei                                               ; $65a3: $fb
	rst $38                                          ; $65a4: $ff
	ld a, e                                          ; $65a5: $7b
	ld a, [hl]                                       ; $65a6: $7e
	db $ed                                           ; $65a7: $ed
	pop af                                           ; $65a8: $f1
	db $db                                           ; $65a9: $db
	adc [hl]                                         ; $65aa: $8e
	inc e                                            ; $65ab: $1c
	inc c                                            ; $65ac: $0c
	add [hl]                                         ; $65ad: $86
	adc a                                            ; $65ae: $8f
	call c, $94ff                                    ; $65af: $dc $ff $94
	rst SubAFromDE                                          ; $65b2: $df
	rst $38                                          ; $65b3: $ff
	ld a, [hl]                                       ; $65b4: $7e
	ld [$ff9b], sp                                   ; $65b5: $08 $9b $ff
	scf                                              ; $65b8: $37
	ld sp, $e870                                     ; $65b9: $31 $70 $e8
	di                                               ; $65bc: $f3
	dec bc                                           ; $65bd: $0b
	nop                                              ; $65be: $00
	rst SubAFromDE                                          ; $65bf: $df
	ld [hl+], a                                      ; $65c0: $22
	sbc [hl]                                         ; $65c1: $9e
	ld d, [hl]                                       ; $65c2: $56
	sbc $66                                          ; $65c3: $de $66
	sbc l                                            ; $65c5: $9d
	ld h, d                                          ; $65c6: $62
	ld [hl+], a                                      ; $65c7: $22
	db $fc                                           ; $65c8: $fc
	add b                                            ; $65c9: $80
	rst SubAFromDE                                          ; $65ca: $df
	rst $38                                          ; $65cb: $ff
	sbc [hl]                                         ; $65cc: $9e
	rst FarCall                                          ; $65cd: $f7
	call c, $93ff                                    ; $65ce: $dc $ff $93
	or a                                             ; $65d1: $b7
	rst $38                                          ; $65d2: $ff
	rst $38                                          ; $65d3: $ff
	pop af                                           ; $65d4: $f1
	pop af                                           ; $65d5: $f1
	rrca                                             ; $65d6: $0f
	rlca                                             ; $65d7: $07
	and [hl]                                         ; $65d8: $a6
	rst FarCall                                          ; $65d9: $f7
	rst AddAOntoHL                                          ; $65da: $ef
	cp a                                             ; $65db: $bf
	sbc e                                            ; $65dc: $9b
	ld a, e                                          ; $65dd: $7b
	db $f4                                           ; $65de: $f4
	jp c, $99ff                                      ; $65df: $da $ff $99

	dec e                                            ; $65e2: $1d
	ld sp, $f9ff                                     ; $65e3: $31 $ff $f9
	ccf                                              ; $65e6: $3f
	rst SubAFromDE                                          ; $65e7: $df
	sbc $ff                                          ; $65e8: $de $ff
	add b                                            ; $65ea: $80
	ei                                               ; $65eb: $fb
	rst $38                                          ; $65ec: $ff
	rst $38                                          ; $65ed: $ff
	ld hl, sp-$0f                                    ; $65ee: $f8 $f1
	rla                                              ; $65f0: $17
	dec de                                           ; $65f1: $1b
	ld [hl], e                                       ; $65f2: $73
	adc a                                            ; $65f3: $8f
	rst SubAFromBC                                          ; $65f4: $e7
	rst AddAOntoHL                                          ; $65f5: $ef
	cp $fe                                           ; $65f6: $fe $fe
	db $fc                                           ; $65f8: $fc
	ld hl, sp-$10                                    ; $65f9: $f8 $f0
	or a                                             ; $65fb: $b7
	ld hl, sp-$01                                    ; $65fc: $f8 $ff
	rst $38                                          ; $65fe: $ff
	rst GetHLinHL                                          ; $65ff: $cf
	add a                                            ; $6600: $87
	ld c, a                                          ; $6601: $4f
	rst $38                                          ; $6602: $ff
	cp $ff                                           ; $6603: $fe $ff
	ld [hl], a                                       ; $6605: $77
	ld sp, $3101                                     ; $6606: $31 $01 $31
	ld a, l                                          ; $6609: $7d
	add b                                            ; $660a: $80
	rra                                              ; $660b: $1f
	add a                                            ; $660c: $87
	ldh [$f9], a                                     ; $660d: $e0 $f9
	rst $38                                          ; $660f: $ff
	rst $38                                          ; $6610: $ff
	cp $fe                                           ; $6611: $fe $fe
	rst $38                                          ; $6613: $ff
	ld a, a                                          ; $6614: $7f
	rst FarCall                                          ; $6615: $f7
	rst AddAOntoHL                                          ; $6616: $ef
	db $dd                                           ; $6617: $dd
	sub $ff                                          ; $6618: $d6 $ff
	sub e                                            ; $661a: $93
	sub a                                            ; $661b: $97
	ld e, [hl]                                       ; $661c: $5e
	add sp, -$0f                                     ; $661d: $e8 $f1
	and $f9                                          ; $661f: $e6 $f9
	rst $38                                          ; $6621: $ff
	db $fc                                           ; $6622: $fc
	ld hl, sp-$4f                                    ; $6623: $f8 $b1
	rst $38                                          ; $6625: $ff
	ld a, h                                          ; $6626: $7c
	sbc $e1                                          ; $6627: $de $e1
	ld c, b                                          ; $6629: $48
	adc c                                            ; $662a: $89
	sub d                                            ; $662b: $92
	add hl, sp                                       ; $662c: $39
	ld h, h                                          ; $662d: $64
	ret nz                                           ; $662e: $c0

	add e                                            ; $662f: $83
	ccf                                              ; $6630: $3f
	cp $b0                                           ; $6631: $fe $b0
	ld h, c                                          ; $6633: $61
	add $98                                          ; $6634: $c6 $98
	ret nz                                           ; $6636: $c0

	nop                                              ; $6637: $00
	jr nz, jr_023_663a                               ; $6638: $20 $00

jr_023_663a:
	ld h, b                                          ; $663a: $60
	add e                                            ; $663b: $83
	ld [$3f42], sp                                   ; $663c: $08 $42 $3f
	rst $38                                          ; $663f: $ff
	ret nz                                           ; $6640: $c0

	cp $93                                           ; $6641: $fe $93
	rlca                                             ; $6643: $07
	inc a                                            ; $6644: $3c
	inc bc                                           ; $6645: $03
	nop                                              ; $6646: $00
	inc bc                                           ; $6647: $03
	nop                                              ; $6648: $00
	jr c, jr_023_664c                                ; $6649: $38 $01

	ld b, b                                          ; $664b: $40

jr_023_664c:
	ld c, $fc                                        ; $664c: $0e $fc
	rst $38                                          ; $664e: $ff
	ld a, e                                          ; $664f: $7b
	ldh a, [c]                                       ; $6650: $f2
	add b                                            ; $6651: $80
	cp $80                                           ; $6652: $fe $80
	ld bc, $ea3a                                     ; $6654: $01 $3a $ea

jr_023_6657:
	ld c, b                                          ; $6657: $48
	ldh [rP1], a                                     ; $6658: $e0 $00
	ld hl, sp-$40                                    ; $665a: $f8 $c0
	inc a                                            ; $665c: $3c
	push hl                                          ; $665d: $e5
	dec [hl]                                         ; $665e: $35
	or a                                             ; $665f: $b7
	rra                                              ; $6660: $1f
	rst $38                                          ; $6661: $ff
	rlca                                             ; $6662: $07
	ccf                                              ; $6663: $3f
	jp $a390                                         ; $6664: $c3 $90 $a3


	ld b, $48                                        ; $6667: $06 $48
	ld de, $c7e0                                     ; $6669: $11 $e0 $c7
	add c                                            ; $666c: $81
	ld h, b                                          ; $666d: $60
	ld b, b                                          ; $666e: $40
	pop bc                                           ; $666f: $c1
	add a                                            ; $6670: $87
	add b                                            ; $6671: $80
	adc [hl]                                         ; $6672: $8e
	rra                                              ; $6673: $1f
	jr c, jr_023_66f4                                ; $6674: $38 $7e

	ld hl, sp-$40                                    ; $6676: $f8 $c0
	rlca                                             ; $6678: $07
	ld a, h                                          ; $6679: $7c
	ld bc, $8c40                                     ; $667a: $01 $40 $8c
	db $e3                                           ; $667d: $e3
	nop                                              ; $667e: $00
	ccf                                              ; $667f: $3f
	rst $38                                          ; $6680: $ff
	add e                                            ; $6681: $83
	nop                                              ; $6682: $00
	add b                                            ; $6683: $80
	ld [hl], b                                       ; $6684: $70
	inc e                                            ; $6685: $1c
	ld e, a                                          ; $6686: $5f
	sbc a                                            ; $6687: $9f
	rst $38                                          ; $6688: $ff
	rst $38                                          ; $6689: $ff
	ld a, a                                          ; $668a: $7f
	cp a                                             ; $668b: $bf
	ld e, a                                          ; $668c: $5f
	cpl                                              ; $668d: $2f
	ccf                                              ; $668e: $3f
	rrca                                             ; $668f: $0f
	db $e3                                           ; $6690: $e3
	ld a, a                                          ; $6691: $7f
	cp l                                             ; $6692: $bd
	sbc h                                            ; $6693: $9c
	ld a, a                                          ; $6694: $7f
	ccf                                              ; $6695: $3f
	rra                                              ; $6696: $1f
	ld a, e                                          ; $6697: $7b
	ld sp, $fd91                                     ; $6698: $31 $91 $fd
	rst AddAOntoHL                                          ; $669b: $ef
	db $fd                                           ; $669c: $fd
	rst $38                                          ; $669d: $ff
	rst $38                                          ; $669e: $ff
	jr @-$46                                         ; $669f: $18 $b8

	cp h                                             ; $66a1: $bc
	sbc [hl]                                         ; $66a2: $9e
	rst SubAFromDE                                          ; $66a3: $df
	ld a, a                                          ; $66a4: $7f
	jr c, jr_023_6657                                ; $66a5: $38 $b0

	rst SubAFromDE                                          ; $66a7: $df
	ld a, e                                          ; $66a8: $7b
	ldh [$dc], a                                     ; $66a9: $e0 $dc
	rst $38                                          ; $66ab: $ff
	sub e                                            ; $66ac: $93
	ld a, a                                          ; $66ad: $7f
	inc a                                            ; $66ae: $3c
	ld b, h                                          ; $66af: $44
	adc l                                            ; $66b0: $8d
	sub b                                            ; $66b1: $90
	ld h, b                                          ; $66b2: $60
	ld h, l                                          ; $66b3: $65
	ld e, $e7                                        ; $66b4: $1e $e7
	db $fc                                           ; $66b6: $fc
	rst $38                                          ; $66b7: $ff
	rst AddAOntoHL                                          ; $66b8: $ef
	ld a, e                                          ; $66b9: $7b
	db $db                                           ; $66ba: $db
	ld a, a                                          ; $66bb: $7f
	ld hl, sp-$67                                    ; $66bc: $f8 $99
	adc h                                            ; $66be: $8c
	add e                                            ; $66bf: $83
	sbc a                                            ; $66c0: $9f
	add hl, de                                       ; $66c1: $19
	rst SubAFromDE                                          ; $66c2: $df
	jr c, jr_023_66d0                                ; $66c3: $38 $0b

	nop                                              ; $66c5: $00
	rst SubAFromDE                                          ; $66c6: $df
	ld [hl+], a                                      ; $66c7: $22
	sbc [hl]                                         ; $66c8: $9e
	ld h, $de                                        ; $66c9: $26 $de
	ld h, [hl]                                       ; $66cb: $66
	sbc l                                            ; $66cc: $9d
	ld h, d                                          ; $66cd: $62
	ld [hl+], a                                      ; $66ce: $22
	db $ec                                           ; $66cf: $ec

jr_023_66d0:
	add b                                            ; $66d0: $80
	reti                                             ; $66d1: $d9


	rst $38                                          ; $66d2: $ff
	adc c                                            ; $66d3: $89
	ld c, c                                          ; $66d4: $49
	ld hl, sp-$08                                    ; $66d5: $f8 $f8
	or b                                             ; $66d7: $b0
	ld [$3bdb], sp                                   ; $66d8: $08 $db $3b
	inc hl                                           ; $66db: $23
	rst $38                                          ; $66dc: $ff
	ei                                               ; $66dd: $fb
	di                                               ; $66de: $f3
	rst $38                                          ; $66df: $ff
	rst $38                                          ; $66e0: $ff
	ccf                                              ; $66e1: $3f
	sbc a                                            ; $66e2: $9f
	rst $38                                          ; $66e3: $ff
	db $fd                                           ; $66e4: $fd
	ld a, $7c                                        ; $66e5: $3e $7c
	ld hl, sp-$33                                    ; $66e7: $f8 $cd
	rst GetHLinHL                                          ; $66e9: $cf
	jp c, $98ff                                      ; $66ea: $da $ff $98

	cp a                                             ; $66ed: $bf
	push hl                                          ; $66ee: $e5
	rst $38                                          ; $66ef: $ff
	rra                                              ; $66f0: $1f
	ccf                                              ; $66f1: $3f
	rra                                              ; $66f2: $1f
	ccf                                              ; $66f3: $3f

jr_023_66f4:
	jp c, $92ff                                      ; $66f4: $da $ff $92

	rst SubAFromDE                                          ; $66f7: $df
	ld e, a                                          ; $66f8: $5f
	rst $38                                          ; $66f9: $ff
	rst $38                                          ; $66fa: $ff
	rst AddAOntoHL                                          ; $66fb: $ef

Call_023_66fc:
	jp $c084                                         ; $66fc: $c3 $84 $c0


	rst FarCall                                          ; $66ff: $f7
	db $fc                                           ; $6700: $fc
	db $fc                                           ; $6701: $fc
	sub e                                            ; $6702: $93
	sub c                                            ; $6703: $91
	db $dd                                           ; $6704: $dd
	rst $38                                          ; $6705: $ff
	sbc [hl]                                         ; $6706: $9e
	db $fc                                           ; $6707: $fc
	sbc $ff                                          ; $6708: $de $ff
	sub a                                            ; $670a: $97
	rra                                              ; $670b: $1f
	ld h, e                                          ; $670c: $63
	ld h, c                                          ; $670d: $61
	pop af                                           ; $670e: $f1
	di                                               ; $670f: $f3
	rlca                                             ; $6710: $07
	inc bc                                           ; $6711: $03
	ld de, $ffde                                     ; $6712: $11 $de $ff
	sbc d                                            ; $6715: $9a
	cp $fd                                           ; $6716: $fe $fd
	cp $f7                                           ; $6718: $fe $f7
	ei                                               ; $671a: $fb
	db $dd                                           ; $671b: $dd
	rst $38                                          ; $671c: $ff
	add b                                            ; $671d: $80
	cp $f9                                           ; $671e: $fe $f9
	ei                                               ; $6720: $fb
	db $f4                                           ; $6721: $f4
	add sp, -$0d                                     ; $6722: $e8 $f3
	ld b, a                                          ; $6724: $47
	sbc a                                            ; $6725: $9f
	ld a, h                                          ; $6726: $7c
	add [hl]                                         ; $6727: $86
	ei                                               ; $6728: $fb
	or $f7                                           ; $6729: $f6 $f7
	call z, Call_023_78bf                            ; $672b: $cc $bf $78
	db $e3                                           ; $672e: $e3
	rst $38                                          ; $672f: $ff
	db $fc                                           ; $6730: $fc
	jr c, @+$63                                      ; $6731: $38 $61

	add b                                            ; $6733: $80
	nop                                              ; $6734: $00
	ret nz                                           ; $6735: $c0

	ld [$8060], sp                                   ; $6736: $08 $60 $80
	ccf                                              ; $6739: $3f
	add b                                            ; $673a: $80
	nop                                              ; $673b: $00
	rst $38                                          ; $673c: $ff
	add b                                            ; $673d: $80
	ccf                                              ; $673e: $3f
	ldh a, [$80]                                     ; $673f: $f0 $80
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	or a                                             ; $6743: $b7
	dec l                                            ; $6744: $2d
	adc d                                            ; $6745: $8a
	dec d                                            ; $6746: $15
	add d                                            ; $6747: $82
	inc de                                           ; $6748: $13
	add hl, bc                                       ; $6749: $09
	jp nz, $1e78                                     ; $674a: $c2 $78 $1e

	rlca                                             ; $674d: $07
	db $e3                                           ; $674e: $e3
	ld a, c                                          ; $674f: $79
	inc c                                            ; $6750: $0c
	ld b, $01                                        ; $6751: $06 $01
	ld l, a                                          ; $6753: $6f
	sub l                                            ; $6754: $95
	bit 2, [hl]                                      ; $6755: $cb $56
	and $a5                                          ; $6757: $e6 $a5
	ld [hl], e                                       ; $6759: $73
	jp c, $2e1c                                      ; $675a: $da $1c $2e

	adc c                                            ; $675d: $89
	ld d, $8b                                        ; $675e: $16 $8b
	adc e                                            ; $6760: $8b
	set 1, l                                         ; $6761: $cb $cd
	ld h, l                                          ; $6763: $65
	rst $38                                          ; $6764: $ff
	rst GetHLinHL                                          ; $6765: $cf
	adc [hl]                                         ; $6766: $8e
	sbc a                                            ; $6767: $9f
	ld d, [hl]                                       ; $6768: $56
	nop                                              ; $6769: $00
	ld [hl+], a                                      ; $676a: $22
	ret z                                            ; $676b: $c8

	rst SubAFromBC                                          ; $676c: $e7
	rst SubAFromBC                                          ; $676d: $e7
	ret                                              ; $676e: $c9


	ret z                                            ; $676f: $c8

	adc c                                            ; $6770: $89
	sbc a                                            ; $6771: $9f
	sbc h                                            ; $6772: $9c
	jr nc, @-$21                                     ; $6773: $30 $dd

	rst $38                                          ; $6775: $ff
	sbc e                                            ; $6776: $9b
	ccf                                              ; $6777: $3f
	rst AddAOntoHL                                          ; $6778: $ef
	dec b                                            ; $6779: $05
	ld bc, $ffde                                     ; $677a: $01 $de $ff
	sub l                                            ; $677d: $95
	ld a, a                                          ; $677e: $7f
	rst $38                                          ; $677f: $ff
	rra                                              ; $6780: $1f
	inc bc                                           ; $6781: $03
	nop                                              ; $6782: $00
	call z, $fefe                                    ; $6783: $cc $fe $fe
	or a                                             ; $6786: $b7
	rla                                              ; $6787: $17
	ld a, e                                          ; $6788: $7b
	ld h, [hl]                                       ; $6789: $66
	sbc l                                            ; $678a: $9d
	db $fc                                           ; $678b: $fc
	cp $7b                                           ; $678c: $fe $7b
	ld l, e                                          ; $678e: $6b
	rst SubAFromDE                                          ; $678f: $df
	rst JumpTable                                          ; $6790: $c7
	sub [hl]                                         ; $6791: $96
	rst AddAOntoHL                                          ; $6792: $ef
	adc $3f                                          ; $6793: $ce $3f
	ldh [$e1], a                                     ; $6795: $e0 $e1
	or $fe                                           ; $6797: $f6 $fe
	cp $ff                                           ; $6799: $fe $ff
	ld a, e                                          ; $679b: $7b
	ld hl, sp-$6e                                    ; $679c: $f8 $92
	pop af                                           ; $679e: $f1
	cp $c2                                           ; $679f: $fe $c2
	add c                                            ; $67a1: $81
	ld bc, $0f70                                     ; $67a2: $01 $70 $0f
	nop                                              ; $67a5: $00
	ldh [rAUD3LEVEL], a                              ; $67a6: $e0 $1c
	jp c, $f63f                                      ; $67a8: $da $3f $f6

	ld l, a                                          ; $67ab: $6f
	ld hl, sp-$6c                                    ; $67ac: $f8 $94
	rst $38                                          ; $67ae: $ff
	or $73                                           ; $67af: $f6 $73
	rra                                              ; $67b1: $1f
	rlca                                             ; $67b2: $07
	add hl, de                                       ; $67b3: $19
	pop bc                                           ; $67b4: $c1
	rlca                                             ; $67b5: $07
	dec de                                           ; $67b6: $1b
	jr z, jr_023_6836                                ; $67b7: $28 $7d

	ld l, e                                          ; $67b9: $6b
	ld hl, sp+$0a                                    ; $67ba: $f8 $0a
	nop                                              ; $67bc: $00
	rst SubAFromDE                                          ; $67bd: $df
	ld [hl+], a                                      ; $67be: $22
	sbc [hl]                                         ; $67bf: $9e
	ld h, $de                                        ; $67c0: $26 $de
	ld h, [hl]                                       ; $67c2: $66
	rst SubAFromDE                                          ; $67c3: $df
	ld [hl+], a                                      ; $67c4: $22
	db $e4                                           ; $67c5: $e4
	add b                                            ; $67c6: $80
	add b                                            ; $67c7: $80
	adc $dc                                          ; $67c8: $ce $dc
	call c, $ff7e                                    ; $67ca: $dc $7e $ff
	rst FarCall                                          ; $67cd: $f7
	di                                               ; $67ce: $f3
	rst $38                                          ; $67cf: $ff
	ccf                                              ; $67d0: $3f
	ccf                                              ; $67d1: $3f
	inc sp                                           ; $67d2: $33
	add c                                            ; $67d3: $81
	ld h, c                                          ; $67d4: $61
	ld a, b                                          ; $67d5: $78
	cp $30                                           ; $67d6: $fe $30
	rrca                                             ; $67d8: $0f
	ccf                                              ; $67d9: $3f
	ld a, a                                          ; $67da: $7f
	db $e3                                           ; $67db: $e3
	rst SubAFromBC                                          ; $67dc: $e7
	rst GetHLinHL                                          ; $67dd: $cf
	rst AddAOntoHL                                          ; $67de: $ef
	rst $38                                          ; $67df: $ff
	rst $38                                          ; $67e0: $ff
	sbc $9e                                          ; $67e1: $de $9e
	ccf                                              ; $67e3: $3f
	ccf                                              ; $67e4: $3f
	ld a, h                                          ; $67e5: $7c
	ld a, b                                          ; $67e6: $78
	sbc [hl]                                         ; $67e7: $9e
	ld a, b                                          ; $67e8: $78
	sbc $ff                                          ; $67e9: $de $ff
	ld a, a                                          ; $67eb: $7f
	db $e3                                           ; $67ec: $e3
	sbc c                                            ; $67ed: $99
	ei                                               ; $67ee: $fb
	db $eb                                           ; $67ef: $eb
	rst $38                                          ; $67f0: $ff
	pop af                                           ; $67f1: $f1
	inc sp                                           ; $67f2: $33
	ld [hl], a                                       ; $67f3: $77
	sbc $ff                                          ; $67f4: $de $ff
	sbc l                                            ; $67f6: $9d
	ld e, $0f                                        ; $67f7: $1e $0f
	db $dd                                           ; $67f9: $dd
	rst $38                                          ; $67fa: $ff
	sbc [hl]                                         ; $67fb: $9e
	sbc a                                            ; $67fc: $9f
	call c, Call_023_7fff                            ; $67fd: $dc $ff $7f
	reti                                             ; $6800: $d9


	sbc e                                            ; $6801: $9b
	db $fc                                           ; $6802: $fc
	inc l                                            ; $6803: $2c
	ld b, $22                                        ; $6804: $06 $22
	ld a, e                                          ; $6806: $7b
	pop hl                                           ; $6807: $e1
	sbc l                                            ; $6808: $9d
	ld hl, sp-$04                                    ; $6809: $f8 $fc
	sbc $ff                                          ; $680b: $de $ff
	sub d                                            ; $680d: $92
	rst SubAFromBC                                          ; $680e: $e7
	adc a                                            ; $680f: $8f
	adc a                                            ; $6810: $8f
	sbc a                                            ; $6811: $9f
	ld b, e                                          ; $6812: $43
	ld [hl+], a                                      ; $6813: $22
	cp $0e                                           ; $6814: $fe $0e
	db $fc                                           ; $6816: $fc
	cp $ff                                           ; $6817: $fe $ff
	ccf                                              ; $6819: $3f
	ld a, a                                          ; $681a: $7f
	db $dd                                           ; $681b: $dd
	rst $38                                          ; $681c: $ff
	sub l                                            ; $681d: $95
	rst JumpTable                                          ; $681e: $c7
	pop bc                                           ; $681f: $c1
	ldh a, [$fd]                                     ; $6820: $f0 $fd
	rlca                                             ; $6822: $07
	rrca                                             ; $6823: $0f
	ld a, a                                          ; $6824: $7f
	ld a, b                                          ; $6825: $78
	ei                                               ; $6826: $fb
	rst SubAFromDE                                          ; $6827: $df
	ld l, a                                          ; $6828: $6f
	pop de                                           ; $6829: $d1
	rst SubAFromDE                                          ; $682a: $df
	rst $38                                          ; $682b: $ff
	sbc h                                            ; $682c: $9c
	ld h, e                                          ; $682d: $63
	rst JumpTable                                          ; $682e: $c7
	rst GetHLinHL                                          ; $682f: $cf
	jp c, $9dff                                      ; $6830: $da $ff $9d

	ei                                               ; $6833: $fb
	rst FarCall                                          ; $6834: $f7
	ld [hl], e                                       ; $6835: $73

jr_023_6836:
	cp b                                             ; $6836: $b8
	sbc h                                            ; $6837: $9c
	rst $38                                          ; $6838: $ff
	db $fc                                           ; $6839: $fc
	ld hl, sp-$24                                    ; $683a: $f8 $dc
	rst $38                                          ; $683c: $ff
	sbc e                                            ; $683d: $9b
	cp e                                             ; $683e: $bb
	add $81                                          ; $683f: $c6 $81
	call c, $cd73                                    ; $6841: $dc $73 $cd
	sbc h                                            ; $6844: $9c
	ld bc, $e000                                     ; $6845: $01 $00 $e0
	call c, $9cff                                    ; $6848: $dc $ff $9c
	rst FarCall                                          ; $684b: $f7
	cp a                                             ; $684c: $bf
	db $db                                           ; $684d: $db
	sbc $ff                                          ; $684e: $de $ff
	sub d                                            ; $6850: $92
	rst AddAOntoHL                                          ; $6851: $ef
	rst FarCall                                          ; $6852: $f7
	ei                                               ; $6853: $fb
	ld a, c                                          ; $6854: $79
	dec a                                            ; $6855: $3d
	rst GetHLinHL                                          ; $6856: $cf
	jp $0301                                         ; $6857: $c3 $01 $03


	rst $38                                          ; $685a: $ff
	rst SubAFromDE                                          ; $685b: $df
	adc [hl]                                         ; $685c: $8e
	sbc h                                            ; $685d: $9c
	call c, $9cff                                    ; $685e: $dc $ff $9c
	cp $f9                                           ; $6861: $fe $f9
	di                                               ; $6863: $f3
	reti                                             ; $6864: $d9


	rst $38                                          ; $6865: $ff
	adc a                                            ; $6866: $8f
	ld hl, sp-$1d                                    ; $6867: $f8 $e3
	push bc                                          ; $6869: $c5
	adc $dd                                          ; $686a: $ce $dd
	rlca                                             ; $686c: $07
	inc bc                                           ; $686d: $03
	rra                                              ; $686e: $1f
	rst $38                                          ; $686f: $ff
	cp $e3                                           ; $6870: $fe $e3
	ld [hl], c                                       ; $6872: $71
	cp $ef                                           ; $6873: $fe $ef
	pop af                                           ; $6875: $f1
	sbc $6b                                          ; $6876: $de $6b
	ld hl, sp-$6e                                    ; $6878: $f8 $92
	cp $8e                                           ; $687a: $fe $8e
	rst AddAOntoHL                                          ; $687c: $ef
	ld a, [hl-]                                      ; $687d: $3a
	cp $0d                                           ; $687e: $fe $0d
	adc a                                            ; $6880: $8f
	sbc b                                            ; $6881: $98
	ld l, a                                          ; $6882: $6f
	rst $38                                          ; $6883: $ff
	rst $38                                          ; $6884: $ff
	ccf                                              ; $6885: $3f
	rst $38                                          ; $6886: $ff
	ld [hl], a                                       ; $6887: $77
	ld hl, sp-$72                                    ; $6888: $f8 $8e
	sbc a                                            ; $688a: $9f
	cp a                                             ; $688b: $bf
	cp $7f                                           ; $688c: $fe $7f
	rst $38                                          ; $688e: $ff
	di                                               ; $688f: $f3
	ld a, a                                          ; $6890: $7f
	cp e                                             ; $6891: $bb
	ld hl, sp-$08                                    ; $6892: $f8 $f8
	ld sp, hl                                        ; $6894: $f9
	db $fd                                           ; $6895: $fd
	rst $38                                          ; $6896: $ff
	rst $38                                          ; $6897: $ff
	ld a, a                                          ; $6898: $7f
	cp e                                             ; $6899: $bb
	pop hl                                           ; $689a: $e1
	ld [hl], a                                       ; $689b: $77
	rst SubAFromBC                                          ; $689c: $e7
	rst SubAFromDE                                          ; $689d: $df
	rst $38                                          ; $689e: $ff
	sub [hl]                                         ; $689f: $96
	dec sp                                           ; $68a0: $3b
	ld a, a                                          ; $68a1: $7f
	ei                                               ; $68a2: $fb
	pop af                                           ; $68a3: $f1
	ldh a, [$f3]                                     ; $68a4: $f0 $f3
	rst SubAFromHL                                          ; $68a6: $d7
	inc e                                            ; $68a7: $1c
	db $fc                                           ; $68a8: $fc
	ld a, [bc]                                       ; $68a9: $0a
	nop                                              ; $68aa: $00
	sbc $22                                          ; $68ab: $de $22
	sbc d                                            ; $68ad: $9a
	ld h, $65                                        ; $68ae: $26 $65
	ld d, d                                          ; $68b0: $52
	ld [hl+], a                                      ; $68b1: $22
	ld [hl+], a                                      ; $68b2: $22
	ld h, d                                          ; $68b3: $62
	add b                                            ; $68b4: $80
	add b                                            ; $68b5: $80
	ld a, $eb                                        ; $68b6: $3e $eb
	ld c, a                                          ; $68b8: $4f
	ld c, a                                          ; $68b9: $4f
	ld c, [hl]                                       ; $68ba: $4e
	ld c, a                                          ; $68bb: $4f
	rst GetHLinHL                                          ; $68bc: $cf
	sbc a                                            ; $68bd: $9f
	rst $38                                          ; $68be: $ff
	db $fc                                           ; $68bf: $fc
	ld hl, sp-$08                                    ; $68c0: $f8 $f8
	ld sp, hl                                        ; $68c2: $f9
	rst $38                                          ; $68c3: $ff
	ld hl, sp-$10                                    ; $68c4: $f8 $f0
	add sp, -$0f                                     ; $68c6: $e8 $f1
	and a                                            ; $68c8: $a7
	ld e, a                                          ; $68c9: $5f
	rst $38                                          ; $68ca: $ff
	rst $38                                          ; $68cb: $ff
	cp $f7                                           ; $68cc: $fe $f7
	rra                                              ; $68ce: $1f
	rra                                              ; $68cf: $1f
	ld a, a                                          ; $68d0: $7f
	ld hl, sp-$20                                    ; $68d1: $f8 $e0
	add b                                            ; $68d3: $80
	ld bc, $0f9d                                     ; $68d4: $01 $9d $0f
	rst JumpTable                                          ; $68d7: $c7
	call c, $80ff                                    ; $68d8: $dc $ff $80
	rra                                              ; $68db: $1f
	cp $f8                                           ; $68dc: $fe $f8
	ldh a, [$80]                                     ; $68de: $f0 $80
	nop                                              ; $68e0: $00
	ld bc, $e101                                     ; $68e1: $01 $01 $e1
	di                                               ; $68e4: $f3
	sbc a                                            ; $68e5: $9f
	sbc l                                            ; $68e6: $9d
	sbc a                                            ; $68e7: $9f
	sbc a                                            ; $68e8: $9f
	sbc l                                            ; $68e9: $9d
	sbc e                                            ; $68ea: $9b
	sub a                                            ; $68eb: $97
	sub a                                            ; $68ec: $97
	ldh a, [$f3]                                     ; $68ed: $f0 $f3
	ldh a, [$fe]                                     ; $68ef: $f0 $fe
	ld sp, hl                                        ; $68f1: $f9
	pop af                                           ; $68f2: $f1
	ldh a, [c]                                       ; $68f3: $f2
	db $f4                                           ; $68f4: $f4
	cp [hl]                                          ; $68f5: $be
	ld hl, sp+$5f                                    ; $68f6: $f8 $5f
	set 7, l                                         ; $68f8: $cb $fd
	sub a                                            ; $68fa: $97
	add a                                            ; $68fb: $87
	sbc a                                            ; $68fc: $9f
	rst JumpTable                                          ; $68fd: $c7
	ld a, a                                          ; $68fe: $7f
	db $fc                                           ; $68ff: $fc
	rst GetHLinHL                                          ; $6900: $cf
	dec bc                                           ; $6901: $0b
	rlca                                             ; $6902: $07
	cp $8f                                           ; $6903: $fe $8f
	cp $d4                                           ; $6905: $fe $d4
	add l                                            ; $6907: $85
	dec bc                                           ; $6908: $0b
	jp z, $d81c                                      ; $6909: $ca $1c $d8

	or c                                             ; $690c: $b1
	db $d3                                           ; $690d: $d3
	add a                                            ; $690e: $87
	add a                                            ; $690f: $87
	adc [hl]                                         ; $6910: $8e
	ld c, $1c                                        ; $6911: $0e $1c
	jr jr_023_6945                                   ; $6913: $18 $30

	inc b                                            ; $6915: $04
	nop                                              ; $6916: $00
	sbc $44                                          ; $6917: $de $44
	ld e, a                                          ; $6919: $5f
	add b                                            ; $691a: $80
	adc e                                            ; $691b: $8b
	ld a, $eb                                        ; $691c: $3e $eb
	ld c, a                                          ; $691e: $4f
	ld c, a                                          ; $691f: $4f
	ld c, [hl]                                       ; $6920: $4e
	ld c, a                                          ; $6921: $4f
	rst GetHLinHL                                          ; $6922: $cf
	sbc a                                            ; $6923: $9f
	rst $38                                          ; $6924: $ff
	db $fc                                           ; $6925: $fc
	ld hl, sp-$08                                    ; $6926: $f8 $f8
	ld sp, hl                                        ; $6928: $f9
	rst $38                                          ; $6929: $ff
	ld hl, sp-$10                                    ; $692a: $f8 $f0
	add sp, -$0f                                     ; $692c: $e8 $f1
	and a                                            ; $692e: $a7
	ld e, a                                          ; $692f: $5f
	sbc $ff                                          ; $6930: $de $ff
	sub l                                            ; $6932: $95
	cp $1f                                           ; $6933: $fe $1f
	rra                                              ; $6935: $1f
	ld a, a                                          ; $6936: $7f
	ld hl, sp-$20                                    ; $6937: $f8 $e0
	add b                                            ; $6939: $80
	nop                                              ; $693a: $00
	ld bc, $dbc7                                     ; $693b: $01 $c7 $db
	rst $38                                          ; $693e: $ff
	sbc h                                            ; $693f: $9c
	ld e, $f8                                        ; $6940: $1e $f8
	ldh a, [$7b]                                     ; $6942: $f0 $7b
	di                                               ; $6944: $f3

jr_023_6945:
	rst SubAFromDE                                          ; $6945: $df
	ld bc, $e381                                     ; $6946: $01 $81 $e3
	sbc a                                            ; $6949: $9f
	sbc a                                            ; $694a: $9f
	sbc l                                            ; $694b: $9d
	sbc a                                            ; $694c: $9f
	sbc l                                            ; $694d: $9d
	sbc e                                            ; $694e: $9b
	sub a                                            ; $694f: $97
	sub a                                            ; $6950: $97
	ldh a, [$f0]                                     ; $6951: $f0 $f0
	di                                               ; $6953: $f3
	cp $f9                                           ; $6954: $fe $f9
	pop af                                           ; $6956: $f1
	ldh a, [c]                                       ; $6957: $f2
	db $f4                                           ; $6958: $f4
	rst FarCall                                          ; $6959: $f7
	cp [hl]                                          ; $695a: $be
	ld hl, sp-$51                                    ; $695b: $f8 $af
	db $fd                                           ; $695d: $fd
	add a                                            ; $695e: $87
	sbc a                                            ; $695f: $9f
	rst JumpTable                                          ; $6960: $c7
	rrca                                             ; $6961: $0f
	ld a, a                                          ; $6962: $7f
	db $fc                                           ; $6963: $fc
	ld c, a                                          ; $6964: $4f
	rlca                                             ; $6965: $07
	cp $8f                                           ; $6966: $fe $8f
	cp $f4                                           ; $6968: $fe $f4
	push de                                          ; $696a: $d5
	dec bc                                           ; $696b: $0b
	jp z, $d81c                                      ; $696c: $ca $1c $d8

	or c                                             ; $696f: $b1
	di                                               ; $6970: $f3
	rst SubAFromHL                                          ; $6971: $d7
	add a                                            ; $6972: $87
	adc [hl]                                         ; $6973: $8e
	ld c, $1c                                        ; $6974: $0e $1c
	jr @+$32                                         ; $6976: $18 $30

	inc b                                            ; $6978: $04
	nop                                              ; $6979: $00
	sbc $44                                          ; $697a: $de $44
	ld e, l                                          ; $697c: $5d
	nop                                              ; $697d: $00
	add d                                            ; $697e: $82
	ld a, $ff                                        ; $697f: $3e $ff
	db $eb                                           ; $6981: $eb
	db $fc                                           ; $6982: $fc
	ld c, a                                          ; $6983: $4f
	ld hl, sp+$4f                                    ; $6984: $f8 $4f
	ld hl, sp+$4e                                    ; $6986: $f8 $4e
	ld sp, hl                                        ; $6988: $f9

jr_023_6989:
	ld c, a                                          ; $6989: $4f
	rst $38                                          ; $698a: $ff
	rst GetHLinHL                                          ; $698b: $cf
	ld hl, sp-$61                                    ; $698c: $f8 $9f
	ldh a, [$e8]                                     ; $698e: $f0 $e8
	rra                                              ; $6990: $1f
	pop af                                           ; $6991: $f1
	rra                                              ; $6992: $1f
	and a                                            ; $6993: $a7
	ld a, a                                          ; $6994: $7f
	ld e, a                                          ; $6995: $5f
	ld hl, sp-$01                                    ; $6996: $f8 $ff
	ldh [rIE], a                                     ; $6998: $e0 $ff
	add b                                            ; $699a: $80
	rst $38                                          ; $699b: $ff
	cp a                                             ; $699c: $bf
	rst $38                                          ; $699d: $ff
	rst JumpTable                                          ; $699e: $c7
	ld a, a                                          ; $699f: $7f
	or $9e                                           ; $69a0: $f6 $9e
	ldh a, [$73]                                     ; $69a2: $f0 $73
	or $9e                                           ; $69a4: $f6 $9e
	ld bc, $fe77                                     ; $69a6: $01 $77 $fe
	sbc e                                            ; $69a9: $9b
	cp $03                                           ; $69aa: $fe $03
	sbc a                                            ; $69ac: $9f
	ldh a, [rPCM34]                                  ; $69ad: $f0 $77
	cp $95                                           ; $69af: $fe $95
	sbc [hl]                                         ; $69b1: $9e
	rst $38                                          ; $69b2: $ff
	sbc l                                            ; $69b3: $9d
	ld sp, hl                                        ; $69b4: $f9
	sbc e                                            ; $69b5: $9b
	pop af                                           ; $69b6: $f1
	sub a                                            ; $69b7: $97
	ldh a, [c]                                       ; $69b8: $f2
	sub a                                            ; $69b9: $97
	db $f4                                           ; $69ba: $f4
	ld [hl], a                                       ; $69bb: $77
	call c, $bf98                                    ; $69bc: $dc $98 $bf
	ld a, a                                          ; $69bf: $7f
	rst $38                                          ; $69c0: $ff
	rst $38                                          ; $69c1: $ff
	db $fd                                           ; $69c2: $fd
	rlca                                             ; $69c3: $07
	add a                                            ; $69c4: $87
	cp [hl]                                          ; $69c5: $be
	sbc a                                            ; $69c6: $9f
	rst JumpTable                                          ; $69c7: $c7
	cp $90                                           ; $69c8: $fe $90
	inc bc                                           ; $69ca: $03
	db $f4                                           ; $69cb: $f4
	rlca                                             ; $69cc: $07
	push af                                          ; $69cd: $f5
	rst FarCall                                          ; $69ce: $f7
	set 1, [hl]                                      ; $69cf: $cb $ce
	jp z, $1c0e                                      ; $69d1: $ca $0e $1c

	inc e                                            ; $69d4: $1c
	ret c                                            ; $69d5: $d8

	jr jr_023_6989                                   ; $69d6: $18 $b1

	jr nc, jr_023_69de                               ; $69d8: $30 $04

	nop                                              ; $69da: $00
	sbc $44                                          ; $69db: $de $44
	ld e, h                                          ; $69dd: $5c

jr_023_69de:
	nop                                              ; $69de: $00
	add d                                            ; $69df: $82
	ld a, $ff                                        ; $69e0: $3e $ff
	db $eb                                           ; $69e2: $eb
	db $fc                                           ; $69e3: $fc
	ld c, a                                          ; $69e4: $4f
	ld hl, sp+$4f                                    ; $69e5: $f8 $4f
	ld hl, sp+$4e                                    ; $69e7: $f8 $4e

jr_023_69e9:
	ld sp, hl                                        ; $69e9: $f9
	ld c, a                                          ; $69ea: $4f
	rst $38                                          ; $69eb: $ff
	rst GetHLinHL                                          ; $69ec: $cf
	ld hl, sp-$61                                    ; $69ed: $f8 $9f
	ldh a, [$e8]                                     ; $69ef: $f0 $e8
	rra                                              ; $69f1: $1f
	pop af                                           ; $69f2: $f1
	rra                                              ; $69f3: $1f
	and a                                            ; $69f4: $a7
	ld a, a                                          ; $69f5: $7f
	ld e, a                                          ; $69f6: $5f
	ld hl, sp-$01                                    ; $69f7: $f8 $ff
	ldh [rIE], a                                     ; $69f9: $e0 $ff
	add b                                            ; $69fb: $80
	rst $38                                          ; $69fc: $ff
	cp a                                             ; $69fd: $bf
	rst $38                                          ; $69fe: $ff
	rst JumpTable                                          ; $69ff: $c7
	ld a, a                                          ; $6a00: $7f
	or $9e                                           ; $6a01: $f6 $9e
	ldh a, [$73]                                     ; $6a03: $f0 $73
	or $9e                                           ; $6a05: $f6 $9e
	ld bc, $fe77                                     ; $6a07: $01 $77 $fe
	sbc e                                            ; $6a0a: $9b
	cp $03                                           ; $6a0b: $fe $03
	sbc a                                            ; $6a0d: $9f
	ldh a, [rPCM34]                                  ; $6a0e: $f0 $77
	cp $95                                           ; $6a10: $fe $95
	sbc [hl]                                         ; $6a12: $9e
	rst $38                                          ; $6a13: $ff
	sbc l                                            ; $6a14: $9d
	ld sp, hl                                        ; $6a15: $f9
	sbc e                                            ; $6a16: $9b
	pop af                                           ; $6a17: $f1
	sub a                                            ; $6a18: $97
	ldh a, [c]                                       ; $6a19: $f2
	sub a                                            ; $6a1a: $97
	db $f4                                           ; $6a1b: $f4
	ld [hl], a                                       ; $6a1c: $77
	call c, $fe7b                                    ; $6a1d: $dc $7b $fe
	sbc e                                            ; $6a20: $9b
	rst $38                                          ; $6a21: $ff
	cp a                                             ; $6a22: $bf
	ld a, a                                          ; $6a23: $7f
	add a                                            ; $6a24: $87
	cp [hl]                                          ; $6a25: $be
	sbc a                                            ; $6a26: $9f
	rst JumpTable                                          ; $6a27: $c7
	cp $90                                           ; $6a28: $fe $90
	inc bc                                           ; $6a2a: $03
	db $f4                                           ; $6a2b: $f4
	rlca                                             ; $6a2c: $07
	ld d, l                                          ; $6a2d: $55
	rst SubAFromBC                                          ; $6a2e: $e7
	db $eb                                           ; $6a2f: $eb
	cp $ca                                           ; $6a30: $fe $ca
	adc [hl]                                         ; $6a32: $8e
	inc e                                            ; $6a33: $1c
	inc e                                            ; $6a34: $1c
	ret c                                            ; $6a35: $d8

	jr jr_023_69e9                                   ; $6a36: $18 $b1

	jr nc, jr_023_6a3e                               ; $6a38: $30 $04

	nop                                              ; $6a3a: $00
	sbc $44                                          ; $6a3b: $de $44
	ld h, d                                          ; $6a3d: $62

jr_023_6a3e:
	add b                                            ; $6a3e: $80
	sbc h                                            ; $6a3f: $9c
	ld a, $eb                                        ; $6a40: $3e $eb
	ld c, [hl]                                       ; $6a42: $4e
	sbc $4f                                          ; $6a43: $de $4f
	add d                                            ; $6a45: $82
	rst GetHLinHL                                          ; $6a46: $cf
	sbc a                                            ; $6a47: $9f
	rst $38                                          ; $6a48: $ff
	db $fc                                           ; $6a49: $fc
	ld sp, hl                                        ; $6a4a: $f9
	ld hl, sp-$08                                    ; $6a4b: $f8 $f8
	rst $38                                          ; $6a4d: $ff
	ld hl, sp-$10                                    ; $6a4e: $f8 $f0
	add sp, -$6f                                     ; $6a50: $e8 $91
	ld h, [hl]                                       ; $6a52: $66
	rst SubAFromDE                                          ; $6a53: $df
	rst $38                                          ; $6a54: $ff
	rst $38                                          ; $6a55: $ff
	db $fd                                           ; $6a56: $fd
	rst AddAOntoHL                                          ; $6a57: $ef
	rra                                              ; $6a58: $1f
	ld a, a                                          ; $6a59: $7f
	rst $38                                          ; $6a5a: $ff
	ld a, b                                          ; $6a5b: $78
	ldh [$80], a                                     ; $6a5c: $e0 $80
	inc bc                                           ; $6a5e: $03
	rra                                              ; $6a5f: $1f
	rst $38                                          ; $6a60: $ff
	rst GetHLinHL                                          ; $6a61: $cf
	scf                                              ; $6a62: $37
	sbc $ff                                          ; $6a63: $de $ff
	sub h                                            ; $6a65: $94
	rst AddAOntoHL                                          ; $6a66: $ef
	cp $c0                                           ; $6a67: $fe $c0
	ldh a, [$f8]                                     ; $6a69: $f0 $f8
	nop                                              ; $6a6b: $00
	ld bc, $f101                                     ; $6a6c: $01 $01 $f1
	di                                               ; $6a6f: $f3
	sbc l                                            ; $6a70: $9d
	sbc $9f                                          ; $6a71: $de $9f
	add [hl]                                         ; $6a73: $86
	sbc l                                            ; $6a74: $9d
	sbc e                                            ; $6a75: $9b
	sub a                                            ; $6a76: $97
	sub a                                            ; $6a77: $97
	di                                               ; $6a78: $f3
	ldh a, [$f0]                                     ; $6a79: $f0 $f0
	cp $f9                                           ; $6a7b: $fe $f9
	pop af                                           ; $6a7d: $f1
	ldh a, [c]                                       ; $6a7e: $f2
	db $f4                                           ; $6a7f: $f4
	db $fc                                           ; $6a80: $fc
	ld e, b                                          ; $6a81: $58
	rst SubAFromDE                                          ; $6a82: $df
	set 7, l                                         ; $6a83: $cb $fd
	add a                                            ; $6a85: $87
	sbc a                                            ; $6a86: $9f
	rst JumpTable                                          ; $6a87: $c7
	db $fc                                           ; $6a88: $fc
	db $fd                                           ; $6a89: $fd
	rrca                                             ; $6a8a: $0f
	dec bc                                           ; $6a8b: $0b
	rlca                                             ; $6a8c: $07
	cp $8f                                           ; $6a8d: $fe $8f
	xor [hl]                                         ; $6a8f: $ae
	call nc, $0b85                                   ; $6a90: $d4 $85 $0b
	jp z, $d81c                                      ; $6a93: $ca $1c $d8

	or c                                             ; $6a96: $b1
	db $d3                                           ; $6a97: $d3
	add a                                            ; $6a98: $87
	add a                                            ; $6a99: $87
	adc [hl]                                         ; $6a9a: $8e
	ld c, $1c                                        ; $6a9b: $0e $1c
	jr jr_023_6acf                                   ; $6a9d: $18 $30

	inc b                                            ; $6a9f: $04
	nop                                              ; $6aa0: $00
	sbc $44                                          ; $6aa1: $de $44
	ld h, c                                          ; $6aa3: $61
	nop                                              ; $6aa4: $00
	sub a                                            ; $6aa5: $97
	ld a, $ff                                        ; $6aa6: $3e $ff
	db $eb                                           ; $6aa8: $eb
	db $fc                                           ; $6aa9: $fc
	ld c, [hl]                                       ; $6aaa: $4e
	ld sp, hl                                        ; $6aab: $f9
	ld c, a                                          ; $6aac: $4f
	ld hl, sp+$7b                                    ; $6aad: $f8 $7b
	cp $80                                           ; $6aaf: $fe $80
	rst $38                                          ; $6ab1: $ff
	rst GetHLinHL                                          ; $6ab2: $cf
	ld hl, sp-$61                                    ; $6ab3: $f8 $9f
	ldh a, [$e8]                                     ; $6ab5: $f0 $e8
	rra                                              ; $6ab7: $1f
	sub c                                            ; $6ab8: $91
	ld a, a                                          ; $6ab9: $7f
	ld h, [hl]                                       ; $6aba: $66
	rst $38                                          ; $6abb: $ff
	rst SubAFromDE                                          ; $6abc: $df
	ld a, b                                          ; $6abd: $78
	rst $38                                          ; $6abe: $ff
	ldh [rIE], a                                     ; $6abf: $e0 $ff
	add b                                            ; $6ac1: $80
	rst $38                                          ; $6ac2: $ff
	nop                                              ; $6ac3: $00
	cp $01                                           ; $6ac4: $fe $01
	rst $38                                          ; $6ac6: $ff
	ret nz                                           ; $6ac7: $c0

	rst GetHLinHL                                          ; $6ac8: $cf
	ldh a, [$37]                                     ; $6ac9: $f0 $37
	ld hl, sp-$01                                    ; $6acb: $f8 $ff
	nop                                              ; $6acd: $00
	rst $38                                          ; $6ace: $ff

jr_023_6acf:
	ld bc, $fe77                                     ; $6acf: $01 $77 $fe
	add d                                            ; $6ad2: $82
	ld e, $e3                                        ; $6ad3: $1e $e3
	sbc a                                            ; $6ad5: $9f
	ldh a, [$9f]                                     ; $6ad6: $f0 $9f
	ldh a, [$9d]                                     ; $6ad8: $f0 $9d
	di                                               ; $6ada: $f3
	sbc a                                            ; $6adb: $9f
	cp $9d                                           ; $6adc: $fe $9d
	ld sp, hl                                        ; $6ade: $f9
	sbc e                                            ; $6adf: $9b
	pop af                                           ; $6ae0: $f1
	sub a                                            ; $6ae1: $97
	ldh a, [c]                                       ; $6ae2: $f2
	sub a                                            ; $6ae3: $97
	db $f4                                           ; $6ae4: $f4
	rst FarCall                                          ; $6ae5: $f7
	rrca                                             ; $6ae6: $0f
	cp [hl]                                          ; $6ae7: $be
	ld a, a                                          ; $6ae8: $7f
	ld hl, sp-$04                                    ; $6ae9: $f8 $fc
	xor a                                            ; $6aeb: $af
	ld c, a                                          ; $6aec: $4f
	db $fd                                           ; $6aed: $fd
	rlca                                             ; $6aee: $07
	add a                                            ; $6aef: $87
	cp [hl]                                          ; $6af0: $be
	sbc a                                            ; $6af1: $9f
	rst JumpTable                                          ; $6af2: $c7
	cp $90                                           ; $6af3: $fe $90
	di                                               ; $6af5: $f3
	db $f4                                           ; $6af6: $f4
	rst SubAFromHL                                          ; $6af7: $d7
	push de                                          ; $6af8: $d5
	add a                                            ; $6af9: $87
	dec bc                                           ; $6afa: $0b
	adc [hl]                                         ; $6afb: $8e
	jp z, $1c0e                                      ; $6afc: $ca $0e $1c

	inc e                                            ; $6aff: $1c
	ret c                                            ; $6b00: $d8

	jr @-$4d                                         ; $6b01: $18 $b1

	jr nc, jr_023_6b09                               ; $6b03: $30 $04

	nop                                              ; $6b05: $00
	sbc $44                                          ; $6b06: $de $44
	ld e, a                                          ; $6b08: $5f

jr_023_6b09:
	nop                                              ; $6b09: $00
	sub a                                            ; $6b0a: $97
	ld a, $ff                                        ; $6b0b: $3e $ff
	db $eb                                           ; $6b0d: $eb
	db $fc                                           ; $6b0e: $fc
	ld c, [hl]                                       ; $6b0f: $4e
	ld sp, hl                                        ; $6b10: $f9
	ld c, a                                          ; $6b11: $4f
	ld hl, sp+$7b                                    ; $6b12: $f8 $7b
	cp $8d                                           ; $6b14: $fe $8d
	rst $38                                          ; $6b16: $ff

jr_023_6b17:
	rst GetHLinHL                                          ; $6b17: $cf
	ld hl, sp-$61                                    ; $6b18: $f8 $9f
	ldh a, [$e8]                                     ; $6b1a: $f0 $e8
	rra                                              ; $6b1c: $1f
	sub c                                            ; $6b1d: $91
	ld a, a                                          ; $6b1e: $7f
	ld h, [hl]                                       ; $6b1f: $66
	rst $38                                          ; $6b20: $ff
	rst SubAFromDE                                          ; $6b21: $df
	ld a, b                                          ; $6b22: $78
	rst $38                                          ; $6b23: $ff
	ldh [rIE], a                                     ; $6b24: $e0 $ff
	add b                                            ; $6b26: $80
	rst $38                                          ; $6b27: $ff
	cp a                                             ; $6b28: $bf
	rst $38                                          ; $6b29: $ff
	rst $38                                          ; $6b2a: $ff
	sbc d                                            ; $6b2b: $9a
	ret nz                                           ; $6b2c: $c0

	rst GetHLinHL                                          ; $6b2d: $cf
	ldh a, [$37]                                     ; $6b2e: $f0 $37
	ld hl, sp+$7b                                    ; $6b30: $f8 $7b
	ld hl, sp-$62                                    ; $6b32: $f8 $9e
	ld bc, $fe77                                     ; $6b34: $01 $77 $fe
	sbc e                                            ; $6b37: $9b
	cp $03                                           ; $6b38: $fe $03
	sbc a                                            ; $6b3a: $9f
	ldh a, [rPCM34]                                  ; $6b3b: $f0 $77
	cp $95                                           ; $6b3d: $fe $95
	sbc [hl]                                         ; $6b3f: $9e
	rst $38                                          ; $6b40: $ff
	sbc l                                            ; $6b41: $9d
	ld sp, hl                                        ; $6b42: $f9
	sbc e                                            ; $6b43: $9b
	pop af                                           ; $6b44: $f1
	sub a                                            ; $6b45: $97
	ldh a, [c]                                       ; $6b46: $f2
	sub a                                            ; $6b47: $97
	db $f4                                           ; $6b48: $f4
	ld [hl], a                                       ; $6b49: $77
	call c, $bf98                                    ; $6b4a: $dc $98 $bf
	ld a, a                                          ; $6b4d: $7f
	rst $38                                          ; $6b4e: $ff
	rst $38                                          ; $6b4f: $ff
	db $fd                                           ; $6b50: $fd
	rlca                                             ; $6b51: $07
	add a                                            ; $6b52: $87
	cp [hl]                                          ; $6b53: $be
	sbc a                                            ; $6b54: $9f
	rst JumpTable                                          ; $6b55: $c7
	cp $90                                           ; $6b56: $fe $90
	inc bc                                           ; $6b58: $03
	db $f4                                           ; $6b59: $f4
	rlca                                             ; $6b5a: $07
	push af                                          ; $6b5b: $f5
	rst FarCall                                          ; $6b5c: $f7
	set 1, [hl]                                      ; $6b5d: $cb $ce
	jp z, $1c0e                                      ; $6b5f: $ca $0e $1c

	inc e                                            ; $6b62: $1c
	ret c                                            ; $6b63: $d8

	jr jr_023_6b17                                   ; $6b64: $18 $b1

	jr nc, jr_023_6b6c                               ; $6b66: $30 $04

	nop                                              ; $6b68: $00
	sbc $44                                          ; $6b69: $de $44
	ld e, [hl]                                       ; $6b6b: $5e

jr_023_6b6c:
	nop                                              ; $6b6c: $00
	sub a                                            ; $6b6d: $97
	ld a, $ff                                        ; $6b6e: $3e $ff
	db $eb                                           ; $6b70: $eb
	db $fc                                           ; $6b71: $fc
	ld c, [hl]                                       ; $6b72: $4e
	ld sp, hl                                        ; $6b73: $f9
	ld c, a                                          ; $6b74: $4f
	ld hl, sp+$7b                                    ; $6b75: $f8 $7b
	cp $8d                                           ; $6b77: $fe $8d

jr_023_6b79:
	rst $38                                          ; $6b79: $ff
	rst GetHLinHL                                          ; $6b7a: $cf
	ld hl, sp-$61                                    ; $6b7b: $f8 $9f
	ldh a, [$e8]                                     ; $6b7d: $f0 $e8
	rra                                              ; $6b7f: $1f
	sub c                                            ; $6b80: $91
	ld a, a                                          ; $6b81: $7f
	ld h, [hl]                                       ; $6b82: $66
	rst $38                                          ; $6b83: $ff
	rst SubAFromDE                                          ; $6b84: $df
	ld a, b                                          ; $6b85: $78
	rst $38                                          ; $6b86: $ff
	ldh [rIE], a                                     ; $6b87: $e0 $ff
	add b                                            ; $6b89: $80
	rst $38                                          ; $6b8a: $ff
	cp a                                             ; $6b8b: $bf
	rst $38                                          ; $6b8c: $ff
	rst $38                                          ; $6b8d: $ff
	sbc d                                            ; $6b8e: $9a
	ret nz                                           ; $6b8f: $c0

	rst GetHLinHL                                          ; $6b90: $cf
	ldh a, [$37]                                     ; $6b91: $f0 $37
	ld hl, sp+$7b                                    ; $6b93: $f8 $7b
	ld hl, sp-$62                                    ; $6b95: $f8 $9e
	ld bc, $fe77                                     ; $6b97: $01 $77 $fe
	sbc e                                            ; $6b9a: $9b
	cp $03                                           ; $6b9b: $fe $03
	sbc a                                            ; $6b9d: $9f
	ldh a, [rPCM34]                                  ; $6b9e: $f0 $77
	cp $95                                           ; $6ba0: $fe $95
	sbc [hl]                                         ; $6ba2: $9e
	rst $38                                          ; $6ba3: $ff
	sbc l                                            ; $6ba4: $9d
	ld sp, hl                                        ; $6ba5: $f9
	sbc e                                            ; $6ba6: $9b
	pop af                                           ; $6ba7: $f1
	sub a                                            ; $6ba8: $97
	ldh a, [c]                                       ; $6ba9: $f2
	sub a                                            ; $6baa: $97
	db $f4                                           ; $6bab: $f4
	ld [hl], e                                       ; $6bac: $73
	call c, $fe7f                                    ; $6bad: $dc $7f $fe
	sbc e                                            ; $6bb0: $9b
	rst $38                                          ; $6bb1: $ff
	cp a                                             ; $6bb2: $bf
	ld a, a                                          ; $6bb3: $7f
	add a                                            ; $6bb4: $87
	cp [hl]                                          ; $6bb5: $be
	sbc a                                            ; $6bb6: $9f
	rst JumpTable                                          ; $6bb7: $c7
	cp $90                                           ; $6bb8: $fe $90
	inc bc                                           ; $6bba: $03
	db $f4                                           ; $6bbb: $f4
	rlca                                             ; $6bbc: $07
	ld d, l                                          ; $6bbd: $55
	rst SubAFromBC                                          ; $6bbe: $e7
	db $eb                                           ; $6bbf: $eb
	cp $ca                                           ; $6bc0: $fe $ca
	adc [hl]                                         ; $6bc2: $8e
	inc e                                            ; $6bc3: $1c
	inc e                                            ; $6bc4: $1c
	ret c                                            ; $6bc5: $d8

	jr jr_023_6b79                                   ; $6bc6: $18 $b1

	jr nc, jr_023_6bce                               ; $6bc8: $30 $04

	nop                                              ; $6bca: $00
	sbc $44                                          ; $6bcb: $de $44
	ld b, d                                          ; $6bcd: $42

jr_023_6bce:
	nop                                              ; $6bce: $00
	add b                                            ; $6bcf: $80
	rst JumpTable                                          ; $6bd0: $c7
	ld l, l                                          ; $6bd1: $6d
	adc a                                            ; $6bd2: $8f
	jp hl                                            ; $6bd3: $e9


	adc a                                            ; $6bd4: $8f
	reti                                             ; $6bd5: $d9


	sbc [hl]                                         ; $6bd6: $9e
	db $d3                                           ; $6bd7: $d3
	rla                                              ; $6bd8: $17
	or e                                             ; $6bd9: $b3
	daa                                              ; $6bda: $27
	db $e4                                           ; $6bdb: $e4
	cpl                                              ; $6bdc: $2f
	ldh [rSCX], a                                    ; $6bdd: $e0 $43
	rst JumpTable                                          ; $6bdf: $c7
	ld h, a                                          ; $6be0: $67
	pop bc                                           ; $6be1: $c1
	ld b, a                                          ; $6be2: $47
	pop bc                                           ; $6be3: $c1
	ld b, a                                          ; $6be4: $47
	ld sp, hl                                        ; $6be5: $f9
	ld sp, hl                                        ; $6be6: $f9
	cp [hl]                                          ; $6be7: $be
	rst $38                                          ; $6be8: $ff
	rlca                                             ; $6be9: $07
	cp $01                                           ; $6bea: $fe $01
	rst $38                                          ; $6bec: $ff
	nop                                              ; $6bed: $00
	rst SubAFromDE                                          ; $6bee: $df
	sbc c                                            ; $6bef: $99
	ldh [$cf], a                                     ; $6bf0: $e0 $cf
	add a                                            ; $6bf2: $87
	add a                                            ; $6bf3: $87
	adc l                                            ; $6bf4: $8d

Jump_023_6bf5:
	add hl, bc                                       ; $6bf5: $09
	sbc $01                                          ; $6bf6: $de $01
	sbc [hl]                                         ; $6bf8: $9e
	inc bc                                           ; $6bf9: $03
	cp l                                             ; $6bfa: $bd
	ld bc, $c083                                     ; $6bfb: $01 $83 $c0
	ei                                               ; $6bfe: $fb
	sub b                                            ; $6bff: $90
	db $fc                                           ; $6c00: $fc
	ld e, $9f                                        ; $6c01: $1e $9f
	rst SubAFromBC                                          ; $6c03: $e7
	ldh a, [c]                                       ; $6c04: $f2
	ld d, l                                          ; $6c05: $55
	ld [hl], b                                       ; $6c06: $70
	cp c                                             ; $6c07: $b9
	pop hl                                           ; $6c08: $e1
	pop hl                                           ; $6c09: $e1
	ld bc, $01fb                                     ; $6c0a: $01 $fb $01
	db $e3                                           ; $6c0d: $e3
	inc bc                                           ; $6c0e: $03
	inc b                                            ; $6c0f: $04
	nop                                              ; $6c10: $00
	rst SubAFromDE                                          ; $6c11: $df
	ld b, h                                          ; $6c12: $44
	ld b, c                                          ; $6c13: $41
	nop                                              ; $6c14: $00
	add d                                            ; $6c15: $82
	rst JumpTable                                          ; $6c16: $c7
	ld l, l                                          ; $6c17: $6d
	adc a                                            ; $6c18: $8f
	jp hl                                            ; $6c19: $e9


	adc a                                            ; $6c1a: $8f
	reti                                             ; $6c1b: $d9


	sbc [hl]                                         ; $6c1c: $9e
	db $d3                                           ; $6c1d: $d3
	rla                                              ; $6c1e: $17
	or e                                             ; $6c1f: $b3
	daa                                              ; $6c20: $27
	db $e4                                           ; $6c21: $e4
	cpl                                              ; $6c22: $2f
	ldh [rBGP], a                                    ; $6c23: $e0 $47
	ret nz                                           ; $6c25: $c0

	ld h, a                                          ; $6c26: $67
	pop bc                                           ; $6c27: $c1
	ld b, a                                          ; $6c28: $47
	pop bc                                           ; $6c29: $c1
	ld b, a                                          ; $6c2a: $47
	ld sp, hl                                        ; $6c2b: $f9
	ld sp, hl                                        ; $6c2c: $f9
	cp [hl]                                          ; $6c2d: $be
	rst $38                                          ; $6c2e: $ff
	rlca                                             ; $6c2f: $07
	cp $01                                           ; $6c30: $fe $01
	rst $38                                          ; $6c32: $ff
	cp a                                             ; $6c33: $bf
	rst $38                                          ; $6c34: $ff
	jp $8797                                         ; $6c35: $c3 $97 $87


	adc a                                            ; $6c38: $8f
	add a                                            ; $6c39: $87
	rlca                                             ; $6c3a: $07
	dec c                                            ; $6c3b: $0d
	ld bc, $0301                                     ; $6c3c: $01 $01 $03
	cp l                                             ; $6c3f: $bd
	ld bc, $c083                                     ; $6c40: $01 $83 $c0
	rst SubAFromDE                                          ; $6c43: $df
	sub b                                            ; $6c44: $90
	ldh [$fb], a                                     ; $6c45: $e0 $fb
	db $fc                                           ; $6c47: $fc
	ld e, $9f                                        ; $6c48: $1e $9f
	rst SubAFromBC                                          ; $6c4a: $e7
	ldh a, [c]                                       ; $6c4b: $f2
	cp c                                             ; $6c4c: $b9
	pop hl                                           ; $6c4d: $e1
	pop hl                                           ; $6c4e: $e1
	ld bc, $01fb                                     ; $6c4f: $01 $fb $01
	db $e3                                           ; $6c52: $e3
	inc bc                                           ; $6c53: $03
	inc b                                            ; $6c54: $04
	nop                                              ; $6c55: $00
	rst SubAFromDE                                          ; $6c56: $df
	ld b, h                                          ; $6c57: $44
	ccf                                              ; $6c58: $3f
	nop                                              ; $6c59: $00
	add d                                            ; $6c5a: $82
	rst JumpTable                                          ; $6c5b: $c7
	ld l, l                                          ; $6c5c: $6d
	adc a                                            ; $6c5d: $8f
	jp hl                                            ; $6c5e: $e9


	adc a                                            ; $6c5f: $8f
	reti                                             ; $6c60: $d9


	sbc [hl]                                         ; $6c61: $9e
	db $d3                                           ; $6c62: $d3
	rla                                              ; $6c63: $17
	or e                                             ; $6c64: $b3
	daa                                              ; $6c65: $27
	db $e4                                           ; $6c66: $e4
	cpl                                              ; $6c67: $2f
	ldh [rBGP], a                                    ; $6c68: $e0 $47
	ret nz                                           ; $6c6a: $c0

	ld h, a                                          ; $6c6b: $67
	pop bc                                           ; $6c6c: $c1
	ld b, a                                          ; $6c6d: $47
	pop bc                                           ; $6c6e: $c1
	ld b, a                                          ; $6c6f: $47
	ld sp, hl                                        ; $6c70: $f9
	ld sp, hl                                        ; $6c71: $f9
	cp [hl]                                          ; $6c72: $be
	rst $38                                          ; $6c73: $ff
	rlca                                             ; $6c74: $07
	cp $01                                           ; $6c75: $fe $01
	rst $38                                          ; $6c77: $ff
	cp a                                             ; $6c78: $bf
	rst $38                                          ; $6c79: $ff
	rst JumpTable                                          ; $6c7a: $c7
	sub a                                            ; $6c7b: $97
	add b                                            ; $6c7c: $80
	add a                                            ; $6c7d: $87
	add b                                            ; $6c7e: $80
	dec bc                                           ; $6c7f: $0b
	rlca                                             ; $6c80: $07
	rlca                                             ; $6c81: $07
	rrca                                             ; $6c82: $0f
	inc bc                                           ; $6c83: $03
	cp e                                             ; $6c84: $bb
	ld bc, $c083                                     ; $6c85: $01 $83 $c0
	rst $38                                          ; $6c88: $ff
	rst $38                                          ; $6c89: $ff
	ei                                               ; $6c8a: $fb
	sub h                                            ; $6c8b: $94
	db $fc                                           ; $6c8c: $fc
	cp $ff                                           ; $6c8d: $fe $ff
	cp c                                             ; $6c8f: $b9
	pop hl                                           ; $6c90: $e1
	pop hl                                           ; $6c91: $e1
	ld bc, $01fb                                     ; $6c92: $01 $fb $01
	db $e3                                           ; $6c95: $e3
	inc bc                                           ; $6c96: $03
	inc b                                            ; $6c97: $04
	nop                                              ; $6c98: $00
	rst SubAFromDE                                          ; $6c99: $df
	ld b, h                                          ; $6c9a: $44
	ld b, b                                          ; $6c9b: $40
	nop                                              ; $6c9c: $00
	add d                                            ; $6c9d: $82
	rst JumpTable                                          ; $6c9e: $c7
	ld l, l                                          ; $6c9f: $6d
	adc a                                            ; $6ca0: $8f
	jp hl                                            ; $6ca1: $e9


	adc a                                            ; $6ca2: $8f
	reti                                             ; $6ca3: $d9


	sbc [hl]                                         ; $6ca4: $9e
	db $d3                                           ; $6ca5: $d3
	rla                                              ; $6ca6: $17
	or e                                             ; $6ca7: $b3
	daa                                              ; $6ca8: $27
	db $e4                                           ; $6ca9: $e4
	cpl                                              ; $6caa: $2f
	ldh [rBGP], a                                    ; $6cab: $e0 $47
	ret nz                                           ; $6cad: $c0

	ld h, a                                          ; $6cae: $67
	pop bc                                           ; $6caf: $c1
	ld b, a                                          ; $6cb0: $47
	pop bc                                           ; $6cb1: $c1
	ld b, a                                          ; $6cb2: $47
	ld sp, hl                                        ; $6cb3: $f9
	ld sp, hl                                        ; $6cb4: $f9
	cp [hl]                                          ; $6cb5: $be
	rst $38                                          ; $6cb6: $ff
	rlca                                             ; $6cb7: $07
	cp $01                                           ; $6cb8: $fe $01
	rst $38                                          ; $6cba: $ff
	cp a                                             ; $6cbb: $bf
	rst $38                                          ; $6cbc: $ff
	rst JumpTable                                          ; $6cbd: $c7
	sub l                                            ; $6cbe: $95
	add b                                            ; $6cbf: $80
	add a                                            ; $6cc0: $87
	add b                                            ; $6cc1: $80
	add hl, bc                                       ; $6cc2: $09
	ld b, $07                                        ; $6cc3: $06 $07
	rrca                                             ; $6cc5: $0f
	inc bc                                           ; $6cc6: $03
	ld bc, $bc01                                     ; $6cc7: $01 $01 $bc
	add e                                            ; $6cca: $83
	ret nz                                           ; $6ccb: $c0

	rst $38                                          ; $6ccc: $ff
	rst $38                                          ; $6ccd: $ff
	di                                               ; $6cce: $f3
	sub h                                            ; $6ccf: $94
	inc c                                            ; $6cd0: $0c
	cp $ff                                           ; $6cd1: $fe $ff
	ld sp, hl                                        ; $6cd3: $f9
	pop af                                           ; $6cd4: $f1
	pop hl                                           ; $6cd5: $e1
	ld bc, $01fb                                     ; $6cd6: $01 $fb $01
	db $e3                                           ; $6cd9: $e3
	inc bc                                           ; $6cda: $03
	inc b                                            ; $6cdb: $04
	nop                                              ; $6cdc: $00
	rst SubAFromDE                                          ; $6cdd: $df
	ld b, h                                          ; $6cde: $44
	ld b, d                                          ; $6cdf: $42
	nop                                              ; $6ce0: $00
	add b                                            ; $6ce1: $80
	rst JumpTable                                          ; $6ce2: $c7
	ld l, l                                          ; $6ce3: $6d
	adc a                                            ; $6ce4: $8f
	jp hl                                            ; $6ce5: $e9


	adc a                                            ; $6ce6: $8f
	reti                                             ; $6ce7: $d9


	sbc [hl]                                         ; $6ce8: $9e
	db $d3                                           ; $6ce9: $d3
	rla                                              ; $6cea: $17
	or e                                             ; $6ceb: $b3
	daa                                              ; $6cec: $27
	db $e4                                           ; $6ced: $e4
	dec l                                            ; $6cee: $2d
	db $e3                                           ; $6cef: $e3
	ld b, a                                          ; $6cf0: $47
	rst JumpTable                                          ; $6cf1: $c7
	ld h, a                                          ; $6cf2: $67
	pop bc                                           ; $6cf3: $c1
	ld b, a                                          ; $6cf4: $47
	pop bc                                           ; $6cf5: $c1
	ld a, e                                          ; $6cf6: $7b
	db $fd                                           ; $6cf7: $fd
	add $ff                                          ; $6cf8: $c6 $ff
	db $fc                                           ; $6cfa: $fc
	inc bc                                           ; $6cfb: $03
	rst $38                                          ; $6cfc: $ff
	nop                                              ; $6cfd: $00
	rst SubAFromDE                                          ; $6cfe: $df
	ldh [rIE], a                                     ; $6cff: $e0 $ff
	sbc c                                            ; $6d01: $99
	ld hl, sp-$33                                    ; $6d02: $f8 $cd
	add a                                            ; $6d04: $87
	add e                                            ; $6d05: $83
	adc l                                            ; $6d06: $8d
	add hl, bc                                       ; $6d07: $09
	sbc $01                                          ; $6d08: $de $01
	sbc [hl]                                         ; $6d0a: $9e
	inc bc                                           ; $6d0b: $03
	cp l                                             ; $6d0c: $bd
	ld bc, $c083                                     ; $6d0d: $01 $83 $c0
	sbc [hl]                                         ; $6d10: $9e
	sub b                                            ; $6d11: $90
	sbc a                                            ; $6d12: $9f
	dec bc                                           ; $6d13: $0b
	cp [hl]                                          ; $6d14: $be
	push hl                                          ; $6d15: $e5
	ldh a, [c]                                       ; $6d16: $f2
	ld d, l                                          ; $6d17: $55
	ld [hl], b                                       ; $6d18: $70
	cp c                                             ; $6d19: $b9
	pop hl                                           ; $6d1a: $e1
	pop hl                                           ; $6d1b: $e1
	ld bc, $01fb                                     ; $6d1c: $01 $fb $01
	db $e3                                           ; $6d1f: $e3
	inc bc                                           ; $6d20: $03
	inc b                                            ; $6d21: $04
	nop                                              ; $6d22: $00
	rst SubAFromDE                                          ; $6d23: $df
	ld b, h                                          ; $6d24: $44
	ld b, b                                          ; $6d25: $40
	nop                                              ; $6d26: $00
	add h                                            ; $6d27: $84
	rst JumpTable                                          ; $6d28: $c7
	ld l, l                                          ; $6d29: $6d
	adc a                                            ; $6d2a: $8f
	jp hl                                            ; $6d2b: $e9


	adc a                                            ; $6d2c: $8f
	reti                                             ; $6d2d: $d9


	sbc [hl]                                         ; $6d2e: $9e
	db $d3                                           ; $6d2f: $d3
	rla                                              ; $6d30: $17
	or e                                             ; $6d31: $b3
	daa                                              ; $6d32: $27
	db $e4                                           ; $6d33: $e4
	cpl                                              ; $6d34: $2f
	ldh [rBGP], a                                    ; $6d35: $e0 $47
	ret nz                                           ; $6d37: $c0

	ld h, a                                          ; $6d38: $67
	pop bc                                           ; $6d39: $c1
	ld b, a                                          ; $6d3a: $47
	pop bc                                           ; $6d3b: $c1
	ld a, e                                          ; $6d3c: $7b
	db $fd                                           ; $6d3d: $fd
	add $ff                                          ; $6d3e: $c6 $ff
	db $fc                                           ; $6d40: $fc
	inc bc                                           ; $6d41: $03
	rst $38                                          ; $6d42: $ff
	cp [hl]                                          ; $6d43: $be
	rst $38                                          ; $6d44: $ff
	rst $38                                          ; $6d45: $ff
	jp $8797                                         ; $6d46: $c3 $97 $87


	adc a                                            ; $6d49: $8f
	add a                                            ; $6d4a: $87
	rlca                                             ; $6d4b: $07
	dec c                                            ; $6d4c: $0d
	ld bc, $0301                                     ; $6d4d: $01 $01 $03
	cp l                                             ; $6d50: $bd
	ld bc, $c083                                     ; $6d51: $01 $83 $c0
	rst SubAFromDE                                          ; $6d54: $df
	sub b                                            ; $6d55: $90
	ldh [$fb], a                                     ; $6d56: $e0 $fb
	db $fc                                           ; $6d58: $fc
	ld e, $9f                                        ; $6d59: $1e $9f
	rst SubAFromBC                                          ; $6d5b: $e7
	ldh a, [c]                                       ; $6d5c: $f2
	cp c                                             ; $6d5d: $b9
	pop hl                                           ; $6d5e: $e1
	pop hl                                           ; $6d5f: $e1
	ld bc, $01fb                                     ; $6d60: $01 $fb $01
	db $e3                                           ; $6d63: $e3
	inc bc                                           ; $6d64: $03
	inc b                                            ; $6d65: $04
	nop                                              ; $6d66: $00
	rst SubAFromDE                                          ; $6d67: $df
	ld b, h                                          ; $6d68: $44
	ld a, $00                                        ; $6d69: $3e $00
	add h                                            ; $6d6b: $84
	rst JumpTable                                          ; $6d6c: $c7
	ld l, l                                          ; $6d6d: $6d
	adc a                                            ; $6d6e: $8f
	jp hl                                            ; $6d6f: $e9


	adc a                                            ; $6d70: $8f
	reti                                             ; $6d71: $d9


	sbc [hl]                                         ; $6d72: $9e
	db $d3                                           ; $6d73: $d3
	rla                                              ; $6d74: $17
	or e                                             ; $6d75: $b3
	daa                                              ; $6d76: $27
	db $e4                                           ; $6d77: $e4
	cpl                                              ; $6d78: $2f
	ldh [rBGP], a                                    ; $6d79: $e0 $47
	ret nz                                           ; $6d7b: $c0

	ld h, a                                          ; $6d7c: $67
	pop bc                                           ; $6d7d: $c1
	ld b, a                                          ; $6d7e: $47
	pop bc                                           ; $6d7f: $c1
	ld a, e                                          ; $6d80: $7b
	db $fd                                           ; $6d81: $fd
	add $ff                                          ; $6d82: $c6 $ff
	db $fc                                           ; $6d84: $fc
	inc bc                                           ; $6d85: $03
	rst $38                                          ; $6d86: $ff
	cp [hl]                                          ; $6d87: $be
	rst $38                                          ; $6d88: $ff
	rst $38                                          ; $6d89: $ff
	rst JumpTable                                          ; $6d8a: $c7
	sub a                                            ; $6d8b: $97
	add b                                            ; $6d8c: $80
	add a                                            ; $6d8d: $87
	add b                                            ; $6d8e: $80
	dec bc                                           ; $6d8f: $0b
	rlca                                             ; $6d90: $07
	rlca                                             ; $6d91: $07
	rrca                                             ; $6d92: $0f
	inc bc                                           ; $6d93: $03
	cp e                                             ; $6d94: $bb
	ld bc, $c083                                     ; $6d95: $01 $83 $c0
	rst $38                                          ; $6d98: $ff
	rst $38                                          ; $6d99: $ff
	ei                                               ; $6d9a: $fb
	sub h                                            ; $6d9b: $94
	db $fc                                           ; $6d9c: $fc
	cp $ff                                           ; $6d9d: $fe $ff
	cp c                                             ; $6d9f: $b9
	pop hl                                           ; $6da0: $e1
	pop hl                                           ; $6da1: $e1
	ld bc, $01fb                                     ; $6da2: $01 $fb $01
	db $e3                                           ; $6da5: $e3
	inc bc                                           ; $6da6: $03
	inc b                                            ; $6da7: $04
	nop                                              ; $6da8: $00
	rst SubAFromDE                                          ; $6da9: $df
	ld b, h                                          ; $6daa: $44
	ccf                                              ; $6dab: $3f
	nop                                              ; $6dac: $00
	add h                                            ; $6dad: $84
	rst JumpTable                                          ; $6dae: $c7
	ld l, l                                          ; $6daf: $6d
	adc a                                            ; $6db0: $8f
	jp hl                                            ; $6db1: $e9


	adc a                                            ; $6db2: $8f
	reti                                             ; $6db3: $d9


	sbc [hl]                                         ; $6db4: $9e
	db $d3                                           ; $6db5: $d3
	rla                                              ; $6db6: $17
	or e                                             ; $6db7: $b3
	daa                                              ; $6db8: $27
	db $e4                                           ; $6db9: $e4
	cpl                                              ; $6dba: $2f
	ldh [rBGP], a                                    ; $6dbb: $e0 $47
	ret nz                                           ; $6dbd: $c0

	ld h, a                                          ; $6dbe: $67
	pop bc                                           ; $6dbf: $c1
	ld b, a                                          ; $6dc0: $47
	pop bc                                           ; $6dc1: $c1
	ld a, e                                          ; $6dc2: $7b
	db $fd                                           ; $6dc3: $fd
	add $ff                                          ; $6dc4: $c6 $ff
	db $fc                                           ; $6dc6: $fc
	inc bc                                           ; $6dc7: $03
	rst $38                                          ; $6dc8: $ff
	cp [hl]                                          ; $6dc9: $be
	rst $38                                          ; $6dca: $ff
	rst $38                                          ; $6dcb: $ff
	rst JumpTable                                          ; $6dcc: $c7
	sub l                                            ; $6dcd: $95

Jump_023_6dce:
	add b                                            ; $6dce: $80
	add a                                            ; $6dcf: $87
	add b                                            ; $6dd0: $80
	add hl, bc                                       ; $6dd1: $09
	ld b, $07                                        ; $6dd2: $06 $07
	rrca                                             ; $6dd4: $0f
	inc bc                                           ; $6dd5: $03
	ld bc, $bc01                                     ; $6dd6: $01 $01 $bc
	add e                                            ; $6dd9: $83
	ret nz                                           ; $6dda: $c0

	rst $38                                          ; $6ddb: $ff
	rst $38                                          ; $6ddc: $ff
	di                                               ; $6ddd: $f3
	sub h                                            ; $6dde: $94
	inc c                                            ; $6ddf: $0c
	cp $ff                                           ; $6de0: $fe $ff
	ld sp, hl                                        ; $6de2: $f9
	pop af                                           ; $6de3: $f1
	pop hl                                           ; $6de4: $e1
	ld bc, $01fb                                     ; $6de5: $01 $fb $01
	db $e3                                           ; $6de8: $e3
	inc bc                                           ; $6de9: $03
	inc b                                            ; $6dea: $04
	nop                                              ; $6deb: $00
	rst SubAFromDE                                          ; $6dec: $df
	ld b, h                                          ; $6ded: $44
	ret z                                            ; $6dee: $c8

	ld b, $97                                        ; $6def: $06 $97
	adc b                                            ; $6df1: $88
	ld [hl], a                                       ; $6df2: $77
	ld d, l                                          ; $6df3: $55

jr_023_6df4:
	xor d                                            ; $6df4: $aa
	ld [hl+], a                                      ; $6df5: $22
	db $dd                                           ; $6df6: $dd
	ld d, l                                          ; $6df7: $55
	xor d                                            ; $6df8: $aa
	daa                                              ; $6df9: $27
	ld hl, sp-$68                                    ; $6dfa: $f8 $98
	cp a                                             ; $6dfc: $bf
	ld h, b                                          ; $6dfd: $60
	ld e, a                                          ; $6dfe: $5f

Call_023_6dff:
	ldh [$7f], a                                     ; $6dff: $e0 $7f
	ret nz                                           ; $6e01: $c0

	cp a                                             ; $6e02: $bf
	ld a, e                                          ; $6e03: $7b
	cp $80                                           ; $6e04: $fe $80
	rst AddAOntoHL                                          ; $6e06: $ef
	ldh a, [$7b]                                     ; $6e07: $f0 $7b
	db $fc                                           ; $6e09: $fc
	ld l, l                                          ; $6e0a: $6d
	cp [hl]                                          ; $6e0b: $be
	db $fd                                           ; $6e0c: $fd
	inc bc                                           ; $6e0d: $03
	cp $01                                           ; $6e0e: $fe $01
	rst SubAFromBC                                          ; $6e10: $e7
	jr jr_023_6df4                                   ; $6e11: $18 $e1

	ld e, $f4                                        ; $6e13: $1e $f4
	rrca                                             ; $6e15: $0f
	cp $07                                           ; $6e16: $fe $07
	rst $38                                          ; $6e18: $ff
	inc bc                                           ; $6e19: $03
	rst $38                                          ; $6e1a: $ff
	ld bc, $fff1                                     ; $6e1b: $01 $f1 $ff
	pop hl                                           ; $6e1e: $e1
	rst $38                                          ; $6e1f: $ff
	ld h, c                                          ; $6e20: $61
	rst $38                                          ; $6e21: $ff
	and b                                            ; $6e22: $a0
	ld a, a                                          ; $6e23: $7f
	ldh [$80], a                                     ; $6e24: $e0 $80
	ccf                                              ; $6e26: $3f
	jr nz, @+$01                                     ; $6e27: $20 $ff

	jr nz, @+$01                                     ; $6e29: $20 $ff

	ldh [rIE], a                                     ; $6e2b: $e0 $ff
	add c                                            ; $6e2d: $81
	cp $61                                           ; $6e2e: $fe $61
	cp $bf                                           ; $6e30: $fe $bf
	rst $38                                          ; $6e32: $ff
	and c                                            ; $6e33: $a1
	rst SubAFromDE                                          ; $6e34: $df
	ld e, h                                          ; $6e35: $5c
	db $e3                                           ; $6e36: $e3
	rrca                                             ; $6e37: $0f
	ldh a, [$03]                                     ; $6e38: $f0 $03
	db $fc                                           ; $6e3a: $fc
	ld bc, $fafe                                     ; $6e3b: $01 $fe $fa
	rlca                                             ; $6e3e: $07
	db $ec                                           ; $6e3f: $ec
	rra                                              ; $6e40: $1f
	ld sp, hl                                        ; $6e41: $f9
	cp $e3                                           ; $6e42: $fe $e3
	db $fc                                           ; $6e44: $fc
	add b                                            ; $6e45: $80
	rlca                                             ; $6e46: $07
	ld hl, sp+$1e                                    ; $6e47: $f8 $1e
	pop hl                                           ; $6e49: $e1
	db $fc                                           ; $6e4a: $fc
	inc bc                                           ; $6e4b: $03
	db $fd                                           ; $6e4c: $fd
	inc bc                                           ; $6e4d: $03
	cp e                                             ; $6e4e: $bb
	ld a, l                                          ; $6e4f: $7d
	or a                                             ; $6e50: $b7
	ld l, a                                          ; $6e51: $6f
	xor a                                            ; $6e52: $af
	ld [hl], e                                       ; $6e53: $73
	cp a                                             ; $6e54: $bf
	ld l, a                                          ; $6e55: $6f
	dec l                                            ; $6e56: $2d
	ei                                               ; $6e57: $fb
	ld a, b                                          ; $6e58: $78
	ld sp, hl                                        ; $6e59: $f9
	xor b                                            ; $6e5a: $a8
	reti                                             ; $6e5b: $d9


	reti                                             ; $6e5c: $d9


	xor b                                            ; $6e5d: $a8
	cp [hl]                                          ; $6e5e: $be
	ld a, c                                          ; $6e5f: $79
	rst $38                                          ; $6e60: $ff
	db $e3                                           ; $6e61: $e3
	ld e, [hl]                                       ; $6e62: $5e
	db $ed                                           ; $6e63: $ed
	push af                                          ; $6e64: $f5
	sbc h                                            ; $6e65: $9c
	ld a, [$e0d0]                                    ; $6e66: $fa $d0 $e0
	db $dd                                           ; $6e69: $dd
	ld b, b                                          ; $6e6a: $40
	sub l                                            ; $6e6b: $95
	ld a, b                                          ; $6e6c: $78
	ld b, a                                          ; $6e6d: $47
	ld [$55f5], a                                    ; $6e6e: $ea $f5 $55
	xor d                                            ; $6e71: $aa
	xor d                                            ; $6e72: $aa
	ld d, l                                          ; $6e73: $55
	ld d, b                                          ; $6e74: $50
	and b                                            ; $6e75: $a0
	ei                                               ; $6e76: $fb
	ld a, a                                          ; $6e77: $7f
	jp z, $a896                                      ; $6e78: $ca $96 $a8

	ld d, a                                          ; $6e7b: $57
	ld d, c                                          ; $6e7c: $51
	xor b                                            ; $6e7d: $a8
	add c                                            ; $6e7e: $81
	ld b, b                                          ; $6e7f: $40
	ld bc, $0000                                     ; $6e80: $01 $00 $00
	sbc $01                                          ; $6e83: $de $01
	adc b                                            ; $6e85: $88
	inc bc                                           ; $6e86: $03
	ld bc, $0183                                     ; $6e87: $01 $83 $01
	ld hl, sp-$61                                    ; $6e8a: $f8 $9f
	db $fc                                           ; $6e8c: $fc
	and a                                            ; $6e8d: $a7
	cp $f3                                           ; $6e8e: $fe $f3
	cp $9f                                           ; $6e90: $fe $9f
	rst $38                                          ; $6e92: $ff
	adc c                                            ; $6e93: $89
	rst $38                                          ; $6e94: $ff
	db $ed                                           ; $6e95: $ed
	rst $38                                          ; $6e96: $ff
	inc de                                           ; $6e97: $13
	rst $38                                          ; $6e98: $ff
	ld hl, $c0bf                                     ; $6e99: $21 $bf $c0
	rst $38                                          ; $6e9c: $ff
	ld a, e                                          ; $6e9d: $7b
	cp $7f                                           ; $6e9e: $fe $7f

jr_023_6ea0:
	ld e, [hl]                                       ; $6ea0: $5e
	ld l, a                                          ; $6ea1: $6f
	cp $8d                                           ; $6ea2: $fe $8d
	ld a, [hl]                                       ; $6ea4: $7e
	pop bc                                           ; $6ea5: $c1
	ld hl, sp+$0f                                    ; $6ea6: $f8 $0f
	sbc l                                            ; $6ea8: $9d
	ld l, d                                          ; $6ea9: $6a
	sub d                                            ; $6eaa: $92
	ld a, l                                          ; $6eab: $7d
	sub l                                            ; $6eac: $95
	ld a, d                                          ; $6ead: $7a
	ret c                                            ; $6eae: $d8

	scf                                              ; $6eaf: $37
	db $fd                                           ; $6eb0: $fd
	ld a, [de]                                       ; $6eb1: $1a
	ld [$fd1d], a                                    ; $6eb2: $ea $1d $fd
	ld a, [bc]                                       ; $6eb5: $0a
	rlca                                             ; $6eb6: $07
	jr nz, @+$09                                     ; $6eb7: $20 $07

	ld hl, sp+$7f                                    ; $6eb9: $f8 $7f
	ld h, $80                                        ; $6ebb: $26 $80
	ld d, b                                          ; $6ebd: $50
	cp a                                             ; $6ebe: $bf
	jr nc, jr_023_6ea0                               ; $6ebf: $30 $df

	ld e, b                                          ; $6ec1: $58
	xor a                                            ; $6ec2: $af
	adc b                                            ; $6ec3: $88
	ld a, a                                          ; $6ec4: $7f
	ld d, h                                          ; $6ec5: $54
	xor a                                            ; $6ec6: $af
	inc h                                            ; $6ec7: $24
	rst SubAFromDE                                          ; $6ec8: $df
	ld d, l                                          ; $6ec9: $55
	xor [hl]                                         ; $6eca: $ae
	cp $01                                           ; $6ecb: $fe $01
	ld a, a                                          ; $6ecd: $7f
	add b                                            ; $6ece: $80
	ld a, $c1                                        ; $6ecf: $3e $c1
	add hl, sp                                       ; $6ed1: $39
	rst JumpTable                                          ; $6ed2: $c7
	ld [hl], a                                       ; $6ed3: $77
	adc a                                            ; $6ed4: $8f
	ld h, a                                          ; $6ed5: $67
	sbc b                                            ; $6ed6: $98
	rst $38                                          ; $6ed7: $ff
	nop                                              ; $6ed8: $00
	add b                                            ; $6ed9: $80
	ld a, a                                          ; $6eda: $7f
	ldh [$7f], a                                     ; $6edb: $e0 $7f
	inc c                                            ; $6edd: $0c
	sbc l                                            ; $6ede: $9d
	ld a, a                                          ; $6edf: $7f
	ld b, b                                          ; $6ee0: $40
	ld [hl], a                                       ; $6ee1: $77
	ld a, l                                          ; $6ee2: $7d
	sbc e                                            ; $6ee3: $9b
	rst $38                                          ; $6ee4: $ff
	ld b, c                                          ; $6ee5: $41
	cp $81                                           ; $6ee6: $fe $81
	ld a, e                                          ; $6ee8: $7b
	cp $7f                                           ; $6ee9: $fe $7f
	ld c, $7f                                        ; $6eeb: $0e $7f
	ld c, h                                          ; $6eed: $4c
	ld a, a                                          ; $6eee: $7f
	ld b, $9b                                        ; $6eef: $06 $9b
	ccf                                              ; $6ef1: $3f
	ret nz                                           ; $6ef2: $c0

	rst $38                                          ; $6ef3: $ff
	nop                                              ; $6ef4: $00
	ld l, a                                          ; $6ef5: $6f
	cp $80                                           ; $6ef6: $fe $80
	ei                                               ; $6ef8: $fb
	rlca                                             ; $6ef9: $07
	ei                                               ; $6efa: $fb
	rlca                                             ; $6efb: $07
	push af                                          ; $6efc: $f5
	rrca                                             ; $6efd: $0f
	push af                                          ; $6efe: $f5
	rrca                                             ; $6eff: $0f
	ld [$fb1f], a                                    ; $6f00: $ea $1f $fb
	ld e, $d2                                        ; $6f03: $1e $d2
	ccf                                              ; $6f05: $3f
	push af                                          ; $6f06: $f5
	ld a, $ad                                        ; $6f07: $3e $ad
	ld e, b                                          ; $6f09: $58
	ld e, b                                          ; $6f0a: $58
	xor h                                            ; $6f0b: $ac
	xor [hl]                                         ; $6f0c: $ae
	ld d, h                                          ; $6f0d: $54
	ld e, a                                          ; $6f0e: $5f
	xor a                                            ; $6f0f: $af
	or e                                             ; $6f10: $b3
	ld e, a                                          ; $6f11: $5f
	ld l, e                                          ; $6f12: $6b
	or a                                             ; $6f13: $b7
	db $d3                                           ; $6f14: $d3
	ld l, a                                          ; $6f15: $6f
	db $eb                                           ; $6f16: $eb
	adc c                                            ; $6f17: $89
	sub a                                            ; $6f18: $97
	ld b, e                                          ; $6f19: $43
	ld a, h                                          ; $6f1a: $7c
	ld c, [hl]                                       ; $6f1b: $4e
	ld [hl], b                                       ; $6f1c: $70
	push de                                          ; $6f1d: $d5
	ld h, b                                          ; $6f1e: $60
	xor b                                            ; $6f1f: $a8
	ldh a, [$5d]                                     ; $6f20: $f0 $5d
	or b                                             ; $6f22: $b0
	adc d                                            ; $6f23: $8a
	inc a                                            ; $6f24: $3c
	daa                                              ; $6f25: $27
	inc e                                            ; $6f26: $1c
	dec hl                                           ; $6f27: $2b
	ld d, $ff                                        ; $6f28: $16 $ff
	nop                                              ; $6f2a: $00
	xor d                                            ; $6f2b: $aa
	nop                                              ; $6f2c: $00
	ld d, l                                          ; $6f2d: $55
	ld [hl], e                                       ; $6f2e: $73
	db $fc                                           ; $6f2f: $fc
	sbc [hl]                                         ; $6f30: $9e
	ld a, [hl+]                                      ; $6f31: $2a
	cp $8d                                           ; $6f32: $fe $8d
	add b                                            ; $6f34: $80
	nop                                              ; $6f35: $00
	pop bc                                           ; $6f36: $c1
	inc bc                                           ; $6f37: $03
	db $e3                                           ; $6f38: $e3
	inc bc                                           ; $6f39: $03
	ld b, e                                          ; $6f3a: $43
	inc bc                                           ; $6f3b: $03
	rrca                                             ; $6f3c: $0f
	inc bc                                           ; $6f3d: $03
	rla                                              ; $6f3e: $17
	ld [bc], a                                       ; $6f3f: $02
	cpl                                              ; $6f40: $2f
	ld b, $57                                        ; $6f41: $06 $57
	rlca                                             ; $6f43: $07
	ld l, $07                                        ; $6f44: $2e $07
	ld a, e                                          ; $6f46: $7b
	inc b                                            ; $6f47: $04
	add b                                            ; $6f48: $80
	ld c, a                                          ; $6f49: $4f
	rst $38                                          ; $6f4a: $ff
	ld c, c                                          ; $6f4b: $49
	rst $38                                          ; $6f4c: $ff
	sub c                                            ; $6f4d: $91
	cp $73                                           ; $6f4e: $fe $73
	db $fc                                           ; $6f50: $fc
	rrca                                             ; $6f51: $0f
	db $f4                                           ; $6f52: $f4
	ccf                                              ; $6f53: $3f
	call nz, Call_023_7cff                           ; $6f54: $c4 $ff $7c
	jp $c679                                         ; $6f57: $c3 $79 $c6


	ld h, e                                          ; $6f5a: $63
	sbc $4d                                          ; $6f5b: $de $4d
	cp $5b                                           ; $6f5d: $fe $5b
	db $fc                                           ; $6f5f: $fc
	ld [hl], a                                       ; $6f60: $77
	ld hl, sp+$6f                                    ; $6f61: $f8 $6f
	ldh a, [$5f]                                     ; $6f63: $f0 $5f
	ldh [$f8], a                                     ; $6f65: $e0 $f8
	rrca                                             ; $6f67: $0f
	sub c                                            ; $6f68: $91
	push af                                          ; $6f69: $f5
	ld c, $fe                                        ; $6f6a: $0e $fe
	dec b                                            ; $6f6c: $05
	db $fd                                           ; $6f6d: $fd
	ld b, $fe                                        ; $6f6e: $06 $fe
	rlca                                             ; $6f70: $07
	ei                                               ; $6f71: $fb
	ld b, $fa                                        ; $6f72: $06 $fa
	rlca                                             ; $6f74: $07

Jump_023_6f75:
	rst $38                                          ; $6f75: $ff
	ld [bc], a                                       ; $6f76: $02
	rlca                                             ; $6f77: $07
	jr nz, jr_023_6ff8                               ; $6f78: $20 $7e

	sub h                                            ; $6f7a: $94
	rrca                                             ; $6f7b: $0f
	db $fc                                           ; $6f7c: $fc
	add b                                            ; $6f7d: $80
	xor h                                            ; $6f7e: $ac
	ld d, a                                          ; $6f7f: $57
	ld d, h                                          ; $6f80: $54
	xor a                                            ; $6f81: $af
	xor h                                            ; $6f82: $ac
	ld e, a                                          ; $6f83: $5f
	ld e, b                                          ; $6f84: $58
	xor a                                            ; $6f85: $af
	xor c                                            ; $6f86: $a9
	ld e, a                                          ; $6f87: $5f
	ld e, c                                          ; $6f88: $59
	xor a                                            ; $6f89: $af
	or d                                             ; $6f8a: $b2
	ld e, a                                          ; $6f8b: $5f
	ld e, [hl]                                       ; $6f8c: $5e
	cp a                                             ; $6f8d: $bf
	add hl, bc                                       ; $6f8e: $09
	rst FarCall                                          ; $6f8f: $f7
	rla                                              ; $6f90: $17
	rst AddAOntoHL                                          ; $6f91: $ef
	cpl                                              ; $6f92: $2f
	rst SubAFromDE                                          ; $6f93: $df
	sbc $bf                                          ; $6f94: $de $bf
	ld a, [hl]                                       ; $6f96: $7e
	cp a                                             ; $6f97: $bf
	or [hl]                                          ; $6f98: $b6
	ld a, a                                          ; $6f99: $7f
	db $ec                                           ; $6f9a: $ec

Call_023_6f9b:
	ld [hl], a                                       ; $6f9b: $77
	call nc, Call_023_6f9b                           ; $6f9c: $d4 $9b $6f
	add e                                            ; $6f9f: $83
	db $fc                                           ; $6fa0: $fc
	inc bc                                           ; $6fa1: $03
	ld [hl], e                                       ; $6fa2: $73
	cp $7f                                           ; $6fa3: $fe $7f
	ld a, [bc]                                       ; $6fa5: $0a
	ld [hl], a                                       ; $6fa6: $77
	cp $7f                                           ; $6fa7: $fe $7f
	ld b, $67                                        ; $6fa9: $06 $67
	ld [$f77e], sp                                   ; $6fab: $08 $7e $f7
	ld a, l                                          ; $6fae: $7d
	db $e4                                           ; $6faf: $e4
	ld [hl], a                                       ; $6fb0: $77
	rst SubAFromBC                                          ; $6fb1: $e7
	add b                                            ; $6fb2: $80
	and l                                            ; $6fb3: $a5
	ld a, a                                          ; $6fb4: $7f
	add $7f                                          ; $6fb5: $c6 $7f
	ld b, h                                          ; $6fb7: $44
	rst $38                                          ; $6fb8: $ff
	add l                                            ; $6fb9: $85
	cp $89                                           ; $6fba: $fe $89
	cp $0a                                           ; $6fbc: $fe $0a
	db $fd                                           ; $6fbe: $fd
	ld a, [bc]                                       ; $6fbf: $0a
	db $fd                                           ; $6fc0: $fd
	ld a, [de]                                       ; $6fc1: $1a
	db $ed                                           ; $6fc2: $ed
	ld c, a                                          ; $6fc3: $4f
	or e                                             ; $6fc4: $b3
	add a                                            ; $6fc5: $87
	ld [hl], e                                       ; $6fc6: $73
	sub e                                            ; $6fc7: $93
	ld h, a                                          ; $6fc8: $67
	daa                                              ; $6fc9: $27
	jp $c702                                         ; $6fca: $c3 $02 $c7


	ld b, a                                          ; $6fcd: $47
	add d                                            ; $6fce: $82
	add e                                            ; $6fcf: $83
	ld b, $c7                                        ; $6fd0: $06 $c7
	add c                                            ; $6fd2: $81
	ld [bc], a                                       ; $6fd3: $02
	dec hl                                           ; $6fd4: $2b
	ld de, $0835                                     ; $6fd5: $11 $35 $08
	ld a, [hl+]                                      ; $6fd8: $2a
	inc d                                            ; $6fd9: $14
	inc d                                            ; $6fda: $14
	ld a, [bc]                                       ; $6fdb: $0a
	adc e                                            ; $6fdc: $8b
	db $10                                           ; $6fdd: $10
	sub l                                            ; $6fde: $95
	nop                                              ; $6fdf: $00
	ld a, [bc]                                       ; $6fe0: $0a
	nop                                              ; $6fe1: $00
	add l                                            ; $6fe2: $85
	nop                                              ; $6fe3: $00
	ret nz                                           ; $6fe4: $c0

	nop                                              ; $6fe5: $00
	and b                                            ; $6fe6: $a0
	ret nz                                           ; $6fe7: $c0

	ldh a, [c]                                       ; $6fe8: $f2
	ld h, b                                          ; $6fe9: $60
	ld d, l                                          ; $6fea: $55
	jr c, @+$6e                                      ; $6feb: $38 $6c

	ld e, $3b                                        ; $6fed: $1e $3b
	rlca                                             ; $6fef: $07
	sub a                                            ; $6ff0: $97
	ld a, e                                          ; $6ff1: $7b
	xor $85                                          ; $6ff2: $ee $85
	ld e, $07                                        ; $6ff4: $1e $07
	ld c, $0f                                        ; $6ff6: $0e $0f

jr_023_6ff8:
	rra                                              ; $6ff8: $1f
	ld c, $5b                                        ; $6ff9: $0e $5b
	ld c, $ab                                        ; $6ffb: $0e $ab
	ld c, $fb                                        ; $6ffd: $0e $fb
	ld e, $f3                                        ; $6fff: $1e $f3
	cp $e3                                           ; $7001: $fe $e3
	cp $0c                                           ; $7003: $fe $0c
	rst FarCall                                          ; $7005: $f7
	ld l, h                                          ; $7006: $6c
	sub a                                            ; $7007: $97
	add h                                            ; $7008: $84
	rla                                              ; $7009: $17
	inc b                                            ; $700a: $04
	rla                                              ; $700b: $17
	dec d                                            ; $700c: $15
	rlca                                             ; $700d: $07
	ld [hl], a                                       ; $700e: $77
	cp $9d                                           ; $700f: $fe $9d
	dec c                                            ; $7011: $0d
	rlca                                             ; $7012: $07
	ld [hl], l                                       ; $7013: $75
	ld h, [hl]                                       ; $7014: $66
	sbc e                                            ; $7015: $9b
	rst $38                                          ; $7016: $ff
	add b                                            ; $7017: $80
	rst $38                                          ; $7018: $ff
	add b                                            ; $7019: $80
	ld [hl], c                                       ; $701a: $71
	ld hl, sp-$65                                    ; $701b: $f8 $9b
	ldh [$6f], a                                     ; $701d: $e0 $6f
	ldh a, [$fe]                                     ; $701f: $f0 $fe
	ld a, c                                          ; $7021: $79
	sbc h                                            ; $7022: $9c
	ld a, [hl]                                       ; $7023: $7e
	ld [$ee99], sp                                   ; $7024: $08 $99 $ee
	rra                                              ; $7027: $1f
	db $eb                                           ; $7028: $eb
	rra                                              ; $7029: $1f
	ldh a, [rIF]                                     ; $702a: $f0 $0f
	ld [hl], a                                       ; $702c: $77
	cp $73                                           ; $702d: $fe $73
	jr c, @-$1f                                      ; $702f: $38 $df

	push de                                          ; $7031: $d5
	sbc d                                            ; $7032: $9a
	xor d                                            ; $7033: $aa
	ld l, d                                          ; $7034: $6a
	push de                                          ; $7035: $d5
	push de                                          ; $7036: $d5
	ld [$f877], a                                    ; $7037: $ea $77 $f8
	rlca                                             ; $703a: $07
	db $10                                           ; $703b: $10
	ld b, a                                          ; $703c: $47
	db $fc                                           ; $703d: $fc
	sub [hl]                                         ; $703e: $96
	xor [hl]                                         ; $703f: $ae
	ld e, a                                          ; $7040: $5f
	ld e, h                                          ; $7041: $5c
	xor a                                            ; $7042: $af
	xor h                                            ; $7043: $ac
	ld d, a                                          ; $7044: $57
	ld d, [hl]                                       ; $7045: $56
	xor e                                            ; $7046: $ab
	xor e                                            ; $7047: $ab
	ld l, e                                          ; $7048: $6b
	ldh a, [$8b]                                     ; $7049: $f0 $8b
	xor b                                            ; $704b: $a8
	ld e, a                                          ; $704c: $5f
	ld hl, sp+$1f                                    ; $704d: $f8 $1f
	ld e, h                                          ; $704f: $5c
	cp a                                             ; $7050: $bf
	inc c                                            ; $7051: $0c
	rst $38                                          ; $7052: $ff
	ld b, $ff                                        ; $7053: $06 $ff
	add [hl]                                         ; $7055: $86
	rst $38                                          ; $7056: $ff
	jp nz, $427f                                     ; $7057: $c2 $7f $42

	rst $38                                          ; $705a: $ff
	rrca                                             ; $705b: $0f
	ldh a, [$1f]                                     ; $705c: $f0 $1f
	ldh [$67], a                                     ; $705e: $e0 $67
	cp $7e                                           ; $7060: $fe $7e
	ld a, [bc]                                       ; $7062: $0a
	ld a, a                                          ; $7063: $7f
	cp $76                                           ; $7064: $fe $76
	ld sp, hl                                        ; $7066: $f9
	ld a, a                                          ; $7067: $7f
	adc d                                            ; $7068: $8a
	add b                                            ; $7069: $80
	pop af                                           ; $706a: $f1
	ld c, $e1                                        ; $706b: $0e $e1
	ld e, $c3                                        ; $706d: $1e $c3
	inc a                                            ; $706f: $3c
	rst JumpTable                                          ; $7070: $c7
	jr c, @-$6f                                      ; $7071: $38 $8f

	ld [hl], b                                       ; $7073: $70
	ld a, $c9                                        ; $7074: $3e $c9
	ld l, a                                          ; $7076: $6f

jr_023_7077:
	sbc b                                            ; $7077: $98
	or $18                                           ; $7078: $f6 $18
	push af                                          ; $707a: $f5
	jr jr_023_7077                                   ; $707b: $18 $fa

	db $10                                           ; $707d: $10
	db $f4                                           ; $707e: $f4
	db $10                                           ; $707f: $10
	jp c, $d430                                      ; $7080: $da $30 $d4

	jr nc, @-$73                                     ; $7083: $30 $8b

	ld b, $06                                        ; $7085: $06 $06
	inc bc                                           ; $7087: $03
	adc e                                            ; $7088: $8b
	sbc e                                            ; $7089: $9b
	ld [bc], a                                       ; $708a: $02
	ld b, $03                                        ; $708b: $06 $03
	dec bc                                           ; $708d: $0b
	ld [hl], e                                       ; $708e: $73
	db $fc                                           ; $708f: $fc
	sbc l                                            ; $7090: $9d
	ld d, $03                                        ; $7091: $16 $03
	ld [hl], a                                       ; $7093: $77
	inc c                                            ; $7094: $0c
	sbc [hl]                                         ; $7095: $9e
	ld b, d                                          ; $7096: $42
	ld [hl], e                                       ; $7097: $73
	db $fc                                           ; $7098: $fc
	sbc d                                            ; $7099: $9a
	add c                                            ; $709a: $81
	nop                                              ; $709b: $00
	ld b, b                                          ; $709c: $40
	add b                                            ; $709d: $80
	and b                                            ; $709e: $a0
	ld a, e                                          ; $709f: $7b
	or $9e                                           ; $70a0: $f6 $9e
	ld b, b                                          ; $70a2: $40
	ld a, d                                          ; $70a3: $7a
	ld a, [bc]                                       ; $70a4: $0a
	ld e, a                                          ; $70a5: $5f
	db $fc                                           ; $70a6: $fc
	sbc b                                            ; $70a7: $98
	jp $c37e                                         ; $70a8: $c3 $7e $c3


	ld a, [hl]                                       ; $70ab: $7e
	ld h, e                                          ; $70ac: $63
	ld a, $23                                        ; $70ad: $3e $23
	ld l, e                                          ; $70af: $6b
	cp $7f                                           ; $70b0: $fe $7f
	db $f4                                           ; $70b2: $f4
	ld a, a                                          ; $70b3: $7f
	ld c, $98                                        ; $70b4: $0e $98
	rrca                                             ; $70b6: $0f
	rlca                                             ; $70b7: $07
	dec bc                                           ; $70b8: $0b
	rlca                                             ; $70b9: $07
	dec bc                                           ; $70ba: $0b
	inc bc                                           ; $70bb: $03
	ld a, [bc]                                       ; $70bc: $0a
	ld l, e                                          ; $70bd: $6b
	cp $80                                           ; $70be: $fe $80
	scf                                              ; $70c0: $37
	ld hl, sp+$0b                                    ; $70c1: $f8 $0b
	db $fc                                           ; $70c3: $fc
	dec b                                            ; $70c4: $05
	cp $00                                           ; $70c5: $fe $00
	rst $38                                          ; $70c7: $ff
	db $10                                           ; $70c8: $10
	rst AddAOntoHL                                          ; $70c9: $ef
	ld [$06f7], sp                                   ; $70ca: $08 $f7 $06
	ld sp, hl                                        ; $70cd: $f9
	inc bc                                           ; $70ce: $03
	db $fc                                           ; $70cf: $fc
	ld sp, hl                                        ; $70d0: $f9
	rlca                                             ; $70d1: $07
	ld sp, hl                                        ; $70d2: $f9
	rlca                                             ; $70d3: $07
	cp $03                                           ; $70d4: $fe $03
	rst $38                                          ; $70d6: $ff
	ld [bc], a                                       ; $70d7: $02
	ld a, [hl]                                       ; $70d8: $7e
	add e                                            ; $70d9: $83
	ccf                                              ; $70da: $3f
	jp nz, $e11f                                     ; $70db: $c2 $1f $e1

	adc a                                            ; $70de: $8f
	sbc [hl]                                         ; $70df: $9e
	ld [hl], c                                       ; $70e0: $71
	inc bc                                           ; $70e1: $03
	inc e                                            ; $70e2: $1c
	sbc b                                            ; $70e3: $98
	ld d, l                                          ; $70e4: $55
	db $dd                                           ; $70e5: $dd
	ld [hl+], a                                      ; $70e6: $22
	xor d                                            ; $70e7: $aa
	ld d, l                                          ; $70e8: $55
	ld [hl], a                                       ; $70e9: $77
	adc b                                            ; $70ea: $88
	inc bc                                           ; $70eb: $03
	ld hl, sp+$6b                                    ; $70ec: $f8 $6b
	ld hl, sp+$7c                                    ; $70ee: $f8 $7c
	ldh a, [$7f]                                     ; $70f0: $f0 $7f
	add hl, de                                       ; $70f2: $19
	sub e                                            ; $70f3: $93
	or b                                             ; $70f4: $b0
	ld e, a                                          ; $70f5: $5f
	ld [hl], b                                       ; $70f6: $70
	sbc a                                            ; $70f7: $9f
	xor b                                            ; $70f8: $a8
	ld e, a                                          ; $70f9: $5f
	call c, $af2f                                    ; $70fa: $dc $2f $af
	ld e, a                                          ; $70fd: $5f
	ld a, a                                          ; $70fe: $7f
	adc a                                            ; $70ff: $8f
	ld [hl], a                                       ; $7100: $77
	inc c                                            ; $7101: $0c
	ld a, a                                          ; $7102: $7f
	cp $7c                                           ; $7103: $fe $7c
	xor $95                                          ; $7105: $ee $95
	ld e, [hl]                                       ; $7107: $5e
	pop hl                                           ; $7108: $e1
	ld l, h                                          ; $7109: $6c
	di                                               ; $710a: $f3
	dec [hl]                                         ; $710b: $35
	ld a, [$fff8]                                    ; $710c: $fa $f8 $ff
	sbc a                                            ; $710f: $9f
	ld h, b                                          ; $7110: $60
	ld [hl], a                                       ; $7111: $77
	ldh a, [$8e]                                     ; $7112: $f0 $8e
	ld a, h                                          ; $7114: $7c
	add e                                            ; $7115: $83
	ld a, e                                          ; $7116: $7b
	add a                                            ; $7117: $87
	rst AddAOntoHL                                          ; $7118: $ef
	inc e                                            ; $7119: $1c
	cp a                                             ; $711a: $bf
	ld a, a                                          ; $711b: $7f
	pop hl                                           ; $711c: $e1
	rst $38                                          ; $711d: $ff
	ldh [rAUD4LEN], a                                ; $711e: $e0 $20
	and b                                            ; $7120: $a0
	ld h, b                                          ; $7121: $60
	ld b, b                                          ; $7122: $40
	ldh [$c0], a                                     ; $7123: $e0 $c0
	ld a, e                                          ; $7125: $7b
	ld h, $98                                        ; $7126: $26 $98
	jp $af01                                         ; $7128: $c3 $01 $af


	rlca                                             ; $712b: $07
	rst $38                                          ; $712c: $ff
	sbc a                                            ; $712d: $9f
	rrca                                             ; $712e: $0f
	ld a, e                                          ; $712f: $7b
	inc c                                            ; $7130: $0c
	sbc d                                            ; $7131: $9a
	dec c                                            ; $7132: $0d
	ld [bc], a                                       ; $7133: $02
	inc hl                                           ; $7134: $23
	rra                                              ; $7135: $1f
	ld a, a                                          ; $7136: $7f
	ld a, b                                          ; $7137: $78
	db $dd                                           ; $7138: $dd
	ld a, [hl]                                       ; $7139: $7e
	ld c, c                                          ; $713a: $49
	sbc l                                            ; $713b: $9d
	sub b                                            ; $713c: $90
	rst AddAOntoHL                                          ; $713d: $ef
	ld [hl], a                                       ; $713e: $77
	inc c                                            ; $713f: $0c
	ld a, a                                          ; $7140: $7f
	db $fc                                           ; $7141: $fc
	sbc b                                            ; $7142: $98
	ld h, b                                          ; $7143: $60
	sub b                                            ; $7144: $90
	ld hl, sp-$04                                    ; $7145: $f8 $fc
	ld c, $ff                                        ; $7147: $0e $ff
	inc bc                                           ; $7149: $03
	ld a, c                                          ; $714a: $79
	rst JumpTable                                          ; $714b: $c7
	sub d                                            ; $714c: $92
	ld bc, $0100                                     ; $714d: $01 $00 $01
	ld bc, $0307                                     ; $7150: $01 $07 $03
	ld c, $07                                        ; $7153: $0e $07
	rrca                                             ; $7155: $0f
	ld e, $9d                                        ; $7156: $1e $9d
	ld a, $f3                                        ; $7158: $3e $f3
	ld a, c                                          ; $715a: $79
	xor d                                            ; $715b: $aa
	sbc d                                            ; $715c: $9a
	add e                                            ; $715d: $83
	cp $83                                           ; $715e: $fe $83
	cp $03                                           ; $7160: $fe $03
	ld e, e                                          ; $7162: $5b
	cp $7f                                           ; $7163: $fe $7f
	ld b, $67                                        ; $7165: $06 $67
	inc b                                            ; $7167: $04
	sub h                                            ; $7168: $94
	dec hl                                           ; $7169: $2b
	ld [bc], a                                       ; $716a: $02
	ld e, e                                          ; $716b: $5b
	ld [bc], a                                       ; $716c: $02
	xor e                                            ; $716d: $ab
	ld [hl+], a                                      ; $716e: $22
	pop bc                                           ; $716f: $c1
	cp $f0                                           ; $7170: $fe $f0
	rst $38                                          ; $7172: $ff
	jr jr_023_71f0                                   ; $7173: $18 $7b

	ret z                                            ; $7175: $c8

	ld a, a                                          ; $7176: $7f
	ld b, $7e                                        ; $7177: $06 $7e
	sub h                                            ; $7179: $94
	ld [hl], l                                       ; $717a: $75
	adc d                                            ; $717b: $8a
	sub [hl]                                         ; $717c: $96
	add $39                                          ; $717d: $c6 $39
	db $e3                                           ; $717f: $e3
	inc e                                            ; $7180: $1c
	ld a, c                                          ; $7181: $79
	add [hl]                                         ; $7182: $86

jr_023_7183:
	db $fc                                           ; $7183: $fc
	inc bc                                           ; $7184: $03
	rst $38                                          ; $7185: $ff
	ld a, c                                          ; $7186: $79
	add b                                            ; $7187: $80
	ld a, a                                          ; $7188: $7f
	pop de                                           ; $7189: $d1
	ld a, a                                          ; $718a: $7f
	ret nc                                           ; $718b: $d0

	ld a, [hl]                                       ; $718c: $7e
	inc c                                            ; $718d: $0c
	sbc d                                            ; $718e: $9a
	db $dd                                           ; $718f: $dd
	and d                                            ; $7190: $a2
	xor d                                            ; $7191: $aa
	push de                                          ; $7192: $d5
	rst FarCall                                          ; $7193: $f7
	inc bc                                           ; $7194: $03
	jr z, @+$05                                      ; $7195: $28 $03

	ld hl, sp+$6b                                    ; $7197: $f8 $6b
	ld hl, sp+$7f                                    ; $7199: $f8 $7f
	ld [$d896], sp                                   ; $719b: $08 $96 $d8
	cpl                                              ; $719e: $2f
	xor b                                            ; $719f: $a8
	ld e, a                                          ; $71a0: $5f
	ld a, b                                          ; $71a1: $78
	adc a                                            ; $71a2: $8f
	or b                                             ; $71a3: $b0
	ld e, a                                          ; $71a4: $5f
	ret nc                                           ; $71a5: $d0

	ld [hl], d                                       ; $71a6: $72
	ld hl, sp-$62                                    ; $71a7: $f8 $9e
	ccf                                              ; $71a9: $3f
	ld a, e                                          ; $71aa: $7b
	add d                                            ; $71ab: $82
	sbc [hl]                                         ; $71ac: $9e
	db $10                                           ; $71ad: $10
	ld l, e                                          ; $71ae: $6b
	cp $9b                                           ; $71af: $fe $9b
	inc de                                           ; $71b1: $13
	db $fc                                           ; $71b2: $fc
	rla                                              ; $71b3: $17
	ld hl, sp+$6d                                    ; $71b4: $f8 $6d
	ld bc, $727e                                     ; $71b6: $01 $7e $72
	sbc l                                            ; $71b9: $9d
	jr c, jr_023_7183                                ; $71ba: $38 $c7

	ld [hl], b                                       ; $71bc: $70
	rst AddAOntoHL                                          ; $71bd: $ef
	sbc l                                            ; $71be: $9d
	rlca                                             ; $71bf: $07
	db $e3                                           ; $71c0: $e3
	ld [hl], a                                       ; $71c1: $77
	ld [hl], a                                       ; $71c2: $77
	ld e, e                                          ; $71c3: $5b
	cp $7f                                           ; $71c4: $fe $7f
	add sp, -$69                                     ; $71c6: $e8 $97
	inc a                                            ; $71c8: $3c
	jp $837c                                         ; $71c9: $c3 $7c $83


	ld a, [hl]                                       ; $71cc: $7e
	add c                                            ; $71cd: $81
	ld a, [hl]                                       ; $71ce: $7e
	add c                                            ; $71cf: $81
	ld l, h                                          ; $71d0: $6c
	ret c                                            ; $71d1: $d8

	ld a, e                                          ; $71d2: $7b
	ld c, $7f                                        ; $71d3: $0e $7f
	ld c, e                                          ; $71d5: $4b
	ld l, e                                          ; $71d6: $6b
	cp $7f                                           ; $71d7: $fe $7f
	inc a                                            ; $71d9: $3c
	sbc l                                            ; $71da: $9d
	add e                                            ; $71db: $83
	ld a, h                                          ; $71dc: $7c
	ld l, h                                          ; $71dd: $6c
	cp b                                             ; $71de: $b8
	ld e, a                                          ; $71df: $5f
	cp $9c                                           ; $71e0: $fe $9c
	ld [bc], a                                       ; $71e2: $02
	cp $02                                           ; $71e3: $fe $02
	ld a, d                                          ; $71e5: $7a
	ld sp, $d577                                     ; $71e6: $31 $77 $d5
	ld [hl], a                                       ; $71e9: $77
	ldh [$7f], a                                     ; $71ea: $e0 $7f
	cp $95                                           ; $71ec: $fe $95
	ld d, e                                          ; $71ee: $53
	ld [hl], d                                       ; $71ef: $72

jr_023_71f0:
	adc e                                            ; $71f0: $8b
	ld a, [$ff06]                                    ; $71f1: $fa $06 $ff
	ld h, [hl]                                       ; $71f4: $66
	sbc e                                            ; $71f5: $9b
	rst FarCall                                          ; $71f6: $f7
	dec bc                                           ; $71f7: $0b
	ld a, d                                          ; $71f8: $7a
	pop de                                           ; $71f9: $d1
	sub b                                            ; $71fa: $90
	inc bc                                           ; $71fb: $03
	ei                                               ; $71fc: $fb
	ld b, $f8                                        ; $71fd: $06 $f8
	rlca                                             ; $71ff: $07
	add b                                            ; $7200: $80
	ld a, a                                          ; $7201: $7f
	rlca                                             ; $7202: $07
	rst $38                                          ; $7203: $ff
	ld a, a                                          ; $7204: $7f
	rst $38                                          ; $7205: $ff
	ld a, [$ddfd]                                    ; $7206: $fa $fd $dd
	ldh [c], a                                       ; $7209: $e2
	ld [hl], a                                       ; $720a: $77
	ld h, b                                          ; $720b: $60
	sbc c                                            ; $720c: $99
	ld c, $fd                                        ; $720d: $0e $fd
	dec a                                            ; $720f: $3d
	ldh a, [c]                                       ; $7210: $f2
	ld [$03d5], a                                    ; $7211: $ea $d5 $03
	jr c, @+$65                                      ; $7214: $38 $63

	ld hl, sp+$7f                                    ; $7216: $f8 $7f
	ld a, [$fc03]                                    ; $7218: $fa $03 $fc
	ld d, e                                          ; $721b: $53
	db $fc                                           ; $721c: $fc
	ld a, a                                          ; $721d: $7f
	ld a, [bc]                                       ; $721e: $0a
	ld a, a                                          ; $721f: $7f
	inc c                                            ; $7220: $0c
	sbc e                                            ; $7221: $9b
	sbc $3f                                          ; $7222: $de $3f
	ld [hl], c                                       ; $7224: $71
	sbc a                                            ; $7225: $9f
	ld [hl], a                                       ; $7226: $77
	ld hl, sp+$77                                    ; $7227: $f8 $77
	db $fc                                           ; $7229: $fc
	ld [hl], a                                       ; $722a: $77
	ld e, h                                          ; $722b: $5c
	ld a, h                                          ; $722c: $7c
	db $fc                                           ; $722d: $fc
	ld a, [hl]                                       ; $722e: $7e
	ld [$9370], sp                                   ; $722f: $08 $70 $93
	ld a, e                                          ; $7232: $7b
	cp $6d                                           ; $7233: $fe $6d
	nop                                              ; $7235: $00
	ld a, a                                          ; $7236: $7f
	cp $9b                                           ; $7237: $fe $9b
	rrca                                             ; $7239: $0f
	rst $38                                          ; $723a: $ff
	ldh a, [rIF]                                     ; $723b: $f0 $0f
	ld [hl], h                                       ; $723d: $74
	db $eb                                           ; $723e: $eb
	ld l, [hl]                                       ; $723f: $6e
	ldh a, [$7f]                                     ; $7240: $f0 $7f
	cp $7e                                           ; $7242: $fe $7e
	ld e, d                                          ; $7244: $5a
	ld a, a                                          ; $7245: $7f
	xor $77                                          ; $7246: $ee $77
	ld hl, sp+$6b                                    ; $7248: $f8 $6b
	pop af                                           ; $724a: $f1
	sbc e                                            ; $724b: $9b
	nop                                              ; $724c: $00
	ld a, a                                          ; $724d: $7f
	add b                                            ; $724e: $80
	ret nz                                           ; $724f: $c0

	ld a, e                                          ; $7250: $7b
	db $f4                                           ; $7251: $f4
	ld a, a                                          ; $7252: $7f
	ld a, [$0e7f]                                    ; $7253: $fa $7f $0e
	ld a, h                                          ; $7256: $7c
	jp c, $ef9a                                      ; $7257: $da $9a $ef

	db $10                                           ; $725a: $10
	rst $38                                          ; $725b: $ff
	nop                                              ; $725c: $00
	add b                                            ; $725d: $80
	ld [hl], l                                       ; $725e: $75
	rst AddAOntoHL                                          ; $725f: $ef
	ld a, e                                          ; $7260: $7b
	add sp, $7f                                      ; $7261: $e8 $7f
	pop bc                                           ; $7263: $c1
	ld [hl], a                                       ; $7264: $77
	ld a, [de]                                       ; $7265: $1a
	sbc h                                            ; $7266: $9c
	inc e                                            ; $7267: $1c
	rst $38                                          ; $7268: $ff
	db $e3                                           ; $7269: $e3
	ld a, d                                          ; $726a: $7a
	db $f4                                           ; $726b: $f4
	ld [hl], a                                       ; $726c: $77
	cp $77                                           ; $726d: $fe $77
	ldh a, [c]                                       ; $726f: $f2
	ld a, a                                          ; $7270: $7f
	cp $9d                                           ; $7271: $fe $9d
	db $fc                                           ; $7273: $fc
	rst $38                                          ; $7274: $ff
	ld [hl], a                                       ; $7275: $77
	db $f4                                           ; $7276: $f4
	ld a, d                                          ; $7277: $7a
	res 2, [hl]                                      ; $7278: $cb $96
	ld a, [hl]                                       ; $727a: $7e
	ei                                               ; $727b: $fb
	ld b, $f7                                        ; $727c: $06 $f7
	ld c, $0f                                        ; $727e: $0e $0f
	ldh a, [c]                                       ; $7280: $f2
	rst $38                                          ; $7281: $ff
	ld [bc], a                                       ; $7282: $02
	ld h, a                                          ; $7283: $67
	cp $03                                           ; $7284: $fe $03
	ld c, h                                          ; $7286: $4c
	dec bc                                           ; $7287: $0b
	db $fc                                           ; $7288: $fc
	sbc c                                            ; $7289: $99
	db $fd                                           ; $728a: $fd
	ld [bc], a                                       ; $728b: $02
	cp a                                             ; $728c: $bf
	ld b, b                                          ; $728d: $40
	ei                                               ; $728e: $fb
	inc b                                            ; $728f: $04
	ld [hl], a                                       ; $7290: $77
	ld a, [hl]                                       ; $7291: $7e
	ld [hl], a                                       ; $7292: $77
	ld hl, sp+$7f                                    ; $7293: $f8 $7f
	ld a, [$ec7f]                                    ; $7295: $fa $7f $ec
	ld a, a                                          ; $7298: $7f
	db $fc                                           ; $7299: $fc
	sub a                                            ; $729a: $97
	or a                                             ; $729b: $b7
	ld c, b                                          ; $729c: $48
	cp $01                                           ; $729d: $fe $01
	ld a, a                                          ; $729f: $7f
	add b                                            ; $72a0: $80
	rst FarCall                                          ; $72a1: $f7
	ld [$566f], sp                                   ; $72a2: $08 $6f $56
	ld [hl], a                                       ; $72a5: $77
	xor $7f                                          ; $72a6: $ee $7f
	ret c                                            ; $72a8: $d8

	sbc l                                            ; $72a9: $9d
	rst SubAFromDE                                          ; $72aa: $df
	jr nz, @+$79                                     ; $72ab: $20 $77

	ldh [c], a                                       ; $72ad: $e2
	ld a, a                                          ; $72ae: $7f
	cp $7f                                           ; $72af: $fe $7f
	inc c                                            ; $72b1: $0c
	sbc e                                            ; $72b2: $9b
	ldh a, [$1f]                                     ; $72b3: $f0 $1f
	call c, Call_023_763f                            ; $72b5: $dc $3f $76
	add h                                            ; $72b8: $84
	ld a, c                                          ; $72b9: $79
	ld e, $9c                                        ; $72ba: $1e $9c
	inc de                                           ; $72bc: $13
	rst $38                                          ; $72bd: $ff
	rlca                                             ; $72be: $07
	ld l, a                                          ; $72bf: $6f
	ld a, [bc]                                       ; $72c0: $0a
	sbc l                                            ; $72c1: $9d
	rst GetHLinHL                                          ; $72c2: $cf
	ldh a, [$dd]                                     ; $72c3: $f0 $dd
	rst $38                                          ; $72c5: $ff
	sbc c                                            ; $72c6: $99
	adc $ff                                          ; $72c7: $ce $ff
	call z, $e0ff                                    ; $72c9: $cc $ff $e0
	rra                                              ; $72cc: $1f
	ld [hl], b                                       ; $72cd: $70
	rst AddAOntoHL                                          ; $72ce: $ef
	sbc l                                            ; $72cf: $9d
	ccf                                              ; $72d0: $3f
	ld hl, sp-$22                                    ; $72d1: $f8 $de
	rst $38                                          ; $72d3: $ff
	sbc h                                            ; $72d4: $9c
	jr c, @+$01                                      ; $72d5: $38 $ff

	jr nc, jr_023_7340                               ; $72d7: $30 $67

	ld de, $fe7b                                     ; $72d9: $11 $7b $fe
	ld a, l                                          ; $72dc: $7d
	ld [de], a                                       ; $72dd: $12
	rst SubAFromDE                                          ; $72de: $df
	rst $38                                          ; $72df: $ff
	sbc e                                            ; $72e0: $9b
	ld a, b                                          ; $72e1: $78
	rst $38                                          ; $72e2: $ff
	ld a, a                                          ; $72e3: $7f
	add b                                            ; $72e4: $80
	ld e, a                                          ; $72e5: $5f
	cp $9c                                           ; $72e6: $fe $9c
	rst AddAOntoHL                                          ; $72e8: $ef
	ldh a, [$7f]                                     ; $72e9: $f0 $7f
	ld h, d                                          ; $72eb: $62
	ldh a, [$7f]                                     ; $72ec: $f0 $7f
	cp $99                                           ; $72ee: $fe $99
	db $fd                                           ; $72f0: $fd
	inc bc                                           ; $72f1: $03
	cp a                                             ; $72f2: $bf
	ld a, a                                          ; $72f3: $7f
	ld hl, sp-$01                                    ; $72f4: $f8 $ff
	ld [hl], a                                       ; $72f6: $77
	inc e                                            ; $72f7: $1c
	ld [hl], a                                       ; $72f8: $77
	cp $77                                           ; $72f9: $fe $77
	db $f4                                           ; $72fb: $f4
	sbc [hl]                                         ; $72fc: $9e
	sbc b                                            ; $72fd: $98
	ld a, c                                          ; $72fe: $79
	and h                                            ; $72ff: $a4
	ld [hl], a                                       ; $7300: $77
	db $f4                                           ; $7301: $f4
	ld a, a                                          ; $7302: $7f
	push de                                          ; $7303: $d5
	sbc [hl]                                         ; $7304: $9e
	add e                                            ; $7305: $83
	ld a, e                                          ; $7306: $7b
	rst SubAFromHL                                          ; $7307: $d7
	sbc [hl]                                         ; $7308: $9e
	ret                                              ; $7309: $c9


	ld a, e                                          ; $730a: $7b
	cp $9d                                           ; $730b: $fe $9d
	ld c, b                                          ; $730d: $48
	rst $38                                          ; $730e: $ff
	ld [hl], a                                       ; $730f: $77
	inc c                                            ; $7310: $0c
	ld a, [hl]                                       ; $7311: $7e
	db $fc                                           ; $7312: $fc
	sub l                                            ; $7313: $95
	db $fd                                           ; $7314: $fd
	cp $ff                                           ; $7315: $fe $ff
	ldh a, [$3b]                                     ; $7317: $f0 $3b
	db $f4                                           ; $7319: $f4
	adc a                                            ; $731a: $8f
	ld hl, sp-$71                                    ; $731b: $f8 $8f
	ld hl, sp+$03                                    ; $731d: $f8 $03
	ld b, b                                          ; $731f: $40
	ld c, e                                          ; $7320: $4b
	ld b, b                                          ; $7321: $40
	ccf                                              ; $7322: $3f
	ldh a, [$03]                                     ; $7323: $f0 $03
	cp $53                                           ; $7325: $fe $53
	cp $9d                                           ; $7327: $fe $9d
	db $fd                                           ; $7329: $fd
	rlca                                             ; $732a: $07
	ld l, e                                          ; $732b: $6b
	cp $9d                                           ; $732c: $fe $9d
	rrca                                             ; $732e: $0f
	ld sp, hl                                        ; $732f: $f9
	ld [hl], e                                       ; $7330: $73
	cp $9d                                           ; $7331: $fe $9d
	adc h                                            ; $7333: $8c
	rst $38                                          ; $7334: $ff
	ld l, a                                          ; $7335: $6f
	cp $9e                                           ; $7336: $fe $9e
	adc b                                            ; $7338: $88
	ld a, e                                          ; $7339: $7b
	cp $7f                                           ; $733a: $fe $7f
	adc a                                            ; $733c: $8f
	ld a, a                                          ; $733d: $7f
	cp $94                                           ; $733e: $fe $94

jr_023_7340:
	scf                                              ; $7340: $37
	ld hl, sp+$37                                    ; $7341: $f8 $37
	ld hl, sp+$3f                                    ; $7343: $f8 $3f
	ldh a, [$3f]                                     ; $7345: $f0 $3f
	ldh a, [$2f]                                     ; $7347: $f0 $2f
	ldh a, [$6f]                                     ; $7349: $f0 $6f
	ld [hl], e                                       ; $734b: $73
	cp $7e                                           ; $734c: $fe $7e
	db $fc                                           ; $734e: $fc
	ld a, a                                          ; $734f: $7f
	cp $9b                                           ; $7350: $fe $9b
	add hl, sp                                       ; $7352: $39
	cp $3b                                           ; $7353: $fe $3b
	db $fc                                           ; $7355: $fc
	ld h, a                                          ; $7356: $67
	cp $94                                           ; $7357: $fe $94
	ld c, $ff                                        ; $7359: $0e $ff
	ld l, h                                          ; $735b: $6c
	sbc a                                            ; $735c: $9f
	db $ec                                           ; $735d: $ec
	rra                                              ; $735e: $1f
	db $ed                                           ; $735f: $ed
	ld e, $ef                                        ; $7360: $1e $ef
	inc e                                            ; $7362: $1c
	db $eb                                           ; $7363: $eb
	ld [hl], e                                       ; $7364: $73
	cp $7f                                           ; $7365: $fe $7f
	ld e, $7f                                        ; $7367: $1e $7f
	cp $96                                           ; $7369: $fe $96
	sbc b                                            ; $736b: $98
	ld a, a                                          ; $736c: $7f
	sbc c                                            ; $736d: $99
	ld a, [hl]                                       ; $736e: $7e
	sbc a                                            ; $736f: $9f
	ld a, b                                          ; $7370: $78
	sbc a                                            ; $7371: $9f
	ld a, b                                          ; $7372: $78
	sub a                                            ; $7373: $97
	ld a, e                                          ; $7374: $7b
	cp $7f                                           ; $7375: $fe $7f
	cp [hl]                                          ; $7377: $be
	sbc b                                            ; $7378: $98
	jr @-$0f                                         ; $7379: $18 $ef

	ld a, b                                          ; $737b: $78
	adc a                                            ; $737c: $8f
	ld hl, sp+$0f                                    ; $737d: $f8 $0f
	db $fc                                           ; $737f: $fc
	ld a, e                                          ; $7380: $7b
	cp $9e                                           ; $7381: $fe $9e
	db $f4                                           ; $7383: $f4
	ld a, e                                          ; $7384: $7b
	cp $80                                           ; $7385: $fe $80
	ld l, h                                          ; $7387: $6c
	rst $38                                          ; $7388: $ff
	daa                                              ; $7389: $27
	db $fc                                           ; $738a: $fc
	cpl                                              ; $738b: $2f
	db $f4                                           ; $738c: $f4
	ccf                                              ; $738d: $3f
	db $e4                                           ; $738e: $e4
	dec a                                            ; $738f: $3d
	and $3d                                          ; $7390: $e6 $3d
	and $3b                                          ; $7392: $e6 $3b
	and $2f                                          ; $7394: $e6 $2f
	ldh a, [c]                                       ; $7396: $f2
	or a                                             ; $7397: $b7
	call z, $ccf7                                    ; $7398: $cc $f7 $cc
	ld a, a                                          ; $739b: $7f
	call nz, Call_023_44ff                           ; $739c: $c4 $ff $44
	db $db                                           ; $739f: $db
	ld h, [hl]                                       ; $73a0: $66
	cp e                                             ; $73a1: $bb
	ld h, [hl]                                       ; $73a2: $66
	cp a                                             ; $73a3: $bf
	ld h, d                                          ; $73a4: $62
	rst $38                                          ; $73a5: $ff
	ld a, e                                          ; $73a6: $7b
	inc [hl]                                         ; $73a7: $34
	inc bc                                           ; $73a8: $03
	cp $03                                           ; $73a9: $fe $03
	cp $03                                           ; $73ab: $fe $03
	cp $5b                                           ; $73ad: $fe $5b
	cp $9d                                           ; $73af: $fe $9d
	ei                                               ; $73b1: $fb
	rrca                                             ; $73b2: $0f
	ld a, e                                          ; $73b3: $7b
	cp $9d                                           ; $73b4: $fe $9d
	rra                                              ; $73b6: $1f
	ldh a, [c]                                       ; $73b7: $f2
	ld l, e                                          ; $73b8: $6b
	cp $9d                                           ; $73b9: $fe $9d
	or $1f                                           ; $73bb: $f6 $1f
	ld [hl], a                                       ; $73bd: $77
	ld b, b                                          ; $73be: $40
	ld [hl], a                                       ; $73bf: $77
	cp $7e                                           ; $73c0: $fe $7e
	ld a, a                                          ; $73c2: $7f
	ld l, a                                          ; $73c3: $6f
	cp $9c                                           ; $73c4: $fe $9c
	ld a, [hl]                                       ; $73c6: $7e
	pop hl                                           ; $73c7: $e1
	ld e, [hl]                                       ; $73c8: $5e
	ld e, e                                          ; $73c9: $5b
	cp $9b                                           ; $73ca: $fe $9b
	sbc $e1                                          ; $73cc: $de $e1
	dec de                                           ; $73ce: $1b
	db $fc                                           ; $73cf: $fc
	ld e, a                                          ; $73d0: $5f
	cp $9e                                           ; $73d1: $fe $9e
	dec bc                                           ; $73d3: $0b
	ld a, e                                          ; $73d4: $7b
	cp $6f                                           ; $73d5: $fe $6f
	ld a, [bc]                                       ; $73d7: $0a
	sbc l                                            ; $73d8: $9d
	rst AddAOntoHL                                          ; $73d9: $ef
	jr jr_023_7443                                   ; $73da: $18 $67

	cp $77                                           ; $73dc: $fe $77
	inc c                                            ; $73de: $0c
	ld d, a                                          ; $73df: $57
	cp $9d                                           ; $73e0: $fe $9d
	db $fc                                           ; $73e2: $fc
	rlca                                             ; $73e3: $07
	ld [hl], a                                       ; $73e4: $77
	cp $9e                                           ; $73e5: $fe $9e
	cp $7b                                           ; $73e7: $fe $7b
	cp $9e                                           ; $73e9: $fe $9e
	ld a, [$fe73]                                    ; $73eb: $fa $73 $fe
	sbc h                                            ; $73ee: $9c
	ld a, $f3                                        ; $73ef: $3e $f3
	ld e, $7b                                        ; $73f1: $1e $7b
	cp $9e                                           ; $73f3: $fe $9e
	dec e                                            ; $73f5: $1d
	ld a, e                                          ; $73f6: $7b
	cp $89                                           ; $73f7: $fe $89
	rra                                              ; $73f9: $1f
	pop af                                           ; $73fa: $f1
	rra                                              ; $73fb: $1f
	pop af                                           ; $73fc: $f1
	rla                                              ; $73fd: $17
	ld sp, hl                                        ; $73fe: $f9
	db $ed                                           ; $73ff: $ed
	inc sp                                           ; $7400: $33
	db $dd                                           ; $7401: $dd
	inc sp                                           ; $7402: $33
	rst $38                                          ; $7403: $ff
	ld de, $11ff                                     ; $7404: $11 $ff $11
	or $19                                           ; $7407: $f6 $19
	xor $19                                          ; $7409: $ee $19
	ld a, a                                          ; $740b: $7f
	adc b                                            ; $740c: $88
	ld a, a                                          ; $740d: $7f
	adc b                                            ; $740e: $88
	ld e, c                                          ; $740f: $59
	and c                                            ; $7410: $a1
	ld l, a                                          ; $7411: $6f
	cp $03                                           ; $7412: $fe $03
	ld a, $03                                        ; $7414: $3e $03
	cp $13                                           ; $7416: $fe $13
	cp $9c                                           ; $7418: $fe $9c
	or $3f                                           ; $741a: $f6 $3f
	db $e4                                           ; $741c: $e4
	ld h, e                                          ; $741d: $63
	cp $9b                                           ; $741e: $fe $9b
	db $ec                                           ; $7420: $ec
	ld a, a                                          ; $7421: $7f
	ret z                                            ; $7422: $c8

	ld a, a                                          ; $7423: $7f
	ld [hl], a                                       ; $7424: $77
	inc c                                            ; $7425: $0c
	ld a, l                                          ; $7426: $7d
	ld a, [de]                                       ; $7427: $1a
	ld a, a                                          ; $7428: $7f
	cp $9e                                           ; $7429: $fe $9e
	jr nz, jr_023_7498                               ; $742b: $20 $6b

	cp $7f                                           ; $742d: $fe $7f
	ld c, $9c                                        ; $742f: $0e $9c
	cp $c1                                           ; $7431: $fe $c1
	cp [hl]                                          ; $7433: $be
	ld [hl], e                                       ; $7434: $73
	cp $9d                                           ; $7435: $fe $9d
	cp h                                             ; $7437: $bc
	jp $fe77                                         ; $7438: $c3 $77 $fe


	ld [hl], a                                       ; $743b: $77
	inc c                                            ; $743c: $0c
	ld d, a                                          ; $743d: $57
	cp $5f                                           ; $743e: $fe $5f
	ld b, $2f                                        ; $7440: $06 $2f
	nop                                              ; $7442: $00

jr_023_7443:
	sbc l                                            ; $7443: $9d
	cp $03                                           ; $7444: $fe $03
	ld c, a                                          ; $7446: $4f
	cp $7f                                           ; $7447: $fe $7f
	ld c, $99                                        ; $7449: $0e $99
	ld e, $f9                                        ; $744b: $1e $f9
	ld c, $f9                                        ; $744d: $0e $f9
	rrca                                             ; $744f: $0f
	ld hl, sp+$67                                    ; $7450: $f8 $67
	cp $7f                                           ; $7452: $fe $7f
	ld c, $8b                                        ; $7454: $0e $8b
	ei                                               ; $7456: $fb
	adc h                                            ; $7457: $8c
	rst FarCall                                          ; $7458: $f7
	adc h                                            ; $7459: $8c
	rst $38                                          ; $745a: $ff
	add h                                            ; $745b: $84
	rst $38                                          ; $745c: $ff
	add h                                            ; $745d: $84
	cp a                                             ; $745e: $bf
	call nz, $c4bf                                   ; $745f: $c4 $bf $c4
	cp l                                             ; $7462: $bd
	add $ff                                          ; $7463: $c6 $ff
	add b                                            ; $7465: $80
	ld a, a                                          ; $7466: $7f
	ret nz                                           ; $7467: $c0

	rst $38                                          ; $7468: $ff
	ld b, b                                          ; $7469: $40
	ld l, a                                          ; $746a: $6f
	cp $9d                                           ; $746b: $fe $9d
	cp a                                             ; $746d: $bf
	ld h, b                                          ; $746e: $60
	ld a, e                                          ; $746f: $7b
	ld a, a                                          ; $7470: $7f
	inc bc                                           ; $7471: $03
	ld a, $03                                        ; $7472: $3e $03
	cp $13                                           ; $7474: $fe $13
	cp $7f                                           ; $7476: $fe $7f
	ld c, $63                                        ; $7478: $0e $63
	cp $78                                           ; $747a: $fe $78
	ld h, b                                          ; $747c: $60
	sbc [hl]                                         ; $747d: $9e
	sub b                                            ; $747e: $90
	ld l, e                                          ; $747f: $6b
	ld a, [bc]                                       ; $7480: $0a
	sbc [hl]                                         ; $7481: $9e
	ld hl, $fe7b                                     ; $7482: $21 $7b $fe
	sbc [hl]                                         ; $7485: $9e
	ld h, c                                          ; $7486: $61
	ld [hl], e                                       ; $7487: $73
	cp $6f                                           ; $7488: $fe $6f
	ld a, [bc]                                       ; $748a: $0a
	ld e, a                                          ; $748b: $5f
	cp $03                                           ; $748c: $fe $03
	nop                                              ; $748e: $00
	ld c, e                                          ; $748f: $4b
	nop                                              ; $7490: $00
	sbc d                                            ; $7491: $9a
	rst $38                                          ; $7492: $ff
	inc bc                                           ; $7493: $03
	rst $38                                          ; $7494: $ff
	inc bc                                           ; $7495: $03
	db $fd                                           ; $7496: $fd
	ld e, e                                          ; $7497: $5b

jr_023_7498:
	cp $5f                                           ; $7498: $fe $5f
	ld b, $6f                                        ; $749a: $06 $6f
	cp $99                                           ; $749c: $fe $99
	ld a, l                                          ; $749e: $7d
	add $7b                                          ; $749f: $c6 $7b
	add $ff                                          ; $74a1: $c6 $ff
	ld b, d                                          ; $74a3: $42
	ld [hl], a                                       ; $74a4: $77
	cp $9d                                           ; $74a5: $fe $9d
	sbc $63                                          ; $74a7: $de $63
	ld [hl], a                                       ; $74a9: $77
	cp $6f                                           ; $74aa: $fe $6f
	ld a, a                                          ; $74ac: $7f
	sbc l                                            ; $74ad: $9d
	rst SubAFromDE                                          ; $74ae: $df
	jr nc, jr_023_7512                               ; $74af: $30 $61

	ld a, a                                          ; $74b1: $7f
	inc bc                                           ; $74b2: $03
	ld a, $4f                                        ; $74b3: $3e $4f
	cp $18                                           ; $74b5: $fe $18
	nop                                              ; $74b7: $00
	sbc $33                                          ; $74b8: $de $33
	sbc h                                            ; $74ba: $9c
	dec [hl]                                         ; $74bb: $35
	ld d, l                                          ; $74bc: $55
	ld d, h                                          ; $74bd: $54
	call c, Call_023_5f33                            ; $74be: $dc $33 $5f
	ld hl, sp-$62                                    ; $74c1: $f8 $9e
	ld d, e                                          ; $74c3: $53
	call c, $df33                                    ; $74c4: $dc $33 $df
	ld d, l                                          ; $74c7: $55
	ld c, a                                          ; $74c8: $4f
	ld hl, sp+$03                                    ; $74c9: $f8 $03
	rst $38                                          ; $74cb: $ff
	call $c733                                       ; $74cc: $cd $33 $c7
	add b                                            ; $74cf: $80
	sbc l                                            ; $74d0: $9d
	adc b                                            ; $74d1: $88
	ld [hl+], a                                      ; $74d2: $22
	ld l, a                                          ; $74d3: $6f
	cp $9d                                           ; $74d4: $fe $9d
	ld [hl], a                                       ; $74d6: $77
	db $dd                                           ; $74d7: $dd
	ld l, a                                          ; $74d8: $6f
	cp $47                                           ; $74d9: $fe $47
	ldh a, [hDisp1_OBP0]                                     ; $74db: $f0 $93
	adc a                                            ; $74dd: $8f
	scf                                              ; $74de: $37
	sbc a                                            ; $74df: $9f
	ccf                                              ; $74e0: $3f
	sbc a                                            ; $74e1: $9f
	ccf                                              ; $74e2: $3f
	xor a                                            ; $74e3: $af
	ccf                                              ; $74e4: $3f
	ld a, b                                          ; $74e5: $78
	ret c                                            ; $74e6: $d8

	ld [hl], b                                       ; $74e7: $70
	ret nc                                           ; $74e8: $d0

	ld a, e                                          ; $74e9: $7b
	cp $82                                           ; $74ea: $fe $82
	ldh [hDisp1_LCDC], a                                     ; $74ec: $e0 $8f
	and a                                            ; $74ee: $a7
	db $d3                                           ; $74ef: $d3
	ld hl, sp-$14                                    ; $74f0: $f8 $ec
	cp $ff                                           ; $74f2: $fe $ff
	ei                                               ; $74f4: $fb
	ld [hl], b                                       ; $74f5: $70

Call_023_74f6:
	ld a, b                                          ; $74f6: $78
	inc a                                            ; $74f7: $3c
	rra                                              ; $74f8: $1f
	rra                                              ; $74f9: $1f
	rrca                                             ; $74fa: $0f
	rlca                                             ; $74fb: $07
	rlca                                             ; $74fc: $07
	ld [hl], c                                       ; $74fd: $71
	cp c                                             ; $74fe: $b9
	cp a                                             ; $74ff: $bf
	and c                                            ; $7500: $a1
	rra                                              ; $7501: $1f
	rra                                              ; $7502: $1f
	dec e                                            ; $7503: $1d
	reti                                             ; $7504: $d9


	pop bc                                           ; $7505: $c1
	ld h, c                                          ; $7506: $61
	ld h, c                                          ; $7507: $61
	ld a, a                                          ; $7508: $7f
	db $dd                                           ; $7509: $dd
	rst $38                                          ; $750a: $ff
	add h                                            ; $750b: $84
	ld h, b                                          ; $750c: $60
	rra                                              ; $750d: $1f
	rlca                                             ; $750e: $07
	add c                                            ; $750f: $81
	ldh [$7c], a                                     ; $7510: $e0 $7c

jr_023_7512:
	inc e                                            ; $7512: $1c
	ld bc, $ffe0                                     ; $7513: $01 $e0 $ff
	rst $38                                          ; $7516: $ff
	ld a, [hl]                                       ; $7517: $7e
	rra                                              ; $7518: $1f
	add b                                            ; $7519: $80
	ldh [$fe], a                                     ; $751a: $e0 $fe
	dec sp                                           ; $751c: $3b
	rst FarCall                                          ; $751d: $f7
	db $dd                                           ; $751e: $dd
	ld sp, hl                                        ; $751f: $f9
	pop hl                                           ; $7520: $e1
	inc bc                                           ; $7521: $03
	rrca                                             ; $7522: $0f
	db $fd                                           ; $7523: $fd
	dec a                                            ; $7524: $3d
	ld sp, hl                                        ; $7525: $f9
	pop hl                                           ; $7526: $e1
	db $dd                                           ; $7527: $dd
	ld bc, $0380                                     ; $7528: $01 $80 $03
	rst FarCall                                          ; $752b: $f7
	db $eb                                           ; $752c: $eb
	ei                                               ; $752d: $fb
	dec de                                           ; $752e: $1b
	rlca                                             ; $752f: $07
	db $e4                                           ; $7530: $e4
	cp $5f                                           ; $7531: $fe $5f
	jr jr_023_7551                                   ; $7533: $18 $1c

	inc c                                            ; $7535: $0c
	inc c                                            ; $7536: $0c
	inc b                                            ; $7537: $04
	rlca                                             ; $7538: $07
	add e                                            ; $7539: $83
	db $e3                                           ; $753a: $e3
	rst $38                                          ; $753b: $ff
	cp a                                             ; $753c: $bf
	call c, $8360                                    ; $753d: $dc $60 $83
	sbc a                                            ; $7540: $9f
	ei                                               ; $7541: $fb
	ld l, a                                          ; $7542: $6f
	jr nz, jr_023_75a5                               ; $7543: $20 $60

	ld h, b                                          ; $7545: $60
	ret nz                                           ; $7546: $c0

	add b                                            ; $7547: $80
	add b                                            ; $7548: $80
	sub l                                            ; $7549: $95
	add a                                            ; $754a: $87
	sbc a                                            ; $754b: $9f
	rst $38                                          ; $754c: $ff
	ldh [rP1], a                                     ; $754d: $e0 $00
	rra                                              ; $754f: $1f
	rst $38                                          ; $7550: $ff

jr_023_7551:
	rst SubAFromDE                                          ; $7551: $df
	rst $38                                          ; $7552: $ff
	rra                                              ; $7553: $1f
	db $fc                                           ; $7554: $fc
	sbc c                                            ; $7555: $99
	ccf                                              ; $7556: $3f
	rst $38                                          ; $7557: $ff
	cp $ff                                           ; $7558: $fe $ff
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	sbc $ff                                          ; $755c: $de $ff
	sbc l                                            ; $755e: $9d
	xor a                                            ; $755f: $af
	ld d, l                                          ; $7560: $55
	db $fc                                           ; $7561: $fc
	sbc h                                            ; $7562: $9c
	rst $38                                          ; $7563: $ff
	rst SubAFromHL                                          ; $7564: $d7
	xor e                                            ; $7565: $ab
	sbc $39                                          ; $7566: $de $39
	rst SubAFromDE                                          ; $7568: $df
	ld sp, hl                                        ; $7569: $f9
	sbc h                                            ; $756a: $9c
	push af                                          ; $756b: $f5
	adc b                                            ; $756c: $88
	ld hl, sp-$24                                    ; $756d: $f8 $dc
	rrca                                             ; $756f: $0f
	sub a                                            ; $7570: $97
	ei                                               ; $7571: $fb
	rst FarCall                                          ; $7572: $f7
	rst SubAFromBC                                          ; $7573: $e7
	rra                                              ; $7574: $1f
	rla                                              ; $7575: $17
	ccf                                              ; $7576: $3f
	cpl                                              ; $7577: $2f
	ld l, a                                          ; $7578: $6f
	ld a, e                                          ; $7579: $7b
	rst GetHLinHL                                          ; $757a: $cf
	rst SubAFromDE                                          ; $757b: $df
	ld hl, sp-$22                                    ; $757c: $f8 $de
	ldh a, [$df]                                     ; $757e: $f0 $df
	ldh [$8e], a                                     ; $7580: $e0 $8e
	ret nz                                           ; $7582: $c0

jr_023_7583:
	add sp, -$1e                                     ; $7583: $e8 $e2
	add sp, -$0e                                     ; $7585: $e8 $f2
	ld hl, sp-$0e                                    ; $7587: $f8 $f2
	ld hl, sp-$06                                    ; $7589: $f8 $fa
	scf                                              ; $758b: $37
	dec a                                            ; $758c: $3d
	scf                                              ; $758d: $37
	dec e                                            ; $758e: $1d

Jump_023_758f:
	rla                                              ; $758f: $17
	dec e                                            ; $7590: $1d
	rrca                                             ; $7591: $0f
	dec c                                            ; $7592: $0d
	rlca                                             ; $7593: $07
	jr nz, @+$06                                     ; $7594: $20 $04

	nop                                              ; $7596: $00
	reti                                             ; $7597: $d9


	inc sp                                           ; $7598: $33
	adc $00                                          ; $7599: $ce $00
	sub c                                            ; $759b: $91
	nop                                              ; $759c: $00
	rst $38                                          ; $759d: $ff
	nop                                              ; $759e: $00
	rst $38                                          ; $759f: $ff
	inc b                                            ; $75a0: $04
	ei                                               ; $75a1: $fb
	jr nz, jr_023_7583                               ; $75a2: $20 $df

	adc b                                            ; $75a4: $88

jr_023_75a5:
	ld [hl], a                                       ; $75a5: $77
	nop                                              ; $75a6: $00
	rst $38                                          ; $75a7: $ff
	ld [hl+], a                                      ; $75a8: $22
	db $dd                                           ; $75a9: $dd
	ld [hl], a                                       ; $75aa: $77
	ldh a, [c]                                       ; $75ab: $f2
	ld a, a                                          ; $75ac: $7f
	cp $97                                           ; $75ad: $fe $97
	ld [$80f7], sp                                   ; $75af: $08 $f7 $80
	ld a, a                                          ; $75b2: $7f
	ld bc, $48fe                                     ; $75b3: $01 $fe $48
	or a                                             ; $75b6: $b7
	ld [hl], a                                       ; $75b7: $77
	xor $80                                          ; $75b8: $ee $80
	add hl, bc                                       ; $75ba: $09
	cp $05                                           ; $75bb: $fe $05
	cp $07                                           ; $75bd: $fe $07
	db $fc                                           ; $75bf: $fc
	ld h, $dd                                        ; $75c0: $26 $dd
	adc [hl]                                         ; $75c2: $8e
	ld [hl], l                                       ; $75c3: $75
	dec bc                                           ; $75c4: $0b
	db $fc                                           ; $75c5: $fc
	cpl                                              ; $75c6: $2f
	ret c                                            ; $75c7: $d8

	rrca                                             ; $75c8: $0f
	ld hl, sp-$73                                    ; $75c9: $f8 $8d
	ld [hl], e                                       ; $75cb: $73
	push bc                                          ; $75cc: $c5
	dec sp                                           ; $75cd: $3b
	rst SubAFromBC                                          ; $75ce: $e7
	add hl, de                                       ; $75cf: $19
	or $09                                           ; $75d0: $f6 $09
	ld a, [hl]                                       ; $75d2: $7e
	add c                                            ; $75d3: $81
	ld a, a                                          ; $75d4: $7f
	add b                                            ; $75d5: $80
	ccf                                              ; $75d6: $3f
	ret nz                                           ; $75d7: $c0

	rra                                              ; $75d8: $1f
	sbc h                                            ; $75d9: $9c
	ldh [$cf], a                                     ; $75da: $e0 $cf
	nop                                              ; $75dc: $00
	ld [hl], a                                       ; $75dd: $77
	cp $9d                                           ; $75de: $fe $9d
	rst SubAFromBC                                          ; $75e0: $e7
	add b                                            ; $75e1: $80
	ld [hl], a                                       ; $75e2: $77
	cp $99                                           ; $75e3: $fe $99
	ld [hl], e                                       ; $75e5: $73

jr_023_75e6:
	ret nz                                           ; $75e6: $c0

	ld [hl], e                                       ; $75e7: $73
	ret nz                                           ; $75e8: $c0

	db $fc                                           ; $75e9: $fc
	add b                                            ; $75ea: $80
	ld e, a                                          ; $75eb: $5f
	cp $93                                           ; $75ec: $fe $93
	ld hl, sp-$40                                    ; $75ee: $f8 $c0

jr_023_75f0:
	ldh a, [$c0]                                     ; $75f0: $f0 $c0
	jr jr_023_7613                                   ; $75f2: $18 $1f

	jr jr_023_7615                                   ; $75f4: $18 $1f

	dec bc                                           ; $75f6: $0b
	inc c                                            ; $75f7: $0c
	rrca                                             ; $75f8: $0f
	ld [$fe7b], sp                                   ; $75f9: $08 $7b $fe
	adc d                                            ; $75fc: $8a
	inc c                                            ; $75fd: $0c
	dec de                                           ; $75fe: $1b
	ld e, $1d                                        ; $75ff: $1e $1d
	rra                                              ; $7601: $1f
	sbc a                                            ; $7602: $9f
	ldh [$9f], a                                     ; $7603: $e0 $9f
	ldh [rVBK], a                                    ; $7605: $e0 $4f
	ldh a, [$cf]                                     ; $7607: $f0 $cf
	ld [hl], b                                       ; $7609: $70
	xor a                                            ; $760a: $af
	ld [hl], b                                       ; $760b: $70
	rst AddAOntoHL                                          ; $760c: $ef
	jr nc, jr_023_75e6                               ; $760d: $30 $d7

	jr c, @-$07                                      ; $760f: $38 $f7

	jr jr_023_768e                                   ; $7611: $18 $7b

jr_023_7613:
	add e                                            ; $7613: $83
	sbc d                                            ; $7614: $9a

jr_023_7615:
	inc c                                            ; $7615: $0c
	rst $38                                          ; $7616: $ff
	ld [$18ef], sp                                   ; $7617: $08 $ef $18
	ld a, e                                          ; $761a: $7b
	or $9a                                           ; $761b: $f6 $9a
	db $10                                           ; $761d: $10
	rst SubAFromDE                                          ; $761e: $df
	jr nc, @-$0f                                     ; $761f: $30 $ef

	jr nc, jr_023_7696                               ; $7621: $30 $73

	ld a, a                                          ; $7623: $7f
	dec de                                           ; $7624: $1b
	cp $98                                           ; $7625: $fe $98
	adc $03                                          ; $7627: $ce $03
	sbc [hl]                                         ; $7629: $9e
	inc bc                                           ; $762a: $03
	sbc d                                            ; $762b: $9a
	rlca                                             ; $762c: $07
	sbc h                                            ; $762d: $9c
	ld a, e                                          ; $762e: $7b
	cp $80                                           ; $762f: $fe $80
	sbc l                                            ; $7631: $9d
	rlca                                             ; $7632: $07
	dec a                                            ; $7633: $3d
	rlca                                             ; $7634: $07
	dec [hl]                                         ; $7635: $35
	rrca                                             ; $7636: $0f
	cp [hl]                                          ; $7637: $be
	pop bc                                           ; $7638: $c1
	ld a, [$fb85]                                    ; $7639: $fa $85 $fb
	add h                                            ; $763c: $84
	di                                               ; $763d: $f3
	adc h                                            ; $763e: $8c

Call_023_763f:
	db $eb                                           ; $763f: $eb
	sbc h                                            ; $7640: $9c
	ld l, e                                          ; $7641: $6b
	sbc h                                            ; $7642: $9c
	dec bc                                           ; $7643: $0b

jr_023_7644:
	db $fc                                           ; $7644: $fc
	ld e, $f9                                        ; $7645: $1e $f9
	ld b, b                                          ; $7647: $40
	rst $38                                          ; $7648: $ff
	ld b, b                                          ; $7649: $40
	rst $38                                          ; $764a: $ff
	ld c, b                                          ; $764b: $48
	rst FarCall                                          ; $764c: $f7
	ld b, b                                          ; $764d: $40
	rst $38                                          ; $764e: $ff
	pop bc                                           ; $764f: $c1
	sbc b                                            ; $7650: $98
	ld a, [hl]                                       ; $7651: $7e
	ret z                                            ; $7652: $c8

	ld [hl], a                                       ; $7653: $77
	and b                                            ; $7654: $a0
	ld a, a                                          ; $7655: $7f
	ldh [c], a                                       ; $7656: $e2
	dec a                                            ; $7657: $3d
	ccf                                              ; $7658: $3f
	jr nz, jr_023_75f0                               ; $7659: $20 $95

	db $10                                           ; $765b: $10
	rst AddAOntoHL                                          ; $765c: $ef
	add h                                            ; $765d: $84
	ld a, e                                          ; $765e: $7b
	nop                                              ; $765f: $00
	rst $38                                          ; $7660: $ff
	ld [bc], a                                       ; $7661: $02
	db $fd                                           ; $7662: $fd
	jr nz, jr_023_7644                               ; $7663: $20 $df

	ld [hl], a                                       ; $7665: $77
	xor $08                                          ; $7666: $ee $08
	nop                                              ; $7668: $00
	rst SubAFromDE                                          ; $7669: $df
	inc sp                                           ; $766a: $33
	sbc [hl]                                         ; $766b: $9e
	inc [hl]                                         ; $766c: $34
	call c, $a833                                    ; $766d: $dc $33 $a8
	add b                                            ; $7670: $80
	ld sp, hl                                        ; $7671: $f9
	reti                                             ; $7672: $d9


	rst $38                                          ; $7673: $ff
	ld b, a                                          ; $7674: $47
	ldh a, [$97]                                     ; $7675: $f0 $97
	ld b, $04                                        ; $7677: $06 $04
	ld c, $0f                                        ; $7679: $0e $0f
	inc de                                           ; $767b: $13
	ld de, $0908                                     ; $767c: $11 $08 $09
	jp c, $96ff                                      ; $767f: $da $ff $96

	cp $69                                           ; $7682: $fe $69

Call_023_7684:
	dec d                                            ; $7684: $15
	dec c                                            ; $7685: $0d
	add h                                            ; $7686: $84
	ld h, [hl]                                       ; $7687: $66
	or e                                             ; $7688: $b3

jr_023_7689:
	ld e, e                                          ; $7689: $5b
	ld a, [hl+]                                      ; $768a: $2a
	sbc $fe                                          ; $768b: $de $fe
	sbc d                                            ; $768d: $9a

jr_023_768e:
	ld a, a                                          ; $768e: $7f
	sbc a                                            ; $768f: $9f
	adc $e6                                          ; $7690: $ce $e6
	rst FarCall                                          ; $7692: $f7
	sbc $81                                          ; $7693: $de $81
	sbc d                                            ; $7695: $9a

jr_023_7696:
	pop bc                                           ; $7696: $c1
	ld sp, $9e9c                                     ; $7697: $31 $9c $9e
	sbc a                                            ; $769a: $9f
	sbc $7f                                          ; $769b: $de $7f
	adc l                                            ; $769d: $8d
	ccf                                              ; $769e: $3f
	rrca                                             ; $769f: $0f
	inc bc                                           ; $76a0: $03
	ld bc, $c000                                     ; $76a1: $01 $00 $c0
	add e                                            ; $76a4: $83
	rst GetHLinHL                                          ; $76a5: $cf
	rst $38                                          ; $76a6: $ff
	rst $38                                          ; $76a7: $ff
	pop af                                           ; $76a8: $f1
	ld hl, sp-$08                                    ; $76a9: $f8 $f8
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	inc bc                                           ; $76ad: $03
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	sbc $80                                          ; $76b0: $de $80
	sub a                                            ; $76b2: $97
	inc b                                            ; $76b3: $04
	ld b, h                                          ; $76b4: $44
	call nc, Call_023_4667                           ; $76b5: $d4 $67 $46
	adc $7d                                          ; $76b8: $ce $7d
	dec a                                            ; $76ba: $3d
	ld [hl], a                                       ; $76bb: $77
	ld hl, sp-$6d                                    ; $76bc: $f8 $93
	ld b, a                                          ; $76be: $47
	rst GetHLinHL                                          ; $76bf: $cf
	ld a, a                                          ; $76c0: $7f
	ccf                                              ; $76c1: $3f
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	rrca                                             ; $76c4: $0f
	rst $38                                          ; $76c5: $ff
	ccf                                              ; $76c6: $3f
	jr nc, jr_023_7689                               ; $76c7: $30 $c0

	rst GetHLinHL                                          ; $76c9: $cf
	ld a, e                                          ; $76ca: $7b
	ld hl, sp-$64                                    ; $76cb: $f8 $9c
	ldh a, [$c0]                                     ; $76cd: $f0 $c0
	ret nz                                           ; $76cf: $c0

	db $fd                                           ; $76d0: $fd
	sbc c                                            ; $76d1: $99
	pop hl                                           ; $76d2: $e1
	rst $38                                          ; $76d3: $ff
	cp $3f                                           ; $76d4: $fe $3f
	dec b                                            ; $76d6: $05
	rst JumpTable                                          ; $76d7: $c7
	ld a, e                                          ; $76d8: $7b
	ld hl, sp-$69                                    ; $76d9: $f8 $97
	rra                                              ; $76db: $1f
	inc bc                                           ; $76dc: $03
	ld [bc], a                                       ; $76dd: $02
	ld b, $04                                        ; $76de: $06 $04
	rst $38                                          ; $76e0: $ff
	rst $38                                          ; $76e1: $ff
	ld a, a                                          ; $76e2: $7f
	call c, $deff                                    ; $76e3: $dc $ff $de
	add b                                            ; $76e6: $80
	db $fc                                           ; $76e7: $fc
	sbc l                                            ; $76e8: $9d
	ldh [$f3], a                                     ; $76e9: $e0 $f3
	db $db                                           ; $76eb: $db
	rst $38                                          ; $76ec: $ff
	sbc l                                            ; $76ed: $9d
	rra                                              ; $76ee: $1f
	inc c                                            ; $76ef: $0c
	ei                                               ; $76f0: $fb
	rst SubAFromDE                                          ; $76f1: $df
	di                                               ; $76f2: $f3
	sbc c                                            ; $76f3: $99
	rst SubAFromBC                                          ; $76f4: $e7
	and $e7                                          ; $76f5: $e6 $e7
	rst GetHLinHL                                          ; $76f7: $cf
	call $fece                                       ; $76f8: $cd $ce $fe
	sbc $01                                          ; $76fb: $de $01
	rst SubAFromDE                                          ; $76fd: $df
	inc bc                                           ; $76fe: $03
	adc a                                            ; $76ff: $8f
	ld l, [hl]                                       ; $7700: $6e
	or [hl]                                          ; $7701: $b6
	cp a                                             ; $7702: $bf
	xor a                                            ; $7703: $af
	ld a, $5f                                        ; $7704: $3e $5f
	ld a, a                                          ; $7706: $7f
	ld a, [hl]                                       ; $7707: $7e
	db $db                                           ; $7708: $db
	db $db                                           ; $7709: $db
	pop de                                           ; $770a: $d1
	pop af                                           ; $770b: $f1
	pop hl                                           ; $770c: $e1
	ldh [$c0], a                                     ; $770d: $e0 $c0
	pop bc                                           ; $770f: $c1
	db $fd                                           ; $7710: $fd
	db $dd                                           ; $7711: $dd
	add b                                            ; $7712: $80
	daa                                              ; $7713: $27
	jr nc, jr_023_775d                               ; $7714: $30 $47

	ldh a, [$09]                                     ; $7716: $f0 $09
	nop                                              ; $7718: $00
	rst SubAFromDE                                          ; $7719: $df
	inc sp                                           ; $771a: $33
	sbc l                                            ; $771b: $9d
	inc [hl]                                         ; $771c: $34
	ld [hl], e                                       ; $771d: $73
	db $dd                                           ; $771e: $dd
	inc sp                                           ; $771f: $33
	sbc b                                            ; $7720: $98
	add b                                            ; $7721: $80
	ld sp, hl                                        ; $7722: $f9
	reti                                             ; $7723: $d9


	rst $38                                          ; $7724: $ff
	inc sp                                           ; $7725: $33
	ldh a, [$9c]                                     ; $7726: $f0 $9c
	ld bc, $0302                                     ; $7728: $01 $02 $03
	ld h, e                                          ; $772b: $63
	ldh a, [hDisp1_OBP0]                                     ; $772c: $f0 $93
	rrca                                             ; $772e: $0f
	inc a                                            ; $772f: $3c
	ld b, [hl]                                       ; $7730: $46
	and [hl]                                         ; $7731: $a6
	inc de                                           ; $7732: $13
	dec bc                                           ; $7733: $0b
	adc e                                            ; $7734: $8b
	rst $38                                          ; $7735: $ff
	rst $38                                          ; $7736: $ff
	di                                               ; $7737: $f3
	ld sp, hl                                        ; $7738: $f9
	ld sp, hl                                        ; $7739: $f9
	sbc $fc                                          ; $773a: $de $fc
	sbc [hl]                                         ; $773c: $9e
	db $e3                                           ; $773d: $e3
	sbc $02                                          ; $773e: $de $02
	db $dd                                           ; $7740: $dd
	ld bc, $ff9e                                     ; $7741: $01 $9e $ff
	sbc $fe                                          ; $7744: $de $fe
	db $dd                                           ; $7746: $dd
	rst $38                                          ; $7747: $ff
	add b                                            ; $7748: $80
	ldh [rSB], a                                     ; $7749: $e0 $01
	ccf                                              ; $774b: $3f
	ld hl, sp-$80                                    ; $774c: $f8 $80
	rrca                                             ; $774e: $0f
	rst $38                                          ; $774f: $ff
	ldh a, [$c0]                                     ; $7750: $f0 $c0
	nop                                              ; $7752: $00
	rrca                                             ; $7753: $0f

jr_023_7754:
	ld [hl], b                                       ; $7754: $70
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	rra                                              ; $7757: $1f
	nop                                              ; $7758: $00
	ccf                                              ; $7759: $3f
	rst $38                                          ; $775a: $ff
	sbc a                                            ; $775b: $9f
	rrca                                             ; $775c: $0f

jr_023_775d:
	ld h, a                                          ; $775d: $67
	rst FarCall                                          ; $775e: $f7
	rst $38                                          ; $775f: $ff
	rlca                                             ; $7760: $07
	jr jr_023_7754                                   ; $7761: $18 $f1

	add hl, bc                                       ; $7763: $09
	ld b, $06                                        ; $7764: $06 $06
	db $f4                                           ; $7766: $f4
	inc c                                            ; $7767: $0c
	sub l                                            ; $7768: $95
	inc b                                            ; $7769: $04
	rst $38                                          ; $776a: $ff
	rst $38                                          ; $776b: $ff
	db $fc                                           ; $776c: $fc
	ldh [$f0], a                                     ; $776d: $e0 $f0
	ldh a, [$f8]                                     ; $776f: $f0 $f8
	sbc b                                            ; $7771: $98
	add b                                            ; $7772: $80
	ld a, [$f873]                                    ; $7773: $fa $73 $f8
	sbc l                                            ; $7776: $9d
	jr @+$3f                                         ; $7777: $18 $3d

	ld h, e                                          ; $7779: $63
	adc b                                            ; $777a: $88
	rst SubAFromDE                                          ; $777b: $df
	ldh [$df], a                                     ; $777c: $e0 $df
	ld h, b                                          ; $777e: $60
	sbc c                                            ; $777f: $99
	ld b, b                                          ; $7780: $40
	ld e, [hl]                                       ; $7781: $5e
	cp a                                             ; $7782: $bf
	cp a                                             ; $7783: $bf
	rst $38                                          ; $7784: $ff
	rst $38                                          ; $7785: $ff
	sbc $7f                                          ; $7786: $de $7f
	sbc h                                            ; $7788: $9c
	ld h, c                                          ; $7789: $61
	ret nz                                           ; $778a: $c0

	ret nz                                           ; $778b: $c0

	ld l, e                                          ; $778c: $6b
	jp c, $c09e                                      ; $778d: $da $9e $c0

	db $db                                           ; $7790: $db
	rst $38                                          ; $7791: $ff
	sub l                                            ; $7792: $95
	ld a, a                                          ; $7793: $7f
	ccf                                              ; $7794: $3f
	ldh a, [$0e]                                     ; $7795: $f0 $0e
	ld bc, $0303                                     ; $7797: $01 $03 $03
	ld b, $09                                        ; $779a: $06 $09
	add hl, sp                                       ; $779c: $39
	sbc $ff                                          ; $779d: $de $ff
	rst SubAFromDE                                          ; $779f: $df
	db $fc                                           ; $77a0: $fc
	sbc [hl]                                         ; $77a1: $9e
	ld sp, hl                                        ; $77a2: $f9
	ld a, e                                          ; $77a3: $7b
	sbc c                                            ; $77a4: $99
	sbc b                                            ; $77a5: $98
	nop                                              ; $77a6: $00
	ret nz                                           ; $77a7: $c0

	or b                                             ; $77a8: $b0
	db $10                                           ; $77a9: $10
	jr c, jr_023_7828                                ; $77aa: $38 $7c

	ld [hl], h                                       ; $77ac: $74
	ld [hl], a                                       ; $77ad: $77
	db $e3                                           ; $77ae: $e3
	sbc e                                            ; $77af: $9b
	rst $38                                          ; $77b0: $ff
	rst AddAOntoHL                                          ; $77b1: $ef
	rst JumpTable                                          ; $77b2: $c7
	rst GetHLinHL                                          ; $77b3: $cf
	inc bc                                           ; $77b4: $03
	jr nc, jr_023_7802                               ; $77b5: $30 $4b

	ldh a, [$0a]                                     ; $77b7: $f0 $0a
	nop                                              ; $77b9: $00
	rst SubAFromDE                                          ; $77ba: $df
	inc sp                                           ; $77bb: $33
	sbc h                                            ; $77bc: $9c
	ld [hl], h                                       ; $77bd: $74
	ld b, h                                          ; $77be: $44
	ld b, e                                          ; $77bf: $43
	sbc $33                                          ; $77c0: $de $33
	ld h, b                                          ; $77c2: $60
	add b                                            ; $77c3: $80
	ld sp, hl                                        ; $77c4: $f9
	reti                                             ; $77c5: $d9


	rst $38                                          ; $77c6: $ff
	inc bc                                           ; $77c7: $03
	ldh a, [$33]                                     ; $77c8: $f0 $33
	ldh a, [$9d]                                     ; $77ca: $f0 $9d

jr_023_77cc:
	ld bc, $d91f                                     ; $77cc: $01 $1f $d9
	rst $38                                          ; $77cf: $ff
	sub d                                            ; $77d0: $92
	ld [bc], a                                       ; $77d1: $02
	inc c                                            ; $77d2: $0c
	db $10                                           ; $77d3: $10
	ld hl, $8743                                     ; $77d4: $21 $43 $87
	rrca                                             ; $77d7: $0f
	inc a                                            ; $77d8: $3c
	cp $fc                                           ; $77d9: $fe $fc
	ldh a, [$e1]                                     ; $77db: $f0 $e1
	jp $f87b                                         ; $77dd: $c3 $7b $f8


	sub h                                            ; $77e0: $94
	rra                                              ; $77e1: $1f
	ld a, a                                          ; $77e2: $7f
	rst $38                                          ; $77e3: $ff
	rst $38                                          ; $77e4: $ff
	rst JumpTable                                          ; $77e5: $c7
	rlca                                             ; $77e6: $07
	rst JumpTable                                          ; $77e7: $c7
	rst AddAOntoHL                                          ; $77e8: $ef
	ld [bc], a                                       ; $77e9: $02
	inc e                                            ; $77ea: $1c
	ld a, [hl]                                       ; $77eb: $7e
	sbc $ff                                          ; $77ec: $de $ff
	sbc b                                            ; $77ee: $98
	db $fd                                           ; $77ef: $fd
	jr c, jr_023_77f2                                ; $77f0: $38 $00

jr_023_77f2:
	add b                                            ; $77f2: $80
	ret nz                                           ; $77f3: $c0

	ldh [$f0], a                                     ; $77f4: $e0 $f0
	ld l, a                                          ; $77f6: $6f
	ret z                                            ; $77f7: $c8

	sub a                                            ; $77f8: $97
	add b                                            ; $77f9: $80
	ldh [$f8], a                                     ; $77fa: $e0 $f8
	rst $38                                          ; $77fc: $ff
	db $fc                                           ; $77fd: $fc
	nop                                              ; $77fe: $00
	inc bc                                           ; $77ff: $03
	rlca                                             ; $7800: $07
	ld a, e                                          ; $7801: $7b

jr_023_7802:
	db $dd                                           ; $7802: $dd
	sub a                                            ; $7803: $97
	di                                               ; $7804: $f3
	pop bc                                           ; $7805: $c1
	nop                                              ; $7806: $00
	ld bc, $0c03                                     ; $7807: $01 $03 $0c
	jr nc, jr_023_77cc                               ; $780a: $30 $c0

	ld a, e                                          ; $780c: $7b
	db $eb                                           ; $780d: $eb
	rst SubAFromDE                                          ; $780e: $df
	add b                                            ; $780f: $80
	sbc d                                            ; $7810: $9a
	ldh a, [$9c]                                     ; $7811: $f0 $9c
	jp $e0e0                                         ; $7813: $c3 $e0 $e0


	ld d, e                                          ; $7816: $53
	and b                                            ; $7817: $a0
	sbc h                                            ; $7818: $9c
	add b                                            ; $7819: $80
	ld a, b                                          ; $781a: $78
	rlca                                             ; $781b: $07
	inc bc                                           ; $781c: $03
	ld [hl], b                                       ; $781d: $70
	inc bc                                           ; $781e: $03
	ldh a, [$2f]                                     ; $781f: $f0 $2f
	ldh a, [$0a]                                     ; $7821: $f0 $0a
	nop                                              ; $7823: $00
	rst SubAFromDE                                          ; $7824: $df
	inc sp                                           ; $7825: $33
	sbc h                                            ; $7826: $9c
	ld [hl], a                                       ; $7827: $77

jr_023_7828:
	ld b, h                                          ; $7828: $44
	ld b, e                                          ; $7829: $43
	sbc $33                                          ; $782a: $de $33
	ld [hl], e                                       ; $782c: $73
	add b                                            ; $782d: $80
	ld sp, hl                                        ; $782e: $f9
	reti                                             ; $782f: $d9


	rst $38                                          ; $7830: $ff
	rlca                                             ; $7831: $07
	ldh a, [$df]                                     ; $7832: $f0 $df
	add c                                            ; $7834: $81
	ld c, a                                          ; $7835: $4f
	ldh a, [$9a]                                     ; $7836: $f0 $9a
	ld sp, $0c18                                     ; $7838: $31 $18 $0c
	ld b, $01                                        ; $783b: $06 $01
	ld e, e                                          ; $783d: $5b
	ldh a, [$9c]                                     ; $783e: $f0 $9c
	cp e                                             ; $7840: $bb
	db $db                                           ; $7841: $db
	add hl, bc                                       ; $7842: $09
	ld [hl], a                                       ; $7843: $77
	pop af                                           ; $7844: $f1
	sbc h                                            ; $7845: $9c
	ld bc, $fefe                                     ; $7846: $01 $fe $fe
	db $db                                           ; $7849: $db
	rst $38                                          ; $784a: $ff
	rst SubAFromDE                                          ; $784b: $df
	ldh [$df], a                                     ; $784c: $e0 $df
	ldh a, [$9b]                                     ; $784e: $f0 $9b
	ld hl, sp+$78                                    ; $7850: $f8 $78
	ld a, h                                          ; $7852: $7c
	add $fd                                          ; $7853: $c6 $fd
	adc [hl]                                         ; $7855: $8e
	add b                                            ; $7856: $80
	ret nz                                           ; $7857: $c0

	db $fc                                           ; $7858: $fc
	jp nz, $030e                                     ; $7859: $c2 $0e $03

	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	ld a, [de]                                       ; $785e: $1a
	nop                                              ; $785f: $00
	rlca                                             ; $7860: $07
	ld [bc], a                                       ; $7861: $02
	ld [bc], a                                       ; $7862: $02
	ld b, $00                                        ; $7863: $06 $00
	nop                                              ; $7865: $00
	dec c                                            ; $7866: $0d
	ld a, [$c09e]                                    ; $7867: $fa $9e $c0
	ld a, [$809e]                                    ; $786a: $fa $9e $80
	cp $df                                           ; $786d: $fe $df
	inc bc                                           ; $786f: $03
	rst SubAFromDE                                          ; $7870: $df
	dec b                                            ; $7871: $05
	adc b                                            ; $7872: $88
	ld [$2010], sp                                   ; $7873: $08 $10 $20
	ld b, c                                          ; $7876: $41
	inc bc                                           ; $7877: $03
	inc bc                                           ; $7878: $03
	rlca                                             ; $7879: $07
	rlca                                             ; $787a: $07
	rrca                                             ; $787b: $0f
	rra                                              ; $787c: $1f
	ccf                                              ; $787d: $3f
	ld a, a                                          ; $787e: $7f
	dec l                                            ; $787f: $2d
	ld [hl], a                                       ; $7880: $77
	cp e                                             ; $7881: $bb
	scf                                              ; $7882: $37
	ld h, [hl]                                       ; $7883: $66
	ld c, h                                          ; $7884: $4c
	sub b                                            ; $7885: $90
	nop                                              ; $7886: $00
	rst FarCall                                          ; $7887: $f7
	xor $ee                                          ; $7888: $ee $ee
	call c, $9aff                                    ; $788a: $dc $ff $9a
	sbc $dd                                          ; $788d: $de $dd
	cp d                                             ; $788f: $ba
	jr nc, jr_023_78f2                               ; $7890: $30 $60

	ld a, e                                          ; $7892: $7b
	rst GetHLinHL                                          ; $7893: $cf
	sbc l                                            ; $7894: $9d
	ld [hl], e                                       ; $7895: $73
	ld [hl], a                                       ; $7896: $77
	db $db                                           ; $7897: $db
	rst $38                                          ; $7898: $ff
	sbc [hl]                                         ; $7899: $9e
	and b                                            ; $789a: $a0
	inc bc                                           ; $789b: $03

Call_023_789c:
	ld b, b                                          ; $789c: $40
	rrca                                             ; $789d: $0f
	ldh a, [$0b]                                     ; $789e: $f0 $0b
	nop                                              ; $78a0: $00
	rst SubAFromDE                                          ; $78a1: $df
	inc sp                                           ; $78a2: $33
	sbc c                                            ; $78a3: $99
	scf                                              ; $78a4: $37
	ld b, h                                          ; $78a5: $44
	ld b, e                                          ; $78a6: $43
	ld [hl], a                                       ; $78a7: $77
	inc sp                                           ; $78a8: $33
	inc sp                                           ; $78a9: $33
	and l                                            ; $78aa: $a5
	add b                                            ; $78ab: $80

Call_023_78ac:
	ld sp, hl                                        ; $78ac: $f9
	reti                                             ; $78ad: $d9


	rst $38                                          ; $78ae: $ff
	ld b, a                                          ; $78af: $47
	ldh a, [$da]                                     ; $78b0: $f0 $da
	ld bc, $f063                                     ; $78b2: $01 $63 $f0
	db $db                                           ; $78b5: $db
	rst $38                                          ; $78b6: $ff
	sbc d                                            ; $78b7: $9a
	db $d3                                           ; $78b8: $d3
	sub e                                            ; $78b9: $93
	ld a, [hl+]                                      ; $78ba: $2a
	ld a, [hl+]                                      ; $78bb: $2a
	add hl, hl                                       ; $78bc: $29
	sbc $6d                                          ; $78bd: $de $6d

Call_023_78bf:
	sbc l                                            ; $78bf: $9d

Jump_023_78c0:
	ld a, [hl]                                       ; $78c0: $7e
	cp $dc                                           ; $78c1: $fe $dc
	rst $38                                          ; $78c3: $ff
	add b                                            ; $78c4: $80
	rst AddAOntoHL                                          ; $78c5: $ef
	rst FarCall                                          ; $78c6: $f7
	di                                               ; $78c7: $f3
	dec h                                            ; $78c8: $25
	dec h                                            ; $78c9: $25
	inc hl                                           ; $78ca: $23
	inc hl                                           ; $78cb: $23
	inc sp                                           ; $78cc: $33
	cp c                                             ; $78cd: $b9
	sbc l                                            ; $78ce: $9d
	sbc $fb                                          ; $78cf: $de $fb
	rst $38                                          ; $78d1: $ff
	rst $38                                          ; $78d2: $ff
	cp $ff                                           ; $78d3: $fe $ff
	ld a, a                                          ; $78d5: $7f
	cp a                                             ; $78d6: $bf
	rst SubAFromDE                                          ; $78d7: $df
	ld d, a                                          ; $78d8: $57
	ld d, e                                          ; $78d9: $53
	add hl, hl                                       ; $78da: $29
	xor c                                            ; $78db: $a9
	sbc b                                            ; $78dc: $98
	call nz, $fce4                                   ; $78dd: $c4 $e4 $fc
	pop hl                                           ; $78e0: $e1
	ld e, b                                          ; $78e1: $58
	ld c, a                                          ; $78e2: $4f
	ld l, l                                          ; $78e3: $6d
	sub [hl]                                         ; $78e4: $96
	add d                                            ; $78e5: $82
	rst $38                                          ; $78e6: $ff
	ld [$e1d5], a                                    ; $78e7: $ea $d5 $e1
	db $fd                                           ; $78ea: $fd
	ld a, a                                          ; $78eb: $7f
	cpl                                              ; $78ec: $2f
	ld l, $fe                                        ; $78ed: $2e $fe
	sub [hl]                                         ; $78ef: $96
	rra                                              ; $78f0: $1f
	ld [hl], c                                       ; $78f1: $71

jr_023_78f2:
	ld h, b                                          ; $78f2: $60
	ld b, [hl]                                       ; $78f3: $46
	cpl                                              ; $78f4: $2f
	ld e, a                                          ; $78f5: $5f
	cp a                                             ; $78f6: $bf
	inc e                                            ; $78f7: $1c
	ld h, c                                          ; $78f8: $61
	ei                                               ; $78f9: $fb
	sub e                                            ; $78fa: $93
	ld [bc], a                                       ; $78fb: $02
	db $e3                                           ; $78fc: $e3
	ld a, [$816a]                                    ; $78fd: $fa $6a $81
	ld d, c                                          ; $7900: $51
	db $eb                                           ; $7901: $eb
	ld d, l                                          ; $7902: $55
	nop                                              ; $7903: $00
	sbc e                                            ; $7904: $9b
	jp Jump_023_7b23                                 ; $7905: $c3 $23 $7b


	sbc d                                            ; $7908: $9a
	rst $38                                          ; $7909: $ff
	add b                                            ; $790a: $80
	adc a                                            ; $790b: $8f
	ret z                                            ; $790c: $c8

	ld [$1068], a                                    ; $790d: $ea $68 $10
	ld hl, sp+$51                                    ; $7910: $f8 $51
	and c                                            ; $7912: $a1
	adc e                                            ; $7913: $8b
	ld [$78f8], a                                    ; $7914: $ea $f8 $78
	ld [hl], b                                       ; $7917: $70
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	ld bc, $eefe                                     ; $791a: $01 $fe $ee
	db $fc                                           ; $791d: $fc
	db $fc                                           ; $791e: $fc
	ld hl, sp-$08                                    ; $791f: $f8 $f8
	pop af                                           ; $7921: $f1
	di                                               ; $7922: $f3
	jp Jump_023_5753                                 ; $7923: $c3 $53 $57


	ld h, a                                          ; $7926: $67
	rst GetHLinHL                                          ; $7927: $cf
	sbc a                                            ; $7928: $9f
	cp a                                             ; $7929: $bf
	adc h                                            ; $792a: $8c
	rst $38                                          ; $792b: $ff
	ld d, [hl]                                       ; $792c: $56
	ld c, e                                          ; $792d: $4b
	sub l                                            ; $792e: $95
	or [hl]                                          ; $792f: $b6
	xor a                                            ; $7930: $af
	xor e                                            ; $7931: $ab
	ld e, l                                          ; $7932: $5d
	or a                                             ; $7933: $b7
	ei                                               ; $7934: $fb
	db $fd                                           ; $7935: $fd
	xor $cf                                          ; $7936: $ee $cf
	db $dd                                           ; $7938: $dd
	db $dd                                           ; $7939: $dd
	cp e                                             ; $793a: $bb
	ld a, e                                          ; $793b: $7b
	cp $fe                                           ; $793c: $fe $fe
	ld [hl], a                                       ; $793e: $77
	ldh [hDisp1_WY], a                                     ; $793f: $e0 $95
	ld hl, sp-$10                                    ; $7941: $f8 $f0

Jump_023_7943:
	sub e                                            ; $7943: $93
	db $d3                                           ; $7944: $d3
	and a                                            ; $7945: $a7
	rra                                              ; $7946: $1f
	xor a                                            ; $7947: $af
	xor a                                            ; $7948: $af
	rst SubAFromDE                                          ; $7949: $df
	rst SubAFromDE                                          ; $794a: $df
	rlca                                             ; $794b: $07
	jr nc, jr_023_7995                               ; $794c: $30 $47

	ldh a, [$0b]                                     ; $794e: $f0 $0b
	nop                                              ; $7950: $00
	sub a                                            ; $7951: $97
	inc sp                                           ; $7952: $33
	scf                                              ; $7953: $37
	ld [hl], h                                       ; $7954: $74
	ld b, h                                          ; $7955: $44
	ld b, h                                          ; $7956: $44
	ld b, [hl]                                       ; $7957: $46
	ld [hl], e                                       ; $7958: $73
	inc sp                                           ; $7959: $33
	db $d3                                           ; $795a: $d3
	add b                                            ; $795b: $80
	rst SubAFromDE                                          ; $795c: $df
	ld [bc], a                                       ; $795d: $02
	ei                                               ; $795e: $fb
	reti                                             ; $795f: $d9


	rst $38                                          ; $7960: $ff
	ld sp, hl                                        ; $7961: $f9
	reti                                             ; $7962: $d9


	rst $38                                          ; $7963: $ff
	add b                                            ; $7964: $80
	ccf                                              ; $7965: $3f
	rra                                              ; $7966: $1f
	inc bc                                           ; $7967: $03
	inc bc                                           ; $7968: $03
	rlca                                             ; $7969: $07
	rrca                                             ; $796a: $0f
	ccf                                              ; $796b: $3f
	ld a, b                                          ; $796c: $78
	db $e3                                           ; $796d: $e3
	rst $38                                          ; $796e: $ff
	rst $38                                          ; $796f: $ff
	cp $fc                                           ; $7970: $fe $fc
	ld hl, sp-$19                                    ; $7972: $f8 $e7
	rst $38                                          ; $7974: $ff
	xor h                                            ; $7975: $ac
	ld hl, sp-$78                                    ; $7976: $f8 $88
	adc l                                            ; $7978: $8d
	dec l                                            ; $7979: $2d
	xor $ef                                          ; $797a: $ee $ef
	rst GetHLinHL                                          ; $797c: $cf
	ld a, a                                          ; $797d: $7f
	rst $38                                          ; $797e: $ff
	rst $38                                          ; $797f: $ff
	ld a, e                                          ; $7980: $7b
	db $db                                           ; $7981: $db
	sbc e                                            ; $7982: $9b
	sbc d                                            ; $7983: $9a
	sub c                                            ; $7984: $91
	cp d                                             ; $7985: $ba
	inc d                                            ; $7986: $14
	ld [hl+], a                                      ; $7987: $22
	ld h, c                                          ; $7988: $61
	ld h, b                                          ; $7989: $60
	ldh [$f4], a                                     ; $798a: $e0 $f4
	call nc, $ffd5                                   ; $798c: $d4 $d5 $ff
	rst $38                                          ; $798f: $ff
	cp a                                             ; $7990: $bf
	cp a                                             ; $7991: $bf
	ccf                                              ; $7992: $3f
	sbc $2f                                          ; $7993: $de $2f

jr_023_7995:
	sbc d                                            ; $7995: $9a
	ld l, a                                          ; $7996: $6f
	daa                                              ; $7997: $27
	scf                                              ; $7998: $37
	xor d                                            ; $7999: $aa
	ld l, a                                          ; $799a: $6f
	sbc $ff                                          ; $799b: $de $ff
	sub e                                            ; $799d: $93
	ld hl, sp-$04                                    ; $799e: $f8 $fc
	db $fc                                           ; $79a0: $fc
	rst $38                                          ; $79a1: $ff
	rst FarCall                                          ; $79a2: $f7
	ldh a, [c]                                       ; $79a3: $f2
	sub b                                            ; $79a4: $90
	jr nc, @-$63                                     ; $79a5: $30 $9b

	sub l                                            ; $79a7: $95
	ld e, l                                          ; $79a8: $5d
	rst SubAFromDE                                          ; $79a9: $df
	ld a, e                                          ; $79aa: $7b
	db $e4                                           ; $79ab: $e4
	add b                                            ; $79ac: $80
	ld [hl], e                                       ; $79ad: $73
	cp $ff                                           ; $79ae: $fe $ff
	rst $38                                          ; $79b0: $ff
	di                                               ; $79b1: $f3
	ld sp, $7f1e                                     ; $79b2: $31 $1e $7f
	rst FarCall                                          ; $79b5: $f7
	add c                                            ; $79b6: $81
	pop bc                                           ; $79b7: $c1
	pop bc                                           ; $79b8: $c1
	pop hl                                           ; $79b9: $e1
	pop af                                           ; $79ba: $f1
	ld sp, hl                                        ; $79bb: $f9
	ld a, h                                          ; $79bc: $7c
	cp $ff                                           ; $79bd: $fe $ff
	ld a, a                                          ; $79bf: $7f
	ld a, a                                          ; $79c0: $7f

Jump_023_79c1:
	ccf                                              ; $79c1: $3f
	sbc a                                            ; $79c2: $9f
	rst GetHLinHL                                          ; $79c3: $cf
	add a                                            ; $79c4: $87
	jp $3439                                         ; $79c5: $c3 $39 $34


	xor [hl]                                         ; $79c8: $ae
	cp a                                             ; $79c9: $bf
	rst $38                                          ; $79ca: $ff
	ei                                               ; $79cb: $fb
	rst SubAFromDE                                          ; $79cc: $df
	rst $38                                          ; $79cd: $ff
	rst SubAFromDE                                          ; $79ce: $df
	rst AddAOntoHL                                          ; $79cf: $ef
	add d                                            ; $79d0: $82
	rst $38                                          ; $79d1: $ff
	pop hl                                           ; $79d2: $e1
	ld h, b                                          ; $79d3: $60
	ld h, a                                          ; $79d4: $67
	daa                                              ; $79d5: $27
	xor a                                            ; $79d6: $af
	ldh a, [$9c]                                     ; $79d7: $f0 $9c
	rst SubAFromBC                                          ; $79d9: $e7
	ld sp, hl                                        ; $79da: $f9
	rst $38                                          ; $79db: $ff
	rst $38                                          ; $79dc: $ff
	ei                                               ; $79dd: $fb
	ld e, $1f                                        ; $79de: $1e $1f
	rst AddAOntoHL                                          ; $79e0: $ef
	ei                                               ; $79e1: $fb
	sbc [hl]                                         ; $79e2: $9e
	ld b, $e0                                        ; $79e3: $06 $e0
	db $fc                                           ; $79e5: $fc
	rra                                              ; $79e6: $1f
	ld b, d                                          ; $79e7: $42
	ld h, d                                          ; $79e8: $62
	ld sp, $fcd9                                     ; $79e9: $31 $d9 $fc
	rst $38                                          ; $79ec: $ff
	or $7b                                           ; $79ed: $f6 $7b
	pop bc                                           ; $79ef: $c1
	ld a, e                                          ; $79f0: $7b
	ld [hl], h                                       ; $79f1: $74
	add b                                            ; $79f2: $80
	daa                                              ; $79f3: $27
	dec sp                                           ; $79f4: $3b
	inc hl                                           ; $79f5: $23
	cp [hl]                                          ; $79f6: $be
	sub l                                            ; $79f7: $95
	or [hl]                                          ; $79f8: $b6
	rst FarCall                                          ; $79f9: $f7
	reti                                             ; $79fa: $d9


	ret c                                            ; $79fb: $d8

	db $ec                                           ; $79fc: $ec
	ld e, h                                          ; $79fd: $5c
	db $fd                                           ; $79fe: $fd
	cp $df                                           ; $79ff: $fe $df
	rst SubAFromDE                                          ; $7a01: $df
	rst AddAOntoHL                                          ; $7a02: $ef
	rst AddAOntoHL                                          ; $7a03: $ef
	rst FarCall                                          ; $7a04: $f7
	rst FarCall                                          ; $7a05: $f7
	ld l, h                                          ; $7a06: $6c
	inc hl                                           ; $7a07: $23
	sub e                                            ; $7a08: $93
	rrca                                             ; $7a09: $0f
	push af                                          ; $7a0a: $f5
	sub a                                            ; $7a0b: $97
	or l                                             ; $7a0c: $b5
	cp a                                             ; $7a0d: $bf
	sbc a                                            ; $7a0e: $9f
	rst JumpTable                                          ; $7a0f: $c7
	ld h, c                                          ; $7a10: $61
	rst $38                                          ; $7a11: $ff
	sbc c                                            ; $7a12: $99
	ei                                               ; $7a13: $fb
	ld sp, hl                                        ; $7a14: $f9
	db $db                                           ; $7a15: $db
	db $d3                                           ; $7a16: $d3
	ret nz                                           ; $7a17: $c0

	add b                                            ; $7a18: $80
	ld c, a                                          ; $7a19: $4f
	ld b, b                                          ; $7a1a: $40
	sbc b                                            ; $7a1b: $98
	ld b, $0e                                        ; $7a1c: $06 $0e
	dec c                                            ; $7a1e: $0d
	add hl, bc                                       ; $7a1f: $09
	inc bc                                           ; $7a20: $03
	rlca                                             ; $7a21: $07
	ld b, $63                                        ; $7a22: $06 $63
	ldh a, [$9a]                                     ; $7a24: $f0 $9a
	ret nz                                           ; $7a26: $c0

	ldh [$f0], a                                     ; $7a27: $e0 $f0
	jr nc, jr_023_7a4b                               ; $7a29: $30 $20

	ld e, e                                          ; $7a2b: $5b
	ldh [$0b], a                                     ; $7a2c: $e0 $0b
	nop                                              ; $7a2e: $00
	sub a                                            ; $7a2f: $97
	inc sp                                           ; $7a30: $33
	halt                                             ; $7a31: $76
	ld h, h                                          ; $7a32: $64
	ld b, h                                          ; $7a33: $44
	ld b, h                                          ; $7a34: $44
	ld b, [hl]                                       ; $7a35: $46
	ld h, e                                          ; $7a36: $63
	inc sp                                           ; $7a37: $33
	di                                               ; $7a38: $f3
	add b                                            ; $7a39: $80
	sub d                                            ; $7a3a: $92
	ld a, a                                          ; $7a3b: $7f
	ld l, a                                          ; $7a3c: $6f
	xor $dd                                          ; $7a3d: $ee $dd
	cp e                                             ; $7a3f: $bb
	dec sp                                           ; $7a40: $3b
	inc de                                           ; $7a41: $13
	inc bc                                           ; $7a42: $03
	db $fc                                           ; $7a43: $fc
	sub b                                            ; $7a44: $90
	ld de, $7f33                                     ; $7a45: $11 $33 $7f
	sbc $ff                                          ; $7a48: $de $ff
	sub d                                            ; $7a4a: $92

jr_023_7a4b:
	ld a, a                                          ; $7a4b: $7f
	xor $c7                                          ; $7a4c: $ee $c7
	rst JumpTable                                          ; $7a4e: $c7
	add a                                            ; $7a4f: $87
	add a                                            ; $7a50: $87
	ld b, $00                                        ; $7a51: $06 $00
	ld hl, sp-$04                                    ; $7a53: $f8 $fc
	rst $38                                          ; $7a55: $ff
	db $fc                                           ; $7a56: $fc
	cp $de                                           ; $7a57: $fe $de
	rst $38                                          ; $7a59: $ff
	add b                                            ; $7a5a: $80
	pop hl                                           ; $7a5b: $e1
	add hl, sp                                       ; $7a5c: $39
	adc a                                            ; $7a5d: $8f
	rst $38                                          ; $7a5e: $ff
	add a                                            ; $7a5f: $87
	rst $38                                          ; $7a60: $ff
	or a                                             ; $7a61: $b7

jr_023_7a62:
	ld a, a                                          ; $7a62: $7f
	ccf                                              ; $7a63: $3f
	rra                                              ; $7a64: $1f
	rlca                                             ; $7a65: $07
	cp $00                                           ; $7a66: $fe $00
	ld bc, $f9cf                                     ; $7a68: $01 $cf $f9
	ld h, [hl]                                       ; $7a6b: $66
	ld c, h                                          ; $7a6c: $4c
	db $f4                                           ; $7a6d: $f4
	push de                                          ; $7a6e: $d5
	ld a, c                                          ; $7a6f: $79
	cp d                                             ; $7a70: $ba
	ld [hl], d                                       ; $7a71: $72
	ld d, a                                          ; $7a72: $57
	sbc a                                            ; $7a73: $9f
	cp a                                             ; $7a74: $bf
	rst $38                                          ; $7a75: $ff
	ccf                                              ; $7a76: $3f
	rst AddAOntoHL                                          ; $7a77: $ef
	rst GetHLinHL                                          ; $7a78: $cf
	sbc a                                            ; $7a79: $9f
	sbc [hl]                                         ; $7a7a: $9e
	cp a                                             ; $7a7b: $bf
	sbc $a3                                          ; $7a7c: $de $a3
	sbc d                                            ; $7a7e: $9a
	ld h, e                                          ; $7a7f: $63
	ld [hl], c                                       ; $7a80: $71
	or c                                             ; $7a81: $b1
	ret c                                            ; $7a82: $d8

	jr jr_023_7a62                                   ; $7a83: $18 $dd

	db $fc                                           ; $7a85: $fc
	rst SubAFromDE                                          ; $7a86: $df
	cp $df                                           ; $7a87: $fe $df
	rst $38                                          ; $7a89: $ff
	sbc $87                                          ; $7a8a: $de $87
	sbc $8f                                          ; $7a8c: $de $8f
	rst SubAFromDE                                          ; $7a8e: $df
	ld c, a                                          ; $7a8f: $4f
	sbc $fd                                          ; $7a90: $de $fd
	db $dd                                           ; $7a92: $dd
	ld sp, hl                                        ; $7a93: $f9
	sbc [hl]                                         ; $7a94: $9e
	ld hl, sp-$23                                    ; $7a95: $f8 $dd
	ld [de], a                                       ; $7a97: $12
	rst SubAFromDE                                          ; $7a98: $df
	ld de, $139d                                     ; $7a99: $11 $9d $13
	sbc e                                            ; $7a9c: $9b
	db $db                                           ; $7a9d: $db
	rst $38                                          ; $7a9e: $ff
	rst SubAFromDE                                          ; $7a9f: $df
	cp $94                                           ; $7aa0: $fe $94
	ld h, $24                                        ; $7aa2: $26 $24
	inc [hl]                                         ; $7aa4: $34
	dec d                                            ; $7aa5: $15
	dec d                                            ; $7aa6: $15
	dec e                                            ; $7aa7: $1d
	adc l                                            ; $7aa8: $8d
	adc c                                            ; $7aa9: $89
	pop bc                                           ; $7aaa: $c1
	jp $dec3                                         ; $7aab: $c3 $c3 $de


	db $e3                                           ; $7aae: $e3
	sub b                                            ; $7aaf: $90
	di                                               ; $7ab0: $f3
	rst FarCall                                          ; $7ab1: $f7
	adc d                                            ; $7ab2: $8a
	xor $ae                                          ; $7ab3: $ee $ae
	and a                                            ; $7ab5: $a7
	dec h                                            ; $7ab6: $25
	ld hl, $3131                                     ; $7ab7: $21 $31 $31
	inc sp                                           ; $7aba: $33
	inc sp                                           ; $7abb: $33
	ld [hl], e                                       ; $7abc: $73
	ld a, e                                          ; $7abd: $7b
	ei                                               ; $7abe: $fb
	sbc $ff                                          ; $7abf: $de $ff
	rst SubAFromDE                                          ; $7ac1: $df
	inc b                                            ; $7ac2: $04
	rst SubAFromDE                                          ; $7ac3: $df
	ld [bc], a                                       ; $7ac4: $02
	rst SubAFromDE                                          ; $7ac5: $df
	add c                                            ; $7ac6: $81
	sbc l                                            ; $7ac7: $9d
	pop bc                                           ; $7ac8: $c1
	ldh [$db], a                                     ; $7ac9: $e0 $db
	rst $38                                          ; $7acb: $ff
	ld a, a                                          ; $7acc: $7f
	adc c                                            ; $7acd: $89
	sub d                                            ; $7ace: $92
	or a                                             ; $7acf: $b7
	xor e                                            ; $7ad0: $ab
	dec hl                                           ; $7ad1: $2b
	ld a, e                                          ; $7ad2: $7b
	scf                                              ; $7ad3: $37
	dec d                                            ; $7ad4: $15
	sub l                                            ; $7ad5: $95
	sub l                                            ; $7ad6: $95
	jr jr_023_7af5                                   ; $7ad7: $18 $1c

	sbc h                                            ; $7ad9: $9c
	adc h                                            ; $7ada: $8c
	call z, $eede                                    ; $7adb: $cc $de $ee
	sub a                                            ; $7ade: $97
	xor d                                            ; $7adf: $aa
	db $eb                                           ; $7ae0: $eb
	ld l, d                                          ; $7ae1: $6a
	ld c, d                                          ; $7ae2: $4a
	ld c, c                                          ; $7ae3: $49
	ld l, l                                          ; $7ae4: $6d
	ld l, l                                          ; $7ae5: $6d
	cp e                                             ; $7ae6: $bb
	call c, $dfff                                    ; $7ae7: $dc $ff $df
	ei                                               ; $7aea: $fb
	sub [hl]                                         ; $7aeb: $96
	db $fd                                           ; $7aec: $fd
	ld e, a                                          ; $7aed: $5f
	cpl                                              ; $7aee: $2f
	xor a                                            ; $7aef: $af
	and a                                            ; $7af0: $a7
	rst SubAFromHL                                          ; $7af1: $d7

jr_023_7af2:
	ld a, c                                          ; $7af2: $79
	and a                                            ; $7af3: $a7
	db $d3                                           ; $7af4: $d3

jr_023_7af5:
	db $db                                           ; $7af5: $db
	rst $38                                          ; $7af6: $ff
	add b                                            ; $7af7: $80
	ld a, b                                          ; $7af8: $78
	inc a                                            ; $7af9: $3c
	pop af                                           ; $7afa: $f1
	rst SubAFromBC                                          ; $7afb: $e7
	rst $38                                          ; $7afc: $ff
	rst $38                                          ; $7afd: $ff
	or $cc                                           ; $7afe: $f6 $cc
	jr jr_023_7af2                                   ; $7b00: $18 $f0

	ld h, b                                          ; $7b02: $60
	pop bc                                           ; $7b03: $c1
	add [hl]                                         ; $7b04: $86
	sbc c                                            ; $7b05: $99
	ld h, e                                          ; $7b06: $63
	add a                                            ; $7b07: $87
	rrca                                             ; $7b08: $0f
	ccf                                              ; $7b09: $3f
	rst $38                                          ; $7b0a: $ff
	db $fd                                           ; $7b0b: $fd
	rst $38                                          ; $7b0c: $ff
	rst $38                                          ; $7b0d: $ff
	ld a, h                                          ; $7b0e: $7c
	cpl                                              ; $7b0f: $2f
	rlca                                             ; $7b10: $07
	dec b                                            ; $7b11: $05
	sbc $ff                                          ; $7b12: $de $ff
	rst FarCall                                          ; $7b14: $f7
	add e                                            ; $7b15: $83
	add a                                            ; $7b16: $87
	adc h                                            ; $7b17: $8c
	sbc $fe                                          ; $7b18: $de $fe
	cp $ef                                           ; $7b1a: $fe $ef
	rst $38                                          ; $7b1c: $ff
	ld sp, hl                                        ; $7b1d: $f9
	ld e, $bf                                        ; $7b1e: $1e $bf
	ld sp, hl                                        ; $7b20: $f9
	ld hl, sp-$20                                    ; $7b21: $f8 $e0

Jump_023_7b23:
	inc de                                           ; $7b23: $13
	sbc a                                            ; $7b24: $9f

Jump_023_7b25:
	rst AddAOntoHL                                          ; $7b25: $ef
	rst SubAFromBC                                          ; $7b26: $e7
	ld c, l                                          ; $7b27: $4d
	ld h, [hl]                                       ; $7b28: $66
	daa                                              ; $7b29: $27
	ld a, a                                          ; $7b2a: $7f
	dec bc                                           ; $7b2b: $0b
	nop                                              ; $7b2c: $00
	sub a                                            ; $7b2d: $97
	daa                                              ; $7b2e: $27
	halt                                             ; $7b2f: $76
	ld h, h                                          ; $7b30: $64
	ld b, [hl]                                       ; $7b31: $46
	ld h, h                                          ; $7b32: $64

Jump_023_7b33:
	ld h, [hl]                                       ; $7b33: $66
	ld h, a                                          ; $7b34: $67
	ld [hl+], a                                      ; $7b35: $22
	ld a, [$9d80]                                    ; $7b36: $fa $80 $9d
	rst $38                                          ; $7b39: $ff
	cp $db                                           ; $7b3a: $fe $db
	rst $38                                          ; $7b3c: $ff
	add b                                            ; $7b3d: $80
	inc de                                           ; $7b3e: $13
	ld [hl], e                                       ; $7b3f: $73
	di                                               ; $7b40: $f3
	push af                                          ; $7b41: $f5
	db $fc                                           ; $7b42: $fc
	jr c, jr_023_7b4e                                ; $7b43: $38 $09

	cp a                                             ; $7b45: $bf
	db $d3                                           ; $7b46: $d3
	ld c, h                                          ; $7b47: $4c
	db $db                                           ; $7b48: $db
	rst FarCall                                          ; $7b49: $f7
	push af                                          ; $7b4a: $f5
	ld [$f3b5], a                                    ; $7b4b: $ea $b5 $f3

jr_023_7b4e:
	ld sp, hl                                        ; $7b4e: $f9
	ld sp, hl                                        ; $7b4f: $f9
	db $ec                                           ; $7b50: $ec
	db $ec                                           ; $7b51: $ec
	and $f3                                          ; $7b52: $e6 $f3
	ld sp, hl                                        ; $7b54: $f9
	db $fc                                           ; $7b55: $fc
	cp $ff                                           ; $7b56: $fe $ff
	pop af                                           ; $7b58: $f1
	rst $38                                          ; $7b59: $ff
	ld a, a                                          ; $7b5a: $7f
	rst $38                                          ; $7b5b: $ff
	ld a, e                                          ; $7b5c: $7b
	add b                                            ; $7b5d: $80
	pop af                                           ; $7b5e: $f1
	db $e3                                           ; $7b5f: $e3
	add b                                            ; $7b60: $80
	adc [hl]                                         ; $7b61: $8e
	pop af                                           ; $7b62: $f1
	add sp, $40                                      ; $7b63: $e8 $40
	cp $ee                                           ; $7b65: $fe $ee
	db $fc                                           ; $7b67: $fc
	cp $e3                                           ; $7b68: $fe $e3
	sub $f6                                          ; $7b6a: $d6 $f6
	xor d                                            ; $7b6c: $aa
	db $ec                                           ; $7b6d: $ec
	push hl                                          ; $7b6e: $e5
	ld hl, sp-$04                                    ; $7b6f: $f8 $fc
	rst $38                                          ; $7b71: $ff
	db $eb                                           ; $7b72: $eb
	set 2, a                                         ; $7b73: $cb $d7
	sub a                                            ; $7b75: $97
	sbc a                                            ; $7b76: $9f
	push bc                                          ; $7b77: $c5
	ld c, e                                          ; $7b78: $4b
	adc e                                            ; $7b79: $8b
	sub e                                            ; $7b7a: $93
	sub a                                            ; $7b7b: $97
	sub a                                            ; $7b7c: $97
	rst SubAFromDE                                          ; $7b7d: $df
	and a                                            ; $7b7e: $a7
	sbc e                                            ; $7b7f: $9b

Call_023_7b80:
	ld a, [hl]                                       ; $7b80: $7e
	ld a, h                                          ; $7b81: $7c
	db $fc                                           ; $7b82: $fc
	db $fc                                           ; $7b83: $fc
	db $dd                                           ; $7b84: $dd
	ld hl, sp-$7c                                    ; $7b85: $f8 $84
	ld h, a                                          ; $7b87: $67
	ld b, [hl]                                       ; $7b88: $46
	db $ec                                           ; $7b89: $ec
	xor h                                            ; $7b8a: $ac
	ret                                              ; $7b8b: $c9


	ld e, c                                          ; $7b8c: $59
	ld e, e                                          ; $7b8d: $5b
	sub e                                            ; $7b8e: $93
	jr jr_023_7bca                                   ; $7b8f: $18 $39

	inc sp                                           ; $7b91: $33
	ld [hl], e                                       ; $7b92: $73
	ld [hl], a                                       ; $7b93: $77
	rst SubAFromBC                                          ; $7b94: $e7
	rst SubAFromBC                                          ; $7b95: $e7
	rst AddAOntoHL                                          ; $7b96: $ef
	jr jr_023_7c0d                                   ; $7b97: $18 $74

	or l                                             ; $7b99: $b5
	push hl                                          ; $7b9a: $e5
	ld h, [hl]                                       ; $7b9b: $66
	ld h, [hl]                                       ; $7b9c: $66
	ld d, [hl]                                       ; $7b9d: $56
	ld d, [hl]                                       ; $7b9e: $56
	push hl                                          ; $7b9f: $e5
	ret                                              ; $7ba0: $c9


	set 3, [hl]                                      ; $7ba1: $cb $de
	sbc e                                            ; $7ba3: $9b
	rst SubAFromDE                                          ; $7ba4: $df
	cp e                                             ; $7ba5: $bb
	sbc e                                            ; $7ba6: $9b
	add d                                            ; $7ba7: $82
	and d                                            ; $7ba8: $a2
	inc hl                                           ; $7ba9: $23
	inc bc                                           ; $7baa: $03
	sbc $06                                          ; $7bab: $de $06
	sbc d                                            ; $7bad: $9a
	ld h, $e1                                        ; $7bae: $26 $e1
	pop bc                                           ; $7bb0: $c1
	ret nz                                           ; $7bb1: $c0

	ret nz                                           ; $7bb2: $c0

	db $dd                                           ; $7bb3: $dd
	pop bc                                           ; $7bb4: $c1
	add b                                            ; $7bb5: $80
	add d                                            ; $7bb6: $82
	jr nz, jr_023_7bee                               ; $7bb7: $20 $35

	ld de, $1a10                                     ; $7bb9: $11 $10 $1a
	ld a, [bc]                                       ; $7bbc: $0a
	adc d                                            ; $7bbd: $8a
	inc h                                            ; $7bbe: $24
	ld b, $02                                        ; $7bbf: $06 $02
	ld [hl+], a                                      ; $7bc1: $22
	inc hl                                           ; $7bc2: $23

Jump_023_7bc3:
	inc hl                                           ; $7bc3: $23
	inc sp                                           ; $7bc4: $33
	inc sp                                           ; $7bc5: $33
	add hl, de                                       ; $7bc6: $19
	ld [$0444], sp                                   ; $7bc7: $08 $44 $04

jr_023_7bca:
	add d                                            ; $7bca: $82
	xor d                                            ; $7bcb: $aa
	ld l, c                                          ; $7bcc: $69
	dec h                                            ; $7bcd: $25
	ld h, b                                          ; $7bce: $60
	ld [hl], b                                       ; $7bcf: $70
	jr c, jr_023_7c0a                                ; $7bd0: $38 $38

	inc a                                            ; $7bd2: $3c
	inc e                                            ; $7bd3: $1c
	sbc [hl]                                         ; $7bd4: $9e
	add b                                            ; $7bd5: $80
	sbc $43                                          ; $7bd6: $de $43
	dec l                                            ; $7bd8: $2d
	xor e                                            ; $7bd9: $ab
	ld d, [hl]                                       ; $7bda: $56
	dec [hl]                                         ; $7bdb: $35
	ld l, e                                          ; $7bdc: $6b
	dec de                                           ; $7bdd: $1b
	ld [hl], $8c                                     ; $7bde: $36 $8c
	add $46                                          ; $7be0: $c6 $46
	ld h, e                                          ; $7be2: $63
	ld h, e                                          ; $7be3: $63
	ld sp, $1931                                     ; $7be4: $31 $31 $19
	xor c                                            ; $7be7: $a9
	cp $f9                                           ; $7be8: $fe $f9
	rst SubAFromDE                                          ; $7bea: $df
	ei                                               ; $7beb: $fb
	ld a, d                                          ; $7bec: $7a
	ld l, d                                          ; $7bed: $6a

jr_023_7bee:
	cp d                                             ; $7bee: $ba
	ret c                                            ; $7bef: $d8

	ld c, b                                          ; $7bf0: $48
	ld c, b                                          ; $7bf1: $48
	ld l, a                                          ; $7bf2: $6f
	cpl                                              ; $7bf3: $2f
	xor a                                            ; $7bf4: $af
	sub e                                            ; $7bf5: $93
	cp a                                             ; $7bf6: $bf
	rst $38                                          ; $7bf7: $ff
	ld a, $73                                        ; $7bf8: $3e $73
	pop af                                           ; $7bfa: $f1
	pop hl                                           ; $7bfb: $e1
	ldh [$f2], a                                     ; $7bfc: $e0 $f2
	rst $38                                          ; $7bfe: $ff
	sbc a                                            ; $7bff: $9f
	rra                                              ; $7c00: $1f
	ccf                                              ; $7c01: $3f
	db $db                                           ; $7c02: $db
	rst $38                                          ; $7c03: $ff
	sub d                                            ; $7c04: $92
	dec l                                            ; $7c05: $2d
	ld a, l                                          ; $7c06: $7d
	ld a, [$1593]                                    ; $7c07: $fa $93 $15

jr_023_7c0a:
	or [hl]                                          ; $7c0a: $b6
	ld a, [hl+]                                      ; $7c0b: $2a
	ld [hl], h                                       ; $7c0c: $74

jr_023_7c0d:
	ei                                               ; $7c0d: $fb
	ei                                               ; $7c0e: $fb
	rst $38                                          ; $7c0f: $ff
	cp $fe                                           ; $7c10: $fe $fe
	ld a, e                                          ; $7c12: $7b
	ld l, l                                          ; $7c13: $6d
	sub [hl]                                         ; $7c14: $96
	ccf                                              ; $7c15: $3f
	sbc a                                            ; $7c16: $9f
	ccf                                              ; $7c17: $3f
	ld a, a                                          ; $7c18: $7f
	ld a, a                                          ; $7c19: $7f
	ccf                                              ; $7c1a: $3f
	rst $38                                          ; $7c1b: $ff
	cp $9f                                           ; $7c1c: $fe $9f
	db $dd                                           ; $7c1e: $dd
	ccf                                              ; $7c1f: $3f
	sbc $7f                                          ; $7c20: $de $7f
	call c, $94ff                                    ; $7c22: $dc $ff $94
	rst SubAFromDE                                          ; $7c25: $df
	rst $38                                          ; $7c26: $ff
	ld a, [hl]                                       ; $7c27: $7e
	adc b                                            ; $7c28: $88
	sbc e                                            ; $7c29: $9b
	rst $38                                          ; $7c2a: $ff
	rst FarCall                                          ; $7c2b: $f7
	or c                                             ; $7c2c: $b1
	ldh a, [$e8]                                     ; $7c2d: $f0 $e8
	di                                               ; $7c2f: $f3
	ld a, [bc]                                       ; $7c30: $0a
	nop                                              ; $7c31: $00
	rst SubAFromDE                                          ; $7c32: $df
	ld h, $de                                        ; $7c33: $26 $de
	ld h, [hl]                                       ; $7c35: $66
	sbc h                                            ; $7c36: $9c
	ld h, l                                          ; $7c37: $65
	ld d, [hl]                                       ; $7c38: $56
	ld h, d                                          ; $7c39: $62
	db $fc                                           ; $7c3a: $fc
	add b                                            ; $7c3b: $80
	reti                                             ; $7c3c: $d9


	rst $38                                          ; $7c3d: $ff
	add l                                            ; $7c3e: $85
	or a                                             ; $7c3f: $b7
	rst $38                                          ; $7c40: $ff
	rst $38                                          ; $7c41: $ff
	ld sp, hl                                        ; $7c42: $f9
	pop af                                           ; $7c43: $f1
	rrca                                             ; $7c44: $0f
	rlca                                             ; $7c45: $07
	and [hl]                                         ; $7c46: $a6
	add sp, -$0c                                     ; $7c47: $e8 $f4
	cp $b6                                           ; $7c49: $fe $b6
	and l                                            ; $7c4b: $a5
	db $e3                                           ; $7c4c: $e3
	sub $d9                                          ; $7c4d: $d6 $d9
	db $fd                                           ; $7c4f: $fd
	db $ed                                           ; $7c50: $ed
	push hl                                          ; $7c51: $e5
	push hl                                          ; $7c52: $e5
	or $f6                                           ; $7c53: $f6 $f6
	di                                               ; $7c55: $f3
	di                                               ; $7c56: $f3
	rst $38                                          ; $7c57: $ff
	ld sp, hl                                        ; $7c58: $f9
	call c, $80ff                                    ; $7c59: $dc $ff $80
	ei                                               ; $7c5c: $fb
	rst $38                                          ; $7c5d: $ff
	rst $38                                          ; $7c5e: $ff
	ld hl, sp-$0f                                    ; $7c5f: $f8 $f1
	sub a                                            ; $7c61: $97
	sbc e                                            ; $7c62: $9b
	di                                               ; $7c63: $f3
	adc a                                            ; $7c64: $8f
	adc [hl]                                         ; $7c65: $8e
	db $ec                                           ; $7c66: $ec
	ld hl, sp-$28                                    ; $7c67: $f8 $d8
	sub d                                            ; $7c69: $92
	ld d, d                                          ; $7c6a: $52
	ld a, [$fcf8]                                    ; $7c6b: $fa $f8 $fc
	ld hl, sp-$08                                    ; $7c6e: $f8 $f8
	ldh a, [$f0]                                     ; $7c70: $f0 $f0
	pop af                                           ; $7c72: $f1
	ldh a, [$f8]                                     ; $7c73: $f0 $f8
	rrca                                             ; $7c75: $0f
	ld h, d                                          ; $7c76: $62
	dec e                                            ; $7c77: $1d
	dec de                                           ; $7c78: $1b
	ld a, [bc]                                       ; $7c79: $0a
	dec d                                            ; $7c7a: $15
	add b                                            ; $7c7b: $80
	ld l, $6b                                        ; $7c7c: $2e $6b
	rlca                                             ; $7c7e: $07
	inc bc                                           ; $7c7f: $03
	ld h, $2c                                        ; $7c80: $26 $2c
	ld a, l                                          ; $7c82: $7d
	ei                                               ; $7c83: $fb
	ld [hl], e                                       ; $7c84: $73
	ld [hl], $71                                     ; $7c85: $36 $71
	call nz, $2290                                   ; $7c87: $c4 $90 $22
	call z, $b118                                    ; $7c8a: $cc $18 $b1
	inc hl                                           ; $7c8d: $23
	adc [hl]                                         ; $7c8e: $8e
	jr c, jr_023_7cf1                                ; $7c8f: $38 $60

	pop bc                                           ; $7c91: $c1
	add e                                            ; $7c92: $83
	add a                                            ; $7c93: $87
	ld c, $1c                                        ; $7c94: $0e $1c
	inc b                                            ; $7c96: $04
	ld [hl+], a                                      ; $7c97: $22
	adc c                                            ; $7c98: $89
	inc h                                            ; $7c99: $24
	ld d, d                                          ; $7c9a: $52
	add b                                            ; $7c9b: $80
	and b                                            ; $7c9c: $a0
	ld b, h                                          ; $7c9d: $44
	adc d                                            ; $7c9e: $8a
	inc bc                                           ; $7c9f: $03
	inc e                                            ; $7ca0: $1c
	ld [hl], b                                       ; $7ca1: $70
	jp $188c                                         ; $7ca2: $c3 $8c $18


	ld [hl-], a                                      ; $7ca5: $32
	ld h, h                                          ; $7ca6: $64
	ld [hl], b                                       ; $7ca7: $70
	ld c, [hl]                                       ; $7ca8: $4e
	inc a                                            ; $7ca9: $3c
	db $db                                           ; $7caa: $db
	dec h                                            ; $7cab: $25
	ld c, c                                          ; $7cac: $49
	sub d                                            ; $7cad: $92
	ld [de], a                                       ; $7cae: $12
	adc a                                            ; $7caf: $8f
	ld sp, $04c3                                     ; $7cb0: $31 $c3 $04
	jr jr_023_7ce5                                   ; $7cb3: $18 $30

	ld h, c                                          ; $7cb5: $61
	pop hl                                           ; $7cb6: $e1
	rrca                                             ; $7cb7: $0f
	rla                                              ; $7cb8: $17
	dec de                                           ; $7cb9: $1b
	ld c, b                                          ; $7cba: $48
	add b                                            ; $7cbb: $80
	ld c, c                                          ; $7cbc: $49
	ld d, b                                          ; $7cbd: $50
	call nz, $f088                                   ; $7cbe: $c4 $88 $f0
	ldh [$e0], a                                     ; $7cc1: $e0 $e0
	or c                                             ; $7cc3: $b1
	or b                                             ; $7cc4: $b0
	xor b                                            ; $7cc5: $a8
	jr z, jr_023_7cec                                ; $7cc6: $28 $24

	ldh a, [c]                                       ; $7cc8: $f2
	sub l                                            ; $7cc9: $95
	xor d                                            ; $7cca: $aa
	call nc, $654a                                   ; $7ccb: $d4 $4a $65
	ld [hl-], a                                      ; $7cce: $32
	sub b                                            ; $7ccf: $90
	inc c                                            ; $7cd0: $0c
	ld h, d                                          ; $7cd1: $62
	ld de, $8408                                     ; $7cd2: $11 $08 $84
	add d                                            ; $7cd5: $82
	pop bc                                           ; $7cd6: $c1
	ld h, c                                          ; $7cd7: $61
	daa                                              ; $7cd8: $27
	sub e                                            ; $7cd9: $93
	ld c, c                                          ; $7cda: $49
	add b                                            ; $7cdb: $80
	and h                                            ; $7cdc: $a4
	ld d, l                                          ; $7cdd: $55
	dec hl                                           ; $7cde: $2b
	add d                                            ; $7cdf: $82
	ld d, a                                          ; $7ce0: $57
	jr jr_023_7cef                                   ; $7ce1: $18 $0c

	add [hl]                                         ; $7ce3: $86
	ld b, e                                          ; $7ce4: $43

jr_023_7ce5:
	inc hl                                           ; $7ce5: $23
	ld de, $8819                                     ; $7ce6: $11 $19 $88
	db $fc                                           ; $7ce9: $fc
	ld [hl], b                                       ; $7cea: $70
	ret nz                                           ; $7ceb: $c0

jr_023_7cec:
	xor [hl]                                         ; $7cec: $ae
	ld hl, sp+$50                                    ; $7ced: $f8 $50

jr_023_7cef:
	ldh a, [$f0]                                     ; $7cef: $f0 $f0

jr_023_7cf1:
	ld hl, sp-$20                                    ; $7cf1: $f8 $e0
	ld b, b                                          ; $7cf3: $40
	ld h, b                                          ; $7cf4: $60
	inc h                                            ; $7cf5: $24
	cp [hl]                                          ; $7cf6: $be
	sbc a                                            ; $7cf7: $9f
	sbc c                                            ; $7cf8: $99
	rst $38                                          ; $7cf9: $ff
	ccf                                              ; $7cfa: $3f
	sbc c                                            ; $7cfb: $99
	rra                                              ; $7cfc: $1f
	jr jr_023_7d08                                   ; $7cfd: $18 $09

Call_023_7cff:
	dec c                                            ; $7cff: $0d
	ld e, a                                          ; $7d00: $5f
	sbc [hl]                                         ; $7d01: $9e
	ld a, e                                          ; $7d02: $7b
	ld hl, sp-$72                                    ; $7d03: $f8 $8e
	rra                                              ; $7d05: $1f
	rrca                                             ; $7d06: $0f
	rrca                                             ; $7d07: $0f

jr_023_7d08:
	adc a                                            ; $7d08: $8f
	rra                                              ; $7d09: $1f
	inc e                                            ; $7d0a: $1c
	or h                                             ; $7d0b: $b4
	add [hl]                                         ; $7d0c: $86
	add l                                            ; $7d0d: $85
	inc c                                            ; $7d0e: $0c
	cp h                                             ; $7d0f: $bc
	cp $ae                                           ; $7d10: $fe $ae
	cp $fe                                           ; $7d12: $fe $fe
	db $fc                                           ; $7d14: $fc
	db $fc                                           ; $7d15: $fc
	sbc $fd                                          ; $7d16: $de $fd
	sbc [hl]                                         ; $7d18: $9e
	ld sp, hl                                        ; $7d19: $f9
	db $dd                                           ; $7d1a: $dd
	ld a, a                                          ; $7d1b: $7f
	sbc e                                            ; $7d1c: $9b
	rst SubAFromDE                                          ; $7d1d: $df
	rst $38                                          ; $7d1e: $ff
	cp a                                             ; $7d1f: $bf
	rst $38                                          ; $7d20: $ff
	db $dd                                           ; $7d21: $dd
	cp a                                             ; $7d22: $bf
	sbc b                                            ; $7d23: $98
	ld a, a                                          ; $7d24: $7f
	ld e, a                                          ; $7d25: $5f

jr_023_7d26:
	rst SubAFromDE                                          ; $7d26: $df
	sbc a                                            ; $7d27: $9f
	ld e, $e7                                        ; $7d28: $1e $e7
	db $fc                                           ; $7d2a: $fc
	call c, Call_023_7fff                            ; $7d2b: $dc $ff $7f
	ld hl, sp-$67                                    ; $7d2e: $f8 $99
	adc h                                            ; $7d30: $8c
	jp $3f9f                                         ; $7d31: $c3 $9f $3f


	rst $38                                          ; $7d34: $ff
	ld hl, sp+$0b                                    ; $7d35: $f8 $0b
	nop                                              ; $7d37: $00
	sub a                                            ; $7d38: $97
	ld h, $25                                        ; $7d39: $26 $25
	ld d, [hl]                                       ; $7d3b: $56
	ld h, [hl]                                       ; $7d3c: $66
	ld h, [hl]                                       ; $7d3d: $66
	ld h, l                                          ; $7d3e: $65
	ld d, [hl]                                       ; $7d3f: $56
	ld h, d                                          ; $7d40: $62
	or $80                                           ; $7d41: $f6 $80
	reti                                             ; $7d43: $d9


	rst $38                                          ; $7d44: $ff
	add b                                            ; $7d45: $80
	ld e, c                                          ; $7d46: $59
	ld hl, sp-$08                                    ; $7d47: $f8 $f8
	or b                                             ; $7d49: $b0
	ld [$3bdb], sp                                   ; $7d4a: $08 $db $3b
	inc hl                                           ; $7d4d: $23
	cp $fd                                           ; $7d4e: $fe $fd
	or $f9                                           ; $7d50: $f6 $f9
	db $ed                                           ; $7d52: $ed
	ld sp, hl                                        ; $7d53: $f9
	ld hl, sp-$04                                    ; $7d54: $f8 $fc
	rst $38                                          ; $7d56: $ff
	cp $fc                                           ; $7d57: $fe $fc
	db $fc                                           ; $7d59: $fc
	ld hl, sp-$08                                    ; $7d5a: $f8 $f8
	ld sp, hl                                        ; $7d5c: $f9
	ld sp, hl                                        ; $7d5d: $f9
	ret c                                            ; $7d5e: $d8

	sub c                                            ; $7d5f: $91
	db $e3                                           ; $7d60: $e3
	ld h, a                                          ; $7d61: $67
	sbc a                                            ; $7d62: $9f
	cp a                                             ; $7d63: $bf
	and l                                            ; $7d64: $a5
	sbc d                                            ; $7d65: $9a
	rst $38                                          ; $7d66: $ff
	daa                                              ; $7d67: $27
	ld l, [hl]                                       ; $7d68: $6e
	ld e, l                                          ; $7d69: $5d
	rst SubAFromDE                                          ; $7d6a: $df
	db $dd                                           ; $7d6b: $dd
	rst $38                                          ; $7d6c: $ff
	add b                                            ; $7d6d: $80
	ld hl, sp-$37                                    ; $7d6e: $f8 $c9
	ld sp, hl                                        ; $7d70: $f9
	db $fd                                           ; $7d71: $fd
	db $fc                                           ; $7d72: $fc
	rst $38                                          ; $7d73: $ff
	sub a                                            ; $7d74: $97
	rlca                                             ; $7d75: $07
	ld [$f838], sp                                   ; $7d76: $08 $38 $f8
	db $fc                                           ; $7d79: $fc
	db $fc                                           ; $7d7a: $fc
	cp $ff                                           ; $7d7b: $fe $ff
	rst $38                                          ; $7d7d: $ff
	dec c                                            ; $7d7e: $0d
	dec b                                            ; $7d7f: $05
	dec b                                            ; $7d80: $05

jr_023_7d81:
	add l                                            ; $7d81: $85
	rlc a                                            ; $7d82: $cb $07
	cp $b8                                           ; $7d84: $fe $b8
	db $10                                           ; $7d86: $10
	jr c, jr_023_7d81                                ; $7d87: $38 $f8

	ld c, c                                          ; $7d89: $49
	dec b                                            ; $7d8a: $05
	dec de                                           ; $7d8b: $1b
	rst $38                                          ; $7d8c: $ff
	sub d                                            ; $7d8d: $92
	rra                                              ; $7d8e: $1f
	pop hl                                           ; $7d8f: $e1
	add $89                                          ; $7d90: $c6 $89
	scf                                              ; $7d92: $37
	ld b, a                                          ; $7d93: $47
	sbc b                                            ; $7d94: $98
	ld h, a                                          ; $7d95: $67
	sbc h                                            ; $7d96: $9c
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	cp $f8                                           ; $7d99: $fe $f8
	ld a, e                                          ; $7d9b: $7b
	jp nc, $e380                                     ; $7d9c: $d2 $80 $e3

	add b                                            ; $7d9f: $80
	ld hl, $8007                                     ; $7da0: $21 $07 $80
	jr c, jr_023_7d26                                ; $7da3: $38 $81

	rst $38                                          ; $7da5: $ff
	ld h, b                                          ; $7da6: $60
	rst $38                                          ; $7da7: $ff
	ret nz                                           ; $7da8: $c0

	nop                                              ; $7da9: $00
	ld a, a                                          ; $7daa: $7f
	rst JumpTable                                          ; $7dab: $c7
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	add b                                            ; $7dae: $80
	ld h, c                                          ; $7daf: $61
	sub b                                            ; $7db0: $90
	db $fc                                           ; $7db1: $fc
	ei                                               ; $7db2: $fb
	dec c                                            ; $7db3: $0d
	rlca                                             ; $7db4: $07
	add $f7                                          ; $7db5: $c6 $f7
	sbc a                                            ; $7db7: $9f
	ld l, a                                          ; $7db8: $6f
	ccf                                              ; $7db9: $3f
	rla                                              ; $7dba: $17
	ei                                               ; $7dbb: $fb
	db $fd                                           ; $7dbc: $fd
	add b                                            ; $7dbd: $80
	dec a                                            ; $7dbe: $3d
	inc c                                            ; $7dbf: $0c
	ld d, c                                          ; $7dc0: $51
	adc a                                            ; $7dc1: $8f
	cp h                                             ; $7dc2: $bc
	reti                                             ; $7dc3: $d9


	ld a, [$a1f0]                                    ; $7dc4: $fa $f0 $a1
	add a                                            ; $7dc7: $87
	xor [hl]                                         ; $7dc8: $ae
	rst $38                                          ; $7dc9: $ff
	rst FarCall                                          ; $7dca: $f7
	ld l, [hl]                                       ; $7dcb: $6e
	ld c, l                                          ; $7dcc: $4d
	ld e, a                                          ; $7dcd: $5f
	ld e, [hl]                                       ; $7dce: $5e
	ld a, b                                          ; $7dcf: $78
	cp $07                                           ; $7dd0: $fe $07
	ld a, b                                          ; $7dd2: $78
	rst $38                                          ; $7dd3: $ff
	ld [bc], a                                       ; $7dd4: $02
	ld a, h                                          ; $7dd5: $7c
	rst $38                                          ; $7dd6: $ff
	adc h                                            ; $7dd7: $8c
	ld bc, $87ff                                     ; $7dd8: $01 $ff $87
	nop                                              ; $7ddb: $00
	db $fc                                           ; $7ddc: $fc
	add b                                            ; $7ddd: $80
	add e                                            ; $7dde: $83
	nop                                              ; $7ddf: $00
	ld [hl], b                                       ; $7de0: $70
	ld e, $0e                                        ; $7de1: $1e $0e
	db $e4                                           ; $7de3: $e4
	sbc [hl]                                         ; $7de4: $9e
	ld h, $4b                                        ; $7de5: $26 $4b
	sub l                                            ; $7de7: $95
	set 4, [hl]                                      ; $7de8: $cb $e6
	db $f4                                           ; $7dea: $f4
	db $fc                                           ; $7deb: $fc
	ld a, h                                          ; $7dec: $7c
	ld e, $86                                        ; $7ded: $1e $86
	ld h, e                                          ; $7def: $63
	ld sp, $c070                                     ; $7df0: $31 $70 $c0
	adc c                                            ; $7df3: $89
	ld [bc], a                                       ; $7df4: $02
	add h                                            ; $7df5: $84
	ld c, b                                          ; $7df6: $48
	add e                                            ; $7df7: $83
	rst GetHLinHL                                          ; $7df8: $cf
	nop                                              ; $7df9: $00
	jr nc, jr_023_7e6c                               ; $7dfa: $30 $70

	db $fc                                           ; $7dfc: $fc
	adc a                                            ; $7dfd: $8f
	ld c, b                                          ; $7dfe: $48
	nop                                              ; $7dff: $00
	ld bc, $9f87                                     ; $7e00: $01 $87 $9f
	ld b, e                                          ; $7e03: $43
	ld [hl], b                                       ; $7e04: $70
	ld a, h                                          ; $7e05: $7c
	add a                                            ; $7e06: $87
	sbc a                                            ; $7e07: $9f
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	ldh [$7c], a                                     ; $7e0a: $e0 $7c
	ld c, a                                          ; $7e0c: $4f
	ld b, e                                          ; $7e0d: $43
	db $dd                                           ; $7e0e: $dd
	rst $38                                          ; $7e0f: $ff
	sub b                                            ; $7e10: $90
	ld e, e                                          ; $7e11: $5b
	xor l                                            ; $7e12: $ad
	rst SubAFromDE                                          ; $7e13: $df
	jp hl                                            ; $7e14: $e9


	ldh a, [c]                                       ; $7e15: $f2
	db $db                                           ; $7e16: $db
	adc [hl]                                         ; $7e17: $8e
	inc c                                            ; $7e18: $0c
	rst SubAFromBC                                          ; $7e19: $e7
	ld [hl], e                                       ; $7e1a: $73
	ld sp, $fbf3                                     ; $7e1b: $31 $f3 $fb
	ld a, [$7bfa]                                    ; $7e1e: $fa $fa $7b
	ld e, [hl]                                       ; $7e21: $5e
	sbc l                                            ; $7e22: $9d
	ld a, a                                          ; $7e23: $7f
	rst $38                                          ; $7e24: $ff
	db $dd                                           ; $7e25: $dd
	cp a                                             ; $7e26: $bf
	sbc $ff                                          ; $7e27: $de $ff
	call c, $967f                                    ; $7e29: $dc $7f $96
	ld [hl], a                                       ; $7e2c: $77
	sbc a                                            ; $7e2d: $9f
	rst SubAFromBC                                          ; $7e2e: $e7
	cp c                                             ; $7e2f: $b9
	pop hl                                           ; $7e30: $e1
	rst $38                                          ; $7e31: $ff
	db $db                                           ; $7e32: $db
	ld l, b                                          ; $7e33: $68
	ld a, a                                          ; $7e34: $7f
	ld l, e                                          ; $7e35: $6b
	ld hl, sp+$0b                                    ; $7e36: $f8 $0b
	nop                                              ; $7e38: $00
	sub a                                            ; $7e39: $97
	ld h, $65                                        ; $7e3a: $26 $65
	ld d, [hl]                                       ; $7e3c: $56
	ld h, [hl]                                       ; $7e3d: $66
	ld h, [hl]                                       ; $7e3e: $66
	ld h, l                                          ; $7e3f: $65
	ld h, [hl]                                       ; $7e40: $66
	ld h, d                                          ; $7e41: $62
	cp e                                             ; $7e42: $bb
	nop                                              ; $7e43: $00
	add b                                            ; $7e44: $80
	adc $3f                                          ; $7e45: $ce $3f
	rst SubAFromDE                                          ; $7e47: $df
	ccf                                              ; $7e48: $3f
	rst SubAFromDE                                          ; $7e49: $df
	scf                                              ; $7e4a: $37
	ld a, a                                          ; $7e4b: $7f
	add e                                            ; $7e4c: $83
	rst $38                                          ; $7e4d: $ff
	ld h, c                                          ; $7e4e: $61
	rst $38                                          ; $7e4f: $ff
	ld hl, sp-$01                                    ; $7e50: $f8 $ff
	cp $ff                                           ; $7e52: $fe $ff
	jr nc, jr_023_7e65                               ; $7e54: $30 $0f

	rst $38                                          ; $7e56: $ff
	cp a                                             ; $7e57: $bf
	sbc $7f                                          ; $7e58: $de $7f
	sbc [hl]                                         ; $7e5a: $9e
	db $e3                                           ; $7e5b: $e3
	ccf                                              ; $7e5c: $3f
	rst $38                                          ; $7e5d: $ff
	ccf                                              ; $7e5e: $3f
	rst $38                                          ; $7e5f: $ff
	ld a, h                                          ; $7e60: $7c
	rst $38                                          ; $7e61: $ff
	ld a, b                                          ; $7e62: $78
	rst $38                                          ; $7e63: $ff
	sbc [hl]                                         ; $7e64: $9e

jr_023_7e65:
	ld a, c                                          ; $7e65: $79
	rst SubAFromHL                                          ; $7e66: $d7
	rst $38                                          ; $7e67: $ff
	sbc c                                            ; $7e68: $99
	db $fd                                           ; $7e69: $fd
	cp $f3                                           ; $7e6a: $fe $f3

jr_023_7e6c:
	call z, $916e                                    ; $7e6c: $cc $6e $91
	rst SubAFromHL                                          ; $7e6f: $d7
	rst $38                                          ; $7e70: $ff
	sbc c                                            ; $7e71: $99
	sbc $3e                                          ; $7e72: $de $3e
	inc a                                            ; $7e74: $3c
	call nz, $8c74                                   ; $7e75: $c4 $74 $8c
	reti                                             ; $7e78: $d9


	rst $38                                          ; $7e79: $ff
	rst SubAFromDE                                          ; $7e7a: $df
	adc a                                            ; $7e7b: $8f
	sbc c                                            ; $7e7c: $99
	rlca                                             ; $7e7d: $07
	inc bc                                           ; $7e7e: $03
	inc bc                                           ; $7e7f: $03
	ld bc, $0119                                     ; $7e80: $01 $19 $01
	rst SubAFromHL                                          ; $7e83: $d7
	rst $38                                          ; $7e84: $ff
	ld a, a                                          ; $7e85: $7f
	or e                                             ; $7e86: $b3
	sbc e                                            ; $7e87: $9b
	db $fc                                           ; $7e88: $fc
	rst $38                                          ; $7e89: $ff
	pop af                                           ; $7e8a: $f1
	cp $db                                           ; $7e8b: $fe $db
	rst $38                                          ; $7e8d: $ff
	ld a, a                                          ; $7e8e: $7f

jr_023_7e8f:
	or $97                                           ; $7e8f: $f6 $97
	jp $1eff                                         ; $7e91: $c3 $ff $1e


	pop hl                                           ; $7e94: $e1
	rlca                                             ; $7e95: $07
	ld hl, sp-$1f                                    ; $7e96: $f8 $e1
	ld e, $da                                        ; $7e98: $1e $da
	rst $38                                          ; $7e9a: $ff
	sub [hl]                                         ; $7e9b: $96
	ccf                                              ; $7e9c: $3f
	ld a, e                                          ; $7e9d: $7b
	add a                                            ; $7e9e: $87
	reti                                             ; $7e9f: $d9


	rst SubAFromBC                                          ; $7ea0: $e7
	xor l                                            ; $7ea1: $ad
	ld [hl], e                                       ; $7ea2: $73
	push bc                                          ; $7ea3: $c5
	dec sp                                           ; $7ea4: $3b
	db $db                                           ; $7ea5: $db
	rst $38                                          ; $7ea6: $ff
	sub l                                            ; $7ea7: $95
	call c, $30e3                                    ; $7ea8: $dc $e3 $30
	rst GetHLinHL                                          ; $7eab: $cf
	ld h, e                                          ; $7eac: $63
	sbc h                                            ; $7ead: $9c
	rst GetHLinHL                                          ; $7eae: $cf
	jr nc, jr_023_7e8f                               ; $7eaf: $30 $de

	ld hl, $ffdb                                     ; $7eb1: $21 $db $ff
	sub [hl]                                         ; $7eb4: $96
	rra                                              ; $7eb5: $1f
	rst $38                                          ; $7eb6: $ff
	ld a, e                                          ; $7eb7: $7b
	add a                                            ; $7eb8: $87
	cp $01                                           ; $7eb9: $fe $01
	add b                                            ; $7ebb: $80
	ld a, a                                          ; $7ebc: $7f
	ld bc, $c06b                                     ; $7ebd: $01 $6b $c0
	ld l, e                                          ; $7ec0: $6b
	bit 7, a                                         ; $7ec1: $cb $7f
	xor h                                            ; $7ec3: $ac
	ld h, a                                          ; $7ec4: $67
	ret nz                                           ; $7ec5: $c0

	sbc $ff                                          ; $7ec6: $de $ff
	rst SubAFromDE                                          ; $7ec8: $df
	rst JumpTable                                          ; $7ec9: $c7
	rst SubAFromDE                                          ; $7eca: $df
	ld bc, $d7ff                                     ; $7ecb: $01 $ff $d7
	rst $38                                          ; $7ece: $ff
	sbc c                                            ; $7ecf: $99
	rst AddAOntoHL                                          ; $7ed0: $ef
	rst $38                                          ; $7ed1: $ff
	sub l                                            ; $7ed2: $95
	ld a, [$e1fe]                                    ; $7ed3: $fa $fe $e1
	push de                                          ; $7ed6: $d5
	rst $38                                          ; $7ed7: $ff
	sbc e                                            ; $7ed8: $9b
	rst AddAOntoHL                                          ; $7ed9: $ef
	rra                                              ; $7eda: $1f
	ei                                               ; $7edb: $fb
	add a                                            ; $7edc: $87
	ld a, e                                          ; $7edd: $7b
	ld a, [hl+]                                      ; $7ede: $2a
	rst SubAFromDE                                          ; $7edf: $df
	rst $38                                          ; $7ee0: $ff
	ld a, a                                          ; $7ee1: $7f
	ld a, [hl-]                                      ; $7ee2: $3a
	sub h                                            ; $7ee3: $94
	ld a, l                                          ; $7ee4: $7d
	rst $38                                          ; $7ee5: $ff
	rst $38                                          ; $7ee6: $ff
	or e                                             ; $7ee7: $b3
	cp a                                             ; $7ee8: $bf
	rst SubAFromBC                                          ; $7ee9: $e7
	rst SubAFromBC                                          ; $7eea: $e7
	ei                                               ; $7eeb: $fb
	ei                                               ; $7eec: $fb
	rst $38                                          ; $7eed: $ff
	ld a, a                                          ; $7eee: $7f
	sbc $ff                                          ; $7eef: $de $ff
	sbc [hl]                                         ; $7ef1: $9e
	ld sp, hl                                        ; $7ef2: $f9
	ld a, e                                          ; $7ef3: $7b
	ld [$f67f], a                                    ; $7ef4: $ea $7f $f6
	sbc d                                            ; $7ef7: $9a
	rst SubAFromHL                                          ; $7ef8: $d7
	rst $38                                          ; $7ef9: $ff
	sbc h                                            ; $7efa: $9c

Jump_023_7efb:
	rst $38                                          ; $7efb: $ff
	db $fc                                           ; $7efc: $fc
	dec bc                                           ; $7efd: $0b
	nop                                              ; $7efe: $00
	sub a                                            ; $7eff: $97
	ld [hl+], a                                      ; $7f00: $22
	ld h, l                                          ; $7f01: $65
	ld d, [hl]                                       ; $7f02: $56
	ld h, [hl]                                       ; $7f03: $66
	ld h, [hl]                                       ; $7f04: $66
	ld h, l                                          ; $7f05: $65
	ld [hl], a                                       ; $7f06: $77
	ld [hl+], a                                      ; $7f07: $22
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

Call_023_7f60:
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

Call_023_7fff:
Jump_023_7fff:
	rst $38                                          ; $7fff: $ff
