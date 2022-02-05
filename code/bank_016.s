; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

	adc l                                            ; $4000: $8d

jr_016_4001:
	ld bc, $d1f1                                     ; $4001: $01 $f1 $d1
	rst $38                                          ; $4004: $ff
	ld a, a                                          ; $4005: $7f
	rst AddAOntoHL                                          ; $4006: $ef
	ld c, a                                          ; $4007: $4f
	cp $9d                                           ; $4008: $fe $9d
	rlca                                             ; $400a: $07
	ld bc, $fe67                                     ; $400b: $01 $67 $fe
	sbc [hl]                                         ; $400e: $9e
	rst $38                                          ; $400f: $ff

Call_016_4010:
	ld [hl], a                                       ; $4010: $77
	cp $7f                                           ; $4011: $fe $7f
	xor $5f                                          ; $4013: $ee $5f
	add $77                                          ; $4015: $c6 $77
	cp $9c                                           ; $4017: $fe $9c
	rst $38                                          ; $4019: $ff
	ld [hl], b                                       ; $401a: $70
	sub b                                            ; $401b: $90
	ld h, a                                          ; $401c: $67
	cp $9d                                           ; $401d: $fe $9d
	ld a, a                                          ; $401f: $7f
	add b                                            ; $4020: $80
	ld a, e                                          ; $4021: $7b
	cp $5b                                           ; $4022: $fe $5b
	ret nc                                           ; $4024: $d0

	ld l, a                                          ; $4025: $6f
	cp $f1                                           ; $4026: $fe $f1
	ld e, a                                          ; $4028: $5f
	ret nc                                           ; $4029: $d0

	ld l, a                                          ; $402a: $6f
	cp $7b                                           ; $402b: $fe $7b
	cp l                                             ; $402d: $bd
	ld a, e                                          ; $402e: $7b
	xor b                                            ; $402f: $a8
	sbc l                                            ; $4030: $9d
	rst FarCall                                          ; $4031: $f7
	pop af                                           ; $4032: $f1
	ld h, e                                          ; $4033: $63
	ret nc                                           ; $4034: $d0

	ld l, a                                          ; $4035: $6f
	ld a, l                                          ; $4036: $7d
	ld e, a                                          ; $4037: $5f
	sbc b                                            ; $4038: $98
	sbc [hl]                                         ; $4039: $9e
	rst $38                                          ; $403a: $ff
	ld [hl], e                                       ; $403b: $73
	xor b                                            ; $403c: $a8
	sbc [hl]                                         ; $403d: $9e
	sbc a                                            ; $403e: $9f
	ld h, a                                          ; $403f: $67
	ret nc                                           ; $4040: $d0

	sub e                                            ; $4041: $93
	ld d, e                                          ; $4042: $53
	cp $03                                           ; $4043: $fe $03
	cp $43                                           ; $4045: $fe $43
	cp $07                                           ; $4047: $fe $07
	cp $1f                                           ; $4049: $fe $1f
	db $fc                                           ; $404b: $fc
	rst $38                                          ; $404c: $ff
	ldh a, [rPCM34]                                  ; $404d: $f0 $77
	sub $9e                                          ; $404f: $d6 $9e
	dec b                                            ; $4051: $05
	ld a, e                                          ; $4052: $7b
	ei                                               ; $4053: $fb
	ld [hl], a                                       ; $4054: $77
	db $fc                                           ; $4055: $fc
	ld a, a                                          ; $4056: $7f
	cp $7b                                           ; $4057: $fe $7b
	ld h, e                                          ; $4059: $63
	sbc h                                            ; $405a: $9c
	rst $38                                          ; $405b: $ff
	add b                                            ; $405c: $80
	add b                                            ; $405d: $80
	ld c, a                                          ; $405e: $4f
	ld b, d                                          ; $405f: $42
	ld d, a                                          ; $4060: $57
	jr nc, jr_016_4001                               ; $4061: $30 $9e

	add b                                            ; $4063: $80
	db $dd                                           ; $4064: $dd
	rst $38                                          ; $4065: $ff
	sbc h                                            ; $4066: $9c
	ld bc, $7fc0                                     ; $4067: $01 $c0 $7f
	ld [hl], a                                       ; $406a: $77
	cp $98                                           ; $406b: $fe $98
	ldh [$7f], a                                     ; $406d: $e0 $7f
	ld hl, sp+$3f                                    ; $406f: $f8 $3f
	ccf                                              ; $4071: $3f
	rrca                                             ; $4072: $0f
	rrca                                             ; $4073: $0f
	cp $03                                           ; $4074: $fe $03
	or b                                             ; $4076: $b0
	inc bc                                           ; $4077: $03
	or b                                             ; $4078: $b0
	ld c, a                                          ; $4079: $4f
	or b                                             ; $407a: $b0
	sbc d                                            ; $407b: $9a
	ld [bc], a                                       ; $407c: $02
	cp $02                                           ; $407d: $fe $02
	cp $52                                           ; $407f: $fe $52
	ld e, e                                          ; $4081: $5b
	db $fc                                           ; $4082: $fc
	ld h, a                                          ; $4083: $67
	jp nc, $b27f                                     ; $4084: $d2 $7f $b2

	ld h, a                                          ; $4087: $67
	xor b                                            ; $4088: $a8
	ld h, a                                          ; $4089: $67
	cp $9e                                           ; $408a: $fe $9e
	ld a, $7b                                        ; $408c: $3e $7b
	cp $7f                                           ; $408e: $fe $7f
	ld a, [$d003]                                    ; $4090: $fa $03 $d0
	ld c, e                                          ; $4093: $4b
	ret nc                                           ; $4094: $d0

	ld a, a                                          ; $4095: $7f
	ld d, d                                          ; $4096: $52
	ld c, a                                          ; $4097: $4f
	cp $9c                                           ; $4098: $fe $9c
	ld h, b                                          ; $409a: $60
	ld a, a                                          ; $409b: $7f
	ret nz                                           ; $409c: $c0

	ld a, e                                          ; $409d: $7b

Call_016_409e:
	halt                                             ; $409e: $76
	ld e, a                                          ; $409f: $5f
	jp c, $0d9a                                      ; $40a0: $da $9a $0d

	db $fd                                           ; $40a3: $fd
	inc b                                            ; $40a4: $04
	db $fc                                           ; $40a5: $fc
	inc bc                                           ; $40a6: $03
	ld b, d                                          ; $40a7: $42
	ld a, [hl-]                                      ; $40a8: $3a
	ld e, a                                          ; $40a9: $5f
	cp $9d                                           ; $40aa: $fe $9d
	ld e, $df                                        ; $40ac: $1e $df
	ld h, a                                          ; $40ae: $67
	cp $9e                                           ; $40af: $fe $9e
	inc e                                            ; $40b1: $1c
	ld [hl], e                                       ; $40b2: $73
	ldh a, [$03]                                     ; $40b3: $f0 $03
	or b                                             ; $40b5: $b0
	inc bc                                           ; $40b6: $03
	or b                                             ; $40b7: $b0
	ld c, a                                          ; $40b8: $4f
	or b                                             ; $40b9: $b0
	sbc e                                            ; $40ba: $9b
	jp nz, Jump_016_62fe                             ; $40bb: $c2 $fe $62

	ld a, [hl]                                       ; $40be: $7e
	ld [hl], a                                       ; $40bf: $77
	cp $9c                                           ; $40c0: $fe $9c
	ld b, d                                          ; $40c2: $42
	ld a, [hl]                                       ; $40c3: $7e
	add d                                            ; $40c4: $82
	ld a, e                                          ; $40c5: $7b
	ld [hl-], a                                      ; $40c6: $32
	ld a, a                                          ; $40c7: $7f
	cp $90                                           ; $40c8: $fe $90
	ld b, $fe                                        ; $40ca: $06 $fe
	dec c                                            ; $40cc: $0d
	db $fd                                           ; $40cd: $fd
	inc c                                            ; $40ce: $0c
	db $fc                                           ; $40cf: $fc
	dec c                                            ; $40d0: $0d
	db $fd                                           ; $40d1: $fd
	add l                                            ; $40d2: $85
	db $fd                                           ; $40d3: $fd
	jp Jump_016_60ff                                 ; $40d4: $c3 $ff $60


	ld a, a                                          ; $40d7: $7f
	ldh [$63], a                                     ; $40d8: $e0 $63
	ret z                                            ; $40da: $c8

	ld a, a                                          ; $40db: $7f
	xor h                                            ; $40dc: $ac
	ld a, a                                          ; $40dd: $7f
	xor b                                            ; $40de: $a8
	ld [hl], a                                       ; $40df: $77
	and $6f                                          ; $40e0: $e6 $6f
	ldh a, [c]                                       ; $40e2: $f2
	sbc e                                            ; $40e3: $9b
	ldh a, [$1f]                                     ; $40e4: $f0 $1f
	ld hl, sp-$01                                    ; $40e6: $f8 $ff
	ld [hl], a                                       ; $40e8: $77
	cp $7e                                           ; $40e9: $fe $7e
	ld a, l                                          ; $40eb: $7d
	sbc h                                            ; $40ec: $9c
	rst $38                                          ; $40ed: $ff
	ccf                                              ; $40ee: $3f
	ldh [$72], a                                     ; $40ef: $e0 $72
	xor [hl]                                         ; $40f1: $ae
	ld a, a                                          ; $40f2: $7f
	cp $9c                                           ; $40f3: $fe $9c
	pop bc                                           ; $40f5: $c1
	ld a, a                                          ; $40f6: $7f
	jp $fe7b                                         ; $40f7: $c3 $7b $fe


	ld e, [hl]                                       ; $40fa: $5e
	adc [hl]                                         ; $40fb: $8e
	db $db                                           ; $40fc: $db
	rst $38                                          ; $40fd: $ff
	ld l, a                                          ; $40fe: $6f
	sub h                                            ; $40ff: $94
	ld a, d                                          ; $4100: $7a
	push af                                          ; $4101: $f5
	jp c, Jump_016_6fff                              ; $4102: $da $ff $6f

	call nc, $c79b                                   ; $4105: $d4 $9b $c7
	ld a, h                                          ; $4108: $7c
	jp $777b                                         ; $4109: $c3 $7b $77


	cp $9d                                           ; $410c: $fe $9d
	rst JumpTable                                          ; $410e: $c7
	ld a, a                                          ; $410f: $7f
	ld b, a                                          ; $4110: $47
	add b                                            ; $4111: $80
	sbc h                                            ; $4112: $9c
	rst $38                                          ; $4113: $ff
	db $fc                                           ; $4114: $fc
	rlca                                             ; $4115: $07
	ld l, e                                          ; $4116: $6b
	ld h, $9c                                        ; $4117: $26 $9c
	add e                                            ; $4119: $83
	cp $c3                                           ; $411a: $fe $c3
	ld a, e                                          ; $411c: $7b
	cp $03                                           ; $411d: $fe $03
	ld [hl], b                                       ; $411f: $70
	ld c, e                                          ; $4120: $4b
	ld [hl], b                                       ; $4121: $70
	rlca                                             ; $4122: $07
	sub b                                            ; $4123: $90
	ld c, [hl]                                       ; $4124: $4e
	jp nz, $9c7f                                     ; $4125: $c2 $7f $9c

	rlca                                             ; $4128: $07
	ld b, b                                          ; $4129: $40
	ld [hl], c                                       ; $412a: $71
	sbc e                                            ; $412b: $9b
	ld e, e                                          ; $412c: $5b
	adc d                                            ; $412d: $8a
	ld b, h                                          ; $412e: $44
	adc [hl]                                         ; $412f: $8e
	sbc [hl]                                         ; $4130: $9e
	rrca                                             ; $4131: $0f
	ld d, [hl]                                       ; $4132: $56
	ld c, $9e                                        ; $4133: $0e $9e
	db $e3                                           ; $4135: $e3
	ld a, e                                          ; $4136: $7b
	add [hl]                                         ; $4137: $86
	ld c, e                                          ; $4138: $4b
	ld b, b                                          ; $4139: $40
	ld l, a                                          ; $413a: $6f
	and h                                            ; $413b: $a4
	ld e, a                                          ; $413c: $5f
	cp $47                                           ; $413d: $fe $47
	add b                                            ; $413f: $80
	ld [hl], a                                       ; $4140: $77
	adc h                                            ; $4141: $8c
	ld d, a                                          ; $4142: $57
	cp $7b                                           ; $4143: $fe $7b
	adc a                                            ; $4145: $8f
	ld a, e                                          ; $4146: $7b
	cp $9d                                           ; $4147: $fe $9d
	ld e, a                                          ; $4149: $5f
	ld d, b                                          ; $414a: $50
	ld l, a                                          ; $414b: $6f
	ld hl, sp+$4b                                    ; $414c: $f8 $4b
	add c                                            ; $414e: $81
	ld a, e                                          ; $414f: $7b
	cp $43                                           ; $4150: $fe $43
	ld [hl], b                                       ; $4152: $70
	ld a, a                                          ; $4153: $7f
	ld a, a                                          ; $4154: $7f
	ld d, e                                          ; $4155: $53
	cp $7e                                           ; $4156: $fe $7e
	or b                                             ; $4158: $b0
	ld c, a                                          ; $4159: $4f
	cp $07                                           ; $415a: $fe $07
	ld d, b                                          ; $415c: $50
	ld b, a                                          ; $415d: $47
	ld h, b                                          ; $415e: $60
	ld d, a                                          ; $415f: $57
	call nz, Call_016_6e76                           ; $4160: $c4 $76 $6e
	ld l, e                                          ; $4163: $6b
	xor b                                            ; $4164: $a8
	jp c, $63ff                                      ; $4165: $da $ff $63

	or c                                             ; $4168: $b1
	ret c                                            ; $4169: $d8

	rst $38                                          ; $416a: $ff
	inc bc                                           ; $416b: $03
	ld b, b                                          ; $416c: $40
	ld b, l                                          ; $416d: $45
	ld a, a                                          ; $416e: $7f
	ld l, a                                          ; $416f: $6f
	ld [$ffda], a                                    ; $4170: $ea $da $ff
	ld a, d                                          ; $4173: $7a
	sub c                                            ; $4174: $91
	dec bc                                           ; $4175: $0b
	ld b, b                                          ; $4176: $40
	ld d, a                                          ; $4177: $57
	and h                                            ; $4178: $a4
	ld a, [hl]                                       ; $4179: $7e
	ld e, [hl]                                       ; $417a: $5e
	inc bc                                           ; $417b: $03
	ld h, b                                          ; $417c: $60
	halt                                             ; $417d: $76
	ld c, a                                          ; $417e: $4f
	ld c, a                                          ; $417f: $4f
	cp $4b                                           ; $4180: $fe $4b
	ld d, b                                          ; $4182: $50
	ld b, a                                          ; $4183: $47
	add b                                            ; $4184: $80
	ld b, a                                          ; $4185: $47
	and b                                            ; $4186: $a0
	halt                                             ; $4187: $76
	ld c, h                                          ; $4188: $4c
	rla                                              ; $4189: $17
	cp $47                                           ; $418a: $fe $47
	and b                                            ; $418c: $a0
	rlca                                             ; $418d: $07
	ld bc, $dffd                                     ; $418e: $01 $fd $df
	ld [bc], a                                       ; $4191: $02
	adc l                                            ; $4192: $8d
	rlca                                             ; $4193: $07
	dec b                                            ; $4194: $05
	dec c                                            ; $4195: $0d
	dec bc                                           ; $4196: $0b
	jr jr_016_41b0                                   ; $4197: $18 $17

	db $10                                           ; $4199: $10
	cpl                                              ; $419a: $2f
	ld [$0417], sp                                   ; $419b: $08 $17 $04
	dec bc                                           ; $419e: $0b
	ld [bc], a                                       ; $419f: $02
	dec b                                            ; $41a0: $05
	ld bc, $0002                                     ; $41a1: $01 $02 $00
	ld bc, $dff1                                     ; $41a4: $01 $f1 $df
	add b                                            ; $41a7: $80
	rst SubAFromDE                                          ; $41a8: $df
	ret nz                                           ; $41a9: $c0

	adc a                                            ; $41aa: $8f
	ld h, b                                          ; $41ab: $60
	ldh [$30], a                                     ; $41ac: $e0 $30
	ldh a, [rAUD2LOW]                                ; $41ae: $f0 $18

jr_016_41b0:
	ld hl, sp+$0c                                    ; $41b0: $f8 $0c
	db $fc                                           ; $41b2: $fc
	ld b, $fe                                        ; $41b3: $06 $fe
	add e                                            ; $41b5: $83
	ld a, a                                          ; $41b6: $7f
	ld b, c                                          ; $41b7: $41
	cp a                                             ; $41b8: $bf
	jr nz, jr_016_421a                               ; $41b9: $20 $5f

	ld [hl], a                                       ; $41bb: $77
	ret nc                                           ; $41bc: $d0

	ld hl, sp-$21                                    ; $41bd: $f8 $df
	ld bc, $02df                                     ; $41bf: $01 $df $02
	sbc e                                            ; $41c2: $9b
	dec b                                            ; $41c3: $05
	inc b                                            ; $41c4: $04
	dec bc                                           ; $41c5: $0b
	ld [$ba7b], sp                                   ; $41c6: $08 $7b $ba
	ld a, a                                          ; $41c9: $7f
	and $7f                                          ; $41ca: $e6 $7f
	ldh [c], a                                       ; $41cc: $e2
	ld a, a                                          ; $41cd: $7f
	sbc $7f                                          ; $41ce: $de $7f
	jp c, $d67f                                      ; $41d0: $da $7f $d6

	ld a, a                                          ; $41d3: $7f
	jp nc, $9afc                                     ; $41d4: $d2 $fc $9a

	ld b, b                                          ; $41d7: $40
	ld h, b                                          ; $41d8: $60
	and b                                            ; $41d9: $a0
	or b                                             ; $41da: $b0
	ld [hl], b                                       ; $41db: $70
	ld [hl], a                                       ; $41dc: $77
	add $7f                                          ; $41dd: $c6 $7f
	db $fc                                           ; $41df: $fc
	ld a, a                                          ; $41e0: $7f
	cp [hl]                                          ; $41e1: $be
	ld a, a                                          ; $41e2: $7f
	cp d                                             ; $41e3: $ba
	rst SubAFromDE                                          ; $41e4: $df
	ret nz                                           ; $41e5: $c0

	rst SubAFromDE                                          ; $41e6: $df
	add b                                            ; $41e7: $80
	ldh a, [$5b]                                     ; $41e8: $f0 $5b
	ret nz                                           ; $41ea: $c0

	sub a                                            ; $41eb: $97
	jr @+$21                                         ; $41ec: $18 $1f

	dec c                                            ; $41ee: $0d
	rrca                                             ; $41ef: $0f
	rlca                                             ; $41f0: $07
	rlca                                             ; $41f1: $07
	ld [bc], a                                       ; $41f2: $02
	ld [bc], a                                       ; $41f3: $02
	db $fd                                           ; $41f4: $fd
	ld b, a                                          ; $41f5: $47
	or b                                             ; $41f6: $b0
	ld b, a                                          ; $41f7: $47
	ret nz                                           ; $41f8: $c0

	ld b, a                                          ; $41f9: $47
	ld [hl], b                                       ; $41fa: $70
	inc bc                                           ; $41fb: $03
	ld b, b                                          ; $41fc: $40
	ld [hl], e                                       ; $41fd: $73
	ld a, d                                          ; $41fe: $7a
	ld a, a                                          ; $41ff: $7f
	ld [hl], d                                       ; $4200: $72
	ld a, a                                          ; $4201: $7f
	ld l, [hl]                                       ; $4202: $6e
	ld a, a                                          ; $4203: $7f
	ld l, d                                          ; $4204: $6a
	db $fc                                           ; $4205: $fc
	sub h                                            ; $4206: $94
	rst $38                                          ; $4207: $ff
	add b                                            ; $4208: $80
	ld a, a                                          ; $4209: $7f
	ldh [$1f], a                                     ; $420a: $e0 $1f
	ld hl, sp+$07                                    ; $420c: $f8 $07
	cp $01                                           ; $420e: $fe $01
	rst $38                                          ; $4210: $ff
	nop                                              ; $4211: $00
	ld e, a                                          ; $4212: $5f
	cp $99                                           ; $4213: $fe $99
	ccf                                              ; $4215: $3f
	ret nz                                           ; $4216: $c0

	rrca                                             ; $4217: $0f
	ldh a, [$03]                                     ; $4218: $f0 $03

jr_016_421a:
	db $fc                                           ; $421a: $fc
	ld e, e                                          ; $421b: $5b
	rst AddAOntoHL                                          ; $421c: $ef
	ld a, e                                          ; $421d: $7b
	cp $2f                                           ; $421e: $fe $2f
	ret c                                            ; $4220: $d8

	ccf                                              ; $4221: $3f
	sub $37                                          ; $4222: $d6 $37
	ret c                                            ; $4224: $d8

	scf                                              ; $4225: $37
	xor [hl]                                         ; $4226: $ae
	ld l, a                                          ; $4227: $6f
	ret c                                            ; $4228: $d8

	inc bc                                           ; $4229: $03
	add [hl]                                         ; $422a: $86
	inc hl                                           ; $422b: $23
	add [hl]                                         ; $422c: $86
	ld d, a                                          ; $422d: $57
	ret c                                            ; $422e: $d8

	scf                                              ; $422f: $37
	sbc $99                                          ; $4230: $de $99
	ld a, a                                          ; $4232: $7f
	add b                                            ; $4233: $80
	rra                                              ; $4234: $1f
	ldh [rTAC], a                                    ; $4235: $e0 $07
	ld hl, sp+$4f                                    ; $4237: $f8 $4f
	or d                                             ; $4239: $b2
	cpl                                              ; $423a: $2f
	ld h, h                                          ; $423b: $64
	ccf                                              ; $423c: $3f
	adc d                                            ; $423d: $8a
	ld e, a                                          ; $423e: $5f
	ret c                                            ; $423f: $d8

	rrca                                             ; $4240: $0f
	ld h, d                                          ; $4241: $62
	ld a, a                                          ; $4242: $7f
	ret c                                            ; $4243: $d8

	inc bc                                           ; $4244: $03
	ld h, d                                          ; $4245: $62
	dec bc                                           ; $4246: $0b
	ld a, [hl-]                                      ; $4247: $3a
	sbc l                                            ; $4248: $9d
	ld bc, $07fe                                     ; $4249: $01 $fe $07
	ld h, d                                          ; $424c: $62
	ld l, a                                          ; $424d: $6f
	jr c, jr_016_4253                                ; $424e: $38 $03

	ret c                                            ; $4250: $d8

	dec hl                                           ; $4251: $2b
	ret c                                            ; $4252: $d8

jr_016_4253:
	ld h, $e8                                        ; $4253: $26 $e8
	ld d, a                                          ; $4255: $57
	ret c                                            ; $4256: $d8

	ld [bc], a                                       ; $4257: $02
	ret nz                                           ; $4258: $c0

	dec de                                           ; $4259: $1b
	ret c                                            ; $425a: $d8

	ld [bc], a                                       ; $425b: $02
	nop                                              ; $425c: $00
	ld [bc], a                                       ; $425d: $02
	nop                                              ; $425e: $00
	ld [bc], a                                       ; $425f: $02
	add $12                                          ; $4260: $c6 $12
	sbc [hl]                                         ; $4262: $9e
	ld [bc], a                                       ; $4263: $02
	add sp, $0a                                      ; $4264: $e8 $0a
	ret nz                                           ; $4266: $c0

	ldh [rSB], a                                     ; $4267: $e0 $01
	ld b, h                                          ; $4269: $44
	or $03                                           ; $426a: $f6 $03
	ldh [$03], a                                     ; $426c: $e0 $03
	ldh [$03], a                                     ; $426e: $e0 $03
	ldh [$03], a                                     ; $4270: $e0 $03
	ldh [$03], a                                     ; $4272: $e0 $03
	ldh [$03], a                                     ; $4274: $e0 $03
	ldh [$1f], a                                     ; $4276: $e0 $1f
	ldh [rTAC], a                                    ; $4278: $e0 $07
	ret nc                                           ; $427a: $d0

	ldh [rP1], a                                     ; $427b: $e0 $00
	ldh [$32], a                                     ; $427d: $e0 $32
	ld [bc], a                                       ; $427f: $02
	nop                                              ; $4280: $00
	ldh [rP1], a                                     ; $4281: $e0 $00
	ldh [rAUD4GO], a                                 ; $4283: $e0 $23
	sbc l                                            ; $4285: $9d
	cp $01                                           ; $4286: $fe $01
	ld [hl], a                                       ; $4288: $77
	cp $02                                           ; $4289: $fe $02
	nop                                              ; $428b: $00
	ldh [rP1], a                                     ; $428c: $e0 $00
	ldh [$29], a                                     ; $428e: $e0 $29
	ld c, [hl]                                       ; $4290: $4e
	ld [de], a                                       ; $4291: $12
	ld a, l                                          ; $4292: $7d
	or $0f                                           ; $4293: $f6 $0f
	inc b                                            ; $4295: $04
	pop af                                           ; $4296: $f1
	rst SubAFromDE                                          ; $4297: $df
	rst $38                                          ; $4298: $ff
	sbc h                                            ; $4299: $9c
	ccf                                              ; $429a: $3f
	ld a, a                                          ; $429b: $7f
	cp a                                             ; $429c: $bf
	sbc $ff                                          ; $429d: $de $ff
	sbc d                                            ; $429f: $9a
	ldh [rIE], a                                     ; $42a0: $e0 $ff
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	ldh a, [$7b]                                     ; $42a4: $f0 $7b
	di                                               ; $42a6: $f3
	rst $38                                          ; $42a7: $ff
	sbc [hl]                                         ; $42a8: $9e
	ld bc, $fe7b                                     ; $42a9: $01 $7b $fe
	sbc c                                            ; $42ac: $99
	inc bc                                           ; $42ad: $03
	nop                                              ; $42ae: $00
	ld b, $01                                        ; $42af: $06 $01
	db $fd                                           ; $42b1: $fd
	inc bc                                           ; $42b2: $03
	db $dd                                           ; $42b3: $dd
	rst $38                                          ; $42b4: $ff
	sub h                                            ; $42b5: $94
	ld sp, hl                                        ; $42b6: $f9
	and $3e                                          ; $42b7: $e6 $3e
	ld a, l                                          ; $42b9: $7d
	cp c                                             ; $42ba: $b9
	rst $38                                          ; $42bb: $ff
	di                                               ; $42bc: $f3
	db $fc                                           ; $42bd: $fc
	cpl                                              ; $42be: $2f
	ldh a, [$30]                                     ; $42bf: $f0 $30
	ld [hl], a                                       ; $42c1: $77
	ldh [$80], a                                     ; $42c2: $e0 $80
	rst $38                                          ; $42c4: $ff
	ld [de], a                                       ; $42c5: $12
	dec c                                            ; $42c6: $0d
	ld hl, $88c6                                     ; $42c7: $21 $c6 $88
	ld [hl], c                                       ; $42ca: $71
	ldh a, [c]                                       ; $42cb: $f2
	ld l, h                                          ; $42cc: $6c
	db $fd                                           ; $42cd: $fd
	ld b, $00                                        ; $42ce: $06 $00
	ld bc, $fb06                                     ; $42d0: $01 $06 $fb
	rst $38                                          ; $42d3: $ff
	rst $38                                          ; $42d4: $ff
	ld l, e                                          ; $42d5: $6b
	add b                                            ; $42d6: $80
	ld d, c                                          ; $42d7: $51
	add b                                            ; $42d8: $80
	xor d                                            ; $42d9: $aa
	ld b, c                                          ; $42da: $41
	push af                                          ; $42db: $f5
	nop                                              ; $42dc: $00
	cp d                                             ; $42dd: $ba
	ld bc, $00e0                                     ; $42de: $01 $e0 $00
	ret                                              ; $42e1: $c9


	ldh a, [c]                                       ; $42e2: $f2
	add b                                            ; $42e3: $80
	ld d, b                                          ; $42e4: $50
	ld hl, sp-$01                                    ; $42e5: $f8 $ff
	inc bc                                           ; $42e7: $03
	ld l, a                                          ; $42e8: $6f
	jr @-$78                                         ; $42e9: $18 $86

	ld a, a                                          ; $42eb: $7f
	ld [hl], c                                       ; $42ec: $71
	adc a                                            ; $42ed: $8f
	reti                                             ; $42ee: $d9


	rlca                                             ; $42ef: $07
	nop                                              ; $42f0: $00
	nop                                              ; $42f1: $00
	rra                                              ; $42f2: $1f
	rst AddAOntoHL                                          ; $42f3: $ef
	rst SubAFromBC                                          ; $42f4: $e7
	rra                                              ; $42f5: $1f
	dec hl                                           ; $42f6: $2b
	push de                                          ; $42f7: $d5
	ld d, l                                          ; $42f8: $55
	xor e                                            ; $42f9: $ab
	db $eb                                           ; $42fa: $eb
	dec e                                            ; $42fb: $1d
	rrca                                             ; $42fc: $0f
	ret                                              ; $42fd: $c9


	add a                                            ; $42fe: $87
	db $e3                                           ; $42ff: $e3
	inc c                                            ; $4300: $0c
	nop                                              ; $4301: $00
	rst $38                                          ; $4302: $ff
	sbc [hl]                                         ; $4303: $9e
	db $fc                                           ; $4304: $fc
	rst GetHLinHL                                          ; $4305: $cf
	rst $38                                          ; $4306: $ff
	rst FarCall                                          ; $4307: $f7
	sbc l                                            ; $4308: $9d
	ld a, a                                          ; $4309: $7f

jr_016_430a:
	add b                                            ; $430a: $80
	ld c, a                                          ; $430b: $4f
	ldh a, [$7f]                                     ; $430c: $f0 $7f
	push af                                          ; $430e: $f5
	ld e, a                                          ; $430f: $5f
	ldh a, [$9b]                                     ; $4310: $f0 $9b
	ld h, b                                          ; $4312: $60
	add b                                            ; $4313: $80
	ld c, $f0                                        ; $4314: $0e $f0
	ld l, a                                          ; $4316: $6f
	jp Jump_016_7ffb                                 ; $4317: $c3 $fb $7f


	ld h, d                                          ; $431a: $62
	sbc h                                            ; $431b: $9c
	ld [hl], b                                       ; $431c: $70
	rrca                                             ; $431d: $0f
	ccf                                              ; $431e: $3f
	ld c, e                                          ; $431f: $4b
	ret nz                                           ; $4320: $c0

	sbc l                                            ; $4321: $9d
	cp $01                                           ; $4322: $fe $01
	ld l, a                                          ; $4324: $6f
	ldh a, [$9e]                                     ; $4325: $f0 $9e
	add b                                            ; $4327: $80
	ld a, e                                          ; $4328: $7b
	cp $9e                                           ; $4329: $fe $9e
	ret nz                                           ; $432b: $c0

	ld a, e                                          ; $432c: $7b
	adc $9d                                          ; $432d: $ce $9d
	cp a                                             ; $432f: $bf
	ret nz                                           ; $4330: $c0

	db $dd                                           ; $4331: $dd
	rst $38                                          ; $4332: $ff
	sbc l                                            ; $4333: $9d
	rst SubAFromBC                                          ; $4334: $e7
	ld hl, sp-$27                                    ; $4335: $f8 $d9
	rst $38                                          ; $4337: $ff
	sbc [hl]                                         ; $4338: $9e
	db $e3                                           ; $4339: $e3
	ld [hl], e                                       ; $433a: $73
	or b                                             ; $433b: $b0
	sbc d                                            ; $433c: $9a
	rst FarCall                                          ; $433d: $f7
	ld bc, $f28f                                     ; $433e: $01 $8f $f2
	and e                                            ; $4341: $a3
	call c, $80ff                                    ; $4342: $dc $ff $80
	xor [hl]                                         ; $4345: $ae
	nop                                              ; $4346: $00
	ld a, [hl]                                       ; $4347: $7e
	ld a, a                                          ; $4348: $7f
	ei                                               ; $4349: $fb
	push af                                          ; $434a: $f5
	di                                               ; $434b: $f3
	add a                                            ; $434c: $87
	call z, $cf03                                    ; $434d: $cc $03 $cf
	ld b, c                                          ; $4350: $41
	ld d, h                                          ; $4351: $54
	xor e                                            ; $4352: $ab
	xor a                                            ; $4353: $af
	ld d, a                                          ; $4354: $57
	db $fc                                           ; $4355: $fc
	cp $7f                                           ; $4356: $fe $7f
	rst $38                                          ; $4358: $ff
	ldh a, [$ef]                                     ; $4359: $f0 $ef
	cp a                                             ; $435b: $bf
	adc $77                                          ; $435c: $ce $77
	db $eb                                           ; $435e: $eb
	ldh [rTAC], a                                    ; $435f: $e0 $07
	rlca                                             ; $4361: $07
	ldh [$d8], a                                     ; $4362: $e0 $d8
	add b                                            ; $4364: $80
	rst SubAFromHL                                          ; $4365: $d7
	rst $38                                          ; $4366: $ff
	rst $38                                          ; $4367: $ff
	cp $fe                                           ; $4368: $fe $fe
	add b                                            ; $436a: $80
	ld h, b                                          ; $436b: $60
	ld a, a                                          ; $436c: $7f
	ld a, e                                          ; $436d: $7b
	rst FarCall                                          ; $436e: $f7
	rst FarCall                                          ; $436f: $f7
	xor a                                            ; $4370: $af
	ld c, a                                          ; $4371: $4f
	adc a                                            ; $4372: $8f
	rla                                              ; $4373: $17
	rra                                              ; $4374: $1f
	add d                                            ; $4375: $82
	rst $38                                          ; $4376: $ff
	ld a, a                                          ; $4377: $7f
	rst $38                                          ; $4378: $ff
	rst $38                                          ; $4379: $ff
	jr z, jr_016_437c                                ; $437a: $28 $00

jr_016_437c:
	db $fd                                           ; $437c: $fd
	db $fc                                           ; $437d: $fc
	ei                                               ; $437e: $fb
	ld a, [rIE]                                    ; $437f: $fa $ff $ff
	rst AddAOntoHL                                          ; $4382: $ef
	rst AddAOntoHL                                          ; $4383: $ef
	adc b                                            ; $4384: $88
	adc a                                            ; $4385: $8f
	rra                                              ; $4386: $1f
	jr jr_016_430a                                   ; $4387: $18 $81

	rst $38                                          ; $4389: $ff
	rst $38                                          ; $438a: $ff
	rra                                              ; $438b: $1f
	rra                                              ; $438c: $1f
	sbc e                                            ; $438d: $9b
	ld h, b                                          ; $438e: $60
	rst $38                                          ; $438f: $ff
	or $21                                           ; $4390: $f6 $21
	nop                                              ; $4392: $00
	rst SubAFromDE                                          ; $4393: $df
	adc [hl]                                         ; $4394: $8e
	adc c                                            ; $4395: $89
	ld b, $df                                        ; $4396: $06 $df
	nop                                              ; $4398: $00
	and c                                            ; $4399: $a1

Call_016_439a:
	ld b, d                                          ; $439a: $42
	rst SubAFromHL                                          ; $439b: $d7
	ld [hl], e                                       ; $439c: $73
	sbc h                                            ; $439d: $9c
	ld a, a                                          ; $439e: $7f
	add [hl]                                         ; $439f: $86
	ld a, a                                          ; $43a0: $7f
	add d                                            ; $43a1: $82
	ld a, a                                          ; $43a2: $7f
	ld a, [hl]                                       ; $43a3: $7e
	ld [hl], a                                       ; $43a4: $77
	ld a, b                                          ; $43a5: $78
	halt                                             ; $43a6: $76
	and b                                            ; $43a7: $a0
	ld a, e                                          ; $43a8: $7b
	cp b                                             ; $43a9: $b8
	ld a, [hl]                                       ; $43aa: $7e
	xor a                                            ; $43ab: $af
	ld e, d                                          ; $43ac: $5a
	sub b                                            ; $43ad: $90
	ld a, d                                          ; $43ae: $7a
	sbc e                                            ; $43af: $9b
	sbc e                                            ; $43b0: $9b
	rst $38                                          ; $43b1: $ff
	ld [hl], b                                       ; $43b2: $70
	rrca                                             ; $43b3: $0f
	ld b, $6b                                        ; $43b4: $06 $6b
	db $ec                                           ; $43b6: $ec
	db $dd                                           ; $43b7: $dd
	rst $38                                          ; $43b8: $ff
	ld a, a                                          ; $43b9: $7f
	ld h, $7f                                        ; $43ba: $26 $7f
	ld [hl+], a                                      ; $43bc: $22
	ld a, a                                          ; $43bd: $7f
	adc $5f                                          ; $43be: $ce $5f
	ldh a, [$5b]                                     ; $43c0: $f0 $5b

Jump_016_43c2:
	dec hl                                           ; $43c2: $2b
	ld a, a                                          ; $43c3: $7f
	ldh a, [$de]                                     ; $43c4: $f0 $de
	cp $d5                                           ; $43c6: $fe $d5
	rst $38                                          ; $43c8: $ff
	sbc h                                            ; $43c9: $9c
	cp a                                             ; $43ca: $bf
	rra                                              ; $43cb: $1f
	rst $38                                          ; $43cc: $ff
	halt                                             ; $43cd: $76
	ld d, c                                          ; $43ce: $51
	rst SubAFromDE                                          ; $43cf: $df
	rst FarCall                                          ; $43d0: $f7
	sbc d                                            ; $43d1: $9a
	di                                               ; $43d2: $f3
	ei                                               ; $43d3: $fb
	ld sp, hl                                        ; $43d4: $f9
	db $fd                                           ; $43d5: $fd
	db $fd                                           ; $43d6: $fd
	ld [hl], e                                       ; $43d7: $73
	and l                                            ; $43d8: $a5
	sbc d                                            ; $43d9: $9a
	ld bc, $0102                                     ; $43da: $01 $02 $01
	ld bc, $6f03                                     ; $43dd: $01 $03 $6f
	cp $7f                                           ; $43e0: $fe $7f
	or $7f                                           ; $43e2: $f6 $7f
	ld l, l                                          ; $43e4: $6d
	adc e                                            ; $43e5: $8b
	sbc a                                            ; $43e6: $9f
	rrca                                             ; $43e7: $0f
	sbc a                                            ; $43e8: $9f
	rrca                                             ; $43e9: $0f
	rst SubAFromDE                                          ; $43ea: $df
	rlca                                             ; $43eb: $07
	rst $38                                          ; $43ec: $ff
	rst JumpTable                                          ; $43ed: $c7
	db $fd                                           ; $43ee: $fd
	ld sp, hl                                        ; $43ef: $f9
	cp $fc                                           ; $43f0: $fe $fc
	rst $38                                          ; $43f2: $ff
	cp [hl]                                          ; $43f3: $be
	ret c                                            ; $43f4: $d8

	ld a, l                                          ; $43f5: $7d
	db $dd                                           ; $43f6: $dd
	ld a, d                                          ; $43f7: $7a
	rst SubAFromDE                                          ; $43f8: $df
	halt                                             ; $43f9: $76
	ld a, e                                          ; $43fa: $7b
	adc l                                            ; $43fb: $8d
	ld a, a                                          ; $43fc: $7f
	ld b, d                                          ; $43fd: $42
	adc d                                            ; $43fe: $8a
	ld l, a                                          ; $43ff: $6f
	rst $38                                          ; $4400: $ff
	ccf                                              ; $4401: $3f
	adc a                                            ; $4402: $8f
	rrca                                             ; $4403: $0f
	cp h                                             ; $4404: $bc
	dec bc                                           ; $4405: $0b
	sbc b                                            ; $4406: $98
	dec c                                            ; $4407: $0d
	cp b                                             ; $4408: $b8
	dec c                                            ; $4409: $0d
	ldh a, [rAUD3LOW]                                ; $440a: $f0 $1d
	add d                                            ; $440c: $82
	ld a, c                                          ; $440d: $79
	add h                                            ; $440e: $84
	ld h, e                                          ; $440f: $63
	sbc b                                            ; $4410: $98
	rlca                                             ; $4411: $07
	db $dd                                           ; $4412: $dd
	ld h, d                                          ; $4413: $62
	ld a, e                                          ; $4414: $7b
	call nz, $107a                                   ; $4415: $c4 $7a $10
	rst FarCall                                          ; $4418: $f7
	sbc l                                            ; $4419: $9d
	ld b, b                                          ; $441a: $40
	add b                                            ; $441b: $80
	ld l, a                                          ; $441c: $6f
	ld c, b                                          ; $441d: $48
	ld sp, hl                                        ; $441e: $f9
	adc a                                            ; $441f: $8f
	sub [hl]                                         ; $4420: $96
	ld c, a                                          ; $4421: $4f
	ld l, h                                          ; $4422: $6c
	sbc a                                            ; $4423: $9f
	add hl, hl                                       ; $4424: $29
	sbc a                                            ; $4425: $9f
	sbc l                                            ; $4426: $9d
	dec sp                                           ; $4427: $3b
	ret nc                                           ; $4428: $d0

jr_016_4429:
	dec a                                            ; $4429: $3d
	jr nc, jr_016_4429                               ; $442a: $30 $fd

	inc h                                            ; $442c: $24
	rst SubAFromBC                                          ; $442d: $e7
	db $ec                                           ; $442e: $ec
	rra                                              ; $442f: $1f
	ld l, a                                          ; $4430: $6f
	sub b                                            ; $4431: $90
	ld a, c                                          ; $4432: $79
	rst SubAFromDE                                          ; $4433: $df
	ld l, e                                          ; $4434: $6b
	sub b                                            ; $4435: $90
	ld a, e                                          ; $4436: $7b
	call nc, $809e                                   ; $4437: $d4 $9e $80
	ld a, e                                          ; $443a: $7b
	call z, $c09e                                    ; $443b: $cc $9e $c0
	ld l, a                                          ; $443e: $6f
	cp $7f                                           ; $443f: $fe $7f
	or $dd                                           ; $4441: $f6 $dd
	rst $38                                          ; $4443: $ff
	ld a, [hl]                                       ; $4444: $7e
	ld [hl], $4f                                     ; $4445: $36 $4f
	db $10                                           ; $4447: $10
	ld a, l                                          ; $4448: $7d
	or [hl]                                          ; $4449: $b6
	ld a, a                                          ; $444a: $7f
	ld [de], a                                       ; $444b: $12
	ld a, a                                          ; $444c: $7f
	rst GetHLinHL                                          ; $444d: $cf
	ld l, a                                          ; $444e: $6f
	sbc b                                            ; $444f: $98
	rst SubAFromDE                                          ; $4450: $df
	rst $38                                          ; $4451: $ff
	add c                                            ; $4452: $81
	cp [hl]                                          ; $4453: $be
	ret nz                                           ; $4454: $c0

	reti                                             ; $4455: $d9


	adc [hl]                                         ; $4456: $8e
	ret nz                                           ; $4457: $c0

	ld a, $9a                                        ; $4458: $3e $9a
	ld h, c                                          ; $445a: $61
	inc [hl]                                         ; $445b: $34
	pop bc                                           ; $445c: $c1
	ld [bc], a                                       ; $445d: $02
	pop bc                                           ; $445e: $c1
	ld hl, $69c3                                     ; $445f: $21 $c3 $69
	add [hl]                                         ; $4462: $86
	add l                                            ; $4463: $85
	ld [bc], a                                       ; $4464: $02
	ld b, a                                          ; $4465: $47
	nop                                              ; $4466: $00
	rst $38                                          ; $4467: $ff
	adc $3d                                          ; $4468: $ce $3d
	ldh [c], a                                       ; $446a: $e2
	rst GetHLinHL                                          ; $446b: $cf
	inc a                                            ; $446c: $3c
	inc sp                                           ; $446d: $33
	rrca                                             ; $446e: $0f
	call z, $fd03                                    ; $446f: $cc $03 $fd
	sbc d                                            ; $4472: $9a
	ld a, $00                                        ; $4473: $3e $00
	ld a, $1c                                        ; $4475: $3e $1c
	ld [hl], $6b                                     ; $4477: $36 $6b
	cp $fd                                           ; $4479: $fe $fd
	sub e                                            ; $447b: $93

Call_016_447c:
	ei                                               ; $447c: $fb
	nop                                              ; $447d: $00

Call_016_447e:
	ei                                               ; $447e: $fb
	ld [hl], b                                       ; $447f: $70
	db $db                                           ; $4480: $db
	ld [hl], c                                       ; $4481: $71
	db $db                                           ; $4482: $db
	ld [hl], b                                       ; $4483: $70
	db $db                                           ; $4484: $db
	ld [hl], b                                       ; $4485: $70
	ret c                                            ; $4486: $d8

	ld [hl], b                                       ; $4487: $70
	ld [hl], a                                       ; $4488: $77
	add a                                            ; $4489: $87
	sbc [hl]                                         ; $448a: $9e
	rst $38                                          ; $448b: $ff
	ld a, d                                          ; $448c: $7a
	ld d, $7f                                        ; $448d: $16 $7f
	db $fd                                           ; $448f: $fd
	ld a, a                                          ; $4490: $7f
	inc bc                                           ; $4491: $03
	adc h                                            ; $4492: $8c
	db $fd                                           ; $4493: $fd
	rlca                                             ; $4494: $07
	dec c                                            ; $4495: $0d
	rlca                                             ; $4496: $07
	ld hl, sp+$00                                    ; $4497: $f8 $00
	ld sp, hl                                        ; $4499: $f9
	ldh a, [$59]                                     ; $449a: $f0 $59
	ldh a, [$f9]                                     ; $449c: $f0 $f9
	ldh a, [$fb]                                     ; $449e: $f0 $fb
	ld bc, $0187                                     ; $44a0: $01 $87 $01
	add a                                            ; $44a3: $87
	inc bc                                           ; $44a4: $03
	adc [hl]                                         ; $44a5: $8e
	ld a, e                                          ; $44a6: $7b
	ret nz                                           ; $44a7: $c0

	sbc d                                            ; $44a8: $9a
	ldh a, [rP1]                                     ; $44a9: $f0 $00
	ldh a, [$e0]                                     ; $44ab: $f0 $e0
	or b                                             ; $44ad: $b0
	ld a, e                                          ; $44ae: $7b
	cp $8d                                           ; $44af: $fe $8d
	ld [hl], b                                       ; $44b1: $70
	ret nz                                           ; $44b2: $c0

	ld a, [hl]                                       ; $44b3: $7e
	ret nz                                           ; $44b4: $c0

	cp $9c                                           ; $44b5: $fe $9c
	nop                                              ; $44b7: $00
	nop                                              ; $44b8: $00
	rrca                                             ; $44b9: $0f
	nop                                              ; $44ba: $00
	rrca                                             ; $44bb: $0f
	rlca                                             ; $44bc: $07
	inc c                                            ; $44bd: $0c
	rlca                                             ; $44be: $07
	dec de                                           ; $44bf: $1b
	rrca                                             ; $44c0: $0f
	ld a, [de]                                       ; $44c1: $1a
	rrca                                             ; $44c2: $0f
	ld [hl], a                                       ; $44c3: $77
	db $fc                                           ; $44c4: $fc
	ld a, l                                          ; $44c5: $7d
	rra                                              ; $44c6: $1f
	ld a, [hl]                                       ; $44c7: $7e
	ld a, [$ee9e]                                    ; $44c8: $fa $9e $ee
	ld a, e                                          ; $44cb: $7b
	jp nz, $ef87                                     ; $44cc: $c2 $87 $ef

	rst $38                                          ; $44cf: $ff
	dec b                                            ; $44d0: $05
	rst $38                                          ; $44d1: $ff
	push af                                          ; $44d2: $f5
	rst $38                                          ; $44d3: $ff
	inc de                                           ; $44d4: $13
	rst $38                                          ; $44d5: $ff
	cp e                                             ; $44d6: $bb
	nop                                              ; $44d7: $00
	rst $38                                          ; $44d8: $ff
	cp e                                             ; $44d9: $bb
	xor $ff                                          ; $44da: $ee $ff
	halt                                             ; $44dc: $76
	rst $38                                          ; $44dd: $ff
	cp $df                                           ; $44de: $fe $df
	ld a, [$ee3f]                                    ; $44e0: $fa $3f $ee
	ccf                                              ; $44e3: $3f
	or $bf                                           ; $44e4: $f6 $bf
	ld a, c                                          ; $44e6: $79
	adc d                                            ; $44e7: $8a
	sbc c                                            ; $44e8: $99
	rst FarCall                                          ; $44e9: $f7
	dec e                                            ; $44ea: $1d
	rst $38                                          ; $44eb: $ff
	push de                                          ; $44ec: $d5
	rst $38                                          ; $44ed: $ff
	dec d                                            ; $44ee: $15
	ld l, e                                          ; $44ef: $6b
	db $fc                                           ; $44f0: $fc
	ld a, a                                          ; $44f1: $7f
	xor a                                            ; $44f2: $af
	add l                                            ; $44f3: $85
	cp a                                             ; $44f4: $bf
	inc bc                                           ; $44f5: $03
	cp $3f                                           ; $44f6: $fe $3f
	ret nz                                           ; $44f8: $c0

	ld a, a                                          ; $44f9: $7f
	rst SubAFromDE                                          ; $44fa: $df
	ld a, a                                          ; $44fb: $7f

Call_016_44fc:
	ret nc                                           ; $44fc: $d0

	ld a, a                                          ; $44fd: $7f
	cp $7f                                           ; $44fe: $fe $7f
	cp $03                                           ; $4500: $fe $03
	add b                                            ; $4502: $80
	nop                                              ; $4503: $00
	db $fc                                           ; $4504: $fc
	add b                                            ; $4505: $80
	cp $f8                                           ; $4506: $fe $f8
	ld b, $fc                                        ; $4508: $06 $fc
	or $fc                                           ; $450a: $f6 $fc
	rla                                              ; $450c: $17
	db $fc                                           ; $450d: $fc
	ld a, d                                          ; $450e: $7a
	ld b, a                                          ; $450f: $47
	ld h, e                                          ; $4510: $63
	ld d, $7b                                        ; $4511: $16 $7b
	ret z                                            ; $4513: $c8

	ld [hl], l                                       ; $4514: $75
	ccf                                              ; $4515: $3f
	sbc [hl]                                         ; $4516: $9e
	ld a, a                                          ; $4517: $7f
	db $fd                                           ; $4518: $fd
	ld a, a                                          ; $4519: $7f
	call z, $0795                                    ; $451a: $cc $95 $07
	inc bc                                           ; $451d: $03
	or $03                                           ; $451e: $f6 $03
	rst $38                                          ; $4520: $ff
	push af                                          ; $4521: $f5
	rra                                              ; $4522: $1f
	di                                               ; $4523: $f3
	call c, $fdf7                                    ; $4524: $dc $f7 $fd
	ld a, a                                          ; $4527: $7f
	db $db                                           ; $4528: $db
	sub l                                            ; $4529: $95
	ldh [$80], a                                     ; $452a: $e0 $80
	ld a, c                                          ; $452c: $79
	ldh [$9b], a                                     ; $452d: $e0 $9b
	pop af                                           ; $452f: $f1
	cp $73                                           ; $4530: $fe $73
	cp $c3                                           ; $4532: $fe $c3
	ld sp, hl                                        ; $4534: $f9
	ld a, l                                          ; $4535: $7d
	ldh [rPCM12], a                                  ; $4536: $e0 $76
	rst GetHLinHL                                          ; $4538: $cf
	sbc [hl]                                         ; $4539: $9e
	rst JumpTable                                          ; $453a: $c7
	ld d, [hl]                                       ; $453b: $56
	sub l                                            ; $453c: $95
	ld [hl], l                                       ; $453d: $75
	inc a                                            ; $453e: $3c

jr_016_453f:
	ld a, [$7896]                                    ; $453f: $fa $96 $78
	nop                                              ; $4542: $00
	cp $38                                           ; $4543: $fe $38
	rst JumpTable                                          ; $4545: $c7
	ld a, [hl]                                       ; $4546: $7e
	ld a, c                                          ; $4547: $79
	ccf                                              ; $4548: $3f
	ccf                                              ; $4549: $3f
	ld a, b                                          ; $454a: $78
	cp d                                             ; $454b: $ba
	ei                                               ; $454c: $fb
	add b                                            ; $454d: $80
	jr jr_016_4550                                   ; $454e: $18 $00

jr_016_4550:
	inc a                                            ; $4550: $3c
	jr jr_016_453f                                   ; $4551: $18 $ec

	jr c, @-$12                                      ; $4553: $38 $ec

	ld a, b                                          ; $4555: $78
	dec e                                            ; $4556: $1d
	pop hl                                           ; $4557: $e1
	ld h, [hl]                                       ; $4558: $66
	adc [hl]                                         ; $4559: $8e
	call c, $824f                                    ; $455a: $dc $4f $82
	call $f2a5                                       ; $455d: $cd $a5 $f2
	ld b, d                                          ; $4560: $42
	sub c                                            ; $4561: $91
	ld hl, $56c2                                     ; $4562: $21 $c2 $56
	add c                                            ; $4565: $81
	di                                               ; $4566: $f3
	ret nz                                           ; $4567: $c0

	db $fc                                           ; $4568: $fc
	db $10                                           ; $4569: $10
	dec sp                                           ; $456a: $3b
	db $e4                                           ; $456b: $e4
	di                                               ; $456c: $f3
	sub c                                            ; $456d: $91
	inc e                                            ; $456e: $1c
	adc a                                            ; $456f: $8f
	ld a, [hl]                                       ; $4570: $7e
	cpl                                              ; $4571: $2f
	jp nc, $ea17                                     ; $4572: $d2 $17 $ea

	pop bc                                           ; $4575: $c1
	cp $36                                           ; $4576: $fe $36
	inc d                                            ; $4578: $14
	ld a, $08                                        ; $4579: $3e $08
	inc e                                            ; $457b: $1c
	ld [hl], e                                       ; $457c: $73
	ld a, [hl]                                       ; $457d: $7e
	sub a                                            ; $457e: $97
	inc c                                            ; $457f: $0c
	inc b                                            ; $4580: $04
	rlca                                             ; $4581: $07
	inc bc                                           ; $4582: $03
	inc bc                                           ; $4583: $03
	nop                                              ; $4584: $00
	ret c                                            ; $4585: $d8

	ld d, b                                          ; $4586: $50
	ld [hl], a                                       ; $4587: $77
	cp $8a                                           ; $4588: $fe $8a
	reti                                             ; $458a: $d9


	ret nc                                           ; $458b: $d0

	cp e                                             ; $458c: $bb
	or c                                             ; $458d: $b1
	ld a, [hl]                                       ; $458e: $7e
	ld h, d                                          ; $458f: $62
	db $e3                                           ; $4590: $e3
	add c                                            ; $4591: $81
	add c                                            ; $4592: $81
	nop                                              ; $4593: $00
	dec de                                           ; $4594: $1b
	ld a, [bc]                                       ; $4595: $0a
	dec de                                           ; $4596: $1b
	ld a, [bc]                                       ; $4597: $0a
	ld [hl], e                                       ; $4598: $73
	ld [de], a                                       ; $4599: $12
	db $ed                                           ; $459a: $ed
	ld l, l                                          ; $459b: $6d
	sbc [hl]                                         ; $459c: $9e
	sub [hl]                                         ; $459d: $96
	halt                                             ; $459e: $76
	ld [hl], e                                       ; $459f: $73
	ldh a, [hDisp1_BGP]                                     ; $45a0: $f0 $92
	adc [hl]                                         ; $45a2: $8e
	ld b, $1d                                        ; $45a3: $06 $1d
	dec b                                            ; $45a5: $05
	sbc l                                            ; $45a6: $9d
	dec c                                            ; $45a7: $0d
	db $db                                           ; $45a8: $db
	dec bc                                           ; $45a9: $0b
	call c, $df8c                                    ; $45aa: $dc $8c $df
	add a                                            ; $45ad: $87
	rst GetHLinHL                                          ; $45ae: $cf
	ld a, c                                          ; $45af: $79
	ld c, d                                          ; $45b0: $4a
	sub l                                            ; $45b1: $95
	rst FarCall                                          ; $45b2: $f7
	sub h                                            ; $45b3: $94
	rst FarCall                                          ; $45b4: $f7
	ld d, $fb                                        ; $45b5: $16 $fb
	ld a, [bc]                                       ; $45b7: $0a
	ei                                               ; $45b8: $fb
	ei                                               ; $45b9: $fb
	ld bc, $7901                                     ; $45ba: $01 $01 $79
	and d                                            ; $45bd: $a2
	add e                                            ; $45be: $83
	inc bc                                           ; $45bf: $03
	rlca                                             ; $45c0: $07
	nop                                              ; $45c1: $00
	ld [hl], $16                                     ; $45c2: $36 $16
	ld [hl], $16                                     ; $45c4: $36 $16
	cp a                                             ; $45c6: $bf
	rra                                              ; $45c7: $1f
	sbc [hl]                                         ; $45c8: $9e
	ld b, $ba                                        ; $45c9: $06 $ba
	ld a, [bc]                                       ; $45cb: $0a
	or e                                             ; $45cc: $b3
	inc de                                           ; $45cd: $13
	cp a                                             ; $45ce: $bf
	ld e, $bf                                        ; $45cf: $1e $bf
	nop                                              ; $45d1: $00
	jp c, $14da                                      ; $45d2: $da $da $14

	inc d                                            ; $45d5: $14
	rst $38                                          ; $45d6: $ff
	rst $38                                          ; $45d7: $ff
	ret                                              ; $45d8: $c9


	ret                                              ; $45d9: $c9


	cp $7b                                           ; $45da: $fe $7b
	ld d, l                                          ; $45dc: $55
	ld [hl], l                                       ; $45dd: $75
	ld d, [hl]                                       ; $45de: $56
	add e                                            ; $45df: $83
	cp $9e                                           ; $45e0: $fe $9e
	jp c, $db8a                                      ; $45e2: $da $8a $db

	dec bc                                           ; $45e5: $0b
	or $16                                           ; $45e6: $f6 $16
	db $e4                                           ; $45e8: $e4
	and h                                            ; $45e9: $a4
	db $ed                                           ; $45ea: $ed
	xor l                                            ; $45eb: $ad
	rst $38                                          ; $45ec: $ff
	scf                                              ; $45ed: $37
	rst $38                                          ; $45ee: $ff
	nop                                              ; $45ef: $00
	push de                                          ; $45f0: $d5
	push de                                          ; $45f1: $d5
	dec d                                            ; $45f2: $15
	dec d                                            ; $45f3: $15
	push af                                          ; $45f4: $f5
	push af                                          ; $45f5: $f5
	db $dd                                           ; $45f6: $dd
	db $dd                                           ; $45f7: $dd
	call $e9cd                                       ; $45f8: $cd $cd $e9
	jp hl                                            ; $45fb: $e9


	ld a, c                                          ; $45fc: $79
	adc d                                            ; $45fd: $8a
	adc b                                            ; $45fe: $88
	nop                                              ; $45ff: $00
	cp [hl]                                          ; $4600: $be
	ld a, [de]                                       ; $4601: $1a
	or [hl]                                          ; $4602: $b6
	ld d, $b6                                        ; $4603: $16 $b6
	ld d, $e2                                        ; $4605: $16 $e2
	ld [hl+], a                                      ; $4607: $22
	ret c                                            ; $4608: $d8

	ld e, b                                          ; $4609: $58
	sbc $56                                          ; $460a: $de $56
	rst $38                                          ; $460c: $ff
	ld h, c                                          ; $460d: $61
	di                                               ; $460e: $f3
	nop                                              ; $460f: $00
	ld hl, sp-$20                                    ; $4610: $f8 $e0
	jr jr_016_4624                                   ; $4612: $18 $10

	ld hl, sp-$20                                    ; $4614: $f8 $e0
	ld [hl], d                                       ; $4616: $72
	cp h                                             ; $4617: $bc
	sbc e                                            ; $4618: $9b
	inc b                                            ; $4619: $04
	cp $f8                                           ; $461a: $fe $f8
	db $fc                                           ; $461c: $fc
	ld a, d                                          ; $461d: $7a
	ret z                                            ; $461e: $c8

	add b                                            ; $461f: $80
	ccf                                              ; $4620: $3f
	ld de, $2a6e                                     ; $4621: $11 $6e $2a

jr_016_4624:
	ld h, l                                          ; $4624: $65
	dec h                                            ; $4625: $25
	ld [hl], e                                       ; $4626: $73
	inc de                                           ; $4627: $13
	add hl, sp                                       ; $4628: $39
	add hl, bc                                       ; $4629: $09
	rra                                              ; $462a: $1f
	rlca                                             ; $462b: $07
	rrca                                             ; $462c: $0f
	nop                                              ; $462d: $00
	sbc a                                            ; $462e: $9f
	sub e                                            ; $462f: $93
	dec sp                                           ; $4630: $3b
	jr nz, @+$62                                     ; $4631: $20 $60

	ld b, b                                          ; $4633: $40
	pop bc                                           ; $4634: $c1
	add b                                            ; $4635: $80
	jp $8601                                         ; $4636: $c3 $01 $86


	ld [bc], a                                       ; $4639: $02
	add a                                            ; $463a: $87
	inc bc                                           ; $463b: $03

jr_016_463c:
	add a                                            ; $463c: $87
	nop                                              ; $463d: $00
	dec a                                            ; $463e: $3d
	adc d                                            ; $463f: $8a
	dec h                                            ; $4640: $25
	db $fd                                           ; $4641: $fd
	call $1afb                                       ; $4642: $cd $fb $1a
	or $34                                           ; $4645: $f6 $34
	call z, $38c8                                    ; $4647: $cc $c8 $38
	jr nc, jr_016_463c                               ; $464a: $30 $f0

	ldh [$e0], a                                     ; $464c: $e0 $e0
	nop                                              ; $464e: $00
	adc a                                            ; $464f: $8f
	rlca                                             ; $4650: $07
	adc h                                            ; $4651: $8c
	inc b                                            ; $4652: $04
	rrca                                             ; $4653: $0f
	rlca                                             ; $4654: $07
	ld h, d                                          ; $4655: $62
	jp hl                                            ; $4656: $e9


	ld a, b                                          ; $4657: $78
	ldh [$7d], a                                     ; $4658: $e0 $7d
	ld a, e                                          ; $465a: $7b
	ld a, b                                          ; $465b: $78
	call c, Call_016_7ff8                            ; $465c: $dc $f8 $7f
	and $7d                                          ; $465f: $e6 $7d
	sbc d                                            ; $4661: $9a
	sub h                                            ; $4662: $94
	rlca                                             ; $4663: $07
	ld bc, $031f                                     ; $4664: $01 $1f $03
	inc a                                            ; $4667: $3c
	inc e                                            ; $4668: $1c
	ld h, e                                          ; $4669: $63
	inc hl                                           ; $466a: $23
	ld a, a                                          ; $466b: $7f
	ld a, $3e                                        ; $466c: $3e $3e
	ld a, e                                          ; $466e: $7b
	nop                                              ; $466f: $00
	sbc b                                            ; $4670: $98
	or b                                             ; $4671: $b0
	and b                                            ; $4672: $a0
	or b                                             ; $4673: $b0
	and b                                            ; $4674: $a0
	ld h, b                                          ; $4675: $60
	ld b, b                                          ; $4676: $40
	ret nz                                           ; $4677: $c0

jr_016_4678:
	ld a, c                                          ; $4678: $79
	jr z, jr_016_4678                                ; $4679: $28 $fd

	add b                                            ; $467b: $80
	sbc h                                            ; $467c: $9c
	ld h, e                                          ; $467d: $63
	jp nz, $8e3e                                     ; $467e: $c2 $3e $8e

	ld e, a                                          ; $4681: $5f
	db $eb                                           ; $4682: $eb
	ld [hl], a                                       ; $4683: $77
	add e                                            ; $4684: $83
	ld l, a                                          ; $4685: $6f
	add a                                            ; $4686: $87
	ld a, [hl]                                       ; $4687: $7e
	adc h                                            ; $4688: $8c
	ld a, a                                          ; $4689: $7f
	adc d                                            ; $468a: $8a
	ld l, l                                          ; $468b: $6d
	xor [hl]                                         ; $468c: $ae
	ld a, a                                          ; $468d: $7f
	or $7b                                           ; $468e: $f6 $7b
	ldh a, [c]                                       ; $4690: $f2
	ld a, e                                          ; $4691: $7b
	xor $73                                          ; $4692: $ee $73
	and $73                                          ; $4694: $e6 $73
	jp c, $ca67                                      ; $4696: $da $67 $ca

	ld h, a                                          ; $4699: $67
	or [hl]                                          ; $469a: $b6
	sbc [hl]                                         ; $469b: $9e
	ld c, a                                          ; $469c: $4f
	di                                               ; $469d: $f3
	ld c, d                                          ; $469e: $4a
	ld h, c                                          ; $469f: $61
	ldh a, [$7f]                                     ; $46a0: $f0 $7f
	sub h                                            ; $46a2: $94
	ld a, [hl]                                       ; $46a3: $7e
	add b                                            ; $46a4: $80
	ld sp, hl                                        ; $46a5: $f9
	sub a                                            ; $46a6: $97
	ld [hl], e                                       ; $46a7: $73
	db $db                                           ; $46a8: $db
	db $db                                           ; $46a9: $db
	jp $dbfb                                         ; $46aa: $c3 $fb $db


	db $db                                           ; $46ad: $db
	ld [hl], e                                       ; $46ae: $73
	ld sp, hl                                        ; $46af: $f9
	sub a                                            ; $46b0: $97
	rst GetHLinHL                                          ; $46b1: $cf
	ld l, h                                          ; $46b2: $6c
	ld l, h                                          ; $46b3: $6c
	rst AddAOntoHL                                          ; $46b4: $ef
	ld c, h                                          ; $46b5: $4c
	ld l, h                                          ; $46b6: $6c
	ld l, h                                          ; $46b7: $6c
	ld l, a                                          ; $46b8: $6f
	ld sp, hl                                        ; $46b9: $f9
	sbc e                                            ; $46ba: $9b
	sbc h                                            ; $46bb: $9c
	ld [hl], $36                                     ; $46bc: $36 $36
	cp [hl]                                          ; $46be: $be
	sbc $36                                          ; $46bf: $de $36
	sbc [hl]                                         ; $46c1: $9e
	or [hl]                                          ; $46c2: $b6
	ld sp, hl                                        ; $46c3: $f9
	sbc [hl]                                         ; $46c4: $9e
	db $fd                                           ; $46c5: $fd
	db $dd                                           ; $46c6: $dd
	ld sp, $309c                                     ; $46c7: $31 $9c $30
	ld sp, $f931                                     ; $46ca: $31 $31 $f9
	call c, Call_016_7b80                            ; $46cd: $dc $80 $7b
	ld a, [$9bf9]                                    ; $46d0: $fa $f9 $9b

jr_016_46d3:
	inc a                                            ; $46d3: $3c
	ld [hl], $36                                     ; $46d4: $36 $36
	inc a                                            ; $46d6: $3c
	db $dd                                           ; $46d7: $dd
	jr nc, jr_016_46d3                               ; $46d8: $30 $f9

	sbc [hl]                                         ; $46da: $9e
	ld [hl], c                                       ; $46db: $71
	db $db                                           ; $46dc: $db
	db $db                                           ; $46dd: $db
	sbc [hl]                                         ; $46de: $9e
	ld [hl], c                                       ; $46df: $71
	ld h, e                                          ; $46e0: $63
	and b                                            ; $46e1: $a0
	rst SubAFromDE                                          ; $46e2: $df
	ld l, l                                          ; $46e3: $6d
	sbc [hl]                                         ; $46e4: $9e
	ld l, a                                          ; $46e5: $6f
	sbc $6d                                          ; $46e6: $de $6d
	sbc [hl]                                         ; $46e8: $9e
	call $6ff8                                       ; $46e9: $cd $f8 $6f
	pop bc                                           ; $46ec: $c1
	ld h, e                                          ; $46ed: $63
	ret nz                                           ; $46ee: $c0

	ld a, e                                          ; $46ef: $7b
	ret nc                                           ; $46f0: $d0

	ld [hl], a                                       ; $46f1: $77
	ld [hl], b                                       ; $46f2: $70
	ld h, e                                          ; $46f3: $63
	ret nc                                           ; $46f4: $d0

	sbc [hl]                                         ; $46f5: $9e
	rst JumpTable                                          ; $46f6: $c7
	db $db                                           ; $46f7: $db
	ld l, l                                          ; $46f8: $6d
	sbc [hl]                                         ; $46f9: $9e
	rst JumpTable                                          ; $46fa: $c7
	ld h, e                                          ; $46fb: $63
	and b                                            ; $46fc: $a0
	db $db                                           ; $46fd: $db
	or [hl]                                          ; $46fe: $b6
	sbc [hl]                                         ; $46ff: $9e
	inc a                                            ; $4700: $3c
	ld sp, hl                                        ; $4701: $f9
	sbc e                                            ; $4702: $9b
	pop af                                           ; $4703: $f1
	db $db                                           ; $4704: $db
	db $db                                           ; $4705: $db
	di                                               ; $4706: $f3
	sbc $db                                          ; $4707: $de $db
	sbc [hl]                                         ; $4709: $9e
	di                                               ; $470a: $f3
	ld e, e                                          ; $470b: $5b
	and b                                            ; $470c: $a0
	sbc [hl]                                         ; $470d: $9e
	db $ed                                           ; $470e: $ed
	sbc $6d                                          ; $470f: $de $6d
	ld h, e                                          ; $4711: $63
	ld b, b                                          ; $4712: $40
	ld l, a                                          ; $4713: $6f
	ld e, a                                          ; $4714: $5f
	ld a, a                                          ; $4715: $7f
	and c                                            ; $4716: $a1
	sbc [hl]                                         ; $4717: $9e
	rst $38                                          ; $4718: $ff
	jp c, $f380                                      ; $4719: $da $80 $f3

	rst SubAFromDE                                          ; $471c: $df
	ld a, a                                          ; $471d: $7f
	ld [$ff9e], a                                    ; $471e: $ea $9e $ff
	ld [hl+], a                                      ; $4721: $22
	add c                                            ; $4722: $81
	pop af                                           ; $4723: $f1
	reti                                             ; $4724: $d9


	cp $d8                                           ; $4725: $fe $d8
	rst $38                                          ; $4727: $ff
	sbc b                                            ; $4728: $98
	add hl, sp                                       ; $4729: $39
	ld de, $0101                                     ; $472a: $11 $01 $01
	add hl, hl                                       ; $472d: $29
	add hl, sp                                       ; $472e: $39
	add hl, sp                                       ; $472f: $39
	ld h, e                                          ; $4730: $63
	ld hl, sp-$65                                    ; $4731: $f8 $9b
	add a                                            ; $4733: $87
	sub e                                            ; $4734: $93
	sub e                                            ; $4735: $93
	add a                                            ; $4736: $87
	sbc $9f                                          ; $4737: $de $9f
	ld d, e                                          ; $4739: $53
	ld hl, sp+$7b                                    ; $473a: $f8 $7b
	db $fd                                           ; $473c: $fd
	ld h, a                                          ; $473d: $67
	ld hl, sp-$25                                    ; $473e: $f8 $db
	ld a, h                                          ; $4740: $7c
	sbc l                                            ; $4741: $9d
	nop                                              ; $4742: $00
	rst $38                                          ; $4743: $ff
	db $db                                           ; $4744: $db
	inc bc                                           ; $4745: $03
	rst SubAFromDE                                          ; $4746: $df
	rst $38                                          ; $4747: $ff
	sbc h                                            ; $4748: $9c
	sbc a                                            ; $4749: $9f
	cp a                                             ; $474a: $bf
	ld a, a                                          ; $474b: $7f
	call nz, $9cff                                   ; $474c: $c4 $ff $9c
	rst SubAFromDE                                          ; $474f: $df
	ld l, a                                          ; $4750: $6f
	ld [hl], b                                       ; $4751: $70
	sbc $7f                                          ; $4752: $de $7f
	rst SubAFromDE                                          ; $4754: $df
	rst $38                                          ; $4755: $ff
	sbc h                                            ; $4756: $9c
	call $f7ed                                       ; $4757: $cd $ed $f7
	call c, Call_016_6fff                            ; $475a: $dc $ff $6f
	add a                                            ; $475d: $87
	sub h                                            ; $475e: $94
	cp $c1                                           ; $475f: $fe $c1
	cp l                                             ; $4761: $bd
	ld [hl], $36                                     ; $4762: $36 $36
	inc a                                            ; $4764: $3c
	ld [hl], $36                                     ; $4765: $36 $36
	cp l                                             ; $4767: $bd
	rst $38                                          ; $4768: $ff
	ld bc, $fddc                                     ; $4769: $01 $dc $fd
	rst SubAFromDE                                          ; $476c: $df
	ld bc, $b067                                     ; $476d: $01 $67 $b0
	adc [hl]                                         ; $4770: $8e
	cp $83                                           ; $4771: $fe $83
	add hl, sp                                       ; $4773: $39
	ld a, l                                          ; $4774: $7d
	ld a, l                                          ; $4775: $7d
	add hl, sp                                       ; $4776: $39
	add e                                            ; $4777: $83
	cp $01                                           ; $4778: $fe $01
	ld a, b                                          ; $477a: $78
	ret nz                                           ; $477b: $c0

	add b                                            ; $477c: $80
	add b                                            ; $477d: $80
	ret nz                                           ; $477e: $c0

	ld h, b                                          ; $477f: $60
	ld bc, $db00                                     ; $4780: $01 $00 $db
	ld a, [hl]                                       ; $4783: $7e
	sbc [hl]                                         ; $4784: $9e
	nop                                              ; $4785: $00
	jp c, $9c01                                      ; $4786: $da $01 $9c

	ld a, a                                          ; $4789: $7f
	ld bc, $ddff                                     ; $478a: $01 $ff $dd
	ld a, a                                          ; $478d: $7f
	sbc h                                            ; $478e: $9c
	ld b, c                                          ; $478f: $41
	nop                                              ; $4790: $00
	add b                                            ; $4791: $80
	db $fc                                           ; $4792: $fc
	sbc [hl]                                         ; $4793: $9e
	ld a, $7b                                        ; $4794: $3e $7b
	and [hl]                                         ; $4796: $a6
	sbc l                                            ; $4797: $9d
	ld a, a                                          ; $4798: $7f
	cp a                                             ; $4799: $bf
	db $dd                                           ; $479a: $dd
	sbc a                                            ; $479b: $9f
	sbc $ff                                          ; $479c: $de $ff
	ld [hl], e                                       ; $479e: $73
	ld [hl], a                                       ; $479f: $77
	ld a, a                                          ; $47a0: $7f
	ld h, [hl]                                       ; $47a1: $66
	db $db                                           ; $47a2: $db
	rst $38                                          ; $47a3: $ff
	ld a, a                                          ; $47a4: $7f
	ld hl, sp-$67                                    ; $47a5: $f8 $99
	ldh a, [$e7]                                     ; $47a7: $f0 $e7
	call $cfcd                                       ; $47a9: $cd $cd $cf
	call $f06b                                       ; $47ac: $cd $6b $f0
	sbc [hl]                                         ; $47af: $9e
	db $fd                                           ; $47b0: $fd
	ld l, e                                          ; $47b1: $6b
	ld hl, sp-$64                                    ; $47b2: $f8 $9c
	jp $fe00                                         ; $47b4: $c3 $00 $fe


	db $db                                           ; $47b7: $db
	db $fc                                           ; $47b8: $fc
	ld a, a                                          ; $47b9: $7f
	xor a                                            ; $47ba: $af
	db $db                                           ; $47bb: $db
	inc bc                                           ; $47bc: $03
	ld e, a                                          ; $47bd: $5f
	ret nc                                           ; $47be: $d0

	db $db                                           ; $47bf: $db
	rst $38                                          ; $47c0: $ff
	ld e, [hl]                                       ; $47c1: $5e
	rst SubAFromBC                                          ; $47c2: $e7
	ld l, e                                          ; $47c3: $6b
	ldh a, [rDMA]                                    ; $47c4: $f0 $46
	ret nc                                           ; $47c6: $d0

	reti                                             ; $47c7: $d9


	rst $38                                          ; $47c8: $ff
	sbc b                                            ; $47c9: $98
	rst JumpTable                                          ; $47ca: $c7
	cp e                                             ; $47cb: $bb
	cp e                                             ; $47cc: $bb
	rst $38                                          ; $47cd: $ff
	cp e                                             ; $47ce: $bb
	cp e                                             ; $47cf: $bb
	rst JumpTable                                          ; $47d0: $c7
	rst SubAFromHL                                          ; $47d1: $d7
	rst $38                                          ; $47d2: $ff
	rst SubAFromDE                                          ; $47d3: $df
	ei                                               ; $47d4: $fb
	ld [hl], a                                       ; $47d5: $77
	db $fd                                           ; $47d6: $fd
	ld e, a                                          ; $47d7: $5f
	ldh [$df], a                                     ; $47d8: $e0 $df
	ei                                               ; $47da: $fb
	sbc h                                            ; $47db: $9c
	rst JumpTable                                          ; $47dc: $c7
	cp a                                             ; $47dd: $bf
	cp a                                             ; $47de: $bf
	ld e, a                                          ; $47df: $5f
	ldh [rPCM34], a                                  ; $47e0: $e0 $77
	ldh a, [$7b]                                     ; $47e2: $f0 $7b
	db $fd                                           ; $47e4: $fd
	rst SubAFromHL                                          ; $47e5: $d7
	rst $38                                          ; $47e6: $ff
	ld a, e                                          ; $47e7: $7b
	jp $d053                                         ; $47e8: $c3 $53 $d0


	ld a, e                                          ; $47eb: $7b
	db $d3                                           ; $47ec: $d3
	ld d, a                                          ; $47ed: $57
	ldh [rPCM34], a                                  ; $47ee: $e0 $77
	ldh a, [$57]                                     ; $47f0: $f0 $57
	and b                                            ; $47f2: $a0
	ld [hl], a                                       ; $47f3: $77
	sub b                                            ; $47f4: $90
	ld d, e                                          ; $47f5: $53
	ret nc                                           ; $47f6: $d0

	ld a, e                                          ; $47f7: $7b
	db $e3                                           ; $47f8: $e3
	ld c, e                                          ; $47f9: $4b
	ldh [rVBK], a                                    ; $47fa: $e0 $4f
	and b                                            ; $47fc: $a0
	jp c, $dbff                                      ; $47fd: $da $ff $db

	ld a, a                                          ; $4800: $7f
	ld e, a                                          ; $4801: $5f
	ld hl, sp-$25                                    ; $4802: $f8 $db
	ld e, a                                          ; $4804: $5f
	ld e, a                                          ; $4805: $5f
	ld hl, sp-$25                                    ; $4806: $f8 $db
	ld d, a                                          ; $4808: $57
	ld e, a                                          ; $4809: $5f
	ld hl, sp-$25                                    ; $480a: $f8 $db
	ld d, l                                          ; $480c: $55
	ld h, e                                          ; $480d: $63
	ld hl, sp-$27                                    ; $480e: $f8 $d9
	cp $d9                                           ; $4810: $fe $d9
	ld bc, $ffd8                                     ; $4812: $01 $d8 $ff
	db $db                                           ; $4815: $db
	ccf                                              ; $4816: $3f
	ld e, a                                          ; $4817: $5f
	ldh a, [$9e]                                     ; $4818: $f0 $9e
	inc bc                                           ; $481a: $03
	call c, Call_016_7acf                            ; $481b: $dc $cf $7a
	ld a, $da                                        ; $481e: $3e $da
	rst $38                                          ; $4820: $ff
	rst SubAFromDE                                          ; $4821: $df
	add hl, de                                       ; $4822: $19
	sbc d                                            ; $4823: $9a
	add hl, bc                                       ; $4824: $09
	add hl, hl                                       ; $4825: $29
	ld hl, $3131                                     ; $4826: $21 $31 $31
	ld e, l                                          ; $4829: $5d
	sbc b                                            ; $482a: $98
	sbc c                                            ; $482b: $99
	inc sp                                           ; $482c: $33
	daa                                              ; $482d: $27
	rrca                                             ; $482e: $0f
	daa                                              ; $482f: $27
	ld sp, $d839                                     ; $4830: $31 $39 $d8
	rst $38                                          ; $4833: $ff
	ld a, [hl]                                       ; $4834: $7e
	jr @-$21                                         ; $4835: $18 $dd

	add hl, sp                                       ; $4837: $39
	sbc [hl]                                         ; $4838: $9e
	add e                                            ; $4839: $83
	ld e, a                                          ; $483a: $5f
	ldh [$99], a                                     ; $483b: $e0 $99
	add hl, sp                                       ; $483d: $39
	add hl, hl                                       ; $483e: $29
	ld bc, $1101                                     ; $483f: $01 $01 $11
	add hl, sp                                       ; $4842: $39
	and d                                            ; $4843: $a2
	ld [bc], a                                       ; $4844: $02
	pop af                                           ; $4845: $f1
	sbc $ff                                          ; $4846: $de $ff
	sub a                                            ; $4848: $97
	add b                                            ; $4849: $80
	ret nz                                           ; $484a: $c0

	cp a                                             ; $484b: $bf
	call nz, $c4bb                                   ; $484c: $c4 $bb $c4
	cp a                                             ; $484f: $bf
	ret nz                                           ; $4850: $c0

	ld a, e                                          ; $4851: $7b
	cp $dc                                           ; $4852: $fe $dc
	rst $38                                          ; $4854: $ff
	sub a                                            ; $4855: $97
	inc bc                                           ; $4856: $03
	ld bc, $01ff                                     ; $4857: $01 $ff $01
	rst $38                                          ; $485a: $ff
	add hl, bc                                       ; $485b: $09
	rst FarCall                                          ; $485c: $f7
	add hl, bc                                       ; $485d: $09
	ld a, e                                          ; $485e: $7b
	ld a, [$ffdc]                                    ; $485f: $fa $dc $ff
	sbc h                                            ; $4862: $9c
	ret nz                                           ; $4863: $c0

	ldh [$9f], a                                     ; $4864: $e0 $9f
	ld [hl], a                                       ; $4866: $77
	db $e4                                           ; $4867: $e4
	ld c, a                                          ; $4868: $4f
	ldh [$6f], a                                     ; $4869: $e0 $6f
	cp $df                                           ; $486b: $fe $df
	rst $38                                          ; $486d: $ff
	db $dd                                           ; $486e: $dd
	or $94                                           ; $486f: $f6 $94
	and $f6                                          ; $4871: $e6 $f6
	adc $ee                                          ; $4873: $ce $ee
	inc e                                            ; $4875: $1c
	ld e, $f9                                        ; $4876: $1e $f9
	db $fc                                           ; $4878: $fc
	di                                               ; $4879: $f3
	ld hl, sp+$07                                    ; $487a: $f8 $07
	ld [hl], a                                       ; $487c: $77
	or b                                             ; $487d: $b0
	call c, Call_016_73ff                            ; $487e: $dc $ff $73
	and [hl]                                         ; $4881: $a6
	ld [hl], e                                       ; $4882: $73
	ld a, [$fc9a]                                    ; $4883: $fa $9a $fc
	rst $38                                          ; $4886: $ff
	ret nz                                           ; $4887: $c0

	rst $38                                          ; $4888: $ff
	add b                                            ; $4889: $80
	ld l, e                                          ; $488a: $6b
	cp $dd                                           ; $488b: $fe $dd
	rst $38                                          ; $488d: $ff
	sbc h                                            ; $488e: $9c
	rrca                                             ; $488f: $0f
	rst $38                                          ; $4890: $ff
	inc bc                                           ; $4891: $03
	ld e, e                                          ; $4892: $5b
	ret nz                                           ; $4893: $c0

	db $dd                                           ; $4894: $dd
	ld l, a                                          ; $4895: $6f
	add c                                            ; $4896: $81
	ld h, a                                          ; $4897: $67
	ld l, a                                          ; $4898: $6f
	ld [hl], e                                       ; $4899: $73
	ld [hl], a                                       ; $489a: $77
	jr c, jr_016_4915                                ; $489b: $38 $78

	sbc a                                            ; $489d: $9f
	ccf                                              ; $489e: $3f
	rst GetHLinHL                                          ; $489f: $cf
	rra                                              ; $48a0: $1f
	ldh [rP1], a                                     ; $48a1: $e0 $00
	ret nz                                           ; $48a3: $c0

	pop bc                                           ; $48a4: $c1
	rst JumpTable                                          ; $48a5: $c7
	rst GetHLinHL                                          ; $48a6: $cf
	pop bc                                           ; $48a7: $c1
	jp $f9f8                                         ; $48a8: $c3 $f8 $f9


	ret nz                                           ; $48ab: $c0

	ret                                              ; $48ac: $c9


	ret nz                                           ; $48ad: $c0

	ret                                              ; $48ae: $c9


	pop hl                                           ; $48af: $e1
	db $e3                                           ; $48b0: $e3
	rst $38                                          ; $48b1: $ff
	rst $38                                          ; $48b2: $ff
	adc a                                            ; $48b3: $8f
	sbc a                                            ; $48b4: $9f
	ld [hl], a                                       ; $48b5: $77
	cp $9b                                           ; $48b6: $fe $9b
	add c                                            ; $48b8: $81
	add e                                            ; $48b9: $83
	adc b                                            ; $48ba: $88
	sbc c                                            ; $48bb: $99
	ld [hl], a                                       ; $48bc: $77
	cp $df                                           ; $48bd: $fe $df
	rst $38                                          ; $48bf: $ff
	sbc c                                            ; $48c0: $99
	ldh a, [$f1]                                     ; $48c1: $f0 $f1
	ldh [$e1], a                                     ; $48c3: $e0 $e1
	ldh [$e9], a                                     ; $48c5: $e0 $e9
	ld a, e                                          ; $48c7: $7b
	ldh [c], a                                       ; $48c8: $e2
	sbc d                                            ; $48c9: $9a
	ret nz                                           ; $48ca: $c0

	ld hl, sp-$07                                    ; $48cb: $f8 $f9
	ld hl, sp-$07                                    ; $48cd: $f8 $f9
	db $dd                                           ; $48cf: $dd
	rst $38                                          ; $48d0: $ff
	ld a, a                                          ; $48d1: $7f
	ret nc                                           ; $48d2: $d0

	ld [hl], a                                       ; $48d3: $77
	call z, $fe6f                                    ; $48d4: $cc $6f $fe

jr_016_48d7:
	rst SubAFromDE                                          ; $48d7: $df
	rst $38                                          ; $48d8: $ff
	ld a, a                                          ; $48d9: $7f
	call z, $e47f                                    ; $48da: $cc $7f $e4
	ld a, a                                          ; $48dd: $7f
	add sp, -$63                                     ; $48de: $e8 $9d
	pop af                                           ; $48e0: $f1
	di                                               ; $48e1: $f3
	ld [hl], a                                       ; $48e2: $77
	cp [hl]                                          ; $48e3: $be
	ld [hl], a                                       ; $48e4: $77
	ret nz                                           ; $48e5: $c0

	ld [hl], a                                       ; $48e6: $77
	jp c, $e07f                                      ; $48e7: $da $7f $e0

	ld l, a                                          ; $48ea: $6f
	jp nz, $f87f                                     ; $48eb: $c2 $7f $f8

	db $db                                           ; $48ee: $db
	rst $38                                          ; $48ef: $ff
	ld h, a                                          ; $48f0: $67
	or d                                             ; $48f1: $b2
	ld [hl], a                                       ; $48f2: $77
	or b                                             ; $48f3: $b0
	ld [hl], a                                       ; $48f4: $77
	ret nc                                           ; $48f5: $d0

	ld a, a                                          ; $48f6: $7f
	cp $7f                                           ; $48f7: $fe $7f
	ret nc                                           ; $48f9: $d0

	sbc l                                            ; $48fa: $9d
	db $e3                                           ; $48fb: $e3
	rst SubAFromBC                                          ; $48fc: $e7
	ld [hl], a                                       ; $48fd: $77
	cp b                                             ; $48fe: $b8
	ld l, a                                          ; $48ff: $6f
	jr nc, jr_016_48d7                               ; $4900: $30 $d5

	or $d1                                           ; $4902: $f6 $d1
	rst $38                                          ; $4904: $ff

jr_016_4905:
	ld a, a                                          ; $4905: $7f
	ret c                                            ; $4906: $d8

	ld a, a                                          ; $4907: $7f
	cp $9d                                           ; $4908: $fe $9d
	add b                                            ; $490a: $80
	add c                                            ; $490b: $81
	ld [hl], a                                       ; $490c: $77
	ld a, [$fe7f]                                    ; $490d: $fa $7f $fe
	ld a, a                                          ; $4910: $7f
	ld [hl], h                                       ; $4911: $74
	db $dd                                           ; $4912: $dd
	rst $38                                          ; $4913: $ff
	ld a, a                                          ; $4914: $7f

jr_016_4915:
	ld d, d                                          ; $4915: $52
	ld a, a                                          ; $4916: $7f
	cp b                                             ; $4917: $b8
	adc a                                            ; $4918: $8f
	jp $e1c7                                         ; $4919: $c3 $c7 $e1


	db $e3                                           ; $491c: $e3
	adc b                                            ; $491d: $88
	sbc c                                            ; $491e: $99
	pop bc                                           ; $491f: $c1
	jp rIE                                         ; $4920: $c3 $ff $ff


	pop af                                           ; $4923: $f1
	di                                               ; $4924: $f3
	pop hl                                           ; $4925: $e1
	db $e3                                           ; $4926: $e3
	pop af                                           ; $4927: $f1
	di                                               ; $4928: $f3
	ld l, a                                          ; $4929: $6f
	cp $7f                                           ; $492a: $fe $7f
	ld d, [hl]                                       ; $492c: $56
	ld l, a                                          ; $492d: $6f
	jr nz, jr_016_4905                               ; $492e: $20 $d5

	ld l, a                                          ; $4930: $6f
	ld h, [hl]                                       ; $4931: $66
	sub b                                            ; $4932: $90
	sbc h                                            ; $4933: $9c
	call z, $c8b7                                    ; $4934: $cc $b7 $c8
	ld l, d                                          ; $4937: $6a
	or b                                             ; $4938: $b0
	ld e, [hl]                                       ; $4939: $5e
	or d                                             ; $493a: $b2
	ld l, [hl]                                       ; $493b: $6e
	sub b                                            ; $493c: $90
	ld h, [hl]                                       ; $493d: $66
	call nc, $d06e                                   ; $493e: $d4 $6e $d0
	ld a, [hl]                                       ; $4941: $7e
	xor [hl]                                         ; $4942: $ae
	ld a, e                                          ; $4943: $7b
	dec [hl]                                         ; $4944: $35
	sbc c                                            ; $4945: $99
	db $fc                                           ; $4946: $fc
	inc e                                            ; $4947: $1c
	ld e, $ce                                        ; $4948: $1e $ce
	xor $e6                                          ; $494a: $ee $e6
	call c, Call_016_5ef6                            ; $494c: $dc $f6 $5e
	xor b                                            ; $494f: $a8
	db $db                                           ; $4950: $db
	rst $38                                          ; $4951: $ff
	ld a, [hl]                                       ; $4952: $7e
	adc $7e                                          ; $4953: $ce $7e
	jp z, $c67e                                      ; $4955: $ca $7e $c6

	ld a, [hl]                                       ; $4958: $7e
	jp nz, $be7e                                     ; $4959: $c2 $7e $be

	ld a, [hl]                                       ; $495c: $7e
	cp d                                             ; $495d: $ba
	ld l, a                                          ; $495e: $6f
	and b                                            ; $495f: $a0
	sbc e                                            ; $4960: $9b
	ei                                               ; $4961: $fb
	rst SubAFromBC                                          ; $4962: $e7
	ei                                               ; $4963: $fb
	rst JumpTable                                          ; $4964: $c7
	ld a, e                                          ; $4965: $7b
	db $fc                                           ; $4966: $fc
	ld l, e                                          ; $4967: $6b
	cp $df                                           ; $4968: $fe $df
	rst $38                                          ; $496a: $ff
	sub d                                            ; $496b: $92
	db $fd                                           ; $496c: $fd
	add e                                            ; $496d: $83
	sbc $39                                          ; $496e: $de $39
	cp $f1                                           ; $4970: $fe $f1
	db $fd                                           ; $4972: $fd
	jp $87fb                                         ; $4973: $c3 $fb $87


	rst AddAOntoHL                                          ; $4976: $ef
	rra                                              ; $4977: $1f
	cp $7b                                           ; $4978: $fe $7b
	sbc l                                            ; $497a: $9d
	sub c                                            ; $497b: $91
	cp $81                                           ; $497c: $fe $81
	db $fd                                           ; $497e: $fd
	di                                               ; $497f: $f3
	ei                                               ; $4980: $fb
	rst SubAFromBC                                          ; $4981: $e7
	db $fd                                           ; $4982: $fd
	jp $f9fe                                         ; $4983: $c3 $fe $f9


	sbc $39                                          ; $4986: $de $39
	db $fd                                           ; $4988: $fd
	add e                                            ; $4989: $83
	ld a, e                                          ; $498a: $7b
	ldh [hDisp1_BGP], a                                     ; $498b: $e0 $92
	db $e3                                           ; $498d: $e3
	db $ed                                           ; $498e: $ed
	db $d3                                           ; $498f: $d3
	db $dd                                           ; $4990: $dd
	or e                                             ; $4991: $b3
	cp l                                             ; $4992: $bd
	ld [hl], e                                       ; $4993: $73
	cp $01                                           ; $4994: $fe $01
	db $fd                                           ; $4996: $fd
	di                                               ; $4997: $f3
	db $fd                                           ; $4998: $fd
	di                                               ; $4999: $f3
	ld a, e                                          ; $499a: $7b
	ldh a, [$98]                                     ; $499b: $f0 $98
	inc bc                                           ; $499d: $03
	rst SubAFromDE                                          ; $499e: $df
	ccf                                              ; $499f: $3f
	db $fd                                           ; $49a0: $fd
	inc bc                                           ; $49a1: $03
	cp $f9                                           ; $49a2: $fe $f9
	ld h, e                                          ; $49a4: $63
	ldh [$9c], a                                     ; $49a5: $e0 $9c
	jp $9fef                                         ; $49a7: $c3 $ef $9f


	ld [hl], a                                       ; $49aa: $77
	xor $7f                                          ; $49ab: $ee $7f
	ldh a, [c]                                       ; $49ad: $f2
	ld l, a                                          ; $49ae: $6f
	ldh a, [$7f]                                     ; $49af: $f0 $7f
	ret c                                            ; $49b1: $d8

	ld a, e                                          ; $49b2: $7b
	ld hl, sp+$7b                                    ; $49b3: $f8 $7b
	cp [hl]                                          ; $49b5: $be
	sbc l                                            ; $49b6: $9d
	rst FarCall                                          ; $49b7: $f7
	rst GetHLinHL                                          ; $49b8: $cf
	ld [hl], a                                       ; $49b9: $77
	cp $7b                                           ; $49ba: $fe $7b
	sub b                                            ; $49bc: $90
	sub h                                            ; $49bd: $94
	add a                                            ; $49be: $87
	db $dd                                           ; $49bf: $dd
	dec sp                                           ; $49c0: $3b
	db $ed                                           ; $49c1: $ed
	dec de                                           ; $49c2: $1b
	ld sp, hl                                        ; $49c3: $f9
	add a                                            ; $49c4: $87
	cp [hl]                                          ; $49c5: $be
	ld h, c                                          ; $49c6: $61
	cp [hl]                                          ; $49c7: $be
	ld a, c                                          ; $49c8: $79
	ld [hl], e                                       ; $49c9: $73
	ret nc                                           ; $49ca: $d0

	ld a, e                                          ; $49cb: $7b
	sub b                                            ; $49cc: $90
	ld a, e                                          ; $49cd: $7b
	adc [hl]                                         ; $49ce: $8e
	sbc h                                            ; $49cf: $9c
	add c                                            ; $49d0: $81
	cp $f9                                           ; $49d1: $fe $f9
	ld a, e                                          ; $49d3: $7b
	jp c, $879e                                      ; $49d4: $da $9e $87

	ld [hl], a                                       ; $49d7: $77
	ret nz                                           ; $49d8: $c0

	sbc l                                            ; $49d9: $9d
	xor $99                                          ; $49da: $ee $99
	ld [hl], a                                       ; $49dc: $77
	cp $7f                                           ; $49dd: $fe $7f
	xor $77                                          ; $49df: $ee $77
	ld a, [$e077]                                    ; $49e1: $fa $77 $e0
	ld [hl], a                                       ; $49e4: $77
	ld hl, sp+$67                                    ; $49e5: $f8 $67
	ld a, [$e067]                                    ; $49e7: $fa $67 $e0
	ld a, a                                          ; $49ea: $7f
	sbc h                                            ; $49eb: $9c
	ld [hl], e                                       ; $49ec: $73
	ldh a, [$7a]                                     ; $49ed: $f0 $7a
	cp [hl]                                          ; $49ef: $be
	ld l, a                                          ; $49f0: $6f
	and $6f                                          ; $49f1: $e6 $6f
	cp $6f                                           ; $49f3: $fe $6f
	or b                                             ; $49f5: $b0
	ld a, a                                          ; $49f6: $7f
	db $e4                                           ; $49f7: $e4
	ld a, a                                          ; $49f8: $7f
	cp $67                                           ; $49f9: $fe $67
	ld a, [$4077]                                    ; $49fb: $fa $77 $40
	ld e, a                                          ; $49fe: $5f
	ldh a, [$7f]                                     ; $49ff: $f0 $7f
	cp $5b                                           ; $4a01: $fe $5b
	ret nz                                           ; $4a03: $c0

	sbc [hl]                                         ; $4a04: $9e
	sub c                                            ; $4a05: $91
	ld l, a                                          ; $4a06: $6f
	ret nz                                           ; $4a07: $c0

	ld d, a                                          ; $4a08: $57
	sub d                                            ; $4a09: $92
	ld [hl], a                                       ; $4a0a: $77
	sub b                                            ; $4a0b: $90
	ld a, a                                          ; $4a0c: $7f
	or $5e                                           ; $4a0d: $f6 $5e
	ldh a, [c]                                       ; $4a0f: $f2
	ld a, a                                          ; $4a10: $7f
	db $f4                                           ; $4a11: $f4
	ld l, a                                          ; $4a12: $6f
	nop                                              ; $4a13: $00
	ld a, a                                          ; $4a14: $7f
	cp $9d                                           ; $4a15: $fe $9d
	db $dd                                           ; $4a17: $dd
	inc sp                                           ; $4a18: $33
	ld [hl], a                                       ; $4a19: $77
	cp $77                                           ; $4a1a: $fe $77
	ld h, b                                          ; $4a1c: $60
	ld a, a                                          ; $4a1d: $7f
	ld d, h                                          ; $4a1e: $54
	ld a, e                                          ; $4a1f: $7b
	ld hl, sp-$6c                                    ; $4a20: $f8 $94
	rlca                                             ; $4a22: $07
	rst FarCall                                          ; $4a23: $f7
	rrca                                             ; $4a24: $0f
	ei                                               ; $4a25: $fb
	rlca                                             ; $4a26: $07
	db $dd                                           ; $4a27: $dd
	inc hl                                           ; $4a28: $23
	rst SubAFromDE                                          ; $4a29: $df
	ld sp, rIE                                     ; $4a2a: $31 $ff $ff
	ld l, a                                          ; $4a2d: $6f
	xor b                                            ; $4a2e: $a8
	ld l, a                                          ; $4a2f: $6f
	cp $77                                           ; $4a30: $fe $77
	ret nc                                           ; $4a32: $d0

	ld a, a                                          ; $4a33: $7f
	ldh [$9b], a                                     ; $4a34: $e0 $9b
	xor $11                                          ; $4a36: $ee $11
	cp $01                                           ; $4a38: $fe $01
	ld a, e                                          ; $4a3a: $7b
	ld a, [bc]                                       ; $4a3b: $0a
	sbc [hl]                                         ; $4a3c: $9e
	add hl, hl                                       ; $4a3d: $29
	ld [hl], a                                       ; $4a3e: $77
	jr z, @+$7d                                      ; $4a3f: $28 $7b

	and b                                            ; $4a41: $a0
	sub e                                            ; $4a42: $93
	add hl, de                                       ; $4a43: $19
	xor $19                                          ; $4a44: $ee $19
	or $09                                           ; $4a46: $f6 $09
	sub $29                                          ; $4a48: $d6 $29
	sbc $21                                          ; $4a4a: $de $21
	sbc $31                                          ; $4a4c: $de $31
	sbc $7b                                          ; $4a4e: $de $7b
	ret nc                                           ; $4a50: $d0

	ld a, e                                          ; $4a51: $7b
	nop                                              ; $4a52: $00
	ld [hl], e                                       ; $4a53: $73
	or h                                             ; $4a54: $b4
	ld h, a                                          ; $4a55: $67
	or b                                             ; $4a56: $b0
	ld a, e                                          ; $4a57: $7b
	cp b                                             ; $4a58: $b8
	ld l, a                                          ; $4a59: $6f
	db $f4                                           ; $4a5a: $f4
	sbc d                                            ; $4a5b: $9a
	rlca                                             ; $4a5c: $07
	rst SubAFromDE                                          ; $4a5d: $df
	ccf                                              ; $4a5e: $3f
	rst SubAFromDE                                          ; $4a5f: $df
	ccf                                              ; $4a60: $3f
	ld d, a                                          ; $4a61: $57
	nop                                              ; $4a62: $00
	sbc l                                            ; $4a63: $9d
	rst SubAFromBC                                          ; $4a64: $e7
	sbc b                                            ; $4a65: $98
	ld e, a                                          ; $4a66: $5f
	jr nz, @+$69                                     ; $4a67: $20 $67

	ld a, [de]                                       ; $4a69: $1a
	ld l, a                                          ; $4a6a: $6f
	ldh [$7b], a                                     ; $4a6b: $e0 $7b
	jr nc, jr_016_4ae9                               ; $4a6d: $30 $7a

	ld [hl], b                                       ; $4a6f: $70
	ld l, a                                          ; $4a70: $6f
	ld b, b                                          ; $4a71: $40
	ld d, a                                          ; $4a72: $57
	ld d, b                                          ; $4a73: $50
	halt                                             ; $4a74: $76
	ld b, b                                          ; $4a75: $40
	ld e, [hl]                                       ; $4a76: $5e
	ldh a, [c]                                       ; $4a77: $f2
	ld l, a                                          ; $4a78: $6f
	ldh [rPCM34], a                                  ; $4a79: $e0 $77
	ld a, d                                          ; $4a7b: $7a
	ld [hl], a                                       ; $4a7c: $77
	cp $99                                           ; $4a7d: $fe $99

Jump_016_4a7f:
	db $ed                                           ; $4a7f: $ed
	sub e                                            ; $4a80: $93
	db $fd                                           ; $4a81: $fd
	add e                                            ; $4a82: $83
	ei                                               ; $4a83: $fb
	rst JumpTable                                          ; $4a84: $c7
	ld [hl], a                                       ; $4a85: $77
	ldh a, [$7f]                                     ; $4a86: $f0 $7f
	ld [hl], h                                       ; $4a88: $74
	ld [hl], a                                       ; $4a89: $77
	ld h, b                                          ; $4a8a: $60
	ld a, a                                          ; $4a8b: $7f
	cp $7f                                           ; $4a8c: $fe $7f
	ld e, b                                          ; $4a8e: $58
	ld [hl], a                                       ; $4a8f: $77
	ld h, b                                          ; $4a90: $60
	ld [hl], a                                       ; $4a91: $77
	ld d, b                                          ; $4a92: $50
	ld [hl], a                                       ; $4a93: $77
	and $7b                                          ; $4a94: $e6 $7b
	sbc [hl]                                         ; $4a96: $9e
	ld l, e                                          ; $4a97: $6b
	ldh a, [$67]                                     ; $4a98: $f0 $67
	xor $77                                          ; $4a9a: $ee $77
	cp $76                                           ; $4a9c: $fe $76
	ld b, b                                          ; $4a9e: $40
	ld a, c                                          ; $4a9f: $79
	ldh a, [c]                                       ; $4aa0: $f2
	sbc d                                            ; $4aa1: $9a
	db $e3                                           ; $4aa2: $e3
	ei                                               ; $4aa3: $fb
	rst JumpTable                                          ; $4aa4: $c7
	rst FarCall                                          ; $4aa5: $f7
	adc a                                            ; $4aa6: $8f
	ld l, l                                          ; $4aa7: $6d
	ldh a, [rPCM12]                                  ; $4aa8: $f0 $76
	ldh a, [c]                                       ; $4aaa: $f2
	sbc e                                            ; $4aab: $9b
	db $fd                                           ; $4aac: $fd
	ei                                               ; $4aad: $fb
	ei                                               ; $4aae: $fb
	rst FarCall                                          ; $4aaf: $f7
	rst GetHLinHL                                          ; $4ab0: $cf
	rst $38                                          ; $4ab1: $ff
	ld l, [hl]                                       ; $4ab2: $6e
	and b                                            ; $4ab3: $a0
	ld a, h                                          ; $4ab4: $7c
	jp nc, $fc93                                     ; $4ab5: $d2 $93 $fc

	db $fd                                           ; $4ab8: $fd
	db $e4                                           ; $4ab9: $e4
	db $ed                                           ; $4aba: $ed
	call nz, $81cd                                   ; $4abb: $c4 $cd $81
	add e                                            ; $4abe: $83
	rst JumpTable                                          ; $4abf: $c7
	rst GetHLinHL                                          ; $4ac0: $cf

jr_016_4ac1:
	rst SubAFromBC                                          ; $4ac1: $e7
	rst AddAOntoHL                                          ; $4ac2: $ef
	ld a, e                                          ; $4ac3: $7b
	ld [hl], b                                       ; $4ac4: $70
	sbc b                                            ; $4ac5: $98
	ld de, $76bb                                     ; $4ac6: $11 $bb $76
	cp e                                             ; $4ac9: $bb
	halt                                             ; $4aca: $76
	db $eb                                           ; $4acb: $eb
	ld d, $77                                        ; $4acc: $16 $77
	ld a, [$f47f]                                    ; $4ace: $fa $7f $f4
	ld l, [hl]                                       ; $4ad1: $6e
	db $10                                           ; $4ad2: $10
	ld a, [hl]                                       ; $4ad3: $7e
	xor $7a                                          ; $4ad4: $ee $7a
	ldh a, [$7e]                                     ; $4ad6: $f0 $7e
	ldh a, [c]                                       ; $4ad8: $f2
	ld [hl], c                                       ; $4ad9: $71
	ldh [rSB], a                                     ; $4ada: $e0 $01
	add b                                            ; $4adc: $80
	ld bc, $0180                                     ; $4add: $01 $80 $01
	add b                                            ; $4ae0: $80
	ld bc, $5d80                                     ; $4ae1: $01 $80 $5d
	add b                                            ; $4ae4: $80
	ld a, [de]                                       ; $4ae5: $1a
	add h                                            ; $4ae6: $84
	ret                                              ; $4ae7: $c9


	rst $38                                          ; $4ae8: $ff

jr_016_4ae9:
	rst SubAFromDE                                          ; $4ae9: $df
	inc bc                                           ; $4aea: $03
	db $dd                                           ; $4aeb: $dd
	rlca                                             ; $4aec: $07
	rst SubAFromDE                                          ; $4aed: $df
	rrca                                             ; $4aee: $0f
	db $db                                           ; $4aef: $db
	rst $38                                          ; $4af0: $ff
	sbc l                                            ; $4af1: $9d
	or $fb                                           ; $4af2: $f6 $fb
	jp c, $9eff                                      ; $4af4: $da $ff $9e

	cp $dd                                           ; $4af7: $fe $dd
	rst $38                                          ; $4af9: $ff
	sbc e                                            ; $4afa: $9b
	cp a                                             ; $4afb: $bf
	ld a, a                                          ; $4afc: $7f
	ld a, [hl]                                       ; $4afd: $7e
	ld [hl], c                                       ; $4afe: $71
	ld d, a                                          ; $4aff: $57
	ldh a, [$df]                                     ; $4b00: $f0 $df
	rst $38                                          ; $4b02: $ff
	sbc l                                            ; $4b03: $9d
	rrca                                             ; $4b04: $0f
	pop hl                                           ; $4b05: $e1
	jp c, $9eff                                      ; $4b06: $da $ff $9e

	ld a, [hl]                                       ; $4b09: $7e
	jp c, $9eff                                      ; $4b0a: $da $ff $9e

	rra                                              ; $4b0d: $1f
	reti                                             ; $4b0e: $d9


	rst $38                                          ; $4b0f: $ff
	sub d                                            ; $4b10: $92
	ld h, b                                          ; $4b11: $60
	ldh [$c1], a                                     ; $4b12: $e0 $c1
	pop bc                                           ; $4b14: $c1
	jp $cf83                                         ; $4b15: $c3 $83 $cf


	rst $38                                          ; $4b18: $ff
	jr nz, jr_016_4b5b                               ; $4b19: $20 $40

	ld b, b                                          ; $4b1b: $40
	add b                                            ; $4b1c: $80
	add b                                            ; $4b1d: $80
	cp $9e                                           ; $4b1e: $fe $9e
	ld a, a                                          ; $4b20: $7f
	jp c, $dfff                                      ; $4b21: $da $ff $df

	db $10                                           ; $4b24: $10
	rst SubAFromDE                                          ; $4b25: $df
	jr nz, jr_016_4ac1                               ; $4b26: $20 $99

	ld b, b                                          ; $4b28: $40
	ld b, c                                          ; $4b29: $41
	add c                                            ; $4b2a: $81
	jp nz, $c701                                     ; $4b2b: $c2 $01 $c7

	db $db                                           ; $4b2e: $db
	rst $38                                          ; $4b2f: $ff
	sbc $01                                          ; $4b30: $de $01
	rst SubAFromDE                                          ; $4b32: $df
	ld [bc], a                                       ; $4b33: $02
	rst SubAFromDE                                          ; $4b34: $df
	inc b                                            ; $4b35: $04
	sbc d                                            ; $4b36: $9a
	add hl, bc                                       ; $4b37: $09
	ld bc, $1f0f                                     ; $4b38: $01 $0f $1f
	ccf                                              ; $4b3b: $3f
	ld [hl], a                                       ; $4b3c: $77
	call c, $f177                                    ; $4b3d: $dc $77 $f1
	ld a, e                                          ; $4b40: $7b
	ldh a, [$9e]                                     ; $4b41: $f0 $9e
	ld [$04dd], sp                                   ; $4b43: $08 $dd $04
	sbc e                                            ; $4b46: $9b
	ld [$4f09], sp                                   ; $4b47: $08 $09 $4f
	rst $38                                          ; $4b4a: $ff
	ld [hl], e                                       ; $4b4b: $73
	ld hl, sp-$21                                    ; $4b4c: $f8 $df
	ld [$ca7f], sp                                   ; $4b4e: $08 $7f $ca
	sbc $10                                          ; $4b51: $de $10
	sbc e                                            ; $4b53: $9b
	jr jr_016_4b72                                   ; $4b54: $18 $1c

	rst $38                                          ; $4b56: $ff
	rst $38                                          ; $4b57: $ff
	ld [hl], a                                       ; $4b58: $77
	ld hl, sp+$77                                    ; $4b59: $f8 $77

jr_016_4b5b:
	cp h                                             ; $4b5b: $bc
	sbc $f0                                          ; $4b5c: $de $f0
	rst SubAFromDE                                          ; $4b5e: $df
	ld hl, sp-$64                                    ; $4b5f: $f8 $9c
	db $fc                                           ; $4b61: $fc
	rst $38                                          ; $4b62: $ff
	rst $38                                          ; $4b63: $ff
	sbc $90                                          ; $4b64: $de $90
	sbc $20                                          ; $4b66: $de $20
	sbc l                                            ; $4b68: $9d
	ret nz                                           ; $4b69: $c0

	nop                                              ; $4b6a: $00
	ld [hl], e                                       ; $4b6b: $73
	ld l, e                                          ; $4b6c: $6b
	sbc h                                            ; $4b6d: $9c
	db $fd                                           ; $4b6e: $fd
	ld a, [$6ff5]                                    ; $4b6f: $fa $f5 $6f

jr_016_4b72:
	ld h, d                                          ; $4b72: $62
	sub l                                            ; $4b73: $95
	db $fc                                           ; $4b74: $fc
	ld a, [$fdfa]                                    ; $4b75: $fa $fa $fd
	db $e3                                           ; $4b78: $e3
	sbc h                                            ; $4b79: $9c
	pop bc                                           ; $4b7a: $c1
	sbc e                                            ; $4b7b: $9b
	ld h, h                                          ; $4b7c: $64
	cp b                                             ; $4b7d: $b8
	sbc $ff                                          ; $4b7e: $de $ff
	adc c                                            ; $4b80: $89
	db $e3                                           ; $4b81: $e3
	rrca                                             ; $4b82: $0f
	ld b, $1c                                        ; $4b83: $06 $1c
	ld a, b                                          ; $4b85: $78
	ld c, l                                          ; $4b86: $4d
	dec sp                                           ; $4b87: $3b
	rst $38                                          ; $4b88: $ff
	db $fc                                           ; $4b89: $fc
	rst SubAFromBC                                          ; $4b8a: $e7
	sbc b                                            ; $4b8b: $98
	ld b, a                                          ; $4b8c: $47
	ld c, $ff                                        ; $4b8d: $0e $ff
	rst $38                                          ; $4b8f: $ff
	db $fc                                           ; $4b90: $fc
	ldh [hDisp0_OBP1], a                                     ; $4b91: $e0 $87
	jr @+$43                                         ; $4b93: $18 $41

	rrca                                             ; $4b95: $0f
	push hl                                          ; $4b96: $e5
	ld [hl], a                                       ; $4b97: $77
	ld d, e                                          ; $4b98: $53
	adc d                                            ; $4b99: $8a
	ld a, a                                          ; $4b9a: $7f
	ldh a, [rIF]                                     ; $4b9b: $f0 $0f
	sbc b                                            ; $4b9d: $98
	rst $38                                          ; $4b9e: $ff
	rrca                                             ; $4b9f: $0f
	pop af                                           ; $4ba0: $f1
	nop                                              ; $4ba1: $00
	rrca                                             ; $4ba2: $0f
	rst $38                                          ; $4ba3: $ff
	ldh a, [$f7]                                     ; $4ba4: $f0 $f7
	adc l                                            ; $4ba6: $8d
	ld hl, sp-$02                                    ; $4ba7: $f8 $fe
	rst $38                                          ; $4ba9: $ff
	ld sp, hl                                        ; $4baa: $f9
	db $fc                                           ; $4bab: $fc
	rra                                              ; $4bac: $1f
	rrca                                             ; $4bad: $0f
	di                                               ; $4bae: $f3
	ld [hl], a                                       ; $4baf: $77
	dec sp                                           ; $4bb0: $3b
	sbc [hl]                                         ; $4bb1: $9e
	inc bc                                           ; $4bb2: $03
	ld a, e                                          ; $4bb3: $7b
	or b                                             ; $4bb4: $b0
	sbc c                                            ; $4bb5: $99
	ld a, a                                          ; $4bb6: $7f
	ccf                                              ; $4bb7: $3f
	sbc a                                            ; $4bb8: $9f
	rst AddAOntoHL                                          ; $4bb9: $ef

jr_016_4bba:
	inc bc                                           ; $4bba: $03
	ret z                                            ; $4bbb: $c8

	jp c, $9eff                                      ; $4bbc: $da $ff $9e

	ccf                                              ; $4bbf: $3f
	jp c, $9eff                                      ; $4bc0: $da $ff $9e

	ld l, a                                          ; $4bc3: $6f
	reti                                             ; $4bc4: $d9


	rst $38                                          ; $4bc5: $ff
	rst SubAFromDE                                          ; $4bc6: $df
	rrca                                             ; $4bc7: $0f
	db $dd                                           ; $4bc8: $dd
	rlca                                             ; $4bc9: $07
	rst SubAFromDE                                          ; $4bca: $df
	inc bc                                           ; $4bcb: $03
	cp $dc                                           ; $4bcc: $fe $dc
	ld bc, $c0de                                     ; $4bce: $01 $de $c0
	call c, $dce0                                    ; $4bd1: $dc $e0 $dc
	ret nz                                           ; $4bd4: $c0

	sbc $e0                                          ; $4bd5: $de $e0
	rst SubAFromDE                                          ; $4bd7: $df
	rra                                              ; $4bd8: $1f
	sbc $3f                                          ; $4bd9: $de $3f
	rst SubAFromDE                                          ; $4bdb: $df
	ld a, a                                          ; $4bdc: $7f
	ld a, a                                          ; $4bdd: $7f
	jr nc, jr_016_4bba                               ; $4bde: $30 $da

	inc bc                                           ; $4be0: $03
	db $dd                                           ; $4be1: $dd
	db $fc                                           ; $4be2: $fc
	rst SubAFromDE                                          ; $4be3: $df
	ld a, b                                          ; $4be4: $78
	adc e                                            ; $4be5: $8b
	jr c, jr_016_4c18                                ; $4be6: $38 $30

	db $fc                                           ; $4be8: $fc
	ld hl, sp+$78                                    ; $4be9: $f8 $78
	ld [hl], b                                       ; $4beb: $70
	ld [hl], b                                       ; $4bec: $70
	jr nz, jr_016_4c0f                               ; $4bed: $20 $20

	nop                                              ; $4bef: $00
	add hl, de                                       ; $4bf0: $19
	jr @+$0a                                         ; $4bf1: $18 $08

	inc c                                            ; $4bf3: $0c
	inc c                                            ; $4bf4: $0c
	adc h                                            ; $4bf5: $8c
	adc [hl]                                         ; $4bf6: $8e
	sbc [hl]                                         ; $4bf7: $9e
	db $10                                           ; $4bf8: $10
	db $10                                           ; $4bf9: $10
	sbc $08                                          ; $4bfa: $de $08
	rst SubAFromDE                                          ; $4bfc: $df
	adc b                                            ; $4bfd: $88
	add b                                            ; $4bfe: $80
	sub b                                            ; $4bff: $90
	ld [$c9e4], a                                    ; $4c00: $ea $e4 $c9
	reti                                             ; $4c03: $d9


	sub d                                            ; $4c04: $92
	or e                                             ; $4c05: $b3
	xor e                                            ; $4c06: $ab
	ld l, e                                          ; $4c07: $6b
	push af                                          ; $4c08: $f5
	ei                                               ; $4c09: $fb
	rst FarCall                                          ; $4c0a: $f7
	rst SubAFromBC                                          ; $4c0b: $e7
	rst AddAOntoHL                                          ; $4c0c: $ef
	adc $d5                                          ; $4c0d: $ce $d5

jr_016_4c0f:
	sub l                                            ; $4c0f: $95
	ld [hl], h                                       ; $4c10: $74
	xor l                                            ; $4c11: $ad
	ld a, a                                          ; $4c12: $7f
	ld a, d                                          ; $4c13: $7a
	push hl                                          ; $4c14: $e5
	ld a, [$eaf5]                                    ; $4c15: $fa $f5 $ea

jr_016_4c18:
	ldh a, [$e4]                                     ; $4c18: $f0 $e4
	ret                                              ; $4c1a: $c9


	db $d3                                           ; $4c1b: $d3
	and [hl]                                         ; $4c1c: $a6
	db $ec                                           ; $4c1d: $ec
	add b                                            ; $4c1e: $80
	ld e, b                                          ; $4c1f: $58
	pop af                                           ; $4c20: $f1
	ld [hl], c                                       ; $4c21: $71
	call z, Call_016_4010                            ; $4c22: $cc $10 $40
	inc b                                            ; $4c25: $04
	ld d, b                                          ; $4c26: $50
	and h                                            ; $4c27: $a4
	inc h                                            ; $4c28: $24
	ld a, $f0                                        ; $4c29: $3e $f0
	ldh [$80], a                                     ; $4c2b: $e0 $80
	nop                                              ; $4c2d: $00
	inc b                                            ; $4c2e: $04
	add hl, bc                                       ; $4c2f: $09
	add hl, bc                                       ; $4c30: $09
	ld sp, $0608                                     ; $4c31: $31 $08 $06
	adc c                                            ; $4c34: $89
	and h                                            ; $4c35: $a4
	halt                                             ; $4c36: $76
	ld h, l                                          ; $4c37: $65
	add hl, de                                       ; $4c38: $19
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	ld [$4706], sp                                   ; $4c3b: $08 $06 $47
	add b                                            ; $4c3e: $80
	inc hl                                           ; $4c3f: $23
	inc sp                                           ; $4c40: $33
	inc sp                                           ; $4c41: $33
	call nz, $2af0                                   ; $4c42: $c4 $f0 $2a
	ld d, l                                          ; $4c45: $55
	ld a, [hl+]                                      ; $4c46: $2a
	push de                                          ; $4c47: $d5
	xor [hl]                                         ; $4c48: $ae
	ld d, [hl]                                       ; $4c49: $56
	ld bc, $1100                                     ; $4c4a: $01 $00 $11
	adc b                                            ; $4c4d: $88
	ld c, h                                          ; $4c4e: $4c
	ld h, [hl]                                       ; $4c4f: $66
	inc sp                                           ; $4c50: $33
	cp e                                             ; $4c51: $bb
	halt                                             ; $4c52: $76
	ld de, $abb4                                     ; $4c53: $11 $b4 $ab
	ld d, [hl]                                       ; $4c56: $56
	cp l                                             ; $4c57: $bd
	xor d                                            ; $4c58: $aa
	sbc $8f                                          ; $4c59: $de $8f
	ld h, a                                          ; $4c5b: $67
	dec de                                           ; $4c5c: $1b
	db $dd                                           ; $4c5d: $dd
	sub e                                            ; $4c5e: $93
	db $ed                                           ; $4c5f: $ed
	ld h, [hl]                                       ; $4c60: $66

jr_016_4c61:
	ld [hl], a                                       ; $4c61: $77
	inc sp                                           ; $4c62: $33
	rra                                              ; $4c63: $1f
	rst $38                                          ; $4c64: $ff
	ccf                                              ; $4c65: $3f
	rra                                              ; $4c66: $1f
	sbc a                                            ; $4c67: $9f
	ld c, a                                          ; $4c68: $4f
	xor a                                            ; $4c69: $af
	cpl                                              ; $4c6a: $2f
	db $db                                           ; $4c6b: $db
	rst $38                                          ; $4c6c: $ff
	ld a, a                                          ; $4c6d: $7f
	ld l, b                                          ; $4c6e: $68
	sbc d                                            ; $4c6f: $9a
	inc b                                            ; $4c70: $04
	ld [bc], a                                       ; $4c71: $02
	ld [bc], a                                       ; $4c72: $02
	ld bc, $fe01                                     ; $4c73: $01 $01 $fe
	ld h, a                                          ; $4c76: $67
	ld hl, sp-$21                                    ; $4c77: $f8 $df
	ld [$04df], sp                                   ; $4c79: $08 $df $04
	ld [hl], a                                       ; $4c7c: $77
	push af                                          ; $4c7d: $f5
	ld h, a                                          ; $4c7e: $67
	ld hl, sp-$22                                    ; $4c7f: $f8 $de
	jr nz, jr_016_4c61                               ; $4c81: $20 $de

	db $10                                           ; $4c83: $10
	rst SubAFromDE                                          ; $4c84: $df
	ld [$f867], sp                                   ; $4c85: $08 $67 $f8
	sbc e                                            ; $4c88: $9b
	add d                                            ; $4c89: $82
	ld b, c                                          ; $4c8a: $41
	ld b, b                                          ; $4c8b: $40
	ld b, b                                          ; $4c8c: $40
	db $dd                                           ; $4c8d: $dd
	jr nz, jr_016_4cf7                               ; $4c8e: $20 $67

	ld hl, sp+$7a                                    ; $4c90: $f8 $7a
	sbc e                                            ; $4c92: $9b
	call c, $d9fe                                    ; $4c93: $dc $fe $d9
	rst $38                                          ; $4c96: $ff
	add e                                            ; $4c97: $83
	ld d, l                                          ; $4c98: $55
	ld d, c                                          ; $4c99: $51
	ld c, c                                          ; $4c9a: $49
	ret                                              ; $4c9b: $c9


	sub e                                            ; $4c9c: $93
	sub e                                            ; $4c9d: $93
	xor e                                            ; $4c9e: $ab
	xor c                                            ; $4c9f: $a9
	xor e                                            ; $4ca0: $ab
	xor e                                            ; $4ca1: $ab
	or e                                             ; $4ca2: $b3
	inc sp                                           ; $4ca3: $33
	ld h, l                                          ; $4ca4: $65
	ld h, l                                          ; $4ca5: $65
	ld b, l                                          ; $4ca6: $45
	ld b, a                                          ; $4ca7: $47
	push af                                          ; $4ca8: $f5
	jp nc, $a4aa                                     ; $4ca9: $d2 $aa $a4

	ld d, l                                          ; $4cac: $55
	ld d, l                                          ; $4cad: $55
	dec hl                                           ; $4cae: $2b
	dec hl                                           ; $4caf: $2b
	ldh [c], a                                       ; $4cb0: $e2
	db $e4                                           ; $4cb1: $e4
	call nz, Call_016_7bc8                           ; $4cb2: $c4 $c8 $7b
	ld hl, $9096                                     ; $4cb5: $21 $96 $90
	ld c, d                                          ; $4cb8: $4a
	ld c, e                                          ; $4cb9: $4b
	xor d                                            ; $4cba: $aa
	add hl, bc                                       ; $4cbb: $09
	ld e, c                                          ; $4cbc: $59
	ld c, c                                          ; $4cbd: $49
	push de                                          ; $4cbe: $d5
	push de                                          ; $4cbf: $d5
	sbc $11                                          ; $4cc0: $de $11
	call c, $91b3                                    ; $4cc2: $dc $b3 $91
	inc de                                           ; $4cc5: $13
	ld [hl], $2e                                     ; $4cc6: $36 $2e
	ld l, d                                          ; $4cc8: $6a
	ld a, [hl+]                                      ; $4cc9: $2a
	adc d                                            ; $4cca: $8a
	adc b                                            ; $4ccb: $88
	adc b                                            ; $4ccc: $88
	cp c                                             ; $4ccd: $b9
	sbc c                                            ; $4cce: $99
	sbc c                                            ; $4ccf: $99
	sbc l                                            ; $4cd0: $9d
	db $dd                                           ; $4cd1: $dd
	db $fd                                           ; $4cd2: $fd
	ld a, e                                          ; $4cd3: $7b
	ret nz                                           ; $4cd4: $c0

	sbc $ad                                          ; $4cd5: $de $ad
	sub [hl]                                         ; $4cd7: $96
	db $ed                                           ; $4cd8: $ed
	call $ddd9                                       ; $4cd9: $cd $d9 $dd
	cp e                                             ; $4cdc: $bb
	db $db                                           ; $4cdd: $db
	db $db                                           ; $4cde: $db
	rst SubAFromDE                                          ; $4cdf: $df
	rst SubAFromDE                                          ; $4ce0: $df
	ld [hl], a                                       ; $4ce1: $77
	or b                                             ; $4ce2: $b0
	sub [hl]                                         ; $4ce3: $96
	ld d, l                                          ; $4ce4: $55
	sub l                                            ; $4ce5: $95
	sbc c                                            ; $4ce6: $99
	reti                                             ; $4ce7: $d9


	ld e, l                                          ; $4ce8: $5d
	db $ed                                           ; $4ce9: $ed
	db $fd                                           ; $4cea: $fd
	cp e                                             ; $4ceb: $bb
	cp e                                             ; $4cec: $bb
	ld [hl], c                                       ; $4ced: $71
	ld a, l                                          ; $4cee: $7d
	sbc [hl]                                         ; $4cef: $9e
	ld a, a                                          ; $4cf0: $7f
	sbc $1f                                          ; $4cf1: $de $1f
	sbc h                                            ; $4cf3: $9c
	sbc a                                            ; $4cf4: $9f
	cp a                                             ; $4cf5: $bf
	cp a                                             ; $4cf6: $bf

jr_016_4cf7:
	ld a, e                                          ; $4cf7: $7b
	ld b, a                                          ; $4cf8: $47
	jp c, $deff                                      ; $4cf9: $da $ff $de

	ldh [$dc], a                                     ; $4cfc: $e0 $dc
	ldh a, [$6f]                                     ; $4cfe: $f0 $6f
	ld h, b                                          ; $4d00: $60
	rst SubAFromDE                                          ; $4d01: $df
	sub b                                            ; $4d02: $90
	rst SubAFromDE                                          ; $4d03: $df
	rra                                              ; $4d04: $1f
	db $db                                           ; $4d05: $db
	rrca                                             ; $4d06: $0f
	sbc [hl]                                         ; $4d07: $9e
	ld [bc], a                                       ; $4d08: $02
	ld a, [$766a]                                    ; $4d09: $fa $6a $76
	ld a, [hl]                                       ; $4d0c: $7e
	ld [hl], l                                       ; $4d0d: $75
	jp c, $dbc0                                      ; $4d0e: $da $c0 $db

	rrca                                             ; $4d11: $0f
	rst SubAFromDE                                          ; $4d12: $df
	rra                                              ; $4d13: $1f
	reti                                             ; $4d14: $d9


	ld bc, $feda                                     ; $4d15: $01 $da $fe
	ret c                                            ; $4d18: $d8

	rst $38                                          ; $4d19: $ff
	sub l                                            ; $4d1a: $95
	add hl, hl                                       ; $4d1b: $29
	ld c, d                                          ; $4d1c: $4a
	ld d, [hl]                                       ; $4d1d: $56
	ld d, [hl]                                       ; $4d1e: $56
	halt                                             ; $4d1f: $76
	ld d, [hl]                                       ; $4d20: $56
	ld d, $16                                        ; $4d21: $16 $16
	rst JumpTable                                          ; $4d23: $c7
	add a                                            ; $4d24: $87
	sbc $8b                                          ; $4d25: $de $8b
	sbc $ab                                          ; $4d27: $de $ab
	sub a                                            ; $4d29: $97
	dec h                                            ; $4d2a: $25
	and l                                            ; $4d2b: $a5
	push hl                                          ; $4d2c: $e5
	call Call_016_5a99                               ; $4d2d: $cd $99 $5a
	ld d, d                                          ; $4d30: $52
	ld [hl-], a                                      ; $4d31: $32
	sbc $93                                          ; $4d32: $de $93
	add a                                            ; $4d34: $87
	or e                                             ; $4d35: $b3
	rst FarCall                                          ; $4d36: $f7
	rst FarCall                                          ; $4d37: $f7
	rst $38                                          ; $4d38: $ff
	rst $38                                          ; $4d39: $ff
	push de                                          ; $4d3a: $d5
	dec e                                            ; $4d3b: $1d
	add hl, sp                                       ; $4d3c: $39
	dec sp                                           ; $4d3d: $3b
	inc sp                                           ; $4d3e: $33
	ld [hl], a                                       ; $4d3f: $77
	ld [hl], a                                       ; $4d40: $77
	rst $38                                          ; $4d41: $ff
	inc sp                                           ; $4d42: $33
	ld [hl], e                                       ; $4d43: $73
	ld [hl], a                                       ; $4d44: $77
	rst FarCall                                          ; $4d45: $f7
	cp $fe                                           ; $4d46: $fe $fe
	rst AddAOntoHL                                          ; $4d48: $ef
	rst GetHLinHL                                          ; $4d49: $cf
	reti                                             ; $4d4a: $d9


	reti                                             ; $4d4b: $d9


	db $db                                           ; $4d4c: $db
	ld [hl], a                                       ; $4d4d: $77
	ld h, a                                          ; $4d4e: $67
	ld [hl], a                                       ; $4d4f: $77
	cp a                                             ; $4d50: $bf
	sbc d                                            ; $4d51: $9a
	or $66                                           ; $4d52: $f6 $66
	ld h, h                                          ; $4d54: $64

jr_016_4d55:
	ret nz                                           ; $4d55: $c0

	ldh [rPCM34], a                                  ; $4d56: $e0 $77
	ld c, h                                          ; $4d58: $4c
	ld a, a                                          ; $4d59: $7f
	add hl, sp                                       ; $4d5a: $39
	sub l                                            ; $4d5b: $95
	dec [hl]                                         ; $4d5c: $35
	jr nz, jr_016_4d55                               ; $4d5d: $20 $f6

jr_016_4d5f:
	ld [hl], e                                       ; $4d5f: $73
	daa                                              ; $4d60: $27
	daa                                              ; $4d61: $27
	inc c                                            ; $4d62: $0c
	rrca                                             ; $4d63: $0f
	rlca                                             ; $4d64: $07
	inc bc                                           ; $4d65: $03
	ld a, e                                          ; $4d66: $7b
	push hl                                          ; $4d67: $e5
	sub l                                            ; $4d68: $95
	ei                                               ; $4d69: $fb
	cp e                                             ; $4d6a: $bb
	jp c, $5b5b                                      ; $4d6b: $da $5b $5b

	cpl                                              ; $4d6e: $2f
	daa                                              ; $4d6f: $27
	rst JumpTable                                          ; $4d70: $c7
	or a                                             ; $4d71: $b7
	and a                                            ; $4d72: $a7
	sbc $c7                                          ; $4d73: $de $c7
	sub a                                            ; $4d75: $97
	ld a, a                                          ; $4d76: $7f
	cp a                                             ; $4d77: $bf
	rra                                              ; $4d78: $1f
	ccf                                              ; $4d79: $3f
	cpl                                              ; $4d7a: $2f
	sbc a                                            ; $4d7b: $9f
	sub a                                            ; $4d7c: $97
	ld d, a                                          ; $4d7d: $57
	sbc $ff                                          ; $4d7e: $de $ff
	rst SubAFromDE                                          ; $4d80: $df
	rst SubAFromDE                                          ; $4d81: $df
	sbc $ef                                          ; $4d82: $de $ef
	ld [hl], c                                       ; $4d84: $71
	ld e, c                                          ; $4d85: $59
	ret c                                            ; $4d86: $d8

	cp $df                                           ; $4d87: $fe $df
	db $fc                                           ; $4d89: $fc
	sub a                                            ; $4d8a: $97
	rst AddAOntoHL                                          ; $4d8b: $ef
	rst SubAFromBC                                          ; $4d8c: $e7
	rst SubAFromBC                                          ; $4d8d: $e7
	db $e3                                           ; $4d8e: $e3
	db $e3                                           ; $4d8f: $e3
	ld [hl], e                                       ; $4d90: $73
	ld [hl], c                                       ; $4d91: $71
	add hl, sp                                       ; $4d92: $39
	sbc $03                                          ; $4d93: $de $03
	rst SubAFromDE                                          ; $4d95: $df
	add c                                            ; $4d96: $81
	rst SubAFromDE                                          ; $4d97: $df
	ld b, c                                          ; $4d98: $41
	sbc e                                            ; $4d99: $9b
	jr nz, jr_016_4d5f                               ; $4d9a: $20 $c3

	ld b, c                                          ; $4d9c: $41
	ld hl, $277b                                     ; $4d9d: $21 $7b $27
	rst SubAFromDE                                          ; $4da0: $df
	ld [$c29e], sp                                   ; $4da1: $08 $9e $c2
	ld l, e                                          ; $4da4: $6b
	ld hl, sp-$22                                    ; $4da5: $f8 $de
	ld b, b                                          ; $4da7: $40
	ld [hl], e                                       ; $4da8: $73
	dec d                                            ; $4da9: $15
	ld h, a                                          ; $4daa: $67
	ld hl, sp-$02                                    ; $4dab: $f8 $fe
	sbc $80                                          ; $4dad: $de $80
	rst SubAFromDE                                          ; $4daf: $df
	ld b, b                                          ; $4db0: $40
	ld h, a                                          ; $4db1: $67
	ld hl, sp-$63                                    ; $4db2: $f8 $9d
	ld d, $56                                        ; $4db4: $16 $56
	sbc $53                                          ; $4db6: $de $53
	sbc d                                            ; $4db8: $9a
	ld e, e                                          ; $4db9: $5b
	dec de                                           ; $4dba: $1b
	dec de                                           ; $4dbb: $1b
	xor e                                            ; $4dbc: $ab
	xor e                                            ; $4dbd: $ab
	sbc $ad                                          ; $4dbe: $de $ad
	ld a, a                                          ; $4dc0: $7f
	ld b, h                                          ; $4dc1: $44
	sub [hl]                                         ; $4dc2: $96
	push hl                                          ; $4dc3: $e5
	ld [hl], $36                                     ; $4dc4: $36 $36
	dec a                                            ; $4dc6: $3d
	cpl                                              ; $4dc7: $2f
	daa                                              ; $4dc8: $27
	daa                                              ; $4dc9: $27
	ld b, d                                          ; $4dca: $42
	jp z, $5c6b                                      ; $4dcb: $ca $6b $5c

	ld a, a                                          ; $4dce: $7f
	ld a, $8e                                        ; $4dcf: $3e $8e
	ld sp, hl                                        ; $4dd1: $f9
	cp a                                             ; $4dd2: $bf
	ld [hl], h                                       ; $4dd3: $74
	inc sp                                           ; $4dd4: $33
	add e                                            ; $4dd5: $83
	jp $cde0                                         ; $4dd6: $c3 $e0 $cd


	sbc b                                            ; $4dd9: $98
	rra                                              ; $4dda: $1f
	scf                                              ; $4ddb: $37
	inc bc                                           ; $4ddc: $03
	nop                                              ; $4ddd: $00
	add b                                            ; $4dde: $80
	ret nz                                           ; $4ddf: $c0

	db $fc                                           ; $4de0: $fc
	ret c                                            ; $4de1: $d8

	ld a, b                                          ; $4de2: $78
	ld h, a                                          ; $4de3: $67
	ld a, h                                          ; $4de4: $7c
	ret                                              ; $4de5: $c9


	sbc l                                            ; $4de6: $9d
	nop                                              ; $4de7: $00
	and b                                            ; $4de8: $a0
	sbc $c0                                          ; $4de9: $de $c0
	ld [hl], h                                       ; $4deb: $74
	ld h, b                                          ; $4dec: $60
	rst SubAFromDE                                          ; $4ded: $df
	inc bc                                           ; $4dee: $03
	sbc b                                            ; $4def: $98
	jr nc, jr_016_4e2a                               ; $4df0: $30 $38

	inc a                                            ; $4df2: $3c
	inc a                                            ; $4df3: $3c
	nop                                              ; $4df4: $00
	ld hl, sp+$03                                    ; $4df5: $f8 $03
	ld a, c                                          ; $4df7: $79
	di                                               ; $4df8: $f3
	ld a, e                                          ; $4df9: $7b
	and d                                            ; $4dfa: $a2
	sub l                                            ; $4dfb: $95
	sub b                                            ; $4dfc: $90
	ei                                               ; $4dfd: $fb
	sbc e                                            ; $4dfe: $9b
	ccf                                              ; $4dff: $3f
	ccf                                              ; $4e00: $3f
	dec [hl]                                         ; $4e01: $35
	dec [hl]                                         ; $4e02: $35
	ld a, l                                          ; $4e03: $7d
	ld l, h                                          ; $4e04: $6c
	add a                                            ; $4e05: $87
	sbc $07                                          ; $4e06: $de $07
	halt                                             ; $4e08: $76
	rst JumpTable                                          ; $4e09: $c7
	rst SubAFromDE                                          ; $4e0a: $df
	ld c, e                                          ; $4e0b: $4b
	sub c                                            ; $4e0c: $91
	dec h                                            ; $4e0d: $25
	ld sp, $193e                                     ; $4e0e: $31 $3e $19
	ld d, h                                          ; $4e11: $54
	call nc, $f7f7                                   ; $4e12: $d4 $f7 $f7
	di                                               ; $4e15: $f3
	ei                                               ; $4e16: $fb
	ld sp, hl                                        ; $4e17: $f9
	db $fc                                           ; $4e18: $fc
	cp [hl]                                          ; $4e19: $be
	cp [hl]                                          ; $4e1a: $be
	ld h, l                                          ; $4e1b: $65
	cp b                                             ; $4e1c: $b8
	jp c, $92ff                                      ; $4e1d: $da $ff $92

	ld a, a                                          ; $4e20: $7f
	ld h, c                                          ; $4e21: $61
	sub c                                            ; $4e22: $91
	pop de                                           ; $4e23: $d1
	add sp, $78                                      ; $4e24: $e8 $78
	inc a                                            ; $4e26: $3c
	sbc h                                            ; $4e27: $9c
	adc [hl]                                         ; $4e28: $8e
	and c                                            ; $4e29: $a1

jr_016_4e2a:
	pop af                                           ; $4e2a: $f1
	pop af                                           ; $4e2b: $f1
	ld hl, sp+$77                                    ; $4e2c: $f8 $77
	ld hl, sp-$6d                                    ; $4e2e: $f8 $93
	dec b                                            ; $4e30: $05
	add e                                            ; $4e31: $83
	add e                                            ; $4e32: $83
	jp $c1c1                                         ; $4e33: $c3 $c1 $c1


	ldh [$e0], a                                     ; $4e36: $e0 $e0
	rlca                                             ; $4e38: $07
	add e                                            ; $4e39: $83
	add e                                            ; $4e3a: $83
	ld b, e                                          ; $4e3b: $43
	ld a, e                                          ; $4e3c: $7b
	ld sp, $d079                                     ; $4e3d: $31 $79 $d0
	db $dd                                           ; $4e40: $dd
	rst $38                                          ; $4e41: $ff
	sbc [hl]                                         ; $4e42: $9e
	cp a                                             ; $4e43: $bf
	ld l, a                                          ; $4e44: $6f
	rst GetHLinHL                                          ; $4e45: $cf
	sbc h                                            ; $4e46: $9c
	rst SubAFromDE                                          ; $4e47: $df
	sbc a                                            ; $4e48: $9f
	ccf                                              ; $4e49: $3f
	sbc $f7                                          ; $4e4a: $de $f7
	ld [hl], d                                       ; $4e4c: $72
	ld a, [hl+]                                      ; $4e4d: $2a
	sbc [hl]                                         ; $4e4e: $9e
	dec e                                            ; $4e4f: $1d
	sbc $1c                                          ; $4e50: $de $1c
	rst SubAFromDE                                          ; $4e52: $df
	inc c                                            ; $4e53: $0c
	ld a, l                                          ; $4e54: $7d
	adc l                                            ; $4e55: $8d
	rst SubAFromDE                                          ; $4e56: $df
	sbc e                                            ; $4e57: $9b
	sub [hl]                                         ; $4e58: $96
	add d                                            ; $4e59: $82
	add [hl]                                         ; $4e5a: $86
	add [hl]                                         ; $4e5b: $86
	add $c4                                          ; $4e5c: $c6 $c4
	push bc                                          ; $4e5e: $c5
	push hl                                          ; $4e5f: $e5
	push hl                                          ; $4e60: $e5
	push af                                          ; $4e61: $f5
	db $dd                                           ; $4e62: $dd
	pop af                                           ; $4e63: $f1
	sub h                                            ; $4e64: $94
	ldh a, [$ca]                                     ; $4e65: $f0 $ca
	xor l                                            ; $4e67: $ad
	cp l                                             ; $4e68: $bd
	or l                                             ; $4e69: $b5
	or $d2                                           ; $4e6a: $f6 $d2
	jp c, $f75b                                      ; $4e6c: $da $5b $f7

	di                                               ; $4e6f: $f3
	ld a, e                                          ; $4e70: $7b
	sub b                                            ; $4e71: $90
	rst SubAFromDE                                          ; $4e72: $df
	db $fd                                           ; $4e73: $fd
	adc [hl]                                         ; $4e74: $8e
	db $fc                                           ; $4e75: $fc
	ld [hl], b                                       ; $4e76: $70
	or b                                             ; $4e77: $b0
	cp h                                             ; $4e78: $bc
	rst SubAFromDE                                          ; $4e79: $df
	rst SubAFromHL                                          ; $4e7a: $d7
	rst SubAFromHL                                          ; $4e7b: $d7
	or $4b                                           ; $4e7c: $f6 $4b
	ldh [rSVBK], a                                   ; $4e7e: $e0 $70
	ld a, b                                          ; $4e80: $78
	ld a, $bf                                        ; $4e81: $3e $bf

jr_016_4e83:
	cp a                                             ; $4e83: $bf
	sbc a                                            ; $4e84: $9f
	rst SubAFromDE                                          ; $4e85: $df
	db $fd                                           ; $4e86: $fd
	sbc e                                            ; $4e87: $9b
	ret nz                                           ; $4e88: $c0

	ld hl, sp-$01                                    ; $4e89: $f8 $ff
	rst $38                                          ; $4e8b: $ff
	db $fc                                           ; $4e8c: $fc
	ld a, a                                          ; $4e8d: $7f
	rst FarCall                                          ; $4e8e: $f7
	sbc c                                            ; $4e8f: $99
	rst JumpTable                                          ; $4e90: $c7
	ret c                                            ; $4e91: $d8

	ld e, h                                          ; $4e92: $5c
	jr nc, jr_016_4ec6                               ; $4e93: $30 $31

	ld bc, $8a7a                                     ; $4e95: $01 $7a $8a
	sbc h                                            ; $4e98: $9c
	ret nc                                           ; $4e99: $d0

	ld h, b                                          ; $4e9a: $60
	jr nz, jr_016_4f15                               ; $4e9b: $20 $78

	ld l, [hl]                                       ; $4e9d: $6e
	ld a, a                                          ; $4e9e: $7f
	rst FarCall                                          ; $4e9f: $f7
	sbc l                                            ; $4ea0: $9d
	ld a, h                                          ; $4ea1: $7c
	call c, $fcdd                                    ; $4ea2: $dc $dd $fc
	sbc l                                            ; $4ea5: $9d
	db $f4                                           ; $4ea6: $f4
	cp $78                                           ; $4ea7: $fe $78
	ld a, c                                          ; $4ea9: $79
	sbc [hl]                                         ; $4eaa: $9e
	ld a, a                                          ; $4eab: $7f
	ld [hl], a                                       ; $4eac: $77
	sub l                                            ; $4ead: $95
	sub h                                            ; $4eae: $94
	sub e                                            ; $4eaf: $93
	jp z, $a9c9                                      ; $4eb0: $ca $c9 $a9

	ld l, l                                          ; $4eb3: $6d
	ld l, h                                          ; $4eb4: $6c
	ld l, h                                          ; $4eb5: $6c
	ld l, d                                          ; $4eb6: $6a
	cp $bf                                           ; $4eb7: $fe $bf
	cp a                                             ; $4eb9: $bf
	call c, $dfdf                                    ; $4eba: $dc $df $df
	ccf                                              ; $4ebd: $3f
	sub [hl]                                         ; $4ebe: $96
	rst SubAFromDE                                          ; $4ebf: $df
	ld e, a                                          ; $4ec0: $5f
	ld e, a                                          ; $4ec1: $5f
	rst AddAOntoHL                                          ; $4ec2: $ef
	xor a                                            ; $4ec3: $af
	rst AddAOntoHL                                          ; $4ec4: $ef
	ld a, a                                          ; $4ec5: $7f

jr_016_4ec6:
	ld a, a                                          ; $4ec6: $7f
	ccf                                              ; $4ec7: $3f
	ld [hl], a                                       ; $4ec8: $77
	or c                                             ; $4ec9: $b1
	adc [hl]                                         ; $4eca: $8e
	rst SubAFromDE                                          ; $4ecb: $df
	ld l, c                                          ; $4ecc: $69
	ld d, e                                          ; $4ecd: $53
	ld e, a                                          ; $4ece: $5f
	ld l, a                                          ; $4ecf: $6f
	ccf                                              ; $4ed0: $3f
	jr c, jr_016_4e83                                ; $4ed1: $38 $b0

	or b                                             ; $4ed3: $b0
	sbc a                                            ; $4ed4: $9f
	cp [hl]                                          ; $4ed5: $be
	cp h                                             ; $4ed6: $bc
	cp b                                             ; $4ed7: $b8
	ldh a, [$f0]                                     ; $4ed8: $f0 $f0
	ldh [$e0], a                                     ; $4eda: $e0 $e0
	ld a, d                                          ; $4edc: $7a
	jp z, Jump_016_7d92                              ; $4edd: $ca $92 $7d

	cp e                                             ; $4ee0: $bb
	rst $38                                          ; $4ee1: $ff
	rst FarCall                                          ; $4ee2: $f7
	cp $ff                                           ; $4ee3: $fe $ff
	cp $fc                                           ; $4ee5: $fe $fc
	ld a, h                                          ; $4ee7: $7c
	jr c, jr_016_4f23                                ; $4ee8: $38 $39

	ld sp, $db32                                     ; $4eea: $31 $32 $db
	rst $38                                          ; $4eed: $ff
	sbc l                                            ; $4eee: $9d
	ccf                                              ; $4eef: $3f
	rst $38                                          ; $4ef0: $ff
	ld [hl], h                                       ; $4ef1: $74
	inc l                                            ; $4ef2: $2c
	ld a, e                                          ; $4ef3: $7b
	ld hl, sp+$7f                                    ; $4ef4: $f8 $7f
	rst FarCall                                          ; $4ef6: $f7
	jp c, $79ff                                      ; $4ef7: $da $ff $79

	xor l                                            ; $4efa: $ad
	ld a, a                                          ; $4efb: $7f
	db $ed                                           ; $4efc: $ed
	sbc $ff                                          ; $4efd: $de $ff
	db $f4                                           ; $4eff: $f4
	add h                                            ; $4f00: $84
	sbc $c5                                          ; $4f01: $de $c5
	sbc d                                            ; $4f03: $9a
	pop de                                           ; $4f04: $d1
	db $d3                                           ; $4f05: $d3
	db $d3                                           ; $4f06: $d3
	pop bc                                           ; $4f07: $c1
	pop de                                           ; $4f08: $d1
	db $db                                           ; $4f09: $db
	ldh a, [hDisp1_BGP]                                     ; $4f0a: $f0 $92
	ldh a, [c]                                       ; $4f0c: $f2
	ldh [c], a                                       ; $4f0d: $e2
	ld e, e                                          ; $4f0e: $5b
	ld d, l                                          ; $4f0f: $55
	ld d, l                                          ; $4f10: $55
	ld d, h                                          ; $4f11: $54
	halt                                             ; $4f12: $76
	ld a, [hl]                                       ; $4f13: $7e
	ld [hl], l                                       ; $4f14: $75

jr_016_4f15:
	push af                                          ; $4f15: $f5
	db $fc                                           ; $4f16: $fc
	cp $fe                                           ; $4f17: $fe $fe
	call c, $83ff                                    ; $4f19: $dc $ff $83
	ld e, e                                          ; $4f1c: $5b
	ld sp, hl                                        ; $4f1d: $f9
	add hl, hl                                       ; $4f1e: $29
	ld h, l                                          ; $4f1f: $65
	sbc h                                            ; $4f20: $9c
	inc h                                            ; $4f21: $24
	ld [bc], a                                       ; $4f22: $02

jr_016_4f23:
	sub [hl]                                         ; $4f23: $96
	rst GetHLinHL                                          ; $4f24: $cf
	ld c, a                                          ; $4f25: $4f
	ld l, a                                          ; $4f26: $6f
	cpl                                              ; $4f27: $2f
	daa                                              ; $4f28: $27
	sub a                                            ; $4f29: $97
	rst SubAFromHL                                          ; $4f2a: $d7
	set 7, a                                         ; $4f2b: $cb $ff
	rst $38                                          ; $4f2d: $ff
	cp $fc                                           ; $4f2e: $fe $fc
	cp b                                             ; $4f30: $b8
	ld c, a                                          ; $4f31: $4f
	ld b, h                                          ; $4f32: $44
	ld c, b                                          ; $4f33: $48
	ret nz                                           ; $4f34: $c0

	add b                                            ; $4f35: $80
	add b                                            ; $4f36: $80
	ldh [rPCM34], a                                  ; $4f37: $e0 $77
	ld hl, sp-$21                                    ; $4f39: $f8 $df
	rst $38                                          ; $4f3b: $ff
	rst SubAFromDE                                          ; $4f3c: $df
	rra                                              ; $4f3d: $1f
	sub a                                            ; $4f3e: $97
	ld bc, $fc06                                     ; $4f3f: $01 $06 $fc
	ld b, d                                          ; $4f42: $42
	rst $38                                          ; $4f43: $ff
	ld e, $0c                                        ; $4f44: $1e $0c
	nop                                              ; $4f46: $00
	ld [hl], a                                       ; $4f47: $77
	ld hl, sp-$21                                    ; $4f48: $f8 $df
	cp $df                                           ; $4f4a: $fe $df
	sbc $9a                                          ; $4f4c: $de $9a
	cp [hl]                                          ; $4f4e: $be
	ld e, [hl]                                       ; $4f4f: $5e
	ld a, $2b                                        ; $4f50: $3e $2b
	rst $38                                          ; $4f52: $ff
	sbc $df                                          ; $4f53: $de $df
	sub a                                            ; $4f55: $97
	cp a                                             ; $4f56: $bf
	ld e, a                                          ; $4f57: $5f
	ccf                                              ; $4f58: $3f
	dec hl                                           ; $4f59: $2b
	ld l, d                                          ; $4f5a: $6a
	ld a, d                                          ; $4f5b: $7a
	ld e, d                                          ; $4f5c: $5a
	rra                                              ; $4f5d: $1f
	db $dd                                           ; $4f5e: $dd
	sbc a                                            ; $4f5f: $9f
	rst SubAFromDE                                          ; $4f60: $df
	rst SubAFromDE                                          ; $4f61: $df
	rst SubAFromDE                                          ; $4f62: $df
	rst $38                                          ; $4f63: $ff
	db $dd                                           ; $4f64: $dd
	ldh a, [$dd]                                     ; $4f65: $f0 $dd
	rst GetHLinHL                                          ; $4f67: $cf
	ld a, e                                          ; $4f68: $7b
	push af                                          ; $4f69: $f5
	db $db                                           ; $4f6a: $db
	rst $38                                          ; $4f6b: $ff
	sbc d                                            ; $4f6c: $9a
	ccf                                              ; $4f6d: $3f
	rra                                              ; $4f6e: $1f
	rra                                              ; $4f6f: $1f
	cp $fe                                           ; $4f70: $fe $fe
	call c, $6bfc                                    ; $4f72: $dc $fc $6b
	ld sp, hl                                        ; $4f75: $f9
	ld a, e                                          ; $4f76: $7b
	rst FarCall                                          ; $4f77: $f7
	ld a, a                                          ; $4f78: $7f
	db $eb                                           ; $4f79: $eb
	ld a, a                                          ; $4f7a: $7f
	ld [$1edf], a                                    ; $4f7b: $ea $df $1e
	sbc d                                            ; $4f7e: $9a
	inc e                                            ; $4f7f: $1c
	ld [hl+], a                                      ; $4f80: $22
	ld [hl+], a                                      ; $4f81: $22
	ld de, $dd11                                     ; $4f82: $11 $11 $dd
	ld [$cf86], sp                                   ; $4f85: $08 $86 $cf
	sbc a                                            ; $4f88: $9f
	or e                                             ; $4f89: $b3
	cp a                                             ; $4f8a: $bf
	rst $38                                          ; $4f8b: $ff
	ld a, a                                          ; $4f8c: $7f
	ld a, a                                          ; $4f8d: $7f
	rst $38                                          ; $4f8e: $ff
	ld c, a                                          ; $4f8f: $4f
	rrca                                             ; $4f90: $0f
	sub c                                            ; $4f91: $91
	sub e                                            ; $4f92: $93
	cp l                                             ; $4f93: $bd
	ld e, e                                          ; $4f94: $5b
	rlca                                             ; $4f95: $07
	rrca                                             ; $4f96: $0f
	add hl, de                                       ; $4f97: $19
	add hl, de                                       ; $4f98: $19
	dec de                                           ; $4f99: $1b
	cp a                                             ; $4f9a: $bf
	sbc a                                            ; $4f9b: $9f
	inc bc                                           ; $4f9c: $03
	rlca                                             ; $4f9d: $07
	rlca                                             ; $4f9e: $07
	db $10                                           ; $4f9f: $10
	ld a, [$d592]                                    ; $4fa0: $fa $92 $d5
	db $dd                                           ; $4fa3: $dd
	xor c                                            ; $4fa4: $a9
	cp b                                             ; $4fa5: $b8
	sub b                                            ; $4fa6: $90
	add l                                            ; $4fa7: $85
	add l                                            ; $4fa8: $85
	xor c                                            ; $4fa9: $a9
	ldh [c], a                                       ; $4faa: $e2
	ldh [c], a                                       ; $4fab: $e2
	add $c7                                          ; $4fac: $c6 $c7
	rst GetHLinHL                                          ; $4fae: $cf
	sbc $df                                          ; $4faf: $de $df
	sub a                                            ; $4fb1: $97
	push af                                          ; $4fb2: $f5
	push de                                          ; $4fb3: $d5
	rst SubAFromHL                                          ; $4fb4: $d7
	sub $94                                          ; $4fb5: $d6 $94
	or h                                             ; $4fb7: $b4
	or [hl]                                          ; $4fb8: $b6
	rst FarCall                                          ; $4fb9: $f7
	sbc $ff                                          ; $4fba: $de $ff
	ld a, e                                          ; $4fbc: $7b
	xor l                                            ; $4fbd: $ad
	add h                                            ; $4fbe: $84
	xor $cd                                          ; $4fbf: $ee $cd
	add c                                            ; $4fc1: $81
	bit 0, c                                         ; $4fc2: $cb $41
	inc h                                            ; $4fc4: $24
	ld a, [hl+]                                      ; $4fc5: $2a
	inc d                                            ; $4fc6: $14
	ld d, $0b                                        ; $4fc7: $16 $0b
	db $eb                                           ; $4fc9: $eb
	push hl                                          ; $4fca: $e5
	ld [hl], l                                       ; $4fcb: $75
	add hl, sp                                       ; $4fcc: $39
	inc a                                            ; $4fcd: $3c
	ld e, $1f                                        ; $4fce: $1e $1f
	rrca                                             ; $4fd0: $0f
	ld c, b                                          ; $4fd1: $48
	adc b                                            ; $4fd2: $88
	add sp, -$08                                     ; $4fd3: $e8 $f8
	add a                                            ; $4fd5: $87
	ld b, d                                          ; $4fd6: $42
	ldh [c], a                                       ; $4fd7: $e2
	and d                                            ; $4fd8: $a2
	ret z                                            ; $4fd9: $c8

	ld [hl], a                                       ; $4fda: $77
	ld hl, sp-$64                                    ; $4fdb: $f8 $9c
	jp nz, $6262                                     ; $4fdd: $c2 $62 $62

	sbc $42                                          ; $4fe0: $de $42
	sbc d                                            ; $4fe2: $9a
	ld b, e                                          ; $4fe3: $43
	db $fd                                           ; $4fe4: $fd
	ld bc, $0000                                     ; $4fe5: $01 $00 $00
	ld h, a                                          ; $4fe8: $67
	ld hl, sp-$69                                    ; $4fe9: $f8 $97
	dec l                                            ; $4feb: $2d
	dec [hl]                                         ; $4fec: $35
	ld [hl], a                                       ; $4fed: $77
	sub e                                            ; $4fee: $93
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	add b                                            ; $4ff1: $80
	add b                                            ; $4ff2: $80
	ld h, a                                          ; $4ff3: $67
	ld hl, sp-$22                                    ; $4ff4: $f8 $de
	cp a                                             ; $4ff6: $bf
	sbc d                                            ; $4ff7: $9a
	xor a                                            ; $4ff8: $af
	rst AddAOntoHL                                          ; $4ff9: $ef
	rst SubAFromBC                                          ; $4ffa: $e7
	rst JumpTable                                          ; $4ffb: $c7
	add e                                            ; $4ffc: $83
	sbc $f0                                          ; $4ffd: $de $f0
	rst SubAFromDE                                          ; $4fff: $df
	add sp, -$64                                     ; $5000: $e8 $9c
	db $e4                                           ; $5002: $e4
	call nz, $da82                                   ; $5003: $c4 $82 $da
	rst $38                                          ; $5006: $ff
	sbc [hl]                                         ; $5007: $9e
	rst AddAOntoHL                                          ; $5008: $ef
	sbc $0f                                          ; $5009: $de $0f
	db $dd                                           ; $500b: $dd
	rlca                                             ; $500c: $07
	sbc [hl]                                         ; $500d: $9e
	inc bc                                           ; $500e: $03
	ld l, [hl]                                       ; $500f: $6e
	jp c, $937b                                      ; $5010: $da $7b $93

	ld l, a                                          ; $5013: $6f
	rst FarCall                                          ; $5014: $f7
	ld h, a                                          ; $5015: $67
	pop af                                           ; $5016: $f1
	ret c                                            ; $5017: $d8

	rst $38                                          ; $5018: $ff
	db $db                                           ; $5019: $db
	cp $9d                                           ; $501a: $fe $9d
	ld a, [$67f2]                                    ; $501c: $fa $f2 $67
	ld hl, sp-$22                                    ; $501f: $f8 $de
	rlca                                             ; $5021: $07
	rst SubAFromDE                                          ; $5022: $df
	dec b                                            ; $5023: $05
	sbc h                                            ; $5024: $9c
	ld bc, $0002                                     ; $5025: $01 $02 $00
	ld [hl], e                                       ; $5028: $73
	ld hl, sp-$66                                    ; $5029: $f8 $9a
	dec b                                            ; $502b: $05
	ld [bc], a                                       ; $502c: $02
	ld bc, $fcfc                                     ; $502d: $01 $fc $fc
	ld [hl], a                                       ; $5030: $77
	db $db                                           ; $5031: $db
	sbc [hl]                                         ; $5032: $9e
	ld a, [hl]                                       ; $5033: $7e
	ld l, e                                          ; $5034: $6b
	db $d3                                           ; $5035: $d3
	ld a, a                                          ; $5036: $7f
	ld hl, sp-$01                                    ; $5037: $f8 $ff
	rst SubAFromDE                                          ; $5039: $df
	rst $38                                          ; $503a: $ff
	sbc h                                            ; $503b: $9c
	ld a, [hl+]                                      ; $503c: $2a
	push de                                          ; $503d: $d5
	dec hl                                           ; $503e: $2b
	call c, Call_016_77ff                            ; $503f: $dc $ff $77
	ld hl, sp+$77                                    ; $5042: $f8 $77
	ldh a, [$9c]                                     ; $5044: $f0 $9c
	ld c, c                                          ; $5046: $49
	ld a, [hl-]                                      ; $5047: $3a
	ld c, c                                          ; $5048: $49
	call c, Call_016_77ff                            ; $5049: $dc $ff $77
	ld hl, sp+$77                                    ; $504c: $f8 $77
	ldh a, [$9c]                                     ; $504e: $f0 $9c
	rla                                              ; $5050: $17
	ld c, a                                          ; $5051: $4f
	xor a                                            ; $5052: $af
	call c, Call_016_77ff                            ; $5053: $dc $ff $77
	ld hl, sp+$77                                    ; $5056: $f8 $77
	ldh a, [$d5]                                     ; $5058: $f0 $d5
	rst $38                                          ; $505a: $ff
	rst SubAFromDE                                          ; $505b: $df
	ccf                                              ; $505c: $3f
	ld [hl], e                                       ; $505d: $73
	or a                                             ; $505e: $b7
	ld [hl], a                                       ; $505f: $77
	xor d                                            ; $5060: $aa
	ld [hl], a                                       ; $5061: $77
	ld hl, sp-$64                                    ; $5062: $f8 $9c
	db $fd                                           ; $5064: $fd
	add hl, hl                                       ; $5065: $29
	dec d                                            ; $5066: $15
	ld a, e                                          ; $5067: $7b
	cp $9a                                           ; $5068: $fe $9a
	ld d, l                                          ; $506a: $55
	jp hl                                            ; $506b: $e9


	ld d, l                                          ; $506c: $55
	sub a                                            ; $506d: $97
	xor e                                            ; $506e: $ab
	ld a, e                                          ; $506f: $7b

Call_016_5070:
	cp $97                                           ; $5070: $fe $97
	dec hl                                           ; $5072: $2b
	rla                                              ; $5073: $17
	xor e                                            ; $5074: $ab
	nop                                              ; $5075: $00
	nop                                              ; $5076: $00
	ret nz                                           ; $5077: $c0

	ldh a, [$f8]                                     ; $5078: $f0 $f8
	ld a, d                                          ; $507a: $7a
	sbc d                                            ; $507b: $9a
	ld a, e                                          ; $507c: $7b
	db $fd                                           ; $507d: $fd
	call c, $9eff                                    ; $507e: $dc $ff $9e
	ld hl, sp+$43                                    ; $5081: $f8 $43
	ld c, [hl]                                       ; $5083: $4e
	ld [hl], a                                       ; $5084: $77
	ld c, h                                          ; $5085: $4c
	ld [hl], e                                       ; $5086: $73
	ld l, d                                          ; $5087: $6a
	ld [hl], e                                       ; $5088: $73
	ld hl, sp-$64                                    ; $5089: $f8 $9c
	ldh [c], a                                       ; $508b: $e2
	jp nz, $dc82                                     ; $508c: $c2 $82 $dc

	ld [bc], a                                       ; $508f: $02
	ld h, a                                          ; $5090: $67
	ld hl, sp-$0f                                    ; $5091: $f8 $f1
	sbc [hl]                                         ; $5093: $9e
	adc a                                            ; $5094: $8f
	jp c, $9eff                                      ; $5095: $da $ff $9e

	ld a, a                                          ; $5098: $7f
	ld a, [$fe72]                                    ; $5099: $fa $72 $fe
	ld a, a                                          ; $509c: $7f
	adc c                                            ; $509d: $89
	sbc l                                            ; $509e: $9d
	db $fd                                           ; $509f: $fd
	rst $38                                          ; $50a0: $ff
	ld a, d                                          ; $50a1: $7a
	or h                                             ; $50a2: $b4
	ld [hl], e                                       ; $50a3: $73
	ldh a, [$7b]                                     ; $50a4: $f0 $7b
	ld [hl], b                                       ; $50a6: $70
	ld a, a                                          ; $50a7: $7f
	ei                                               ; $50a8: $fb
	sbc l                                            ; $50a9: $9d
	xor e                                            ; $50aa: $ab
	xor d                                            ; $50ab: $aa
	ld a, e                                          ; $50ac: $7b
	ld a, [$f06f]                                    ; $50ad: $fa $6f $f0
	sbc b                                            ; $50b0: $98
	ld hl, sp-$01                                    ; $50b1: $f8 $ff
	rst $38                                          ; $50b3: $ff
	ld bc, $7bfe                                     ; $50b4: $01 $fe $7b
	ld hl, $f063                                     ; $50b7: $21 $63 $f0
	ld l, a                                          ; $50ba: $6f
	jp nz, $1f7e                                     ; $50bb: $c2 $7e $1f

	ld a, [$e29c]                                    ; $50be: $fa $9c $e2
	db $fd                                           ; $50c1: $fd
	ld a, [$fe73]                                    ; $50c2: $fa $73 $fe
	sbc h                                            ; $50c5: $9c
	db $fd                                           ; $50c6: $fd
	ld [bc], a                                       ; $50c7: $02
	dec b                                            ; $50c8: $05
	ld [hl], e                                       ; $50c9: $73
	cp $9d                                           ; $50ca: $fe $9d
	xor c                                            ; $50cc: $a9
	ld d, l                                          ; $50cd: $55
	ld l, a                                          ; $50ce: $6f
	cp $9d                                           ; $50cf: $fe $9d
	ld d, a                                          ; $50d1: $57
	xor e                                            ; $50d2: $ab
	ld l, a                                          ; $50d3: $6f
	cp $df                                           ; $50d4: $fe $df
	inc bc                                           ; $50d6: $03
	sbc $07                                          ; $50d7: $de $07
	sbc $0f                                          ; $50d9: $de $0f
	reti                                             ; $50db: $d9


	rst $38                                          ; $50dc: $ff
	ld sp, hl                                        ; $50dd: $f9
	sbc $3f                                          ; $50de: $de $3f
	call c, $df1f                                    ; $50e0: $dc $1f $df
	ld hl, sp-$21                                    ; $50e3: $f8 $df
	ldh a, [$df]                                     ; $50e5: $f0 $df
	ldh [$df], a                                     ; $50e7: $e0 $df
	ret nz                                           ; $50e9: $c0

	ld h, a                                          ; $50ea: $67
	ld hl, sp-$29                                    ; $50eb: $f8 $d7
	ld [bc], a                                       ; $50ed: $02
	rst SubAFromDE                                          ; $50ee: $df
	ld b, $df                                        ; $50ef: $06 $df
	ld c, $df                                        ; $50f1: $0e $df
	ld e, $f9                                        ; $50f3: $1e $f9
	rst SubAFromDE                                          ; $50f5: $df
	add b                                            ; $50f6: $80
	sbc $c0                                          ; $50f7: $de $c0
	sbc l                                            ; $50f9: $9d
	ldh [$f0], a                                     ; $50fa: $e0 $f0
	ld l, d                                          ; $50fc: $6a
	ret c                                            ; $50fd: $d8

	rst SubAFromDE                                          ; $50fe: $df
	rst FarCall                                          ; $50ff: $f7
	db $fd                                           ; $5100: $fd
	sbc e                                            ; $5101: $9b
	rrca                                             ; $5102: $0f
	db $10                                           ; $5103: $10
	rla                                              ; $5104: $17
	rla                                              ; $5105: $17
	ld [hl], a                                       ; $5106: $77
	ld b, c                                          ; $5107: $41
	sbc [hl]                                         ; $5108: $9e
	cp a                                             ; $5109: $bf
	sbc $df                                          ; $510a: $de $df
	db $fd                                           ; $510c: $fd
	sbc e                                            ; $510d: $9b
	ret nz                                           ; $510e: $c0

	ld h, b                                          ; $510f: $60
	ldh [$e0], a                                     ; $5110: $e0 $e0
	ld a, e                                          ; $5112: $7b
	ld b, e                                          ; $5113: $43
	ld d, e                                          ; $5114: $53
	sbc b                                            ; $5115: $98
	sbc l                                            ; $5116: $9d
	cp $01                                           ; $5117: $fe $01
	ld c, a                                          ; $5119: $4f
	ldh a, [rBGP]                                    ; $511a: $f0 $47
	ld a, b                                          ; $511c: $78
	ld a, e                                          ; $511d: $7b
	ret nz                                           ; $511e: $c0

	sub d                                            ; $511f: $92
	ld sp, hl                                        ; $5120: $f9
	or $f0                                           ; $5121: $f6 $f0
	rst FarCall                                          ; $5123: $f7
	or $01                                           ; $5124: $f6 $01
	rrca                                             ; $5126: $0f
	rra                                              ; $5127: $1f
	add hl, sp                                       ; $5128: $39
	ld [hl], $30                                     ; $5129: $36 $30
	scf                                              ; $512b: $37
	ld [hl], $7b                                     ; $512c: $36 $7b
	ld b, h                                          ; $512e: $44
	adc [hl]                                         ; $512f: $8e
	push de                                          ; $5130: $d5
	jp hl                                            ; $5131: $e9


	push de                                          ; $5132: $d5
	ld sp, hl                                        ; $5133: $f9
	dec l                                            ; $5134: $2d
	ld d, a                                          ; $5135: $57
	xor e                                            ; $5136: $ab
	rst SubAFromHL                                          ; $5137: $d7
	db $eb                                           ; $5138: $eb
	rst SubAFromHL                                          ; $5139: $d7
	db $eb                                           ; $513a: $eb
	rst FarCall                                          ; $513b: $f7
	dec hl                                           ; $513c: $2b
	rst $38                                          ; $513d: $ff
	sbc a                                            ; $513e: $9f
	add a                                            ; $513f: $87
	add c                                            ; $5140: $81
	db $dd                                           ; $5141: $dd
	add b                                            ; $5142: $80
	ld h, e                                          ; $5143: $63
	ld hl, sp+$77                                    ; $5144: $f8 $77
	ld [bc], a                                       ; $5146: $02
	sbc l                                            ; $5147: $9d
	rra                                              ; $5148: $1f
	rlca                                             ; $5149: $07
	ld [hl], e                                       ; $514a: $73
	xor d                                            ; $514b: $aa
	ld [hl], a                                       ; $514c: $77
	ld hl, sp-$21                                    ; $514d: $f8 $df
	add b                                            ; $514f: $80
	ld h, a                                          ; $5150: $67
	ld h, b                                          ; $5151: $60
	db $fd                                           ; $5152: $fd
	sbc l                                            ; $5153: $9d
	ld bc, $de03                                     ; $5154: $01 $03 $de
	ld b, $df                                        ; $5157: $06 $df
	ld c, $98                                        ; $5159: $0e $98
	ld a, [bc]                                       ; $515b: $0a
	ld [de], a                                       ; $515c: $12
	ld [de], a                                       ; $515d: $12
	ld e, $3e                                        ; $515e: $1e $3e
	ld a, $7e                                        ; $5160: $3e $7e
	db $dd                                           ; $5162: $dd
	cp $ff                                           ; $5163: $fe $ff
	ld a, [hl]                                       ; $5165: $7e
	rst $38                                          ; $5166: $ff
	db $dd                                           ; $5167: $dd
	dec b                                            ; $5168: $05
	ld a, e                                          ; $5169: $7b
	ld hl, sp-$62                                    ; $516a: $f8 $9e
	inc b                                            ; $516c: $04
	db $dd                                           ; $516d: $dd
	dec b                                            ; $516e: $05
	adc a                                            ; $516f: $8f
	push af                                          ; $5170: $f5
	db $f4                                           ; $5171: $f4
	rst FarCall                                          ; $5172: $f7
	rst $38                                          ; $5173: $ff
	db $fd                                           ; $5174: $fd
	ret c                                            ; $5175: $d8

	sbc b                                            ; $5176: $98
	db $dd                                           ; $5177: $dd
	rla                                              ; $5178: $17
	ld d, $f7                                        ; $5179: $16 $f7
	rlca                                             ; $517b: $07
	cp $df                                           ; $517c: $fe $df
	rst SubAFromDE                                          ; $517e: $df
	sbc $74                                          ; $517f: $de $74
	sbc b                                            ; $5181: $98
	sub e                                            ; $5182: $93
	rst $38                                          ; $5183: $ff
	ld l, a                                          ; $5184: $6f
	ld h, a                                          ; $5185: $67
	rst $38                                          ; $5186: $ff
	ldh [$e0], a                                     ; $5187: $e0 $e0
	cp $81                                           ; $5189: $fe $81
	rst $38                                          ; $518b: $ff
	ld a, a                                          ; $518c: $7f
	ld [hl], a                                       ; $518d: $77
	rst AddAOntoHL                                          ; $518e: $ef
	ld l, a                                          ; $518f: $6f
	dec d                                            ; $5190: $15
	ld a, a                                          ; $5191: $7f
	rla                                              ; $5192: $17
	pop de                                           ; $5193: $d1
	rst $38                                          ; $5194: $ff
	ld e, e                                          ; $5195: $5b
	ld b, b                                          ; $5196: $40

jr_016_5197:
	sbc l                                            ; $5197: $9d
	db $e3                                           ; $5198: $e3
	db $ed                                           ; $5199: $ed
	ld a, e                                          ; $519a: $7b
	cp $9a                                           ; $519b: $fe $9a
	nop                                              ; $519d: $00
	ld e, $3f                                        ; $519e: $1e $3f
	ld h, e                                          ; $51a0: $63
	ld l, l                                          ; $51a1: $6d
	ld a, e                                          ; $51a2: $7b
	cp $9e                                           ; $51a3: $fe $9e
	db $fc                                           ; $51a5: $fc
	sbc $f8                                          ; $51a6: $de $f8
	sbc e                                            ; $51a8: $9b
	db $fc                                           ; $51a9: $fc
	ld a, [$fcfd]                                    ; $51aa: $fa $fd $fc
	ld a, d                                          ; $51ad: $7a
	or d                                             ; $51ae: $b2
	sbc [hl]                                         ; $51af: $9e
	sbc a                                            ; $51b0: $9f
	sbc $8f                                          ; $51b1: $de $8f
	sub [hl]                                         ; $51b3: $96
	add a                                            ; $51b4: $87
	rla                                              ; $51b5: $17
	dec bc                                           ; $51b6: $0b
	dec b                                            ; $51b7: $05
	ld [bc], a                                       ; $51b8: $02
	ld [bc], a                                       ; $51b9: $02
	inc b                                            ; $51ba: $04
	ld [$7b90], sp                                   ; $51bb: $08 $90 $7b
	ld hl, sp-$66                                    ; $51be: $f8 $9a
	add d                                            ; $51c0: $82
	ldh [c], a                                       ; $51c1: $e2
	db $fc                                           ; $51c2: $fc
	db $fc                                           ; $51c3: $fc
	ld hl, sp+$7b                                    ; $51c4: $f8 $7b
	or e                                             ; $51c6: $b3
	adc a                                            ; $51c7: $8f
	pop hl                                           ; $51c8: $e1
	ld a, [hl]                                       ; $51c9: $7e
	inc l                                            ; $51ca: $2c
	inc e                                            ; $51cb: $1c
	inc c                                            ; $51cc: $0c
	add b                                            ; $51cd: $80
	ret nz                                           ; $51ce: $c0

	ldh a, [rIE]                                     ; $51cf: $f0 $ff
	ld a, a                                          ; $51d1: $7f
	ccf                                              ; $51d2: $3f
	rra                                              ; $51d3: $1f
	rrca                                             ; $51d4: $0f
	nop                                              ; $51d5: $00
	nop                                              ; $51d6: $00
	ld b, b                                          ; $51d7: $40
	ld l, e                                          ; $51d8: $6b
	ld c, [hl]                                       ; $51d9: $4e
	sbc [hl]                                         ; $51da: $9e
	ret nz                                           ; $51db: $c0

	ld [hl], d                                       ; $51dc: $72
	xor l                                            ; $51dd: $ad
	sbc [hl]                                         ; $51de: $9e
	inc b                                            ; $51df: $04
	ld l, d                                          ; $51e0: $6a
	ld [$e67c], sp                                   ; $51e1: $08 $7c $e6
	rst SubAFromDE                                          ; $51e4: $df
	ld bc, $97fd                                     ; $51e5: $01 $fd $97
	ld [hl+], a                                      ; $51e8: $22
	ldh [c], a                                       ; $51e9: $e2
	jp nz, $1a22                                     ; $51ea: $c2 $22 $1a

	ld c, $06                                        ; $51ed: $0e $06
	ld b, $dc                                        ; $51ef: $06 $dc
	cp $de                                           ; $51f1: $fe $de
	ld a, [hl]                                       ; $51f3: $7e
	ld a, a                                          ; $51f4: $7f
	add sp, $73                                      ; $51f5: $e8 $73
	jr z, jr_016_5197                                ; $51f7: $28 $9e

	ld b, $73                                        ; $51f9: $06 $73
	ld sp, hl                                        ; $51fb: $f9
	ld a, e                                          ; $51fc: $7b
	ld hl, sp+$79                                    ; $51fd: $f8 $79
	ld a, [hl]                                       ; $51ff: $7e
	ld a, [hl]                                       ; $5200: $7e
	ld e, b                                          ; $5201: $58
	ld a, a                                          ; $5202: $7f
	push bc                                          ; $5203: $c5
	sub [hl]                                         ; $5204: $96
	ld h, b                                          ; $5205: $60
	rst $38                                          ; $5206: $ff
	rrca                                             ; $5207: $0f
	ld [$2010], sp                                   ; $5208: $08 $10 $20
	ld b, b                                          ; $520b: $40
	add b                                            ; $520c: $80
	pop hl                                           ; $520d: $e1
	ld [hl], c                                       ; $520e: $71
	di                                               ; $520f: $f3
	rst SubAFromDE                                          ; $5210: $df
	ld e, a                                          ; $5211: $5f
	sbc l                                            ; $5212: $9d
	sbc a                                            ; $5213: $9f
	cp $76                                           ; $5214: $fe $76
	ld h, d                                          ; $5216: $62
	ld a, l                                          ; $5217: $7d
	ld d, [hl]                                       ; $5218: $56
	ld b, c                                          ; $5219: $41
	ld h, c                                          ; $521a: $61
	sbc e                                            ; $521b: $9b
	rlca                                             ; $521c: $07
	adc a                                            ; $521d: $8f
	ld c, a                                          ; $521e: $4f
	ld e, a                                          ; $521f: $5f
	ld l, l                                          ; $5220: $6d
	inc e                                            ; $5221: $1c
	ld c, c                                          ; $5222: $49
	ld [$266a], sp                                   ; $5223: $08 $6a $26
	ld l, b                                          ; $5226: $68
	ld a, b                                          ; $5227: $78
	ld a, a                                          ; $5228: $7f
	ret c                                            ; $5229: $d8

	ld a, [hl]                                       ; $522a: $7e
	reti                                             ; $522b: $d9


	sbc [hl]                                         ; $522c: $9e
	inc bc                                           ; $522d: $03
	ld [hl], l                                       ; $522e: $75
	ret nz                                           ; $522f: $c0

	sbc [hl]                                         ; $5230: $9e
	ld h, b                                          ; $5231: $60
	halt                                             ; $5232: $76
	rst $38                                          ; $5233: $ff
	ld [hl], a                                       ; $5234: $77
	or l                                             ; $5235: $b5
	ld [hl], a                                       ; $5236: $77
	or e                                             ; $5237: $b3
	ld a, l                                          ; $5238: $7d
	dec bc                                           ; $5239: $0b
	sbc h                                            ; $523a: $9c
	cp $06                                           ; $523b: $fe $06
	inc bc                                           ; $523d: $03
	ld l, a                                          ; $523e: $6f
	ld e, a                                          ; $523f: $5f
	ld a, e                                          ; $5240: $7b
	ld h, b                                          ; $5241: $60
	ld h, l                                          ; $5242: $65
	or $90                                           ; $5243: $f6 $90
	ld h, b                                          ; $5245: $60
	jr jr_016_524e                                   ; $5246: $18 $06

	ld bc, $e000                                     ; $5248: $01 $00 $e0
	ldh [$f0], a                                     ; $524b: $e0 $f0
	ld a, b                                          ; $524d: $78

jr_016_524e:
	inc e                                            ; $524e: $1c
	rlca                                             ; $524f: $07
	ld bc, $f100                                     ; $5250: $01 $00 $f1
	pop af                                           ; $5253: $f1
	ld a, e                                          ; $5254: $7b
	rst SubAFromHL                                          ; $5255: $d7
	ld l, c                                          ; $5256: $69
	ld [$ffdd], a                                    ; $5257: $ea $dd $ff
	db $dd                                           ; $525a: $dd
	ld [bc], a                                       ; $525b: $02
	rst SubAFromDE                                          ; $525c: $df
	inc bc                                           ; $525d: $03
	rst SubAFromDE                                          ; $525e: $df
	ld [bc], a                                       ; $525f: $02
	sbc [hl]                                         ; $5260: $9e
	ld a, [hl]                                       ; $5261: $7e
	sbc $3e                                          ; $5262: $de $3e
	rst SubAFromDE                                          ; $5264: $df
	rra                                              ; $5265: $1f
	rst SubAFromDE                                          ; $5266: $df
	ld e, $9e                                        ; $5267: $1e $9e
	jr jr_016_52e6                                   ; $5269: $18 $7b

	ld e, e                                          ; $526b: $5b
	db $fd                                           ; $526c: $fd
	ld l, e                                          ; $526d: $6b
	ld hl, sp-$64                                    ; $526e: $f8 $9c
	ld bc, $0518                                     ; $5270: $01 $18 $05
	ld [hl], b                                       ; $5273: $70
	db $ed                                           ; $5274: $ed
	sbc l                                            ; $5275: $9d
	ld bc, $dd79                                     ; $5276: $01 $79 $dd
	ccf                                              ; $5279: $3f
	ld a, l                                          ; $527a: $7d
	ld a, [hl-]                                      ; $527b: $3a
	ld a, [hl]                                       ; $527c: $7e
	add hl, hl                                       ; $527d: $29
	sbc [hl]                                         ; $527e: $9e
	rra                                              ; $527f: $1f
	ld a, e                                          ; $5280: $7b
	ld sp, hl                                        ; $5281: $f9
	ld a, e                                          ; $5282: $7b
	ld hl, sp+$79                                    ; $5283: $f8 $79
	add c                                            ; $5285: $81
	ld [hl], l                                       ; $5286: $75
	add b                                            ; $5287: $80
	ld [hl], e                                       ; $5288: $73
	call c, $01dd                                    ; $5289: $dc $dd $01
	reti                                             ; $528c: $d9


	rst $38                                          ; $528d: $ff
	ld a, [hl]                                       ; $528e: $7e
	or l                                             ; $528f: $b5
	ld a, a                                          ; $5290: $7f
	add hl, de                                       ; $5291: $19
	ld a, a                                          ; $5292: $7f
	adc l                                            ; $5293: $8d
	rst $38                                          ; $5294: $ff
	rst SubAFromDE                                          ; $5295: $df
	rra                                              ; $5296: $1f
	ld [hl], a                                       ; $5297: $77
	reti                                             ; $5298: $d9


	rst SubAFromDE                                          ; $5299: $df
	ccf                                              ; $529a: $3f

jr_016_529b:
	sbc [hl]                                         ; $529b: $9e
	ld [bc], a                                       ; $529c: $02
	db $dd                                           ; $529d: $dd
	ld bc, $b859                                     ; $529e: $01 $59 $b8
	sbc [hl]                                         ; $52a1: $9e
	ei                                               ; $52a2: $fb
	ld l, c                                          ; $52a3: $69
	nop                                              ; $52a4: $00
	ld l, l                                          ; $52a5: $6d
	ld [bc], a                                       ; $52a6: $02
	ld a, a                                          ; $52a7: $7f
	cp $74                                           ; $52a8: $fe $74
	ld d, h                                          ; $52aa: $54
	ld [hl], c                                       ; $52ab: $71
	db $e4                                           ; $52ac: $e4
	sbc h                                            ; $52ad: $9c
	cp a                                             ; $52ae: $bf
	ld e, a                                          ; $52af: $5f
	xor a                                            ; $52b0: $af
	ld [hl], l                                       ; $52b1: $75
	nop                                              ; $52b2: $00
	ld [hl], e                                       ; $52b3: $73
	ld c, [hl]                                       ; $52b4: $4e
	rst SubAFromDE                                          ; $52b5: $df
	ret nz                                           ; $52b6: $c0

	sbc [hl]                                         ; $52b7: $9e
	and b                                            ; $52b8: $a0
	ld [hl], e                                       ; $52b9: $73
	ld a, [$de72]                                    ; $52ba: $fa $72 $de
	ld a, e                                          ; $52bd: $7b
	add hl, hl                                       ; $52be: $29
	ld a, e                                          ; $52bf: $7b
	jr z, jr_016_529b                                ; $52c0: $28 $d9

	rst $38                                          ; $52c2: $ff
	call c, $9c01                                    ; $52c3: $dc $01 $9c
	inc bc                                           ; $52c6: $03
	ld [hl], e                                       ; $52c7: $73
	adc e                                            ; $52c8: $8b
	ld h, e                                          ; $52c9: $63
	sub b                                            ; $52ca: $90
	ld a, d                                          ; $52cb: $7a
	ld b, h                                          ; $52cc: $44
	halt                                             ; $52cd: $76
	db $fc                                           ; $52ce: $fc
	sbc e                                            ; $52cf: $9b
	inc e                                            ; $52d0: $1c
	inc a                                            ; $52d1: $3c
	cp b                                             ; $52d2: $b8
	ldh a, [rPCM34]                                  ; $52d3: $f0 $77
	ld hl, sp-$06                                    ; $52d5: $f8 $fa
	ld a, a                                          ; $52d7: $7f
	db $dd                                           ; $52d8: $dd
	ld a, [hl]                                       ; $52d9: $7e
	ldh [$7d], a                                     ; $52da: $e0 $7d
	ld e, [hl]                                       ; $52dc: $5e
	ld a, e                                          ; $52dd: $7b
	ld d, l                                          ; $52de: $55
	ld a, e                                          ; $52df: $7b
	ld sp, hl                                        ; $52e0: $f9
	ld [hl], a                                       ; $52e1: $77
	ld c, c                                          ; $52e2: $49
	ld a, b                                          ; $52e3: $78
	ld c, h                                          ; $52e4: $4c
	ld a, [hl]                                       ; $52e5: $7e

jr_016_52e6:
	inc h                                            ; $52e6: $24
	halt                                             ; $52e7: $76
	ld [hl], a                                       ; $52e8: $77
	ld a, e                                          ; $52e9: $7b
	rst FarCall                                          ; $52ea: $f7
	ld a, l                                          ; $52eb: $7d
	or b                                             ; $52ec: $b0
	ld l, a                                          ; $52ed: $6f
	cp b                                             ; $52ee: $b8
	sbc [hl]                                         ; $52ef: $9e
	nop                                              ; $52f0: $00
	ld [hl], a                                       ; $52f1: $77
	ld h, $df                                        ; $52f2: $26 $df
	rst $38                                          ; $52f4: $ff
	ld a, h                                          ; $52f5: $7c
	sub l                                            ; $52f6: $95
	sbc [hl]                                         ; $52f7: $9e
	ld d, a                                          ; $52f8: $57
	sbc $ff                                          ; $52f9: $de $ff
	sbc $f0                                          ; $52fb: $de $f0
	sbc l                                            ; $52fd: $9d
	nop                                              ; $52fe: $00
	xor b                                            ; $52ff: $a8
	ld [hl], e                                       ; $5300: $73
	ldh a, [$9d]                                     ; $5301: $f0 $9d
	pop bc                                           ; $5303: $c1
	rst $38                                          ; $5304: $ff
	ld a, b                                          ; $5305: $78
	inc sp                                           ; $5306: $33
	sbc [hl]                                         ; $5307: $9e
	rst $38                                          ; $5308: $ff
	sbc $3e                                          ; $5309: $de $3e
	sbc l                                            ; $530b: $9d
	nop                                              ; $530c: $00
	ld d, l                                          ; $530d: $55
	cp $79                                           ; $530e: $fe $79
	db $e3                                           ; $5310: $e3
	rst SubAFromDE                                          ; $5311: $df
	inc b                                            ; $5312: $04
	sbc l                                            ; $5313: $9d
	add h                                            ; $5314: $84
	cp b                                             ; $5315: $b8
	ld a, b                                          ; $5316: $78
	ld a, [hl+]                                      ; $5317: $2a
	db $db                                           ; $5318: $db
	rst $38                                          ; $5319: $ff
	ld a, a                                          ; $531a: $7f
	ld b, [hl]                                       ; $531b: $46
	sbc h                                            ; $531c: $9c
	rst AddAOntoHL                                          ; $531d: $ef
	push de                                          ; $531e: $d5
	xor a                                            ; $531f: $af
	ld a, e                                          ; $5320: $7b
	cp $7f                                           ; $5321: $fe $7f
	ld b, [hl]                                       ; $5323: $46
	sub l                                            ; $5324: $95
	dec d                                            ; $5325: $15
	ld [bc], a                                       ; $5326: $02
	ld d, l                                          ; $5327: $55
	ld [bc], a                                       ; $5328: $02
	ld d, l                                          ; $5329: $55
	ld a, [bc]                                       ; $532a: $0a
	xor a                                            ; $532b: $af
	ld d, a                                          ; $532c: $57
	ld sp, hl                                        ; $532d: $f9
	ld d, l                                          ; $532e: $55
	ld [hl], a                                       ; $532f: $77
	cp $64                                           ; $5330: $fe $64
	ld b, b                                          ; $5332: $40
	sbc [hl]                                         ; $5333: $9e
	and b                                            ; $5334: $a0
	sbc $90                                          ; $5335: $de $90
	db $dd                                           ; $5337: $dd
	adc b                                            ; $5338: $88
	ld [hl], e                                       ; $5339: $73
	ld c, e                                          ; $533a: $4b
	ld a, e                                          ; $533b: $7b
	ld c, d                                          ; $533c: $4a
	rst SubAFromDE                                          ; $533d: $df
	add d                                            ; $533e: $82
	sbc [hl]                                         ; $533f: $9e

Call_016_5340:
	add c                                            ; $5340: $81
	ld d, e                                          ; $5341: $53
	nop                                              ; $5342: $00
	ld [hl], d                                       ; $5343: $72
	ret nc                                           ; $5344: $d0

	ld a, e                                          ; $5345: $7b
	xor e                                            ; $5346: $ab
	db $dd                                           ; $5347: $dd
	rlca                                             ; $5348: $07
	db $dd                                           ; $5349: $dd
	rrca                                             ; $534a: $0f
	push af                                          ; $534b: $f5
	ld [hl], a                                       ; $534c: $77
	ld h, $7b                                        ; $534d: $26 $7b
	ld b, a                                          ; $534f: $47
	ld a, a                                          ; $5350: $7f
	ld c, l                                          ; $5351: $4d
	ld a, e                                          ; $5352: $7b
	and $6f                                          ; $5353: $e6 $6f
	ld c, h                                          ; $5355: $4c
	sub d                                            ; $5356: $92
	db $fd                                           ; $5357: $fd
	cp $ea                                           ; $5358: $fe $ea
	push af                                          ; $535a: $f5
	ld [$ead5], a                                    ; $535b: $ea $d5 $ea
	push de                                          ; $535e: $d5
	xor d                                            ; $535f: $aa
	push de                                          ; $5360: $d5
	push de                                          ; $5361: $d5
	xor d                                            ; $5362: $aa
	ld d, l                                          ; $5363: $55
	ld [hl], e                                       ; $5364: $73
	cp $6b                                           ; $5365: $fe $6b
	ld sp, hl                                        ; $5367: $f9
	rst SubAFromDE                                          ; $5368: $df
	ld d, l                                          ; $5369: $55
	ld l, e                                          ; $536a: $6b
	rst FarCall                                          ; $536b: $f7
	sbc d                                            ; $536c: $9a
	and h                                            ; $536d: $a4
	inc h                                            ; $536e: $24
	inc h                                            ; $536f: $24
	ld b, h                                          ; $5370: $44
	jp nz, $02de                                     ; $5371: $c2 $de $02

	reti                                             ; $5374: $d9


	rst $38                                          ; $5375: $ff
	sbc b                                            ; $5376: $98
	db $e3                                           ; $5377: $e3
	db $f4                                           ; $5378: $f4
	add sp, -$10                                     ; $5379: $e8 $f0
	ld hl, sp-$09                                    ; $537b: $f8 $f7
	ldh a, [rLCDC]                                   ; $537d: $f0 $40
	ldh a, [$9d]                                     ; $537f: $f0 $9d
	ld d, l                                          ; $5381: $55
	cp a                                             ; $5382: $bf
	ld h, a                                          ; $5383: $67
	rst FarCall                                          ; $5384: $f7
	ld [hl], a                                       ; $5385: $77
	cp $9d                                           ; $5386: $fe $9d
	and b                                            ; $5388: $a0
	rlca                                             ; $5389: $07
	ld l, a                                          ; $538a: $6f
	jp nz, Jump_016_5f95                             ; $538b: $c2 $95 $5f

	rst $38                                          ; $538e: $ff
	ld sp, hl                                        ; $538f: $f9
	ld d, l                                          ; $5390: $55
	db $eb                                           ; $5391: $eb
	ld d, e                                          ; $5392: $53
	and a                                            ; $5393: $a7
	rrca                                             ; $5394: $0f
	ccf                                              ; $5395: $3f
	rst $38                                          ; $5396: $ff
	ld a, e                                          ; $5397: $7b
	ld b, h                                          ; $5398: $44
	sbc l                                            ; $5399: $9d
	xor a                                            ; $539a: $af
	ld e, a                                          ; $539b: $5f
	sbc $ff                                          ; $539c: $de $ff
	sub a                                            ; $539e: $97
	adc b                                            ; $539f: $88
	add h                                            ; $53a0: $84
	add h                                            ; $53a1: $84
	inc b                                            ; $53a2: $04
	add h                                            ; $53a3: $84
	add h                                            ; $53a4: $84
	ld b, h                                          ; $53a5: $44
	ld b, h                                          ; $53a6: $44
	ld b, e                                          ; $53a7: $43
	ret nz                                           ; $53a8: $c0

	halt                                             ; $53a9: $76
	db $eb                                           ; $53aa: $eb
	db $db                                           ; $53ab: $db
	rst $38                                          ; $53ac: $ff
	ld [hl], e                                       ; $53ad: $73
	ld h, l                                          ; $53ae: $65
	ld h, a                                          ; $53af: $67
	ldh a, [$f9]                                     ; $53b0: $f0 $f9
	call c, $de03                                    ; $53b2: $dc $03 $de
	rlca                                             ; $53b5: $07
	sbc b                                            ; $53b6: $98
	add hl, de                                       ; $53b7: $19
	jr nc, jr_016_53ea                               ; $53b8: $30 $30

	jr c, @+$6f                                      ; $53ba: $38 $6d

	ld c, [hl]                                       ; $53bc: $4e
	ld c, h                                          ; $53bd: $4c
	ld e, a                                          ; $53be: $5f
	ret nz                                           ; $53bf: $c0

	sbc h                                            ; $53c0: $9c
	rra                                              ; $53c1: $1f
	jr @+$62                                         ; $53c2: $18 $60

	ld a, c                                          ; $53c4: $79
	pop af                                           ; $53c5: $f1
	sbc l                                            ; $53c6: $9d
	ld bc, $d7f5                                     ; $53c7: $01 $f5 $d7
	rst $38                                          ; $53ca: $ff
	sbc d                                            ; $53cb: $9a
	adc c                                            ; $53cc: $89
	add [hl]                                         ; $53cd: $86
	ret nz                                           ; $53ce: $c0

	ld h, c                                          ; $53cf: $61
	ccf                                              ; $53d0: $3f
	ld h, e                                          ; $53d1: $63
	or b                                             ; $53d2: $b0
	sbc [hl]                                         ; $53d3: $9e
	add e                                            ; $53d4: $83
	sbc $9c                                          ; $53d5: $de $9c
	sbc h                                            ; $53d7: $9c
	add e                                            ; $53d8: $83
	sbc a                                            ; $53d9: $9f
	sbc a                                            ; $53da: $9f
	ret c                                            ; $53db: $d8

	rst $38                                          ; $53dc: $ff
	db $db                                           ; $53dd: $db
	sbc c                                            ; $53de: $99
	sbc [hl]                                         ; $53df: $9e
	jp $ffd8                                         ; $53e0: $c3 $d8 $ff


	sbc d                                            ; $53e3: $9a
	jp $9f99                                         ; $53e4: $c3 $99 $9f


	jp Jump_016_5bf9                                 ; $53e7: $c3 $f9 $5b


jr_016_53ea:
	ldh a, [$de]                                     ; $53ea: $f0 $de
	sbc c                                            ; $53ec: $99
	sbc [hl]                                         ; $53ed: $9e
	add c                                            ; $53ee: $81
	sbc $99                                          ; $53ef: $de $99
	reti                                             ; $53f1: $d9


	rst $38                                          ; $53f2: $ff
	ld h, $00                                        ; $53f3: $26 $00
	rst SubAFromDE                                          ; $53f5: $df
	ld hl, sp-$65                                    ; $53f6: $f8 $9b
	or h                                             ; $53f8: $b4
	db $fc                                           ; $53f9: $fc
	or h                                             ; $53fa: $b4
	call z, $fe4f                                    ; $53fb: $cc $4f $fe
	sub e                                            ; $53fe: $93
	or a                                             ; $53ff: $b7
	rst GetHLinHL                                          ; $5400: $cf
	or b                                             ; $5401: $b0
	rst GetHLinHL                                          ; $5402: $cf
	cp a                                             ; $5403: $bf
	ret nz                                           ; $5404: $c0

	cp a                                             ; $5405: $bf
	ret nz                                           ; $5406: $c0

	add b                                            ; $5407: $80
	rst $38                                          ; $5408: $ff
	ld a, a                                          ; $5409: $7f
	ld a, a                                          ; $540a: $7f
	db $fd                                           ; $540b: $fd
	rst SubAFromDE                                          ; $540c: $df
	db $fc                                           ; $540d: $fc
	sub l                                            ; $540e: $95
	ld [bc], a                                       ; $540f: $02
	cp $fe                                           ; $5410: $fe $fe
	ld b, $fe                                        ; $5412: $06 $fe
	ld b, $02                                        ; $5414: $06 $02
	cp $fc                                           ; $5416: $fe $fc
	db $fc                                           ; $5418: $fc
	dec bc                                           ; $5419: $0b
	inc b                                            ; $541a: $04
	pop af                                           ; $541b: $f1
	add b                                            ; $541c: $80
	ld b, e                                          ; $541d: $43
	jp wPastTitleScreen                                         ; $541e: $c3 $41 $c1


	ld h, c                                          ; $5421: $61
	pop hl                                           ; $5422: $e1
	jr nc, @-$0e                                     ; $5423: $30 $f0

	db $10                                           ; $5425: $10
	ldh a, [rAUD2LOW]                                ; $5426: $f0 $18
	ld hl, sp+$08                                    ; $5428: $f8 $08
	ld hl, sp+$0c                                    ; $542a: $f8 $0c
	db $fc                                           ; $542c: $fc
	db $fc                                           ; $542d: $fc
	inc a                                            ; $542e: $3c
	ld hl, sp+$38                                    ; $542f: $f8 $38
	ld hl, sp-$68                                    ; $5431: $f8 $98
	ldh a, [hDisp1_SCY]                                     ; $5433: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $5435: $f0 $90
	ld h, b                                          ; $5437: $60
	ld h, b                                          ; $5438: $60
	ld h, c                                          ; $5439: $61
	ld h, c                                          ; $543a: $61
	ld h, e                                          ; $543b: $63
	add c                                            ; $543c: $81
	ld h, e                                          ; $543d: $63
	ld a, $23                                        ; $543e: $3e $23
	ld a, $23                                        ; $5440: $3e $23
	ld a, [hl]                                       ; $5442: $7e
	ld l, a                                          ; $5443: $6f
	ld a, h                                          ; $5444: $7c
	ld c, a                                          ; $5445: $4f
	ld hl, sp-$31                                    ; $5446: $f8 $cf
	ld hl, sp-$61                                    ; $5448: $f8 $9f
	ldh a, [$9f]                                     ; $544a: $f0 $9f
	ldh a, [$3f]                                     ; $544c: $f0 $3f
	nop                                              ; $544e: $00
	rst $38                                          ; $544f: $ff
	ld bc, $03ff                                     ; $5450: $01 $ff $03
	rst $38                                          ; $5453: $ff
	ld b, $fe                                        ; $5454: $06 $fe
	inc b                                            ; $5456: $04
	db $fc                                           ; $5457: $fc
	inc c                                            ; $5458: $0c
	db $fc                                           ; $5459: $fc
	ld [$ce7b], sp                                   ; $545a: $08 $7b $ce
	rst SubAFromDE                                          ; $545d: $df
	ldh [$df], a                                     ; $545e: $e0 $df
	add b                                            ; $5460: $80
	rst $38                                          ; $5461: $ff
	rst SubAFromDE                                          ; $5462: $df
	rrca                                             ; $5463: $0f
	sbc e                                            ; $5464: $9b
	rra                                              ; $5465: $1f
	add hl, de                                       ; $5466: $19
	ccf                                              ; $5467: $3f
	inc sp                                           ; $5468: $33
	ld a, e                                          ; $5469: $7b
	sub $95                                          ; $546a: $d6 $95
	ld h, a                                          ; $546c: $67

jr_016_546d:
	ccf                                              ; $546d: $3f
	ccf                                              ; $546e: $3f
	rrca                                             ; $546f: $0f
	inc c                                            ; $5470: $0c
	rlca                                             ; $5471: $07
	ld b, $83                                        ; $5472: $06 $83
	add e                                            ; $5474: $83
	pop bc                                           ; $5475: $c1
	ld a, e                                          ; $5476: $7b
	xor d                                            ; $5477: $aa
	adc c                                            ; $5478: $89
	jr nz, @-$1e                                     ; $5479: $20 $e0

	jr nc, jr_016_546d                               ; $547b: $30 $f0

	add b                                            ; $547d: $80
	rst $38                                          ; $547e: $ff
	ret nz                                           ; $547f: $c0

	rst $38                                          ; $5480: $ff
	ldh [$7f], a                                     ; $5481: $e0 $7f
	ldh a, [$3f]                                     ; $5483: $f0 $3f
	ldh a, [$1f]                                     ; $5485: $f0 $1f
	ld hl, sp-$61                                    ; $5487: $f8 $9f
	ld hl, sp-$71                                    ; $5489: $f8 $8f
	ld hl, sp-$71                                    ; $548b: $f8 $8f
	ld hl, $4fe1                                     ; $548d: $21 $e1 $4f
	cp $9d                                           ; $5490: $fe $9d
	ldh a, [c]                                       ; $5492: $f2
	ld e, $4f                                        ; $5493: $1e $4f
	cp $9d                                           ; $5495: $fe $9d
	rra                                              ; $5497: $1f
	ld de, $fe4f                                     ; $5498: $11 $4f $fe
	sbc d                                            ; $549b: $9a
	ld [bc], a                                       ; $549c: $02
	cp $02                                           ; $549d: $fe $02
	cp $03                                           ; $549f: $fe $03
	ld a, e                                          ; $54a1: $7b
	adc h                                            ; $54a2: $8c
	ld [hl], a                                       ; $54a3: $77
	cp $7f                                           ; $54a4: $fe $7f
	add h                                            ; $54a6: $84
	ld a, a                                          ; $54a7: $7f
	cp $7f                                           ; $54a8: $fe $7f
	xor $9d                                          ; $54aa: $ee $9d
	rrca                                             ; $54ac: $0f
	add hl, bc                                       ; $54ad: $09
	ld l, a                                          ; $54ae: $6f
	cp $97                                           ; $54af: $fe $97
	adc a                                            ; $54b1: $8f
	adc l                                            ; $54b2: $8d
	add a                                            ; $54b3: $87
	add l                                            ; $54b4: $85
	add a                                            ; $54b5: $87
	add l                                            ; $54b6: $85
	add e                                            ; $54b7: $83
	add d                                            ; $54b8: $82
	ld [hl], e                                       ; $54b9: $73
	cp $9e                                           ; $54ba: $fe $9e
	add e                                            ; $54bc: $83
	reti                                             ; $54bd: $d9


	ld de, $377b                                     ; $54be: $11 $7b $37
	sbc [hl]                                         ; $54c1: $9e
	jr nc, jr_016_5533                               ; $54c2: $30 $6f

	and l                                            ; $54c4: $a5
	sbc c                                            ; $54c5: $99
	db $e3                                           ; $54c6: $e3
	ld h, e                                          ; $54c7: $63
	jp $c343                                         ; $54c8: $c3 $43 $c3


	jp nz, $8c7b                                     ; $54cb: $c2 $7b $8c

	ld a, a                                          ; $54ce: $7f
	adc b                                            ; $54cf: $88
	ld a, a                                          ; $54d0: $7f
	ld c, b                                          ; $54d1: $48
	sbc [hl]                                         ; $54d2: $9e
	rra                                              ; $54d3: $1f
	ld a, e                                          ; $54d4: $7b
	cp $9d                                           ; $54d5: $fe $9d
	ccf                                              ; $54d7: $3f
	ldh [$7b], a                                     ; $54d8: $e0 $7b
	cp $f1                                           ; $54da: $fe $f1
	ld [hl], e                                       ; $54dc: $73
	and $5b                                          ; $54dd: $e6 $5b
	cp $7e                                           ; $54df: $fe $7e
	ldh a, [c]                                       ; $54e1: $f2
	ld a, a                                          ; $54e2: $7f
	cp $9d                                           ; $54e3: $fe $9d
	ld b, b                                          ; $54e5: $40
	ret nz                                           ; $54e6: $c0

	ld l, a                                          ; $54e7: $6f
	cp $8b                                           ; $54e8: $fe $8b
	ld b, d                                          ; $54ea: $42
	jp nz, $c242                                     ; $54eb: $c2 $42 $c2

	db $f4                                           ; $54ee: $f4
	sbc h                                            ; $54ef: $9c
	db $fc                                           ; $54f0: $fc
	sbc h                                            ; $54f1: $9c
	db $fc                                           ; $54f2: $fc
	adc h                                            ; $54f3: $8c
	db $fc                                           ; $54f4: $fc
	call z, Call_016_447c                            ; $54f5: $cc $7c $44
	ld a, h                                          ; $54f8: $7c
	ld h, h                                          ; $54f9: $64
	inc a                                            ; $54fa: $3c
	inc h                                            ; $54fb: $24
	inc a                                            ; $54fc: $3c
	inc [hl]                                         ; $54fd: $34
	halt                                             ; $54fe: $76
	ldh a, [$57]                                     ; $54ff: $f0 $57
	cp $f1                                           ; $5501: $fe $f1
	sbc l                                            ; $5503: $9d
	ret nz                                           ; $5504: $c0

	ld a, a                                          ; $5505: $7f
	ld a, e                                          ; $5506: $7b
	cp $9d                                           ; $5507: $fe $9d
	rst $38                                          ; $5509: $ff
	add b                                            ; $550a: $80
	ld [hl], e                                       ; $550b: $73
	cp $77                                           ; $550c: $fe $77
	ld d, b                                          ; $550e: $50
	ld [hl], a                                       ; $550f: $77
	cp h                                             ; $5510: $bc
	sbc h                                            ; $5511: $9c
	ld h, d                                          ; $5512: $62
	ldh [c], a                                       ; $5513: $e2
	ld [hl+], a                                      ; $5514: $22
	ld a, e                                          ; $5515: $7b
	cp $76                                           ; $5516: $fe $76
	sbc h                                            ; $5518: $9c
	ld a, a                                          ; $5519: $7f
	cp $5b                                           ; $551a: $fe $5b
	inc h                                            ; $551c: $24
	sbc d                                            ; $551d: $9a
	inc de                                           ; $551e: $13
	ld a, $33                                        ; $551f: $3e $33
	ld a, $27                                        ; $5521: $3e $27
	ld d, a                                          ; $5523: $57
	ld h, h                                          ; $5524: $64
	ld a, e                                          ; $5525: $7b
	cp $9e                                           ; $5526: $fe $9e
	ld a, a                                          ; $5528: $7f
	ld d, a                                          ; $5529: $57
	inc h                                            ; $552a: $24
	rst SubAFromDE                                          ; $552b: $df
	rst JumpTable                                          ; $552c: $c7
	sbc l                                            ; $552d: $9d
	ld b, [hl]                                       ; $552e: $46
	add $57                                          ; $552f: $c6 $57
	inc b                                            ; $5531: $04
	ld c, a                                          ; $5532: $4f

jr_016_5533:
	cp $9d                                           ; $5533: $fe $9d
	ld a, a                                          ; $5535: $7f
	rst $38                                          ; $5536: $ff
	ld [hl], a                                       ; $5537: $77
	ld d, h                                          ; $5538: $54
	ld e, a                                          ; $5539: $5f
	ldh a, [$7f]                                     ; $553a: $f0 $7f
	sub $76                                          ; $553c: $d6 $76
	call nc, Call_016_439a                           ; $553e: $d4 $9a $43
	jp nz, $c243                                     ; $5541: $c2 $43 $c2

	ld a, a                                          ; $5544: $7f
	ld e, e                                          ; $5545: $5b
	jp c, $a273                                      ; $5546: $da $73 $a2

	ld e, e                                          ; $5549: $5b
	ldh a, [rPCM12]                                  ; $554a: $f0 $76
	push hl                                          ; $554c: $e5
	sbc [hl]                                         ; $554d: $9e
	ccf                                              ; $554e: $3f
	ld e, e                                          ; $554f: $5b
	ldh a, [$7e]                                     ; $5550: $f0 $7e
	jr c, jr_016_55d2                                ; $5552: $38 $7e

	inc [hl]                                         ; $5554: $34
	ld e, [hl]                                       ; $5555: $5e
	sbc [hl]                                         ; $5556: $9e
	ld a, d                                          ; $5557: $7a
	inc h                                            ; $5558: $24
	sub [hl]                                         ; $5559: $96
	ld [bc], a                                       ; $555a: $02
	rlca                                             ; $555b: $07
	ld b, $07                                        ; $555c: $06 $07
	inc b                                            ; $555e: $04
	rrca                                             ; $555f: $0f
	inc c                                            ; $5560: $0c
	rrca                                             ; $5561: $0f
	ld [$fe6f], sp                                   ; $5562: $08 $6f $fe
	ld [hl], a                                       ; $5565: $77
	ld l, h                                          ; $5566: $6c
	ld a, a                                          ; $5567: $7f
	jr nc, jr_016_55d1                               ; $5568: $30 $67

	ld l, $7f                                        ; $556a: $2e $7f
	cp $76                                           ; $556c: $fe $76
	inc c                                            ; $556e: $0c
	ld h, a                                          ; $556f: $67
	cp $7d                                           ; $5570: $fe $7d
	cp $7f                                           ; $5572: $fe $7f
	jp nz, Jump_016_7c9d                             ; $5574: $c2 $9d $7c

	ld b, a                                          ; $5577: $47
	ld l, a                                          ; $5578: $6f
	cp $7e                                           ; $5579: $fe $7e
	ld b, $7e                                        ; $557b: $06 $7e
	db $f4                                           ; $557d: $f4
	ld a, l                                          ; $557e: $7d
	cp $7d                                           ; $557f: $fe $7d
	ld a, [$1c77]                                    ; $5581: $fa $77 $1c
	ld [hl], a                                       ; $5584: $77
	cp $7f                                           ; $5585: $fe $7f
	ld [de], a                                       ; $5587: $12
	ld a, [hl]                                       ; $5588: $7e
	ld [bc], a                                       ; $5589: $02
	ld a, l                                          ; $558a: $7d
	cp $df                                           ; $558b: $fe $df
	pop bc                                           ; $558d: $c1
	halt                                             ; $558e: $76
	inc c                                            ; $558f: $0c
	ld h, e                                          ; $5590: $63
	cp $7b                                           ; $5591: $fe $7b
	inc d                                            ; $5593: $14
	ld c, [hl]                                       ; $5594: $4e
	ld [bc], a                                       ; $5595: $02
	ld a, a                                          ; $5596: $7f
	call c, $0456                                    ; $5597: $dc $56 $04
	sbc e                                            ; $559a: $9b
	cp $9e                                           ; $559b: $fe $9e
	db $fc                                           ; $559d: $fc
	call z, $004a                                    ; $559e: $cc $4a $00
	sbc [hl]                                         ; $55a1: $9e
	inc de                                           ; $55a2: $13
	ld b, a                                          ; $55a3: $47
	ld a, [bc]                                       ; $55a4: $0a
	halt                                             ; $55a5: $76
	db $ec                                           ; $55a6: $ec
	ld d, [hl]                                       ; $55a7: $56
	xor h                                            ; $55a8: $ac
	rst SubAFromDE                                          ; $55a9: $df
	ld de, $10df                                     ; $55aa: $11 $df $10
	call c, $9e38                                    ; $55ad: $dc $38 $9e
	jr z, jr_016_5629                                ; $55b0: $28 $77

	cp $8d                                           ; $55b2: $fe $8d
	ld a, h                                          ; $55b4: $7c
	ld l, h                                          ; $55b5: $6c
	jp $c7c2                                         ; $55b6: $c3 $c2 $c7


	add $87                                          ; $55b9: $c6 $87
	add h                                            ; $55bb: $84
	add a                                            ; $55bc: $87
	add h                                            ; $55bd: $84
	adc a                                            ; $55be: $8f
	adc h                                            ; $55bf: $8c
	adc a                                            ; $55c0: $8f
	adc b                                            ; $55c1: $88
	adc a                                            ; $55c2: $8f
	adc b                                            ; $55c3: $88
	rra                                              ; $55c4: $1f
	add hl, de                                       ; $55c5: $19
	ld [hl], e                                       ; $55c6: $73
	ld b, b                                          ; $55c7: $40
	ld e, d                                          ; $55c8: $5a
	ld l, h                                          ; $55c9: $6c
	ld [hl], l                                       ; $55ca: $75
	jr @-$60                                         ; $55cb: $18 $9e

	rrca                                             ; $55cd: $0f
	ld e, e                                          ; $55ce: $5b
	or b                                             ; $55cf: $b0
	sbc e                                            ; $55d0: $9b

jr_016_55d1:
	ld a, [hl]                                       ; $55d1: $7e

jr_016_55d2:
	ld c, a                                          ; $55d2: $4f
	db $fc                                           ; $55d3: $fc
	cp a                                             ; $55d4: $bf
	ld d, [hl]                                       ; $55d5: $56
	ldh [$7d], a                                     ; $55d6: $e0 $7d
	call $fe6b                                       ; $55d8: $cd $6b $fe
	ld a, d                                          ; $55db: $7a
	cp b                                             ; $55dc: $b8
	ld [hl], a                                       ; $55dd: $77
	cp $8a                                           ; $55de: $fe $8a
	inc e                                            ; $55e0: $1c
	inc d                                            ; $55e1: $14
	inc e                                            ; $55e2: $1c
	inc e                                            ; $55e3: $1c
	adc h                                            ; $55e4: $8c
	adc h                                            ; $55e5: $8c
	add h                                            ; $55e6: $84
	add h                                            ; $55e7: $84
	call nz, $c0c4                                   ; $55e8: $c4 $c4 $c0
	ret nz                                           ; $55eb: $c0

	ldh [$60], a                                     ; $55ec: $e0 $60
	ldh [rAUD4LEN], a                                ; $55ee: $e0 $20
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	ld bc, $ff01                                     ; $55f2: $01 $01 $ff
	ld e, e                                          ; $55f5: $5b
	ret nc                                           ; $55f6: $d0

	ld a, a                                          ; $55f7: $7f
	or d                                             ; $55f8: $b2
	sbc [hl]                                         ; $55f9: $9e
	ld c, $7a                                        ; $55fa: $0e $7a
	jp nz, $f05f                                     ; $55fc: $c2 $5f $f0

	ld a, a                                          ; $55ff: $7f
	dec hl                                           ; $5600: $2b
	sbc l                                            ; $5601: $9d
	and c                                            ; $5602: $a1
	ld h, c                                          ; $5603: $61
	ld d, a                                          ; $5604: $57
	ld e, $71                                        ; $5605: $1e $71
	or a                                             ; $5607: $b7
	sbc d                                            ; $5608: $9a
	ret nz                                           ; $5609: $c0

	add b                                            ; $560a: $80
	add a                                            ; $560b: $87
	add b                                            ; $560c: $80
	sbc a                                            ; $560d: $9f
	ld l, l                                          ; $560e: $6d
	ldh a, [$7b]                                     ; $560f: $f0 $7b
	ld b, l                                          ; $5611: $45
	sbc l                                            ; $5612: $9d
	ld b, d                                          ; $5613: $42
	ldh [c], a                                       ; $5614: $e2
	ld [hl], e                                       ; $5615: $73
	ld b, e                                          ; $5616: $43
	ld l, l                                          ; $5617: $6d
	ldh a, [$7f]                                     ; $5618: $f0 $7f
	db $ed                                           ; $561a: $ed
	sub a                                            ; $561b: $97
	ld a, a                                          ; $561c: $7f
	add b                                            ; $561d: $80
	ccf                                              ; $561e: $3f
	ret nz                                           ; $561f: $c0

	rlca                                             ; $5620: $07
	ld hl, sp+$01                                    ; $5621: $f8 $01
	cp $6f                                           ; $5623: $fe $6f
	ret nz                                           ; $5625: $c0

	ld d, a                                          ; $5626: $57
	inc b                                            ; $5627: $04
	ld a, b                                          ; $5628: $78

jr_016_5629:
	xor [hl]                                         ; $5629: $ae
	sbc [hl]                                         ; $562a: $9e
	daa                                              ; $562b: $27
	ld d, l                                          ; $562c: $55
	add h                                            ; $562d: $84
	ld [hl], a                                       ; $562e: $77
	ld [hl], h                                       ; $562f: $74
	ld d, l                                          ; $5630: $55
	ld h, h                                          ; $5631: $64
	ld [hl], a                                       ; $5632: $77
	ld e, b                                          ; $5633: $58
	ld c, b                                          ; $5634: $48
	or c                                             ; $5635: $b1
	sbc [hl]                                         ; $5636: $9e
	ld hl, $4478                                     ; $5637: $21 $78 $44
	ld [hl], d                                       ; $563a: $72
	add c                                            ; $563b: $81
	ld a, a                                          ; $563c: $7f
	ld d, [hl]                                       ; $563d: $56
	ld [hl], e                                       ; $563e: $73
	cp $9e                                           ; $563f: $fe $9e
	ld h, b                                          ; $5641: $60
	ld d, h                                          ; $5642: $54
	db $f4                                           ; $5643: $f4
	halt                                             ; $5644: $76
	db $e4                                           ; $5645: $e4
	sbc l                                            ; $5646: $9d
	ei                                               ; $5647: $fb
	rlca                                             ; $5648: $07
	ld c, l                                          ; $5649: $4d
	xor a                                            ; $564a: $af
	ld h, [hl]                                       ; $564b: $66
	ld [$ef67], sp                                   ; $564c: $08 $67 $ef
	ld h, [hl]                                       ; $564f: $66
	ld [$1c67], sp                                   ; $5650: $08 $67 $1c
	ld h, [hl]                                       ; $5653: $66
	ld [$426f], sp                                   ; $5654: $08 $6f $42
	ld a, a                                          ; $5657: $7f
	cp $7d                                           ; $5658: $fe $7d
	jp nc, $d475                                     ; $565a: $d2 $75 $d4

	ld e, a                                          ; $565d: $5f
	db $10                                           ; $565e: $10
	rst SubAFromDE                                          ; $565f: $df
	rrca                                             ; $5660: $0f
	rst $38                                          ; $5661: $ff
	rst SubAFromDE                                          ; $5662: $df
	add b                                            ; $5663: $80
	rst SubAFromDE                                          ; $5664: $df
	ldh [$65], a                                     ; $5665: $e0 $65
	xor h                                            ; $5667: $ac
	rst SubAFromDE                                          ; $5668: $df
	add e                                            ; $5669: $83
	ld a, l                                          ; $566a: $7d
	ret nz                                           ; $566b: $c0

	sbc d                                            ; $566c: $9a
	rrca                                             ; $566d: $0f
	dec c                                            ; $566e: $0d
	ccf                                              ; $566f: $3f
	dec sp                                           ; $5670: $3b
	cp $65                                           ; $5671: $fe $65
	add b                                            ; $5673: $80
	ld [hl], c                                       ; $5674: $71
	ret nz                                           ; $5675: $c0

	ld h, a                                          ; $5676: $67
	jp nz, $fe7f                                     ; $5677: $c2 $7f $fe

	ld [hl], a                                       ; $567a: $77
	ld a, [bc]                                       ; $567b: $0a
	ld d, [hl]                                       ; $567c: $56
	call z, Call_016_78df                            ; $567d: $cc $df $78
	db $fd                                           ; $5680: $fd
	ld e, [hl]                                       ; $5681: $5e
	xor h                                            ; $5682: $ac
	ld [hl], h                                       ; $5683: $74
	db $ec                                           ; $5684: $ec
	sbc d                                            ; $5685: $9a
	ld a, h                                          ; $5686: $7c
	ld c, a                                          ; $5687: $4f
	ld hl, sp-$41                                    ; $5688: $f8 $bf
	ldh [$66], a                                     ; $568a: $e0 $66
	ld h, b                                          ; $568c: $60
	sbc [hl]                                         ; $568d: $9e
	ld l, a                                          ; $568e: $6f
	ld a, e                                          ; $568f: $7b
	ldh a, [c]                                       ; $5690: $f2
	sbc [hl]                                         ; $5691: $9e
	rst GetHLinHL                                          ; $5692: $cf
	ld a, c                                          ; $5693: $79
	add $7f                                          ; $5694: $c6 $7f
	cp $70                                           ; $5696: $fe $70
	ldh [$6d], a                                     ; $5698: $e0 $6d
	and d                                            ; $569a: $a2
	ld e, [hl]                                       ; $569b: $5e
	inc a                                            ; $569c: $3c
	sbc l                                            ; $569d: $9d
	ld a, h                                          ; $569e: $7c
	ld c, h                                          ; $569f: $4c
	ld [hl], a                                       ; $56a0: $77
	cp $9d                                           ; $56a1: $fe $9d
	db $fc                                           ; $56a3: $fc
	call c, $c067                                    ; $56a4: $dc $67 $c0
	ld l, [hl]                                       ; $56a7: $6e
	call nz, $c67e                                   ; $56a8: $c4 $7e $c6
	ld h, a                                          ; $56ab: $67
	add b                                            ; $56ac: $80
	sub e                                            ; $56ad: $93
	sbc b                                            ; $56ae: $98
	ld hl, sp-$70                                    ; $56af: $f8 $90
	ldh a, [hDisp1_SCY]                                     ; $56b1: $f0 $90
	ldh a, [$60]                                     ; $56b3: $f0 $60
	ld h, b                                          ; $56b5: $60
	ld h, c                                          ; $56b6: $61

jr_016_56b7:
	ld h, c                                          ; $56b7: $61
	ld h, e                                          ; $56b8: $63
	ld h, e                                          ; $56b9: $63
	ld [hl], l                                       ; $56ba: $75
	inc h                                            ; $56bb: $24
	ld h, [hl]                                       ; $56bc: $66
	rst SubAFromHL                                          ; $56bd: $d7
	ld h, a                                          ; $56be: $67
	ld d, b                                          ; $56bf: $50

jr_016_56c0:
	ld [hl], b                                       ; $56c0: $70
	ldh [$58], a                                     ; $56c1: $e0 $58
	call c, $0866                                    ; $56c3: $dc $66 $08
	ld h, h                                          ; $56c6: $64
	cp h                                             ; $56c7: $bc
	ld a, c                                          ; $56c8: $79
	scf                                              ; $56c9: $37
	sbc c                                            ; $56ca: $99
	jr nc, @-$06                                     ; $56cb: $30 $f8

	jr c, jr_016_56b7                                ; $56cd: $38 $e8

	jr c, jr_016_56c0                                ; $56cf: $38 $ef

	ld h, a                                          ; $56d1: $67
	ld h, b                                          ; $56d2: $60
	sbc [hl]                                         ; $56d3: $9e
	inc hl                                           ; $56d4: $23
	ld l, a                                          ; $56d5: $6f
	cp $67                                           ; $56d6: $fe $67
	and b                                            ; $56d8: $a0
	sbc e                                            ; $56d9: $9b
	add b                                            ; $56da: $80
	ld a, a                                          ; $56db: $7f
	add b                                            ; $56dc: $80
	ld a, a                                          ; $56dd: $7f
	ld d, b                                          ; $56de: $50
	ld [hl], b                                       ; $56df: $70
	ld sp, hl                                        ; $56e0: $f9
	adc h                                            ; $56e1: $8c
	ld bc, $f3f0                                     ; $56e2: $01 $f0 $f3
	ldh a, [rAUD1LOW]                                ; $56e5: $f0 $13
	ldh a, [rAUD2ENV]                                ; $56e7: $f0 $17
	rlca                                             ; $56e9: $07
	ld hl, sp+$0f                                    ; $56ea: $f8 $0f
	ldh a, [rIF]                                     ; $56ec: $f0 $0f
	ldh a, [$1f]                                     ; $56ee: $f0 $1f
	ldh [$3f], a                                     ; $56f0: $e0 $3f
	ret nz                                           ; $56f2: $c0

	ld a, a                                          ; $56f3: $7f
	cp a                                             ; $56f4: $bf
	ld [hl], a                                       ; $56f5: $77
	add a                                            ; $56f6: $87
	ld e, [hl]                                       ; $56f7: $5e
	add $99                                          ; $56f8: $c6 $99
	ld hl, sp-$01                                    ; $56fa: $f8 $ff
	ld hl, sp-$72                                    ; $56fc: $f8 $8e
	ld hl, sp-$64                                    ; $56fe: $f8 $9c
	ld e, a                                          ; $5700: $5f
	ldh a, [hDisp1_WY]                                     ; $5701: $f0 $95
	add e                                            ; $5703: $83
	ld a, a                                          ; $5704: $7f
	ldh [c], a                                       ; $5705: $e2
	ld e, $f2                                        ; $5706: $1e $f2
	ld c, $00                                        ; $5708: $0e $00
	rlca                                             ; $570a: $07
	nop                                              ; $570b: $00
	inc bc                                           ; $570c: $03
	ld a, e                                          ; $570d: $7b
	cp $9b                                           ; $570e: $fe $9b
	ld bc, $0000                                     ; $5710: $01 $00 $00
	rst $38                                          ; $5713: $ff
	ld [hl], e                                       ; $5714: $73
	inc [hl]                                         ; $5715: $34
	ld a, [hl]                                       ; $5716: $7e
	and e                                            ; $5717: $a3
	ld a, e                                          ; $5718: $7b
	cp $9e                                           ; $5719: $fe $9e
	ret nz                                           ; $571b: $c0

	ld a, e                                          ; $571c: $7b
	cp $9c                                           ; $571d: $fe $9c
	ldh [$f3], a                                     ; $571f: $e0 $f3
	di                                               ; $5721: $f3
	ld [hl], h                                       ; $5722: $74
	call c, $d05f                                    ; $5723: $dc $5f $d0
	sub l                                            ; $5726: $95
	rst SubAFromBC                                          ; $5727: $e7
	rst $38                                          ; $5728: $ff
	inc a                                            ; $5729: $3c
	db $fc                                           ; $572a: $fc
	jr c, @-$06                                      ; $572b: $38 $f8

	dec e                                            ; $572d: $1d
	pop bc                                           ; $572e: $c1
	dec e                                            ; $572f: $1d
	pop bc                                           ; $5730: $c1
	halt                                             ; $5731: $76
	jp nz, $ffd9                                     ; $5732: $c2 $d9 $ff

	ld a, l                                          ; $5735: $7d
	or l                                             ; $5736: $b5
	sbc e                                            ; $5737: $9b
	ret nc                                           ; $5738: $d0

	rla                                              ; $5739: $17
	db $10                                           ; $573a: $10
	db $10                                           ; $573b: $10
	rst SubAFromHL                                          ; $573c: $d7
	rst $38                                          ; $573d: $ff
	sbc d                                            ; $573e: $9a
	add c                                            ; $573f: $81
	inc a                                            ; $5740: $3c
	add c                                            ; $5741: $81
	inc a                                            ; $5742: $3c
	add b                                            ; $5743: $80
	ld a, d                                          ; $5744: $7a
	ld e, c                                          ; $5745: $59
	ld a, a                                          ; $5746: $7f
	or e                                             ; $5747: $b3
	ld a, e                                          ; $5748: $7b
	cp $7f                                           ; $5749: $fe $7f
	dec bc                                           ; $574b: $0b
	sbc c                                            ; $574c: $99
	ccf                                              ; $574d: $3f
	rst AddAOntoHL                                          ; $574e: $ef
	nop                                              ; $574f: $00
	rst AddAOntoHL                                          ; $5750: $ef
	nop                                              ; $5751: $00
	rrca                                             ; $5752: $0f
	ld e, b                                          ; $5753: $58
	xor a                                            ; $5754: $af
	ld e, a                                          ; $5755: $5f
	push af                                          ; $5756: $f5
	ld a, a                                          ; $5757: $7f
	ld b, b                                          ; $5758: $40
	ld a, l                                          ; $5759: $7d

jr_016_575a:
	db $dd                                           ; $575a: $dd
	ld a, e                                          ; $575b: $7b
	ld b, b                                          ; $575c: $40
	ld e, e                                          ; $575d: $5b
	and b                                            ; $575e: $a0
	sbc e                                            ; $575f: $9b
	db $fc                                           ; $5760: $fc
	inc a                                            ; $5761: $3c
	ld hl, sp+$38                                    ; $5762: $f8 $38
	ld e, a                                          ; $5764: $5f
	ldh a, [$7f]                                     ; $5765: $f0 $7f
	ld c, $77                                        ; $5767: $0e $77
	ld [$724c], sp                                   ; $5769: $08 $4c $72
	ld d, l                                          ; $576c: $55
	or $7f                                           ; $576d: $f6 $7f
	and e                                            ; $576f: $a3
	rst SubAFromDE                                          ; $5770: $df
	ldh [$df], a                                     ; $5771: $e0 $df
	add b                                            ; $5773: $80
	ld d, a                                          ; $5774: $57
	ret nc                                           ; $5775: $d0

	ld a, l                                          ; $5776: $7d
	ld a, [$0f9d]                                    ; $5777: $fa $9d $0f
	inc c                                            ; $577a: $0c
	ld d, a                                          ; $577b: $57
	jp nc, $fa7d                                     ; $577c: $d2 $7d $fa

	ld a, l                                          ; $577f: $7d
	or $57                                           ; $5780: $f6 $57
	ret nc                                           ; $5782: $d0

	halt                                             ; $5783: $76
	ld a, b                                          ; $5784: $78
	ld e, a                                          ; $5785: $5f
	ldh a, [$9d]                                     ; $5786: $f0 $9d
	di                                               ; $5788: $f3
	rst $38                                          ; $5789: $ff
	ld c, a                                          ; $578a: $4f
	jr nz, jr_016_57f8                               ; $578b: $20 $6b

	nop                                              ; $578d: $00
	ld h, e                                          ; $578e: $63
	ldh a, [$7d]                                     ; $578f: $f0 $7d
	adc $9b                                          ; $5791: $ce $9b
	ld [bc], a                                       ; $5793: $02
	cp $06                                           ; $5794: $fe $06
	ld a, [$e04f]                                    ; $5796: $fa $4f $e0
	sbc l                                            ; $5799: $9d
	rrca                                             ; $579a: $0f
	add hl, bc                                       ; $579b: $09
	ld d, a                                          ; $579c: $57
	ldh a, [$9b]                                     ; $579d: $f0 $9b
	add e                                            ; $579f: $83
	add d                                            ; $57a0: $82
	add e                                            ; $57a1: $83
	add d                                            ; $57a2: $82
	ld d, a                                          ; $57a3: $57
	ldh a, [$74]                                     ; $57a4: $f0 $74
	ld hl, sp+$52                                    ; $57a6: $f8 $52
	sub b                                            ; $57a8: $90
	sbc h                                            ; $57a9: $9c
	adc a                                            ; $57aa: $8f
	ld hl, sp-$61                                    ; $57ab: $f8 $9f
	rra                                              ; $57ad: $1f
	add b                                            ; $57ae: $80
	ld a, l                                          ; $57af: $7d
	cp $75                                           ; $57b0: $fe $75
	ld hl, sp+$56                                    ; $57b2: $f8 $56
	ldh a, [$72]                                     ; $57b4: $f0 $72
	jr nc, jr_016_581b                               ; $57b6: $30 $63

	ldh a, [$97]                                     ; $57b8: $f0 $97
	rst FarCall                                          ; $57ba: $f7
	rst $38                                          ; $57bb: $ff
	db $f4                                           ; $57bc: $f4
	sbc h                                            ; $57bd: $9c
	db $fc                                           ; $57be: $fc
	sbc h                                            ; $57bf: $9c
	ret nz                                           ; $57c0: $c0

	sbc $7b                                          ; $57c1: $de $7b
	cp $7f                                           ; $57c3: $fe $7f
	add hl, sp                                       ; $57c5: $39
	db $dd                                           ; $57c6: $dd
	rst $38                                          ; $57c7: $ff
	ld a, a                                          ; $57c8: $7f
	rra                                              ; $57c9: $1f
	sbc b                                            ; $57ca: $98
	db $fc                                           ; $57cb: $fc
	rst $38                                          ; $57cc: $ff
	db $fc                                           ; $57cd: $fc
	ld c, $e0                                        ; $57ce: $0e $e0
	inc c                                            ; $57d0: $0c
	ret nz                                           ; $57d1: $c0

	ld d, [hl]                                       ; $57d2: $56
	add b                                            ; $57d3: $80
	sbc e                                            ; $57d4: $9b
	jr nc, jr_016_575a                               ; $57d5: $30 $83

	jr nz, jr_016_57dc                               ; $57d7: $20 $03

	halt                                             ; $57d9: $76
	ld b, h                                          ; $57da: $44
	reti                                             ; $57db: $d9


jr_016_57dc:
	rst $38                                          ; $57dc: $ff
	sbc c                                            ; $57dd: $99
	ldh [$ef], a                                     ; $57de: $e0 $ef
	ldh [$e7], a                                     ; $57e0: $e0 $e7
	ldh a, [$f0]                                     ; $57e2: $f0 $f0
	rst SubAFromHL                                          ; $57e4: $d7
	rst $38                                          ; $57e5: $ff
	ld a, l                                          ; $57e6: $7d
	ld a, e                                          ; $57e7: $7b
	sbc h                                            ; $57e8: $9c
	add a                                            ; $57e9: $87
	rlca                                             ; $57ea: $07
	rra                                              ; $57eb: $1f
	ld [hl], d                                       ; $57ec: $72
	halt                                             ; $57ed: $76
	ld a, d                                          ; $57ee: $7a
	ld [hl], b                                       ; $57ef: $70
	ld a, [hl]                                       ; $57f0: $7e
	ld l, d                                          ; $57f1: $6a
	halt                                             ; $57f2: $76
	ld [hl], l                                       ; $57f3: $75
	sbc [hl]                                         ; $57f4: $9e
	db $fc                                           ; $57f5: $fc
	ld e, d                                          ; $57f6: $5a
	ld a, e                                          ; $57f7: $7b

jr_016_57f8:
	ld a, [hl]                                       ; $57f8: $7e
	add hl, de                                       ; $57f9: $19
	ld a, a                                          ; $57fa: $7f
	jp nc, $f19d                                     ; $57fb: $d2 $9d $f1

	db $fc                                           ; $57fe: $fc
	ld a, e                                          ; $57ff: $7b
	xor b                                            ; $5800: $a8
	ld a, e                                          ; $5801: $7b
	and d                                            ; $5802: $a2
	ld a, a                                          ; $5803: $7f
	cp $de                                           ; $5804: $fe $de
	rst $38                                          ; $5806: $ff
	rst SubAFromDE                                          ; $5807: $df
	ccf                                              ; $5808: $3f
	rst SubAFromDE                                          ; $5809: $df
	ld a, a                                          ; $580a: $7f
	push de                                          ; $580b: $d5
	rst $38                                          ; $580c: $ff
	sbc h                                            ; $580d: $9c
	ld [bc], a                                       ; $580e: $02
	ldh a, [rDIV]                                    ; $580f: $f0 $04
	ld d, e                                          ; $5811: $53
	sub b                                            ; $5812: $90
	sbc e                                            ; $5813: $9b
	nop                                              ; $5814: $00
	ld a, a                                          ; $5815: $7f
	nop                                              ; $5816: $00
	rra                                              ; $5817: $1f
	ld l, e                                          ; $5818: $6b
	ld [hl], b                                       ; $5819: $70
	ld l, a                                          ; $581a: $6f

jr_016_581b:
	ld l, e                                          ; $581b: $6b
	ld [hl], e                                       ; $581c: $73
	jp z, $ffd7                                      ; $581d: $ca $d7 $ff

	db $db                                           ; $5820: $db
	ld a, a                                          ; $5821: $7f
	rst SubAFromHL                                          ; $5822: $d7
	rst $38                                          ; $5823: $ff

jr_016_5824:
	ld c, d                                          ; $5824: $4a
	inc b                                            ; $5825: $04
	sbc c                                            ; $5826: $99
	rlca                                             ; $5827: $07
	ldh a, [rTAC]                                    ; $5828: $f0 $07
	ldh a, [rP1]                                     ; $582a: $f0 $00
	nop                                              ; $582c: $00
	rst SubAFromHL                                          ; $582d: $d7
	rst $38                                          ; $582e: $ff
	add b                                            ; $582f: $80
	ld h, c                                          ; $5830: $61
	pop hl                                           ; $5831: $e1
	jr nc, jr_016_5824                               ; $5832: $30 $f0

	db $10                                           ; $5834: $10
	ldh a, [rAUD2LOW]                                ; $5835: $f0 $18
	ld hl, sp+$08                                    ; $5837: $f8 $08
	ld hl, sp+$0c                                    ; $5839: $f8 $0c
	db $fc                                           ; $583b: $fc
	inc b                                            ; $583c: $04
	db $fc                                           ; $583d: $fc
	ld b, $fe                                        ; $583e: $06 $fe
	ld hl, sp-$68                                    ; $5840: $f8 $98
	ldh a, [hDisp1_SCY]                                     ; $5842: $f0 $90
	ldh a, [hDisp1_SCY]                                     ; $5844: $f0 $90
	ld h, b                                          ; $5846: $60
	ld h, b                                          ; $5847: $60
	ld h, c                                          ; $5848: $61
	ld h, c                                          ; $5849: $61
	ld h, e                                          ; $584a: $63
	ld h, e                                          ; $584b: $63
	inc bc                                           ; $584c: $03
	ld [bc], a                                       ; $584d: $02
	rlca                                             ; $584e: $07
	add l                                            ; $584f: $85
	ld b, $7e                                        ; $5850: $06 $7e
	ld h, a                                          ; $5852: $67
	ld a, h                                          ; $5853: $7c
	ld c, a                                          ; $5854: $4f
	ld hl, sp-$31                                    ; $5855: $f8 $cf
	ld hl, sp-$61                                    ; $5857: $f8 $9f
	ldh a, [$9f]                                     ; $5859: $f0 $9f
	ldh a, [$3f]                                     ; $585b: $f0 $3f
	ldh [$3f], a                                     ; $585d: $e0 $3f
	ldh [$7f], a                                     ; $585f: $e0 $7f
	inc bc                                           ; $5861: $03
	rst $38                                          ; $5862: $ff
	ld b, $fe                                        ; $5863: $06 $fe
	inc b                                            ; $5865: $04
	db $fc                                           ; $5866: $fc
	inc c                                            ; $5867: $0c

jr_016_5868:
	db $fc                                           ; $5868: $fc
	ld [$ce7b], sp                                   ; $5869: $08 $7b $ce
	ld [hl], a                                       ; $586c: $77
	cp $ff                                           ; $586d: $fe $ff
	rst SubAFromDE                                          ; $586f: $df
	rrca                                             ; $5870: $0f
	sbc c                                            ; $5871: $99
	rra                                              ; $5872: $1f
	add hl, de                                       ; $5873: $19
	ccf                                              ; $5874: $3f
	inc sp                                           ; $5875: $33
	ld a, $23                                        ; $5876: $3e $23
	ld a, e                                          ; $5878: $7b
	sub $92                                          ; $5879: $d6 $92
	ld b, a                                          ; $587b: $47
	ld a, h                                          ; $587c: $7c
	ld b, a                                          ; $587d: $47
	rlca                                             ; $587e: $07
	ld b, $83                                        ; $587f: $06 $83
	add d                                            ; $5881: $82
	pop bc                                           ; $5882: $c1
	pop bc                                           ; $5883: $c1
	ld h, c                                          ; $5884: $61
	pop hl                                           ; $5885: $e1
	jr nz, jr_016_5868                               ; $5886: $20 $e0

	ld [hl], a                                       ; $5888: $77
	xor b                                            ; $5889: $a8
	ld a, a                                          ; $588a: $7f
	cp $7f                                           ; $588b: $fe $7f
	adc $7f                                          ; $588d: $ce $7f
	ret z                                            ; $588f: $c8

	sbc c                                            ; $5890: $99
	ldh a, [$1f]                                     ; $5891: $f0 $1f
	ld hl, sp+$1f                                    ; $5893: $f8 $1f
	ld hl, sp-$71                                    ; $5895: $f8 $8f
	ld l, a                                          ; $5897: $6f
	cp $db                                           ; $5898: $fe $db
	cp $d7                                           ; $589a: $fe $d7
	rst $38                                          ; $589c: $ff
	adc d                                            ; $589d: $8a
	nop                                              ; $589e: $00
	ld [hl], e                                       ; $589f: $73
	nop                                              ; $58a0: $00
	ld a, e                                          ; $58a1: $7b
	nop                                              ; $58a2: $00
	dec sp                                           ; $58a3: $3b
	nop                                              ; $58a4: $00
	ccf                                              ; $58a5: $3f
	add b                                            ; $58a6: $80
	rra                                              ; $58a7: $1f
	ret nz                                           ; $58a8: $c0

	rra                                              ; $58a9: $1f
	ret nz                                           ; $58aa: $c0

	rrca                                             ; $58ab: $0f
	ret nz                                           ; $58ac: $c0

	rrca                                             ; $58ad: $0f
	add b                                            ; $58ae: $80
	inc a                                            ; $58af: $3c
	add b                                            ; $58b0: $80
	inc a                                            ; $58b1: $3c
	add c                                            ; $58b2: $81
	ld e, e                                          ; $58b3: $5b
	cp $99                                           ; $58b4: $fe $99
	ccf                                              ; $58b6: $3f
	jp $817f                                         ; $58b7: $c3 $7f $81


	rst $38                                          ; $58ba: $ff
	ld bc, $fe7b                                     ; $58bb: $01 $7b $fe
	ld a, a                                          ; $58be: $7f
	ld c, h                                          ; $58bf: $4c
	ld [hl], e                                       ; $58c0: $73
	cp $9d                                           ; $58c1: $fe $9d
	add hl, bc                                       ; $58c3: $09
	rrca                                             ; $58c4: $0f
	ld [hl], a                                       ; $58c5: $77
	cp $91                                           ; $58c6: $fe $91
	adc l                                            ; $58c8: $8d
	adc a                                            ; $58c9: $8f
	add l                                            ; $58ca: $85
	add a                                            ; $58cb: $87
	add l                                            ; $58cc: $85
	add a                                            ; $58cd: $87
	rst JumpTable                                          ; $58ce: $c7
	rst JumpTable                                          ; $58cf: $c7
	add $46                                          ; $58d0: $c6 $46
	add e                                            ; $58d2: $83
	add d                                            ; $58d3: $82
	add e                                            ; $58d4: $83
	add e                                            ; $58d5: $83
	rst SubAFromHL                                          ; $58d6: $d7
	ld de, $10df                                     ; $58d7: $11 $df $10
	sbc l                                            ; $58da: $9d
	ld hl, $77e1                                     ; $58db: $21 $e1 $77
	cp $9a                                           ; $58de: $fe $9a
	ld h, e                                          ; $58e0: $63
	db $e3                                           ; $58e1: $e3
	ld b, e                                          ; $58e2: $43
	jp $7bc2                                         ; $58e3: $c3 $c2 $7b


	cp $9b                                           ; $58e6: $fe $9b
	add $c7                                          ; $58e8: $c6 $c7
	ld hl, sp-$67                                    ; $58ea: $f8 $99
	ld [hl], e                                       ; $58ec: $73
	ld a, c                                          ; $58ed: $79
	sbc h                                            ; $58ee: $9c
	jr nc, @-$1e                                     ; $58ef: $30 $e0

	jr nz, @+$75                                     ; $58f1: $20 $73

	cp $9a                                           ; $58f3: $fe $9a
	ld h, b                                          ; $58f5: $60
	ld hl, $a1e1                                     ; $58f6: $21 $e1 $a1
	ld h, c                                          ; $58f9: $61
	ld [hl], e                                       ; $58fa: $73
	db $dd                                           ; $58fb: $dd
	ld l, e                                          ; $58fc: $6b
	cp $9e                                           ; $58fd: $fe $9e
	cp a                                             ; $58ff: $bf
	call c, $db3f                                    ; $5900: $dc $3f $db
	ld a, a                                          ; $5903: $7f
	db $dd                                           ; $5904: $dd
	rst $38                                          ; $5905: $ff
	sbc l                                            ; $5906: $9d
	ld b, b                                          ; $5907: $40
	ret nz                                           ; $5908: $c0

	ld l, a                                          ; $5909: $6f
	cp $8a                                           ; $590a: $fe $8a
	ld b, d                                          ; $590c: $42
	jp nz, $c242                                     ; $590d: $c2 $42 $c2

	ld b, e                                          ; $5910: $43
	jp $c343                                         ; $5911: $c3 $43 $c3


	adc h                                            ; $5914: $8c
	db $fc                                           ; $5915: $fc
	call z, Call_016_44fc                            ; $5916: $cc $fc $44
	ld a, h                                          ; $5919: $7c
	ld h, h                                          ; $591a: $64
	ld a, h                                          ; $591b: $7c
	inc h                                            ; $591c: $24
	inc a                                            ; $591d: $3c
	inc [hl]                                         ; $591e: $34
	inc a                                            ; $591f: $3c
	inc d                                            ; $5920: $14
	sbc $1c                                          ; $5921: $de $1c
	sbc l                                            ; $5923: $9d
	inc bc                                           ; $5924: $03
	ld a, b                                          ; $5925: $78
	ld a, e                                          ; $5926: $7b
	cp $9d                                           ; $5927: $fe $9d
	ld [hl], b                                       ; $5929: $70
	rlca                                             ; $592a: $07
	ld a, e                                          ; $592b: $7b
	cp $9c                                           ; $592c: $fe $9c
	ld b, $e0                                        ; $592e: $06 $e0
	ld c, $7b                                        ; $5930: $0e $7b
	cp $9a                                           ; $5932: $fe $9a
	nop                                              ; $5934: $00
	rst JumpTable                                          ; $5935: $c7
	nop                                              ; $5936: $00
	rst JumpTable                                          ; $5937: $c7
	db $10                                           ; $5938: $10
	ld l, a                                          ; $5939: $6f
	cp $9d                                           ; $593a: $fe $9d
	add e                                            ; $593c: $83
	jr nc, jr_016_59ba                               ; $593d: $30 $7b

	cp $9d                                           ; $593f: $fe $9d
	add b                                            ; $5941: $80
	cp l                                             ; $5942: $bd
	ld a, e                                          ; $5943: $7b
	cp $9c                                           ; $5944: $fe $9c
	sbc l                                            ; $5946: $9d
	ret nz                                           ; $5947: $c0

	db $dd                                           ; $5948: $dd
	ld a, e                                          ; $5949: $7b
	cp $9a                                           ; $594a: $fe $9a
	rst GetHLinHL                                          ; $594c: $cf
	ldh [$ef], a                                     ; $594d: $e0 $ef
	ldh [$ef], a                                     ; $594f: $e0 $ef
	pop de                                           ; $5951: $d1
	rst $38                                          ; $5952: $ff
	sbc l                                            ; $5953: $9d
	dec e                                            ; $5954: $1d

Call_016_5955:
	pop bc                                           ; $5955: $c1
	ld h, a                                          ; $5956: $67
	cp $97                                           ; $5957: $fe $97
	add hl, de                                       ; $5959: $19
	pop bc                                           ; $595a: $c1
	dec de                                           ; $595b: $1b
	add e                                            ; $595c: $83
	inc sp                                           ; $595d: $33
	add e                                            ; $595e: $83
	db $ec                                           ; $595f: $ec
	ld bc, $fe6f                                     ; $5960: $01 $6f $fe
	sub l                                            ; $5963: $95
	ld h, b                                          ; $5964: $60
	ld bc, $0330                                     ; $5965: $01 $30 $03
	nop                                              ; $5968: $00
	rrca                                             ; $5969: $0f
	nop                                              ; $596a: $00
	rst $38                                          ; $596b: $ff
	ret nz                                           ; $596c: $c0

	sbc $63                                          ; $596d: $de $63
	cp $9e                                           ; $596f: $fe $9e
	rst SubAFromDE                                          ; $5971: $df
	ld [hl], a                                       ; $5972: $77
	cp [hl]                                          ; $5973: $be
	sbc l                                            ; $5974: $9d
	ld [hl], a                                       ; $5975: $77
	rlca                                             ; $5976: $07
	ld l, a                                          ; $5977: $6f
	cp $97                                           ; $5978: $fe $97
	ld h, a                                          ; $597a: $67
	rlca                                             ; $597b: $07
	rst AddAOntoHL                                          ; $597c: $ef
	rrca                                             ; $597d: $0f
	rst GetHLinHL                                          ; $597e: $cf
	rrca                                             ; $597f: $0f
	sbc a                                            ; $5980: $9f
	rra                                              ; $5981: $1f
	ld [hl], a                                       ; $5982: $77
	xor h                                            ; $5983: $ac
	ld a, a                                          ; $5984: $7f
	add sp, $7f                                      ; $5985: $e8 $7f
	db $e4                                           ; $5987: $e4
	add l                                            ; $5988: $85
	add b                                            ; $5989: $80
	sbc [hl]                                         ; $598a: $9e
	nop                                              ; $598b: $00
	ld a, $00                                        ; $598c: $3e $00
	ld a, h                                          ; $598e: $7c
	ld bc, $3bf8                                     ; $598f: $01 $f8 $3b
	add e                                            ; $5992: $83
	dec sp                                           ; $5993: $3b
	add e                                            ; $5994: $83
	add hl, de                                       ; $5995: $19
	add c                                            ; $5996: $81
	dec e                                            ; $5997: $1d
	pop bc                                           ; $5998: $c1
	inc c                                            ; $5999: $0c
	ret nz                                           ; $599a: $c0

	ld b, $e0                                        ; $599b: $06 $e0
	nop                                              ; $599d: $00
	ldh a, [rP1]                                     ; $599e: $f0 $00
	rst $38                                          ; $59a0: $ff
	ldh a, [$f7]                                     ; $59a1: $f0 $f7
	ld l, e                                          ; $59a3: $6b
	cp $98                                           ; $59a4: $fe $98
	di                                               ; $59a6: $f3
	ld hl, sp-$05                                    ; $59a7: $f8 $fb
	ld hl, sp-$07                                    ; $59a9: $f8 $f9
	db $fc                                           ; $59ab: $fc
	db $fc                                           ; $59ac: $fc
	ld e, a                                          ; $59ad: $5f
	ld [hl+], a                                      ; $59ae: $22
	db $db                                           ; $59af: $db
	ld a, a                                          ; $59b0: $7f
	sbc h                                            ; $59b1: $9c
	inc bc                                           ; $59b2: $03
	ld hl, sp+$03                                    ; $59b3: $f8 $03
	ld a, c                                          ; $59b5: $79
	cp $5f                                           ; $59b6: $fe $5f
	cp $9c                                           ; $59b8: $fe $9c

jr_016_59ba:
	ld [bc], a                                       ; $59ba: $02
	cp $03                                           ; $59bb: $fe $03
	ld [hl], d                                       ; $59bd: $72
	and c                                            ; $59be: $a1
	ld h, a                                          ; $59bf: $67
	cp $99                                           ; $59c0: $fe $99
	rlca                                             ; $59c2: $07
	inc b                                            ; $59c3: $04
	rrca                                             ; $59c4: $0f
	inc c                                            ; $59c5: $0c
	rrca                                             ; $59c6: $0f
	ld [$fe5f], sp                                   ; $59c7: $08 $5f $fe
	sbc d                                            ; $59ca: $9a
	ret nz                                           ; $59cb: $c0

	rst $38                                          ; $59cc: $ff
	ret nz                                           ; $59cd: $c0

	rst $38                                          ; $59ce: $ff
	add b                                            ; $59cf: $80
	ld e, e                                          ; $59d0: $5b
	cp $66                                           ; $59d1: $fe $66
	ld [$d26d], sp                                   ; $59d3: $08 $6d $d2
	ld a, a                                          ; $59d6: $7f
	call nz, $0c76                                   ; $59d7: $c4 $76 $0c
	ld a, [hl]                                       ; $59da: $7e
	ld b, $7e                                        ; $59db: $06 $7e
	ld [bc], a                                       ; $59dd: $02
	ld a, l                                          ; $59de: $7d
	cp $7d                                           ; $59df: $fe $7d
	ld a, [$0fdf]                                    ; $59e1: $fa $df $0f
	rst $38                                          ; $59e4: $ff
	ld [hl], d                                       ; $59e5: $72
	sub e                                            ; $59e6: $93
	sub h                                            ; $59e7: $94
	ldh a, [rAUD4LEN]                                ; $59e8: $f0 $20
	ldh [$61], a                                     ; $59ea: $e0 $61
	pop hl                                           ; $59ec: $e1
	pop bc                                           ; $59ed: $c1
	pop bc                                           ; $59ee: $c1
	add e                                            ; $59ef: $83
	add e                                            ; $59f0: $83
	rlca                                             ; $59f1: $07
	ld b, $66                                        ; $59f2: $06 $66
	ld [$be79], sp                                   ; $59f4: $08 $79 $be
	sbc [hl]                                         ; $59f7: $9e
	rra                                              ; $59f8: $1f
	ld a, c                                          ; $59f9: $79
	cp [hl]                                          ; $59fa: $be
	sbc [hl]                                         ; $59fb: $9e
	ld a, a                                          ; $59fc: $7f
	ld e, [hl]                                       ; $59fd: $5e
	add l                                            ; $59fe: $85
	ld l, l                                          ; $59ff: $6d
	sbc $9d                                          ; $5a00: $de $9d
	ldh a, [c]                                       ; $5a02: $f2
	ld e, $6f                                        ; $5a03: $1e $6f
	cp $95                                           ; $5a05: $fe $95
	cp $9e                                           ; $5a07: $fe $9e
	db $fc                                           ; $5a09: $fc
	call z, Call_016_7878                            ; $5a0a: $cc $78 $78
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	ld de, $671f                                     ; $5a0f: $11 $1f $67
	cp $99                                           ; $5a12: $fe $99
	inc de                                           ; $5a14: $13

jr_016_5a15:
	rra                                              ; $5a15: $1f
	inc sp                                           ; $5a16: $33

jr_016_5a17:
	ld a, $27                                        ; $5a17: $3e $27
	ld a, $6e                                        ; $5a19: $3e $6e
	ld a, [bc]                                       ; $5a1b: $0a
	sub l                                            ; $5a1c: $95
	db $fc                                           ; $5a1d: $fc
	inc bc                                           ; $5a1e: $03
	ldh a, [rIF]                                     ; $5a1f: $f0 $0f
	ldh [$1f], a                                     ; $5a21: $e0 $1f
	ret nz                                           ; $5a23: $c0

	ccf                                              ; $5a24: $3f
	add b                                            ; $5a25: $80
	ld a, a                                          ; $5a26: $7f
	ld a, d                                          ; $5a27: $7a
	ld l, c                                          ; $5a28: $69
	sbc e                                            ; $5a29: $9b
	ld b, d                                          ; $5a2a: $42
	ld h, d                                          ; $5a2b: $62
	ldh [c], a                                       ; $5a2c: $e2
	ld [hl+], a                                      ; $5a2d: $22
	ld a, e                                          ; $5a2e: $7b
	cp $6d                                           ; $5a2f: $fe $6d
	and b                                            ; $5a31: $a0
	call c, $9e38                                    ; $5a32: $dc $38 $9e
	jr z, jr_016_5aae                                ; $5a35: $28 $77

	cp $8d                                           ; $5a37: $fe $8d
	ld a, h                                          ; $5a39: $7c
	ld l, h                                          ; $5a3a: $6c
	ld a, h                                          ; $5a3b: $7c
	ld c, h                                          ; $5a3c: $4c
	ld a, h                                          ; $5a3d: $7c
	ld c, h                                          ; $5a3e: $4c
	add a                                            ; $5a3f: $87
	add h                                            ; $5a40: $84
	add a                                            ; $5a41: $87
	add h                                            ; $5a42: $84
	adc a                                            ; $5a43: $8f
	adc h                                            ; $5a44: $8c
	adc a                                            ; $5a45: $8f
	adc b                                            ; $5a46: $88
	adc a                                            ; $5a47: $8f
	adc b                                            ; $5a48: $88
	rra                                              ; $5a49: $1f
	add hl, de                                       ; $5a4a: $19
	ld [hl], a                                       ; $5a4b: $77
	cp c                                             ; $5a4c: $b9
	ld [hl], d                                       ; $5a4d: $72
	inc sp                                           ; $5a4e: $33
	sbc b                                            ; $5a4f: $98
	ret nz                                           ; $5a50: $c0

	add b                                            ; $5a51: $80
	ldh [$80], a                                     ; $5a52: $e0 $80

jr_016_5a54:
	ld hl, sp-$80                                    ; $5a54: $f8 $80
	cp $77                                           ; $5a56: $fe $77
	or l                                             ; $5a58: $b5

jr_016_5a59:
	ld d, [hl]                                       ; $5a59: $56
	inc b                                            ; $5a5a: $04
	ld a, a                                          ; $5a5b: $7f
	cp $9d                                           ; $5a5c: $fe $9d
	ld h, c                                          ; $5a5e: $61
	and c                                            ; $5a5f: $a1
	ld a, e                                          ; $5a60: $7b
	ld l, d                                          ; $5a61: $6a
	ld [hl], a                                       ; $5a62: $77
	cp $9c                                           ; $5a63: $fe $9c
	rla                                              ; $5a65: $17
	ldh a, [rAUD1LOW]                                ; $5a66: $f0 $13
	ld a, e                                          ; $5a68: $7b
	cp $9c                                           ; $5a69: $fe $9c
	ld de, $10f0                                     ; $5a6b: $11 $f0 $10
	halt                                             ; $5a6e: $76
	inc c                                            ; $5a6f: $0c
	sbc l                                            ; $5a70: $9d
	ld b, e                                          ; $5a71: $43
	jp nz, $fe5f                                     ; $5a72: $c2 $5f $fe

	rst SubAFromDE                                          ; $5a75: $df
	adc h                                            ; $5a76: $8c
	rst SubAFromDE                                          ; $5a77: $df
	add h                                            ; $5a78: $84
	rst SubAFromDE                                          ; $5a79: $df
	call nz, $c0df                                   ; $5a7a: $c4 $df $c0
	ld a, l                                          ; $5a7d: $7d
	add $7d                                          ; $5a7e: $c6 $7d
	jp nz, $277b                                     ; $5a80: $c2 $7b $27

	sbc d                                            ; $5a83: $9a
	jr nc, @-$02                                     ; $5a84: $30 $fc

	db $fd                                           ; $5a86: $fd
	db $fc                                           ; $5a87: $fc
	db $fc                                           ; $5a88: $fc
	push de                                          ; $5a89: $d5
	cp $8d                                           ; $5a8a: $fe $8d
	ld [hl], b                                       ; $5a8c: $70
	inc bc                                           ; $5a8d: $03
	jr nc, @+$05                                     ; $5a8e: $30 $03

	jr c, jr_016_5a15                                ; $5a90: $38 $83

	jr jr_016_5a17                                   ; $5a92: $18 $83

	jr jr_016_5a59                                   ; $5a94: $18 $c3

	ld [$08c3], sp                                   ; $5a96: $08 $c3 $08

Call_016_5a99:
	db $e3                                           ; $5a99: $e3
	nop                                              ; $5a9a: $00
	db $e3                                           ; $5a9b: $e3
	add b                                            ; $5a9c: $80
	ccf                                              ; $5a9d: $3f
	ld l, e                                          ; $5a9e: $6b
	cp $9e                                           ; $5a9f: $fe $9e
	dec a                                            ; $5aa1: $3d
	ld a, e                                          ; $5aa2: $7b
	cp $79                                           ; $5aa3: $fe $79
	inc [hl]                                         ; $5aa5: $34
	sbc l                                            ; $5aa6: $9d
	rst AddAOntoHL                                          ; $5aa7: $ef
	nop                                              ; $5aa8: $00
	ld c, a                                          ; $5aa9: $4f
	cp $76                                           ; $5aaa: $fe $76
	jr c, @+$78                                      ; $5aac: $38 $76

jr_016_5aae:
	ld [hl], $9d                                     ; $5aae: $36 $9d
	rst SubAFromDE                                          ; $5ab0: $df
	rra                                              ; $5ab1: $1f
	ld [hl], a                                       ; $5ab2: $77
	cp $7e                                           ; $5ab3: $fe $7e
	jr nc, jr_016_5a54                               ; $5ab5: $30 $9d

	ret nz                                           ; $5ab7: $c0

	ld e, $77                                        ; $5ab8: $1e $77
	cp $9a                                           ; $5aba: $fe $9a
	add b                                            ; $5abc: $80
	inc e                                            ; $5abd: $1c
	add b                                            ; $5abe: $80
	inc a                                            ; $5abf: $3c
	ld bc, $fe77                                     ; $5ac0: $01 $77 $fe
	sbc b                                            ; $5ac3: $98
	jr c, jr_016_5ac7                                ; $5ac4: $38 $01

	ld a, h                                          ; $5ac6: $7c

jr_016_5ac7:
	nop                                              ; $5ac7: $00
	ld a, h                                          ; $5ac8: $7c
	nop                                              ; $5ac9: $00
	xor $63                                          ; $5aca: $ee $63
	cp $9c                                           ; $5acc: $fe $9c
	rst AddAOntoHL                                          ; $5ace: $ef
	ld b, $f0                                        ; $5acf: $06 $f0
	ld [hl], a                                       ; $5ad1: $77
	cp $95                                           ; $5ad2: $fe $95
	ld [bc], a                                       ; $5ad4: $02
	ld [hl], b                                       ; $5ad5: $70
	ld [bc], a                                       ; $5ad6: $02
	ld a, b                                          ; $5ad7: $78
	ld [bc], a                                       ; $5ad8: $02
	ld a, b                                          ; $5ad9: $78
	nop                                              ; $5ada: $00
	jr c, @-$7e                                      ; $5adb: $38 $80

	cp c                                             ; $5add: $b9
	ld h, a                                          ; $5ade: $67
	add d                                            ; $5adf: $82
	dec a                                            ; $5ae0: $3d
	or b                                             ; $5ae1: $b0
	ld l, a                                          ; $5ae2: $6f
	cp $65                                           ; $5ae3: $fe $65
	or b                                             ; $5ae5: $b0
	ld h, a                                          ; $5ae6: $67
	cp $59                                           ; $5ae7: $fe $59
	or b                                             ; $5ae9: $b0
	ld [hl], e                                       ; $5aea: $73
	cp $7f                                           ; $5aeb: $fe $7f
	adc [hl]                                         ; $5aed: $8e
	ld a, a                                          ; $5aee: $7f
	add h                                            ; $5aef: $84
	ld a, a                                          ; $5af0: $7f
	add b                                            ; $5af1: $80
	sbc [hl]                                         ; $5af2: $9e
	rst SubAFromBC                                          ; $5af3: $e7
	ld l, c                                          ; $5af4: $69
	xor d                                            ; $5af5: $aa
	ld a, a                                          ; $5af6: $7f
	cp $6e                                           ; $5af7: $fe $6e
	ld a, [bc]                                       ; $5af9: $0a
	ld l, b                                          ; $5afa: $68
	and e                                            ; $5afb: $a3
	ld a, e                                          ; $5afc: $7b
	cp $76                                           ; $5afd: $fe $76
	inc c                                            ; $5aff: $0c
	ld a, b                                          ; $5b00: $78
	ld l, d                                          ; $5b01: $6a
	ld h, e                                          ; $5b02: $63
	cp $6e                                           ; $5b03: $fe $6e
	ld a, [bc]                                       ; $5b05: $0a
	ld e, a                                          ; $5b06: $5f
	ldh a, [$57]                                     ; $5b07: $f0 $57
	call nc, $e073                                   ; $5b09: $d4 $73 $e0
	ld a, [hl]                                       ; $5b0c: $7e
	and l                                            ; $5b0d: $a5
	sbc l                                            ; $5b0e: $9d
	ldh [$3f], a                                     ; $5b0f: $e0 $3f
	ld d, a                                          ; $5b11: $57
	ret nz                                           ; $5b12: $c0

	sbc e                                            ; $5b13: $9b
	dec c                                            ; $5b14: $0d
	ccf                                              ; $5b15: $3f
	dec sp                                           ; $5b16: $3b
	cp $5b                                           ; $5b17: $fe $5b

jr_016_5b19:
	ldh a, [$75]                                     ; $5b19: $f0 $75
	jp nz, $d057                                     ; $5b1b: $c2 $57 $d0

	sbc h                                            ; $5b1e: $9c
	jr jr_016_5b19                                   ; $5b1f: $18 $f8

	ld c, $79                                        ; $5b21: $0e $79
	jp z, $b87b                                      ; $5b23: $ca $7b $b8

	sbc [hl]                                         ; $5b26: $9e
	cp $77                                           ; $5b27: $fe $77
	cp $99                                           ; $5b29: $fe $99
	inc bc                                           ; $5b2b: $03
	db $fc                                           ; $5b2c: $fc
	nop                                              ; $5b2d: $00
	nop                                              ; $5b2e: $00
	ld bc, $de01                                     ; $5b2f: $01 $01 $de
	rst $38                                          ; $5b32: $ff
	ld h, e                                          ; $5b33: $63
	rst SubAFromDE                                          ; $5b34: $df
	ld a, [hl]                                       ; $5b35: $7e
	ld a, $99                                        ; $5b36: $3e $99
	ld hl, sp-$47                                    ; $5b38: $f8 $b9
	ldh [$e3], a                                     ; $5b3a: $e0 $e3
	nop                                              ; $5b3c: $00
	rlca                                             ; $5b3d: $07
	ld a, b                                          ; $5b3e: $78
	db $f4                                           ; $5b3f: $f4
	ld a, a                                          ; $5b40: $7f
	cp $9c                                           ; $5b41: $fe $9c
	rra                                              ; $5b43: $1f
	nop                                              ; $5b44: $00

jr_016_5b45:
	ccf                                              ; $5b45: $3f
	ld c, a                                          ; $5b46: $4f
	sub d                                            ; $5b47: $92
	ld a, a                                          ; $5b48: $7f
	cp $7e                                           ; $5b49: $fe $7e
	ld c, $7f                                        ; $5b4b: $0e $7f
	cp [hl]                                          ; $5b4d: $be
	sbc [hl]                                         ; $5b4e: $9e
	rrca                                             ; $5b4f: $0f
	ld e, e                                          ; $5b50: $5b
	ldh a, [$7f]                                     ; $5b51: $f0 $7f
	ret nc                                           ; $5b53: $d0

	sbc l                                            ; $5b54: $9d
	db $fc                                           ; $5b55: $fc
	call c, $5057                                    ; $5b56: $dc $57 $50
	ld a, [hl]                                       ; $5b59: $7e
	ld c, $7d                                        ; $5b5a: $0e $7d
	halt                                             ; $5b5c: $76
	ld d, a                                          ; $5b5d: $57
	add b                                            ; $5b5e: $80
	ld a, h                                          ; $5b5f: $7c
	sbc $7a                                          ; $5b60: $de $7a
	xor [hl]                                         ; $5b62: $ae
	sbc h                                            ; $5b63: $9c
	ld a, $80                                        ; $5b64: $3e $80
	sbc [hl]                                         ; $5b66: $9e
	ld l, h                                          ; $5b67: $6c
	or d                                             ; $5b68: $b2
	ld a, a                                          ; $5b69: $7f
	cp $76                                           ; $5b6a: $fe $76
	add hl, bc                                       ; $5b6c: $09
	ld a, a                                          ; $5b6d: $7f
	ld d, b                                          ; $5b6e: $50
	sbc b                                            ; $5b6f: $98
	rlca                                             ; $5b70: $07
	ld hl, sp+$03                                    ; $5b71: $f8 $03
	db $fc                                           ; $5b73: $fc
	inc bc                                           ; $5b74: $03
	db $fc                                           ; $5b75: $fc
	ld bc, $ee79                                     ; $5b76: $01 $79 $ee
	ld [hl], c                                       ; $5b79: $71
	cp e                                             ; $5b7a: $bb
	ld a, h                                          ; $5b7b: $7c
	ret z                                            ; $5b7c: $c8

	ld hl, sp-$76                                    ; $5b7d: $f8 $8a
	ld b, d                                          ; $5b7f: $42
	jp Jump_016_43c2                                 ; $5b80: $c3 $c2 $43


	rst $38                                          ; $5b83: $ff
	ld a, a                                          ; $5b84: $7f
	ret nz                                           ; $5b85: $c0

	ccf                                              ; $5b86: $3f
	ret nz                                           ; $5b87: $c0

	ccf                                              ; $5b88: $3f
	ldh [$1f], a                                     ; $5b89: $e0 $1f
	ldh [$1f], a                                     ; $5b8b: $e0 $1f
	ldh a, [rIF]                                     ; $5b8d: $f0 $0f
	ld hl, sp+$38                                    ; $5b8f: $f8 $38
	add sp, $38                                      ; $5b91: $e8 $38
	rst AddAOntoHL                                          ; $5b93: $ef
	ld e, e                                          ; $5b94: $5b
	or b                                             ; $5b95: $b0
	ld a, l                                          ; $5b96: $7d
	ld d, $7f                                        ; $5b97: $16 $7f
	cp $57                                           ; $5b99: $fe $57
	and b                                            ; $5b9b: $a0
	ld a, e                                          ; $5b9c: $7b
	cp $7e                                           ; $5b9d: $fe $7e
	ld h, b                                          ; $5b9f: $60
	sbc h                                            ; $5ba0: $9c
	ldh [$0c], a                                     ; $5ba1: $e0 $0c
	ret nz                                           ; $5ba3: $c0

	ld a, b                                          ; $5ba4: $78
	jr nc, jr_016_5b45                               ; $5ba5: $30 $9e

	add c                                            ; $5ba7: $81
	ld [hl], h                                       ; $5ba8: $74
	ld [hl], h                                       ; $5ba9: $74
	rst SubAFromDE                                          ; $5baa: $df
	db $fc                                           ; $5bab: $fc
	ld a, h                                          ; $5bac: $7c
	adc d                                            ; $5bad: $8a
	ld a, h                                          ; $5bae: $7c
	add [hl]                                         ; $5baf: $86
	ld a, h                                          ; $5bb0: $7c
	add d                                            ; $5bb1: $82
	ld h, h                                          ; $5bb2: $64
	ld a, b                                          ; $5bb3: $78
	ld [hl], a                                       ; $5bb4: $77
	ld [$379e], a                                    ; $5bb5: $ea $9e $37
	ld a, b                                          ; $5bb8: $78
	ld b, d                                          ; $5bb9: $42
	sbc [hl]                                         ; $5bba: $9e
	ld l, a                                          ; $5bbb: $6f
	ld [hl], d                                       ; $5bbc: $72
	inc c                                            ; $5bbd: $0c

jr_016_5bbe:
	ld a, [hl]                                       ; $5bbe: $7e
	add d                                            ; $5bbf: $82
	adc a                                            ; $5bc0: $8f
	ld h, b                                          ; $5bc1: $60
	rlca                                             ; $5bc2: $07
	ld h, b                                          ; $5bc3: $60
	rrca                                             ; $5bc4: $0f
	ld h, b                                          ; $5bc5: $60
	rrca                                             ; $5bc6: $0f
	nop                                              ; $5bc7: $00
	sbc a                                            ; $5bc8: $9f
	nop                                              ; $5bc9: $00
	sbc [hl]                                         ; $5bca: $9e
	nop                                              ; $5bcb: $00
	sbc h                                            ; $5bcc: $9c
	ld bc, $01fc                                     ; $5bcd: $01 $fc $01
	ld hl, sp+$7b                                    ; $5bd0: $f8 $7b
	ld h, [hl]                                       ; $5bd2: $66
	ld [hl], a                                       ; $5bd3: $77
	ld l, b                                          ; $5bd4: $68
	sbc [hl]                                         ; $5bd5: $9e
	rst SubAFromBC                                          ; $5bd6: $e7

jr_016_5bd7:
	ld h, h                                          ; $5bd7: $64
	ld c, [hl]                                       ; $5bd8: $4e
	rst SubAFromHL                                          ; $5bd9: $d7
	rst $38                                          ; $5bda: $ff
	rst SubAFromDE                                          ; $5bdb: $df
	ld [$6899], sp                                   ; $5bdc: $08 $99 $68
	dec bc                                           ; $5bdf: $0b
	ld h, b                                          ; $5be0: $60
	inc bc                                           ; $5be1: $03
	rst $38                                          ; $5be2: $ff
	rrca                                             ; $5be3: $0f
	ld a, e                                          ; $5be4: $7b
	cp $9e                                           ; $5be5: $fe $9e
	rlca                                             ; $5be7: $07
	ld [hl], a                                       ; $5be8: $77
	cp $9a                                           ; $5be9: $fe $9a
	add b                                            ; $5beb: $80
	nop                                              ; $5bec: $00
	add b                                            ; $5bed: $80
	ld a, $80                                        ; $5bee: $3e $80
	ld l, h                                          ; $5bf0: $6c
	ldh a, [rPCM12]                                  ; $5bf1: $f0 $76
	ld l, l                                          ; $5bf3: $6d
	sbc l                                            ; $5bf4: $9d
	ret nz                                           ; $5bf5: $c0

	rrca                                             ; $5bf6: $0f
	ld [hl], c                                       ; $5bf7: $71
	or b                                             ; $5bf8: $b0

Jump_016_5bf9:
	rst SubAFromHL                                          ; $5bf9: $d7
	rst $38                                          ; $5bfa: $ff
	sbc $c0                                          ; $5bfb: $de $c0
	ld a, d                                          ; $5bfd: $7a
	jr nz, jr_016_5bd7                               ; $5bfe: $20 $d7

	rst $38                                          ; $5c00: $ff
	rst SubAFromDE                                          ; $5c01: $df
	rlca                                             ; $5c02: $07
	ld a, [hl]                                       ; $5c03: $7e
	ld [hl+], a                                      ; $5c04: $22
	ld a, a                                          ; $5c05: $7f
	adc b                                            ; $5c06: $88
	rst SubAFromHL                                          ; $5c07: $d7
	rst $38                                          ; $5c08: $ff
	rst $38                                          ; $5c09: $ff
	sbc e                                            ; $5c0a: $9b
	ldh [rIF], a                                     ; $5c0b: $e0 $0f
	ret nz                                           ; $5c0d: $c0

	rrca                                             ; $5c0e: $0f
	ld d, a                                          ; $5c0f: $57
	ldh a, [$7e]                                     ; $5c10: $f0 $7e
	and $7f                                          ; $5c12: $e6 $7f
	cp $d7                                           ; $5c14: $fe $d7
	rst $38                                          ; $5c16: $ff
	sbc $80                                          ; $5c17: $de $80
	sbc h                                            ; $5c19: $9c
	cp h                                             ; $5c1a: $bc
	add b                                            ; $5c1b: $80
	cp [hl]                                          ; $5c1c: $be
	rst SubAFromHL                                          ; $5c1d: $d7
	rst $38                                          ; $5c1e: $ff
	rst SubAFromDE                                          ; $5c1f: $df
	jr jr_016_5bbe                                   ; $5c20: $18 $9c

	ret nz                                           ; $5c22: $c0

	inc bc                                           ; $5c23: $03
	ret nz                                           ; $5c24: $c0

	ld e, e                                          ; $5c25: $5b
	ret nz                                           ; $5c26: $c0

	rst SubAFromDE                                          ; $5c27: $df
	ld bc, $a075                                     ; $5c28: $01 $75 $a0
	db $d3                                           ; $5c2b: $d3
	rst $38                                          ; $5c2c: $ff
	ld e, l                                          ; $5c2d: $5d
	ld a, b                                          ; $5c2e: $78
	ld [hl], a                                       ; $5c2f: $77
	add b                                            ; $5c30: $80
	ld a, d                                          ; $5c31: $7a
	ld d, b                                          ; $5c32: $50
	sbc [hl]                                         ; $5c33: $9e
	ld a, a                                          ; $5c34: $7f
	ld d, a                                          ; $5c35: $57
	ret nc                                           ; $5c36: $d0

	sbc e                                            ; $5c37: $9b
	inc b                                            ; $5c38: $04
	ret nz                                           ; $5c39: $c0

	inc bc                                           ; $5c3a: $03
	ldh a, [$d5]                                     ; $5c3b: $f0 $d5
	rst $38                                          ; $5c3d: $ff
	rst SubAFromDE                                          ; $5c3e: $df
	ld a, a                                          ; $5c3f: $7f
	rst SubAFromDE                                          ; $5c40: $df
	ccf                                              ; $5c41: $3f
	sbc l                                            ; $5c42: $9d
	rst $38                                          ; $5c43: $ff
	db $fc                                           ; $5c44: $fc
	ld a, e                                          ; $5c45: $7b
	cp $9e                                           ; $5c46: $fe $9e
	ld hl, sp+$7b                                    ; $5c48: $f8 $7b
	cp $9e                                           ; $5c4a: $fe $9e
	ldh a, [rOCPD]                                   ; $5c4c: $f0 $6b
	ld d, b                                          ; $5c4e: $50
	ld h, d                                          ; $5c4f: $62
	cp c                                             ; $5c50: $b9
	sbc l                                            ; $5c51: $9d
	inc c                                            ; $5c52: $0c
	nop                                              ; $5c53: $00
	ld [hl], l                                       ; $5c54: $75
	ld d, b                                          ; $5c55: $50
	sbc l                                            ; $5c56: $9d
	rst $38                                          ; $5c57: $ff
	ccf                                              ; $5c58: $3f

jr_016_5c59:
	ld a, e                                          ; $5c59: $7b
	cp $7f                                           ; $5c5a: $fe $7f
	cp d                                             ; $5c5c: $ba
	ld a, e                                          ; $5c5d: $7b
	cp b                                             ; $5c5e: $b8
	ld b, a                                          ; $5c5f: $47
	sub b                                            ; $5c60: $90
	sbc $fc                                          ; $5c61: $de $fc
	ld a, h                                          ; $5c63: $7c
	add h                                            ; $5c64: $84
	sbc [hl]                                         ; $5c65: $9e
	db $fd                                           ; $5c66: $fd
	ld d, a                                          ; $5c67: $57
	ld b, b                                          ; $5c68: $40
	sbc e                                            ; $5c69: $9b
	ld c, $e0                                        ; $5c6a: $0e $e0
	ld b, $e0                                        ; $5c6c: $06 $e0
	dec d                                            ; $5c6e: $15
	inc b                                            ; $5c6f: $04
	pop af                                           ; $5c70: $f1
	add b                                            ; $5c71: $80
	ldh a, [$cf]                                     ; $5c72: $f0 $cf
	ld hl, sp-$19                                    ; $5c74: $f8 $e7
	ld hl, sp-$09                                    ; $5c76: $f8 $f7
	db $fc                                           ; $5c78: $fc
	di                                               ; $5c79: $f3
	db $fc                                           ; $5c7a: $fc
	ei                                               ; $5c7b: $fb
	cp $f9                                           ; $5c7c: $fe $f9
	cp $fd                                           ; $5c7e: $fe $fd
	rst $38                                          ; $5c80: $ff
	db $fc                                           ; $5c81: $fc
	call z, $4803                                    ; $5c82: $cc $03 $48
	add a                                            ; $5c85: $87
	ld a, b                                          ; $5c86: $78
	add a                                            ; $5c87: $87
	jr nc, jr_016_5c59                               ; $5c88: $30 $cf

	jr nc, @-$2f                                     ; $5c8a: $30 $cf

	ld sp, $01ce                                     ; $5c8c: $31 $ce $01
	cp $03                                           ; $5c8f: $fe $03
	add b                                            ; $5c91: $80
	db $fc                                           ; $5c92: $fc
	inc sp                                           ; $5c93: $33
	ret nz                                           ; $5c94: $c0

	daa                                              ; $5c95: $27
	ret nz                                           ; $5c96: $c0

	ld b, [hl]                                       ; $5c97: $46
	add c                                            ; $5c98: $81
	adc $01                                          ; $5c99: $ce $01
	adc h                                            ; $5c9b: $8c
	inc bc                                           ; $5c9c: $03
	sbc h                                            ; $5c9d: $9c
	inc bc                                           ; $5c9e: $03
	inc e                                            ; $5c9f: $1c
	dec bc                                           ; $5ca0: $0b
	inc a                                            ; $5ca1: $3c
	dec bc                                           ; $5ca2: $0b
	add b                                            ; $5ca3: $80
	ld a, a                                          ; $5ca4: $7f
	rlca                                             ; $5ca5: $07
	ld hl, sp+$0c                                    ; $5ca6: $f8 $0c
	ldh a, [rAUD2HIGH]                               ; $5ca8: $f0 $19
	ldh [rAUD1LEN], a                                ; $5caa: $e0 $11
	ldh [$33], a                                     ; $5cac: $e0 $33
	ret nz                                           ; $5cae: $c0

	inc hl                                           ; $5caf: $23
	pop bc                                           ; $5cb0: $c1
	ld a, a                                          ; $5cb1: $7f
	cp $7f                                           ; $5cb2: $fe $7f
	sbc $97                                          ; $5cb4: $de $97
	pop bc                                           ; $5cb6: $c1
	ld a, $e0                                        ; $5cb7: $3e $e0
	rra                                              ; $5cb9: $1f
	ldh a, [rVBK]                                    ; $5cba: $f0 $4f
	ldh a, [$ef]                                     ; $5cbc: $f0 $ef
	ld [hl], a                                       ; $5cbe: $77
	cp b                                             ; $5cbf: $b8
	ld a, a                                          ; $5cc0: $7f
	cp $95                                           ; $5cc1: $fe $95
	ld a, $0d                                        ; $5cc3: $3e $0d
	sbc [hl]                                         ; $5cc5: $9e
	dec b                                            ; $5cc6: $05
	adc [hl]                                         ; $5cc7: $8e
	dec b                                            ; $5cc8: $05
	adc $01                                          ; $5cc9: $ce $01
	ld b, [hl]                                       ; $5ccb: $46
	add c                                            ; $5ccc: $81
	ld l, a                                          ; $5ccd: $6f
	cp $7f                                           ; $5cce: $fe $7f
	ret c                                            ; $5cd0: $d8

	ld c, a                                          ; $5cd1: $4f
	cp $9d                                           ; $5cd2: $fe $9d
	pop hl                                           ; $5cd4: $e1
	sbc $4f                                          ; $5cd5: $de $4f
	cp $9d                                           ; $5cd7: $fe $9d
	rra                                              ; $5cd9: $1f
	rrca                                             ; $5cda: $0f
	ld c, a                                          ; $5cdb: $4f
	cp $7f                                           ; $5cdc: $fe $7f
	ld a, b                                          ; $5cde: $78
	ld c, a                                          ; $5cdf: $4f
	cp $77                                           ; $5ce0: $fe $77
	sbc h                                            ; $5ce2: $9c
	ld d, a                                          ; $5ce3: $57
	cp $da                                           ; $5ce4: $fe $da
	rst $38                                          ; $5ce6: $ff
	sbc [hl]                                         ; $5ce7: $9e
	cp $67                                           ; $5ce8: $fe $67
	cp $96                                           ; $5cea: $fe $96
	ldh [$9f], a                                     ; $5cec: $e0 $9f
	pop bc                                           ; $5cee: $c1
	ld a, $83                                        ; $5cef: $3e $83
	ld a, h                                          ; $5cf1: $7c
	add [hl]                                         ; $5cf2: $86
	ld a, b                                          ; $5cf3: $78
	inc b                                            ; $5cf4: $04
	ld a, e                                          ; $5cf5: $7b
	ld l, d                                          ; $5cf6: $6a
	sbc [hl]                                         ; $5cf7: $9e
	ld [$fe7b], sp                                   ; $5cf8: $08 $7b $fe
	add a                                            ; $5cfb: $87
	nop                                              ; $5cfc: $00
	rst $38                                          ; $5cfd: $ff
	ldh a, [rIF]                                     ; $5cfe: $f0 $0f
	jr c, @+$09                                      ; $5d00: $38 $07

	ld a, h                                          ; $5d02: $7c
	inc de                                           ; $5d03: $13
	ld a, h                                          ; $5d04: $7c
	dec sp                                           ; $5d05: $3b
	cp $39                                           ; $5d06: $fe $39
	cp $7d                                           ; $5d08: $fe $7d
	cp $7d                                           ; $5d0a: $fe $7d
	rst GetHLinHL                                          ; $5d0c: $cf
	inc bc                                           ; $5d0d: $03
	ld h, a                                          ; $5d0e: $67
	add b                                            ; $5d0f: $80
	inc hl                                           ; $5d10: $23
	ret nz                                           ; $5d11: $c0

	inc sp                                           ; $5d12: $33
	ret nz                                           ; $5d13: $c0

	ld h, a                                          ; $5d14: $67
	add b                                            ; $5d15: $80
	ld a, a                                          ; $5d16: $7f
	ld b, b                                          ; $5d17: $40
	ld a, a                                          ; $5d18: $7f
	ld hl, $d677                                     ; $5d19: $21 $77 $d6
	ld a, a                                          ; $5d1c: $7f
	db $fc                                           ; $5d1d: $fc
	ld a, a                                          ; $5d1e: $7f
	jr c, @+$81                                      ; $5d1f: $38 $7f

	db $f4                                           ; $5d21: $f4
	sbc l                                            ; $5d22: $9d
	ret nz                                           ; $5d23: $c0

	ccf                                              ; $5d24: $3f
	ld h, e                                          ; $5d25: $63
	ld b, b                                          ; $5d26: $40
	sub e                                            ; $5d27: $93
	cpl                                              ; $5d28: $2f
	rst $38                                          ; $5d29: $ff
	nop                                              ; $5d2a: $00
	rst $38                                          ; $5d2b: $ff
	nop                                              ; $5d2c: $00
	rlca                                             ; $5d2d: $07
	ld hl, sp+$38                                    ; $5d2e: $f8 $38
	rlca                                             ; $5d30: $07
	sbc b                                            ; $5d31: $98
	rlca                                             ; $5d32: $07
	adc b                                            ; $5d33: $88
	ld [hl], e                                       ; $5d34: $73
	cp $93                                           ; $5d35: $fe $93
	ld hl, sp+$07                                    ; $5d37: $f8 $07
	ld hl, sp+$37                                    ; $5d39: $f8 $37
	ld a, b                                          ; $5d3b: $78
	rlca                                             ; $5d3c: $07
	nop                                              ; $5d3d: $00
	rst $38                                          ; $5d3e: $ff
	ld a, a                                          ; $5d3f: $7f
	add b                                            ; $5d40: $80
	ld b, a                                          ; $5d41: $47
	add e                                            ; $5d42: $83
	ld [hl], a                                       ; $5d43: $77
	cp $7f                                           ; $5d44: $fe $7f
	ld hl, sp+$7b                                    ; $5d46: $f8 $7b
	rst SubAFromDE                                          ; $5d48: $df
	sbc h                                            ; $5d49: $9c
	rst $38                                          ; $5d4a: $ff
	ld de, $7be0                                     ; $5d4b: $11 $e0 $7b
	ei                                               ; $5d4e: $fb
	db $db                                           ; $5d4f: $db
	rst $38                                          ; $5d50: $ff
	sbc [hl]                                         ; $5d51: $9e
	ld bc, $7073                                     ; $5d52: $01 $73 $70
	ld [hl], a                                       ; $5d55: $77
	ld a, d                                          ; $5d56: $7a
	sub $ff                                          ; $5d57: $d6 $ff
	sbc d                                            ; $5d59: $9a
	ld [bc], a                                       ; $5d5a: $02
	db $fc                                           ; $5d5b: $fc
	add [hl]                                         ; $5d5c: $86
	ld a, b                                          ; $5d5d: $78
	add h                                            ; $5d5e: $84
	ld e, e                                          ; $5d5f: $5b
	cp $8f                                           ; $5d60: $fe $8f
	inc a                                            ; $5d62: $3c
	dec de                                           ; $5d63: $1b
	ld a, h                                          ; $5d64: $7c
	dec de                                           ; $5d65: $1b
	ld a, h                                          ; $5d66: $7c
	dec sp                                           ; $5d67: $3b
	ld a, h                                          ; $5d68: $7c
	dec sp                                           ; $5d69: $3b
	ld a, [hl]                                       ; $5d6a: $7e
	add hl, sp                                       ; $5d6b: $39
	ld a, [hl]                                       ; $5d6c: $7e
	dec a                                            ; $5d6d: $3d
	ld a, a                                          ; $5d6e: $7f
	inc a                                            ; $5d6f: $3c
	ld a, a                                          ; $5d70: $7f
	ld a, $77                                        ; $5d71: $3e $77
	call z, Call_016_7277                            ; $5d73: $cc $77 $72
	ld a, [hl]                                       ; $5d76: $7e
	cp [hl]                                          ; $5d77: $be
	ld l, a                                          ; $5d78: $6f
	ld a, [hl]                                       ; $5d79: $7e
	halt                                             ; $5d7a: $76
	call z, $c67e                                    ; $5d7b: $cc $7e $c6
	ld a, [hl]                                       ; $5d7e: $7e
	jp nz, Jump_016_7e7f                             ; $5d7f: $c2 $7f $7e

	ld a, a                                          ; $5d82: $7f
	ld a, d                                          ; $5d83: $7a
	ld a, a                                          ; $5d84: $7f
	halt                                             ; $5d85: $76
	ld a, a                                          ; $5d86: $7f
	ld [hl], d                                       ; $5d87: $72
	ld h, [hl]                                       ; $5d88: $66
	ret z                                            ; $5d89: $c8

	ld a, [hl]                                       ; $5d8a: $7e
	cp [hl]                                          ; $5d8b: $be
	ld a, [hl]                                       ; $5d8c: $7e
	cp d                                             ; $5d8d: $ba
	sbc e                                            ; $5d8e: $9b
	sbc a                                            ; $5d8f: $9f
	inc b                                            ; $5d90: $04
	ccf                                              ; $5d91: $3f
	ld c, $67                                        ; $5d92: $0e $67
	ld c, b                                          ; $5d94: $48
	ld l, a                                          ; $5d95: $6f
	ret nc                                           ; $5d96: $d0

	ld a, a                                          ; $5d97: $7f
	add l                                            ; $5d98: $85
	ld h, d                                          ; $5d99: $62
	add $9e                                          ; $5d9a: $c6 $9e
	ld e, $77                                        ; $5d9c: $1e $77
	ld [$927f], sp                                   ; $5d9e: $08 $7f $92
	ld d, [hl]                                       ; $5da1: $56
	call nz, $3f99                                   ; $5da2: $c4 $99 $3f
	rrca                                             ; $5da5: $0f
	ccf                                              ; $5da6: $3f
	rra                                              ; $5da7: $1f
	ld bc, $76fe                                     ; $5da8: $01 $fe $76
	cp $95                                           ; $5dab: $fe $95
	ld hl, sp+$67                                    ; $5dad: $f8 $67
	ld hl, sp+$37                                    ; $5daf: $f8 $37
	ld hl, sp-$79                                    ; $5db1: $f8 $87
	ldh [$1f], a                                     ; $5db3: $e0 $1f
	nop                                              ; $5db5: $00
	rst $38                                          ; $5db6: $ff
	ld d, [hl]                                       ; $5db7: $56
	call nz, $3f9d                                   ; $5db8: $c4 $9d $3f
	ret nz                                           ; $5dbb: $c0

	ld a, e                                          ; $5dbc: $7b
	ld b, l                                          ; $5dbd: $45
	ld h, d                                          ; $5dbe: $62
	add $de                                          ; $5dbf: $c6 $de
	rst $38                                          ; $5dc1: $ff
	sbc [hl]                                         ; $5dc2: $9e
	nop                                              ; $5dc3: $00
	halt                                             ; $5dc4: $76
	adc $76                                          ; $5dc5: $ce $76
	db $f4                                           ; $5dc7: $f4
	ld a, [hl]                                       ; $5dc8: $7e
	jp nz, Jump_016_4a7f                             ; $5dc9: $c2 $7f $4a

	ld a, a                                          ; $5dcc: $7f
	or d                                             ; $5dcd: $b2
	halt                                             ; $5dce: $76
	or $76                                           ; $5dcf: $f6 $76
	call z, $c67e                                    ; $5dd1: $cc $7e $c6
	ld a, e                                          ; $5dd4: $7b
	ld c, [hl]                                       ; $5dd5: $4e
	sbc d                                            ; $5dd6: $9a
	inc de                                           ; $5dd7: $13
	jr c, jr_016_5de1                                ; $5dd8: $38 $07

	ldh a, [rIF]                                     ; $5dda: $f0 $0f
	ld [hl], a                                       ; $5ddc: $77
	db $10                                           ; $5ddd: $10
	ld l, a                                          ; $5dde: $6f
	cp $7a                                           ; $5ddf: $fe $7a

jr_016_5de1:
	ld [de], a                                       ; $5de1: $12
	sub a                                            ; $5de2: $97
	ret nz                                           ; $5de3: $c0

	ld h, a                                          ; $5de4: $67
	add b                                            ; $5de5: $80
	rst GetHLinHL                                          ; $5de6: $cf
	inc bc                                           ; $5de7: $03
	ldh a, [hDisp1_LCDC]                                     ; $5de8: $f0 $8f
	rst $38                                          ; $5dea: $ff
	ld a, d                                          ; $5deb: $7a
	cp $77                                           ; $5dec: $fe $77
	call z, $0699                                    ; $5dee: $cc $99 $06
	ld hl, sp-$7d                                    ; $5df1: $f8 $83
	ld a, h                                          ; $5df3: $7c
	ret nz                                           ; $5df4: $c0

	ccf                                              ; $5df5: $3f
	ld e, a                                          ; $5df6: $5f
	sub b                                            ; $5df7: $90
	ld a, [hl]                                       ; $5df8: $7e
	call nc, $9077                                   ; $5df9: $d4 $77 $90
	ld a, [hl]                                       ; $5dfc: $7e
	jp nz, $c89b                                     ; $5dfd: $c2 $9b $c8

	rlca                                             ; $5e00: $07
	ld c, b                                          ; $5e01: $48
	add a                                            ; $5e02: $87
	ld l, a                                          ; $5e03: $6f
	cp $7f                                           ; $5e04: $fe $7f
	or $7e                                           ; $5e06: $f6 $7e
	cp d                                             ; $5e08: $ba
	ld e, [hl]                                       ; $5e09: $5e
	ret nz                                           ; $5e0a: $c0

	ld l, [hl]                                       ; $5e0b: $6e
	cp [hl]                                          ; $5e0c: $be
	ld a, d                                          ; $5e0d: $7a
	adc $9e                                          ; $5e0e: $ce $9e
	ld bc, $ffd8                                     ; $5e10: $01 $d8 $ff
	ld a, e                                          ; $5e13: $7b
	cp b                                             ; $5e14: $b8
	pop de                                           ; $5e15: $d1
	rst $38                                          ; $5e16: $ff
	halt                                             ; $5e17: $76
	call z, $9e62                                    ; $5e18: $cc $62 $9e
	sbc $ff                                          ; $5e1b: $de $ff
	sbc c                                            ; $5e1d: $99
	ld a, a                                          ; $5e1e: $7f
	ccf                                              ; $5e1f: $3f
	ld a, a                                          ; $5e20: $7f
	ccf                                              ; $5e21: $3f
	rst $38                                          ; $5e22: $ff
	ccf                                              ; $5e23: $3f
	rst SubAFromHL                                          ; $5e24: $d7
	rst $38                                          ; $5e25: $ff
	ld a, a                                          ; $5e26: $7f
	adc [hl]                                         ; $5e27: $8e
	ld [hl], e                                       ; $5e28: $73
	ld a, [hl]                                       ; $5e29: $7e
	ret c                                            ; $5e2a: $d8

	rst $38                                          ; $5e2b: $ff
	ld a, a                                          ; $5e2c: $7f
	ld a, d                                          ; $5e2d: $7a
	sbc [hl]                                         ; $5e2e: $9e
	dec e                                            ; $5e2f: $1d
	ld e, [hl]                                       ; $5e30: $5e
	ld l, [hl]                                       ; $5e31: $6e
	ld [hl], a                                       ; $5e32: $77
	ret nc                                           ; $5e33: $d0

	sbc [hl]                                         ; $5e34: $9e
	ld e, $57                                        ; $5e35: $1e $57
	jp nc, $ffdf                                     ; $5e37: $d2 $df $ff

	ld a, [hl]                                       ; $5e3a: $7e
	sbc [hl]                                         ; $5e3b: $9e
	ld a, a                                          ; $5e3c: $7f
	ld l, d                                          ; $5e3d: $6a
	ld a, a                                          ; $5e3e: $7f
	set 2, a                                         ; $5e3f: $cb $d7
	rst $38                                          ; $5e41: $ff
	ld l, a                                          ; $5e42: $6f
	ld b, b                                          ; $5e43: $40
	sbc c                                            ; $5e44: $99
	rrca                                             ; $5e45: $0f
	rst FarCall                                          ; $5e46: $f7
	rrca                                             ; $5e47: $0f
	di                                               ; $5e48: $f3
	rlca                                             ; $5e49: $07
	ld sp, hl                                        ; $5e4a: $f9
	ld [hl], a                                       ; $5e4b: $77
	ld b, b                                          ; $5e4c: $40
	sbc l                                            ; $5e4d: $9d
	ld a, a                                          ; $5e4e: $7f
	rra                                              ; $5e4f: $1f
	ld c, a                                          ; $5e50: $4f
	ret nc                                           ; $5e51: $d0

	ld [hl], l                                       ; $5e52: $75
	adc h                                            ; $5e53: $8c
	sbc l                                            ; $5e54: $9d
	rst $38                                          ; $5e55: $ff
	ld hl, sp-$29                                    ; $5e56: $f8 $d7
	rst $38                                          ; $5e58: $ff
	halt                                             ; $5e59: $76
	inc c                                            ; $5e5a: $0c
	ld d, a                                          ; $5e5b: $57
	and b                                            ; $5e5c: $a0
	halt                                             ; $5e5d: $76
	ret nc                                           ; $5e5e: $d0

	ld d, a                                          ; $5e5f: $57
	ldh a, [$7e]                                     ; $5e60: $f0 $7e
	ld c, b                                          ; $5e62: $48
	sbc e                                            ; $5e63: $9b
	db $fc                                           ; $5e64: $fc
	ld h, e                                          ; $5e65: $63
	rst $38                                          ; $5e66: $ff
	ld a, b                                          ; $5e67: $78
	rst SubAFromHL                                          ; $5e68: $d7
	rst $38                                          ; $5e69: $ff
	ld a, [hl]                                       ; $5e6a: $7e
	ldh a, [$7e]                                     ; $5e6b: $f0 $7e
	ld e, d                                          ; $5e6d: $5a
	ld d, a                                          ; $5e6e: $57
	ldh [$9b], a                                     ; $5e6f: $e0 $9b
	sbc a                                            ; $5e71: $9f
	rlca                                             ; $5e72: $07
	ld a, a                                          ; $5e73: $7f
	rrca                                             ; $5e74: $0f
	ld d, a                                          ; $5e75: $57
	sbc [hl]                                         ; $5e76: $9e
	ld a, l                                          ; $5e77: $7d
	ld d, b                                          ; $5e78: $50
	sbc h                                            ; $5e79: $9c
	ld hl, sp-$39                                    ; $5e7a: $f8 $c7
	rst $38                                          ; $5e7c: $ff
	ld e, e                                          ; $5e7d: $5b
	ld a, [bc]                                       ; $5e7e: $0a
	ld a, a                                          ; $5e7f: $7f
	ret nc                                           ; $5e80: $d0

	sbc [hl]                                         ; $5e81: $9e
	rrca                                             ; $5e82: $0f
	ld d, e                                          ; $5e83: $53

jr_016_5e84:
	or b                                             ; $5e84: $b0
	ld a, [hl]                                       ; $5e85: $7e
	ret nz                                           ; $5e86: $c0

	ld a, l                                          ; $5e87: $7d
	adc b                                            ; $5e88: $88
	sbc l                                            ; $5e89: $9d
	rst $38                                          ; $5e8a: $ff
	ld [hl], b                                       ; $5e8b: $70
	rst SubAFromHL                                          ; $5e8c: $d7
	rst $38                                          ; $5e8d: $ff
	ld c, l                                          ; $5e8e: $4d
	ld [hl], b                                       ; $5e8f: $70
	ld a, [hl]                                       ; $5e90: $7e
	inc l                                            ; $5e91: $2c
	ld a, [hl]                                       ; $5e92: $7e
	ld a, b                                          ; $5e93: $78
	ld a, [hl]                                       ; $5e94: $7e
	ld a, d                                          ; $5e95: $7a
	ld d, h                                          ; $5e96: $54
	ld [hl], b                                       ; $5e97: $70
	sub $ff                                          ; $5e98: $d6 $ff
	sbc d                                            ; $5e9a: $9a
	ret nz                                           ; $5e9b: $c0

	pop hl                                           ; $5e9c: $e1
	sbc $e0                                          ; $5e9d: $de $e0
	rst SubAFromDE                                          ; $5e9f: $df
	sub $ff                                          ; $5ea0: $d6 $ff
	sbc l                                            ; $5ea2: $9d
	inc c                                            ; $5ea3: $0c
	sbc [hl]                                         ; $5ea4: $9e
	ld a, e                                          ; $5ea5: $7b
	jp c, $ffd6                                      ; $5ea6: $da $d6 $ff

	sbc [hl]                                         ; $5ea9: $9e
	nop                                              ; $5eaa: $00
	halt                                             ; $5eab: $76
	jr c, jr_016_5e84                                ; $5eac: $38 $d6

	rst $38                                          ; $5eae: $ff
	sbc e                                            ; $5eaf: $9b
	ldh [$f0], a                                     ; $5eb0: $e0 $f0
	adc a                                            ; $5eb2: $8f
	ret nz                                           ; $5eb3: $c0

	ld d, a                                          ; $5eb4: $57
	inc b                                            ; $5eb5: $04
	sbc e                                            ; $5eb6: $9b
	nop                                              ; $5eb7: $00
	dec e                                            ; $5eb8: $1d
	ldh [rTMA], a                                    ; $5eb9: $e0 $06
	ld e, e                                          ; $5ebb: $5b
	ld b, $7e                                        ; $5ebc: $06 $7e
	push af                                          ; $5ebe: $f5
	sbc b                                            ; $5ebf: $98
	cp $3d                                           ; $5ec0: $fe $3d
	ld a, [hl]                                       ; $5ec2: $7e
	dec e                                            ; $5ec3: $1d
	sbc b                                            ; $5ec4: $98
	rlca                                             ; $5ec5: $07
	ld a, b                                          ; $5ec6: $78
	ld d, e                                          ; $5ec7: $53
	ld [hl], b                                       ; $5ec8: $70
	ld c, a                                          ; $5ec9: $4f
	sub b                                            ; $5eca: $90
	ld a, a                                          ; $5ecb: $7f
	cp $d6                                           ; $5ecc: $fe $d6
	rst $38                                          ; $5ece: $ff
	ld [hl], c                                       ; $5ecf: $71
	ld a, h                                          ; $5ed0: $7c
	sub $ff                                          ; $5ed1: $d6 $ff
	sbc [hl]                                         ; $5ed3: $9e
	ld hl, sp+$72                                    ; $5ed4: $f8 $72
	or h                                             ; $5ed6: $b4
	ld e, e                                          ; $5ed7: $5b
	dec d                                            ; $5ed8: $15
	ld [hl], l                                       ; $5ed9: $75
	ld a, h                                          ; $5eda: $7c
	ld b, [hl]                                       ; $5edb: $46
	ld d, b                                          ; $5edc: $50
	ld d, e                                          ; $5edd: $53
	ret nc                                           ; $5ede: $d0

	sbc h                                            ; $5edf: $9c
	db $e3                                           ; $5ee0: $e3
	ldh a, [$cf]                                     ; $5ee1: $f0 $cf
	ld d, a                                          ; $5ee3: $57
	ld [hl], b                                       ; $5ee4: $70
	ld a, a                                          ; $5ee5: $7f
	rrca                                             ; $5ee6: $0f

jr_016_5ee7:
	ld a, [hl]                                       ; $5ee7: $7e
	ldh [c], a                                       ; $5ee8: $e2

jr_016_5ee9:
	sub $ff                                          ; $5ee9: $d6 $ff
	ld a, [hl]                                       ; $5eeb: $7e
	ld d, h                                          ; $5eec: $54
	sbc h                                            ; $5eed: $9c
	rrca                                             ; $5eee: $0f
	sbc a                                            ; $5eef: $9f
	rlca                                             ; $5ef0: $07
	inc bc                                           ; $5ef1: $03
	ld b, b                                          ; $5ef2: $40
	ld e, d                                          ; $5ef3: $5a
	ld h, l                                          ; $5ef4: $65
	ld a, c                                          ; $5ef5: $79

Call_016_5ef6:
	ld l, h                                          ; $5ef6: $6c
	sbc [hl]                                         ; $5ef7: $9e
	rla                                              ; $5ef8: $17
	ld d, a                                          ; $5ef9: $57
	ldh [$72], a                                     ; $5efa: $e0 $72
	inc [hl]                                         ; $5efc: $34
	ld c, d                                          ; $5efd: $4a
	ldh a, [$7f]                                     ; $5efe: $f0 $7f
	adc [hl]                                         ; $5f00: $8e
	ld a, h                                          ; $5f01: $7c
	add d                                            ; $5f02: $82
	ld a, h                                          ; $5f03: $7c
	ld a, [hl]                                       ; $5f04: $7e
	add l                                            ; $5f05: $85
	db $fc                                           ; $5f06: $fc
	di                                               ; $5f07: $f3
	db $fc                                           ; $5f08: $fc
	ei                                               ; $5f09: $fb
	cp $f9                                           ; $5f0a: $fe $f9
	cp $fd                                           ; $5f0c: $fe $fd
	rst $38                                          ; $5f0e: $ff
	db $fc                                           ; $5f0f: $fc
	call z, $4803                                    ; $5f10: $cc $03 $48
	add a                                            ; $5f13: $87
	ld a, b                                          ; $5f14: $78
	add a                                            ; $5f15: $87
	jr nc, jr_016_5ee7                               ; $5f16: $30 $cf

	jr nc, jr_016_5ee9                               ; $5f18: $30 $cf

	ld sp, $01ce                                     ; $5f1a: $31 $ce $01
	cp $03                                           ; $5f1d: $fe $03
	db $fc                                           ; $5f1f: $fc
	ld b, [hl]                                       ; $5f20: $46
	sub b                                            ; $5f21: $90
	ld a, l                                          ; $5f22: $7d
	or b                                             ; $5f23: $b0
	ld a, a                                          ; $5f24: $7f
	ld l, d                                          ; $5f25: $6a
	ld a, l                                          ; $5f26: $7d
	inc b                                            ; $5f27: $04
	ld a, h                                          ; $5f28: $7c
	ld [hl], d                                       ; $5f29: $72
	ld [hl], b                                       ; $5f2a: $70
	xor $7b                                          ; $5f2b: $ee $7b
	jr nc, jr_016_5fae                               ; $5f2d: $30 $7f

	sbc $74                                          ; $5f2f: $de $74
	jp z, $fa7d                                      ; $5f31: $ca $7d $fa

	ld a, h                                          ; $5f34: $7c
	ld a, $77                                        ; $5f35: $3e $77
	cp b                                             ; $5f37: $b8
	ld a, a                                          ; $5f38: $7f
	cp $97                                           ; $5f39: $fe $97
	ld a, $0d                                        ; $5f3b: $3e $0d
	sbc [hl]                                         ; $5f3d: $9e
	dec b                                            ; $5f3e: $05
	adc [hl]                                         ; $5f3f: $8e
	dec b                                            ; $5f40: $05
	adc $01                                          ; $5f41: $ce $01
	ld h, h                                          ; $5f43: $64
	jr c, @+$66                                      ; $5f44: $38 $64

	ret nz                                           ; $5f46: $c0

	ld h, a                                          ; $5f47: $67
	cp $60                                           ; $5f48: $fe $60
	ld b, b                                          ; $5f4a: $40
	ld l, e                                          ; $5f4b: $6b
	cp $54                                           ; $5f4c: $fe $54
	ld b, b                                          ; $5f4e: $40
	ld [hl], a                                       ; $5f4f: $77
	cp $76                                           ; $5f50: $fe $76
	call z, $fe57                                    ; $5f52: $cc $57 $fe
	ld d, h                                          ; $5f55: $54
	ld b, b                                          ; $5f56: $40
	ld [hl], a                                       ; $5f57: $77
	cp $da                                           ; $5f58: $fe $da
	rst $38                                          ; $5f5a: $ff
	ld h, b                                          ; $5f5b: $60
	ld a, [hl-]                                      ; $5f5c: $3a
	ld a, l                                          ; $5f5d: $7d
	or b                                             ; $5f5e: $b0
	ld a, a                                          ; $5f5f: $7f
	add b                                            ; $5f60: $80
	ld a, l                                          ; $5f61: $7d
	jr c, jr_016_5fe0                                ; $5f62: $38 $7c

	ld b, d                                          ; $5f64: $42
	ld a, h                                          ; $5f65: $7c
	ld a, $7f                                        ; $5f66: $3e $7f
	ld l, d                                          ; $5f68: $6a
	ld [hl], l                                       ; $5f69: $75
	ld h, h                                          ; $5f6a: $64
	ld [hl], h                                       ; $5f6b: $74
	ld [hl], d                                       ; $5f6c: $72
	ld a, l                                          ; $5f6d: $7d
	call z, $427c                                    ; $5f6e: $cc $7c $42
	ld a, h                                          ; $5f71: $7c
	ld a, $7c                                        ; $5f72: $3e $7c
	ld a, [hl-]                                      ; $5f74: $3a
	ld [hl], h                                       ; $5f75: $74
	inc [hl]                                         ; $5f76: $34
	ld a, h                                          ; $5f77: $7c
	ld c, [hl]                                       ; $5f78: $4e
	ld a, a                                          ; $5f79: $7f
	ld b, b                                          ; $5f7a: $40
	ld a, h                                          ; $5f7b: $7c
	ld b, [hl]                                       ; $5f7c: $46
	ld a, a                                          ; $5f7d: $7f
	ld d, h                                          ; $5f7e: $54
	ld h, a                                          ; $5f7f: $67
	add b                                            ; $5f80: $80
	ld a, a                                          ; $5f81: $7f
	ld b, b                                          ; $5f82: $40
	ld a, a                                          ; $5f83: $7f
	ld hl, $d677                                     ; $5f84: $21 $77 $d6
	ld a, a                                          ; $5f87: $7f
	db $fc                                           ; $5f88: $fc
	ld a, a                                          ; $5f89: $7f
	jr c, @+$81                                      ; $5f8a: $38 $7f

	db $f4                                           ; $5f8c: $f4
	ld a, [hl]                                       ; $5f8d: $7e
	ret nz                                           ; $5f8e: $c0

	ld h, e                                          ; $5f8f: $63
	ld b, b                                          ; $5f90: $40
	sbc [hl]                                         ; $5f91: $9e
	cpl                                              ; $5f92: $2f
	ld [hl], l                                       ; $5f93: $75
	dec d                                            ; $5f94: $15

Jump_016_5f95:
	ld a, a                                          ; $5f95: $7f
	db $ec                                           ; $5f96: $ec
	ld c, l                                          ; $5f97: $4d
	sub b                                            ; $5f98: $90
	ld a, [hl]                                       ; $5f99: $7e
	inc b                                            ; $5f9a: $04
	ld e, h                                          ; $5f9b: $5c
	ld b, b                                          ; $5f9c: $40
	ld [hl], h                                       ; $5f9d: $74
	ld b, d                                          ; $5f9e: $42
	ld a, a                                          ; $5f9f: $7f
	cp $79                                           ; $5fa0: $fe $79
	cp [hl]                                          ; $5fa2: $be
	ld h, [hl]                                       ; $5fa3: $66
	cp e                                             ; $5fa4: $bb
	ld [hl], d                                       ; $5fa5: $72
	jr nc, jr_016_601b                               ; $5fa6: $30 $73

	ld a, d                                          ; $5fa8: $7a
	sub $ff                                          ; $5fa9: $d6 $ff
	sbc h                                            ; $5fab: $9c
	ld [bc], a                                       ; $5fac: $02
	db $fc                                           ; $5fad: $fc

jr_016_5fae:
	add [hl]                                         ; $5fae: $86
	ld a, b                                          ; $5faf: $78
	ld a, $5f                                        ; $5fb0: $3e $5f
	cp $8f                                           ; $5fb2: $fe $8f
	inc a                                            ; $5fb4: $3c
	dec de                                           ; $5fb5: $1b
	ld a, h                                          ; $5fb6: $7c
	dec de                                           ; $5fb7: $1b
	ld a, h                                          ; $5fb8: $7c
	dec sp                                           ; $5fb9: $3b
	ld a, h                                          ; $5fba: $7c
	dec sp                                           ; $5fbb: $3b
	ld a, [hl]                                       ; $5fbc: $7e
	add hl, sp                                       ; $5fbd: $39
	ld a, [hl]                                       ; $5fbe: $7e
	dec a                                            ; $5fbf: $3d
	ld a, a                                          ; $5fc0: $7f
	inc a                                            ; $5fc1: $3c
	ld a, a                                          ; $5fc2: $7f
	ld a, $77                                        ; $5fc3: $3e $77
	call z, Call_016_7277                            ; $5fc5: $cc $77 $72
	ld a, [hl]                                       ; $5fc8: $7e
	cp [hl]                                          ; $5fc9: $be
	ld l, a                                          ; $5fca: $6f
	ld a, [hl]                                       ; $5fcb: $7e
	halt                                             ; $5fcc: $76
	call z, $c67e                                    ; $5fcd: $cc $7e $c6
	ld a, [hl]                                       ; $5fd0: $7e
	jp nz, Jump_016_7e7f                             ; $5fd1: $c2 $7f $7e

	ld a, a                                          ; $5fd4: $7f
	ld a, d                                          ; $5fd5: $7a
	ld a, a                                          ; $5fd6: $7f
	halt                                             ; $5fd7: $76
	ld a, a                                          ; $5fd8: $7f
	ld [hl], d                                       ; $5fd9: $72
	ld h, [hl]                                       ; $5fda: $66
	ret z                                            ; $5fdb: $c8

	ld a, [hl]                                       ; $5fdc: $7e
	cp [hl]                                          ; $5fdd: $be
	ld a, [hl]                                       ; $5fde: $7e
	cp d                                             ; $5fdf: $ba

jr_016_5fe0:
	sbc e                                            ; $5fe0: $9b
	sbc a                                            ; $5fe1: $9f
	inc b                                            ; $5fe2: $04
	ccf                                              ; $5fe3: $3f
	ld c, $67                                        ; $5fe4: $0e $67
	ld c, b                                          ; $5fe6: $48
	ld l, a                                          ; $5fe7: $6f
	ret nc                                           ; $5fe8: $d0

	ld a, a                                          ; $5fe9: $7f
	add l                                            ; $5fea: $85
	ld h, d                                          ; $5feb: $62
	add $9e                                          ; $5fec: $c6 $9e
	ld e, $77                                        ; $5fee: $1e $77
	ld [$927f], sp                                   ; $5ff0: $08 $7f $92
	ld d, [hl]                                       ; $5ff3: $56
	call nz, $3f99                                   ; $5ff4: $c4 $99 $3f
	rrca                                             ; $5ff7: $0f
	ccf                                              ; $5ff8: $3f
	rra                                              ; $5ff9: $1f
	ld h, c                                          ; $5ffa: $61
	nop                                              ; $5ffb: $00
	ld c, h                                          ; $5ffc: $4c
	jr nc, jr_016_6055                               ; $5ffd: $30 $56

	call nz, $3f9d                                   ; $5fff: $c4 $9d $3f
	ret nz                                           ; $6002: $c0

	ld a, e                                          ; $6003: $7b
	ld b, l                                          ; $6004: $45
	ld h, d                                          ; $6005: $62
	add $75                                          ; $6006: $c6 $75
	cp $76                                           ; $6008: $fe $76
	adc $76                                          ; $600a: $ce $76
	db $f4                                           ; $600c: $f4
	ld a, [hl]                                       ; $600d: $7e
	jp nz, Jump_016_4a7f                             ; $600e: $c2 $7f $4a

	ld a, a                                          ; $6011: $7f
	or d                                             ; $6012: $b2
	halt                                             ; $6013: $76
	or $76                                           ; $6014: $f6 $76
	call z, $c67e                                    ; $6016: $cc $7e $c6
	ld a, e                                          ; $6019: $7b
	ld c, [hl]                                       ; $601a: $4e

jr_016_601b:
	sbc d                                            ; $601b: $9a
	inc de                                           ; $601c: $13
	jr c, jr_016_6026                                ; $601d: $38 $07

	ldh a, [rIF]                                     ; $601f: $f0 $0f
	ld [hl], a                                       ; $6021: $77
	db $10                                           ; $6022: $10
	ld l, a                                          ; $6023: $6f
	cp $7a                                           ; $6024: $fe $7a

jr_016_6026:
	ld [de], a                                       ; $6026: $12
	ld a, c                                          ; $6027: $79
	or $7e                                           ; $6028: $f6 $7e
	or d                                             ; $602a: $b2
	ld a, l                                          ; $602b: $7d
	adc h                                            ; $602c: $8c
	ld a, l                                          ; $602d: $7d
	adc b                                            ; $602e: $88
	ld [hl], a                                       ; $602f: $77
	ret z                                            ; $6030: $c8

	ld a, a                                          ; $6031: $7f
	call z, $947d                                    ; $6032: $cc $7d $94
	ld a, a                                          ; $6035: $7f
	adc $7e                                          ; $6036: $ce $7e
	ret nz                                           ; $6038: $c0

	ld a, l                                          ; $6039: $7d
	call c, $8e76                                    ; $603a: $dc $76 $8e
	ld a, [hl]                                       ; $603d: $7e
	call z, $c89e                                    ; $603e: $cc $9e $c8
	ld a, b                                          ; $6041: $78
	ret c                                            ; $6042: $d8

	ld a, a                                          ; $6043: $7f
	jp nz, $f47f                                     ; $6044: $c2 $7f $f4

	ld [hl], a                                       ; $6047: $77
	or $7d                                           ; $6048: $f6 $7d
	cp [hl]                                          ; $604a: $be
	ld l, a                                          ; $604b: $6f
	cp $7f                                           ; $604c: $fe $7f
	or $7e                                           ; $604e: $f6 $7e
	cp d                                             ; $6050: $ba
	ld e, [hl]                                       ; $6051: $5e
	ret nz                                           ; $6052: $c0

	ld l, [hl]                                       ; $6053: $6e
	cp [hl]                                          ; $6054: $be

jr_016_6055:
	ld a, d                                          ; $6055: $7a
	adc $9e                                          ; $6056: $ce $9e
	ld bc, $7e5d                                     ; $6058: $01 $5d $7e
	ld a, a                                          ; $605b: $7f
	cp b                                             ; $605c: $b8
	pop de                                           ; $605d: $d1
	rst $38                                          ; $605e: $ff
	halt                                             ; $605f: $76
	call z, Call_016_5955                            ; $6060: $cc $55 $59
	sbc e                                            ; $6063: $9b
	ld a, a                                          ; $6064: $7f
	ccf                                              ; $6065: $3f
	ld a, a                                          ; $6066: $7f
	ccf                                              ; $6067: $3f
	ld d, a                                          ; $6068: $57
	ld l, $7f                                        ; $6069: $2e $7f
	adc [hl]                                         ; $606b: $8e
	ld [hl], e                                       ; $606c: $73
	ld a, [hl]                                       ; $606d: $7e
	ret c                                            ; $606e: $d8

	rst $38                                          ; $606f: $ff
	ld a, a                                          ; $6070: $7f
	ld a, d                                          ; $6071: $7a
	sbc l                                            ; $6072: $9d
	rra                                              ; $6073: $1f
	ldh [c], a                                       ; $6074: $e2
	ld d, e                                          ; $6075: $53
	ret nc                                           ; $6076: $d0

	sbc [hl]                                         ; $6077: $9e
	ld e, $4f                                        ; $6078: $1e $4f
	nop                                              ; $607a: $00

Jump_016_607b:
	ld a, [hl]                                       ; $607b: $7e
	sbc [hl]                                         ; $607c: $9e
	ld a, a                                          ; $607d: $7f
	ld l, d                                          ; $607e: $6a
	ld a, a                                          ; $607f: $7f
	set 2, a                                         ; $6080: $cb $d7
	rst $38                                          ; $6082: $ff
	reti                                             ; $6083: $d9


	nop                                              ; $6084: $00
	sbc c                                            ; $6085: $99
	ld b, $f8                                        ; $6086: $06 $f8
	inc e                                            ; $6088: $1c
	ldh [rIE], a                                     ; $6089: $e0 $ff
	nop                                              ; $608b: $00
	rst SubAFromHL                                          ; $608c: $d7
	rst $38                                          ; $608d: $ff
	sbc e                                            ; $608e: $9b
	ld a, a                                          ; $608f: $7f
	rra                                              ; $6090: $1f
	rst $38                                          ; $6091: $ff
	ccf                                              ; $6092: $3f
	push de                                          ; $6093: $d5
	rst $38                                          ; $6094: $ff
	sbc c                                            ; $6095: $99
	db $fc                                           ; $6096: $fc
	ei                                               ; $6097: $fb
	db $fc                                           ; $6098: $fc
	ei                                               ; $6099: $fb
	rst $38                                          ; $609a: $ff

Call_016_609b:
	ld hl, sp-$29                                    ; $609b: $f8 $d7
	rst $38                                          ; $609d: $ff
	cp a                                             ; $609e: $bf
	rst $38                                          ; $609f: $ff
	rst $38                                          ; $60a0: $ff
	ld d, a                                          ; $60a1: $57
	ret nc                                           ; $60a2: $d0

	sbc e                                            ; $60a3: $9b
	ld [$08f0], sp                                   ; $60a4: $08 $f0 $08
	ldh a, [$57]                                     ; $60a7: $f0 $57
	ldh a, [$99]                                     ; $60a9: $f0 $99
	ldh a, [rVBK]                                    ; $60ab: $f0 $4f
	db $fc                                           ; $60ad: $fc
	ld h, e                                          ; $60ae: $63
	rst $38                                          ; $60af: $ff
	ld a, b                                          ; $60b0: $78
	rst SubAFromHL                                          ; $60b1: $d7
	rst $38                                          ; $60b2: $ff
	sbc e                                            ; $60b3: $9b
	ld bc, $07fe                                     ; $60b4: $01 $fe $07
	ld hl, sp+$57                                    ; $60b7: $f8 $57
	ldh [$9b], a                                     ; $60b9: $e0 $9b
	sbc a                                            ; $60bb: $9f
	rlca                                             ; $60bc: $07
	ld a, a                                          ; $60bd: $7f
	rrca                                             ; $60be: $0f
	ld d, a                                          ; $60bf: $57
	sbc [hl]                                         ; $60c0: $9e
	sbc c                                            ; $60c1: $99
	ldh [$9f], a                                     ; $60c2: $e0 $9f
	ld hl, sp-$39                                    ; $60c4: $f8 $c7
	rst $38                                          ; $60c6: $ff
	ldh a, [$57]                                     ; $60c7: $f0 $57
	ret nc                                           ; $60c9: $d0

	sbc [hl]                                         ; $60ca: $9e
	rrca                                             ; $60cb: $0f
	ld d, e                                          ; $60cc: $53
	or b                                             ; $60cd: $b0
	sbc c                                            ; $60ce: $99
	adc b                                            ; $60cf: $88
	rlca                                             ; $60d0: $07
	ld hl, sp+$07                                    ; $60d1: $f8 $07
	rst $38                                          ; $60d3: $ff
	ld [hl], b                                       ; $60d4: $70
	ld d, a                                          ; $60d5: $57
	ldh [$7f], a                                     ; $60d6: $e0 $7f
	db $e3                                           ; $60d8: $e3
	sub c                                            ; $60d9: $91
	ldh a, [rIF]                                     ; $60da: $f0 $0f
	ld hl, sp+$67                                    ; $60dc: $f8 $67
	ld hl, sp+$37                                    ; $60de: $f8 $37
	ld a, b                                          ; $60e0: $78
	rlca                                             ; $60e1: $07
	ldh [$1f], a                                     ; $60e2: $e0 $1f
	nop                                              ; $60e4: $00
	rst $38                                          ; $60e5: $ff
	ld b, [hl]                                       ; $60e6: $46
	add c                                            ; $60e7: $81
	ld l, a                                          ; $60e8: $6f
	cp $9a                                           ; $60e9: $fe $9a
	adc $01                                          ; $60eb: $ce $01
	adc d                                            ; $60ed: $8a
	ld bc, $bf9b                                     ; $60ee: $01 $9b $bf
	ld sp, $d7ff                                     ; $60f1: $31 $ff $d7
	rst $38                                          ; $60f4: $ff
	sbc d                                            ; $60f5: $9a
	ret nz                                           ; $60f6: $c0

	pop hl                                           ; $60f7: $e1
	sbc $e0                                          ; $60f8: $de $e0
	rst SubAFromDE                                          ; $60fa: $df
	sub $ff                                          ; $60fb: $d6 $ff
	sub a                                            ; $60fd: $97
	inc c                                            ; $60fe: $0c

Jump_016_60ff:
	sbc [hl]                                         ; $60ff: $9e
	ld bc, $038c                                     ; $6100: $01 $8c $03
	ld a, $0d                                        ; $6103: $3e $0d
	sbc d                                            ; $6105: $9a
	ld a, e                                          ; $6106: $7b
	sub $7f                                          ; $6107: $d6 $7f
	jp nc, $c867                                     ; $6109: $d2 $67 $c8

	sbc e                                            ; $610c: $9b
	inc sp                                           ; $610d: $33
	ret nz                                           ; $610e: $c0

	daa                                              ; $610f: $27
	ret nz                                           ; $6110: $c0

	ld [hl], a                                       ; $6111: $77
	jp nz, $e67f                                     ; $6112: $c2 $7f $e6

	sbc c                                            ; $6115: $99
	sbc h                                            ; $6116: $9c
	inc bc                                           ; $6117: $03
	inc e                                            ; $6118: $1c
	dec bc                                           ; $6119: $0b
	inc a                                            ; $611a: $3c
	dec bc                                           ; $611b: $0b
	sub $ff                                          ; $611c: $d6 $ff
	rst $38                                          ; $611e: $ff
	ld d, a                                          ; $611f: $57
	ld [hl], a                                       ; $6120: $77
	ld a, d                                          ; $6121: $7a
	push af                                          ; $6122: $f5
	sbc e                                            ; $6123: $9b
	cp $3d                                           ; $6124: $fe $3d
	ld a, [hl]                                       ; $6126: $7e
	dec e                                            ; $6127: $1d
	sub $ff                                          ; $6128: $d6 $ff
	sbc [hl]                                         ; $612a: $9e
	ldh a, [$7b]                                     ; $612b: $f0 $7b
	ld a, h                                          ; $612d: $7c
	sbc [hl]                                         ; $612e: $9e
	rla                                              ; $612f: $17
	ld c, a                                          ; $6130: $4f
	sub b                                            ; $6131: $90
	ld a, a                                          ; $6132: $7f
	cp $d6                                           ; $6133: $fe $d6
	rst $38                                          ; $6135: $ff
	sbc l                                            ; $6136: $9d
	rrca                                             ; $6137: $0f
	rra                                              ; $6138: $1f
	ld a, e                                          ; $6139: $7b
	cp $d6                                           ; $613a: $fe $d6
	rst $38                                          ; $613c: $ff
	sbc [hl]                                         ; $613d: $9e
	ld hl, sp+$72                                    ; $613e: $f8 $72
	or h                                             ; $6140: $b4
	ld e, e                                          ; $6141: $5b
	dec [hl]                                         ; $6142: $35
	sbc e                                            ; $6143: $9b
	inc hl                                           ; $6144: $23
	pop bc                                           ; $6145: $c1
	inc hl                                           ; $6146: $23
	pop bc                                           ; $6147: $c1
	sub $ff                                          ; $6148: $d6 $ff
	sbc d                                            ; $614a: $9a
	ccf                                              ; $614b: $3f
	ld a, a                                          ; $614c: $7f
	rrca                                             ; $614d: $0f
	sbc a                                            ; $614e: $9f
	rlca                                             ; $614f: $07
	ld d, e                                          ; $6150: $53
	ret nc                                           ; $6151: $d0

	sbc h                                            ; $6152: $9c
	db $e3                                           ; $6153: $e3
	ldh a, [$cf]                                     ; $6154: $f0 $cf
	ld d, a                                          ; $6156: $57
	ld [hl], b                                       ; $6157: $70
	ld a, [hl]                                       ; $6158: $7e
	push af                                          ; $6159: $f5
	ld a, a                                          ; $615a: $7f
	ld [bc], a                                       ; $615b: $02
	jp nz, $f103                                     ; $615c: $c2 $03 $f1

	pop de                                           ; $615f: $d1
	rst $38                                          ; $6160: $ff
	sbc l                                            ; $6161: $9d
	rlca                                             ; $6162: $07
	inc b                                            ; $6163: $04
	ld a, e                                          ; $6164: $7b
	cp $9c                                           ; $6165: $fe $9c
	ld b, $03                                        ; $6167: $06 $03
	ld [bc], a                                       ; $6169: $02
	ld a, e                                          ; $616a: $7b
	cp $9e                                           ; $616b: $fe $9e
	inc bc                                           ; $616d: $03
	db $dd                                           ; $616e: $dd
	ld bc, $ff9d                                     ; $616f: $01 $9d $ff
	db $fc                                           ; $6172: $fc
	ld c, e                                          ; $6173: $4b
	cp $7f                                           ; $6174: $fe $7f
	adc $9d                                          ; $6176: $ce $9d
	ccf                                              ; $6178: $3f
	db $e3                                           ; $6179: $e3
	ld e, e                                          ; $617a: $5b
	cp $95                                           ; $617b: $fe $95
	db $fc                                           ; $617d: $fc
	rlca                                             ; $617e: $07
	cp $87                                           ; $617f: $fe $87
	cp $c3                                           ; $6181: $fe $c3
	rst $38                                          ; $6183: $ff
	jp $e1ff                                         ; $6184: $c3 $ff $e1


	ld l, a                                          ; $6187: $6f
	cp $9a                                           ; $6188: $fe $9a
	ld a, a                                          ; $618a: $7f
	rst $38                                          ; $618b: $ff
	ld a, a                                          ; $618c: $7f
	rst $38                                          ; $618d: $ff
	ccf                                              ; $618e: $3f
	ld a, e                                          ; $618f: $7b
	cp $9e                                           ; $6190: $fe $9e
	rra                                              ; $6192: $1f
	ld l, e                                          ; $6193: $6b
	cp $9d                                           ; $6194: $fe $9d
	rrca                                             ; $6196: $0f
	ld [$fe4f], sp                                   ; $6197: $08 $4f $fe
	ld a, e                                          ; $619a: $7b
	ret nz                                           ; $619b: $c0

	sbc h                                            ; $619c: $9c
	ld a, a                                          ; $619d: $7f
	call nz, Call_016_6f7c                           ; $619e: $c4 $7c $6f
	cp $7b                                           ; $61a1: $fe $7b
	push de                                          ; $61a3: $d5
	adc e                                            ; $61a4: $8b
	nop                                              ; $61a5: $00
	cp $07                                           ; $61a6: $fe $07
	cp $83                                           ; $61a8: $fe $83
	cp $c3                                           ; $61aa: $fe $c3
	ld a, [hl]                                       ; $61ac: $7e
	ld b, e                                          ; $61ad: $43
	ld a, [hl]                                       ; $61ae: $7e
	ld b, e                                          ; $61af: $43
	cp $c3                                           ; $61b0: $fe $c3
	cp $87                                           ; $61b2: $fe $87
	db $fc                                           ; $61b4: $fc
	rlca                                             ; $61b5: $07
	ld h, b                                          ; $61b6: $60
	ldh [rAUD4LEN], a                                ; $61b7: $e0 $20
	ld h, e                                          ; $61b9: $63
	cp $7f                                           ; $61ba: $fe $7f
	db $f4                                           ; $61bc: $f4
	sbc h                                            ; $61bd: $9c
	ld b, b                                          ; $61be: $40
	ret nz                                           ; $61bf: $c0

	ldh [$7b], a                                     ; $61c0: $e0 $7b
	ld a, [$ee5f]                                    ; $61c2: $fa $5f $ee
	ld a, a                                          ; $61c5: $7f
	cp $9b                                           ; $61c6: $fe $9b
	rst $38                                          ; $61c8: $ff
	ldh a, [rIE]                                     ; $61c9: $f0 $ff
	ldh [$7b], a                                     ; $61cb: $e0 $7b
	cp $9e                                           ; $61cd: $fe $9e
	jp nz, $fe7b                                     ; $61cf: $c2 $7b $fe

	adc b                                            ; $61d2: $88
	add $ff                                          ; $61d3: $c6 $ff
	add a                                            ; $61d5: $87
	db $fd                                           ; $61d6: $fd
	add a                                            ; $61d7: $87
	rst SubAFromBC                                          ; $61d8: $e7
	ld a, a                                          ; $61d9: $7f
	db $e3                                           ; $61da: $e3
	ccf                                              ; $61db: $3f
	di                                               ; $61dc: $f3
	ccf                                              ; $61dd: $3f
	pop af                                           ; $61de: $f1
	rra                                              ; $61df: $1f
	pop af                                           ; $61e0: $f1
	rra                                              ; $61e1: $1f
	ld sp, hl                                        ; $61e2: $f9
	rra                                              ; $61e3: $1f
	ld hl, sp+$0f                                    ; $61e4: $f8 $0f
	ld hl, sp+$0f                                    ; $61e6: $f8 $0f
	cp $0f                                           ; $61e8: $fe $0f
	ld e, a                                          ; $61ea: $5f
	xor [hl]                                         ; $61eb: $ae
	ld [hl], a                                       ; $61ec: $77
	cp $95                                           ; $61ed: $fe $95
	ccf                                              ; $61ef: $3f
	ld sp, $303f                                     ; $61f0: $31 $3f $30
	rra                                              ; $61f3: $1f
	db $10                                           ; $61f4: $10
	rra                                              ; $61f5: $1f
	jr jr_016_6217                                   ; $61f6: $18 $1f

	jr @+$7d                                         ; $61f8: $18 $7b

	add d                                            ; $61fa: $82
	sub b                                            ; $61fb: $90
	inc c                                            ; $61fc: $0c
	rrca                                             ; $61fd: $0f
	inc c                                            ; $61fe: $0c
	sbc a                                            ; $61ff: $9f
	ldh a, [$bf]                                     ; $6200: $f0 $bf
	ldh a, [$bf]                                     ; $6202: $f0 $bf
	and $bf                                          ; $6204: $e6 $bf
	and $ff                                          ; $6206: $e6 $ff
	and $ff                                          ; $6208: $e6 $ff
	ld h, [hl]                                       ; $620a: $66
	ld a, e                                          ; $620b: $7b
	cp $95                                           ; $620c: $fe $95
	ld b, [hl]                                       ; $620e: $46
	sbc a                                            ; $620f: $9f
	ld hl, sp-$21                                    ; $6210: $f8 $df
	ldh a, [$df]                                     ; $6212: $f0 $df
	ld [hl], b                                       ; $6214: $70
	rst SubAFromDE                                          ; $6215: $df
	ld [hl], c                                       ; $6216: $71

jr_016_6217:
	rst $38                                          ; $6217: $ff
	ld [hl], a                                       ; $6218: $77
	cp $92                                           ; $6219: $fe $92
	ld h, c                                          ; $621b: $61
	rst $38                                          ; $621c: $ff

jr_016_621d:
	inc hl                                           ; $621d: $23
	call z, $88fc                                    ; $621e: $cc $fc $88
	ld hl, sp-$78                                    ; $6221: $f8 $88
	ld hl, sp-$68                                    ; $6223: $f8 $98
	ld hl, sp+$10                                    ; $6225: $f8 $10
	ldh a, [rPCM34]                                  ; $6227: $f0 $77
	cp $9d                                           ; $6229: $fe $9d
	jr nc, jr_016_621d                               ; $622b: $30 $f0

	ld a, e                                          ; $622d: $7b
	ld d, b                                          ; $622e: $50
	ld a, e                                          ; $622f: $7b
	ld c, $9d                                        ; $6230: $0e $9d
	ldh [c], a                                       ; $6232: $e2
	ld a, $67                                        ; $6233: $3e $67
	cp $7f                                           ; $6235: $fe $7f
	or b                                             ; $6237: $b0
	ld a, e                                          ; $6238: $7b
	or d                                             ; $6239: $b2
	ld a, e                                          ; $623a: $7b
	or b                                             ; $623b: $b0
	ld [hl], e                                       ; $623c: $73
	ld [hl-], a                                      ; $623d: $32
	sbc e                                            ; $623e: $9b
	inc c                                            ; $623f: $0c
	rlca                                             ; $6240: $07
	inc b                                            ; $6241: $04
	jr nc, jr_016_62b7                               ; $6242: $30 $73

	ret c                                            ; $6244: $d8

	ld h, a                                          ; $6245: $67
	jp nc, Jump_016_607b                             ; $6246: $d2 $7b $60

	sub b                                            ; $6249: $90
	inc bc                                           ; $624a: $03
	rst $38                                          ; $624b: $ff
	pop bc                                           ; $624c: $c1
	ld a, a                                          ; $624d: $7f
	ld h, c                                          ; $624e: $61
	ccf                                              ; $624f: $3f
	ld hl, $213f                                     ; $6250: $21 $3f $21
	ld a, a                                          ; $6253: $7f
	ld h, c                                          ; $6254: $61
	rst $38                                          ; $6255: $ff
	jp $03fe                                         ; $6256: $c3 $fe $03


	ld d, a                                          ; $6259: $57
	jp nz, $e97a                                     ; $625a: $c2 $7a $e9

	sbc [hl]                                         ; $625d: $9e
	nop                                              ; $625e: $00
	ld d, [hl]                                       ; $625f: $56
	call nz, $f077                                   ; $6260: $c4 $77 $f0
	ld l, d                                          ; $6263: $6a
	ret z                                            ; $6264: $c8

	ld a, a                                          ; $6265: $7f
	sub $7f                                          ; $6266: $d6 $7f
	cp $7f                                           ; $6268: $fe $7f
	ld c, d                                          ; $626a: $4a
	sbc h                                            ; $626b: $9c
	rlca                                             ; $626c: $07
	db $fc                                           ; $626d: $fc
	rlca                                             ; $626e: $07
	ld l, [hl]                                       ; $626f: $6e
	jp z, $e577                                      ; $6270: $ca $77 $e5

	ld a, a                                          ; $6273: $7f
	cp $76                                           ; $6274: $fe $76
	or h                                             ; $6276: $b4
	ld [hl], d                                       ; $6277: $72
	ld [hl], b                                       ; $6278: $70
	ld e, e                                          ; $6279: $5b
	cp $73                                           ; $627a: $fe $73
	ld [hl], b                                       ; $627c: $70
	sbc h                                            ; $627d: $9c
	ld a, a                                          ; $627e: $7f
	push bc                                          ; $627f: $c5
	ld a, l                                          ; $6280: $7d
	ld h, [hl]                                       ; $6281: $66
	cp h                                             ; $6282: $bc
	sub a                                            ; $6283: $97
	db $fd                                           ; $6284: $fd
	rra                                              ; $6285: $1f
	db $fc                                           ; $6286: $fc
	rrca                                             ; $6287: $0f
	db $fc                                           ; $6288: $fc
	rlca                                             ; $6289: $07
	db $fc                                           ; $628a: $fc
	add a                                            ; $628b: $87
	ld h, a                                          ; $628c: $67
	cp $dd                                           ; $628d: $fe $dd
	ret nz                                           ; $628f: $c0

	ld a, [hl]                                       ; $6290: $7e
	jp z, $fe5f                                      ; $6291: $ca $5f $fe

	jp c, $9eff                                      ; $6294: $da $ff $9e

	cp $73                                           ; $6297: $fe $73
	cp $7a                                           ; $6299: $fe $7a
	ld b, b                                          ; $629b: $40
	sbc e                                            ; $629c: $9b
	db $fd                                           ; $629d: $fd
	adc a                                            ; $629e: $8f
	rst $38                                          ; $629f: $ff
	rrca                                             ; $62a0: $0f
	ld [hl], e                                       ; $62a1: $73
	cp h                                             ; $62a2: $bc
	ld a, a                                          ; $62a3: $7f
	cp $9d                                           ; $62a4: $fe $9d
	rra                                              ; $62a6: $1f
	di                                               ; $62a7: $f3
	halt                                             ; $62a8: $76
	ld b, b                                          ; $62a9: $40
	sbc [hl]                                         ; $62aa: $9e
	adc a                                            ; $62ab: $8f
	ld a, e                                          ; $62ac: $7b
	jp z, $ce7e                                      ; $62ad: $ca $7e $ce

	ld a, a                                          ; $62b0: $7f
	cp $7f                                           ; $62b1: $fe $7f
	ld d, [hl]                                       ; $62b3: $56
	ld l, [hl]                                       ; $62b4: $6e
	inc a                                            ; $62b5: $3c
	ld [hl], e                                       ; $62b6: $73

jr_016_62b7:
	adc d                                            ; $62b7: $8a
	ld e, [hl]                                       ; $62b8: $5e
	inc a                                            ; $62b9: $3c
	ld l, l                                          ; $62ba: $6d
	ldh a, [$71]                                     ; $62bb: $f0 $71
	xor $6d                                          ; $62bd: $ee $6d
	ldh a, [$9d]                                     ; $62bf: $f0 $9d
	ld c, a                                          ; $62c1: $4f
	ld sp, hl                                        ; $62c2: $f9
	ld [hl], a                                       ; $62c3: $77

Call_016_62c4:
	cp $9e                                           ; $62c4: $fe $9e
	rrca                                             ; $62c6: $0f
	ld a, e                                          ; $62c7: $7b
	cp $9d                                           ; $62c8: $fe $9d
	rra                                              ; $62ca: $1f
	ldh a, [$7b]                                     ; $62cb: $f0 $7b
	cp $9d                                           ; $62cd: $fe $9d
	cp $23                                           ; $62cf: $fe $23
	ld a, e                                          ; $62d1: $7b
	cp $9e                                           ; $62d2: $fe $9e
	daa                                              ; $62d4: $27
	ld a, e                                          ; $62d5: $7b
	ld a, [hl]                                       ; $62d6: $7e
	ld a, a                                          ; $62d7: $7f
	cp $9d                                           ; $62d8: $fe $9d
	adc a                                            ; $62da: $8f
	ld hl, sp+$7b                                    ; $62db: $f8 $7b
	cp $66                                           ; $62dd: $fe $66
	ld c, b                                          ; $62df: $48
	ld a, a                                          ; $62e0: $7f
	cp $df                                           ; $62e1: $fe $df
	ret nz                                           ; $62e3: $c0

	db $dd                                           ; $62e4: $dd
	add b                                            ; $62e5: $80
	rst FarCall                                          ; $62e6: $f7
	rst SubAFromDE                                          ; $62e7: $df
	db $fc                                           ; $62e8: $fc
	ld [hl], a                                       ; $62e9: $77
	ld d, b                                          ; $62ea: $50
	ld d, l                                          ; $62eb: $55
	add [hl]                                         ; $62ec: $86
	ld a, a                                          ; $62ed: $7f
	pop de                                           ; $62ee: $d1
	ld a, [hl]                                       ; $62ef: $7e
	add d                                            ; $62f0: $82
	ld d, a                                          ; $62f1: $57
	ldh a, [$7f]                                     ; $62f2: $f0 $7f
	or c                                             ; $62f4: $b1
	ld a, [hl]                                       ; $62f5: $7e
	ld h, d                                          ; $62f6: $62
	rst FarCall                                          ; $62f7: $f7
	sbc $3f                                          ; $62f8: $de $3f
	ld a, d                                          ; $62fa: $7a
	cp d                                             ; $62fb: $ba
	ld [hl], c                                       ; $62fc: $71

Jump_016_62fd:
	adc h                                            ; $62fd: $8c

Jump_016_62fe:
	push de                                          ; $62fe: $d5

Jump_016_62ff:
	rst $38                                          ; $62ff: $ff
	ld [hl], a                                       ; $6300: $77
	ld b, [hl]                                       ; $6301: $46
	sub $ff                                          ; $6302: $d6 $ff
	ld a, a                                          ; $6304: $7f
	nop                                              ; $6305: $00
	ld a, a                                          ; $6306: $7f
	ld a, [hl-]                                      ; $6307: $3a
	ret z                                            ; $6308: $c8

	rst $38                                          ; $6309: $ff
	ld a, [hl]                                       ; $630a: $7e
	ld b, d                                          ; $630b: $42
	sbc [hl]                                         ; $630c: $9e
	ldh a, [$72]                                     ; $630d: $f0 $72
	ld e, b                                          ; $630f: $58
	sbc [hl]                                         ; $6310: $9e
	rrca                                             ; $6311: $0f
	rst FarCall                                          ; $6312: $f7
	ld [hl], a                                       ; $6313: $77
	ld a, h                                          ; $6314: $7c
	rst SubAFromDE                                          ; $6315: $df
	db $fc                                           ; $6316: $fc
	rst FarCall                                          ; $6317: $f7
	ld [hl], l                                       ; $6318: $75
	ld b, d                                          ; $6319: $42
	rst SubAFromDE                                          ; $631a: $df
	ld a, a                                          ; $631b: $7f
	rst FarCall                                          ; $631c: $f7
	ld [hl], l                                       ; $631d: $75
	sub d                                            ; $631e: $92
	rst SubAFromDE                                          ; $631f: $df
	ldh [$5b], a                                     ; $6320: $e0 $5b
	ld l, d                                          ; $6322: $6a
	ld a, a                                          ; $6323: $7f
	add d                                            ; $6324: $82
	sbc [hl]                                         ; $6325: $9e
	ld hl, sp-$2b                                    ; $6326: $f8 $d5
	rst $38                                          ; $6328: $ff
	ld a, [hl]                                       ; $6329: $7e
	adc $7d                                          ; $632a: $ce $7d
	adc [hl]                                         ; $632c: $8e
	call nc, Call_016_7eff                           ; $632d: $d4 $ff $7e
	adc $7f                                          ; $6330: $ce $7f
	sbc d                                            ; $6332: $9a
	sub $ff                                          ; $6333: $d6 $ff
	sbc h                                            ; $6335: $9c
	sbc a                                            ; $6336: $9f
	rst $38                                          ; $6337: $ff
	adc a                                            ; $6338: $8f
	call nc, $ddff                                   ; $6339: $d4 $ff $dd
	ld bc, $7ef5                                     ; $633c: $01 $f5 $7e
	adc $9d                                          ; $633f: $ce $9d
	pop af                                           ; $6341: $f1
	cp a                                             ; $6342: $bf
	ld a, e                                          ; $6343: $7b
	dec sp                                           ; $6344: $3b
	ld hl, sp+$7e                                    ; $6345: $f8 $7e
	adc $9d                                          ; $6347: $ce $9d
	ld sp, hl                                        ; $6349: $f9
	sbc a                                            ; $634a: $9f
	ld d, a                                          ; $634b: $57
	ldh a, [$4e]                                     ; $634c: $f0 $4e
	call z, $dff3                                    ; $634e: $cc $f3 $df
	ret nz                                           ; $6351: $c0

	ld a, a                                          ; $6352: $7f
	ld h, d                                          ; $6353: $62
	ld d, [hl]                                       ; $6354: $56
	ret nc                                           ; $6355: $d0

	ld a, a                                          ; $6356: $7f
	inc b                                            ; $6357: $04
	ld a, [hl]                                       ; $6358: $7e
	ld c, b                                          ; $6359: $48
	rst FarCall                                          ; $635a: $f7
	sbc $07                                          ; $635b: $de $07
	ld [hl], l                                       ; $635d: $75
	ldh [$d6], a                                     ; $635e: $e0 $d6
	rst $38                                          ; $6360: $ff
	sbc e                                            ; $6361: $9b
	ei                                               ; $6362: $fb
	ccf                                              ; $6363: $3f
	db $fc                                           ; $6364: $fc
	rrca                                             ; $6365: $0f
	rst SubAFromHL                                          ; $6366: $d7
	add b                                            ; $6367: $80
	sbc $87                                          ; $6368: $de $87
	sbc h                                            ; $636a: $9c
	add h                                            ; $636b: $84
	add a                                            ; $636c: $87
	add h                                            ; $636d: $84
	ld d, a                                          ; $636e: $57
	ret nz                                           ; $636f: $c0

	halt                                             ; $6370: $76
	or h                                             ; $6371: $b4
	ld e, d                                          ; $6372: $5a
	or $9e                                           ; $6373: $f6 $9e
	cp $77                                           ; $6375: $fe $77
	ret nc                                           ; $6377: $d0

	push af                                          ; $6378: $f5
	rst SubAFromDE                                          ; $6379: $df
	add b                                            ; $637a: $80
	rst SubAFromDE                                          ; $637b: $df
	ret nz                                           ; $637c: $c0

	call nc, $02ff                                   ; $637d: $d4 $ff $02
	ld [hl], h                                       ; $6380: $74
	ld a, a                                          ; $6381: $7f
	ld [hl], b                                       ; $6382: $70
	db $d3                                           ; $6383: $d3
	rst $38                                          ; $6384: $ff
	ld a, [hl]                                       ; $6385: $7e
	push de                                          ; $6386: $d5
	rst SubAFromBC                                          ; $6387: $e7
	sbc $0f                                          ; $6388: $de $0f
	ld a, d                                          ; $638a: $7a
	ld h, h                                          ; $638b: $64
	ld d, a                                          ; $638c: $57
	add b                                            ; $638d: $80
	ld [hl], h                                       ; $638e: $74
	call c, $b074                                    ; $638f: $dc $74 $b0
	rst SubAFromDE                                          ; $6392: $df
	ldh a, [rHDMA3]                                  ; $6393: $f0 $53
	ld e, d                                          ; $6395: $5a
	ld d, [hl]                                       ; $6396: $56
	sub h                                            ; $6397: $94
	ld a, c                                          ; $6398: $79
	ld h, b                                          ; $6399: $60
	rst SubAFromHL                                          ; $639a: $d7
	rst $38                                          ; $639b: $ff
	ld [hl], l                                       ; $639c: $75
	ret nc                                           ; $639d: $d0

	push de                                          ; $639e: $d5
	rst $38                                          ; $639f: $ff
	ld [hl], l                                       ; $63a0: $75
	or b                                             ; $63a1: $b0
	push de                                          ; $63a2: $d5
	rst $38                                          ; $63a3: $ff
	sbc c                                            ; $63a4: $99
	rst JumpTable                                          ; $63a5: $c7
	ld a, a                                          ; $63a6: $7f
	rst JumpTable                                          ; $63a7: $c7
	ld a, a                                          ; $63a8: $7f
	ld a, a                                          ; $63a9: $7f
	ld b, e                                          ; $63aa: $43
	ld a, b                                          ; $63ab: $78
	ld [hl], d                                       ; $63ac: $72
	sbc [hl]                                         ; $63ad: $9e
	ccf                                              ; $63ae: $3f
	ld d, [hl]                                       ; $63af: $56
	nop                                              ; $63b0: $00
	sbc h                                            ; $63b1: $9c
	call z, $f8fc                                    ; $63b2: $cc $fc $f8
	ld e, c                                          ; $63b5: $59
	adc d                                            ; $63b6: $8a
	ld a, h                                          ; $63b7: $7c
	ld [hl], $78                                     ; $63b8: $36 $78
	ld [hl-], a                                      ; $63ba: $32
	sbc [hl]                                         ; $63bb: $9e
	rra                                              ; $63bc: $1f
	ld c, [hl]                                       ; $63bd: $4e
	add b                                            ; $63be: $80
	ld [hl], a                                       ; $63bf: $77
	ld [$407d], sp                                   ; $63c0: $08 $7d $40
	ld [hl], l                                       ; $63c3: $75
	or $7f                                           ; $63c4: $f6 $7f
	cp $76                                           ; $63c6: $fe $76
	call z, $fe57                                    ; $63c8: $cc $57 $fe
	ld d, h                                          ; $63cb: $54
	jr nc, jr_016_6445                               ; $63cc: $30 $77

	cp $78                                           ; $63ce: $fe $78
	call nz, $be75                                   ; $63d0: $c4 $75 $be
	ld [hl], a                                       ; $63d3: $77
	sbc d                                            ; $63d4: $9a
	ld a, c                                          ; $63d5: $79
	ld d, d                                          ; $63d6: $52
	ld a, a                                          ; $63d7: $7f
	cp $6f                                           ; $63d8: $fe $6f
	ret z                                            ; $63da: $c8

	ld [hl], a                                       ; $63db: $77
	ld a, [hl-]                                      ; $63dc: $3a
	ld l, a                                          ; $63dd: $6f
	cp $7c                                           ; $63de: $fe $7c
	jp c, $f89b                                      ; $63e0: $da $9b $f8

	rrca                                             ; $63e3: $0f
	ld hl, sp+$0f                                    ; $63e4: $f8 $0f
	ld [hl], h                                       ; $63e6: $74
	ld e, h                                          ; $63e7: $5c
	ld [hl], a                                       ; $63e8: $77
	ret c                                            ; $63e9: $d8

	sbc l                                            ; $63ea: $9d
	ld a, [hl]                                       ; $63eb: $7e
	ld b, e                                          ; $63ec: $43
	ld [hl], a                                       ; $63ed: $77
	ret nz                                           ; $63ee: $c0

	ld a, l                                          ; $63ef: $7d
	cp h                                             ; $63f0: $bc
	ld l, a                                          ; $63f1: $6f
	cp $78                                           ; $63f2: $fe $78
	sbc l                                            ; $63f4: $9d
	ld a, a                                          ; $63f5: $7f
	ldh a, [c]                                       ; $63f6: $f2
	ld a, h                                          ; $63f7: $7c
	adc b                                            ; $63f8: $88
	sbc [hl]                                         ; $63f9: $9e
	pop bc                                           ; $63fa: $c1
	ld [hl], e                                       ; $63fb: $73
	jr z, jr_016_6475                                ; $63fc: $28 $77

	cp $9c                                           ; $63fe: $fe $9c
	jp $03fe                                         ; $6400: $c3 $fe $03


	ld l, h                                          ; $6403: $6c
	adc d                                            ; $6404: $8a
	ld l, a                                          ; $6405: $6f
	cp $77                                           ; $6406: $fe $77
	rst SubAFromDE                                          ; $6408: $df
	sbc [hl]                                         ; $6409: $9e
	ei                                               ; $640a: $fb
	ld [hl], a                                       ; $640b: $77
	rst FarCall                                          ; $640c: $f7
	ld l, h                                          ; $640d: $6c
	ld d, b                                          ; $640e: $50
	sbc d                                            ; $640f: $9a
	ccf                                              ; $6410: $3f
	and $7e                                          ; $6411: $e6 $7e
	call nz, $777c                                   ; $6413: $c4 $7c $77
	ld d, b                                          ; $6416: $50
	sbc l                                            ; $6417: $9d
	ccf                                              ; $6418: $3f
	jr nc, jr_016_6492                               ; $6419: $30 $77

	sub [hl]                                         ; $641b: $96
	sub l                                            ; $641c: $95
	ld a, a                                          ; $641d: $7f
	ld h, e                                          ; $641e: $63
	ld a, a                                          ; $641f: $7f
	ld b, e                                          ; $6420: $43
	ld a, [hl]                                       ; $6421: $7e
	ld b, e                                          ; $6422: $43
	di                                               ; $6423: $f3
	ccf                                              ; $6424: $3f
	pop af                                           ; $6425: $f1
	rra                                              ; $6426: $1f
	ld h, e                                          ; $6427: $63
	sbc h                                            ; $6428: $9c
	ld a, h                                          ; $6429: $7c
	ld [hl], $9e                                     ; $642a: $36 $9e
	add a                                            ; $642c: $87
	ld c, a                                          ; $642d: $4f
	inc a                                            ; $642e: $3c
	ld a, a                                          ; $642f: $7f
	cp $9d                                           ; $6430: $fe $9d
	rst $38                                          ; $6432: $ff
	pop af                                           ; $6433: $f1
	ld [hl], h                                       ; $6434: $74
	ld a, [$3c79]                                    ; $6435: $fa $79 $3c
	ld [hl], a                                       ; $6438: $77
	cp $7a                                           ; $6439: $fe $7a
	ld b, b                                          ; $643b: $40
	sbc $03                                          ; $643c: $de $03
	sbc [hl]                                         ; $643e: $9e
	ld [bc], a                                       ; $643f: $02
	ld a, b                                          ; $6440: $78
	jr nc, jr_016_64bc                               ; $6441: $30 $79

	sub $9d                                          ; $6443: $d6 $9d

jr_016_6445:
	rrca                                             ; $6445: $0f
	inc c                                            ; $6446: $0c
	halt                                             ; $6447: $76
	add b                                            ; $6448: $80
	ld a, [hl]                                       ; $6449: $7e
	ldh a, [c]                                       ; $644a: $f2
	ld a, a                                          ; $644b: $7f
	xor h                                            ; $644c: $ac
	ld a, a                                          ; $644d: $7f
	xor b                                            ; $644e: $a8
	ld [hl], a                                       ; $644f: $77
	ld [hl], $77                                     ; $6450: $36 $77
	or [hl]                                          ; $6452: $b6
	ld a, a                                          ; $6453: $7f
	cp $9e                                           ; $6454: $fe $9e
	rst GetHLinHL                                          ; $6456: $cf
	ld a, c                                          ; $6457: $79
	ld b, b                                          ; $6458: $40
	ld a, a                                          ; $6459: $7f
	cp $7d                                           ; $645a: $fe $7d
	ld l, l                                          ; $645c: $6d
	ld h, a                                          ; $645d: $67
	ld a, [hl]                                       ; $645e: $7e
	sub a                                            ; $645f: $97
	ld a, a                                          ; $6460: $7f
	ld h, b                                          ; $6461: $60
	ld a, a                                          ; $6462: $7f
	ld b, b                                          ; $6463: $40
	rst $38                                          ; $6464: $ff
	ret nz                                           ; $6465: $c0

	rst $38                                          ; $6466: $ff
	add h                                            ; $6467: $84
	ld a, e                                          ; $6468: $7b
	cp $9a                                           ; $6469: $fe $9a
	adc h                                            ; $646b: $8c
	rst $38                                          ; $646c: $ff
	ld c, $fb                                        ; $646d: $0e $fb
	ld c, $f7                                        ; $646f: $0e $f7
	db $db                                           ; $6471: $db
	ld bc, $3659                                     ; $6472: $01 $59 $36

jr_016_6475:
	sbc l                                            ; $6475: $9d
	ld hl, sp-$78                                    ; $6476: $f8 $88
	ld a, e                                          ; $6478: $7b
	cp $50                                           ; $6479: $fe $50
	ld b, b                                          ; $647b: $40
	sbc h                                            ; $647c: $9c
	jr nz, jr_016_64be                               ; $647d: $20 $3f

	jr nz, jr_016_64c6                               ; $647f: $20 $45

	jr nc, jr_016_64e1                               ; $6481: $30 $5e

	add $6f                                          ; $6483: $c6 $6f
	nop                                              ; $6485: $00
	ld [hl], e                                       ; $6486: $73
	ld [hl], $94                                     ; $6487: $36 $94
	ld h, c                                          ; $6489: $61
	ld a, a                                          ; $648a: $7f
	ld b, e                                          ; $648b: $43
	cp $c3                                           ; $648c: $fe $c3
	cp $83                                           ; $648e: $fe $83
	cp $07                                           ; $6490: $fe $07

jr_016_6492:
	db $fc                                           ; $6492: $fc
	rlca                                             ; $6493: $07
	ld l, [hl]                                       ; $6494: $6e
	jp z, $c07e                                      ; $6495: $ca $7e $c0

	halt                                             ; $6498: $76
	add h                                            ; $6499: $84
	ld a, [hl]                                       ; $649a: $7e
	or [hl]                                          ; $649b: $b6
	ld a, a                                          ; $649c: $7f
	ld b, b                                          ; $649d: $40
	ld b, h                                          ; $649e: $44
	ldh [$6e], a                                     ; $649f: $e0 $6e
	or $66                                           ; $64a1: $f6 $66
	cp [hl]                                          ; $64a3: $be
	ld a, a                                          ; $64a4: $7f
	cp $9b                                           ; $64a5: $fe $9b
	cp $0f                                           ; $64a7: $fe $0f
	cp $07                                           ; $64a9: $fe $07
	ld a, e                                          ; $64ab: $7b
	add $7f                                          ; $64ac: $c6 $7f
	jp nz, $fe6b                                     ; $64ae: $c2 $6b $fe

	ld [hl], l                                       ; $64b1: $75
	adc h                                            ; $64b2: $8c
	ld [hl], a                                       ; $64b3: $77
	and a                                            ; $64b4: $a7
	ld h, a                                          ; $64b5: $67
	cp $5f                                           ; $64b6: $fe $5f
	ld d, [hl]                                       ; $64b8: $56
	ld [hl], a                                       ; $64b9: $77
	ld b, $7f                                        ; $64ba: $06 $7f

jr_016_64bc:
	cp $99                                           ; $64bc: $fe $99

jr_016_64be:
	cp $c7                                           ; $64be: $fe $c7
	rst $38                                          ; $64c0: $ff
	add a                                            ; $64c1: $87
	rst $38                                          ; $64c2: $ff
	add b                                            ; $64c3: $80
	ld [hl], e                                       ; $64c4: $73
	cp d                                             ; $64c5: $ba

jr_016_64c6:
	sbc l                                            ; $64c6: $9d
	rrca                                             ; $64c7: $0f
	ld sp, hl                                        ; $64c8: $f9
	ld a, e                                          ; $64c9: $7b
	db $10                                           ; $64ca: $10
	ld a, a                                          ; $64cb: $7f
	ldh a, [$7b]                                     ; $64cc: $f0 $7b

jr_016_64ce:
	jp z, Jump_016_7c7e                              ; $64ce: $ca $7e $7c

	ld a, a                                          ; $64d1: $7f
	cp $98                                           ; $64d2: $fe $98
	ld bc, $e1ff                                     ; $64d4: $01 $ff $e1
	cp a                                             ; $64d7: $bf
	or b                                             ; $64d8: $b0
	rra                                              ; $64d9: $1f
	db $10                                           ; $64da: $10
	ld l, [hl]                                       ; $64db: $6e
	ld a, [bc]                                       ; $64dc: $0a
	halt                                             ; $64dd: $76
	ld b, b                                          ; $64de: $40
	sbc [hl]                                         ; $64df: $9e
	sbc b                                            ; $64e0: $98

jr_016_64e1:
	ld [hl], e                                       ; $64e1: $73
	jr nc, @+$73                                     ; $64e2: $30 $71

	inc c                                            ; $64e4: $0c
	sbc [hl]                                         ; $64e5: $9e
	cp $73                                           ; $64e6: $fe $73
	cp $dc                                           ; $64e8: $fe $dc
	rst $38                                          ; $64ea: $ff
	ld b, h                                          ; $64eb: $44
	ld b, b                                          ; $64ec: $40
	ld c, [hl]                                       ; $64ed: $4e
	db $fc                                           ; $64ee: $fc
	ld a, e                                          ; $64ef: $7b
	ld a, [bc]                                       ; $64f0: $0a
	halt                                             ; $64f1: $76
	call z, $fe73                                    ; $64f2: $cc $73 $fe
	db $db                                           ; $64f5: $db
	rst $38                                          ; $64f6: $ff
	halt                                             ; $64f7: $76
	jr nc, jr_016_64ce                               ; $64f8: $30 $d4

	rst $38                                          ; $64fa: $ff
	ld a, a                                          ; $64fb: $7f
	ld e, [hl]                                       ; $64fc: $5e
	ld d, c                                          ; $64fd: $51
	inc a                                            ; $64fe: $3c
	pop de                                           ; $64ff: $d1
	rst $38                                          ; $6500: $ff
	ld a, l                                          ; $6501: $7d
	ld c, [hl]                                       ; $6502: $4e
	ld a, [hl]                                       ; $6503: $7e
	ld a, [hl]                                       ; $6504: $7e
	push de                                          ; $6505: $d5
	rst $38                                          ; $6506: $ff
	ld [hl], c                                       ; $6507: $71
	adc d                                            ; $6508: $8a
	sbc [hl]                                         ; $6509: $9e
	add a                                            ; $650a: $87
	rst SubAFromHL                                          ; $650b: $d7
	add b                                            ; $650c: $80
	ld l, h                                          ; $650d: $6c
	adc h                                            ; $650e: $8c
	rst FarCall                                          ; $650f: $f7
	ld a, h                                          ; $6510: $7c
	adc h                                            ; $6511: $8c
	ld a, [hl]                                       ; $6512: $7e
	ld c, b                                          ; $6513: $48
	rst SubAFromDE                                          ; $6514: $df
	cp $f7                                           ; $6515: $fe $f7
	rst SubAFromDE                                          ; $6517: $df
	ret nz                                           ; $6518: $c0

	di                                               ; $6519: $f3
	ld a, d                                          ; $651a: $7a
	ld a, [bc]                                       ; $651b: $0a
	ld d, b                                          ; $651c: $50
	call c, $01dc                                    ; $651d: $dc $dc $01
	sbc e                                            ; $6520: $9b
	db $e3                                           ; $6521: $e3
	ccf                                              ; $6522: $3f
	db $e3                                           ; $6523: $e3
	ccf                                              ; $6524: $3f
	call nc, $9cff                                   ; $6525: $d4 $ff $9c
	jp $e1ff                                         ; $6528: $c3 $ff $e1


	push de                                          ; $652b: $d5
	rst $38                                          ; $652c: $ff
	ld a, a                                          ; $652d: $7f
	db $e3                                           ; $652e: $e3
	sbc [hl]                                         ; $652f: $9e
	rra                                              ; $6530: $1f
	call nc, $99ff                                   ; $6531: $d4 $ff $99
	rlca                                             ; $6534: $07
	ld b, $07                                        ; $6535: $06 $07
	inc b                                            ; $6537: $04
	rlca                                             ; $6538: $07
	rlca                                             ; $6539: $07
	rst FarCall                                          ; $653a: $f7
	sbc c                                            ; $653b: $99
	pop af                                           ; $653c: $f1
	rra                                              ; $653d: $1f
	di                                               ; $653e: $f3
	ccf                                              ; $653f: $3f
	cp $fe                                           ; $6540: $fe $fe
	rst FarCall                                          ; $6542: $f7
	sbc c                                            ; $6543: $99
	rra                                              ; $6544: $1f
	db $10                                           ; $6545: $10

jr_016_6546:
	rra                                              ; $6546: $1f
	jr @+$11                                         ; $6547: $18 $0f

	rrca                                             ; $6549: $0f
	rst FarCall                                          ; $654a: $f7
	sbc c                                            ; $654b: $99
	call z, $c4fc                                    ; $654c: $cc $fc $c4
	ld a, h                                          ; $654f: $7c
	db $fc                                           ; $6550: $fc
	db $fc                                           ; $6551: $fc
	rst FarCall                                          ; $6552: $f7
	sbc h                                            ; $6553: $9c
	jr nc, jr_016_6546                               ; $6554: $30 $f0

	db $10                                           ; $6556: $10
	sbc $f0                                          ; $6557: $de $f0
	rst FarCall                                          ; $6559: $f7
	sbc e                                            ; $655a: $9b
	ldh a, [$1f]                                     ; $655b: $f0 $1f
	pop af                                           ; $655d: $f1
	cp a                                             ; $655e: $bf
	push de                                          ; $655f: $d5
	rst $38                                          ; $6560: $ff
	sbc e                                            ; $6561: $9b
	ld hl, sp-$71                                    ; $6562: $f8 $8f
	ld sp, hl                                        ; $6564: $f9
	sbc a                                            ; $6565: $9f
	push de                                          ; $6566: $d5
	rst $38                                          ; $6567: $ff
	sbc c                                            ; $6568: $99
	ld a, a                                          ; $6569: $7f
	ld b, e                                          ; $656a: $43
	ld a, a                                          ; $656b: $7f
	ld h, c                                          ; $656c: $61
	ccf                                              ; $656d: $3f
	ccf                                              ; $656e: $3f
	rst FarCall                                          ; $656f: $f7
	sbc e                                            ; $6570: $9b
	ldh [c], a                                       ; $6571: $e2
	ld a, $e2                                        ; $6572: $3e $e2
	ld a, $57                                        ; $6574: $3e $57
	sub b                                            ; $6576: $90
	ld a, e                                          ; $6577: $7b
	ld [hl], d                                       ; $6578: $72
	ld d, e                                          ; $6579: $53
	ld [hl], b                                       ; $657a: $70
	sbc [hl]                                         ; $657b: $9e
	db $fd                                           ; $657c: $fd
	ld a, e                                          ; $657d: $7b
	ld [hl], b                                       ; $657e: $70
	call nc, $9eff                                   ; $657f: $d4 $ff $9e
	nop                                              ; $6582: $00
	ld a, e                                          ; $6583: $7b
	cp $c9                                           ; $6584: $fe $c9
	rst $38                                          ; $6586: $ff
	sbc [hl]                                         ; $6587: $9e
	db $fc                                           ; $6588: $fc
	ld a, e                                          ; $6589: $7b
	cp $1b                                           ; $658a: $fe $1b
	call nc, $fb9b                                   ; $658c: $d4 $9b $fb
	ccf                                              ; $658f: $3f
	db $fc                                           ; $6590: $fc
	rrca                                             ; $6591: $0f
	ld b, a                                          ; $6592: $47
	call c, $865b                                    ; $6593: $dc $5b $86
	rst SubAFromDE                                          ; $6596: $df
	rlca                                             ; $6597: $07
	ld a, e                                          ; $6598: $7b
	add h                                            ; $6599: $84
	rst FarCall                                          ; $659a: $f7
	ld l, a                                          ; $659b: $6f
	ret nz                                           ; $659c: $c0

	ld d, a                                          ; $659d: $57
	ldh a, [$7f]                                     ; $659e: $f0 $7f
	ld [hl], h                                       ; $65a0: $74
	sbc [hl]                                         ; $65a1: $9e
	cp $5b                                           ; $65a2: $fe $5b
	ld h, [hl]                                       ; $65a4: $66
	rst $38                                          ; $65a5: $ff
	rst SubAFromDE                                          ; $65a6: $df
	ret nz                                           ; $65a7: $c0

	sbc h                                            ; $65a8: $9c
	ld h, b                                          ; $65a9: $60
	ldh [rAUD4LEN], a                                ; $65aa: $e0 $20
	ld a, e                                          ; $65ac: $7b
	cp $7f                                           ; $65ad: $fe $7f
	ld a, [$409c]                                    ; $65af: $fa $9c $40
	ret nz                                           ; $65b2: $c0

	ld b, b                                          ; $65b3: $40
	sbc $c0                                          ; $65b4: $de $c0
	db $dd                                           ; $65b6: $dd
	add b                                            ; $65b7: $80
	call nc, $9eff                                   ; $65b8: $d4 $ff $9e
	ldh [$7b], a                                     ; $65bb: $e0 $7b
	cp $d6                                           ; $65bd: $fe $d6
	rst $38                                          ; $65bf: $ff
	ld a, [hl]                                       ; $65c0: $7e
	rst FarCall                                          ; $65c1: $f7
	sbc e                                            ; $65c2: $9b
	adc a                                            ; $65c3: $8f
	rst $38                                          ; $65c4: $ff
	cp $23                                           ; $65c5: $fe $23
	ld a, e                                          ; $65c7: $7b
	cp $9c                                           ; $65c8: $fe $9c
	daa                                              ; $65ca: $27
	db $fc                                           ; $65cb: $fc
	rlca                                             ; $65cc: $07
	ld a, e                                          ; $65cd: $7b
	cp $9d                                           ; $65ce: $fe $9d
	adc a                                            ; $65d0: $8f
	ld hl, sp+$7b                                    ; $65d1: $f8 $7b
	cp $f7                                           ; $65d3: $fe $f7
	sbc $3f                                          ; $65d5: $de $3f
	sbc h                                            ; $65d7: $9c
	ld hl, $213f                                     ; $65d8: $21 $3f $21
	ld d, a                                          ; $65db: $57
	sub b                                            ; $65dc: $90
	sbc h                                            ; $65dd: $9c
	rra                                              ; $65de: $1f
	ldh a, [$9f]                                     ; $65df: $f0 $9f
	ld e, d                                          ; $65e1: $5a
	and [hl]                                         ; $65e2: $a6
	rst SubAFromDE                                          ; $65e3: $df
	rst $38                                          ; $65e4: $ff
	ld a, a                                          ; $65e5: $7f
	pop de                                           ; $65e6: $d1
	sbc l                                            ; $65e7: $9d
	sbc a                                            ; $65e8: $9f
	ld hl, sp-$09                                    ; $65e9: $f8 $f7
	rst SubAFromDE                                          ; $65eb: $df
	db $fc                                           ; $65ec: $fc
	ld a, [hl]                                       ; $65ed: $7e
	halt                                             ; $65ee: $76
	ld a, a                                          ; $65ef: $7f
	cp $9c                                           ; $65f0: $fe $9c
	rst $38                                          ; $65f2: $ff
	ld c, a                                          ; $65f3: $4f
	ld sp, hl                                        ; $65f4: $f9
	ld [hl], a                                       ; $65f5: $77
	cp $9e                                           ; $65f6: $fe $9e
	rrca                                             ; $65f8: $0f
	ld a, e                                          ; $65f9: $7b
	cp $7f                                           ; $65fa: $fe $7f
	pop de                                           ; $65fc: $d1
	ld a, e                                          ; $65fd: $7b
	cp $72                                           ; $65fe: $fe $72
	ret nz                                           ; $6600: $c0

	ld a, [hl]                                       ; $6601: $7e
	inc l                                            ; $6602: $2c
	sbc d                                            ; $6603: $9a
	ld b, $03                                        ; $6604: $06 $03
	ld [bc], a                                       ; $6606: $02
	inc bc                                           ; $6607: $03
	inc bc                                           ; $6608: $03
	db $dd                                           ; $6609: $dd
	ld bc, $8862                                     ; $660a: $01 $62 $88
	ld a, e                                          ; $660d: $7b
	cp $7e                                           ; $660e: $fe $7e
	or a                                             ; $6610: $b7
	ld a, a                                          ; $6611: $7f
	cp $7f                                           ; $6612: $fe $7f
	jp c, $f891                                      ; $6614: $da $91 $f8

	rrca                                             ; $6617: $0f
	ld hl, sp+$0f                                    ; $6618: $f8 $0f
	db $fc                                           ; $661a: $fc
	rrca                                             ; $661b: $0f
	db $fc                                           ; $661c: $fc
	rlca                                             ; $661d: $07
	cp $87                                           ; $661e: $fe $87
	cp $c3                                           ; $6620: $fe $c3
	cp $c3                                           ; $6622: $fe $c3
	ld [hl], d                                       ; $6624: $72
	ldh a, [$57]                                     ; $6625: $f0 $57
	cp $7f                                           ; $6627: $fe $7f
	sbc b                                            ; $6629: $98
	ld a, c                                          ; $662a: $79
	cp [hl]                                          ; $662b: $be
	ld e, a                                          ; $662c: $5f
	cp $6f                                           ; $662d: $fe $6f
	ret c                                            ; $662f: $d8

	ld [hl], c                                       ; $6630: $71
	cp d                                             ; $6631: $ba
	ld [hl], e                                       ; $6632: $73
	cp $67                                           ; $6633: $fe $67
	cp b                                             ; $6635: $b8
	ld a, l                                          ; $6636: $7d
	cp d                                             ; $6637: $ba
	ld l, a                                          ; $6638: $6f
	cp $73                                           ; $6639: $fe $73
	sub b                                            ; $663b: $90
	ld e, e                                          ; $663c: $5b
	cp $77                                           ; $663d: $fe $77
	ret nz                                           ; $663f: $c0

	halt                                             ; $6640: $76
	inc l                                            ; $6641: $2c
	ld [hl], a                                       ; $6642: $77
	cp $7b                                           ; $6643: $fe $7b
	reti                                             ; $6645: $d9


	ld a, a                                          ; $6646: $7f
	ldh a, [c]                                       ; $6647: $f2
	sbc h                                            ; $6648: $9c
	inc bc                                           ; $6649: $03
	rst $38                                          ; $664a: $ff
	pop bc                                           ; $664b: $c1
	ld a, d                                          ; $664c: $7a
	ld c, $7b                                        ; $664d: $0e $7b
	ld h, $7f                                        ; $664f: $26 $7f
	ld a, [$ba7f]                                    ; $6651: $fa $7f $ba
	sbc l                                            ; $6654: $9d
	cp $03                                           ; $6655: $fe $03
	ld [hl], l                                       ; $6657: $75
	ret nc                                           ; $6658: $d0

	ld h, a                                          ; $6659: $67
	cp $7f                                           ; $665a: $fe $7f
	db $f4                                           ; $665c: $f4
	ld a, [hl]                                       ; $665d: $7e
	call nz, $fb9e                                   ; $665e: $c4 $9e $fb
	ld [hl], a                                       ; $6661: $77
	cp e                                             ; $6662: $bb
	halt                                             ; $6663: $76
	ld e, b                                          ; $6664: $58
	ld a, e                                          ; $6665: $7b
	ret z                                            ; $6666: $c8

	sbc e                                            ; $6667: $9b
	rst SubAFromBC                                          ; $6668: $e7
	ld a, a                                          ; $6669: $7f
	rst JumpTable                                          ; $666a: $c7
	ld a, a                                          ; $666b: $7f
	ld a, d                                          ; $666c: $7a
	adc $9e                                          ; $666d: $ce $9e
	ret nz                                           ; $666f: $c0

	ld a, e                                          ; $6670: $7b
	cp $9e                                           ; $6671: $fe $9e
	add h                                            ; $6673: $84
	ld a, e                                          ; $6674: $7b
	cp $94                                           ; $6675: $fe $94
	adc h                                            ; $6677: $8c
	rst $38                                          ; $6678: $ff
	ld c, $fb                                        ; $6679: $0e $fb
	ld c, $cf                                        ; $667b: $0e $cf
	rst $38                                          ; $667d: $ff
	rst JumpTable                                          ; $667e: $c7
	ld a, a                                          ; $667f: $7f
	rst SubAFromBC                                          ; $6680: $e7
	ld a, a                                          ; $6681: $7f
	ld [hl], a                                       ; $6682: $77
	halt                                             ; $6683: $76
	ld a, l                                          ; $6684: $7d
	ld hl, sp+$7d                                    ; $6685: $f8 $7d
	ld h, h                                          ; $6687: $64
	ld a, a                                          ; $6688: $7f
	cp $de                                           ; $6689: $fe $de
	rst $38                                          ; $668b: $ff
	sbc [hl]                                         ; $668c: $9e
	cp $7b                                           ; $668d: $fe $7b
	cp $6f                                           ; $668f: $fe $6f
	ld d, h                                          ; $6691: $54
	sbc b                                            ; $6692: $98
	ld hl, sp-$01                                    ; $6693: $f8 $ff
	ld hl, sp+$3f                                    ; $6695: $f8 $3f
	ld sp, $303f                                     ; $6697: $31 $3f $30
	ld [hl], l                                       ; $669a: $75
	ld e, h                                          ; $669b: $5c
	ld a, c                                          ; $669c: $79
	ld e, d                                          ; $669d: $5a
	adc [hl]                                         ; $669e: $8e
	ld [$0c0f], sp                                   ; $669f: $08 $0f $0c
	rrca                                             ; $66a2: $0f
	inc c                                            ; $66a3: $0c
	sbc a                                            ; $66a4: $9f
	ldh a, [$bf]                                     ; $66a5: $f0 $bf
	ldh a, [$bf]                                     ; $66a7: $f0 $bf
	and $bf                                          ; $66a9: $e6 $bf
	and $ff                                          ; $66ab: $e6 $ff
	and $ff                                          ; $66ad: $e6 $ff
	ld h, [hl]                                       ; $66af: $66
	ld a, e                                          ; $66b0: $7b
	cp $95                                           ; $66b1: $fe $95
	ld b, [hl]                                       ; $66b3: $46
	sbc a                                            ; $66b4: $9f
	ld hl, sp-$21                                    ; $66b5: $f8 $df
	ldh a, [$df]                                     ; $66b7: $f0 $df
	ld [hl], b                                       ; $66b9: $70
	rst SubAFromDE                                          ; $66ba: $df
	ld [hl], c                                       ; $66bb: $71
	rst $38                                          ; $66bc: $ff
	ld [hl], a                                       ; $66bd: $77
	cp $7f                                           ; $66be: $fe $7f
	ld a, [hl]                                       ; $66c0: $7e
	sub [hl]                                         ; $66c1: $96
	inc hl                                           ; $66c2: $23
	call z, $88fc                                    ; $66c3: $cc $fc $88
	ld hl, sp-$78                                    ; $66c6: $f8 $88
	ld hl, sp-$68                                    ; $66c8: $f8 $98
	ld hl, sp+$67                                    ; $66ca: $f8 $67
	ld a, [hl]                                       ; $66cc: $7e
	rst SubAFromDE                                          ; $66cd: $df
	ldh [$6e], a                                     ; $66ce: $e0 $6e
	inc a                                            ; $66d0: $3c
	ld h, a                                          ; $66d1: $67
	cp $95                                           ; $66d2: $fe $95
	cp $0f                                           ; $66d4: $fe $0f
	cp $07                                           ; $66d6: $fe $07
	cp $83                                           ; $66d8: $fe $83
	cp $c3                                           ; $66da: $fe $c3
	ld a, [hl]                                       ; $66dc: $7e
	ld b, e                                          ; $66dd: $43
	ld l, a                                          ; $66de: $6f
	cp $6f                                           ; $66df: $fe $6f
	ld h, [hl]                                       ; $66e1: $66
	ld h, a                                          ; $66e2: $67
	ld l, $7f                                        ; $66e3: $2e $7f
	cp $6f                                           ; $66e5: $fe $6f
	ld a, [bc]                                       ; $66e7: $0a
	halt                                             ; $66e8: $76
	cp $7f                                           ; $66e9: $fe $7f
	cp $76                                           ; $66eb: $fe $76
	db $f4                                           ; $66ed: $f4
	ld l, d                                          ; $66ee: $6a
	add sp, $7a                                      ; $66ef: $e8 $7a
	or [hl]                                          ; $66f1: $b6
	ld a, e                                          ; $66f2: $7b
	jp z, $2a7a                                      ; $66f3: $ca $7a $2a

	ld d, [hl]                                       ; $66f6: $56
	call nz, $0077                                   ; $66f7: $c4 $77 $00
	ld d, h                                          ; $66fa: $54
	inc bc                                           ; $66fb: $03
	db $fd                                           ; $66fc: $fd
	rst SubAFromDE                                          ; $66fd: $df
	rla                                              ; $66fe: $17
	add l                                            ; $66ff: $85
	ccf                                              ; $6700: $3f
	ld a, $7f                                        ; $6701: $3e $7f
	ld h, l                                          ; $6703: $65
	ld a, a                                          ; $6704: $7f
	ld e, e                                          ; $6705: $5b
	ld a, [hl]                                       ; $6706: $7e
	ld a, a                                          ; $6707: $7f
	ld a, c                                          ; $6708: $79
	ld a, a                                          ; $6709: $7f
	ld h, c                                          ; $670a: $61
	ld a, [hl]                                       ; $670b: $7e
	ld sp, $303f                                     ; $670c: $31 $3f $30
	ccf                                              ; $670f: $3f
	ld c, a                                          ; $6710: $4f
	ld a, a                                          ; $6711: $7f
	scf                                              ; $6712: $37
	ld a, [hl-]                                      ; $6713: $3a
	ld [hl+], a                                      ; $6714: $22
	rra                                              ; $6715: $1f
	jr nc, @+$21                                     ; $6716: $30 $1f

	ld a, b                                          ; $6718: $78
	ld a, a                                          ; $6719: $7f
	ei                                               ; $671a: $fb
	sbc l                                            ; $671b: $9d
	ret nz                                           ; $671c: $c0

	ld b, b                                          ; $671d: $40
	db $db                                           ; $671e: $db
	ldh [$9d], a                                     ; $671f: $e0 $9d
	ld b, b                                          ; $6721: $40
	ret nz                                           ; $6722: $c0

	ld a, e                                          ; $6723: $7b
	push af                                          ; $6724: $f5
	sbc l                                            ; $6725: $9d
	ret nz                                           ; $6726: $c0

	add b                                            ; $6727: $80
	ld a, e                                          ; $6728: $7b
	db $fc                                           ; $6729: $fc
	ld a, a                                          ; $672a: $7f
	ld hl, sp+$77                                    ; $672b: $f8 $77
	or $7f                                           ; $672d: $f6 $7f
	push af                                          ; $672f: $f5
	jp hl                                            ; $6730: $e9


	sbc d                                            ; $6731: $9a
	ld [bc], a                                       ; $6732: $02
	inc bc                                           ; $6733: $03
	ld c, $0d                                        ; $6734: $0e $0d
	ld c, $de                                        ; $6736: $0e $de
	inc c                                            ; $6738: $0c
	ld b, a                                          ; $6739: $47
	or b                                             ; $673a: $b0
	adc a                                            ; $673b: $8f
	ld a, a                                          ; $673c: $7f
	ld a, [hl]                                       ; $673d: $7e
	ld a, l                                          ; $673e: $7d

jr_016_673f:
	ld a, a                                          ; $673f: $7f
	sbc b                                            ; $6740: $98
	rst $38                                          ; $6741: $ff
	inc d                                            ; $6742: $14
	rst $38                                          ; $6743: $ff
	jr nz, jr_016_673f                               ; $6744: $20 $f9

	ld h, c                                          ; $6746: $61
	pop de                                           ; $6747: $d1
	pop bc                                           ; $6748: $c1
	ret nz                                           ; $6749: $c0

	ld bc, $4701                                     ; $674a: $01 $01 $47
	or b                                             ; $674d: $b0
	sbc l                                            ; $674e: $9d
	call nz, $7b7c                                   ; $674f: $c4 $7c $7b
	ei                                               ; $6752: $fb
	sub h                                            ; $6753: $94
	ldh [$60], a                                     ; $6754: $e0 $60
	ldh [$e0], a                                     ; $6756: $e0 $e0
	ret nz                                           ; $6758: $c0

	ld hl, sp+$38                                    ; $6759: $f8 $38
	ldh a, [$f0]                                     ; $675b: $f0 $f0
	ret nz                                           ; $675d: $c0

	ret nz                                           ; $675e: $c0

	ei                                               ; $675f: $fb
	ld b, a                                          ; $6760: $47
	ld e, [hl]                                       ; $6761: $5e
	sub l                                            ; $6762: $95
	ld c, c                                          ; $6763: $49
	ld a, a                                          ; $6764: $7f
	ld [hl], $3f                                     ; $6765: $36 $3f
	inc h                                            ; $6767: $24
	ccf                                              ; $6768: $3f
	jr nc, jr_016_678a                               ; $6769: $30 $1f

	add hl, sp                                       ; $676b: $39
	rrca                                             ; $676c: $0f
	ld sp, hl                                        ; $676d: $f9
	ccf                                              ; $676e: $3f
	ld e, [hl]                                       ; $676f: $5e
	ld a, e                                          ; $6770: $7b
	or d                                             ; $6771: $b2
	rst SubAFromDE                                          ; $6772: $df
	ret nz                                           ; $6773: $c0

	sbc [hl]                                         ; $6774: $9e
	ld b, b                                          ; $6775: $40
	db $ed                                           ; $6776: $ed
	rst SubAFromDE                                          ; $6777: $df
	ld c, $99                                        ; $6778: $0e $99
	rra                                              ; $677a: $1f
	dec e                                            ; $677b: $1d
	ld a, [de]                                       ; $677c: $1a
	add hl, de                                       ; $677d: $19
	ld [bc], a                                       ; $677e: $02
	inc bc                                           ; $677f: $03

jr_016_6780:
	ld a, e                                          ; $6780: $7b
	add d                                            ; $6781: $82
	sbc [hl]                                         ; $6782: $9e
	nop                                              ; $6783: $00
	ld b, a                                          ; $6784: $47
	or b                                             ; $6785: $b0
	adc a                                            ; $6786: $8f
	ld a, a                                          ; $6787: $7f
	ld a, h                                          ; $6788: $7c
	rst $38                                          ; $6789: $ff

jr_016_678a:
	rst $38                                          ; $678a: $ff
	ld a, [$11ff]                                    ; $678b: $fa $ff $11
	rst $38                                          ; $678e: $ff
	jr z, jr_016_6780                                ; $678f: $28 $ef

	ld b, a                                          ; $6791: $47
	push bc                                          ; $6792: $c5
	add e                                            ; $6793: $83
	add c                                            ; $6794: $81
	rlca                                             ; $6795: $07
	rlca                                             ; $6796: $07
	ld b, a                                          ; $6797: $47
	or b                                             ; $6798: $b0
	sbc b                                            ; $6799: $98
	db $e4                                           ; $679a: $e4
	db $fc                                           ; $679b: $fc

jr_016_679c:
	adc b                                            ; $679c: $88
	cp b                                             ; $679d: $b8
	add b                                            ; $679e: $80

jr_016_679f:
	add b                                            ; $679f: $80
	nop                                              ; $67a0: $00
	ld a, e                                          ; $67a1: $7b
	cp $7f                                           ; $67a2: $fe $7f
	db $fd                                           ; $67a4: $fd
	rst SubAFromDE                                          ; $67a5: $df
	ret nz                                           ; $67a6: $c0

	rst SubAFromDE                                          ; $67a7: $df
	ldh [$f9], a                                     ; $67a8: $e0 $f9
	ld b, a                                          ; $67aa: $47
	ld e, [hl]                                       ; $67ab: $5e
	sub a                                            ; $67ac: $97
	ld c, b                                          ; $67ad: $48
	ld a, a                                          ; $67ae: $7f
	ccf                                              ; $67af: $3f
	scf                                              ; $67b0: $37
	ld c, h                                          ; $67b1: $4c
	ccf                                              ; $67b2: $3f
	ld c, b                                          ; $67b3: $48
	ccf                                              ; $67b4: $3f
	rst FarCall                                          ; $67b5: $f7
	ld b, a                                          ; $67b6: $47
	ld e, [hl]                                       ; $67b7: $5e
	ld a, e                                          ; $67b8: $7b
	pop bc                                           ; $67b9: $c1
	ld a, e                                          ; $67ba: $7b
	xor e                                            ; $67bb: $ab
	jp hl                                            ; $67bc: $e9


	rst SubAFromDE                                          ; $67bd: $df
	ld bc, $03dd                                     ; $67be: $01 $dd $03
	rst $38                                          ; $67c1: $ff
	ld b, a                                          ; $67c2: $47
	or b                                             ; $67c3: $b0
	adc a                                            ; $67c4: $8f
	pop hl                                           ; $67c5: $e1
	rst $38                                          ; $67c6: $ff
	rst $38                                          ; $67c7: $ff
	cp $63                                           ; $67c8: $fe $63
	ld a, a                                          ; $67ca: $7f
	or d                                             ; $67cb: $b2
	cp a                                             ; $67cc: $bf
	jp nz, $c4bf                                     ; $67cd: $c2 $bf $c4

	cp a                                             ; $67d0: $bf
	ld a, $2a                                        ; $67d1: $3e $2a
	ccf                                              ; $67d3: $3f
	ccf                                              ; $67d4: $3f
	ld b, a                                          ; $67d5: $47
	or b                                             ; $67d6: $b0
	sub a                                            ; $67d7: $97
	ret nc                                           ; $67d8: $d0

	ld [hl], b                                       ; $67d9: $70
	and b                                            ; $67da: $a0
	ldh [hDisp1_SCY], a                                     ; $67db: $e0 $90
	ldh a, [$80]                                     ; $67dd: $f0 $80
	and b                                            ; $67df: $a0
	push af                                          ; $67e0: $f5
	ld l, $20                                        ; $67e1: $2e $20
	sbc d                                            ; $67e3: $9a
	inc h                                            ; $67e4: $24
	rra                                              ; $67e5: $1f
	ld [$033f], sp                                   ; $67e6: $08 $3f $03
	ld l, e                                          ; $67e9: $6b
	ld h, b                                          ; $67ea: $60
	dec sp                                           ; $67eb: $3b
	ld h, h                                          ; $67ec: $64
	ld a, d                                          ; $67ed: $7a
	ld a, c                                          ; $67ee: $79
	ld [hl], a                                       ; $67ef: $77
	rst FarCall                                          ; $67f0: $f7
	jp hl                                            ; $67f1: $e9


	sbc h                                            ; $67f2: $9c
	ld b, $07                                        ; $67f3: $06 $07
	rlca                                             ; $67f5: $07
	ld a, e                                          ; $67f6: $7b
	db $fd                                           ; $67f7: $fd
	rst SubAFromDE                                          ; $67f8: $df
	rlca                                             ; $67f9: $07
	ld b, a                                          ; $67fa: $47
	or b                                             ; $67fb: $b0
	sbc [hl]                                         ; $67fc: $9e
	ld h, a                                          ; $67fd: $67
	ld a, d                                          ; $67fe: $7a
	jr nz, jr_016_679f                               ; $67ff: $20 $9e

	cp b                                             ; $6801: $b8
	ld a, d                                          ; $6802: $7a
	jr nz, jr_016_679c                               ; $6803: $20 $97

	jr z, @-$05                                      ; $6805: $28 $f9

	ld d, c                                          ; $6807: $51
	pop af                                           ; $6808: $f1
	pop hl                                           ; $6809: $e1
	and b                                            ; $680a: $a0
	add c                                            ; $680b: $81
	add c                                            ; $680c: $81
	ld b, a                                          ; $680d: $47
	or b                                             ; $680e: $b0
	ld [bc], a                                       ; $680f: $02
	jr nz, @+$6d                                     ; $6810: $20 $6b

	ld [de], a                                       ; $6812: $12
	sub a                                            ; $6813: $97
	scf                                              ; $6814: $37
	ccf                                              ; $6815: $3f
	ld b, l                                          ; $6816: $45
	ld a, [hl]                                       ; $6817: $7e
	adc a                                            ; $6818: $8f
	ld a, [$f49f]                                    ; $6819: $fa $9f $f4
	ld a, [de]                                       ; $681c: $1a
	jp nz, $c02a                                     ; $681d: $c2 $2a $c0

	rst SubAFromDE                                          ; $6820: $df
	rlca                                             ; $6821: $07
	sbc l                                            ; $6822: $9d
	ld c, $0f                                        ; $6823: $0e $0f
	ld b, [hl]                                       ; $6825: $46
	jr nz, jr_016_6887                               ; $6826: $20 $5f

	or b                                             ; $6828: $b0
	sbc h                                            ; $6829: $9c
	rrca                                             ; $682a: $0f
	ld a, h                                          ; $682b: $7c
	rst GetHLinHL                                          ; $682c: $cf
	ld a, d                                          ; $682d: $7a
	jr nz, @-$60                                     ; $682e: $20 $9e

	ld sp, $2042                                     ; $6830: $31 $42 $20
	ld h, a                                          ; $6833: $67
	or b                                             ; $6834: $b0
	rst SubAFromDE                                          ; $6835: $df
	ldh [$dd], a                                     ; $6836: $e0 $dd
	add b                                            ; $6838: $80
	ld e, [hl]                                       ; $6839: $5e
	jr nz, jr_016_686a                               ; $683a: $20 $2e

	add b                                            ; $683c: $80
	sbc c                                            ; $683d: $99
	and d                                            ; $683e: $a2
	rst $38                                          ; $683f: $ff
	jp nc, $e4bf                                     ; $6840: $d2 $bf $e4

	cp [hl]                                          ; $6843: $be
	ld l, $80                                        ; $6844: $2e $80
	db $db                                           ; $6846: $db
	add b                                            ; $6847: $80
	ld e, b                                          ; $6848: $58
	or $82                                           ; $6849: $f6 $82
	ld [bc], a                                       ; $684b: $02
	rra                                              ; $684c: $1f
	rra                                              ; $684d: $1f
	ccf                                              ; $684e: $3f
	jr c, jr_016_68d0                                ; $684f: $38 $7f

	ld h, a                                          ; $6851: $67
	ld a, a                                          ; $6852: $7f
	ld e, a                                          ; $6853: $5f
	ld a, a                                          ; $6854: $7f
	ld a, a                                          ; $6855: $7f
	ld a, e                                          ; $6856: $7b
	ld a, a                                          ; $6857: $7f
	ld h, [hl]                                       ; $6858: $66
	ld a, a                                          ; $6859: $7f
	ld h, h                                          ; $685a: $64
	ld a, e                                          ; $685b: $7b
	ld [hl], h                                       ; $685c: $74
	ld a, a                                          ; $685d: $7f
	ld a, b                                          ; $685e: $78
	ld l, a                                          ; $685f: $6f
	ld a, a                                          ; $6860: $7f
	ld b, b                                          ; $6861: $40
	sbc a                                            ; $6862: $9f
	ldh [rAUD2HIGH], a                               ; $6863: $e0 $19
	and $03                                          ; $6865: $e6 $03
	call c, $2473                                    ; $6867: $dc $73 $24

jr_016_686a:
	ld a, e                                          ; $686a: $7b
	sbc b                                            ; $686b: $98
	sbc l                                            ; $686c: $9d
	ldh a, [$30]                                     ; $686d: $f0 $30
	db $dd                                           ; $686f: $dd
	ldh a, [$98]                                     ; $6870: $f0 $98
	ld [hl], b                                       ; $6872: $70
	ldh a, [$b0]                                     ; $6873: $f0 $b0
	ldh a, [$a0]                                     ; $6875: $f0 $a0
	ld h, b                                          ; $6877: $60
	and b                                            ; $6878: $a0
	halt                                             ; $6879: $76
	ldh [$98], a                                     ; $687a: $e0 $98
	ldh [$b0], a                                     ; $687c: $e0 $b0
	ld [hl], b                                       ; $687e: $70
	adc c                                            ; $687f: $89
	ld a, c                                          ; $6880: $79
	dec bc                                           ; $6881: $0b
	ld a, e                                          ; $6882: $7b
	ld b, a                                          ; $6883: $47
	ret nc                                           ; $6884: $d0

	sub d                                            ; $6885: $92
	ccf                                              ; $6886: $3f

jr_016_6887:
	cp a                                             ; $6887: $bf
	ld e, $9f                                        ; $6888: $1e $9f
	ld c, $13                                        ; $688a: $0e $13
	inc de                                           ; $688c: $13
	rra                                              ; $688d: $1f
	daa                                              ; $688e: $27
	ccf                                              ; $688f: $3f
	ld hl, $133f                                     ; $6890: $21 $3f $13
	sbc $3f                                          ; $6893: $de $3f
	ld b, a                                          ; $6895: $47
	ret nc                                           ; $6896: $d0

	rst SubAFromDE                                          ; $6897: $df
	inc bc                                           ; $6898: $03
	sub c                                            ; $6899: $91
	rlca                                             ; $689a: $07
	add a                                            ; $689b: $87
	ld a, $ff                                        ; $689c: $3e $ff
	and $ff                                          ; $689e: $e6 $ff
	db $e3                                           ; $68a0: $e3
	ccf                                              ; $68a1: $3f
	ldh [$3f], a                                     ; $68a2: $e0 $3f
	ld hl, sp+$1f                                    ; $68a4: $f8 $1f
	rst $38                                          ; $68a6: $ff
	rst $38                                          ; $68a7: $ff
	rst FarCall                                          ; $68a8: $f7
	rst SubAFromDE                                          ; $68a9: $df
	ld h, b                                          ; $68aa: $60
	rst SubAFromDE                                          ; $68ab: $df
	ld hl, sp-$73                                    ; $68ac: $f8 $8d
	cp $3e                                           ; $68ae: $fe $3e
	db $fc                                           ; $68b0: $fc
	cp h                                             ; $68b1: $bc
	cp $de                                           ; $68b2: $fe $de
	rst $38                                          ; $68b4: $ff
	di                                               ; $68b5: $f3
	ccf                                              ; $68b6: $3f
	rst $38                                          ; $68b7: $ff
	dec a                                            ; $68b8: $3d
	rst $38                                          ; $68b9: $ff
	ldh a, [c]                                       ; $68ba: $f2
	cp $04                                           ; $68bb: $fe $04
	db $fc                                           ; $68bd: $fc
	ld hl, sp-$08                                    ; $68be: $f8 $f8
	db $fd                                           ; $68c0: $fd
	rst SubAFromDE                                          ; $68c1: $df
	ld l, $79                                        ; $68c2: $2e $79
	ld a, [bc]                                       ; $68c4: $0a
	adc b                                            ; $68c5: $88
	set 7, a                                         ; $68c6: $cb $ff
	or a                                             ; $68c8: $b7
	db $fd                                           ; $68c9: $fd
	rst $38                                          ; $68ca: $ff
	ldh a, [rIE]                                     ; $68cb: $f0 $ff
	jp nz, Jump_016_60ff                             ; $68cd: $c2 $ff $60

jr_016_68d0:
	ld a, a                                          ; $68d0: $7f
	ld [hl], b                                       ; $68d1: $70
	ld a, [hl]                                       ; $68d2: $7e
	adc b                                            ; $68d3: $88
	or $0e                                           ; $68d4: $f6 $0e
	pop af                                           ; $68d6: $f1
	ld a, h                                          ; $68d7: $7c
	jp $c33e                                         ; $68d8: $c3 $3e $c3


	ld a, l                                          ; $68db: $7d
	add c                                            ; $68dc: $81
	ei                                               ; $68dd: $fb
	rst SubAFromDE                                          ; $68de: $df
	add b                                            ; $68df: $80
	db $db                                           ; $68e0: $db
	ret nz                                           ; $68e1: $c0

	ld [hl], a                                       ; $68e2: $77
	jr z, jr_016_694c                                ; $68e3: $28 $67

	inc h                                            ; $68e5: $24
	ld a, e                                          ; $68e6: $7b
	ld [$f89c], sp                                   ; $68e7: $08 $9c $f8
	add b                                            ; $68ea: $80
	xor b                                            ; $68eb: $a8
	ld b, a                                          ; $68ec: $47
	ret nc                                           ; $68ed: $d0

	db $dd                                           ; $68ee: $dd
	ld a, h                                          ; $68ef: $7c
	sub e                                            ; $68f0: $93
	ld c, h                                          ; $68f1: $4c
	ld a, h                                          ; $68f2: $7c
	ld c, b                                          ; $68f3: $48
	ld a, h                                          ; $68f4: $7c
	res 7, a                                         ; $68f5: $cb $bf
	call c, $cebb                                    ; $68f7: $dc $bb $ce
	rst GetHLinHL                                          ; $68fa: $cf
	rst AddAOntoHL                                          ; $68fb: $ef
	rst AddAOntoHL                                          ; $68fc: $ef
	ld b, a                                          ; $68fd: $47
	ret nc                                           ; $68fe: $d0

	adc a                                            ; $68ff: $8f
	inc bc                                           ; $6900: $03
	ld [bc], a                                       ; $6901: $02
	rlca                                             ; $6902: $07

jr_016_6903:
	dec b                                            ; $6903: $05

jr_016_6904:
	rrca                                             ; $6904: $0f
	rrca                                             ; $6905: $0f
	rra                                              ; $6906: $1f
	rra                                              ; $6907: $1f
	rst $38                                          ; $6908: $ff
	rst JumpTable                                          ; $6909: $c7
	ld a, [$7ccf]                                    ; $690a: $fa $cf $7c
	rst JumpTable                                          ; $690d: $c7
	ld a, a                                          ; $690e: $7f
	di                                               ; $690f: $f3
	push af                                          ; $6910: $f5
	rst SubAFromDE                                          ; $6911: $df
	ld a, b                                          ; $6912: $78
	adc l                                            ; $6913: $8d
	db $fc                                           ; $6914: $fc
	inc l                                            ; $6915: $2c
	cp $9e                                           ; $6916: $fe $9e
	cp $38                                           ; $6918: $fe $38
	cp $e0                                           ; $691a: $fe $e0
	rst $38                                          ; $691c: $ff
	rst $38                                          ; $691d: $ff
	sbc l                                            ; $691e: $9d
	rst $38                                          ; $691f: $ff
	ld [hl], e                                       ; $6920: $73
	rst $38                                          ; $6921: $ff
	rlca                                             ; $6922: $07
	rst $38                                          ; $6923: $ff
	db $fd                                           ; $6924: $fd
	db $fd                                           ; $6925: $fd
	ld l, $80                                        ; $6926: $2e $80
	sbc c                                            ; $6928: $99
	ld [hl+], a                                      ; $6929: $22
	ccf                                              ; $692a: $3f
	ld [de], a                                       ; $692b: $12
	rra                                              ; $692c: $1f
	inc h                                            ; $692d: $24
	ld a, $36                                        ; $692e: $3e $36
	add b                                            ; $6930: $80
	sbc [hl]                                         ; $6931: $9e
	ret nz                                           ; $6932: $c0

	ld a, d                                          ; $6933: $7a
	ldh a, [c]                                       ; $6934: $f2
	ld b, l                                          ; $6935: $45
	nop                                              ; $6936: $00
	sbc b                                            ; $6937: $98
	dec e                                            ; $6938: $1d
	rra                                              ; $6939: $1f
	inc hl                                           ; $693a: $23
	ccf                                              ; $693b: $3f
	ld d, [hl]                                       ; $693c: $56
	ld a, a                                          ; $693d: $7f
	ld l, l                                          ; $693e: $6d
	db $dd                                           ; $693f: $dd
	ld a, a                                          ; $6940: $7f
	sbc h                                            ; $6941: $9c
	ld a, [hl]                                       ; $6942: $7e
	ld h, c                                          ; $6943: $61
	ld a, a                                          ; $6944: $7f
	ld h, l                                          ; $6945: $65
	ld d, b                                          ; $6946: $50
	sbc c                                            ; $6947: $99
	ld [hl+], a                                      ; $6948: $22
	rra                                              ; $6949: $1f
	jr nc, @+$21                                     ; $694a: $30 $1f

jr_016_694c:
	ld a, b                                          ; $694c: $78
	ld a, a                                          ; $694d: $7f
	ld l, c                                          ; $694e: $69
	and d                                            ; $694f: $a2
	sbc l                                            ; $6950: $9d
	ret nz                                           ; $6951: $c0

	and b                                            ; $6952: $a0
	sbc $e0                                          ; $6953: $de $e0
	ld [hl], c                                       ; $6955: $71
	or b                                             ; $6956: $b0
	ld [hl], e                                       ; $6957: $73
	or h                                             ; $6958: $b4
	ld [hl], a                                       ; $6959: $77
	xor h                                            ; $695a: $ac
	ld [hl], a                                       ; $695b: $77
	or $7f                                           ; $695c: $f6 $7f
	push af                                          ; $695e: $f5
	ld b, a                                          ; $695f: $47
	ret nc                                           ; $6960: $d0

	ld a, a                                          ; $6961: $7f
	cp [hl]                                          ; $6962: $be
	ld a, l                                          ; $6963: $7d
	jr nz, jr_016_6904                               ; $6964: $20 $9e

	sbc b                                            ; $6966: $98
	ld a, c                                          ; $6967: $79
	jr nz, jr_016_6903                               ; $6968: $20 $99

	jr nz, @-$05                                     ; $696a: $20 $f9

	ld h, c                                          ; $696c: $61
	pop de                                           ; $696d: $d1
	pop bc                                           ; $696e: $c1
	ret nz                                           ; $696f: $c0

	ld [hl], l                                       ; $6970: $75
	sbc [hl]                                         ; $6971: $9e
	ld c, a                                          ; $6972: $4f
	sbc [hl]                                         ; $6973: $9e
	ld a, a                                          ; $6974: $7f
	ld d, b                                          ; $6975: $50
	ld [hl], a                                       ; $6976: $77
	adc $95                                          ; $6977: $ce $95
	ld c, c                                          ; $6979: $49
	ld a, a                                          ; $697a: $7f
	ld [hl], $3f                                     ; $697b: $36 $3f
	inc h                                            ; $697d: $24
	ccf                                              ; $697e: $3f
	jr nc, jr_016_69a0                               ; $697f: $30 $1f

	add hl, sp                                       ; $6981: $39
	rrca                                             ; $6982: $0f
	ld h, c                                          ; $6983: $61
	ld b, b                                          ; $6984: $40
	ld l, e                                          ; $6985: $6b
	sbc [hl]                                         ; $6986: $9e
	ld h, a                                          ; $6987: $67
	ld d, d                                          ; $6988: $52
	ld [hl], a                                       ; $6989: $77
	ld d, l                                          ; $698a: $55
	ld [hl], l                                       ; $698b: $75
	adc [hl]                                         ; $698c: $8e
	ld b, a                                          ; $698d: $47
	ret nc                                           ; $698e: $d0

	ld a, d                                          ; $698f: $7a
	halt                                             ; $6990: $76
	ld a, c                                          ; $6991: $79
	ld h, b                                          ; $6992: $60
	sbc [hl]                                         ; $6993: $9e
	ld de, $6061                                     ; $6994: $11 $61 $60
	ccf                                              ; $6997: $3f
	inc a                                            ; $6998: $3c
	ld l, a                                          ; $6999: $6f
	adc $66                                          ; $699a: $ce $66
	ldh a, [$f7]                                     ; $699c: $f0 $f7
	ld l, a                                          ; $699e: $6f
	sbc [hl]                                         ; $699f: $9e

jr_016_69a0:
	ld [hl], a                                       ; $69a0: $77
	xor b                                            ; $69a1: $a8
	ld d, [hl]                                       ; $69a2: $56
	ldh a, [rBGP]                                    ; $69a3: $f0 $47
	ret nc                                           ; $69a5: $d0

	ld l, [hl]                                       ; $69a6: $6e
	ret nz                                           ; $69a7: $c0

	sbc c                                            ; $69a8: $99
	or d                                             ; $69a9: $b2
	cp a                                             ; $69aa: $bf
	jp nz, $c4bf                                     ; $69ab: $c2 $bf $c4

	cp a                                             ; $69ae: $bf
	halt                                             ; $69af: $76
	ret nz                                           ; $69b0: $c0

	ld b, a                                          ; $69b1: $47
	ret nc                                           ; $69b2: $d0

	ld a, l                                          ; $69b3: $7d
	ld b, b                                          ; $69b4: $40
	ld [bc], a                                       ; $69b5: $02
	ret nz                                           ; $69b6: $c0

	ld l, d                                          ; $69b7: $6a
	ldh a, [$9a]                                     ; $69b8: $f0 $9a
	inc h                                            ; $69ba: $24
	rra                                              ; $69bb: $1f
	ld [$033f], sp                                   ; $69bc: $08 $3f $03
	ld l, e                                          ; $69bf: $6b
	add b                                            ; $69c0: $80
	ld b, [hl]                                       ; $69c1: $46
	ret nz                                           ; $69c2: $c0

	ld [hl], b                                       ; $69c3: $70
	or d                                             ; $69c4: $b2
	ld a, a                                          ; $69c5: $7f
	ld sp, hl                                        ; $69c6: $f9
	ld a, e                                          ; $69c7: $7b
	rst FarCall                                          ; $69c8: $f7
	ld b, a                                          ; $69c9: $47
	ret nc                                           ; $69ca: $d0

	sbc [hl]                                         ; $69cb: $9e
	ld h, a                                          ; $69cc: $67
	ld a, d                                          ; $69cd: $7a
	ret nz                                           ; $69ce: $c0

jr_016_69cf:
	sbc [hl]                                         ; $69cf: $9e
	cp b                                             ; $69d0: $b8
	ld a, d                                          ; $69d1: $7a
	ret nz                                           ; $69d2: $c0

	sbc b                                            ; $69d3: $98
	jr z, jr_016_69cf                                ; $69d4: $28 $f9

	ld d, c                                          ; $69d6: $51
	pop af                                           ; $69d7: $f1
	pop hl                                           ; $69d8: $e1
	and b                                            ; $69d9: $a0
	add c                                            ; $69da: $81
	ld l, c                                          ; $69db: $69
	and b                                            ; $69dc: $a0
	ccf                                              ; $69dd: $3f
	ld [hl+], a                                      ; $69de: $22
	ld h, h                                          ; $69df: $64
	ld d, b                                          ; $69e0: $50
	ld h, $c0                                        ; $69e1: $26 $c0
	ld h, h                                          ; $69e3: $64
	ld d, b                                          ; $69e4: $50
	ld b, a                                          ; $69e5: $47
	ret nc                                           ; $69e6: $d0

	sbc h                                            ; $69e7: $9c
	rrca                                             ; $69e8: $0f
	ld a, h                                          ; $69e9: $7c
	rst GetHLinHL                                          ; $69ea: $cf
	ld a, d                                          ; $69eb: $7a
	ret nz                                           ; $69ec: $c0

	sbc [hl]                                         ; $69ed: $9e
	ld sp, $c062                                     ; $69ee: $31 $62 $c0
	cpl                                              ; $69f1: $2f
	nop                                              ; $69f2: $00
	ld e, h                                          ; $69f3: $5c
	ld b, b                                          ; $69f4: $40
	ld a, h                                          ; $69f5: $7c
	add $04                                          ; $69f6: $c6 $04
	ld b, b                                          ; $69f8: $40
	rst $38                                          ; $69f9: $ff
	ld a, b                                          ; $69fa: $78
	ld b, b                                          ; $69fb: $40
	sub l                                            ; $69fc: $95
	ccf                                              ; $69fd: $3f
	ld a, a                                          ; $69fe: $7f
	ld b, a                                          ; $69ff: $47
	ld a, a                                          ; $6a00: $7f
	ld l, $7f                                        ; $6a01: $2e $7f
	ld e, a                                          ; $6a03: $5f
	ld a, c                                          ; $6a04: $79
	ld a, a                                          ; $6a05: $7f
	ld h, h                                          ; $6a06: $64
	ld [hl], b                                       ; $6a07: $70

jr_016_6a08:
	ld [hl], b                                       ; $6a08: $70
	sbc l                                            ; $6a09: $9d
	jr c, jr_016_6a3b                                ; $6a0a: $38 $2f

	ld b, b                                          ; $6a0c: $40
	ld b, b                                          ; $6a0d: $40
	ld a, h                                          ; $6a0e: $7c
	ld b, l                                          ; $6a0f: $45
	ld l, b                                          ; $6a10: $68
	ld b, b                                          ; $6a11: $40
	ld a, h                                          ; $6a12: $7c
	ld a, b                                          ; $6a13: $78
	ld [hl], h                                       ; $6a14: $74
	ld [hl], b                                       ; $6a15: $70
	rst SubAFromDE                                          ; $6a16: $df
	add b                                            ; $6a17: $80
	ld l, h                                          ; $6a18: $6c
	ld [hl], b                                       ; $6a19: $70
	ld b, a                                          ; $6a1a: $47
	ret nc                                           ; $6a1b: $d0

	inc a                                            ; $6a1c: $3c
	ld b, b                                          ; $6a1d: $40
	ld c, a                                          ; $6a1e: $4f
	ret nc                                           ; $6a1f: $d0

	inc e                                            ; $6a20: $1c
	ld b, b                                          ; $6a21: $40
	rst SubAFromDE                                          ; $6a22: $df
	ld [hl], b                                       ; $6a23: $70
	rst SubAFromDE                                          ; $6a24: $df
	ld hl, sp-$71                                    ; $6a25: $f8 $8f
	ld [$b6fe], a                                    ; $6a27: $ea $fe $b6
	cp $cf                                           ; $6a2a: $fe $cf
	rst $38                                          ; $6a2c: $ff
	ei                                               ; $6a2d: $fb
	rst $38                                          ; $6a2e: $ff
	rst SubAFromBC                                          ; $6a2f: $e7
	ld a, a                                          ; $6a30: $7f
	rst $38                                          ; $6a31: $ff
	dec a                                            ; $6a32: $3d
	cp $f2                                           ; $6a33: $fe $f2
	db $fc                                           ; $6a35: $fc
	inc b                                            ; $6a36: $04
	ld l, h                                          ; $6a37: $6c
	ld b, b                                          ; $6a38: $40
	sbc b                                            ; $6a39: $98
	ld a, [hl-]                                      ; $6a3a: $3a

jr_016_6a3b:
	ld a, $47                                        ; $6a3b: $3e $47
	ld a, a                                          ; $6a3d: $7f
	xor l                                            ; $6a3e: $ad
	rst $38                                          ; $6a3f: $ff
	db $db                                           ; $6a40: $db
	ld a, e                                          ; $6a41: $7b
	ld h, $9d                                        ; $6a42: $26 $9d
	rst $38                                          ; $6a44: $ff
	db $fc                                           ; $6a45: $fc
	inc h                                            ; $6a46: $24
	ld b, b                                          ; $6a47: $40
	ld [hl], l                                       ; $6a48: $75
	sub d                                            ; $6a49: $92
	ld l, a                                          ; $6a4a: $6f
	jr z, jr_016_6a99                                ; $6a4b: $28 $4c

	ld [hl], b                                       ; $6a4d: $70
	ld b, l                                          ; $6a4e: $45
	ld bc, $dfff                                     ; $6a4f: $01 $ff $df
	add b                                            ; $6a52: $80
	ei                                               ; $6a53: $fb
	adc c                                            ; $6a54: $89
	ld b, b                                          ; $6a55: $40
	ret nz                                           ; $6a56: $c0

	nop                                              ; $6a57: $00

jr_016_6a58:
	ld hl, sp-$80                                    ; $6a58: $f8 $80
	xor b                                            ; $6a5a: $a8
	ld bc, $0301                                     ; $6a5b: $01 $01 $03
	ld [bc], a                                       ; $6a5e: $02
	rlca                                             ; $6a5f: $07
	rlca                                             ; $6a60: $07
	rrca                                             ; $6a61: $0f
	rrca                                             ; $6a62: $0f
	rst $38                                          ; $6a63: $ff
	rst JumpTable                                          ; $6a64: $c7
	ld hl, sp-$31                                    ; $6a65: $f8 $cf
	ld a, h                                          ; $6a67: $7c
	rst JumpTable                                          ; $6a68: $c7
	ld a, a                                          ; $6a69: $7f
	di                                               ; $6a6a: $f3
	push af                                          ; $6a6b: $f5
	rst SubAFromDE                                          ; $6a6c: $df
	jr c, jr_016_6a08                                ; $6a6d: $38 $99

	db $fc                                           ; $6a6f: $fc
	cp h                                             ; $6a70: $bc
	cp $4e                                           ; $6a71: $fe $4e
	cp $9e                                           ; $6a73: $fe $9e
	db $dd                                           ; $6a75: $dd
	rst $38                                          ; $6a76: $ff
	add b                                            ; $6a77: $80
	sbc l                                            ; $6a78: $9d
	rst $38                                          ; $6a79: $ff
	ld [hl], e                                       ; $6a7a: $73
	rst $38                                          ; $6a7b: $ff
	ld b, $fe                                        ; $6a7c: $06 $fe
	db $fc                                           ; $6a7e: $fc
	db $fc                                           ; $6a7f: $fc
	ld a, a                                          ; $6a80: $7f
	ld a, a                                          ; $6a81: $7f
	ld a, [hl]                                       ; $6a82: $7e
	ld a, a                                          ; $6a83: $7f
	ld h, c                                          ; $6a84: $61
	ld a, a                                          ; $6a85: $7f
	ld sp, $483f                                     ; $6a86: $31 $3f $48
	ld a, a                                          ; $6a89: $7f
	ccf                                              ; $6a8a: $3f
	scf                                              ; $6a8b: $37
	ld c, h                                          ; $6a8c: $4c
	ccf                                              ; $6a8d: $3f
	ld c, b                                          ; $6a8e: $48
	ccf                                              ; $6a8f: $3f
	pop hl                                           ; $6a90: $e1
	rst $38                                          ; $6a91: $ff
	rst $38                                          ; $6a92: $ff
	cp $63                                           ; $6a93: $fe $63
	ld a, a                                          ; $6a95: $7f
	ld [hl+], a                                      ; $6a96: $22
	sub h                                            ; $6a97: $94
	ccf                                              ; $6a98: $3f

jr_016_6a99:
	ld [de], a                                       ; $6a99: $12
	rra                                              ; $6a9a: $1f
	inc h                                            ; $6a9b: $24
	ld a, $3e                                        ; $6a9c: $3e $3e
	ld a, [hl+]                                      ; $6a9e: $2a
	ccf                                              ; $6a9f: $3f
	ccf                                              ; $6aa0: $3f
	ld b, b                                          ; $6aa1: $40
	ret nz                                           ; $6aa2: $c0

	ld a, e                                          ; $6aa3: $7b
	xor b                                            ; $6aa4: $a8
	ld a, e                                          ; $6aa5: $7b
	db $fc                                           ; $6aa6: $fc
	sbc [hl]                                         ; $6aa7: $9e
	add b                                            ; $6aa8: $80
	ld a, e                                          ; $6aa9: $7b
	ld a, [$f97b]                                    ; $6aaa: $fa $7b $f9
	ld a, a                                          ; $6aad: $7f
	cp $98                                           ; $6aae: $fe $98
	ld h, b                                          ; $6ab0: $60
	and b                                            ; $6ab1: $a0
	ldh [hDisp1_SCY], a                                     ; $6ab2: $e0 $90
	ldh a, [$80]                                     ; $6ab4: $f0 $80
	and b                                            ; $6ab6: $a0
	di                                               ; $6ab7: $f3
	rst SubAFromDE                                          ; $6ab8: $df
	jr nc, jr_016_6a58                               ; $6ab9: $30 $9d

	jr c, jr_016_6add                                ; $6abb: $38 $20

	db $dd                                           ; $6abd: $dd
	inc a                                            ; $6abe: $3c
	adc l                                            ; $6abf: $8d
	inc e                                            ; $6ac0: $1c
	inc a                                            ; $6ac1: $3c
	jr z, jr_016_6afc                                ; $6ac2: $28 $38

	jr nz, jr_016_6ad6                               ; $6ac4: $20 $10

	jr z, jr_016_6b00                                ; $6ac6: $28 $38

	db $10                                           ; $6ac8: $10
	jr nc, jr_016_6aeb                               ; $6ac9: $30 $20

	jr nz, jr_016_6add                               ; $6acb: $20 $10

	jr nc, jr_016_6adf                               ; $6acd: $30 $10

	jr nc, jr_016_6af5                               ; $6acf: $30 $24

	inc a                                            ; $6ad1: $3c
	rla                                              ; $6ad2: $17
	sbc $9b                                          ; $6ad3: $de $9b
	ld [de], a                                       ; $6ad5: $12

jr_016_6ad6:
	ld a, $12                                        ; $6ad6: $3e $12
	ld a, $07                                        ; $6ad8: $3e $07
	cp h                                             ; $6ada: $bc
	rlca                                             ; $6adb: $07
	sbc [hl]                                         ; $6adc: $9e

jr_016_6add:
	ld h, e                                          ; $6add: $63
	ldh [c], a                                       ; $6ade: $e2

jr_016_6adf:
	sbc d                                            ; $6adf: $9a
	jr c, jr_016_6b1e                                ; $6ae0: $38 $3c

	inc l                                            ; $6ae2: $2c
	inc a                                            ; $6ae3: $3c
	inc [hl]                                         ; $6ae4: $34
	inc de                                           ; $6ae5: $13
	add b                                            ; $6ae6: $80
	ld b, e                                          ; $6ae7: $43
	sbc $43                                          ; $6ae8: $de $43
	add b                                            ; $6aea: $80

jr_016_6aeb:
	dec sp                                           ; $6aeb: $3b
	cp h                                             ; $6aec: $bc
	rrca                                             ; $6aed: $0f
	ldh [c], a                                       ; $6aee: $e2
	ld e, a                                          ; $6aef: $5f
	ldh [$de], a                                     ; $6af0: $e0 $de

jr_016_6af2:
	ld a, a                                          ; $6af2: $7f
	sbc h                                            ; $6af3: $9c
	add b                                            ; $6af4: $80

jr_016_6af5:
	rst $38                                          ; $6af5: $ff
	nop                                              ; $6af6: $00
	ld c, a                                          ; $6af7: $4f
	cp $7f                                           ; $6af8: $fe $7f
	xor $df                                          ; $6afa: $ee $df

jr_016_6afc:
	ld a, a                                          ; $6afc: $7f
	db $fd                                           ; $6afd: $fd
	sbc c                                            ; $6afe: $99

Jump_016_6aff:
	ret nz                                           ; $6aff: $c0

jr_016_6b00:
	and b                                            ; $6b00: $a0
	ld a, b                                          ; $6b01: $78
	ld c, b                                          ; $6b02: $48
	rst $38                                          ; $6b03: $ff
	rst SubAFromBC                                          ; $6b04: $e7
	ld b, a                                          ; $6b05: $47
	ldh [c], a                                       ; $6b06: $e2
	ld [hl], e                                       ; $6b07: $73
	cp $7f                                           ; $6b08: $fe $7f
	db $fd                                           ; $6b0a: $fd
	or $df                                           ; $6b0b: $f6 $df
	ld h, $91                                        ; $6b0d: $26 $91
	ld [hl], a                                       ; $6b0f: $77
	ld h, e                                          ; $6b10: $63
	ld a, [hl-]                                      ; $6b11: $3a
	ld a, a                                          ; $6b12: $7f
	ld [hl-], a                                      ; $6b13: $32
	ld [hl+], a                                      ; $6b14: $22
	ld h, $22                                        ; $6b15: $26 $22
	inc h                                            ; $6b17: $24
	ld h, $20                                        ; $6b18: $26 $20
	jr nz, jr_016_6b5a                               ; $6b1a: $20 $3e

	ld e, $f1                                        ; $6b1c: $1e $f1

jr_016_6b1e:
	adc a                                            ; $6b1e: $8f
	db $10                                           ; $6b1f: $10
	jr jr_016_6b3a                                   ; $6b20: $18 $18

	ld c, b                                          ; $6b22: $48

jr_016_6b23:
	ld [hl], h                                       ; $6b23: $74
	ld a, h                                          ; $6b24: $7c
	ld [$180c], sp                                   ; $6b25: $08 $0c $18
	db $10                                           ; $6b28: $10
	jr nz, jr_016_6b5b                               ; $6b29: $20 $30

	ld [hl], b                                       ; $6b2b: $70
	ld e, b                                          ; $6b2c: $58
	adc $8e                                          ; $6b2d: $ce $8e
	pop af                                           ; $6b2f: $f1
	sbc d                                            ; $6b30: $9a
	jr c, jr_016_6baf                                ; $6b31: $38 $7c

	ld h, [hl]                                       ; $6b33: $66
	jp nc, $dc52                                     ; $6b34: $d2 $52 $dc

	sub d                                            ; $6b37: $92
	sbc c                                            ; $6b38: $99
	and [hl]                                         ; $6b39: $a6

jr_016_6b3a:
	or d                                             ; $6b3a: $b2
	db $fc                                           ; $6b3b: $fc
	and [hl]                                         ; $6b3c: $a6
	ld l, b                                          ; $6b3d: $68
	ld c, h                                          ; $6b3e: $4c
	rst AddAOntoHL                                          ; $6b3f: $ef
	rst SubAFromDE                                          ; $6b40: $df
	ld b, d                                          ; $6b41: $42
	sbc [hl]                                         ; $6b42: $9e
	ld b, c                                          ; $6b43: $41
	ld a, e                                          ; $6b44: $7b
	db $fd                                           ; $6b45: $fd
	rst SubAFromDE                                          ; $6b46: $df
	ld b, c                                          ; $6b47: $41
	sbc d                                            ; $6b48: $9a
	jr nz, jr_016_6b8b                               ; $6b49: $20 $40

	jr nc, jr_016_6bb5                               ; $6b4b: $30 $68

	jr nc, @+$65                                     ; $6b4d: $30 $63

	ld b, h                                          ; $6b4f: $44
	di                                               ; $6b50: $f3
	rst SubAFromDE                                          ; $6b51: $df
	inc c                                            ; $6b52: $0c
	sub a                                            ; $6b53: $97
	ld l, [hl]                                       ; $6b54: $6e
	ld [hl], d                                       ; $6b55: $72
	ld [bc], a                                       ; $6b56: $02
	ld [bc], a                                       ; $6b57: $02
	inc b                                            ; $6b58: $04
	ld [bc], a                                       ; $6b59: $02

jr_016_6b5a:
	inc c                                            ; $6b5a: $0c

jr_016_6b5b:
	inc c                                            ; $6b5b: $0c
	pop af                                           ; $6b5c: $f1
	rst SubAFromDE                                          ; $6b5d: $df
	jr nz, jr_016_6af2                               ; $6b5e: $20 $92

	ld a, b                                          ; $6b60: $78
	jr c, jr_016_6b23                                ; $6b61: $38 $c0

	ldh [$28], a                                     ; $6b63: $e0 $28
	ld e, h                                          ; $6b65: $5c
	ld [hl], d                                       ; $6b66: $72
	ld h, [hl]                                       ; $6b67: $66
	ld b, $02                                        ; $6b68: $06 $02
	ld [$1806], sp                                   ; $6b6a: $08 $06 $18
	ld h, d                                          ; $6b6d: $62
	and h                                            ; $6b6e: $a4
	ld hl, sp-$21                                    ; $6b6f: $f8 $df
	inc b                                            ; $6b71: $04
	sbc l                                            ; $6b72: $9d
	dec c                                            ; $6b73: $0d
	inc c                                            ; $6b74: $0c
	jp c, $de08                                      ; $6b75: $da $08 $de

	dec c                                            ; $6b78: $0d
	sbc [hl]                                         ; $6b79: $9e
	ld [$deef], sp                                   ; $6b7a: $08 $ef $de
	ldh [$9a], a                                     ; $6b7d: $e0 $9a
	ld b, b                                          ; $6b7f: $40
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	inc bc                                           ; $6b82: $03
	inc bc                                           ; $6b83: $03
	ld l, a                                          ; $6b84: $6f
	db $f4                                           ; $6b85: $f4
	db $eb                                           ; $6b86: $eb
	rst SubAFromDE                                          ; $6b87: $df
	ld h, b                                          ; $6b88: $60
	sub a                                            ; $6b89: $97
	ld [hl], b                                       ; $6b8a: $70

jr_016_6b8b:
	sub b                                            ; $6b8b: $90
	db $10                                           ; $6b8c: $10
	db $10                                           ; $6b8d: $10
	jr nz, jr_016_6ba0                               ; $6b8e: $20 $10

	ld h, b                                          ; $6b90: $60
	ld h, b                                          ; $6b91: $60
	db $fd                                           ; $6b92: $fd
	ld c, a                                          ; $6b93: $4f
	inc bc                                           ; $6b94: $03
	db $fd                                           ; $6b95: $fd
	rst SubAFromDE                                          ; $6b96: $df
	ld l, $85                                        ; $6b97: $2e $85
	ld a, a                                          ; $6b99: $7f
	ld a, h                                          ; $6b9a: $7c
	rst $38                                          ; $6b9b: $ff
	set 7, a                                         ; $6b9c: $cb $ff
	or a                                             ; $6b9e: $b7
	db $fd                                           ; $6b9f: $fd

jr_016_6ba0:
	rst $38                                          ; $6ba0: $ff
	ldh a, [c]                                       ; $6ba1: $f2
	rst $38                                          ; $6ba2: $ff
	jp nz, Jump_016_62fd                             ; $6ba3: $c2 $fd $62

	ld a, a                                          ; $6ba6: $7f
	ld b, c                                          ; $6ba7: $41
	ld a, a                                          ; $6ba8: $7f
	cp $8e                                           ; $6ba9: $fe $8e
	call z, $ccb4                                    ; $6bab: $cc $b4 $cc
	inc [hl]                                         ; $6bae: $34

jr_016_6baf:
	rst JumpTable                                          ; $6baf: $c7
	ld a, a                                          ; $6bb0: $7f
	ldh [rIE], a                                     ; $6bb1: $e0 $ff
	ei                                               ; $6bb3: $fb
	rst SubAFromDE                                          ; $6bb4: $df

jr_016_6bb5:
	add b                                            ; $6bb5: $80
	db $db                                           ; $6bb6: $db
	ret nz                                           ; $6bb7: $c0

	rst SubAFromDE                                          ; $6bb8: $df
	add b                                            ; $6bb9: $80
	ld [hl], a                                       ; $6bba: $77
	db $f4                                           ; $6bbb: $f4
	db $fc                                           ; $6bbc: $fc
	rst SubAFromDE                                          ; $6bbd: $df
	inc bc                                           ; $6bbe: $03
	rst SubAFromDE                                          ; $6bbf: $df
	dec c                                            ; $6bc0: $0d
	sbc h                                            ; $6bc1: $9c
	sbc b                                            ; $6bc2: $98
	ldh a, [c]                                       ; $6bc3: $f2
	ld hl, sp-$11                                    ; $6bc4: $f8 $ef
	db $dd                                           ; $6bc6: $dd
	ld bc, $fb7f                                     ; $6bc7: $01 $7f $fb
	sbc d                                            ; $6bca: $9a
	inc b                                            ; $6bcb: $04

jr_016_6bcc:
	rlca                                             ; $6bcc: $07
	inc e                                            ; $6bcd: $1c
	dec de                                           ; $6bce: $1b
	inc e                                            ; $6bcf: $1c
	sbc $18                                          ; $6bd0: $de $18
	ld b, a                                          ; $6bd2: $47
	or b                                             ; $6bd3: $b0
	adc a                                            ; $6bd4: $8f
	db $fc                                           ; $6bd5: $fc
	rst $38                                          ; $6bd6: $ff
	ld a, [$71fe]                                    ; $6bd7: $fa $fe $71
	rst $38                                          ; $6bda: $ff
	jr z, jr_016_6bcc                                ; $6bdb: $28 $ef

	ld b, d                                          ; $6bdd: $42
	jp $8083                                         ; $6bde: $c3 $83 $80


	inc bc                                           ; $6be1: $03
	ld bc, $0303                                     ; $6be2: $01 $03 $03
	ld b, a                                          ; $6be5: $47
	or b                                             ; $6be6: $b0
	sbc h                                            ; $6be7: $9c
	ld c, b                                          ; $6be8: $48
	rst GetHLinHL                                          ; $6be9: $cf
	ld [bc], a                                       ; $6bea: $02
	ld [hl], e                                       ; $6beb: $73
	db $ec                                           ; $6bec: $ec
	ld [hl], a                                       ; $6bed: $77
	ld [$906f], a                                    ; $6bee: $ea $6f $90
	rrca                                             ; $6bf1: $0f
	ld e, [hl]                                       ; $6bf2: $5e
	ld sp, hl                                        ; $6bf3: $f9
	daa                                              ; $6bf4: $27
	ld e, [hl]                                       ; $6bf5: $5e
	scf                                              ; $6bf6: $37
	ld h, d                                          ; $6bf7: $62
	rst SubAFromDE                                          ; $6bf8: $df
	dec e                                            ; $6bf9: $1d
	sbc c                                            ; $6bfa: $99
	ld a, $3b                                        ; $6bfb: $3e $3b
	inc [hl]                                         ; $6bfd: $34
	inc sp                                           ; $6bfe: $33
	inc b                                            ; $6bff: $04
	rlca                                             ; $6c00: $07
	ld [hl], a                                       ; $6c01: $77
	add d                                            ; $6c02: $82
	ccf                                              ; $6c03: $3f
	ld c, $91                                        ; $6c04: $0e $91
	ld hl, sp-$05                                    ; $6c06: $f8 $fb
	db $f4                                           ; $6c08: $f4
	db $fc                                           ; $6c09: $fc
	ld [hl+], a                                      ; $6c0a: $22
	cp $50                                           ; $6c0b: $fe $50
	sbc $8e                                          ; $6c0d: $de $8e
	adc b                                            ; $6c0f: $88
	ld b, $02                                        ; $6c10: $06 $02
	rrca                                             ; $6c12: $0f
	rrca                                             ; $6c13: $0f
	ccf                                              ; $6c14: $3f
	ld c, $6f                                        ; $6c15: $0e $6f
	ld e, [hl]                                       ; $6c17: $5e
	pop af                                           ; $6c18: $f1
	ld b, a                                          ; $6c19: $47
	ld e, [hl]                                       ; $6c1a: $5e
	sub a                                            ; $6c1b: $97
	ld h, c                                          ; $6c1c: $61
	ld e, a                                          ; $6c1d: $5f
	sbc [hl]                                         ; $6c1e: $9e
	xor $8c                                          ; $6c1f: $ee $8c
	ld [hl], h                                       ; $6c21: $74
	call z, $f734                                    ; $6c22: $cc $34 $f7
	cpl                                              ; $6c25: $2f
	ld e, [hl]                                       ; $6c26: $5e
	ld [hl-], a                                      ; $6c27: $32
	jp nz, $fa7b                                     ; $6c28: $c2 $7b $fa

	rst SubAFromDE                                          ; $6c2b: $df
	inc bc                                           ; $6c2c: $03
	rst SubAFromDE                                          ; $6c2d: $df
	rlca                                             ; $6c2e: $07
	rst SubAFromDE                                          ; $6c2f: $df
	ld b, $ff                                        ; $6c30: $06 $ff
	ld b, a                                          ; $6c32: $47
	or b                                             ; $6c33: $b0
	ld l, a                                          ; $6c34: $6f
	ld e, [hl]                                       ; $6c35: $5e
	sub l                                            ; $6c36: $95
	ld b, h                                          ; $6c37: $44
	ld a, h                                          ; $6c38: $7c
	add h                                            ; $6c39: $84
	ld a, h                                          ; $6c3a: $7c
	adc b                                            ; $6c3b: $88
	ld a, b                                          ; $6c3c: $78
	ld [hl], b                                       ; $6c3d: $70
	ld d, b                                          ; $6c3e: $50
	ld a, b                                          ; $6c3f: $78
	ld a, b                                          ; $6c40: $78
	ld [hl], $6c                                     ; $6c41: $36 $6c
	sbc l                                            ; $6c43: $9d
	ld [$5f8f], sp                                   ; $6c44: $08 $8f $5f
	ld e, [hl]                                       ; $6c47: $5e
	daa                                              ; $6c48: $27
	ret nz                                           ; $6c49: $c0

	sub a                                            ; $6c4a: $97
	and h                                            ; $6c4b: $a4
	ld a, h                                          ; $6c4c: $7c
	ret z                                            ; $6c4d: $c8

	ld a, b                                          ; $6c4e: $78
	ld [hl], b                                       ; $6c4f: $70
	ld b, b                                          ; $6c50: $40
	ld a, b                                          ; $6c51: $78
	ld a, b                                          ; $6c52: $78
	ei                                               ; $6c53: $fb
	rst SubAFromDE                                          ; $6c54: $df
	dec bc                                           ; $6c55: $0b
	rst SubAFromDE                                          ; $6c56: $df
	rra                                              ; $6c57: $1f
	adc c                                            ; $6c58: $89
	ccf                                              ; $6c59: $3f
	ld [hl-], a                                      ; $6c5a: $32
	ccf                                              ; $6c5b: $3f
	dec l                                            ; $6c5c: $2d
	ccf                                              ; $6c5d: $3f
	ccf                                              ; $6c5e: $3f
	inc a                                            ; $6c5f: $3c
	ccf                                              ; $6c60: $3f
	jr nc, @+$41                                     ; $6c61: $30 $3f

	jr jr_016_6c84                                   ; $6c63: $18 $1f

	db $10                                           ; $6c65: $10
	rra                                              ; $6c66: $1f
	rra                                              ; $6c67: $1f
	inc de                                           ; $6c68: $13
	inc a                                            ; $6c69: $3c
	daa                                              ; $6c6a: $27
	ld a, [hl]                                       ; $6c6b: $7e
	ld b, e                                          ; $6c6c: $43
	rst $38                                          ; $6c6d: $ff
	rst JumpTable                                          ; $6c6e: $c7
	ld h, a                                          ; $6c6f: $67
	ld b, h                                          ; $6c70: $44
	sbc l                                            ; $6c71: $9d
	ldh [rAUD4LEN], a                                ; $6c72: $e0 $20
	db $dd                                           ; $6c74: $dd
	ldh a, [hDisp1_WX]                                     ; $6c75: $f0 $96
	ld [hl], b                                       ; $6c77: $70
	ldh a, [$a0]                                     ; $6c78: $f0 $a0
	ldh [$80], a                                     ; $6c7a: $e0 $80
	ld b, b                                          ; $6c7c: $40
	and b                                            ; $6c7d: $a0
	ldh [rLCDC], a                                   ; $6c7e: $e0 $40
	ld a, e                                          ; $6c80: $7b
	adc d                                            ; $6c81: $8a
	sbc d                                            ; $6c82: $9a
	ld h, a                                          ; $6c83: $67

jr_016_6c84:
	rst SubAFromBC                                          ; $6c84: $e7
	nop                                              ; $6c85: $00
	rst $38                                          ; $6c86: $ff
	add $69                                          ; $6c87: $c6 $69
	ldh [rVBK], a                                    ; $6c89: $e0 $4f
	ld b, b                                          ; $6c8b: $40
	halt                                             ; $6c8c: $76
	nop                                              ; $6c8d: $00
	ld a, a                                          ; $6c8e: $7f
	ld a, [hl]                                       ; $6c8f: $7e
	sbc c                                            ; $6c90: $99
	ld c, $0d                                        ; $6c91: $0e $0d
	rrca                                             ; $6c93: $0f
	dec c                                            ; $6c94: $0d
	inc c                                            ; $6c95: $0c
	inc c                                            ; $6c96: $0c
	ld b, a                                          ; $6c97: $47
	or b                                             ; $6c98: $b0
	rst SubAFromDE                                          ; $6c99: $df
	ld hl, sp+$7e                                    ; $6c9a: $f8 $7e
	and d                                            ; $6c9c: $a2
	sub e                                            ; $6c9d: $93
	ld h, d                                          ; $6c9e: $62
	cp $32                                           ; $6c9f: $fe $32
	cp $48                                           ; $6ca1: $fe $48
	adc $8e                                          ; $6ca3: $ce $8e
	adc b                                            ; $6ca5: $88
	ld c, $0e                                        ; $6ca6: $0e $0e
	rrca                                             ; $6ca8: $0f
	rrca                                             ; $6ca9: $0f
	rrca                                             ; $6caa: $0f
	or b                                             ; $6cab: $b0
	ld h, [hl]                                       ; $6cac: $66
	nop                                              ; $6cad: $00
	rra                                              ; $6cae: $1f
	ld e, [hl]                                       ; $6caf: $5e
	ld e, a                                          ; $6cb0: $5f
	sub $2f                                          ; $6cb1: $d6 $2f
	ld e, [hl]                                       ; $6cb3: $5e
	db $ed                                           ; $6cb4: $ed
	rst SubAFromDE                                          ; $6cb5: $df
	inc e                                            ; $6cb6: $1c
	sbc e                                            ; $6cb7: $9b
	dec a                                            ; $6cb8: $3d
	dec sp                                           ; $6cb9: $3b
	inc [hl]                                         ; $6cba: $34
	scf                                              ; $6cbb: $37
	ld l, [hl]                                       ; $6cbc: $6e
	call c, $0e43                                    ; $6cbd: $dc $43 $0e
	sbc e                                            ; $6cc0: $9b
	rst SubAFromBC                                          ; $6cc1: $e7
	ld hl, sp-$08                                    ; $6cc2: $f8 $f8
	ldh a, [c]                                       ; $6cc4: $f2
	ld a, c                                          ; $6cc5: $79
	ld e, [hl]                                       ; $6cc6: $5e
	sub a                                            ; $6cc7: $97
	add hl, hl                                       ; $6cc8: $29
	rst AddAOntoHL                                          ; $6cc9: $ef
	ld b, [hl]                                       ; $6cca: $46
	ret nz                                           ; $6ccb: $c0

	add [hl]                                         ; $6ccc: $86
	add d                                            ; $6ccd: $82
	rrca                                             ; $6cce: $0f
	rrca                                             ; $6ccf: $0f
	inc bc                                           ; $6cd0: $03
	ld c, $ec                                        ; $6cd1: $0e $ec
	ld e, [hl]                                       ; $6cd3: $5e
	ld b, b                                          ; $6cd4: $40
	scf                                              ; $6cd5: $37
	and b                                            ; $6cd6: $a0
	ld a, d                                          ; $6cd7: $7a
	cp $96                                           ; $6cd8: $fe $96
	ld a, [hl]                                       ; $6cda: $7e
	sub d                                            ; $6cdb: $92
	ld a, [hl]                                       ; $6cdc: $7e
	add h                                            ; $6cdd: $84
	ld a, h                                          ; $6cde: $7c
	ld [hl], b                                       ; $6cdf: $70
	ld h, b                                          ; $6ce0: $60
	jr c, jr_016_6d1b                                ; $6ce1: $38 $38

	rra                                              ; $6ce3: $1f
	ldh [$9d], a                                     ; $6ce4: $e0 $9d
	db $f4                                           ; $6ce6: $f4
	ld l, h                                          ; $6ce7: $6c
	ld [hl], a                                       ; $6ce8: $77
	ldh [$37], a                                     ; $6ce9: $e0 $37
	inc b                                            ; $6ceb: $04
	sub e                                            ; $6cec: $93
	ld [$0f0f], sp                                   ; $6ced: $08 $0f $0f
	dec bc                                           ; $6cf0: $0b
	inc de                                           ; $6cf1: $13
	inc e                                            ; $6cf2: $1c
	ld de, $081e                                     ; $6cf3: $11 $1e $08
	rrca                                             ; $6cf6: $0f
	inc b                                            ; $6cf7: $04
	rlca                                             ; $6cf8: $07
	daa                                              ; $6cf9: $27
	inc b                                            ; $6cfa: $04
	sub a                                            ; $6cfb: $97
	add b                                            ; $6cfc: $80
	adc c                                            ; $6cfd: $89
	rst AddAOntoHL                                          ; $6cfe: $ef
	ld a, a                                          ; $6cff: $7f
	inc b                                            ; $6d00: $04
	db $fc                                           ; $6d01: $fc
	ret z                                            ; $6d02: $c8

	jr c, jr_016_6d4c                                ; $6d03: $38 $47

	ret nc                                           ; $6d05: $d0

	db $db                                           ; $6d06: $db
	inc bc                                           ; $6d07: $03
	ld a, a                                          ; $6d08: $7f
	inc b                                            ; $6d09: $04
	ld a, a                                          ; $6d0a: $7f
	or $9e                                           ; $6d0b: $f6 $9e
	dec e                                            ; $6d0d: $1d
	ld [hl], b                                       ; $6d0e: $70
	ld h, b                                          ; $6d0f: $60
	ld b, a                                          ; $6d10: $47
	ret nc                                           ; $6d11: $d0

	sbc $e0                                          ; $6d12: $de $e0
	sbc d                                            ; $6d14: $9a
	ld hl, sp-$40                                    ; $6d15: $f8 $c0
	db $fc                                           ; $6d17: $fc
	ld [hl], b                                       ; $6d18: $70
	cp $79                                           ; $6d19: $fe $79

jr_016_6d1b:
	ld [bc], a                                       ; $6d1b: $02
	sbc [hl]                                         ; $6d1c: $9e
	ld b, $dd                                        ; $6d1d: $06 $dd
	rlca                                             ; $6d1f: $07
	db $fc                                           ; $6d20: $fc
	rst SubAFromDE                                          ; $6d21: $df
	ccf                                              ; $6d22: $3f
	rst SubAFromDE                                          ; $6d23: $df
	push de                                          ; $6d24: $d5
	sbc b                                            ; $6d25: $98
	add b                                            ; $6d26: $80
	ld a, [hl+]                                      ; $6d27: $2a
	add b                                            ; $6d28: $80
	add l                                            ; $6d29: $85
	ldh a, [rAUD4LEN]                                ; $6d2a: $f0 $20
	ccf                                              ; $6d2c: $3f
	ld [bc], a                                       ; $6d2d: $02
	ld h, d                                          ; $6d2e: $62
	ld c, e                                          ; $6d2f: $4b
	ld e, [hl]                                       ; $6d30: $5e
	ld e, $62                                        ; $6d31: $1e $62
	sbc c                                            ; $6d33: $99
	ret nz                                           ; $6d34: $c0

	ld c, c                                          ; $6d35: $49
	rst AddAOntoHL                                          ; $6d36: $ef
	ccf                                              ; $6d37: $3f
	inc b                                            ; $6d38: $04
	db $fc                                           ; $6d39: $fc
	ccf                                              ; $6d3a: $3f
	ld l, $df                                        ; $6d3b: $2e $df
	inc sp                                           ; $6d3d: $33
	sbc b                                            ; $6d3e: $98
	ld a, e                                          ; $6d3f: $7b
	ld [hl], e                                       ; $6d40: $73
	ld sp, hl                                        ; $6d41: $f9
	rst SubAFromBC                                          ; $6d42: $e7
	ret nz                                           ; $6d43: $c0

	rst GetHLinHL                                          ; $6d44: $cf
	dec b                                            ; $6d45: $05
	ld [hl], e                                       ; $6d46: $73
	add h                                            ; $6d47: $84
	ld b, a                                          ; $6d48: $47
	ret nc                                           ; $6d49: $d0

	adc a                                            ; $6d4a: $8f
	ret z                                            ; $6d4b: $c8

jr_016_6d4c:
	ld hl, sp-$10                                    ; $6d4c: $f8 $f0
	ldh a, [$e8]                                     ; $6d4e: $f0 $e8
	ld hl, sp-$3c                                    ; $6d50: $f8 $c4
	db $fc                                           ; $6d52: $fc
	add b                                            ; $6d53: $80
	sbc h                                            ; $6d54: $9c
	inc e                                            ; $6d55: $1c
	inc b                                            ; $6d56: $04
	jr c, jr_016_6d91                                ; $6d57: $38 $38

	ld a, $3e                                        ; $6d59: $3e $3e
	ld a, [$5e2b]                                    ; $6d5b: $fa $2b $5e
	rst $38                                          ; $6d5e: $ff
	ccf                                              ; $6d5f: $3f
	and b                                            ; $6d60: $a0
	rst SubAFromDE                                          ; $6d61: $df
	inc bc                                           ; $6d62: $03
	rst SubAFromDE                                          ; $6d63: $df
	ld bc, $06df                                     ; $6d64: $01 $df $06
	ld a, l                                          ; $6d67: $7d
	ld h, d                                          ; $6d68: $62
	sbc c                                            ; $6d69: $99
	ld e, $1d                                        ; $6d6a: $1e $1d
	add hl, de                                       ; $6d6c: $19
	add hl, de                                       ; $6d6d: $19
	ld bc, $3f01                                     ; $6d6e: $01 $01 $3f
	and b                                            ; $6d71: $a0
	rst SubAFromDE                                          ; $6d72: $df
	ldh [hDisp1_OBP1], a                                     ; $6d73: $e0 $94
	db $10                                           ; $6d75: $10
	ldh a, [hDisp0_WY]                                     ; $6d76: $f0 $88
	ld hl, sp+$08                                    ; $6d78: $f8 $08
	ld hl, sp+$30                                    ; $6d7a: $f8 $30
	ldh a, [$c0]                                     ; $6d7c: $f0 $c0
	ret nz                                           ; $6d7e: $c0

	ldh a, [rSCX]                                    ; $6d7f: $f0 $43
	ld d, b                                          ; $6d81: $50
	ld h, a                                          ; $6d82: $67
	ldh [$7b], a                                     ; $6d83: $e0 $7b
	ld a, b                                          ; $6d85: $78
	sbc [hl]                                         ; $6d86: $9e
	jr nc, jr_016_6e00                               ; $6d87: $30 $77

	ldh [$fd], a                                     ; $6d89: $e0 $fd
	rst SubAFromDE                                          ; $6d8b: $df
	dec b                                            ; $6d8c: $05
	rst SubAFromDE                                          ; $6d8d: $df
	rrca                                             ; $6d8e: $0f
	sbc b                                            ; $6d8f: $98
	rra                                              ; $6d90: $1f

jr_016_6d91:
	dec d                                            ; $6d91: $15
	ccf                                              ; $6d92: $3f
	dec sp                                           ; $6d93: $3b
	dec a                                            ; $6d94: $3d
	scf                                              ; $6d95: $37
	add hl, sp                                       ; $6d96: $39
	ld a, d                                          ; $6d97: $7a
	ei                                               ; $6d98: $fb
	ld a, [hl]                                       ; $6d99: $7e
	ld [hl], $98                                     ; $6d9a: $36 $98
	add hl, bc                                       ; $6d9c: $09
	rrca                                             ; $6d9d: $0f
	dec c                                            ; $6d9e: $0d
	rrca                                             ; $6d9f: $0f
	inc de                                           ; $6da0: $13
	ld e, $11                                        ; $6da1: $1e $11
	ld a, e                                          ; $6da3: $7b
	adc d                                            ; $6da4: $8a
	ld l, [hl]                                       ; $6da5: $6e
	ld h, b                                          ; $6da6: $60
	rst SubAFromDE                                          ; $6da7: $df
	ldh [$df], a                                     ; $6da8: $e0 $df
	ldh a, [hDisp1_BGP]                                     ; $6daa: $f0 $92
	ld hl, sp+$78                                    ; $6dac: $f8 $78
	ldh a, [$50]                                     ; $6dae: $f0 $50
	cp b                                             ; $6db0: $b8
	add sp, $18                                      ; $6db1: $e8 $18
	ld hl, sp+$58                                    ; $6db3: $f8 $58
	ld hl, sp+$10                                    ; $6db5: $f8 $10
	ldh a, [hDisp1_SCY]                                     ; $6db7: $f0 $90
	ld a, e                                          ; $6db9: $7b
	xor d                                            ; $6dba: $aa
	ld a, d                                          ; $6dbb: $7a
	ldh a, [$9a]                                     ; $6dbc: $f0 $9a
	sbc c                                            ; $6dbe: $99
	rrca                                             ; $6dbf: $0f
	rst $38                                          ; $6dc0: $ff
	ld h, b                                          ; $6dc1: $60
	ld hl, sp+$47                                    ; $6dc2: $f8 $47
	ret nc                                           ; $6dc4: $d0

	db $db                                           ; $6dc5: $db
	inc bc                                           ; $6dc6: $03
	ld a, l                                          ; $6dc7: $7d
	pop bc                                           ; $6dc8: $c1
	sub a                                            ; $6dc9: $97
	inc b                                            ; $6dca: $04
	inc bc                                           ; $6dcb: $03
	rrca                                             ; $6dcc: $0f
	add hl, bc                                       ; $6dcd: $09
	ld c, $0e                                        ; $6dce: $0e $0e
	inc c                                            ; $6dd0: $0c
	inc c                                            ; $6dd1: $0c
	ld b, a                                          ; $6dd2: $47
	ret nc                                           ; $6dd3: $d0

	ld [hl], a                                       ; $6dd4: $77
	ld [bc], a                                       ; $6dd5: $02
	sbc [hl]                                         ; $6dd6: $9e
	ret nz                                           ; $6dd7: $c0

	ld a, e                                          ; $6dd8: $7b
	nop                                              ; $6dd9: $00
	sub a                                            ; $6dda: $97
	sub h                                            ; $6ddb: $94
	sbc h                                            ; $6ddc: $9c
	jr jr_016_6ddf                                   ; $6ddd: $18 $00

jr_016_6ddf:
	jr jr_016_6df9                                   ; $6ddf: $18 $18

	ld e, $1e                                        ; $6de1: $1e $1e
	ei                                               ; $6de3: $fb
	ld [hl], e                                       ; $6de4: $73
	ld a, [hl]                                       ; $6de5: $7e
	sub d                                            ; $6de6: $92
	add hl, de                                       ; $6de7: $19
	rra                                              ; $6de8: $1f
	ld d, $1f                                        ; $6de9: $16 $1f
	rra                                              ; $6deb: $1f
	ld e, $1f                                        ; $6dec: $1e $1f
	jr jr_016_6e0f                                   ; $6dee: $18 $1f

	inc c                                            ; $6df0: $0c
	rrca                                             ; $6df1: $0f
	ld [$4c0f], sp                                   ; $6df2: $08 $0f $4c
	ld b, b                                          ; $6df5: $40
	ld a, e                                          ; $6df6: $7b
	ld d, [hl]                                       ; $6df7: $56
	sbc c                                            ; $6df8: $99

jr_016_6df9:
	sub b                                            ; $6df9: $90
	ld hl, sp+$78                                    ; $6dfa: $f8 $78
	ld hl, sp-$08                                    ; $6dfc: $f8 $f8
	cp b                                             ; $6dfe: $b8
	ld a, e                                          ; $6dff: $7b

jr_016_6e00:
	or d                                             ; $6e00: $b2
	sbc [hl]                                         ; $6e01: $9e
	ld b, b                                          ; $6e02: $40
	ld a, e                                          ; $6e03: $7b
	ld b, b                                          ; $6e04: $40
	ld a, a                                          ; $6e05: $7f
	rst AddAOntoHL                                          ; $6e06: $ef
	ld a, a                                          ; $6e07: $7f
	ld sp, $326d                                     ; $6e08: $31 $6d $32
	ld b, a                                          ; $6e0b: $47
	ret nc                                           ; $6e0c: $d0

	ld b, h                                          ; $6e0d: $44
	ld h, b                                          ; $6e0e: $60

jr_016_6e0f:
	ld b, a                                          ; $6e0f: $47
	ret nc                                           ; $6e10: $d0

	inc h                                            ; $6e11: $24
	ld h, b                                          ; $6e12: $60
	ld e, l                                          ; $6e13: $5d
	ld b, $df                                        ; $6e14: $06 $df
	ld bc, $80f5                                     ; $6e16: $01 $f5 $80
	db $fd                                           ; $6e19: $fd
	rst $38                                          ; $6e1a: $ff
	ldh a, [c]                                       ; $6e1b: $f2
	rst $38                                          ; $6e1c: $ff
	jp nz, Jump_016_62fd                             ; $6e1d: $c2 $fd $62

	ld a, a                                          ; $6e20: $7f
	ld h, c                                          ; $6e21: $61
	ld e, a                                          ; $6e22: $5f
	sbc [hl]                                         ; $6e23: $9e
	xor $8c                                          ; $6e24: $ee $8c
	ld [hl], h                                       ; $6e26: $74
	call z, $c734                                    ; $6e27: $cc $34 $c7
	ld a, a                                          ; $6e2a: $7f
	ldh [rIE], a                                     ; $6e2b: $e0 $ff
	ld hl, sp-$05                                    ; $6e2d: $f8 $fb
	ld b, h                                          ; $6e2f: $44
	ld a, h                                          ; $6e30: $7c
	inc h                                            ; $6e31: $24
	inc a                                            ; $6e32: $3c
	ld c, b                                          ; $6e33: $48
	ld a, b                                          ; $6e34: $78
	ld [hl], b                                       ; $6e35: $70
	ld b, b                                          ; $6e36: $40
	ld a, b                                          ; $6e37: $78
	sbc [hl]                                         ; $6e38: $9e
	ld a, b                                          ; $6e39: $78
	db $fd                                           ; $6e3a: $fd
	sub c                                            ; $6e3b: $91
	ld a, [hl-]                                      ; $6e3c: $3a
	ld a, $47                                        ; $6e3d: $3e $47
	ld a, a                                          ; $6e3f: $7f
	xor l                                            ; $6e40: $ad
	rst $38                                          ; $6e41: $ff
	db $db                                           ; $6e42: $db
	rst $38                                          ; $6e43: $ff
	rst $38                                          ; $6e44: $ff
	cp $ff                                           ; $6e45: $fe $ff
	db $fc                                           ; $6e47: $fc
	jp nz, $7bff                                     ; $6e48: $c2 $ff $7b

	call nc, Call_016_7f9a                           ; $6e4b: $d4 $9a $7f
	cp $8e                                           ; $6e4e: $fe $8e
	call z, Call_016_6fb4                            ; $6e50: $cc $b4 $6f
	call nc, $9867                                   ; $6e53: $d4 $67 $98
	ld a, [hl]                                       ; $6e56: $7e
	ld a, [hl]                                       ; $6e57: $7e
	rst SubAFromDE                                          ; $6e58: $df
	ret nz                                           ; $6e59: $c0

	db $dd                                           ; $6e5a: $dd
	add b                                            ; $6e5b: $80
	ld h, e                                          ; $6e5c: $63
	adc h                                            ; $6e5d: $8c
	rst SubAFromDE                                          ; $6e5e: $df
	inc bc                                           ; $6e5f: $03

jr_016_6e60:
	rst SubAFromDE                                          ; $6e60: $df
	dec c                                            ; $6e61: $0d
	sbc h                                            ; $6e62: $9c
	sbc b                                            ; $6e63: $98
	ldh a, [c]                                       ; $6e64: $f2
	ld hl, sp+$47                                    ; $6e65: $f8 $47
	ret nc                                           ; $6e67: $d0

	sbc h                                            ; $6e68: $9c
	db $fc                                           ; $6e69: $fc
	rst $38                                          ; $6e6a: $ff
	ld a, [$4278]                                    ; $6e6b: $fa $78 $42
	sbc c                                            ; $6e6e: $99
	jr z, jr_016_6e60                                ; $6e6f: $28 $ef

	ld b, d                                          ; $6e71: $42
	jp $8083                                         ; $6e72: $c3 $83 $80


	ld a, d                                          ; $6e75: $7a

Call_016_6e76:
	cp c                                             ; $6e76: $b9
	sbc [hl]                                         ; $6e77: $9e
	inc bc                                           ; $6e78: $03
	ei                                               ; $6e79: $fb
	ld e, a                                          ; $6e7a: $5f
	sbc [hl]                                         ; $6e7b: $9e
	ld a, a                                          ; $6e7c: $7f
	ldh [rPCM34], a                                  ; $6e7d: $e0 $77
	adc $9e                                          ; $6e7f: $ce $9e
	ld b, c                                          ; $6e81: $41
	ld h, e                                          ; $6e82: $63
	adc $5f                                          ; $6e83: $ce $5f
	ld [hl], $2f                                     ; $6e85: $36 $2f
	sbc [hl]                                         ; $6e87: $9e
	ld b, a                                          ; $6e88: $47
	ret nc                                           ; $6e89: $d0

	ld [hl], a                                       ; $6e8a: $77
	ld b, d                                          ; $6e8b: $42
	ld a, [hl]                                       ; $6e8c: $7e
	sbc $9b                                          ; $6e8d: $de $9b
	ld [hl+], a                                      ; $6e8f: $22
	cp $50                                           ; $6e90: $fe $50
	sbc $78                                          ; $6e92: $de $78
	sbc $9d                                          ; $6e94: $de $9d
	ld [bc], a                                       ; $6e96: $02

jr_016_6e97:
	rrca                                             ; $6e97: $0f
	ld l, c                                          ; $6e98: $69
	jr nz, jr_016_6efa                               ; $6e99: $20 $5f

	sbc [hl]                                         ; $6e9b: $9e
	ld a, e                                          ; $6e9c: $7b
	dec a                                            ; $6e9d: $3d
	ld [hl], e                                       ; $6e9e: $73
	adc $67                                          ; $6e9f: $ce $67
	db $10                                           ; $6ea1: $10
	ld d, [hl]                                       ; $6ea2: $56
	call nc, $9e77                                   ; $6ea3: $d4 $77 $9e
	ld [hl], a                                       ; $6ea6: $77
	sbc h                                            ; $6ea7: $9c
	ld d, a                                          ; $6ea8: $57
	sbc [hl]                                         ; $6ea9: $9e
	ld b, a                                          ; $6eaa: $47
	ret nc                                           ; $6eab: $d0

	ld h, [hl]                                       ; $6eac: $66
	ldh [$97], a                                     ; $6ead: $e0 $97
	add h                                            ; $6eaf: $84
	ld a, h                                          ; $6eb0: $7c
	adc b                                            ; $6eb1: $88
	ld a, b                                          ; $6eb2: $78
	ld [hl], b                                       ; $6eb3: $70
	ld d, b                                          ; $6eb4: $50
	ld a, b                                          ; $6eb5: $78
	ld a, b                                          ; $6eb6: $78
	daa                                              ; $6eb7: $27
	ldh [$9c], a                                     ; $6eb8: $e0 $9c
	and h                                            ; $6eba: $a4
	ld a, h                                          ; $6ebb: $7c

jr_016_6ebc:
	ret z                                            ; $6ebc: $c8

	ld h, d                                          ; $6ebd: $62
	ret nz                                           ; $6ebe: $c0

	rst $38                                          ; $6ebf: $ff
	ld a, [hl]                                       ; $6ec0: $7e
	ld d, a                                          ; $6ec1: $57
	ld a, l                                          ; $6ec2: $7d
	jp nz, $2b9c                                     ; $6ec3: $c2 $9c $2b

	ccf                                              ; $6ec6: $3f
	ld [hl], $dc                                     ; $6ec7: $36 $dc
	ccf                                              ; $6ec9: $3f
	ld [hl], l                                       ; $6eca: $75
	db $10                                           ; $6ecb: $10

jr_016_6ecc:
	ld a, l                                          ; $6ecc: $7d
	xor h                                            ; $6ecd: $ac
	ld c, [hl]                                       ; $6ece: $4e
	nop                                              ; $6ecf: $00
	ld a, b                                          ; $6ed0: $78
	add b                                            ; $6ed1: $80
	sbc l                                            ; $6ed2: $9d
	ldh [$50], a                                     ; $6ed3: $e0 $50
	sbc $f0                                          ; $6ed5: $de $f0
	sbc c                                            ; $6ed7: $99
	ldh [$a0], a                                     ; $6ed8: $e0 $a0
	jr nz, jr_016_6ebc                               ; $6eda: $20 $e0

	add b                                            ; $6edc: $80
	ret nz                                           ; $6edd: $c0

	ld l, l                                          ; $6ede: $6d
	jr nc, jr_016_6f4f                               ; $6edf: $30 $6e

	jr nc, jr_016_6ecc                               ; $6ee1: $30 $e9

	ld bc, $3fdf                                     ; $6ee3: $01 $df $3f
	add b                                            ; $6ee6: $80
	jr nc, @+$41                                     ; $6ee7: $30 $3f

	jr jr_016_6f0a                                   ; $6ee9: $18 $1f

	db $10                                           ; $6eeb: $10
	rra                                              ; $6eec: $1f
	rra                                              ; $6eed: $1f
	inc de                                           ; $6eee: $13
	inc a                                            ; $6eef: $3c
	daa                                              ; $6ef0: $27
	ld a, [hl]                                       ; $6ef1: $7e
	ld b, e                                          ; $6ef2: $43
	rst $38                                          ; $6ef3: $ff
	rst JumpTable                                          ; $6ef4: $c7
	ld hl, sp-$08                                    ; $6ef5: $f8 $f8
	db $f4                                           ; $6ef7: $f4
	db $fc                                           ; $6ef8: $fc
	ld h, d                                          ; $6ef9: $62

jr_016_6efa:
	cp $32                                           ; $6efa: $fe $32
	cp $48                                           ; $6efc: $fe $48
	adc $8e                                          ; $6efe: $ce $8e
	adc b                                            ; $6f00: $88
	ld c, $0e                                        ; $6f01: $0e $0e
	rrca                                             ; $6f03: $0f
	rrca                                             ; $6f04: $0f
	jr nz, jr_016_6e97                               ; $6f05: $20 $90

	ldh [$80], a                                     ; $6f07: $e0 $80
	ret nz                                           ; $6f09: $c0

jr_016_6f0a:
	and b                                            ; $6f0a: $a0
	ldh [rLCDC], a                                   ; $6f0b: $e0 $40
	ret nz                                           ; $6f0d: $c0

	add b                                            ; $6f0e: $80
	add b                                            ; $6f0f: $80
	ld h, a                                          ; $6f10: $67
	rst SubAFromBC                                          ; $6f11: $e7
	nop                                              ; $6f12: $00
	rst $38                                          ; $6f13: $ff
	add $ff                                          ; $6f14: $c6 $ff
	di                                               ; $6f16: $f3
	rst SubAFromDE                                          ; $6f17: $df
	add b                                            ; $6f18: $80
	ld sp, hl                                        ; $6f19: $f9
	ld a, a                                          ; $6f1a: $7f
	push de                                          ; $6f1b: $d5
	sbc d                                            ; $6f1c: $9a
	ld de, $2b1f                                     ; $6f1d: $11 $1f $2b
	ccf                                              ; $6f20: $3f
	ld [hl], $dc                                     ; $6f21: $36 $dc
	ccf                                              ; $6f23: $3f
	ld d, a                                          ; $6f24: $57
	xor [hl]                                         ; $6f25: $ae
	ld e, a                                          ; $6f26: $5f
	sub $df                                          ; $6f27: $d6 $df
	ldh [$9e], a                                     ; $6f29: $e0 $9e
	ld d, b                                          ; $6f2b: $50
	sbc $f0                                          ; $6f2c: $de $f0
	ld a, a                                          ; $6f2e: $7f
	or h                                             ; $6f2f: $b4
	ld c, a                                          ; $6f30: $4f
	xor [hl]                                         ; $6f31: $ae
	ld b, a                                          ; $6f32: $47
	ret nc                                           ; $6f33: $d0

	adc a                                            ; $6f34: $8f
	rst $38                                          ; $6f35: $ff
	rst SubAFromBC                                          ; $6f36: $e7
	ld hl, sp-$08                                    ; $6f37: $f8 $f8
	ldh a, [c]                                       ; $6f39: $f2
	cp $71                                           ; $6f3a: $fe $71
	rst $38                                          ; $6f3c: $ff
	add hl, hl                                       ; $6f3d: $29
	rst AddAOntoHL                                          ; $6f3e: $ef
	ld b, [hl]                                       ; $6f3f: $46
	ret nz                                           ; $6f40: $c0

	add [hl]                                         ; $6f41: $86
	add d                                            ; $6f42: $82
	rrca                                             ; $6f43: $0f
	rrca                                             ; $6f44: $0f
	ld b, a                                          ; $6f45: $47
	ret nc                                           ; $6f46: $d0

	ld b, a                                          ; $6f47: $47
	ld a, [hl]                                       ; $6f48: $7e
	scf                                              ; $6f49: $37
	ret nz                                           ; $6f4a: $c0

	ld a, e                                          ; $6f4b: $7b
	ld a, $96                                        ; $6f4c: $3e $96
	ld a, [hl]                                       ; $6f4e: $7e

jr_016_6f4f:
	sub d                                            ; $6f4f: $92
	ld a, [hl]                                       ; $6f50: $7e
	add h                                            ; $6f51: $84
	ld a, h                                          ; $6f52: $7c
	ld [hl], b                                       ; $6f53: $70
	ld h, b                                          ; $6f54: $60
	jr c, jr_016_6f8f                                ; $6f55: $38 $38

	rra                                              ; $6f57: $1f
	ldh [$9d], a                                     ; $6f58: $e0 $9d
	db $f4                                           ; $6f5a: $f4
	ld l, h                                          ; $6f5b: $6c
	ld [hl], a                                       ; $6f5c: $77
	ldh [$3f], a                                     ; $6f5d: $e0 $3f
	ld b, h                                          ; $6f5f: $44
	ld a, a                                          ; $6f60: $7f
	call $d27f                                       ; $6f61: $cd $7f $d2
	sub l                                            ; $6f64: $95
	rrca                                             ; $6f65: $0f
	dec bc                                           ; $6f66: $0b
	inc de                                           ; $6f67: $13
	inc e                                            ; $6f68: $1c
	ld de, $081e                                     ; $6f69: $11 $1e $08
	rrca                                             ; $6f6c: $0f
	inc b                                            ; $6f6d: $04
	rlca                                             ; $6f6e: $07
	ld d, a                                          ; $6f6f: $57
	ld b, h                                          ; $6f70: $44
	sbc [hl]                                         ; $6f71: $9e
	ldh [$7b], a                                     ; $6f72: $e0 $7b
	ld [hl], e                                       ; $6f74: $73
	ld h, a                                          ; $6f75: $67
	ld [hl], h                                       ; $6f76: $74
	sub a                                            ; $6f77: $97
	add b                                            ; $6f78: $80
	adc c                                            ; $6f79: $89
	rst AddAOntoHL                                          ; $6f7a: $ef
	ld a, a                                          ; $6f7b: $7f

Call_016_6f7c:
	inc b                                            ; $6f7c: $04
	db $fc                                           ; $6f7d: $fc
	ret z                                            ; $6f7e: $c8

	jr c, jr_016_6fc8                                ; $6f7f: $38 $47

	ret nc                                           ; $6f81: $d0

	db $db                                           ; $6f82: $db
	inc bc                                           ; $6f83: $03
	sbc b                                            ; $6f84: $98
	ld [bc], a                                       ; $6f85: $02
	inc bc                                           ; $6f86: $03
	inc b                                            ; $6f87: $04
	rlca                                             ; $6f88: $07
	dec e                                            ; $6f89: $1d
	dec de                                           ; $6f8a: $1b
	inc e                                            ; $6f8b: $1c
	sbc $18                                          ; $6f8c: $de $18
	ld b, a                                          ; $6f8e: $47

jr_016_6f8f:
	ret nc                                           ; $6f8f: $d0

	sbc $e0                                          ; $6f90: $de $e0
	sub [hl]                                         ; $6f92: $96
	ld hl, sp-$40                                    ; $6f93: $f8 $c0
	db $fc                                           ; $6f95: $fc
	ld [hl], b                                       ; $6f96: $70
	cp $8e                                           ; $6f97: $fe $8e
	adc b                                            ; $6f99: $88
	ld b, $06                                        ; $6f9a: $06 $06
	db $dd                                           ; $6f9c: $dd
	rlca                                             ; $6f9d: $07
	ld [hl], $c2                                     ; $6f9e: $36 $c2
	ld d, a                                          ; $6fa0: $57
	xor [hl]                                         ; $6fa1: $ae
	ld c, [hl]                                       ; $6fa2: $4e
	jp nz, Jump_016_7e7f                             ; $6fa3: $c2 $7f $7e

	ld e, [hl]                                       ; $6fa6: $5e
	ldh a, [c]                                       ; $6fa7: $f2
	sbc c                                            ; $6fa8: $99
	ret nz                                           ; $6fa9: $c0

	ld c, c                                          ; $6faa: $49
	rst AddAOntoHL                                          ; $6fab: $ef
	ccf                                              ; $6fac: $3f
	inc b                                            ; $6fad: $04
	db $fc                                           ; $6fae: $fc
	ccf                                              ; $6faf: $3f
	ld c, [hl]                                       ; $6fb0: $4e
	rst SubAFromDE                                          ; $6fb1: $df
	inc sp                                           ; $6fb2: $33
	sbc b                                            ; $6fb3: $98

Call_016_6fb4:
	ld a, e                                          ; $6fb4: $7b
	ld [hl], e                                       ; $6fb5: $73
	ld sp, hl                                        ; $6fb6: $f9
	rst SubAFromBC                                          ; $6fb7: $e7
	ret nz                                           ; $6fb8: $c0

	rst GetHLinHL                                          ; $6fb9: $cf
	dec b                                            ; $6fba: $05
	ld [hl], e                                       ; $6fbb: $73
	and h                                            ; $6fbc: $a4
	ld b, a                                          ; $6fbd: $47
	ret nc                                           ; $6fbe: $d0

	adc a                                            ; $6fbf: $8f
	ret z                                            ; $6fc0: $c8

	ld hl, sp-$10                                    ; $6fc1: $f8 $f0
	ldh a, [$e8]                                     ; $6fc3: $f0 $e8
	ld hl, sp-$3c                                    ; $6fc5: $f8 $c4
	db $fc                                           ; $6fc7: $fc

jr_016_6fc8:
	add b                                            ; $6fc8: $80
	sbc h                                            ; $6fc9: $9c
	inc e                                            ; $6fca: $1c
	inc b                                            ; $6fcb: $04
	jr c, @+$3a                                      ; $6fcc: $38 $38

	ld a, $3e                                        ; $6fce: $3e $3e
	ccf                                              ; $6fd0: $3f
	ret nz                                           ; $6fd1: $c0

	rst SubAFromDE                                          ; $6fd2: $df
	inc bc                                           ; $6fd3: $03
	rst SubAFromDE                                          ; $6fd4: $df
	ld bc, $06df                                     ; $6fd5: $01 $df $06
	sub a                                            ; $6fd8: $97
	ld c, $0d                                        ; $6fd9: $0e $0d
	ld e, $1d                                        ; $6fdb: $1e $1d
	add hl, de                                       ; $6fdd: $19
	add hl, de                                       ; $6fde: $19
	ld bc, $3f01                                     ; $6fdf: $01 $01 $3f
	ret nz                                           ; $6fe2: $c0

	rst SubAFromDE                                          ; $6fe3: $df
	ldh [hDisp1_OBP0], a                                     ; $6fe4: $e0 $93
	db $10                                           ; $6fe6: $10
	ldh a, [hDisp0_WY]                                     ; $6fe7: $f0 $88
	ld hl, sp+$08                                    ; $6fe9: $f8 $08
	ld hl, sp+$30                                    ; $6feb: $f8 $30
	ldh a, [$c0]                                     ; $6fed: $f0 $c0
	ret nz                                           ; $6fef: $c0

	ldh a, [$f0]                                     ; $6ff0: $f0 $f0
	daa                                              ; $6ff2: $27
	ldh [$7b], a                                     ; $6ff3: $e0 $7b
	sbc b                                            ; $6ff5: $98
	sbc [hl]                                         ; $6ff6: $9e
	jr nc, jr_016_7070                               ; $6ff7: $30 $77

	ldh [$fd], a                                     ; $6ff9: $e0 $fd
	ld a, a                                          ; $6ffb: $7f
	halt                                             ; $6ffc: $76
	adc c                                            ; $6ffd: $89
	dec bc                                           ; $6ffe: $0b

Call_016_6fff:
Jump_016_6fff:
	rrca                                             ; $6fff: $0f
	dec d                                            ; $7000: $15
	rra                                              ; $7001: $1f
	dec sp                                           ; $7002: $3b
	ccf                                              ; $7003: $3f
	scf                                              ; $7004: $37
	ld a, $3f                                        ; $7005: $3e $3f
	inc a                                            ; $7007: $3c
	ld [hl-], a                                      ; $7008: $32
	ccf                                              ; $7009: $3f
	db $10                                           ; $700a: $10
	rra                                              ; $700b: $1f
	add hl, bc                                       ; $700c: $09
	rrca                                             ; $700d: $0f
	dec c                                            ; $700e: $0d
	rrca                                             ; $700f: $0f
	inc de                                           ; $7010: $13
	ld e, $11                                        ; $7011: $1e $11
	rra                                              ; $7013: $1f
	ld h, [hl]                                       ; $7014: $66
	and b                                            ; $7015: $a0
	ld a, a                                          ; $7016: $7f
	jp nz, $be7f                                     ; $7017: $c2 $7f $be

	ld a, a                                          ; $701a: $7f
	or d                                             ; $701b: $b2
	sub h                                            ; $701c: $94
	ret nc                                           ; $701d: $d0

	ldh a, [$f8]                                     ; $701e: $f0 $f8
	ld a, b                                          ; $7020: $78
	ld hl, sp+$38                                    ; $7021: $f8 $38
	ld e, b                                          ; $7023: $58
	ld hl, sp+$10                                    ; $7024: $f8 $10
	ldh a, [hDisp1_SCY]                                     ; $7026: $f0 $90
	ld a, c                                          ; $7028: $79
	jp c, $967e                                      ; $7029: $da $7e $96

	sbc c                                            ; $702c: $99
	ldh a, [$99]                                     ; $702d: $f0 $99
	rrca                                             ; $702f: $0f
	rst $38                                          ; $7030: $ff

jr_016_7031:
	ld h, b                                          ; $7031: $60
	ld hl, sp-$05                                    ; $7032: $f8 $fb
	rst SubAFromDE                                          ; $7034: $df
	rlca                                             ; $7035: $07
	ld a, a                                          ; $7036: $7f
	call nc, $be7f                                   ; $7037: $d4 $7f $be
	sbc [hl]                                         ; $703a: $9e
	dec de                                           ; $703b: $1b
	call c, Call_016_7f1f                            ; $703c: $dc $1f $7f
	ld d, h                                          ; $703f: $54
	sbc e                                            ; $7040: $9b
	inc c                                            ; $7041: $0c
	rrca                                             ; $7042: $0f
	ld [$650f], sp                                   ; $7043: $08 $0f $65
	ld d, b                                          ; $7046: $50
	ei                                               ; $7047: $fb
	ld a, a                                          ; $7048: $7f
	cp [hl]                                          ; $7049: $be
	rst SubAFromDE                                          ; $704a: $df
	ldh a, [$9e]                                     ; $704b: $f0 $9e
	xor b                                            ; $704d: $a8
	ld a, e                                          ; $704e: $7b
	pop bc                                           ; $704f: $c1
	ld a, a                                          ; $7050: $7f
	cp e                                             ; $7051: $bb
	ld a, a                                          ; $7052: $7f
	call nz, Call_016_409e                           ; $7053: $c4 $9e $40
	ld a, e                                          ; $7056: $7b
	add b                                            ; $7057: $80
	sbc e                                            ; $7058: $9b
	nop                                              ; $7059: $00
	ret nz                                           ; $705a: $c0

	add b                                            ; $705b: $80
	ret nz                                           ; $705c: $c0

	ld l, l                                          ; $705d: $6d
	jp nc, $d047                                     ; $705e: $d2 $47 $d0

	ld b, l                                          ; $7061: $45
	jr nz, jr_016_70ab                               ; $7062: $20 $47

	ret nc                                           ; $7064: $d0

	ld b, l                                          ; $7065: $45
	jr nz, @-$7e                                     ; $7066: $20 $80

	cp $ff                                           ; $7068: $fe $ff
	db $fc                                           ; $706a: $fc
	rst $38                                          ; $706b: $ff
	jp nz, Jump_016_62ff                             ; $706c: $c2 $ff $62

	ld a, a                                          ; $706f: $7f

jr_016_7070:
	ld h, c                                          ; $7070: $61
	ld e, a                                          ; $7071: $5f
	sbc [hl]                                         ; $7072: $9e
	xor $8c                                          ; $7073: $ee $8c
	ld [hl], h                                       ; $7075: $74
	call z, $c734                                    ; $7076: $cc $34 $c7
	ld a, a                                          ; $7079: $7f
	ldh [rIE], a                                     ; $707a: $e0 $ff
	ld hl, sp-$05                                    ; $707c: $f8 $fb
	ld b, h                                          ; $707e: $44
	ld a, h                                          ; $707f: $7c
	inc h                                            ; $7080: $24
	inc a                                            ; $7081: $3c
	ld c, b                                          ; $7082: $48
	ld a, b                                          ; $7083: $78
	ld [hl], b                                       ; $7084: $70
	ld b, b                                          ; $7085: $40
	ld a, b                                          ; $7086: $78
	sbc [hl]                                         ; $7087: $9e
	ld a, b                                          ; $7088: $78
	db $f4                                           ; $7089: $f4
	rst SubAFromDE                                          ; $708a: $df
	ret nz                                           ; $708b: $c0

	rst SubAFromDE                                          ; $708c: $df
	ld h, b                                          ; $708d: $60
	sbc b                                            ; $708e: $98
	jr nc, jr_016_7031                               ; $708f: $30 $a0

	db $10                                           ; $7091: $10
	ld d, b                                          ; $7092: $50
	jr nc, jr_016_70b5                               ; $7093: $30 $20

	ldh [$ec], a                                     ; $7095: $e0 $ec
	rst SubAFromDE                                          ; $7097: $df
	db $fc                                           ; $7098: $fc
	rst SubAFromDE                                          ; $7099: $df
	ld d, [hl]                                       ; $709a: $56
	sbc b                                            ; $709b: $98
	inc bc                                           ; $709c: $03
	xor d                                            ; $709d: $aa
	ld bc, $0355                                     ; $709e: $01 $55 $03
	ld [bc], a                                       ; $70a1: $02
	cp $ec                                           ; $70a2: $fe $ec
	rst SubAFromDE                                          ; $70a4: $df
	rlca                                             ; $70a5: $07
	rst SubAFromDE                                          ; $70a6: $df
	ld a, [de]                                       ; $70a7: $1a
	sbc d                                            ; $70a8: $9a
	jr nc, @-$19                                     ; $70a9: $30 $e5

jr_016_70ab:
	ldh a, [rAUD1SWEEP]                              ; $70ab: $f0 $10
	ld e, $6e                                        ; $70ad: $1e $6e
	add sp, -$10                                     ; $70af: $e8 $f0
	rst SubAFromDE                                          ; $70b1: $df
	ld hl, sp-$21                                    ; $70b2: $f8 $df
	xor h                                            ; $70b4: $ac

jr_016_70b5:
	sbc b                                            ; $70b5: $98
	ld b, $54                                        ; $70b6: $06 $54
	ld [bc], a                                       ; $70b8: $02
	xor d                                            ; $70b9: $aa
	ld b, $04                                        ; $70ba: $06 $04
	db $fc                                           ; $70bc: $fc
	rst AddAOntoHL                                          ; $70bd: $ef
	rst SubAFromDE                                          ; $70be: $df
	inc bc                                           ; $70bf: $03
	ld a, l                                          ; $70c0: $7d
	xor a                                            ; $70c1: $af
	sbc h                                            ; $70c2: $9c
	dec b                                            ; $70c3: $05
	ld b, $05                                        ; $70c4: $06 $05
	ld a, c                                          ; $70c6: $79
	xor c                                            ; $70c7: $a9
	rst SubAFromDE                                          ; $70c8: $df
	inc bc                                           ; $70c9: $03
	rst FarCall                                          ; $70ca: $f7
	ld [hl], c                                       ; $70cb: $71
	inc bc                                           ; $70cc: $03
	ei                                               ; $70cd: $fb
	rst SubAFromDE                                          ; $70ce: $df
	ld bc, $03de                                     ; $70cf: $01 $de $03
	sbc [hl]                                         ; $70d2: $9e
	ld [bc], a                                       ; $70d3: $02
	db $db                                           ; $70d4: $db
	inc bc                                           ; $70d5: $03
	db $dd                                           ; $70d6: $dd
	ld bc, $0795                                     ; $70d7: $01 $95 $07
	ld b, $09                                        ; $70da: $06 $09
	rrca                                             ; $70dc: $0f
	dec bc                                           ; $70dd: $0b
	dec c                                            ; $70de: $0d
	rlca                                             ; $70df: $07
	inc b                                            ; $70e0: $04
	rlca                                             ; $70e1: $07
	rlca                                             ; $70e2: $07
	db $fd                                           ; $70e3: $fd
	rst SubAFromDE                                          ; $70e4: $df
	cp b                                             ; $70e5: $b8
	add l                                            ; $70e6: $85
	cp $f2                                           ; $70e7: $fe $f2
	rst $38                                          ; $70e9: $ff
	cpl                                              ; $70ea: $2f
	rst $38                                          ; $70eb: $ff
	rst SubAFromDE                                          ; $70ec: $df
	rst FarCall                                          ; $70ed: $f7
	rst $38                                          ; $70ee: $ff
	jp z, $08fe                                      ; $70ef: $ca $fe $08

	db $f4                                           ; $70f2: $f4
	adc d                                            ; $70f3: $8a
	cp $04                                           ; $70f4: $fe $04
	db $fc                                           ; $70f6: $fc
	ld a, [$31ba]                                    ; $70f7: $fa $ba $31
	rst SubAFromHL                                          ; $70fa: $d7
	ld de, $82ff                                     ; $70fb: $11 $ff $82
	cp $c4                                           ; $70fe: $fe $c4
	db $fc                                           ; $7100: $fc
	ld b, a                                          ; $7101: $47
	ret nc                                           ; $7102: $d0

	db $dd                                           ; $7103: $dd
	inc bc                                           ; $7104: $03
	ld a, a                                          ; $7105: $7f
	ld sp, hl                                        ; $7106: $f9
	sbc b                                            ; $7107: $98
	nop                                              ; $7108: $00
	rlca                                             ; $7109: $07
	ld de, $721f                                     ; $710a: $11 $1f $72
	ld l, [hl]                                       ; $710d: $6e
	ld [hl], b                                       ; $710e: $70
	sbc $60                                          ; $710f: $de $60
	ld b, a                                          ; $7111: $47
	ret nc                                           ; $7112: $d0

	rst SubAFromDE                                          ; $7113: $df
	ldh a, [hDisp1_SCX]                                     ; $7114: $f0 $91
	add sp, -$08                                     ; $7116: $e8 $f8
	call nz, $a2fc                                   ; $7118: $c4 $fc $a2
	cp [hl]                                          ; $711b: $be
	ld a, [bc]                                       ; $711c: $0a
	ld c, $0c                                        ; $711d: $0e $0c
	nop                                              ; $711f: $00
	rrca                                             ; $7120: $0f
	rlca                                             ; $7121: $07
	ld c, $0e                                        ; $7122: $0e $0e
	ld sp, hl                                        ; $7124: $f9
	ld c, a                                          ; $7125: $4f
	ld a, [hl]                                       ; $7126: $7e
	rst SubAFromDE                                          ; $7127: $df
	inc bc                                           ; $7128: $03
	sbc [hl]                                         ; $7129: $9e
	dec b                                            ; $712a: $05
	ld [hl], a                                       ; $712b: $77
	xor [hl]                                         ; $712c: $ae
	sbc h                                            ; $712d: $9c
	inc c                                            ; $712e: $0c
	rlca                                             ; $712f: $07
	inc b                                            ; $7130: $04

jr_016_7131:
	ei                                               ; $7131: $fb
	ld b, a                                          ; $7132: $47
	ld a, [hl]                                       ; $7133: $7e
	sub l                                            ; $7134: $95
	add h                                            ; $7135: $84
	ld a, h                                          ; $7136: $7c
	jr c, jr_016_7131                                ; $7137: $38 $f8

	ld [hl+], a                                      ; $7139: $22
	xor $82                                          ; $713a: $ee $82
	cp $c8                                           ; $713c: $fe $c8
	ld a, b                                          ; $713e: $78
	ld b, a                                          ; $713f: $47
	ret nc                                           ; $7140: $d0

	rst SubAFromDE                                          ; $7141: $df
	inc bc                                           ; $7142: $03
	rst SubAFromDE                                          ; $7143: $df
	rlca                                             ; $7144: $07
	rst SubAFromDE                                          ; $7145: $df
	ld [hl], a                                       ; $7146: $77
	sub l                                            ; $7147: $95
	ld hl, sp-$11                                    ; $7148: $f8 $ef
	pop de                                           ; $714a: $d1
	rst GetHLinHL                                          ; $714b: $cf
	ld [de], a                                       ; $714c: $12
	ld e, $0c                                        ; $714d: $1e $0c
	inc c                                            ; $714f: $0c
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	ld b, a                                          ; $7152: $47
	ret nc                                           ; $7153: $d0

	rst SubAFromDE                                          ; $7154: $df
	ret nz                                           ; $7155: $c0

	rst SubAFromDE                                          ; $7156: $df
	ldh [hDisp1_OBP0], a                                     ; $7157: $e0 $93
	ret nc                                           ; $7159: $d0

	ldh a, [hDisp0_WY]                                     ; $715a: $f0 $88
	ld hl, sp+$40                                    ; $715c: $f8 $40
	ld a, b                                          ; $715e: $78
	jr c, jr_016_7181                                ; $715f: $38 $20

	jr jr_016_716b                                   ; $7161: $18 $08

	inc a                                            ; $7163: $3c
	inc a                                            ; $7164: $3c
	rst FarCall                                          ; $7165: $f7
	ld b, [hl]                                       ; $7166: $46
	db $fc                                           ; $7167: $fc
	ld a, a                                          ; $7168: $7f
	push af                                          ; $7169: $f5
	sbc e                                            ; $716a: $9b

jr_016_716b:
	ld [bc], a                                       ; $716b: $02
	ld bc, $0102                                     ; $716c: $01 $02 $01
	ld sp, hl                                        ; $716f: $f9
	ccf                                              ; $7170: $3f
	ld a, [hl]                                       ; $7171: $7e
	sbc c                                            ; $7172: $99
	ld a, b                                          ; $7173: $78
	cp b                                             ; $7174: $b8
	ld h, b                                          ; $7175: $60
	and b                                            ; $7176: $a0
	ld c, b                                          ; $7177: $48
	ld hl, sp+$47                                    ; $7178: $f8 $47
	ret nc                                           ; $717a: $d0

	sbc [hl]                                         ; $717b: $9e
	ld b, $de                                        ; $717c: $06 $de
	rlca                                             ; $717e: $07
	ld a, e                                          ; $717f: $7b
	ld [hl], d                                       ; $7180: $72

jr_016_7181:
	sub [hl]                                         ; $7181: $96
	dec b                                            ; $7182: $05
	ld c, $0d                                        ; $7183: $0e $0d
	ld e, $1d                                        ; $7185: $1e $1d
	add hl, de                                       ; $7187: $19
	add hl, de                                       ; $7188: $19
	ld bc, $4701                                     ; $7189: $01 $01 $47
	ret nc                                           ; $718c: $d0

	adc a                                            ; $718d: $8f
	ld [$f0f8], sp                                   ; $718e: $08 $f8 $f0
	ldh a, [rP1]                                     ; $7191: $f0 $00
	ldh [hDisp1_SCY], a                                     ; $7193: $e0 $90
	ldh a, [rAUD1SWEEP]                              ; $7195: $f0 $10
	ldh a, [rAUD4LEN]                                ; $7197: $f0 $20
	ldh [$c0], a                                     ; $7199: $e0 $c0
	ld b, b                                          ; $719b: $40
	ldh [$e0], a                                     ; $719c: $e0 $e0
	cpl                                              ; $719e: $2f
	add h                                            ; $719f: $84
	ld a, [hl]                                       ; $71a0: $7e
	cp [hl]                                          ; $71a1: $be
	sbc d                                            ; $71a2: $9a
	ld [$090f], sp                                   ; $71a3: $08 $0f $09
	rrca                                             ; $71a6: $0f
	dec b                                            ; $71a7: $05
	ld a, d                                          ; $71a8: $7a
	xor a                                            ; $71a9: $af
	cpl                                              ; $71aa: $2f
	add h                                            ; $71ab: $84
	sub l                                            ; $71ac: $95
	ld a, d                                          ; $71ad: $7a
	cp d                                             ; $71ae: $ba
	ld [hl], c                                       ; $71af: $71
	sub a                                            ; $71b0: $97
	pop af                                           ; $71b1: $f1
	rra                                              ; $71b2: $1f
	and $3e                                          ; $71b3: $e6 $3e
	ldh a, [$f0]                                     ; $71b5: $f0 $f0
	ld b, a                                          ; $71b7: $47
	ret nc                                           ; $71b8: $d0

	db $dd                                           ; $71b9: $dd
	inc bc                                           ; $71ba: $03
	ld a, a                                          ; $71bb: $7f
	ld hl, sp+$4e                                    ; $71bc: $f8 $4e
	add b                                            ; $71be: $80
	ld d, a                                          ; $71bf: $57
	ret nc                                           ; $71c0: $d0

	rst SubAFromDE                                          ; $71c1: $df
	ldh [rSC], a                                     ; $71c2: $e0 $02
	add b                                            ; $71c4: $80
	ld a, e                                          ; $71c5: $7b
	xor [hl]                                         ; $71c6: $ae
	ld a, a                                          ; $71c7: $7f
	rst FarCall                                          ; $71c8: $f7
	ld a, a                                          ; $71c9: $7f
	or [hl]                                          ; $71ca: $b6
	sbc e                                            ; $71cb: $9b
	add hl, bc                                       ; $71cc: $09
	ld c, $09                                        ; $71cd: $0e $09
	rrca                                             ; $71cf: $0f
	ld l, a                                          ; $71d0: $6f
	add b                                            ; $71d1: $80
	dec sp                                           ; $71d2: $3b
	ld a, [hl]                                       ; $71d3: $7e
	sbc b                                            ; $71d4: $98
	db $fc                                           ; $71d5: $fc
	ld a, b                                          ; $71d6: $78
	cp b                                             ; $71d7: $b8
	ldh [c], a                                       ; $71d8: $e2
	xor [hl]                                         ; $71d9: $ae
	ldh [c], a                                       ; $71da: $e2
	ld a, $6f                                        ; $71db: $3e $6f
	nop                                              ; $71dd: $00
	ld d, a                                          ; $71de: $57
	ret nc                                           ; $71df: $d0

	ld a, a                                          ; $71e0: $7f
	or $76                                           ; $71e1: $f6 $76
	add b                                            ; $71e3: $80
	sbc [hl]                                         ; $71e4: $9e
	ld sp, hl                                        ; $71e5: $f9
	ld b, [hl]                                       ; $71e6: $46
	add b                                            ; $71e7: $80
	ld h, e                                          ; $71e8: $63
	ret nc                                           ; $71e9: $d0

	sbc [hl]                                         ; $71ea: $9e
	ld b, b                                          ; $71eb: $40
	ld c, d                                          ; $71ec: $4a
	add b                                            ; $71ed: $80
	ld e, $c0                                        ; $71ee: $1e $c0
	sbc [hl]                                         ; $71f0: $9e
	rra                                              ; $71f1: $1f
	ld a, [de]                                       ; $71f2: $1a
	ret nz                                           ; $71f3: $c0

	ld a, [hl]                                       ; $71f4: $7e
	jp nz, $be7e                                     ; $71f5: $c2 $7e $be

	ld a, d                                          ; $71f8: $7a
	ret nz                                           ; $71f9: $c0

	ld a, a                                          ; $71fa: $7f
	rst FarCall                                          ; $71fb: $f7
	ld l, d                                          ; $71fc: $6a
	ret nz                                           ; $71fd: $c0

	ld sp, hl                                        ; $71fe: $f9
	rst SubAFromDE                                          ; $71ff: $df
	rla                                              ; $7200: $17
	adc a                                            ; $7201: $8f
	ccf                                              ; $7202: $3f
	ld a, $7f                                        ; $7203: $3e $7f
	ld h, l                                          ; $7205: $65
	ld a, a                                          ; $7206: $7f
	ld e, e                                          ; $7207: $5b
	ld a, [hl]                                       ; $7208: $7e
	ld a, a                                          ; $7209: $7f
	ld a, c                                          ; $720a: $79
	ld a, a                                          ; $720b: $7f
	ld h, c                                          ; $720c: $61
	ld a, [hl]                                       ; $720d: $7e
	ld sp, $f83f                                     ; $720e: $31 $3f $f8
	sub a                                            ; $7211: $97
	pop af                                           ; $7212: $f1
	halt                                             ; $7213: $76
	adc h                                            ; $7214: $8c
	db $dd                                           ; $7215: $dd
	ldh [$7f], a                                     ; $7216: $e0 $7f
	ld a, b                                          ; $7218: $78
	sbc c                                            ; $7219: $99
	nop                                              ; $721a: $00
	add b                                            ; $721b: $80
	ld b, b                                          ; $721c: $40
	ret nz                                           ; $721d: $c0

	add b                                            ; $721e: $80
	add b                                            ; $721f: $80
	pop af                                           ; $7220: $f1
	ld a, d                                          ; $7221: $7a
	ld hl, sp-$62                                    ; $7222: $f8 $9e
	ld [bc], a                                       ; $7224: $02
	ld a, d                                          ; $7225: $7a
	cp c                                             ; $7226: $b9
	sbc [hl]                                         ; $7227: $9e
	ld b, $de                                        ; $7228: $06 $de
	rrca                                             ; $722a: $0f
	sbc d                                            ; $722b: $9a
	rlca                                             ; $722c: $07
	inc c                                            ; $722d: $0c
	dec bc                                           ; $722e: $0b
	dec c                                            ; $722f: $0d
	dec c                                            ; $7230: $0d
	di                                               ; $7231: $f3
	adc l                                            ; $7232: $8d
	ldh [$80], a                                     ; $7233: $e0 $80
	rst AddAOntoHL                                          ; $7235: $ef
	ccf                                              ; $7236: $3f
	ret z                                            ; $7237: $c8

	ld a, b                                          ; $7238: $78
	sbc b                                            ; $7239: $98
	ld hl, sp+$34                                    ; $723a: $f8 $34
	db $fc                                           ; $723c: $fc
	ld [hl+], a                                      ; $723d: $22
	cp $9a                                           ; $723e: $fe $9a
	cp $44                                           ; $7240: $fe $44
	db $fc                                           ; $7242: $fc
	inc h                                            ; $7243: $24
	db $fc                                           ; $7244: $fc
	ld b, e                                          ; $7245: $43
	jp nz, $007b                                     ; $7246: $c2 $7b $00

	rst SubAFromDE                                          ; $7249: $df
	rlca                                             ; $724a: $07
	ld a, a                                          ; $724b: $7f
	ld a, [hl-]                                      ; $724c: $3a
	ld a, a                                          ; $724d: $7f
	cp l                                             ; $724e: $bd
	sbc c                                            ; $724f: $99
	db $fc                                           ; $7250: $fc
	sbc a                                            ; $7251: $9f
	db $fc                                           ; $7252: $fc

Jump_016_7253:
	rlca                                             ; $7253: $07
	ld a, [$4b8f]                                    ; $7254: $fa $8f $4b
	ret nz                                           ; $7257: $c0

	adc a                                            ; $7258: $8f

jr_016_7259:
	ldh [$f8], a                                     ; $7259: $e0 $f8
	jr c, jr_016_7259                                ; $725b: $38 $fc

	call c, $e4fc                                    ; $725d: $dc $fc $e4
	cp $fa                                           ; $7260: $fe $fa
	ld e, $fe                                        ; $7262: $1e $fe
	inc l                                            ; $7264: $2c
	db $fc                                           ; $7265: $fc
	inc a                                            ; $7266: $3c
	call c, Call_016_5340                            ; $7267: $dc $40 $53
	ld b, b                                          ; $726a: $40
	ld l, a                                          ; $726b: $6f
	call nz, Call_016_447e                           ; $726c: $c4 $7e $44
	ld a, d                                          ; $726f: $7a
	adc d                                            ; $7270: $8a
	ld a, d                                          ; $7271: $7a
	or b                                             ; $7272: $b0
	sbc c                                            ; $7273: $99
	dec e                                            ; $7274: $1d

jr_016_7275:
	dec de                                           ; $7275: $1b
	rra                                              ; $7276: $1f

Call_016_7277:
	ld e, $1b                                        ; $7277: $1e $1b
	dec de                                           ; $7279: $1b
	ld b, a                                          ; $727a: $47
	or b                                             ; $727b: $b0

jr_016_727c:
	adc a                                            ; $727c: $8f
	di                                               ; $727d: $f3
	sbc a                                            ; $727e: $9f
	ldh a, [c]                                       ; $727f: $f2
	cp $a2                                           ; $7280: $fe $a2
	xor $a0                                          ; $7282: $ee $a0
	db $ec                                           ; $7284: $ec
	and h                                            ; $7285: $a4
	db $ec                                           ; $7286: $ec
	jr nz, jr_016_7275                               ; $7287: $20 $ec

	ld c, d                                          ; $7289: $4a
	adc $11                                          ; $728a: $ce $11
	rra                                              ; $728c: $1f
	ld b, e                                          ; $728d: $43
	or b                                             ; $728e: $b0
	ld a, a                                          ; $728f: $7f
	jr z, jr_016_727c                                ; $7290: $28 $ea

	ld [hl], e                                       ; $7292: $73
	ld h, h                                          ; $7293: $64
	ld a, a                                          ; $7294: $7f
	or a                                             ; $7295: $b7
	ld a, l                                          ; $7296: $7d
	db $e3                                           ; $7297: $e3
	ld [hl], e                                       ; $7298: $73
	or b                                             ; $7299: $b0
	ld a, l                                          ; $729a: $7d
	pop de                                           ; $729b: $d1
	sbc c                                            ; $729c: $99
	ld a, l                                          ; $729d: $7d
	ld b, d                                          ; $729e: $42
	ld hl, sp-$39                                    ; $729f: $f8 $c7
	ld hl, sp-$31                                    ; $72a1: $f8 $cf
	rst FarCall                                          ; $72a3: $f7
	rst SubAFromDE                                          ; $72a4: $df
	ld [hl], b                                       ; $72a5: $70
	ld a, e                                          ; $72a6: $7b
	cp b                                             ; $72a7: $b8
	sub e                                            ; $72a8: $93
	ld e, [hl]                                       ; $72a9: $5e
	cp $be                                           ; $72aa: $fe $be
	xor $fe                                          ; $72ac: $ee $fe
	sub h                                            ; $72ae: $94
	db $fc                                           ; $72af: $fc
	db $10                                           ; $72b0: $10
	add sp, $14                                      ; $72b1: $e8 $14
	db $fc                                           ; $72b3: $fc
	adc b                                            ; $72b4: $88
	halt                                             ; $72b5: $76
	sub [hl]                                         ; $72b6: $96
	ld b, e                                          ; $72b7: $43
	cp [hl]                                          ; $72b8: $be
	ld [hl], h                                       ; $72b9: $74
	ld [hl+], a                                      ; $72ba: $22
	halt                                             ; $72bb: $76
	ld a, [de]                                       ; $72bc: $1a
	ld a, a                                          ; $72bd: $7f
	db $fc                                           ; $72be: $fc
	sbc h                                            ; $72bf: $9c
	add hl, de                                       ; $72c0: $19
	ld d, $1a                                        ; $72c1: $16 $1a
	sbc $1f                                          ; $72c3: $de $1f
	ld b, a                                          ; $72c5: $47
	or b                                             ; $72c6: $b0
	ld a, [hl]                                       ; $72c7: $7e
	ld b, $97                                        ; $72c8: $06 $97
	ld hl, sp-$02                                    ; $72ca: $f8 $fe
	db $e4                                           ; $72cc: $e4
	ld h, a                                          ; $72cd: $67
	and d                                            ; $72ce: $a2
	ld h, e                                          ; $72cf: $63
	and b                                            ; $72d0: $a0
	ld h, b                                          ; $72d1: $60
	ld a, d                                          ; $72d2: $7a
	sub l                                            ; $72d3: $95
	ld a, e                                          ; $72d4: $7b
	ld [hl], h                                       ; $72d5: $74
	ld b, a                                          ; $72d6: $47
	or b                                             ; $72d7: $b0
	rst SubAFromDE                                          ; $72d8: $df
	ret nz                                           ; $72d9: $c0

	ld a, [hl]                                       ; $72da: $7e
	ld c, b                                          ; $72db: $48
	ld a, a                                          ; $72dc: $7f
	cp $77                                           ; $72dd: $fe $77
	and $ed                                          ; $72df: $e6 $ed
	rst SubAFromDE                                          ; $72e1: $df
	inc c                                            ; $72e2: $0c
	rst SubAFromDE                                          ; $72e3: $df
	ld c, $7b                                        ; $72e4: $0e $7b
	or d                                             ; $72e6: $b2
	sub h                                            ; $72e7: $94
	nop                                              ; $72e8: $00
	inc de                                           ; $72e9: $13
	rra                                              ; $72ea: $1f
	daa                                              ; $72eb: $27
	ccf                                              ; $72ec: $3f
	ld hl, $133f                                     ; $72ed: $21 $3f $13
	rra                                              ; $72f0: $1f
	rrca                                             ; $72f1: $0f
	rrca                                             ; $72f2: $0f
	ccf                                              ; $72f3: $3f
	add b                                            ; $72f4: $80
	rst SubAFromDE                                          ; $72f5: $df
	rlca                                             ; $72f6: $07
	sub e                                            ; $72f7: $93
	ld e, $1f                                        ; $72f8: $1e $1f
	and $ff                                          ; $72fa: $e6 $ff
	db $e3                                           ; $72fc: $e3
	ccf                                              ; $72fd: $3f
	ldh [$3f], a                                     ; $72fe: $e0 $3f
	ld hl, sp+$1f                                    ; $7300: $f8 $1f
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	rst FarCall                                          ; $7304: $f7
	rst SubAFromDE                                          ; $7305: $df
	ld h, b                                          ; $7306: $60
	rst SubAFromDE                                          ; $7307: $df
	ld hl, sp-$73                                    ; $7308: $f8 $8d
	cp $3e                                           ; $730a: $fe $3e
	db $fc                                           ; $730c: $fc
	cp h                                             ; $730d: $bc
	cp $de                                           ; $730e: $fe $de
	rst $38                                          ; $7310: $ff
	di                                               ; $7311: $f3
	ccf                                              ; $7312: $3f
	rst $38                                          ; $7313: $ff
	dec a                                            ; $7314: $3d
	rst $38                                          ; $7315: $ff
	ldh a, [c]                                       ; $7316: $f2
	cp $04                                           ; $7317: $fe $04
	db $fc                                           ; $7319: $fc
	ld hl, sp-$08                                    ; $731a: $f8 $f8
	ld h, a                                          ; $731c: $67
	add $69                                          ; $731d: $c6 $69
	dec h                                            ; $731f: $25
	ld l, c                                          ; $7320: $69
	sub h                                            ; $7321: $94
	ld a, a                                          ; $7322: $7f
	sbc l                                            ; $7323: $9d
	ld a, l                                          ; $7324: $7d
	ld d, h                                          ; $7325: $54
	ld a, [hl]                                       ; $7326: $7e
	inc hl                                           ; $7327: $23
	ld a, e                                          ; $7328: $7b
	scf                                              ; $7329: $37
	ld [hl], c                                       ; $732a: $71
	jr nz, jr_016_73a9                               ; $732b: $20 $7c

	xor $7e                                          ; $732d: $ee $7e
	jp nz, $b595                                     ; $732f: $c2 $95 $b5

	rst $38                                          ; $7332: $ff
	ld l, a                                          ; $7333: $6f
	rst $38                                          ; $7334: $ff
	cp $fa                                           ; $7335: $fe $fa
	cp $f2                                           ; $7337: $fe $f2
	ld [$75fc], sp                                   ; $7339: $08 $fc $75
	ld d, d                                          ; $733c: $52
	sub l                                            ; $733d: $95
	ld a, [$31ba]                                    ; $733e: $fa $ba $31
	rst SubAFromHL                                          ; $7341: $d7
	ld de, $82ff                                     ; $7342: $11 $ff $82
	cp $c4                                           ; $7345: $fe $c4
	db $fc                                           ; $7347: $fc
	ld b, a                                          ; $7348: $47
	ldh a, [$df]                                     ; $7349: $f0 $df
	ldh a, [rAUDVOL]                                 ; $734b: $f0 $24
	ret nz                                           ; $734d: $c0

	ld d, a                                          ; $734e: $57
	sbc [hl]                                         ; $734f: $9e
	ld a, c                                          ; $7350: $79
	ld a, $77                                        ; $7351: $3e $77
	sbc [hl]                                         ; $7353: $9e
	sbc h                                            ; $7354: $9c
	inc c                                            ; $7355: $0c
	rlca                                             ; $7356: $07
	inc b                                            ; $7357: $04
	ei                                               ; $7358: $fb
	ld e, a                                          ; $7359: $5f
	sbc [hl]                                         ; $735a: $9e

jr_016_735b:
	ld a, a                                          ; $735b: $7f
	ld l, d                                          ; $735c: $6a
	ld [hl], e                                       ; $735d: $73
	xor [hl]                                         ; $735e: $ae
	sub [hl]                                         ; $735f: $96
	ld a, h                                          ; $7360: $7c
	jr c, jr_016_735b                                ; $7361: $38 $f8

	ld [hl+], a                                      ; $7363: $22
	xor $82                                          ; $7364: $ee $82
	cp $c8                                           ; $7366: $fe $c8
	ld a, b                                          ; $7368: $78
	ld b, a                                          ; $7369: $47
	ldh a, [$df]                                     ; $736a: $f0 $df
	ret nz                                           ; $736c: $c0

	ld c, h                                          ; $736d: $4c
	ldh [$57], a                                     ; $736e: $e0 $57
	ld [bc], a                                       ; $7370: $02
	ld c, a                                          ; $7371: $4f
	inc a                                            ; $7372: $3c
	ld l, h                                          ; $7373: $6c
	ret nc                                           ; $7374: $d0

	ld sp, hl                                        ; $7375: $f9
	ld h, a                                          ; $7376: $67
	sbc [hl]                                         ; $7377: $9e
	ld a, e                                          ; $7378: $7b
	dec a                                            ; $7379: $3d
	ld l, e                                          ; $737a: $6b
	xor [hl]                                         ; $737b: $ae
	ld l, h                                          ; $737c: $6c
	ret nc                                           ; $737d: $d0

	ld b, a                                          ; $737e: $47
	ldh a, [$6c]                                     ; $737f: $f0 $6c
	ret nz                                           ; $7381: $c0

	ld a, h                                          ; $7382: $7c
	jp nz, $be7c                                     ; $7383: $c2 $7c $be

	ld a, b                                          ; $7386: $78
	ret nz                                           ; $7387: $c0

	ld a, b                                          ; $7388: $78
	db $f4                                           ; $7389: $f4
	cpl                                              ; $738a: $2f
	and h                                            ; $738b: $a4
	ld a, [hl]                                       ; $738c: $7e
	rst SubAFromBC                                          ; $738d: $e7
	sbc d                                            ; $738e: $9a
	ld [$090f], sp                                   ; $738f: $08 $0f $09
	rrca                                             ; $7392: $0f
	dec b                                            ; $7393: $05
	ld [hl], l                                       ; $7394: $75
	halt                                             ; $7395: $76
	ld [hl], $e0                                     ; $7396: $36 $e0
	sub h                                            ; $7398: $94
	ld a, h                                          ; $7399: $7c
	ld a, d                                          ; $739a: $7a
	cp d                                             ; $739b: $ba
	ld [hl], c                                       ; $739c: $71
	sub a                                            ; $739d: $97
	pop af                                           ; $739e: $f1
	rra                                              ; $739f: $1f
	and $3e                                          ; $73a0: $e6 $3e
	ldh a, [$f0]                                     ; $73a2: $f0 $f0
	ld b, a                                          ; $73a4: $47
	ldh a, [$df]                                     ; $73a5: $f0 $df
	ldh [rSC], a                                     ; $73a7: $e0 $02

jr_016_73a9:
	ldh [$7b], a                                     ; $73a9: $e0 $7b
	sbc [hl]                                         ; $73ab: $9e
	ld [hl], l                                       ; $73ac: $75
	ret nz                                           ; $73ad: $c0

	sbc e                                            ; $73ae: $9b
	add hl, bc                                       ; $73af: $09
	ld c, $09                                        ; $73b0: $0e $09

jr_016_73b2:
	rrca                                             ; $73b2: $0f
	ld l, a                                          ; $73b3: $6f
	and b                                            ; $73b4: $a0
	ld a, [hl-]                                      ; $73b5: $3a
	ldh [hDisp1_WX], a                                     ; $73b6: $e0 $96
	db $fc                                           ; $73b8: $fc
	ld a, b                                          ; $73b9: $78
	cp b                                             ; $73ba: $b8
	ldh [c], a                                       ; $73bb: $e2
	xor [hl]                                         ; $73bc: $ae
	ldh [c], a                                       ; $73bd: $e2
	ld a, $48                                        ; $73be: $3e $48
	ld hl, sp+$47                                    ; $73c0: $f8 $47
	ldh a, [$7d]                                     ; $73c2: $f0 $7d
	add $4e                                          ; $73c4: $c6 $4e
	ldh [$2f], a                                     ; $73c6: $e0 $2f
	jr nz, jr_016_7449                               ; $73c8: $20 $7f

	ld [hl+], a                                      ; $73ca: $22
	ld a, a                                          ; $73cb: $7f
	ld e, $7b                                        ; $73cc: $1e $7b
	jr nz, jr_016_7448                               ; $73ce: $20 $78

	sub b                                            ; $73d0: $90
	di                                               ; $73d1: $f3
	sbc b                                            ; $73d2: $98
	dec e                                            ; $73d3: $1d
	rra                                              ; $73d4: $1f
	inc hl                                           ; $73d5: $23
	ccf                                              ; $73d6: $3f
	ld d, [hl]                                       ; $73d7: $56
	ld a, a                                          ; $73d8: $7f
	ld l, l                                          ; $73d9: $6d
	db $dd                                           ; $73da: $dd
	ld a, a                                          ; $73db: $7f
	sbc b                                            ; $73dc: $98
	ld a, [hl]                                       ; $73dd: $7e
	ld a, a                                          ; $73de: $7f
	ld h, c                                          ; $73df: $61
	ccf                                              ; $73e0: $3f
	ld sp, $90ff                                     ; $73e1: $31 $ff $90
	pop af                                           ; $73e4: $f1
	rst SubAFromDE                                          ; $73e5: $df
	ret nz                                           ; $73e6: $c0

	sbc [hl]                                         ; $73e7: $9e
	and b                                            ; $73e8: $a0
	sbc $e0                                          ; $73e9: $de $e0
	ld a, c                                          ; $73eb: $79
	ld b, l                                          ; $73ec: $45
	sbc l                                            ; $73ed: $9d
	ld b, b                                          ; $73ee: $40
	add b                                            ; $73ef: $80
	ld a, c                                          ; $73f0: $79
	ccf                                              ; $73f1: $3f
	rst SubAFromDE                                          ; $73f2: $df
	add b                                            ; $73f3: $80
	jr c, jr_016_73b2                                ; $73f4: $38 $bc

	sbc $07                                          ; $73f6: $de $07
	sbc e                                            ; $73f8: $9b
	ld c, $0f                                        ; $73f9: $0e $0f
	inc c                                            ; $73fb: $0c
	rrca                                             ; $73fc: $0f
	ld l, h                                          ; $73fd: $6c
	ld [hl], b                                       ; $73fe: $70

Call_016_73ff:
	di                                               ; $73ff: $f3
	rst SubAFromDE                                          ; $7400: $df
	ldh [hDisp1_LCDC], a                                     ; $7401: $e0 $8f
	ret c                                            ; $7403: $d8

	ld hl, sp+$64                                    ; $7404: $f8 $64
	db $fc                                           ; $7406: $fc
	cp b                                             ; $7407: $b8
	db $fc                                           ; $7408: $fc
	add $fe                                          ; $7409: $c6 $fe
	ld a, [$fe7e]                                    ; $740b: $fa $7e $fe
	ld b, $fc                                        ; $740e: $06 $fc
	inc l                                            ; $7410: $2c
	ld hl, sp+$58                                    ; $7411: $f8 $58
	ld b, a                                          ; $7413: $47
	ret nc                                           ; $7414: $d0

	ld b, h                                          ; $7415: $44
	ld b, b                                          ; $7416: $40
	ld b, a                                          ; $7417: $47
	ret nc                                           ; $7418: $d0

	inc d                                            ; $7419: $14
	ld b, b                                          ; $741a: $40
	ld a, [hl]                                       ; $741b: $7e
	jp z, $9374                                      ; $741c: $ca $74 $93

	db $dd                                           ; $741f: $dd
	rrca                                             ; $7420: $0f
	inc [hl]                                         ; $7421: $34
	ld b, b                                          ; $7422: $40
	ld a, [hl]                                       ; $7423: $7e
	ld [$3c8f], a                                    ; $7424: $ea $8f $3c
	db $fc                                           ; $7427: $fc
	ld l, d                                          ; $7428: $6a
	cp $de                                           ; $7429: $fe $de
	cp $bc                                           ; $742b: $fe $bc
	db $f4                                           ; $742d: $f4
	db $fc                                           ; $742e: $fc
	db $e4                                           ; $742f: $e4
	ld hl, sp+$10                                    ; $7430: $f8 $10
	db $fc                                           ; $7432: $fc

jr_016_7433:
	inc d                                            ; $7433: $14
	ld hl, sp-$78                                    ; $7434: $f8 $88
	ld [hl], h                                       ; $7436: $74
	sub b                                            ; $7437: $90
	ld b, a                                          ; $7438: $47
	ret nc                                           ; $7439: $d0

	ld b, h                                          ; $743a: $44
	ld h, b                                          ; $743b: $60
	ld bc, $8701                                     ; $743c: $01 $01 $87
	sbc $fe                                          ; $743f: $de $fe
	cp h                                             ; $7441: $bc
	db $f4                                           ; $7442: $f4
	db $fc                                           ; $7443: $fc
	db $e4                                           ; $7444: $e4
	ld hl, sp+$10                                    ; $7445: $f8 $10
	db $fc                                           ; $7447: $fc

jr_016_7448:
	inc d                                            ; $7448: $14

jr_016_7449:
	ld hl, sp-$78                                    ; $7449: $f8 $88
	ldh a, [$f0]                                     ; $744b: $f0 $f0
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	ret nz                                           ; $744f: $c0

	ret nz                                           ; $7450: $c0

	jr nz, jr_016_7433                               ; $7451: $20 $e0

	jr nz, @-$1e                                     ; $7453: $20 $e0

	ld b, b                                          ; $7455: $40
	ret nz                                           ; $7456: $c0

	push af                                          ; $7457: $f5
	sub [hl]                                         ; $7458: $96
	inc bc                                           ; $7459: $03
	ld [bc], a                                       ; $745a: $02
	rlca                                             ; $745b: $07
	rlca                                             ; $745c: $07
	inc c                                            ; $745d: $0c
	rrca                                             ; $745e: $0f
	ld [$0a0f], sp                                   ; $745f: $08 $0f $0a
	ld a, e                                          ; $7462: $7b
	db $fc                                           ; $7463: $fc
	adc a                                            ; $7464: $8f
	dec b                                            ; $7465: $05
	rlca                                             ; $7466: $07
	ld b, $07                                        ; $7467: $06 $07
	rrca                                             ; $7469: $0f
	add hl, bc                                       ; $746a: $09
	rra                                              ; $746b: $1f
	db $10                                           ; $746c: $10

jr_016_746d:
	cpl                                              ; $746d: $2f
	jr c, jr_016_749b                                ; $746e: $38 $2b

	inc a                                            ; $7470: $3c
	add hl, hl                                       ; $7471: $29
	ld a, $2f                                        ; $7472: $3e $2f
	ccf                                              ; $7474: $3f
	db $fd                                           ; $7475: $fd
	add e                                            ; $7476: $83
	ldh [$60], a                                     ; $7477: $e0 $60
	ldh a, [$f0]                                     ; $7479: $f0 $f0
	jr nc, jr_016_746d                               ; $747b: $30 $f0

	db $10                                           ; $747d: $10
	ldh a, [rOBP0]                                   ; $747e: $f0 $48
	ld hl, sp+$10                                    ; $7480: $f8 $10
	ldh a, [$a0]                                     ; $7482: $f0 $a0
	ldh [$60], a                                     ; $7484: $e0 $60
	ldh [$f0], a                                     ; $7486: $e0 $f0
	sub b                                            ; $7488: $90
	add sp, $18                                      ; $7489: $e8 $18
	db $f4                                           ; $748b: $f4
	inc e                                            ; $748c: $1c
	call nc, $343c                                   ; $748d: $d4 $3c $34
	db $fc                                           ; $7490: $fc
	ldh a, [c]                                       ; $7491: $f2
	cp $47                                           ; $7492: $fe $47
	ret nc                                           ; $7494: $d0

	sub l                                            ; $7495: $95
	jr c, jr_016_74d7                                ; $7496: $38 $3f

	dec de                                           ; $7498: $1b
	rra                                              ; $7499: $1f
	add hl, de                                       ; $749a: $19

jr_016_749b:
	rra                                              ; $749b: $1f
	dec d                                            ; $749c: $15
	rla                                              ; $749d: $17
	dec b                                            ; $749e: $05
	rlca                                             ; $749f: $07
	ld [hl], a                                       ; $74a0: $77
	cp $df                                           ; $74a1: $fe $df
	rrca                                             ; $74a3: $0f
	ld b, a                                          ; $74a4: $47
	ret nc                                           ; $74a5: $d0

	sbc d                                            ; $74a6: $9a
	ld e, $f2                                        ; $74a7: $1e $f2
	sbc h                                            ; $74a9: $9c
	db $fc                                           ; $74aa: $fc
	db $10                                           ; $74ab: $10
	ld a, e                                          ; $74ac: $7b
	or d                                             ; $74ad: $b2
	ld [hl], a                                       ; $74ae: $77
	ld a, d                                          ; $74af: $7a
	ld a, a                                          ; $74b0: $7f
	cp $77                                           ; $74b1: $fe $77
	ld l, [hl]                                       ; $74b3: $6e
	rst FarCall                                          ; $74b4: $f7
	db $dd                                           ; $74b5: $dd
	jr @-$6a                                         ; $74b6: $18 $94

	inc h                                            ; $74b8: $24
	inc a                                            ; $74b9: $3c
	dec [hl]                                         ; $74ba: $35
	dec a                                            ; $74bb: $3d
	rla                                              ; $74bc: $17
	rra                                              ; $74bd: $1f
	rla                                              ; $74be: $17
	inc e                                            ; $74bf: $1c
	inc h                                            ; $74c0: $24
	ccf                                              ; $74c1: $3f

jr_016_74c2:
	ld [hl+], a                                      ; $74c2: $22
	ld a, e                                          ; $74c3: $7b
	cp $9d                                           ; $74c4: $fe $9d
	dec h                                            ; $74c6: $25
	ccf                                              ; $74c7: $3f
	ld b, a                                          ; $74c8: $47
	ldh a, [$99]                                     ; $74c9: $f0 $99
	inc d                                            ; $74cb: $14
	dec de                                           ; $74cc: $1b
	ld c, $0b                                        ; $74cd: $0e $0b
	rrca                                             ; $74cf: $0f
	add hl, bc                                       ; $74d0: $09
	ld a, e                                          ; $74d1: $7b
	ld d, a                                          ; $74d2: $57
	sbc b                                            ; $74d3: $98
	ld [$0c0b], sp                                   ; $74d4: $08 $0b $0c

jr_016_74d7:
	add hl, bc                                       ; $74d7: $09
	ld c, $0f                                        ; $74d8: $0e $0f
	rrca                                             ; $74da: $0f
	ld [hl], a                                       ; $74db: $77

jr_016_74dc:
	ld l, $df                                        ; $74dc: $2e $df
	ldh [$7f], a                                     ; $74de: $e0 $7f
	xor a                                            ; $74e0: $af
	adc d                                            ; $74e1: $8a
	jr jr_016_74dc                                   ; $74e2: $18 $f8

	ld b, h                                          ; $74e4: $44
	db $fc                                           ; $74e5: $fc
	ld d, d                                          ; $74e6: $52
	cp $b1                                           ; $74e7: $fe $b1
	rst $38                                          ; $74e9: $ff
	add hl, hl                                       ; $74ea: $29
	rst AddAOntoHL                                          ; $74eb: $ef
	ld [hl], c                                       ; $74ec: $71
	rst SubAFromDE                                          ; $74ed: $df
	ldh a, [c]                                       ; $74ee: $f2
	sbc [hl]                                         ; $74ef: $9e
	call z, $b03c                                    ; $74f0: $cc $3c $b0
	ld d, b                                          ; $74f3: $50
	ret nc                                           ; $74f4: $d0

	jr nc, @+$32                                     ; $74f5: $30 $30

	sbc $f0                                          ; $74f7: $de $f0
	ld b, a                                          ; $74f9: $47
	ret nc                                           ; $74fa: $d0

	ld a, a                                          ; $74fb: $7f
	rst FarCall                                          ; $74fc: $f7
	ld [hl], a                                       ; $74fd: $77
	pop af                                           ; $74fe: $f1
	ld l, a                                          ; $74ff: $6f
	ld h, d                                          ; $7500: $62
	ld [hl], a                                       ; $7501: $77
	ld h, b                                          ; $7502: $60
	ld b, a                                          ; $7503: $47
	ret nc                                           ; $7504: $d0

	ld a, a                                          ; $7505: $7f
	ld h, h                                          ; $7506: $64
	sbc [hl]                                         ; $7507: $9e
	sub b                                            ; $7508: $90
	ld a, e                                          ; $7509: $7b
	db $fc                                           ; $750a: $fc
	ld d, a                                          ; $750b: $57
	ld h, b                                          ; $750c: $60
	sub a                                            ; $750d: $97
	inc b                                            ; $750e: $04
	inc c                                            ; $750f: $0c
	jr c, jr_016_7536                                ; $7510: $38 $24

	ld a, $02                                        ; $7512: $3e $02
	inc a                                            ; $7514: $3c
	inc h                                            ; $7515: $24
	cpl                                              ; $7516: $2f
	ld h, b                                          ; $7517: $60
	sub e                                            ; $7518: $93
	inc d                                            ; $7519: $14
	nop                                              ; $751a: $00
	ret c                                            ; $751b: $d8

	inc b                                            ; $751c: $04
	ld a, $22                                        ; $751d: $3e $22
	ld l, [hl]                                       ; $751f: $6e
	db $10                                           ; $7520: $10
	ld [hl], $00                                     ; $7521: $36 $00
	rlca                                             ; $7523: $07
	inc b                                            ; $7524: $04
	scf                                              ; $7525: $37
	ldh [hDisp1_OBP1], a                                     ; $7526: $e0 $94
	inc b                                            ; $7528: $04
	nop                                              ; $7529: $00
	inc e                                            ; $752a: $1c
	nop                                              ; $752b: $00
	ld [hl-], a                                      ; $752c: $32
	ld [hl+], a                                      ; $752d: $22
	ld h, $00                                        ; $752e: $26 $00
	ld [hl-], a                                      ; $7530: $32
	nop                                              ; $7531: $00
	dec b                                            ; $7532: $05
	inc sp                                           ; $7533: $33
	ldh [$fc], a                                     ; $7534: $e0 $fc

jr_016_7536:
	rst SubAFromDE                                          ; $7536: $df
	jr nz, @+$01                                     ; $7537: $20 $ff

	sbc [hl]                                         ; $7539: $9e
	db $10                                           ; $753a: $10
	cpl                                              ; $753b: $2f
	and b                                            ; $753c: $a0
	sbc h                                            ; $753d: $9c
	ld [bc], a                                       ; $753e: $02
	rst SubAFromDE                                          ; $753f: $df
	jr jr_016_74c2                                   ; $7540: $18 $80

	add hl, sp                                       ; $7542: $39
	add hl, hl                                       ; $7543: $29
	dec sp                                           ; $7544: $3b
	ld a, [hl+]                                      ; $7545: $2a
	add hl, sp                                       ; $7546: $39
	add hl, bc                                       ; $7547: $09
	ld h, l                                          ; $7548: $65
	ld d, l                                          ; $7549: $55
	call c, $dcbc                                    ; $754a: $dc $bc $dc
	or h                                             ; $754d: $b4
	ld a, h                                          ; $754e: $7c
	ld b, h                                          ; $754f: $44
	inc d                                            ; $7550: $14
	inc l                                            ; $7551: $2c
	ld a, [hl-]                                      ; $7552: $3a
	ld c, $57                                        ; $7553: $0e $57
	ld sp, $bddf                                     ; $7555: $31 $df $bd
	cp $81                                           ; $7558: $fe $81
	adc [hl]                                         ; $755a: $8e
	push af                                          ; $755b: $f5
	ld a, [hl]                                       ; $755c: $7e
	ld [hl], a                                       ; $755d: $77
	ccf                                              ; $755e: $3f
	scf                                              ; $755f: $37

Jump_016_7560:
	nop                                              ; $7560: $00
	sub h                                            ; $7561: $94
	nop                                              ; $7562: $00
	db $fc                                           ; $7563: $fc
	db $fc                                           ; $7564: $fc
	ld a, [$fa06]                                    ; $7565: $fa $06 $fa
	ld b, $fc                                        ; $7568: $06 $fc
	call c, Call_016_5070                            ; $756a: $dc $70 $50
	scf                                              ; $756d: $37
	cp $47                                           ; $756e: $fe $47
	ret nc                                           ; $7570: $d0

	adc a                                            ; $7571: $8f
	ld e, a                                          ; $7572: $5f
	ld [hl], l                                       ; $7573: $75
	ld e, [hl]                                       ; $7574: $5e
	ld [hl], l                                       ; $7575: $75
	ld e, [hl]                                       ; $7576: $5e
	dec [hl]                                         ; $7577: $35
	call c, $dfb7                                    ; $7578: $dc $b7 $df
	or a                                             ; $757b: $b7
	cp a                                             ; $757c: $bf
	db $f4                                           ; $757d: $f4
	rra                                              ; $757e: $1f
	inc d                                            ; $757f: $14
	inc d                                            ; $7580: $14
	rra                                              ; $7581: $1f
	cpl                                              ; $7582: $2f
	jp z, $fe7f                                      ; $7583: $ca $7f $fe

	ld a, a                                          ; $7586: $7f
	or b                                             ; $7587: $b0
	sbc c                                            ; $7588: $99
	cp $02                                           ; $7589: $fe $02
	cp $02                                           ; $758b: $fe $02
	ld [bc], a                                       ; $758d: $02
	cp $ef                                           ; $758e: $fe $ef
	rst SubAFromDE                                          ; $7590: $df
	ld a, a                                          ; $7591: $7f
	sbc c                                            ; $7592: $99
	rst $38                                          ; $7593: $ff
	add b                                            ; $7594: $80
	cp a                                             ; $7595: $bf
	ret nz                                           ; $7596: $c0

	ld b, b                                          ; $7597: $40
	ld a, a                                          ; $7598: $7f
	db $eb                                           ; $7599: $eb
	rst SubAFromDE                                          ; $759a: $df
	inc b                                            ; $759b: $04
	sub a                                            ; $759c: $97
	cp $fa                                           ; $759d: $fe $fa
	rst $38                                          ; $759f: $ff
	ld bc, $01ff                                     ; $75a0: $01 $ff $01
	ld bc, $fbff                                     ; $75a3: $01 $ff $fb
	rst SubAFromDE                                          ; $75a6: $df
	ld bc, $1fde                                     ; $75a7: $01 $de $1f
	sbc [hl]                                         ; $75aa: $9e
	ld de, $fe7b                                     ; $75ab: $11 $7b $fe
	sbc [hl]                                         ; $75ae: $9e
	dec d                                            ; $75af: $15
	ld [hl], e                                       ; $75b0: $73
	cp $5f                                           ; $75b1: $fe $5f
	or $77                                           ; $75b3: $f6 $77
	db $f4                                           ; $75b5: $f4
	ld a, e                                          ; $75b6: $7b
	ld a, [$d6df]                                    ; $75b7: $fa $df $d6
	sub a                                            ; $75ba: $97
	ld a, a                                          ; $75bb: $7f
	xor c                                            ; $75bc: $a9
	db $fd                                           ; $75bd: $fd
	xor e                                            ; $75be: $ab
	ld [hl-], a                                      ; $75bf: $32
	ld l, [hl]                                       ; $75c0: $6e
	rst $38                                          ; $75c1: $ff
	rst AddAOntoHL                                          ; $75c2: $ef
	ld [hl], a                                       ; $75c3: $77
	jp z, $fe8d                                      ; $75c4: $ca $8d $fe

	sub $ba                                          ; $75c7: $d6 $ba
	sub $ff                                          ; $75c9: $d6 $ff
	ld bc, $f709                                     ; $75cb: $01 $09 $f7
	or $ba                                           ; $75ce: $f6 $ba
	rst SubAFromDE                                          ; $75d0: $df
	xor c                                            ; $75d1: $a9
	db $dd                                           ; $75d2: $dd
	ld l, [hl]                                       ; $75d3: $6e
	ld a, $c3                                        ; $75d4: $3e $c3
	cp a                                             ; $75d6: $bf
	jp $d047                                         ; $75d7: $c3 $47 $d0


	ld [hl], a                                       ; $75da: $77
	cp $93                                           ; $75db: $fe $93
	rrca                                             ; $75dd: $0f
	dec d                                            ; $75de: $15
	ccf                                              ; $75df: $3f
	dec l                                            ; $75e0: $2d
	ccf                                              ; $75e1: $3f
	dec l                                            ; $75e2: $2d
	ld h, a                                          ; $75e3: $67
	ld d, l                                          ; $75e4: $55
	ld a, e                                          ; $75e5: $7b
	ld e, l                                          ; $75e6: $5d
	ld e, c                                          ; $75e7: $59
	ld a, a                                          ; $75e8: $7f
	ld b, a                                          ; $75e9: $47
	ret nc                                           ; $75ea: $d0

	add b                                            ; $75eb: $80
	ld a, [hl]                                       ; $75ec: $7e
	ld l, d                                          ; $75ed: $6a
	ld a, $2a                                        ; $75ee: $3e $2a
	ld e, $2a                                        ; $75f0: $1e $2a
	ld a, [hl]                                       ; $75f2: $7e
	ld e, d                                          ; $75f3: $5a
	ld a, $5a                                        ; $75f4: $3e $5a
	cp $b2                                           ; $75f6: $fe $b2
	sbc d                                            ; $75f8: $9a
	ld d, [hl]                                       ; $75f9: $56
	call nc, $01dc                                   ; $75fa: $d4 $dc $01
	ld bc, $0203                                     ; $75fd: $01 $03 $02
	inc bc                                           ; $7600: $03
	ld [bc], a                                       ; $7601: $02
	ld b, $05                                        ; $7602: $06 $05
	dec e                                            ; $7604: $1d
	dec de                                           ; $7605: $1b
	ccf                                              ; $7606: $3f
	jr nz, jr_016_7648                               ; $7607: $20 $3f

	jr nz, jr_016_7642                               ; $7609: $20 $37

	sbc h                                            ; $760b: $9c
	cpl                                              ; $760c: $2f
	jr nc, @+$2a                                     ; $760d: $30 $28

	ld l, a                                          ; $760f: $6f
	cp $7f                                           ; $7610: $fe $7f
	or $7f                                           ; $7612: $f6 $7f
	ldh a, [c]                                       ; $7614: $f2
	sbc e                                            ; $7615: $9b
	jr nc, jr_016_7647                               ; $7616: $30 $2f

	scf                                              ; $7618: $37
	cpl                                              ; $7619: $2f
	reti                                             ; $761a: $d9


	add b                                            ; $761b: $80
	sbc $fc                                          ; $761c: $de $fc
	sbc b                                            ; $761e: $98
	inc b                                            ; $761f: $04
	db $fc                                           ; $7620: $fc
	inc b                                            ; $7621: $04
	db $ec                                           ; $7622: $ec
	db $f4                                           ; $7623: $f4
	inc c                                            ; $7624: $0c
	inc d                                            ; $7625: $14
	ld l, a                                          ; $7626: $6f
	cp $7f                                           ; $7627: $fe $7f
	or $7f                                           ; $7629: $f6 $7f
	ldh a, [c]                                       ; $762b: $f2
	sbc e                                            ; $762c: $9b
	inc c                                            ; $762d: $0c
	db $f4                                           ; $762e: $f4
	db $ec                                           ; $762f: $ec
	db $f4                                           ; $7630: $f4
	ld b, a                                          ; $7631: $47
	ret nc                                           ; $7632: $d0

	ld d, a                                          ; $7633: $57
	ldh a, [$7f]                                     ; $7634: $f0 $7f
	cp $7f                                           ; $7636: $fe $7f
	db $fd                                           ; $7638: $fd
	ld b, a                                          ; $7639: $47
	ret nc                                           ; $763a: $d0

	ld d, a                                          ; $763b: $57
	ldh a, [$7f]                                     ; $763c: $f0 $7f
	cp $7f                                           ; $763e: $fe $7f
	db $fd                                           ; $7640: $fd
	rst SubAFromDE                                          ; $7641: $df

jr_016_7642:
	dec de                                           ; $7642: $1b
	ld a, [hl]                                       ; $7643: $7e
	sbc d                                            ; $7644: $9a
	add e                                            ; $7645: $83
	inc e                                            ; $7646: $1c

jr_016_7647:
	rla                                              ; $7647: $17

jr_016_7648:
	rra                                              ; $7648: $1f
	rla                                              ; $7649: $17
	scf                                              ; $764a: $37
	ld l, $3b                                        ; $764b: $2e $3b
	ld a, [hl+]                                      ; $764d: $2a
	dec sp                                           ; $764e: $3b
	ld a, [hl+]                                      ; $764f: $2a
	ld h, e                                          ; $7650: $63
	ld d, d                                          ; $7651: $52
	ld a, e                                          ; $7652: $7b
	ld e, d                                          ; $7653: $5a
	rst $38                                          ; $7654: $ff
	adc [hl]                                         ; $7655: $8e
	rst $38                                          ; $7656: $ff
	xor b                                            ; $7657: $a8
	ld a, h                                          ; $7658: $7c
	ld l, e                                          ; $7659: $6b
	ccf                                              ; $765a: $3f
	ld a, [hl+]                                      ; $765b: $2a
	ccf                                              ; $765c: $3f
	inc l                                            ; $765d: $2c
	dec a                                            ; $765e: $3d
	ld a, [hl+]                                      ; $765f: $2a
	ld a, [hl-]                                      ; $7660: $3a
	cpl                                              ; $7661: $2f
	sbc $fe                                          ; $7662: $de $fe
	sbc d                                            ; $7664: $9a
	ld [bc], a                                       ; $7665: $02
	add d                                            ; $7666: $82
	ld a, [hl]                                       ; $7667: $7e
	cp [hl]                                          ; $7668: $be
	ld a, [hl]                                       ; $7669: $7e
	ld [hl], a                                       ; $766a: $77
	jp nz, $fc9e                                     ; $766b: $c2 $9e $fc

	ld [hl], e                                       ; $766e: $73
	cp h                                             ; $766f: $bc
	sub c                                            ; $7670: $91
	cp $f6                                           ; $7671: $fe $f6
	rst $38                                          ; $7673: $ff
	ld bc, $fd03                                     ; $7674: $01 $03 $fd
	ld a, a                                          ; $7677: $7f
	or c                                             ; $7678: $b1
	rst FarCall                                          ; $7679: $f7
	set 7, a                                         ; $767a: $cb $ff
	add hl, bc                                       ; $767c: $09
	ld [$47fe], sp                                   ; $767d: $08 $fe $47
	ret nc                                           ; $7680: $d0

jr_016_7681:
	ld a, a                                          ; $7681: $7f
	cp h                                             ; $7682: $bc
	sub c                                            ; $7683: $91
	ccf                                              ; $7684: $3f
	ld l, $3f                                        ; $7685: $2e $3f
	jr z, jr_016_76c7                                ; $7687: $28 $3e

	cpl                                              ; $7689: $2f
	add hl, sp                                       ; $768a: $39
	add hl, hl                                       ; $768b: $29
	ccf                                              ; $768c: $3f
	cpl                                              ; $768d: $2f
	ccf                                              ; $768e: $3f
	jr z, jr_016_7699                                ; $768f: $28 $08

	rra                                              ; $7691: $1f
	ld b, a                                          ; $7692: $47
	ret nc                                           ; $7693: $d0

	add b                                            ; $7694: $80
	ld hl, sp+$08                                    ; $7695: $f8 $08
	jr jr_016_7681                                   ; $7697: $18 $e8

jr_016_7699:
	ld hl, sp-$18                                    ; $7699: $f8 $e8
	xor b                                            ; $769b: $a8
	ld e, b                                          ; $769c: $58
	ret nc                                           ; $769d: $d0

	or b                                             ; $769e: $b0
	cp [hl]                                          ; $769f: $be
	ld c, [hl]                                       ; $76a0: $4e
	ld e, a                                          ; $76a1: $5f
	pop hl                                           ; $76a2: $e1
	and c                                            ; $76a3: $a1
	cp a                                             ; $76a4: $bf
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	dec a                                            ; $76a7: $3d
	dec l                                            ; $76a8: $2d
	ld a, a                                          ; $76a9: $7f
	ld b, d                                          ; $76aa: $42
	ld a, a                                          ; $76ab: $7f
	dec [hl]                                         ; $76ac: $35
	ld a, a                                          ; $76ad: $7f
	ld a, a                                          ; $76ae: $7f
	ccf                                              ; $76af: $3f
	jr nz, @+$21                                     ; $76b0: $20 $1f

	dec e                                            ; $76b2: $1d
	ccf                                              ; $76b3: $3f
	add b                                            ; $76b4: $80
	jr nz, jr_016_7736                               ; $76b5: $20 $7f

	ld e, l                                          ; $76b7: $5d
	ld a, a                                          ; $76b8: $7f
	ld b, b                                          ; $76b9: $40

jr_016_76ba:
	ccf                                              ; $76ba: $3f
	add hl, sp                                       ; $76bb: $39
	dec de                                           ; $76bc: $1b
	dec d                                            ; $76bd: $15
	scf                                              ; $76be: $37
	dec l                                            ; $76bf: $2d
	ld l, a                                          ; $76c0: $6f
	ld e, l                                          ; $76c1: $5d
	scf                                              ; $76c2: $37
	dec [hl]                                         ; $76c3: $35
	ld [bc], a                                       ; $76c4: $02
	ld [bc], a                                       ; $76c5: $02
	nop                                              ; $76c6: $00

jr_016_76c7:
	nop                                              ; $76c7: $00

jr_016_76c8:
	ldh [$60], a                                     ; $76c8: $e0 $60
	ldh a, [rAUD1SWEEP]                              ; $76ca: $f0 $10
	ldh [$a0], a                                     ; $76cc: $e0 $a0
	ret nz                                           ; $76ce: $c0

	ret nz                                           ; $76cf: $c0

	ldh [rAUD4LEN], a                                ; $76d0: $e0 $20
	db $e3                                           ; $76d2: $e3
	and e                                            ; $76d3: $a3
	sub a                                            ; $76d4: $97
	db $e3                                           ; $76d5: $e3
	jr nz, jr_016_76ba                               ; $76d6: $20 $e2

	db $e3                                           ; $76d8: $e3
	di                                               ; $76d9: $f3
	inc de                                           ; $76da: $13
	ldh a, [$d0]                                     ; $76db: $f0 $d0
	ld [hl], l                                       ; $76dd: $75
	cp $7f                                           ; $76de: $fe $7f
	cp [hl]                                          ; $76e0: $be
	rst SubAFromDE                                          ; $76e1: $df
	ld h, b                                          ; $76e2: $60
	di                                               ; $76e3: $f3
	sbc $ff                                          ; $76e4: $de $ff
	ld a, d                                          ; $76e6: $7a
	jr z, jr_016_76c8                                ; $76e7: $28 $df

	rst $38                                          ; $76e9: $ff
	di                                               ; $76ea: $f3
	ld a, a                                          ; $76eb: $7f
	ret nz                                           ; $76ec: $c0

	add l                                            ; $76ed: $85
	pop af                                           ; $76ee: $f1
	ld de, $a0e1                                     ; $76ef: $11 $e1 $a0
	pop bc                                           ; $76f2: $c1
	pop bc                                           ; $76f3: $c1
	pop hl                                           ; $76f4: $e1
	ld hl, $a0e0                                     ; $76f5: $21 $e0 $a0
	ldh [rAUD4LEN], a                                ; $76f8: $e0 $20
	ldh [$e0], a                                     ; $76fa: $e0 $e0
	ldh a, [rAUD1SWEEP]                              ; $76fc: $f0 $10

jr_016_76fe:
	ldh a, [$d0]                                     ; $76fe: $f0 $d0
	ld [hl], e                                       ; $7700: $73
	ld d, e                                          ; $7701: $53

jr_016_7702:
	ld [hl], e                                       ; $7702: $73
	ld d, b                                          ; $7703: $50
	jp nc, $63b3                                     ; $7704: $d2 $b3 $63

	ld h, e                                          ; $7707: $63
	ei                                               ; $7708: $fb
	ld [hl], a                                       ; $7709: $77
	inc e                                            ; $770a: $1c
	ld a, l                                          ; $770b: $7d
	or [hl]                                          ; $770c: $b6
	rst SubAFromDE                                          ; $770d: $df
	cp $2f                                           ; $770e: $fe $2f
	or [hl]                                          ; $7710: $b6
	adc l                                            ; $7711: $8d
	db $e3                                           ; $7712: $e3
	ld h, e                                          ; $7713: $63
	di                                               ; $7714: $f3
	db $10                                           ; $7715: $10
	ldh [c], a                                       ; $7716: $e2
	and e                                            ; $7717: $a3
	jp $e0c3                                         ; $7718: $c3 $c3 $e0


	jr nz, jr_016_76fe                               ; $771b: $20 $e1

	and c                                            ; $771d: $a1
	pop hl                                           ; $771e: $e1
	jr nz, jr_016_7702                               ; $771f: $20 $e1

	pop hl                                           ; $7721: $e1
	pop af                                           ; $7722: $f1
	ld de, $c04f                                     ; $7723: $11 $4f $c0
	ld e, a                                          ; $7726: $5f
	call nc, $b85f                                   ; $7727: $d4 $5f $b8
	ld d, a                                          ; $772a: $57
	ret nz                                           ; $772b: $c0

	rst SubAFromDE                                          ; $772c: $df
	ld de, $de78                                     ; $772d: $11 $78 $de
	sbc h                                            ; $7730: $9c
	dec sp                                           ; $7731: $3b
	ld a, a                                          ; $7732: $7f
	ld b, h                                          ; $7733: $44
	ld a, e                                          ; $7734: $7b
	db $fc                                           ; $7735: $fc

jr_016_7736:
	add b                                            ; $7736: $80
	ld b, a                                          ; $7737: $47
	ccf                                              ; $7738: $3f
	jr c, jr_016_77ba                                ; $7739: $38 $7f

	ld b, [hl]                                       ; $773b: $46
	dec sp                                           ; $773c: $3b
	ld a, [hl-]                                      ; $773d: $3a
	ld a, a                                          ; $773e: $7f
	ld b, [hl]                                       ; $773f: $46
	ld a, a                                          ; $7740: $7f
	ld d, h                                          ; $7741: $54
	ld a, l                                          ; $7742: $7d
	ld d, a                                          ; $7743: $57
	ld a, [hl]                                       ; $7744: $7e
	ld d, [hl]                                       ; $7745: $56
	ld a, h                                          ; $7746: $7c
	ld b, h                                          ; $7747: $44
	jr c, jr_016_7782                                ; $7748: $38 $38

	ret nz                                           ; $774a: $c0

	ret nz                                           ; $774b: $c0

	and b                                            ; $774c: $a0
	ld h, b                                          ; $774d: $60
	ldh a, [$50]                                     ; $774e: $f0 $50
	pop hl                                           ; $7750: $e1
	ld h, c                                          ; $7751: $61
	di                                               ; $7752: $f3
	ld [de], a                                       ; $7753: $12
	rst JumpTable                                          ; $7754: $c7
	ld b, l                                          ; $7755: $45
	add b                                            ; $7756: $80
	rst GetHLinHL                                          ; $7757: $cf
	bit 0, l                                         ; $7758: $cb $45
	push bc                                          ; $775a: $c5
	pop bc                                           ; $775b: $c1
	pop bc                                           ; $775c: $c1
	ld b, e                                          ; $775d: $43
	jp nz, $e263                                     ; $775e: $c2 $63 $e2

	db $e3                                           ; $7761: $e3
	and d                                            ; $7762: $a2
	db $e3                                           ; $7763: $e3
	and d                                            ; $7764: $a2
	or e                                             ; $7765: $b3
	jp nc, Jump_016_7253                             ; $7766: $d2 $53 $72

	ld sp, $0031                                     ; $7769: $31 $31 $00
	nop                                              ; $776c: $00
	ld h, b                                          ; $776d: $60
	ld h, b                                          ; $776e: $60
	ldh a, [hDisp1_SCY]                                     ; $776f: $f0 $90
	ld hl, sp+$68                                    ; $7771: $f8 $68
	sbc h                                            ; $7773: $9c
	sub h                                            ; $7774: $94
	ld c, $98                                        ; $7775: $0e $98
	ld a, [bc]                                       ; $7777: $0a
	rst $38                                          ; $7778: $ff
	db $fd                                           ; $7779: $fd
	ld a, [$f80a]                                    ; $777a: $fa $0a $f8
	ld hl, sp+$7a                                    ; $777d: $f8 $7a
	ld c, b                                          ; $777f: $48
	sbc d                                            ; $7780: $9a
	db $f4                                           ; $7781: $f4

jr_016_7782:
	sbc h                                            ; $7782: $9c
	sub h                                            ; $7783: $94
	sbc h                                            ; $7784: $9c
	sub h                                            ; $7785: $94
	halt                                             ; $7786: $76
	ld [hl], d                                       ; $7787: $72

jr_016_7788:
	rst SubAFromDE                                          ; $7788: $df
	ld hl, sp+$4d                                    ; $7789: $f8 $4d
	ld b, $7e                                        ; $778b: $06 $7e
	call nz, Call_016_609b                           ; $778d: $c4 $9b $60
	ld a, a                                          ; $7790: $7f
	ccf                                              ; $7791: $3f
	ccf                                              ; $7792: $3f
	jp hl                                            ; $7793: $e9


	rst SubAFromDE                                          ; $7794: $df
	db $fc                                           ; $7795: $fc
	ld b, a                                          ; $7796: $47
	jr jr_016_7813                                   ; $7797: $18 $7a

	add d                                            ; $7799: $82
	sbc [hl]                                         ; $779a: $9e
	dec a                                            ; $779b: $3d
	ld a, d                                          ; $779c: $7a
	add d                                            ; $779d: $82
	sub e                                            ; $779e: $93
	ld e, e                                          ; $779f: $5b
	ld a, a                                          ; $77a0: $7f
	ld e, d                                          ; $77a1: $5a
	ld a, a                                          ; $77a2: $7f
	ld e, e                                          ; $77a3: $5b
	ld h, a                                          ; $77a4: $67
	ld e, e                                          ; $77a5: $5b
	ld a, [hl]                                       ; $77a6: $7e
	ld e, e                                          ; $77a7: $5b
	ld a, a                                          ; $77a8: $7f
	ld e, e                                          ; $77a9: $5b
	ld h, [hl]                                       ; $77aa: $66
	ld [hl], e                                       ; $77ab: $73
	ld a, [$607d]                                    ; $77ac: $fa $7d $60
	ld a, a                                          ; $77af: $7f
	cp $80                                           ; $77b0: $fe $80
	sbc a                                            ; $77b2: $9f
	ei                                               ; $77b3: $fb
	rst FarCall                                          ; $77b4: $f7
	cp e                                             ; $77b5: $bb
	adc $ce                                          ; $77b6: $ce $ce
	xor h                                            ; $77b8: $ac
	xor h                                            ; $77b9: $ac

jr_016_77ba:
	halt                                             ; $77ba: $76
	jp c, $defe                                      ; $77bb: $da $fe $de

	rst SubAFromDE                                          ; $77be: $df
	ld hl, $aefe                                     ; $77bf: $21 $fe $ae
	halt                                             ; $77c2: $76
	cp $ff                                           ; $77c3: $fe $ff
	ld bc, $fe76                                     ; $77c5: $01 $76 $fe
	ld [hl], d                                       ; $77c8: $72
	cp $fb                                           ; $77c9: $fe $fb
	db $dd                                           ; $77cb: $dd
	ld a, [hl]                                       ; $77cc: $7e
	add [hl]                                         ; $77cd: $86
	db $fc                                           ; $77ce: $fc
	call nc, $98dc                                   ; $77cf: $d4 $dc $98
	or h                                             ; $77d2: $b4
	cp h                                             ; $77d3: $bc
	ld [hl], h                                       ; $77d4: $74
	db $fc                                           ; $77d5: $fc
	db $e4                                           ; $77d6: $e4
	inc e                                            ; $77d7: $1c
	inc e                                            ; $77d8: $1c
	xor [hl]                                         ; $77d9: $ae
	add l                                            ; $77da: $85
	pop af                                           ; $77db: $f1
	reti                                             ; $77dc: $d9


	rst $38                                          ; $77dd: $ff

jr_016_77de:
	ld sp, hl                                        ; $77de: $f9
	sbc c                                            ; $77df: $99
	ld a, [bc]                                       ; $77e0: $0a
	and e                                            ; $77e1: $a3
	db $10                                           ; $77e2: $10
	ld [bc], a                                       ; $77e3: $02
	inc h                                            ; $77e4: $24
	jr nz, jr_016_77de                               ; $77e5: $20 $f7

	sub a                                            ; $77e7: $97
	ei                                               ; $77e8: $fb
	xor a                                            ; $77e9: $af
	ld l, [hl]                                       ; $77ea: $6e
	rst SubAFromHL                                          ; $77eb: $d7
	jr nz, jr_016_7788                               ; $77ec: $20 $9a

	ld [hl], c                                       ; $77ee: $71
	and [hl]                                         ; $77ef: $a6
	cp $9d                                           ; $77f0: $fe $9d
	ld [$fe82], sp                                   ; $77f2: $08 $82 $fe
	add b                                            ; $77f5: $80
	cp [hl]                                          ; $77f6: $be
	push af                                          ; $77f7: $f5
	ld e, a                                          ; $77f8: $5f
	rst FarCall                                          ; $77f9: $f7
	cp a                                             ; $77fa: $bf
	xor $7b                                          ; $77fb: $ee $7b
	rst $38                                          ; $77fd: $ff
	ld b, c                                          ; $77fe: $41

Call_016_77ff:
	ld a, [bc]                                       ; $77ff: $0a
	and b                                            ; $7800: $a0
	ld [$1140], sp                                   ; $7801: $08 $40 $11
	add h                                            ; $7804: $84
	nop                                              ; $7805: $00
	add d                                            ; $7806: $82
	ld c, b                                          ; $7807: $48
	ld de, $caa8                                     ; $7808: $11 $a8 $ca
	ld [hl], h                                       ; $780b: $74
	xor e                                            ; $780c: $ab
	db $f4                                           ; $780d: $f4
	ld a, l                                          ; $780e: $7d
	or a                                             ; $780f: $b7
	xor $57                                          ; $7810: $ee $57
	dec [hl]                                         ; $7812: $35

jr_016_7813:
	adc e                                            ; $7813: $8b
	ld d, h                                          ; $7814: $54
	sbc h                                            ; $7815: $9c
	dec bc                                           ; $7816: $0b
	ld d, l                                          ; $7817: $55
	cp $4f                                           ; $7818: $fe $4f
	xor b                                            ; $781a: $a8
	sbc h                                            ; $781b: $9c
	push af                                          ; $781c: $f5
	xor a                                            ; $781d: $af
	ldh a, [rHDMA3]                                  ; $781e: $f0 $53
	ldh a, [$9d]                                     ; $7820: $f0 $9d
	rst $38                                          ; $7822: $ff
	xor d                                            ; $7823: $aa
	ld l, a                                          ; $7824: $6f
	sub l                                            ; $7825: $95
	ret c                                            ; $7826: $d8

	rst $38                                          ; $7827: $ff
	sbc [hl]                                         ; $7828: $9e
	ld d, l                                          ; $7829: $55
	ld c, a                                          ; $782a: $4f
	ldh a, [$9c]                                     ; $782b: $f0 $9c
	xor a                                            ; $782d: $af
	push af                                          ; $782e: $f5
	rrca                                             ; $782f: $0f
	ld d, e                                          ; $7830: $53
	ldh a, [$9d]                                     ; $7831: $f0 $9d
	xor d                                            ; $7833: $aa
	ld a, a                                          ; $7834: $7f
	ld c, a                                          ; $7835: $4f
	or b                                             ; $7836: $b0
	ld h, a                                          ; $7837: $67
	ld d, a                                          ; $7838: $57
	reti                                             ; $7839: $d9


	rst $38                                          ; $783a: $ff
	sbc $01                                          ; $783b: $de $01
	sbc d                                            ; $783d: $9a
	nop                                              ; $783e: $00
	ld bc, $d4a2                                     ; $783f: $01 $a2 $d4
	rlca                                             ; $7842: $07
	call c, $80ff                                    ; $7843: $dc $ff $80
	cp $ff                                           ; $7846: $fe $ff
	rst $38                                          ; $7848: $ff
	add e                                            ; $7849: $83
	add [hl]                                         ; $784a: $86
	ld b, h                                          ; $784b: $44
	ld [hl+], a                                      ; $784c: $22
	rra                                              ; $784d: $1f
	ld h, b                                          ; $784e: $60
	cp a                                             ; $784f: $bf
	nop                                              ; $7850: $00
	pop bc                                           ; $7851: $c1
	adc a                                            ; $7852: $8f
	rst GetHLinHL                                          ; $7853: $cf
	db $e3                                           ; $7854: $e3
	rst $38                                          ; $7855: $ff
	rst FarCall                                          ; $7856: $f7
	rst $38                                          ; $7857: $ff
	rst $38                                          ; $7858: $ff
	db $10                                           ; $7859: $10
	ld de, $1212                                     ; $785a: $11 $12 $12
	ld hl, $2a7f                                     ; $785d: $21 $7f $2a
	nop                                              ; $7860: $00
	di                                               ; $7861: $f3
	di                                               ; $7862: $f3
	rst $38                                          ; $7863: $ff
	di                                               ; $7864: $f3
	db $dd                                           ; $7865: $dd
	rst $38                                          ; $7866: $ff
	sub a                                            ; $7867: $97
	ld d, b                                          ; $7868: $50
	ld h, b                                          ; $7869: $60
	add b                                            ; $786a: $80
	ret nz                                           ; $786b: $c0

	ldh [rAUD1SWEEP], a                              ; $786c: $e0 $10
	ld a, [$de54]                                    ; $786e: $fa $54 $de
	rst $38                                          ; $7871: $ff
	sbc [hl]                                         ; $7872: $9e
	ld a, a                                          ; $7873: $7f
	db $dd                                           ; $7874: $dd
	rst $38                                          ; $7875: $ff
	sub d                                            ; $7876: $92
	db $ec                                           ; $7877: $ec

Call_016_7878:
	and a                                            ; $7878: $a7
	and [hl]                                         ; $7879: $a6
	db $e4                                           ; $787a: $e4
	db $e3                                           ; $787b: $e3
	inc d                                            ; $787c: $14
	rra                                              ; $787d: $1f
	push af                                          ; $787e: $f5
	rra                                              ; $787f: $1f
	ld a, b                                          ; $7880: $78
	ld a, c                                          ; $7881: $79
	ccf                                              ; $7882: $3f
	ld a, a                                          ; $7883: $7f
	ld a, e                                          ; $7884: $7b
	xor $73                                          ; $7885: $ee $73
	or b                                             ; $7887: $b0
	sbc l                                            ; $7888: $9d
	ld [bc], a                                       ; $7889: $02
	inc b                                            ; $788a: $04
	ld h, e                                          ; $788b: $63
	or b                                             ; $788c: $b0

jr_016_788d:
	sbc e                                            ; $788d: $9b
	ldh [$b0], a                                     ; $788e: $e0 $b0
	or b                                             ; $7890: $b0
	ld h, b                                          ; $7891: $60
	db $fd                                           ; $7892: $fd
	sbc h                                            ; $7893: $9c
	cp a                                             ; $7894: $bf
	sbc a                                            ; $7895: $9f
	sbc a                                            ; $7896: $9f
	call c, $9bff                                    ; $7897: $dc $ff $9b
	dec b                                            ; $789a: $05
	dec bc                                           ; $789b: $0b
	dec bc                                           ; $789c: $0b
	ld b, $fd                                        ; $789d: $06 $fd
	sbc h                                            ; $789f: $9c
	db $fd                                           ; $78a0: $fd
	ld sp, hl                                        ; $78a1: $f9
	ld sp, hl                                        ; $78a2: $f9
	call c, $deff                                    ; $78a3: $dc $ff $de
	add b                                            ; $78a6: $80
	sbc d                                            ; $78a7: $9a
	nop                                              ; $78a8: $00
	add b                                            ; $78a9: $80
	ld b, b                                          ; $78aa: $40
	jr nz, jr_016_788d                               ; $78ab: $20 $e0

	call c, $7bff                                    ; $78ad: $dc $ff $7b
	ret nz                                           ; $78b0: $c0

	sub e                                            ; $78b1: $93
	ld [$4888], sp                                   ; $78b2: $08 $88 $48
	ld c, b                                          ; $78b5: $48
	add h                                            ; $78b6: $84
	cp $54                                           ; $78b7: $fe $54
	nop                                              ; $78b9: $00
	rst GetHLinHL                                          ; $78ba: $cf
	rst GetHLinHL                                          ; $78bb: $cf
	rst $38                                          ; $78bc: $ff
	rst GetHLinHL                                          ; $78bd: $cf
	db $dd                                           ; $78be: $dd
	rst $38                                          ; $78bf: $ff
	sub c                                            ; $78c0: $91
	pop bc                                           ; $78c1: $c1
	ld h, c                                          ; $78c2: $61
	ld [hl+], a                                      ; $78c3: $22
	ld b, h                                          ; $78c4: $44
	ld hl, sp+$06                                    ; $78c5: $f8 $06
	db $fd                                           ; $78c7: $fd
	nop                                              ; $78c8: $00
	add e                                            ; $78c9: $83
	pop af                                           ; $78ca: $f1
	di                                               ; $78cb: $f3
	rst JumpTable                                          ; $78cc: $c7
	rst $38                                          ; $78cd: $ff
	rst AddAOntoHL                                          ; $78ce: $ef
	ld l, e                                          ; $78cf: $6b
	ret nc                                           ; $78d0: $d0

	sbc l                                            ; $78d1: $9d
	ld b, l                                          ; $78d2: $45
	dec hl                                           ; $78d3: $2b
	ld h, e                                          ; $78d4: $63
	ret nc                                           ; $78d5: $d0

jr_016_78d6:
	sub d                                            ; $78d6: $92
	scf                                              ; $78d7: $37
	push hl                                          ; $78d8: $e5
	ld h, l                                          ; $78d9: $65
	daa                                              ; $78da: $27
	rst JumpTable                                          ; $78db: $c7
	jr z, jr_016_78d6                                ; $78dc: $28 $f8

	xor a                                            ; $78de: $af

Call_016_78df:
	ld hl, sp+$1e                                    ; $78df: $f8 $1e
	sbc [hl]                                         ; $78e1: $9e
	db $fc                                           ; $78e2: $fc
	cp $7b                                           ; $78e3: $fe $7b
	sub b                                            ; $78e5: $90
	sub a                                            ; $78e6: $97
	ld a, [bc]                                       ; $78e7: $0a
	ld b, $01                                        ; $78e8: $06 $01
	inc bc                                           ; $78ea: $03
	rlca                                             ; $78eb: $07
	ld [$2a5f], sp                                   ; $78ec: $08 $5f $2a
	ld l, a                                          ; $78ef: $6f
	add d                                            ; $78f0: $82
	ld h, a                                          ; $78f1: $67
	ld de, $ca7a                                     ; $78f2: $11 $7a $ca
	ld d, e                                          ; $78f5: $53
	ld bc, $019e                                     ; $78f6: $01 $9e $01
	ld [hl], e                                       ; $78f9: $73
	db $e4                                           ; $78fa: $e4
	ld e, d                                          ; $78fb: $5a
	pop af                                           ; $78fc: $f1
	sbc [hl]                                         ; $78fd: $9e
	rrca                                             ; $78fe: $0f
	ld c, e                                          ; $78ff: $4b
	ldh a, [$9e]                                     ; $7900: $f0 $9e
	ldh a, [rVBK]                                    ; $7902: $f0 $4f
	ldh a, [$9e]                                     ; $7904: $f0 $9e
	add b                                            ; $7906: $80
	ld [hl], e                                       ; $7907: $73
	inc d                                            ; $7908: $14
	ld e, e                                          ; $7909: $5b
	or b                                             ; $790a: $b0
	ld a, [hl]                                       ; $790b: $7e
	adc d                                            ; $790c: $8a
	jp c, $8fff                                      ; $790d: $da $ff $8f

	inc e                                            ; $7910: $1c
	add h                                            ; $7911: $84
	ld b, h                                          ; $7912: $44
	ld [$1f68], sp                                   ; $7913: $08 $68 $1f
	ld a, [hl+]                                      ; $7916: $2a
	ld c, a                                          ; $7917: $4f
	rla                                              ; $7918: $17
	rrca                                             ; $7919: $0f
	rrca                                             ; $791a: $0f
	ld c, a                                          ; $791b: $4f
	rst AddAOntoHL                                          ; $791c: $ef
	ccf                                              ; $791d: $3f
	ld l, a                                          ; $791e: $6f
	rst SubAFromDE                                          ; $791f: $df
	jp c, Jump_016_6aff                              ; $7920: $da $ff $6a

	ld a, [hl-]                                      ; $7923: $3a
	ld a, a                                          ; $7924: $7f
	ld [hl], h                                       ; $7925: $74
	db $db                                           ; $7926: $db
	rst $38                                          ; $7927: $ff
	sbc l                                            ; $7928: $9d
	ld a, a                                          ; $7929: $7f
	ld a, b                                          ; $792a: $78
	ld l, a                                          ; $792b: $6f
	cp c                                             ; $792c: $b9
	sbc [hl]                                         ; $792d: $9e
	rst JumpTable                                          ; $792e: $c7
	ld [hl], e                                       ; $792f: $73
	inc l                                            ; $7930: $2c
	sbc $ff                                          ; $7931: $de $ff
	ld l, [hl]                                       ; $7933: $6e
	ld e, e                                          ; $7934: $5b
	ld a, a                                          ; $7935: $7f
	sbc c                                            ; $7936: $99
	adc [hl]                                         ; $7937: $8e
	ld hl, sp+$34                                    ; $7938: $f8 $34
	ld [$e8f4], a                                    ; $793a: $ea $f4 $e8
	rra                                              ; $793d: $1f
	ld hl, sp-$42                                    ; $793e: $f8 $be
	ld [hl], e                                       ; $7940: $73
	adc $9c                                          ; $7941: $ce $9c
	jr jr_016_79c1                                   ; $7943: $18 $7c

	rst $38                                          ; $7945: $ff
	and $c3                                          ; $7946: $e6 $c3
	adc a                                            ; $7948: $8f
	sbc $40                                          ; $7949: $de $40
	sbc l                                            ; $794b: $9d
	ld b, e                                          ; $794c: $43
	ld b, a                                          ; $794d: $47
	ld a, e                                          ; $794e: $7b
	ld d, c                                          ; $794f: $51
	sbc $7f                                          ; $7950: $de $7f
	add l                                            ; $7952: $85
	ld a, [hl]                                       ; $7953: $7e
	db $fc                                           ; $7954: $fc
	db $fc                                           ; $7955: $fc
	db $fd                                           ; $7956: $fd
	rst $38                                          ; $7957: $ff
	ld [bc], a                                       ; $7958: $02
	nop                                              ; $7959: $00
	ld c, $41                                        ; $795a: $0e $41
	nop                                              ; $795c: $00
	rlca                                             ; $795d: $07
	ld a, [hl+]                                      ; $795e: $2a
	rst $38                                          ; $795f: $ff
	nop                                              ; $7960: $00
	inc b                                            ; $7961: $04
	nop                                              ; $7962: $00
	or d                                             ; $7963: $b2
	ld b, d                                          ; $7964: $42
	rrca                                             ; $7965: $0f
	ccf                                              ; $7966: $3f
	rst $38                                          ; $7967: $ff
	ld [bc], a                                       ; $7968: $02
	dec b                                            ; $7969: $05
	ld a, [bc]                                       ; $796a: $0a
	ld h, c                                          ; $796b: $61
	add b                                            ; $796c: $80
	ld a, e                                          ; $796d: $7b
	ldh [$9a], a                                     ; $796e: $e0 $9a
	cp $fc                                           ; $7970: $fe $fc
	db $fc                                           ; $7972: $fc
	ldh [$8e], a                                     ; $7973: $e0 $8e
	ld a, e                                          ; $7975: $7b
	dec e                                            ; $7976: $1d
	ld d, a                                          ; $7977: $57
	add b                                            ; $7978: $80
	sbc [hl]                                         ; $7979: $9e
	rst GetHLinHL                                          ; $797a: $cf
	ld a, e                                          ; $797b: $7b
	add b                                            ; $797c: $80
	ld [hl], e                                       ; $797d: $73
	or b                                             ; $797e: $b0
	sbc [hl]                                         ; $797f: $9e
	db $fc                                           ; $7980: $fc
	ld e, a                                          ; $7981: $5f
	or b                                             ; $7982: $b0
	cp $7e                                           ; $7983: $fe $7e
	ldh a, [$6f]                                     ; $7985: $f0 $6f
	ld bc, $cd7b                                     ; $7987: $01 $7b $cd
	ld a, a                                          ; $798a: $7f
	or b                                             ; $798b: $b0
	ld c, d                                          ; $798c: $4a
	pop af                                           ; $798d: $f1
	ld [hl], e                                       ; $798e: $73
	ldh a, [$7f]                                     ; $798f: $f0 $7f
	ld [hl+], a                                      ; $7991: $22
	ld l, e                                          ; $7992: $6b
	ldh a, [$7f]                                     ; $7993: $f0 $7f
	ld a, [de]                                       ; $7995: $1a
	ld [hl], c                                       ; $7996: $71
	jp nc, $019c                                     ; $7997: $d2 $9c $01

	rst $38                                          ; $799a: $ff
	ld d, l                                          ; $799b: $55
	ld l, [hl]                                       ; $799c: $6e
	ldh [$7f], a                                     ; $799d: $e0 $7f
	ld a, [$386f]                                    ; $799f: $fa $6f $38
	ld e, a                                          ; $79a2: $5f
	ld de, $d077                                     ; $79a3: $11 $77 $d0
	ld a, [hl]                                       ; $79a6: $7e
	nop                                              ; $79a7: $00
	ld l, a                                          ; $79a8: $6f
	ldh a, [hDisp1_WX]                                     ; $79a9: $f0 $96
	ld a, a                                          ; $79ab: $7f
	ccf                                              ; $79ac: $3f
	ccf                                              ; $79ad: $3f
	cp a                                             ; $79ae: $bf
	rst $38                                          ; $79af: $ff
	ld b, b                                          ; $79b0: $40
	and b                                            ; $79b1: $a0
	ld d, b                                          ; $79b2: $50
	add [hl]                                         ; $79b3: $86
	ld a, e                                          ; $79b4: $7b
	ret nc                                           ; $79b5: $d0

	ld [hl], a                                       ; $79b6: $77
	di                                               ; $79b7: $f3
	sbc l                                            ; $79b8: $9d
	rlca                                             ; $79b9: $07
	ld [hl], c                                       ; $79ba: $71
	ld l, l                                          ; $79bb: $6d
	db $ed                                           ; $79bc: $ed
	sbc $ff                                          ; $79bd: $de $ff
	rst SubAFromDE                                          ; $79bf: $df
	rst SubAFromDE                                          ; $79c0: $df

jr_016_79c1:
	db $fc                                           ; $79c1: $fc
	adc h                                            ; $79c2: $8c
	jr nc, jr_016_7a15                               ; $79c3: $30 $50

	ld d, b                                          ; $79c5: $50
	ld b, b                                          ; $79c6: $40
	nop                                              ; $79c7: $00
	ld [hl], b                                       ; $79c8: $70
	add d                                            ; $79c9: $82
	nop                                              ; $79ca: $00
	ldh [rHDMA4], a                                  ; $79cb: $e0 $54
	rst $38                                          ; $79cd: $ff
	nop                                              ; $79ce: $00
	jr nz, jr_016_79d1                               ; $79cf: $20 $00

jr_016_79d1:
	ld c, l                                          ; $79d1: $4d
	ld b, d                                          ; $79d2: $42
	ldh a, [$fc]                                     ; $79d3: $f0 $fc
	rst $38                                          ; $79d5: $ff
	sbc $04                                          ; $79d6: $de $04
	sbc l                                            ; $79d8: $9d
	call nz, Call_016_7be4                           ; $79d9: $c4 $e4 $7b
	ret nc                                           ; $79dc: $d0

	sbc $fe                                          ; $79dd: $de $fe
	sbc [hl]                                         ; $79df: $9e
	ld a, [hl]                                       ; $79e0: $7e
	ld [hl], a                                       ; $79e1: $77
	ret nz                                           ; $79e2: $c0

	add b                                            ; $79e3: $80
	inc l                                            ; $79e4: $2c
	ld d, a                                          ; $79e5: $57
	cpl                                              ; $79e6: $2f
	rla                                              ; $79e7: $17
	ld hl, sp+$3f                                    ; $79e8: $f8 $3f
	ld a, l                                          ; $79ea: $7d
	adc $73                                          ; $79eb: $ce $73
	add hl, sp                                       ; $79ed: $39
	jr jr_016_7a2e                                   ; $79ee: $18 $3e

	rst $38                                          ; $79f0: $ff
	ld h, a                                          ; $79f1: $67
	jp $38f1                                         ; $79f2: $c3 $f1 $38


	ld hl, $1022                                     ; $79f5: $21 $22 $10
	ld d, $f8                                        ; $79f8: $16 $f8
	ld d, h                                          ; $79fa: $54
	ldh a, [c]                                       ; $79fb: $f2
	add sp, -$10                                     ; $79fc: $e8 $f0
	ldh a, [$f2]                                     ; $79fe: $f0 $f2
	di                                               ; $7a00: $f3
	db $fc                                           ; $7a01: $fc
	or $9b                                           ; $7a02: $f6 $9b
	ei                                               ; $7a04: $fb
	pop hl                                           ; $7a05: $e1
	ldh [$60], a                                     ; $7a06: $e0 $60
	db $dd                                           ; $7a08: $dd
	ldh [$9b], a                                     ; $7a09: $e0 $9b
	ld b, b                                          ; $7a0b: $40
	ccf                                              ; $7a0c: $3f

jr_016_7a0d:
	ld a, a                                          ; $7a0d: $7f
	rst $38                                          ; $7a0e: $ff
	db $dd                                           ; $7a0f: $dd
	ccf                                              ; $7a10: $3f
	adc h                                            ; $7a11: $8c
	rst $38                                          ; $7a12: $ff
	cp a                                             ; $7a13: $bf
	sbc e                                            ; $7a14: $9b

jr_016_7a15:
	ld b, [hl]                                       ; $7a15: $46
	nop                                              ; $7a16: $00
	ld d, b                                          ; $7a17: $50
	daa                                              ; $7a18: $27
	adc l                                            ; $7a19: $8d
	ld [hl], b                                       ; $7a1a: $70
	nop                                              ; $7a1b: $00
	sbc b                                            ; $7a1c: $98
	ld d, h                                          ; $7a1d: $54
	adc b                                            ; $7a1e: $88
	ld d, e                                          ; $7a1f: $53
	ld [hl+], a                                      ; $7a20: $22
	rlca                                             ; $7a21: $07
	nop                                              ; $7a22: $00
	rrca                                             ; $7a23: $0f
	rrca                                             ; $7a24: $0f
	db $dd                                           ; $7a25: $dd
	ld b, $9a                                        ; $7a26: $06 $9a
	rlca                                             ; $7a28: $07
	inc bc                                           ; $7a29: $03
	ld hl, sp-$07                                    ; $7a2a: $f8 $f9
	db $fd                                           ; $7a2c: $fd
	ld a, e                                          ; $7a2d: $7b

jr_016_7a2e:
	ld hl, $fe7f                                     ; $7a2e: $21 $7f $fe
	sub a                                            ; $7a31: $97
	inc h                                            ; $7a32: $24
	ld [$1008], sp                                   ; $7a33: $08 $08 $10
	db $10                                           ; $7a36: $10
	and b                                            ; $7a37: $a0
	ld h, b                                          ; $7a38: $60
	jr @+$6c                                         ; $7a39: $18 $6a

	ld [hl], a                                       ; $7a3b: $77
	add b                                            ; $7a3c: $80
	ccf                                              ; $7a3d: $3f
	db $e4                                           ; $7a3e: $e4
	db $fd                                           ; $7a3f: $fd
	ld e, a                                          ; $7a40: $5f
	ld e, $3e                                        ; $7a41: $1e $3e
	ld de, $783c                                     ; $7a43: $11 $3c $78
	res 2, d                                         ; $7a46: $cb $92
	ret nz                                           ; $7a48: $c0

	pop bc                                           ; $7a49: $c1
	jp $e2fd                                         ; $7a4a: $c3 $fd $e2


	add $f6                                          ; $7a4d: $c6 $f6
	cp $fe                                           ; $7a4f: $fe $fe
	ld hl, sp-$44                                    ; $7a51: $f8 $bc
	adc b                                            ; $7a53: $88
	inc a                                            ; $7a54: $3c
	ld e, $c3                                        ; $7a55: $1e $c3
	ld c, c                                          ; $7a57: $49
	inc bc                                           ; $7a58: $03
	add e                                            ; $7a59: $83
	ld h, e                                          ; $7a5a: $63
	cp a                                             ; $7a5b: $bf
	sub l                                            ; $7a5c: $95
	ld b, a                                          ; $7a5d: $47
	ld h, e                                          ; $7a5e: $63
	rra                                              ; $7a5f: $1f
	rra                                              ; $7a60: $1f
	rrca                                             ; $7a61: $0f
	rrca                                             ; $7a62: $0f
	rlca                                             ; $7a63: $07
	inc bc                                           ; $7a64: $03
	ld b, $18                                        ; $7a65: $06 $18
	jp c, $9cff                                      ; $7a67: $da $ff $9c

	db $fc                                           ; $7a6a: $fc
	jr nc, jr_016_7a0d                               ; $7a6b: $30 $a0

	sbc $20                                          ; $7a6d: $de $20
	sbc e                                            ; $7a6f: $9b
	ld h, b                                          ; $7a70: $60
	ret nz                                           ; $7a71: $c0

	ret nz                                           ; $7a72: $c0

	ld e, a                                          ; $7a73: $5f
	ld a, e                                          ; $7a74: $7b
	jr nz, @-$76                                     ; $7a75: $20 $88

	ld a, a                                          ; $7a77: $7f
	cp a                                             ; $7a78: $bf
	ccf                                              ; $7a79: $3f
	cp a                                             ; $7a7a: $bf
	ld e, b                                          ; $7a7b: $58
	sbc c                                            ; $7a7c: $99
	ld [hl+], a                                      ; $7a7d: $22
	nop                                              ; $7a7e: $00
	ld a, [bc]                                       ; $7a7f: $0a
	db $e4                                           ; $7a80: $e4
	or c                                             ; $7a81: $b1
	ld c, $05                                        ; $7a82: $0e $05
	ld a, c                                          ; $7a84: $79
	ld l, d                                          ; $7a85: $6a
	ld de, $44ca                                     ; $7a86: $11 $ca $44
	ldh [rP1], a                                     ; $7a89: $e0 $00
	rlca                                             ; $7a8b: $07
	rlca                                             ; $7a8c: $07
	ld b, $dd                                        ; $7a8d: $06 $dd
	rlca                                             ; $7a8f: $07
	sbc [hl]                                         ; $7a90: $9e
	ld b, $77                                        ; $7a91: $06 $77
	sub e                                            ; $7a93: $93
	sbc $fc                                          ; $7a94: $de $fc
	sbc c                                            ; $7a96: $99
	db $fd                                           ; $7a97: $fd
	ld [hl], d                                       ; $7a98: $72
	cp [hl]                                          ; $7a99: $be
	cp $f8                                           ; $7a9a: $fe $f8
	ld a, h                                          ; $7a9c: $7c
	ld a, e                                          ; $7a9d: $7b
	or b                                             ; $7a9e: $b0
	sbc d                                            ; $7a9f: $9a
	rst JumpTable                                          ; $7aa0: $c7
	ret                                              ; $7aa1: $c9


	inc bc                                           ; $7aa2: $03
	inc bc                                           ; $7aa3: $03
	jp $b07b                                         ; $7aa4: $c3 $7b $b0


	rst SubAFromDE                                          ; $7aa7: $df
	db $fc                                           ; $7aa8: $fc
	rst SubAFromDE                                          ; $7aa9: $df
	cp $7b                                           ; $7aaa: $fe $7b
	push hl                                          ; $7aac: $e5
	sbc l                                            ; $7aad: $9d
	rst $38                                          ; $7aae: $ff
	rlca                                             ; $7aaf: $07
	ld a, e                                          ; $7ab0: $7b
	xor c                                            ; $7ab1: $a9
	ld a, e                                          ; $7ab2: $7b
	db $fc                                           ; $7ab3: $fc
	ld a, l                                          ; $7ab4: $7d
	xor b                                            ; $7ab5: $a8
	sub e                                            ; $7ab6: $93
	rst SubAFromDE                                          ; $7ab7: $df
	cp a                                             ; $7ab8: $bf
	ld a, a                                          ; $7ab9: $7f
	rst $38                                          ; $7aba: $ff
	rst SubAFromBC                                          ; $7abb: $e7
	rla                                              ; $7abc: $17
	or a                                             ; $7abd: $b7
	rst $38                                          ; $7abe: $ff
	rst $38                                          ; $7abf: $ff
	db $e3                                           ; $7ac0: $e3
	di                                               ; $7ac1: $f3
	db $db                                           ; $7ac2: $db
	halt                                             ; $7ac3: $76
	set 3, d                                         ; $7ac4: $cb $da
	ld a, a                                          ; $7ac6: $7f
	sbc l                                            ; $7ac7: $9d
	ld hl, sp-$10                                    ; $7ac8: $f8 $f0
	db $db                                           ; $7aca: $db
	ret nz                                           ; $7acb: $c0

	sub l                                            ; $7acc: $95
	ld [hl], $1d                                     ; $7acd: $36 $1d

Call_016_7acf:
	ld de, $0808                                     ; $7acf: $11 $08 $08
	add hl, bc                                       ; $7ad2: $09
	ld b, $18                                        ; $7ad3: $06 $18
	jp hl                                            ; $7ad5: $e9


	ldh a, [c]                                       ; $7ad6: $f2
	ld [hl], d                                       ; $7ad7: $72
	adc l                                            ; $7ad8: $8d
	ld a, [hl]                                       ; $7ad9: $7e
	dec hl                                           ; $7ada: $2b
	sub b                                            ; $7adb: $90
	ld e, a                                          ; $7adc: $5f
	ldh [$f4], a                                     ; $7add: $e0 $f4
	ret nz                                           ; $7adf: $c0

	ccf                                              ; $7ae0: $3f
	ld h, e                                          ; $7ae1: $63
	ld l, [hl]                                       ; $7ae2: $6e
	rst $38                                          ; $7ae3: $ff
	cp a                                             ; $7ae4: $bf
	rra                                              ; $7ae5: $1f
	dec bc                                           ; $7ae6: $0b
	ccf                                              ; $7ae7: $3f
	ldh [$dc], a                                     ; $7ae8: $e0 $dc
	pop de                                           ; $7aea: $d1
	ld a, b                                          ; $7aeb: $78
	or h                                             ; $7aec: $b4
	sbc d                                            ; $7aed: $9a
	add h                                            ; $7aee: $84
	call nz, Call_016_62c4                           ; $7aef: $c4 $c4 $62
	ldh [c], a                                       ; $7af2: $e2
	ld [hl], d                                       ; $7af3: $72
	adc a                                            ; $7af4: $8f
	ld a, d                                          ; $7af5: $7a
	sbc e                                            ; $7af6: $9b
	rst $38                                          ; $7af7: $ff
	ld [hl], a                                       ; $7af8: $77
	ret c                                            ; $7af9: $d8

	sbc l                                            ; $7afa: $9d
	ld sp, hl                                        ; $7afb: $f9
	cp [hl]                                          ; $7afc: $be
	ld [hl], h                                       ; $7afd: $74
	ld b, l                                          ; $7afe: $45
	ld l, c                                          ; $7aff: $69
	sbc h                                            ; $7b00: $9c
	rst SubAFromDE                                          ; $7b01: $df
	rlca                                             ; $7b02: $07
	ld a, a                                          ; $7b03: $7f
	ld b, b                                          ; $7b04: $40
	sbc [hl]                                         ; $7b05: $9e
	dec c                                            ; $7b06: $0d
	ld [hl], d                                       ; $7b07: $72
	jr nz, jr_016_7b89                               ; $7b08: $20 $7f

	cp $96                                           ; $7b0a: $fe $96
	ld hl, sp+$00                                    ; $7b0c: $f8 $00
	ldh [rAUD1SWEEP], a                              ; $7b0e: $e0 $10
	add sp, $38                                      ; $7b10: $e8 $38
	ld h, h                                          ; $7b12: $64
	ld d, h                                          ; $7b13: $54
	call nz, $ffde                                   ; $7b14: $c4 $de $ff
	sub h                                            ; $7b17: $94
	rra                                              ; $7b18: $1f
	rst GetHLinHL                                          ; $7b19: $cf
	sbc a                                            ; $7b1a: $9f
	xor a                                            ; $7b1b: $af
	ccf                                              ; $7b1c: $3f
	nop                                              ; $7b1d: $00
	rlca                                             ; $7b1e: $07
	ld a, b                                          ; $7b1f: $78
	call nc, $df00                                   ; $7b20: $d4 $00 $df
	ld a, e                                          ; $7b23: $7b
	or b                                             ; $7b24: $b0
	rst SubAFromDE                                          ; $7b25: $df
	rst $38                                          ; $7b26: $ff
	sbc l                                            ; $7b27: $9d
	ei                                               ; $7b28: $fb
	rst $38                                          ; $7b29: $ff
	ld a, e                                          ; $7b2a: $7b
	or b                                             ; $7b2b: $b0
	ld [hl], e                                       ; $7b2c: $73
	adc $78                                          ; $7b2d: $ce $78
	ld e, h                                          ; $7b2f: $5c
	ld c, c                                          ; $7b30: $49
	db $10                                           ; $7b31: $10
	ld e, e                                          ; $7b32: $5b
	ldh a, [$78]                                     ; $7b33: $f0 $78
	and b                                            ; $7b35: $a0
	ld a, b                                          ; $7b36: $78
	sbc h                                            ; $7b37: $9c
	reti                                             ; $7b38: $d9


	rst $38                                          ; $7b39: $ff
	sbc b                                            ; $7b3a: $98
	add b                                            ; $7b3b: $80
	db $fc                                           ; $7b3c: $fc
	ld a, a                                          ; $7b3d: $7f
	sub a                                            ; $7b3e: $97
	or e                                             ; $7b3f: $b3
	rst $38                                          ; $7b40: $ff
	ld a, [$8b7b]                                    ; $7b41: $fa $7b $8b
	ld [hl], b                                       ; $7b44: $70
	ld b, b                                          ; $7b45: $40
	sbc e                                            ; $7b46: $9b
	db $db                                           ; $7b47: $db
	ld [bc], a                                       ; $7b48: $02
	rrca                                             ; $7b49: $0f
	rrca                                             ; $7b4a: $0f
	call c, $d81f                                    ; $7b4b: $dc $1f $d8
	rst $38                                          ; $7b4e: $ff
	ld a, a                                          ; $7b4f: $7f
	inc de                                           ; $7b50: $13
	db $dd                                           ; $7b51: $dd
	db $fd                                           ; $7b52: $fd
	sbc h                                            ; $7b53: $9c
	db $fc                                           ; $7b54: $fc
	inc bc                                           ; $7b55: $03
	inc b                                            ; $7b56: $04
	call c, $9d05                                    ; $7b57: $dc $05 $9d
	inc b                                            ; $7b5a: $04
	cp a                                             ; $7b5b: $bf
	ld l, a                                          ; $7b5c: $6f
	add $9e                                          ; $7b5d: $c6 $9e
	nop                                              ; $7b5f: $00
	ld [hl], a                                       ; $7b60: $77
	ld hl, sp-$21                                    ; $7b61: $f8 $df
	add c                                            ; $7b63: $81
	ld a, a                                          ; $7b64: $7f
	ld hl, sp+$67                                    ; $7b65: $f8 $67
	rrca                                             ; $7b67: $0f
	sbc [hl]                                         ; $7b68: $9e
	ret nz                                           ; $7b69: $c0

	jp c, Jump_016_7560                              ; $7b6a: $da $60 $75

	dec bc                                           ; $7b6d: $0b
	sbc e                                            ; $7b6e: $9b
	ldh a, [rAUD4LEN]                                ; $7b6f: $f0 $20
	ret nc                                           ; $7b71: $d0

	or b                                             ; $7b72: $b0
	db $dd                                           ; $7b73: $dd
	rst $38                                          ; $7b74: $ff
	sub c                                            ; $7b75: $91
	rra                                              ; $7b76: $1f
	ccf                                              ; $7b77: $3f
	ccf                                              ; $7b78: $3f
	ld e, a                                          ; $7b79: $5f
	nop                                              ; $7b7a: $00
	jr c, @+$01                                      ; $7b7b: $38 $ff

	rst $38                                          ; $7b7d: $ff
	pop bc                                           ; $7b7e: $c1
	rra                                              ; $7b7f: $1f

Call_016_7b80:
	jr nc, jr_016_7be7                               ; $7b80: $30 $65

	rst $38                                          ; $7b82: $ff
	rst FarCall                                          ; $7b83: $f7
	ld a, c                                          ; $7b84: $79
	call $809c                                       ; $7b85: $cd $9c $80
	ld a, [bc]                                       ; $7b88: $0a

jr_016_7b89:
	ld a, [bc]                                       ; $7b89: $0a
	ld [hl], b                                       ; $7b8a: $70
	res 3, h                                         ; $7b8b: $cb $9c
	inc bc                                           ; $7b8d: $03
	add l                                            ; $7b8e: $85
	rlca                                             ; $7b8f: $07
	ld [hl], c                                       ; $7b90: $71
	add c                                            ; $7b91: $81
	ld a, d                                          ; $7b92: $7a
	or l                                             ; $7b93: $b5
	sub a                                            ; $7b94: $97
	nop                                              ; $7b95: $00
	ret nc                                           ; $7b96: $d0

	ld l, $df                                        ; $7b97: $2e $df
	ld a, [bc]                                       ; $7b99: $0a
	pop hl                                           ; $7b9a: $e1
	ld d, h                                          ; $7b9b: $54
	xor e                                            ; $7b9c: $ab
	sbc $ff                                          ; $7b9d: $de $ff
	add b                                            ; $7b9f: $80
	add hl, hl                                       ; $7ba0: $29
	rst FarCall                                          ; $7ba1: $f7
	cp a                                             ; $7ba2: $bf
	rst $38                                          ; $7ba3: $ff
	rst SubAFromDE                                          ; $7ba4: $df
	ld bc, $0b06                                     ; $7ba5: $01 $06 $0b
	inc de                                           ; $7ba8: $13
	rla                                              ; $7ba9: $17
	dec l                                            ; $7baa: $2d

jr_016_7bab:
	jr jr_016_7bd3                                   ; $7bab: $18 $26

	rst $38                                          ; $7bad: $ff
	rst $38                                          ; $7bae: $ff
	db $fd                                           ; $7baf: $fd
	db $fc                                           ; $7bb0: $fc
	ld hl, sp-$0e                                    ; $7bb1: $f8 $f2
	rst FarCall                                          ; $7bb3: $f7
	ld sp, hl                                        ; $7bb4: $f9
	ld c, a                                          ; $7bb5: $4f
	ld c, a                                          ; $7bb6: $4f
	rst $38                                          ; $7bb7: $ff
	rst $38                                          ; $7bb8: $ff
	rst FarCall                                          ; $7bb9: $f7
	ld c, d                                          ; $7bba: $4a
	or l                                             ; $7bbb: $b5
	ld [bc], a                                       ; $7bbc: $02
	ld l, b                                          ; $7bbd: $68
	ld l, b                                          ; $7bbe: $68
	ld a, h                                          ; $7bbf: $7c
	jp z, $ffdd                                      ; $7bc0: $ca $dd $ff

	rst SubAFromDE                                          ; $7bc3: $df
	inc h                                            ; $7bc4: $24
	ld a, e                                          ; $7bc5: $7b
	rla                                              ; $7bc6: $17
	sbc c                                            ; $7bc7: $99

Call_016_7bc8:
	xor l                                            ; $7bc8: $ad
	ld d, d                                          ; $7bc9: $52
	add hl, bc                                       ; $7bca: $09
	ld [hl], $36                                     ; $7bcb: $36 $36
	jr nz, jr_016_7bab                               ; $7bcd: $20 $dc

	rst $38                                          ; $7bcf: $ff
	rst SubAFromDE                                          ; $7bd0: $df
	ld [hl-], a                                      ; $7bd1: $32
	ld a, b                                          ; $7bd2: $78

jr_016_7bd3:
	ld a, l                                          ; $7bd3: $7d
	sbc b                                            ; $7bd4: $98
	ld l, l                                          ; $7bd5: $6d
	sub d                                            ; $7bd6: $92
	ld c, b                                          ; $7bd7: $48
	scf                                              ; $7bd8: $37
	scf                                              ; $7bd9: $37
	ld [hl], $01                                     ; $7bda: $36 $01
	db $dd                                           ; $7bdc: $dd
	rst $38                                          ; $7bdd: $ff
	rst SubAFromDE                                          ; $7bde: $df
	sub b                                            ; $7bdf: $90
	ld a, a                                          ; $7be0: $7f
	dec [hl]                                         ; $7be1: $35
	sbc b                                            ; $7be2: $98
	ld a, a                                          ; $7be3: $7f

Call_016_7be4:
	db $db                                           ; $7be4: $db
	inc h                                            ; $7be5: $24
	ld b, b                                          ; $7be6: $40

jr_016_7be7:
	or e                                             ; $7be7: $b3
	or e                                             ; $7be8: $b3
	ld de, $8f72                                     ; $7be9: $11 $72 $8f
	rst SubAFromDE                                          ; $7bec: $df
	ret z                                            ; $7bed: $c8

	ld a, d                                          ; $7bee: $7a
	xor b                                            ; $7bef: $a8
	sbc c                                            ; $7bf0: $99
	ld [$2295], a                                    ; $7bf1: $ea $95 $22
	ld e, c                                          ; $7bf4: $59
	ld e, c                                          ; $7bf5: $59
	adc b                                            ; $7bf6: $88
	ld l, l                                          ; $7bf7: $6d
	rst GetHLinHL                                          ; $7bf8: $cf
	ld a, c                                          ; $7bf9: $79
	sbc h                                            ; $7bfa: $9c
	sbc b                                            ; $7bfb: $98
	push af                                          ; $7bfc: $f5
	jp c, $8926                                      ; $7bfd: $da $26 $89

	ld h, b                                          ; $7c00: $60
	ld h, b                                          ; $7c01: $60
	ld a, a                                          ; $7c02: $7f
	ld [hl], e                                       ; $7c03: $73
	inc e                                            ; $7c04: $1c
	sbc $e0                                          ; $7c05: $de $e0
	sub [hl]                                         ; $7c07: $96
	rst $38                                          ; $7c08: $ff
	ld e, a                                          ; $7c09: $5f
	ld [$44ab], a                                    ; $7c0a: $ea $ab $44
	inc sp                                           ; $7c0d: $33
	inc sp                                           ; $7c0e: $33
	di                                               ; $7c0f: $f3
	ret nz                                           ; $7c10: $c0

	db $dd                                           ; $7c11: $dd
	rst $38                                          ; $7c12: $ff
	sbc $cf                                          ; $7c13: $de $cf
	add h                                            ; $7c15: $84
	xor $ff                                          ; $7c16: $ee $ff
	cpl                                              ; $7c18: $2f
	ld a, a                                          ; $7c19: $7f
	rst $38                                          ; $7c1a: $ff
	ret                                              ; $7c1b: $c9


	adc c                                            ; $7c1c: $89
	adc l                                            ; $7c1d: $8d
	adc [hl]                                         ; $7c1e: $8e
	db $fc                                           ; $7c1f: $fc
	inc c                                            ; $7c20: $0c
	ld c, h                                          ; $7c21: $4c
	db $fc                                           ; $7c22: $fc
	rst SubAFromBC                                          ; $7c23: $e7
	rst JumpTable                                          ; $7c24: $c7
	rst JumpTable                                          ; $7c25: $c7
	rst SubAFromBC                                          ; $7c26: $e7
	rst $38                                          ; $7c27: $ff
	ld d, $bf                                        ; $7c28: $16 $bf
	rst $38                                          ; $7c2a: $ff
	db $e4                                           ; $7c2b: $e4
	add h                                            ; $7c2c: $84
	add [hl]                                         ; $7c2d: $86
	add a                                            ; $7c2e: $87
	rst $38                                          ; $7c2f: $ff
	inc b                                            ; $7c30: $04
	ld a, e                                          ; $7c31: $7b
	add e                                            ; $7c32: $83
	ld a, d                                          ; $7c33: $7a
	ld [bc], a                                       ; $7c34: $02
	ld a, h                                          ; $7c35: $7c
	sbc d                                            ; $7c36: $9a
	rst SubAFromDE                                          ; $7c37: $df
	rst $38                                          ; $7c38: $ff
	ld a, [hl]                                       ; $7c39: $7e
	ld l, h                                          ; $7c3a: $6c
	halt                                             ; $7c3b: $76
	ld [bc], a                                       ; $7c3c: $02
	ld a, l                                          ; $7c3d: $7d
	ld h, b                                          ; $7c3e: $60
	sbc c                                            ; $7c3f: $99
	cp a                                             ; $7c40: $bf
	xor a                                            ; $7c41: $af
	or a                                             ; $7c42: $b7
	or a                                             ; $7c43: $b7
	or b                                             ; $7c44: $b0
	cp a                                             ; $7c45: $bf
	ld [hl], d                                       ; $7c46: $72
	add d                                            ; $7c47: $82
	db $dd                                           ; $7c48: $dd
	rst $38                                          ; $7c49: $ff
	sbc [hl]                                         ; $7c4a: $9e
	ret nz                                           ; $7c4b: $c0

	db $dd                                           ; $7c4c: $dd
	ld a, a                                          ; $7c4d: $7f
	ld [hl], a                                       ; $7c4e: $77
	inc hl                                           ; $7c4f: $23
	sbc $c0                                          ; $7c50: $de $c0
	sbc l                                            ; $7c52: $9d
	ld hl, sp-$04                                    ; $7c53: $f8 $fc
	ld a, d                                          ; $7c55: $7a
	ld d, c                                          ; $7c56: $51
	ld a, a                                          ; $7c57: $7f
	ld a, e                                          ; $7c58: $7b
	sbc [hl]                                         ; $7c59: $9e
	rst GetHLinHL                                          ; $7c5a: $cf
	sbc $03                                          ; $7c5b: $de $03
	sbc c                                            ; $7c5d: $99
	rst GetHLinHL                                          ; $7c5e: $cf
	rst $38                                          ; $7c5f: $ff
	ld [hl-], a                                      ; $7c60: $32
	ld sp, $00cc                                     ; $7c61: $31 $cc $00
	ld a, e                                          ; $7c64: $7b
	rrca                                             ; $7c65: $0f
	sbc l                                            ; $7c66: $9d
	inc sp                                           ; $7c67: $33
	sbc l                                            ; $7c68: $9d
	ld a, e                                          ; $7c69: $7b
	or b                                             ; $7c6a: $b0
	add b                                            ; $7c6b: $80
	cp $ca                                           ; $7c6c: $fe $ca
	rst SubAFromDE                                          ; $7c6e: $df
	rst $38                                          ; $7c6f: $ff
	sbc l                                            ; $7c70: $9d
	add [hl]                                         ; $7c71: $86
	add h                                            ; $7c72: $84
	add h                                            ; $7c73: $84
	rst $38                                          ; $7c74: $ff
	add e                                            ; $7c75: $83
	sub e                                            ; $7c76: $93
	cp $cf                                           ; $7c77: $fe $cf
	rst SubAFromBC                                          ; $7c79: $e7
	rst SubAFromBC                                          ; $7c7a: $e7
	rst FarCall                                          ; $7c7b: $f7
	rst $38                                          ; $7c7c: $ff
	db $e4                                           ; $7c7d: $e4

Jump_016_7c7e:
	xor $ff                                          ; $7c7e: $ee $ff
	ld c, h                                          ; $7c80: $4c
	ld b, h                                          ; $7c81: $44
	push bc                                          ; $7c82: $c5
	rst JumpTable                                          ; $7c83: $c7
	rst $38                                          ; $7c84: $ff
	ret nz                                           ; $7c85: $c0

	ret z                                            ; $7c86: $c8

	rst $38                                          ; $7c87: $ff
	rst SubAFromDE                                          ; $7c88: $df
	ei                                               ; $7c89: $fb
	ei                                               ; $7c8a: $fb
	ld a, e                                          ; $7c8b: $7b
	ld e, h                                          ; $7c8c: $5c
	rst SubAFromDE                                          ; $7c8d: $df
	rst $38                                          ; $7c8e: $ff
	sbc e                                            ; $7c8f: $9b
	ld e, [hl]                                       ; $7c90: $5e
	ld [hl-], a                                      ; $7c91: $32
	inc de                                           ; $7c92: $13
	sbc a                                            ; $7c93: $9f
	sbc $f4                                          ; $7c94: $de $f4
	sub d                                            ; $7c96: $92
	inc [hl]                                         ; $7c97: $34
	rst SubAFromDE                                          ; $7c98: $df
	cp a                                             ; $7c99: $bf
	rst $38                                          ; $7c9a: $ff
	ld hl, sp-$20                                    ; $7c9b: $f8 $e0

Jump_016_7c9d:
	ldh [$fc], a                                     ; $7c9d: $e0 $fc
	rst $38                                          ; $7c9f: $ff
	ret c                                            ; $7ca0: $d8

	ld [hl+], a                                      ; $7ca1: $22
	ld b, a                                          ; $7ca2: $47
	ret z                                            ; $7ca3: $c8

	sbc $bf                                          ; $7ca4: $de $bf
	sbc [hl]                                         ; $7ca6: $9e
	and e                                            ; $7ca7: $a3
	sbc $03                                          ; $7ca8: $de $03
	sbc l                                            ; $7caa: $9d
	ld [hl], e                                       ; $7cab: $73
	rst FarCall                                          ; $7cac: $f7
	sbc $ff                                          ; $7cad: $de $ff
	sub h                                            ; $7caf: $94
	cp h                                             ; $7cb0: $bc
	adc $f6                                          ; $7cb1: $ce $f6
	adc h                                            ; $7cb3: $8c
	cpl                                              ; $7cb4: $2f
	cp a                                             ; $7cb5: $bf
	sbc c                                            ; $7cb6: $99
	sbc c                                            ; $7cb7: $99
	sbc $e6                                          ; $7cb8: $de $e6
	ld a, [$6e6c]                                    ; $7cba: $fa $6c $6e
	sbc b                                            ; $7cbd: $98
	rst SubAFromBC                                          ; $7cbe: $e7
	ei                                               ; $7cbf: $fb
	ld e, [hl]                                       ; $7cc0: $5e
	sub a                                            ; $7cc1: $97
	sub a                                            ; $7cc2: $97
	inc b                                            ; $7cc3: $04
	inc c                                            ; $7cc4: $0c
	reti                                             ; $7cc5: $d9


	rst $38                                          ; $7cc6: $ff
	sub l                                            ; $7cc7: $95
	or a                                             ; $7cc8: $b7
	ld a, e                                          ; $7cc9: $7b
	db $fd                                           ; $7cca: $fd
	add a                                            ; $7ccb: $87
	ld c, e                                          ; $7ccc: $4b
	ld c, e                                          ; $7ccd: $4b
	inc bc                                           ; $7cce: $03
	add a                                            ; $7ccf: $87
	rst AddAOntoHL                                          ; $7cd0: $ef
	sbc a                                            ; $7cd1: $9f
	ld l, h                                          ; $7cd2: $6c
	ld c, h                                          ; $7cd3: $4c
	sub a                                            ; $7cd4: $97
	rst AddAOntoHL                                          ; $7cd5: $ef
	sbc [hl]                                         ; $7cd6: $9e
	ld a, a                                          ; $7cd7: $7f
	db $eb                                           ; $7cd8: $eb
	and [hl]                                         ; $7cd9: $a6
	and a                                            ; $7cda: $a7
	add e                                            ; $7cdb: $83
	jp $01de                                         ; $7cdc: $c3 $de $01


	sbc [hl]                                         ; $7cdf: $9e
	dec sp                                           ; $7ce0: $3b
	ld [hl], a                                       ; $7ce1: $77
	ld d, c                                          ; $7ce2: $51
	add b                                            ; $7ce3: $80
	rst FarCall                                          ; $7ce4: $f7
	rst GetHLinHL                                          ; $7ce5: $cf
	cp a                                             ; $7ce6: $bf
	push bc                                          ; $7ce7: $c5
	db $d3                                           ; $7ce8: $d3
	rst SubAFromHL                                          ; $7ce9: $d7
	ld b, h                                          ; $7cea: $44
	ld h, h                                          ; $7ceb: $64
	ld e, $0e                                        ; $7cec: $1e $0e
	ld c, [hl]                                       ; $7cee: $4e
	adc [hl]                                         ; $7cef: $8e
	rst SubAFromDE                                          ; $7cf0: $df
	db $d3                                           ; $7cf1: $d3
	db $db                                           ; $7cf2: $db
	cp e                                             ; $7cf3: $bb
	pop af                                           ; $7cf4: $f1
	ld sp, hl                                        ; $7cf5: $f9
	cp c                                             ; $7cf6: $b9
	ld [hl], c                                       ; $7cf7: $71
	cp a                                             ; $7cf8: $bf
	or e                                             ; $7cf9: $b3
	ld [hl-], a                                      ; $7cfa: $32
	ld h, d                                          ; $7cfb: $62
	ldh [$c8], a                                     ; $7cfc: $e0 $c8
	ret nc                                           ; $7cfe: $d0

	call nz, $2fdf                                   ; $7cff: $c4 $df $2f
	xor a                                            ; $7d02: $af

jr_016_7d03:
	sub [hl]                                         ; $7d03: $96
	or a                                             ; $7d04: $b7
	rra                                              ; $7d05: $1f
	ld [hl], a                                       ; $7d06: $77
	ld l, a                                          ; $7d07: $6f
	dec sp                                           ; $7d08: $3b
	db $e4                                           ; $7d09: $e4
	inc [hl]                                         ; $7d0a: $34
	jr nc, jr_016_7d45                               ; $7d0b: $30 $38

	ld l, [hl]                                       ; $7d0d: $6e
	ld [bc], a                                       ; $7d0e: $02
	rst SubAFromDE                                          ; $7d0f: $df
	rst $38                                          ; $7d10: $ff
	ld l, [hl]                                       ; $7d11: $6e
	ld [bc], a                                       ; $7d12: $02
	ld a, a                                          ; $7d13: $7f
	ld a, [bc]                                       ; $7d14: $0a
	ld l, [hl]                                       ; $7d15: $6e
	ld [bc], a                                       ; $7d16: $02
	db $dd                                           ; $7d17: $dd
	rst $38                                          ; $7d18: $ff
	ld [hl], d                                       ; $7d19: $72
	ld [bc], a                                       ; $7d1a: $02
	ld l, d                                          ; $7d1b: $6a
	ld bc, $ffdf                                     ; $7d1c: $01 $df $ff
	db $db                                           ; $7d1f: $db
	ld h, b                                          ; $7d20: $60
	ld a, d                                          ; $7d21: $7a
	or e                                             ; $7d22: $b3
	db $dd                                           ; $7d23: $dd
	rst $38                                          ; $7d24: $ff
	sbc l                                            ; $7d25: $9d
	ld a, [$71f7]                                    ; $7d26: $fa $f7 $71
	adc b                                            ; $7d29: $88
	sbc h                                            ; $7d2a: $9c
	rrca                                             ; $7d2b: $0f
	ld a, [de]                                       ; $7d2c: $1a
	rla                                              ; $7d2d: $17
	ret c                                            ; $7d2e: $d8

	rst $38                                          ; $7d2f: $ff
	ld a, [$e871]                                    ; $7d30: $fa $71 $e8
	ld e, e                                          ; $7d33: $5b
	ldh a, [$7b]                                     ; $7d34: $f0 $7b
	and [hl]                                         ; $7d36: $a6
	ld d, e                                          ; $7d37: $53
	ldh a, [$9e]                                     ; $7d38: $f0 $9e
	inc [hl]                                         ; $7d3a: $34
	db $db                                           ; $7d3b: $db
	rst $38                                          ; $7d3c: $ff
	ld a, a                                          ; $7d3d: $7f
	xor a                                            ; $7d3e: $af
	db $fd                                           ; $7d3f: $fd
	sbc h                                            ; $7d40: $9c
	add b                                            ; $7d41: $80
	ret nz                                           ; $7d42: $c0

	ld b, b                                          ; $7d43: $40
	ld l, a                                          ; $7d44: $6f

jr_016_7d45:
	ldh [$9c], a                                     ; $7d45: $e0 $9c
	db $e4                                           ; $7d47: $e4
	rst SubAFromDE                                          ; $7d48: $df
	xor a                                            ; $7d49: $af
	db $fd                                           ; $7d4a: $fd
	sbc e                                            ; $7d4b: $9b
	ccf                                              ; $7d4c: $3f
	ld h, h                                          ; $7d4d: $64
	ld e, a                                          ; $7d4e: $5f
	cpl                                              ; $7d4f: $2f
	ld l, a                                          ; $7d50: $6f
	pop hl                                           ; $7d51: $e1
	sbc [hl]                                         ; $7d52: $9e
	cp a                                             ; $7d53: $bf
	ld a, c                                          ; $7d54: $79
	or e                                             ; $7d55: $b3
	rst $38                                          ; $7d56: $ff
	ld a, l                                          ; $7d57: $7d
	adc h                                            ; $7d58: $8c
	sbc l                                            ; $7d59: $9d
	or b                                             ; $7d5a: $b0
	db $d3                                           ; $7d5b: $d3
	ld h, e                                          ; $7d5c: $63
	ret nz                                           ; $7d5d: $c0

	db $db                                           ; $7d5e: $db
	add b                                            ; $7d5f: $80
	ld h, c                                          ; $7d60: $61
	jr z, jr_016_7dce                                ; $7d61: $28 $6b

	xor a                                            ; $7d63: $af
	ld e, a                                          ; $7d64: $5f
	pop af                                           ; $7d65: $f1
	db $db                                           ; $7d66: $db
	ld bc, $98ff                                     ; $7d67: $01 $ff $98
	inc b                                            ; $7d6a: $04
	dec de                                           ; $7d6b: $1b
	inc l                                            ; $7d6c: $2c
	ld c, a                                          ; $7d6d: $4f
	ld e, h                                          ; $7d6e: $5c
	or a                                             ; $7d6f: $b7
	ld h, c                                          ; $7d70: $61
	halt                                             ; $7d71: $76
	db $fd                                           ; $7d72: $fd
	sbc h                                            ; $7d73: $9c
	ldh a, [$e3]                                     ; $7d74: $f0 $e3
	jp z, $b87b                                      ; $7d76: $ca $7b $b8

	sbc c                                            ; $7d79: $99
	ld b, b                                          ; $7d7a: $40
	cp b                                             ; $7d7b: $b8
	ld a, h                                          ; $7d7c: $7c
	jr z, jr_016_7d03                                ; $7d7d: $28 $84

	ld d, d                                          ; $7d7f: $52
	db $dd                                           ; $7d80: $dd
	rst $38                                          ; $7d81: $ff
	sbc e                                            ; $7d82: $9b
	and a                                            ; $7d83: $a7
	rst SubAFromDE                                          ; $7d84: $df
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

Jump_016_7d92:
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

jr_016_7dce:
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

Jump_016_7e7f:
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

Call_016_7eff:
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

Call_016_7f1f:
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

Call_016_7f9a:
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

Call_016_7ff8:
	rst $38                                          ; $7ff8: $ff
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff

Jump_016_7ffb:
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
