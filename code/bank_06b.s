; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

	ld e, b                                          ; $4000: $58
	adc c                                            ; $4001: $89
	xor $f1                                          ; $4002: $ee $f1
	rrca                                             ; $4004: $0f
	ld bc, $0307                                     ; $4005: $01 $07 $03
	ld c, $04                                        ; $4008: $0e $04
	dec e                                            ; $400a: $1d
	ld [$3039], sp                                   ; $400b: $08 $39 $30
	db $d3                                           ; $400e: $d3
	ld h, b                                          ; $400f: $60
	jp $0380                                         ; $4010: $c3 $80 $03


	nop                                              ; $4013: $00
	sub b                                            ; $4014: $90
	and b                                            ; $4015: $a0
	ld h, b                                          ; $4016: $60
	ldh [rAUD2ENV], a                                ; $4017: $e0 $17
	ldh [$98], a                                     ; $4019: $e0 $98
	or b                                             ; $401b: $b0
	and b                                            ; $401c: $a0
	ld d, b                                          ; $401d: $50
	ldh [rAUD4ENV], a                                ; $401e: $e0 $21
	ld b, b                                          ; $4020: $40
	ld b, e                                          ; $4021: $43
	dec de                                           ; $4022: $1b
	ldh [$9b], a                                     ; $4023: $e0 $9b
	ldh a, [$e0]                                     ; $4025: $f0 $e0
	ld b, c                                          ; $4027: $41
	ldh [$1f], a                                     ; $4028: $e0 $1f
	ldh [$9f], a                                     ; $402a: $e0 $9f
	ld bc, $5b80                                     ; $402c: $01 $80 $5b
	rst $38                                          ; $402f: $ff
	ld e, a                                          ; $4030: $5f
	db $fd                                           ; $4031: $fd
	rst $38                                          ; $4032: $ff
	ld hl, sp-$51                                    ; $4033: $f8 $af
	ld hl, sp-$74                                    ; $4035: $f8 $8c
	ld hl, sp+$0c                                    ; $4037: $f8 $0c
	db $fc                                           ; $4039: $fc
	inc e                                            ; $403a: $1c
	push af                                          ; $403b: $f5
	ld a, $e4                                        ; $403c: $3e $e4
	ld a, $e6                                        ; $403e: $3e $e6
	ld a, $ee                                        ; $4040: $3e $ee
	ld a, $f2                                        ; $4042: $3e $f2
	ld l, $fa                                        ; $4044: $2e $fa
	ld h, a                                          ; $4046: $67
	cp $46                                           ; $4047: $fe $46
	rst $38                                          ; $4049: $ff
	ld c, e                                          ; $404a: $4b
	ld sp, hl                                        ; $404b: $f9
	adc l                                            ; $404c: $8d
	sbc e                                            ; $404d: $9b
	ld sp, hl                                        ; $404e: $f9
	sub a                                            ; $404f: $97
	rst $38                                          ; $4050: $ff
	dec d                                            ; $4051: $15
	ld a, e                                          ; $4052: $7b
	cp $9c                                           ; $4053: $fe $9c

jr_06b_4055:
	dec h                                            ; $4055: $25
	rst $38                                          ; $4056: $ff
	add hl, hl                                       ; $4057: $29
	ld a, e                                          ; $4058: $7b
	cp $80                                           ; $4059: $fe $80
	ld l, $ff                                        ; $405b: $2e $ff
	add hl, sp                                       ; $405d: $39
	cp $37                                           ; $405e: $fe $37
	ld hl, sp+$3f                                    ; $4060: $f8 $3f
	ldh [$7f], a                                     ; $4062: $e0 $7f
	pop hl                                           ; $4064: $e1
	ld a, a                                          ; $4065: $7f
	pop bc                                           ; $4066: $c1
	ld a, [hl]                                       ; $4067: $7e
	jp $c27e                                         ; $4068: $c3 $7e $c2


	ld a, h                                          ; $406b: $7c
	add $7c                                          ; $406c: $c6 $7c
	call nz, $c47e                                   ; $406e: $c4 $7e $c4
	sbc [hl]                                         ; $4071: $9e
	ldh [c], a                                       ; $4072: $e2
	xor $70                                          ; $4073: $ee $70
	ei                                               ; $4075: $fb
	inc e                                            ; $4076: $1c
	daa                                              ; $4077: $27
	ld e, $3b                                        ; $4078: $1e $3b
	sbc b                                            ; $407a: $98
	ld a, h                                          ; $407b: $7c
	rst SubAFromBC                                          ; $407c: $e7
	or $3e                                           ; $407d: $f6 $3e
	sbc h                                            ; $407f: $9c
	ld [hl], h                                       ; $4080: $74
	inc e                                            ; $4081: $1c
	rst FarCall                                          ; $4082: $f7
	sbc [hl]                                         ; $4083: $9e
	add b                                            ; $4084: $80
	ld [hl], e                                       ; $4085: $73
	db $fd                                           ; $4086: $fd
	rst $38                                          ; $4087: $ff
	sub l                                            ; $4088: $95
	rlca                                             ; $4089: $07
	nop                                              ; $408a: $00
	inc c                                            ; $408b: $0c
	inc bc                                           ; $408c: $03
	rlca                                             ; $408d: $07
	rrca                                             ; $408e: $0f
	ld c, $01                                        ; $408f: $0e $01
	rlca                                             ; $4091: $07
	inc bc                                           ; $4092: $03
	db $fd                                           ; $4093: $fd
	sbc [hl]                                         ; $4094: $9e
	jr nz, jr_06b_4055                               ; $4095: $20 $be

	ld h, b                                          ; $4097: $60
	ldh a, [rSVBK]                                   ; $4098: $f0 $70
	sbc e                                            ; $409a: $9b
	add b                                            ; $409b: $80
	and b                                            ; $409c: $a0

Jump_06b_409d:
	ret nz                                           ; $409d: $c0

	nop                                              ; $409e: $00
	cp a                                             ; $409f: $bf
	ret nz                                           ; $40a0: $c0

	ld a, [hl]                                       ; $40a1: $7e
	adc l                                            ; $40a2: $8d
	ld b, e                                          ; $40a3: $43
	rst GetHLinHL                                          ; $40a4: $cf
	ld a, l                                          ; $40a5: $7d
	ccf                                              ; $40a6: $3f
	ldh a, [rIE]                                     ; $40a7: $f0 $ff
	ret nz                                           ; $40a9: $c0

	ccf                                              ; $40aa: $3f
	ret nz                                           ; $40ab: $c0

	rst AddAOntoHL                                          ; $40ac: $ef
	ldh a, [rAUD3LEN]                                ; $40ad: $f0 $1b
	call c, Call_06b_7ef5                            ; $40af: $dc $f5 $7e
	rst SubAFromHL                                          ; $40b2: $d7
	ld [hl], b                                       ; $40b3: $70
	ccf                                              ; $40b4: $3f
	cp [hl]                                          ; $40b5: $be
	inc bc                                           ; $40b6: $03
	rrca                                             ; $40b7: $0f
	ld e, $80                                        ; $40b8: $1e $80
	ld bc, $013f                    ; $40ba: $01 $3f $01
	ld a, l                                          ; $40bd: $7d
	inc bc                                           ; $40be: $03
	ld a, [hl]                                       ; $40bf: $7e
	inc bc                                           ; $40c0: $03
	rst $38                                          ; $40c1: $ff
	rlca                                             ; $40c2: $07
	rst $38                                          ; $40c3: $ff
	rrca                                             ; $40c4: $0f
	call c, $fe3f                                    ; $40c5: $dc $3f $fe
	db $fd                                           ; $40c8: $fd
	cp $f9                                           ; $40c9: $fe $f9
	rst $38                                          ; $40cb: $ff
	pop af                                           ; $40cc: $f1
	db $fd                                           ; $40cd: $fd
	db $e3                                           ; $40ce: $e3
	cp $c3                                           ; $40cf: $fe $c3
	ld a, [$fe87]                                    ; $40d1: $fa $87 $fe
	rlca                                             ; $40d4: $07
	db $f4                                           ; $40d5: $f4
	rrca                                             ; $40d6: $0f
	ld hl, sp+$0f                                    ; $40d7: $f8 $0f
	add a                                            ; $40d9: $87
	ld hl, sp+$1f                                    ; $40da: $f8 $1f
	or $1f                                           ; $40dc: $f6 $1f
	db $d3                                           ; $40de: $d3
	ccf                                              ; $40df: $3f
	pop hl                                           ; $40e0: $e1
	ccf                                              ; $40e1: $3f
	ld a, [hl]                                       ; $40e2: $7e
	call nz, $c2be                                   ; $40e3: $c4 $be $c2
	adc $70                                          ; $40e6: $ce $70
	rst FarCall                                          ; $40e8: $f7
	jr c, @+$3b                                      ; $40e9: $38 $39

	ld c, $27                                        ; $40eb: $0e $27
	ld e, $fb                                        ; $40ed: $1e $fb
	or $1e                                           ; $40ef: $f6 $1e
	cp h                                             ; $40f1: $bc
	cpl                                              ; $40f2: $2f
	add b                                            ; $40f3: $80
	ld a, a                                          ; $40f4: $7f
	add h                                            ; $40f5: $84
	sbc b                                            ; $40f6: $98
	ld bc, $0f0f                                     ; $40f7: $01 $0f $0f
	ld b, $07                                        ; $40fa: $06 $07
	inc bc                                           ; $40fc: $03
	ld bc, $803b                                     ; $40fd: $01 $3b $80
	sub c                                            ; $4100: $91
	rst AddAOntoHL                                          ; $4101: $ef
	ld e, l                                          ; $4102: $5d
	sbc a                                            ; $4103: $9f
	ld [hl], b                                       ; $4104: $70
	ld a, a                                          ; $4105: $7f
	ldh [rIE], a                                     ; $4106: $e0 $ff
	add b                                            ; $4108: $80
	adc a                                            ; $4109: $8f
	ld [hl], b                                       ; $410a: $70
	ei                                               ; $410b: $fb
	call c, $fe75                                    ; $410c: $dc $75 $fe
	ld b, a                                          ; $410f: $47
	add b                                            ; $4110: $80
	ld d, d                                          ; $4111: $52
	ldh [$9c], a                                     ; $4112: $e0 $9c
	db $f4                                           ; $4114: $f4
	ld a, $e5                                        ; $4115: $3e $e5
	ld b, [hl]                                       ; $4117: $46
	ldh [rPCM34], a                                  ; $4118: $e0 $77
	add b                                            ; $411a: $80
	sub e                                            ; $411b: $93
	sbc $e0                                          ; $411c: $de $e0
	rst SubAFromBC                                          ; $411e: $e7
	jr c, jr_06b_415c                                ; $411f: $38 $3b

	inc e                                            ; $4121: $1c
	ccf                                              ; $4122: $3f
	ld b, $6b                                        ; $4123: $06 $6b
	or $be                                           ; $4125: $f6 $be
	db $fc                                           ; $4127: $fc
	rla                                              ; $4128: $17
	add b                                            ; $4129: $80
	sbc [hl]                                         ; $412a: $9e
	dec b                                            ; $412b: $05
	inc sp                                           ; $412c: $33
	add b                                            ; $412d: $80
	sbc e                                            ; $412e: $9b
	rst SubAFromBC                                          ; $412f: $e7
	ld e, l                                          ; $4130: $5d
	sbc a                                            ; $4131: $9f
	ld a, b                                          ; $4132: $78
	ld [hl], a                                       ; $4133: $77
	add b                                            ; $4134: $80
	sbc e                                            ; $4135: $9b
	rst $38                                          ; $4136: $ff
	nop                                              ; $4137: $00
	adc e                                            ; $4138: $8b
	db $fc                                           ; $4139: $fc
	inc bc                                           ; $413a: $03
	add b                                            ; $413b: $80
	dec sp                                           ; $413c: $3b
	add b                                            ; $413d: $80
	adc a                                            ; $413e: $8f
	cp $82                                           ; $413f: $fe $82
	sbc [hl]                                         ; $4141: $9e
	ldh [$ef], a                                     ; $4142: $e0 $ef
	ld [hl], b                                       ; $4144: $70
	inc sp                                           ; $4145: $33
	inc a                                            ; $4146: $3c
	dec a                                            ; $4147: $3d
	ld c, $19                                        ; $4148: $0e $19
	ld b, $d6                                        ; $414a: $06 $d6
	xor $7c                                          ; $414c: $ee $7c
	inc a                                            ; $414e: $3c
	scf                                              ; $414f: $37
	add b                                            ; $4150: $80
	ld a, a                                          ; $4151: $7f
	or b                                             ; $4152: $b0
	ld a, a                                          ; $4153: $7f
	ld a, [hl]                                       ; $4154: $7e
	sbc d                                            ; $4155: $9a
	add hl, bc                                       ; $4156: $09
	rlca                                             ; $4157: $07
	rlca                                             ; $4158: $07
	ld b, $01                                        ; $4159: $06 $01
	ld a, d                                          ; $415b: $7a

jr_06b_415c:
	ld a, [hl]                                       ; $415c: $7e
	ccf                                              ; $415d: $3f
	add b                                            ; $415e: $80
	sbc h                                            ; $415f: $9c
	rst SubAFromDE                                          ; $4160: $df
	jr c, @+$31                                      ; $4161: $38 $2f

	ld a, d                                          ; $4163: $7a
	ld a, [hl]                                       ; $4164: $7e
	ld a, a                                          ; $4165: $7f
	add b                                            ; $4166: $80
	ld a, a                                          ; $4167: $7f
	cp $9b                                           ; $4168: $fe $9b
	ld l, l                                          ; $416a: $6d
	sbc [hl]                                         ; $416b: $9e
	rst FarCall                                          ; $416c: $f7
	ld hl, sp+$4f                                    ; $416d: $f8 $4f
	add b                                            ; $416f: $80
	add b                                            ; $4170: $80
	ret nz                                           ; $4171: $c0

	add b                                            ; $4172: $80
	ldh [$c0], a                                     ; $4173: $e0 $c0
	ld [hl], b                                       ; $4175: $70
	ldh [$58], a                                     ; $4176: $e0 $58
	ldh a, [$7c]                                     ; $4178: $f0 $7c
	ld hl, sp-$04                                    ; $417a: $f8 $fc
	cp $fb                                           ; $417c: $fe $fb
	rst $38                                          ; $417e: $ff
	di                                               ; $417f: $f3
	cp $fb                                           ; $4180: $fe $fb
	and $ff                                          ; $4182: $e6 $ff
	jp nz, $86cb                                     ; $4184: $c2 $cb $86

	sbc e                                            ; $4187: $9b
	ld b, $97                                        ; $4188: $06 $97
	inc c                                            ; $418a: $0c
	rlca                                             ; $418b: $07
	inc e                                            ; $418c: $1c
	cpl                                              ; $418d: $2f
	rra                                              ; $418e: $1f
	ld a, l                                          ; $418f: $7d
	sbc e                                            ; $4190: $9b
	ld a, $b0                                        ; $4191: $3e $b0
	ldh [rAUD1SWEEP], a                              ; $4193: $e0 $10
	cp [hl]                                          ; $4195: $be
	ld h, c                                          ; $4196: $61
	inc bc                                           ; $4197: $03
	rlca                                             ; $4198: $07
	sbc l                                            ; $4199: $9d
	inc bc                                           ; $419a: $03
	rla                                              ; $419b: $17
	ld a, d                                          ; $419c: $7a
	ld e, b                                          ; $419d: $58

Jump_06b_419e:
	sbc h                                            ; $419e: $9c
	xor $f1                                          ; $419f: $ee $f1
	rrca                                             ; $41a1: $0f
	ld a, d                                          ; $41a2: $7a
	ld a, [de]                                       ; $41a3: $1a
	adc a                                            ; $41a4: $8f
	ld c, $04                                        ; $41a5: $0e $04
	dec e                                            ; $41a7: $1d
	ld [$3039], sp                                   ; $41a8: $08 $39 $30
	db $d3                                           ; $41ab: $d3
	ld h, b                                          ; $41ac: $60
	jp $0380                                         ; $41ad: $c3 $80 $03


	nop                                              ; $41b0: $00
	or b                                             ; $41b1: $b0
	ldh [rSVBK], a                                   ; $41b2: $e0 $70
	ld h, b                                          ; $41b4: $60
	rrca                                             ; $41b5: $0f
	ldh [$9a], a                                     ; $41b6: $e0 $9a
	ldh a, [$e0]                                     ; $41b8: $f0 $e0
	and c                                            ; $41ba: $a1
	ld h, b                                          ; $41bb: $60
	ld h, e                                          ; $41bc: $63
	inc hl                                           ; $41bd: $23
	ldh [$7f], a                                     ; $41be: $e0 $7f
	ldh [c], a                                       ; $41c0: $e2
	ld a, a                                          ; $41c1: $7f
	cp $9b                                           ; $41c2: $fe $9b
	ld h, c                                          ; $41c4: $61
	ldh [$a3], a                                     ; $41c5: $e0 $a3
	ld b, b                                          ; $41c7: $40
	daa                                              ; $41c8: $27
	ldh [$0d], a                                     ; $41c9: $e0 $0d
	inc bc                                           ; $41cb: $03
	rst $38                                          ; $41cc: $ff
	rst SubAFromDE                                          ; $41cd: $df
	ld bc, $0297                                     ; $41ce: $01 $97 $02
	inc bc                                           ; $41d1: $03
	inc bc                                           ; $41d2: $03
	ld [bc], a                                       ; $41d3: $02
	dec b                                            ; $41d4: $05
	ld b, $06                                        ; $41d5: $06 $06
	dec b                                            ; $41d7: $05
	ld l, a                                          ; $41d8: $6f
	cp $9d                                           ; $41d9: $fe $9d
	inc b                                            ; $41db: $04
	rlca                                             ; $41dc: $07
	ld [hl], a                                       ; $41dd: $77
	cp $7f                                           ; $41de: $fe $7f
	db $ec                                           ; $41e0: $ec
	ld a, a                                          ; $41e1: $7f
	cp $dd                                           ; $41e2: $fe $dd
	ld bc, $dbf3                                     ; $41e4: $01 $f3 $db
	ld bc, $0fdf                                     ; $41e7: $01 $df $0f
	sub l                                            ; $41ea: $95
	jr nc, jr_06b_422c                               ; $41eb: $30 $3f

	ld b, b                                          ; $41ed: $40
	ld a, a                                          ; $41ee: $7f
	ld h, b                                          ; $41ef: $60
	ld a, a                                          ; $41f0: $7f
	ldh a, [$df]                                     ; $41f1: $f0 $df
	ret c                                            ; $41f3: $d8

	xor a                                            ; $41f4: $af
	ld l, a                                          ; $41f5: $6f
	ld [$07df], a                                    ; $41f6: $ea $df $07
	di                                               ; $41f9: $f3
	rst SubAFromDE                                          ; $41fa: $df
	ld b, c                                          ; $41fb: $41
	add b                                            ; $41fc: $80
	pop bc                                           ; $41fd: $c1
	ret nz                                           ; $41fe: $c0

	and c                                            ; $41ff: $a1
	pop hl                                           ; $4200: $e1
	cp a                                             ; $4201: $bf
	rst SubAFromDE                                          ; $4202: $df
	ld a, [hl]                                       ; $4203: $7e
	ld h, c                                          ; $4204: $61
	ret nz                                           ; $4205: $c0

	rst $38                                          ; $4206: $ff
	db $10                                           ; $4207: $10
	rst $38                                          ; $4208: $ff
	jr nz, @+$01                                     ; $4209: $20 $ff

	ld b, b                                          ; $420b: $40
	rst $38                                          ; $420c: $ff
	ld b, e                                          ; $420d: $43
	rst $38                                          ; $420e: $ff
	adc a                                            ; $420f: $8f
	cp $9e                                           ; $4210: $fe $9e
	push af                                          ; $4212: $f5
	cp e                                             ; $4213: $bb
	push af                                          ; $4214: $f5
	ld b, e                                          ; $4215: $43
	jp hl                                            ; $4216: $e9


	jp $d2aa                                         ; $4217: $c3 $aa $d2


	add d                                            ; $421a: $82
	call nz, $8099                                   ; $421b: $c4 $99 $80
	call nz, $c080                                   ; $421e: $c4 $80 $c0
	add b                                            ; $4221: $80
	pop bc                                           ; $4222: $c1
	ld e, e                                          ; $4223: $5b
	cp $9e                                           ; $4224: $fe $9e
	add c                                            ; $4226: $81
	ld a, e                                          ; $4227: $7b
	cp $9a                                           ; $4228: $fe $9a
	add e                                            ; $422a: $83
	add b                                            ; $422b: $80

jr_06b_422c:
	add e                                            ; $422c: $83
	ld bc, $7b87                                     ; $422d: $01 $87 $7b
	cp $93                                           ; $4230: $fe $93
	cp $ff                                           ; $4232: $fe $ff
	call c, Call_06b_78af                            ; $4234: $dc $af $78
	rst SubAFromDE                                          ; $4237: $df
	inc [hl]                                         ; $4238: $34
	rst FarCall                                          ; $4239: $f7
	ld [de], a                                       ; $423a: $12
	di                                               ; $423b: $f3
	dec h                                            ; $423c: $25
	rst SubAFromBC                                          ; $423d: $e7
	push hl                                          ; $423e: $e5
	rst SubAFromDE                                          ; $423f: $df
	ld bc, $5b7f                                     ; $4240: $01 $7f $5b
	ld a, a                                          ; $4243: $7f
	ld d, l                                          ; $4244: $55
	add c                                            ; $4245: $81
	dec bc                                           ; $4246: $0b
	inc c                                            ; $4247: $0c
	rrca                                             ; $4248: $0f
	ld [$1916], sp                                   ; $4249: $08 $16 $19
	ld e, $13                                        ; $424c: $1e $13
	dec l                                            ; $424e: $2d
	ld [hl], $37                                     ; $424f: $36 $37
	inc l                                            ; $4251: $2c
	ccf                                              ; $4252: $3f
	jr z, jr_06b_42c4                                ; $4253: $28 $6f

	ld e, b                                          ; $4255: $58
	rst $38                                          ; $4256: $ff
	ldh a, [$3c]                                     ; $4257: $f0 $3c
	inc sp                                           ; $4259: $33
	ld a, [hl+]                                      ; $425a: $2a
	scf                                              ; $425b: $37
	dec [hl]                                         ; $425c: $35
	ld l, $5b                                        ; $425d: $2e $5b
	ld l, h                                          ; $425f: $6c
	ld h, l                                          ; $4260: $65
	ld e, e                                          ; $4261: $5b
	ld e, a                                          ; $4262: $5f
	ld [hl], a                                       ; $4263: $77
	ldh [$c1], a                                     ; $4264: $e0 $c1
	adc h                                            ; $4266: $8c
	rst $38                                          ; $4267: $ff
	rrca                                             ; $4268: $0f
	rst $38                                          ; $4269: $ff
	rrca                                             ; $426a: $0f
	cp $1f                                           ; $426b: $fe $1f
	cp $3b                                           ; $426d: $fe $3b
	ei                                               ; $426f: $fb
	ld [hl], c                                       ; $4270: $71
	rst GetHLinHL                                          ; $4271: $cf
	ei                                               ; $4272: $fb
	adc h                                            ; $4273: $8c
	rst $38                                          ; $4274: $ff
	jr nc, @+$01                                     ; $4275: $30 $ff

	ret nz                                           ; $4277: $c0

	rst $38                                          ; $4278: $ff
	nop                                              ; $4279: $00
	ld l, e                                          ; $427a: $6b
	cp $99                                           ; $427b: $fe $99
	ld b, c                                          ; $427d: $41
	cp $e2                                           ; $427e: $fe $e2
	cp l                                             ; $4280: $bd
	or l                                             ; $4281: $b5
	ld a, [de]                                       ; $4282: $1a
	db $ed                                           ; $4283: $ed
	rst SubAFromDE                                          ; $4284: $df
	rrca                                             ; $4285: $0f
	ld a, [hl]                                       ; $4286: $7e
	call nz, $1fdf                                   ; $4287: $c4 $df $1f
	add b                                            ; $428a: $80
	ld l, a                                          ; $428b: $6f
	ld [hl], b                                       ; $428c: $70
	cp a                                             ; $428d: $bf
	ret nz                                           ; $428e: $c0

	db $fc                                           ; $428f: $fc
	inc bc                                           ; $4290: $03
	ldh [$1f], a                                     ; $4291: $e0 $1f
	adc b                                            ; $4293: $88
	ld [hl], b                                       ; $4294: $70
	dec a                                            ; $4295: $3d
	ret nz                                           ; $4296: $c0

	ld [hl], b                                       ; $4297: $70
	add b                                            ; $4298: $80
	ret nz                                           ; $4299: $c0

	nop                                              ; $429a: $00
	sbc c                                            ; $429b: $99
	nop                                              ; $429c: $00
	ld a, h                                          ; $429d: $7c
	nop                                              ; $429e: $00
	and $18                                          ; $429f: $e6 $18
	ret nc                                           ; $42a1: $d0

	jr nz, @+$11                                     ; $42a2: $20 $0f

	ret nz                                           ; $42a4: $c0

	scf                                              ; $42a5: $37
	adc c                                            ; $42a6: $89
	ld l, a                                          ; $42a7: $6f
	ld [hl-], a                                      ; $42a8: $32
	jp c, $6598                                      ; $42a9: $da $98 $65

	cp a                                             ; $42ac: $bf
	call $b5f7                                       ; $42ad: $cd $f7 $b5
	push bc                                          ; $42b0: $c5
	ld b, a                                          ; $42b1: $47
	ldh [$c1], a                                     ; $42b2: $e0 $c1
	rst SubAFromDE                                          ; $42b4: $df
	rst $38                                          ; $42b5: $ff
	sbc h                                            ; $42b6: $9c
	or $c9                                           ; $42b7: $f6 $c9
	ld [hl], $7b                                     ; $42b9: $36 $7b
	cp $87                                           ; $42bb: $fe $87
	dec de                                           ; $42bd: $1b
	db $e4                                           ; $42be: $e4
	ei                                               ; $42bf: $fb
	db $f4                                           ; $42c0: $f4
	rlca                                             ; $42c1: $07
	rst $38                                          ; $42c2: $ff
	dec b                                            ; $42c3: $05

jr_06b_42c4:
	ld a, [$f40b]                                    ; $42c4: $fa $0b $f4
	ld d, $e9                                        ; $42c7: $16 $e9
	inc l                                            ; $42c9: $2c
	db $d3                                           ; $42ca: $d3
	ld e, b                                          ; $42cb: $58
	and a                                            ; $42cc: $a7
	or b                                             ; $42cd: $b0
	ld c, a                                          ; $42ce: $4f
	ld h, c                                          ; $42cf: $61
	sub a                                            ; $42d0: $97
	ret nz                                           ; $42d1: $c0

	dec hl                                           ; $42d2: $2b
	add b                                            ; $42d3: $80
	ld [hl], l                                       ; $42d4: $75
	rst AddAOntoHL                                          ; $42d5: $ef
	rst SubAFromDE                                          ; $42d6: $df
	ccf                                              ; $42d7: $3f
	add b                                            ; $42d8: $80
	sbc $e1                                          ; $42d9: $de $e1
	rst $38                                          ; $42db: $ff
	nop                                              ; $42dc: $00
	rst JumpTable                                          ; $42dd: $c7
	ld hl, sp-$08                                    ; $42de: $f8 $f8
	rlca                                             ; $42e0: $07
	adc $31                                          ; $42e1: $ce $31
	ld [hl], e                                       ; $42e3: $73
	adc h                                            ; $42e4: $8c
	dec e                                            ; $42e5: $1d
	ldh [c], a                                       ; $42e6: $e2
	adc $31                                          ; $42e7: $ce $31
	ldh a, [c]                                       ; $42e9: $f2
	dec c                                            ; $42ea: $0d
	add hl, sp                                       ; $42eb: $39
	ld b, $0c                                        ; $42ec: $06 $0c
	inc bc                                           ; $42ee: $03
	db $e4                                           ; $42ef: $e4
	inc bc                                           ; $42f0: $03
	adc d                                            ; $42f1: $8a
	ld [hl], c                                       ; $42f2: $71
	inc hl                                           ; $42f3: $23
	dec e                                            ; $42f4: $1d
	ei                                               ; $42f5: $fb
	ccf                                              ; $42f6: $3f
	sbc $93                                          ; $42f7: $de $93
	rst SubAFromBC                                          ; $42f9: $e7
	sbc [hl]                                         ; $42fa: $9e
	rlca                                             ; $42fb: $07
	ldh a, [$7c]                                     ; $42fc: $f0 $7c
	adc e                                            ; $42fe: $8b
	rst GetHLinHL                                          ; $42ff: $cf
	rlca                                             ; $4300: $07
	add [hl]                                         ; $4301: $86
	ld bc, $0003                                     ; $4302: $01 $03 $00
	ld c, d                                          ; $4305: $4a
	nop                                              ; $4306: $00
	ldh [$cf], a                                     ; $4307: $e0 $cf
	sbc [hl]                                         ; $4309: $9e
	ldh [rOCPS], a                                   ; $430a: $e0 $6a
	jp nc, $019e                                     ; $430c: $d2 $9e $01

	ld a, e                                          ; $430f: $7b
	cp $8b                                           ; $4310: $fe $8b
	pop af                                           ; $4312: $f1
	rst $38                                          ; $4313: $ff
	adc a                                            ; $4314: $8f
	ld a, a                                          ; $4315: $7f
	rlca                                             ; $4316: $07
	ei                                               ; $4317: $fb
	rrca                                             ; $4318: $0f
	push af                                          ; $4319: $f5
	inc d                                            ; $431a: $14
	db $eb                                           ; $431b: $eb
	ld d, h                                          ; $431c: $54
	db $eb                                           ; $431d: $eb
	cp h                                             ; $431e: $bc
	xor e                                            ; $431f: $ab
	ld a, [de]                                       ; $4320: $1a
	ld d, l                                          ; $4321: $55
	xor [hl]                                         ; $4322: $ae
	or l                                             ; $4323: $b5
	ld b, a                                          ; $4324: $47
	ld a, [$dfed]                                    ; $4325: $fa $ed $df
	ldh [c], a                                       ; $4328: $e2
	add b                                            ; $4329: $80
	db $db                                           ; $432a: $db
	dec sp                                           ; $432b: $3b
	and $1f                                          ; $432c: $e6 $1f
	di                                               ; $432e: $f3
	ld c, $7a                                        ; $432f: $0e $7a
	add a                                            ; $4331: $87
	add hl, sp                                       ; $4332: $39
	rst JumpTable                                          ; $4333: $c7
	ld [hl-], a                                      ; $4334: $32
	rst GetHLinHL                                          ; $4335: $cf
	dec [hl]                                         ; $4336: $35
	adc $2f                                          ; $4337: $ce $2f
	rst SubAFromDE                                          ; $4339: $df
	ld de, $1ffe                                     ; $433a: $11 $fe $1f
	ldh [rKEY1], a                                   ; $433d: $e0 $4d
	ldh a, [hDisp0_LCDC]                                     ; $433f: $f0 $82
	db $fc                                           ; $4341: $fc
	ld a, a                                          ; $4342: $7f
	add b                                            ; $4343: $80
	cp e                                             ; $4344: $bb
	ret nz                                           ; $4345: $c0

	ld l, h                                          ; $4346: $6c
	ldh a, [$d2]                                     ; $4347: $f0 $d2
	sub h                                            ; $4349: $94
	inc c                                            ; $434a: $0c
	adc b                                            ; $434b: $88
	ld b, $20                                        ; $434c: $06 $20
	add $55                                          ; $434e: $c6 $55
	ld [hl+], a                                      ; $4350: $22
	add h                                            ; $4351: $84
	inc sp                                           ; $4352: $33
	xor d                                            ; $4353: $aa
	or a                                             ; $4354: $b7
	ldh [$c1], a                                     ; $4355: $e0 $c1
	add b                                            ; $4357: $80
	jp z, $8af7                                      ; $4358: $ca $f7 $8a

	rst FarCall                                          ; $435b: $f7
	sbc d                                            ; $435c: $9a
	rst SubAFromBC                                          ; $435d: $e7
	sbc l                                            ; $435e: $9d
	and $35                                          ; $435f: $e6 $35
	adc $26                                          ; $4361: $ce $26
	call z, $cc24                                    ; $4363: $cc $24 $cc
	ld b, $cc                                        ; $4366: $06 $cc
	dec b                                            ; $4368: $05
	adc $26                                          ; $4369: $ce $26
	rst GetHLinHL                                          ; $436b: $cf
	and [hl]                                         ; $436c: $a6
	rst GetHLinHL                                          ; $436d: $cf
	sbc e                                            ; $436e: $9b
	rst SubAFromBC                                          ; $436f: $e7
	sbc e                                            ; $4370: $9b
	rst SubAFromBC                                          ; $4371: $e7
	ld e, e                                          ; $4372: $5b
	rst SubAFromBC                                          ; $4373: $e7
	ld c, a                                          ; $4374: $4f
	di                                               ; $4375: $f3
	ld h, l                                          ; $4376: $65
	sbc [hl]                                         ; $4377: $9e
	ei                                               ; $4378: $fb
	jp hl                                            ; $4379: $e9


	rst SubAFromDE                                          ; $437a: $df
	add b                                            ; $437b: $80
	rst SubAFromDE                                          ; $437c: $df
	cp h                                             ; $437d: $bc
	add b                                            ; $437e: $80
	jp c, Jump_06b_7de6                              ; $437f: $da $e6 $7d

	add e                                            ; $4382: $83
	rst $38                                          ; $4383: $ff
	nop                                              ; $4384: $00
	db $fc                                           ; $4385: $fc
	inc bc                                           ; $4386: $03
	adc a                                            ; $4387: $8f
	ldh a, [$f1]                                     ; $4388: $f0 $f1
	ld c, $c6                                        ; $438a: $0e $c6
	ld bc, $30c9                                     ; $438c: $01 $c9 $30
	ld [hl], l                                       ; $438f: $75
	ld [$041a], sp                                   ; $4390: $08 $1a $04
	adc l                                            ; $4393: $8d
	ld [bc], a                                       ; $4394: $02
	push bc                                          ; $4395: $c5
	ld [bc], a                                       ; $4396: $02
	inc b                                            ; $4397: $04
	inc bc                                           ; $4398: $03
	ld h, [hl]                                       ; $4399: $66
	ld bc, $0172                                     ; $439a: $01 $72 $01
	ld [de], a                                       ; $439d: $12
	sub b                                            ; $439e: $90
	ld hl, $2013                                     ; $439f: $21 $13 $20
	ld e, e                                          ; $43a2: $5b
	jr nz, jr_06b_43f0                               ; $43a3: $20 $4b

	jr nc, jr_06b_43f2                               ; $43a5: $30 $4b

	jr nc, jr_06b_43f3                               ; $43a7: $30 $4a

	ld sp, $31ca                                     ; $43a9: $31 $ca $31
	ld e, [hl]                                       ; $43ac: $5e
	or c                                             ; $43ad: $b1
	ld [hl], a                                       ; $43ae: $77
	cp $8c                                           ; $43af: $fe $8c
	inc d                                            ; $43b1: $14
	ei                                               ; $43b2: $fb
	dec d                                            ; $43b3: $15
	ei                                               ; $43b4: $fb

Jump_06b_43b5:
	sub l                                            ; $43b5: $95
	ei                                               ; $43b6: $fb
	pop de                                           ; $43b7: $d1
	rst $38                                          ; $43b8: $ff
	ld d, c                                          ; $43b9: $51
	rst $38                                          ; $43ba: $ff
	ld a, e                                          ; $43bb: $7b
	rst $38                                          ; $43bc: $ff
	ld e, e                                          ; $43bd: $5b
	rst $38                                          ; $43be: $ff
	set 7, a                                         ; $43bf: $cb $ff
	or a                                             ; $43c1: $b7
	rst GetHLinHL                                          ; $43c2: $cf
	or [hl]                                          ; $43c3: $b6
	ld a, e                                          ; $43c4: $7b
	cp $80                                           ; $43c5: $fe $80
	and $9f                                          ; $43c7: $e6 $9f
	ld l, e                                          ; $43c9: $6b
	sbc [hl]                                         ; $43ca: $9e
	ld c, e                                          ; $43cb: $4b
	cp [hl]                                          ; $43cc: $be
	push de                                          ; $43cd: $d5
	ld a, $ad                                        ; $43ce: $3e $ad
	halt                                             ; $43d0: $76
	ld d, e                                          ; $43d1: $53
	db $e4                                           ; $43d2: $e4
	adc b                                            ; $43d3: $88
	push hl                                          ; $43d4: $e5
	jr nz, @-$31                                     ; $43d5: $20 $cd

	sub b                                            ; $43d7: $90
	ld c, l                                          ; $43d8: $4d
	sub d                                            ; $43d9: $92
	ld c, l                                          ; $43da: $4d
	ld h, [hl]                                       ; $43db: $66
	sbc c                                            ; $43dc: $99
	push de                                          ; $43dd: $d5
	cp e                                             ; $43de: $bb
	ld d, l                                          ; $43df: $55
	cp e                                             ; $43e0: $bb
	ld d, c                                          ; $43e1: $51
	cp a                                             ; $43e2: $bf
	ld hl, $22ff                                     ; $43e3: $21 $ff $22
	ld a, e                                          ; $43e6: $7b
	cp $9e                                           ; $43e7: $fe $9e
	ld b, d                                          ; $43e9: $42
	ld a, e                                          ; $43ea: $7b
	cp $7c                                           ; $43eb: $fe $7c
	cp [hl]                                          ; $43ed: $be
	add b                                            ; $43ee: $80
	inc hl                                           ; $43ef: $23

jr_06b_43f0:
	cp $26                                           ; $43f0: $fe $26

jr_06b_43f2:
	db $fc                                           ; $43f2: $fc

jr_06b_43f3:
	dec l                                            ; $43f3: $2d
	ld hl, sp+$3a                                    ; $43f4: $f8 $3a
	ldh a, [$74]                                     ; $43f6: $f0 $74
	ldh [rBCPS], a                                   ; $43f8: $e0 $68
	ret nz                                           ; $43fa: $c0

	ret nc                                           ; $43fb: $d0

	ret nz                                           ; $43fc: $c0

	or b                                             ; $43fd: $b0
	add b                                            ; $43fe: $80
	or c                                             ; $43ff: $b1
	nop                                              ; $4400: $00
	ld d, c                                          ; $4401: $51
	ld bc, $e0e0                                     ; $4402: $01 $e0 $e0
	call z, Call_06b_703c                            ; $4405: $cc $3c $70
	ldh a, [$f0]                                     ; $4408: $f0 $f0
	db $10                                           ; $440a: $10
	ld a, b                                          ; $440b: $78
	adc b                                            ; $440c: $88
	inc e                                            ; $440d: $1c
	adc a                                            ; $440e: $8f
	db $e4                                           ; $440f: $e4
	xor h                                            ; $4410: $ac
	ld [hl], h                                       ; $4411: $74
	sbc $32                                          ; $4412: $de $32
	or $1a                                           ; $4414: $f6 $1a
	rst AddAOntoHL                                          ; $4416: $ef
	add hl, de                                       ; $4417: $19
	rst AddAOntoHL                                          ; $4418: $ef
	add hl, de                                       ; $4419: $19
	ei                                               ; $441a: $fb
	dec c                                            ; $441b: $0d
	ld a, e                                          ; $441c: $7b
	adc l                                            ; $441d: $8d
	ld [hl], a                                       ; $441e: $77
	ld l, a                                          ; $441f: $6f
	cp $97                                           ; $4420: $fe $97
	adc h                                            ; $4422: $8c
	or l                                             ; $4423: $b5
	adc $b5                                          ; $4424: $ce $b5
	adc $a5                                          ; $4426: $ce $a5
	sbc $a9                                          ; $4428: $de $a9
	ld a, e                                          ; $442a: $7b
	cp $8f                                           ; $442b: $fe $8f
	xor b                                            ; $442d: $a8
	rst SubAFromDE                                          ; $442e: $df
	sbc c                                            ; $442f: $99
	rst $38                                          ; $4430: $ff
	sbc c                                            ; $4431: $99
	rst $38                                          ; $4432: $ff
	dec d                                            ; $4433: $15
	rst $38                                          ; $4434: $ff
	ld [hl], $fd                                     ; $4435: $36 $fd
	cpl                                              ; $4437: $2f
	db $f4                                           ; $4438: $f4
	cpl                                              ; $4439: $2f
	db $f4                                           ; $443a: $f4
	ld l, l                                          ; $443b: $6d
	or $77                                           ; $443c: $f6 $77
	cp $80                                           ; $443e: $fe $80
	xor l                                            ; $4440: $ad
	or $d8                                           ; $4441: $f6 $d8
	or a                                             ; $4443: $b7
	jp c, $9ab7                                      ; $4444: $da $b7 $9a

	or a                                             ; $4447: $b7
	cp [hl]                                          ; $4448: $be
	sub e                                            ; $4449: $93
	or l                                             ; $444a: $b5
	sbc e                                            ; $444b: $9b
	adc e                                            ; $444c: $8b
	sbc c                                            ; $444d: $99
	jp z, $d599                                      ; $444e: $ca $99 $d5

	adc b                                            ; $4451: $88
	push de                                          ; $4452: $d5
	adc b                                            ; $4453: $88
	xor b                                            ; $4454: $a8
	call nz, $c4aa                                   ; $4455: $c4 $aa $c4
	sbc a                                            ; $4458: $9f
	db $e4                                           ; $4459: $e4
	ld d, l                                          ; $445a: $55
	xor $43                                          ; $445b: $ee $43
	cp $43                                           ; $445d: $fe $43
	sbc [hl]                                         ; $445f: $9e
	cp $77                                           ; $4460: $fe $77
	add d                                            ; $4462: $82
	ld a, a                                          ; $4463: $7f
	cp $8a                                           ; $4464: $fe $8a
	ccf                                              ; $4466: $3f
	rst $38                                          ; $4467: $ff
	ld [hl], b                                       ; $4468: $70
	ldh [$cf], a                                     ; $4469: $e0 $cf
	add e                                            ; $446b: $83
	jr nc, @+$22                                     ; $446c: $30 $20

	ldh [rLCDC], a                                   ; $446e: $e0 $40
	ld h, b                                          ; $4470: $60
	ld b, b                                          ; $4471: $40
	ld b, c                                          ; $4472: $41
	ld b, b                                          ; $4473: $40
	pop bc                                           ; $4474: $c1
	ld bc, $81c3                                     ; $4475: $01 $c3 $81
	add e                                            ; $4478: $83
	add d                                            ; $4479: $82
	add a                                            ; $447a: $87
	ld a, b                                          ; $447b: $78
	add h                                            ; $447c: $84
	sbc l                                            ; $447d: $9d

jr_06b_447e:
	rrca                                             ; $447e: $0f
	inc b                                            ; $447f: $04
	push de                                          ; $4480: $d5
	add b                                            ; $4481: $80
	add b                                            ; $4482: $80
	ret nz                                           ; $4483: $c0

	ld b, b                                          ; $4484: $40
	ret nz                                           ; $4485: $c0

	ld b, b                                          ; $4486: $40
	and b                                            ; $4487: $a0
	ld h, b                                          ; $4488: $60
	ld d, b                                          ; $4489: $50
	or b                                             ; $448a: $b0
	or h                                             ; $448b: $b4

jr_06b_448c:
	call z, $f8f8                                    ; $448c: $cc $f8 $f8
	ld b, b                                          ; $448f: $40
	ret nz                                           ; $4490: $c0

	and b                                            ; $4491: $a0
	ld h, b                                          ; $4492: $60
	ret nc                                           ; $4493: $d0

	jr nc, jr_06b_447e                               ; $4494: $30 $e8

	jr jr_06b_448c                                   ; $4496: $18 $f4

	inc c                                            ; $4498: $0c
	db $fc                                           ; $4499: $fc

jr_06b_449a:
	inc b                                            ; $449a: $04
	ld [$6e16], a                                    ; $449b: $ea $16 $6e
	sub d                                            ; $449e: $92
	ld [hl], l                                       ; $449f: $75
	adc e                                            ; $44a0: $8b
	scf                                              ; $44a1: $37
	adc b                                            ; $44a2: $88
	ret                                              ; $44a3: $c9


	rla                                              ; $44a4: $17
	jp hl                                            ; $44a5: $e9


	sbc a                                            ; $44a6: $9f
	jp hl                                            ; $44a7: $e9


jr_06b_44a8:
	sbc l                                            ; $44a8: $9d
	db $eb                                           ; $44a9: $eb
	ld e, l                                          ; $44aa: $5d
	db $eb                                           ; $44ab: $eb
	adc $7a                                          ; $44ac: $ce $7a

jr_06b_44ae:
	jp c, $b476                                      ; $44ae: $da $76 $b4

	ld a, h                                          ; $44b1: $7c
	inc h                                            ; $44b2: $24
	db $fc                                           ; $44b3: $fc

jr_06b_44b4:
	jr z, jr_06b_44ae                                ; $44b4: $28 $f8

	jr nc, jr_06b_44a8                               ; $44b6: $30 $f0

	jr nz, jr_06b_449a                               ; $44b8: $20 $e0

	ld [hl], a                                       ; $44ba: $77
	cp $df                                           ; $44bb: $fe $df
	ldh a, [hDisp1_WY]                                     ; $44bd: $f0 $95
	ld hl, sp+$08                                    ; $44bf: $f8 $08
	db $fc                                           ; $44c1: $fc
	db $e4                                           ; $44c2: $e4
	db $fc                                           ; $44c3: $fc
	ld d, h                                          ; $44c4: $54
	cp $4a                                           ; $44c5: $fe $4a
	cp $8a                                           ; $44c7: $fe $8a
	ld a, e                                          ; $44c9: $7b
	cp $94                                           ; $44ca: $fe $94
	ld a, [bc]                                       ; $44cc: $0a
	cp $0a                                           ; $44cd: $fe $0a
	db $fc                                           ; $44cf: $fc
	inc d                                            ; $44d0: $14
	db $fc                                           ; $44d1: $fc
	inc d                                            ; $44d2: $14
	ld hl, sp+$28                                    ; $44d3: $f8 $28
	ldh a, [$50]                                     ; $44d5: $f0 $50
	rra                                              ; $44d7: $1f
	nop                                              ; $44d8: $00
	sub b                                            ; $44d9: $90
	adc b                                            ; $44da: $88
	xor $88                                          ; $44db: $ee $88
	ld de, $8866                                     ; $44dd: $11 $66 $88
	adc b                                            ; $44e0: $88
	sbc c                                            ; $44e1: $99
	sbc c                                            ; $44e2: $99
	ld h, [hl]                                       ; $44e3: $66
	adc b                                            ; $44e4: $88
	nop                                              ; $44e5: $00
	sbc c                                            ; $44e6: $99
	sbc c                                            ; $44e7: $99
	inc sp                                           ; $44e8: $33
	ld h, e                                          ; $44e9: $63
	ei                                               ; $44ea: $fb
	cp [hl]                                          ; $44eb: $be
	adc b                                            ; $44ec: $88
	nop                                              ; $44ed: $00
	ld [hl], a                                       ; $44ee: $77
	ld a, e                                          ; $44ef: $7b
	ei                                               ; $44f0: $fb
	ld a, a                                          ; $44f1: $7f
	db $fc                                           ; $44f2: $fc
	sbc l                                            ; $44f3: $9d
	adc b                                            ; $44f4: $88
	rst $38                                          ; $44f5: $ff
	call z, $8001                                    ; $44f6: $cc $01 $80
	xor a                                            ; $44f9: $af
	ld sp, hl                                        ; $44fa: $f9
	or a                                             ; $44fb: $b7
	ld sp, hl                                        ; $44fc: $f9
	ld e, h                                          ; $44fd: $5c
	di                                               ; $44fe: $f3
	di                                               ; $44ff: $f3
	rst FarCall                                          ; $4500: $f7
	pop af                                           ; $4501: $f1
	sub b                                            ; $4502: $90
	rst SubAFromHL                                          ; $4503: $d7
	or a                                             ; $4504: $b7
	or c                                             ; $4505: $b1
	jp nc, wTaskParam0_word0                                     ; $4506: $d2 $b0 $d0

	ret nc                                           ; $4509: $d0

	or b                                             ; $450a: $b0
	and e                                            ; $450b: $a3
	ldh a, [$f1]                                     ; $450c: $f0 $f1
	ldh [$a0], a                                     ; $450e: $e0 $a0
	ld h, b                                          ; $4510: $60
	ld h, b                                          ; $4511: $60
	jr nz, jr_06b_44b4                               ; $4512: $20 $a0

	ld h, b                                          ; $4514: $60
	and b                                            ; $4515: $a0
	ldh [$f0], a                                     ; $4516: $e0 $f0
	add b                                            ; $4518: $80
	ldh [rAUD4LEN], a                                ; $4519: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $451b: $f0 $10
	ldh a, [$38]                                     ; $451d: $f0 $38
	ldh a, [$30]                                     ; $451f: $f0 $30
	ld hl, sp-$04                                    ; $4521: $f8 $fc
	ret z                                            ; $4523: $c8

	db $ec                                           ; $4524: $ec
	sbc h                                            ; $4525: $9c
	or h                                             ; $4526: $b4
	sbc [hl]                                         ; $4527: $9e
	inc hl                                           ; $4528: $23
	ld a, $65                                        ; $4529: $3e $65
	ccf                                              ; $452b: $3f
	ld c, e                                          ; $452c: $4b
	ld a, l                                          ; $452d: $7d
	ld c, a                                          ; $452e: $4f
	ld a, c                                          ; $452f: $79
	sbc $73                                          ; $4530: $de $73
	cp $63                                           ; $4532: $fe $63
	cp h                                             ; $4534: $bc
	ld b, a                                          ; $4535: $47
	db $fd                                           ; $4536: $fd
	rlca                                             ; $4537: $07
	adc b                                            ; $4538: $88
	rst $38                                          ; $4539: $ff
	rrca                                             ; $453a: $0f
	add $86                                          ; $453b: $c6 $86
	ldh a, [c]                                       ; $453d: $f2
	ld c, $1a                                        ; $453e: $0e $1a
	cp $ee                                           ; $4540: $fe $ee
	ldh a, [rAUD3LEVEL]                              ; $4542: $f0 $1c
	ldh [$ec], a                                     ; $4544: $e0 $ec
	ldh a, [$b4]                                     ; $4546: $f0 $b4
	ld hl, sp-$30                                    ; $4548: $f8 $d0
	ret c                                            ; $454a: $d8

	and b                                            ; $454b: $a0
	ldh a, [$f0]                                     ; $454c: $f0 $f0
	ld h, b                                          ; $454e: $60
	ldh [$bd], a                                     ; $454f: $e0 $bd
	nop                                              ; $4551: $00
	ld [bc], a                                       ; $4552: $02
	ld b, $16                                        ; $4553: $06 $16
	sbc h                                            ; $4555: $9c
	ld [$1836], sp                                   ; $4556: $08 $36 $18
	db $fd                                           ; $4559: $fd
	db $dd                                           ; $455a: $dd
	ld bc, $0298                                     ; $455b: $01 $98 $02
	inc bc                                           ; $455e: $03
	rlca                                             ; $455f: $07
	inc bc                                           ; $4560: $03
	ld c, $03                                        ; $4561: $0e $03
	rra                                              ; $4563: $1f
	cp a                                             ; $4564: $bf
	ccf                                              ; $4565: $3f
	add hl, sp                                       ; $4566: $39
	sub c                                            ; $4567: $91
	ld b, $36                                        ; $4568: $06 $36
	rrca                                             ; $456a: $0f
	add hl, de                                       ; $456b: $19
	rrca                                             ; $456c: $0f
	rlca                                             ; $456d: $07
	ld bc, $0202                                     ; $456e: $01 $02 $02
	ld e, $03                                        ; $4571: $1e $03
	rrca                                             ; $4573: $0f
	ld bc, $ba07                                     ; $4574: $01 $07 $ba
	ld bc, $0f03                                     ; $4577: $01 $03 $0f
	ccf                                              ; $457a: $3f
	ld a, a                                          ; $457b: $7f
	rst $38                                          ; $457c: $ff
	db $fd                                           ; $457d: $fd
	adc l                                            ; $457e: $8d
	inc bc                                           ; $457f: $03
	rst AddAOntoHL                                          ; $4580: $ef
	rra                                              ; $4581: $1f
	rst $38                                          ; $4582: $ff
	rst $38                                          ; $4583: $ff
	ld a, $ff                                        ; $4584: $3e $ff
	db $ec                                           ; $4586: $ec
	rra                                              ; $4587: $1f
	ret nc                                           ; $4588: $d0

	ccf                                              ; $4589: $3f
	ldh [$3f], a                                     ; $458a: $e0 $3f
	pop bc                                           ; $458c: $c1
	ld a, a                                          ; $458d: $7f
	sbc a                                            ; $458e: $9f
	rst $38                                          ; $458f: $ff
	and d                                            ; $4590: $a2
	ld a, e                                          ; $4591: $7b
	cp $80                                           ; $4592: $fe $80
	ld [hl+], a                                      ; $4594: $22
	rst $38                                          ; $4595: $ff
	ld d, d                                          ; $4596: $52
	rst $38                                          ; $4597: $ff
	ldh a, [c]                                       ; $4598: $f2
	sbc a                                            ; $4599: $9f
	ld [hl], d                                       ; $459a: $72
	sbc a                                            ; $459b: $9f
	di                                               ; $459c: $f3
	sbc a                                            ; $459d: $9f
	cp e                                             ; $459e: $bb
	rst GetHLinHL                                          ; $459f: $cf
	ld e, e                                          ; $45a0: $5b
	rst AddAOntoHL                                          ; $45a1: $ef
	xor d                                            ; $45a2: $aa
	ld a, a                                          ; $45a3: $7f
	sub $3f                                          ; $45a4: $d6 $3f
	ld a, [$559f]                                    ; $45a6: $fa $9f $55
	rst AddAOntoHL                                          ; $45a9: $ef
	ld l, [hl]                                       ; $45aa: $6e
	pop af                                           ; $45ab: $f1
	rst FarCall                                          ; $45ac: $f7
	ld hl, sp-$42                                    ; $45ad: $f8 $be
	pop bc                                           ; $45af: $c1
	db $fd                                           ; $45b0: $fd
	inc bc                                           ; $45b1: $03
	cp $82                                           ; $45b2: $fe $82
	ld bc, $07f8                                     ; $45b4: $01 $f8 $07
	rst $38                                          ; $45b7: $ff
	ld bc, $1fff                                     ; $45b8: $01 $ff $1f
	ld [$7437], a                                    ; $45bb: $ea $37 $74
	rst $38                                          ; $45be: $ff
	ld hl, sp-$01                                    ; $45bf: $f8 $ff
	ldh [rIE], a                                     ; $45c1: $e0 $ff
	add c                                            ; $45c3: $81
	rst $38                                          ; $45c4: $ff
	ld [bc], a                                       ; $45c5: $02
	rst $38                                          ; $45c6: $ff
	inc c                                            ; $45c7: $0c
	rst $38                                          ; $45c8: $ff
	jr @+$01                                         ; $45c9: $18 $ff

	ld [hl], b                                       ; $45cb: $70
	rst $38                                          ; $45cc: $ff
	pop hl                                           ; $45cd: $e1
	rst $38                                          ; $45ce: $ff
	pop bc                                           ; $45cf: $c1
	rst $38                                          ; $45d0: $ff
	ld [hl], a                                       ; $45d1: $77
	jr nz, @-$69                                     ; $45d2: $20 $95

	ld e, a                                          ; $45d4: $5f
	ldh a, [$f1]                                     ; $45d5: $f0 $f1
	rst FarCall                                          ; $45d7: $f7
	rst FarCall                                          ; $45d8: $f7
	sub [hl]                                         ; $45d9: $96
	ret nc                                           ; $45da: $d0

	or a                                             ; $45db: $b7
	or e                                             ; $45dc: $b3
	rst SubAFromHL                                          ; $45dd: $d7
	ccf                                              ; $45de: $3f
	jr nz, jr_06b_4648                               ; $45df: $20 $67

	ld b, b                                          ; $45e1: $40
	sub l                                            ; $45e2: $95
	db $fc                                           ; $45e3: $fc
	nop                                              ; $45e4: $00
	inc e                                            ; $45e5: $1c
	ldh [$e4], a                                     ; $45e6: $e0 $e4
	ld hl, sp-$28                                    ; $45e8: $f8 $d8
	ret c                                            ; $45ea: $d8

	or b                                             ; $45eb: $b0
	ld hl, sp+$07                                    ; $45ec: $f8 $07
	ld b, b                                          ; $45ee: $40
	ld a, a                                          ; $45ef: $7f
	cp $99                                           ; $45f0: $fe $99
	dec [hl]                                         ; $45f2: $35
	ld c, $1f                                        ; $45f3: $0e $1f
	rrca                                             ; $45f5: $0f
	rlca                                             ; $45f6: $07
	inc bc                                           ; $45f7: $03
	ld l, a                                          ; $45f8: $6f
	ld b, b                                          ; $45f9: $40
	ccf                                              ; $45fa: $3f
	ld h, b                                          ; $45fb: $60
	sub c                                            ; $45fc: $91
	cp d                                             ; $45fd: $ba
	ld l, a                                          ; $45fe: $6f
	xor $37                                          ; $45ff: $ee $37
	halt                                             ; $4601: $76
	sbc e                                            ; $4602: $9b
	cp e                                             ; $4603: $bb
	call $e55a                                       ; $4604: $cd $5a $e5

Jump_06b_4607:
	rst FarCall                                          ; $4607: $f7
	ld hl, sp-$62                                    ; $4608: $f8 $9e
	pop hl                                           ; $460a: $e1
	ld l, a                                          ; $460b: $6f
	add b                                            ; $460c: $80
	sub l                                            ; $460d: $95
	ldh a, [$f7]                                     ; $460e: $f0 $f7
	rst FarCall                                          ; $4610: $f7
	sub a                                            ; $4611: $97
	pop de                                           ; $4612: $d1
	or b                                             ; $4613: $b0
	or d                                             ; $4614: $b2
	rst SubAFromHL                                          ; $4615: $d7
	or c                                             ; $4616: $b1
	db $d3                                           ; $4617: $d3
	ccf                                              ; $4618: $3f
	add b                                            ; $4619: $80
	sub [hl]                                         ; $461a: $96
	cp $02                                           ; $461b: $fe $02
	ldh [c], a                                       ; $461d: $e2
	ld e, $1e                                        ; $461e: $1e $1e
	db $fc                                           ; $4620: $fc
	db $fc                                           ; $4621: $fc
	ldh [$fc], a                                     ; $4622: $e0 $fc
	cp a                                             ; $4624: $bf
	db $fc                                           ; $4625: $fc
	add sp, -$66                                     ; $4626: $e8 $9a
	ldh a, [hDisp1_SCY]                                     ; $4628: $f0 $90
	ld hl, sp-$10                                    ; $462a: $f8 $f0
	ld a, b                                          ; $462c: $78
	dec de                                           ; $462d: $1b
	add b                                            ; $462e: $80
	sbc [hl]                                         ; $462f: $9e
	ld bc, $8077                                     ; $4630: $01 $77 $80
	ld a, a                                          ; $4633: $7f
	cp $96                                           ; $4634: $fe $96
	dec e                                            ; $4636: $1d
	ld c, $07                                        ; $4637: $0e $07
	rlca                                             ; $4639: $07
	ld [bc], a                                       ; $463a: $02
	rlca                                             ; $463b: $07
	rra                                              ; $463c: $1f
	inc bc                                           ; $463d: $03
	ld c, $5b                                        ; $463e: $0e $5b
	add b                                            ; $4640: $80
	sub [hl]                                         ; $4641: $96
	ldh a, [c]                                       ; $4642: $f2
	rra                                              ; $4643: $1f
	di                                               ; $4644: $f3
	rra                                              ; $4645: $1f
	ld a, e                                          ; $4646: $7b
	adc a                                            ; $4647: $8f

jr_06b_4648:
	cp e                                             ; $4648: $bb
	rst GetHLinHL                                          ; $4649: $cf
	jp c, $807b                                      ; $464a: $da $7b $80

	sub [hl]                                         ; $464d: $96
	or $1b                                           ; $464e: $f6 $1b
	ld a, e                                          ; $4650: $7b
	adc l                                            ; $4651: $8d
	cp d                                             ; $4652: $ba
	push bc                                          ; $4653: $c5
	rst FarCall                                          ; $4654: $f7
	ld hl, sp-$22                                    ; $4655: $f8 $de
	ld l, e                                          ; $4657: $6b
	add b                                            ; $4658: $80
	sbc l                                            ; $4659: $9d
	or $f1                                           ; $465a: $f6 $f1
	ld a, e                                          ; $465c: $7b
	add b                                            ; $465d: $80
	sub [hl]                                         ; $465e: $96
	or [hl]                                          ; $465f: $b6
	or b                                             ; $4660: $b0
	ret nc                                           ; $4661: $d0

	or d                                             ; $4662: $b2
	sub $d3                                          ; $4663: $d6 $d3
	or e                                             ; $4665: $b3
	and e                                            ; $4666: $a3
	pop af                                           ; $4667: $f1
	rra                                              ; $4668: $1f
	add b                                            ; $4669: $80
	sbc c                                            ; $466a: $99
	ld hl, sp+$00                                    ; $466b: $f8 $00
	cp b                                             ; $466d: $b8
	ret nz                                           ; $466e: $c0

	ldh a, [$f8]                                     ; $466f: $f0 $f8
	inc bc                                           ; $4671: $03
	add b                                            ; $4672: $80
	cp a                                             ; $4673: $bf
	rra                                              ; $4674: $1f
	add hl, bc                                       ; $4675: $09
	sbc l                                            ; $4676: $9d
	ld c, $06                                        ; $4677: $0e $06
	inc hl                                           ; $4679: $23
	add b                                            ; $467a: $80
	adc d                                            ; $467b: $8a
	cp $27                                           ; $467c: $fe $27
	xor $33                                          ; $467e: $ee $33

jr_06b_4680:
	rst FarCall                                          ; $4680: $f7
	add hl, de                                       ; $4681: $19
	ld a, [$ff0d]                                    ; $4682: $fa $0d $ff
	add b                                            ; $4685: $80
	xor $f1                                          ; $4686: $ee $f1
	ld d, $08                                        ; $4688: $16 $08
	ld b, b                                          ; $468a: $40
	nop                                              ; $468b: $00
	ld h, b                                          ; $468c: $60
	jr z, jr_06b_469b                                ; $468d: $28 $0c

	jr nc, jr_06b_4691                               ; $468f: $30 $00

jr_06b_4691:
	cp h                                             ; $4691: $bc
	jr nz, jr_06b_4694                               ; $4692: $20 $00

jr_06b_4694:
	ld bc, $de87                                     ; $4694: $01 $87 $de
	sub d                                            ; $4697: $92
	pop hl                                           ; $4698: $e1
	cp $ff                                           ; $4699: $fe $ff

jr_06b_469b:
	ld e, a                                          ; $469b: $5f
	ldh a, [hDisp1_OBP0]                                     ; $469c: $f0 $93
	ldh a, [hDisp1_SCX]                                     ; $469e: $f0 $91
	ldh a, [rAUD4LEN]                                ; $46a0: $f0 $20
	ldh a, [$31]                                     ; $46a2: $f0 $31
	pop hl                                           ; $46a4: $e1
	ld a, e                                          ; $46a5: $7b
	ldh [$9a], a                                     ; $46a6: $e0 $9a
	jr nz, jr_06b_470a                               ; $46a8: $20 $60

	jr z, jr_06b_46e0                                ; $46aa: $28 $34

	jr c, @+$7d                                      ; $46ac: $38 $7b

	rst SubAFromDE                                          ; $46ae: $df
	dec de                                           ; $46af: $1b
	ldh [$9b], a                                     ; $46b0: $e0 $9b
	ld a, h                                          ; $46b2: $7c
	jr c, jr_06b_46ed                                ; $46b3: $38 $38

	jr nc, jr_06b_46ce                               ; $46b5: $30 $17

	ret nz                                           ; $46b7: $c0

	sbc h                                            ; $46b8: $9c
	ld a, b                                          ; $46b9: $78
	inc a                                            ; $46ba: $3c
	jr nc, jr_06b_4738                               ; $46bb: $30 $7b

	rst SubAFromDE                                          ; $46bd: $df
	ld a, a                                          ; $46be: $7f
	sbc $3f                                          ; $46bf: $de $3f
	ldh [$e0], a                                     ; $46c1: $e0 $e0
	ld bc, $af80                                     ; $46c3: $01 $80 $af
	ld sp, hl                                        ; $46c6: $f9
	or a                                             ; $46c7: $b7
	ei                                               ; $46c8: $fb
	ld e, h                                          ; $46c9: $5c
	di                                               ; $46ca: $f3
	pop af                                           ; $46cb: $f1
	ldh a, [$f0]                                     ; $46cc: $f0 $f0

jr_06b_46ce:
	sub b                                            ; $46ce: $90
	ret nc                                           ; $46cf: $d0

	or b                                             ; $46d0: $b0
	or b                                             ; $46d1: $b0
	ret nc                                           ; $46d2: $d0

	or d                                             ; $46d3: $b2
	rst SubAFromHL                                          ; $46d4: $d7
	db $d3                                           ; $46d5: $d3
	or e                                             ; $46d6: $b3
	and c                                            ; $46d7: $a1
	pop af                                           ; $46d8: $f1
	ldh a, [$e0]                                     ; $46d9: $f0 $e0
	and b                                            ; $46db: $a0
	ld h, b                                          ; $46dc: $60
	ld h, b                                          ; $46dd: $60
	jr nz, jr_06b_4680                               ; $46de: $20 $a0

jr_06b_46e0:
	ld h, b                                          ; $46e0: $60
	and b                                            ; $46e1: $a0
	ldh [$f0], a                                     ; $46e2: $e0 $f0
	add b                                            ; $46e4: $80
	ldh [rAUD4LEN], a                                ; $46e5: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $46e7: $f0 $10
	ldh a, [$38]                                     ; $46e9: $f0 $38
	ldh a, [$30]                                     ; $46eb: $f0 $30

jr_06b_46ed:
	ld hl, sp-$04                                    ; $46ed: $f8 $fc
	ret z                                            ; $46ef: $c8

	db $ec                                           ; $46f0: $ec
	sbc h                                            ; $46f1: $9c
	or h                                             ; $46f2: $b4
	sbc [hl]                                         ; $46f3: $9e
	inc hl                                           ; $46f4: $23
	ld a, $65                                        ; $46f5: $3e $65
	ccf                                              ; $46f7: $3f
	ld c, e                                          ; $46f8: $4b
	ld a, l                                          ; $46f9: $7d
	ld c, a                                          ; $46fa: $4f
	ld a, c                                          ; $46fb: $79
	sbc $73                                          ; $46fc: $de $73
	cp $63                                           ; $46fe: $fe $63
	cp h                                             ; $4700: $bc
	ld b, a                                          ; $4701: $47
	db $fd                                           ; $4702: $fd
	rlca                                             ; $4703: $07
	adc c                                            ; $4704: $89
	rst $38                                          ; $4705: $ff
	rrca                                             ; $4706: $0f
	add $86                                          ; $4707: $c6 $86
	ld b, d                                          ; $4709: $42

jr_06b_470a:
	add d                                            ; $470a: $82
	jp nz, $b0e2                                     ; $470b: $c2 $e2 $b0

	ld a, b                                          ; $470e: $78
	db $ec                                           ; $470f: $ec
	inc e                                            ; $4710: $1c
	ld a, [$fc06]                                    ; $4711: $fa $06 $fc
	ld [bc], a                                       ; $4714: $02
	db $fc                                           ; $4715: $fc
	nop                                              ; $4716: $00
	cp b                                             ; $4717: $b8
	ret nz                                           ; $4718: $c0

	ldh a, [$f8]                                     ; $4719: $f0 $f8
	db $fd                                           ; $471b: $fd
	sbc [hl]                                         ; $471c: $9e
	ld [bc], a                                       ; $471d: $02
	cp a                                             ; $471e: $bf
	ld b, $16                                        ; $471f: $06 $16
	sbc h                                            ; $4721: $9c
	ld [$1836], sp                                   ; $4722: $08 $36 $18
	db $fd                                           ; $4725: $fd
	db $dd                                           ; $4726: $dd
	ld bc, $0294                                     ; $4727: $01 $94 $02
	inc bc                                           ; $472a: $03
	rlca                                             ; $472b: $07
	inc bc                                           ; $472c: $03
	rrca                                             ; $472d: $0f
	ld [bc], a                                       ; $472e: $02
	db $10                                           ; $472f: $10
	rrca                                             ; $4730: $0f
	cpl                                              ; $4731: $2f
	rra                                              ; $4732: $1f
	ccf                                              ; $4733: $3f
	cp [hl]                                          ; $4734: $be
	ccf                                              ; $4735: $3f
	rra                                              ; $4736: $1f
	add hl, de                                       ; $4737: $19

jr_06b_4738:
	sub a                                            ; $4738: $97
	ld c, $06                                        ; $4739: $0e $06
	rlca                                             ; $473b: $07
	inc bc                                           ; $473c: $03
	inc bc                                           ; $473d: $03
	ld [bc], a                                       ; $473e: $02
	ld bc, $ba03                                     ; $473f: $01 $03 $ba
	ld bc, $0f03                                     ; $4742: $01 $03 $0f
	ccf                                              ; $4745: $3f
	ld a, a                                          ; $4746: $7f
	rst $38                                          ; $4747: $ff
	db $fd                                           ; $4748: $fd
	adc l                                            ; $4749: $8d
	inc bc                                           ; $474a: $03
	rst AddAOntoHL                                          ; $474b: $ef
	rra                                              ; $474c: $1f
	rst $38                                          ; $474d: $ff
	rst $38                                          ; $474e: $ff
	ld a, $ff                                        ; $474f: $3e $ff
	db $ec                                           ; $4751: $ec
	rra                                              ; $4752: $1f
	ret nc                                           ; $4753: $d0

	ccf                                              ; $4754: $3f
	ldh [$3f], a                                     ; $4755: $e0 $3f
	pop bc                                           ; $4757: $c1
	ld a, a                                          ; $4758: $7f
	sbc a                                            ; $4759: $9f
	rst $38                                          ; $475a: $ff
	and d                                            ; $475b: $a2
	ld a, e                                          ; $475c: $7b
	cp $83                                           ; $475d: $fe $83
	ld [hl+], a                                      ; $475f: $22
	rst $38                                          ; $4760: $ff
	ld d, d                                          ; $4761: $52
	rst $38                                          ; $4762: $ff
	ldh a, [c]                                       ; $4763: $f2
	sbc a                                            ; $4764: $9f
	ldh a, [c]                                       ; $4765: $f2
	rra                                              ; $4766: $1f
	di                                               ; $4767: $f3
	rra                                              ; $4768: $1f
	ld a, e                                          ; $4769: $7b
	adc a                                            ; $476a: $8f
	set 7, a                                         ; $476b: $cb $ff
	cp d                                             ; $476d: $ba
	ld a, a                                          ; $476e: $7f
	cp $07                                           ; $476f: $fe $07
	ld a, [$fd07]                                    ; $4771: $fa $07 $fd
	inc bc                                           ; $4774: $03
	cp $01                                           ; $4775: $fe $01
	rst $38                                          ; $4777: $ff
	add b                                            ; $4778: $80
	xor $f1                                          ; $4779: $ee $f1
	ld [hl], a                                       ; $477b: $77
	ld hl, sp-$7d                                    ; $477c: $f8 $83
	ld hl, sp+$07                                    ; $477e: $f8 $07
	rst $38                                          ; $4780: $ff
	ld bc, $1fff                                     ; $4781: $01 $ff $1f
	ld [$7437], a                                    ; $4784: $ea $37 $74
	rst $38                                          ; $4787: $ff
	ld hl, sp-$01                                    ; $4788: $f8 $ff
	ldh [rIE], a                                     ; $478a: $e0 $ff
	add c                                            ; $478c: $81
	rst $38                                          ; $478d: $ff
	ld [bc], a                                       ; $478e: $02
	rst $38                                          ; $478f: $ff
	inc c                                            ; $4790: $0c
	rst $38                                          ; $4791: $ff
	jr @+$01                                         ; $4792: $18 $ff

	ld [hl], b                                       ; $4794: $70
	rst $38                                          ; $4795: $ff
	pop hl                                           ; $4796: $e1
	rst $38                                          ; $4797: $ff
	pop bc                                           ; $4798: $c1
	rst $38                                          ; $4799: $ff
	ld d, e                                          ; $479a: $53
	jr nz, jr_06b_481c                               ; $479b: $20 $7f

	inc hl                                           ; $479d: $23
	sbc d                                            ; $479e: $9a
	rst SubAFromHL                                          ; $479f: $d7
	ret nc                                           ; $47a0: $d0

	or b                                             ; $47a1: $b0
	and c                                            ; $47a2: $a1
	ldh a, [$57]                                     ; $47a3: $f0 $57
	jr nz, jr_06b_4826                               ; $47a5: $20 $7f

	ld b, b                                          ; $47a7: $40
	adc l                                            ; $47a8: $8d
	ld [bc], a                                       ; $47a9: $02
	jp nz, $f262                                     ; $47aa: $c2 $62 $f2

	ret c                                            ; $47ad: $d8

	inc a                                            ; $47ae: $3c
	db $fc                                           ; $47af: $fc
	ld b, $fe                                        ; $47b0: $06 $fe
	ld [bc], a                                       ; $47b2: $02
	ld a, $c0                                        ; $47b3: $3e $c0
	db $ec                                           ; $47b5: $ec
	ldh a, [$b0]                                     ; $47b6: $f0 $b0
	ld hl, sp-$10                                    ; $47b8: $f8 $f0
	ld h, b                                          ; $47ba: $60
	rra                                              ; $47bb: $1f
	ld b, b                                          ; $47bc: $40
	sbc e                                            ; $47bd: $9b
	rla                                              ; $47be: $17
	rrca                                             ; $47bf: $0f
	dec hl                                           ; $47c0: $2b
	inc e                                            ; $47c1: $1c
	ld [hl], a                                       ; $47c2: $77
	ld b, b                                          ; $47c3: $40
	sub l                                            ; $47c4: $95
	rla                                              ; $47c5: $17
	ld [$0e0d], sp                                   ; $47c6: $08 $0d $0e
	rlca                                             ; $47c9: $07
	rlca                                             ; $47ca: $07
	ld [bc], a                                       ; $47cb: $02
	rlca                                             ; $47cc: $07
	inc bc                                           ; $47cd: $03
	ld bc, $604f                                     ; $47ce: $01 $4f $60
	sub a                                            ; $47d1: $97
	db $db                                           ; $47d2: $db
	rst AddAOntoHL                                          ; $47d3: $ef
	dec sp                                           ; $47d4: $3b
	rst $38                                          ; $47d5: $ff
	ld [$f61f], a                                    ; $47d6: $ea $1f $f6
	rrca                                             ; $47d9: $0f
	ld [hl], a                                       ; $47da: $77
	ld h, b                                          ; $47db: $60
	sub e                                            ; $47dc: $93
	ld a, [hl]                                       ; $47dd: $7e
	add c                                            ; $47de: $81
	rst SubAFromDE                                          ; $47df: $df
	ldh [$a6], a                                     ; $47e0: $e0 $a6
	ld sp, hl                                        ; $47e2: $f9
	xor a                                            ; $47e3: $af
	ld sp, hl                                        ; $47e4: $f9
	or l                                             ; $47e5: $b5
	ei                                               ; $47e6: $fb
	ld e, [hl]                                       ; $47e7: $5e
	pop af                                           ; $47e8: $f1
	ld [hl], a                                       ; $47e9: $77
	add b                                            ; $47ea: $80
	sbc c                                            ; $47eb: $99
	call nc, $b3b1                                   ; $47ec: $d4 $b1 $b3
	rst SubAFromHL                                          ; $47ef: $d7
	or b                                             ; $47f0: $b0
	ret nc                                           ; $47f1: $d0

	ccf                                              ; $47f2: $3f
	add b                                            ; $47f3: $80
	ld a, [hl]                                       ; $47f4: $7e
	jp nz, $329d                                     ; $47f5: $c2 $9d $32

	ld a, [$c276]                                    ; $47f8: $fa $76 $c2
	sub a                                            ; $47fb: $97
	ld l, h                                          ; $47fc: $6c
	ldh a, [c]                                       ; $47fd: $f2
	or $f8                                           ; $47fe: $f6 $f8
	call nc, $a0d8                                   ; $4800: $d4 $d8 $a0
	ldh a, [$1f]                                     ; $4803: $f0 $1f
	add b                                            ; $4805: $80
	sbc e                                            ; $4806: $9b
	ld a, [bc]                                       ; $4807: $0a
	rlca                                             ; $4808: $07
	rla                                              ; $4809: $17
	rrca                                             ; $480a: $0f
	ld [hl], a                                       ; $480b: $77
	add d                                            ; $480c: $82
	sub e                                            ; $480d: $93
	ld sp, $1e0e                                     ; $480e: $31 $0e $1e
	rrca                                             ; $4811: $0f
	inc bc                                           ; $4812: $03
	rlca                                             ; $4813: $07
	rlca                                             ; $4814: $07
	ld b, $05                                        ; $4815: $06 $05
	rlca                                             ; $4817: $07
	ld [bc], a                                       ; $4818: $02
	inc bc                                           ; $4819: $03
	daa                                              ; $481a: $27
	add b                                            ; $481b: $80

jr_06b_481c:
	adc c                                            ; $481c: $89
	ld a, l                                          ; $481d: $7d
	add e                                            ; $481e: $83
	cp [hl]                                          ; $481f: $be
	pop bc                                           ; $4820: $c1
	rst SubAFromDE                                          ; $4821: $df
	ldh [$b6], a                                     ; $4822: $e0 $b6
	ld a, c                                          ; $4824: $79
	xor l                                            ; $4825: $ad

jr_06b_4826:
	ei                                               ; $4826: $fb
	or a                                             ; $4827: $b7
	ei                                               ; $4828: $fb
	ld e, a                                          ; $4829: $5f
	ldh a, [$f1]                                     ; $482a: $f0 $f1
	ldh a, [$f4]                                     ; $482c: $f0 $f4
	sub b                                            ; $482e: $90
	rst SubAFromHL                                          ; $482f: $d7
	or a                                             ; $4830: $b7
	or c                                             ; $4831: $b1
	jp nc, $803f                                     ; $4832: $d2 $3f $80

	sub d                                            ; $4835: $92
	add [hl]                                         ; $4836: $86
	add $e2                                          ; $4837: $c6 $e2
	ldh a, [c]                                       ; $4839: $f2
	jp c, $f43a                                      ; $483a: $da $3a $f4

	inc c                                            ; $483d: $0c
	ld a, [de]                                       ; $483e: $1a
	and $fc                                          ; $483f: $e6 $fc
	ldh a, [c]                                       ; $4841: $f2
	sbc $03                                          ; $4842: $de $03
	add b                                            ; $4844: $80
	ld [hl], a                                       ; $4845: $77
	add b                                            ; $4846: $80
	sub [hl]                                         ; $4847: $96
	jr c, @+$09                                      ; $4848: $38 $07

	scf                                              ; $484a: $37
	rrca                                             ; $484b: $0f
	rra                                              ; $484c: $1f
	dec bc                                           ; $484d: $0b
	ld b, $03                                        ; $484e: $06 $03
	ld b, $43                                        ; $4850: $06 $43
	add b                                            ; $4852: $80
	add d                                            ; $4853: $82
	ld [hl], e                                       ; $4854: $73
	sbc a                                            ; $4855: $9f
	db $db                                           ; $4856: $db
	rst AddAOntoHL                                          ; $4857: $ef
	cp e                                             ; $4858: $bb
	ld a, a                                          ; $4859: $7f
	jp z, $763f                                      ; $485a: $ca $3f $76

	adc a                                            ; $485d: $8f
	cp d                                             ; $485e: $ba
	rst JumpTable                                          ; $485f: $c7

jr_06b_4860:
	db $fd                                           ; $4860: $fd
	jp $e17e                                         ; $4861: $c3 $7e $e1


	or a                                             ; $4864: $b7
	ld hl, sp-$02                                    ; $4865: $f8 $fe
	ld hl, $0816                                     ; $4867: $21 $16 $08
	jr nz, jr_06b_48ac                               ; $486a: $20 $40

	jr nz, jr_06b_4896                               ; $486c: $20 $28

	jr z, jr_06b_488c                                ; $486e: $28 $1c

	nop                                              ; $4870: $00
	cp h                                             ; $4871: $bc
	jr nz, jr_06b_4874                               ; $4872: $20 $00

jr_06b_4874:
	ld bc, $de87                                     ; $4874: $01 $87 $de
	sub d                                            ; $4877: $92
	pop hl                                           ; $4878: $e1
	cp $ff                                           ; $4879: $fe $ff
	ld e, a                                          ; $487b: $5f
	ldh a, [hDisp1_OBP0]                                     ; $487c: $f0 $93
	ldh a, [hDisp1_SCX]                                     ; $487e: $f0 $91
	ldh a, [rAUD4LEN]                                ; $4880: $f0 $20
	ldh a, [$31]                                     ; $4882: $f0 $31
	pop hl                                           ; $4884: $e1
	ld [hl], a                                       ; $4885: $77
	ldh [$99], a                                     ; $4886: $e0 $99
	ld h, b                                          ; $4888: $60
	ld l, b                                          ; $4889: $68
	jr c, @+$7e                                      ; $488a: $38 $7c

jr_06b_488c:
	nop                                              ; $488c: $00
	jr nc, jr_06b_48b6                               ; $488d: $30 $27

	ldh [$7f], a                                     ; $488f: $e0 $7f
	pop hl                                           ; $4891: $e1
	ld [hl], a                                       ; $4892: $77
	ldh [$9e], a                                     ; $4893: $e0 $9e
	ld a, b                                          ; $4895: $78

jr_06b_4896:
	dec de                                           ; $4896: $1b
	ldh [$98], a                                     ; $4897: $e0 $98
	ld h, h                                          ; $4899: $64
	ld l, b                                          ; $489a: $68
	ld a, h                                          ; $489b: $7c
	ld a, h                                          ; $489c: $7c
	ld [hl], b                                       ; $489d: $70
	ld a, b                                          ; $489e: $78
	ld [hl], b                                       ; $489f: $70
	inc sp                                           ; $48a0: $33
	ldh [$e1], a                                     ; $48a1: $e0 $e1
	ld bc, $af80                                     ; $48a3: $01 $80 $af
	ld sp, hl                                        ; $48a6: $f9
	or a                                             ; $48a7: $b7
	ei                                               ; $48a8: $fb
	ld e, a                                          ; $48a9: $5f
	ldh a, [$f1]                                     ; $48aa: $f0 $f1

jr_06b_48ac:
	ldh a, [$f4]                                     ; $48ac: $f0 $f4
	sub b                                            ; $48ae: $90
	rst SubAFromHL                                          ; $48af: $d7
	or a                                             ; $48b0: $b7
	or c                                             ; $48b1: $b1
	jp nc, wTaskParam0_word0                                     ; $48b2: $d2 $b0 $d0

	ret nc                                           ; $48b5: $d0

jr_06b_48b6:
	or b                                             ; $48b6: $b0
	and c                                            ; $48b7: $a1
	ldh a, [$f0]                                     ; $48b8: $f0 $f0
	ldh [$a0], a                                     ; $48ba: $e0 $a0
	ld h, b                                          ; $48bc: $60
	ld h, b                                          ; $48bd: $60
	jr nz, jr_06b_4860                               ; $48be: $20 $a0

	ld h, b                                          ; $48c0: $60
	and b                                            ; $48c1: $a0
	ldh [$f0], a                                     ; $48c2: $e0 $f0
	add b                                            ; $48c4: $80
	ldh [rAUD4LEN], a                                ; $48c5: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $48c7: $f0 $10
	ldh a, [$38]                                     ; $48c9: $f0 $38
	ldh a, [$30]                                     ; $48cb: $f0 $30
	ld hl, sp-$04                                    ; $48cd: $f8 $fc
	ret z                                            ; $48cf: $c8

	db $ec                                           ; $48d0: $ec
	sbc h                                            ; $48d1: $9c
	or h                                             ; $48d2: $b4
	sbc [hl]                                         ; $48d3: $9e
	inc hl                                           ; $48d4: $23
	ld a, $65                                        ; $48d5: $3e $65
	ccf                                              ; $48d7: $3f
	ld c, e                                          ; $48d8: $4b
	ld a, l                                          ; $48d9: $7d
	ld c, a                                          ; $48da: $4f
	ld a, c                                          ; $48db: $79
	sbc $73                                          ; $48dc: $de $73
	cp $63                                           ; $48de: $fe $63
	cp h                                             ; $48e0: $bc
	ld b, a                                          ; $48e1: $47
	db $fd                                           ; $48e2: $fd
	rlca                                             ; $48e3: $07
	adc c                                            ; $48e4: $89
	rst $38                                          ; $48e5: $ff
	rrca                                             ; $48e6: $0f
	add $86                                          ; $48e7: $c6 $86
	jp nz, $b2e2                                     ; $48e9: $c2 $e2 $b2

	ld a, d                                          ; $48ec: $7a
	add sp, $1c                                      ; $48ed: $e8 $1c
	db $f4                                           ; $48ef: $f4
	inc c                                            ; $48f0: $0c
	add sp, -$0a                                     ; $48f1: $e8 $f6
	sub $f8                                          ; $48f3: $d6 $f8
	call nc, $a0d8                                   ; $48f5: $d4 $d8 $a0
	ldh a, [$f0]                                     ; $48f8: $f0 $f0
	ld h, b                                          ; $48fa: $60
	db $fd                                           ; $48fb: $fd
	sbc [hl]                                         ; $48fc: $9e
	ld [bc], a                                       ; $48fd: $02
	cp a                                             ; $48fe: $bf
	ld b, $16                                        ; $48ff: $06 $16
	sbc h                                            ; $4901: $9c
	ld [$1836], sp                                   ; $4902: $08 $36 $18
	db $fd                                           ; $4905: $fd
	db $dd                                           ; $4906: $dd
	ld bc, $0286                                     ; $4907: $01 $86 $02
	inc bc                                           ; $490a: $03
	rlca                                             ; $490b: $07
	inc bc                                           ; $490c: $03
	ld a, [bc]                                       ; $490d: $0a
	rlca                                             ; $490e: $07
	rrca                                             ; $490f: $0f
	rra                                              ; $4910: $1f
	ld a, $01                                        ; $4911: $3e $01
	add hl, sp                                       ; $4913: $39
	ld b, $36                                        ; $4914: $06 $36
	rrca                                             ; $4916: $0f
	rra                                              ; $4917: $1f
	rrca                                             ; $4918: $0f
	rlca                                             ; $4919: $07
	inc bc                                           ; $491a: $03
	ld b, $06                                        ; $491b: $06 $06
	dec b                                            ; $491d: $05
	rlca                                             ; $491e: $07
	ld bc, $0303                                     ; $491f: $01 $03 $03
	cp d                                             ; $4922: $ba
	ld bc, $0f03                                     ; $4923: $01 $03 $0f
	ccf                                              ; $4926: $3f
	ld a, a                                          ; $4927: $7f
	rst $38                                          ; $4928: $ff
	db $fd                                           ; $4929: $fd
	adc l                                            ; $492a: $8d
	inc bc                                           ; $492b: $03
	rst AddAOntoHL                                          ; $492c: $ef
	rra                                              ; $492d: $1f
	rst $38                                          ; $492e: $ff
	rst $38                                          ; $492f: $ff
	ld a, $ff                                        ; $4930: $3e $ff
	db $ec                                           ; $4932: $ec
	rra                                              ; $4933: $1f
	ret nc                                           ; $4934: $d0

	ccf                                              ; $4935: $3f
	ldh [$3f], a                                     ; $4936: $e0 $3f
	pop bc                                           ; $4938: $c1
	ld a, a                                          ; $4939: $7f
	sbc a                                            ; $493a: $9f
	rst $38                                          ; $493b: $ff
	and d                                            ; $493c: $a2
	ld a, e                                          ; $493d: $7b
	cp $80                                           ; $493e: $fe $80
	ld [hl+], a                                      ; $4940: $22
	rst $38                                          ; $4941: $ff
	ld d, d                                          ; $4942: $52
	rst $38                                          ; $4943: $ff
	ldh a, [c]                                       ; $4944: $f2
	sbc a                                            ; $4945: $9f
	ldh a, [c]                                       ; $4946: $f2
	rra                                              ; $4947: $1f
	di                                               ; $4948: $f3
	rra                                              ; $4949: $1f
	sbc e                                            ; $494a: $9b
	rst AddAOntoHL                                          ; $494b: $ef
	ld l, e                                          ; $494c: $6b
	rst $38                                          ; $494d: $ff
	jp c, $f63f                                      ; $494e: $da $3f $f6

	rrca                                             ; $4951: $0f
	ld a, d                                          ; $4952: $7a
	add a                                            ; $4953: $87
	cp l                                             ; $4954: $bd
	jp $e1de                                         ; $4955: $c3 $de $e1


	or a                                             ; $4958: $b7
	ld hl, sp-$02                                    ; $4959: $f8 $fe
	ld hl, $03fd                                     ; $495b: $21 $fd $03
	cp $82                                           ; $495e: $fe $82
	ld bc, $07f8                                     ; $4960: $01 $f8 $07
	rst $38                                          ; $4963: $ff
	ld bc, $1fff                                     ; $4964: $01 $ff $1f
	ld [$7437], a                                    ; $4967: $ea $37 $74
	rst $38                                          ; $496a: $ff
	ld hl, sp-$01                                    ; $496b: $f8 $ff
	ldh [rIE], a                                     ; $496d: $e0 $ff
	add c                                            ; $496f: $81
	rst $38                                          ; $4970: $ff
	ld [bc], a                                       ; $4971: $02
	rst $38                                          ; $4972: $ff
	inc c                                            ; $4973: $0c
	rst $38                                          ; $4974: $ff
	jr @+$01                                         ; $4975: $18 $ff

	ld [hl], b                                       ; $4977: $70
	rst $38                                          ; $4978: $ff
	pop hl                                           ; $4979: $e1
	rst $38                                          ; $497a: $ff
	pop bc                                           ; $497b: $c1
	rst $38                                          ; $497c: $ff
	ld [hl], a                                       ; $497d: $77
	jr nz, @-$69                                     ; $497e: $20 $95

	ld e, h                                          ; $4980: $5c
	di                                               ; $4981: $f3
	pop af                                           ; $4982: $f1
	ldh a, [$f0]                                     ; $4983: $f0 $f0
	sub b                                            ; $4985: $90
	call nc, $b3b0                                   ; $4986: $d4 $b0 $b3
	rst SubAFromHL                                          ; $4989: $d7
	ccf                                              ; $498a: $3f
	jr nz, jr_06b_4a0c                               ; $498b: $20 $7f

	ld b, b                                          ; $498d: $40
	sub h                                            ; $498e: $94
	ld [bc], a                                       ; $498f: $02
	jp nz, $f2e2                                     ; $4990: $c2 $e2 $f2

	ret c                                            ; $4993: $d8

	inc a                                            ; $4994: $3c
	db $f4                                           ; $4995: $f4
	inc c                                            ; $4996: $0c
	jr @-$18                                         ; $4997: $18 $e6

	or $03                                           ; $4999: $f6 $03
	ld b, b                                          ; $499b: $40
	ld [hl], a                                       ; $499c: $77
	ld b, b                                          ; $499d: $40
	ld a, a                                          ; $499e: $7f
	ld d, [hl]                                       ; $499f: $56
	sbc h                                            ; $49a0: $9c
	ld sp, $1e0e                                     ; $49a1: $31 $0e $1e
	ld a, e                                          ; $49a4: $7b
	ld b, b                                          ; $49a5: $40
	sbc [hl]                                         ; $49a6: $9e
	rlca                                             ; $49a7: $07
	ld a, e                                          ; $49a8: $7b
	ld b, b                                          ; $49a9: $40
	ld a, a                                          ; $49aa: $7f
	ld [$604f], a                                    ; $49ab: $ea $4f $60
	adc l                                            ; $49ae: $8d
	ld a, e                                          ; $49af: $7b
	adc a                                            ; $49b0: $8f
	db $db                                           ; $49b1: $db
	rst AddAOntoHL                                          ; $49b2: $ef
	cp d                                             ; $49b3: $ba
	ld a, a                                          ; $49b4: $7f
	and $1f                                          ; $49b5: $e6 $1f
	ld a, [$7d07]                                    ; $49b7: $fa $07 $7d
	add e                                            ; $49ba: $83
	cp [hl]                                          ; $49bb: $be
	pop bc                                           ; $49bc: $c1
	rst SubAFromDE                                          ; $49bd: $df
	ldh [$b6], a                                     ; $49be: $e0 $b6
	ld a, c                                          ; $49c0: $79
	ld e, a                                          ; $49c1: $5f
	add b                                            ; $49c2: $80
	ld a, a                                          ; $49c3: $7f
	add [hl]                                         ; $49c4: $86
	sbc e                                            ; $49c5: $9b
	or b                                             ; $49c6: $b0
	db $d3                                           ; $49c7: $d3
	or e                                             ; $49c8: $b3
	rst SubAFromHL                                          ; $49c9: $d7
	scf                                              ; $49ca: $37
	add b                                            ; $49cb: $80
	ld a, a                                          ; $49cc: $7f
	ld a, a                                          ; $49cd: $7f
	sub e                                            ; $49ce: $93
	or b                                             ; $49cf: $b0
	ld a, b                                          ; $49d0: $78
	add sp, $1c                                      ; $49d1: $e8 $1c
	db $fc                                           ; $49d3: $fc
	inc b                                            ; $49d4: $04
	inc a                                            ; $49d5: $3c
	jp nz, $f0ec                                     ; $49d6: $c2 $ec $f0

	or b                                             ; $49d9: $b0
	ld hl, sp+$1f                                    ; $49da: $f8 $1f
	add b                                            ; $49dc: $80
	sbc b                                            ; $49dd: $98
	rrca                                             ; $49de: $0f
	ld [bc], a                                       ; $49df: $02
	db $10                                           ; $49e0: $10
	rrca                                             ; $49e1: $0f
	cpl                                              ; $49e2: $2f
	rra                                              ; $49e3: $1f
	ccf                                              ; $49e4: $3f
	cp a                                             ; $49e5: $bf
	ccf                                              ; $49e6: $3f
	rla                                              ; $49e7: $17
	sub [hl]                                         ; $49e8: $96
	ld [$0e0d], sp                                   ; $49e9: $08 $0d $0e
	rlca                                             ; $49ec: $07
	rlca                                             ; $49ed: $07
	ld [bc], a                                       ; $49ee: $02
	rlca                                             ; $49ef: $07
	inc bc                                           ; $49f0: $03
	ld bc, $804f                                     ; $49f1: $01 $4f $80
	sbc c                                            ; $49f4: $99
	ei                                               ; $49f5: $fb
	rrca                                             ; $49f6: $0f
	cp e                                             ; $49f7: $bb
	rst GetHLinHL                                          ; $49f8: $cf
	ld a, d                                          ; $49f9: $7a
	rst $38                                          ; $49fa: $ff
	ld [hl], a                                       ; $49fb: $77
	add b                                            ; $49fc: $80
	ld a, [hl]                                       ; $49fd: $7e
	add sp, -$67                                     ; $49fe: $e8 $99
	ld a, [hl]                                       ; $4a00: $7e
	add c                                            ; $4a01: $81
	rst SubAFromDE                                          ; $4a02: $df
	ldh [$a6], a                                     ; $4a03: $e0 $a6
	ld sp, hl                                        ; $4a05: $f9
	ld d, e                                          ; $4a06: $53
	add b                                            ; $4a07: $80
	sbc b                                            ; $4a08: $98
	ret nc                                           ; $4a09: $d0

	or d                                             ; $4a0a: $b2
	rst SubAFromHL                                          ; $4a0b: $d7

jr_06b_4a0c:
	db $d3                                           ; $4a0c: $d3
	or e                                             ; $4a0d: $b3
	and c                                            ; $4a0e: $a1
	pop af                                           ; $4a0f: $f1
	ld c, a                                          ; $4a10: $4f
	add b                                            ; $4a11: $80
	sbc c                                            ; $4a12: $99
	ld b, d                                          ; $4a13: $42
	add d                                            ; $4a14: $82
	jp nz, $a0c2                                     ; $4a15: $c2 $c2 $a0

	ld [hl], b                                       ; $4a18: $70
	halt                                             ; $4a19: $76
	cp $97                                           ; $4a1a: $fe $97
	ld hl, sp+$06                                    ; $4a1c: $f8 $06
	db $fc                                           ; $4a1e: $fc
	nop                                              ; $4a1f: $00
	cp b                                             ; $4a20: $b8
	ret nz                                           ; $4a21: $c0

	ldh a, [$f8]                                     ; $4a22: $f0 $f8
	rra                                              ; $4a24: $1f
	add b                                            ; $4a25: $80
	sbc h                                            ; $4a26: $9c
	ld de, $2f0e                                     ; $4a27: $11 $0e $2f
	ld [hl], d                                       ; $4a2a: $72
	cp $96                                           ; $4a2b: $fe $96
	rra                                              ; $4a2d: $1f
	nop                                              ; $4a2e: $00
	add hl, de                                       ; $4a2f: $19
	ld c, $06                                        ; $4a30: $0e $06
	rlca                                             ; $4a32: $07
	inc bc                                           ; $4a33: $03
	inc bc                                           ; $4a34: $03
	ld [bc], a                                       ; $4a35: $02
	ld b, e                                          ; $4a36: $43
	add b                                            ; $4a37: $80
	sbc c                                            ; $4a38: $99
	dec sp                                           ; $4a39: $3b
	rst GetHLinHL                                          ; $4a3a: $cf
	ld a, [$c6ff]                                    ; $4a3b: $fa $ff $c6
	ccf                                              ; $4a3e: $3f
	ld [hl], a                                       ; $4a3f: $77
	add b                                            ; $4a40: $80

jr_06b_4a41:
	ld a, [hl]                                       ; $4a41: $7e
	ld l, b                                          ; $4a42: $68
	sub d                                            ; $4a43: $92
	rst $38                                          ; $4a44: $ff
	add b                                            ; $4a45: $80
	xor $f1                                          ; $4a46: $ee $f1
	ld d, $08                                        ; $4a48: $16 $08
	jr nz, jr_06b_4a8c                               ; $4a4a: $20 $40

	jr nz, @+$2a                                     ; $4a4c: $20 $28

	inc l                                            ; $4a4e: $2c
	stop                                             ; $4a4f: $10 $00
	cp h                                             ; $4a51: $bc
	jr nz, jr_06b_4a54                               ; $4a52: $20 $00

jr_06b_4a54:
	ld bc, $de87                                     ; $4a54: $01 $87 $de
	sub d                                            ; $4a57: $92
	pop hl                                           ; $4a58: $e1
	cp $ff                                           ; $4a59: $fe $ff
	ld e, a                                          ; $4a5b: $5f
	ldh a, [hDisp1_OBP0]                                     ; $4a5c: $f0 $93
	ldh a, [hDisp1_SCX]                                     ; $4a5e: $f0 $91
	ldh a, [rAUD4LEN]                                ; $4a60: $f0 $20
	ldh a, [$31]                                     ; $4a62: $f0 $31
	pop hl                                           ; $4a64: $e1
	ld [hl], a                                       ; $4a65: $77
	ldh [$9b], a                                     ; $4a66: $e0 $9b
	ld h, b                                          ; $4a68: $60
	jr z, jr_06b_4a9f                                ; $4a69: $28 $34

	jr c, jr_06b_4a8c                                ; $4a6b: $38 $1f

	ldh [$97], a                                     ; $4a6d: $e0 $97
	ld h, b                                          ; $4a6f: $60
	ld b, b                                          ; $4a70: $40
	jr nz, jr_06b_4adb                               ; $4a71: $20 $68

	ld a, b                                          ; $4a73: $78
	inc a                                            ; $4a74: $3c
	ld [$7730], sp                                   ; $4a75: $08 $30 $77
	sbc $2f                                          ; $4a78: $de $2f
	ldh [$9e], a                                     ; $4a7a: $e0 $9e
	inc h                                            ; $4a7c: $24
	ld a, e                                          ; $4a7d: $7b
	ldh [$9e], a                                     ; $4a7e: $e0 $9e
	jr c, @+$2d                                      ; $4a80: $38 $2b

	ldh [$eb], a                                     ; $4a82: $e0 $eb
	ld bc, $af80                                     ; $4a84: $01 $80 $af
	ld sp, hl                                        ; $4a87: $f9
	or a                                             ; $4a88: $b7
	ei                                               ; $4a89: $fb
	ld e, [hl]                                       ; $4a8a: $5e
	pop af                                           ; $4a8b: $f1

jr_06b_4a8c:
	pop af                                           ; $4a8c: $f1
	ldh a, [$f4]                                     ; $4a8d: $f0 $f4
	sub b                                            ; $4a8f: $90
	rst SubAFromHL                                          ; $4a90: $d7
	or a                                             ; $4a91: $b7
	or e                                             ; $4a92: $b3
	jp nc, wTaskParam0_word0                                     ; $4a93: $d2 $b0 $d0

	ret nc                                           ; $4a96: $d0

	or b                                             ; $4a97: $b0
	and c                                            ; $4a98: $a1
	ldh a, [$f0]                                     ; $4a99: $f0 $f0
	ldh [$a0], a                                     ; $4a9b: $e0 $a0
	ld h, b                                          ; $4a9d: $60
	ld h, b                                          ; $4a9e: $60

jr_06b_4a9f:
	jr nz, jr_06b_4a41                               ; $4a9f: $20 $a0

	ld h, b                                          ; $4aa1: $60
	and b                                            ; $4aa2: $a0
	ldh [$f0], a                                     ; $4aa3: $e0 $f0
	add b                                            ; $4aa5: $80
	ldh [rAUD4LEN], a                                ; $4aa6: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $4aa8: $f0 $10
	ldh a, [$38]                                     ; $4aaa: $f0 $38
	ldh a, [$30]                                     ; $4aac: $f0 $30
	ld hl, sp-$04                                    ; $4aae: $f8 $fc
	ret z                                            ; $4ab0: $c8

	db $ec                                           ; $4ab1: $ec
	sbc h                                            ; $4ab2: $9c
	or h                                             ; $4ab3: $b4
	sbc [hl]                                         ; $4ab4: $9e
	inc hl                                           ; $4ab5: $23
	ld a, $65                                        ; $4ab6: $3e $65
	ccf                                              ; $4ab8: $3f
	ld c, e                                          ; $4ab9: $4b
	ld a, l                                          ; $4aba: $7d
	ld c, a                                          ; $4abb: $4f
	ld a, c                                          ; $4abc: $79
	sbc $73                                          ; $4abd: $de $73
	cp $63                                           ; $4abf: $fe $63
	cp h                                             ; $4ac1: $bc
	ld b, a                                          ; $4ac2: $47
	db $fd                                           ; $4ac3: $fd
	rlca                                             ; $4ac4: $07
	adc c                                            ; $4ac5: $89
	rst $38                                          ; $4ac6: $ff
	rrca                                             ; $4ac7: $0f
	add $86                                          ; $4ac8: $c6 $86
	ld [hl+], a                                      ; $4aca: $22
	jp nz, $f2e2                                     ; $4acb: $c2 $e2 $f2

	ld hl, sp+$1c                                    ; $4ace: $f8 $1c
	db $f4                                           ; $4ad0: $f4
	inc c                                            ; $4ad1: $0c
	cp b                                             ; $4ad2: $b8
	add $fe                                          ; $4ad3: $c6 $fe
	ldh a, [$dc]                                     ; $4ad5: $f0 $dc
	ret c                                            ; $4ad7: $d8

	and b                                            ; $4ad8: $a0
	ldh a, [$f0]                                     ; $4ad9: $f0 $f0

jr_06b_4adb:
	ld h, b                                          ; $4adb: $60
	db $fd                                           ; $4adc: $fd
	sbc [hl]                                         ; $4add: $9e
	ld [bc], a                                       ; $4ade: $02
	cp a                                             ; $4adf: $bf
	ld b, $16                                        ; $4ae0: $06 $16
	sbc h                                            ; $4ae2: $9c
	ld [$1836], sp                                   ; $4ae3: $08 $36 $18
	db $fd                                           ; $4ae6: $fd
	db $dd                                           ; $4ae7: $dd
	ld bc, $0286                                     ; $4ae8: $01 $86 $02
	inc bc                                           ; $4aeb: $03
	rlca                                             ; $4aec: $07
	inc bc                                           ; $4aed: $03
	dec bc                                           ; $4aee: $0b
	ld b, $0c                                        ; $4aef: $06 $0c
	rra                                              ; $4af1: $1f
	ccf                                              ; $4af2: $3f
	inc bc                                           ; $4af3: $03
	ccf                                              ; $4af4: $3f
	nop                                              ; $4af5: $00
	dec [hl]                                         ; $4af6: $35
	ld c, $1f                                        ; $4af7: $0e $1f
	rrca                                             ; $4af9: $0f

jr_06b_4afa:
	rlca                                             ; $4afa: $07
	inc bc                                           ; $4afb: $03
	ld b, $06                                        ; $4afc: $06 $06
	dec b                                            ; $4afe: $05
	rlca                                             ; $4aff: $07
	ld bc, $0303                                     ; $4b00: $01 $03 $03
	cp d                                             ; $4b03: $ba
	ld bc, $0f03                                     ; $4b04: $01 $03 $0f
	ccf                                              ; $4b07: $3f
	ld a, a                                          ; $4b08: $7f
	rst $38                                          ; $4b09: $ff
	db $fd                                           ; $4b0a: $fd
	adc l                                            ; $4b0b: $8d
	inc bc                                           ; $4b0c: $03
	rst AddAOntoHL                                          ; $4b0d: $ef
	rra                                              ; $4b0e: $1f
	rst $38                                          ; $4b0f: $ff
	rst $38                                          ; $4b10: $ff
	ld a, $ff                                        ; $4b11: $3e $ff
	db $ec                                           ; $4b13: $ec
	rra                                              ; $4b14: $1f
	ret nc                                           ; $4b15: $d0

	ccf                                              ; $4b16: $3f
	ldh [$3f], a                                     ; $4b17: $e0 $3f
	pop bc                                           ; $4b19: $c1
	ld a, a                                          ; $4b1a: $7f
	sbc a                                            ; $4b1b: $9f
	rst $38                                          ; $4b1c: $ff
	and d                                            ; $4b1d: $a2
	ld a, e                                          ; $4b1e: $7b
	cp $80                                           ; $4b1f: $fe $80
	ld [hl+], a                                      ; $4b21: $22
	rst $38                                          ; $4b22: $ff
	ld d, d                                          ; $4b23: $52
	rst $38                                          ; $4b24: $ff
	ldh a, [c]                                       ; $4b25: $f2
	sbc a                                            ; $4b26: $9f
	ldh a, [c]                                       ; $4b27: $f2
	rra                                              ; $4b28: $1f
	di                                               ; $4b29: $f3
	rra                                              ; $4b2a: $1f
	ei                                               ; $4b2b: $fb
	rrca                                             ; $4b2c: $0f
	sbc e                                            ; $4b2d: $9b
	rst AddAOntoHL                                          ; $4b2e: $ef
	ld a, d                                          ; $4b2f: $7a
	rst $38                                          ; $4b30: $ff
	and $1f                                          ; $4b31: $e6 $1f
	ld a, [$bd07]                                    ; $4b33: $fa $07 $bd
	jp $e1de                                         ; $4b36: $c3 $de $e1


	or a                                             ; $4b39: $b7
	ld hl, sp-$02                                    ; $4b3a: $f8 $fe
	ld hl, $03fd                                     ; $4b3c: $21 $fd $03
	cp $82                                           ; $4b3f: $fe $82
	ld bc, $07f8                                     ; $4b41: $01 $f8 $07
	rst $38                                          ; $4b44: $ff
	ld bc, $1fff                                     ; $4b45: $01 $ff $1f
	ld [$7437], a                                    ; $4b48: $ea $37 $74
	rst $38                                          ; $4b4b: $ff
	ld hl, sp-$01                                    ; $4b4c: $f8 $ff
	ldh [rIE], a                                     ; $4b4e: $e0 $ff
	add c                                            ; $4b50: $81
	rst $38                                          ; $4b51: $ff
	ld [bc], a                                       ; $4b52: $02
	rst $38                                          ; $4b53: $ff
	inc c                                            ; $4b54: $0c
	rst $38                                          ; $4b55: $ff
	jr @+$01                                         ; $4b56: $18 $ff

	ld [hl], b                                       ; $4b58: $70
	rst $38                                          ; $4b59: $ff
	pop hl                                           ; $4b5a: $e1
	rst $38                                          ; $4b5b: $ff
	pop bc                                           ; $4b5c: $c1
	rst $38                                          ; $4b5d: $ff
	ld h, a                                          ; $4b5e: $67
	jr nz, jr_06b_4afa                               ; $4b5f: $20 $99

	ldh a, [hDisp1_SCY]                                     ; $4b61: $f0 $90
	call nc, $b3b1                                   ; $4b63: $d4 $b1 $b3
	rst SubAFromHL                                          ; $4b66: $d7
	ccf                                              ; $4b67: $3f
	jr nz, jr_06b_4be9                               ; $4b68: $20 $7f

	ld b, b                                          ; $4b6a: $40

jr_06b_4b6b:
	sub d                                            ; $4b6b: $92
	and d                                            ; $4b6c: $a2
	jp nz, $f262                                     ; $4b6d: $c2 $62 $f2

	ret nc                                           ; $4b70: $d0

	jr c, jr_06b_4b6b                                ; $4b71: $38 $f8

	inc c                                            ; $4b73: $0c
	ld e, h                                          ; $4b74: $5c
	and $e4                                          ; $4b75: $e6 $e4
	ld a, [$1394]                                    ; $4b77: $fa $94 $13
	ld b, b                                          ; $4b7a: $40
	sub h                                            ; $4b7b: $94
	rrca                                             ; $4b7c: $0f
	ld [bc], a                                       ; $4b7d: $02
	db $10                                           ; $4b7e: $10

Call_06b_4b7f:
	rrca                                             ; $4b7f: $0f
	cpl                                              ; $4b80: $2f
	rra                                              ; $4b81: $1f
	ccf                                              ; $4b82: $3f
	nop                                              ; $4b83: $00
	ld sp, $1e0e                                     ; $4b84: $31 $0e $1e
	ld a, e                                          ; $4b87: $7b
	ld b, b                                          ; $4b88: $40
	sbc [hl]                                         ; $4b89: $9e
	rlca                                             ; $4b8a: $07
	ld a, e                                          ; $4b8b: $7b
	ld b, b                                          ; $4b8c: $40
	ld a, a                                          ; $4b8d: $7f
	ld [$604f], a                                    ; $4b8e: $ea $4f $60
	sbc c                                            ; $4b91: $99
	ld a, e                                          ; $4b92: $7b
	adc a                                            ; $4b93: $8f
	db $db                                           ; $4b94: $db
	rst AddAOntoHL                                          ; $4b95: $ef
	cp d                                             ; $4b96: $ba
	ld a, a                                          ; $4b97: $7f
	ld [hl], a                                       ; $4b98: $77
	ld h, b                                          ; $4b99: $60
	sub a                                            ; $4b9a: $97
	ld a, l                                          ; $4b9b: $7d
	add e                                            ; $4b9c: $83
	cp [hl]                                          ; $4b9d: $be
	pop bc                                           ; $4b9e: $c1
	rst SubAFromDE                                          ; $4b9f: $df
	ldh [$b6], a                                     ; $4ba0: $e0 $b6
	ld a, c                                          ; $4ba2: $79
	ld e, a                                          ; $4ba3: $5f
	add b                                            ; $4ba4: $80
	ld a, a                                          ; $4ba5: $7f
	add [hl]                                         ; $4ba6: $86
	sbc e                                            ; $4ba7: $9b
	or b                                             ; $4ba8: $b0
	db $d3                                           ; $4ba9: $d3
	or e                                             ; $4baa: $b3
	rst SubAFromHL                                          ; $4bab: $d7
	ccf                                              ; $4bac: $3f
	add b                                            ; $4bad: $80
	sbc l                                            ; $4bae: $9d
	add d                                            ; $4baf: $82
	ldh [c], a                                       ; $4bb0: $e2
	ld [hl], a                                       ; $4bb1: $77
	add b                                            ; $4bb2: $80
	sub l                                            ; $4bb3: $95
	add sp, $1c                                      ; $4bb4: $e8 $1c
	db $fc                                           ; $4bb6: $fc
	ld b, $3c                                        ; $4bb7: $06 $3c
	jp nz, $f0ec                                     ; $4bb9: $c2 $ec $f0

	or b                                             ; $4bbc: $b0
	ld hl, sp+$17                                    ; $4bbd: $f8 $17
	add b                                            ; $4bbf: $80
	sbc h                                            ; $4bc0: $9c
	inc de                                           ; $4bc1: $13
	rrca                                             ; $4bc2: $0f
	inc l                                            ; $4bc3: $2c
	ld a, e                                          ; $4bc4: $7b
	add b                                            ; $4bc5: $80
	ld a, a                                          ; $4bc6: $7f
	cp $95                                           ; $4bc7: $fe $95
	rla                                              ; $4bc9: $17
	ld [$0e0d], sp                                   ; $4bca: $08 $0d $0e
	rlca                                             ; $4bcd: $07
	rlca                                             ; $4bce: $07
	ld [bc], a                                       ; $4bcf: $02
	rlca                                             ; $4bd0: $07
	inc bc                                           ; $4bd1: $03
	ld bc, $804f                                     ; $4bd2: $01 $4f $80
	add a                                            ; $4bd5: $87
	dec sp                                           ; $4bd6: $3b
	rst GetHLinHL                                          ; $4bd7: $cf
	db $eb                                           ; $4bd8: $eb
	rst $38                                          ; $4bd9: $ff
	jp c, $fe3f                                      ; $4bda: $da $3f $fe

	rlca                                             ; $4bdd: $07
	ld a, [$fd07]                                    ; $4bde: $fa $07 $fd
	inc bc                                           ; $4be1: $03
	ld a, [hl]                                       ; $4be2: $7e
	add c                                            ; $4be3: $81
	rst SubAFromDE                                          ; $4be4: $df
	ldh [$a6], a                                     ; $4be5: $e0 $a6
	ld sp, hl                                        ; $4be7: $f9
	xor l                                            ; $4be8: $ad

jr_06b_4be9:
	ei                                               ; $4be9: $fb
	or a                                             ; $4bea: $b7
	ei                                               ; $4beb: $fb
	ld e, a                                          ; $4bec: $5f
	ldh a, [rOCPD]                                   ; $4bed: $f0 $6b
	add b                                            ; $4bef: $80
	sbc b                                            ; $4bf0: $98
	ret nc                                           ; $4bf1: $d0

	or d                                             ; $4bf2: $b2
	rst SubAFromHL                                          ; $4bf3: $d7
	db $d3                                           ; $4bf4: $d3
	or e                                             ; $4bf5: $b3
	and c                                            ; $4bf6: $a1
	pop af                                           ; $4bf7: $f1
	ld d, a                                          ; $4bf8: $57
	add b                                            ; $4bf9: $80
	sbc d                                            ; $4bfa: $9a
	ld b, [hl]                                       ; $4bfb: $46
	add [hl]                                         ; $4bfc: $86
	jp nz, $22e2                                     ; $4bfd: $c2 $e2 $22

	ld [hl], e                                       ; $4c00: $73
	add b                                            ; $4c01: $80
	ld a, [hl]                                       ; $4c02: $7e
	ld a, $97                                        ; $4c03: $3e $97
	ld hl, sp+$06                                    ; $4c05: $f8 $06
	db $fc                                           ; $4c07: $fc
	nop                                              ; $4c08: $00
	cp b                                             ; $4c09: $b8
	ret nz                                           ; $4c0a: $c0

	ldh a, [$f8]                                     ; $4c0b: $f0 $f8
	rra                                              ; $4c0d: $1f
	add b                                            ; $4c0e: $80
	sbc h                                            ; $4c0f: $9c
	rla                                              ; $4c10: $17
	rrca                                             ; $4c11: $0f
	jr z, @+$75                                      ; $4c12: $28 $73

	add b                                            ; $4c14: $80
	sub [hl]                                         ; $4c15: $96
	rra                                              ; $4c16: $1f
	nop                                              ; $4c17: $00
	add hl, de                                       ; $4c18: $19
	ld c, $06                                        ; $4c19: $0e $06
	rlca                                             ; $4c1b: $07
	inc bc                                           ; $4c1c: $03
	inc bc                                           ; $4c1d: $03
	ld [bc], a                                       ; $4c1e: $02
	ld c, e                                          ; $4c1f: $4b
	add b                                            ; $4c20: $80
	sbc h                                            ; $4c21: $9c
	cp e                                             ; $4c22: $bb
	rst GetHLinHL                                          ; $4c23: $cf
	ld l, e                                          ; $4c24: $6b
	ld [hl], e                                       ; $4c25: $73
	add b                                            ; $4c26: $80
	sbc l                                            ; $4c27: $9d
	cp $03                                           ; $4c28: $fe $03
	halt                                             ; $4c2a: $76
	ld l, b                                          ; $4c2b: $68

jr_06b_4c2c:
	sub h                                            ; $4c2c: $94
	rst $38                                          ; $4c2d: $ff
	add b                                            ; $4c2e: $80
	xor $f1                                          ; $4c2f: $ee $f1
	ld d, $08                                        ; $4c31: $16 $08
	nop                                              ; $4c33: $00
	nop                                              ; $4c34: $00
	ld h, b                                          ; $4c35: $60
	jr nc, jr_06b_4c4c                               ; $4c36: $30 $14

	ld a, e                                          ; $4c38: $7b
	ld a, [$209e]                                    ; $4c39: $fa $9e $20
	cp l                                             ; $4c3c: $bd
	nop                                              ; $4c3d: $00
	ld bc, $de87                                     ; $4c3e: $01 $87 $de
	sub d                                            ; $4c41: $92
	pop hl                                           ; $4c42: $e1
	cp $ff                                           ; $4c43: $fe $ff
	ld e, a                                          ; $4c45: $5f
	ldh a, [hDisp1_OBP0]                                     ; $4c46: $f0 $93
	ldh a, [hDisp1_SCX]                                     ; $4c48: $f0 $91
	ldh a, [rAUD4LEN]                                ; $4c4a: $f0 $20

jr_06b_4c4c:
	ldh a, [$31]                                     ; $4c4c: $f0 $31
	pop hl                                           ; $4c4e: $e1
	ld [hl], e                                       ; $4c4f: $73
	ldh [$9c], a                                     ; $4c50: $e0 $9c
	jr c, jr_06b_4c90                                ; $4c52: $38 $3c

	jr c, jr_06b_4c6d                                ; $4c54: $38 $17

	ldh [$99], a                                     ; $4c56: $e0 $99
	ld l, b                                          ; $4c58: $68
	jr nc, @+$3e                                     ; $4c59: $30 $3c

	jr c, jr_06b_4c65                                ; $4c5b: $38 $08

	jr nc, jr_06b_4cd6                               ; $4c5d: $30 $77

	sbc $2f                                          ; $4c5f: $de $2f
	ldh [$9e], a                                     ; $4c61: $e0 $9e
	ld a, b                                          ; $4c63: $78
	ld a, e                                          ; $4c64: $7b

jr_06b_4c65:
	ldh [$9e], a                                     ; $4c65: $e0 $9e
	jr jr_06b_4ce4                                   ; $4c67: $18 $7b

	cp [hl]                                          ; $4c69: $be
	ld a, a                                          ; $4c6a: $7f
	db $dd                                           ; $4c6b: $dd
	ccf                                              ; $4c6c: $3f

jr_06b_4c6d:
	ldh [$ac], a                                     ; $4c6d: $e0 $ac
	ld bc, $af9a                                     ; $4c6f: $01 $9a $af
	ld sp, hl                                        ; $4c72: $f9
	or a                                             ; $4c73: $b7
	ld hl, sp+$59                                    ; $4c74: $f8 $59
	sbc $f0                                          ; $4c76: $de $f0
	add b                                            ; $4c78: $80
	db $f4                                           ; $4c79: $f4
	sub b                                            ; $4c7a: $90
	rst SubAFromHL                                          ; $4c7b: $d7
	or a                                             ; $4c7c: $b7
	or e                                             ; $4c7d: $b3
	jp nc, wTaskParam0_word0                                     ; $4c7e: $d2 $b0 $d0

	ret nc                                           ; $4c81: $d0

	or b                                             ; $4c82: $b0
	and c                                            ; $4c83: $a1
	ldh a, [$f0]                                     ; $4c84: $f0 $f0
	ldh [$a0], a                                     ; $4c86: $e0 $a0
	ld h, b                                          ; $4c88: $60
	ld h, b                                          ; $4c89: $60
	jr nz, jr_06b_4c2c                               ; $4c8a: $20 $a0

	ld h, b                                          ; $4c8c: $60
	and b                                            ; $4c8d: $a0
	ldh [$f0], a                                     ; $4c8e: $e0 $f0

jr_06b_4c90:
	ldh [rAUD4LEN], a                                ; $4c90: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $4c92: $f0 $10
	ldh a, [$38]                                     ; $4c94: $f0 $38
	ldh a, [$30]                                     ; $4c96: $f0 $30
	add b                                            ; $4c98: $80
	ld hl, sp-$04                                    ; $4c99: $f8 $fc
	ret z                                            ; $4c9b: $c8

	db $ec                                           ; $4c9c: $ec
	sbc h                                            ; $4c9d: $9c
	or h                                             ; $4c9e: $b4
	sbc [hl]                                         ; $4c9f: $9e
	inc hl                                           ; $4ca0: $23
	ld a, $65                                        ; $4ca1: $3e $65
	ccf                                              ; $4ca3: $3f
	ld c, e                                          ; $4ca4: $4b
	ld a, l                                          ; $4ca5: $7d
	ld c, a                                          ; $4ca6: $4f
	ld a, c                                          ; $4ca7: $79
	sbc $73                                          ; $4ca8: $de $73
	cp $63                                           ; $4caa: $fe $63
	cp h                                             ; $4cac: $bc
	ld b, a                                          ; $4cad: $47
	db $fd                                           ; $4cae: $fd
	rlca                                             ; $4caf: $07
	rst $38                                          ; $4cb0: $ff
	rrca                                             ; $4cb1: $0f
	add [hl]                                         ; $4cb2: $86
	add $62                                          ; $4cb3: $c6 $62
	jp nz, Jump_06b_62a2                             ; $4cb5: $c2 $a2 $62

	sub c                                            ; $4cb8: $91
	ldh [$30], a                                     ; $4cb9: $e0 $30
	ldh a, [rAUD2LOW]                                ; $4cbb: $f0 $18
	cp b                                             ; $4cbd: $b8
	call z, $f4fe                                    ; $4cbe: $cc $fe $f4
	call c, $a0d8                                    ; $4cc1: $dc $d8 $a0
	ldh a, [$f0]                                     ; $4cc4: $f0 $f0
	ld h, b                                          ; $4cc6: $60
	db $fd                                           ; $4cc7: $fd
	sbc [hl]                                         ; $4cc8: $9e
	ld [bc], a                                       ; $4cc9: $02
	cp a                                             ; $4cca: $bf
	ld b, $16                                        ; $4ccb: $06 $16
	sbc h                                            ; $4ccd: $9c
	ld [$1836], sp                                   ; $4cce: $08 $36 $18
	db $fd                                           ; $4cd1: $fd
	db $dd                                           ; $4cd2: $dd
	ld bc, $0286                                     ; $4cd3: $01 $86 $02

jr_06b_4cd6:
	inc bc                                           ; $4cd6: $03
	rlca                                             ; $4cd7: $07
	inc bc                                           ; $4cd8: $03
	rrca                                             ; $4cd9: $0f
	ld [bc], a                                       ; $4cda: $02
	rra                                              ; $4cdb: $1f
	nop                                              ; $4cdc: $00
	scf                                              ; $4cdd: $37
	rrca                                             ; $4cde: $0f
	jr z, jr_06b_4d00                                ; $4cdf: $28 $1f

	add hl, sp                                       ; $4ce1: $39
	ld b, $1e                                        ; $4ce2: $06 $1e

jr_06b_4ce4:
	rrca                                             ; $4ce4: $0f

jr_06b_4ce5:
	rlca                                             ; $4ce5: $07
	inc bc                                           ; $4ce6: $03
	ld b, $06                                        ; $4ce7: $06 $06
	dec b                                            ; $4ce9: $05
	rlca                                             ; $4cea: $07
	ld bc, $0303                                     ; $4ceb: $01 $03 $03
	cp d                                             ; $4cee: $ba
	ld bc, $0f03                                     ; $4cef: $01 $03 $0f
	ccf                                              ; $4cf2: $3f
	ld a, a                                          ; $4cf3: $7f
	rst $38                                          ; $4cf4: $ff
	db $fd                                           ; $4cf5: $fd
	adc l                                            ; $4cf6: $8d
	inc bc                                           ; $4cf7: $03
	rst AddAOntoHL                                          ; $4cf8: $ef
	rra                                              ; $4cf9: $1f
	rst $38                                          ; $4cfa: $ff
	rst $38                                          ; $4cfb: $ff
	ld a, $ff                                        ; $4cfc: $3e $ff
	db $ec                                           ; $4cfe: $ec
	rra                                              ; $4cff: $1f

jr_06b_4d00:
	ret nc                                           ; $4d00: $d0

	ccf                                              ; $4d01: $3f
	ldh [$3f], a                                     ; $4d02: $e0 $3f
	pop bc                                           ; $4d04: $c1
	ld a, a                                          ; $4d05: $7f
	sbc a                                            ; $4d06: $9f
	rst $38                                          ; $4d07: $ff
	and d                                            ; $4d08: $a2
	ld a, e                                          ; $4d09: $7b
	cp $80                                           ; $4d0a: $fe $80
	ld [hl+], a                                      ; $4d0c: $22
	rst $38                                          ; $4d0d: $ff
	ld d, d                                          ; $4d0e: $52
	rst $38                                          ; $4d0f: $ff
	ldh a, [c]                                       ; $4d10: $f2
	sbc a                                            ; $4d11: $9f
	ldh a, [c]                                       ; $4d12: $f2
	rra                                              ; $4d13: $1f
	di                                               ; $4d14: $f3
	rra                                              ; $4d15: $1f
	ei                                               ; $4d16: $fb
	rrca                                             ; $4d17: $0f
	dec bc                                           ; $4d18: $0b
	rst $38                                          ; $4d19: $ff
	ld a, [$f6ff]                                    ; $4d1a: $fa $ff $f6
	rrca                                             ; $4d1d: $0f
	ld a, [$bd07]                                    ; $4d1e: $fa $07 $bd
	jp $e1de                                         ; $4d21: $c3 $de $e1


	or a                                             ; $4d24: $b7
	ld hl, sp-$02                                    ; $4d25: $f8 $fe
	ld hl, $03fd                                     ; $4d27: $21 $fd $03
	cp $82                                           ; $4d2a: $fe $82
	ld bc, $07f8                                     ; $4d2c: $01 $f8 $07
	rst $38                                          ; $4d2f: $ff
	ld bc, $1fff                                     ; $4d30: $01 $ff $1f
	ld [$7437], a                                    ; $4d33: $ea $37 $74
	rst $38                                          ; $4d36: $ff
	ld hl, sp-$01                                    ; $4d37: $f8 $ff
	ldh [rIE], a                                     ; $4d39: $e0 $ff
	add c                                            ; $4d3b: $81
	rst $38                                          ; $4d3c: $ff
	ld [bc], a                                       ; $4d3d: $02
	rst $38                                          ; $4d3e: $ff
	inc c                                            ; $4d3f: $0c
	rst $38                                          ; $4d40: $ff
	jr @+$01                                         ; $4d41: $18 $ff

	ld [hl], b                                       ; $4d43: $70
	rst $38                                          ; $4d44: $ff
	pop hl                                           ; $4d45: $e1
	rst $38                                          ; $4d46: $ff
	pop bc                                           ; $4d47: $c1
	rst $38                                          ; $4d48: $ff
	ld h, a                                          ; $4d49: $67
	jr nz, jr_06b_4ce5                               ; $4d4a: $20 $99

	ldh a, [hDisp1_SCY]                                     ; $4d4c: $f0 $90
	call nc, $b3b1                                   ; $4d4e: $d4 $b1 $b3
	rst SubAFromHL                                          ; $4d51: $d7
	ccf                                              ; $4d52: $3f
	jr nz, jr_06b_4db8                               ; $4d53: $20 $63

	ld b, b                                          ; $4d55: $40
	sub [hl]                                         ; $4d56: $96
	db $10                                           ; $4d57: $10
	jr nc, @-$26                                     ; $4d58: $30 $d8

	ld hl, sp-$14                                    ; $4d5a: $f8 $ec
	call c, $bcd6                                    ; $4d5c: $dc $d6 $bc
	ld hl, sp+$03                                    ; $4d5f: $f8 $03
	ld b, b                                          ; $4d61: $40
	sub a                                            ; $4d62: $97
	rra                                              ; $4d63: $1f
	scf                                              ; $4d64: $37
	ld [$0e1d], sp                                   ; $4d65: $08 $1d $0e
	rra                                              ; $4d68: $1f
	rlca                                             ; $4d69: $07
	rlca                                             ; $4d6a: $07
	ld [hl], e                                       ; $4d6b: $73
	ld b, b                                          ; $4d6c: $40
	daa                                              ; $4d6d: $27
	ld h, b                                          ; $4d6e: $60
	sub a                                            ; $4d6f: $97
	ld a, l                                          ; $4d70: $7d
	add e                                            ; $4d71: $83
	cp [hl]                                          ; $4d72: $be
	pop bc                                           ; $4d73: $c1
	rst SubAFromDE                                          ; $4d74: $df
	ldh [$b6], a                                     ; $4d75: $e0 $b6
	ld a, c                                          ; $4d77: $79
	ld a, e                                          ; $4d78: $7b
	add b                                            ; $4d79: $80
	sbc e                                            ; $4d7a: $9b
	ei                                               ; $4d7b: $fb
	ld e, d                                          ; $4d7c: $5a
	pop af                                           ; $4d7d: $f1
	pop af                                           ; $4d7e: $f1
	ld a, e                                          ; $4d7f: $7b
	add b                                            ; $4d80: $80
	ld a, a                                          ; $4d81: $7f
	add [hl]                                         ; $4d82: $86
	sbc e                                            ; $4d83: $9b
	or b                                             ; $4d84: $b0
	db $d3                                           ; $4d85: $d3
	or e                                             ; $4d86: $b3
	rst SubAFromHL                                          ; $4d87: $d7
	ld b, a                                          ; $4d88: $47
	add b                                            ; $4d89: $80
	sub a                                            ; $4d8a: $97
	add $86                                          ; $4d8b: $c6 $86
	add d                                            ; $4d8d: $82
	jp nz, $e242                                     ; $4d8e: $c2 $42 $e2

	and b                                            ; $4d91: $a0
	ld h, b                                          ; $4d92: $60
	halt                                             ; $4d93: $76
	cp [hl]                                          ; $4d94: $be
	sub a                                            ; $4d95: $97
	ld a, b                                          ; $4d96: $78
	adc h                                            ; $4d97: $8c
	call c, $bce6                                    ; $4d98: $dc $e6 $bc
	ldh a, [$f0]                                     ; $4d9b: $f0 $f0
	ld a, b                                          ; $4d9d: $78
	rla                                              ; $4d9e: $17
	add b                                            ; $4d9f: $80
	sbc b                                            ; $4da0: $98
	ld a, $01                                        ; $4da1: $3e $01
	cpl                                              ; $4da3: $2f
	rra                                              ; $4da4: $1f
	ld sp, $170e                                     ; $4da5: $31 $0e $17
	ld a, e                                          ; $4da8: $7b
	ld a, [hl]                                       ; $4da9: $7e
	rst SubAFromDE                                          ; $4daa: $df
	rlca                                             ; $4dab: $07
	sbc e                                            ; $4dac: $9b
	ld [bc], a                                       ; $4dad: $02
	rlca                                             ; $4dae: $07
	inc bc                                           ; $4daf: $03
	ld bc, $8027                                     ; $4db0: $01 $27 $80
	ld a, [hl]                                       ; $4db3: $7e
	add sp, -$67                                     ; $4db4: $e8 $99
	ld a, [hl]                                       ; $4db6: $7e
	add c                                            ; $4db7: $81

jr_06b_4db8:
	rst SubAFromDE                                          ; $4db8: $df
	ldh [$a6], a                                     ; $4db9: $e0 $a6
	ld sp, hl                                        ; $4dbb: $f9
	ld d, e                                          ; $4dbc: $53
	add b                                            ; $4dbd: $80
	sbc b                                            ; $4dbe: $98
	ret nc                                           ; $4dbf: $d0

	or d                                             ; $4dc0: $b2
	rst SubAFromHL                                          ; $4dc1: $d7
	db $d3                                           ; $4dc2: $d3
	or e                                             ; $4dc3: $b3
	and c                                            ; $4dc4: $a1
	pop af                                           ; $4dc5: $f1
	daa                                              ; $4dc6: $27
	add b                                            ; $4dc7: $80
	sub a                                            ; $4dc8: $97
	ld hl, sp+$0c                                    ; $4dc9: $f8 $0c
	db $fc                                           ; $4dcb: $fc
	ld b, $bc                                        ; $4dcc: $06 $bc
	ret nz                                           ; $4dce: $c0

	ldh a, [$f8]                                     ; $4dcf: $f0 $f8
	inc bc                                           ; $4dd1: $03
	add b                                            ; $4dd2: $80
	ld a, a                                          ; $4dd3: $7f
	ld [bc], a                                       ; $4dd4: $02
	sub a                                            ; $4dd5: $97
	nop                                              ; $4dd6: $00
	add hl, de                                       ; $4dd7: $19
	ld c, $06                                        ; $4dd8: $0e $06
	rlca                                             ; $4dda: $07
	inc bc                                           ; $4ddb: $03
	inc bc                                           ; $4ddc: $03
	ld [bc], a                                       ; $4ddd: $02
	dec de                                           ; $4dde: $1b
	add b                                            ; $4ddf: $80
	ld a, [hl]                                       ; $4de0: $7e
	ld l, b                                          ; $4de1: $68
	sub d                                            ; $4de2: $92
	rst $38                                          ; $4de3: $ff
	add b                                            ; $4de4: $80
	xor $f1                                          ; $4de5: $ee $f1
	ld d, $08                                        ; $4de7: $16 $08
	nop                                              ; $4de9: $00
	nop                                              ; $4dea: $00
	ld h, b                                          ; $4deb: $60
	jr nc, @+$12                                     ; $4dec: $30 $10

	ld [$bc08], sp                                   ; $4dee: $08 $08 $bc
	jr nz, jr_06b_4df3                               ; $4df1: $20 $00

jr_06b_4df3:
	ld bc, $de87                                     ; $4df3: $01 $87 $de
	sub d                                            ; $4df6: $92
	pop hl                                           ; $4df7: $e1
	cp $ff                                           ; $4df8: $fe $ff
	ld e, a                                          ; $4dfa: $5f
	ldh a, [hDisp1_OBP0]                                     ; $4dfb: $f0 $93
	ldh a, [hDisp1_SCX]                                     ; $4dfd: $f0 $91
	ldh a, [rAUD4LEN]                                ; $4dff: $f0 $20
	ldh a, [$31]                                     ; $4e01: $f0 $31
	pop hl                                           ; $4e03: $e1
	ld l, a                                          ; $4e04: $6f
	ldh [$9c], a                                     ; $4e05: $e0 $9c
	jr jr_06b_4e41                                   ; $4e07: $18 $38

	jr nc, @+$1d                                     ; $4e09: $30 $1b

	ldh [$9a], a                                     ; $4e0b: $e0 $9a
	ld a, b                                          ; $4e0d: $78
	jr nc, jr_06b_4e48                               ; $4e0e: $30 $38

	jr c, jr_06b_4e42                                ; $4e10: $38 $30

	ld [hl], e                                       ; $4e12: $73
	sbc $1f                                          ; $4e13: $de $1f
	ldh [$6f], a                                     ; $4e15: $e0 $6f
	sbc $3f                                          ; $4e17: $de $3f
	ldh [$31], a                                     ; $4e19: $e0 $31
	add e                                            ; $4e1b: $83
	rst $38                                          ; $4e1c: $ff
	sbc c                                            ; $4e1d: $99
	ld bc, $0300                                     ; $4e1e: $01 $00 $03
	dec b                                            ; $4e21: $05
	rrca                                             ; $4e22: $0f
	rla                                              ; $4e23: $17
	ld a, e                                          ; $4e24: $7b
	ld hl, sp-$77                                    ; $4e25: $f8 $89
	inc bc                                           ; $4e27: $03
	inc b                                            ; $4e28: $04
	ld a, [bc]                                       ; $4e29: $0a
	db $10                                           ; $4e2a: $10
	jr z, jr_06b_4e6c                                ; $4e2b: $28 $3f

	rra                                              ; $4e2d: $1f
	rra                                              ; $4e2e: $1f
	ld l, $19                                        ; $4e2f: $2e $19
	inc b                                            ; $4e31: $04
	ld a, [bc]                                       ; $4e32: $0a
	inc b                                            ; $4e33: $04
	nop                                              ; $4e34: $00
	jr nz, @+$62                                     ; $4e35: $20 $60

	ld d, c                                          ; $4e37: $51
	ld h, $1b                                        ; $4e38: $26 $1b
	dec c                                            ; $4e3a: $0d
	rlca                                             ; $4e3b: $07
	inc bc                                           ; $4e3c: $03
	ld a, [$f867]                                    ; $4e3d: $fa $67 $f8
	ld a, a                                          ; $4e40: $7f

jr_06b_4e41:
	reti                                             ; $4e41: $d9


jr_06b_4e42:
	ld a, a                                          ; $4e42: $7f
	ret c                                            ; $4e43: $d8

	rst SubAFromDE                                          ; $4e44: $df
	ld [bc], a                                       ; $4e45: $02
	rst SubAFromDE                                          ; $4e46: $df
	inc b                                            ; $4e47: $04

jr_06b_4e48:
	ld [hl], a                                       ; $4e48: $77
	ld hl, sp-$21                                    ; $4e49: $f8 $df
	inc bc                                           ; $4e4b: $03
	rst SubAFromDE                                          ; $4e4c: $df
	rlca                                             ; $4e4d: $07
	ld a, a                                          ; $4e4e: $7f
	ld hl, sp-$67                                    ; $4e4f: $f8 $99
	ld [bc], a                                       ; $4e51: $02
	inc bc                                           ; $4e52: $03
	dec b                                            ; $4e53: $05
	rlca                                             ; $4e54: $07
	dec bc                                           ; $4e55: $0b
	rrca                                             ; $4e56: $0f
	ld a, e                                          ; $4e57: $7b
	pop bc                                           ; $4e58: $c1
	add b                                            ; $4e59: $80
	ld [bc], a                                       ; $4e5a: $02
	ld b, $04                                        ; $4e5b: $06 $04
	inc c                                            ; $4e5d: $0c
	ld [$170f], sp                                   ; $4e5e: $08 $0f $17
	ld d, $15                                        ; $4e61: $16 $15
	dec d                                            ; $4e63: $15
	inc de                                           ; $4e64: $13
	dec bc                                           ; $4e65: $0b
	dec bc                                           ; $4e66: $0b
	ld [$1918], sp                                   ; $4e67: $08 $18 $19
	dec de                                           ; $4e6a: $1b
	dec de                                           ; $4e6b: $1b

jr_06b_4e6c:
	rra                                              ; $4e6c: $1f
	ld c, $0e                                        ; $4e6d: $0e $0e
	rrca                                             ; $4e6f: $0f
	rrca                                             ; $4e70: $0f
	sub a                                            ; $4e71: $97
	xor [hl]                                         ; $4e72: $ae
	ld c, h                                          ; $4e73: $4c
	add hl, sp                                       ; $4e74: $39
	ld d, d                                          ; $4e75: $52
	ld l, h                                          ; $4e76: $6c
	inc c                                            ; $4e77: $0c
	inc c                                            ; $4e78: $0c
	add c                                            ; $4e79: $81
	sbc b                                            ; $4e7a: $98

jr_06b_4e7b:
	pop af                                           ; $4e7b: $f1
	ld [hl], e                                       ; $4e7c: $73
	ld h, $6d                                        ; $4e7d: $26 $6d
	ld e, e                                          ; $4e7f: $5b
	or l                                             ; $4e80: $b5
	sbc e                                            ; $4e81: $9b
	xor d                                            ; $4e82: $aa
	rst SubAFromHL                                          ; $4e83: $d7
	ld d, a                                          ; $4e84: $57
	ld d, l                                          ; $4e85: $55
	xor a                                            ; $4e86: $af
	xor d                                            ; $4e87: $aa
	jp c, $f5f4                                      ; $4e88: $da $f4 $f5

	jp hl                                            ; $4e8b: $e9


	ld l, c                                          ; $4e8c: $69
	ld l, e                                          ; $4e8d: $6b
	db $db                                           ; $4e8e: $db
	rst SubAFromDE                                          ; $4e8f: $df
	adc a                                            ; $4e90: $8f
	sub e                                            ; $4e91: $93
	ld hl, $a913                                     ; $4e92: $21 $13 $a9
	db $fc                                           ; $4e95: $fc
	ld hl, sp-$04                                    ; $4e96: $f8 $fc
	sbc $ff                                          ; $4e98: $de $ff
	add b                                            ; $4e9a: $80
	rst AddAOntoHL                                          ; $4e9b: $ef
	ld d, a                                          ; $4e9c: $57
	inc bc                                           ; $4e9d: $03
	rlca                                             ; $4e9e: $07
	inc bc                                           ; $4e9f: $03
	ld a, [$f0e8]                                    ; $4ea0: $fa $e8 $f0
	and b                                            ; $4ea3: $a0
	ld d, c                                          ; $4ea4: $51
	jr z, @+$45                                      ; $4ea5: $28 $43

	ld b, l                                          ; $4ea7: $45
	dec b                                            ; $4ea8: $05
	rla                                              ; $4ea9: $17
	rrca                                             ; $4eaa: $0f
	ld e, a                                          ; $4eab: $5f
	xor a                                            ; $4eac: $af
	rst SubAFromHL                                          ; $4ead: $d7
	cp a                                             ; $4eae: $bf
	rst $38                                          ; $4eaf: $ff
	cp d                                             ; $4eb0: $ba
	inc sp                                           ; $4eb1: $33
	dec hl                                           ; $4eb2: $2b
	ld a, e                                          ; $4eb3: $7b
	ld e, a                                          ; $4eb4: $5f
	ld a, e                                          ; $4eb5: $7b
	ld a, e                                          ; $4eb6: $7b
	di                                               ; $4eb7: $f3
	cp a                                             ; $4eb8: $bf
	ld a, $89                                        ; $4eb9: $3e $89
	ld [hl], $66                                     ; $4ebb: $36 $66
	ld h, d                                          ; $4ebd: $62
	ld b, [hl]                                       ; $4ebe: $46
	ld b, [hl]                                       ; $4ebf: $46
	adc $f3                                          ; $4ec0: $ce $f3
	ei                                               ; $4ec2: $fb
	ccf                                              ; $4ec3: $3f
	ld e, $0d                                        ; $4ec4: $1e $0d
	dec e                                            ; $4ec6: $1d
	dec a                                            ; $4ec7: $3d
	ld a, l                                          ; $4ec8: $7d
	adc $86                                          ; $4ec9: $ce $86
	jp nz, $f3e3                                     ; $4ecb: $c2 $e3 $f3

	db $e3                                           ; $4ece: $e3
	jp $ee83                                         ; $4ecf: $c3 $83 $ee


	ld a, a                                          ; $4ed2: $7f
	ld d, l                                          ; $4ed3: $55
	sbc h                                            ; $4ed4: $9c
	rlca                                             ; $4ed5: $07
	jr jr_06b_4f3b                                   ; $4ed6: $18 $63

	ld l, a                                          ; $4ed8: $6f
	ld hl, sp-$80                                    ; $4ed9: $f8 $80
	rra                                              ; $4edb: $1f
	ld a, h                                          ; $4edc: $7c
	or e                                             ; $4edd: $b3
	ld c, [hl]                                       ; $4ede: $4e
	jp c, $37bb                                      ; $4edf: $da $bb $37

jr_06b_4ee2:
	ld l, h                                          ; $4ee2: $6c
	sbc d                                            ; $4ee3: $9a
	ld hl, sp-$40                                    ; $4ee4: $f8 $c0
	add c                                            ; $4ee6: $81
	rlca                                             ; $4ee7: $07
	inc c                                            ; $4ee8: $0c
	jr jr_06b_4f1d                                   ; $4ee9: $18 $32

	ld h, h                                          ; $4eeb: $64
	ld b, h                                          ; $4eec: $44
	inc [hl]                                         ; $4eed: $34
	ldh a, [$e8]                                     ; $4eee: $f0 $e8
	ld h, d                                          ; $4ef0: $62
	jp nz, $c9d4                                     ; $4ef1: $c2 $d4 $c9

	xor e                                            ; $4ef4: $ab
	ret z                                            ; $4ef5: $c8

	adc b                                            ; $4ef6: $88
	sub b                                            ; $4ef7: $90
	sub b                                            ; $4ef8: $90
	jr nc, jr_06b_4e7b                               ; $4ef9: $30 $80

	ld [hl+], a                                      ; $4efb: $22
	ld h, $44                                        ; $4efc: $26 $44
	cp [hl]                                          ; $4efe: $be
	ld [hl], a                                       ; $4eff: $77
	ld h, a                                          ; $4f00: $67
	db $db                                           ; $4f01: $db
	xor d                                            ; $4f02: $aa
	ld [hl-], a                                      ; $4f03: $32
	ld [hl], e                                       ; $4f04: $73
	and e                                            ; $4f05: $a3
	ld b, l                                          ; $4f06: $45
	adc l                                            ; $4f07: $8d
	sbc l                                            ; $4f08: $9d
	dec l                                            ; $4f09: $2d
	ld e, a                                          ; $4f0a: $5f
	rst SubAFromDE                                          ; $4f0b: $df
	cp a                                             ; $4f0c: $bf
	ld a, a                                          ; $4f0d: $7f
	ld h, e                                          ; $4f0e: $63
	di                                               ; $4f0f: $f3
	or e                                             ; $4f10: $b3
	cp l                                             ; $4f11: $bd
	ld sp, $2b21                                     ; $4f12: $31 $21 $2b
	jr z, @-$01                                      ; $4f15: $28 $fd

	db $ed                                           ; $4f17: $ed
	db $ed                                           ; $4f18: $ed
	pop hl                                           ; $4f19: $e1
	sbc e                                            ; $4f1a: $9b
	push hl                                          ; $4f1b: $e5
	push af                                          ; $4f1c: $f5

jr_06b_4f1d:
	push af                                          ; $4f1d: $f5
	rst FarCall                                          ; $4f1e: $f7
	jp c, $9eff                                      ; $4f1f: $da $ff $9e

	ld a, a                                          ; $4f22: $7f
	sbc $20                                          ; $4f23: $de $20
	add b                                            ; $4f25: $80
	ld [hl+], a                                      ; $4f26: $22
	sub d                                            ; $4f27: $92
	sub d                                            ; $4f28: $92
	pop de                                           ; $4f29: $d1
	pop af                                           ; $4f2a: $f1
	ld a, a                                          ; $4f2b: $7f
	rst $38                                          ; $4f2c: $ff
	rst FarCall                                          ; $4f2d: $f7
	rst SubAFromBC                                          ; $4f2e: $e7
	rst GetHLinHL                                          ; $4f2f: $cf
	adc e                                            ; $4f30: $8b
	inc de                                           ; $4f31: $13
	ld sp, hl                                        ; $4f32: $f9
	ret z                                            ; $4f33: $c8

	adc b                                            ; $4f34: $88
	inc e                                            ; $4f35: $1c
	db $fc                                           ; $4f36: $fc
	cp $ff                                           ; $4f37: $fe $ff
	rst $38                                          ; $4f39: $ff
	rla                                              ; $4f3a: $17

jr_06b_4f3b:
	call c, $ffef                                    ; $4f3b: $dc $ef $ff
	db $fc                                           ; $4f3e: $fc
	db $fc                                           ; $4f3f: $fc
	xor $ee                                          ; $4f40: $ee $ee
	sbc $33                                          ; $4f42: $de $33
	jr nc, jr_06b_4ee2                               ; $4f44: $30 $9c

	jr nz, jr_06b_4f6b                               ; $4f46: $20 $23

	inc hl                                           ; $4f48: $23
	sbc $31                                          ; $4f49: $de $31
	sub d                                            ; $4f4b: $92
	cp $f6                                           ; $4f4c: $fe $f6
	rst FarCall                                          ; $4f4e: $f7
	di                                               ; $4f4f: $f3
	di                                               ; $4f50: $f3
	pop af                                           ; $4f51: $f1
	ld sp, hl                                        ; $4f52: $f9
	jp hl                                            ; $4f53: $e9


	ld de, $1819                                     ; $4f54: $11 $19 $18
	inc e                                            ; $4f57: $1c
	inc e                                            ; $4f58: $1c
	sbc $1e                                          ; $4f59: $de $1e
	ldh a, [$7e]                                     ; $4f5b: $f0 $7e
	ret nc                                           ; $4f5d: $d0

	sbc d                                            ; $4f5e: $9a
	ld [de], a                                       ; $4f5f: $12
	rst SubAFromBC                                          ; $4f60: $e7
	ld a, [hl]                                       ; $4f61: $7e
	ld hl, sp-$40                                    ; $4f62: $f8 $c0
	ld a, d                                          ; $4f64: $7a
	ret nc                                           ; $4f65: $d0

	sub b                                            ; $4f66: $90
	di                                               ; $4f67: $f3
	db $fd                                           ; $4f68: $fd
	add l                                            ; $4f69: $85
	rlca                                             ; $4f6a: $07

jr_06b_4f6b:
	ccf                                              ; $4f6b: $3f
	inc bc                                           ; $4f6c: $03
	cp [hl]                                          ; $4f6d: $be
	rst $38                                          ; $4f6e: $ff
	cp b                                             ; $4f6f: $b8
	ld h, a                                          ; $4f70: $67
	call $369b                                       ; $4f71: $cd $9b $36
	rst $38                                          ; $4f74: $ff
	pop bc                                           ; $4f75: $c1
	ld l, a                                          ; $4f76: $6f
	ldh [c], a                                       ; $4f77: $e2
	adc a                                            ; $4f78: $8f
	dec h                                            ; $4f79: $25
	dec hl                                           ; $4f7a: $2b
	dec de                                           ; $4f7b: $1b
	sub a                                            ; $4f7c: $97
	sub a                                            ; $4f7d: $97
	daa                                              ; $4f7e: $27
	daa                                              ; $4f7f: $27
	ld c, a                                          ; $4f80: $4f
	ld [bc], a                                       ; $4f81: $02
	ld b, $06                                        ; $4f82: $06 $06
	inc c                                            ; $4f84: $0c
	dec c                                            ; $4f85: $0d
	sbc l                                            ; $4f86: $9d
	sbc l                                            ; $4f87: $9d
	cp a                                             ; $4f88: $bf
	ldh [$c1], a                                     ; $4f89: $e0 $c1
	sub a                                            ; $4f8b: $97
	ld h, d                                          ; $4f8c: $62
	ld sp, $0418                                     ; $4f8d: $31 $18 $04
	ld [bc], a                                       ; $4f90: $02
	ld b, c                                          ; $4f91: $41
	ld h, b                                          ; $4f92: $60
	ld h, b                                          ; $4f93: $60
	reti                                             ; $4f94: $d9


	rst $38                                          ; $4f95: $ff
	sub a                                            ; $4f96: $97
	ld h, b                                          ; $4f97: $60
	jr nz, jr_06b_4fba                               ; $4f98: $20 $20

	jr nc, jr_06b_4fac                               ; $4f9a: $30 $10

	db $10                                           ; $4f9c: $10
	inc c                                            ; $4f9d: $0c
	rlca                                             ; $4f9e: $07
	reti                                             ; $4f9f: $d9


	rst $38                                          ; $4fa0: $ff
	pop af                                           ; $4fa1: $f1
	add e                                            ; $4fa2: $83
	adc h                                            ; $4fa3: $8c
	or c                                             ; $4fa4: $b1
	jp nc, $4da6                                     ; $4fa5: $d2 $a6 $4d

	db $eb                                           ; $4fa8: $eb
	cp [hl]                                          ; $4fa9: $be
	db $dd                                           ; $4faa: $dd
	adc a                                            ; $4fab: $8f

jr_06b_4fac:
	cp a                                             ; $4fac: $bf
	rst AddAOntoHL                                          ; $4fad: $ef
	reti                                             ; $4fae: $d9


	or d                                             ; $4faf: $b2
	inc [hl]                                         ; $4fb0: $34
	ld h, c                                          ; $4fb1: $61
	ld h, e                                          ; $4fb2: $63
	ld b, d                                          ; $4fb3: $42
	ret nz                                           ; $4fb4: $c0

	nop                                              ; $4fb5: $00
	nop                                              ; $4fb6: $00
	ld h, b                                          ; $4fb7: $60
	sub b                                            ; $4fb8: $90
	nop                                              ; $4fb9: $00

jr_06b_4fba:
	inc de                                           ; $4fba: $13
	rst FarCall                                          ; $4fbb: $f7
	rst AddAOntoHL                                          ; $4fbc: $ef
	xor $6d                                          ; $4fbd: $ee $6d
	db $dd                                           ; $4fbf: $dd
	rst $38                                          ; $4fc0: $ff
	sub b                                            ; $4fc1: $90
	db $10                                           ; $4fc2: $10
	ld [$3f1e], sp                                   ; $4fc3: $08 $1e $3f
	ld sp, $6070                                     ; $4fc6: $31 $70 $60
	ld h, b                                          ; $4fc9: $60
	ld sp, hl                                        ; $4fca: $f9
	cp [hl]                                          ; $4fcb: $be
	ld a, a                                          ; $4fcc: $7f
	ld h, c                                          ; $4fcd: $61
	ld h, b                                          ; $4fce: $60
	ld b, b                                          ; $4fcf: $40
	ret nz                                           ; $4fd0: $c0

	ld a, e                                          ; $4fd1: $7b
	ldh [c], a                                       ; $4fd2: $e2
	ldh [$c3], a                                     ; $4fd3: $e0 $c3
	adc [hl]                                         ; $4fd5: $8e
	rst $38                                          ; $4fd6: $ff
	cp $fc                                           ; $4fd7: $fe $fc
	ldh a, [c]                                       ; $4fd9: $f2
	ld a, [$fbfb]                                    ; $4fda: $fa $fb $fb
	ld a, e                                          ; $4fdd: $7b
	jp $bfe7                                         ; $4fde: $c3 $e7 $bf


	ld e, a                                          ; $4fe1: $5f
	ld c, a                                          ; $4fe2: $4f
	cpl                                              ; $4fe3: $2f
	xor a                                            ; $4fe4: $af
	rst SubAFromDE                                          ; $4fe5: $df
	ld a, d                                          ; $4fe6: $7a
	sbc $3a                                          ; $4fe7: $de $3a
	rst SubAFromDE                                          ; $4fe9: $df
	ld a, [de]                                       ; $4fea: $1a
	sbc d                                            ; $4feb: $9a
	ld a, [bc]                                       ; $4fec: $0a
	dec de                                           ; $4fed: $1b
	rst SubAFromDE                                          ; $4fee: $df
	rst AddAOntoHL                                          ; $4fef: $ef
	rst AddAOntoHL                                          ; $4ff0: $ef
	ld d, a                                          ; $4ff1: $57
	ld h, b                                          ; $4ff2: $60
	ld h, a                                          ; $4ff3: $67
	sbc b                                            ; $4ff4: $98
	adc [hl]                                         ; $4ff5: $8e
	ret nz                                           ; $4ff6: $c0

	add b                                            ; $4ff7: $80
	ld a, h                                          ; $4ff8: $7c
	ld e, b                                          ; $4ff9: $58
	rst $38                                          ; $4ffa: $ff
	rst SubAFromDE                                          ; $4ffb: $df
	ld c, a                                          ; $4ffc: $4f
	cp a                                             ; $4ffd: $bf
	ld [hl], b                                       ; $4ffe: $70
	add b                                            ; $4fff: $80
	db $fc                                           ; $5000: $fc
	rst SubAFromBC                                          ; $5001: $e7

jr_06b_5002:
	nop                                              ; $5002: $00
	ccf                                              ; $5003: $3f
	ldh a, [$c0]                                     ; $5004: $f0 $c0
	adc a                                            ; $5006: $8f
	ld h, e                                          ; $5007: $63
	cp b                                             ; $5008: $b8
	adc b                                            ; $5009: $88
	pop af                                           ; $500a: $f1
	ld a, h                                          ; $500b: $7c
	rst $38                                          ; $500c: $ff
	inc bc                                           ; $500d: $03
	or c                                             ; $500e: $b1
	inc e                                            ; $500f: $1c
	adc $82                                          ; $5010: $ce $82
	ld h, c                                          ; $5012: $61
	ld a, c                                          ; $5013: $79
	ld a, h                                          ; $5014: $7c
	or [hl]                                          ; $5015: $b6
	or e                                             ; $5016: $b3
	ld sp, $f770                                     ; $5017: $31 $70 $f7
	rst $38                                          ; $501a: $ff
	ld e, a                                          ; $501b: $5f
	rst JumpTable                                          ; $501c: $c7
	db $e3                                           ; $501d: $e3
	pop hl                                           ; $501e: $e1
	ld h, c                                          ; $501f: $61
	jr nz, jr_06b_5002                               ; $5020: $20 $e0

	pop bc                                           ; $5022: $c1
	db $dd                                           ; $5023: $dd
	inc bc                                           ; $5024: $03
	sbc e                                            ; $5025: $9b
	rlca                                             ; $5026: $07
	rst SubAFromBC                                          ; $5027: $e7
	rst $38                                          ; $5028: $ff
	rst $38                                          ; $5029: $ff
	db $dd                                           ; $502a: $dd
	cp $df                                           ; $502b: $fe $df
	db $fd                                           ; $502d: $fd
	sub a                                            ; $502e: $97
	rrca                                             ; $502f: $0f
	ldh [hDisp1_LCDC], a                                     ; $5030: $e0 $8f
	ld b, b                                          ; $5032: $40
	jr nz, jr_06b_5065                               ; $5033: $20 $30

	jr @+$12                                         ; $5035: $18 $10

	ld a, e                                          ; $5037: $7b
	sub b                                            ; $5038: $90
	ld a, [hl+]                                      ; $5039: $2a
	ret nz                                           ; $503a: $c0

	add b                                            ; $503b: $80
	nop                                              ; $503c: $00
	jr nc, jr_06b_505f                               ; $503d: $30 $20

jr_06b_503f:
	ret nz                                           ; $503f: $c0

	ret nz                                           ; $5040: $c0

	jr nc, jr_06b_503f                               ; $5041: $30 $fc

	ld a, [$3000]                                    ; $5043: $fa $00 $30
	ldh [$c0], a                                     ; $5046: $e0 $c0
	ret nz                                           ; $5048: $c0

	ldh a, [$0c]                                     ; $5049: $f0 $0c
	ld b, $1d                                        ; $504b: $06 $1d
	sbc a                                            ; $504d: $9f
	ld l, [hl]                                       ; $504e: $6e
	or a                                             ; $504f: $b7
	dec e                                            ; $5050: $1d
	dec de                                           ; $5051: $1b
	adc [hl]                                         ; $5052: $8e
	ld e, l                                          ; $5053: $5d
	db $e3                                           ; $5054: $e3
	ld [hl], c                                       ; $5055: $71
	add hl, de                                       ; $5056: $19
	inc c                                            ; $5057: $0c
	add $e6                                          ; $5058: $c6 $e6
	ld [hl], e                                       ; $505a: $73
	sub c                                            ; $505b: $91
	inc sp                                           ; $505c: $33
	ld l, l                                          ; $505d: $6d
	xor e                                            ; $505e: $ab

jr_06b_505f:
	inc h                                            ; $505f: $24
	call nz, $5274                                   ; $5060: $c4 $74 $52
	ld h, d                                          ; $5063: $62
	db $d3                                           ; $5064: $d3

jr_06b_5065:
	dec de                                           ; $5065: $1b
	dec e                                            ; $5066: $1d
	sbc a                                            ; $5067: $9f
	sbc a                                            ; $5068: $9f
	rst GetHLinHL                                          ; $5069: $cf
	ld a, e                                          ; $506a: $7b
	dec e                                            ; $506b: $1d
	ldh [$c1], a                                     ; $506c: $e0 $c1
	adc l                                            ; $506e: $8d
	add e                                            ; $506f: $83
	add a                                            ; $5070: $87
	adc a                                            ; $5071: $8f
	sbc [hl]                                         ; $5072: $9e
	db $fc                                           ; $5073: $fc
	ldh a, [$e0]                                     ; $5074: $f0 $e0
	ldh [$fe], a                                     ; $5076: $e0 $fe
	db $fc                                           ; $5078: $fc
	ld sp, hl                                        ; $5079: $f9
	di                                               ; $507a: $f3
	rst JumpTable                                          ; $507b: $c7
	rra                                              ; $507c: $1f
	rst $38                                          ; $507d: $ff
	ld a, a                                          ; $507e: $7f
	db $fc                                           ; $507f: $fc
	db $fc                                           ; $5080: $fc
	db $dd                                           ; $5081: $dd
	inc e                                            ; $5082: $1c
	rst SubAFromDE                                          ; $5083: $df
	dec e                                            ; $5084: $1d
	sbc l                                            ; $5085: $9d
	rra                                              ; $5086: $1f
	rst SubAFromBC                                          ; $5087: $e7
	db $db                                           ; $5088: $db
	rst FarCall                                          ; $5089: $f7
	rst $38                                          ; $508a: $ff
	db $dd                                           ; $508b: $dd
	add b                                            ; $508c: $80
	rst SubAFromDE                                          ; $508d: $df
	ld b, b                                          ; $508e: $40
	ld l, a                                          ; $508f: $6f
	ld hl, sp-$21                                    ; $5090: $f8 $df
	ret nz                                           ; $5092: $c0

	sbc h                                            ; $5093: $9c
	ld b, b                                          ; $5094: $40
	and b                                            ; $5095: $a0
	ldh a, [$dc]                                     ; $5096: $f0 $dc
	add b                                            ; $5098: $80
	sbc l                                            ; $5099: $9d
	ret nz                                           ; $509a: $c0

	ldh [$6f], a                                     ; $509b: $e0 $6f
	ld hl, sp+$7f                                    ; $509d: $f8 $7f
	push hl                                          ; $509f: $e5
	sbc c                                            ; $50a0: $99
	and b                                            ; $50a1: $a0

jr_06b_50a2:
	ret nc                                           ; $50a2: $d0

	ld l, b                                          ; $50a3: $68
	or h                                             ; $50a4: $b4
	ld e, d                                          ; $50a5: $5a
	ld l, $77                                        ; $50a6: $2e $77
	rst AddAOntoHL                                          ; $50a8: $ef
	add e                                            ; $50a9: $83
	sbc b                                            ; $50aa: $98
	call z, $f2e6                                    ; $50ab: $cc $e6 $f2
	dec d                                            ; $50ae: $15
	inc d                                            ; $50af: $14
	adc e                                            ; $50b0: $8b
	ld d, a                                          ; $50b1: $57
	xor c                                            ; $50b2: $a9
	ld d, [hl]                                       ; $50b3: $56
	dec hl                                           ; $50b4: $2b
	ld d, a                                          ; $50b5: $57
	ei                                               ; $50b6: $fb
	rst AddAOntoHL                                          ; $50b7: $ef
	rst FarCall                                          ; $50b8: $f7
	add sp, -$0a                                     ; $50b9: $e8 $f6
	ld sp, hl                                        ; $50bb: $f9
	db $fc                                           ; $50bc: $fc
	cp [hl]                                          ; $50bd: $be
	add hl, bc                                       ; $50be: $09
	adc b                                            ; $50bf: $88
	adc b                                            ; $50c0: $88
	ld e, h                                          ; $50c1: $5c
	cp $fe                                           ; $50c2: $fe $fe
	ld a, [$defb]                                    ; $50c4: $fa $fb $de
	rst $38                                          ; $50c7: $ff
	add c                                            ; $50c8: $81
	rst FarCall                                          ; $50c9: $f7
	inc hl                                           ; $50ca: $23
	inc bc                                           ; $50cb: $03
	rlca                                             ; $50cc: $07
	rlca                                             ; $50cd: $07
	di                                               ; $50ce: $f3
	pop af                                           ; $50cf: $f1
	jp hl                                            ; $50d0: $e9


	pop hl                                           ; $50d1: $e1
	call nc, $a9e2                                   ; $50d2: $d4 $e2 $a9
	push de                                          ; $50d5: $d5
	dec c                                            ; $50d6: $0d
	ld c, $17                                        ; $50d7: $0e $17
	rra                                              ; $50d9: $1f
	dec hl                                           ; $50da: $2b
	rra                                              ; $50db: $1f
	rst SubAFromHL                                          ; $50dc: $d7
	rst AddAOntoHL                                          ; $50dd: $ef
	rst $38                                          ; $50de: $ff
	cp a                                             ; $50df: $bf
	and h                                            ; $50e0: $a4
	and h                                            ; $50e1: $a4
	xor h                                            ; $50e2: $ac

jr_06b_50e3:
	xor h                                            ; $50e3: $ac
	cp h                                             ; $50e4: $bc
	cp h                                             ; $50e5: $bc
	rst SubAFromHL                                          ; $50e6: $d7
	ld [hl], a                                       ; $50e7: $77
	rst SubAFromDE                                          ; $50e8: $df
	ld a, h                                          ; $50e9: $7c
	push hl                                          ; $50ea: $e5
	sbc l                                            ; $50eb: $9d
	rst SubAFromBC                                          ; $50ec: $e7
	cp h                                             ; $50ed: $bc
	sbc $b4                                          ; $50ee: $de $b4
	sbc d                                            ; $50f0: $9a
	and h                                            ; $50f1: $a4
	push hl                                          ; $50f2: $e5
	db $fd                                           ; $50f3: $fd
	ld sp, hl                                        ; $50f4: $f9

jr_06b_50f5:
	rst SubAFromBC                                          ; $50f5: $e7
	sbc $ef                                          ; $50f6: $de $ef
	ld a, [hl]                                       ; $50f8: $7e
	srl c                                            ; $50f9: $cb $39

jr_06b_50fb:
	nop                                              ; $50fb: $00
	ld a, a                                          ; $50fc: $7f
	adc a                                            ; $50fd: $8f
	sbc c                                            ; $50fe: $99
	ldh [$a0], a                                     ; $50ff: $e0 $a0
	ret nc                                           ; $5101: $d0

	db $10                                           ; $5102: $10
	ret z                                            ; $5103: $c8

	nop                                              ; $5104: $00
	ld a, e                                          ; $5105: $7b
	adc a                                            ; $5106: $8f
	add b                                            ; $5107: $80
	ld h, b                                          ; $5108: $60
	jr nc, jr_06b_50fb                               ; $5109: $30 $f0

	jr c, jr_06b_50f5                                ; $510b: $38 $e8

	db $f4                                           ; $510d: $f4
	ld [hl], h                                       ; $510e: $74
	cp h                                             ; $510f: $bc
	db $ec                                           ; $5110: $ec
	jp c, Jump_06b_7272                              ; $5111: $da $72 $72

	jr jr_06b_50a2                                   ; $5114: $18 $8c

	call z, $3464                                    ; $5116: $cc $64 $34
	ld [hl], $9e                                     ; $5119: $36 $9e
	sbc [hl]                                         ; $511b: $9e
	jp nc, $34f2                                     ; $511c: $d2 $f2 $34

	inc [hl]                                         ; $511f: $34
	call nc, $1098                                   ; $5120: $d4 $98 $10
	jr nz, jr_06b_50e3                               ; $5123: $20 $be

	cp [hl]                                          ; $5125: $be
	db $fc                                           ; $5126: $fc
	sbc l                                            ; $5127: $9d
	db $fc                                           ; $5128: $fc
	call c, $f87b                                    ; $5129: $dc $7b $f8
	ld a, e                                          ; $512c: $7b
	ret nc                                           ; $512d: $d0

	sbc d                                            ; $512e: $9a
	jr nz, @+$12                                     ; $512f: $20 $10

	db $10                                           ; $5131: $10
	ld c, b                                          ; $5132: $48
	ld l, b                                          ; $5133: $68
	ld [hl], a                                       ; $5134: $77
	ret nc                                           ; $5135: $d0

	rst SubAFromDE                                          ; $5136: $df
	ldh a, [$8d]                                     ; $5137: $f0 $8d
	cp b                                             ; $5139: $b8
	sbc b                                            ; $513a: $98
	ld l, b                                          ; $513b: $68
	ld l, h                                          ; $513c: $6c
	db $e4                                           ; $513d: $e4
	db $e4                                           ; $513e: $e4
	call nz, $84c4                                   ; $513f: $c4 $c4 $84
	inc b                                            ; $5142: $04
	sbc b                                            ; $5143: $98
	sbc h                                            ; $5144: $9c
	inc e                                            ; $5145: $1c
	inc e                                            ; $5146: $1c
	inc a                                            ; $5147: $3c
	inc a                                            ; $5148: $3c
	ld a, h                                          ; $5149: $7c
	db $fc                                           ; $514a: $fc
	inc h                                            ; $514b: $24
	nop                                              ; $514c: $00
	adc l                                            ; $514d: $8d
	xor $ff                                          ; $514e: $ee $ff
	adc b                                            ; $5150: $88
	adc b                                            ; $5151: $88
	ld h, [hl]                                       ; $5152: $66
	rst $38                                          ; $5153: $ff
	adc b                                            ; $5154: $88
	nop                                              ; $5155: $00
	nop                                              ; $5156: $00
	ld d, l                                          ; $5157: $55
	ld [hl], a                                       ; $5158: $77
	adc b                                            ; $5159: $88
	nop                                              ; $515a: $00
	sbc c                                            ; $515b: $99
	sbc c                                            ; $515c: $99
	ld d, l                                          ; $515d: $55
	adc b                                            ; $515e: $88
	ld b, h                                          ; $515f: $44
	ld l, e                                          ; $5160: $6b
	ei                                               ; $5161: $fb
	sbc [hl]                                         ; $5162: $9e
	inc sp                                           ; $5163: $33
	ld [hl], a                                       ; $5164: $77
	pop af                                           ; $5165: $f1
	ld a, a                                          ; $5166: $7f
	ei                                               ; $5167: $fb
	ld a, a                                          ; $5168: $7f
	push af                                          ; $5169: $f5
	ld a, a                                          ; $516a: $7f
	add sp, -$63                                     ; $516b: $e8 $9d
	adc b                                            ; $516d: $88
	rst $38                                          ; $516e: $ff
	jp c, $8001                                      ; $516f: $da $01 $80

	rrca                                             ; $5172: $0f
	ld a, [$f21f]                                    ; $5173: $fa $1f $f2
	dec a                                            ; $5176: $3d
	ldh a, [$39]                                     ; $5177: $f0 $39
	ldh [rSVBK], a                                   ; $5179: $e0 $70
	jp $8ff3                                         ; $517b: $c3 $f3 $8f


	rst GetHLinHL                                          ; $517e: $cf

jr_06b_517f:
	inc a                                            ; $517f: $3c
	ld l, a                                          ; $5180: $6f
	ldh [$c5], a                                     ; $5181: $e0 $c5
	inc bc                                           ; $5183: $03
	ld c, [hl]                                       ; $5184: $4e
	add [hl]                                         ; $5185: $86
	db $fd                                           ; $5186: $fd
	sbc a                                            ; $5187: $9f
	add $83                                          ; $5188: $c6 $83
	and e                                            ; $518a: $a3
	ld b, b                                          ; $518b: $40
	pop bc                                           ; $518c: $c1
	jr nz, jr_06b_517f                               ; $518d: $20 $f0

	and b                                            ; $518f: $a0
	ldh a, [$80]                                     ; $5190: $f0 $80
	sub b                                            ; $5192: $90
	ldh a, [$f8]                                     ; $5193: $f0 $f8
	ld c, b                                          ; $5195: $48
	db $fc                                           ; $5196: $fc
	ld l, h                                          ; $5197: $6c
	or $f7                                           ; $5198: $f6 $f7
	ld a, e                                          ; $519a: $7b
	cp e                                             ; $519b: $bb

jr_06b_519c:
	ld a, l                                          ; $519c: $7d
	db $fd                                           ; $519d: $fd
	ld a, $94                                        ; $519e: $3e $94
	ccf                                              ; $51a0: $3f
	ld [hl], $9b                                     ; $51a1: $36 $9b
	res 3, l                                         ; $51a3: $cb $9d
	sbc d                                            ; $51a5: $9a
	call $ce65                                       ; $51a6: $cd $65 $ce
	ld d, h                                          ; $51a9: $54
	rst SubAFromBC                                          ; $51aa: $e7
	xor d                                            ; $51ab: $aa
	ld [hl], a                                       ; $51ac: $77
	dec d                                            ; $51ad: $15
	cp e                                             ; $51ae: $bb
	adc e                                            ; $51af: $8b
	db $dd                                           ; $51b0: $dd
	add [hl]                                         ; $51b1: $86
	call nc, $b0ef                                   ; $51b2: $d4 $ef $b0
	ldh [$b0], a                                     ; $51b5: $e0 $b0
	ldh [$f0], a                                     ; $51b7: $e0 $f0
	ld h, b                                          ; $51b9: $60
	jr c, jr_06b_519c                                ; $51ba: $38 $e0

	add sp, -$80                                     ; $51bc: $e8 $80
	ldh [rP1], a                                     ; $51be: $e0 $00
	ret nc                                           ; $51c0: $d0

	jr nz, jr_06b_522b                               ; $51c1: $20 $68

	ldh a, [$c8]                                     ; $51c3: $f0 $c8
	ldh a, [$e0]                                     ; $51c5: $f0 $e0
	add b                                            ; $51c7: $80
	nop                                              ; $51c8: $00
	add b                                            ; $51c9: $80
	ldh a, [$7b]                                     ; $51ca: $f0 $7b
	ldh a, [c]                                       ; $51cc: $f2
	sbc [hl]                                         ; $51cd: $9e
	ret nz                                           ; $51ce: $c0

	db $fc                                           ; $51cf: $fc
	add b                                            ; $51d0: $80
	jr nz, jr_06b_5203                               ; $51d1: $20 $30

	jr nc, jr_06b_5214                               ; $51d3: $30 $3f

	ccf                                              ; $51d5: $3f
	rrca                                             ; $51d6: $0f
	ld a, a                                          ; $51d7: $7f
	nop                                              ; $51d8: $00
	ld a, b                                          ; $51d9: $78
	rlca                                             ; $51da: $07
	daa                                              ; $51db: $27
	rra                                              ; $51dc: $1f
	dec bc                                           ; $51dd: $0b
	dec e                                            ; $51de: $1d
	rlca                                             ; $51df: $07
	rrca                                             ; $51e0: $0f
	ld a, [bc]                                       ; $51e1: $0a
	rlca                                             ; $51e2: $07
	rlca                                             ; $51e3: $07
	nop                                              ; $51e4: $00
	inc hl                                           ; $51e5: $23
	nop                                              ; $51e6: $00
	ld [hl], b                                       ; $51e7: $70
	nop                                              ; $51e8: $00
	jr jr_06b_520b                                   ; $51e9: $18 $20

	jr jr_06b_521d                                   ; $51eb: $18 $30

	jr nc, jr_06b_520f                               ; $51ed: $30 $20

	nop                                              ; $51ef: $00
	add c                                            ; $51f0: $81
	nop                                              ; $51f1: $00
	jp hl                                            ; $51f2: $e9


	ld e, a                                          ; $51f3: $5f
	dec a                                            ; $51f4: $3d
	rst GetHLinHL                                          ; $51f5: $cf
	or $cf                                           ; $51f6: $f6 $cf
	rst $38                                          ; $51f8: $ff
	rlca                                             ; $51f9: $07
	call $fc37                                       ; $51fa: $cd $37 $fc
	rst SubAFromBC                                          ; $51fd: $e7
	ld [hl], $8f                                     ; $51fe: $36 $8f
	ld a, a                                          ; $5200: $7f
	dec c                                            ; $5201: $0d
	ld a, a                                          ; $5202: $7f

jr_06b_5203:
	adc c                                            ; $5203: $89
	rst SubAFromDE                                          ; $5204: $df
	add hl, bc                                       ; $5205: $09
	cp [hl]                                          ; $5206: $be
	dec bc                                           ; $5207: $0b
	ccf                                              ; $5208: $3f
	dec bc                                           ; $5209: $0b
	inc a                                            ; $520a: $3c

jr_06b_520b:
	rrca                                             ; $520b: $0f
	ld l, d                                          ; $520c: $6a
	rra                                              ; $520d: $1f
	ld a, d                                          ; $520e: $7a

jr_06b_520f:
	ld a, e                                          ; $520f: $7b
	cp $82                                           ; $5210: $fe $82
	db $db                                           ; $5212: $db
	ccf                                              ; $5213: $3f

jr_06b_5214:
	ei                                               ; $5214: $fb
	ccf                                              ; $5215: $3f
	rst $38                                          ; $5216: $ff
	ld a, b                                          ; $5217: $78
	ld a, a                                          ; $5218: $7f
	ldh [rIE], a                                     ; $5219: $e0 $ff
	ret nz                                           ; $521b: $c0

	ld e, a                                          ; $521c: $5f

jr_06b_521d:
	ldh [$2f], a                                     ; $521d: $e0 $2f
	ldh a, [$1f]                                     ; $521f: $f0 $1f
	ldh a, [$1f]                                     ; $5221: $f0 $1f
	ld hl, sp+$0b                                    ; $5223: $f8 $0b
	db $fc                                           ; $5225: $fc
	rlca                                             ; $5226: $07
	db $fc                                           ; $5227: $fc
	inc bc                                           ; $5228: $03
	cp $01                                           ; $5229: $fe $01

jr_06b_522b:
	rst $38                                          ; $522b: $ff
	add c                                            ; $522c: $81
	rst $38                                          ; $522d: $ff
	add b                                            ; $522e: $80
	ld a, e                                          ; $522f: $7b
	db $fc                                           ; $5230: $fc
	ld e, a                                          ; $5231: $5f
	ld b, b                                          ; $5232: $40
	sub c                                            ; $5233: $91
	ld sp, hl                                        ; $5234: $f9
	add a                                            ; $5235: $87
	rst SubAFromBC                                          ; $5236: $e7
	ld e, $bf                                        ; $5237: $1e $bf
	ld a, b                                          ; $5239: $78
	add [hl]                                         ; $523a: $86
	ld b, c                                          ; $523b: $41
	ld c, e                                          ; $523c: $4b
	add a                                            ; $523d: $87
	rst $38                                          ; $523e: $ff
	sbc a                                            ; $523f: $9f
	add $87                                          ; $5240: $c6 $87
	ld h, a                                          ; $5242: $67
	ld b, b                                          ; $5243: $40
	ld l, a                                          ; $5244: $6f
	ld h, b                                          ; $5245: $60
	sub e                                            ; $5246: $93
	ld a, b                                          ; $5247: $78
	ldh [$a8], a                                     ; $5248: $e0 $a8
	ret nz                                           ; $524a: $c0

	ldh [rP1], a                                     ; $524b: $e0 $00
	ldh a, [rP1]                                     ; $524d: $f0 $00
	sbc b                                            ; $524f: $98
	ld h, b                                          ; $5250: $60
	add sp, -$10                                     ; $5251: $e8 $f0
	ld a, e                                          ; $5253: $7b
	rst FarCall                                          ; $5254: $f7
	dec sp                                           ; $5255: $3b
	ld h, b                                          ; $5256: $60
	ld a, a                                          ; $5257: $7f
	cp $9b                                           ; $5258: $fe $9b
	inc a                                            ; $525a: $3c
	inc bc                                           ; $525b: $03
	dec bc                                           ; $525c: $0b
	rra                                              ; $525d: $1f
	scf                                              ; $525e: $37
	ld h, b                                          ; $525f: $60
	sub l                                            ; $5260: $95
	db $fd                                           ; $5261: $fd
	rrca                                             ; $5262: $0f
	or $cf                                           ; $5263: $f6 $cf
	ccf                                              ; $5265: $3f
	rst JumpTable                                          ; $5266: $c7
	db $ed                                           ; $5267: $ed
	rla                                              ; $5268: $17
	db $ec                                           ; $5269: $ec
	rst FarCall                                          ; $526a: $f7
	scf                                              ; $526b: $37
	ld h, b                                          ; $526c: $60
	ld h, e                                          ; $526d: $63

jr_06b_526e:
	add b                                            ; $526e: $80
	sub c                                            ; $526f: $91
	pop bc                                           ; $5270: $c1
	db $fd                                           ; $5271: $fd
	add e                                            ; $5272: $83
	and $1f                                          ; $5273: $e6 $1f
	cp a                                             ; $5275: $bf
	ld a, b                                          ; $5276: $78
	adc a                                            ; $5277: $8f
	ld h, b                                          ; $5278: $60
	ld c, [hl]                                       ; $5279: $4e
	add c                                            ; $527a: $81
	rst AddAOntoHL                                          ; $527b: $ef
	sbc a                                            ; $527c: $9f
	rst JumpTable                                          ; $527d: $c7
	ld c, e                                          ; $527e: $4b
	add b                                            ; $527f: $80
	adc a                                            ; $5280: $8f
	cp b                                             ; $5281: $b8
	ld h, b                                          ; $5282: $60
	ld l, b                                          ; $5283: $68
	ret nz                                           ; $5284: $c0

	ldh [$80], a                                     ; $5285: $e0 $80

jr_06b_5287:
	ldh a, [rP1]                                     ; $5287: $f0 $00
	ld hl, sp+$00                                    ; $5289: $f8 $00
	ret z                                            ; $528b: $c8

	jr nc, jr_06b_526e                               ; $528c: $30 $e0

	ldh a, [$80]                                     ; $528e: $f0 $80
	ret nz                                           ; $5290: $c0

	ld e, a                                          ; $5291: $5f
	add b                                            ; $5292: $80
	ld a, a                                          ; $5293: $7f
	sbc h                                            ; $5294: $9c
	sbc e                                            ; $5295: $9b
	jr nz, jr_06b_52d7                               ; $5296: $20 $3f

	rra                                              ; $5298: $1f
	ccf                                              ; $5299: $3f
	ld [hl], a                                       ; $529a: $77
	add b                                            ; $529b: $80
	sbc e                                            ; $529c: $9b
	ccf                                              ; $529d: $3f
	nop                                              ; $529e: $00
	jr jr_06b_52a8                                   ; $529f: $18 $07

	cpl                                              ; $52a1: $2f
	add b                                            ; $52a2: $80
	sub e                                            ; $52a3: $93
	ld [hl], $cf                                     ; $52a4: $36 $cf
	rst $38                                          ; $52a6: $ff
	rst JumpTable                                          ; $52a7: $c7

jr_06b_52a8:
	db $fd                                           ; $52a8: $fd
	rlca                                             ; $52a9: $07
	call c, $f627                                    ; $52aa: $dc $27 $f6
	rst AddAOntoHL                                          ; $52ad: $ef
	ld a, a                                          ; $52ae: $7f
	call $8027                                       ; $52af: $cd $27 $80

jr_06b_52b2:
	sub d                                            ; $52b2: $92
	ld [hl], c                                       ; $52b3: $71
	ret nz                                           ; $52b4: $c0

	db $fc                                           ; $52b5: $fc
	add e                                            ; $52b6: $83
	rst SubAFromBC                                          ; $52b7: $e7
	rra                                              ; $52b8: $1f
	cp e                                             ; $52b9: $bb
	ld a, h                                          ; $52ba: $7c
	add a                                            ; $52bb: $87
	ld h, b                                          ; $52bc: $60
	ld c, a                                          ; $52bd: $4f
	add b                                            ; $52be: $80
	db $ec                                           ; $52bf: $ec
	ld b, e                                          ; $52c0: $43
	add b                                            ; $52c1: $80
	sub [hl]                                         ; $52c2: $96
	ld hl, sp+$20                                    ; $52c3: $f8 $20
	jr z, jr_06b_5287                                ; $52c5: $28 $c0

	ret nz                                           ; $52c7: $c0

	ldh [rSVBK], a                                   ; $52c8: $e0 $70
	add b                                            ; $52ca: $80
	ld hl, sp+$7b                                    ; $52cb: $f8 $7b
	ld a, [hl]                                       ; $52cd: $7e
	sbc h                                            ; $52ce: $9c
	ret nz                                           ; $52cf: $c0

	jr nc, jr_06b_52b2                               ; $52d0: $30 $e0

	ld a, e                                          ; $52d2: $7b
	ld a, l                                          ; $52d3: $7d
	ld e, a                                          ; $52d4: $5f
	add b                                            ; $52d5: $80
	sbc c                                            ; $52d6: $99

jr_06b_52d7:
	inc hl                                           ; $52d7: $23
	inc a                                            ; $52d8: $3c
	ld e, $3f                                        ; $52d9: $1e $3f
	ld a, l                                          ; $52db: $7d
	inc bc                                           ; $52dc: $03
	ld [hl], a                                       ; $52dd: $77
	add b                                            ; $52de: $80
	sbc d                                            ; $52df: $9a
	rra                                              ; $52e0: $1f
	nop                                              ; $52e1: $00
	ld b, $0f                                        ; $52e2: $06 $0f
	dec bc                                           ; $52e4: $0b
	inc sp                                           ; $52e5: $33
	add b                                            ; $52e6: $80
	sub h                                            ; $52e7: $94
	rst SubAFromDE                                          ; $52e8: $df
	rst SubAFromBC                                          ; $52e9: $e7
	db $fd                                           ; $52ea: $fd
	rlca                                             ; $52eb: $07
	db $fc                                           ; $52ec: $fc
	rlca                                             ; $52ed: $07
	or [hl]                                          ; $52ee: $b6
	ld l, a                                          ; $52ef: $6f
	rst SubAFromDE                                          ; $52f0: $df
	db $ed                                           ; $52f1: $ed
	rst $38                                          ; $52f2: $ff
	ld c, e                                          ; $52f3: $4b
	add b                                            ; $52f4: $80
	ei                                               ; $52f5: $fb
	ld a, [hl]                                       ; $52f6: $7e
	dec c                                            ; $52f7: $0d
	adc a                                            ; $52f8: $8f
	and b                                            ; $52f9: $a0
	ret nz                                           ; $52fa: $c0

	add sp, -$10                                     ; $52fb: $e8 $f0
	dec a                                            ; $52fd: $3d
	cp $0f                                           ; $52fe: $fe $0f
	rst $38                                          ; $5300: $ff
	ld b, $ff                                        ; $5301: $06 $ff
	add e                                            ; $5303: $83
	rst $38                                          ; $5304: $ff
	ld b, e                                          ; $5305: $43
	cp $21                                           ; $5306: $fe $21
	rst $38                                          ; $5308: $ff
	ld [hl], a                                       ; $5309: $77
	cp $82                                           ; $530a: $fe $82
	pop af                                           ; $530c: $f1
	rst $38                                          ; $530d: $ff
	or c                                             ; $530e: $b1
	rst $38                                          ; $530f: $ff
	jr z, jr_06b_532a                                ; $5310: $28 $18

	ld c, b                                          ; $5312: $48
	ld h, b                                          ; $5313: $60
	jr nc, jr_06b_5316                               ; $5314: $30 $00

jr_06b_5316:
	stop                                             ; $5316: $10 $00
	nop                                              ; $5318: $00
	ld bc, $0301                                     ; $5319: $01 $01 $03
	inc bc                                           ; $531c: $03
	rlca                                             ; $531d: $07
	rst SubAFromBC                                          ; $531e: $e7
	rst $38                                          ; $531f: $ff
	ccf                                              ; $5320: $3f
	rst $38                                          ; $5321: $ff
	add $ff                                          ; $5322: $c6 $ff
	cp $3f                                           ; $5324: $fe $3f
	ld a, a                                          ; $5326: $7f
	add c                                            ; $5327: $81
	rst $38                                          ; $5328: $ff
	ld a, e                                          ; $5329: $7b

jr_06b_532a:
	xor a                                            ; $532a: $af
	ld a, [hl]                                       ; $532b: $7e
	ld a, [hl-]                                      ; $532c: $3a
	ld a, a                                          ; $532d: $7f
	cp $7f                                           ; $532e: $fe $7f
	ldh [$9d], a                                     ; $5330: $e0 $9d
	ret z                                            ; $5332: $c8

	ld [hl], b                                       ; $5333: $70
	rla                                              ; $5334: $17
	ldh [$99], a                                     ; $5335: $e0 $99
	jr c, jr_06b_5351                                ; $5337: $38 $18

	add sp, $50                                      ; $5339: $e8 $50
	ld b, b                                          ; $533b: $40
	jr nc, jr_06b_5355                               ; $533c: $30 $17

	ldh [$98], a                                     ; $533e: $e0 $98

jr_06b_5340:
	ldh a, [$58]                                     ; $5340: $f0 $58
	ld a, b                                          ; $5342: $78
	jr nc, jr_06b_5345                               ; $5343: $30 $00

jr_06b_5345:
	jr nc, jr_06b_5377                               ; $5345: $30 $30

	dec hl                                           ; $5347: $2b
	ldh [$e1], a                                     ; $5348: $e0 $e1
	ld bc, $0f80                                     ; $534a: $01 $80 $0f
	ld a, [$f21f]                                    ; $534d: $fa $1f $f2
	dec a                                            ; $5350: $3d

jr_06b_5351:
	ldh a, [$39]                                     ; $5351: $f0 $39
	ldh [$71], a                                     ; $5353: $e0 $71

jr_06b_5355:
	ret nz                                           ; $5355: $c0

	ei                                               ; $5356: $fb
	add a                                            ; $5357: $87

jr_06b_5358:
	call $373e                                       ; $5358: $cd $3e $37
	ld hl, sp-$39                                    ; $535b: $f8 $c7
	nop                                              ; $535d: $00
	ld c, a                                          ; $535e: $4f
	add b                                            ; $535f: $80
	db $ec                                           ; $5360: $ec
	sbc a                                            ; $5361: $9f
	rst JumpTable                                          ; $5362: $c7
	add a                                            ; $5363: $87
	and b                                            ; $5364: $a0
	ld b, b                                          ; $5365: $40
	ret nz                                           ; $5366: $c0

	jr nz, @-$0e                                     ; $5367: $20 $f0

	and b                                            ; $5369: $a0
	ldh a, [$80]                                     ; $536a: $f0 $80
	sub b                                            ; $536c: $90
	ldh a, [$f8]                                     ; $536d: $f0 $f8
	ld c, b                                          ; $536f: $48
	db $fc                                           ; $5370: $fc
	ld l, h                                          ; $5371: $6c
	or $f7                                           ; $5372: $f6 $f7
	ld a, e                                          ; $5374: $7b
	cp e                                             ; $5375: $bb
	ld a, l                                          ; $5376: $7d

jr_06b_5377:
	db $fd                                           ; $5377: $fd
	ld a, $94                                        ; $5378: $3e $94
	ccf                                              ; $537a: $3f
	ld [hl], $9b                                     ; $537b: $36 $9b
	res 3, l                                         ; $537d: $cb $9d
	sbc d                                            ; $537f: $9a
	call $ce65                                       ; $5380: $cd $65 $ce

jr_06b_5383:
	ld d, h                                          ; $5383: $54
	rst SubAFromBC                                          ; $5384: $e7
	xor d                                            ; $5385: $aa
	ld [hl], a                                       ; $5386: $77
	dec d                                            ; $5387: $15
	cp e                                             ; $5388: $bb
	adc e                                            ; $5389: $8b
	db $dd                                           ; $538a: $dd
	adc [hl]                                         ; $538b: $8e
	call nc, $b0ef                                   ; $538c: $d4 $ef $b0
	ldh [$b0], a                                     ; $538f: $e0 $b0
	ldh [$f0], a                                     ; $5391: $e0 $f0
	ld h, b                                          ; $5393: $60
	ld hl, sp+$20                                    ; $5394: $f8 $20
	jr z, jr_06b_5358                                ; $5396: $28 $c0

	ret nz                                           ; $5398: $c0

	ldh [$d0], a                                     ; $5399: $e0 $d0
	jr nz, @-$06                                     ; $539b: $20 $f8

	cp a                                             ; $539d: $bf
	ld hl, sp-$40                                    ; $539e: $f8 $c0
	sbc d                                            ; $53a0: $9a
	jr nc, jr_06b_5383                               ; $53a1: $30 $e0

	ldh [$c0], a                                     ; $53a3: $e0 $c0
	add b                                            ; $53a5: $80
	ld sp, hl                                        ; $53a6: $f9
	sub h                                            ; $53a7: $94
	jr nc, jr_06b_53ca                               ; $53a8: $30 $20

	jr nc, jr_06b_53cf                               ; $53aa: $30 $23

	cpl                                              ; $53ac: $2f
	rra                                              ; $53ad: $1f
	ld [hl], e                                       ; $53ae: $73
	inc a                                            ; $53af: $3c
	ld e, a                                          ; $53b0: $5f
	jr nz, jr_06b_53f2                               ; $53b1: $20 $3f

	cp a                                             ; $53b3: $bf
	rra                                              ; $53b4: $1f
	ld b, $9b                                        ; $53b5: $06 $9b
	rrca                                             ; $53b7: $0f
	dec bc                                           ; $53b8: $0b
	rlca                                             ; $53b9: $07
	nop                                              ; $53ba: $00
	cp [hl]                                          ; $53bb: $be
	jr nz, @+$72                                     ; $53bc: $20 $70

	jr jr_06b_5340                                   ; $53be: $18 $80

	jr nz, jr_06b_53da                               ; $53c0: $20 $18

	jr nc, @+$32                                     ; $53c2: $30 $30

	jr nz, jr_06b_53c6                               ; $53c4: $20 $00

jr_06b_53c6:
	nop                                              ; $53c6: $00
	jp hl                                            ; $53c7: $e9


	ld e, a                                          ; $53c8: $5f
	db $fd                                           ; $53c9: $fd

jr_06b_53ca:
	rst GetHLinHL                                          ; $53ca: $cf
	ld [hl], $cf                                     ; $53cb: $36 $cf
	rst $38                                          ; $53cd: $ff
	rlca                                             ; $53ce: $07

jr_06b_53cf:
	db $fd                                           ; $53cf: $fd
	rlca                                             ; $53d0: $07
	db $fc                                           ; $53d1: $fc
	rlca                                             ; $53d2: $07
	or [hl]                                          ; $53d3: $b6
	ld l, a                                          ; $53d4: $6f
	rst SubAFromDE                                          ; $53d5: $df
	db $ed                                           ; $53d6: $ed
	rst $38                                          ; $53d7: $ff
	adc c                                            ; $53d8: $89
	rra                                              ; $53d9: $1f

jr_06b_53da:
	add hl, bc                                       ; $53da: $09
	ld a, $0b                                        ; $53db: $3e $0b
	ccf                                              ; $53dd: $3f
	dec bc                                           ; $53de: $0b
	sbc d                                            ; $53df: $9a
	inc a                                            ; $53e0: $3c
	rrca                                             ; $53e1: $0f
	ld l, d                                          ; $53e2: $6a
	rra                                              ; $53e3: $1f
	ld a, d                                          ; $53e4: $7a
	ld a, e                                          ; $53e5: $7b
	cp $82                                           ; $53e6: $fe $82
	db $db                                           ; $53e8: $db
	ccf                                              ; $53e9: $3f
	ei                                               ; $53ea: $fb
	ccf                                              ; $53eb: $3f
	rst $38                                          ; $53ec: $ff
	ld a, b                                          ; $53ed: $78
	ld a, a                                          ; $53ee: $7f
	ldh [rIE], a                                     ; $53ef: $e0 $ff
	ret nz                                           ; $53f1: $c0

jr_06b_53f2:
	ld e, a                                          ; $53f2: $5f
	ldh [$2f], a                                     ; $53f3: $e0 $2f
	ldh a, [$1f]                                     ; $53f5: $f0 $1f
	ldh a, [$1f]                                     ; $53f7: $f0 $1f
	ld hl, sp+$0b                                    ; $53f9: $f8 $0b
	db $fc                                           ; $53fb: $fc
	rlca                                             ; $53fc: $07
	db $fc                                           ; $53fd: $fc
	inc bc                                           ; $53fe: $03
	cp $01                                           ; $53ff: $fe $01
	rst $38                                          ; $5401: $ff
	add c                                            ; $5402: $81
	rst $38                                          ; $5403: $ff
	add b                                            ; $5404: $80
	ld a, e                                          ; $5405: $7b
	db $fc                                           ; $5406: $fc
	ld h, a                                          ; $5407: $67
	ld b, b                                          ; $5408: $40
	adc a                                            ; $5409: $8f
	ld [hl], b                                       ; $540a: $70
	pop bc                                           ; $540b: $c1
	di                                               ; $540c: $f3
	adc a                                            ; $540d: $8f
	db $dd                                           ; $540e: $dd
	ld a, $6f                                        ; $540f: $3e $6f
	ldh a, [$c7]                                     ; $5411: $f0 $c7
	nop                                              ; $5413: $00
	ld c, [hl]                                       ; $5414: $4e
	add c                                            ; $5415: $81
	rst AddAOntoHL                                          ; $5416: $ef
	sbc a                                            ; $5417: $9f

jr_06b_5418:
	pop bc                                           ; $5418: $c1
	add e                                            ; $5419: $83
	ld h, a                                          ; $541a: $67
	ld b, b                                          ; $541b: $40
	ld d, a                                          ; $541c: $57
	ld h, b                                          ; $541d: $60
	sbc [hl]                                         ; $541e: $9e
	ldh a, [$bf]                                     ; $541f: $f0 $bf
	ld hl, sp-$38                                    ; $5421: $f8 $c8
	ld a, a                                          ; $5423: $7f
	ld h, d                                          ; $5424: $62
	sbc e                                            ; $5425: $9b
	ldh a, [$80]                                     ; $5426: $f0 $80
	ret nz                                           ; $5428: $c0

	ldh [$5f], a                                     ; $5429: $e0 $5f
	ld h, b                                          ; $542b: $60
	sub a                                            ; $542c: $97
	ld hl, $2731                                     ; $542d: $21 $31 $27
	ld b, $3f                                        ; $5430: $06 $3f
	ld [hl], a                                       ; $5432: $77
	jr c, jr_06b_54b4                                ; $5433: $38 $7f

	cp a                                             ; $5435: $bf
	ccf                                              ; $5436: $3f
	jr jr_06b_5418                                   ; $5437: $18 $df

	rlca                                             ; $5439: $07
	sbc l                                            ; $543a: $9d
	rrca                                             ; $543b: $0f
	ld a, [bc]                                       ; $543c: $0a
	ld c, e                                          ; $543d: $4b
	ld h, b                                          ; $543e: $60
	sbc c                                            ; $543f: $99
	ld l, c                                          ; $5440: $69
	rst SubAFromDE                                          ; $5441: $df
	db $fd                                           ; $5442: $fd
	rst GetHLinHL                                          ; $5443: $cf
	or $0f                                           ; $5444: $f6 $0f
	ld [hl], a                                       ; $5446: $77
	ld h, b                                          ; $5447: $60
	sbc b                                            ; $5448: $98
	call c, $f627                                    ; $5449: $dc $27 $f6
	rst AddAOntoHL                                          ; $544c: $ef
	ld a, a                                          ; $544d: $7f
	call Call_06b_4b7f                               ; $544e: $cd $7f $4b
	ld h, b                                          ; $5451: $60
	ld h, e                                          ; $5452: $63
	add b                                            ; $5453: $80
	sub b                                            ; $5454: $90
	rst JumpTable                                          ; $5455: $c7
	rst SubAFromBC                                          ; $5456: $e7
	sbc a                                            ; $5457: $9f
	rst $38                                          ; $5458: $ff
	jr c, jr_06b_54aa                                ; $5459: $38 $4f

	ldh [$c6], a                                     ; $545b: $e0 $c6
	ld bc, $874b                                     ; $545d: $01 $4b $87
	db $fd                                           ; $5460: $fd
	sbc a                                            ; $5461: $9f
	jp $3781                                         ; $5462: $c3 $81 $37


	add b                                            ; $5465: $80
	sub e                                            ; $5466: $93
	sub b                                            ; $5467: $90
	ld h, b                                          ; $5468: $60
	sbc b                                            ; $5469: $98
	ld h, b                                          ; $546a: $60
	add sp, -$10                                     ; $546b: $e8 $f0
	ld b, b                                          ; $546d: $40
	ldh [$80], a                                     ; $546e: $e0 $80
	ret nz                                           ; $5470: $c0

	ld h, b                                          ; $5471: $60
	ret nz                                           ; $5472: $c0

	ld h, e                                          ; $5473: $63
	add b                                            ; $5474: $80
	adc a                                            ; $5475: $8f
	inc hl                                           ; $5476: $23
	scf                                              ; $5477: $37
	cpl                                              ; $5478: $2f
	dec bc                                           ; $5479: $0b
	inc a                                            ; $547a: $3c
	ld a, a                                          ; $547b: $7f
	jr nc, jr_06b_54fd                               ; $547c: $30 $7f

	nop                                              ; $547e: $00
	dec sp                                           ; $547f: $3b
	rlca                                             ; $5480: $07
	dec c                                            ; $5481: $0d
	rra                                              ; $5482: $1f
	rlca                                             ; $5483: $07
	rrca                                             ; $5484: $0f
	dec c                                            ; $5485: $0d
	dec hl                                           ; $5486: $2b
	add b                                            ; $5487: $80
	sub a                                            ; $5488: $97
	db $ed                                           ; $5489: $ed
	rla                                              ; $548a: $17
	db $ec                                           ; $548b: $ec
	rst FarCall                                          ; $548c: $f7
	ld [hl], $8f                                     ; $548d: $36 $8f
	ld a, a                                          ; $548f: $7f
	dec c                                            ; $5490: $0d
	daa                                              ; $5491: $27
	add b                                            ; $5492: $80
	sub c                                            ; $5493: $91
	ld [hl], c                                       ; $5494: $71
	rst GetHLinHL                                          ; $5495: $cf
	adc $bf                                          ; $5496: $ce $bf
	cp a                                             ; $5498: $bf
	ld [hl], b                                       ; $5499: $70
	rst GetHLinHL                                          ; $549a: $cf
	ld bc, $07c7                                     ; $549b: $01 $c7 $07
	ld b, [hl]                                       ; $549e: $46
	adc [hl]                                         ; $549f: $8e
	db $fd                                           ; $54a0: $fd
	sbc e                                            ; $54a1: $9b
	ccf                                              ; $54a2: $3f
	add b                                            ; $54a3: $80
	sbc h                                            ; $54a4: $9c
	add sp, -$40                                     ; $54a5: $e8 $c0
	jr nz, jr_06b_5520                               ; $54a7: $20 $77

	nop                                              ; $54a9: $00

jr_06b_54aa:
	sbc h                                            ; $54aa: $9c

jr_06b_54ab:
	ldh [rOBP0], a                                   ; $54ab: $e0 $48
	ldh a, [$7a]                                     ; $54ad: $f0 $7a
	ld h, e                                          ; $54af: $63
	ld d, a                                          ; $54b0: $57
	add b                                            ; $54b1: $80
	rst SubAFromDE                                          ; $54b2: $df
	daa                                              ; $54b3: $27

jr_06b_54b4:
	sub d                                            ; $54b4: $92
	ccf                                              ; $54b5: $3f
	rra                                              ; $54b6: $1f
	jr c, @+$81                                      ; $54b7: $38 $7f

	jr nz, jr_06b_553a                               ; $54b9: $20 $7f

	rlca                                             ; $54bb: $07
	dec a                                            ; $54bc: $3d
	rrca                                             ; $54bd: $0f
	rrca                                             ; $54be: $0f
	dec e                                            ; $54bf: $1d
	inc de                                           ; $54c0: $13
	rlca                                             ; $54c1: $07
	daa                                              ; $54c2: $27
	add b                                            ; $54c3: $80
	sbc e                                            ; $54c4: $9b
	ld c, l                                          ; $54c5: $4d
	or a                                             ; $54c6: $b7
	db $fc                                           ; $54c7: $fc
	rst SubAFromBC                                          ; $54c8: $e7
	scf                                              ; $54c9: $37
	add b                                            ; $54ca: $80
	ei                                               ; $54cb: $fb
	ld a, [hl]                                       ; $54cc: $7e
	or c                                             ; $54cd: $b1
	adc a                                            ; $54ce: $8f
	and b                                            ; $54cf: $a0
	ret nz                                           ; $54d0: $c0

	add sp, -$10                                     ; $54d1: $e8 $f0
	dec a                                            ; $54d3: $3d
	cp $0f                                           ; $54d4: $fe $0f
	rst $38                                          ; $54d6: $ff
	ld b, $ff                                        ; $54d7: $06 $ff
	add e                                            ; $54d9: $83
	rst $38                                          ; $54da: $ff
	ld b, e                                          ; $54db: $43
	cp $21                                           ; $54dc: $fe $21

jr_06b_54de:
	rst $38                                          ; $54de: $ff
	ld [hl], a                                       ; $54df: $77
	cp $96                                           ; $54e0: $fe $96
	pop af                                           ; $54e2: $f1
	rst $38                                          ; $54e3: $ff
	or c                                             ; $54e4: $b1
	rst $38                                          ; $54e5: $ff
	jr z, jr_06b_5500                                ; $54e6: $28 $18

	ret c                                            ; $54e8: $d8

	ld b, b                                          ; $54e9: $40
	jr nc, jr_06b_54ab                               ; $54ea: $30 $bf

	stop                                             ; $54ec: $10 $00
	rst SubAFromDE                                          ; $54ee: $df
	ld bc, $03df                                     ; $54ef: $01 $df $03
	sub e                                            ; $54f2: $93
	rlca                                             ; $54f3: $07
	rst SubAFromBC                                          ; $54f4: $e7
	rst $38                                          ; $54f5: $ff
	ccf                                              ; $54f6: $3f
	rst $38                                          ; $54f7: $ff
	add $ff                                          ; $54f8: $c6 $ff
	cp $3f                                           ; $54fa: $fe $3f
	ld a, a                                          ; $54fc: $7f

jr_06b_54fd:
	add c                                            ; $54fd: $81
	rst $38                                          ; $54fe: $ff
	ld a, d                                          ; $54ff: $7a

jr_06b_5500:
	rrca                                             ; $5500: $0f

jr_06b_5501:
	ld a, [hl]                                       ; $5501: $7e
	ld a, [hl-]                                      ; $5502: $3a
	ld a, a                                          ; $5503: $7f
	cp $7f                                           ; $5504: $fe $7f
	ldh [$9d], a                                     ; $5506: $e0 $9d
	ld e, b                                          ; $5508: $58
	ret nc                                           ; $5509: $d0

	ld a, e                                          ; $550a: $7b

jr_06b_550b:
	rst SubAFromDE                                          ; $550b: $df
	inc hl                                           ; $550c: $23
	ldh [$7b], a                                     ; $550d: $e0 $7b
	rst SubAFromBC                                          ; $550f: $e7
	inc de                                           ; $5510: $13
	and b                                            ; $5511: $a0
	sbc b                                            ; $5512: $98
	inc l                                            ; $5513: $2c
	jr jr_06b_54de                                   ; $5514: $18 $c8

	ret c                                            ; $5516: $d8

	or b                                             ; $5517: $b0
	ld [hl], b                                       ; $5518: $70
	ld [hl], b                                       ; $5519: $70
	inc bc                                           ; $551a: $03
	ret nz                                           ; $551b: $c0

	daa                                              ; $551c: $27
	ret nz                                           ; $551d: $c0

	sub [hl]                                         ; $551e: $96
	inc a                                            ; $551f: $3c

jr_06b_5520:
	jr jr_06b_54aa                                   ; $5520: $18 $88

	ret c                                            ; $5522: $d8

	ldh a, [$78]                                     ; $5523: $f0 $78
	ld h, b                                          ; $5525: $60
	jr nc, jr_06b_5558                               ; $5526: $30 $30

	dec hl                                           ; $5528: $2b
	ret nz                                           ; $5529: $c0

	call $8001                                       ; $552a: $cd $01 $80
	rrca                                             ; $552d: $0f
	ld a, [$f21f]                                    ; $552e: $fa $1f $f2
	dec a                                            ; $5531: $3d
	ldh a, [$39]                                     ; $5532: $f0 $39
	ldh [rSVBK], a                                   ; $5534: $e0 $70
	jp $9fe7                                         ; $5536: $c3 $e7 $9f


jr_06b_5539:
	rst $38                                          ; $5539: $ff

jr_06b_553a:
	jr c, jr_06b_550b                                ; $553a: $38 $cf

	jr nz, jr_06b_5501                               ; $553c: $20 $c3

	rlca                                             ; $553e: $07
	ld c, [hl]                                       ; $553f: $4e
	add [hl]                                         ; $5540: $86
	db $fd                                           ; $5541: $fd
	sbc e                                            ; $5542: $9b
	jp $a081                                         ; $5543: $c3 $81 $a0


	ld b, b                                          ; $5546: $40
	ret nz                                           ; $5547: $c0

	jr nz, jr_06b_553a                               ; $5548: $20 $f0

	and b                                            ; $554a: $a0
	ldh a, [$80]                                     ; $554b: $f0 $80
	sub b                                            ; $554d: $90
	ldh a, [$f8]                                     ; $554e: $f0 $f8
	ld c, b                                          ; $5550: $48
	db $fc                                           ; $5551: $fc
	ld l, h                                          ; $5552: $6c
	or $f7                                           ; $5553: $f6 $f7
	ld a, e                                          ; $5555: $7b
	cp e                                             ; $5556: $bb
	ld a, l                                          ; $5557: $7d

jr_06b_5558:
	db $fd                                           ; $5558: $fd
	ld a, $94                                        ; $5559: $3e $94
	ccf                                              ; $555b: $3f
	ld [hl], $9b                                     ; $555c: $36 $9b
	res 3, l                                         ; $555e: $cb $9d
	sbc d                                            ; $5560: $9a
	call $ce65                                       ; $5561: $cd $65 $ce
	ld d, h                                          ; $5564: $54
	rst SubAFromBC                                          ; $5565: $e7
	xor d                                            ; $5566: $aa
	ld [hl], a                                       ; $5567: $77
	dec d                                            ; $5568: $15
	cp e                                             ; $5569: $bb
	adc e                                            ; $556a: $8b
	db $dd                                           ; $556b: $dd
	add l                                            ; $556c: $85
	call nc, $b0ef                                   ; $556d: $d4 $ef $b0
	ldh [$b0], a                                     ; $5570: $e0 $b0
	ldh [$f0], a                                     ; $5572: $e0 $f0
	ld h, b                                          ; $5574: $60
	ld hl, sp+$20                                    ; $5575: $f8 $20
	jr z, jr_06b_5539                                ; $5577: $28 $c0

	ldh [$e0], a                                     ; $5579: $e0 $e0
	ldh a, [rP1]                                     ; $557b: $f0 $00
	ld a, b                                          ; $557d: $78
	ldh [$c8], a                                     ; $557e: $e0 $c8
	ldh a, [$60]                                     ; $5580: $f0 $60
	ret nz                                           ; $5582: $c0

	add b                                            ; $5583: $80
	ret nz                                           ; $5584: $c0

	ld h, b                                          ; $5585: $60
	ret nz                                           ; $5586: $c0

	ld sp, hl                                        ; $5587: $f9
	adc h                                            ; $5588: $8c
	jr nc, jr_06b_55ae                               ; $5589: $30 $23

	inc sp                                           ; $558b: $33
	cpl                                              ; $558c: $2f
	rrca                                             ; $558d: $0f
	inc a                                            ; $558e: $3c
	ld a, a                                          ; $558f: $7f
	jr nc, jr_06b_560a                               ; $5590: $30 $78

	rlca                                             ; $5592: $07
	scf                                              ; $5593: $37
	rrca                                             ; $5594: $0f
	dec bc                                           ; $5595: $0b
	dec e                                            ; $5596: $1d
	rlca                                             ; $5597: $07
	rlca                                             ; $5598: $07
	dec c                                            ; $5599: $0d
	rlca                                             ; $559a: $07
	nop                                              ; $559b: $00
	cp [hl]                                          ; $559c: $be
	jr nz, jr_06b_560f                               ; $559d: $20 $70

	jr @-$7e                                         ; $559f: $18 $80

	jr nz, jr_06b_55bb                               ; $55a1: $20 $18

	jr nc, @+$32                                     ; $55a3: $30 $30

	jr nz, jr_06b_55a7                               ; $55a5: $20 $00

jr_06b_55a7:
	nop                                              ; $55a7: $00
	ld l, c                                          ; $55a8: $69
	rst SubAFromDE                                          ; $55a9: $df
	db $fd                                           ; $55aa: $fd
	rst GetHLinHL                                          ; $55ab: $cf
	or $0f                                           ; $55ac: $f6 $0f

jr_06b_55ae:
	rst $38                                          ; $55ae: $ff
	rlca                                             ; $55af: $07
	db $fd                                           ; $55b0: $fd
	rlca                                             ; $55b1: $07
	db $ec                                           ; $55b2: $ec
	rst FarCall                                          ; $55b3: $f7
	ld [hl], $8f                                     ; $55b4: $36 $8f
	ld a, a                                          ; $55b6: $7f
	dec c                                            ; $55b7: $0d

jr_06b_55b8:
	ld a, a                                          ; $55b8: $7f
	adc c                                            ; $55b9: $89
	rra                                              ; $55ba: $1f

jr_06b_55bb:
	add hl, bc                                       ; $55bb: $09
	ld a, $0b                                        ; $55bc: $3e $0b
	ccf                                              ; $55be: $3f
	dec bc                                           ; $55bf: $0b
	sbc d                                            ; $55c0: $9a
	inc a                                            ; $55c1: $3c
	rrca                                             ; $55c2: $0f
	ld l, d                                          ; $55c3: $6a
	rra                                              ; $55c4: $1f
	ld a, d                                          ; $55c5: $7a
	ld a, e                                          ; $55c6: $7b
	cp $82                                           ; $55c7: $fe $82
	db $db                                           ; $55c9: $db
	ccf                                              ; $55ca: $3f
	ei                                               ; $55cb: $fb
	ccf                                              ; $55cc: $3f
	rst $38                                          ; $55cd: $ff
	ld a, b                                          ; $55ce: $78
	ld a, a                                          ; $55cf: $7f
	ldh [rIE], a                                     ; $55d0: $e0 $ff
	ret nz                                           ; $55d2: $c0

	ld e, a                                          ; $55d3: $5f
	ldh [$2f], a                                     ; $55d4: $e0 $2f
	ldh a, [$1f]                                     ; $55d6: $f0 $1f
	ldh a, [$1f]                                     ; $55d8: $f0 $1f
	ld hl, sp+$0b                                    ; $55da: $f8 $0b
	db $fc                                           ; $55dc: $fc
	rlca                                             ; $55dd: $07
	db $fc                                           ; $55de: $fc
	inc bc                                           ; $55df: $03
	cp $01                                           ; $55e0: $fe $01
	rst $38                                          ; $55e2: $ff
	add c                                            ; $55e3: $81
	rst $38                                          ; $55e4: $ff
	add b                                            ; $55e5: $80
	ld a, e                                          ; $55e6: $7b
	db $fc                                           ; $55e7: $fc
	ld e, a                                          ; $55e8: $5f
	ld b, b                                          ; $55e9: $40
	sub e                                            ; $55ea: $93
	di                                               ; $55eb: $f3
	adc a                                            ; $55ec: $8f
	rst $38                                          ; $55ed: $ff
	inc a                                            ; $55ee: $3c
	rst GetHLinHL                                          ; $55ef: $cf
	jr nc, jr_06b_55b8                               ; $55f0: $30 $c6

	ld bc, $874b                                     ; $55f2: $01 $4b $87
	db $fd                                           ; $55f5: $fd
	sbc a                                            ; $55f6: $9f
	ld e, a                                          ; $55f7: $5f
	ld b, b                                          ; $55f8: $40
	ld c, a                                          ; $55f9: $4f
	ld h, b                                          ; $55fa: $60
	sbc c                                            ; $55fb: $99
	sbc b                                            ; $55fc: $98
	ld h, b                                          ; $55fd: $60
	add sp, -$10                                     ; $55fe: $e8 $f0
	ld b, b                                          ; $5600: $40
	ldh [rHDMA3], a                                  ; $5601: $e0 $53
	ld h, b                                          ; $5603: $60
	adc a                                            ; $5604: $8f
	jr nz, jr_06b_5638                               ; $5605: $20 $31

	cpl                                              ; $5607: $2f
	ld c, $3f                                        ; $5608: $0e $3f

jr_06b_560a:
	ld a, a                                          ; $560a: $7f
	jr nc, jr_06b_568c                               ; $560b: $30 $7f

	nop                                              ; $560d: $00
	inc a                                            ; $560e: $3c

jr_06b_560f:
	inc bc                                           ; $560f: $03
	dec bc                                           ; $5610: $0b
	rra                                              ; $5611: $1f
	rlca                                             ; $5612: $07
	rrca                                             ; $5613: $0f
	ld a, [bc]                                       ; $5614: $0a
	ld c, e                                          ; $5615: $4b
	ld h, b                                          ; $5616: $60
	sub l                                            ; $5617: $95
	jp hl                                            ; $5618: $e9


	ld e, a                                          ; $5619: $5f
	db $fd                                           ; $561a: $fd
	rst GetHLinHL                                          ; $561b: $cf
	halt                                             ; $561c: $76

jr_06b_561d:
	adc a                                            ; $561d: $8f
	rst $38                                          ; $561e: $ff
	rlca                                             ; $561f: $07
	db $ed                                           ; $5620: $ed
	rla                                              ; $5621: $17
	cpl                                              ; $5622: $2f
	ld h, b                                          ; $5623: $60
	ld b, a                                          ; $5624: $47
	add b                                            ; $5625: $80
	sub a                                            ; $5626: $97
	rst JumpTable                                          ; $5627: $c7
	nop                                              ; $5628: $00
	ld c, [hl]                                       ; $5629: $4e
	add c                                            ; $562a: $81
	rst AddAOntoHL                                          ; $562b: $ef
	sbc a                                            ; $562c: $9f
	pop bc                                           ; $562d: $c1
	add e                                            ; $562e: $83
	ld b, a                                          ; $562f: $47
	add b                                            ; $5630: $80
	sub b                                            ; $5631: $90
	ld l, b                                          ; $5632: $68
	add b                                            ; $5633: $80
	ldh [$e0], a                                     ; $5634: $e0 $e0
	sub b                                            ; $5636: $90
	ld h, b                                          ; $5637: $60

jr_06b_5638:
	ld hl, sp+$00                                    ; $5638: $f8 $00
	ret z                                            ; $563a: $c8

	jr nc, jr_06b_561d                               ; $563b: $30 $e0

	ldh a, [$80]                                     ; $563d: $f0 $80
	ret nz                                           ; $563f: $c0

	and b                                            ; $5640: $a0
	ld d, a                                          ; $5641: $57
	add b                                            ; $5642: $80
	sub h                                            ; $5643: $94
	daa                                              ; $5644: $27
	ld h, $1f                                        ; $5645: $26 $1f
	ld a, a                                          ; $5647: $7f
	jr c, jr_06b_56a9                                ; $5648: $38 $5f

	jr nz, jr_06b_568b                               ; $564a: $20 $3f

	nop                                              ; $564c: $00
	jr @+$09                                         ; $564d: $18 $07

	rra                                              ; $564f: $1f
	add b                                            ; $5650: $80
	ld a, [hl]                                       ; $5651: $7e
	ldh [$99], a                                     ; $5652: $e0 $99
	call c, $f627                                    ; $5654: $dc $27 $f6
	rst AddAOntoHL                                          ; $5657: $ef
	ld a, a                                          ; $5658: $7f
	call $8027                                       ; $5659: $cd $27 $80
	sbc c                                            ; $565c: $99
	ld [hl], c                                       ; $565d: $71
	ret nz                                           ; $565e: $c0

	di                                               ; $565f: $f3
	adc a                                            ; $5660: $8f
	db $fc                                           ; $5661: $fc
	ccf                                              ; $5662: $3f
	ld [hl], a                                       ; $5663: $77
	add b                                            ; $5664: $80
	sbc c                                            ; $5665: $99
	ld c, a                                          ; $5666: $4f
	add b                                            ; $5667: $80
	db $ec                                           ; $5668: $ec
	sbc a                                            ; $5669: $9f
	rst JumpTable                                          ; $566a: $c7
	add a                                            ; $566b: $87
	ld b, a                                          ; $566c: $47
	add b                                            ; $566d: $80
	sbc b                                            ; $566e: $98
	add sp, $00                                      ; $566f: $e8 $00
	ldh [$e0], a                                     ; $5671: $e0 $e0
	db $10                                           ; $5673: $10
	ldh [$f8], a                                     ; $5674: $e0 $f8
	cp a                                             ; $5676: $bf
	ld hl, sp-$40                                    ; $5677: $f8 $c0
	ld a, a                                          ; $5679: $7f
	ld a, [hl]                                       ; $567a: $7e
	sbc h                                            ; $567b: $9c
	ldh [$c0], a                                     ; $567c: $e0 $c0
	add b                                            ; $567e: $80
	ld e, a                                          ; $567f: $5f
	add b                                            ; $5680: $80
	ld a, [hl]                                       ; $5681: $7e
	ld e, [hl]                                       ; $5682: $5e

jr_06b_5683:
	sbc e                                            ; $5683: $9b
	daa                                              ; $5684: $27
	rra                                              ; $5685: $1f
	ld a, e                                          ; $5686: $7b
	inc a                                            ; $5687: $3c
	ld [hl], a                                       ; $5688: $77
	add b                                            ; $5689: $80
	sbc d                                            ; $568a: $9a

jr_06b_568b:
	rra                                              ; $568b: $1f

jr_06b_568c:
	nop                                              ; $568c: $00
	ld b, $0f                                        ; $568d: $06 $0f
	dec bc                                           ; $568f: $0b
	ld b, e                                          ; $5690: $43
	add b                                            ; $5691: $80
	sbc e                                            ; $5692: $9b
	ld a, l                                          ; $5693: $7d
	rst GetHLinHL                                          ; $5694: $cf
	or [hl]                                          ; $5695: $b6
	rst GetHLinHL                                          ; $5696: $cf
	ld [hl], a                                       ; $5697: $77
	add b                                            ; $5698: $80
	ld a, [hl]                                       ; $5699: $7e
	adc c                                            ; $569a: $89
	sbc d                                            ; $569b: $9a
	or [hl]                                          ; $569c: $b6
	ld l, a                                          ; $569d: $6f
	rst SubAFromDE                                          ; $569e: $df
	db $ed                                           ; $569f: $ed
	rst $38                                          ; $56a0: $ff
	ld c, e                                          ; $56a1: $4b
	add b                                            ; $56a2: $80
	ei                                               ; $56a3: $fb
	ld a, a                                          ; $56a4: $7f
	or c                                             ; $56a5: $b1
	ld a, a                                          ; $56a6: $7f
	ld l, $7e                                        ; $56a7: $2e $7e

jr_06b_56a9:
	and [hl]                                         ; $56a9: $a6
	sub e                                            ; $56aa: $93
	dec a                                            ; $56ab: $3d
	cp $0f                                           ; $56ac: $fe $0f
	rst $38                                          ; $56ae: $ff
	ld b, $ff                                        ; $56af: $06 $ff
	add e                                            ; $56b1: $83
	rst $38                                          ; $56b2: $ff
	ld b, e                                          ; $56b3: $43
	cp $21                                           ; $56b4: $fe $21
	rst $38                                          ; $56b6: $ff
	ld [hl], a                                       ; $56b7: $77
	cp $96                                           ; $56b8: $fe $96
	pop af                                           ; $56ba: $f1
	rst $38                                          ; $56bb: $ff
	or c                                             ; $56bc: $b1
	rst $38                                          ; $56bd: $ff
	jr z, jr_06b_56d8                                ; $56be: $28 $18

	ret z                                            ; $56c0: $c8

	ld h, b                                          ; $56c1: $60
	jr nc, jr_06b_5683                               ; $56c2: $30 $bf

	stop                                             ; $56c4: $10 $00
	rst SubAFromDE                                          ; $56c6: $df
	ld bc, $03df                                     ; $56c7: $01 $df $03
	sub e                                            ; $56ca: $93
	rlca                                             ; $56cb: $07
	rst SubAFromBC                                          ; $56cc: $e7
	rst $38                                          ; $56cd: $ff
	ccf                                              ; $56ce: $3f
	rst $38                                          ; $56cf: $ff
	add $ff                                          ; $56d0: $c6 $ff
	cp $3f                                           ; $56d2: $fe $3f
	ld a, a                                          ; $56d4: $7f
	add c                                            ; $56d5: $81
	rst $38                                          ; $56d6: $ff
	ld a, e                                          ; $56d7: $7b

jr_06b_56d8:
	xor a                                            ; $56d8: $af
	ld a, [hl]                                       ; $56d9: $7e
	ld a, [hl-]                                      ; $56da: $3a
	ld a, a                                          ; $56db: $7f
	cp $7f                                           ; $56dc: $fe $7f
	ldh [$9d], a                                     ; $56de: $e0 $9d
	add sp, $70                                      ; $56e0: $e8 $70
	ld a, e                                          ; $56e2: $7b
	ld a, d                                          ; $56e3: $7a
	dec de                                           ; $56e4: $1b
	ldh [$9b], a                                     ; $56e5: $e0 $9b
	ldh a, [$78]                                     ; $56e7: $f0 $78
	ld b, b                                          ; $56e9: $40
	jr nc, jr_06b_5703                               ; $56ea: $30 $17

	ret nz                                           ; $56ec: $c0

	sbc h                                            ; $56ed: $9c
	ld hl, sp+$78                                    ; $56ee: $f8 $78
	ld a, b                                          ; $56f0: $78
	ld a, e                                          ; $56f1: $7b
	sbc a                                            ; $56f2: $9f
	sbc [hl]                                         ; $56f3: $9e
	jr nc, @+$2d                                     ; $56f4: $30 $2b

	ldh [$be], a                                     ; $56f6: $e0 $be
	ld bc, $0f80                                     ; $56f8: $01 $80 $0f
	ld a, [$f21f]                                    ; $56fb: $fa $1f $f2
	dec a                                            ; $56fe: $3d
	ldh a, [$39]                                     ; $56ff: $f0 $39
	ldh [$71], a                                     ; $5701: $e0 $71

jr_06b_5703:
	ret nz                                           ; $5703: $c0

	pop hl                                           ; $5704: $e1
	sbc a                                            ; $5705: $9f

jr_06b_5706:
	cp [hl]                                          ; $5706: $be

jr_06b_5707:
	ld a, a                                          ; $5707: $7f
	rst AddAOntoHL                                          ; $5708: $ef
	nop                                              ; $5709: $00
	jp Jump_06b_4607                                 ; $570a: $c3 $07 $46


	adc [hl]                                         ; $570d: $8e
	db $fd                                           ; $570e: $fd
	sbc e                                            ; $570f: $9b
	jp $a081                                         ; $5710: $c3 $81 $a0


	ld b, b                                          ; $5713: $40
	ret nz                                           ; $5714: $c0

	jr nz, jr_06b_5707                               ; $5715: $20 $f0

	and b                                            ; $5717: $a0
	ldh a, [$80]                                     ; $5718: $f0 $80
	sub b                                            ; $571a: $90
	ldh a, [$f8]                                     ; $571b: $f0 $f8
	ld c, b                                          ; $571d: $48
	db $fc                                           ; $571e: $fc
	ld l, h                                          ; $571f: $6c
	or $f7                                           ; $5720: $f6 $f7
	ld a, e                                          ; $5722: $7b
	cp e                                             ; $5723: $bb
	ld a, l                                          ; $5724: $7d
	db $fd                                           ; $5725: $fd
	ld a, $94                                        ; $5726: $3e $94
	ccf                                              ; $5728: $3f
	ld [hl], $9b                                     ; $5729: $36 $9b
	res 3, l                                         ; $572b: $cb $9d
	sbc d                                            ; $572d: $9a
	call $ce65                                       ; $572e: $cd $65 $ce
	ld d, h                                          ; $5731: $54
	rst SubAFromBC                                          ; $5732: $e7
	xor d                                            ; $5733: $aa
	ld [hl], a                                       ; $5734: $77
	dec d                                            ; $5735: $15
	cp e                                             ; $5736: $bb
	adc e                                            ; $5737: $8b
	db $dd                                           ; $5738: $dd
	add l                                            ; $5739: $85
	call nc, $b0ef                                   ; $573a: $d4 $ef $b0
	ldh [$b0], a                                     ; $573d: $e0 $b0
	ldh [$f0], a                                     ; $573f: $e0 $f0
	ld h, b                                          ; $5741: $60
	ld hl, sp+$20                                    ; $5742: $f8 $20
	jr z, jr_06b_5706                                ; $5744: $28 $c0

	ldh [$e0], a                                     ; $5746: $e0 $e0
	ldh a, [rP1]                                     ; $5748: $f0 $00
	jr @-$1e                                         ; $574a: $18 $e0

	add sp, -$10                                     ; $574c: $e8 $f0
	ld h, b                                          ; $574e: $60
	ret nz                                           ; $574f: $c0

	add b                                            ; $5750: $80
	ret nz                                           ; $5751: $c0

	ld h, b                                          ; $5752: $60
	ret nz                                           ; $5753: $c0

	ld sp, hl                                        ; $5754: $f9
	add b                                            ; $5755: $80
	jr nc, jr_06b_5778                               ; $5756: $30 $20

	ld sp, $0e27                                     ; $5758: $31 $27 $0e
	ccf                                              ; $575b: $3f
	ld [hl], a                                       ; $575c: $77
	jr c, jr_06b_57de                                ; $575d: $38 $7f

	nop                                              ; $575f: $00
	scf                                              ; $5760: $37
	rrca                                             ; $5761: $0f
	rrca                                             ; $5762: $0f
	dec e                                            ; $5763: $1d
	rlca                                             ; $5764: $07
	rlca                                             ; $5765: $07
	dec c                                            ; $5766: $0d
	rlca                                             ; $5767: $07
	nop                                              ; $5768: $00
	nop                                              ; $5769: $00
	jr nz, jr_06b_576c                               ; $576a: $20 $00

jr_06b_576c:
	ld [hl], b                                       ; $576c: $70
	nop                                              ; $576d: $00
	jr jr_06b_5790                                   ; $576e: $18 $20

	jr jr_06b_57a2                                   ; $5770: $18 $30

	jr nc, jr_06b_5794                               ; $5772: $30 $20

	nop                                              ; $5774: $00
	add c                                            ; $5775: $81
	nop                                              ; $5776: $00
	ld l, c                                          ; $5777: $69

jr_06b_5778:
	rst SubAFromDE                                          ; $5778: $df
	db $fd                                           ; $5779: $fd
	rst GetHLinHL                                          ; $577a: $cf
	or $0f                                           ; $577b: $f6 $0f
	rst $38                                          ; $577d: $ff
	rlca                                             ; $577e: $07
	db $fd                                           ; $577f: $fd
	rlca                                             ; $5780: $07
	db $ec                                           ; $5781: $ec
	rst FarCall                                          ; $5782: $f7
	ld d, $af                                        ; $5783: $16 $af
	ld a, a                                          ; $5785: $7f
	dec c                                            ; $5786: $0d
	ld a, a                                          ; $5787: $7f
	adc c                                            ; $5788: $89
	rra                                              ; $5789: $1f
	add hl, bc                                       ; $578a: $09
	ld a, $0b                                        ; $578b: $3e $0b
	ccf                                              ; $578d: $3f
	dec bc                                           ; $578e: $0b
	inc a                                            ; $578f: $3c

jr_06b_5790:
	rrca                                             ; $5790: $0f
	ld l, d                                          ; $5791: $6a
	rra                                              ; $5792: $1f
	ld a, d                                          ; $5793: $7a

jr_06b_5794:
	ld a, e                                          ; $5794: $7b
	cp $82                                           ; $5795: $fe $82
	db $db                                           ; $5797: $db
	ccf                                              ; $5798: $3f
	ei                                               ; $5799: $fb
	ccf                                              ; $579a: $3f
	rst $38                                          ; $579b: $ff
	ld a, b                                          ; $579c: $78
	ld a, a                                          ; $579d: $7f
	ldh [rIE], a                                     ; $579e: $e0 $ff
	ret nz                                           ; $57a0: $c0

	ld e, a                                          ; $57a1: $5f

jr_06b_57a2:
	ldh [$2f], a                                     ; $57a2: $e0 $2f
	ldh a, [$1f]                                     ; $57a4: $f0 $1f
	ldh a, [$1f]                                     ; $57a6: $f0 $1f
	ld hl, sp+$0b                                    ; $57a8: $f8 $0b
	db $fc                                           ; $57aa: $fc
	rlca                                             ; $57ab: $07
	db $fc                                           ; $57ac: $fc
	inc bc                                           ; $57ad: $03
	cp $01                                           ; $57ae: $fe $01
	rst $38                                          ; $57b0: $ff
	add c                                            ; $57b1: $81
	rst $38                                          ; $57b2: $ff
	add b                                            ; $57b3: $80
	ld a, e                                          ; $57b4: $7b
	db $fc                                           ; $57b5: $fc
	ld b, a                                          ; $57b6: $47
	ld b, b                                          ; $57b7: $40
	sbc c                                            ; $57b8: $99
	add $01                                          ; $57b9: $c6 $01
	ld c, e                                          ; $57bb: $4b
	add a                                            ; $57bc: $87
	db $fd                                           ; $57bd: $fd
	sbc a                                            ; $57be: $9f
	ld e, a                                          ; $57bf: $5f
	ld b, b                                          ; $57c0: $40
	ld h, a                                          ; $57c1: $67
	ld h, b                                          ; $57c2: $60
	sub e                                            ; $57c3: $93
	add sp, $00                                      ; $57c4: $e8 $00
	ldh [$e0], a                                     ; $57c6: $e0 $e0
	db $10                                           ; $57c8: $10
	ldh [$98], a                                     ; $57c9: $e0 $98
	ld h, b                                          ; $57cb: $60
	add sp, -$10                                     ; $57cc: $e8 $f0
	ld b, b                                          ; $57ce: $40
	ldh [rBGP], a                                    ; $57cf: $e0 $47
	ld h, b                                          ; $57d1: $60
	sub d                                            ; $57d2: $92
	ld h, $1f                                        ; $57d3: $26 $1f
	ld e, a                                          ; $57d5: $5f
	jr c, jr_06b_5857                                ; $57d6: $38 $7f

	jr nz, jr_06b_5816                               ; $57d8: $20 $3c

	inc bc                                           ; $57da: $03
	dec d                                            ; $57db: $15
	rrca                                             ; $57dc: $0f
	rlca                                             ; $57dd: $07

jr_06b_57de:
	rrca                                             ; $57de: $0f
	ld a, [bc]                                       ; $57df: $0a
	inc hl                                           ; $57e0: $23
	ld h, b                                          ; $57e1: $60

jr_06b_57e2:
	ld a, a                                          ; $57e2: $7f
	adc c                                            ; $57e3: $89
	sbc l                                            ; $57e4: $9d
	and $ff                                          ; $57e5: $e6 $ff
	ccf                                              ; $57e7: $3f
	ld h, b                                          ; $57e8: $60
	ld e, a                                          ; $57e9: $5f
	add b                                            ; $57ea: $80
	sub c                                            ; $57eb: $91
	pop af                                           ; $57ec: $f1
	adc a                                            ; $57ed: $8f
	adc $3f                                          ; $57ee: $ce $3f
	rst $38                                          ; $57f0: $ff
	jr nc, @-$37                                     ; $57f1: $30 $c7

	nop                                              ; $57f3: $00
	ld c, [hl]                                       ; $57f4: $4e

jr_06b_57f5:
	add c                                            ; $57f5: $81
	rst AddAOntoHL                                          ; $57f6: $ef
	sbc a                                            ; $57f7: $9f
	pop bc                                           ; $57f8: $c1
	add e                                            ; $57f9: $83
	cpl                                              ; $57fa: $2f
	add b                                            ; $57fb: $80
	sub l                                            ; $57fc: $95
	ld hl, sp+$00                                    ; $57fd: $f8 $00
	ret z                                            ; $57ff: $c8

	jr nc, jr_06b_57e2                               ; $5800: $30 $e0

	ldh a, [$80]                                     ; $5802: $f0 $80
	ret nz                                           ; $5804: $c0

	ldh [$80], a                                     ; $5805: $e0 $80
	ld e, a                                          ; $5807: $5f
	add b                                            ; $5808: $80
	sbc h                                            ; $5809: $9c
	jr nc, jr_06b_582f                               ; $580a: $30 $23

	daa                                              ; $580c: $27
	ld [hl], e                                       ; $580d: $73
	add b                                            ; $580e: $80
	sbc e                                            ; $580f: $9b
	ccf                                              ; $5810: $3f
	nop                                              ; $5811: $00
	dec de                                           ; $5812: $1b
	rlca                                             ; $5813: $07
	ccf                                              ; $5814: $3f
	add b                                            ; $5815: $80

jr_06b_5816:
	sbc c                                            ; $5816: $99
	jp hl                                            ; $5817: $e9


	ld e, a                                          ; $5818: $5f
	db $fd                                           ; $5819: $fd
	rst GetHLinHL                                          ; $581a: $cf
	ld [hl], $cf                                     ; $581b: $36 $cf
	ld l, a                                          ; $581d: $6f
	add b                                            ; $581e: $80
	sbc e                                            ; $581f: $9b
	ld [hl], $ef                                     ; $5820: $36 $ef
	rst $38                                          ; $5822: $ff

jr_06b_5823:
	call $801f                                       ; $5823: $cd $1f $80
	sub c                                            ; $5826: $91
	ld hl, sp-$79                                    ; $5827: $f8 $87
	rst GetHLinHL                                          ; $5829: $cf
	ccf                                              ; $582a: $3f
	rst FarCall                                          ; $582b: $f7
	jr c, jr_06b_57f5                                ; $582c: $38 $c7

	nop                                              ; $582e: $00

jr_06b_582f:
	ld c, a                                          ; $582f: $4f
	add b                                            ; $5830: $80
	db $ec                                           ; $5831: $ec
	sbc a                                            ; $5832: $9f
	rst JumpTable                                          ; $5833: $c7
	add a                                            ; $5834: $87
	ccf                                              ; $5835: $3f
	add b                                            ; $5836: $80
	sbc h                                            ; $5837: $9c
	ld h, b                                          ; $5838: $60
	ldh [hDisp1_SCY], a                                     ; $5839: $e0 $90
	ld a, e                                          ; $583b: $7b
	add b                                            ; $583c: $80
	ld a, a                                          ; $583d: $7f
	cp $9a                                           ; $583e: $fe $9a
	ret nz                                           ; $5840: $c0

	jr nc, jr_06b_5823                               ; $5841: $30 $e0

	ldh [$c0], a                                     ; $5843: $e0 $c0
	ld d, a                                          ; $5845: $57
	add b                                            ; $5846: $80
	sub c                                            ; $5847: $91
	ld hl, $0f33                                     ; $5848: $21 $33 $0f
	ld c, a                                          ; $584b: $4f
	inc a                                            ; $584c: $3c
	ld a, a                                          ; $584d: $7f
	jr nc, jr_06b_588f                               ; $584e: $30 $3f

	nop                                              ; $5850: $00
	rra                                              ; $5851: $1f
	nop                                              ; $5852: $00
	ld b, $0f                                        ; $5853: $06 $0f
	dec bc                                           ; $5855: $0b
	dec de                                           ; $5856: $1b

jr_06b_5857:
	add b                                            ; $5857: $80
	sbc d                                            ; $5858: $9a
	or [hl]                                          ; $5859: $b6
	ld l, a                                          ; $585a: $6f
	rst SubAFromDE                                          ; $585b: $df
	db $ed                                           ; $585c: $ed
	rst $38                                          ; $585d: $ff
	ld c, e                                          ; $585e: $4b
	add b                                            ; $585f: $80
	ei                                               ; $5860: $fb
	ld a, a                                          ; $5861: $7f
	or c                                             ; $5862: $b1
	adc a                                            ; $5863: $8f
	and b                                            ; $5864: $a0
	ret nz                                           ; $5865: $c0

	add sp, -$10                                     ; $5866: $e8 $f0
	dec a                                            ; $5868: $3d
	cp $0f                                           ; $5869: $fe $0f
	rst $38                                          ; $586b: $ff
	ld b, $ff                                        ; $586c: $06 $ff
	add e                                            ; $586e: $83
	rst $38                                          ; $586f: $ff
	ld b, e                                          ; $5870: $43
	cp $21                                           ; $5871: $fe $21
	rst $38                                          ; $5873: $ff
	ld [hl], a                                       ; $5874: $77
	cp $82                                           ; $5875: $fe $82
	pop af                                           ; $5877: $f1
	rst $38                                          ; $5878: $ff
	or c                                             ; $5879: $b1
	rst $38                                          ; $587a: $ff
	jr z, jr_06b_5895                                ; $587b: $28 $18

	ld c, b                                          ; $587d: $48
	ld h, b                                          ; $587e: $60
	stop                                             ; $587f: $10 $00
	stop                                             ; $5881: $10 $00
	nop                                              ; $5883: $00
	ld bc, $0301                                     ; $5884: $01 $01 $03
	inc bc                                           ; $5887: $03
	rlca                                             ; $5888: $07
	rst SubAFromBC                                          ; $5889: $e7
	rst $38                                          ; $588a: $ff
	ccf                                              ; $588b: $3f
	rst $38                                          ; $588c: $ff
	add $ff                                          ; $588d: $c6 $ff

jr_06b_588f:
	cp $3f                                           ; $588f: $fe $3f
	ld a, a                                          ; $5891: $7f
	add c                                            ; $5892: $81
	rst $38                                          ; $5893: $ff
	ld a, e                                          ; $5894: $7b

jr_06b_5895:
	xor a                                            ; $5895: $af
	ld a, [hl]                                       ; $5896: $7e
	ld a, [hl-]                                      ; $5897: $3a
	ld a, a                                          ; $5898: $7f
	cp $7b                                           ; $5899: $fe $7b
	ldh [$9b], a                                     ; $589b: $e0 $9b
	ld [hl], b                                       ; $589d: $70
	jr nz, jr_06b_58a0                               ; $589e: $20 $00

jr_06b_58a0:
	jr nc, jr_06b_58c1                               ; $58a0: $30 $1f

	ldh [$9a], a                                     ; $58a2: $e0 $9a
	db $10                                           ; $58a4: $10
	ld [hl], b                                       ; $58a5: $70
	ld a, b                                          ; $58a6: $78
	ld b, b                                          ; $58a7: $40
	jr nc, jr_06b_58c1                               ; $58a8: $30 $17

	ldh [$df], a                                     ; $58aa: $e0 $df
	ld a, b                                          ; $58ac: $78
	sbc d                                            ; $58ad: $9a
	jr nc, jr_06b_5928                               ; $58ae: $30 $78

	nop                                              ; $58b0: $00
	jr nc, jr_06b_58e3                               ; $58b1: $30 $30

	dec hl                                           ; $58b3: $2b
	ldh [$c5], a                                     ; $58b4: $e0 $c5
	ld bc, $0f80                                     ; $58b6: $01 $80 $0f
	ld a, [$f21f]                                    ; $58b9: $fa $1f $f2
	dec a                                            ; $58bc: $3d
	ldh a, [rAUD4ENV]                                ; $58bd: $f0 $21
	ld hl, sp+$79                                    ; $58bf: $f8 $79

jr_06b_58c1:
	sbc $ff                                          ; $58c1: $de $ff
	add a                                            ; $58c3: $87
	xor $01                                          ; $58c4: $ee $01
	rst JumpTable                                          ; $58c6: $c7
	nop                                              ; $58c7: $00
	push bc                                          ; $58c8: $c5
	inc bc                                           ; $58c9: $03
	ld c, [hl]                                       ; $58ca: $4e
	add [hl]                                         ; $58cb: $86
	db $fd                                           ; $58cc: $fd
	sbc a                                            ; $58cd: $9f
	jp nz, $a081                                     ; $58ce: $c2 $81 $a0

	ld b, b                                          ; $58d1: $40
	ret nz                                           ; $58d2: $c0

	jr nz, @-$0e                                     ; $58d3: $20 $f0

	and b                                            ; $58d5: $a0
	ldh a, [$80]                                     ; $58d6: $f0 $80
	sub b                                            ; $58d8: $90
	ldh a, [$f8]                                     ; $58d9: $f0 $f8
	ld c, b                                          ; $58db: $48
	db $fc                                           ; $58dc: $fc
	ld l, h                                          ; $58dd: $6c
	or $f7                                           ; $58de: $f6 $f7
	ld a, e                                          ; $58e0: $7b
	cp e                                             ; $58e1: $bb
	ld a, l                                          ; $58e2: $7d

jr_06b_58e3:
	db $fd                                           ; $58e3: $fd
	ld a, $94                                        ; $58e4: $3e $94
	ccf                                              ; $58e6: $3f
	ld [hl], $9b                                     ; $58e7: $36 $9b
	res 3, l                                         ; $58e9: $cb $9d
	sbc d                                            ; $58eb: $9a
	call $ce65                                       ; $58ec: $cd $65 $ce
	ld d, h                                          ; $58ef: $54
	rst SubAFromBC                                          ; $58f0: $e7
	xor d                                            ; $58f1: $aa
	ld [hl], a                                       ; $58f2: $77
	dec d                                            ; $58f3: $15
	cp e                                             ; $58f4: $bb
	adc e                                            ; $58f5: $8b
	db $dd                                           ; $58f6: $dd
	add l                                            ; $58f7: $85
	call nc, $b0ef                                   ; $58f8: $d4 $ef $b0
	ldh [$b0], a                                     ; $58fb: $e0 $b0
	ldh [$f0], a                                     ; $58fd: $e0 $f0
	ld h, b                                          ; $58ff: $60
	ld hl, sp+$20                                    ; $5900: $f8 $20
	add sp, $00                                      ; $5902: $e8 $00
	ld h, b                                          ; $5904: $60
	add b                                            ; $5905: $80
	ldh [$f0], a                                     ; $5906: $e0 $f0
	jr @-$1e                                         ; $5908: $18 $e0

	add sp, -$10                                     ; $590a: $e8 $f0
	ld h, b                                          ; $590c: $60
	ret nz                                           ; $590d: $c0

	add b                                            ; $590e: $80
	ret nz                                           ; $590f: $c0

	ld h, b                                          ; $5910: $60
	ret nz                                           ; $5911: $c0

	ld sp, hl                                        ; $5912: $f9
	add b                                            ; $5913: $80
	jr nc, jr_06b_5937                               ; $5914: $30 $21

	ld sp, $3323                                     ; $5916: $31 $23 $33
	ld b, $67                                        ; $5919: $06 $67
	inc e                                            ; $591b: $1c
	ld a, e                                          ; $591c: $7b
	inc a                                            ; $591d: $3c
	scf                                              ; $591e: $37
	rrca                                             ; $591f: $0f
	rrca                                             ; $5920: $0f
	dec e                                            ; $5921: $1d
	rlca                                             ; $5922: $07
	rlca                                             ; $5923: $07
	dec c                                            ; $5924: $0d
	rlca                                             ; $5925: $07
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00

jr_06b_5928:
	jr nz, jr_06b_592a                               ; $5928: $20 $00

jr_06b_592a:
	ld [hl], b                                       ; $592a: $70
	nop                                              ; $592b: $00
	jr jr_06b_594e                                   ; $592c: $18 $20

	jr jr_06b_5960                                   ; $592e: $18 $30

	jr nc, jr_06b_5952                               ; $5930: $30 $20

	nop                                              ; $5932: $00
	add c                                            ; $5933: $81
	nop                                              ; $5934: $00
	ld l, c                                          ; $5935: $69
	rst SubAFromDE                                          ; $5936: $df

jr_06b_5937:
	db $fd                                           ; $5937: $fd
	rrca                                             ; $5938: $0f
	or $0f                                           ; $5939: $f6 $0f
	rst $38                                          ; $593b: $ff
	rlca                                             ; $593c: $07
	db $fd                                           ; $593d: $fd
	rlca                                             ; $593e: $07
	db $ec                                           ; $593f: $ec

Jump_06b_5940:
	rst FarCall                                          ; $5940: $f7
	ld [hl], $8f                                     ; $5941: $36 $8f
	ld a, a                                          ; $5943: $7f
	dec c                                            ; $5944: $0d
	ld a, a                                          ; $5945: $7f
	adc c                                            ; $5946: $89
	rra                                              ; $5947: $1f
	add hl, bc                                       ; $5948: $09
	ld a, $0b                                        ; $5949: $3e $0b
	ccf                                              ; $594b: $3f
	dec bc                                           ; $594c: $0b
	inc a                                            ; $594d: $3c

jr_06b_594e:
	rrca                                             ; $594e: $0f
	ld l, d                                          ; $594f: $6a
	rra                                              ; $5950: $1f
	ld a, d                                          ; $5951: $7a

jr_06b_5952:
	ld a, e                                          ; $5952: $7b
	cp $82                                           ; $5953: $fe $82
	db $db                                           ; $5955: $db
	ccf                                              ; $5956: $3f
	ei                                               ; $5957: $fb
	ccf                                              ; $5958: $3f
	rst $38                                          ; $5959: $ff
	ld a, b                                          ; $595a: $78
	ld a, a                                          ; $595b: $7f
	ldh [rIE], a                                     ; $595c: $e0 $ff
	ret nz                                           ; $595e: $c0

	ld e, a                                          ; $595f: $5f

jr_06b_5960:
	ldh [$2f], a                                     ; $5960: $e0 $2f
	ldh a, [$1f]                                     ; $5962: $f0 $1f
	ldh a, [$1f]                                     ; $5964: $f0 $1f
	ld hl, sp+$0b                                    ; $5966: $f8 $0b
	db $fc                                           ; $5968: $fc
	rlca                                             ; $5969: $07
	db $fc                                           ; $596a: $fc
	inc bc                                           ; $596b: $03
	cp $01                                           ; $596c: $fe $01
	rst $38                                          ; $596e: $ff
	add c                                            ; $596f: $81
	rst $38                                          ; $5970: $ff
	add b                                            ; $5971: $80
	ld a, e                                          ; $5972: $7b
	db $fc                                           ; $5973: $fc
	ld b, a                                          ; $5974: $47
	ld b, b                                          ; $5975: $40
	sbc e                                            ; $5976: $9b
	add $01                                          ; $5977: $c6 $01
	ld b, e                                          ; $5979: $43
	adc a                                            ; $597a: $8f
	ld d, a                                          ; $597b: $57
	ld b, b                                          ; $597c: $40
	ld d, a                                          ; $597d: $57
	ld h, b                                          ; $597e: $60
	sub a                                            ; $597f: $97
	ret nc                                           ; $5980: $d0

	ldh [$a8], a                                     ; $5981: $e0 $a8
	ld [hl], b                                       ; $5983: $70
	add sp, -$10                                     ; $5984: $e8 $f0
	ld b, b                                          ; $5986: $40
	ldh [rBGP], a                                    ; $5987: $e0 $47
	ld h, b                                          ; $5989: $60
	sub d                                            ; $598a: $92
	scf                                              ; $598b: $37
	ld [bc], a                                       ; $598c: $02
	ld [hl], e                                       ; $598d: $73
	ld c, $6f                                        ; $598e: $0e $6f
	inc e                                            ; $5990: $1c
	rra                                              ; $5991: $1f
	jr c, jr_06b_59a1                                ; $5992: $38 $0d

	rra                                              ; $5994: $1f
	rlca                                             ; $5995: $07
	rrca                                             ; $5996: $0f
	ld a, [bc]                                       ; $5997: $0a
	inc hl                                           ; $5998: $23
	ld h, b                                          ; $5999: $60
	ld a, a                                          ; $599a: $7f
	adc c                                            ; $599b: $89
	sbc l                                            ; $599c: $9d
	and $ff                                          ; $599d: $e6 $ff
	ccf                                              ; $599f: $3f
	ld h, b                                          ; $59a0: $60

jr_06b_59a1:
	ld l, a                                          ; $59a1: $6f
	add b                                            ; $59a2: $80
	adc l                                            ; $59a3: $8d
	add hl, hl                                       ; $59a4: $29
	ldh a, [$73]                                     ; $59a5: $f0 $73
	call c, $9fee                                    ; $59a7: $dc $ee $9f
	db $ed                                           ; $59aa: $ed
	inc bc                                           ; $59ab: $03
	rst JumpTable                                          ; $59ac: $c7
	nop                                              ; $59ad: $00
	rst JumpTable                                          ; $59ae: $c7
	nop                                              ; $59af: $00
	ld b, h                                          ; $59b0: $44
	sbc e                                            ; $59b1: $9b
	rst AddAOntoHL                                          ; $59b2: $ef
	sbc a                                            ; $59b3: $9f
	pop bc                                           ; $59b4: $c1
	add e                                            ; $59b5: $83
	ccf                                              ; $59b6: $3f
	add b                                            ; $59b7: $80
	sbc l                                            ; $59b8: $9d
	ldh [rP1], a                                     ; $59b9: $e0 $00
	ld [hl], a                                       ; $59bb: $77
	add b                                            ; $59bc: $80
	sub a                                            ; $59bd: $97
	ret z                                            ; $59be: $c8

	jr nc, jr_06b_59a1                               ; $59bf: $30 $e0

	ldh a, [$80]                                     ; $59c1: $f0 $80
	ret nz                                           ; $59c3: $c0

	ldh [$80], a                                     ; $59c4: $e0 $80
	ld h, e                                          ; $59c6: $63
	add b                                            ; $59c7: $80
	sbc b                                            ; $59c8: $98
	jr nz, jr_06b_59fc                               ; $59c9: $20 $31

	jr nz, jr_06b_5a02                               ; $59cb: $20 $35

	inc bc                                           ; $59cd: $03
	ld a, e                                          ; $59ce: $7b
	ld b, $77                                        ; $59cf: $06 $77
	add b                                            ; $59d1: $80
	sbc d                                            ; $59d2: $9a
	jr jr_06b_59dc                                   ; $59d3: $18 $07

	rlca                                             ; $59d5: $07
	rrca                                             ; $59d6: $0f
	dec bc                                           ; $59d7: $0b
	ld c, e                                          ; $59d8: $4b
	add b                                            ; $59d9: $80
	sbc c                                            ; $59da: $99
	jp hl                                            ; $59db: $e9


jr_06b_59dc:
	ld e, a                                          ; $59dc: $5f
	cp l                                             ; $59dd: $bd
	rst GetHLinHL                                          ; $59de: $cf
	halt                                             ; $59df: $76
	adc a                                            ; $59e0: $8f
	ld l, a                                          ; $59e1: $6f
	add b                                            ; $59e2: $80
	sbc e                                            ; $59e3: $9b
	halt                                             ; $59e4: $76
	rst AddAOntoHL                                          ; $59e5: $ef
	rst $38                                          ; $59e6: $ff

jr_06b_59e7:
	call $802f                                       ; $59e7: $cd $2f $80
	sub a                                            ; $59ea: $97
	add hl, sp                                       ; $59eb: $39
	ldh [$57], a                                     ; $59ec: $e0 $57
	ld hl, sp-$14                                    ; $59ee: $f8 $ec
	sbc a                                            ; $59f0: $9f
	db $eb                                           ; $59f1: $eb
	rlca                                             ; $59f2: $07
	ld [hl], a                                       ; $59f3: $77
	add b                                            ; $59f4: $80
	sbc d                                            ; $59f5: $9a
	ld c, a                                          ; $59f6: $4f
	sub b                                            ; $59f7: $90
	xor $9f                                          ; $59f8: $ee $9f
	rst JumpTable                                          ; $59fa: $c7
	inc sp                                           ; $59fb: $33

jr_06b_59fc:
	add b                                            ; $59fc: $80
	sub h                                            ; $59fd: $94
	jr nc, @-$3e                                     ; $59fe: $30 $c0

	add sp, -$10                                     ; $5a00: $e8 $f0

jr_06b_5a02:
	ld hl, sp+$00                                    ; $5a02: $f8 $00
	ret nz                                           ; $5a04: $c0

	jr nc, jr_06b_59e7                               ; $5a05: $30 $e0

	ldh [$c0], a                                     ; $5a07: $e0 $c0
	ld d, e                                          ; $5a09: $53
	add b                                            ; $5a0a: $80
	sub h                                            ; $5a0b: $94
	scf                                              ; $5a0c: $37
	ld bc, $037e                                     ; $5a0d: $01 $7e $03
	ld a, l                                          ; $5a10: $7d
	ld b, $3b                                        ; $5a11: $06 $3b
	inc e                                            ; $5a13: $1c
	rrca                                             ; $5a14: $0f
	db $10                                           ; $5a15: $10
	ld b, $1b                                        ; $5a16: $06 $1b
	add b                                            ; $5a18: $80
	sbc b                                            ; $5a19: $98
	call c, $b627                                    ; $5a1a: $dc $27 $b6
	ld l, a                                          ; $5a1d: $6f
	rst SubAFromDE                                          ; $5a1e: $df
	db $ed                                           ; $5a1f: $ed
	rst $38                                          ; $5a20: $ff
	ld c, e                                          ; $5a21: $4b
	add b                                            ; $5a22: $80
	ei                                               ; $5a23: $fb
	ld a, a                                          ; $5a24: $7f
	or c                                             ; $5a25: $b1
	sbc [hl]                                         ; $5a26: $9e
	and b                                            ; $5a27: $a0
	ld a, e                                          ; $5a28: $7b
	and h                                            ; $5a29: $a4
	sub e                                            ; $5a2a: $93
	dec a                                            ; $5a2b: $3d
	cp $0f                                           ; $5a2c: $fe $0f
	rst $38                                          ; $5a2e: $ff
	ld b, $ff                                        ; $5a2f: $06 $ff
	add e                                            ; $5a31: $83
	rst $38                                          ; $5a32: $ff
	ld b, e                                          ; $5a33: $43
	cp $21                                           ; $5a34: $fe $21
	rst $38                                          ; $5a36: $ff
	ld [hl], a                                       ; $5a37: $77
	cp $82                                           ; $5a38: $fe $82
	pop af                                           ; $5a3a: $f1
	rst $38                                          ; $5a3b: $ff
	or c                                             ; $5a3c: $b1
	rst $38                                          ; $5a3d: $ff
	ld [$6838], sp                                   ; $5a3e: $08 $38 $68
	ld b, b                                          ; $5a41: $40
	stop                                             ; $5a42: $10 $00
	stop                                             ; $5a44: $10 $00
	nop                                              ; $5a46: $00
	ld bc, $0301                                     ; $5a47: $01 $01 $03
	inc bc                                           ; $5a4a: $03
	rlca                                             ; $5a4b: $07
	rst SubAFromBC                                          ; $5a4c: $e7
	rst $38                                          ; $5a4d: $ff
	ccf                                              ; $5a4e: $3f
	rst $38                                          ; $5a4f: $ff
	add $ff                                          ; $5a50: $c6 $ff
	cp $3f                                           ; $5a52: $fe $3f
	ld a, a                                          ; $5a54: $7f
	add c                                            ; $5a55: $81
	rst $38                                          ; $5a56: $ff
	ld a, e                                          ; $5a57: $7b
	cpl                                              ; $5a58: $2f
	ld a, [hl]                                       ; $5a59: $7e
	ld a, [hl-]                                      ; $5a5a: $3a
	ld a, a                                          ; $5a5b: $7f
	cp $7f                                           ; $5a5c: $fe $7f
	ldh [$9a], a                                     ; $5a5e: $e0 $9a
	ld a, b                                          ; $5a60: $78
	ld [hl], b                                       ; $5a61: $70
	ld b, b                                          ; $5a62: $40
	nop                                              ; $5a63: $00
	jr nc, jr_06b_5a89                               ; $5a64: $30 $23

	ldh [$9d], a                                     ; $5a66: $e0 $9d
	jr c, jr_06b_5a9a                                ; $5a68: $38 $30

	sbc $78                                          ; $5a6a: $de $78
	ld a, a                                          ; $5a6c: $7f
	ld [hl], c                                       ; $5a6d: $71
	ld a, a                                          ; $5a6e: $7f
	sbc $13                                          ; $5a6f: $de $13
	ldh [$9a], a                                     ; $5a71: $e0 $9a
	jr nz, jr_06b_5aa5                               ; $5a73: $20 $30

	nop                                              ; $5a75: $00
	ld bc, $3331                                     ; $5a76: $01 $31 $33
	ldh [$e6], a                                     ; $5a79: $e0 $e6
	add d                                            ; $5a7b: $82
	sbc d                                            ; $5a7c: $9a
	ld bc, $0302                                     ; $5a7d: $01 $02 $03
	inc b                                            ; $5a80: $04
	inc b                                            ; $5a81: $04
	sbc $08                                          ; $5a82: $de $08
	sbc d                                            ; $5a84: $9a
	ld bc, $0303                                     ; $5a85: $01 $03 $03
	rlca                                             ; $5a88: $07

jr_06b_5a89:
	rlca                                             ; $5a89: $07
	sbc $0f                                          ; $5a8a: $de $0f
	sub e                                            ; $5a8c: $93
	ld [$0509], sp                                   ; $5a8d: $08 $09 $05
	dec b                                            ; $5a90: $05
	inc bc                                           ; $5a91: $03
	ld bc, $0000                                     ; $5a92: $01 $00 $00
	rrca                                             ; $5a95: $0f
	rrca                                             ; $5a96: $0f
	rlca                                             ; $5a97: $07
	rlca                                             ; $5a98: $07
	ld [hl], a                                       ; $5a99: $77

jr_06b_5a9a:
	ld hl, sp-$11                                    ; $5a9a: $f8 $ef
	adc c                                            ; $5a9c: $89
	ld sp, $e5e2                                     ; $5a9d: $31 $e2 $e5
	sbc e                                            ; $5aa0: $9b
	ld a, [hl]                                       ; $5aa1: $7e
	sbc b                                            ; $5aa2: $98
	nop                                              ; $5aa3: $00
	nop                                              ; $5aa4: $00

jr_06b_5aa5:
	ld [hl], c                                       ; $5aa5: $71
	and e                                            ; $5aa6: $a3
	and [hl]                                         ; $5aa7: $a6
	db $fc                                           ; $5aa8: $fc
	ld [hl], c                                       ; $5aa9: $71
	rst SubAFromBC                                          ; $5aaa: $e7
	nop                                              ; $5aab: $00
	add c                                            ; $5aac: $81
	ld [bc], a                                       ; $5aad: $02
	ld b, $24                                        ; $5aae: $06 $24
	ld c, b                                          ; $5ab0: $48
	sub b                                            ; $5ab1: $90
	sub b                                            ; $5ab2: $90
	reti                                             ; $5ab3: $d9


	rst $38                                          ; $5ab4: $ff
	sub a                                            ; $5ab5: $97
	and b                                            ; $5ab6: $a0
	jr nz, jr_06b_5ada                               ; $5ab7: $20 $21

	dec h                                            ; $5ab9: $25
	rla                                              ; $5aba: $17
	sbc a                                            ; $5abb: $9f
	sub a                                            ; $5abc: $97
	ld a, [$ffdd]                                    ; $5abd: $fa $dd $ff
	adc d                                            ; $5ac0: $8a
	cp $f8                                           ; $5ac1: $fe $f8
	ld hl, sp-$0b                                    ; $5ac3: $f8 $f5
	ld h, l                                          ; $5ac5: $65
	jr z, jr_06b_5aec                                ; $5ac6: $28 $24

	ld [hl+], a                                      ; $5ac8: $22
	jr nc, jr_06b_5adc                               ; $5ac9: $30 $11

	ld a, [bc]                                       ; $5acb: $0a
	ld b, $7a                                        ; $5acc: $06 $7a
	scf                                              ; $5ace: $37
	dec sp                                           ; $5acf: $3b
	dec a                                            ; $5ad0: $3d
	ccf                                              ; $5ad1: $3f
	rra                                              ; $5ad2: $1f
	rrca                                             ; $5ad3: $0f
	rlca                                             ; $5ad4: $07
	ld b, $dc                                        ; $5ad5: $06 $dc
	ld [bc], a                                       ; $5ad7: $02
	ld a, a                                          ; $5ad8: $7f
	and [hl]                                         ; $5ad9: $a6

jr_06b_5ada:
	ld a, a                                          ; $5ada: $7f
	and e                                            ; $5adb: $a3

jr_06b_5adc:
	call c, $df03                                    ; $5adc: $dc $03 $df
	ld bc, $028f                                     ; $5adf: $01 $8f $02
	dec b                                            ; $5ae2: $05
	rlca                                             ; $5ae3: $07
	ld a, [bc]                                       ; $5ae4: $0a
	ld c, $15                                        ; $5ae5: $0e $15
	dec d                                            ; $5ae7: $15
	ld bc, $0603                                     ; $5ae8: $01 $03 $06
	inc b                                            ; $5aeb: $04

jr_06b_5aec:
	dec c                                            ; $5aec: $0d
	add hl, bc                                       ; $5aed: $09
	ld a, [de]                                       ; $5aee: $1a
	ld a, [de]                                       ; $5aef: $1a
	dec e                                            ; $5af0: $1d
	db $dd                                           ; $5af1: $dd
	dec hl                                           ; $5af2: $2b
	sbc $3b                                          ; $5af3: $de $3b
	sbc [hl]                                         ; $5af5: $9e
	ld [de], a                                       ; $5af6: $12
	db $dd                                           ; $5af7: $dd
	inc [hl]                                         ; $5af8: $34
	sbc $24                                          ; $5af9: $de $24
	sbc h                                            ; $5afb: $9c
	dec sp                                           ; $5afc: $3b
	inc sp                                           ; $5afd: $33
	inc sp                                           ; $5afe: $33
	sbc $32                                          ; $5aff: $de $32
	sbc d                                            ; $5b01: $9a
	ld l, $6e                                        ; $5b02: $2e $6e
	inc h                                            ; $5b04: $24
	inc l                                            ; $5b05: $2c
	inc l                                            ; $5b06: $2c
	sbc $2d                                          ; $5b07: $de $2d
	add l                                            ; $5b09: $85
	add hl, sp                                       ; $5b0a: $39
	ld a, c                                          ; $5b0b: $79
	ld e, [hl]                                       ; $5b0c: $5e
	sbc [hl]                                         ; $5b0d: $9e
	ld d, [hl]                                       ; $5b0e: $56
	sub h                                            ; $5b0f: $94
	dec e                                            ; $5b10: $1d
	dec l                                            ; $5b11: $2d
	ld l, c                                          ; $5b12: $69
	ld d, d                                          ; $5b13: $52
	ld a, c                                          ; $5b14: $79
	ld sp, hl                                        ; $5b15: $f9
	cp c                                             ; $5b16: $b9
	ld a, e                                          ; $5b17: $7b
	di                                               ; $5b18: $f3
	di                                               ; $5b19: $f3
	rst FarCall                                          ; $5b1a: $f7
	rst AddAOntoHL                                          ; $5b1b: $ef
	add d                                            ; $5b1c: $82
	inc b                                            ; $5b1d: $04
	inc c                                            ; $5b1e: $0c
	ld [$2110], sp                                   ; $5b1f: $08 $10 $21
	ld b, d                                          ; $5b22: $42
	ld b, e                                          ; $5b23: $43
	reti                                             ; $5b24: $d9


	rst $38                                          ; $5b25: $ff
	sbc [hl]                                         ; $5b26: $9e
	rst SubAFromDE                                          ; $5b27: $df

jr_06b_5b28:
	call c, $9aff                                    ; $5b28: $dc $ff $9a
	ld d, a                                          ; $5b2b: $57
	xor d                                            ; $5b2c: $aa
	db $fc                                           ; $5b2d: $fc
	ldh [$80], a                                     ; $5b2e: $e0 $80
	cp $97                                           ; $5b30: $fe $97
	xor b                                            ; $5b32: $a8
	ld d, l                                          ; $5b33: $55
	nop                                              ; $5b34: $00
	nop                                              ; $5b35: $00
	ccf                                              ; $5b36: $3f
	ld b, b                                          ; $5b37: $40
	cp b                                             ; $5b38: $b8
	ld a, h                                          ; $5b39: $7c
	db $db                                           ; $5b3a: $db
	rst $38                                          ; $5b3b: $ff
	sub a                                            ; $5b3c: $97
	rst JumpTable                                          ; $5b3d: $c7
	add e                                            ; $5b3e: $83
	ld bc, $bb00                                     ; $5b3f: $01 $00 $bb
	cp [hl]                                          ; $5b42: $be
	ld a, a                                          ; $5b43: $7f
	ld a, a                                          ; $5b44: $7f
	sbc $bf                                          ; $5b45: $de $bf
	sbc e                                            ; $5b47: $9b
	sbc a                                            ; $5b48: $9f
	ld b, h                                          ; $5b49: $44
	ld b, e                                          ; $5b4a: $43
	pop bc                                           ; $5b4b: $c1
	db $dd                                           ; $5b4c: $dd
	ret nz                                           ; $5b4d: $c0

	sbc [hl]                                         ; $5b4e: $9e
	ldh [$ee], a                                     ; $5b4f: $e0 $ee
	ld a, [hl]                                       ; $5b51: $7e
	rst FarCall                                          ; $5b52: $f7
	sbc h                                            ; $5b53: $9c
	dec de                                           ; $5b54: $1b
	ld l, h                                          ; $5b55: $6c
	or e                                             ; $5b56: $b3
	ld [hl], e                                       ; $5b57: $73
	ld hl, sp-$6c                                    ; $5b58: $f8 $94
	inc e                                            ; $5b5a: $1c
	ld [hl], e                                       ; $5b5b: $73
	call z, $d2e9                                    ; $5b5c: $cc $e9 $d2
	and l                                            ; $5b5f: $a5
	ld l, d                                          ; $5b60: $6a
	ld [$d4d4], a                                    ; $5b61: $ea $d4 $d4
	push af                                          ; $5b64: $f5
	ld a, e                                          ; $5b65: $7b
	sbc h                                            ; $5b66: $9c
	sbc [hl]                                         ; $5b67: $9e
	add h                                            ; $5b68: $84
	halt                                             ; $5b69: $76
	ret c                                            ; $5b6a: $d8

	sbc l                                            ; $5b6b: $9d
	pop hl                                           ; $5b6c: $e1
	jp hl                                            ; $5b6d: $e9


	sbc $6a                                          ; $5b6e: $de $6a
	sbc d                                            ; $5b70: $9a
	ld h, d                                          ; $5b71: $62
	jr nc, jr_06b_5b28                               ; $5b72: $30 $b4

	jr jr_06b_5b86                                   ; $5b74: $18 $10

	sbc $91                                          ; $5b76: $de $91
	sub h                                            ; $5b78: $94
	sbc c                                            ; $5b79: $99
	db $db                                           ; $5b7a: $db
	db $db                                           ; $5b7b: $db
	sub d                                            ; $5b7c: $92
	sub d                                            ; $5b7d: $92
	sub [hl]                                         ; $5b7e: $96
	sub h                                            ; $5b7f: $94

jr_06b_5b80:
	xor c                                            ; $5b80: $a9
	di                                               ; $5b81: $f3
	call z, $d9b9                                    ; $5b82: $cc $b9 $d9
	rst $38                                          ; $5b85: $ff

jr_06b_5b86:
	rst SubAFromDE                                          ; $5b86: $df
	sbc c                                            ; $5b87: $99
	adc c                                            ; $5b88: $89
	cp c                                             ; $5b89: $b9
	cp l                                             ; $5b8a: $bd
	dec a                                            ; $5b8b: $3d
	cpl                                              ; $5b8c: $2f
	ccf                                              ; $5b8d: $3f
	ccf                                              ; $5b8e: $3f
	rst $38                                          ; $5b8f: $ff
	rst $38                                          ; $5b90: $ff
	rst AddAOntoHL                                          ; $5b91: $ef
	rst SubAFromBC                                          ; $5b92: $e7
	rst SubAFromBC                                          ; $5b93: $e7
	di                                               ; $5b94: $f3
	pop af                                           ; $5b95: $f1
	ld sp, hl                                        ; $5b96: $f9
	ld d, a                                          ; $5b97: $57
	ld d, a                                          ; $5b98: $57
	sub [hl]                                         ; $5b99: $96
	and [hl]                                         ; $5b9a: $a6
	xor l                                            ; $5b9b: $ad
	dec l                                            ; $5b9c: $2d
	ld e, d                                          ; $5b9d: $5a
	ldh a, [c]                                       ; $5b9e: $f2
	ret c                                            ; $5b9f: $d8

	rst $38                                          ; $5ba0: $ff
	sub a                                            ; $5ba1: $97
	db $fd                                           ; $5ba2: $fd
	ld [$eaf4], a                                    ; $5ba3: $ea $f4 $ea
	ldh a, [c]                                       ; $5ba6: $f2
	db $fc                                           ; $5ba7: $fc
	ld a, [$fa0b]                                    ; $5ba8: $fa $0b $fa
	sub [hl]                                         ; $5bab: $96
	cp $3f                                           ; $5bac: $fe $3f
	cp a                                             ; $5bae: $bf
	ld e, a                                          ; $5baf: $5f
	ld c, a                                          ; $5bb0: $4f
	cpl                                              ; $5bb1: $2f
	rla                                              ; $5bb2: $17
	sub a                                            ; $5bb3: $97
	nop                                              ; $5bb4: $00
	ld a, e                                          ; $5bb5: $7b
	ld [hl], h                                       ; $5bb6: $74
	rst SubAFromDE                                          ; $5bb7: $df
	ldh a, [$df]                                     ; $5bb8: $f0 $df
	ld hl, sp+$7f                                    ; $5bba: $f8 $7f
	db $f4                                           ; $5bbc: $f4
	sub [hl]                                         ; $5bbd: $96
	rra                                              ; $5bbe: $1f
	adc a                                            ; $5bbf: $8f
	ld h, a                                          ; $5bc0: $67
	inc sp                                           ; $5bc1: $33
	dec de                                           ; $5bc2: $1b
	rrca                                             ; $5bc3: $0f
	ld hl, sp-$04                                    ; $5bc4: $f8 $fc
	db $fc                                           ; $5bc6: $fc
	sbc $fe                                          ; $5bc7: $de $fe
	rst SubAFromDE                                          ; $5bc9: $df

jr_06b_5bca:
	rst $38                                          ; $5bca: $ff
	rst AddAOntoHL                                          ; $5bcb: $ef
	sbc c                                            ; $5bcc: $99
	jp $9db5                                         ; $5bcd: $c3 $b5 $9d


	add a                                            ; $5bd0: $87
	ld a, $c1                                        ; $5bd1: $3e $c1
	ld a, e                                          ; $5bd3: $7b
	ld hl, sp-$80                                    ; $5bd4: $f8 $80
	halt                                             ; $5bd6: $76
	cp $7e                                           ; $5bd7: $fe $7e
	jp $183f                                         ; $5bd9: $c3 $3f $18


	call nz, $2613                                   ; $5bdc: $c4 $13 $26
	ld e, c                                          ; $5bdf: $59
	or e                                             ; $5be0: $b3
	ld [hl+], a                                      ; $5be1: $22
	ld b, l                                          ; $5be2: $45
	ldh [$03], a                                     ; $5be3: $e0 $03
	inc c                                            ; $5be5: $0c
	jr jr_06b_5c08                                   ; $5be6: $18 $20

	ld b, b                                          ; $5be8: $40
	pop bc                                           ; $5be9: $c1
	add d                                            ; $5bea: $82
	ld d, l                                          ; $5beb: $55
	jr nc, jr_06b_5b80                               ; $5bec: $30 $92

	sub [hl]                                         ; $5bee: $96
	or $f7                                           ; $5bef: $f6 $f7
	xor $ae                                          ; $5bf1: $ee $ae
	add d                                            ; $5bf3: $82
	add [hl]                                         ; $5bf4: $86
	db $dd                                           ; $5bf5: $dd
	inc h                                            ; $5bf6: $24
	sbc l                                            ; $5bf7: $9d
	dec [hl]                                         ; $5bf8: $35
	ld [hl], l                                       ; $5bf9: $75
	ldh [$c1], a                                     ; $5bfa: $e0 $c1
	add b                                            ; $5bfc: $80
	ld a, [hl]                                       ; $5bfd: $7e
	rst $38                                          ; $5bfe: $ff
	ccf                                              ; $5bff: $3f
	rst SubAFromDE                                          ; $5c00: $df
	ccf                                              ; $5c01: $3f
	rra                                              ; $5c02: $1f
	cpl                                              ; $5c03: $2f
	rlca                                             ; $5c04: $07
	add c                                            ; $5c05: $81
	nop                                              ; $5c06: $00
	ret nz                                           ; $5c07: $c0

jr_06b_5c08:
	jr nz, jr_06b_5bca                               ; $5c08: $20 $c0

	ldh [$d0], a                                     ; $5c0a: $e0 $d0
	ld hl, sp+$0b                                    ; $5c0c: $f8 $0b
	rlca                                             ; $5c0e: $07
	rrca                                             ; $5c0f: $0f
	inc bc                                           ; $5c10: $03
	ld [bc], a                                       ; $5c11: $02
	dec b                                            ; $5c12: $05
	ld bc, $f400                                     ; $5c13: $01 $00 $f4
	ld hl, sp-$10                                    ; $5c16: $f8 $f0
	db $fc                                           ; $5c18: $fc
	db $fd                                           ; $5c19: $fd
	ld a, [$67fe]                                    ; $5c1a: $fa $fe $67
	ld h, b                                          ; $5c1d: $60
	sbc [hl]                                         ; $5c1e: $9e
	ld [bc], a                                       ; $5c1f: $02
	ld h, a                                          ; $5c20: $67
	ld hl, sp-$80                                    ; $5c21: $f8 $80
	inc c                                            ; $5c23: $0c
	ld hl, sp+$4c                                    ; $5c24: $f8 $4c
	add e                                            ; $5c26: $83
	daa                                              ; $5c27: $27
	ld l, a                                          ; $5c28: $6f
	ld e, h                                          ; $5c29: $5c
	sbc c                                            ; $5c2a: $99
	inc c                                            ; $5c2b: $0c
	ld hl, sp-$44                                    ; $5c2c: $f8 $bc
	ld a, a                                          ; $5c2e: $7f
	ret c                                            ; $5c2f: $d8

	sub b                                            ; $5c30: $90
	and e                                            ; $5c31: $a3
	and $40                                          ; $5c32: $e6 $40
	ld h, b                                          ; $5c34: $60
	jr nc, jr_06b_5c4f                               ; $5c35: $30 $18

	ld [$0870], sp                                   ; $5c37: $08 $70 $08
	inc b                                            ; $5c3a: $04
	db $fd                                           ; $5c3b: $fd
	ei                                               ; $5c3c: $fb
	cp $38                                           ; $5c3d: $fe $38
	rst $38                                          ; $5c3f: $ff
	cp $fc                                           ; $5c40: $fe $fc
	sbc d                                            ; $5c42: $9a
	sbc a                                            ; $5c43: $9f
	inc b                                            ; $5c44: $04
	ld c, a                                          ; $5c45: $4f
	sbc c                                            ; $5c46: $99
	cp b                                             ; $5c47: $b8
	db $dd                                           ; $5c48: $dd
	or b                                             ; $5c49: $b0
	sbc b                                            ; $5c4a: $98
	ld a, a                                          ; $5c4b: $7f
	rst $38                                          ; $5c4c: $ff
	ret nc                                           ; $5c4d: $d0

	or b                                             ; $5c4e: $b0

jr_06b_5c4f:
	and b                                            ; $5c4f: $a0
	and b                                            ; $5c50: $a0
	ldh [$36], a                                     ; $5c51: $e0 $36
	add b                                            ; $5c53: $80
	ldh [$d4], a                                     ; $5c54: $e0 $d4
	rst SubAFromDE                                          ; $5c56: $df
	add b                                            ; $5c57: $80
	ld a, d                                          ; $5c58: $7a
	rst JumpTable                                          ; $5c59: $c7
	ld a, d                                          ; $5c5a: $7a
	ret c                                            ; $5c5b: $d8

	ld a, a                                          ; $5c5c: $7f
	ei                                               ; $5c5d: $fb
	sbc b                                            ; $5c5e: $98
	ld [hl], b                                       ; $5c5f: $70

jr_06b_5c60:
	ld a, b                                          ; $5c60: $78
	inc a                                            ; $5c61: $3c
	rra                                              ; $5c62: $1f
	add hl, bc                                       ; $5c63: $09
	rrca                                             ; $5c64: $0f
	ld hl, sp+$7b                                    ; $5c65: $f8 $7b
	db $f4                                           ; $5c67: $f4
	db $dd                                           ; $5c68: $dd
	rst $38                                          ; $5c69: $ff
	ld a, a                                          ; $5c6a: $7f
	ld e, d                                          ; $5c6b: $5a
	rra                                              ; $5c6c: $1f
	call $e09b                                       ; $5c6d: $cd $9b $e0
	jr @+$08                                         ; $5c70: $18 $06

	ld sp, hl                                        ; $5c72: $f9
	ld [hl], a                                       ; $5c73: $77
	ld hl, sp-$80                                    ; $5c74: $f8 $80
	ld h, b                                          ; $5c76: $60
	ld hl, sp-$02                                    ; $5c77: $f8 $fe
	rlca                                             ; $5c79: $07
	cp $cf                                           ; $5c7a: $fe $cf
	ld [hl], e                                       ; $5c7c: $73
	add hl, de                                       ; $5c7d: $19
	call $7ae4                                       ; $5c7e: $cd $e4 $7a
	cp d                                             ; $5c81: $ba
	ld bc, $0c30                                     ; $5c82: $01 $30 $0c
	ld b, $02                                        ; $5c85: $06 $02
	inc bc                                           ; $5c87: $03
	ld hl, $dc11                                     ; $5c88: $21 $11 $dc
	db $fd                                           ; $5c8b: $fd
	cp l                                             ; $5c8c: $bd
	db $fd                                           ; $5c8d: $fd
	ld a, a                                          ; $5c8e: $7f
	ld e, a                                          ; $5c8f: $5f
	ld a, a                                          ; $5c90: $7f
	ld a, l                                          ; $5c91: $7d
	sub c                                            ; $5c92: $91
	ld c, b                                          ; $5c93: $48

jr_06b_5c94:
	xor b                                            ; $5c94: $a8
	sbc [hl]                                         ; $5c95: $9e
	xor b                                            ; $5c96: $a8
	sbc $54                                          ; $5c97: $de $54
	sbc [hl]                                         ; $5c99: $9e
	ld e, [hl]                                       ; $5c9a: $5e
	ldh [$c1], a                                     ; $5c9b: $e0 $c1
	ld a, [hl]                                       ; $5c9d: $7e
	call nz, $1ddf                                   ; $5c9e: $c4 $df $1d
	sub c                                            ; $5ca1: $91
	dec a                                            ; $5ca2: $3d
	ld l, c                                          ; $5ca3: $69
	or b                                             ; $5ca4: $b0
	ret nc                                           ; $5ca5: $d0

	ld a, a                                          ; $5ca6: $7f
	ld [hl], a                                       ; $5ca7: $77
	ld [hl], a                                       ; $5ca8: $77
	scf                                              ; $5ca9: $37
	dec [hl]                                         ; $5caa: $35
	jp hl                                            ; $5cab: $e9


	sbc c                                            ; $5cac: $99
	rra                                              ; $5cad: $1f
	ldh a, [$61]                                     ; $5cae: $f0 $61
	db $db                                           ; $5cb0: $db
	rst $38                                          ; $5cb1: $ff
	sbc h                                            ; $5cb2: $9c
	sbc a                                            ; $5cb3: $9f
	rst $38                                          ; $5cb4: $ff
	db $db                                           ; $5cb5: $db
	db $fc                                           ; $5cb6: $fc
	ld a, [hl]                                       ; $5cb7: $7e
	xor d                                            ; $5cb8: $aa
	sbc c                                            ; $5cb9: $99
	sub b                                            ; $5cba: $90
	sbc b                                            ; $5cbb: $98
	ret z                                            ; $5cbc: $c8

	call z, Call_06b_7cec                            ; $5cbd: $cc $ec $7c
	ld a, e                                          ; $5cc0: $7b
	ld b, b                                          ; $5cc1: $40
	adc l                                            ; $5cc2: $8d
	ld l, b                                          ; $5cc3: $68
	jr c, jr_06b_5cfa                                ; $5cc4: $38 $34

	inc d                                            ; $5cc6: $14
	sub h                                            ; $5cc7: $94
	ld a, d                                          ; $5cc8: $7a
	ld a, [$f6fe]                                    ; $5cc9: $fa $fe $f6
	sub $96                                          ; $5ccc: $d6 $96
	ld e, [hl]                                       ; $5cce: $5e
	ld e, [hl]                                       ; $5ccf: $5e
	sub [hl]                                         ; $5cd0: $96
	sub [hl]                                         ; $5cd1: $96
	sub d                                            ; $5cd2: $92
	sbc d                                            ; $5cd3: $9a
	cp d                                             ; $5cd4: $ba
	sbc $fa                                          ; $5cd5: $de $fa
	ldh [$c1], a                                     ; $5cd7: $e0 $c1
	sub a                                            ; $5cd9: $97
	sbc c                                            ; $5cda: $99
	adc c                                            ; $5cdb: $89
	ld b, d                                          ; $5cdc: $42
	ld h, h                                          ; $5cdd: $64
	jr jr_06b_5c60                                   ; $5cde: $18 $80

	add b                                            ; $5ce0: $80
	pop bc                                           ; $5ce1: $c1
	reti                                             ; $5ce2: $d9


	rst $38                                          ; $5ce3: $ff
	ld a, [hl]                                       ; $5ce4: $7e
	adc b                                            ; $5ce5: $88
	sbc b                                            ; $5ce6: $98
	rst $38                                          ; $5ce7: $ff
	cp a                                             ; $5ce8: $bf
	rrca                                             ; $5ce9: $0f
	cpl                                              ; $5cea: $2f
	ld e, a                                          ; $5ceb: $5f
	rst $38                                          ; $5cec: $ff
	cp $5a                                           ; $5ced: $fe $5a
	add [hl]                                         ; $5cef: $86
	rst SubAFromDE                                          ; $5cf0: $df
	add b                                            ; $5cf1: $80
	sbc l                                            ; $5cf2: $9d
	ld b, b                                          ; $5cf3: $40
	ret nz                                           ; $5cf4: $c0

	ld l, d                                          ; $5cf5: $6a
	or h                                             ; $5cf6: $b4
	ld a, d                                          ; $5cf7: $7a
	ld d, c                                          ; $5cf8: $51
	add b                                            ; $5cf9: $80

jr_06b_5cfa:
	jr z, jr_06b_5c94                                ; $5cfa: $28 $98

	ld [hl], h                                       ; $5cfc: $74
	xor h                                            ; $5cfd: $ac
	call c, $a076                                    ; $5cfe: $dc $76 $a0
	ret nc                                           ; $5d01: $d0

	ret c                                            ; $5d02: $d8

	add sp, -$14                                     ; $5d03: $e8 $ec
	db $f4                                           ; $5d05: $f4
	or h                                             ; $5d06: $b4
	jp c, $9aee                                      ; $5d07: $da $ee $9a

	or [hl]                                          ; $5d0a: $b6
	xor $da                                          ; $5d0b: $ee $da
	db $dd                                           ; $5d0d: $dd
	push af                                          ; $5d0e: $f5
	db $ed                                           ; $5d0f: $ed
	ld e, d                                          ; $5d10: $5a
	ld l, [hl]                                       ; $5d11: $6e
	ld l, [hl]                                       ; $5d12: $6e
	ld [hl], $36                                     ; $5d13: $36 $36
	inc sp                                           ; $5d15: $33
	dec de                                           ; $5d16: $1b
	sbc e                                            ; $5d17: $9b
	db $ed                                           ; $5d18: $ed
	add b                                            ; $5d19: $80
	ld l, l                                          ; $5d1a: $6d
	xor l                                            ; $5d1b: $ad
	xor d                                            ; $5d1c: $aa
	ldh a, [c]                                       ; $5d1d: $f2
	call nc, $9ed4                                   ; $5d1e: $d4 $d4 $9e
	db $db                                           ; $5d21: $db
	db $db                                           ; $5d22: $db
	ld a, e                                          ; $5d23: $7b
	ld a, [hl]                                       ; $5d24: $7e
	ld a, $3c                                        ; $5d25: $3e $3c
	inc a                                            ; $5d27: $3c
	ld a, [hl]                                       ; $5d28: $7e
	dec de                                           ; $5d29: $1b
	dec d                                            ; $5d2a: $15
	dec bc                                           ; $5d2b: $0b
	inc e                                            ; $5d2c: $1c
	dec e                                            ; $5d2d: $1d
	ld a, $7f                                        ; $5d2e: $3e $7f
	ld a, [hl]                                       ; $5d30: $7e
	rst FarCall                                          ; $5d31: $f7
	ei                                               ; $5d32: $fb
	push af                                          ; $5d33: $f5
	di                                               ; $5d34: $f3
	ldh [c], a                                       ; $5d35: $e2
	pop hl                                           ; $5d36: $e1
	ret nz                                           ; $5d37: $c0

	add c                                            ; $5d38: $81
	sub b                                            ; $5d39: $90
	db $fd                                           ; $5d3a: $fd
	cp $fc                                           ; $5d3b: $fe $fc
	ei                                               ; $5d3d: $fb
	db $fc                                           ; $5d3e: $fc
	ld sp, hl                                        ; $5d3f: $f9
	or $fe                                           ; $5d40: $f6 $fe
	ld [bc], a                                       ; $5d42: $02
	ld bc, $0503                                     ; $5d43: $01 $03 $05
	inc bc                                           ; $5d46: $03
	rlca                                             ; $5d47: $07
	dec bc                                           ; $5d48: $0b
	halt                                             ; $5d49: $76
	ld a, d                                          ; $5d4a: $7a
	halt                                             ; $5d4b: $76
	ld e, l                                          ; $5d4c: $5d
	sbc [hl]                                         ; $5d4d: $9e
	ld h, b                                          ; $5d4e: $60
	ld h, [hl]                                       ; $5d4f: $66
	ld d, l                                          ; $5d50: $55
	sub a                                            ; $5d51: $97
	ldh [$30], a                                     ; $5d52: $e0 $30
	or b                                             ; $5d54: $b0
	jr c, @+$3a                                      ; $5d55: $38 $38

	ld l, b                                          ; $5d57: $68
	ld c, b                                          ; $5d58: $48
	ret c                                            ; $5d59: $d8

	ld [hl], c                                       ; $5d5a: $71
	inc de                                           ; $5d5b: $13
	rst SubAFromDE                                          ; $5d5c: $df
	ld hl, sp-$62                                    ; $5d5d: $f8 $9e
	add sp, $26                                      ; $5d5f: $e8 $26
	nop                                              ; $5d61: $00
	rst SubAFromDE                                          ; $5d62: $df
	adc b                                            ; $5d63: $88
	sbc l                                            ; $5d64: $9d
	inc sp                                           ; $5d65: $33
	xor d                                            ; $5d66: $aa
	ld a, e                                          ; $5d67: $7b
	db $fc                                           ; $5d68: $fc
	adc a                                            ; $5d69: $8f
	ld b, h                                          ; $5d6a: $44
	adc b                                            ; $5d6b: $88
	nop                                              ; $5d6c: $00
	ld de, $2233                                     ; $5d6d: $11 $33 $22
	adc b                                            ; $5d70: $88
	nop                                              ; $5d71: $00
	sbc c                                            ; $5d72: $99
	sbc c                                            ; $5d73: $99
	ld h, [hl]                                       ; $5d74: $66
	adc b                                            ; $5d75: $88
	ld de, $9999                                     ; $5d76: $11 $99 $99
	ld [hl], a                                       ; $5d79: $77
	ld [hl], a                                       ; $5d7a: $77
	or $7f                                           ; $5d7b: $f6 $7f
	ei                                               ; $5d7d: $fb
	rst SubAFromDE                                          ; $5d7e: $df
	sbc c                                            ; $5d7f: $99
	sbc [hl]                                         ; $5d80: $9e
	inc sp                                           ; $5d81: $33
	ld a, e                                          ; $5d82: $7b
	db $e4                                           ; $5d83: $e4
	sbc [hl]                                         ; $5d84: $9e
	call z, $01be                                    ; $5d85: $cc $be $01
	add [hl]                                         ; $5d88: $86
	ld b, l                                          ; $5d89: $45
	rst $38                                          ; $5d8a: $ff
	ld c, c                                          ; $5d8b: $49
	rst $38                                          ; $5d8c: $ff
	ld c, e                                          ; $5d8d: $4b
	cp $9e                                           ; $5d8e: $fe $9e
	db $fd                                           ; $5d90: $fd
	add hl, de                                       ; $5d91: $19
	rst $38                                          ; $5d92: $ff
	rst SubAFromBC                                          ; $5d93: $e7

jr_06b_5d94:
	cp $ff                                           ; $5d94: $fe $ff
	ld hl, sp-$7b                                    ; $5d96: $f8 $85
	inc bc                                           ; $5d98: $03
	rla                                              ; $5d99: $17
	rrca                                             ; $5d9a: $0f
	dec de                                           ; $5d9b: $1b
	dec sp                                           ; $5d9c: $3b
	dec l                                            ; $5d9d: $2d
	rra                                              ; $5d9e: $1f
	ld e, $07                                        ; $5d9f: $1e $07
	rrca                                             ; $5da1: $0f
	cp l                                             ; $5da2: $bd
	rlca                                             ; $5da3: $07
	nop                                              ; $5da4: $00
	add b                                            ; $5da5: $80
	add b                                            ; $5da6: $80
	rst SubAFromDE                                          ; $5da7: $df
	ret nz                                           ; $5da8: $c0

	rst SubAFromDE                                          ; $5da9: $df
	ldh [$df], a                                     ; $5daa: $e0 $df
	ldh a, [$df]                                     ; $5dac: $f0 $df
	ld hl, sp-$67                                    ; $5dae: $f8 $99
	db $fc                                           ; $5db0: $fc
	or $ff                                           ; $5db1: $f6 $ff
	pop af                                           ; $5db3: $f1
	rst $38                                          ; $5db4: $ff
	ldh a, [rPCM34]                                  ; $5db5: $f0 $77
	cp $80                                           ; $5db7: $fe $80
	ld a, a                                          ; $5db9: $7f
	ld hl, sp+$1f                                    ; $5dba: $f8 $1f
	db $fc                                           ; $5dbc: $fc
	ld c, $fc                                        ; $5dbd: $0e $fc
	ld b, $fe                                        ; $5dbf: $06 $fe
	ld [bc], a                                       ; $5dc1: $02
	cp $03                                           ; $5dc2: $fe $03
	rst $38                                          ; $5dc4: $ff
	ld bc, $e070                                     ; $5dc5: $01 $70 $e0
	ldh a, [$30]                                     ; $5dc8: $f0 $30
	sbc b                                            ; $5dca: $98
	ld [hl], b                                       ; $5dcb: $70
	ld a, b                                          ; $5dcc: $78
	add sp, -$08                                     ; $5dcd: $e8 $f8
	add h                                            ; $5dcf: $84
	ldh a, [rP1]                                     ; $5dd0: $f0 $00
	jr nc, jr_06b_5d94                               ; $5dd2: $30 $c0

	ret nc                                           ; $5dd4: $d0

	ldh [$c0], a                                     ; $5dd5: $e0 $c0
	jr nz, @-$60                                     ; $5dd7: $20 $9e

	jr nz, @-$44                                     ; $5dd9: $20 $ba

	nop                                              ; $5ddb: $00
	add b                                            ; $5ddc: $80
	ldh [$80], a                                     ; $5ddd: $e0 $80
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	ld a, [hl]                                       ; $5de1: $7e
	adc e                                            ; $5de2: $8b
	daa                                              ; $5de3: $27
	ld l, [hl]                                       ; $5de4: $6e
	inc sp                                           ; $5de5: $33
	ld e, l                                          ; $5de6: $5d
	ccf                                              ; $5de7: $3f
	dec sp                                           ; $5de8: $3b
	rlca                                             ; $5de9: $07
	halt                                             ; $5dea: $76
	add hl, bc                                       ; $5deb: $09
	ld a, e                                          ; $5dec: $7b
	inc e                                            ; $5ded: $1c
	ld a, $3f                                        ; $5dee: $3e $3f
	dec [hl]                                         ; $5df0: $35
	cpl                                              ; $5df1: $2f
	ld a, [hl-]                                      ; $5df2: $3a
	inc e                                            ; $5df3: $1c
	rla                                              ; $5df4: $17
	inc e                                            ; $5df5: $1c
	cp a                                             ; $5df6: $bf
	cp l                                             ; $5df7: $bd
	rst GetHLinHL                                          ; $5df8: $cf
	pop hl                                           ; $5df9: $e1
	ld h, e                                          ; $5dfa: $63
	inc hl                                           ; $5dfb: $23
	sbc e                                            ; $5dfc: $9b
	ld b, b                                          ; $5dfd: $40
	jp Jump_06b_5940                                 ; $5dfe: $c3 $40 $59


	ld a, e                                          ; $5e01: $7b
	add b                                            ; $5e02: $80
	adc [hl]                                         ; $5e03: $8e
	add hl, hl                                       ; $5e04: $29
	rst $38                                          ; $5e05: $ff
	sbc c                                            ; $5e06: $99
	rst $38                                          ; $5e07: $ff
	ld a, h                                          ; $5e08: $7c
	rst $38                                          ; $5e09: $ff
	db $fc                                           ; $5e0a: $fc
	ccf                                              ; $5e0b: $3f
	db $ec                                           ; $5e0c: $ec
	ccf                                              ; $5e0d: $3f
	ld [hl], $ff                                     ; $5e0e: $36 $ff
	jp c, $fb7f                                      ; $5e10: $da $7f $fb

	ld e, a                                          ; $5e13: $5f
	push af                                          ; $5e14: $f5
	ld [hl], e                                       ; $5e15: $73
	cp $80                                           ; $5e16: $fe $80
	db $e4                                           ; $5e18: $e4
	ld a, a                                          ; $5e19: $7f
	ldh [c], a                                       ; $5e1a: $e2
	ld a, a                                          ; $5e1b: $7f
	ld d, d                                          ; $5e1c: $52
	rst $38                                          ; $5e1d: $ff
	push af                                          ; $5e1e: $f5
	db $db                                           ; $5e1f: $db
	db $eb                                           ; $5e20: $eb
	db $dd                                           ; $5e21: $dd
	db $db                                           ; $5e22: $db
	db $ed                                           ; $5e23: $ed
	or $ed                                           ; $5e24: $f6 $ed
	db $ec                                           ; $5e26: $ec
	rst FarCall                                          ; $5e27: $f7
	ld e, d                                          ; $5e28: $5a
	rst FarCall                                          ; $5e29: $f7
	ld [hl], l                                       ; $5e2a: $75
	db $db                                           ; $5e2b: $db
	ld l, e                                          ; $5e2c: $6b
	db $dd                                           ; $5e2d: $dd
	ld h, a                                          ; $5e2e: $67
	call c, $de25                                    ; $5e2f: $dc $25 $de
	ld l, e                                          ; $5e32: $6b
	sub [hl]                                         ; $5e33: $96
	ld l, [hl]                                       ; $5e34: $6e
	sub e                                            ; $5e35: $93
	or $98                                           ; $5e36: $f6 $98
	ei                                               ; $5e38: $fb
	adc a                                            ; $5e39: $8f
	rst $38                                          ; $5e3a: $ff
	inc bc                                           ; $5e3b: $03
	rst $38                                          ; $5e3c: $ff
	ld [hl], c                                       ; $5e3d: $71
	rst $38                                          ; $5e3e: $ff
	ld l, a                                          ; $5e3f: $6f
	ld b, b                                          ; $5e40: $40
	sub d                                            ; $5e41: $92
	sbc a                                            ; $5e42: $9f
	db $fc                                           ; $5e43: $fc
	inc e                                            ; $5e44: $1c
	ei                                               ; $5e45: $fb
	db $e3                                           ; $5e46: $e3
	rst $38                                          ; $5e47: $ff
	rst $38                                          ; $5e48: $ff
	db $fc                                           ; $5e49: $fc
	add [hl]                                         ; $5e4a: $86
	ld bc, $0f13                                     ; $5e4b: $01 $13 $0f
	ld a, [de]                                       ; $5e4e: $1a
	ld d, e                                          ; $5e4f: $53
	ld b, b                                          ; $5e50: $40
	ld d, a                                          ; $5e51: $57
	ld h, b                                          ; $5e52: $60
	ld a, e                                          ; $5e53: $7b
	cp $9c                                           ; $5e54: $fe $9c
	ldh [$80], a                                     ; $5e56: $e0 $80
	ldh [rBGP], a                                    ; $5e58: $e0 $47
	ld h, b                                          ; $5e5a: $60
	sub d                                            ; $5e5b: $92
	ld a, [hl]                                       ; $5e5c: $7e
	inc hl                                           ; $5e5d: $23
	ld e, e                                          ; $5e5e: $5b
	dec a                                            ; $5e5f: $3d
	daa                                              ; $5e60: $27
	rra                                              ; $5e61: $1f
	ld a, l                                          ; $5e62: $7d
	inc bc                                           ; $5e63: $03
	ld h, a                                          ; $5e64: $67
	jr jr_06b_5e83                                   ; $5e65: $18 $1c

	ccf                                              ; $5e67: $3f
	scf                                              ; $5e68: $37
	ld a, e                                          ; $5e69: $7b
	ld h, b                                          ; $5e6a: $60
	sbc [hl]                                         ; $5e6b: $9e
	rrca                                             ; $5e6c: $0f
	inc sp                                           ; $5e6d: $33
	ld h, b                                          ; $5e6e: $60
	sbc [hl]                                         ; $5e6f: $9e
	db $fc                                           ; $5e70: $fc
	dec hl                                           ; $5e71: $2b
	ld h, b                                          ; $5e72: $60
	ld h, a                                          ; $5e73: $67
	add b                                            ; $5e74: $80
	sub b                                            ; $5e75: $90
	ld e, $f9                                        ; $5e76: $1e $f9
	db $e3                                           ; $5e78: $e3
	rst $38                                          ; $5e79: $ff
	db $fd                                           ; $5e7a: $fd
	cp $87                                           ; $5e7b: $fe $87
	nop                                              ; $5e7d: $00
	ld e, $01                                        ; $5e7e: $1e $01
	cpl                                              ; $5e80: $2f
	rra                                              ; $5e81: $1f
	dec e                                            ; $5e82: $1d

jr_06b_5e83:
	ccf                                              ; $5e83: $3f
	rra                                              ; $5e84: $1f
	ld d, e                                          ; $5e85: $53
	add b                                            ; $5e86: $80
	sub a                                            ; $5e87: $97
	ld hl, sp+$10                                    ; $5e88: $f8 $10
	sbc b                                            ; $5e8a: $98
	ld l, b                                          ; $5e8b: $68
	ld a, b                                          ; $5e8c: $78
	db $e4                                           ; $5e8d: $e4
	ldh a, [$80]                                     ; $5e8e: $f0 $80
	ld [hl], a                                       ; $5e90: $77
	ld a, [hl]                                       ; $5e91: $7e
	sbc e                                            ; $5e92: $9b
	ld b, b                                          ; $5e93: $40
	ldh [$a0], a                                     ; $5e94: $e0 $a0
	ret nz                                           ; $5e96: $c0

	cp a                                             ; $5e97: $bf
	ret nz                                           ; $5e98: $c0

	nop                                              ; $5e99: $00
	ld d, a                                          ; $5e9a: $57
	add b                                            ; $5e9b: $80
	adc a                                            ; $5e9c: $8f
	ld l, a                                          ; $5e9d: $6f
	ld de, $3f1f                                     ; $5e9e: $11 $1f $3f
	ld [hl], c                                       ; $5ea1: $71
	rrca                                             ; $5ea2: $0f
	ld a, a                                          ; $5ea3: $7f
	nop                                              ; $5ea4: $00
	inc sp                                           ; $5ea5: $33
	inc c                                            ; $5ea6: $0c
	inc c                                            ; $5ea7: $0c
	ccf                                              ; $5ea8: $3f
	dec sp                                           ; $5ea9: $3b
	ccf                                              ; $5eaa: $3f
	dec c                                            ; $5eab: $0d
	ld e, $1f                                        ; $5eac: $1e $1f
	add b                                            ; $5eae: $80
	sbc e                                            ; $5eaf: $9b
	or [hl]                                          ; $5eb0: $b6
	ld a, a                                          ; $5eb1: $7f
	ld e, d                                          ; $5eb2: $5a
	rst $38                                          ; $5eb3: $ff
	daa                                              ; $5eb4: $27
	add b                                            ; $5eb5: $80
	sbc b                                            ; $5eb6: $98
	ld sp, hl                                        ; $5eb7: $f9
	rst SubAFromBC                                          ; $5eb8: $e7
	rst $38                                          ; $5eb9: $ff
	cp $87                                           ; $5eba: $fe $87
	jr c, jr_06b_5edd                                ; $5ebc: $38 $1f

	cp a                                             ; $5ebe: $bf
	ccf                                              ; $5ebf: $3f
	ld d, $9c                                        ; $5ec0: $16 $9c
	add hl, sp                                       ; $5ec2: $39
	rra                                              ; $5ec3: $1f
	rrca                                             ; $5ec4: $0f
	daa                                              ; $5ec5: $27
	add b                                            ; $5ec6: $80
	ld a, a                                          ; $5ec7: $7f
	adc b                                            ; $5ec8: $88
	ld a, a                                          ; $5ec9: $7f
	cp $7e                                           ; $5eca: $fe $7e
	ld l, $7f                                        ; $5ecc: $2e $7f
	rst SubAFromBC                                          ; $5ece: $e7
	ld c, a                                          ; $5ecf: $4f
	add b                                            ; $5ed0: $80
	sbc h                                            ; $5ed1: $9c
	jr jr_06b_5f13                                   ; $5ed2: $18 $3f

	ld [hl], a                                       ; $5ed4: $77
	ld a, e                                          ; $5ed5: $7b
	add b                                            ; $5ed6: $80
	ld a, a                                          ; $5ed7: $7f
	add $7f                                          ; $5ed8: $c6 $7f
	cp $9b                                           ; $5eda: $fe $9b
	dec [hl]                                         ; $5edc: $35

jr_06b_5edd:
	dec sp                                           ; $5edd: $3b
	ld c, $1f                                        ; $5ede: $0e $1f
	rla                                              ; $5ee0: $17
	add b                                            ; $5ee1: $80
	sbc [hl]                                         ; $5ee2: $9e
	jp c, $804b                                      ; $5ee3: $da $4b $80

	rst $38                                          ; $5ee6: $ff
	sbc h                                            ; $5ee7: $9c
	inc bc                                           ; $5ee8: $03
	ld bc, $bd01                                     ; $5ee9: $01 $01 $bd
	nop                                              ; $5eec: $00
	ld bc, $4000                                     ; $5eed: $01 $00 $40
	sub a                                            ; $5ef0: $97
	add b                                            ; $5ef1: $80
	ld hl, sp-$20                                    ; $5ef2: $f8 $e0
	cp d                                             ; $5ef4: $ba
	ld a, h                                          ; $5ef5: $7c
	rst SubAFromDE                                          ; $5ef6: $df
	ccf                                              ; $5ef7: $3f
	cpl                                              ; $5ef8: $2f
	ld a, e                                          ; $5ef9: $7b
	ld bc, $069e                                     ; $5efa: $01 $9e $06
	ld [hl], e                                       ; $5efd: $73
	ld [$9c7f], a                                    ; $5efe: $ea $7f $9c
	sub d                                            ; $5f01: $92
	inc bc                                           ; $5f02: $03
	nop                                              ; $5f03: $00
	inc bc                                           ; $5f04: $03
	ld b, b                                          ; $5f05: $40
	add a                                            ; $5f06: $87
	ld bc, $0305                                     ; $5f07: $01 $05 $03
	add e                                            ; $5f0a: $83
	rlca                                             ; $5f0b: $07
	rlca                                             ; $5f0c: $07
	rrca                                             ; $5f0d: $0f
	rrca                                             ; $5f0e: $0f
	ld a, d                                          ; $5f0f: $7a
	and $8f                                          ; $5f10: $e6 $8f
	dec a                                            ; $5f12: $3d

jr_06b_5f13:
	ld a, a                                          ; $5f13: $7f
	db $ed                                           ; $5f14: $ed
	rst $38                                          ; $5f15: $ff
	call $cbff                                       ; $5f16: $cd $ff $cb
	rst $38                                          ; $5f19: $ff
	ld c, d                                          ; $5f1a: $4a
	rst $38                                          ; $5f1b: $ff
	rst FarCall                                          ; $5f1c: $f7
	ld a, a                                          ; $5f1d: $7f
	adc $7f                                          ; $5f1e: $ce $7f
	ld a, b                                          ; $5f20: $78
	ld a, a                                          ; $5f21: $7f
	ld a, e                                          ; $5f22: $7b
	add $7f                                          ; $5f23: $c6 $7f
	cp a                                             ; $5f25: $bf
	rlca                                             ; $5f26: $07
	ret nz                                           ; $5f27: $c0

	sbc [hl]                                         ; $5f28: $9e
	add c                                            ; $5f29: $81
	rrca                                             ; $5f2a: $0f
	ret nz                                           ; $5f2b: $c0

	ld [hl], e                                       ; $5f2c: $73
	cp a                                             ; $5f2d: $bf
	cp a                                             ; $5f2e: $bf

jr_06b_5f2f:
	ld bc, $1f40                                     ; $5f2f: $01 $40 $1f
	ret nz                                           ; $5f32: $c0

	rst SubAFromDE                                          ; $5f33: $df
	add e                                            ; $5f34: $83
	sbc l                                            ; $5f35: $9d
	rlca                                             ; $5f36: $07
	add a                                            ; $5f37: $87
	rla                                              ; $5f38: $17
	ret nz                                           ; $5f39: $c0

	ld a, e                                          ; $5f3a: $7b
	db $d3                                           ; $5f3b: $d3
	rra                                              ; $5f3c: $1f
	ret nz                                           ; $5f3d: $c0

	sbc h                                            ; $5f3e: $9c
	rst JumpTable                                          ; $5f3f: $c7
	add c                                            ; $5f40: $81
	add l                                            ; $5f41: $85
	inc hl                                           ; $5f42: $23
	ret nz                                           ; $5f43: $c0

	ret nc                                           ; $5f44: $d0

	ld bc, $4596                                     ; $5f45: $01 $96 $45
	rst $38                                          ; $5f48: $ff
	ld c, c                                          ; $5f49: $49
	rst $38                                          ; $5f4a: $ff
	ld c, e                                          ; $5f4b: $4b
	cp $9f                                           ; $5f4c: $fe $9f
	db $fc                                           ; $5f4e: $fc
	jr jr_06b_5f2f                                   ; $5f4f: $18 $de

	rst $38                                          ; $5f51: $ff
	sbc h                                            ; $5f52: $9c
	rst AddAOntoHL                                          ; $5f53: $ef
	ldh a, [hDisp0_OBP1]                                     ; $5f54: $f0 $87
	cp [hl]                                          ; $5f56: $be
	rra                                              ; $5f57: $1f
	ccf                                              ; $5f58: $3f
	dec de                                           ; $5f59: $1b
	sbc h                                            ; $5f5a: $9c
	inc a                                            ; $5f5b: $3c
	rla                                              ; $5f5c: $17
	rrca                                             ; $5f5d: $0f
	ei                                               ; $5f5e: $fb
	adc [hl]                                         ; $5f5f: $8e
	add b                                            ; $5f60: $80
	nop                                              ; $5f61: $00
	add b                                            ; $5f62: $80
	ret nz                                           ; $5f63: $c0

	ret nz                                           ; $5f64: $c0

	ldh [$e0], a                                     ; $5f65: $e0 $e0
	ldh a, [$f0]                                     ; $5f67: $f0 $f0
	ld hl, sp-$08                                    ; $5f69: $f8 $f8
	db $fc                                           ; $5f6b: $fc
	or $ff                                           ; $5f6c: $f6 $ff
	pop af                                           ; $5f6e: $f1
	rst $38                                          ; $5f6f: $ff
	ldh a, [rPCM34]                                  ; $5f70: $f0 $77
	cp $83                                           ; $5f72: $fe $83
	ld a, a                                          ; $5f74: $7f
	ld hl, sp+$1f                                    ; $5f75: $f8 $1f
	db $fc                                           ; $5f77: $fc
	ld c, $fc                                        ; $5f78: $0e $fc
	ld b, $fe                                        ; $5f7a: $06 $fe
	ld [bc], a                                       ; $5f7c: $02
	cp $03                                           ; $5f7d: $fe $03
	rst $38                                          ; $5f7f: $ff
	ld bc, $e070                                     ; $5f80: $01 $70 $e0
	ldh a, [$30]                                     ; $5f83: $f0 $30
	cp b                                             ; $5f85: $b8
	db $10                                           ; $5f86: $10
	jr jr_06b_5f91                                   ; $5f87: $18 $08

	ld [$8084], sp                                   ; $5f89: $08 $84 $80
	ldh [$f0], a                                     ; $5f8c: $e0 $f0
	ld h, b                                          ; $5f8e: $60
	ldh a, [$be]                                     ; $5f8f: $f0 $be

jr_06b_5f91:
	ldh [$e0], a                                     ; $5f91: $e0 $e0
	ld b, b                                          ; $5f93: $40
	sbc h                                            ; $5f94: $9c
	ldh [$80], a                                     ; $5f95: $e0 $80
	ret nz                                           ; $5f97: $c0

	ld sp, hl                                        ; $5f98: $f9
	sub h                                            ; $5f99: $94
	ld a, [hl]                                       ; $5f9a: $7e
	daa                                              ; $5f9b: $27
	ld a, [hl]                                       ; $5f9c: $7e
	inc hl                                           ; $5f9d: $23
	ld a, c                                          ; $5f9e: $79
	rlca                                             ; $5f9f: $07
	cpl                                              ; $5fa0: $2f
	rra                                              ; $5fa1: $1f
	ld d, a                                          ; $5fa2: $57
	jr c, jr_06b_6024                                ; $5fa3: $38 $7f

	cp [hl]                                          ; $5fa5: $be
	ccf                                              ; $5fa6: $3f
	ccf                                              ; $5fa7: $3f
	dec l                                            ; $5fa8: $2d
	sbc e                                            ; $5fa9: $9b
	inc sp                                           ; $5faa: $33
	ld e, $1f                                        ; $5fab: $1e $1f
	add e                                            ; $5fad: $83
	cp l                                             ; $5fae: $bd
	pop bc                                           ; $5faf: $c1
	pop hl                                           ; $5fb0: $e1
	ld h, e                                          ; $5fb1: $63
	inc hl                                           ; $5fb2: $23
	sbc e                                            ; $5fb3: $9b
	ld b, b                                          ; $5fb4: $40
	jp Jump_06b_5940                                 ; $5fb5: $c3 $40 $59


	ld a, e                                          ; $5fb8: $7b
	add b                                            ; $5fb9: $80
	adc [hl]                                         ; $5fba: $8e
	add hl, hl                                       ; $5fbb: $29
	rst $38                                          ; $5fbc: $ff
	sbc c                                            ; $5fbd: $99
	rst $38                                          ; $5fbe: $ff
	db $fc                                           ; $5fbf: $fc
	ld a, a                                          ; $5fc0: $7f
	db $fc                                           ; $5fc1: $fc
	ccf                                              ; $5fc2: $3f
	db $ec                                           ; $5fc3: $ec
	ccf                                              ; $5fc4: $3f
	or [hl]                                          ; $5fc5: $b6
	ld a, a                                          ; $5fc6: $7f
	ld e, d                                          ; $5fc7: $5a
	rst $38                                          ; $5fc8: $ff
	ei                                               ; $5fc9: $fb
	ld e, a                                          ; $5fca: $5f
	push af                                          ; $5fcb: $f5
	ld [hl], e                                       ; $5fcc: $73
	cp $80                                           ; $5fcd: $fe $80
	db $e4                                           ; $5fcf: $e4
	ld a, a                                          ; $5fd0: $7f
	ldh [c], a                                       ; $5fd1: $e2
	ld a, a                                          ; $5fd2: $7f
	ld d, d                                          ; $5fd3: $52
	rst $38                                          ; $5fd4: $ff
	push af                                          ; $5fd5: $f5
	db $db                                           ; $5fd6: $db
	db $eb                                           ; $5fd7: $eb
	db $dd                                           ; $5fd8: $dd
	db $db                                           ; $5fd9: $db
	db $ed                                           ; $5fda: $ed
	or $ed                                           ; $5fdb: $f6 $ed
	db $ec                                           ; $5fdd: $ec
	rst FarCall                                          ; $5fde: $f7
	ld e, d                                          ; $5fdf: $5a
	rst FarCall                                          ; $5fe0: $f7
	ld [hl], l                                       ; $5fe1: $75
	db $db                                           ; $5fe2: $db
	ld l, e                                          ; $5fe3: $6b
	db $dd                                           ; $5fe4: $dd
	ld h, a                                          ; $5fe5: $67
	call c, $de25                                    ; $5fe6: $dc $25 $de
	ld l, e                                          ; $5fe9: $6b
	sub [hl]                                         ; $5fea: $96
	ld l, [hl]                                       ; $5feb: $6e
	sub e                                            ; $5fec: $93
	or $98                                           ; $5fed: $f6 $98
	ei                                               ; $5fef: $fb
	adc a                                            ; $5ff0: $8f
	rst $38                                          ; $5ff1: $ff
	inc bc                                           ; $5ff2: $03
	rst $38                                          ; $5ff3: $ff
	ld [hl], c                                       ; $5ff4: $71
	rst $38                                          ; $5ff5: $ff
	ccf                                              ; $5ff6: $3f
	ld b, b                                          ; $5ff7: $40
	sbc c                                            ; $5ff8: $99
	dec [hl]                                         ; $5ff9: $35
	rrca                                             ; $5ffa: $0f
	rrca                                             ; $5ffb: $0f
	ccf                                              ; $5ffc: $3f
	ld a, [de]                                       ; $5ffd: $1a
	rlca                                             ; $5ffe: $07
	ld h, a                                          ; $5fff: $67
	ld b, b                                          ; $6000: $40
	ld h, e                                          ; $6001: $63
	ld h, b                                          ; $6002: $60
	sbc e                                            ; $6003: $9b
	db $e4                                           ; $6004: $e4
	ldh a, [$e0]                                     ; $6005: $f0 $e0
	ldh a, [$be]                                     ; $6007: $f0 $be
	ldh a, [$e0]                                     ; $6009: $f0 $e0
	ret nz                                           ; $600b: $c0

	ld a, e                                          ; $600c: $7b
	ld h, d                                          ; $600d: $62
	ld c, a                                          ; $600e: $4f
	ld h, b                                          ; $600f: $60
	sbc d                                            ; $6010: $9a
	ld h, e                                          ; $6011: $63
	rra                                              ; $6012: $1f
	inc e                                            ; $6013: $1c
	ccf                                              ; $6014: $3f
	ld a, a                                          ; $6015: $7f
	cp a                                             ; $6016: $bf
	ld a, a                                          ; $6017: $7f
	inc sp                                           ; $6018: $33
	rst SubAFromDE                                          ; $6019: $df
	inc c                                            ; $601a: $0c
	sbc d                                            ; $601b: $9a
	ccf                                              ; $601c: $3f
	dec sp                                           ; $601d: $3b
	ccf                                              ; $601e: $3f
	dec c                                            ; $601f: $0d
	ld e, $03                                        ; $6020: $1e $03
	ld h, b                                          ; $6022: $60
	ld e, e                                          ; $6023: $5b

jr_06b_6024:
	ld h, b                                          ; $6024: $60
	ld l, a                                          ; $6025: $6f
	add b                                            ; $6026: $80
	adc l                                            ; $6027: $8d
	sbc [hl]                                         ; $6028: $9e
	db $fd                                           ; $6029: $fd
	dec de                                           ; $602a: $1b
	rst $38                                          ; $602b: $ff
	db $fd                                           ; $602c: $fd
	cp $ef                                           ; $602d: $fe $ef
	ldh a, [hDisp0_OBP0]                                     ; $602f: $f0 $86
	ld bc, $071b                                     ; $6031: $01 $1b $07
	inc e                                            ; $6034: $1c
	dec a                                            ; $6035: $3d
	ld h, $17                                        ; $6036: $26 $17
	rra                                              ; $6038: $1f
	inc bc                                           ; $6039: $03
	ld c, e                                          ; $603a: $4b
	add b                                            ; $603b: $80
	rst SubAFromDE                                          ; $603c: $df
	ret z                                            ; $603d: $c8

	ld a, a                                          ; $603e: $7f
	add b                                            ; $603f: $80
	sbc e                                            ; $6040: $9b
	jr nz, @-$0e                                     ; $6041: $20 $f0

	nop                                              ; $6043: $00
	jr nc, jr_06b_60c0                               ; $6044: $30 $7a

	or d                                             ; $6046: $b2
	sbc [hl]                                         ; $6047: $9e
	and b                                            ; $6048: $a0
	sbc $80                                          ; $6049: $de $80
	cp h                                             ; $604b: $bc
	add b                                            ; $604c: $80
	nop                                              ; $604d: $00
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00
	ld [hl], a                                       ; $6051: $77
	add b                                            ; $6052: $80
	adc a                                            ; $6053: $8f
	ld l, a                                          ; $6054: $6f
	rra                                              ; $6055: $1f
	ld d, $39                                        ; $6056: $16 $39
	ld a, a                                          ; $6058: $7f
	nop                                              ; $6059: $00
	ld h, a                                          ; $605a: $67
	jr jr_06b_607a                                   ; $605b: $18 $1d

	ld a, $37                                        ; $605d: $3e $37
	cpl                                              ; $605f: $2f
	ld a, [hl-]                                      ; $6060: $3a
	inc e                                            ; $6061: $1c
	dec bc                                           ; $6062: $0b
	inc e                                            ; $6063: $1c
	rra                                              ; $6064: $1f
	add b                                            ; $6065: $80
	sbc e                                            ; $6066: $9b
	ld [hl], $ff                                     ; $6067: $36 $ff
	jp c, $377f                                      ; $6069: $da $7f $37

	add b                                            ; $606c: $80
	adc [hl]                                         ; $606d: $8e
	sbc h                                            ; $606e: $9c
	rst $38                                          ; $606f: $ff
	dec de                                           ; $6070: $1b
	rst $38                                          ; $6071: $ff
	rst $38                                          ; $6072: $ff
	db $fc                                           ; $6073: $fc
	cp $e1                                           ; $6074: $fe $e1
	add a                                            ; $6076: $87
	rlca                                             ; $6077: $07
	dec e                                            ; $6078: $1d
	rrca                                             ; $6079: $0f

jr_06b_607a:
	ld e, c                                          ; $607a: $59
	dec a                                            ; $607b: $3d
	ld d, $07                                        ; $607c: $16 $07
	rrca                                             ; $607e: $0f
	inc sp                                           ; $607f: $33
	add b                                            ; $6080: $80
	sbc c                                            ; $6081: $99
	ld [hl], b                                       ; $6082: $70
	add b                                            ; $6083: $80
	ret nc                                           ; $6084: $d0

	ldh [rLCDC], a                                   ; $6085: $e0 $40
	and b                                            ; $6087: $a0
	ld b, a                                          ; $6088: $47
	add b                                            ; $6089: $80
	sub d                                            ; $608a: $92
	ld a, d                                          ; $608b: $7a
	daa                                              ; $608c: $27
	ld l, a                                          ; $608d: $6f
	rra                                              ; $608e: $1f
	rla                                              ; $608f: $17
	jr c, jr_06b_6101                                ; $6090: $38 $6f

	db $10                                           ; $6092: $10
	ld a, c                                          ; $6093: $79
	ld e, $3f                                        ; $6094: $1e $3f
	ccf                                              ; $6096: $3f
	dec [hl]                                         ; $6097: $35
	ld a, e                                          ; $6098: $7b
	add b                                            ; $6099: $80
	sbc [hl]                                         ; $609a: $9e
	rla                                              ; $609b: $17
	inc hl                                           ; $609c: $23
	add b                                            ; $609d: $80
	sbc e                                            ; $609e: $9b
	xor h                                            ; $609f: $ac
	rst $38                                          ; $60a0: $ff
	or [hl]                                          ; $60a1: $b6
	ld a, a                                          ; $60a2: $7f
	ld b, a                                          ; $60a3: $47
	add b                                            ; $60a4: $80
	rst $38                                          ; $60a5: $ff
	sbc h                                            ; $60a6: $9c
	dec b                                            ; $60a7: $05
	inc bc                                           ; $60a8: $03
	ld bc, $00bd                                     ; $60a9: $01 $bd $00
	ld bc, $4000                                     ; $60ac: $01 $00 $40
	sub d                                            ; $60af: $92
	add b                                            ; $60b0: $80
	ld hl, sp-$20                                    ; $60b1: $f8 $e0
	cp d                                             ; $60b3: $ba
	ld a, h                                          ; $60b4: $7c
	rst SubAFromDE                                          ; $60b5: $df
	ccf                                              ; $60b6: $3f
	cpl                                              ; $60b7: $2f
	rra                                              ; $60b8: $1f
	rlca                                             ; $60b9: $07
	rrca                                             ; $60ba: $0f
	ld b, $01                                        ; $60bb: $06 $01
	ld [hl], a                                       ; $60bd: $77
	xor $7f                                          ; $60be: $ee $7f

jr_06b_60c0:
	sbc c                                            ; $60c0: $99
	ld a, a                                          ; $60c1: $7f
	ld [hl], a                                       ; $60c2: $77
	add b                                            ; $60c3: $80
	inc bc                                           ; $60c4: $03
	ld b, b                                          ; $60c5: $40
	add a                                            ; $60c6: $87
	ld bc, $0305                                     ; $60c7: $01 $05 $03
	add e                                            ; $60ca: $83
	rlca                                             ; $60cb: $07
	rlca                                             ; $60cc: $07
	rrca                                             ; $60cd: $0f
	rrca                                             ; $60ce: $0f
	rra                                              ; $60cf: $1f
	dec e                                            ; $60d0: $1d
	ccf                                              ; $60d1: $3f
	dec a                                            ; $60d2: $3d
	ld a, a                                          ; $60d3: $7f
	db $ed                                           ; $60d4: $ed
	rst $38                                          ; $60d5: $ff
	call $cbff                                       ; $60d6: $cd $ff $cb
	rst $38                                          ; $60d9: $ff
	ld c, d                                          ; $60da: $4a
	rst $38                                          ; $60db: $ff
	rst FarCall                                          ; $60dc: $f7
	ld a, a                                          ; $60dd: $7f
	adc $7f                                          ; $60de: $ce $7f
	ld a, b                                          ; $60e0: $78
	ld a, a                                          ; $60e1: $7f
	nop                                              ; $60e2: $00
	ld a, a                                          ; $60e3: $7f
	ldh [$9d], a                                     ; $60e4: $e0 $9d
	rlca                                             ; $60e6: $07
	ld [bc], a                                       ; $60e7: $02
	ld [hl], e                                       ; $60e8: $73
	call nc, $fc7f                                   ; $60e9: $d4 $7f $fc
	inc hl                                           ; $60ec: $23
	ret nz                                           ; $60ed: $c0

	sbc c                                            ; $60ee: $99
	add c                                            ; $60ef: $81
	add l                                            ; $60f0: $85
	inc bc                                           ; $60f1: $03
	inc bc                                           ; $60f2: $03
	rlca                                             ; $60f3: $07
	add a                                            ; $60f4: $87
	inc hl                                           ; $60f5: $23
	ret nz                                           ; $60f6: $c0

	ld a, a                                          ; $60f7: $7f
	and d                                            ; $60f8: $a2
	ld a, a                                          ; $60f9: $7f
	cp [hl]                                          ; $60fa: $be
	db $fd                                           ; $60fb: $fd
	sbc [hl]                                         ; $60fc: $9e
	ld b, c                                          ; $60fd: $41
	dec hl                                           ; $60fe: $2b
	ret nz                                           ; $60ff: $c0

	sbc [hl]                                         ; $6100: $9e

jr_06b_6101:
	rst JumpTable                                          ; $6101: $c7
	ld [hl], e                                       ; $6102: $73
	ret nz                                           ; $6103: $c0

	ld a, a                                          ; $6104: $7f
	db $ec                                           ; $6105: $ec
	sbc [hl]                                         ; $6106: $9e
	adc a                                            ; $6107: $8f
	inc hl                                           ; $6108: $23
	ret nz                                           ; $6109: $c0

	ld a, a                                          ; $610a: $7f
	dec a                                            ; $610b: $3d
	ld [hl], a                                       ; $610c: $77
	jp nc, $c01b                                     ; $610d: $d2 $1b $c0

	rst SubAFromDE                                          ; $6110: $df
	add e                                            ; $6111: $83
	dec hl                                           ; $6112: $2b
	ret nz                                           ; $6113: $c0

	jp nz, $8701                                     ; $6114: $c2 $01 $87

	ld b, l                                          ; $6117: $45
	rst $38                                          ; $6118: $ff
	ld c, c                                          ; $6119: $49
	rst $38                                          ; $611a: $ff
	ld c, e                                          ; $611b: $4b
	cp $9f                                           ; $611c: $fe $9f
	db $fc                                           ; $611e: $fc
	inc de                                           ; $611f: $13
	rst $38                                          ; $6120: $ff
	db $fc                                           ; $6121: $fc
	rst $38                                          ; $6122: $ff
	rst $38                                          ; $6123: $ff
	ldh [hDisp0_BGP], a                                     ; $6124: $e0 $85
	inc bc                                           ; $6126: $03
	rla                                              ; $6127: $17
	rrca                                             ; $6128: $0f
	add hl, de                                       ; $6129: $19
	dec a                                            ; $612a: $3d
	ld h, $17                                        ; $612b: $26 $17
	rra                                              ; $612d: $1f
	inc bc                                           ; $612e: $03
	ei                                               ; $612f: $fb
	adc [hl]                                         ; $6130: $8e
	add b                                            ; $6131: $80
	nop                                              ; $6132: $00
	add b                                            ; $6133: $80
	ret nz                                           ; $6134: $c0

	ret nz                                           ; $6135: $c0

	ldh [$e0], a                                     ; $6136: $e0 $e0
	ldh a, [$f0]                                     ; $6138: $f0 $f0
	ld hl, sp-$08                                    ; $613a: $f8 $f8
	db $fc                                           ; $613c: $fc
	or $ff                                           ; $613d: $f6 $ff
	pop af                                           ; $613f: $f1
	rst $38                                          ; $6140: $ff
	ldh a, [rPCM34]                                  ; $6141: $f0 $77
	cp $80                                           ; $6143: $fe $80
	ld a, a                                          ; $6145: $7f
	ld hl, sp+$1f                                    ; $6146: $f8 $1f
	db $fc                                           ; $6148: $fc
	ld c, $fc                                        ; $6149: $0e $fc
	ld b, $fe                                        ; $614b: $06 $fe
	ld [bc], a                                       ; $614d: $02
	cp $03                                           ; $614e: $fe $03
	rst $38                                          ; $6150: $ff
	ld bc, $e070                                     ; $6151: $01 $70 $e0
	ldh a, [$30]                                     ; $6154: $f0 $30
	cp b                                             ; $6156: $b8
	db $10                                           ; $6157: $10
	jr @+$0a                                         ; $6158: $18 $08

	add sp, -$1c                                     ; $615a: $e8 $e4
	db $10                                           ; $615c: $10
	ldh [$30], a                                     ; $615d: $e0 $30
	ret nz                                           ; $615f: $c0

	ret nc                                           ; $6160: $d0

	ldh [$60], a                                     ; $6161: $e0 $60
	ret nz                                           ; $6163: $c0

	sbc [hl]                                         ; $6164: $9e
	and b                                            ; $6165: $a0
	sbc $80                                          ; $6166: $de $80
	ld a, e                                          ; $6168: $7b
	rst JumpTable                                          ; $6169: $c7
	ld a, [$7e80]                                    ; $616a: $fa $80 $7e
	daa                                              ; $616d: $27
	ld a, [hl]                                       ; $616e: $7e
	inc hl                                           ; $616f: $23
	ld [hl], a                                       ; $6170: $77
	rrca                                             ; $6171: $0f
	jr jr_06b_61b3                                   ; $6172: $18 $3f

	ld a, a                                          ; $6174: $7f
	nop                                              ; $6175: $00
	ld a, e                                          ; $6176: $7b
	inc e                                            ; $6177: $1c
	ld e, $3f                                        ; $6178: $1e $3f
	dec [hl]                                         ; $617a: $35
	cpl                                              ; $617b: $2f
	ld a, [hl-]                                      ; $617c: $3a
	inc e                                            ; $617d: $1c
	rla                                              ; $617e: $17
	inc e                                            ; $617f: $1c
	add e                                            ; $6180: $83
	nop                                              ; $6181: $00
	pop bc                                           ; $6182: $c1
	nop                                              ; $6183: $00
	pop hl                                           ; $6184: $e1
	nop                                              ; $6185: $00
	ld h, e                                          ; $6186: $63
	nop                                              ; $6187: $00
	inc hl                                           ; $6188: $23
	ld b, b                                          ; $6189: $40
	jp Jump_06b_409d                                 ; $618a: $c3 $9d $40


	ld e, c                                          ; $618d: $59
	ld a, e                                          ; $618e: $7b
	add b                                            ; $618f: $80
	adc [hl]                                         ; $6190: $8e
	add hl, hl                                       ; $6191: $29
	rst $38                                          ; $6192: $ff
	sbc c                                            ; $6193: $99
	rst $38                                          ; $6194: $ff
	db $fc                                           ; $6195: $fc
	ld a, a                                          ; $6196: $7f
	db $fc                                           ; $6197: $fc
	ccf                                              ; $6198: $3f
	db $ec                                           ; $6199: $ec
	ccf                                              ; $619a: $3f
	ld [hl], $ff                                     ; $619b: $36 $ff
	jp c, $fb7f                                      ; $619d: $da $7f $fb

	ld e, a                                          ; $61a0: $5f
	push af                                          ; $61a1: $f5
	ld [hl], e                                       ; $61a2: $73
	cp $80                                           ; $61a3: $fe $80
	db $e4                                           ; $61a5: $e4
	ld a, a                                          ; $61a6: $7f
	ldh [c], a                                       ; $61a7: $e2
	ld a, a                                          ; $61a8: $7f
	ld d, d                                          ; $61a9: $52
	rst $38                                          ; $61aa: $ff
	push af                                          ; $61ab: $f5
	db $db                                           ; $61ac: $db
	db $eb                                           ; $61ad: $eb
	db $dd                                           ; $61ae: $dd
	db $db                                           ; $61af: $db
	db $ed                                           ; $61b0: $ed
	or $ed                                           ; $61b1: $f6 $ed

jr_06b_61b3:
	db $ec                                           ; $61b3: $ec
	rst FarCall                                          ; $61b4: $f7
	ld e, d                                          ; $61b5: $5a
	rst FarCall                                          ; $61b6: $f7
	ld [hl], l                                       ; $61b7: $75
	db $db                                           ; $61b8: $db
	ld l, e                                          ; $61b9: $6b
	db $dd                                           ; $61ba: $dd
	ld h, a                                          ; $61bb: $67
	call c, $de25                                    ; $61bc: $dc $25 $de
	ld l, e                                          ; $61bf: $6b
	sub [hl]                                         ; $61c0: $96
	ld l, [hl]                                       ; $61c1: $6e
	sub e                                            ; $61c2: $93
	or $98                                           ; $61c3: $f6 $98
	ei                                               ; $61c5: $fb
	adc a                                            ; $61c6: $8f
	rst $38                                          ; $61c7: $ff
	inc bc                                           ; $61c8: $03
	rst $38                                          ; $61c9: $ff
	ld [hl], c                                       ; $61ca: $71
	rst $38                                          ; $61cb: $ff
	ld h, a                                          ; $61cc: $67
	ld b, b                                          ; $61cd: $40
	sub h                                            ; $61ce: $94
	dec de                                           ; $61cf: $1b
	rst FarCall                                          ; $61d0: $f7
	db $fc                                           ; $61d1: $fc
	rst $38                                          ; $61d2: $ff
	rst SubAFromBC                                          ; $61d3: $e7
	ld hl, sp-$79                                    ; $61d4: $f8 $87
	nop                                              ; $61d6: $00
	dec de                                           ; $61d7: $1b
	rlca                                             ; $61d8: $07
	inc c                                            ; $61d9: $0c
	ld d, e                                          ; $61da: $53
	ld b, b                                          ; $61db: $40
	ld d, a                                          ; $61dc: $57
	ld h, b                                          ; $61dd: $60
	sbc h                                            ; $61de: $9c
	ldh a, [rP1]                                     ; $61df: $f0 $00
	jr nc, jr_06b_625e                               ; $61e1: $30 $7b

	ld [hl-], a                                      ; $61e3: $32
	sbc l                                            ; $61e4: $9d
	and b                                            ; $61e5: $a0
	ret nz                                           ; $61e6: $c0

	cpl                                              ; $61e7: $2f
	ld h, b                                          ; $61e8: $60
	sbc d                                            ; $61e9: $9a
	ld h, a                                          ; $61ea: $67
	jr jr_06b_620a                                   ; $61eb: $18 $1d

	ld a, $37                                        ; $61ed: $3e $37
	ld a, e                                          ; $61ef: $7b
	ld h, b                                          ; $61f0: $60
	sbc [hl]                                         ; $61f1: $9e
	dec bc                                           ; $61f2: $0b
	inc sp                                           ; $61f3: $33
	ld h, b                                          ; $61f4: $60
	sbc l                                            ; $61f5: $9d
	ld a, h                                          ; $61f6: $7c
	rst $38                                          ; $61f7: $ff
	cpl                                              ; $61f8: $2f
	ld h, b                                          ; $61f9: $60
	ld h, a                                          ; $61fa: $67
	add b                                            ; $61fb: $80
	adc a                                            ; $61fc: $8f
	inc e                                            ; $61fd: $1c
	di                                               ; $61fe: $f3
	rst $38                                          ; $61ff: $ff
	rst $38                                          ; $6200: $ff
	db $e3                                           ; $6201: $e3
	db $fc                                           ; $6202: $fc
	add a                                            ; $6203: $87
	nop                                              ; $6204: $00
	rra                                              ; $6205: $1f
	nop                                              ; $6206: $00
	dec [hl]                                         ; $6207: $35
	rrca                                             ; $6208: $0f
	rrca                                             ; $6209: $0f

jr_06b_620a:
	ccf                                              ; $620a: $3f
	ld a, [de]                                       ; $620b: $1a
	rlca                                             ; $620c: $07
	ld b, a                                          ; $620d: $47
	add b                                            ; $620e: $80
	sbc h                                            ; $620f: $9c
	ld [$f0e4], sp                                   ; $6210: $08 $e4 $f0
	ld a, e                                          ; $6213: $7b
	add b                                            ; $6214: $80
	ld a, a                                          ; $6215: $7f
	cp $97                                           ; $6216: $fe $97
	ldh [rP1], a                                     ; $6218: $e0 $00
	ret nz                                           ; $621a: $c0

	ldh [$80], a                                     ; $621b: $e0 $80
	ret nz                                           ; $621d: $c0

	add b                                            ; $621e: $80
	ret nz                                           ; $621f: $c0

	ld d, a                                          ; $6220: $57
	add b                                            ; $6221: $80
	sbc h                                            ; $6222: $9c
	ld a, e                                          ; $6223: $7b
	rlca                                             ; $6224: $07
	inc e                                            ; $6225: $1c
	ld a, e                                          ; $6226: $7b
	add b                                            ; $6227: $80
	ld a, a                                          ; $6228: $7f
	cp $97                                           ; $6229: $fe $97
	inc sp                                           ; $622b: $33
	inc c                                            ; $622c: $0c
	inc c                                            ; $622d: $0c
	ccf                                              ; $622e: $3f
	dec sp                                           ; $622f: $3b
	ccf                                              ; $6230: $3f
	dec c                                            ; $6231: $0d
	ld e, $1f                                        ; $6232: $1e $1f
	add b                                            ; $6234: $80
	sbc e                                            ; $6235: $9b
	or [hl]                                          ; $6236: $b6
	ld a, a                                          ; $6237: $7f
	ld e, d                                          ; $6238: $5a
	rst $38                                          ; $6239: $ff
	rlca                                             ; $623a: $07
	add b                                            ; $623b: $80
	sbc c                                            ; $623c: $99
	ccf                                              ; $623d: $3f
	nop                                              ; $623e: $00
	dec de                                           ; $623f: $1b
	inc a                                            ; $6240: $3c
	rla                                              ; $6241: $17
	rrca                                             ; $6242: $0f
	ld b, e                                          ; $6243: $43
	add b                                            ; $6244: $80
	sbc d                                            ; $6245: $9a
	add h                                            ; $6246: $84
	ldh a, [$e0]                                     ; $6247: $f0 $e0
	sub b                                            ; $6249: $90
	ld h, b                                          ; $624a: $60
	ld [hl], a                                       ; $624b: $77
	add b                                            ; $624c: $80
	ld a, a                                          ; $624d: $7f
	cp $9e                                           ; $624e: $fe $9e
	ld b, b                                          ; $6250: $40
	ld a, e                                          ; $6251: $7b
	ld a, [hl]                                       ; $6252: $7e
	ld d, a                                          ; $6253: $57
	add b                                            ; $6254: $80
	sbc h                                            ; $6255: $9c
	ld a, c                                          ; $6256: $79
	rlca                                             ; $6257: $07
	rra                                              ; $6258: $1f
	ld [hl], e                                       ; $6259: $73
	add b                                            ; $625a: $80
	ld a, a                                          ; $625b: $7f
	add $7f                                          ; $625c: $c6 $7f

jr_06b_625e:
	cp $9b                                           ; $625e: $fe $9b
	dec l                                            ; $6260: $2d
	inc sp                                           ; $6261: $33
	ld e, $1f                                        ; $6262: $1e $1f
	inc bc                                           ; $6264: $03
	add b                                            ; $6265: $80
	ld e, e                                          ; $6266: $5b
	add b                                            ; $6267: $80
	rst $38                                          ; $6268: $ff
	sbc h                                            ; $6269: $9c
	inc bc                                           ; $626a: $03
	ld bc, $fe01                                     ; $626b: $01 $01 $fe
	ld [hl], a                                       ; $626e: $77
	db $fc                                           ; $626f: $fc
	sub d                                            ; $6270: $92
	ld b, b                                          ; $6271: $40
	add b                                            ; $6272: $80
	ld hl, sp-$20                                    ; $6273: $f8 $e0
	cp d                                             ; $6275: $ba
	ld a, h                                          ; $6276: $7c
	rst SubAFromDE                                          ; $6277: $df
	ccf                                              ; $6278: $3f
	cpl                                              ; $6279: $2f
	rra                                              ; $627a: $1f
	rlca                                             ; $627b: $07
	rrca                                             ; $627c: $0f
	ld b, $73                                        ; $627d: $06 $73
	ld [$807f], a                                    ; $627f: $ea $7f $80
	ld a, [hl]                                       ; $6282: $7e
	ld [hl], a                                       ; $6283: $77
	add c                                            ; $6284: $81
	inc bc                                           ; $6285: $03
	ld b, b                                          ; $6286: $40
	add a                                            ; $6287: $87
	ld bc, $0305                                     ; $6288: $01 $05 $03
	add e                                            ; $628b: $83
	rlca                                             ; $628c: $07
	rlca                                             ; $628d: $07
	rrca                                             ; $628e: $0f
	rrca                                             ; $628f: $0f
	rra                                              ; $6290: $1f
	dec e                                            ; $6291: $1d
	ccf                                              ; $6292: $3f
	dec a                                            ; $6293: $3d
	ld a, a                                          ; $6294: $7f
	db $ed                                           ; $6295: $ed
	rst $38                                          ; $6296: $ff
	call $cbff                                       ; $6297: $cd $ff $cb
	rst $38                                          ; $629a: $ff
	ld c, d                                          ; $629b: $4a
	rst $38                                          ; $629c: $ff
	rst FarCall                                          ; $629d: $f7
	ld a, a                                          ; $629e: $7f
	adc $7f                                          ; $629f: $ce $7f
	ld a, b                                          ; $62a1: $78

Jump_06b_62a2:
	ld a, a                                          ; $62a2: $7f
	ld a, e                                          ; $62a3: $7b
	ret nz                                           ; $62a4: $c0

	sbc l                                            ; $62a5: $9d
	inc bc                                           ; $62a6: $03
	ld [bc], a                                       ; $62a7: $02
	ld l, e                                          ; $62a8: $6b
	cp [hl]                                          ; $62a9: $be
	inc hl                                           ; $62aa: $23
	ret nz                                           ; $62ab: $c0

	sbc c                                            ; $62ac: $99
	add c                                            ; $62ad: $81
	add l                                            ; $62ae: $85
	inc bc                                           ; $62af: $03
	inc bc                                           ; $62b0: $03
	rlca                                             ; $62b1: $07
	add a                                            ; $62b2: $87
	inc hl                                           ; $62b3: $23
	ret nz                                           ; $62b4: $c0

	ld a, a                                          ; $62b5: $7f
	ld a, [hl]                                       ; $62b6: $7e
	ld a, a                                          ; $62b7: $7f
	jp $d277                                         ; $62b8: $c3 $77 $d2


	sbc [hl]                                         ; $62bb: $9e
	ld b, c                                          ; $62bc: $41
	dec hl                                           ; $62bd: $2b
	ret nz                                           ; $62be: $c0

	sbc e                                            ; $62bf: $9b
	rst JumpTable                                          ; $62c0: $c7
	add c                                            ; $62c1: $81
	dec b                                            ; $62c2: $05
	add e                                            ; $62c3: $83
	ld [hl], a                                       ; $62c4: $77
	add b                                            ; $62c5: $80
	sbc [hl]                                         ; $62c6: $9e
	adc a                                            ; $62c7: $8f
	inc sp                                           ; $62c8: $33
	ret nz                                           ; $62c9: $c0

	sbc h                                            ; $62ca: $9c
	ld bc, $0103                                     ; $62cb: $01 $03 $01
	ld l, e                                          ; $62ce: $6b
	ld a, [hl]                                       ; $62cf: $7e
	rra                                              ; $62d0: $1f
	ret nz                                           ; $62d1: $c0

	sbc [hl]                                         ; $62d2: $9e
	add l                                            ; $62d3: $85
	inc hl                                           ; $62d4: $23
	ret nz                                           ; $62d5: $c0

	or h                                             ; $62d6: $b4
	ld bc, $4587                                     ; $62d7: $01 $87 $45
	rst $38                                          ; $62da: $ff
	ld c, c                                          ; $62db: $49
	rst $38                                          ; $62dc: $ff
	ld c, e                                          ; $62dd: $4b
	cp $9f                                           ; $62de: $fe $9f
	db $fc                                           ; $62e0: $fc
	inc e                                            ; $62e1: $1c
	ei                                               ; $62e2: $fb
	db $e3                                           ; $62e3: $e3
	rst $38                                          ; $62e4: $ff
	rst $38                                          ; $62e5: $ff
	db $fc                                           ; $62e6: $fc
	add [hl]                                         ; $62e7: $86
	ld bc, $071b                                     ; $62e8: $01 $1b $07
	dec e                                            ; $62eb: $1d
	dec a                                            ; $62ec: $3d
	ld h, $17                                        ; $62ed: $26 $17
	rra                                              ; $62ef: $1f
	inc bc                                           ; $62f0: $03
	ei                                               ; $62f1: $fb
	adc [hl]                                         ; $62f2: $8e
	add b                                            ; $62f3: $80
	nop                                              ; $62f4: $00
	add b                                            ; $62f5: $80
	ret nz                                           ; $62f6: $c0

	ret nz                                           ; $62f7: $c0

	ldh [$e0], a                                     ; $62f8: $e0 $e0
	ldh a, [$f0]                                     ; $62fa: $f0 $f0
	ld hl, sp-$08                                    ; $62fc: $f8 $f8
	db $fc                                           ; $62fe: $fc
	or $ff                                           ; $62ff: $f6 $ff
	pop af                                           ; $6301: $f1
	rst $38                                          ; $6302: $ff
	ldh a, [rPCM34]                                  ; $6303: $f0 $77
	cp $83                                           ; $6305: $fe $83
	ld a, a                                          ; $6307: $7f
	ld hl, sp+$1f                                    ; $6308: $f8 $1f
	db $fc                                           ; $630a: $fc
	ld c, $fc                                        ; $630b: $0e $fc
	ld b, $fe                                        ; $630d: $06 $fe
	ld [bc], a                                       ; $630f: $02
	cp $03                                           ; $6310: $fe $03
	rst $38                                          ; $6312: $ff
	ld bc, $e070                                     ; $6313: $01 $70 $e0
	ldh a, [$30]                                     ; $6316: $f0 $30
	cp b                                             ; $6318: $b8
	db $10                                           ; $6319: $10
	jr jr_06b_6324                                   ; $631a: $18 $08

	ld [$f0e4], sp                                   ; $631c: $08 $e4 $f0
	ldh [$f0], a                                     ; $631f: $e0 $f0
	nop                                              ; $6321: $00
	jr nc, @+$7d                                     ; $6322: $30 $7b

jr_06b_6324:
	db $d3                                           ; $6324: $d3
	sbc h                                            ; $6325: $9c
	and b                                            ; $6326: $a0
	ret nz                                           ; $6327: $c0

	add b                                            ; $6328: $80
	ld a, e                                          ; $6329: $7b
	ret                                              ; $632a: $c9


	ld sp, hl                                        ; $632b: $f9
	adc d                                            ; $632c: $8a
	ld a, [hl]                                       ; $632d: $7e
	daa                                              ; $632e: $27
	ld a, [hl]                                       ; $632f: $7e
	inc hl                                           ; $6330: $23
	ld a, c                                          ; $6331: $79
	rlca                                             ; $6332: $07
	ld e, $3f                                        ; $6333: $1e $3f
	ld a, a                                          ; $6335: $7f
	nop                                              ; $6336: $00
	ld h, e                                          ; $6337: $63
	inc e                                            ; $6338: $1c
	ld e, $3f                                        ; $6339: $1e $3f
	dec [hl]                                         ; $633b: $35
	cpl                                              ; $633c: $2f
	ld a, $1c                                        ; $633d: $3e $1c
	rla                                              ; $633f: $17
	inc e                                            ; $6340: $1c
	add e                                            ; $6341: $83
	cp l                                             ; $6342: $bd
	pop bc                                           ; $6343: $c1
	pop hl                                           ; $6344: $e1
	ld h, e                                          ; $6345: $63
	inc hl                                           ; $6346: $23
	sbc e                                            ; $6347: $9b
	ld b, b                                          ; $6348: $40
	jp Jump_06b_5940                                 ; $6349: $c3 $40 $59


	ld a, e                                          ; $634c: $7b
	add b                                            ; $634d: $80
	adc [hl]                                         ; $634e: $8e
	add hl, hl                                       ; $634f: $29
	rst $38                                          ; $6350: $ff
	sbc c                                            ; $6351: $99
	rst $38                                          ; $6352: $ff
	db $fc                                           ; $6353: $fc
	ld a, a                                          ; $6354: $7f
	db $fc                                           ; $6355: $fc
	ccf                                              ; $6356: $3f
	db $ec                                           ; $6357: $ec
	ccf                                              ; $6358: $3f
	ld [hl], $ff                                     ; $6359: $36 $ff
	jp c, $fb7f                                      ; $635b: $da $7f $fb

	ld e, a                                          ; $635e: $5f
	push af                                          ; $635f: $f5
	ld [hl], e                                       ; $6360: $73
	cp $80                                           ; $6361: $fe $80
	db $e4                                           ; $6363: $e4
	ld a, a                                          ; $6364: $7f
	ldh [c], a                                       ; $6365: $e2
	ld a, a                                          ; $6366: $7f
	ld d, d                                          ; $6367: $52
	rst $38                                          ; $6368: $ff
	push af                                          ; $6369: $f5
	db $db                                           ; $636a: $db
	db $eb                                           ; $636b: $eb
	db $dd                                           ; $636c: $dd
	db $db                                           ; $636d: $db
	db $ed                                           ; $636e: $ed
	or $ed                                           ; $636f: $f6 $ed
	db $ec                                           ; $6371: $ec
	rst FarCall                                          ; $6372: $f7
	ld e, d                                          ; $6373: $5a
	rst FarCall                                          ; $6374: $f7
	ld [hl], l                                       ; $6375: $75
	db $db                                           ; $6376: $db
	ld l, e                                          ; $6377: $6b
	db $dd                                           ; $6378: $dd
	ld h, a                                          ; $6379: $67
	call c, $de25                                    ; $637a: $dc $25 $de
	ld l, e                                          ; $637d: $6b
	sub [hl]                                         ; $637e: $96
	ld l, [hl]                                       ; $637f: $6e
	sub e                                            ; $6380: $93
	or $98                                           ; $6381: $f6 $98
	ei                                               ; $6383: $fb
	adc a                                            ; $6384: $8f
	rst $38                                          ; $6385: $ff
	inc bc                                           ; $6386: $03
	rst $38                                          ; $6387: $ff
	ld [hl], c                                       ; $6388: $71
	rst $38                                          ; $6389: $ff
	ld c, a                                          ; $638a: $4f
	ld b, b                                          ; $638b: $40
	sbc b                                            ; $638c: $98
	add a                                            ; $638d: $87
	nop                                              ; $638e: $00
	inc e                                            ; $638f: $1c
	inc bc                                           ; $6390: $03
	rra                                              ; $6391: $1f
	ccf                                              ; $6392: $3f
	inc h                                            ; $6393: $24
	ld e, e                                          ; $6394: $5b
	ld b, b                                          ; $6395: $40
	ld h, e                                          ; $6396: $63
	ld h, b                                          ; $6397: $60
	sub a                                            ; $6398: $97
	call nz, $e0d0                                   ; $6399: $c4 $d0 $e0
	ldh a, [rAUD4LEN]                                ; $639c: $f0 $20
	ldh a, [rP1]                                     ; $639e: $f0 $00
	nop                                              ; $63a0: $00
	sbc $e0                                          ; $63a1: $de $e0
	ccf                                              ; $63a3: $3f
	ld h, b                                          ; $63a4: $60
	sub d                                            ; $63a5: $92
	ld c, $3f                                        ; $63a6: $0e $3f
	ld a, a                                          ; $63a8: $7f
	jr nc, jr_06b_642a                               ; $63a9: $30 $7f

	nop                                              ; $63ab: $00
	dec de                                           ; $63ac: $1b
	inc a                                            ; $63ad: $3c
	ccf                                              ; $63ae: $3f
	ccf                                              ; $63af: $3f
	ld l, $3c                                        ; $63b0: $2e $3c
	dec de                                           ; $63b2: $1b
	inc bc                                           ; $63b3: $03
	ld h, b                                          ; $63b4: $60
	ld d, a                                          ; $63b5: $57
	ld h, b                                          ; $63b6: $60
	ld h, a                                          ; $63b7: $67
	add b                                            ; $63b8: $80
	sbc b                                            ; $63b9: $98
	ld e, $f8                                        ; $63ba: $1e $f8
	pop hl                                           ; $63bc: $e1
	rst $38                                          ; $63bd: $ff
	cp $ff                                           ; $63be: $fe $ff
	add a                                            ; $63c0: $87
	cp [hl]                                          ; $63c1: $be
	rra                                              ; $63c2: $1f
	ccf                                              ; $63c3: $3f
	rrca                                             ; $63c4: $0f
	sbc h                                            ; $63c5: $9c
	ccf                                              ; $63c6: $3f
	dec de                                           ; $63c7: $1b
	rlca                                             ; $63c8: $07
	ld b, e                                          ; $63c9: $43
	add b                                            ; $63ca: $80
	sbc e                                            ; $63cb: $9b
	inc b                                            ; $63cc: $04
	ret nc                                           ; $63cd: $d0

	ldh [$30], a                                     ; $63ce: $e0 $30
	ld a, d                                          ; $63d0: $7a
	sbc $97                                          ; $63d1: $de $97
	ldh [rP1], a                                     ; $63d3: $e0 $00
	add b                                            ; $63d5: $80
	ld h, b                                          ; $63d6: $60
	ret nz                                           ; $63d7: $c0

	ret nz                                           ; $63d8: $c0

	add b                                            ; $63d9: $80
	ret nz                                           ; $63da: $c0

	ld d, a                                          ; $63db: $57
	add b                                            ; $63dc: $80
	sbc d                                            ; $63dd: $9a
	ld a, a                                          ; $63de: $7f
	ld bc, $3f0f                                     ; $63df: $01 $0f $3f
	ld [hl], b                                       ; $63e2: $70
	ld a, d                                          ; $63e3: $7a
	sbc $7f                                          ; $63e4: $de $7f
	add $99                                          ; $63e6: $c6 $99
	ld bc, $373e                                     ; $63e8: $01 $3e $37
	ccf                                              ; $63eb: $3f
	dec c                                            ; $63ec: $0d
	ld e, $1f                                        ; $63ed: $1e $1f
	add b                                            ; $63ef: $80
	sbc e                                            ; $63f0: $9b
	or [hl]                                          ; $63f1: $b6
	ld a, a                                          ; $63f2: $7f
	ld e, d                                          ; $63f3: $5a
	rst $38                                          ; $63f4: $ff
	daa                                              ; $63f5: $27
	add b                                            ; $63f6: $80
	sbc [hl]                                         ; $63f7: $9e
	ldh [$de], a                                     ; $63f8: $e0 $de
	rst $38                                          ; $63fa: $ff
	ld l, a                                          ; $63fb: $6f
	add b                                            ; $63fc: $80
	ld a, a                                          ; $63fd: $7f
	jr c, @-$61                                      ; $63fe: $38 $9d

	rla                                              ; $6400: $17
	rrca                                             ; $6401: $0f
	ccf                                              ; $6402: $3f
	add b                                            ; $6403: $80
	sbc b                                            ; $6404: $98
	ld [hl], b                                       ; $6405: $70
	add b                                            ; $6406: $80
	ret nc                                           ; $6407: $d0

	ldh [$b0], a                                     ; $6408: $e0 $b0
	ld h, b                                          ; $640a: $60
	ldh [$bf], a                                     ; $640b: $e0 $bf
	ldh [$c0], a                                     ; $640d: $e0 $c0
	ld a, [hl]                                       ; $640f: $7e
	cp $4b                                           ; $6410: $fe $4b
	add b                                            ; $6412: $80
	sbc b                                            ; $6413: $98
	inc hl                                           ; $6414: $23
	rra                                              ; $6415: $1f
	ld e, h                                          ; $6416: $5c
	ccf                                              ; $6417: $3f
	ld a, a                                          ; $6418: $7f
	jr nz, jr_06b_645a                               ; $6419: $20 $3f

	cp a                                             ; $641b: $bf
	ccf                                              ; $641c: $3f
	dec l                                            ; $641d: $2d
	sbc h                                            ; $641e: $9c
	inc sp                                           ; $641f: $33
	ld e, $1f                                        ; $6420: $1e $1f
	inc bc                                           ; $6422: $03
	add b                                            ; $6423: $80
	ld e, e                                          ; $6424: $5b
	add b                                            ; $6425: $80
	rst $38                                          ; $6426: $ff
	sbc $01                                          ; $6427: $de $01
	cp l                                             ; $6429: $bd

jr_06b_642a:
	nop                                              ; $642a: $00
	ld bc, $4000                                     ; $642b: $01 $00 $40
	sub e                                            ; $642e: $93
	add b                                            ; $642f: $80
	ld hl, sp-$20                                    ; $6430: $f8 $e0
	cp d                                             ; $6432: $ba
	ld a, h                                          ; $6433: $7c
	rst SubAFromDE                                          ; $6434: $df
	ccf                                              ; $6435: $3f
	cpl                                              ; $6436: $2f
	rra                                              ; $6437: $1f
	rlca                                             ; $6438: $07
	rrca                                             ; $6439: $0f
	ld b, $73                                        ; $643a: $06 $73
	ld [$807f], a                                    ; $643c: $ea $7f $80
	ld a, [hl]                                       ; $643f: $7e
	ld [hl], a                                       ; $6440: $77
	add c                                            ; $6441: $81
	add e                                            ; $6442: $83
	ld b, b                                          ; $6443: $40
	add a                                            ; $6444: $87
	ld bc, $0305                                     ; $6445: $01 $05 $03
	add e                                            ; $6448: $83
	rlca                                             ; $6449: $07
	rlca                                             ; $644a: $07
	rrca                                             ; $644b: $0f
	rrca                                             ; $644c: $0f
	rra                                              ; $644d: $1f
	dec e                                            ; $644e: $1d
	ccf                                              ; $644f: $3f
	dec a                                            ; $6450: $3d
	ld a, a                                          ; $6451: $7f
	db $ed                                           ; $6452: $ed
	rst $38                                          ; $6453: $ff
	call $cbff                                       ; $6454: $cd $ff $cb
	rst $38                                          ; $6457: $ff
	ld c, d                                          ; $6458: $4a
	rst $38                                          ; $6459: $ff

jr_06b_645a:
	rst FarCall                                          ; $645a: $f7
	ld a, a                                          ; $645b: $7f
	adc $7f                                          ; $645c: $ce $7f
	ld a, b                                          ; $645e: $78
	ld a, a                                          ; $645f: $7f
	ld [hl], a                                       ; $6460: $77
	ret nz                                           ; $6461: $c0

	ld [hl], a                                       ; $6462: $77
	db $fd                                           ; $6463: $fd
	ld [hl], a                                       ; $6464: $77
	cp [hl]                                          ; $6465: $be
	cpl                                              ; $6466: $2f
	ret nz                                           ; $6467: $c0

	sub [hl]                                         ; $6468: $96
	inc bc                                           ; $6469: $03
	ld b, b                                          ; $646a: $40
	add a                                            ; $646b: $87
	add c                                            ; $646c: $81
	add l                                            ; $646d: $85
	inc bc                                           ; $646e: $03
	inc bc                                           ; $646f: $03
	rlca                                             ; $6470: $07
	add a                                            ; $6471: $87
	inc hl                                           ; $6472: $23
	ret nz                                           ; $6473: $c0

	ld h, a                                          ; $6474: $67
	ld a, [hl]                                       ; $6475: $7e
	daa                                              ; $6476: $27
	ret nz                                           ; $6477: $c0

	sbc [hl]                                         ; $6478: $9e
	rst JumpTable                                          ; $6479: $c7
	inc bc                                           ; $647a: $03
	ret nz                                           ; $647b: $c0

	ld l, a                                          ; $647c: $6f
	cp [hl]                                          ; $647d: $be
	sbc [hl]                                         ; $647e: $9e
	ld b, c                                          ; $647f: $41
	rra                                              ; $6480: $1f
	ret nz                                           ; $6481: $c0

	rst SubAFromDE                                          ; $6482: $df
	add e                                            ; $6483: $83
	ld a, e                                          ; $6484: $7b
	ld b, b                                          ; $6485: $40
	sbc [hl]                                         ; $6486: $9e
	adc a                                            ; $6487: $8f
	dec sp                                           ; $6488: $3b
	ret nz                                           ; $6489: $c0

	ret nz                                           ; $648a: $c0

	ld bc, $4587                                     ; $648b: $01 $87 $45
	rst $38                                          ; $648e: $ff
	ld c, c                                          ; $648f: $49
	rst $38                                          ; $6490: $ff
	ld c, e                                          ; $6491: $4b
	cp $9d                                           ; $6492: $fe $9d
	cp $1b                                           ; $6494: $fe $1b
	rst $38                                          ; $6496: $ff
	cp $e1                                           ; $6497: $fe $e1
	rst $38                                          ; $6499: $ff
	ret nz                                           ; $649a: $c0

	add h                                            ; $649b: $84
	inc bc                                           ; $649c: $03
	dec de                                           ; $649d: $1b
	rlca                                             ; $649e: $07
	dec e                                            ; $649f: $1d
	dec a                                            ; $64a0: $3d
	ld h, $17                                        ; $64a1: $26 $17
	rra                                              ; $64a3: $1f
	inc bc                                           ; $64a4: $03
	ei                                               ; $64a5: $fb
	adc [hl]                                         ; $64a6: $8e
	add b                                            ; $64a7: $80
	nop                                              ; $64a8: $00
	add b                                            ; $64a9: $80
	ret nz                                           ; $64aa: $c0

	ret nz                                           ; $64ab: $c0

	ldh [$e0], a                                     ; $64ac: $e0 $e0
	ldh a, [$f0]                                     ; $64ae: $f0 $f0
	ld hl, sp-$08                                    ; $64b0: $f8 $f8
	db $fc                                           ; $64b2: $fc
	or $ff                                           ; $64b3: $f6 $ff
	pop af                                           ; $64b5: $f1
	rst $38                                          ; $64b6: $ff
	ldh a, [rPCM34]                                  ; $64b7: $f0 $77
	cp $80                                           ; $64b9: $fe $80
	ld a, a                                          ; $64bb: $7f
	ld hl, sp+$1f                                    ; $64bc: $f8 $1f
	db $fc                                           ; $64be: $fc
	ld c, $fc                                        ; $64bf: $0e $fc
	ld b, $fe                                        ; $64c1: $06 $fe
	ld [bc], a                                       ; $64c3: $02
	cp $03                                           ; $64c4: $fe $03
	rst $38                                          ; $64c6: $ff
	ld bc, $e070                                     ; $64c7: $01 $70 $e0
	ldh a, [$30]                                     ; $64ca: $f0 $30
	cp b                                             ; $64cc: $b8
	db $10                                           ; $64cd: $10
	jr jr_06b_64d8                                   ; $64ce: $18 $08

	ld [$c084], sp                                   ; $64d0: $08 $84 $c0
	ldh [$b0], a                                     ; $64d3: $e0 $b0
	ld [hl], b                                       ; $64d5: $70
	ld [hl], b                                       ; $64d6: $70
	add b                                            ; $64d7: $80

jr_06b_64d8:
	ldh [$e0], a                                     ; $64d8: $e0 $e0
	sbc h                                            ; $64da: $9c
	and b                                            ; $64db: $a0
	ret nz                                           ; $64dc: $c0

	add b                                            ; $64dd: $80
	ld a, e                                          ; $64de: $7b
	ret                                              ; $64df: $c9


	ld sp, hl                                        ; $64e0: $f9
	adc d                                            ; $64e1: $8a
	ld a, [hl]                                       ; $64e2: $7e
	daa                                              ; $64e3: $27
	ld a, [hl]                                       ; $64e4: $7e
	inc hl                                           ; $64e5: $23
	ld a, e                                          ; $64e6: $7b
	rlca                                             ; $64e7: $07
	dec l                                            ; $64e8: $2d
	ld e, $1f                                        ; $64e9: $1e $1f
	jr c, jr_06b_6524                                ; $64eb: $38 $37

	ld a, b                                          ; $64ed: $78
	dec a                                            ; $64ee: $3d
	ld e, $37                                        ; $64ef: $1e $37
	cpl                                              ; $64f1: $2f
	ld a, $1c                                        ; $64f2: $3e $1c
	rla                                              ; $64f4: $17
	inc e                                            ; $64f5: $1c
	add e                                            ; $64f6: $83
	cp l                                             ; $64f7: $bd
	pop bc                                           ; $64f8: $c1
	pop hl                                           ; $64f9: $e1
	ld h, e                                          ; $64fa: $63
	inc hl                                           ; $64fb: $23
	sbc e                                            ; $64fc: $9b
	ld b, b                                          ; $64fd: $40
	jp Jump_06b_5940                                 ; $64fe: $c3 $40 $59


	ld a, e                                          ; $6501: $7b
	add b                                            ; $6502: $80
	adc [hl]                                         ; $6503: $8e
	add hl, hl                                       ; $6504: $29
	rst $38                                          ; $6505: $ff
	sbc c                                            ; $6506: $99
	rst $38                                          ; $6507: $ff
	db $fc                                           ; $6508: $fc
	ld a, a                                          ; $6509: $7f
	db $fc                                           ; $650a: $fc
	ccf                                              ; $650b: $3f
	db $ec                                           ; $650c: $ec
	ccf                                              ; $650d: $3f
	ld [hl], $ff                                     ; $650e: $36 $ff
	jp c, $fb7f                                      ; $6510: $da $7f $fb

	ld e, a                                          ; $6513: $5f
	push af                                          ; $6514: $f5
	ld [hl], e                                       ; $6515: $73
	cp $80                                           ; $6516: $fe $80
	db $e4                                           ; $6518: $e4
	ld a, a                                          ; $6519: $7f
	ldh [c], a                                       ; $651a: $e2
	ld a, a                                          ; $651b: $7f
	ld d, d                                          ; $651c: $52
	rst $38                                          ; $651d: $ff
	push af                                          ; $651e: $f5
	db $db                                           ; $651f: $db
	db $eb                                           ; $6520: $eb
	db $dd                                           ; $6521: $dd
	db $db                                           ; $6522: $db
	db $ed                                           ; $6523: $ed

jr_06b_6524:
	or $ed                                           ; $6524: $f6 $ed
	db $ec                                           ; $6526: $ec
	rst FarCall                                          ; $6527: $f7
	ld e, d                                          ; $6528: $5a
	rst FarCall                                          ; $6529: $f7
	ld [hl], l                                       ; $652a: $75
	db $db                                           ; $652b: $db
	ld l, e                                          ; $652c: $6b
	db $dd                                           ; $652d: $dd
	ld h, a                                          ; $652e: $67
	call c, $de25                                    ; $652f: $dc $25 $de
	ld l, e                                          ; $6532: $6b
	sub [hl]                                         ; $6533: $96
	ld l, [hl]                                       ; $6534: $6e
	sub e                                            ; $6535: $93
	or $98                                           ; $6536: $f6 $98
	ei                                               ; $6538: $fb
	adc a                                            ; $6539: $8f
	rst $38                                          ; $653a: $ff
	inc bc                                           ; $653b: $03
	rst $38                                          ; $653c: $ff
	ld [hl], c                                       ; $653d: $71
	rst $38                                          ; $653e: $ff
	ld c, a                                          ; $653f: $4f
	ld b, b                                          ; $6540: $40
	sub a                                            ; $6541: $97
	add a                                            ; $6542: $87
	nop                                              ; $6543: $00
	inc e                                            ; $6544: $1c
	inc bc                                           ; $6545: $03
	rra                                              ; $6546: $1f
	ccf                                              ; $6547: $3f
	ld h, $1f                                        ; $6548: $26 $1f
	ld e, a                                          ; $654a: $5f
	ld b, b                                          ; $654b: $40
	ld e, a                                          ; $654c: $5f
	ld h, b                                          ; $654d: $60
	ld a, e                                          ; $654e: $7b
	ld [hl], $9c                                     ; $654f: $36 $9c
	ld [hl], b                                       ; $6551: $70
	or b                                             ; $6552: $b0
	ld [hl], b                                       ; $6553: $70
	ld a, e                                          ; $6554: $7b
	ld [hl-], a                                      ; $6555: $32
	sbc [hl]                                         ; $6556: $9e
	ldh [$3f], a                                     ; $6557: $e0 $3f
	ld h, b                                          ; $6559: $60
	sub e                                            ; $655a: $93
	dec [hl]                                         ; $655b: $35
	ld c, $2b                                        ; $655c: $0e $2b
	inc e                                            ; $655e: $1c
	rla                                              ; $655f: $17
	jr c, jr_06b_6591                                ; $6560: $38 $2f

	ld [hl], b                                       ; $6562: $70
	dec sp                                           ; $6563: $3b
	ccf                                              ; $6564: $3f
	inc a                                            ; $6565: $3c
	ld e, $03                                        ; $6566: $1e $03
	ld h, b                                          ; $6568: $60
	ld d, e                                          ; $6569: $53
	ld h, b                                          ; $656a: $60
	ld h, a                                          ; $656b: $67
	add b                                            ; $656c: $80
	sbc e                                            ; $656d: $9b
	ld a, [de]                                       ; $656e: $1a
	rst $38                                          ; $656f: $ff
	db $fd                                           ; $6570: $fd
	db $e3                                           ; $6571: $e3
	ld [hl], a                                       ; $6572: $77
	add b                                            ; $6573: $80
	sub a                                            ; $6574: $97
	rra                                              ; $6575: $1f
	nop                                              ; $6576: $00
	inc sp                                           ; $6577: $33
	rrca                                             ; $6578: $0f
	ld c, $3f                                        ; $6579: $0e $3f
	dec de                                           ; $657b: $1b
	rlca                                             ; $657c: $07
	ld b, e                                          ; $657d: $43
	add b                                            ; $657e: $80
	sub d                                            ; $657f: $92
	inc b                                            ; $6580: $04
	add b                                            ; $6581: $80
	ret nz                                           ; $6582: $c0

	ld b, b                                          ; $6583: $40
	ldh a, [$b0]                                     ; $6584: $f0 $b0
	ld [hl], b                                       ; $6586: $70
	ldh [rP1], a                                     ; $6587: $e0 $00
	ret nz                                           ; $6589: $c0

	ldh [$80], a                                     ; $658a: $e0 $80
	ret nz                                           ; $658c: $c0

	ld c, a                                          ; $658d: $4f
	add b                                            ; $658e: $80
	sbc e                                            ; $658f: $9b
	ld a, l                                          ; $6590: $7d

jr_06b_6591:
	inc bc                                           ; $6591: $03
	ld a, $07                                        ; $6592: $3e $07
	ld l, a                                          ; $6594: $6f
	add b                                            ; $6595: $80
	sbc c                                            ; $6596: $99
	jr c, jr_06b_65c0                                ; $6597: $38 $27

jr_06b_6599:
	rra                                              ; $6599: $1f
	ccf                                              ; $659a: $3f
	dec d                                            ; $659b: $15
	ld e, $1f                                        ; $659c: $1e $1f
	add b                                            ; $659e: $80
	sbc e                                            ; $659f: $9b
	or [hl]                                          ; $65a0: $b6
	ld a, a                                          ; $65a1: $7f
	ld e, d                                          ; $65a2: $5a
	rst $38                                          ; $65a3: $ff
	rlca                                             ; $65a4: $07
	add b                                            ; $65a5: $80
	sbc c                                            ; $65a6: $99
	ccf                                              ; $65a7: $3f
	nop                                              ; $65a8: $00
	dec de                                           ; $65a9: $1b
	inc a                                            ; $65aa: $3c
	rla                                              ; $65ab: $17
	rrca                                             ; $65ac: $0f
	ccf                                              ; $65ad: $3f
	add b                                            ; $65ae: $80
	ld a, a                                          ; $65af: $7f
	di                                               ; $65b0: $f3
	ld a, a                                          ; $65b1: $7f
	adc b                                            ; $65b2: $88
	sbc b                                            ; $65b3: $98
	ldh a, [rSVBK]                                   ; $65b4: $f0 $70
	ret nz                                           ; $65b6: $c0

	jr nc, jr_06b_6599                               ; $65b7: $30 $e0

	nop                                              ; $65b9: $00
	ld b, b                                          ; $65ba: $40
	ld [hl], a                                       ; $65bb: $77
	ld a, [hl]                                       ; $65bc: $7e
	ld d, e                                          ; $65bd: $53
	add b                                            ; $65be: $80
	sub c                                            ; $65bf: $91

jr_06b_65c0:
	ld a, [hl-]                                      ; $65c0: $3a
	rlca                                             ; $65c1: $07
	scf                                              ; $65c2: $37
	inc c                                            ; $65c3: $0c
	cpl                                              ; $65c4: $2f
	jr jr_06b_6626                                   ; $65c5: $18 $5f

	jr nc, jr_06b_6608                               ; $65c7: $30 $3f

	ld h, b                                          ; $65c9: $60
	cpl                                              ; $65ca: $2f
	ld sp, $1f1e                                     ; $65cb: $31 $1e $1f
	inc bc                                           ; $65ce: $03
	add b                                            ; $65cf: $80
	ld e, e                                          ; $65d0: $5b
	add b                                            ; $65d1: $80
	cp l                                             ; $65d2: $bd
	nop                                              ; $65d3: $00
	ld bc, $0002                                     ; $65d4: $01 $02 $00
	ld a, a                                          ; $65d7: $7f
	ei                                               ; $65d8: $fb
	rst $38                                          ; $65d9: $ff
	sub c                                            ; $65da: $91
	ld b, b                                          ; $65db: $40
	add b                                            ; $65dc: $80
	ld hl, sp-$20                                    ; $65dd: $f8 $e0
	cp d                                             ; $65df: $ba
	ld a, h                                          ; $65e0: $7c
	rst SubAFromDE                                          ; $65e1: $df
	ccf                                              ; $65e2: $3f
	cpl                                              ; $65e3: $2f
	rra                                              ; $65e4: $1f
	rlca                                             ; $65e5: $07
	rrca                                             ; $65e6: $0f
	ld b, $01                                        ; $65e7: $06 $01
	ld [hl], a                                       ; $65e9: $77
	xor $7f                                          ; $65ea: $ee $7f
	add b                                            ; $65ec: $80
	ld a, [hl]                                       ; $65ed: $7e
	ld [hl], a                                       ; $65ee: $77
	add c                                            ; $65ef: $81
	jp $87c0                                         ; $65f0: $c3 $c0 $87


	ld bc, $0305                                     ; $65f3: $01 $05 $03
	add e                                            ; $65f6: $83
	rlca                                             ; $65f7: $07
	rlca                                             ; $65f8: $07
	rrca                                             ; $65f9: $0f
	rrca                                             ; $65fa: $0f
	rra                                              ; $65fb: $1f
	dec e                                            ; $65fc: $1d
	ccf                                              ; $65fd: $3f
	dec a                                            ; $65fe: $3d
	ld a, a                                          ; $65ff: $7f
	db $ed                                           ; $6600: $ed
	rst $38                                          ; $6601: $ff
	call $cbff                                       ; $6602: $cd $ff $cb
	rst $38                                          ; $6605: $ff
	ld c, d                                          ; $6606: $4a
	rst $38                                          ; $6607: $ff

jr_06b_6608:
	rst FarCall                                          ; $6608: $f7
	ld a, a                                          ; $6609: $7f
	adc $7f                                          ; $660a: $ce $7f
	ld a, b                                          ; $660c: $78
	ld a, a                                          ; $660d: $7f
	ld a, e                                          ; $660e: $7b
	add $df                                          ; $660f: $c6 $df
	ld bc, $039e                                     ; $6611: $01 $9e $03
	ld [hl], a                                       ; $6614: $77
	call nc, $fc7f                                   ; $6615: $d4 $7f $fc
	cpl                                              ; $6618: $2f
	ret nz                                           ; $6619: $c0

	sub [hl]                                         ; $661a: $96
	inc bc                                           ; $661b: $03
	ret nz                                           ; $661c: $c0

	add a                                            ; $661d: $87
	add c                                            ; $661e: $81
	add l                                            ; $661f: $85
	inc bc                                           ; $6620: $03
	inc bc                                           ; $6621: $03
	rlca                                             ; $6622: $07
	add a                                            ; $6623: $87
	dec de                                           ; $6624: $1b
	ret nz                                           ; $6625: $c0

jr_06b_6626:
	sbc [hl]                                         ; $6626: $9e
	ld [bc], a                                       ; $6627: $02
	ld [hl], e                                       ; $6628: $73
	jp nc, Jump_06b_419e                             ; $6629: $d2 $9e $41

	inc sp                                           ; $662c: $33
	ret nz                                           ; $662d: $c0

	sbc c                                            ; $662e: $99
	add e                                            ; $662f: $83
	ret nz                                           ; $6630: $c0

	add a                                            ; $6631: $87
	pop bc                                           ; $6632: $c1
	dec b                                            ; $6633: $05
	add e                                            ; $6634: $83
	ld [hl], a                                       ; $6635: $77
	add b                                            ; $6636: $80
	sbc [hl]                                         ; $6637: $9e
	adc a                                            ; $6638: $8f
	rra                                              ; $6639: $1f
	add b                                            ; $663a: $80
	ld a, e                                          ; $663b: $7b
	cp [hl]                                          ; $663c: $be
	daa                                              ; $663d: $27
	ret nz                                           ; $663e: $c0

	ld a, e                                          ; $663f: $7b
	add b                                            ; $6640: $80
	sbc c                                            ; $6641: $99
	pop bc                                           ; $6642: $c1
	add l                                            ; $6643: $85
	add e                                            ; $6644: $83
	inc bc                                           ; $6645: $03
	add a                                            ; $6646: $87
	add a                                            ; $6647: $87
	inc sp                                           ; $6648: $33
	ret nz                                           ; $6649: $c0

	cp l                                             ; $664a: $bd
	ld bc, $4587                                     ; $664b: $01 $87 $45
	rst $38                                          ; $664e: $ff
	ld c, c                                          ; $664f: $49
	rst $38                                          ; $6650: $ff
	ld c, e                                          ; $6651: $4b
	cp $9e                                           ; $6652: $fe $9e
	db $fd                                           ; $6654: $fd
	add hl, de                                       ; $6655: $19
	rst $38                                          ; $6656: $ff
	rst SubAFromBC                                          ; $6657: $e7
	cp $ff                                           ; $6658: $fe $ff
	ld hl, sp-$7b                                    ; $665a: $f8 $85
	inc bc                                           ; $665c: $03
	rla                                              ; $665d: $17
	rrca                                             ; $665e: $0f
	add hl, de                                       ; $665f: $19
	dec a                                            ; $6660: $3d
	ld h, $17                                        ; $6661: $26 $17
	rra                                              ; $6663: $1f
	inc bc                                           ; $6664: $03
	ei                                               ; $6665: $fb
	adc [hl]                                         ; $6666: $8e
	add b                                            ; $6667: $80
	nop                                              ; $6668: $00
	add b                                            ; $6669: $80
	ret nz                                           ; $666a: $c0

	ret nz                                           ; $666b: $c0

	ldh [$e0], a                                     ; $666c: $e0 $e0
	ldh a, [$f0]                                     ; $666e: $f0 $f0
	ld hl, sp-$08                                    ; $6670: $f8 $f8
	db $fc                                           ; $6672: $fc
	or $ff                                           ; $6673: $f6 $ff
	pop af                                           ; $6675: $f1
	rst $38                                          ; $6676: $ff
	ldh a, [rPCM34]                                  ; $6677: $f0 $77
	cp $80                                           ; $6679: $fe $80
	ld a, a                                          ; $667b: $7f
	ld hl, sp+$1f                                    ; $667c: $f8 $1f
	db $fc                                           ; $667e: $fc
	ld c, $fc                                        ; $667f: $0e $fc
	ld b, $fe                                        ; $6681: $06 $fe
	ld [bc], a                                       ; $6683: $02
	cp $03                                           ; $6684: $fe $03
	rst $38                                          ; $6686: $ff
	ld bc, $e070                                     ; $6687: $01 $70 $e0
	ldh a, [$30]                                     ; $668a: $f0 $30
	sbc b                                            ; $668c: $98
	ld [hl], b                                       ; $668d: $70
	ld a, b                                          ; $668e: $78
	add sp, -$08                                     ; $668f: $e8 $f8
	add h                                            ; $6691: $84
	ldh a, [rP1]                                     ; $6692: $f0 $00
	ldh a, [rP1]                                     ; $6694: $f0 $00
	ret nc                                           ; $6696: $d0

	ldh [rLCDC], a                                   ; $6697: $e0 $40
	and b                                            ; $6699: $a0
	sbc [hl]                                         ; $669a: $9e
	and b                                            ; $669b: $a0
	db $dd                                           ; $669c: $dd
	add b                                            ; $669d: $80
	ld hl, sp-$80                                    ; $669e: $f8 $80
	ld a, [hl]                                       ; $66a0: $7e
	daa                                              ; $66a1: $27
	ld l, [hl]                                       ; $66a2: $6e
	inc sp                                           ; $66a3: $33
	ld e, l                                          ; $66a4: $5d
	ccf                                              ; $66a5: $3f
	dec sp                                           ; $66a6: $3b
	rlca                                             ; $66a7: $07
	ld a, $01                                        ; $66a8: $3e $01
	ld e, e                                          ; $66aa: $5b
	inc e                                            ; $66ab: $1c
	ld e, $3f                                        ; $66ac: $1e $3f
	dec [hl]                                         ; $66ae: $35
	cpl                                              ; $66af: $2f
	ld a, [hl-]                                      ; $66b0: $3a
	inc e                                            ; $66b1: $1c
	rrca                                             ; $66b2: $0f
	inc e                                            ; $66b3: $1c
	add e                                            ; $66b4: $83
	nop                                              ; $66b5: $00
	pop bc                                           ; $66b6: $c1
	nop                                              ; $66b7: $00
	pop hl                                           ; $66b8: $e1
	nop                                              ; $66b9: $00
	ld h, e                                          ; $66ba: $63
	nop                                              ; $66bb: $00
	inc hl                                           ; $66bc: $23
	ld b, b                                          ; $66bd: $40
	jp Jump_06b_409d                                 ; $66be: $c3 $9d $40


	ld e, c                                          ; $66c1: $59
	ld a, e                                          ; $66c2: $7b
	add b                                            ; $66c3: $80
	adc [hl]                                         ; $66c4: $8e
	add hl, hl                                       ; $66c5: $29
	rst $38                                          ; $66c6: $ff
	sbc c                                            ; $66c7: $99
	rst $38                                          ; $66c8: $ff
	ld a, h                                          ; $66c9: $7c
	rst $38                                          ; $66ca: $ff
	db $fc                                           ; $66cb: $fc
	ccf                                              ; $66cc: $3f
	db $ec                                           ; $66cd: $ec
	ccf                                              ; $66ce: $3f
	ld [hl], $ff                                     ; $66cf: $36 $ff
	jp c, $fb7f                                      ; $66d1: $da $7f $fb

	ld e, a                                          ; $66d4: $5f
	push af                                          ; $66d5: $f5
	ld [hl], e                                       ; $66d6: $73
	cp $80                                           ; $66d7: $fe $80
	db $e4                                           ; $66d9: $e4
	ld a, a                                          ; $66da: $7f
	ldh [c], a                                       ; $66db: $e2
	ld a, a                                          ; $66dc: $7f
	ld d, d                                          ; $66dd: $52
	rst $38                                          ; $66de: $ff
	push af                                          ; $66df: $f5
	db $db                                           ; $66e0: $db
	db $eb                                           ; $66e1: $eb
	db $dd                                           ; $66e2: $dd
	db $db                                           ; $66e3: $db
	db $ed                                           ; $66e4: $ed
	or $ed                                           ; $66e5: $f6 $ed
	db $ec                                           ; $66e7: $ec
	rst FarCall                                          ; $66e8: $f7
	ld e, d                                          ; $66e9: $5a
	rst FarCall                                          ; $66ea: $f7
	ld [hl], l                                       ; $66eb: $75
	db $db                                           ; $66ec: $db
	ld l, e                                          ; $66ed: $6b
	db $dd                                           ; $66ee: $dd
	ld h, a                                          ; $66ef: $67
	call c, $de25                                    ; $66f0: $dc $25 $de
	ld l, e                                          ; $66f3: $6b
	sub [hl]                                         ; $66f4: $96
	ld l, [hl]                                       ; $66f5: $6e
	sub e                                            ; $66f6: $93
	or $98                                           ; $66f7: $f6 $98
	ei                                               ; $66f9: $fb
	adc a                                            ; $66fa: $8f
	rst $38                                          ; $66fb: $ff
	inc bc                                           ; $66fc: $03
	rst $38                                          ; $66fd: $ff
	ld [hl], c                                       ; $66fe: $71
	rst $38                                          ; $66ff: $ff
	ld l, a                                          ; $6700: $6f
	ld b, b                                          ; $6701: $40
	adc l                                            ; $6702: $8d
	sbc a                                            ; $6703: $9f
	db $fc                                           ; $6704: $fc
	inc e                                            ; $6705: $1c
	ei                                               ; $6706: $fb
	db $e3                                           ; $6707: $e3
	rst $38                                          ; $6708: $ff
	rst $38                                          ; $6709: $ff
	db $fc                                           ; $670a: $fc
	add [hl]                                         ; $670b: $86
	ld bc, $0f13                                     ; $670c: $01 $13 $0f
	inc e                                            ; $670f: $1c
	dec a                                            ; $6710: $3d
	dec h                                            ; $6711: $25
	rra                                              ; $6712: $1f
	ld c, $07                                        ; $6713: $0e $07
	ld h, a                                          ; $6715: $67
	ld b, b                                          ; $6716: $40
	ld d, a                                          ; $6717: $57
	ld h, b                                          ; $6718: $60
	sbc c                                            ; $6719: $99
	sub b                                            ; $671a: $90
	ld h, b                                          ; $671b: $60
	ldh a, [$e0]                                     ; $671c: $f0 $e0
	add b                                            ; $671e: $80
	ldh [rBGP], a                                    ; $671f: $e0 $47
	ld h, b                                          ; $6721: $60
	sub d                                            ; $6722: $92
	ld a, [hl]                                       ; $6723: $7e
	inc hl                                           ; $6724: $23
	ld e, e                                          ; $6725: $5b
	dec a                                            ; $6726: $3d
	daa                                              ; $6727: $27
	rra                                              ; $6728: $1f
	dec a                                            ; $6729: $3d
	inc bc                                           ; $672a: $03
	ld b, a                                          ; $672b: $47
	jr jr_06b_674a                                   ; $672c: $18 $1c

	ccf                                              ; $672e: $3f
	scf                                              ; $672f: $37
	inc hl                                           ; $6730: $23
	ld h, b                                          ; $6731: $60
	sbc [hl]                                         ; $6732: $9e
	db $fc                                           ; $6733: $fc
	dec hl                                           ; $6734: $2b
	ld h, b                                          ; $6735: $60
	ld h, a                                          ; $6736: $67
	add b                                            ; $6737: $80
	sub b                                            ; $6738: $90
	ld e, $f9                                        ; $6739: $1e $f9
	db $e3                                           ; $673b: $e3
	rst $38                                          ; $673c: $ff
	db $fd                                           ; $673d: $fd
	cp $87                                           ; $673e: $fe $87
	nop                                              ; $6740: $00
	ld e, $01                                        ; $6741: $1e $01
	cpl                                              ; $6743: $2f
	rra                                              ; $6744: $1f
	dec e                                            ; $6745: $1d
	ccf                                              ; $6746: $3f
	rra                                              ; $6747: $1f
	ld d, e                                          ; $6748: $53
	add b                                            ; $6749: $80

jr_06b_674a:
	sub a                                            ; $674a: $97
	ld hl, sp+$10                                    ; $674b: $f8 $10
	sbc b                                            ; $674d: $98
	ld l, b                                          ; $674e: $68
	ld a, b                                          ; $674f: $78
	db $e4                                           ; $6750: $e4
	ldh a, [$80]                                     ; $6751: $f0 $80
	halt                                             ; $6753: $76
	sbc $99                                          ; $6754: $de $99
	ld b, b                                          ; $6756: $40
	ldh [$a0], a                                     ; $6757: $e0 $a0
	ret nz                                           ; $6759: $c0

	nop                                              ; $675a: $00
	ret nz                                           ; $675b: $c0

	rst FarCall                                          ; $675c: $f7
	ld [hl], a                                       ; $675d: $77
	add b                                            ; $675e: $80
	adc a                                            ; $675f: $8f
	ld l, a                                          ; $6760: $6f
	ld de, $3d1b                                     ; $6761: $11 $1b $3d
	scf                                              ; $6764: $37
	rrca                                             ; $6765: $0f
	ld e, [hl]                                       ; $6766: $5e
	ld bc, $0c33                                     ; $6767: $01 $33 $0c
	inc c                                            ; $676a: $0c
	ccf                                              ; $676b: $3f
	dec sp                                           ; $676c: $3b
	ccf                                              ; $676d: $3f
	dec c                                            ; $676e: $0d
	ld e, $2f                                        ; $676f: $1e $2f
	add b                                            ; $6771: $80
	sub a                                            ; $6772: $97
	ld a, h                                          ; $6773: $7c
	cp a                                             ; $6774: $bf
	db $ec                                           ; $6775: $ec
	ccf                                              ; $6776: $3f
	or [hl]                                          ; $6777: $b6
	ld a, a                                          ; $6778: $7f
	ld e, d                                          ; $6779: $5a
	rst $38                                          ; $677a: $ff
	daa                                              ; $677b: $27
	add b                                            ; $677c: $80
	sub c                                            ; $677d: $91
	db $fd                                           ; $677e: $fd
	db $e3                                           ; $677f: $e3
	cp $ff                                           ; $6780: $fe $ff
	add a                                            ; $6782: $87
	jr c, jr_06b_67a4                                ; $6783: $38 $1f

	nop                                              ; $6785: $00
	ccf                                              ; $6786: $3f
	nop                                              ; $6787: $00
	ld d, $39                                        ; $6788: $16 $39
	rra                                              ; $678a: $1f
	rrca                                             ; $678b: $0f
	daa                                              ; $678c: $27
	add b                                            ; $678d: $80
	sbc [hl]                                         ; $678e: $9e
	ldh [$7b], a                                     ; $678f: $e0 $7b
	cp $7e                                           ; $6791: $fe $7e
	ld l, $7b                                        ; $6793: $2e $7b
	rst SubAFromBC                                          ; $6795: $e7
	ld c, a                                          ; $6796: $4f
	add b                                            ; $6797: $80
	sbc c                                            ; $6798: $99
	inc a                                            ; $6799: $3c
	ld h, $1f                                        ; $679a: $26 $1f
	ld e, l                                          ; $679c: $5d
	inc bc                                           ; $679d: $03
	ccf                                              ; $679e: $3f
	ld a, e                                          ; $679f: $7b
	call nz, $359b                                   ; $67a0: $c4 $9b $35
	dec sp                                           ; $67a3: $3b

jr_06b_67a4:
	ld c, $1f                                        ; $67a4: $0e $1f
	dec hl                                           ; $67a6: $2b
	nop                                              ; $67a7: $00
	ld [hl], e                                       ; $67a8: $73
	add b                                            ; $67a9: $80
	sbc [hl]                                         ; $67aa: $9e
	jp c, $804b                                      ; $67ab: $da $4b $80

	rst $38                                          ; $67ae: $ff
	sbc h                                            ; $67af: $9c
	inc bc                                           ; $67b0: $03
	ld bc, $fe01                                     ; $67b1: $01 $01 $fe
	ld [hl], a                                       ; $67b4: $77
	db $fc                                           ; $67b5: $fc
	sub d                                            ; $67b6: $92
	ld b, b                                          ; $67b7: $40
	add b                                            ; $67b8: $80
	ld hl, sp-$20                                    ; $67b9: $f8 $e0
	cp d                                             ; $67bb: $ba
	ld a, h                                          ; $67bc: $7c
	rst SubAFromDE                                          ; $67bd: $df
	ccf                                              ; $67be: $3f
	cpl                                              ; $67bf: $2f
	rra                                              ; $67c0: $1f
	rlca                                             ; $67c1: $07
	rrca                                             ; $67c2: $0f
	ld b, $73                                        ; $67c3: $06 $73
	ld [$997f], a                                    ; $67c5: $ea $7f $99
	ld a, l                                          ; $67c8: $7d
	or a                                             ; $67c9: $b7
	sub h                                            ; $67ca: $94
	inc bc                                           ; $67cb: $03
	ld b, b                                          ; $67cc: $40
	add a                                            ; $67cd: $87
	ld bc, $0305                                     ; $67ce: $01 $05 $03
	add e                                            ; $67d1: $83
	rlca                                             ; $67d2: $07
	rlca                                             ; $67d3: $07
	rrca                                             ; $67d4: $0f
	rrca                                             ; $67d5: $0f
	ld a, d                                          ; $67d6: $7a
	and $8f                                          ; $67d7: $e6 $8f
	dec a                                            ; $67d9: $3d
	ld a, a                                          ; $67da: $7f
	db $ed                                           ; $67db: $ed
	rst $38                                          ; $67dc: $ff
	call $cbff                                       ; $67dd: $cd $ff $cb
	rst $38                                          ; $67e0: $ff
	ld c, d                                          ; $67e1: $4a
	rst $38                                          ; $67e2: $ff
	rst FarCall                                          ; $67e3: $f7
	ld a, a                                          ; $67e4: $7f
	adc $7f                                          ; $67e5: $ce $7f
	ld a, b                                          ; $67e7: $78
	ld a, a                                          ; $67e8: $7f
	ld a, e                                          ; $67e9: $7b
	add $7f                                          ; $67ea: $c6 $7f
	cp a                                             ; $67ec: $bf
	dec bc                                           ; $67ed: $0b
	ret nz                                           ; $67ee: $c0

	sbc l                                            ; $67ef: $9d
	rst JumpTable                                          ; $67f0: $c7
	add c                                            ; $67f1: $81
	rrca                                             ; $67f2: $0f
	ret nz                                           ; $67f3: $c0

	ld [hl], a                                       ; $67f4: $77
	cp a                                             ; $67f5: $bf
	inc bc                                           ; $67f6: $03
	ret nz                                           ; $67f7: $c0

	inc hl                                           ; $67f8: $23
	ret nz                                           ; $67f9: $c0

	sbc $03                                          ; $67fa: $de $03
	ld l, e                                          ; $67fc: $6b
	ld a, $1b                                        ; $67fd: $3e $1b
	ret nz                                           ; $67ff: $c0

	sbc e                                            ; $6800: $9b
	add e                                            ; $6801: $83
	inc bc                                           ; $6802: $03
	rlca                                             ; $6803: $07
	add a                                            ; $6804: $87
	inc sp                                           ; $6805: $33
	ret nz                                           ; $6806: $c0

	cp $82                                           ; $6807: $fe $82
	sbc d                                            ; $6809: $9a
	ld bc, $0302                                     ; $680a: $01 $02 $03
	inc b                                            ; $680d: $04
	inc b                                            ; $680e: $04
	sbc $08                                          ; $680f: $de $08
	sbc d                                            ; $6811: $9a
	ld bc, $0303                                     ; $6812: $01 $03 $03
	rlca                                             ; $6815: $07
	rlca                                             ; $6816: $07
	sbc $0f                                          ; $6817: $de $0f
	sub e                                            ; $6819: $93
	ld [$0509], sp                                   ; $681a: $08 $09 $05
	dec b                                            ; $681d: $05
	inc bc                                           ; $681e: $03
	ld bc, $0000                                     ; $681f: $01 $00 $00
	rrca                                             ; $6822: $0f
	rrca                                             ; $6823: $0f
	rlca                                             ; $6824: $07
	rlca                                             ; $6825: $07
	ld [hl], a                                       ; $6826: $77
	ld hl, sp-$11                                    ; $6827: $f8 $ef
	adc c                                            ; $6829: $89
	ld sp, $e5e2                                     ; $682a: $31 $e2 $e5
	sbc e                                            ; $682d: $9b
	ld a, [hl]                                       ; $682e: $7e
	sbc b                                            ; $682f: $98
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	ld [hl], c                                       ; $6832: $71
	and e                                            ; $6833: $a3
	and [hl]                                         ; $6834: $a6
	db $fc                                           ; $6835: $fc
	ld [hl], c                                       ; $6836: $71
	rst SubAFromBC                                          ; $6837: $e7
	nop                                              ; $6838: $00
	add c                                            ; $6839: $81
	ld [bc], a                                       ; $683a: $02
	ld b, $24                                        ; $683b: $06 $24
	ld c, b                                          ; $683d: $48
	sub b                                            ; $683e: $90
	sub b                                            ; $683f: $90
	reti                                             ; $6840: $d9


	rst $38                                          ; $6841: $ff
	sub a                                            ; $6842: $97
	and b                                            ; $6843: $a0
	jr nz, jr_06b_6867                               ; $6844: $20 $21

	dec h                                            ; $6846: $25
	rla                                              ; $6847: $17
	sub a                                            ; $6848: $97
	sbc a                                            ; $6849: $9f
	rst SubAFromDE                                          ; $684a: $df
	db $dd                                           ; $684b: $dd
	rst $38                                          ; $684c: $ff
	add b                                            ; $684d: $80
	cp $fc                                           ; $684e: $fe $fc
	db $fc                                           ; $6850: $fc
	ld hl, sp+$77                                    ; $6851: $f8 $77
	ccf                                              ; $6853: $3f
	inc l                                            ; $6854: $2c
	ccf                                              ; $6855: $3f
	ld a, a                                          ; $6856: $7f
	ld e, e                                          ; $6857: $5b
	ld a, c                                          ; $6858: $79
	ld a, a                                          ; $6859: $7f
	ld a, b                                          ; $685a: $78
	ld sp, $2233                                     ; $685b: $31 $33 $22
	ld h, d                                          ; $685e: $62
	ld h, [hl]                                       ; $685f: $66
	ld b, [hl]                                       ; $6860: $46
	ld b, h                                          ; $6861: $44
	ld a, a                                          ; $6862: $7f
	ld a, a                                          ; $6863: $7f
	push de                                          ; $6864: $d5
	sbc e                                            ; $6865: $9b
	xor b                                            ; $6866: $a8

jr_06b_6867:
	reti                                             ; $6867: $d9


	cp c                                             ; $6868: $b9
	or c                                             ; $6869: $b1
	ld b, h                                          ; $686a: $44
	ld b, h                                          ; $686b: $44
	xor $89                                          ; $686c: $ee $89
	rst $38                                          ; $686e: $ff
	rst FarCall                                          ; $686f: $f7
	and $c6                                          ; $6870: $e6 $c6
	adc $01                                          ; $6872: $ce $01
	ld [bc], a                                       ; $6874: $02
	dec b                                            ; $6875: $05
	rlca                                             ; $6876: $07
	ld a, [bc]                                       ; $6877: $0a
	ld c, $15                                        ; $6878: $0e $15
	dec d                                            ; $687a: $15
	ld bc, $0603                                     ; $687b: $01 $03 $06
	inc b                                            ; $687e: $04
	dec c                                            ; $687f: $0d
	add hl, bc                                       ; $6880: $09
	ld a, [de]                                       ; $6881: $1a
	ld a, [de]                                       ; $6882: $1a
	dec e                                            ; $6883: $1d
	db $dd                                           ; $6884: $dd
	dec hl                                           ; $6885: $2b
	sbc $3b                                          ; $6886: $de $3b
	sbc [hl]                                         ; $6888: $9e
	ld [de], a                                       ; $6889: $12
	db $dd                                           ; $688a: $dd
	inc [hl]                                         ; $688b: $34
	sbc $24                                          ; $688c: $de $24
	sbc h                                            ; $688e: $9c
	dec sp                                           ; $688f: $3b
	inc sp                                           ; $6890: $33
	inc sp                                           ; $6891: $33
	sbc $32                                          ; $6892: $de $32
	sbc d                                            ; $6894: $9a
	ld l, $6e                                        ; $6895: $2e $6e
	inc h                                            ; $6897: $24
	inc l                                            ; $6898: $2c
	inc l                                            ; $6899: $2c
	sbc $2d                                          ; $689a: $de $2d
	add l                                            ; $689c: $85
	add hl, sp                                       ; $689d: $39
	ld a, c                                          ; $689e: $79
	ld e, [hl]                                       ; $689f: $5e
	sbc [hl]                                         ; $68a0: $9e
	ld d, [hl]                                       ; $68a1: $56
	sub h                                            ; $68a2: $94
	dec e                                            ; $68a3: $1d
	dec l                                            ; $68a4: $2d
	ld l, c                                          ; $68a5: $69
	ld d, d                                          ; $68a6: $52
	ld a, c                                          ; $68a7: $79
	ld sp, hl                                        ; $68a8: $f9
	cp c                                             ; $68a9: $b9
	ld a, e                                          ; $68aa: $7b
	di                                               ; $68ab: $f3
	di                                               ; $68ac: $f3
	rst FarCall                                          ; $68ad: $f7
	rst AddAOntoHL                                          ; $68ae: $ef
	add d                                            ; $68af: $82
	inc b                                            ; $68b0: $04
	inc c                                            ; $68b1: $0c
	ld [$2110], sp                                   ; $68b2: $08 $10 $21
	ld b, d                                          ; $68b5: $42
	ld b, d                                          ; $68b6: $42
	reti                                             ; $68b7: $d9


	rst $38                                          ; $68b8: $ff
	sbc [hl]                                         ; $68b9: $9e
	jp $ffd9                                         ; $68ba: $c3 $d9 $ff


	sub [hl]                                         ; $68bd: $96
	db $fc                                           ; $68be: $fc
	rst JumpTable                                          ; $68bf: $c7
	adc h                                            ; $68c0: $8c
	jr nc, jr_06b_68e3                               ; $68c1: $30 $20

	ld b, b                                          ; $68c3: $40
	add b                                            ; $68c4: $80
	ld a, [hl]                                       ; $68c5: $7e
	cp $de                                           ; $68c6: $fe $de
	rst $38                                          ; $68c8: $ff
	rst SubAFromDE                                          ; $68c9: $df
	rst FarCall                                          ; $68ca: $f7
	sbc l                                            ; $68cb: $9d
	rst SubAFromBC                                          ; $68cc: $e7
	add c                                            ; $68cd: $81
	ld [hl], a                                       ; $68ce: $77
	inc [hl]                                         ; $68cf: $34
	rst SubAFromDE                                          ; $68d0: $df
	ld [$188e], sp                                   ; $68d1: $08 $8e $18
	db $e3                                           ; $68d4: $e3
	db $e3                                           ; $68d5: $e3
	pop bc                                           ; $68d6: $c1
	ret nz                                           ; $68d7: $c0

	ret nz                                           ; $68d8: $c0

	ld b, b                                          ; $68d9: $40
	and b                                            ; $68da: $a0
	sub b                                            ; $68db: $90
	inc e                                            ; $68dc: $1c
	inc e                                            ; $68dd: $1c
	ld a, $3f                                        ; $68de: $3e $3f
	cp a                                             ; $68e0: $bf
	rst $38                                          ; $68e1: $ff
	ld a, a                                          ; $68e2: $7f

jr_06b_68e3:
	ld a, a                                          ; $68e3: $7f
	xor $7e                                          ; $68e4: $ee $7e
	rst FarCall                                          ; $68e6: $f7
	sbc h                                            ; $68e7: $9c
	dec de                                           ; $68e8: $1b
	ld l, h                                          ; $68e9: $6c
	or e                                             ; $68ea: $b3
	ld [hl], e                                       ; $68eb: $73
	ld hl, sp-$6c                                    ; $68ec: $f8 $94
	inc e                                            ; $68ee: $1c
	ld [hl], e                                       ; $68ef: $73
	call z, $d2e9                                    ; $68f0: $cc $e9 $d2
	and l                                            ; $68f3: $a5
	ld l, d                                          ; $68f4: $6a
	ld [$d4d4], a                                    ; $68f5: $ea $d4 $d4
	push af                                          ; $68f8: $f5
	ld a, e                                          ; $68f9: $7b
	sbc h                                            ; $68fa: $9c
	sbc [hl]                                         ; $68fb: $9e
	add h                                            ; $68fc: $84
	halt                                             ; $68fd: $76
	ret c                                            ; $68fe: $d8

	sbc l                                            ; $68ff: $9d
	pop hl                                           ; $6900: $e1
	jp hl                                            ; $6901: $e9


	sbc $6a                                          ; $6902: $de $6a
	sbc d                                            ; $6904: $9a
	ld h, d                                          ; $6905: $62
	jr nc, @-$4a                                     ; $6906: $30 $b4

	jr jr_06b_691a                                   ; $6908: $18 $10

	sbc $91                                          ; $690a: $de $91
	sub h                                            ; $690c: $94
	sbc c                                            ; $690d: $99
	db $db                                           ; $690e: $db
	db $db                                           ; $690f: $db
	sub d                                            ; $6910: $92
	sub d                                            ; $6911: $92
	sub [hl]                                         ; $6912: $96
	sub h                                            ; $6913: $94
	xor c                                            ; $6914: $a9
	di                                               ; $6915: $f3
	call z, $d9b9                                    ; $6916: $cc $b9 $d9

jr_06b_6919:
	rst $38                                          ; $6919: $ff

jr_06b_691a:
	rst SubAFromDE                                          ; $691a: $df
	sbc c                                            ; $691b: $99
	adc c                                            ; $691c: $89
	cp c                                             ; $691d: $b9
	cp l                                             ; $691e: $bd
	dec a                                            ; $691f: $3d
	cpl                                              ; $6920: $2f
	ccf                                              ; $6921: $3f
	ccf                                              ; $6922: $3f
	rst $38                                          ; $6923: $ff
	rst $38                                          ; $6924: $ff
	rst AddAOntoHL                                          ; $6925: $ef
	rst SubAFromBC                                          ; $6926: $e7
	rst SubAFromBC                                          ; $6927: $e7
	di                                               ; $6928: $f3
	pop af                                           ; $6929: $f1
	ld sp, hl                                        ; $692a: $f9
	ld d, a                                          ; $692b: $57
	ld d, a                                          ; $692c: $57
	sub [hl]                                         ; $692d: $96
	and [hl]                                         ; $692e: $a6
	and a                                            ; $692f: $a7
	cpl                                              ; $6930: $2f
	ccf                                              ; $6931: $3f
	ld a, a                                          ; $6932: $7f
	db $db                                           ; $6933: $db
	rst $38                                          ; $6934: $ff
	sbc l                                            ; $6935: $9d
	db $f4                                           ; $6936: $f4
	db $e4                                           ; $6937: $e4
	reti                                             ; $6938: $d9


	rst $38                                          ; $6939: $ff
	rst SubAFromDE                                          ; $693a: $df
	add sp, -$21                                     ; $693b: $e8 $df
	ret nc                                           ; $693d: $d0

	sbc [hl]                                         ; $693e: $9e
	ld d, b                                          ; $693f: $50
	sbc $a0                                          ; $6940: $de $a0
	add b                                            ; $6942: $80
	cp a                                             ; $6943: $bf
	ld e, a                                          ; $6944: $5f
	dec l                                            ; $6945: $2d
	rra                                              ; $6946: $1f
	add a                                            ; $6947: $87
	jp $fff3                                         ; $6948: $c3 $f3 $ff


	ret nc                                           ; $694b: $d0

	add sp, -$0a                                     ; $694c: $e8 $f6
	ld sp, hl                                        ; $694e: $f9
	ld a, h                                          ; $694f: $7c
	ccf                                              ; $6950: $3f
	rrca                                             ; $6951: $0f
	inc c                                            ; $6952: $0c
	db $fc                                           ; $6953: $fc
	ei                                               ; $6954: $fb
	rst FarCall                                          ; $6955: $f7
	ei                                               ; $6956: $fb
	db $fd                                           ; $6957: $fd
	ld l, [hl]                                       ; $6958: $6e
	ld h, a                                          ; $6959: $67
	ld h, e                                          ; $695a: $63
	inc de                                           ; $695b: $13
	inc h                                            ; $695c: $24
	ld c, b                                          ; $695d: $48
	inc h                                            ; $695e: $24
	ld [de], a                                       ; $695f: $12
	sbc c                                            ; $6960: $99
	sbc h                                            ; $6961: $9c
	sbc [hl]                                         ; $6962: $9e
	sbc [hl]                                         ; $6963: $9e
	rst AddAOntoHL                                          ; $6964: $ef
	sbc c                                            ; $6965: $99
	jp $9db5                                         ; $6966: $c3 $b5 $9d


	add a                                            ; $6969: $87
	ld a, $c1                                        ; $696a: $3e $c1
	ld a, e                                          ; $696c: $7b
	ld hl, sp-$80                                    ; $696d: $f8 $80
	halt                                             ; $696f: $76
	cp $7e                                           ; $6970: $fe $7e
	jp $183f                                         ; $6972: $c3 $3f $18


	call nz, $2613                                   ; $6975: $c4 $13 $26
	ld e, c                                          ; $6978: $59
	or e                                             ; $6979: $b3
	ld [hl+], a                                      ; $697a: $22
	ld b, l                                          ; $697b: $45
	ldh [$03], a                                     ; $697c: $e0 $03
	inc c                                            ; $697e: $0c
	jr jr_06b_69a1                                   ; $697f: $18 $20

	ld b, b                                          ; $6981: $40
	pop bc                                           ; $6982: $c1
	add d                                            ; $6983: $82
	ld d, l                                          ; $6984: $55
	jr nc, jr_06b_6919                               ; $6985: $30 $92

	sub [hl]                                         ; $6987: $96
	or $f7                                           ; $6988: $f6 $f7
	xor $ae                                          ; $698a: $ee $ae
	add d                                            ; $698c: $82
	add [hl]                                         ; $698d: $86
	db $dd                                           ; $698e: $dd
	inc h                                            ; $698f: $24
	sbc l                                            ; $6990: $9d
	dec [hl]                                         ; $6991: $35
	ld [hl], l                                       ; $6992: $75
	ldh [$c1], a                                     ; $6993: $e0 $c1
	rst SubAFromDE                                          ; $6995: $df
	add e                                            ; $6996: $83
	adc [hl]                                         ; $6997: $8e
	jp Jump_06b_71ef                                 ; $6998: $c3 $ef $71


	rst FarCall                                          ; $699b: $f7
	reti                                             ; $699c: $d9


	add hl, sp                                       ; $699d: $39
	ld a, a                                          ; $699e: $7f
	ld a, a                                          ; $699f: $7f
	ccf                                              ; $69a0: $3f

jr_06b_69a1:
	rra                                              ; $69a1: $1f
	cp a                                             ; $69a2: $bf
	rst GetHLinHL                                          ; $69a3: $cf
	ccf                                              ; $69a4: $3f
	rst JumpTable                                          ; $69a5: $c7
	db $fd                                           ; $69a6: $fd
	db $fc                                           ; $69a7: $fc
	cp $7a                                           ; $69a8: $fe $7a
	xor [hl]                                         ; $69aa: $ae
	sbc d                                            ; $69ab: $9a
	ld a, a                                          ; $69ac: $7f
	cp a                                             ; $69ad: $bf
	inc bc                                           ; $69ae: $03
	inc bc                                           ; $69af: $03
	ld bc, $ae7a                                     ; $69b0: $01 $7a $ae
	sbc l                                            ; $69b3: $9d
	add b                                            ; $69b4: $80
	ld b, b                                          ; $69b5: $40
	ld a, [$029e]                                    ; $69b6: $fa $9e $02
	ld h, a                                          ; $69b9: $67
	ld hl, sp-$7d                                    ; $69ba: $f8 $83
	inc c                                            ; $69bc: $0c
	ld hl, sp+$4c                                    ; $69bd: $f8 $4c
	add e                                            ; $69bf: $83
	daa                                              ; $69c0: $27
	ld l, a                                          ; $69c1: $6f
	ld e, h                                          ; $69c2: $5c
	sbc c                                            ; $69c3: $99
	inc c                                            ; $69c4: $0c
	ld hl, sp-$44                                    ; $69c5: $f8 $bc
	ld a, a                                          ; $69c7: $7f
	ret c                                            ; $69c8: $d8

	sub b                                            ; $69c9: $90
	and e                                            ; $69ca: $a3
	and $40                                          ; $69cb: $e6 $40
	ld h, b                                          ; $69cd: $60
	jr nc, jr_06b_69e8                               ; $69ce: $30 $18

	ld [$0870], sp                                   ; $69d0: $08 $70 $08
	inc b                                            ; $69d3: $04
	db $fd                                           ; $69d4: $fd
	ei                                               ; $69d5: $fb
	cp $38                                           ; $69d6: $fe $38
	ld a, c                                          ; $69d8: $79
	rst AddAOntoHL                                          ; $69d9: $ef
	sbc d                                            ; $69da: $9a
	sbc a                                            ; $69db: $9f
	inc b                                            ; $69dc: $04
	ld c, a                                          ; $69dd: $4f
	sbc c                                            ; $69de: $99
	cp b                                             ; $69df: $b8
	db $dd                                           ; $69e0: $dd
	or b                                             ; $69e1: $b0
	ld a, [hl]                                       ; $69e2: $7e
	rst AddAOntoHL                                          ; $69e3: $ef
	sbc c                                            ; $69e4: $99

jr_06b_69e5:
	ret nc                                           ; $69e5: $d0

	or b                                             ; $69e6: $b0
	and b                                            ; $69e7: $a0

jr_06b_69e8:
	and b                                            ; $69e8: $a0
	ldh [$e0], a                                     ; $69e9: $e0 $e0
	ldh [$c1], a                                     ; $69eb: $e0 $c1
	adc l                                            ; $69ed: $8d
	ret nz                                           ; $69ee: $c0

	ldh [rSVBK], a                                   ; $69ef: $e0 $70
	ld a, b                                          ; $69f1: $78
	inc a                                            ; $69f2: $3c
	rra                                              ; $69f3: $1f
	add hl, bc                                       ; $69f4: $09
	rrca                                             ; $69f5: $0f
	ccf                                              ; $69f6: $3f
	sbc a                                            ; $69f7: $9f
	ld c, a                                          ; $69f8: $4f
	ld b, a                                          ; $69f9: $47

jr_06b_69fa:
	inc hl                                           ; $69fa: $23
	ld e, $09                                        ; $69fb: $1e $09
	rrca                                             ; $69fd: $0f
	rlca                                             ; $69fe: $07
	add e                                            ; $69ff: $83
	db $db                                           ; $6a00: $db
	add b                                            ; $6a01: $80
	sbc l                                            ; $6a02: $9d
	inc b                                            ; $6a03: $04
	add d                                            ; $6a04: $82
	db $db                                           ; $6a05: $db
	add b                                            ; $6a06: $80
	xor $9a                                          ; $6a07: $ee $9a
	add b                                            ; $6a09: $80
	ldh [rAUD2LOW], a                                ; $6a0a: $e0 $18
	ld b, $f9                                        ; $6a0c: $06 $f9
	ld [hl], a                                       ; $6a0e: $77
	ld hl, sp-$80                                    ; $6a0f: $f8 $80
	ld h, b                                          ; $6a11: $60
	ld hl, sp-$02                                    ; $6a12: $f8 $fe
	rlca                                             ; $6a14: $07
	cp $cf                                           ; $6a15: $fe $cf
	ld [hl], e                                       ; $6a17: $73
	add hl, de                                       ; $6a18: $19
	call $7ae4                                       ; $6a19: $cd $e4 $7a
	cp d                                             ; $6a1c: $ba
	ld bc, $0c30                                     ; $6a1d: $01 $30 $0c
	ld b, $02                                        ; $6a20: $06 $02
	inc bc                                           ; $6a22: $03
	ld hl, $dc11                                     ; $6a23: $21 $11 $dc
	db $fd                                           ; $6a26: $fd
	cp l                                             ; $6a27: $bd
	db $fd                                           ; $6a28: $fd
	ld a, a                                          ; $6a29: $7f
	ld e, a                                          ; $6a2a: $5f
	ld a, a                                          ; $6a2b: $7f
	ld a, l                                          ; $6a2c: $7d
	sub c                                            ; $6a2d: $91
	ld c, b                                          ; $6a2e: $48
	xor b                                            ; $6a2f: $a8
	sbc [hl]                                         ; $6a30: $9e
	xor b                                            ; $6a31: $a8
	sbc $54                                          ; $6a32: $de $54
	sbc [hl]                                         ; $6a34: $9e
	ld e, [hl]                                       ; $6a35: $5e
	ldh [$c1], a                                     ; $6a36: $e0 $c1
	sbc $77                                          ; $6a38: $de $77

jr_06b_6a3a:
	adc a                                            ; $6a3a: $8f
	scf                                              ; $6a3b: $37
	dec [hl]                                         ; $6a3c: $35
	jp hl                                            ; $6a3d: $e9


	sbc c                                            ; $6a3e: $99
	rra                                              ; $6a3f: $1f
	or a                                             ; $6a40: $b7
	sub l                                            ; $6a41: $95
	sub l                                            ; $6a42: $95
	push de                                          ; $6a43: $d5
	rst FarCall                                          ; $6a44: $f7
	ld a, a                                          ; $6a45: $7f
	sub $30                                          ; $6a46: $d6 $30
	sbc a                                            ; $6a48: $9f
	rst $38                                          ; $6a49: $ff
	db $db                                           ; $6a4a: $db
	db $fc                                           ; $6a4b: $fc
	sbc l                                            ; $6a4c: $9d
	sub b                                            ; $6a4d: $90
	ld h, c                                          ; $6a4e: $61
	ld l, a                                          ; $6a4f: $6f
	ld hl, sp-$69                                    ; $6a50: $f8 $97
	ret nz                                           ; $6a52: $c0

	jr nz, jr_06b_69e5                               ; $6a53: $20 $90

	sbc b                                            ; $6a55: $98
	ret z                                            ; $6a56: $c8

	call z, Call_06b_7cec                            ; $6a57: $cc $ec $7c
	ld a, e                                          ; $6a5a: $7b
	jr c, @-$71                                      ; $6a5b: $38 $8d

	ld l, b                                          ; $6a5d: $68
	jr c, jr_06b_6a94                                ; $6a5e: $38 $34

	inc d                                            ; $6a60: $14
	sub h                                            ; $6a61: $94
	ld a, d                                          ; $6a62: $7a
	ld a, [$f6fe]                                    ; $6a63: $fa $fe $f6
	sub $96                                          ; $6a66: $d6 $96
	ld e, [hl]                                       ; $6a68: $5e
	ld e, [hl]                                       ; $6a69: $5e
	sub [hl]                                         ; $6a6a: $96
	sub [hl]                                         ; $6a6b: $96
	sub d                                            ; $6a6c: $92
	sbc d                                            ; $6a6d: $9a
	cp d                                             ; $6a6e: $ba
	sbc $fa                                          ; $6a6f: $de $fa
	ldh [$c1], a                                     ; $6a71: $e0 $c1
	rst SubAFromDE                                          ; $6a73: $df
	rst $38                                          ; $6a74: $ff
	sub l                                            ; $6a75: $95
	ld a, [hl]                                       ; $6a76: $7e
	ld a, h                                          ; $6a77: $7c
	jr jr_06b_69fa                                   ; $6a78: $18 $80

	add b                                            ; $6a7a: $80
	pop bc                                           ; $6a7b: $c1
	add hl, de                                       ; $6a7c: $19
	adc l                                            ; $6a7d: $8d
	rst JumpTable                                          ; $6a7e: $c7
	rst SubAFromBC                                          ; $6a7f: $e7
	db $dd                                           ; $6a80: $dd
	rst $38                                          ; $6a81: $ff
	ld a, [hl]                                       ; $6a82: $7e
	adc b                                            ; $6a83: $88
	ld a, [hl]                                       ; $6a84: $7e
	sub $94                                          ; $6a85: $d6 $94
	cpl                                              ; $6a87: $2f
	rla                                              ; $6a88: $17
	ld c, e                                          ; $6a89: $4b
	rla                                              ; $6a8a: $17
	cp $e8                                           ; $6a8b: $fe $e8
	inc c                                            ; $6a8d: $0c
	inc b                                            ; $6a8e: $04
	inc b                                            ; $6a8f: $04
	nop                                              ; $6a90: $00
	ld [bc], a                                       ; $6a91: $02
	ld [hl], d                                       ; $6a92: $72
	ld c, b                                          ; $6a93: $48

jr_06b_6a94:
	rst SubAFromDE                                          ; $6a94: $df
	add b                                            ; $6a95: $80
	sbc l                                            ; $6a96: $9d
	ld b, b                                          ; $6a97: $40
	ret nz                                           ; $6a98: $c0

	ld l, a                                          ; $6a99: $6f
	ld hl, sp+$7c                                    ; $6a9a: $f8 $7c
	and $7e                                          ; $6a9c: $e6 $7e
	ld d, c                                          ; $6a9e: $51
	add b                                            ; $6a9f: $80
	jr z, jr_06b_6a3a                                ; $6aa0: $28 $98

	ld [hl], h                                       ; $6aa2: $74
	xor h                                            ; $6aa3: $ac
	call c, $a076                                    ; $6aa4: $dc $76 $a0
	ret nc                                           ; $6aa7: $d0

	ret c                                            ; $6aa8: $d8

	add sp, -$14                                     ; $6aa9: $e8 $ec
	db $f4                                           ; $6aab: $f4
	or h                                             ; $6aac: $b4
	jp c, $9aee                                      ; $6aad: $da $ee $9a

	or [hl]                                          ; $6ab0: $b6
	xor $da                                          ; $6ab1: $ee $da
	db $dd                                           ; $6ab3: $dd
	push af                                          ; $6ab4: $f5
	db $ed                                           ; $6ab5: $ed
	ld e, d                                          ; $6ab6: $5a
	ld l, [hl]                                       ; $6ab7: $6e
	ld l, [hl]                                       ; $6ab8: $6e
	ld [hl], $36                                     ; $6ab9: $36 $36
	inc sp                                           ; $6abb: $33
	dec de                                           ; $6abc: $1b
	sbc e                                            ; $6abd: $9b
	db $ed                                           ; $6abe: $ed
	sub b                                            ; $6abf: $90
	ld l, l                                          ; $6ac0: $6d
	xor l                                            ; $6ac1: $ad
	xor d                                            ; $6ac2: $aa
	ldh a, [c]                                       ; $6ac3: $f2
	call nc, $9ed4                                   ; $6ac4: $d4 $d4 $9e
	db $db                                           ; $6ac7: $db
	db $db                                           ; $6ac8: $db
	ld a, e                                          ; $6ac9: $7b
	ld a, [hl]                                       ; $6aca: $7e
	ld a, $3c                                        ; $6acb: $3e $3c
	inc a                                            ; $6acd: $3c
	ld a, [hl]                                       ; $6ace: $7e
	db $dd                                           ; $6acf: $dd
	rra                                              ; $6ad0: $1f
	rst SubAFromDE                                          ; $6ad1: $df
	ccf                                              ; $6ad2: $3f
	ld a, a                                          ; $6ad3: $7f
	xor d                                            ; $6ad4: $aa
	sbc [hl]                                         ; $6ad5: $9e
	pop af                                           ; $6ad6: $f1
	sbc $f0                                          ; $6ad7: $de $f0
	sbc $e0                                          ; $6ad9: $de $e0
	sbc [hl]                                         ; $6adb: $9e
	ret nc                                           ; $6adc: $d0

	reti                                             ; $6add: $d9


	rst $38                                          ; $6ade: $ff
	sbc h                                            ; $6adf: $9c
	ld l, b                                          ; $6ae0: $68
	inc d                                            ; $6ae1: $14
	ld a, [bc]                                       ; $6ae2: $0a
	sbc $05                                          ; $6ae3: $de $05
	rst SubAFromDE                                          ; $6ae5: $df
	dec bc                                           ; $6ae6: $0b
	ld [hl], a                                       ; $6ae7: $77
	xor e                                            ; $6ae8: $ab
	ld a, a                                          ; $6ae9: $7f
	inc h                                            ; $6aea: $24
	sbc l                                            ; $6aeb: $9d
	ldh [$f0], a                                     ; $6aec: $e0 $f0
	ld [hl], a                                       ; $6aee: $77
	sbc e                                            ; $6aef: $9b
	sbc d                                            ; $6af0: $9a
	ld b, b                                          ; $6af1: $40
	jr nz, @+$22                                     ; $6af2: $20 $20

	db $10                                           ; $6af4: $10
	ldh a, [$de]                                     ; $6af5: $f0 $de
	ld hl, sp-$21                                    ; $6af7: $f8 $df
	db $fc                                           ; $6af9: $fc
	rst SubAFromDE                                          ; $6afa: $df
	cp $97                                           ; $6afb: $fe $97
	db $10                                           ; $6afd: $10
	jr jr_06b_6b18                                   ; $6afe: $18 $18

	jr z, @+$66                                      ; $6b00: $28 $64

	call nz, $3222                                   ; $6b02: $c4 $22 $32
	inc hl                                           ; $6b05: $23
	nop                                              ; $6b06: $00
	rst SubAFromDE                                          ; $6b07: $df
	adc b                                            ; $6b08: $88
	sbc l                                            ; $6b09: $9d
	ld b, h                                          ; $6b0a: $44
	xor d                                            ; $6b0b: $aa
	ld a, e                                          ; $6b0c: $7b
	db $fc                                           ; $6b0d: $fc
	sbc e                                            ; $6b0e: $9b
	ld [hl+], a                                      ; $6b0f: $22
	adc b                                            ; $6b10: $88
	nop                                              ; $6b11: $00
	ld de, $fb77                                     ; $6b12: $11 $77 $fb
	rst SubAFromDE                                          ; $6b15: $df
	sbc c                                            ; $6b16: $99
	ld a, a                                          ; $6b17: $7f

jr_06b_6b18:
	ei                                               ; $6b18: $fb
	sbc e                                            ; $6b19: $9b
	ld de, $9999                                     ; $6b1a: $11 $99 $99
	ld d, l                                          ; $6b1d: $55
	ld [hl], a                                       ; $6b1e: $77
	or $7f                                           ; $6b1f: $f6 $7f
	ei                                               ; $6b21: $fb
	rst SubAFromDE                                          ; $6b22: $df
	sbc c                                            ; $6b23: $99
	sbc [hl]                                         ; $6b24: $9e
	ld b, h                                          ; $6b25: $44
	ld [hl], a                                       ; $6b26: $77
	ldh [$bb], a                                     ; $6b27: $e0 $bb
	ld bc, $4586                                     ; $6b29: $01 $86 $45
	rst $38                                          ; $6b2c: $ff
	ld c, c                                          ; $6b2d: $49
	rst $38                                          ; $6b2e: $ff
	ld c, e                                          ; $6b2f: $4b
	cp $9e                                           ; $6b30: $fe $9e
	db $fd                                           ; $6b32: $fd
	add hl, de                                       ; $6b33: $19

jr_06b_6b34:
	rst $38                                          ; $6b34: $ff
	rst SubAFromBC                                          ; $6b35: $e7
	cp $ff                                           ; $6b36: $fe $ff
	ld hl, sp-$7b                                    ; $6b38: $f8 $85
	inc bc                                           ; $6b3a: $03
	rla                                              ; $6b3b: $17
	rrca                                             ; $6b3c: $0f
	dec de                                           ; $6b3d: $1b
	dec sp                                           ; $6b3e: $3b
	dec l                                            ; $6b3f: $2d
	rra                                              ; $6b40: $1f
	ld e, $07                                        ; $6b41: $1e $07
	rrca                                             ; $6b43: $0f
	cp l                                             ; $6b44: $bd
	rlca                                             ; $6b45: $07
	nop                                              ; $6b46: $00
	add b                                            ; $6b47: $80
	ret nz                                           ; $6b48: $c0

	sub b                                            ; $6b49: $90
	add b                                            ; $6b4a: $80
	ldh [$c0], a                                     ; $6b4b: $e0 $c0
	ldh a, [$e0]                                     ; $6b4d: $f0 $e0
	ld hl, sp-$10                                    ; $6b4f: $f8 $f0
	cp h                                             ; $6b51: $bc
	ld hl, sp+$1f                                    ; $6b52: $f8 $1f
	or $1f                                           ; $6b54: $f6 $1f
	pop af                                           ; $6b56: $f1
	ccf                                              ; $6b57: $3f
	ldh a, [$6f]                                     ; $6b58: $f0 $6f
	cp $82                                           ; $6b5a: $fe $82
	ld e, $f8                                        ; $6b5c: $1e $f8
	ld e, $f8                                        ; $6b5e: $1e $f8
	ld c, $fc                                        ; $6b60: $0e $fc
	rlca                                             ; $6b62: $07
	db $fc                                           ; $6b63: $fc
	inc bc                                           ; $6b64: $03
	cp $70                                           ; $6b65: $fe $70
	ldh [$f0], a                                     ; $6b67: $e0 $f0
	jr nc, @-$66                                     ; $6b69: $30 $98

	ld [hl], b                                       ; $6b6b: $70
	ld a, b                                          ; $6b6c: $78
	add sp, -$08                                     ; $6b6d: $e8 $f8
	add h                                            ; $6b6f: $84
	ldh a, [rP1]                                     ; $6b70: $f0 $00
	jr nc, jr_06b_6b34                               ; $6b72: $30 $c0

	ret nc                                           ; $6b74: $d0

	ldh [$c0], a                                     ; $6b75: $e0 $c0
	jr nz, jr_06b_6b99                               ; $6b77: $20 $20

	cp d                                             ; $6b79: $ba
	nop                                              ; $6b7a: $00
	add b                                            ; $6b7b: $80
	ldh [$80], a                                     ; $6b7c: $e0 $80
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	ld a, [hl]                                       ; $6b80: $7e
	adc e                                            ; $6b81: $8b
	daa                                              ; $6b82: $27
	ld l, [hl]                                       ; $6b83: $6e
	inc sp                                           ; $6b84: $33
	ld e, l                                          ; $6b85: $5d
	ccf                                              ; $6b86: $3f
	dec sp                                           ; $6b87: $3b
	rlca                                             ; $6b88: $07
	halt                                             ; $6b89: $76
	add hl, bc                                       ; $6b8a: $09
	ld a, e                                          ; $6b8b: $7b
	inc e                                            ; $6b8c: $1c
	ld a, $3f                                        ; $6b8d: $3e $3f
	dec [hl]                                         ; $6b8f: $35
	cpl                                              ; $6b90: $2f
	ld a, [hl-]                                      ; $6b91: $3a
	inc e                                            ; $6b92: $1c
	rla                                              ; $6b93: $17
	inc e                                            ; $6b94: $1c
	cp a                                             ; $6b95: $bf
	cp l                                             ; $6b96: $bd
	rst GetHLinHL                                          ; $6b97: $cf
	pop hl                                           ; $6b98: $e1

jr_06b_6b99:
	ld h, e                                          ; $6b99: $63
	inc hl                                           ; $6b9a: $23
	sbc e                                            ; $6b9b: $9b
	ld b, b                                          ; $6b9c: $40
	jp Jump_06b_5940                                 ; $6b9d: $c3 $40 $59


	ld a, e                                          ; $6ba0: $7b
	add b                                            ; $6ba1: $80
	adc [hl]                                         ; $6ba2: $8e
	add hl, hl                                       ; $6ba3: $29
	rst $38                                          ; $6ba4: $ff
	sbc c                                            ; $6ba5: $99
	rst $38                                          ; $6ba6: $ff
	ld a, h                                          ; $6ba7: $7c
	rst $38                                          ; $6ba8: $ff
	db $fc                                           ; $6ba9: $fc
	ccf                                              ; $6baa: $3f
	db $ec                                           ; $6bab: $ec
	ccf                                              ; $6bac: $3f
	ld [hl], $ff                                     ; $6bad: $36 $ff
	jp c, $fb7f                                      ; $6baf: $da $7f $fb

	ld e, a                                          ; $6bb2: $5f
	push af                                          ; $6bb3: $f5
	ld [hl], e                                       ; $6bb4: $73
	cp $80                                           ; $6bb5: $fe $80
	db $e4                                           ; $6bb7: $e4
	ld a, a                                          ; $6bb8: $7f
	ldh [c], a                                       ; $6bb9: $e2
	ld a, a                                          ; $6bba: $7f
	ld d, d                                          ; $6bbb: $52
	rst $38                                          ; $6bbc: $ff
	push af                                          ; $6bbd: $f5
	db $db                                           ; $6bbe: $db
	db $eb                                           ; $6bbf: $eb
	db $dd                                           ; $6bc0: $dd
	db $db                                           ; $6bc1: $db
	db $ed                                           ; $6bc2: $ed
	or $ed                                           ; $6bc3: $f6 $ed
	db $ec                                           ; $6bc5: $ec
	rst FarCall                                          ; $6bc6: $f7
	ld e, d                                          ; $6bc7: $5a
	rst FarCall                                          ; $6bc8: $f7
	ld [hl], l                                       ; $6bc9: $75
	db $db                                           ; $6bca: $db
	ld l, e                                          ; $6bcb: $6b
	db $dd                                           ; $6bcc: $dd
	ld l, a                                          ; $6bcd: $6f
	call c, $de2d                                    ; $6bce: $dc $2d $de
	ld l, e                                          ; $6bd1: $6b
	sbc [hl]                                         ; $6bd2: $9e
	ld l, [hl]                                       ; $6bd3: $6e
	sbc e                                            ; $6bd4: $9b
	ld c, [hl]                                       ; $6bd5: $4e
	sbc b                                            ; $6bd6: $98
	cp e                                             ; $6bd7: $bb
	sbc a                                            ; $6bd8: $9f
	ld a, a                                          ; $6bd9: $7f
	inc sp                                           ; $6bda: $33
	rst $38                                          ; $6bdb: $ff
	pop af                                           ; $6bdc: $f1
	rst $38                                          ; $6bdd: $ff
	ld l, a                                          ; $6bde: $6f
	ld b, b                                          ; $6bdf: $40
	sub d                                            ; $6be0: $92
	sbc a                                            ; $6be1: $9f
	db $fc                                           ; $6be2: $fc
	inc e                                            ; $6be3: $1c
	ei                                               ; $6be4: $fb
	db $e3                                           ; $6be5: $e3
	rst $38                                          ; $6be6: $ff
	rst $38                                          ; $6be7: $ff
	db $fc                                           ; $6be8: $fc
	add [hl]                                         ; $6be9: $86
	ld bc, $0f13                                     ; $6bea: $01 $13 $0f
	ld a, [de]                                       ; $6bed: $1a
	ld d, e                                          ; $6bee: $53
	ld b, b                                          ; $6bef: $40
	ld d, a                                          ; $6bf0: $57
	ld h, b                                          ; $6bf1: $60
	ld a, e                                          ; $6bf2: $7b
	cp $9c                                           ; $6bf3: $fe $9c
	ldh [$80], a                                     ; $6bf5: $e0 $80
	ldh [rBGP], a                                    ; $6bf7: $e0 $47
	ld h, b                                          ; $6bf9: $60
	sub d                                            ; $6bfa: $92
	ld a, [hl]                                       ; $6bfb: $7e
	inc hl                                           ; $6bfc: $23
	ld e, e                                          ; $6bfd: $5b
	dec a                                            ; $6bfe: $3d
	daa                                              ; $6bff: $27
	rra                                              ; $6c00: $1f
	ld a, l                                          ; $6c01: $7d
	inc bc                                           ; $6c02: $03
	ld h, a                                          ; $6c03: $67
	jr jr_06b_6c22                                   ; $6c04: $18 $1c

	ccf                                              ; $6c06: $3f
	scf                                              ; $6c07: $37
	ld a, e                                          ; $6c08: $7b
	ld h, b                                          ; $6c09: $60
	sbc [hl]                                         ; $6c0a: $9e
	rrca                                             ; $6c0b: $0f
	inc sp                                           ; $6c0c: $33
	ld h, b                                          ; $6c0d: $60
	sbc [hl]                                         ; $6c0e: $9e
	db $fc                                           ; $6c0f: $fc
	dec hl                                           ; $6c10: $2b
	ld h, b                                          ; $6c11: $60
	ld h, a                                          ; $6c12: $67
	add b                                            ; $6c13: $80
	sub b                                            ; $6c14: $90
	ld e, $f9                                        ; $6c15: $1e $f9
	db $e3                                           ; $6c17: $e3
	rst $38                                          ; $6c18: $ff
	db $fd                                           ; $6c19: $fd
	cp $87                                           ; $6c1a: $fe $87
	nop                                              ; $6c1c: $00
	ld e, $01                                        ; $6c1d: $1e $01
	cpl                                              ; $6c1f: $2f
	rra                                              ; $6c20: $1f
	dec e                                            ; $6c21: $1d

jr_06b_6c22:
	ccf                                              ; $6c22: $3f
	rra                                              ; $6c23: $1f
	ld d, e                                          ; $6c24: $53
	add b                                            ; $6c25: $80
	sub a                                            ; $6c26: $97
	ld hl, sp+$10                                    ; $6c27: $f8 $10
	sbc b                                            ; $6c29: $98
	ld l, b                                          ; $6c2a: $68
	ld a, b                                          ; $6c2b: $78
	db $e4                                           ; $6c2c: $e4
	ldh a, [$80]                                     ; $6c2d: $f0 $80
	ld [hl], a                                       ; $6c2f: $77
	ld a, [hl]                                       ; $6c30: $7e
	sbc e                                            ; $6c31: $9b
	ld b, b                                          ; $6c32: $40
	ldh [$a0], a                                     ; $6c33: $e0 $a0
	ret nz                                           ; $6c35: $c0

	cp a                                             ; $6c36: $bf
	ret nz                                           ; $6c37: $c0

	nop                                              ; $6c38: $00
	ld d, a                                          ; $6c39: $57
	add b                                            ; $6c3a: $80
	adc a                                            ; $6c3b: $8f
	ld l, a                                          ; $6c3c: $6f
	ld de, $3f1f                                     ; $6c3d: $11 $1f $3f
	ld [hl], c                                       ; $6c40: $71
	rrca                                             ; $6c41: $0f
	ld a, a                                          ; $6c42: $7f
	nop                                              ; $6c43: $00
	inc sp                                           ; $6c44: $33
	inc c                                            ; $6c45: $0c
	inc c                                            ; $6c46: $0c
	ccf                                              ; $6c47: $3f
	dec sp                                           ; $6c48: $3b
	ccf                                              ; $6c49: $3f
	dec c                                            ; $6c4a: $0d
	ld e, $1f                                        ; $6c4b: $1e $1f
	add b                                            ; $6c4d: $80
	sbc e                                            ; $6c4e: $9b
	or [hl]                                          ; $6c4f: $b6
	ld a, a                                          ; $6c50: $7f
	ld e, d                                          ; $6c51: $5a
	rst $38                                          ; $6c52: $ff
	daa                                              ; $6c53: $27
	add b                                            ; $6c54: $80
	sbc b                                            ; $6c55: $98
	ld sp, hl                                        ; $6c56: $f9
	rst SubAFromBC                                          ; $6c57: $e7
	rst $38                                          ; $6c58: $ff
	cp $87                                           ; $6c59: $fe $87
	jr c, jr_06b_6c7c                                ; $6c5b: $38 $1f

	cp a                                             ; $6c5d: $bf
	ccf                                              ; $6c5e: $3f
	ld d, $9c                                        ; $6c5f: $16 $9c
	add hl, sp                                       ; $6c61: $39
	rra                                              ; $6c62: $1f
	rrca                                             ; $6c63: $0f
	daa                                              ; $6c64: $27
	add b                                            ; $6c65: $80
	ld a, a                                          ; $6c66: $7f
	adc b                                            ; $6c67: $88
	ld a, a                                          ; $6c68: $7f
	cp $9e                                           ; $6c69: $fe $9e
	ret nz                                           ; $6c6b: $c0

	ld a, e                                          ; $6c6c: $7b
	add e                                            ; $6c6d: $83
	ld c, a                                          ; $6c6e: $4f
	add b                                            ; $6c6f: $80
	sbc h                                            ; $6c70: $9c
	jr jr_06b_6cb2                                   ; $6c71: $18 $3f

	ld [hl], a                                       ; $6c73: $77
	ld a, e                                          ; $6c74: $7b
	add b                                            ; $6c75: $80
	ld a, a                                          ; $6c76: $7f
	add $7f                                          ; $6c77: $c6 $7f
	cp $9b                                           ; $6c79: $fe $9b
	dec [hl]                                         ; $6c7b: $35

jr_06b_6c7c:
	dec sp                                           ; $6c7c: $3b
	ld c, $1f                                        ; $6c7d: $0e $1f
	rla                                              ; $6c7f: $17
	add b                                            ; $6c80: $80
	sbc [hl]                                         ; $6c81: $9e
	jp c, $804b                                      ; $6c82: $da $4b $80

	rst $38                                          ; $6c85: $ff
	sbc h                                            ; $6c86: $9c
	inc bc                                           ; $6c87: $03
	ld bc, $bd01                                     ; $6c88: $01 $01 $bd
	nop                                              ; $6c8b: $00
	ld bc, $4000                                     ; $6c8c: $01 $00 $40
	sub a                                            ; $6c8f: $97
	add b                                            ; $6c90: $80
	ld hl, sp-$20                                    ; $6c91: $f8 $e0
	cp d                                             ; $6c93: $ba
	ld a, h                                          ; $6c94: $7c
	rst SubAFromDE                                          ; $6c95: $df
	ccf                                              ; $6c96: $3f
	cpl                                              ; $6c97: $2f
	ld a, e                                          ; $6c98: $7b
	ld bc, $069e                                     ; $6c99: $01 $9e $06
	ld [hl], e                                       ; $6c9c: $73
	ld [$9c7f], a                                    ; $6c9d: $ea $7f $9c
	sub d                                            ; $6ca0: $92
	inc bc                                           ; $6ca1: $03
	nop                                              ; $6ca2: $00
	inc bc                                           ; $6ca3: $03
	ld b, b                                          ; $6ca4: $40
	add a                                            ; $6ca5: $87
	ld bc, $0305                                     ; $6ca6: $01 $05 $03
	add e                                            ; $6ca9: $83
	rlca                                             ; $6caa: $07
	rlca                                             ; $6cab: $07
	rrca                                             ; $6cac: $0f
	rrca                                             ; $6cad: $0f
	ld a, d                                          ; $6cae: $7a
	and $8f                                          ; $6caf: $e6 $8f
	dec a                                            ; $6cb1: $3d

jr_06b_6cb2:
	ld a, a                                          ; $6cb2: $7f
	db $ed                                           ; $6cb3: $ed
	rst $38                                          ; $6cb4: $ff
	call $cbff                                       ; $6cb5: $cd $ff $cb
	rst $38                                          ; $6cb8: $ff
	ld b, [hl]                                       ; $6cb9: $46
	rst $38                                          ; $6cba: $ff
	db $ec                                           ; $6cbb: $ec
	ld a, a                                          ; $6cbc: $7f
	ldh a, [$7f]                                     ; $6cbd: $f0 $7f
	ld a, h                                          ; $6cbf: $7c
	ld a, a                                          ; $6cc0: $7f
	ld a, e                                          ; $6cc1: $7b
	add $7f                                          ; $6cc2: $c6 $7f
	cp a                                             ; $6cc4: $bf
	rlca                                             ; $6cc5: $07
	ret nz                                           ; $6cc6: $c0

	sbc [hl]                                         ; $6cc7: $9e
	add c                                            ; $6cc8: $81
	rrca                                             ; $6cc9: $0f
	ret nz                                           ; $6cca: $c0

	ld [hl], e                                       ; $6ccb: $73
	cp a                                             ; $6ccc: $bf
	cp a                                             ; $6ccd: $bf

jr_06b_6cce:
	ld bc, $1f40                                     ; $6cce: $01 $40 $1f
	ret nz                                           ; $6cd1: $c0

	rst SubAFromDE                                          ; $6cd2: $df
	add e                                            ; $6cd3: $83
	sbc l                                            ; $6cd4: $9d
	rlca                                             ; $6cd5: $07
	add a                                            ; $6cd6: $87
	rla                                              ; $6cd7: $17
	ret nz                                           ; $6cd8: $c0

	ld a, e                                          ; $6cd9: $7b
	db $d3                                           ; $6cda: $d3

jr_06b_6cdb:
	rra                                              ; $6cdb: $1f
	ret nz                                           ; $6cdc: $c0

	sbc h                                            ; $6cdd: $9c
	rst JumpTable                                          ; $6cde: $c7
	add c                                            ; $6cdf: $81
	add l                                            ; $6ce0: $85
	inc hl                                           ; $6ce1: $23
	ret nz                                           ; $6ce2: $c0

	adc $01                                          ; $6ce3: $ce $01
	sub [hl]                                         ; $6ce5: $96
	ld b, l                                          ; $6ce6: $45
	rst $38                                          ; $6ce7: $ff
	ld c, c                                          ; $6ce8: $49
	rst $38                                          ; $6ce9: $ff
	ld c, e                                          ; $6cea: $4b
	cp $9f                                           ; $6ceb: $fe $9f
	db $fc                                           ; $6ced: $fc
	jr jr_06b_6cce                                   ; $6cee: $18 $de

	rst $38                                          ; $6cf0: $ff
	sbc h                                            ; $6cf1: $9c
	rst AddAOntoHL                                          ; $6cf2: $ef
	ldh a, [hDisp0_OBP1]                                     ; $6cf3: $f0 $87
	cp [hl]                                          ; $6cf5: $be
	rra                                              ; $6cf6: $1f
	ccf                                              ; $6cf7: $3f
	dec de                                           ; $6cf8: $1b
	sbc h                                            ; $6cf9: $9c
	inc a                                            ; $6cfa: $3c
	rla                                              ; $6cfb: $17
	rrca                                             ; $6cfc: $0f
	ei                                               ; $6cfd: $fb
	adc l                                            ; $6cfe: $8d
	add b                                            ; $6cff: $80
	nop                                              ; $6d00: $00
	ret nz                                           ; $6d01: $c0

	add b                                            ; $6d02: $80
	ldh [$c0], a                                     ; $6d03: $e0 $c0
	ldh a, [$e0]                                     ; $6d05: $f0 $e0
	ld hl, sp-$10                                    ; $6d07: $f8 $f0
	cp h                                             ; $6d09: $bc
	ld hl, sp+$1f                                    ; $6d0a: $f8 $1f
	or $1f                                           ; $6d0c: $f6 $1f
	pop af                                           ; $6d0e: $f1
	ccf                                              ; $6d0f: $3f
	ldh a, [$6f]                                     ; $6d10: $f0 $6f
	cp $86                                           ; $6d12: $fe $86
	ld e, $f8                                        ; $6d14: $1e $f8
	ld e, $f8                                        ; $6d16: $1e $f8
	ld c, $fc                                        ; $6d18: $0e $fc
	rlca                                             ; $6d1a: $07
	db $fc                                           ; $6d1b: $fc
	inc bc                                           ; $6d1c: $03
	cp $70                                           ; $6d1d: $fe $70
	ldh [$f0], a                                     ; $6d1f: $e0 $f0
	jr nc, jr_06b_6cdb                               ; $6d21: $30 $b8

	db $10                                           ; $6d23: $10
	jr jr_06b_6d2e                                   ; $6d24: $18 $08

	ld [$8084], sp                                   ; $6d26: $08 $84 $80
	ldh [$f0], a                                     ; $6d29: $e0 $f0
	ld h, b                                          ; $6d2b: $60
	ldh a, [$be]                                     ; $6d2c: $f0 $be

jr_06b_6d2e:
	ldh [$e0], a                                     ; $6d2e: $e0 $e0
	ld b, b                                          ; $6d30: $40
	sbc h                                            ; $6d31: $9c
	ldh [$80], a                                     ; $6d32: $e0 $80
	ret nz                                           ; $6d34: $c0

	ld sp, hl                                        ; $6d35: $f9
	sub h                                            ; $6d36: $94
	ld a, [hl]                                       ; $6d37: $7e
	daa                                              ; $6d38: $27
	ld a, [hl]                                       ; $6d39: $7e
	inc hl                                           ; $6d3a: $23
	ld a, c                                          ; $6d3b: $79
	rlca                                             ; $6d3c: $07
	cpl                                              ; $6d3d: $2f
	rra                                              ; $6d3e: $1f
	ld d, a                                          ; $6d3f: $57
	jr c, jr_06b_6dc1                                ; $6d40: $38 $7f

	cp [hl]                                          ; $6d42: $be
	ccf                                              ; $6d43: $3f
	ccf                                              ; $6d44: $3f
	dec l                                            ; $6d45: $2d
	sbc e                                            ; $6d46: $9b
	inc sp                                           ; $6d47: $33
	ld e, $1f                                        ; $6d48: $1e $1f
	add e                                            ; $6d4a: $83
	cp l                                             ; $6d4b: $bd
	pop bc                                           ; $6d4c: $c1
	pop hl                                           ; $6d4d: $e1
	ld h, e                                          ; $6d4e: $63
	inc hl                                           ; $6d4f: $23
	sbc e                                            ; $6d50: $9b
	ld b, b                                          ; $6d51: $40
	jp Jump_06b_5940                                 ; $6d52: $c3 $40 $59


	ld a, e                                          ; $6d55: $7b
	add b                                            ; $6d56: $80
	adc [hl]                                         ; $6d57: $8e
	add hl, hl                                       ; $6d58: $29
	rst $38                                          ; $6d59: $ff
	sbc c                                            ; $6d5a: $99
	rst $38                                          ; $6d5b: $ff
	db $fc                                           ; $6d5c: $fc
	ld a, a                                          ; $6d5d: $7f
	db $fc                                           ; $6d5e: $fc
	ccf                                              ; $6d5f: $3f
	db $ec                                           ; $6d60: $ec
	ccf                                              ; $6d61: $3f
	or [hl]                                          ; $6d62: $b6
	ld a, a                                          ; $6d63: $7f
	ld e, d                                          ; $6d64: $5a
	rst $38                                          ; $6d65: $ff
	ei                                               ; $6d66: $fb
	ld e, a                                          ; $6d67: $5f
	push af                                          ; $6d68: $f5
	ld [hl], e                                       ; $6d69: $73
	cp $80                                           ; $6d6a: $fe $80
	db $e4                                           ; $6d6c: $e4
	ld a, a                                          ; $6d6d: $7f
	ldh [c], a                                       ; $6d6e: $e2
	ld a, a                                          ; $6d6f: $7f
	ld d, d                                          ; $6d70: $52
	rst $38                                          ; $6d71: $ff
	push af                                          ; $6d72: $f5
	db $db                                           ; $6d73: $db
	db $eb                                           ; $6d74: $eb
	db $dd                                           ; $6d75: $dd
	db $db                                           ; $6d76: $db
	db $ed                                           ; $6d77: $ed
	or $ed                                           ; $6d78: $f6 $ed
	db $ec                                           ; $6d7a: $ec
	rst FarCall                                          ; $6d7b: $f7
	ld e, d                                          ; $6d7c: $5a
	rst FarCall                                          ; $6d7d: $f7
	ld [hl], l                                       ; $6d7e: $75
	db $db                                           ; $6d7f: $db
	ld l, e                                          ; $6d80: $6b
	db $dd                                           ; $6d81: $dd
	ld l, a                                          ; $6d82: $6f
	call c, $de2d                                    ; $6d83: $dc $2d $de
	ld l, e                                          ; $6d86: $6b
	sbc [hl]                                         ; $6d87: $9e
	ld l, [hl]                                       ; $6d88: $6e
	sbc e                                            ; $6d89: $9b
	ld c, [hl]                                       ; $6d8a: $4e
	sbc b                                            ; $6d8b: $98
	cp e                                             ; $6d8c: $bb
	sbc a                                            ; $6d8d: $9f
	ld a, a                                          ; $6d8e: $7f
	inc sp                                           ; $6d8f: $33
	rst $38                                          ; $6d90: $ff
	pop af                                           ; $6d91: $f1
	rst $38                                          ; $6d92: $ff
	ccf                                              ; $6d93: $3f
	ld b, b                                          ; $6d94: $40
	sbc c                                            ; $6d95: $99
	dec [hl]                                         ; $6d96: $35
	rrca                                             ; $6d97: $0f
	rrca                                             ; $6d98: $0f
	ccf                                              ; $6d99: $3f
	ld a, [de]                                       ; $6d9a: $1a
	rlca                                             ; $6d9b: $07
	ld h, a                                          ; $6d9c: $67
	ld b, b                                          ; $6d9d: $40
	ld h, e                                          ; $6d9e: $63
	ld h, b                                          ; $6d9f: $60
	sbc e                                            ; $6da0: $9b
	db $e4                                           ; $6da1: $e4
	ldh a, [$e0]                                     ; $6da2: $f0 $e0
	ldh a, [$be]                                     ; $6da4: $f0 $be
	ldh a, [$e0]                                     ; $6da6: $f0 $e0
	ret nz                                           ; $6da8: $c0

	ld a, e                                          ; $6da9: $7b
	ld h, d                                          ; $6daa: $62
	ld c, a                                          ; $6dab: $4f
	ld h, b                                          ; $6dac: $60
	sbc d                                            ; $6dad: $9a
	ld h, e                                          ; $6dae: $63
	rra                                              ; $6daf: $1f
	inc e                                            ; $6db0: $1c
	ccf                                              ; $6db1: $3f
	ld a, a                                          ; $6db2: $7f
	cp a                                             ; $6db3: $bf
	ld a, a                                          ; $6db4: $7f
	inc sp                                           ; $6db5: $33
	rst SubAFromDE                                          ; $6db6: $df
	inc c                                            ; $6db7: $0c
	sbc d                                            ; $6db8: $9a
	ccf                                              ; $6db9: $3f
	dec sp                                           ; $6dba: $3b
	ccf                                              ; $6dbb: $3f
	dec c                                            ; $6dbc: $0d
	ld e, $03                                        ; $6dbd: $1e $03
	ld h, b                                          ; $6dbf: $60
	ld e, e                                          ; $6dc0: $5b

jr_06b_6dc1:
	ld h, b                                          ; $6dc1: $60
	ld l, a                                          ; $6dc2: $6f
	add b                                            ; $6dc3: $80
	adc l                                            ; $6dc4: $8d
	sbc [hl]                                         ; $6dc5: $9e
	db $fd                                           ; $6dc6: $fd
	dec de                                           ; $6dc7: $1b
	rst $38                                          ; $6dc8: $ff
	db $fd                                           ; $6dc9: $fd
	cp $ef                                           ; $6dca: $fe $ef
	ldh a, [hDisp0_OBP0]                                     ; $6dcc: $f0 $86
	ld bc, $071b                                     ; $6dce: $01 $1b $07
	inc e                                            ; $6dd1: $1c
	dec a                                            ; $6dd2: $3d
	ld h, $17                                        ; $6dd3: $26 $17
	rra                                              ; $6dd5: $1f
	inc bc                                           ; $6dd6: $03
	ld c, e                                          ; $6dd7: $4b
	add b                                            ; $6dd8: $80
	rst SubAFromDE                                          ; $6dd9: $df
	ret z                                            ; $6dda: $c8

	ld a, a                                          ; $6ddb: $7f
	add b                                            ; $6ddc: $80
	sub a                                            ; $6ddd: $97
	jr nz, @-$0e                                     ; $6dde: $20 $f0

	nop                                              ; $6de0: $00
	jr nc, @-$3e                                     ; $6de1: $30 $c0

	ret nz                                           ; $6de3: $c0

	ldh [$a0], a                                     ; $6de4: $e0 $a0
	sbc $80                                          ; $6de6: $de $80
	cp h                                             ; $6de8: $bc
	add b                                            ; $6de9: $80
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	ld [hl], a                                       ; $6dee: $77
	add b                                            ; $6def: $80
	adc a                                            ; $6df0: $8f
	ld l, a                                          ; $6df1: $6f
	rra                                              ; $6df2: $1f
	ld d, $39                                        ; $6df3: $16 $39
	ld a, a                                          ; $6df5: $7f
	nop                                              ; $6df6: $00
	ld h, a                                          ; $6df7: $67
	jr jr_06b_6e17                                   ; $6df8: $18 $1d

	ld a, $37                                        ; $6dfa: $3e $37
	cpl                                              ; $6dfc: $2f
	ld a, [hl-]                                      ; $6dfd: $3a
	inc e                                            ; $6dfe: $1c
	dec bc                                           ; $6dff: $0b
	inc e                                            ; $6e00: $1c
	rra                                              ; $6e01: $1f
	add b                                            ; $6e02: $80
	sbc e                                            ; $6e03: $9b
	ld [hl], $ff                                     ; $6e04: $36 $ff
	jp c, $377f                                      ; $6e06: $da $7f $37

	add b                                            ; $6e09: $80
	adc [hl]                                         ; $6e0a: $8e
	sbc h                                            ; $6e0b: $9c
	rst $38                                          ; $6e0c: $ff
	dec de                                           ; $6e0d: $1b
	rst $38                                          ; $6e0e: $ff
	rst $38                                          ; $6e0f: $ff
	db $fc                                           ; $6e10: $fc
	cp $e1                                           ; $6e11: $fe $e1
	add a                                            ; $6e13: $87
	rlca                                             ; $6e14: $07
	dec e                                            ; $6e15: $1d
	rrca                                             ; $6e16: $0f

jr_06b_6e17:
	ld e, c                                          ; $6e17: $59
	dec a                                            ; $6e18: $3d
	ld d, $07                                        ; $6e19: $16 $07
	rrca                                             ; $6e1b: $0f
	inc sp                                           ; $6e1c: $33
	add b                                            ; $6e1d: $80
	sbc c                                            ; $6e1e: $99
	ld [hl], b                                       ; $6e1f: $70
	add b                                            ; $6e20: $80
	ret nc                                           ; $6e21: $d0

	ldh [rLCDC], a                                   ; $6e22: $e0 $40
	and b                                            ; $6e24: $a0
	ld b, a                                          ; $6e25: $47
	add b                                            ; $6e26: $80
	sub d                                            ; $6e27: $92
	ld a, d                                          ; $6e28: $7a
	daa                                              ; $6e29: $27
	ld l, a                                          ; $6e2a: $6f
	rra                                              ; $6e2b: $1f
	rla                                              ; $6e2c: $17
	jr c, jr_06b_6e9e                                ; $6e2d: $38 $6f

	db $10                                           ; $6e2f: $10
	ld a, c                                          ; $6e30: $79
	ld e, $3f                                        ; $6e31: $1e $3f
	ccf                                              ; $6e33: $3f
	dec [hl]                                         ; $6e34: $35
	ld a, e                                          ; $6e35: $7b
	add b                                            ; $6e36: $80
	sbc [hl]                                         ; $6e37: $9e
	rla                                              ; $6e38: $17
	inc hl                                           ; $6e39: $23
	add b                                            ; $6e3a: $80
	sbc e                                            ; $6e3b: $9b
	xor h                                            ; $6e3c: $ac
	rst $38                                          ; $6e3d: $ff
	or [hl]                                          ; $6e3e: $b6
	ld a, a                                          ; $6e3f: $7f
	ld b, a                                          ; $6e40: $47
	add b                                            ; $6e41: $80
	rst $38                                          ; $6e42: $ff
	sbc h                                            ; $6e43: $9c
	dec b                                            ; $6e44: $05
	inc bc                                           ; $6e45: $03
	ld bc, $00bd                                     ; $6e46: $01 $bd $00
	ld bc, $4000                                     ; $6e49: $01 $00 $40
	sub d                                            ; $6e4c: $92
	add b                                            ; $6e4d: $80
	ld hl, sp-$20                                    ; $6e4e: $f8 $e0
	cp d                                             ; $6e50: $ba
	ld a, h                                          ; $6e51: $7c
	rst SubAFromDE                                          ; $6e52: $df
	ccf                                              ; $6e53: $3f
	cpl                                              ; $6e54: $2f
	rra                                              ; $6e55: $1f
	rlca                                             ; $6e56: $07
	rrca                                             ; $6e57: $0f
	ld b, $01                                        ; $6e58: $06 $01
	ld [hl], a                                       ; $6e5a: $77
	xor $7f                                          ; $6e5b: $ee $7f
	sbc c                                            ; $6e5d: $99
	ld a, a                                          ; $6e5e: $7f
	ld [hl], a                                       ; $6e5f: $77
	add b                                            ; $6e60: $80
	inc bc                                           ; $6e61: $03
	ld b, b                                          ; $6e62: $40
	add a                                            ; $6e63: $87
	ld bc, $0305                                     ; $6e64: $01 $05 $03
	add e                                            ; $6e67: $83
	rlca                                             ; $6e68: $07
	rlca                                             ; $6e69: $07
	rrca                                             ; $6e6a: $0f
	rrca                                             ; $6e6b: $0f
	rra                                              ; $6e6c: $1f
	dec e                                            ; $6e6d: $1d
	ccf                                              ; $6e6e: $3f
	dec a                                            ; $6e6f: $3d
	ld a, a                                          ; $6e70: $7f
	db $ed                                           ; $6e71: $ed
	rst $38                                          ; $6e72: $ff
	call $cbff                                       ; $6e73: $cd $ff $cb
	rst $38                                          ; $6e76: $ff
	ld b, [hl]                                       ; $6e77: $46
	rst $38                                          ; $6e78: $ff
	db $ec                                           ; $6e79: $ec
	ld a, a                                          ; $6e7a: $7f
	ldh a, [$7f]                                     ; $6e7b: $f0 $7f
	ld a, h                                          ; $6e7d: $7c
	ld a, a                                          ; $6e7e: $7f
	nop                                              ; $6e7f: $00
	ld a, a                                          ; $6e80: $7f
	ldh [$9d], a                                     ; $6e81: $e0 $9d
	rlca                                             ; $6e83: $07
	ld [bc], a                                       ; $6e84: $02
	ld [hl], e                                       ; $6e85: $73
	call nc, $fc7f                                   ; $6e86: $d4 $7f $fc
	inc hl                                           ; $6e89: $23
	ret nz                                           ; $6e8a: $c0

	sbc c                                            ; $6e8b: $99
	add c                                            ; $6e8c: $81
	add l                                            ; $6e8d: $85
	inc bc                                           ; $6e8e: $03
	inc bc                                           ; $6e8f: $03
	rlca                                             ; $6e90: $07
	add a                                            ; $6e91: $87
	inc hl                                           ; $6e92: $23
	ret nz                                           ; $6e93: $c0

	ld a, a                                          ; $6e94: $7f
	and d                                            ; $6e95: $a2
	ld a, a                                          ; $6e96: $7f
	cp [hl]                                          ; $6e97: $be
	db $fd                                           ; $6e98: $fd
	sbc [hl]                                         ; $6e99: $9e
	ld b, c                                          ; $6e9a: $41
	dec hl                                           ; $6e9b: $2b
	ret nz                                           ; $6e9c: $c0

	sbc [hl]                                         ; $6e9d: $9e

jr_06b_6e9e:
	rst JumpTable                                          ; $6e9e: $c7
	ld [hl], e                                       ; $6e9f: $73
	ret nz                                           ; $6ea0: $c0

	ld a, a                                          ; $6ea1: $7f
	db $ec                                           ; $6ea2: $ec
	sbc [hl]                                         ; $6ea3: $9e
	adc a                                            ; $6ea4: $8f
	inc hl                                           ; $6ea5: $23
	ret nz                                           ; $6ea6: $c0

	ld a, a                                          ; $6ea7: $7f
	dec a                                            ; $6ea8: $3d
	ld [hl], a                                       ; $6ea9: $77

jr_06b_6eaa:
	jp nc, $c01b                                     ; $6eaa: $d2 $1b $c0

	rst SubAFromDE                                          ; $6ead: $df
	add e                                            ; $6eae: $83
	dec hl                                           ; $6eaf: $2b
	ret nz                                           ; $6eb0: $c0

	cp a                                             ; $6eb1: $bf
	ld bc, $4587                                     ; $6eb2: $01 $87 $45
	rst $38                                          ; $6eb5: $ff
	ld c, c                                          ; $6eb6: $49
	rst $38                                          ; $6eb7: $ff
	ld c, e                                          ; $6eb8: $4b
	cp $9f                                           ; $6eb9: $fe $9f
	db $fc                                           ; $6ebb: $fc
	inc de                                           ; $6ebc: $13
	rst $38                                          ; $6ebd: $ff
	db $fc                                           ; $6ebe: $fc
	rst $38                                          ; $6ebf: $ff
	rst $38                                          ; $6ec0: $ff
	ldh [hDisp0_BGP], a                                     ; $6ec1: $e0 $85
	inc bc                                           ; $6ec3: $03
	rla                                              ; $6ec4: $17
	rrca                                             ; $6ec5: $0f
	add hl, de                                       ; $6ec6: $19
	dec a                                            ; $6ec7: $3d
	ld h, $17                                        ; $6ec8: $26 $17
	rra                                              ; $6eca: $1f
	inc bc                                           ; $6ecb: $03
	ei                                               ; $6ecc: $fb
	adc l                                            ; $6ecd: $8d
	add b                                            ; $6ece: $80
	nop                                              ; $6ecf: $00
	ret nz                                           ; $6ed0: $c0

	add b                                            ; $6ed1: $80
	ldh [$c0], a                                     ; $6ed2: $e0 $c0
	ldh a, [$e0]                                     ; $6ed4: $f0 $e0
	ld hl, sp-$10                                    ; $6ed6: $f8 $f0
	cp h                                             ; $6ed8: $bc
	ld hl, sp+$1f                                    ; $6ed9: $f8 $1f
	or $1f                                           ; $6edb: $f6 $1f
	pop af                                           ; $6edd: $f1
	ccf                                              ; $6ede: $3f
	ldh a, [$6f]                                     ; $6edf: $f0 $6f
	cp $82                                           ; $6ee1: $fe $82
	ld e, $f8                                        ; $6ee3: $1e $f8
	ld e, $f8                                        ; $6ee5: $1e $f8
	ld c, $fc                                        ; $6ee7: $0e $fc
	rlca                                             ; $6ee9: $07
	db $fc                                           ; $6eea: $fc
	inc bc                                           ; $6eeb: $03
	cp $70                                           ; $6eec: $fe $70
	ldh [$f0], a                                     ; $6eee: $e0 $f0
	jr nc, jr_06b_6eaa                               ; $6ef0: $30 $b8

	db $10                                           ; $6ef2: $10
	jr @+$0a                                         ; $6ef3: $18 $08

	add sp, -$1c                                     ; $6ef5: $e8 $e4
	db $10                                           ; $6ef7: $10
	ldh [$30], a                                     ; $6ef8: $e0 $30
	ret nz                                           ; $6efa: $c0

	ret nc                                           ; $6efb: $d0

	ldh [$60], a                                     ; $6efc: $e0 $60
	ret nz                                           ; $6efe: $c0

	and b                                            ; $6eff: $a0
	sbc $80                                          ; $6f00: $de $80
	ld a, e                                          ; $6f02: $7b
	rst JumpTable                                          ; $6f03: $c7
	ld a, [$7e80]                                    ; $6f04: $fa $80 $7e
	daa                                              ; $6f07: $27
	ld a, [hl]                                       ; $6f08: $7e
	inc hl                                           ; $6f09: $23
	ld [hl], a                                       ; $6f0a: $77
	rrca                                             ; $6f0b: $0f
	jr jr_06b_6f4d                                   ; $6f0c: $18 $3f

	ld a, a                                          ; $6f0e: $7f
	nop                                              ; $6f0f: $00
	ld a, e                                          ; $6f10: $7b
	inc e                                            ; $6f11: $1c
	ld e, $3f                                        ; $6f12: $1e $3f
	dec [hl]                                         ; $6f14: $35
	cpl                                              ; $6f15: $2f
	ld a, [hl-]                                      ; $6f16: $3a
	inc e                                            ; $6f17: $1c
	rla                                              ; $6f18: $17
	inc e                                            ; $6f19: $1c
	add e                                            ; $6f1a: $83
	nop                                              ; $6f1b: $00
	pop bc                                           ; $6f1c: $c1
	nop                                              ; $6f1d: $00
	pop hl                                           ; $6f1e: $e1
	nop                                              ; $6f1f: $00
	ld h, e                                          ; $6f20: $63
	nop                                              ; $6f21: $00
	inc hl                                           ; $6f22: $23
	ld b, b                                          ; $6f23: $40
	jp Jump_06b_409d                                 ; $6f24: $c3 $9d $40


	ld e, c                                          ; $6f27: $59
	ld a, e                                          ; $6f28: $7b
	add b                                            ; $6f29: $80
	adc [hl]                                         ; $6f2a: $8e
	add hl, hl                                       ; $6f2b: $29
	rst $38                                          ; $6f2c: $ff
	sbc c                                            ; $6f2d: $99
	rst $38                                          ; $6f2e: $ff
	db $fc                                           ; $6f2f: $fc
	ld a, a                                          ; $6f30: $7f
	db $fc                                           ; $6f31: $fc
	ccf                                              ; $6f32: $3f
	db $ec                                           ; $6f33: $ec
	ccf                                              ; $6f34: $3f
	ld [hl], $ff                                     ; $6f35: $36 $ff
	jp c, $fb7f                                      ; $6f37: $da $7f $fb

	ld e, a                                          ; $6f3a: $5f
	push af                                          ; $6f3b: $f5
	ld [hl], e                                       ; $6f3c: $73

jr_06b_6f3d:
	cp $80                                           ; $6f3d: $fe $80
	db $e4                                           ; $6f3f: $e4
	ld a, a                                          ; $6f40: $7f
	ldh [c], a                                       ; $6f41: $e2
	ld a, a                                          ; $6f42: $7f
	ld d, d                                          ; $6f43: $52
	rst $38                                          ; $6f44: $ff
	push af                                          ; $6f45: $f5
	db $db                                           ; $6f46: $db
	db $eb                                           ; $6f47: $eb
	db $dd                                           ; $6f48: $dd
	db $db                                           ; $6f49: $db
	db $ed                                           ; $6f4a: $ed
	or $ed                                           ; $6f4b: $f6 $ed

jr_06b_6f4d:
	db $ec                                           ; $6f4d: $ec
	rst FarCall                                          ; $6f4e: $f7
	ld e, d                                          ; $6f4f: $5a
	rst FarCall                                          ; $6f50: $f7
	ld [hl], l                                       ; $6f51: $75
	db $db                                           ; $6f52: $db
	ld l, e                                          ; $6f53: $6b
	db $dd                                           ; $6f54: $dd
	ld l, a                                          ; $6f55: $6f
	call c, $de2d                                    ; $6f56: $dc $2d $de
	ld l, e                                          ; $6f59: $6b
	sbc [hl]                                         ; $6f5a: $9e
	ld l, [hl]                                       ; $6f5b: $6e
	sbc e                                            ; $6f5c: $9b
	ld c, [hl]                                       ; $6f5d: $4e
	sbc b                                            ; $6f5e: $98
	cp e                                             ; $6f5f: $bb
	sbc a                                            ; $6f60: $9f
	ld a, a                                          ; $6f61: $7f
	inc sp                                           ; $6f62: $33
	rst $38                                          ; $6f63: $ff
	pop af                                           ; $6f64: $f1
	rst $38                                          ; $6f65: $ff
	ld h, a                                          ; $6f66: $67
	ld b, b                                          ; $6f67: $40
	sub h                                            ; $6f68: $94
	dec de                                           ; $6f69: $1b
	rst FarCall                                          ; $6f6a: $f7
	db $fc                                           ; $6f6b: $fc
	rst $38                                          ; $6f6c: $ff
	rst SubAFromBC                                          ; $6f6d: $e7
	ld hl, sp-$79                                    ; $6f6e: $f8 $87
	nop                                              ; $6f70: $00
	dec de                                           ; $6f71: $1b
	rlca                                             ; $6f72: $07
	inc c                                            ; $6f73: $0c
	ld d, e                                          ; $6f74: $53
	ld b, b                                          ; $6f75: $40
	ld d, a                                          ; $6f76: $57
	ld h, b                                          ; $6f77: $60
	sub a                                            ; $6f78: $97
	ldh a, [rP1]                                     ; $6f79: $f0 $00
	jr nc, jr_06b_6f3d                               ; $6f7b: $30 $c0

	ret nz                                           ; $6f7d: $c0

	ldh [$a0], a                                     ; $6f7e: $e0 $a0
	ret nz                                           ; $6f80: $c0

	cpl                                              ; $6f81: $2f
	ld h, b                                          ; $6f82: $60
	sbc d                                            ; $6f83: $9a
	ld h, a                                          ; $6f84: $67
	jr jr_06b_6fa4                                   ; $6f85: $18 $1d

	ld a, $37                                        ; $6f87: $3e $37
	ld a, e                                          ; $6f89: $7b
	ld h, b                                          ; $6f8a: $60
	sbc [hl]                                         ; $6f8b: $9e
	dec bc                                           ; $6f8c: $0b
	inc sp                                           ; $6f8d: $33
	ld h, b                                          ; $6f8e: $60
	sbc l                                            ; $6f8f: $9d
	ld a, h                                          ; $6f90: $7c
	rst $38                                          ; $6f91: $ff
	cpl                                              ; $6f92: $2f
	ld h, b                                          ; $6f93: $60
	ld h, a                                          ; $6f94: $67
	add b                                            ; $6f95: $80
	adc a                                            ; $6f96: $8f
	inc e                                            ; $6f97: $1c
	di                                               ; $6f98: $f3
	rst $38                                          ; $6f99: $ff
	rst $38                                          ; $6f9a: $ff
	db $e3                                           ; $6f9b: $e3
	db $fc                                           ; $6f9c: $fc
	add a                                            ; $6f9d: $87
	nop                                              ; $6f9e: $00
	rra                                              ; $6f9f: $1f
	nop                                              ; $6fa0: $00
	dec [hl]                                         ; $6fa1: $35
	rrca                                             ; $6fa2: $0f
	rrca                                             ; $6fa3: $0f

jr_06b_6fa4:
	ccf                                              ; $6fa4: $3f
	ld a, [de]                                       ; $6fa5: $1a
	rlca                                             ; $6fa6: $07
	ld b, a                                          ; $6fa7: $47
	add b                                            ; $6fa8: $80
	sbc h                                            ; $6fa9: $9c
	ld [$f0e4], sp                                   ; $6faa: $08 $e4 $f0
	ld a, e                                          ; $6fad: $7b
	add b                                            ; $6fae: $80
	ld a, a                                          ; $6faf: $7f
	cp $97                                           ; $6fb0: $fe $97
	ldh [rP1], a                                     ; $6fb2: $e0 $00
	ret nz                                           ; $6fb4: $c0

	ldh [$80], a                                     ; $6fb5: $e0 $80
	ret nz                                           ; $6fb7: $c0

	add b                                            ; $6fb8: $80
	ret nz                                           ; $6fb9: $c0

	ld d, a                                          ; $6fba: $57
	add b                                            ; $6fbb: $80
	sbc h                                            ; $6fbc: $9c
	ld a, e                                          ; $6fbd: $7b
	rlca                                             ; $6fbe: $07
	inc e                                            ; $6fbf: $1c
	ld a, e                                          ; $6fc0: $7b
	add b                                            ; $6fc1: $80
	ld a, a                                          ; $6fc2: $7f
	cp $97                                           ; $6fc3: $fe $97
	inc sp                                           ; $6fc5: $33
	inc c                                            ; $6fc6: $0c
	inc c                                            ; $6fc7: $0c
	ccf                                              ; $6fc8: $3f
	dec sp                                           ; $6fc9: $3b
	ccf                                              ; $6fca: $3f
	dec c                                            ; $6fcb: $0d
	ld e, $1f                                        ; $6fcc: $1e $1f
	add b                                            ; $6fce: $80
	sbc e                                            ; $6fcf: $9b
	or [hl]                                          ; $6fd0: $b6
	ld a, a                                          ; $6fd1: $7f
	ld e, d                                          ; $6fd2: $5a
	rst $38                                          ; $6fd3: $ff
	rlca                                             ; $6fd4: $07
	add b                                            ; $6fd5: $80
	sbc c                                            ; $6fd6: $99
	ccf                                              ; $6fd7: $3f
	nop                                              ; $6fd8: $00
	dec de                                           ; $6fd9: $1b
	inc a                                            ; $6fda: $3c
	rla                                              ; $6fdb: $17
	rrca                                             ; $6fdc: $0f
	ld b, e                                          ; $6fdd: $43
	add b                                            ; $6fde: $80
	sbc d                                            ; $6fdf: $9a
	add h                                            ; $6fe0: $84
	ldh a, [$e0]                                     ; $6fe1: $f0 $e0
	sub b                                            ; $6fe3: $90
	ld h, b                                          ; $6fe4: $60
	ld [hl], a                                       ; $6fe5: $77
	add b                                            ; $6fe6: $80
	ld a, a                                          ; $6fe7: $7f
	cp $9e                                           ; $6fe8: $fe $9e
	ld b, b                                          ; $6fea: $40
	ld a, e                                          ; $6feb: $7b
	ld a, [hl]                                       ; $6fec: $7e
	ld d, a                                          ; $6fed: $57
	add b                                            ; $6fee: $80
	sbc h                                            ; $6fef: $9c
	ld a, c                                          ; $6ff0: $79
	rlca                                             ; $6ff1: $07
	rra                                              ; $6ff2: $1f
	ld [hl], e                                       ; $6ff3: $73
	add b                                            ; $6ff4: $80
	ld a, a                                          ; $6ff5: $7f
	add $7f                                          ; $6ff6: $c6 $7f
	cp $9b                                           ; $6ff8: $fe $9b
	dec l                                            ; $6ffa: $2d
	inc sp                                           ; $6ffb: $33
	ld e, $1f                                        ; $6ffc: $1e $1f
	inc bc                                           ; $6ffe: $03
	add b                                            ; $6fff: $80
	ld e, e                                          ; $7000: $5b
	add b                                            ; $7001: $80
	rst $38                                          ; $7002: $ff
	sbc h                                            ; $7003: $9c
	inc bc                                           ; $7004: $03
	ld bc, $fe01                                     ; $7005: $01 $01 $fe
	ld [hl], a                                       ; $7008: $77
	db $fc                                           ; $7009: $fc
	sub d                                            ; $700a: $92
	ld b, b                                          ; $700b: $40
	add b                                            ; $700c: $80
	ld hl, sp-$20                                    ; $700d: $f8 $e0
	cp d                                             ; $700f: $ba
	ld a, h                                          ; $7010: $7c
	rst SubAFromDE                                          ; $7011: $df
	ccf                                              ; $7012: $3f
	cpl                                              ; $7013: $2f
	rra                                              ; $7014: $1f
	rlca                                             ; $7015: $07
	rrca                                             ; $7016: $0f
	ld b, $73                                        ; $7017: $06 $73
	ld [$807f], a                                    ; $7019: $ea $7f $80
	ld a, [hl]                                       ; $701c: $7e
	ld [hl], a                                       ; $701d: $77
	add c                                            ; $701e: $81
	inc bc                                           ; $701f: $03
	ld b, b                                          ; $7020: $40
	add a                                            ; $7021: $87
	ld bc, $0305                                     ; $7022: $01 $05 $03
	add e                                            ; $7025: $83
	rlca                                             ; $7026: $07
	rlca                                             ; $7027: $07
	rrca                                             ; $7028: $0f
	rrca                                             ; $7029: $0f
	rra                                              ; $702a: $1f
	dec e                                            ; $702b: $1d
	ccf                                              ; $702c: $3f
	dec a                                            ; $702d: $3d
	ld a, a                                          ; $702e: $7f
	db $ed                                           ; $702f: $ed
	rst $38                                          ; $7030: $ff
	call $cbff                                       ; $7031: $cd $ff $cb
	rst $38                                          ; $7034: $ff
	ld b, [hl]                                       ; $7035: $46
	rst $38                                          ; $7036: $ff
	db $ec                                           ; $7037: $ec
	ld a, a                                          ; $7038: $7f
	ldh a, [$7f]                                     ; $7039: $f0 $7f
	ld a, h                                          ; $703b: $7c

Call_06b_703c:
	ld a, a                                          ; $703c: $7f
	ld a, e                                          ; $703d: $7b
	ret nz                                           ; $703e: $c0

	sbc l                                            ; $703f: $9d
	inc bc                                           ; $7040: $03
	ld [bc], a                                       ; $7041: $02
	ld l, e                                          ; $7042: $6b
	cp [hl]                                          ; $7043: $be
	inc hl                                           ; $7044: $23
	ret nz                                           ; $7045: $c0

	sbc c                                            ; $7046: $99
	add c                                            ; $7047: $81
	add l                                            ; $7048: $85
	inc bc                                           ; $7049: $03
	inc bc                                           ; $704a: $03
	rlca                                             ; $704b: $07
	add a                                            ; $704c: $87
	inc hl                                           ; $704d: $23
	ret nz                                           ; $704e: $c0

	ld a, a                                          ; $704f: $7f
	ld a, [hl]                                       ; $7050: $7e
	ld a, a                                          ; $7051: $7f
	jp $d277                                         ; $7052: $c3 $77 $d2


	sbc [hl]                                         ; $7055: $9e
	ld b, c                                          ; $7056: $41
	dec hl                                           ; $7057: $2b
	ret nz                                           ; $7058: $c0

	sbc e                                            ; $7059: $9b
	rst JumpTable                                          ; $705a: $c7
	add c                                            ; $705b: $81
	dec b                                            ; $705c: $05
	add e                                            ; $705d: $83
	ld [hl], a                                       ; $705e: $77
	add b                                            ; $705f: $80
	sbc [hl]                                         ; $7060: $9e
	adc a                                            ; $7061: $8f
	inc sp                                           ; $7062: $33
	ret nz                                           ; $7063: $c0

	sbc h                                            ; $7064: $9c
	ld bc, $0103                                     ; $7065: $01 $03 $01
	ld l, e                                          ; $7068: $6b

jr_06b_7069:
	ld a, [hl]                                       ; $7069: $7e
	rra                                              ; $706a: $1f
	ret nz                                           ; $706b: $c0

	sbc [hl]                                         ; $706c: $9e
	add l                                            ; $706d: $85
	inc hl                                           ; $706e: $23
	ret nz                                           ; $706f: $c0

	or [hl]                                          ; $7070: $b6
	ld bc, $4587                                     ; $7071: $01 $87 $45
	rst $38                                          ; $7074: $ff
	ld c, c                                          ; $7075: $49
	rst $38                                          ; $7076: $ff
	ld c, e                                          ; $7077: $4b
	cp $9f                                           ; $7078: $fe $9f
	db $fc                                           ; $707a: $fc
	inc e                                            ; $707b: $1c

jr_06b_707c:
	ei                                               ; $707c: $fb
	db $e3                                           ; $707d: $e3
	rst $38                                          ; $707e: $ff
	rst $38                                          ; $707f: $ff
	db $fc                                           ; $7080: $fc
	add [hl]                                         ; $7081: $86
	ld bc, $071b                                     ; $7082: $01 $1b $07
	dec e                                            ; $7085: $1d
	dec a                                            ; $7086: $3d
	ld h, $17                                        ; $7087: $26 $17
	rra                                              ; $7089: $1f
	inc bc                                           ; $708a: $03
	ei                                               ; $708b: $fb
	adc l                                            ; $708c: $8d
	add b                                            ; $708d: $80
	nop                                              ; $708e: $00
	ret nz                                           ; $708f: $c0

	add b                                            ; $7090: $80
	ldh [$c0], a                                     ; $7091: $e0 $c0
	ldh a, [$e0]                                     ; $7093: $f0 $e0
	ld hl, sp-$10                                    ; $7095: $f8 $f0
	cp h                                             ; $7097: $bc
	ld hl, sp+$1f                                    ; $7098: $f8 $1f
	or $1f                                           ; $709a: $f6 $1f
	pop af                                           ; $709c: $f1
	ccf                                              ; $709d: $3f
	ldh a, [$6f]                                     ; $709e: $f0 $6f
	cp $80                                           ; $70a0: $fe $80
	ld e, $f8                                        ; $70a2: $1e $f8
	ld e, $f8                                        ; $70a4: $1e $f8
	ld c, $fc                                        ; $70a6: $0e $fc
	rlca                                             ; $70a8: $07
	db $fc                                           ; $70a9: $fc
	inc bc                                           ; $70aa: $03
	cp $70                                           ; $70ab: $fe $70
	ldh [$f0], a                                     ; $70ad: $e0 $f0
	jr nc, jr_06b_7069                               ; $70af: $30 $b8

	db $10                                           ; $70b1: $10
	jr jr_06b_70bc                                   ; $70b2: $18 $08

	ld [$f0e4], sp                                   ; $70b4: $08 $e4 $f0
	ldh [$f0], a                                     ; $70b7: $e0 $f0
	nop                                              ; $70b9: $00
	jr nc, jr_06b_707c                               ; $70ba: $30 $c0

jr_06b_70bc:
	ldh [$e0], a                                     ; $70bc: $e0 $e0
	and b                                            ; $70be: $a0
	ret nz                                           ; $70bf: $c0

	add b                                            ; $70c0: $80
	ld a, a                                          ; $70c1: $7f
	ret                                              ; $70c2: $c9


	ld a, a                                          ; $70c3: $7f
	cp $fa                                           ; $70c4: $fe $fa
	add b                                            ; $70c6: $80
	ld a, [hl]                                       ; $70c7: $7e
	daa                                              ; $70c8: $27
	ld a, [hl]                                       ; $70c9: $7e
	inc hl                                           ; $70ca: $23
	ld a, c                                          ; $70cb: $79
	rlca                                             ; $70cc: $07
	ld e, $3f                                        ; $70cd: $1e $3f
	ld a, a                                          ; $70cf: $7f
	nop                                              ; $70d0: $00
	ld h, e                                          ; $70d1: $63
	inc e                                            ; $70d2: $1c
	ld e, $3f                                        ; $70d3: $1e $3f
	dec [hl]                                         ; $70d5: $35
	cpl                                              ; $70d6: $2f
	ld a, $1c                                        ; $70d7: $3e $1c
	rla                                              ; $70d9: $17
	inc e                                            ; $70da: $1c
	add e                                            ; $70db: $83
	nop                                              ; $70dc: $00
	pop bc                                           ; $70dd: $c1
	nop                                              ; $70de: $00
	pop hl                                           ; $70df: $e1
	nop                                              ; $70e0: $00
	ld h, e                                          ; $70e1: $63
	nop                                              ; $70e2: $00
	inc hl                                           ; $70e3: $23
	ld b, b                                          ; $70e4: $40
	jp Jump_06b_409d                                 ; $70e5: $c3 $9d $40


	ld e, c                                          ; $70e8: $59
	ld a, e                                          ; $70e9: $7b
	add b                                            ; $70ea: $80
	adc [hl]                                         ; $70eb: $8e
	add hl, hl                                       ; $70ec: $29
	rst $38                                          ; $70ed: $ff
	sbc c                                            ; $70ee: $99
	rst $38                                          ; $70ef: $ff
	db $fc                                           ; $70f0: $fc
	ld a, a                                          ; $70f1: $7f
	db $fc                                           ; $70f2: $fc
	ccf                                              ; $70f3: $3f
	db $ec                                           ; $70f4: $ec
	ccf                                              ; $70f5: $3f
	ld [hl], $ff                                     ; $70f6: $36 $ff
	jp c, $fb7f                                      ; $70f8: $da $7f $fb

	ld e, a                                          ; $70fb: $5f
	push af                                          ; $70fc: $f5
	ld [hl], e                                       ; $70fd: $73
	cp $80                                           ; $70fe: $fe $80
	db $e4                                           ; $7100: $e4
	ld a, a                                          ; $7101: $7f
	ldh [c], a                                       ; $7102: $e2
	ld a, a                                          ; $7103: $7f
	ld d, d                                          ; $7104: $52
	rst $38                                          ; $7105: $ff
	push af                                          ; $7106: $f5
	db $db                                           ; $7107: $db
	db $eb                                           ; $7108: $eb
	db $dd                                           ; $7109: $dd
	db $db                                           ; $710a: $db
	db $ed                                           ; $710b: $ed
	or $ed                                           ; $710c: $f6 $ed
	db $ec                                           ; $710e: $ec
	rst FarCall                                          ; $710f: $f7
	ld e, d                                          ; $7110: $5a
	rst FarCall                                          ; $7111: $f7
	ld [hl], l                                       ; $7112: $75
	db $db                                           ; $7113: $db
	ld l, e                                          ; $7114: $6b
	db $dd                                           ; $7115: $dd
	ld l, a                                          ; $7116: $6f
	call c, $de2d                                    ; $7117: $dc $2d $de
	ld l, e                                          ; $711a: $6b
	sbc [hl]                                         ; $711b: $9e
	ld l, [hl]                                       ; $711c: $6e
	sbc e                                            ; $711d: $9b
	ld c, [hl]                                       ; $711e: $4e
	sbc b                                            ; $711f: $98
	cp e                                             ; $7120: $bb
	sbc a                                            ; $7121: $9f
	ld a, a                                          ; $7122: $7f
	inc sp                                           ; $7123: $33
	rst $38                                          ; $7124: $ff
	pop af                                           ; $7125: $f1
	rst $38                                          ; $7126: $ff
	ld c, a                                          ; $7127: $4f
	ld b, b                                          ; $7128: $40
	sbc b                                            ; $7129: $98
	add a                                            ; $712a: $87
	nop                                              ; $712b: $00
	inc e                                            ; $712c: $1c
	inc bc                                           ; $712d: $03
	rra                                              ; $712e: $1f
	ccf                                              ; $712f: $3f
	inc h                                            ; $7130: $24
	ld e, e                                          ; $7131: $5b
	ld b, b                                          ; $7132: $40
	ld h, e                                          ; $7133: $63
	ld h, b                                          ; $7134: $60
	sub a                                            ; $7135: $97
	call nz, $e0d0                                   ; $7136: $c4 $d0 $e0
	ldh a, [rAUD4LEN]                                ; $7139: $f0 $20

jr_06b_713b:
	ldh a, [rP1]                                     ; $713b: $f0 $00
	nop                                              ; $713d: $00
	sbc $e0                                          ; $713e: $de $e0
	ccf                                              ; $7140: $3f
	ld h, b                                          ; $7141: $60
	sub d                                            ; $7142: $92
	ld c, $3f                                        ; $7143: $0e $3f
	ld a, a                                          ; $7145: $7f
	jr nc, @+$81                                     ; $7146: $30 $7f

	nop                                              ; $7148: $00
	dec de                                           ; $7149: $1b
	inc a                                            ; $714a: $3c
	ccf                                              ; $714b: $3f
	ccf                                              ; $714c: $3f
	ld l, $3c                                        ; $714d: $2e $3c
	dec de                                           ; $714f: $1b
	inc bc                                           ; $7150: $03
	ld h, b                                          ; $7151: $60
	ld d, a                                          ; $7152: $57
	ld h, b                                          ; $7153: $60
	ld h, a                                          ; $7154: $67
	add b                                            ; $7155: $80
	ld a, [hl]                                       ; $7156: $7e
	ldh a, [hDisp1_SCX]                                     ; $7157: $f0 $91
	pop hl                                           ; $7159: $e1
	rst $38                                          ; $715a: $ff
	cp $ff                                           ; $715b: $fe $ff
	add a                                            ; $715d: $87
	nop                                              ; $715e: $00
	rra                                              ; $715f: $1f
	nop                                              ; $7160: $00
	ccf                                              ; $7161: $3f
	nop                                              ; $7162: $00
	rrca                                             ; $7163: $0f
	ccf                                              ; $7164: $3f
	dec de                                           ; $7165: $1b
	rlca                                             ; $7166: $07
	ld b, e                                          ; $7167: $43
	add b                                            ; $7168: $80
	sbc e                                            ; $7169: $9b
	inc b                                            ; $716a: $04
	ret nc                                           ; $716b: $d0

	ldh [$30], a                                     ; $716c: $e0 $30
	ld a, d                                          ; $716e: $7a
	sbc $97                                          ; $716f: $de $97
	ldh [rP1], a                                     ; $7171: $e0 $00
	add b                                            ; $7173: $80
	ld h, b                                          ; $7174: $60
	ret nz                                           ; $7175: $c0

	ret nz                                           ; $7176: $c0

	add b                                            ; $7177: $80
	ret nz                                           ; $7178: $c0

	ld d, a                                          ; $7179: $57
	add b                                            ; $717a: $80
	sbc d                                            ; $717b: $9a
	ld a, a                                          ; $717c: $7f
	ld bc, $3f0f                                     ; $717d: $01 $0f $3f
	ld [hl], b                                       ; $7180: $70
	ld a, d                                          ; $7181: $7a
	sbc $7f                                          ; $7182: $de $7f
	add $99                                          ; $7184: $c6 $99
	ld bc, $373e                                     ; $7186: $01 $3e $37
	ccf                                              ; $7189: $3f
	dec c                                            ; $718a: $0d
	ld e, $1f                                        ; $718b: $1e $1f
	add b                                            ; $718d: $80
	sbc e                                            ; $718e: $9b
	or [hl]                                          ; $718f: $b6
	ld a, a                                          ; $7190: $7f
	ld e, d                                          ; $7191: $5a
	rst $38                                          ; $7192: $ff
	daa                                              ; $7193: $27
	add b                                            ; $7194: $80
	sbc [hl]                                         ; $7195: $9e
	ldh [$de], a                                     ; $7196: $e0 $de
	rst $38                                          ; $7198: $ff
	ld l, a                                          ; $7199: $6f
	add b                                            ; $719a: $80
	ld a, a                                          ; $719b: $7f
	jr c, jr_06b_713b                                ; $719c: $38 $9d

	rla                                              ; $719e: $17
	rrca                                             ; $719f: $0f
	ccf                                              ; $71a0: $3f
	add b                                            ; $71a1: $80
	sbc b                                            ; $71a2: $98
	ld [hl], b                                       ; $71a3: $70
	add b                                            ; $71a4: $80
	ret nc                                           ; $71a5: $d0

	ldh [$b0], a                                     ; $71a6: $e0 $b0
	ld h, b                                          ; $71a8: $60
	ldh [$7b], a                                     ; $71a9: $e0 $7b
	ld a, [hl]                                       ; $71ab: $7e
	ld a, [hl]                                       ; $71ac: $7e
	ld e, e                                          ; $71ad: $5b
	ld b, a                                          ; $71ae: $47
	add b                                            ; $71af: $80
	sbc b                                            ; $71b0: $98
	inc hl                                           ; $71b1: $23
	rra                                              ; $71b2: $1f
	ld e, h                                          ; $71b3: $5c
	ccf                                              ; $71b4: $3f
	ld a, a                                          ; $71b5: $7f
	jr nz, jr_06b_71f7                               ; $71b6: $20 $3f

	ld a, e                                          ; $71b8: $7b
	call nz, $2d9b                                   ; $71b9: $c4 $9b $2d
	inc sp                                           ; $71bc: $33
	ld e, $1f                                        ; $71bd: $1e $1f
	inc bc                                           ; $71bf: $03
	add b                                            ; $71c0: $80
	ld e, e                                          ; $71c1: $5b
	add b                                            ; $71c2: $80
	rst $38                                          ; $71c3: $ff
	sbc $01                                          ; $71c4: $de $01
	cp $77                                           ; $71c6: $fe $77
	db $fc                                           ; $71c8: $fc
	sub d                                            ; $71c9: $92
	ld b, b                                          ; $71ca: $40
	add b                                            ; $71cb: $80
	ld hl, sp-$20                                    ; $71cc: $f8 $e0
	cp d                                             ; $71ce: $ba
	ld a, h                                          ; $71cf: $7c
	rst SubAFromDE                                          ; $71d0: $df
	ccf                                              ; $71d1: $3f
	cpl                                              ; $71d2: $2f
	rra                                              ; $71d3: $1f
	rlca                                             ; $71d4: $07
	rrca                                             ; $71d5: $0f
	ld b, $73                                        ; $71d6: $06 $73
	ld [$807f], a                                    ; $71d8: $ea $7f $80
	ld a, [hl]                                       ; $71db: $7e
	ld [hl], a                                       ; $71dc: $77
	add c                                            ; $71dd: $81
	add e                                            ; $71de: $83
	ld b, b                                          ; $71df: $40
	add a                                            ; $71e0: $87
	ld bc, $0305                                     ; $71e1: $01 $05 $03
	add e                                            ; $71e4: $83
	rlca                                             ; $71e5: $07
	rlca                                             ; $71e6: $07
	rrca                                             ; $71e7: $0f
	rrca                                             ; $71e8: $0f
	rra                                              ; $71e9: $1f
	dec e                                            ; $71ea: $1d
	ccf                                              ; $71eb: $3f
	dec a                                            ; $71ec: $3d
	ld a, a                                          ; $71ed: $7f
	db $ed                                           ; $71ee: $ed

Jump_06b_71ef:
	rst $38                                          ; $71ef: $ff
	call $cbff                                       ; $71f0: $cd $ff $cb
	rst $38                                          ; $71f3: $ff
	ld b, [hl]                                       ; $71f4: $46
	rst $38                                          ; $71f5: $ff
	db $ec                                           ; $71f6: $ec

jr_06b_71f7:
	ld a, a                                          ; $71f7: $7f
	ldh a, [$7f]                                     ; $71f8: $f0 $7f
	ld a, h                                          ; $71fa: $7c
	ld a, a                                          ; $71fb: $7f
	ld [hl], a                                       ; $71fc: $77
	ret nz                                           ; $71fd: $c0

	ld [hl], a                                       ; $71fe: $77
	db $fd                                           ; $71ff: $fd
	ld [hl], a                                       ; $7200: $77
	cp [hl]                                          ; $7201: $be
	cpl                                              ; $7202: $2f
	ret nz                                           ; $7203: $c0

	sub [hl]                                         ; $7204: $96
	inc bc                                           ; $7205: $03
	ld b, b                                          ; $7206: $40
	add a                                            ; $7207: $87
	add c                                            ; $7208: $81
	add l                                            ; $7209: $85
	inc bc                                           ; $720a: $03
	inc bc                                           ; $720b: $03
	rlca                                             ; $720c: $07
	add a                                            ; $720d: $87
	inc hl                                           ; $720e: $23
	ret nz                                           ; $720f: $c0

	ld h, a                                          ; $7210: $67
	ld a, [hl]                                       ; $7211: $7e
	daa                                              ; $7212: $27
	ret nz                                           ; $7213: $c0

	sbc [hl]                                         ; $7214: $9e
	rst JumpTable                                          ; $7215: $c7
	inc bc                                           ; $7216: $03
	ret nz                                           ; $7217: $c0

	ld l, a                                          ; $7218: $6f
	cp [hl]                                          ; $7219: $be
	sbc [hl]                                         ; $721a: $9e
	ld b, c                                          ; $721b: $41
	rra                                              ; $721c: $1f
	ret nz                                           ; $721d: $c0

	rst SubAFromDE                                          ; $721e: $df

jr_06b_721f:
	add e                                            ; $721f: $83
	ld a, e                                          ; $7220: $7b
	ld b, b                                          ; $7221: $40
	sbc [hl]                                         ; $7222: $9e
	adc a                                            ; $7223: $8f
	dec sp                                           ; $7224: $3b
	ret nz                                           ; $7225: $c0

	jp nz, $8701                                     ; $7226: $c2 $01 $87

	ld b, l                                          ; $7229: $45
	rst $38                                          ; $722a: $ff
	ld c, c                                          ; $722b: $49
	rst $38                                          ; $722c: $ff
	ld c, e                                          ; $722d: $4b
	cp $9d                                           ; $722e: $fe $9d
	cp $1b                                           ; $7230: $fe $1b
	rst $38                                          ; $7232: $ff
	cp $e1                                           ; $7233: $fe $e1
	rst $38                                          ; $7235: $ff
	ret nz                                           ; $7236: $c0

	add h                                            ; $7237: $84
	inc bc                                           ; $7238: $03
	dec de                                           ; $7239: $1b
	rlca                                             ; $723a: $07
	dec e                                            ; $723b: $1d
	dec a                                            ; $723c: $3d
	ld h, $17                                        ; $723d: $26 $17
	rra                                              ; $723f: $1f
	inc bc                                           ; $7240: $03
	ei                                               ; $7241: $fb
	adc l                                            ; $7242: $8d
	add b                                            ; $7243: $80
	nop                                              ; $7244: $00
	ret nz                                           ; $7245: $c0

	add b                                            ; $7246: $80
	ldh [$c0], a                                     ; $7247: $e0 $c0
	ldh a, [$e0]                                     ; $7249: $f0 $e0
	ld hl, sp-$10                                    ; $724b: $f8 $f0
	cp h                                             ; $724d: $bc
	ld hl, sp+$1f                                    ; $724e: $f8 $1f
	or $1f                                           ; $7250: $f6 $1f
	pop af                                           ; $7252: $f1
	ccf                                              ; $7253: $3f
	ldh a, [$6f]                                     ; $7254: $f0 $6f
	cp $80                                           ; $7256: $fe $80
	ld e, $f8                                        ; $7258: $1e $f8
	ld e, $f8                                        ; $725a: $1e $f8
	ld c, $fc                                        ; $725c: $0e $fc
	rlca                                             ; $725e: $07
	db $fc                                           ; $725f: $fc
	inc bc                                           ; $7260: $03
	cp $70                                           ; $7261: $fe $70
	ldh [$f0], a                                     ; $7263: $e0 $f0
	jr nc, jr_06b_721f                               ; $7265: $30 $b8

	db $10                                           ; $7267: $10
	jr jr_06b_7272                                   ; $7268: $18 $08

	ld [$c084], sp                                   ; $726a: $08 $84 $c0
	ldh [$b0], a                                     ; $726d: $e0 $b0
	ld [hl], b                                       ; $726f: $70
	ld [hl], b                                       ; $7270: $70
	add b                                            ; $7271: $80

Jump_06b_7272:
jr_06b_7272:
	ldh [$e0], a                                     ; $7272: $e0 $e0
	and b                                            ; $7274: $a0
	ret nz                                           ; $7275: $c0

	add b                                            ; $7276: $80
	ld a, a                                          ; $7277: $7f
	ret                                              ; $7278: $c9


	ld a, a                                          ; $7279: $7f
	cp $fa                                           ; $727a: $fe $fa
	add b                                            ; $727c: $80
	ld a, [hl]                                       ; $727d: $7e
	daa                                              ; $727e: $27
	ld a, [hl]                                       ; $727f: $7e
	inc hl                                           ; $7280: $23
	ld a, e                                          ; $7281: $7b
	rlca                                             ; $7282: $07
	dec l                                            ; $7283: $2d
	ld e, $1f                                        ; $7284: $1e $1f
	jr c, jr_06b_72bf                                ; $7286: $38 $37

	ld a, b                                          ; $7288: $78
	dec a                                            ; $7289: $3d
	ld e, $37                                        ; $728a: $1e $37
	cpl                                              ; $728c: $2f
	ld a, $1c                                        ; $728d: $3e $1c
	rla                                              ; $728f: $17
	inc e                                            ; $7290: $1c
	add e                                            ; $7291: $83
	nop                                              ; $7292: $00
	pop bc                                           ; $7293: $c1
	nop                                              ; $7294: $00
	pop hl                                           ; $7295: $e1
	nop                                              ; $7296: $00
	ld h, e                                          ; $7297: $63
	nop                                              ; $7298: $00
	inc hl                                           ; $7299: $23
	ld b, b                                          ; $729a: $40
	jp Jump_06b_409d                                 ; $729b: $c3 $9d $40


	ld e, c                                          ; $729e: $59
	ld a, e                                          ; $729f: $7b
	add b                                            ; $72a0: $80
	adc [hl]                                         ; $72a1: $8e
	add hl, hl                                       ; $72a2: $29
	rst $38                                          ; $72a3: $ff
	sbc c                                            ; $72a4: $99
	rst $38                                          ; $72a5: $ff
	db $fc                                           ; $72a6: $fc
	ld a, a                                          ; $72a7: $7f
	db $fc                                           ; $72a8: $fc
	ccf                                              ; $72a9: $3f
	db $ec                                           ; $72aa: $ec
	ccf                                              ; $72ab: $3f
	ld [hl], $ff                                     ; $72ac: $36 $ff
	jp c, $fb7f                                      ; $72ae: $da $7f $fb

	ld e, a                                          ; $72b1: $5f
	push af                                          ; $72b2: $f5
	ld [hl], e                                       ; $72b3: $73
	cp $80                                           ; $72b4: $fe $80
	db $e4                                           ; $72b6: $e4
	ld a, a                                          ; $72b7: $7f
	ldh [c], a                                       ; $72b8: $e2
	ld a, a                                          ; $72b9: $7f
	ld d, d                                          ; $72ba: $52
	rst $38                                          ; $72bb: $ff
	push af                                          ; $72bc: $f5
	db $db                                           ; $72bd: $db
	db $eb                                           ; $72be: $eb

jr_06b_72bf:
	db $dd                                           ; $72bf: $dd
	db $db                                           ; $72c0: $db
	db $ed                                           ; $72c1: $ed
	or $ed                                           ; $72c2: $f6 $ed
	db $ec                                           ; $72c4: $ec
	rst FarCall                                          ; $72c5: $f7
	ld e, d                                          ; $72c6: $5a
	rst FarCall                                          ; $72c7: $f7
	ld [hl], l                                       ; $72c8: $75
	db $db                                           ; $72c9: $db
	ld l, e                                          ; $72ca: $6b
	db $dd                                           ; $72cb: $dd
	ld l, a                                          ; $72cc: $6f
	call c, $de2d                                    ; $72cd: $dc $2d $de
	ld l, e                                          ; $72d0: $6b
	sbc [hl]                                         ; $72d1: $9e
	ld l, [hl]                                       ; $72d2: $6e
	sbc e                                            ; $72d3: $9b
	ld c, [hl]                                       ; $72d4: $4e
	sbc b                                            ; $72d5: $98
	cp e                                             ; $72d6: $bb
	sbc a                                            ; $72d7: $9f
	ld a, a                                          ; $72d8: $7f
	inc sp                                           ; $72d9: $33
	rst $38                                          ; $72da: $ff
	pop af                                           ; $72db: $f1
	rst $38                                          ; $72dc: $ff
	ld c, a                                          ; $72dd: $4f
	ld b, b                                          ; $72de: $40
	sub a                                            ; $72df: $97
	add a                                            ; $72e0: $87
	nop                                              ; $72e1: $00
	inc e                                            ; $72e2: $1c
	inc bc                                           ; $72e3: $03
	rra                                              ; $72e4: $1f
	ccf                                              ; $72e5: $3f
	ld h, $1f                                        ; $72e6: $26 $1f
	ld e, a                                          ; $72e8: $5f
	ld b, b                                          ; $72e9: $40
	ld e, a                                          ; $72ea: $5f
	ld h, b                                          ; $72eb: $60
	sbc b                                            ; $72ec: $98
	add b                                            ; $72ed: $80
	ret nz                                           ; $72ee: $c0

	ret nz                                           ; $72ef: $c0

	ld [hl], b                                       ; $72f0: $70
	or b                                             ; $72f1: $b0
	ld [hl], b                                       ; $72f2: $70
	ret nz                                           ; $72f3: $c0

	sbc $e0                                          ; $72f4: $de $e0
	ccf                                              ; $72f6: $3f
	ld h, b                                          ; $72f7: $60
	sub e                                            ; $72f8: $93
	dec [hl]                                         ; $72f9: $35
	ld c, $2b                                        ; $72fa: $0e $2b
	inc e                                            ; $72fc: $1c
	rla                                              ; $72fd: $17
	jr c, jr_06b_732f                                ; $72fe: $38 $2f

	ld [hl], b                                       ; $7300: $70
	dec sp                                           ; $7301: $3b
	ccf                                              ; $7302: $3f
	inc a                                            ; $7303: $3c
	ld e, $03                                        ; $7304: $1e $03
	ld h, b                                          ; $7306: $60
	ld d, e                                          ; $7307: $53
	ld h, b                                          ; $7308: $60
	ld h, a                                          ; $7309: $67
	add b                                            ; $730a: $80
	sbc e                                            ; $730b: $9b
	ld a, [de]                                       ; $730c: $1a
	rst $38                                          ; $730d: $ff
	db $fd                                           ; $730e: $fd
	db $e3                                           ; $730f: $e3
	ld [hl], a                                       ; $7310: $77
	add b                                            ; $7311: $80
	sub a                                            ; $7312: $97
	rra                                              ; $7313: $1f
	nop                                              ; $7314: $00
	inc sp                                           ; $7315: $33
	rrca                                             ; $7316: $0f
	ld c, $3f                                        ; $7317: $0e $3f
	dec de                                           ; $7319: $1b
	rlca                                             ; $731a: $07
	ld b, e                                          ; $731b: $43
	add b                                            ; $731c: $80
	sub d                                            ; $731d: $92
	inc b                                            ; $731e: $04
	add b                                            ; $731f: $80
	ret nz                                           ; $7320: $c0

	ld b, b                                          ; $7321: $40
	ldh a, [$b0]                                     ; $7322: $f0 $b0
	ld [hl], b                                       ; $7324: $70
	ldh [rP1], a                                     ; $7325: $e0 $00
	ret nz                                           ; $7327: $c0

	ldh [$80], a                                     ; $7328: $e0 $80
	ret nz                                           ; $732a: $c0

	ld c, a                                          ; $732b: $4f
	add b                                            ; $732c: $80
	sbc e                                            ; $732d: $9b
	ld a, l                                          ; $732e: $7d

jr_06b_732f:
	inc bc                                           ; $732f: $03
	ld a, $07                                        ; $7330: $3e $07
	ld l, a                                          ; $7332: $6f
	add b                                            ; $7333: $80
	sbc c                                            ; $7334: $99
	jr c, jr_06b_735e                                ; $7335: $38 $27

jr_06b_7337:
	rra                                              ; $7337: $1f
	ccf                                              ; $7338: $3f
	dec d                                            ; $7339: $15
	ld e, $1f                                        ; $733a: $1e $1f
	add b                                            ; $733c: $80
	sbc e                                            ; $733d: $9b
	or [hl]                                          ; $733e: $b6
	ld a, a                                          ; $733f: $7f
	ld e, d                                          ; $7340: $5a
	rst $38                                          ; $7341: $ff
	rlca                                             ; $7342: $07
	add b                                            ; $7343: $80
	sbc c                                            ; $7344: $99
	ccf                                              ; $7345: $3f
	nop                                              ; $7346: $00
	dec de                                           ; $7347: $1b
	inc a                                            ; $7348: $3c
	rla                                              ; $7349: $17
	rrca                                             ; $734a: $0f
	ccf                                              ; $734b: $3f
	add b                                            ; $734c: $80
	ld a, a                                          ; $734d: $7f
	di                                               ; $734e: $f3
	ld a, a                                          ; $734f: $7f
	adc b                                            ; $7350: $88
	sbc b                                            ; $7351: $98
	ldh a, [rSVBK]                                   ; $7352: $f0 $70
	ret nz                                           ; $7354: $c0

	jr nc, jr_06b_7337                               ; $7355: $30 $e0

	nop                                              ; $7357: $00
	ld b, b                                          ; $7358: $40
	ld [hl], a                                       ; $7359: $77
	ld a, [hl]                                       ; $735a: $7e
	ld d, e                                          ; $735b: $53
	add b                                            ; $735c: $80
	sub c                                            ; $735d: $91

jr_06b_735e:
	ld a, [hl-]                                      ; $735e: $3a
	rlca                                             ; $735f: $07
	scf                                              ; $7360: $37
	inc c                                            ; $7361: $0c
	cpl                                              ; $7362: $2f
	jr jr_06b_73c4                                   ; $7363: $18 $5f

	jr nc, jr_06b_73a6                               ; $7365: $30 $3f

	ld h, b                                          ; $7367: $60
	cpl                                              ; $7368: $2f
	ld sp, $1f1e                                     ; $7369: $31 $1e $1f
	inc bc                                           ; $736c: $03
	add b                                            ; $736d: $80
	ld e, e                                          ; $736e: $5b
	add b                                            ; $736f: $80
	cp $9c                                           ; $7370: $fe $9c
	ld bc, $0200                                     ; $7372: $01 $00 $02
	ld [hl], a                                       ; $7375: $77
	ei                                               ; $7376: $fb
	rst $38                                          ; $7377: $ff
	sub c                                            ; $7378: $91
	ld b, b                                          ; $7379: $40
	add b                                            ; $737a: $80
	ld hl, sp-$20                                    ; $737b: $f8 $e0
	cp d                                             ; $737d: $ba
	ld a, h                                          ; $737e: $7c
	rst SubAFromDE                                          ; $737f: $df
	ccf                                              ; $7380: $3f
	cpl                                              ; $7381: $2f
	rra                                              ; $7382: $1f
	rlca                                             ; $7383: $07
	rrca                                             ; $7384: $0f
	ld b, $01                                        ; $7385: $06 $01
	ld [hl], a                                       ; $7387: $77
	xor $7f                                          ; $7388: $ee $7f
	add b                                            ; $738a: $80
	ld a, [hl]                                       ; $738b: $7e
	ld [hl], a                                       ; $738c: $77
	add c                                            ; $738d: $81
	jp $87c0                                         ; $738e: $c3 $c0 $87


	ld bc, $0305                                     ; $7391: $01 $05 $03
	add e                                            ; $7394: $83
	rlca                                             ; $7395: $07
	rlca                                             ; $7396: $07
	rrca                                             ; $7397: $0f
	rrca                                             ; $7398: $0f
	rra                                              ; $7399: $1f
	dec e                                            ; $739a: $1d
	ccf                                              ; $739b: $3f
	dec a                                            ; $739c: $3d
	ld a, a                                          ; $739d: $7f
	db $ed                                           ; $739e: $ed
	rst $38                                          ; $739f: $ff
	call $cbff                                       ; $73a0: $cd $ff $cb
	rst $38                                          ; $73a3: $ff
	ld b, [hl]                                       ; $73a4: $46
	rst $38                                          ; $73a5: $ff

jr_06b_73a6:
	db $ec                                           ; $73a6: $ec
	ld a, a                                          ; $73a7: $7f
	ldh a, [$7f]                                     ; $73a8: $f0 $7f
	ld a, h                                          ; $73aa: $7c
	ld a, a                                          ; $73ab: $7f
	ld a, e                                          ; $73ac: $7b
	add $df                                          ; $73ad: $c6 $df
	ld bc, $039e                                     ; $73af: $01 $9e $03
	ld [hl], a                                       ; $73b2: $77
	call nc, $fc7f                                   ; $73b3: $d4 $7f $fc
	cpl                                              ; $73b6: $2f
	ret nz                                           ; $73b7: $c0

	sub [hl]                                         ; $73b8: $96
	inc bc                                           ; $73b9: $03
	ret nz                                           ; $73ba: $c0

	add a                                            ; $73bb: $87
	add c                                            ; $73bc: $81
	add l                                            ; $73bd: $85
	inc bc                                           ; $73be: $03
	inc bc                                           ; $73bf: $03
	rlca                                             ; $73c0: $07
	add a                                            ; $73c1: $87
	dec de                                           ; $73c2: $1b
	ret nz                                           ; $73c3: $c0

jr_06b_73c4:
	sbc [hl]                                         ; $73c4: $9e
	ld [bc], a                                       ; $73c5: $02
	ld [hl], e                                       ; $73c6: $73
	jp nc, Jump_06b_419e                             ; $73c7: $d2 $9e $41

	inc sp                                           ; $73ca: $33
	ret nz                                           ; $73cb: $c0

	sbc c                                            ; $73cc: $99
	add e                                            ; $73cd: $83
	ret nz                                           ; $73ce: $c0

	add a                                            ; $73cf: $87
	pop bc                                           ; $73d0: $c1
	dec b                                            ; $73d1: $05
	add e                                            ; $73d2: $83
	ld [hl], a                                       ; $73d3: $77
	add b                                            ; $73d4: $80
	sbc [hl]                                         ; $73d5: $9e
	adc a                                            ; $73d6: $8f

jr_06b_73d7:
	rra                                              ; $73d7: $1f
	add b                                            ; $73d8: $80
	ld a, e                                          ; $73d9: $7b
	cp [hl]                                          ; $73da: $be
	daa                                              ; $73db: $27
	ret nz                                           ; $73dc: $c0

	ld a, e                                          ; $73dd: $7b
	add b                                            ; $73de: $80

jr_06b_73df:
	sbc c                                            ; $73df: $99
	pop bc                                           ; $73e0: $c1
	add l                                            ; $73e1: $85
	add e                                            ; $73e2: $83
	inc bc                                           ; $73e3: $03
	add a                                            ; $73e4: $87
	add a                                            ; $73e5: $87
	inc sp                                           ; $73e6: $33
	ret nz                                           ; $73e7: $c0

	ld b, e                                          ; $73e8: $43
	inc bc                                           ; $73e9: $03
	rst $38                                          ; $73ea: $ff
	db $dd                                           ; $73eb: $dd
	ld bc, $0295                                     ; $73ec: $01 $95 $02
	inc bc                                           ; $73ef: $03
	inc bc                                           ; $73f0: $03
	ld [bc], a                                       ; $73f1: $02
	inc bc                                           ; $73f2: $03
	ld [bc], a                                       ; $73f3: $02
	dec b                                            ; $73f4: $05
	ld b, $07                                        ; $73f5: $06 $07
	inc b                                            ; $73f7: $04
	ld [hl], a                                       ; $73f8: $77
	cp $7f                                           ; $73f9: $fe $7f
	ld hl, sp+$77                                    ; $73fb: $f8 $77
	ldh a, [c]                                       ; $73fd: $f2
	ld a, a                                          ; $73fe: $7f
	db $fd                                           ; $73ff: $fd
	rst SubAFromDE                                          ; $7400: $df
	ld bc, $e26f                                     ; $7401: $01 $6f $e2
	ld h, a                                          ; $7404: $67
	ldh [rPCM34], a                                  ; $7405: $e0 $77
	sbc $7f                                          ; $7407: $de $7f
	pop hl                                           ; $7409: $e1
	add h                                            ; $740a: $84
	dec b                                            ; $740b: $05
	rlca                                             ; $740c: $07
	ld a, [bc]                                       ; $740d: $0a
	rrca                                             ; $740e: $0f
	dec bc                                           ; $740f: $0b
	ld c, $0f                                        ; $7410: $0e $0f
	inc c                                            ; $7412: $0c
	rla                                              ; $7413: $17
	add hl, de                                       ; $7414: $19
	ld l, $33                                        ; $7415: $2e $33
	ld e, l                                          ; $7417: $5d
	ld h, [hl]                                       ; $7418: $66
	cp [hl]                                          ; $7419: $be
	call nz, $8c7a                                   ; $741a: $c4 $7a $8c

jr_06b_741d:
	call $9518                                       ; $741d: $cd $18 $95
	jr jr_06b_73df                                   ; $7420: $18 $bd

	db $10                                           ; $7422: $10
	inc [hl]                                         ; $7423: $34
	db $10                                           ; $7424: $10
	ld [hl], c                                       ; $7425: $71
	ld a, e                                          ; $7426: $7b
	cp $80                                           ; $7427: $fe $80
	ld [hl], l                                       ; $7429: $75
	db $10                                           ; $742a: $10
	dec [hl]                                         ; $742b: $35
	db $10                                           ; $742c: $10
	cp a                                             ; $742d: $bf
	db $10                                           ; $742e: $10
	xor a                                            ; $742f: $af
	jr jr_06b_741d                                   ; $7430: $18 $eb

	inc e                                            ; $7432: $1c
	push af                                          ; $7433: $f5
	ld c, $72                                        ; $7434: $0e $72
	adc a                                            ; $7436: $8f
	pop bc                                           ; $7437: $c1
	rst $38                                          ; $7438: $ff
	ccf                                              ; $7439: $3f
	ccf                                              ; $743a: $3f
	rlca                                             ; $743b: $07
	inc b                                            ; $743c: $04
	ld c, $0d                                        ; $743d: $0e $0d
	inc c                                            ; $743f: $0c
	dec bc                                           ; $7440: $0b
	add hl, de                                       ; $7441: $19
	ld d, $11                                        ; $7442: $16 $11
	ld e, $30                                        ; $7444: $1e $30
	cpl                                              ; $7446: $2f
	jr nz, jr_06b_73d7                               ; $7447: $20 $8e

	ccf                                              ; $7449: $3f
	jr nz, jr_06b_748b                               ; $744a: $20 $3f

	ld h, b                                          ; $744c: $60
	ld e, a                                          ; $744d: $5f
	ld [hl], b                                       ; $744e: $70
	ld c, a                                          ; $744f: $4f
	sbc h                                            ; $7450: $9c
	db $e3                                           ; $7451: $e3
	adc $b1                                          ; $7452: $ce $b1
	rst JumpTable                                          ; $7454: $c7
	cp b                                             ; $7455: $b8
	db $e3                                           ; $7456: $e3
	sbc h                                            ; $7457: $9c
	di                                               ; $7458: $f3
	adc h                                            ; $7459: $8c
	rst SubAFromBC                                          ; $745a: $e7
	ld [hl], a                                       ; $745b: $77
	adc d                                            ; $745c: $8a
	ld [hl], a                                       ; $745d: $77
	ld l, [hl]                                       ; $745e: $6e
	sub a                                            ; $745f: $97
	rrca                                             ; $7460: $0f
	ld [$090f], sp                                   ; $7461: $08 $0f $09
	rrca                                             ; $7464: $0f
	add hl, bc                                       ; $7465: $09
	rra                                              ; $7466: $1f
	ld [de], a                                       ; $7467: $12
	ld [hl], e                                       ; $7468: $73
	cp $80                                           ; $7469: $fe $80
	ld d, $1f                                        ; $746b: $16 $1f
	ld d, $3b                                        ; $746d: $16 $3b
	ld l, $3b                                        ; $746f: $2e $3b
	ld l, $33                                        ; $7471: $2e $33
	ld a, $73                                        ; $7473: $3e $73
	ld e, [hl]                                       ; $7475: $5e
	ld [hl], a                                       ; $7476: $77
	ld e, l                                          ; $7477: $5d
	rst FarCall                                          ; $7478: $f7
	sbc l                                            ; $7479: $9d
	rst $38                                          ; $747a: $ff
	sbc a                                            ; $747b: $9f
	ld d, c                                          ; $747c: $51
	cp a                                             ; $747d: $bf
	pop hl                                           ; $747e: $e1
	ccf                                              ; $747f: $3f
	pop af                                           ; $7480: $f1
	cpl                                              ; $7481: $2f
	jp nc, $a22f                                     ; $7482: $d2 $2f $a2

	ld e, a                                          ; $7485: $5f
	and e                                            ; $7486: $a3
	ld e, a                                          ; $7487: $5f
	ld h, d                                          ; $7488: $62
	sbc a                                            ; $7489: $9f
	add b                                            ; $748a: $80

jr_06b_748b:
	add $bf                                          ; $748b: $c6 $bf
	jp $83be                                         ; $748d: $c3 $be $83


	ld a, [hl]                                       ; $7490: $7e
	adc e                                            ; $7491: $8b
	halt                                             ; $7492: $76
	sbc e                                            ; $7493: $9b
	and $dd                                          ; $7494: $e6 $dd
	and [hl]                                         ; $7496: $a6
	ld c, a                                          ; $7497: $4f

jr_06b_7498:
	and h                                            ; $7498: $a4
	xor a                                            ; $7499: $af
	ld b, h                                          ; $749a: $44
	and d                                            ; $749b: $a2
	ld c, l                                          ; $749c: $4d
	adc [hl]                                         ; $749d: $8e
	ld c, c                                          ; $749e: $49
	adc [hl]                                         ; $749f: $8e
	ld c, c                                          ; $74a0: $49
	dec de                                           ; $74a1: $1b
	ret                                              ; $74a2: $c9


	ld d, c                                          ; $74a3: $51
	adc e                                            ; $74a4: $8b
	ld c, c                                          ; $74a5: $49
	sub e                                            ; $74a6: $93
	ld c, c                                          ; $74a7: $49
	sub e                                            ; $74a8: $93

jr_06b_74a9:
	add hl, bc                                       ; $74a9: $09
	add b                                            ; $74aa: $80
	db $d3                                           ; $74ab: $d3
	dec c                                            ; $74ac: $0d
	db $d3                                           ; $74ad: $d3
	ld c, h                                          ; $74ae: $4c
	db $d3                                           ; $74af: $d3
	ld h, [hl]                                       ; $74b0: $66
	reti                                             ; $74b1: $d9


	ld a, $e9                                        ; $74b2: $3e $e9
	xor d                                            ; $74b4: $aa
	ld a, l                                          ; $74b5: $7d
	sub a                                            ; $74b6: $97
	ld a, h                                          ; $74b7: $7c
	adc $3f                                          ; $74b8: $ce $3f
	rst SubAFromBC                                          ; $74ba: $e7
	rra                                              ; $74bb: $1f
	ld sp, hl                                        ; $74bc: $f9
	rst JumpTable                                          ; $74bd: $c7
	rst $38                                          ; $74be: $ff
	cp a                                             ; $74bf: $bf
	rst $38                                          ; $74c0: $ff
	add b                                            ; $74c1: $80
	ld a, a                                          ; $74c2: $7f
	ld b, b                                          ; $74c3: $40
	cp $21                                           ; $74c4: $fe $21
	cp $21                                           ; $74c6: $fe $21
	db $fc                                           ; $74c8: $fc
	inc de                                           ; $74c9: $13
	sub a                                            ; $74ca: $97
	db $fc                                           ; $74cb: $fc
	dec bc                                           ; $74cc: $0b
	ld a, h                                          ; $74cd: $7c
	adc e                                            ; $74ce: $8b
	inc a                                            ; $74cf: $3c
	rr h                                             ; $74d0: $cb $1c
	rst SubAFromBC                                          ; $74d2: $e7
	ld [hl], a                                       ; $74d3: $77
	cp $97                                           ; $74d4: $fe $97
	inc c                                            ; $74d6: $0c
	rst FarCall                                          ; $74d7: $f7
	dec c                                            ; $74d8: $0d
	ldh a, [c]                                       ; $74d9: $f2
	add a                                            ; $74da: $87
	ld [hl], b                                       ; $74db: $70
	rst JumpTable                                          ; $74dc: $c7
	ld sp, $def3                                     ; $74dd: $31 $f3 $de
	ld [bc], a                                       ; $74e0: $02
	ld a, d                                          ; $74e1: $7a
	ld [$07df], a                                    ; $74e2: $ea $df $07
	add b                                            ; $74e5: $80
	ccf                                              ; $74e6: $3f
	jr c, jr_06b_74a9                                ; $74e7: $38 $c0

	rst $38                                          ; $74e9: $ff
	ccf                                              ; $74ea: $3f
	ret nz                                           ; $74eb: $c0

	ld sp, hl                                        ; $74ec: $f9
	ld b, $fe                                        ; $74ed: $06 $fe
	ld bc, $47b8                                     ; $74ef: $01 $b8 $47
	ld l, e                                          ; $74f2: $6b
	add h                                            ; $74f3: $84
	ld d, [hl]                                       ; $74f4: $56
	adc b                                            ; $74f5: $88
	sbc c                                            ; $74f6: $99
	nop                                              ; $74f7: $00
	add d                                            ; $74f8: $82
	ld bc, $01d3                                     ; $74f9: $01 $d3 $01
	call nc, $3503                                   ; $74fc: $d4 $03 $35
	add d                                            ; $74ff: $82
	jr nz, jr_06b_7498                               ; $7500: $20 $96

	ld [hl+], a                                      ; $7502: $22
	sub h                                            ; $7503: $94
	ld sp, hl                                        ; $7504: $f9
	sub h                                            ; $7505: $94
	sub h                                            ; $7506: $94
	ld hl, sp-$6b                                    ; $7507: $f8 $95
	ld a, [$5f95]                                    ; $7509: $fa $95 $5f
	or l                                             ; $750c: $b5
	rst AddAOntoHL                                          ; $750d: $ef
	dec [hl]                                         ; $750e: $35
	xor l                                            ; $750f: $ad
	ld [hl], a                                       ; $7510: $77
	ldh [$c1], a                                     ; $7511: $e0 $c1
	add c                                            ; $7513: $81
	pop af                                           ; $7514: $f1
	rra                                              ; $7515: $1f
	pop af                                           ; $7516: $f1
	rra                                              ; $7517: $1f
	ldh a, [c]                                       ; $7518: $f2
	ld e, $fa                                        ; $7519: $1e $fa
	ld c, $fe                                        ; $751b: $0e $fe
	ld b, $fc                                        ; $751d: $06 $fc
	inc b                                            ; $751f: $04
	db $fc                                           ; $7520: $fc
	inc b                                            ; $7521: $04
	ld hl, sp+$08                                    ; $7522: $f8 $08
	ld hl, sp+$08                                    ; $7524: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $7526: $f0 $10
	ldh a, [rAUD1SWEEP]                              ; $7528: $f0 $10
	ldh [rAUD4LEN], a                                ; $752a: $e0 $20
	ldh [rAUD4LEN], a                                ; $752c: $e0 $20
	ret nz                                           ; $752e: $c0

	ld b, b                                          ; $752f: $40
	add b                                            ; $7530: $80
	add b                                            ; $7531: $80
	rst AddAOntoHL                                          ; $7532: $ef
	rst SubAFromDE                                          ; $7533: $df
	ldh [$80], a                                     ; $7534: $e0 $80
	reti                                             ; $7536: $d9


	add hl, sp                                       ; $7537: $39
	cp [hl]                                          ; $7538: $be
	rst JumpTable                                          ; $7539: $c7
	swap [hl]                                        ; $753a: $cb $36
	ld [hl], $cb                                     ; $753c: $36 $cb
	add d                                            ; $753e: $82
	ld a, a                                          ; $753f: $7f
	db $e3                                           ; $7540: $e3
	rra                                              ; $7541: $1f
	ld a, a                                          ; $7542: $7f
	rst GetHLinHL                                          ; $7543: $cf
	ldh a, [$3f]                                     ; $7544: $f0 $3f
	ld sp, hl                                        ; $7546: $f9
	rrca                                             ; $7547: $0f
	ld a, l                                          ; $7548: $7d
	rlca                                             ; $7549: $07
	rst $38                                          ; $754a: $ff
	ccf                                              ; $754b: $3f
	rst $38                                          ; $754c: $ff
	rst JumpTable                                          ; $754d: $c7
	rst GetHLinHL                                          ; $754e: $cf
	ld bc, $0fbf                                     ; $754f: $01 $bf $0f
	dec sp                                           ; $7552: $3b
	ld de, $9076                                     ; $7553: $11 $76 $90
	ld [hl+], a                                      ; $7556: $22
	ld l, h                                          ; $7557: $6c

jr_06b_7558:
	inc h                                            ; $7558: $24
	ld l, h                                          ; $7559: $6c

jr_06b_755a:
	inc h                                            ; $755a: $24
	ld a, b                                          ; $755b: $78

jr_06b_755c:
	jr z, jr_06b_75d6                                ; $755c: $28 $78

	jr z, jr_06b_7558                                ; $755e: $28 $f8

	jr z, jr_06b_755a                                ; $7560: $28 $f8

	jr nc, jr_06b_755c                               ; $7562: $30 $f8

	ld [hl], b                                       ; $7564: $70
	ldh [$bf], a                                     ; $7565: $e0 $bf
	ld a, l                                          ; $7567: $7d
	db $db                                           ; $7568: $db
	ld a, a                                          ; $7569: $7f
	cp $9e                                           ; $756a: $fe $9e
	inc bc                                           ; $756c: $03
	cp h                                             ; $756d: $bc
	rlca                                             ; $756e: $07
	rlca                                             ; $756f: $07
	rrca                                             ; $7570: $0f
	rrca                                             ; $7571: $0f
	rra                                              ; $7572: $1f
	sub e                                            ; $7573: $93
	ld bc, $031f                                     ; $7574: $01 $1f $03
	ccf                                              ; $7577: $3f
	inc bc                                           ; $7578: $03
	ccf                                              ; $7579: $3f
	rlca                                             ; $757a: $07
	ccf                                              ; $757b: $3f
	rrca                                             ; $757c: $0f
	ld a, c                                          ; $757d: $79
	rrca                                             ; $757e: $0f
	ld [hl], b                                       ; $757f: $70
	ld a, e                                          ; $7580: $7b
	ld b, h                                          ; $7581: $44
	pop af                                           ; $7582: $f1
	rst SubAFromDE                                          ; $7583: $df
	ccf                                              ; $7584: $3f
	add b                                            ; $7585: $80
	rst SubAFromDE                                          ; $7586: $df
	ldh [rIE], a                                     ; $7587: $e0 $ff
	nop                                              ; $7589: $00
	ldh a, [rIF]                                     ; $758a: $f0 $0f
	or a                                             ; $758c: $b7
	ld a, b                                          ; $758d: $78
	call c, $1fe3                                    ; $758e: $dc $e3 $1f
	rst $38                                          ; $7591: $ff
	ld l, a                                          ; $7592: $6f
	ldh a, [$9f]                                     ; $7593: $f0 $9f
	ldh [$38], a                                     ; $7595: $e0 $38
	rst $38                                          ; $7597: $ff
	db $fc                                           ; $7598: $fc
	jp $f009                                         ; $7599: $c3 $09 $f0


jr_06b_759c:
	ld [hl], d                                       ; $759c: $72
	adc h                                            ; $759d: $8c
	pop de                                           ; $759e: $d1
	ldh [c], a                                       ; $759f: $e2
	ld [hl], h                                       ; $75a0: $74
	sbc b                                            ; $75a1: $98
	sbc d                                            ; $75a2: $9a
	call z, $9b4e                                    ; $75a3: $cc $4e $9b
	ld h, h                                          ; $75a6: $64
	ld h, $34                                        ; $75a7: $26 $34
	dec d                                            ; $75a9: $15
	ld a, d                                          ; $75aa: $7a
	ld a, [de]                                       ; $75ab: $1a
	sub a                                            ; $75ac: $97
	ld e, $17                                        ; $75ad: $1e $17
	dec d                                            ; $75af: $15
	rra                                              ; $75b0: $1f
	add hl, de                                       ; $75b1: $19
	dec e                                            ; $75b2: $1d
	db $10                                           ; $75b3: $10
	jr @-$1e                                         ; $75b4: $18 $e0

	pop bc                                           ; $75b6: $c1
	ld a, a                                          ; $75b7: $7f
	sub h                                            ; $75b8: $94
	ld a, e                                          ; $75b9: $7b
	cp $93                                           ; $75ba: $fe $93
	inc bc                                           ; $75bc: $03
	rst $38                                          ; $75bd: $ff
	inc b                                            ; $75be: $04
	rst $38                                          ; $75bf: $ff
	ld [$13ff], sp                                   ; $75c0: $08 $ff $13
	db $fc                                           ; $75c3: $fc
	ccf                                              ; $75c4: $3f
	rst JumpTable                                          ; $75c5: $c7
	rst $38                                          ; $75c6: $ff
	db $fc                                           ; $75c7: $fc
	ld a, e                                          ; $75c8: $7b
	push af                                          ; $75c9: $f5
	sbc b                                            ; $75ca: $98
	add hl, bc                                       ; $75cb: $09
	rst $38                                          ; $75cc: $ff
	ld c, $ff                                        ; $75cd: $0e $ff
	ld hl, sp-$01                                    ; $75cf: $f8 $ff
	db $10                                           ; $75d1: $10
	ld [hl], e                                       ; $75d2: $73
	push hl                                          ; $75d3: $e5
	pop af                                           ; $75d4: $f1
	rst SubAFromDE                                          ; $75d5: $df

jr_06b_75d6:
	ret nz                                           ; $75d6: $c0

	add b                                            ; $75d7: $80
	cp b                                             ; $75d8: $b8
	ld a, b                                          ; $75d9: $78
	or $0e                                           ; $75da: $f6 $0e
	dec e                                            ; $75dc: $1d
	db $e3                                           ; $75dd: $e3
	rst SubAFromBC                                          ; $75de: $e7

jr_06b_75df:
	jr jr_06b_75df                                   ; $75df: $18 $fe

	ld bc, $c0bf                                     ; $75e1: $01 $bf $c0
	ld l, a                                          ; $75e4: $6f
	ldh a, [$f7]                                     ; $75e5: $f0 $f7
	jr jr_06b_759c                                   ; $75e7: $18 $b3

	inc c                                            ; $75e9: $0c
	ld c, c                                          ; $75ea: $49
	add [hl]                                         ; $75eb: $86
	dec h                                            ; $75ec: $25
	jp Jump_06b_43b5                                 ; $75ed: $c3 $b5 $43


	ld d, e                                          ; $75f0: $53
	ld hl, $211a                                     ; $75f1: $21 $1a $21
	xor b                                            ; $75f4: $a8
	ld de, $9048                                     ; $75f5: $11 $48 $90
	sub c                                            ; $75f8: $91
	sub l                                            ; $75f9: $95
	ld e, b                                          ; $75fa: $58
	push af                                          ; $75fb: $f5
	ld e, b                                          ; $75fc: $58
	pop hl                                           ; $75fd: $e1
	ld e, h                                          ; $75fe: $5c
	db $db                                           ; $75ff: $db
	ld l, h                                          ; $7600: $6c
	cp c                                             ; $7601: $b9
	ld l, [hl]                                       ; $7602: $6e
	ld a, c                                          ; $7603: $79
	xor [hl]                                         ; $7604: $ae
	cp h                                             ; $7605: $bc
	rst AddAOntoHL                                          ; $7606: $ef
	ldh [$c1], a                                     ; $7607: $e0 $c1
	rst SubAFromDE                                          ; $7609: $df
	add e                                            ; $760a: $83
	add d                                            ; $760b: $82
	add a                                            ; $760c: $87
	add l                                            ; $760d: $85
	ld c, $0b                                        ; $760e: $0e $0b
	inc a                                            ; $7610: $3c
	scf                                              ; $7611: $37
	ld hl, sp-$31                                    ; $7612: $f8 $cf
	ld [hl], c                                       ; $7614: $71
	cp a                                             ; $7615: $bf
	jp $07fe                                         ; $7616: $c3 $fe $07


	db $fc                                           ; $7619: $fc
	rra                                              ; $761a: $1f
	ld hl, sp+$7f                                    ; $761b: $f8 $7f
	ldh [$bf], a                                     ; $761d: $e0 $bf
	ret nz                                           ; $761f: $c0

	ld [hl], b                                       ; $7620: $70
	adc a                                            ; $7621: $8f
	ld h, b                                          ; $7622: $60
	sbc a                                            ; $7623: $9f
	ret nz                                           ; $7624: $c0

	ccf                                              ; $7625: $3f
	rst $38                                          ; $7626: $ff
	nop                                              ; $7627: $00
	ldh [rSCY], a                                    ; $7628: $e0 $42
	ret nz                                           ; $762a: $c0

	ld sp, hl                                        ; $762b: $f9
	rst SubAFromDE                                          ; $762c: $df
	add b                                            ; $762d: $80
	ld a, [hl]                                       ; $762e: $7e
	nop                                              ; $762f: $00
	sbc e                                            ; $7630: $9b
	ld h, b                                          ; $7631: $60
	and b                                            ; $7632: $a0
	or b                                             ; $7633: $b0
	ld d, b                                          ; $7634: $50
	ld a, d                                          ; $7635: $7a

jr_06b_7636:
	ld a, [hl-]                                      ; $7636: $3a
	add b                                            ; $7637: $80
	jr z, jr_06b_7636                                ; $7638: $28 $fc

	inc d                                            ; $763a: $14
	db $fc                                           ; $763b: $fc
	sub h                                            ; $763c: $94
	ld a, [hl]                                       ; $763d: $7e
	jp z, $ea3e                                      ; $763e: $ca $3e $ea

	sbc a                                            ; $7641: $9f
	push af                                          ; $7642: $f5
	adc a                                            ; $7643: $8f
	db $fd                                           ; $7644: $fd
	adc a                                            ; $7645: $8f
	db $fd                                           ; $7646: $fd
	rst JumpTable                                          ; $7647: $c7
	db $fd                                           ; $7648: $fd
	rst FarCall                                          ; $7649: $f7
	cp l                                             ; $764a: $bd
	rst $38                                          ; $764b: $ff
	call z, $a4ff                                    ; $764c: $cc $ff $a4
	rst $38                                          ; $764f: $ff
	and d                                            ; $7650: $a2
	rst $38                                          ; $7651: $ff
	jp nc, $d3ff                                     ; $7652: $d2 $ff $d3

	ld c, c                                          ; $7655: $49
	rst $38                                          ; $7656: $ff
	add b                                            ; $7657: $80
	add hl, hl                                       ; $7658: $29
	rst $38                                          ; $7659: $ff
	and l                                            ; $765a: $a5
	rst $38                                          ; $765b: $ff
	db $d3                                           ; $765c: $d3
	rst $38                                          ; $765d: $ff
	ldh a, [c]                                       ; $765e: $f2
	rst $38                                          ; $765f: $ff
	add hl, sp                                       ; $7660: $39
	rst $38                                          ; $7661: $ff
	xor $ff                                          ; $7662: $ee $ff
	push af                                          ; $7664: $f5
	ccf                                              ; $7665: $3f
	ld [hl], h                                       ; $7666: $74
	cp a                                             ; $7667: $bf
	ld l, d                                          ; $7668: $6a
	cp a                                             ; $7669: $bf
	xor d                                            ; $766a: $aa
	ld a, a                                          ; $766b: $7f
	push bc                                          ; $766c: $c5
	ld a, a                                          ; $766d: $7f
	ld b, h                                          ; $766e: $44
	rst $38                                          ; $766f: $ff
	jp nz, $e2ff                                     ; $7670: $c2 $ff $e2

	rst $38                                          ; $7673: $ff
	pop hl                                           ; $7674: $e1
	rst $38                                          ; $7675: $ff
	cp d                                             ; $7676: $ba
	sub c                                            ; $7677: $91
	pop af                                           ; $7678: $f1
	or l                                             ; $7679: $b5

jr_06b_767a:
	ld hl, sp-$54                                    ; $767a: $f8 $ac
	ld hl, sp-$56                                    ; $767c: $f8 $aa
	db $fc                                           ; $767e: $fc
	xor [hl]                                         ; $767f: $ae
	db $fc                                           ; $7680: $fc
	xor l                                            ; $7681: $ad
	cp $ab                                           ; $7682: $fe $ab
	cp $2b                                           ; $7684: $fe $2b
	ld a, e                                          ; $7686: $7b
	cp $9c                                           ; $7687: $fe $9c
	ld c, [hl]                                       ; $7689: $4e
	rst $38                                          ; $768a: $ff
	ld c, [hl]                                       ; $768b: $4e

jr_06b_768c:
	ld a, e                                          ; $768c: $7b
	pop bc                                           ; $768d: $c1
	adc h                                            ; $768e: $8c
	ld sp, hl                                        ; $768f: $f9
	cp $01                                           ; $7690: $fe $01
	cp $82                                           ; $7692: $fe $82
	db $fd                                           ; $7694: $fd
	pop af                                           ; $7695: $f1
	rst $38                                          ; $7696: $ff
	ccf                                              ; $7697: $3f
	rst AddAOntoHL                                          ; $7698: $ef
	ccf                                              ; $7699: $3f
	ldh [rAUD4GO], a                                 ; $769a: $e0 $23
	ldh [$61], a                                     ; $769c: $e0 $61
	ret nz                                           ; $769e: $c0

	pop bc                                           ; $769f: $c1
	add b                                            ; $76a0: $80
	add c                                            ; $76a1: $81

jr_06b_76a2:
	cp e                                             ; $76a2: $bb
	add c                                            ; $76a3: $81
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	add b                                            ; $76a6: $80
	ret nz                                           ; $76a7: $c0

	jr nz, @-$68                                     ; $76a8: $20 $96

	ret nz                                           ; $76aa: $c0

	db $10                                           ; $76ab: $10
	ldh [rP1], a                                     ; $76ac: $e0 $00
	ldh a, [$f8]                                     ; $76ae: $f0 $f8
	nop                                              ; $76b0: $00
	ld e, $e0                                        ; $76b1: $1e $e0
	cpl                                              ; $76b3: $2f
	ld h, h                                          ; $76b4: $64
	rst SubAFromHL                                          ; $76b5: $d7
	add b                                            ; $76b6: $80
	ld a, a                                          ; $76b7: $7f
	ld e, d                                          ; $76b8: $5a
	ld h, a                                          ; $76b9: $67
	cp $9c                                           ; $76ba: $fe $9c
	ldh [$a0], a                                     ; $76bc: $e0 $a0
	ld h, b                                          ; $76be: $60
	sbc $e0                                          ; $76bf: $de $e0
	ld a, l                                          ; $76c1: $7d
	ld b, a                                          ; $76c2: $47
	add b                                            ; $76c3: $80
	ld d, b                                          ; $76c4: $50
	or b                                             ; $76c5: $b0
	ld d, b                                          ; $76c6: $50
	or b                                             ; $76c7: $b0
	jr z, jr_06b_76a2                                ; $76c8: $28 $d8

	cp b                                             ; $76ca: $b8
	ret z                                            ; $76cb: $c8

	ld d, h                                          ; $76cc: $54
	db $ec                                           ; $76cd: $ec
	call c, Call_06b_7a64                            ; $76ce: $dc $64 $7a

jr_06b_76d1:
	and [hl]                                         ; $76d1: $a6
	sbc $b2                                          ; $76d2: $de $b2
	ld a, a                                          ; $76d4: $7f
	pop de                                           ; $76d5: $d1
	rst FarCall                                          ; $76d6: $f7
	ld e, c                                          ; $76d7: $59
	cp a                                             ; $76d8: $bf
	ld l, c                                          ; $76d9: $69
	db $fd                                           ; $76da: $fd
	dec hl                                           ; $76db: $2b
	ld [$d23e], a                                    ; $76dc: $ea $3e $d2
	ld a, $f4                                        ; $76df: $3e $f4
	inc e                                            ; $76e1: $1c
	db $fc                                           ; $76e2: $fc
	sub h                                            ; $76e3: $94
	inc e                                            ; $76e4: $1c
	ld hl, sp+$18                                    ; $76e5: $f8 $18
	ldh a, [rAUD1SWEEP]                              ; $76e7: $f0 $10
	ret nc                                           ; $76e9: $d0

	jr nc, jr_06b_768c                               ; $76ea: $30 $a0

	ld h, b                                          ; $76ec: $60
	ld b, b                                          ; $76ed: $40

jr_06b_76ee:
	ret nz                                           ; $76ee: $c0

	ld [hl], l                                       ; $76ef: $75
	jr nz, jr_06b_76d1                               ; $76f0: $20 $df

	db $fc                                           ; $76f2: $fc
	ld a, [hl]                                       ; $76f3: $7e
	ld b, d                                          ; $76f4: $42
	sub c                                            ; $76f5: $91
	rst JumpTable                                          ; $76f6: $c7
	jr c, jr_06b_767a                                ; $76f7: $38 $81

	ld a, [hl]                                       ; $76f9: $7e
	pop bc                                           ; $76fa: $c1
	ccf                                              ; $76fb: $3f
	jp nz, $e63d                                     ; $76fc: $c2 $3d $e6

	dec de                                           ; $76ff: $1b
	db $e4                                           ; $7700: $e4
	dec de                                           ; $7701: $1b
	call z, Call_06b_7b77                            ; $7702: $cc $77 $7b
	cp $9a                                           ; $7705: $fe $9a
	cp e                                             ; $7707: $bb
	cp $89                                           ; $7708: $fe $89
	rst $38                                          ; $770a: $ff
	ld d, b                                          ; $770b: $50
	ld a, e                                          ; $770c: $7b
	cp $9c                                           ; $770d: $fe $9c
	ld h, b                                          ; $770f: $60
	rst $38                                          ; $7710: $ff
	ld h, b                                          ; $7711: $60
	ld l, d                                          ; $7712: $6a
	db $f4                                           ; $7713: $f4
	sub [hl]                                         ; $7714: $96
	ret nz                                           ; $7715: $c0

	ldh [rAUD4LEN], a                                ; $7716: $e0 $20
	ld h, b                                          ; $7718: $60
	and b                                            ; $7719: $a0
	ld h, b                                          ; $771a: $60
	and b                                            ; $771b: $a0
	jr nc, jr_06b_76ee                               ; $771c: $30 $d0

	ld [hl], a                                       ; $771e: $77
	cp $99                                           ; $771f: $fe $99
	ld [hl], b                                       ; $7721: $70
	sub b                                            ; $7722: $90
	ld a, b                                          ; $7723: $78
	adc b                                            ; $7724: $88
	ld a, b                                          ; $7725: $78
	adc b                                            ; $7726: $88
	ld [hl], h                                       ; $7727: $74
	call nc, $fe7f                                   ; $7728: $d4 $7f $fe
	ld h, $00                                        ; $772b: $26 $00
	rst SubAFromDE                                          ; $772d: $df
	adc b                                            ; $772e: $88
	adc [hl]                                         ; $772f: $8e
	nop                                              ; $7730: $00
	call z, $bb88                                    ; $7731: $cc $88 $bb
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	ld b, h                                          ; $7736: $44
	adc b                                            ; $7737: $88
	nop                                              ; $7738: $00
	sbc c                                            ; $7739: $99
	sbc c                                            ; $773a: $99
	ld [hl], a                                       ; $773b: $77
	adc b                                            ; $773c: $88
	inc sp                                           ; $773d: $33
	sbc c                                            ; $773e: $99
	sbc c                                            ; $773f: $99
	ld [hl+], a                                      ; $7740: $22
	ld [hl], a                                       ; $7741: $77
	or $9e                                           ; $7742: $f6 $9e
	ld h, [hl]                                       ; $7744: $66
	ld l, a                                          ; $7745: $6f
	pop af                                           ; $7746: $f1
	sub [hl]                                         ; $7747: $96
	cp e                                             ; $7748: $bb
	ld d, l                                          ; $7749: $55
	nop                                              ; $774a: $00
	ld [hl], a                                       ; $774b: $77
	cp e                                             ; $774c: $bb
	adc b                                            ; $774d: $88
	adc b                                            ; $774e: $88
	call z, $bfcc                                    ; $774f: $cc $cc $bf
	ld bc, $3780                                     ; $7752: $01 $80 $37
	rst $38                                          ; $7755: $ff
	ld d, a                                          ; $7756: $57
	db $fd                                           ; $7757: $fd
	ld [hl], a                                       ; $7758: $77
	db $dd                                           ; $7759: $dd
	ld l, c                                          ; $775a: $69
	rst SubAFromDE                                          ; $775b: $df
	rst AddAOntoHL                                          ; $775c: $ef
	rst SubAFromDE                                          ; $775d: $df
	ld e, a                                          ; $775e: $5f
	ldh a, [$3e]                                     ; $775f: $f0 $3e
	pop hl                                           ; $7761: $e1
	dec sp                                           ; $7762: $3b
	rst SubAFromBC                                          ; $7763: $e7
	dec l                                            ; $7764: $2d
	cp $6a                                           ; $7765: $fe $6a
	db $f4                                           ; $7767: $f4
	ld [hl], c                                       ; $7768: $71
	ret nc                                           ; $7769: $d0

	ret nc                                           ; $776a: $d0

	cp b                                             ; $776b: $b8
	ret c                                            ; $776c: $d8

	xor b                                            ; $776d: $a8
	ld e, h                                          ; $776e: $5c
	add sp, $60                                      ; $776f: $e8 $60
	call c, $8cbe                                    ; $7771: $dc $be $8c
	db $e4                                           ; $7774: $e4
	sbc h                                            ; $7775: $9c
	cp $9f                                           ; $7776: $fe $9f
	cp $0f                                           ; $7778: $fe $0f
	rst $38                                          ; $777a: $ff
	rrca                                             ; $777b: $0f
	rst $38                                          ; $777c: $ff
	dec c                                            ; $777d: $0d
	db $fc                                           ; $777e: $fc
	ld c, $fc                                        ; $777f: $0e $fc
	ld a, [bc]                                       ; $7781: $0a
	cp $0b                                           ; $7782: $fe $0b
	cp $89                                           ; $7784: $fe $89
	rst $38                                          ; $7786: $ff
	ld [hl], a                                       ; $7787: $77
	cp $80                                           ; $7788: $fe $80
	adc d                                            ; $778a: $8a
	rst $38                                          ; $778b: $ff
	ld b, a                                          ; $778c: $47
	cp $47                                           ; $778d: $fe $47
	cp $2f                                           ; $778f: $fe $2f
	cp $fa                                           ; $7791: $fe $fa
	rst $38                                          ; $7793: $ff
	ld a, b                                          ; $7794: $78
	ret z                                            ; $7795: $c8

	add sp, -$68                                     ; $7796: $e8 $98
	jr nc, @-$06                                     ; $7798: $30 $f8

	ldh a, [$c0]                                     ; $779a: $f0 $c0
	ld hl, sp+$00                                    ; $779c: $f8 $00
	and b                                            ; $779e: $a0
	ld a, b                                          ; $779f: $78
	ldh a, [$f8]                                     ; $77a0: $f0 $f8
	sbc b                                            ; $77a2: $98
	ret c                                            ; $77a3: $d8

	ld [hl], b                                       ; $77a4: $70
	ldh a, [$50]                                     ; $77a5: $f0 $50
	ld [hl], b                                       ; $77a7: $70
	db $fc                                           ; $77a8: $fc
	sbc e                                            ; $77a9: $9b
	nop                                              ; $77aa: $00
	ldh a, [rP1]                                     ; $77ab: $f0 $00
	ld h, b                                          ; $77ad: $60
	ld a, [$1088]                                    ; $77ae: $fa $88 $10
	inc e                                            ; $77b1: $1c
	inc l                                            ; $77b2: $2c
	cpl                                              ; $77b3: $2f
	rrca                                             ; $77b4: $0f
	inc bc                                           ; $77b5: $03
	rra                                              ; $77b6: $1f
	nop                                              ; $77b7: $00
	jr @+$09                                         ; $77b8: $18 $07

	dec de                                           ; $77ba: $1b
	rlca                                             ; $77bb: $07
	rrca                                             ; $77bc: $0f
	rlca                                             ; $77bd: $07
	inc b                                            ; $77be: $04
	ld bc, $0000                                     ; $77bf: $01 $00 $00
	rlca                                             ; $77c2: $07
	nop                                              ; $77c3: $00
	ld bc, $4000                                     ; $77c4: $01 $00 $40
	ld a, e                                          ; $77c7: $7b
	ldh [hDisp0_SCX], a                                     ; $77c8: $e0 $84
	ld [hl], b                                       ; $77ca: $70
	ret nz                                           ; $77cb: $c0

	and b                                            ; $77cc: $a0
	ld b, b                                          ; $77cd: $40
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	ld l, [hl]                                       ; $77d0: $6e
	ld a, e                                          ; $77d1: $7b
	scf                                              ; $77d2: $37
	sbc l                                            ; $77d3: $9d
	sbc a                                            ; $77d4: $9f
	db $fd                                           ; $77d5: $fd
	rst $38                                          ; $77d6: $ff
	ld a, l                                          ; $77d7: $7d
	ld a, a                                          ; $77d8: $7f
	add e                                            ; $77d9: $83
	rst AddAOntoHL                                          ; $77da: $ef
	pop af                                           ; $77db: $f1
	dec a                                            ; $77dc: $3d
	cp a                                             ; $77dd: $bf
	rst AddAOntoHL                                          ; $77de: $ef
	ld sp, hl                                        ; $77df: $f9
	cp a                                             ; $77e0: $bf
	pop hl                                           ; $77e1: $e1
	db $fd                                           ; $77e2: $fd
	inc bc                                           ; $77e3: $03
	cp $7b                                           ; $77e4: $fe $7b
	cp $80                                           ; $77e6: $fe $80
	ld a, a                                          ; $77e8: $7f
	ld [bc], a                                       ; $77e9: $02
	ld a, e                                          ; $77ea: $7b
	rlca                                             ; $77eb: $07
	ld a, a                                          ; $77ec: $7f
	rlca                                             ; $77ed: $07
	rst FarCall                                          ; $77ee: $f7
	rrca                                             ; $77ef: $0f
	xor [hl]                                         ; $77f0: $ae
	ld a, a                                          ; $77f1: $7f
	cp $9f                                           ; $77f2: $fe $9f
	sbc d                                            ; $77f4: $9a
	ccf                                              ; $77f5: $3f
	ld a, d                                          ; $77f6: $7a
	ccf                                              ; $77f7: $3f
	ldh a, [c]                                       ; $77f8: $f2
	ld a, a                                          ; $77f9: $7f
	rst $38                                          ; $77fa: $ff
	rst $38                                          ; $77fb: $ff
	rst FarCall                                          ; $77fc: $f7
	ld hl, sp-$39                                    ; $77fd: $f8 $c7
	pop hl                                           ; $77ff: $e1
	rra                                              ; $7800: $1f
	add a                                            ; $7801: $87
	ld a, l                                          ; $7802: $7d
	rra                                              ; $7803: $1f
	cp c                                             ; $7804: $b9
	ld a, a                                          ; $7805: $7f
	ei                                               ; $7806: $fb
	sub [hl]                                         ; $7807: $96
	rst SubAFromDE                                          ; $7808: $df
	rst $38                                          ; $7809: $ff
	rst SubAFromDE                                          ; $780a: $df
	cp a                                             ; $780b: $bf
	ld l, a                                          ; $780c: $6f
	cp $13                                           ; $780d: $fe $13
	cp $f3                                           ; $780f: $fe $f3
	ld l, a                                          ; $7811: $6f
	ld b, b                                          ; $7812: $40
	sub e                                            ; $7813: $93
	ld l, l                                          ; $7814: $6d
	db $db                                           ; $7815: $db
	db $eb                                           ; $7816: $eb
	rst SubAFromDE                                          ; $7817: $df
	ld e, a                                          ; $7818: $5f
	db $fc                                           ; $7819: $fc
	ccf                                              ; $781a: $3f
	ldh [$39], a                                     ; $781b: $e0 $39
	rst SubAFromBC                                          ; $781d: $e7
	ld l, $ff                                        ; $781e: $2e $ff
	ld c, a                                          ; $7820: $4f
	ld b, b                                          ; $7821: $40
	ld [hl], a                                       ; $7822: $77
	ld h, b                                          ; $7823: $60
	sub [hl]                                         ; $7824: $96
	or b                                             ; $7825: $b0
	ld a, b                                          ; $7826: $78
	ldh a, [$c0]                                     ; $7827: $f0 $c0
	ld a, b                                          ; $7829: $78
	add b                                            ; $782a: $80
	ret z                                            ; $782b: $c8

	jr nc, jr_06b_785e                               ; $782c: $30 $30

	sbc $f8                                          ; $782e: $de $f8
	sbc l                                            ; $7830: $9d
	ld [hl], b                                       ; $7831: $70
	ret nc                                           ; $7832: $d0

	cpl                                              ; $7833: $2f
	ld h, b                                          ; $7834: $60
	sbc l                                            ; $7835: $9d
	inc e                                            ; $7836: $1c
	inc bc                                           ; $7837: $03
	inc hl                                           ; $7838: $23
	ld h, b                                          ; $7839: $60
	sub d                                            ; $783a: $92

jr_06b_783b:
	dec e                                            ; $783b: $1d
	sbc a                                            ; $783c: $9f
	db $fd                                           ; $783d: $fd
	ld h, a                                          ; $783e: $67
	db $fd                                           ; $783f: $fd
	rst $38                                          ; $7840: $ff
	dec de                                           ; $7841: $1b
	cp a                                             ; $7842: $bf
	pop bc                                           ; $7843: $c1
	db $fd                                           ; $7844: $fd
	rst $38                                          ; $7845: $ff
	rst AddAOntoHL                                          ; $7846: $ef
	cp c                                             ; $7847: $b9
	ld b, a                                          ; $7848: $47
	ld h, b                                          ; $7849: $60
	ld c, a                                          ; $784a: $4f
	add b                                            ; $784b: $80
	ld a, [hl]                                       ; $784c: $7e
	cp [hl]                                          ; $784d: $be
	sbc e                                            ; $784e: $9b
	cpl                                              ; $784f: $2f
	rst $38                                          ; $7850: $ff
	ld l, d                                          ; $7851: $6a
	push af                                          ; $7852: $f5
	ld c, a                                          ; $7853: $4f
	add b                                            ; $7854: $80
	sbc b                                            ; $7855: $98
	ld hl, sp-$78                                    ; $7856: $f8 $88
	ret nc                                           ; $7858: $d0

	jr c, jr_06b_783b                                ; $7859: $38 $e0

	ldh a, [$38]                                     ; $785b: $f0 $38
	ld a, d                                          ; $785d: $7a

jr_06b_785e:
	sbc $7f                                          ; $785e: $de $7f
	ld a, [hl]                                       ; $7860: $7e
	sbc c                                            ; $7861: $99
	ld [hl], b                                       ; $7862: $70
	ld hl, sp-$48                                    ; $7863: $f8 $b8
	ld hl, sp-$30                                    ; $7865: $f8 $d0
	ldh a, [rHDMA3]                                  ; $7867: $f0 $53
	add b                                            ; $7869: $80
	sub e                                            ; $786a: $93
	db $10                                           ; $786b: $10
	jr z, jr_06b_789c                                ; $786c: $28 $2e

	rlca                                             ; $786e: $07
	rrca                                             ; $786f: $0f
	ld e, $01                                        ; $7870: $1e $01
	rra                                              ; $7872: $1f
	nop                                              ; $7873: $00
	ld e, $01                                        ; $7874: $1e $01
	dec bc                                           ; $7876: $0b
	sbc $07                                          ; $7877: $de $07
	scf                                              ; $7879: $37
	add b                                            ; $787a: $80
	sbc h                                            ; $787b: $9c
	rra                                              ; $787c: $1f
	db $fd                                           ; $787d: $fd
	rst SubAFromBC                                          ; $787e: $e7
	ld a, e                                          ; $787f: $7b
	add b                                            ; $7880: $80
	sub a                                            ; $7881: $97
	ld a, a                                          ; $7882: $7f
	add c                                            ; $7883: $81
	adc a                                            ; $7884: $8f
	pop af                                           ; $7885: $f1
	ld a, l                                          ; $7886: $7d
	rst $38                                          ; $7887: $ff
	xor a                                            ; $7888: $af
	pop af                                           ; $7889: $f1
	scf                                              ; $788a: $37

jr_06b_788b:
	add b                                            ; $788b: $80
	sub c                                            ; $788c: $91
	ld l, a                                          ; $788d: $6f
	reti                                             ; $788e: $d9


	jp hl                                            ; $788f: $e9


	rst SubAFromDE                                          ; $7890: $df
	ld e, [hl]                                       ; $7891: $5e
	rst $38                                          ; $7892: $ff
	ccf                                              ; $7893: $3f
	ldh [$3f], a                                     ; $7894: $e0 $3f
	ldh [$2e], a                                     ; $7896: $e0 $2e
	rst $38                                          ; $7898: $ff
	ld l, e                                          ; $7899: $6b
	rst FarCall                                          ; $789a: $f7
	daa                                              ; $789b: $27

jr_06b_789c:
	add b                                            ; $789c: $80
	ld [hl], a                                       ; $789d: $77
	cp $9c                                           ; $789e: $fe $9c
	ret c                                            ; $78a0: $d8

	jr c, jr_06b_788b                                ; $78a1: $38 $e8

	dec hl                                           ; $78a3: $2b
	add b                                            ; $78a4: $80
	ld a, a                                          ; $78a5: $7f
	cp $99                                           ; $78a6: $fe $99
	rrca                                             ; $78a8: $0f
	nop                                              ; $78a9: $00
	ld b, $07                                        ; $78aa: $06 $07
	ld bc, $3f03                                     ; $78ac: $01 $03 $3f

Call_06b_78af:
	add b                                            ; $78af: $80
	sub d                                            ; $78b0: $92
	ccf                                              ; $78b1: $3f
	db $dd                                           ; $78b2: $dd
	rst JumpTable                                          ; $78b3: $c7
	db $fd                                           ; $78b4: $fd
	rst $38                                          ; $78b5: $ff
	dec sp                                           ; $78b6: $3b
	rst $38                                          ; $78b7: $ff
	ld bc, $01ff                                     ; $78b8: $01 $ff $01
	db $dd                                           ; $78bb: $dd
	ccf                                              ; $78bc: $3f
	rst AddAOntoHL                                          ; $78bd: $ef
	ld c, e                                          ; $78be: $4b
	add b                                            ; $78bf: $80
	ld a, d                                          ; $78c0: $7a
	rst GetHLinHL                                          ; $78c1: $cf
	adc l                                            ; $78c2: $8d
	nop                                              ; $78c3: $00
	add b                                            ; $78c4: $80
	nop                                              ; $78c5: $00
	ret nz                                           ; $78c6: $c0

	add b                                            ; $78c7: $80
	ldh [$c0], a                                     ; $78c8: $e0 $c0
	jr nz, jr_06b_793c                               ; $78ca: $20 $70

	jr c, jr_06b_790a                                ; $78cc: $38 $3c

	ld a, $17                                        ; $78ce: $3e $17
	rrca                                             ; $78d0: $0f
	add hl, de                                       ; $78d1: $19
	sub [hl]                                         ; $78d2: $96
	rrca                                             ; $78d3: $0f
	adc a                                            ; $78d4: $8f
	or $86                                           ; $78d5: $f6 $86
	or b                                             ; $78d7: $b0
	and b                                            ; $78d8: $a0
	pop hl                                           ; $78d9: $e1
	ld b, b                                          ; $78da: $40
	inc bc                                           ; $78db: $03
	ld bc, $0245                                     ; $78dc: $01 $45 $02
	ld [$1104], sp                                   ; $78df: $08 $04 $11
	ld [$1133], sp                                   ; $78e2: $08 $33 $11
	db $e3                                           ; $78e5: $e3
	inc hl                                           ; $78e6: $23
	jp $8ac7                                         ; $78e7: $c3 $c7 $8a


	inc b                                            ; $78ea: $04
	add hl, de                                       ; $78eb: $19
	nop                                              ; $78ec: $00
	inc bc                                           ; $78ed: $03
	nop                                              ; $78ee: $00
	dec b                                            ; $78ef: $05
	ld a, e                                          ; $78f0: $7b
	sbc b                                            ; $78f1: $98
	ld a, a                                          ; $78f2: $7f
	ld a, [$887f]                                    ; $78f3: $fa $7f $88
	inc bc                                           ; $78f6: $03
	ret nz                                           ; $78f7: $c0

	sbc h                                            ; $78f8: $9c
	and b                                            ; $78f9: $a0
	ld b, c                                          ; $78fa: $41
	ldh [$03], a                                     ; $78fb: $e0 $03
	ret nz                                           ; $78fd: $c0

jr_06b_78fe:
	rrca                                             ; $78fe: $0f
	add b                                            ; $78ff: $80
	ld a, a                                          ; $7900: $7f
	ret nz                                           ; $7901: $c0

	sbc [hl]                                         ; $7902: $9e
	ld b, c                                          ; $7903: $41
	inc bc                                           ; $7904: $03
	ret nz                                           ; $7905: $c0

	inc de                                           ; $7906: $13
	ret nz                                           ; $7907: $c0

	sbc d                                            ; $7908: $9a
	db $e3                                           ; $7909: $e3

jr_06b_790a:
	ld b, c                                          ; $790a: $41
	dec b                                            ; $790b: $05
	ld [bc], a                                       ; $790c: $02
	ld c, b                                          ; $790d: $48
	dec hl                                           ; $790e: $2b
	ret nz                                           ; $790f: $c0

	rst JumpTable                                          ; $7910: $c7
	ld bc, $3780                                     ; $7911: $01 $80 $37
	rst $38                                          ; $7914: $ff
	ld d, a                                          ; $7915: $57
	db $fd                                           ; $7916: $fd
	ld [hl], l                                       ; $7917: $75
	rst SubAFromDE                                          ; $7918: $df

jr_06b_7919:
	ld l, a                                          ; $7919: $6f
	rst SubAFromDE                                          ; $791a: $df
	db $eb                                           ; $791b: $eb
	call c, $f05f                                    ; $791c: $dc $5f $f0
	ccf                                              ; $791f: $3f
	ldh [$3f], a                                     ; $7920: $e0 $3f
	ldh [$2e], a                                     ; $7922: $e0 $2e
	rst $38                                          ; $7924: $ff
	ld l, e                                          ; $7925: $6b
	rst FarCall                                          ; $7926: $f7
	ld [hl], b                                       ; $7927: $70
	ret nc                                           ; $7928: $d0

	ret nc                                           ; $7929: $d0

	cp b                                             ; $792a: $b8
	ret c                                            ; $792b: $d8

	xor b                                            ; $792c: $a8
	ld e, h                                          ; $792d: $5c
	add sp, $60                                      ; $792e: $e8 $60
	call c, $8cbe                                    ; $7930: $dc $be $8c
	db $e4                                           ; $7933: $e4
	sbc h                                            ; $7934: $9c
	cp $9f                                           ; $7935: $fe $9f
	cp $0f                                           ; $7937: $fe $0f
	rst $38                                          ; $7939: $ff
	rrca                                             ; $793a: $0f
	rst $38                                          ; $793b: $ff

jr_06b_793c:
	dec c                                            ; $793c: $0d
	db $fc                                           ; $793d: $fc
	ld c, $fc                                        ; $793e: $0e $fc
	ld a, [bc]                                       ; $7940: $0a
	cp $0b                                           ; $7941: $fe $0b
	cp $89                                           ; $7943: $fe $89
	rst $38                                          ; $7945: $ff

jr_06b_7946:
	ld [hl], a                                       ; $7946: $77
	cp $81                                           ; $7947: $fe $81
	adc d                                            ; $7949: $8a
	rst $38                                          ; $794a: $ff
	ld b, a                                          ; $794b: $47
	cp $47                                           ; $794c: $fe $47

jr_06b_794e:
	cp $2f                                           ; $794e: $fe $2f
	cp $fa                                           ; $7950: $fe $fa
	rst $38                                          ; $7952: $ff
	ld a, b                                          ; $7953: $78
	ret z                                            ; $7954: $c8

	ldh a, [$80]                                     ; $7955: $f0 $80
	jr nz, jr_06b_7919                               ; $7957: $20 $c0

	ret nz                                           ; $7959: $c0

	ldh [$f0], a                                     ; $795a: $e0 $f0
	jr c, jr_06b_7946                                ; $795c: $38 $e8

	jr @-$06                                         ; $795e: $18 $f8

	nop                                              ; $7960: $00
	ld hl, sp+$00                                    ; $7961: $f8 $00
	ret c                                            ; $7963: $d8

	jr c, jr_06b_794e                                ; $7964: $38 $e8

	ldh a, [$f5]                                     ; $7966: $f0 $f5
	rst SubAFromDE                                          ; $7968: $df
	db $10                                           ; $7969: $10
	rst SubAFromDE                                          ; $796a: $df
	jr nz, jr_06b_78fe                               ; $796b: $20 $91

	nop                                              ; $796d: $00
	inc bc                                           ; $796e: $03
	rla                                              ; $796f: $17
	rrca                                             ; $7970: $0f
	dec de                                           ; $7971: $1b
	inc c                                            ; $7972: $0c
	rra                                              ; $7973: $1f
	nop                                              ; $7974: $00
	rrca                                             ; $7975: $0f
	nop                                              ; $7976: $00
	ld c, $07                                        ; $7977: $0e $07
	ld bc, $fd03                                     ; $7979: $01 $03 $fd
	add b                                            ; $797c: $80
	ld b, b                                          ; $797d: $40
	nop                                              ; $797e: $00
	ld h, b                                          ; $797f: $60
	nop                                              ; $7980: $00
	ld [hl], b                                       ; $7981: $70
	ret nz                                           ; $7982: $c0

	and b                                            ; $7983: $a0
	ld b, b                                          ; $7984: $40
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	ld l, [hl]                                       ; $7987: $6e
	ld a, e                                          ; $7988: $7b
	rla                                              ; $7989: $17
	ld a, l                                          ; $798a: $7d
	rst $38                                          ; $798b: $ff
	db $fd                                           ; $798c: $fd
	ld a, a                                          ; $798d: $7f
	add l                                            ; $798e: $85
	rst $38                                          ; $798f: $ff
	inc bc                                           ; $7990: $03
	rst $38                                          ; $7991: $ff
	ld bc, $01ff                                     ; $7992: $01 $ff $01
	db $dd                                           ; $7995: $dd
	ccf                                              ; $7996: $3f
	rst $38                                          ; $7997: $ff
	pop af                                           ; $7998: $f1
	dec e                                            ; $7999: $1d
	inc bc                                           ; $799a: $03
	ld a, $7b                                        ; $799b: $3e $7b
	cp $80                                           ; $799d: $fe $80
	ld a, a                                          ; $799f: $7f
	ld [bc], a                                       ; $79a0: $02
	ld a, e                                          ; $79a1: $7b
	rlca                                             ; $79a2: $07
	ld a, a                                          ; $79a3: $7f
	rlca                                             ; $79a4: $07
	rst FarCall                                          ; $79a5: $f7
	rrca                                             ; $79a6: $0f
	xor [hl]                                         ; $79a7: $ae
	ld a, a                                          ; $79a8: $7f
	cp $9f                                           ; $79a9: $fe $9f
	sbc d                                            ; $79ab: $9a
	ccf                                              ; $79ac: $3f
	ld a, d                                          ; $79ad: $7a
	ccf                                              ; $79ae: $3f
	ldh a, [c]                                       ; $79af: $f2
	ld a, a                                          ; $79b0: $7f
	rst $38                                          ; $79b1: $ff
	rst $38                                          ; $79b2: $ff
	rst FarCall                                          ; $79b3: $f7
	ld hl, sp-$39                                    ; $79b4: $f8 $c7
	pop hl                                           ; $79b6: $e1
	rra                                              ; $79b7: $1f
	add a                                            ; $79b8: $87
	ld a, l                                          ; $79b9: $7d
	rra                                              ; $79ba: $1f
	cp c                                             ; $79bb: $b9
	ld a, a                                          ; $79bc: $7f
	ei                                               ; $79bd: $fb
	sub [hl]                                         ; $79be: $96
	rst SubAFromDE                                          ; $79bf: $df
	rst $38                                          ; $79c0: $ff
	rst SubAFromDE                                          ; $79c1: $df
	cp a                                             ; $79c2: $bf
	ld l, a                                          ; $79c3: $6f
	cp $13                                           ; $79c4: $fe $13
	cp $f3                                           ; $79c6: $fe $f3
	ld b, a                                          ; $79c8: $47
	ld b, b                                          ; $79c9: $40
	sbc [hl]                                         ; $79ca: $9e
	dec l                                            ; $79cb: $2d
	ld c, e                                          ; $79cc: $4b
	ld b, b                                          ; $79cd: $40
	ld l, e                                          ; $79ce: $6b
	ld h, b                                          ; $79cf: $60
	sub e                                            ; $79d0: $93
	ldh a, [$f8]                                     ; $79d1: $f0 $f8
	jr c, @-$0e                                      ; $79d3: $38 $f0

	ld [$00f8], sp                                   ; $79d5: $08 $f8 $00
	ld [$f8f0], sp                                   ; $79d8: $08 $f0 $f8
	ld hl, sp+$30                                    ; $79db: $f8 $30
	ccf                                              ; $79dd: $3f
	ld h, b                                          ; $79de: $60
	sub d                                            ; $79df: $92
	rlca                                             ; $79e0: $07
	rra                                              ; $79e1: $1f
	rrca                                             ; $79e2: $0f
	rla                                              ; $79e3: $17
	ld [$001f], sp                                   ; $79e4: $08 $1f $00
	inc c                                            ; $79e7: $0c
	inc bc                                           ; $79e8: $03
	rrca                                             ; $79e9: $0f
	rlca                                             ; $79ea: $07
	inc bc                                           ; $79eb: $03
	ld bc, $601f                                     ; $79ec: $01 $1f $60
	sbc d                                            ; $79ef: $9a
	rst GetHLinHL                                          ; $79f0: $cf
	pop af                                           ; $79f1: $f1
	dec a                                            ; $79f2: $3d
	rst $38                                          ; $79f3: $ff

jr_06b_79f4:
	rst AddAOntoHL                                          ; $79f4: $ef
	ld c, e                                          ; $79f5: $4b
	ld h, b                                          ; $79f6: $60
	ld d, a                                          ; $79f7: $57
	add b                                            ; $79f8: $80
	sub a                                            ; $79f9: $97
	ld a, $e1                                        ; $79fa: $3e $e1
	inc sp                                           ; $79fc: $33
	rst AddAOntoHL                                          ; $79fd: $ef
	cpl                                              ; $79fe: $2f
	rst $38                                          ; $79ff: $ff
	ld l, c                                          ; $7a00: $69
	push af                                          ; $7a01: $f5
	ld b, a                                          ; $7a02: $47
	add b                                            ; $7a03: $80
	sbc l                                            ; $7a04: $9d
	nop                                              ; $7a05: $00
	ldh a, [$7b]                                     ; $7a06: $f0 $7b
	adc c                                            ; $7a08: $89
	ld a, e                                          ; $7a09: $7b
	add d                                            ; $7a0a: $82
	sub a                                            ; $7a0b: $97
	jr @-$1e                                         ; $7a0c: $18 $e0

	ld [hl], b                                       ; $7a0e: $70
	ld hl, sp-$18                                    ; $7a0f: $f8 $e8
	cp b                                             ; $7a11: $b8
	jr nc, jr_06b_79f4                               ; $7a12: $30 $e0

	ld c, e                                          ; $7a14: $4b
	add b                                            ; $7a15: $80
	sub e                                            ; $7a16: $93
	inc hl                                           ; $7a17: $23
	inc bc                                           ; $7a18: $03
	rlca                                             ; $7a19: $07
	rra                                              ; $7a1a: $1f
	inc c                                            ; $7a1b: $0c
	rla                                              ; $7a1c: $17
	ld [$011e], sp                                   ; $7a1d: $08 $1e $01
	dec bc                                           ; $7a20: $0b
	rlca                                             ; $7a21: $07
	dec c                                            ; $7a22: $0d
	scf                                              ; $7a23: $37
	add b                                            ; $7a24: $80
	sub b                                            ; $7a25: $90
	db $fd                                           ; $7a26: $fd
	rst $38                                          ; $7a27: $ff
	db $fd                                           ; $7a28: $fd
	rst $38                                          ; $7a29: $ff
	dec b                                            ; $7a2a: $05
	rst $38                                          ; $7a2b: $ff
	inc bc                                           ; $7a2c: $03
	rlca                                             ; $7a2d: $07
	ld sp, hl                                        ; $7a2e: $f9
	db $fd                                           ; $7a2f: $fd
	rst $38                                          ; $7a30: $ff
	rst SubAFromBC                                          ; $7a31: $e7
	ld a, c                                          ; $7a32: $79
	ld l, a                                          ; $7a33: $6f
	pop bc                                           ; $7a34: $c1
	ccf                                              ; $7a35: $3f
	add b                                            ; $7a36: $80
	sbc h                                            ; $7a37: $9c
	ld [hl], a                                       ; $7a38: $77
	rst SubAFromDE                                          ; $7a39: $df
	ld l, h                                          ; $7a3a: $6c
	ld [hl], e                                       ; $7a3b: $73
	add b                                            ; $7a3c: $80
	sbc d                                            ; $7a3d: $9a
	dec a                                            ; $7a3e: $3d
	db $e3                                           ; $7a3f: $e3
	scf                                              ; $7a40: $37
	rst AddAOntoHL                                          ; $7a41: $ef
	dec l                                            ; $7a42: $2d
	dec sp                                           ; $7a43: $3b
	add b                                            ; $7a44: $80
	sbc h                                            ; $7a45: $9c
	add b                                            ; $7a46: $80
	ldh a, [rSVBK]                                   ; $7a47: $f0 $70
	ld a, e                                          ; $7a49: $7b
	add b                                            ; $7a4a: $80
	ld a, [hl]                                       ; $7a4b: $7e
	ld l, b                                          ; $7a4c: $68
	sbc c                                            ; $7a4d: $99
	or b                                             ; $7a4e: $b0
	ld hl, sp+$30                                    ; $7a4f: $f8 $30
	xor b                                            ; $7a51: $a8
	ldh [$e0], a                                     ; $7a52: $e0 $e0
	ccf                                              ; $7a54: $3f
	add b                                            ; $7a55: $80
	sbc [hl]                                         ; $7a56: $9e
	rlca                                             ; $7a57: $07
	ld a, d                                          ; $7a58: $7a
	ld h, d                                          ; $7a59: $62
	ld a, a                                          ; $7a5a: $7f
	xor d                                            ; $7a5b: $aa
	sbc c                                            ; $7a5c: $99
	dec de                                           ; $7a5d: $1b
	rlca                                             ; $7a5e: $07
	ld c, $07                                        ; $7a5f: $0e $07
	add hl, bc                                       ; $7a61: $09
	inc bc                                           ; $7a62: $03
	ccf                                              ; $7a63: $3f

Call_06b_7a64:
	add b                                            ; $7a64: $80
	sbc h                                            ; $7a65: $9c
	ld [hl], a                                       ; $7a66: $77
	db $fd                                           ; $7a67: $fd
	sbc a                                            ; $7a68: $9f
	ld a, e                                          ; $7a69: $7b
	add b                                            ; $7a6a: $80
	sub a                                            ; $7a6b: $97
	cp a                                             ; $7a6c: $bf
	jp $f977                                         ; $7a6d: $c3 $77 $f9


	ld a, l                                          ; $7a70: $7d
	ld a, a                                          ; $7a71: $7f
	or a                                             ; $7a72: $b7
	jp hl                                            ; $7a73: $e9


	ld b, a                                          ; $7a74: $47
	add b                                            ; $7a75: $80
	ld [hl], a                                       ; $7a76: $77
	ret nc                                           ; $7a77: $d0

	ld a, a                                          ; $7a78: $7f
	rra                                              ; $7a79: $1f
	sub b                                            ; $7a7a: $90
	ret nz                                           ; $7a7b: $c0

	add b                                            ; $7a7c: $80
	ldh [$c0], a                                     ; $7a7d: $e0 $c0
	jr nz, jr_06b_7af1                               ; $7a7f: $20 $70

	jr c, jr_06b_7abf                                ; $7a81: $38 $3c

	ld a, $17                                        ; $7a83: $3e $17
	rrca                                             ; $7a85: $0f
	add hl, de                                       ; $7a86: $19
	sub [hl]                                         ; $7a87: $96
	rrca                                             ; $7a88: $0f
	adc a                                            ; $7a89: $8f
	or $84                                           ; $7a8a: $f6 $84
	jr c, @-$6e                                      ; $7a8c: $38 $90

	ld b, c                                          ; $7a8e: $41
	ldh [$03], a                                     ; $7a8f: $e0 $03
	ld bc, $0245                                     ; $7a91: $01 $45 $02
	ld [$1104], sp                                   ; $7a94: $08 $04 $11
	ld [$1133], sp                                   ; $7a97: $08 $33 $11
	db $e3                                           ; $7a9a: $e3
	inc hl                                           ; $7a9b: $23
	jp $8ac7                                         ; $7a9c: $c3 $c7 $8a


	inc b                                            ; $7a9f: $04
	add hl, de                                       ; $7aa0: $19
	nop                                              ; $7aa1: $00
	inc bc                                           ; $7aa2: $03
	nop                                              ; $7aa3: $00
	dec b                                            ; $7aa4: $05
	inc bc                                           ; $7aa5: $03
	rlca                                             ; $7aa6: $07
	ld a, e                                          ; $7aa7: $7b
	ld a, [$0c7f]                                    ; $7aa8: $fa $7f $0c
	ld a, l                                          ; $7aab: $7d
	ldh a, [$7f]                                     ; $7aac: $f0 $7f
	cp a                                             ; $7aae: $bf
	rla                                              ; $7aaf: $17
	ret nz                                           ; $7ab0: $c0

	sub [hl]                                         ; $7ab1: $96
	db $10                                           ; $7ab2: $10
	cp b                                             ; $7ab3: $b8
	pop af                                           ; $7ab4: $f1
	ldh [hDisp0_SCY], a                                     ; $7ab5: $e0 $83
	ld b, c                                          ; $7ab7: $41
	dec b                                            ; $7ab8: $05
	ld [bc], a                                       ; $7ab9: $02
	ld c, b                                          ; $7aba: $48
	inc hl                                           ; $7abb: $23
	ret nz                                           ; $7abc: $c0

	sbc l                                            ; $7abd: $9d
	nop                                              ; $7abe: $00

jr_06b_7abf:
	ld bc, $c00f                                     ; $7abf: $01 $0f $c0
	sbc h                                            ; $7ac2: $9c
	pop hl                                           ; $7ac3: $e1
	ldh a, [$e3]                                     ; $7ac4: $f0 $e3
	inc de                                           ; $7ac6: $13
	ret nz                                           ; $7ac7: $c0

	rst SubAFromDE                                          ; $7ac8: $df
	ld bc, $800b                                     ; $7ac9: $01 $0b $80
	ld a, a                                          ; $7acc: $7f
	ret nz                                           ; $7acd: $c0

	sbc c                                            ; $7ace: $99
	pop hl                                           ; $7acf: $e1
	dec b                                            ; $7ad0: $05
	ld b, d                                          ; $7ad1: $42

jr_06b_7ad2:
	ld [$5104], sp                                   ; $7ad2: $08 $04 $51
	inc sp                                           ; $7ad5: $33
	ret nz                                           ; $7ad6: $c0

	or e                                             ; $7ad7: $b3
	ld bc, $3780                                     ; $7ad8: $01 $80 $37
	rst $38                                          ; $7adb: $ff
	ld d, a                                          ; $7adc: $57
	db $fd                                           ; $7add: $fd
	ld [hl], l                                       ; $7ade: $75
	rst SubAFromDE                                          ; $7adf: $df
	ld l, a                                          ; $7ae0: $6f
	rst SubAFromDE                                          ; $7ae1: $df
	db $eb                                           ; $7ae2: $eb
	call c, $f05f                                    ; $7ae3: $dc $5f $f0
	inc a                                            ; $7ae6: $3c
	db $e3                                           ; $7ae7: $e3
	inc sp                                           ; $7ae8: $33
	rst AddAOntoHL                                          ; $7ae9: $ef
	dec l                                            ; $7aea: $2d
	rst $38                                          ; $7aeb: $ff
	ld l, c                                          ; $7aec: $69
	push af                                          ; $7aed: $f5
	ld [hl], b                                       ; $7aee: $70
	ret nc                                           ; $7aef: $d0

	ret nc                                           ; $7af0: $d0

jr_06b_7af1:
	cp b                                             ; $7af1: $b8
	ret c                                            ; $7af2: $d8

	xor b                                            ; $7af3: $a8
	ld e, h                                          ; $7af4: $5c
	add sp, $60                                      ; $7af5: $e8 $60
	call c, $8cbe                                    ; $7af7: $dc $be $8c
	db $e4                                           ; $7afa: $e4
	sbc h                                            ; $7afb: $9c
	cp $9f                                           ; $7afc: $fe $9f
	cp $0f                                           ; $7afe: $fe $0f
	rst $38                                          ; $7b00: $ff
	rrca                                             ; $7b01: $0f
	rst $38                                          ; $7b02: $ff
	dec c                                            ; $7b03: $0d
	db $fc                                           ; $7b04: $fc
	ld c, $fc                                        ; $7b05: $0e $fc
	ld a, [bc]                                       ; $7b07: $0a
	cp $0b                                           ; $7b08: $fe $0b
	cp $89                                           ; $7b0a: $fe $89
	rst $38                                          ; $7b0c: $ff
	ld [hl], a                                       ; $7b0d: $77

jr_06b_7b0e:
	cp $81                                           ; $7b0e: $fe $81
	adc d                                            ; $7b10: $8a
	rst $38                                          ; $7b11: $ff
	ld b, a                                          ; $7b12: $47
	cp $47                                           ; $7b13: $fe $47
	cp $2f                                           ; $7b15: $fe $2f
	cp $fa                                           ; $7b17: $fe $fa
	rst $38                                          ; $7b19: $ff
	ld a, b                                          ; $7b1a: $78
	ret z                                            ; $7b1b: $c8

	ldh a, [$80]                                     ; $7b1c: $f0 $80
	nop                                              ; $7b1e: $00
	ldh [$e0], a                                     ; $7b1f: $e0 $e0
	ld hl, sp-$08                                    ; $7b21: $f8 $f8
	jr @-$76                                         ; $7b23: $18 $88

	ld [hl], b                                       ; $7b25: $70
	ldh a, [$f8]                                     ; $7b26: $f0 $f8
	jr nc, jr_06b_7ad2                               ; $7b28: $30 $a8

	ldh [$e0], a                                     ; $7b2a: $e0 $e0
	jr nc, jr_06b_7b0e                               ; $7b2c: $30 $e0

	push af                                          ; $7b2e: $f5
	rst SubAFromDE                                          ; $7b2f: $df
	db $10                                           ; $7b30: $10
	adc a                                            ; $7b31: $8f
	jr nz, jr_06b_7b55                               ; $7b32: $20 $21

	ld bc, $1f0f                                     ; $7b34: $01 $0f $1f
	ld c, $1c                                        ; $7b37: $0e $1c
	inc bc                                           ; $7b39: $03
	dec de                                           ; $7b3a: $1b
	rlca                                             ; $7b3b: $07
	ld c, $07                                        ; $7b3c: $0e $07
	add hl, bc                                       ; $7b3e: $09
	inc bc                                           ; $7b3f: $03
	inc bc                                           ; $7b40: $03
	ld bc, $80fd                                     ; $7b41: $01 $fd $80
	ld b, b                                          ; $7b44: $40
	nop                                              ; $7b45: $00
	ld h, b                                          ; $7b46: $60
	nop                                              ; $7b47: $00
	ld [hl], b                                       ; $7b48: $70
	ret nz                                           ; $7b49: $c0

	and b                                            ; $7b4a: $a0
	ld b, b                                          ; $7b4b: $40
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	ld l, [hl]                                       ; $7b4e: $6e
	ld a, e                                          ; $7b4f: $7b
	rla                                              ; $7b50: $17
	db $fd                                           ; $7b51: $fd
	rst $38                                          ; $7b52: $ff
	db $fd                                           ; $7b53: $fd
	rst $38                                          ; $7b54: $ff

jr_06b_7b55:
	dec b                                            ; $7b55: $05
	ld a, a                                          ; $7b56: $7f
	add e                                            ; $7b57: $83
	rst SubAFromBC                                          ; $7b58: $e7
	ld sp, hl                                        ; $7b59: $f9
	ld a, l                                          ; $7b5a: $7d
	ld a, a                                          ; $7b5b: $7f
	or a                                             ; $7b5c: $b7
	jp hl                                            ; $7b5d: $e9


jr_06b_7b5e:
	ld l, a                                          ; $7b5e: $6f
	pop bc                                           ; $7b5f: $c1
	dec e                                            ; $7b60: $1d
	inc bc                                           ; $7b61: $03
	ld a, $7b                                        ; $7b62: $3e $7b
	cp $80                                           ; $7b64: $fe $80
	ld a, a                                          ; $7b66: $7f
	ld [bc], a                                       ; $7b67: $02
	ld a, e                                          ; $7b68: $7b
	rlca                                             ; $7b69: $07
	ld a, a                                          ; $7b6a: $7f
	rlca                                             ; $7b6b: $07
	rst FarCall                                          ; $7b6c: $f7
	rrca                                             ; $7b6d: $0f
	xor [hl]                                         ; $7b6e: $ae
	ld a, a                                          ; $7b6f: $7f
	cp $9f                                           ; $7b70: $fe $9f
	sbc d                                            ; $7b72: $9a
	ccf                                              ; $7b73: $3f
	ld a, d                                          ; $7b74: $7a
	ccf                                              ; $7b75: $3f
	ldh a, [c]                                       ; $7b76: $f2

Call_06b_7b77:
	ld a, a                                          ; $7b77: $7f
	rst $38                                          ; $7b78: $ff
	rst $38                                          ; $7b79: $ff
	rst FarCall                                          ; $7b7a: $f7
	ld hl, sp-$39                                    ; $7b7b: $f8 $c7
	pop hl                                           ; $7b7d: $e1
	rra                                              ; $7b7e: $1f
	add a                                            ; $7b7f: $87
	ld a, l                                          ; $7b80: $7d
	rra                                              ; $7b81: $1f
	cp c                                             ; $7b82: $b9
	ld a, a                                          ; $7b83: $7f
	ei                                               ; $7b84: $fb
	sub [hl]                                         ; $7b85: $96

jr_06b_7b86:
	rst SubAFromDE                                          ; $7b86: $df
	rst $38                                          ; $7b87: $ff
	rst SubAFromDE                                          ; $7b88: $df
	cp a                                             ; $7b89: $bf
	ld l, a                                          ; $7b8a: $6f
	cp $13                                           ; $7b8b: $fe $13
	cp $f3                                           ; $7b8d: $fe $f3
	ld d, a                                          ; $7b8f: $57
	ld b, b                                          ; $7b90: $40
	sbc d                                            ; $7b91: $9a
	ld a, $e1                                        ; $7b92: $3e $e1
	inc sp                                           ; $7b94: $33
	rst AddAOntoHL                                          ; $7b95: $ef
	cpl                                              ; $7b96: $2f
	ld c, e                                          ; $7b97: $4b
	ld b, b                                          ; $7b98: $40
	ld [hl], a                                       ; $7b99: $77
	ld h, b                                          ; $7b9a: $60

jr_06b_7b9b:
	sub b                                            ; $7b9b: $90
	jr nz, jr_06b_7b5e                               ; $7b9c: $20 $c0

	ret nz                                           ; $7b9e: $c0

	ld hl, sp-$08                                    ; $7b9f: $f8 $f8
	jr c, jr_06b_7b9b                                ; $7ba1: $38 $f8

	nop                                              ; $7ba3: $00
	jr jr_06b_7b86                                   ; $7ba4: $18 $e0

	ldh a, [$f8]                                     ; $7ba6: $f0 $f8
	ld l, b                                          ; $7ba8: $68
	cp b                                             ; $7ba9: $b8
	or b                                             ; $7baa: $b0
	ld b, a                                          ; $7bab: $47
	ld h, b                                          ; $7bac: $60
	sub d                                            ; $7bad: $92
	jr nz, jr_06b_7bb0                               ; $7bae: $20 $00

jr_06b_7bb0:
	rrca                                             ; $7bb0: $0f
	rra                                              ; $7bb1: $1f
	rrca                                             ; $7bb2: $0f
	rra                                              ; $7bb3: $1f
	nop                                              ; $7bb4: $00
	ld e, $01                                        ; $7bb5: $1e $01
	dec bc                                           ; $7bb7: $0b
	rlca                                             ; $7bb8: $07
	dec c                                            ; $7bb9: $0d
	rlca                                             ; $7bba: $07
	daa                                              ; $7bbb: $27
	ld h, b                                          ; $7bbc: $60
	sub a                                            ; $7bbd: $97
	rst $38                                          ; $7bbe: $ff
	inc bc                                           ; $7bbf: $03
	rrca                                             ; $7bc0: $0f
	pop af                                           ; $7bc1: $f1
	db $fd                                           ; $7bc2: $fd
	rst $38                                          ; $7bc3: $ff
	rst SubAFromBC                                          ; $7bc4: $e7
	ld a, c                                          ; $7bc5: $79
	ld b, a                                          ; $7bc6: $47
	ld h, b                                          ; $7bc7: $60
	ld d, a                                          ; $7bc8: $57
	add b                                            ; $7bc9: $80
	sub a                                            ; $7bca: $97
	ccf                                              ; $7bcb: $3f
	ldh [$3f], a                                     ; $7bcc: $e0 $3f
	ldh [$2e], a                                     ; $7bce: $e0 $2e
	rst $38                                          ; $7bd0: $ff
	ld l, e                                          ; $7bd1: $6b
	rst FarCall                                          ; $7bd2: $f7
	ld b, a                                          ; $7bd3: $47
	add b                                            ; $7bd4: $80
	adc a                                            ; $7bd5: $8f
	ld h, b                                          ; $7bd6: $60
	add b                                            ; $7bd7: $80
	add b                                            ; $7bd8: $80
	ldh a, [$f8]                                     ; $7bd9: $f0 $f8
	ld a, b                                          ; $7bdb: $78
	ldh a, [$08]                                     ; $7bdc: $f0 $08
	ld hl, sp+$00                                    ; $7bde: $f8 $00
	sbc b                                            ; $7be0: $98
	ld h, b                                          ; $7be1: $60
	ld a, b                                          ; $7be2: $78
	ld hl, sp-$40                                    ; $7be3: $f8 $c0
	ldh a, [rSCX]                                    ; $7be5: $f0 $43
	add b                                            ; $7be7: $80
	sub l                                            ; $7be8: $95
	rlca                                             ; $7be9: $07
	rra                                              ; $7bea: $1f
	rrca                                             ; $7beb: $0f
	rla                                              ; $7bec: $17
	ld [$001f], sp                                   ; $7bed: $08 $1f $00
	inc c                                            ; $7bf0: $0c
	inc bc                                           ; $7bf1: $03
	rrca                                             ; $7bf2: $0f
	dec sp                                           ; $7bf3: $3b
	add b                                            ; $7bf4: $80
	adc a                                            ; $7bf5: $8f
	ld d, a                                          ; $7bf6: $57
	dec a                                            ; $7bf7: $3d
	ld a, a                                          ; $7bf8: $7f
	db $fd                                           ; $7bf9: $fd
	cp a                                             ; $7bfa: $bf
	push bc                                          ; $7bfb: $c5
	rst $38                                          ; $7bfc: $ff
	inc bc                                           ; $7bfd: $03
	rst $38                                          ; $7bfe: $ff

jr_06b_7bff:
	ld bc, $e1df                                     ; $7bff: $01 $df $e1
	dec a                                            ; $7c02: $3d
	rst $38                                          ; $7c03: $ff
	rst AddAOntoHL                                          ; $7c04: $ef
	pop af                                           ; $7c05: $f1
	inc bc                                           ; $7c06: $03
	add b                                            ; $7c07: $80
	scf                                              ; $7c08: $37
	add b                                            ; $7c09: $80
	ld a, a                                          ; $7c0a: $7f
	ld b, $95                                        ; $7c0b: $06 $95
	ld a, b                                          ; $7c0d: $78
	add sp, $18                                      ; $7c0e: $e8 $18
	ld hl, sp+$00                                    ; $7c10: $f8 $00
	ld hl, sp+$00                                    ; $7c12: $f8 $00
	ret c                                            ; $7c14: $d8

	jr c, jr_06b_7bff                                ; $7c15: $38 $e8

	ccf                                              ; $7c17: $3f
	add b                                            ; $7c18: $80
	sub d                                            ; $7c19: $92
	inc bc                                           ; $7c1a: $03
	rla                                              ; $7c1b: $17
	rrca                                             ; $7c1c: $0f
	dec de                                           ; $7c1d: $1b
	inc c                                            ; $7c1e: $0c
	rra                                              ; $7c1f: $1f
	nop                                              ; $7c20: $00
	rrca                                             ; $7c21: $0f
	nop                                              ; $7c22: $00
	ld c, $07                                        ; $7c23: $0e $07
	ld bc, $1f03                                     ; $7c25: $01 $03 $1f
	add b                                            ; $7c28: $80
	ld a, a                                          ; $7c29: $7f
	cp $9c                                           ; $7c2a: $fe $9c
	db $dd                                           ; $7c2c: $dd
	ccf                                              ; $7c2d: $3f
	rst $38                                          ; $7c2e: $ff
	ld c, e                                          ; $7c2f: $4b
	add b                                            ; $7c30: $80
	rst SubAFromDE                                          ; $7c31: $df
	ld bc, $7dff                                     ; $7c32: $01 $ff $7d
	rst $38                                          ; $7c35: $ff
	sub b                                            ; $7c36: $90
	ret nz                                           ; $7c37: $c0

	add b                                            ; $7c38: $80
	ldh [$c0], a                                     ; $7c39: $e0 $c0
	jr nz, jr_06b_7cad                               ; $7c3b: $20 $70

	jr c, jr_06b_7c7b                                ; $7c3d: $38 $3c

	ld a, $17                                        ; $7c3f: $3e $17
	rrca                                             ; $7c41: $0f
	add hl, de                                       ; $7c42: $19
	sub [hl]                                         ; $7c43: $96
	rrca                                             ; $7c44: $0f
	adc a                                            ; $7c45: $8f
	or $84                                           ; $7c46: $f6 $84
	jr nc, @-$6e                                     ; $7c48: $30 $90

	and c                                            ; $7c4a: $a1
	ld b, b                                          ; $7c4b: $40
	inc bc                                           ; $7c4c: $03
	ld bc, $0245                                     ; $7c4d: $01 $45 $02
	ld [$1104], sp                                   ; $7c50: $08 $04 $11
	ld [$1133], sp                                   ; $7c53: $08 $33 $11
	db $e3                                           ; $7c56: $e3
	inc hl                                           ; $7c57: $23
	jp $8ac7                                         ; $7c58: $c3 $c7 $8a


	inc b                                            ; $7c5b: $04
	add hl, de                                       ; $7c5c: $19
	nop                                              ; $7c5d: $00
	inc bc                                           ; $7c5e: $03
	nop                                              ; $7c5f: $00
	dec b                                            ; $7c60: $05
	inc bc                                           ; $7c61: $03
	rlca                                             ; $7c62: $07
	ld a, e                                          ; $7c63: $7b
	ld a, [$8c7e]                                    ; $7c64: $fa $7e $8c
	sbc $01                                          ; $7c67: $de $01
	inc de                                           ; $7c69: $13
	ret nz                                           ; $7c6a: $c0

	sbc d                                            ; $7c6b: $9a
	db $10                                           ; $7c6c: $10
	or b                                             ; $7c6d: $b0
	ld de, $43e0                                     ; $7c6e: $11 $e0 $43
	inc bc                                           ; $7c71: $03
	ret nz                                           ; $7c72: $c0

	rla                                              ; $7c73: $17
	ret nz                                           ; $7c74: $c0

	sbc b                                            ; $7c75: $98
	pop af                                           ; $7c76: $f1
	ldh [$a3], a                                     ; $7c77: $e0 $a3
	ld b, c                                          ; $7c79: $41
	dec b                                            ; $7c7a: $05

jr_06b_7c7b:
	ld [bc], a                                       ; $7c7b: $02
	ld c, b                                          ; $7c7c: $48
	inc bc                                           ; $7c7d: $03
	ret nz                                           ; $7c7e: $c0

	rra                                              ; $7c7f: $1f
	ret nz                                           ; $7c80: $c0

	sbc l                                            ; $7c81: $9d
	db $e3                                           ; $7c82: $e3
	ld b, c                                          ; $7c83: $41
	ld [hl], a                                       ; $7c84: $77
	add b                                            ; $7c85: $80
	sbc [hl]                                         ; $7c86: $9e
	ld d, c                                          ; $7c87: $51
	inc sp                                           ; $7c88: $33
	ret nz                                           ; $7c89: $c0

	xor a                                            ; $7c8a: $af
	ld bc, $3780                                     ; $7c8b: $01 $80 $37
	rst $38                                          ; $7c8e: $ff
	ld d, a                                          ; $7c8f: $57
	db $fd                                           ; $7c90: $fd
	ld [hl], l                                       ; $7c91: $75
	rst SubAFromDE                                          ; $7c92: $df

jr_06b_7c93:
	ld l, a                                          ; $7c93: $6f
	rst SubAFromDE                                          ; $7c94: $df
	db $eb                                           ; $7c95: $eb
	call c, $f05f                                    ; $7c96: $dc $5f $f0
	ld a, $e1                                        ; $7c99: $3e $e1
	inc sp                                           ; $7c9b: $33
	rst AddAOntoHL                                          ; $7c9c: $ef
	dec l                                            ; $7c9d: $2d
	rst $38                                          ; $7c9e: $ff
	ld l, c                                          ; $7c9f: $69
	push af                                          ; $7ca0: $f5
	ld [hl], b                                       ; $7ca1: $70
	ret nc                                           ; $7ca2: $d0

	ret nc                                           ; $7ca3: $d0

	cp b                                             ; $7ca4: $b8
	ret c                                            ; $7ca5: $d8

	xor b                                            ; $7ca6: $a8
	ld e, h                                          ; $7ca7: $5c
	add sp, $60                                      ; $7ca8: $e8 $60
	call c, $8cbe                                    ; $7caa: $dc $be $8c

jr_06b_7cad:
	db $e4                                           ; $7cad: $e4
	sbc h                                            ; $7cae: $9c
	cp $9f                                           ; $7caf: $fe $9f
	cp $0f                                           ; $7cb1: $fe $0f
	rst $38                                          ; $7cb3: $ff
	rrca                                             ; $7cb4: $0f
	rst $38                                          ; $7cb5: $ff
	dec c                                            ; $7cb6: $0d
	db $fc                                           ; $7cb7: $fc
	ld c, $fc                                        ; $7cb8: $0e $fc
	ld a, [bc]                                       ; $7cba: $0a
	cp $0b                                           ; $7cbb: $fe $0b
	cp $89                                           ; $7cbd: $fe $89
	rst $38                                          ; $7cbf: $ff
	ld [hl], a                                       ; $7cc0: $77
	cp $81                                           ; $7cc1: $fe $81
	adc d                                            ; $7cc3: $8a
	rst $38                                          ; $7cc4: $ff
	ld b, a                                          ; $7cc5: $47
	cp $47                                           ; $7cc6: $fe $47
	cp $2f                                           ; $7cc8: $fe $2f
	cp $fa                                           ; $7cca: $fe $fa
	rst $38                                          ; $7ccc: $ff
	ld a, b                                          ; $7ccd: $78
	ret z                                            ; $7cce: $c8

	ldh a, [$80]                                     ; $7ccf: $f0 $80
	jr nz, jr_06b_7c93                               ; $7cd1: $20 $c0

	ret nz                                           ; $7cd3: $c0

	ldh a, [$f8]                                     ; $7cd4: $f0 $f8
	jr c, @-$06                                      ; $7cd6: $38 $f8

	nop                                              ; $7cd8: $00
	ldh a, [$f0]                                     ; $7cd9: $f0 $f0
	and b                                            ; $7cdb: $a0
	cp b                                             ; $7cdc: $b8
	ld h, b                                          ; $7cdd: $60
	ldh [$b0], a                                     ; $7cde: $e0 $b0
	ldh [$f5], a                                     ; $7ce0: $e0 $f5
	rst SubAFromDE                                          ; $7ce2: $df
	db $10                                           ; $7ce3: $10
	rst SubAFromDE                                          ; $7ce4: $df
	jr nz, @-$6d                                     ; $7ce5: $20 $91

	ld bc, $1e07                                     ; $7ce7: $01 $07 $1e
	rrca                                             ; $7cea: $0f
	rla                                              ; $7ceb: $17

Call_06b_7cec:
	ld [$071b], sp                                   ; $7cec: $08 $1b $07
	ld c, $07                                        ; $7cef: $0e $07
	add hl, bc                                       ; $7cf1: $09
	inc bc                                           ; $7cf2: $03
	inc bc                                           ; $7cf3: $03
	ld bc, $80fd                                     ; $7cf4: $01 $fd $80
	ld b, b                                          ; $7cf7: $40
	nop                                              ; $7cf8: $00
	ld h, b                                          ; $7cf9: $60
	nop                                              ; $7cfa: $00
	ld [hl], b                                       ; $7cfb: $70
	ret nz                                           ; $7cfc: $c0

	and b                                            ; $7cfd: $a0
	ld b, b                                          ; $7cfe: $40
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	ld l, [hl]                                       ; $7d01: $6e
	ld a, e                                          ; $7d02: $7b
	rla                                              ; $7d03: $17
	db $fd                                           ; $7d04: $fd
	rst $38                                          ; $7d05: $ff
	db $fd                                           ; $7d06: $fd
	rst $38                                          ; $7d07: $ff
	dec b                                            ; $7d08: $05
	rst $38                                          ; $7d09: $ff
	inc bc                                           ; $7d0a: $03
	rst GetHLinHL                                          ; $7d0b: $cf
	pop af                                           ; $7d0c: $f1
	ld a, l                                          ; $7d0d: $7d
	ld a, a                                          ; $7d0e: $7f
	or a                                             ; $7d0f: $b7
	jp hl                                            ; $7d10: $e9


	ld l, a                                          ; $7d11: $6f
	pop bc                                           ; $7d12: $c1
	dec e                                            ; $7d13: $1d
	inc bc                                           ; $7d14: $03
	ld a, $7b                                        ; $7d15: $3e $7b
	cp $80                                           ; $7d17: $fe $80
	ld a, a                                          ; $7d19: $7f
	ld [bc], a                                       ; $7d1a: $02
	ld a, e                                          ; $7d1b: $7b
	rlca                                             ; $7d1c: $07
	ld a, a                                          ; $7d1d: $7f
	rlca                                             ; $7d1e: $07
	rst FarCall                                          ; $7d1f: $f7
	rrca                                             ; $7d20: $0f
	xor [hl]                                         ; $7d21: $ae
	ld a, a                                          ; $7d22: $7f
	cp $9f                                           ; $7d23: $fe $9f
	sbc d                                            ; $7d25: $9a
	ccf                                              ; $7d26: $3f
	ld a, d                                          ; $7d27: $7a
	ccf                                              ; $7d28: $3f
	ldh a, [c]                                       ; $7d29: $f2
	ld a, a                                          ; $7d2a: $7f
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst FarCall                                          ; $7d2d: $f7
	ld hl, sp-$39                                    ; $7d2e: $f8 $c7
	pop hl                                           ; $7d30: $e1
	rra                                              ; $7d31: $1f
	add a                                            ; $7d32: $87
	ld a, l                                          ; $7d33: $7d
	rra                                              ; $7d34: $1f

jr_06b_7d35:
	cp c                                             ; $7d35: $b9
	ld a, a                                          ; $7d36: $7f
	ei                                               ; $7d37: $fb
	sub [hl]                                         ; $7d38: $96
	rst SubAFromDE                                          ; $7d39: $df
	rst $38                                          ; $7d3a: $ff
	rst SubAFromDE                                          ; $7d3b: $df
	cp a                                             ; $7d3c: $bf
	ld l, a                                          ; $7d3d: $6f
	cp $13                                           ; $7d3e: $fe $13
	cp $f3                                           ; $7d40: $fe $f3
	ld b, a                                          ; $7d42: $47
	ld b, b                                          ; $7d43: $40
	sbc [hl]                                         ; $7d44: $9e
	cpl                                              ; $7d45: $2f
	ld c, e                                          ; $7d46: $4b
	ld b, b                                          ; $7d47: $40
	ld [hl], a                                       ; $7d48: $77
	ld h, b                                          ; $7d49: $60
	sub c                                            ; $7d4a: $91
	ld h, b                                          ; $7d4b: $60
	add b                                            ; $7d4c: $80
	ret nz                                           ; $7d4d: $c0

	ldh [$b0], a                                     ; $7d4e: $e0 $b0
	ld a, b                                          ; $7d50: $78
	add sp, $18                                      ; $7d51: $e8 $18
	jr jr_06b_7d35                                   ; $7d53: $18 $e0

	ldh a, [$f8]                                     ; $7d55: $f0 $f8
	ld l, b                                          ; $7d57: $68
	cp b                                             ; $7d58: $b8
	ccf                                              ; $7d59: $3f
	ld h, b                                          ; $7d5a: $60
	sub e                                            ; $7d5b: $93
	nop                                              ; $7d5c: $00
	inc bc                                           ; $7d5d: $03
	rla                                              ; $7d5e: $17
	rrca                                             ; $7d5f: $0f
	dec de                                           ; $7d60: $1b
	inc c                                            ; $7d61: $0c
	ld e, $01                                        ; $7d62: $1e $01
	dec bc                                           ; $7d64: $0b
	rlca                                             ; $7d65: $07
	dec c                                            ; $7d66: $0d
	rlca                                             ; $7d67: $07
	rra                                              ; $7d68: $1f
	ld h, b                                          ; $7d69: $60
	sbc c                                            ; $7d6a: $99
	rra                                              ; $7d6b: $1f
	pop hl                                           ; $7d6c: $e1
	db $fd                                           ; $7d6d: $fd
	rst $38                                          ; $7d6e: $ff
	rst SubAFromBC                                          ; $7d6f: $e7
	ld a, c                                          ; $7d70: $79
	ld b, a                                          ; $7d71: $47
	ld h, b                                          ; $7d72: $60
	ld d, a                                          ; $7d73: $57
	add b                                            ; $7d74: $80
	sub a                                            ; $7d75: $97
	ccf                                              ; $7d76: $3f
	ldh [$3f], a                                     ; $7d77: $e0 $3f
	ldh [$2d], a                                     ; $7d79: $e0 $2d
	rst $38                                          ; $7d7b: $ff
	ld l, e                                          ; $7d7c: $6b
	rst FarCall                                          ; $7d7d: $f7
	ccf                                              ; $7d7e: $3f

jr_06b_7d7f:
	add b                                            ; $7d7f: $80
	sbc h                                            ; $7d80: $9c
	add b                                            ; $7d81: $80
	ldh [$f0], a                                     ; $7d82: $e0 $f0
	ld a, e                                          ; $7d84: $7b
	add b                                            ; $7d85: $80
	ld a, [hl]                                       ; $7d86: $7e
	sbc $7f                                          ; $7d87: $de $7f
	ld a, [hl]                                       ; $7d89: $7e
	rst SubAFromDE                                          ; $7d8a: $df
	ld hl, sp-$63                                    ; $7d8b: $f8 $9d
	jr nc, jr_06b_7d7f                               ; $7d8d: $30 $f0

	ccf                                              ; $7d8f: $3f
	add b                                            ; $7d90: $80
	sub [hl]                                         ; $7d91: $96
	inc de                                           ; $7d92: $13
	rrca                                             ; $7d93: $0f
	rra                                              ; $7d94: $1f
	inc c                                            ; $7d95: $0c
	rra                                              ; $7d96: $1f
	nop                                              ; $7d97: $00
	inc c                                            ; $7d98: $0c
	inc bc                                           ; $7d99: $03
	rrca                                             ; $7d9a: $0f
	scf                                              ; $7d9b: $37
	add b                                            ; $7d9c: $80
	ld a, [hl]                                       ; $7d9d: $7e
	jp hl                                            ; $7d9e: $e9


	sub d                                            ; $7d9f: $92
	db $fd                                           ; $7da0: $fd
	cp a                                             ; $7da1: $bf
	push bc                                          ; $7da2: $c5
	rst $38                                          ; $7da3: $ff
	inc bc                                           ; $7da4: $03
	rst $38                                          ; $7da5: $ff
	ld bc, $e1df                                     ; $7da6: $01 $df $e1
	dec a                                            ; $7da9: $3d
	rst $38                                          ; $7daa: $ff

jr_06b_7dab:
	rst AddAOntoHL                                          ; $7dab: $ef
	pop af                                           ; $7dac: $f1

jr_06b_7dad:
	rrca                                             ; $7dad: $0f
	add b                                            ; $7dae: $80
	sbc [hl]                                         ; $7daf: $9e
	ld l, $3b                                        ; $7db0: $2e $3b
	add b                                            ; $7db2: $80
	ld a, a                                          ; $7db3: $7f
	rrca                                             ; $7db4: $0f
	sub d                                            ; $7db5: $92
	and b                                            ; $7db6: $a0
	ret nz                                           ; $7db7: $c0

	ld h, b                                          ; $7db8: $60
	ldh a, [$d8]                                     ; $7db9: $f0 $d8
	jr c, jr_06b_7dad                                ; $7dbb: $38 $f0

	ld [$00f8], sp                                   ; $7dbd: $08 $f8 $00
	ret c                                            ; $7dc0: $d8

	jr c, jr_06b_7dab                                ; $7dc1: $38 $e8

	ccf                                              ; $7dc3: $3f
	add b                                            ; $7dc4: $80
	sub d                                            ; $7dc5: $92
	ld bc, $071b                                     ; $7dc6: $01 $1b $07
	dec e                                            ; $7dc9: $1d
	ld c, $17                                        ; $7dca: $0e $17
	ld [$000f], sp                                   ; $7dcc: $08 $0f $00
	ld c, $07                                        ; $7dcf: $0e $07
	ld bc, $1f03                                     ; $7dd1: $01 $03 $1f
	add b                                            ; $7dd4: $80
	ld a, a                                          ; $7dd5: $7f
	cp $9c                                           ; $7dd6: $fe $9c
	db $dd                                           ; $7dd8: $dd
	ccf                                              ; $7dd9: $3f
	rst $38                                          ; $7dda: $ff
	ld c, e                                          ; $7ddb: $4b
	add b                                            ; $7ddc: $80
	ld [hl], a                                       ; $7ddd: $77
	ld d, c                                          ; $7dde: $51
	adc [hl]                                         ; $7ddf: $8e
	add b                                            ; $7de0: $80
	nop                                              ; $7de1: $00
	ret nz                                           ; $7de2: $c0

	add b                                            ; $7de3: $80
	ldh [$c0], a                                     ; $7de4: $e0 $c0

Jump_06b_7de6:
	jr nz, @+$72                                     ; $7de6: $20 $70

	jr c, jr_06b_7e26                                ; $7de8: $38 $3c

	ld a, $17                                        ; $7dea: $3e $17
	rrca                                             ; $7dec: $0f
	add hl, de                                       ; $7ded: $19
	sub [hl]                                         ; $7dee: $96
	rrca                                             ; $7def: $0f
	adc a                                            ; $7df0: $8f
	or $84                                           ; $7df1: $f6 $84
	or b                                             ; $7df3: $b0
	and b                                            ; $7df4: $a0
	ld bc, $4300                                     ; $7df5: $01 $00 $43
	ld bc, $0205                                     ; $7df8: $01 $05 $02
	ld [$1104], sp                                   ; $7dfb: $08 $04 $11
	ld [$1133], sp                                   ; $7dfe: $08 $33 $11
	db $e3                                           ; $7e01: $e3
	inc hl                                           ; $7e02: $23
	jp $8ac7                                         ; $7e03: $c3 $c7 $8a


	inc b                                            ; $7e06: $04
	add hl, de                                       ; $7e07: $19
	nop                                              ; $7e08: $00
	inc bc                                           ; $7e09: $03
	nop                                              ; $7e0a: $00
	dec b                                            ; $7e0b: $05
	inc bc                                           ; $7e0c: $03
	rlca                                             ; $7e0d: $07
	ld a, e                                          ; $7e0e: $7b
	ld a, [$8c7e]                                    ; $7e0f: $fa $7e $8c
	rlca                                             ; $7e12: $07
	ret nz                                           ; $7e13: $c0

	sbc b                                            ; $7e14: $98
	db $10                                           ; $7e15: $10
	and b                                            ; $7e16: $a0
	ld b, c                                          ; $7e17: $41
	ldh [$03], a                                     ; $7e18: $e0 $03
	ld bc, $0345                                     ; $7e1a: $01 $45 $03
	ret nz                                           ; $7e1d: $c0

	rra                                              ; $7e1e: $1f
	ret nz                                           ; $7e1f: $c0

	sbc b                                            ; $7e20: $98
	pop hl                                           ; $7e21: $e1
	ldh [$a3], a                                     ; $7e22: $e0 $a3
	ld b, c                                          ; $7e24: $41
	dec b                                            ; $7e25: $05

jr_06b_7e26:
	ld [bc], a                                       ; $7e26: $02
	ld c, b                                          ; $7e27: $48
	inc hl                                           ; $7e28: $23
	ret nz                                           ; $7e29: $c0

	ld a, a                                          ; $7e2a: $7f
	cp $0f                                           ; $7e2b: $fe $0f
	ret nz                                           ; $7e2d: $c0

	sbc e                                            ; $7e2e: $9b
	pop af                                           ; $7e2f: $f1
	ldh [rSCX], a                                    ; $7e30: $e0 $43
	pop hl                                           ; $7e32: $e1
	ld [hl], a                                       ; $7e33: $77
	add b                                            ; $7e34: $80
	sbc [hl]                                         ; $7e35: $9e
	ld d, c                                          ; $7e36: $51
	inc sp                                           ; $7e37: $33
	ret nz                                           ; $7e38: $c0

	cp e                                             ; $7e39: $bb
	ld bc, $3780                                     ; $7e3a: $01 $80 $37
	rst $38                                          ; $7e3d: $ff
	ld d, a                                          ; $7e3e: $57
	db $fd                                           ; $7e3f: $fd
	ld [hl], l                                       ; $7e40: $75
	rst SubAFromDE                                          ; $7e41: $df
	ld l, a                                          ; $7e42: $6f
	rst SubAFromDE                                          ; $7e43: $df
	db $eb                                           ; $7e44: $eb
	call c, $f05f                                    ; $7e45: $dc $5f $f0
	ccf                                              ; $7e48: $3f
	ldh [$33], a                                     ; $7e49: $e0 $33
	rst AddAOntoHL                                          ; $7e4b: $ef
	dec l                                            ; $7e4c: $2d
	rst $38                                          ; $7e4d: $ff
	ld l, c                                          ; $7e4e: $69
	push af                                          ; $7e4f: $f5
	ld [hl], b                                       ; $7e50: $70
	ret nc                                           ; $7e51: $d0

	ret nc                                           ; $7e52: $d0

	cp b                                             ; $7e53: $b8
	ret c                                            ; $7e54: $d8

	xor b                                            ; $7e55: $a8
	ld e, h                                          ; $7e56: $5c
	add sp, $60                                      ; $7e57: $e8 $60
	call c, $8cbe                                    ; $7e59: $dc $be $8c
	db $e4                                           ; $7e5c: $e4
	sbc h                                            ; $7e5d: $9c
	cp $9f                                           ; $7e5e: $fe $9f
	cp $0f                                           ; $7e60: $fe $0f
	rst $38                                          ; $7e62: $ff
	rrca                                             ; $7e63: $0f
	rst $38                                          ; $7e64: $ff
	dec c                                            ; $7e65: $0d
	db $fc                                           ; $7e66: $fc
	ld c, $fc                                        ; $7e67: $0e $fc
	ld a, [bc]                                       ; $7e69: $0a
	cp $0b                                           ; $7e6a: $fe $0b
	cp $89                                           ; $7e6c: $fe $89
	rst $38                                          ; $7e6e: $ff
	ld [hl], a                                       ; $7e6f: $77
	cp $81                                           ; $7e70: $fe $81
	adc d                                            ; $7e72: $8a
	rst $38                                          ; $7e73: $ff
	ld b, a                                          ; $7e74: $47
	cp $47                                           ; $7e75: $fe $47
	cp $2f                                           ; $7e77: $fe $2f

jr_06b_7e79:
	cp $fa                                           ; $7e79: $fe $fa
	rst $38                                          ; $7e7b: $ff
	ld a, b                                          ; $7e7c: $78
	ret z                                            ; $7e7d: $c8

	ldh a, [$80]                                     ; $7e7e: $f0 $80
	ldh [rP1], a                                     ; $7e80: $e0 $00
	add b                                            ; $7e82: $80
	ret nz                                           ; $7e83: $c0

	ld h, b                                          ; $7e84: $60
	ldh a, [$d8]                                     ; $7e85: $f0 $d8
	jr c, jr_06b_7e79                                ; $7e87: $38 $f0

	ld hl, sp-$50                                    ; $7e89: $f8 $b0
	cp b                                             ; $7e8b: $b8
	ld h, b                                          ; $7e8c: $60
	ldh [$b0], a                                     ; $7e8d: $e0 $b0
	ldh [$f5], a                                     ; $7e8f: $e0 $f5
	rst SubAFromDE                                          ; $7e91: $df
	db $10                                           ; $7e92: $10
	rst SubAFromDE                                          ; $7e93: $df
	jr nz, @+$01                                     ; $7e94: $20 $ff

	sub e                                            ; $7e96: $93
	ld bc, $0303                                     ; $7e97: $01 $03 $03
	ld b, $1d                                        ; $7e9a: $06 $1d
	rrca                                             ; $7e9c: $0f
	rrca                                             ; $7e9d: $0f
	rlca                                             ; $7e9e: $07
	add hl, bc                                       ; $7e9f: $09
	inc bc                                           ; $7ea0: $03
	inc bc                                           ; $7ea1: $03
	ld bc, $80fd                                     ; $7ea2: $01 $fd $80
	ld b, b                                          ; $7ea5: $40
	nop                                              ; $7ea6: $00
	ld h, b                                          ; $7ea7: $60
	nop                                              ; $7ea8: $00
	ld [hl], b                                       ; $7ea9: $70
	ret nz                                           ; $7eaa: $c0

	and b                                            ; $7eab: $a0
	ld b, b                                          ; $7eac: $40
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	ld l, [hl]                                       ; $7eaf: $6e
	ld a, e                                          ; $7eb0: $7b
	rla                                              ; $7eb1: $17
	ld a, l                                          ; $7eb2: $7d
	ld a, a                                          ; $7eb3: $7f
	db $fd                                           ; $7eb4: $fd
	rst $38                                          ; $7eb5: $ff
	add l                                            ; $7eb6: $85
	rst $38                                          ; $7eb7: $ff
	inc bc                                           ; $7eb8: $03
	rst SubAFromDE                                          ; $7eb9: $df
	pop hl                                           ; $7eba: $e1
	ld a, l                                          ; $7ebb: $7d
	ld a, a                                          ; $7ebc: $7f
	or a                                             ; $7ebd: $b7
	jp hl                                            ; $7ebe: $e9


	ld l, a                                          ; $7ebf: $6f
	pop bc                                           ; $7ec0: $c1
	dec e                                            ; $7ec1: $1d
	inc bc                                           ; $7ec2: $03
	ld a, $7b                                        ; $7ec3: $3e $7b
	cp $80                                           ; $7ec5: $fe $80
	ld a, a                                          ; $7ec7: $7f
	ld [bc], a                                       ; $7ec8: $02
	ld a, e                                          ; $7ec9: $7b
	rlca                                             ; $7eca: $07
	ld a, a                                          ; $7ecb: $7f
	rlca                                             ; $7ecc: $07
	rst FarCall                                          ; $7ecd: $f7
	rrca                                             ; $7ece: $0f
	xor [hl]                                         ; $7ecf: $ae
	ld a, a                                          ; $7ed0: $7f
	cp $9f                                           ; $7ed1: $fe $9f
	sbc d                                            ; $7ed3: $9a
	ccf                                              ; $7ed4: $3f
	ld a, d                                          ; $7ed5: $7a
	ccf                                              ; $7ed6: $3f
	ldh a, [c]                                       ; $7ed7: $f2
	ld a, a                                          ; $7ed8: $7f
	rst $38                                          ; $7ed9: $ff
	rst $38                                          ; $7eda: $ff
	rst FarCall                                          ; $7edb: $f7
	ld hl, sp-$39                                    ; $7edc: $f8 $c7
	pop hl                                           ; $7ede: $e1
	rra                                              ; $7edf: $1f
	add a                                            ; $7ee0: $87
	ld a, l                                          ; $7ee1: $7d
	rra                                              ; $7ee2: $1f
	cp c                                             ; $7ee3: $b9
	ld a, a                                          ; $7ee4: $7f
	ei                                               ; $7ee5: $fb
	sub [hl]                                         ; $7ee6: $96
	rst SubAFromDE                                          ; $7ee7: $df
	rst $38                                          ; $7ee8: $ff
	rst SubAFromDE                                          ; $7ee9: $df
	cp a                                             ; $7eea: $bf
	ld l, a                                          ; $7eeb: $6f
	cp $13                                           ; $7eec: $fe $13
	cp $f3                                           ; $7eee: $fe $f3
	ld c, a                                          ; $7ef0: $4f
	ld b, b                                          ; $7ef1: $40
	sbc h                                            ; $7ef2: $9c
	add hl, sp                                       ; $7ef3: $39
	rst SubAFromBC                                          ; $7ef4: $e7

Call_06b_7ef5:
	cpl                                              ; $7ef5: $2f
	ld c, e                                          ; $7ef6: $4b
	ld b, b                                          ; $7ef7: $40
	ld l, a                                          ; $7ef8: $6f
	ld h, b                                          ; $7ef9: $60
	sub e                                            ; $7efa: $93
	ret nz                                           ; $7efb: $c0

	add b                                            ; $7efc: $80
	ld h, b                                          ; $7efd: $60
	ldh [hDisp1_SCY], a                                     ; $7efe: $e0 $90
	ld a, b                                          ; $7f00: $78
	add sp, $18                                      ; $7f01: $e8 $18
	ldh [$f0], a                                     ; $7f03: $e0 $f0
	ld a, b                                          ; $7f05: $78
	cp b                                             ; $7f06: $b8
	cpl                                              ; $7f07: $2f
	ld h, b                                          ; $7f08: $60
	sub a                                            ; $7f09: $97
	ld [bc], a                                       ; $7f0a: $02
	rlca                                             ; $7f0b: $07
	rra                                              ; $7f0c: $1f
	inc c                                            ; $7f0d: $0c
	dec c                                            ; $7f0e: $0d
	inc bc                                           ; $7f0f: $03
	rrca                                             ; $7f10: $0f
	rlca                                             ; $7f11: $07
	inc sp                                           ; $7f12: $33
	ld h, b                                          ; $7f13: $60
	sub h                                            ; $7f14: $94
	ld a, l                                          ; $7f15: $7d
	cp a                                             ; $7f16: $bf
	push bc                                          ; $7f17: $c5
	rst $38                                          ; $7f18: $ff
	inc bc                                           ; $7f19: $03
	rst $38                                          ; $7f1a: $ff
	ld bc, $fffd                                     ; $7f1b: $01 $fd $ff
	and a                                            ; $7f1e: $a7
	ld a, c                                          ; $7f1f: $79
	ld b, a                                          ; $7f20: $47
	ld h, b                                          ; $7f21: $60
	ld [hl], a                                       ; $7f22: $77
	add b                                            ; $7f23: $80
	sbc c                                            ; $7f24: $99
	ld [hl], a                                       ; $7f25: $77
	db $dd                                           ; $7f26: $dd
	ld l, a                                          ; $7f27: $6f
	rst SubAFromDE                                          ; $7f28: $df
	add sp, -$21                                     ; $7f29: $e8 $df
	ld [hl], a                                       ; $7f2b: $77
	add b                                            ; $7f2c: $80
	sbc d                                            ; $7f2d: $9a
	inc a                                            ; $7f2e: $3c
	db $e3                                           ; $7f2f: $e3
	cpl                                              ; $7f30: $2f
	rst $38                                          ; $7f31: $ff
	ld l, e                                          ; $7f32: $6b
	dec sp                                           ; $7f33: $3b
	add b                                            ; $7f34: $80
	sbc h                                            ; $7f35: $9c
	ld b, b                                          ; $7f36: $40
	add b                                            ; $7f37: $80
	ldh [$73], a                                     ; $7f38: $e0 $73
	add b                                            ; $7f3a: $80
	sbc c                                            ; $7f3b: $99
	db $10                                           ; $7f3c: $10
	ldh [$f8], a                                     ; $7f3d: $e0 $f8
	ld hl, sp-$60                                    ; $7f3f: $f8 $a0
	ldh a, [$3f]                                     ; $7f41: $f0 $3f
	add b                                            ; $7f43: $80
	sub a                                            ; $7f44: $97
	ld [bc], a                                       ; $7f45: $02
	ld bc, $0307                                     ; $7f46: $01 $07 $03
	dec e                                            ; $7f49: $1d
	ld c, $0e                                        ; $7f4a: $0e $0e
	ld bc, $8033                                     ; $7f4c: $01 $33 $80
	sbc d                                            ; $7f4f: $9a
	dec a                                            ; $7f50: $3d
	ccf                                              ; $7f51: $3f
	ld a, l                                          ; $7f52: $7d
	rst SubAFromDE                                          ; $7f53: $df
	push hl                                          ; $7f54: $e5
	ld [hl], a                                       ; $7f55: $77
	add b                                            ; $7f56: $80
	sbc c                                            ; $7f57: $99
	rrca                                             ; $7f58: $0f
	pop af                                           ; $7f59: $f1
	db $fd                                           ; $7f5a: $fd
	rst $38                                          ; $7f5b: $ff
	ld e, a                                          ; $7f5c: $5f
	pop hl                                           ; $7f5d: $e1
	rla                                              ; $7f5e: $17
	add b                                            ; $7f5f: $80
	ld a, a                                          ; $7f60: $7f
	cp $9b                                           ; $7f61: $fe $9b
	ld l, $ff                                        ; $7f63: $2e $ff
	ld l, e                                          ; $7f65: $6b
	rst FarCall                                          ; $7f66: $f7
	scf                                              ; $7f67: $37
	add b                                            ; $7f68: $80
	rst SubAFromDE                                          ; $7f69: $df
	ret nz                                           ; $7f6a: $c0

	sbc l                                            ; $7f6b: $9d
	and b                                            ; $7f6c: $a0
	ld [hl], b                                       ; $7f6d: $70
	ld a, d                                          ; $7f6e: $7a
	ld e, [hl]                                       ; $7f6f: $5e
	sbc e                                            ; $7f70: $9b
	ld [$38d8], sp                                   ; $7f71: $08 $d8 $38
	add sp, $3b                                      ; $7f74: $e8 $3b
	add b                                            ; $7f76: $80
	ld a, a                                          ; $7f77: $7f
	adc e                                            ; $7f78: $8b
	sub l                                            ; $7f79: $95
	dec b                                            ; $7f7a: $05
	inc bc                                           ; $7f7b: $03
	rra                                              ; $7f7c: $1f
	ld b, $0b                                        ; $7f7d: $06 $0b
	inc c                                            ; $7f7f: $0c
	ld c, $07                                        ; $7f80: $0e $07
	ld bc, $2f03                                     ; $7f82: $01 $03 $2f
	add b                                            ; $7f85: $80
	sub l                                            ; $7f86: $95
	ld a, a                                          ; $7f87: $7f
	add e                                            ; $7f88: $83
	rst $38                                          ; $7f89: $ff
	ld bc, $01ff                                     ; $7f8a: $01 $ff $01
	db $dd                                           ; $7f8d: $dd
	ccf                                              ; $7f8e: $3f
	rst $38                                          ; $7f8f: $ff
	pop af                                           ; $7f90: $f1
	ld c, a                                          ; $7f91: $4f
	add b                                            ; $7f92: $80
	ld [hl], a                                       ; $7f93: $77
	ld d, c                                          ; $7f94: $51
	sbc [hl]                                         ; $7f95: $9e
	add b                                            ; $7f96: $80
	ld a, d                                          ; $7f97: $7a
	and b                                            ; $7f98: $a0
	sub d                                            ; $7f99: $92
	ldh [$c0], a                                     ; $7f9a: $e0 $c0
	jr nz, @+$72                                     ; $7f9c: $20 $70

	jr c, jr_06b_7fdc                                ; $7f9e: $38 $3c

	ld a, $17                                        ; $7fa0: $3e $17
	rrca                                             ; $7fa2: $0f
	add hl, de                                       ; $7fa3: $19
	sub [hl]                                         ; $7fa4: $96
	rrca                                             ; $7fa5: $0f
	adc a                                            ; $7fa6: $8f
	or $88                                           ; $7fa7: $f6 $88
	ret nc                                           ; $7fa9: $d0

	and b                                            ; $7faa: $a0
	add c                                            ; $7fab: $81
	nop                                              ; $7fac: $00
	ld b, e                                          ; $7fad: $43
	ld bc, $0205                                     ; $7fae: $01 $05 $02
	ld [$1104], sp                                   ; $7fb1: $08 $04 $11
	ld [$1133], sp                                   ; $7fb4: $08 $33 $11
	db $e3                                           ; $7fb7: $e3
	inc hl                                           ; $7fb8: $23
	jp $8ac7                                         ; $7fb9: $c3 $c7 $8a


	inc b                                            ; $7fbc: $04
	add hl, de                                       ; $7fbd: $19
	nop                                              ; $7fbe: $00
	inc bc                                           ; $7fbf: $03
	ld a, e                                          ; $7fc0: $7b
	sub b                                            ; $7fc1: $90
	sbc [hl]                                         ; $7fc2: $9e
	rlca                                             ; $7fc3: $07
	ld a, e                                          ; $7fc4: $7b
	ld a, [$1e9c]                                    ; $7fc5: $fa $9c $1e
	ld bc, $7b01                                     ; $7fc8: $01 $01 $7b
	add h                                            ; $7fcb: $84
	rla                                              ; $7fcc: $17
	ret nz                                           ; $7fcd: $c0

	sbc b                                            ; $7fce: $98
	db $10                                           ; $7fcf: $10
	and b                                            ; $7fd0: $a0
	pop af                                           ; $7fd1: $f1
	ldh [$03], a                                     ; $7fd2: $e0 $03
	ld bc, $1b45                                     ; $7fd4: $01 $45 $1b
	ret nz                                           ; $7fd7: $c0

	ld a, a                                          ; $7fd8: $7f
	cp a                                             ; $7fd9: $bf
	rrca                                             ; $7fda: $0f
	ret nz                                           ; $7fdb: $c0

jr_06b_7fdc:
	sbc b                                            ; $7fdc: $98
	pop hl                                           ; $7fdd: $e1
	ldh a, [rSCX]                                    ; $7fde: $f0 $43
	pop hl                                           ; $7fe0: $e1
	dec b                                            ; $7fe1: $05
	ld [bc], a                                       ; $7fe2: $02
	ld c, b                                          ; $7fe3: $48
	dec de                                           ; $7fe4: $1b
	ret nz                                           ; $7fe5: $c0

	ld a, a                                          ; $7fe6: $7f
	ld e, [hl]                                       ; $7fe7: $5e
	rrca                                             ; $7fe8: $0f
	ret nz                                           ; $7fe9: $c0

	sbc b                                            ; $7fea: $98
	di                                               ; $7feb: $f3
	pop hl                                           ; $7fec: $e1
	push hl                                          ; $7fed: $e5
	ld b, d                                          ; $7fee: $42
	ld [$5104], sp                                   ; $7fef: $08 $04 $51
	inc sp                                           ; $7ff2: $33
	ret nz                                           ; $7ff3: $c0

	adc l                                            ; $7ff4: $8d
	inc bc                                           ; $7ff5: $03
	rst $38                                          ; $7ff6: $ff
	db $dd                                           ; $7ff7: $dd
	ld bc, $0297                                     ; $7ff8: $01 $97 $02
	inc bc                                           ; $7ffb: $03
	inc bc                                           ; $7ffc: $03
	ld [bc], a                                       ; $7ffd: $02
	inc bc                                           ; $7ffe: $03
	ld [bc], a                                       ; $7fff: $02
