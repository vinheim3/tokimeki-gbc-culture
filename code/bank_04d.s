; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

	ld d, h                                          ; $4000: $54
	ld [hl], a                                       ; $4001: $77
	db $ec                                           ; $4002: $ec
	halt                                             ; $4003: $76
	add sp, $7f                                      ; $4004: $e8 $7f
	ldh a, [$9b]                                     ; $4006: $f0 $9b
	ld [$fd15], a                                    ; $4008: $ea $15 $fd
	ld [bc], a                                       ; $400b: $02
	ld l, a                                          ; $400c: $6f
	ld h, d                                          ; $400d: $62
	ld a, a                                          ; $400e: $7f
	ld b, b                                          ; $400f: $40
	sbc [hl]                                         ; $4010: $9e
	ld b, l                                          ; $4011: $45
	ld [hl], e                                       ; $4012: $73
	ld h, d                                          ; $4013: $62
	sub l                                            ; $4014: $95
	ld e, c                                          ; $4015: $59
	and a                                            ; $4016: $a7
	or h                                             ; $4017: $b4
	ld c, e                                          ; $4018: $4b
	add sp, $17                                      ; $4019: $e8 $17
	ret nz                                           ; $401b: $c0

	ccf                                              ; $401c: $3f
	dec b                                            ; $401d: $05
	ld a, [$c46f]                                    ; $401e: $fa $6f $c4
	ld a, a                                          ; $4021: $7f
	or [hl]                                          ; $4022: $b6
	ld [hl], a                                       ; $4023: $77
	and [hl]                                         ; $4024: $a6
	ld a, a                                          ; $4025: $7f
	ld hl, sp-$63                                    ; $4026: $f8 $9d
	ld e, a                                          ; $4028: $5f
	and b                                            ; $4029: $a0
	ld [hl], a                                       ; $402a: $77
	cp c                                             ; $402b: $b9
	sbc h                                            ; $402c: $9c
	ld a, [hl+]                                      ; $402d: $2a
	push de                                          ; $402e: $d5
	and b                                            ; $402f: $a0
	ld a, d                                          ; $4030: $7a
	db $fc                                           ; $4031: $fc
	ld [hl], a                                       ; $4032: $77
	call nz, Call_04d_4167                           ; $4033: $c4 $67 $41
	ld a, a                                          ; $4036: $7f
	add sp, $7f                                      ; $4037: $e8 $7f
	xor h                                            ; $4039: $ac
	ld a, a                                          ; $403a: $7f
	adc [hl]                                         ; $403b: $8e
	ld a, [hl]                                       ; $403c: $7e
	xor h                                            ; $403d: $ac
	sbc e                                            ; $403e: $9b
	ld d, b                                          ; $403f: $50
	xor a                                            ; $4040: $af
	ld a, [$6f05]                                    ; $4041: $fa $05 $6f
	xor $7f                                          ; $4044: $ee $7f
	ldh a, [$7f]                                     ; $4046: $f0 $7f
	adc b                                            ; $4048: $88
	ld l, a                                          ; $4049: $6f
	inc b                                            ; $404a: $04
	ld h, a                                          ; $404b: $67
	ldh a, [rPCM34]                                  ; $404c: $f0 $77
	and b                                            ; $404e: $a0
	ld h, a                                          ; $404f: $67
	ldh a, [c]                                       ; $4050: $f2
	sbc l                                            ; $4051: $9d
	push af                                          ; $4052: $f5
	ld a, [bc]                                       ; $4053: $0a
	halt                                             ; $4054: $76
	adc d                                            ; $4055: $8a
	sub c                                            ; $4056: $91
	rst AddAOntoHL                                          ; $4057: $ef
	db $10                                           ; $4058: $10
	add sp, $17                                      ; $4059: $e8 $17
	ldh a, [rIF]                                     ; $405b: $f0 $0f
	adc b                                            ; $405d: $88
	ld [hl], a                                       ; $405e: $77
	ld d, d                                          ; $405f: $52
	xor l                                            ; $4060: $ad
	ld a, a                                          ; $4061: $7f
	add b                                            ; $4062: $80
	ccf                                              ; $4063: $3f
	ret nz                                           ; $4064: $c0

	ld [hl], a                                       ; $4065: $77
	sbc $9a                                          ; $4066: $de $9a
	and d                                            ; $4068: $a2
	db $fd                                           ; $4069: $fd
	ld d, h                                          ; $406a: $54
	rst $38                                          ; $406b: $ff
	add hl, hl                                       ; $406c: $29
	ld a, e                                          ; $406d: $7b
	sub [hl]                                         ; $406e: $96
	ld a, a                                          ; $406f: $7f
	add [hl]                                         ; $4070: $86
	sub l                                            ; $4071: $95
	pop af                                           ; $4072: $f1
	ld c, $87                                        ; $4073: $0e $87
	ld a, b                                          ; $4075: $78
	rlca                                             ; $4076: $07
	ld hl, sp-$56                                    ; $4077: $f8 $aa
	ld d, l                                          ; $4079: $55
	db $10                                           ; $407a: $10
	rst AddAOntoHL                                          ; $407b: $ef
	ld [hl], a                                       ; $407c: $77
	sub [hl]                                         ; $407d: $96
	ld a, a                                          ; $407e: $7f
	xor e                                            ; $407f: $ab
	add b                                            ; $4080: $80
	ld b, b                                          ; $4081: $40
	cp a                                             ; $4082: $bf
	ld [$f515], a                                    ; $4083: $ea $15 $f5
	ld a, [bc]                                       ; $4086: $0a
	add e                                            ; $4087: $83
	ld a, a                                          ; $4088: $7f
	rrca                                             ; $4089: $0f
	rst $38                                          ; $408a: $ff
	ld e, l                                          ; $408b: $5d
	cp $b2                                           ; $408c: $fe $b2
	db $fc                                           ; $408e: $fc
	ld b, e                                          ; $408f: $43
	db $fd                                           ; $4090: $fd
	xor d                                            ; $4091: $aa
	rst FarCall                                          ; $4092: $f7
	add l                                            ; $4093: $85
	ld a, a                                          ; $4094: $7f
	ld [bc], a                                       ; $4095: $02
	rst $38                                          ; $4096: $ff
	rst AddAOntoHL                                          ; $4097: $ef
	ret nc                                           ; $4098: $d0

	ret c                                            ; $4099: $d8

	daa                                              ; $409a: $27
	inc bc                                           ; $409b: $03
	rra                                              ; $409c: $1f
	ld c, a                                          ; $409d: $4f
	ccf                                              ; $409e: $3f
	sbc l                                            ; $409f: $9d
	add b                                            ; $40a0: $80
	ld a, [hl]                                       ; $40a1: $7e
	add hl, sp                                       ; $40a2: $39
	cp $cb                                           ; $40a3: $fe $cb
	db $f4                                           ; $40a5: $f4
	db $e3                                           ; $40a6: $e3
	sbc a                                            ; $40a7: $9f
	rst $38                                          ; $40a8: $ff
	nop                                              ; $40a9: $00
	add hl, bc                                       ; $40aa: $09
	rst FarCall                                          ; $40ab: $f7
	jp $f6ff                                         ; $40ac: $c3 $ff $f6


	adc a                                            ; $40af: $8f
	rst AddAOntoHL                                          ; $40b0: $ef
	rra                                              ; $40b1: $1f
	rst $38                                          ; $40b2: $ff
	ld a, a                                          ; $40b3: $7f
	ld a, [rIE]                                    ; $40b4: $fa $ff $ff
	ld hl, sp-$08                                    ; $40b7: $f8 $f8
	nop                                              ; $40b9: $00
	ldh [c], a                                       ; $40ba: $e2
	pop bc                                           ; $40bb: $c1
	ld d, c                                          ; $40bc: $51
	adc a                                            ; $40bd: $8f
	db $e3                                           ; $40be: $e3
	rra                                              ; $40bf: $1f
	sub b                                            ; $40c0: $90

Jump_04d_40c1:
	ldh [c], a                                       ; $40c1: $e2
	db $fd                                           ; $40c2: $fd
	ld hl, sp-$21                                    ; $40c3: $f8 $df
	ld h, e                                          ; $40c5: $63
	sbc a                                            ; $40c6: $9f
	rst JumpTable                                          ; $40c7: $c7
	ccf                                              ; $40c8: $3f
	xor h                                            ; $40c9: $ac
	ld [hl], e                                       ; $40ca: $73
	xor c                                            ; $40cb: $a9
	rst JumpTable                                          ; $40cc: $c7
	and a                                            ; $40cd: $a7
	sbc a                                            ; $40ce: $9f
	cp a                                             ; $40cf: $bf
	ld a, c                                          ; $40d0: $79
	adc d                                            ; $40d1: $8a
	db $db                                           ; $40d2: $db
	rst $38                                          ; $40d3: $ff
	ld a, a                                          ; $40d4: $7f
	ld a, h                                          ; $40d5: $7c
	sub c                                            ; $40d6: $91
	add b                                            ; $40d7: $80
	ld a, a                                          ; $40d8: $7f
	ld b, b                                          ; $40d9: $40
	cp a                                             ; $40da: $bf
	xor b                                            ; $40db: $a8
	ld d, a                                          ; $40dc: $57
	push de                                          ; $40dd: $d5
	ld a, [hl+]                                      ; $40de: $2a
	ld [$ff15], a                                    ; $40df: $ea $15 $ff
	nop                                              ; $40e2: $00
	rra                                              ; $40e3: $1f
	ldh [rPCM12], a                                  ; $40e4: $e0 $76
	ld [$ca7d], sp                                   ; $40e6: $08 $7d $ca
	halt                                             ; $40e9: $76
	inc d                                            ; $40ea: $14
	ld a, a                                          ; $40eb: $7f
	add [hl]                                         ; $40ec: $86
	ld l, [hl]                                       ; $40ed: $6e
	rrca                                             ; $40ee: $0f
	halt                                             ; $40ef: $76
	ld [hl-], a                                      ; $40f0: $32
	ld a, a                                          ; $40f1: $7f
	db $10                                           ; $40f2: $10
	ld [hl], l                                       ; $40f3: $75
	jp c, $d79d                                      ; $40f4: $da $9d $d7

	jr z, @+$79                                      ; $40f7: $28 $77

	ldh a, [$9e]                                     ; $40f9: $f0 $9e
	cp a                                             ; $40fb: $bf
	ld [hl], e                                       ; $40fc: $73
	db $e4                                           ; $40fd: $e4
	halt                                             ; $40fe: $76
	ld [hl-], a                                      ; $40ff: $32
	ld l, a                                          ; $4100: $6f
	ldh [$9e], a                                     ; $4101: $e0 $9e
	ld hl, sp+$7b                                    ; $4103: $f8 $7b
	inc c                                            ; $4105: $0c
	ld [hl], a                                       ; $4106: $77
	ld b, [hl]                                       ; $4107: $46
	ld a, d                                          ; $4108: $7a
	ld d, h                                          ; $4109: $54
	ld a, e                                          ; $410a: $7b
	ldh a, [$7f]                                     ; $410b: $f0 $7f
	cp a                                             ; $410d: $bf
	halt                                             ; $410e: $76
	ret nc                                           ; $410f: $d0

	ld a, a                                          ; $4110: $7f
	xor h                                            ; $4111: $ac
	sub [hl]                                         ; $4112: $96
	ld [hl], b                                       ; $4113: $70
	adc a                                            ; $4114: $8f
	rst $38                                          ; $4115: $ff
	nop                                              ; $4116: $00
	db $fc                                           ; $4117: $fc
	inc bc                                           ; $4118: $03
	rst $38                                          ; $4119: $ff
	nop                                              ; $411a: $00
	dec d                                            ; $411b: $15
	ld a, d                                          ; $411c: $7a
	or h                                             ; $411d: $b4
	ld a, a                                          ; $411e: $7f
	ld a, [$9f9d]                                    ; $411f: $fa $9d $9f
	ld h, b                                          ; $4122: $60
	ld [hl], a                                       ; $4123: $77
	push de                                          ; $4124: $d5
	ld a, a                                          ; $4125: $7f
	ld [$9c7f], a                                    ; $4126: $ea $7f $9c
	ld a, l                                          ; $4129: $7d
	ret c                                            ; $412a: $d8

	ld a, a                                          ; $412b: $7f
	ldh [rPCM34], a                                  ; $412c: $e0 $77

jr_04d_412e:
	ret c                                            ; $412e: $d8

	ld a, a                                          ; $412f: $7f
	ld h, $7f                                        ; $4130: $26 $7f
	xor d                                            ; $4132: $aa
	halt                                             ; $4133: $76
	sbc b                                            ; $4134: $98
	sbc l                                            ; $4135: $9d
	xor c                                            ; $4136: $a9
	cp $76                                           ; $4137: $fe $76
	ld [hl], h                                       ; $4139: $74
	ld [hl], a                                       ; $413a: $77
	xor $9d                                          ; $413b: $ee $9d
	push hl                                          ; $413d: $e5
	ld a, [de]                                       ; $413e: $1a
	ld a, e                                          ; $413f: $7b
	or e                                             ; $4140: $b3
	rst $38                                          ; $4141: $ff
	ld a, [hl]                                       ; $4142: $7e
	ld a, [hl]                                       ; $4143: $7e
	sbc h                                            ; $4144: $9c
	ld d, a                                          ; $4145: $57
	call nc, Call_04d_762b                           ; $4146: $d4 $2b $76
	cp h                                             ; $4149: $bc
	halt                                             ; $414a: $76
	xor $7e                                          ; $414b: $ee $7e
	db $e4                                           ; $414d: $e4
	ld l, a                                          ; $414e: $6f
	sbc e                                            ; $414f: $9b
	ld a, a                                          ; $4150: $7f
	or $7f                                           ; $4151: $f6 $7f
	ei                                               ; $4153: $fb
	ld a, l                                          ; $4154: $7d
	ld a, [$8197]                                    ; $4155: $fa $97 $81
	ld a, [hl]                                       ; $4158: $7e
	inc e                                            ; $4159: $1c
	db $e3                                           ; $415a: $e3
	rst $38                                          ; $415b: $ff
	nop                                              ; $415c: $00
	jr nc, jr_04d_412e                               ; $415d: $30 $cf

	ld [hl], a                                       ; $415f: $77
	xor $7f                                          ; $4160: $ee $7f
	ldh [c], a                                       ; $4162: $e2
	sbc [hl]                                         ; $4163: $9e
	ret nz                                           ; $4164: $c0

	ld a, e                                          ; $4165: $7b
	ld sp, hl                                        ; $4166: $f9

Call_04d_4167:
	add b                                            ; $4167: $80
	dec de                                           ; $4168: $1b
	rst SubAFromBC                                          ; $4169: $e7
	rst $38                                          ; $416a: $ff
	nop                                              ; $416b: $00
	ccf                                              ; $416c: $3f
	ret nz                                           ; $416d: $c0

	dec d                                            ; $416e: $15
	ld [$57a8], a                                    ; $416f: $ea $a8 $57
	ld d, a                                          ; $4172: $57
	xor b                                            ; $4173: $a8
	inc b                                            ; $4174: $04
	inc bc                                           ; $4175: $03
	ld sp, hl                                        ; $4176: $f9
	rlca                                             ; $4177: $07
	ld a, [$0fcf]                                    ; $4178: $fa $cf $0f
	ldh a, [$fc]                                     ; $417b: $f0 $fc
	inc bc                                           ; $417d: $03
	add b                                            ; $417e: $80
	ld a, a                                          ; $417f: $7f
	dec sp                                           ; $4180: $3b
	rst JumpTable                                          ; $4181: $c7
	push hl                                          ; $4182: $e5
	rra                                              ; $4183: $1f
	ld a, [hl+]                                      ; $4184: $2a
	rst $38                                          ; $4185: $ff
	rst SubAFromHL                                          ; $4186: $d7
	ld a, e                                          ; $4187: $7b
	ld d, h                                          ; $4188: $54
	sbc d                                            ; $4189: $9a
	cp d                                             ; $418a: $ba
	ld b, l                                          ; $418b: $45
	inc b                                            ; $418c: $04
	ei                                               ; $418d: $fb
	xor c                                            ; $418e: $a9
	call c, $80ff                                    ; $418f: $dc $ff $80
	or e                                             ; $4192: $b3
	rst $38                                          ; $4193: $ff
	db $eb                                           ; $4194: $eb
	rst FarCall                                          ; $4195: $f7
	rst SubAFromDE                                          ; $4196: $df
	rst SubAFromBC                                          ; $4197: $e7
	sub c                                            ; $4198: $91
	ld a, a                                          ; $4199: $7f
	ld a, d                                          ; $419a: $7a
	pop af                                           ; $419b: $f1
	pop de                                           ; $419c: $d1
	db $e3                                           ; $419d: $e3
	dec h                                            ; $419e: $25
	jp $876b                                         ; $419f: $c3 $6b $87


	ld e, a                                          ; $41a2: $5f
	adc a                                            ; $41a3: $8f
	sbc d                                            ; $41a4: $9a
	rst $38                                          ; $41a5: $ff
	ld de, $dffe                                     ; $41a6: $11 $fe $df
	daa                                              ; $41a9: $27
	sbc b                                            ; $41aa: $98
	ld h, a                                          ; $41ab: $67
	ld a, c                                          ; $41ac: $79
	adc $fd                                          ; $41ad: $ce $fd
	sub d                                            ; $41af: $92
	db $fd                                           ; $41b0: $fd
	sub e                                            ; $41b1: $93
	ldh [c], a                                       ; $41b2: $e2
	ei                                               ; $41b3: $fb
	add $f4                                          ; $41b4: $c6 $f4
	rrca                                             ; $41b6: $0f
	adc c                                            ; $41b7: $89
	ld a, a                                          ; $41b8: $7f
	set 6, b                                         ; $41b9: $cb $f0
	ld c, [hl]                                       ; $41bb: $4e
	add c                                            ; $41bc: $81
	db $fc                                           ; $41bd: $fc
	ld a, e                                          ; $41be: $7b
	or [hl]                                          ; $41bf: $b6
	sbc d                                            ; $41c0: $9a
	db $d3                                           ; $41c1: $d3
	cpl                                              ; $41c2: $2f
	rst SubAFromBC                                          ; $41c3: $e7
	rra                                              ; $41c4: $1f
	rrca                                             ; $41c5: $0f
	ld a, d                                          ; $41c6: $7a
	ld a, [bc]                                       ; $41c7: $0a
	sub h                                            ; $41c8: $94
	adc a                                            ; $41c9: $8f
	ld a, a                                          ; $41ca: $7f
	xor a                                            ; $41cb: $af
	ld e, a                                          ; $41cc: $5f
	rla                                              ; $41cd: $17
	rst $38                                          ; $41ce: $ff
	inc de                                           ; $41cf: $13
	rst $38                                          ; $41d0: $ff
	ld [hl], e                                       ; $41d1: $73
	rst $38                                          ; $41d2: $ff
	ei                                               ; $41d3: $fb
	ld [hl], b                                       ; $41d4: $70
	cp b                                             ; $41d5: $b8
	ld a, a                                          ; $41d6: $7f
	xor [hl]                                         ; $41d7: $ae
	ld a, [hl]                                       ; $41d8: $7e
	sbc l                                            ; $41d9: $9d
	adc h                                            ; $41da: $8c
	ld a, $ff                                        ; $41db: $3e $ff
	dec e                                            ; $41dd: $1d
	cp $3a                                           ; $41de: $fe $3a
	db $fc                                           ; $41e0: $fc
	db $f4                                           ; $41e1: $f4
	ld hl, sp-$17                                    ; $41e2: $f8 $e9
	ldh a, [$f3]                                     ; $41e4: $f0 $f3
	ldh [rTIMA], a                                   ; $41e6: $e0 $05
	ld a, [$55aa]                                    ; $41e8: $fa $aa $55
	push de                                          ; $41eb: $d5
	ld a, [hl+]                                      ; $41ec: $2a
	ld d, l                                          ; $41ed: $55
	ld hl, sp+$7f                                    ; $41ee: $f8 $7f
	ld l, b                                          ; $41f0: $68
	sbc d                                            ; $41f1: $9a
	cp a                                             ; $41f2: $bf
	ld b, b                                          ; $41f3: $40
	ld [$5400], a                                    ; $41f4: $ea $00 $54
	ld hl, sp+$79                                    ; $41f7: $f8 $79
	xor d                                            ; $41f9: $aa
	sbc l                                            ; $41fa: $9d
	nop                                              ; $41fb: $00
	add b                                            ; $41fc: $80
	or $7b                                           ; $41fd: $f6 $7b
	jr z, jr_04d_427e                                ; $41ff: $28 $7d

	or $7b                                           ; $4201: $f6 $7b
	db $ec                                           ; $4203: $ec
	sbc [hl]                                         ; $4204: $9e
	ld a, [bc]                                       ; $4205: $0a
	ld h, e                                          ; $4206: $63
	ldh a, [rPCM34]                                  ; $4207: $f0 $77
	cp $7f                                           ; $4209: $fe $7f
	ldh a, [$98]                                     ; $420b: $f0 $98
	xor b                                            ; $420d: $a8
	nop                                              ; $420e: $00
	inc d                                            ; $420f: $14
	dec de                                           ; $4210: $1b
	inc a                                            ; $4211: $3c
	ld e, a                                          ; $4212: $5f
	ret nz                                           ; $4213: $c0

	halt                                             ; $4214: $76
	and e                                            ; $4215: $a3
	ld [hl], e                                       ; $4216: $73
	ldh a, [$9a]                                     ; $4217: $f0 $9a
	and b                                            ; $4219: $a0
	ld b, b                                          ; $421a: $40
	ret nc                                           ; $421b: $d0

	ldh [$28], a                                     ; $421c: $e0 $28
	ld a, c                                          ; $421e: $79
	inc l                                            ; $421f: $2c
	ld h, a                                          ; $4220: $67
	ldh a, [$9e]                                     ; $4221: $f0 $9e
	ld [bc], a                                       ; $4223: $02
	cp $9b                                           ; $4224: $fe $9b
	dec c                                            ; $4226: $0d
	cp $ff                                           ; $4227: $fe $ff
	rst $38                                          ; $4229: $ff
	ld l, l                                          ; $422a: $6d
	and d                                            ; $422b: $a2
	ld [hl], a                                       ; $422c: $77
	xor h                                            ; $422d: $ac
	sbc e                                            ; $422e: $9b
	rlca                                             ; $422f: $07
	nop                                              ; $4230: $00
	dec bc                                           ; $4231: $0b
	rlca                                             ; $4232: $07
	ld [hl], d                                       ; $4233: $72
	ccf                                              ; $4234: $3f
	ld a, l                                          ; $4235: $7d
	ld [hl], d                                       ; $4236: $72
	cp $9e                                           ; $4237: $fe $9e
	add c                                            ; $4239: $81
	ld a, e                                          ; $423a: $7b
	ldh a, [c]                                       ; $423b: $f2
	ld a, a                                          ; $423c: $7f
	jp nc, $df7b                                     ; $423d: $d2 $7b $df

	ld [hl], l                                       ; $4240: $75
	sub [hl]                                         ; $4241: $96
	sbc d                                            ; $4242: $9a
	nop                                              ; $4243: $00
	ld bc, $aa00                                     ; $4244: $01 $00 $aa
	ld b, a                                          ; $4247: $47
	ld [hl], l                                       ; $4248: $75
	inc b                                            ; $4249: $04
	sbc l                                            ; $424a: $9d
	xor a                                            ; $424b: $af
	cp $6f                                           ; $424c: $fe $6f
	ldh a, [$9a]                                     ; $424e: $f0 $9a
	ld l, $71                                        ; $4250: $2e $71
	pop af                                           ; $4252: $f1
	rst $38                                          ; $4253: $ff
	and b                                            ; $4254: $a0
	ld [hl], b                                       ; $4255: $70
	ld h, [hl]                                       ; $4256: $66
	sbc b                                            ; $4257: $98
	sub a                                            ; $4258: $97
	ld l, a                                          ; $4259: $6f
	rra                                              ; $425a: $1f
	ccf                                              ; $425b: $3f
	rst GetHLinHL                                          ; $425c: $cf
	ccf                                              ; $425d: $3f
	ld a, [hl]                                       ; $425e: $7e
	ld a, b                                          ; $425f: $78
	ld c, [hl]                                       ; $4260: $4e
	sbc [hl]                                         ; $4261: $9e
	db $eb                                           ; $4262: $eb
	ld a, b                                          ; $4263: $78
	call z, $917f                                    ; $4264: $cc $7f $91
	ld a, a                                          ; $4267: $7f
	cp l                                             ; $4268: $bd
	ld a, a                                          ; $4269: $7f
	jp z, $fe7f                                      ; $426a: $ca $7f $fe

	sub l                                            ; $426d: $95
	ld a, b                                          ; $426e: $78
	rst $38                                          ; $426f: $ff
	rst AddAOntoHL                                          ; $4270: $ef
	ld [hl], b                                       ; $4271: $70
	dec a                                            ; $4272: $3d
	jp $8f76                                         ; $4273: $c3 $76 $8f


	adc b                                            ; $4276: $88
	ld a, a                                          ; $4277: $7f
	ld [hl], a                                       ; $4278: $77
	rst GetHLinHL                                          ; $4279: $cf
	ld a, [hl]                                       ; $427a: $7e
	dec h                                            ; $427b: $25
	add b                                            ; $427c: $80
	add e                                            ; $427d: $83

jr_04d_427e:
	db $fd                                           ; $427e: $fd
	rst AddAOntoHL                                          ; $427f: $ef
	add d                                            ; $4280: $82
	ld a, a                                          ; $4281: $7f
	add h                                            ; $4282: $84
	add hl, de                                       ; $4283: $19
	ldh [c], a                                       ; $4284: $e2
	rra                                              ; $4285: $1f
	ldh [$36], a                                     ; $4286: $e0 $36
	rst GetHLinHL                                          ; $4288: $cf
	ld c, d                                          ; $4289: $4a
	sbc a                                            ; $428a: $9f
	cp d                                             ; $428b: $ba
	dec d                                            ; $428c: $15
	db $fd                                           ; $428d: $fd
	ld [hl+], a                                      ; $428e: $22
	cp $01                                           ; $428f: $fe $01
	cp c                                             ; $4291: $b9
	ld b, a                                          ; $4292: $47
	ldh a, [c]                                       ; $4293: $f2
	rrca                                             ; $4294: $0f
	push bc                                          ; $4295: $c5
	ccf                                              ; $4296: $3f
	ld [hl], d                                       ; $4297: $72
	adc l                                            ; $4298: $8d
	sbc e                                            ; $4299: $9b
	ld h, l                                          ; $429a: $65
	ld e, c                                          ; $429b: $59
	sbc c                                            ; $429c: $99
	daa                                              ; $429d: $27
	sbc e                                            ; $429e: $9b
	ld h, a                                          ; $429f: $67
	dec [hl]                                         ; $42a0: $35
	rst AddAOntoHL                                          ; $42a1: $ef
	ld b, e                                          ; $42a2: $43
	call c, $84ff                                    ; $42a3: $dc $ff $84
	ld a, c                                          ; $42a6: $79
	cp $7c                                           ; $42a7: $fe $7c
	rst $38                                          ; $42a9: $ff
	db $fd                                           ; $42aa: $fd
	cp $bf                                           ; $42ab: $fe $bf
	db $fc                                           ; $42ad: $fc
	ei                                               ; $42ae: $fb
	db $fc                                           ; $42af: $fc
	ld a, [$76fd]                                    ; $42b0: $fa $fd $76
	ld sp, hl                                        ; $42b3: $f9
	ld h, h                                          ; $42b4: $64
	ei                                               ; $42b5: $fb
	ld b, $ff                                        ; $42b6: $06 $ff
	rst SubAFromBC                                          ; $42b8: $e7
	rra                                              ; $42b9: $1f
	call nz, $983f                                   ; $42ba: $c4 $3f $98
	ld a, a                                          ; $42bd: $7f
	or l                                             ; $42be: $b5
	ld a, a                                          ; $42bf: $7f
	ld l, a                                          ; $42c0: $6f
	ld a, d                                          ; $42c1: $7a
	jp nc, Jump_04d_587c                             ; $42c2: $d2 $7c $58

	sbc [hl]                                         ; $42c5: $9e
	dec a                                            ; $42c6: $3d
	ld a, e                                          ; $42c7: $7b
	ld a, [$ffd5]                                    ; $42c8: $fa $d5 $ff
	adc a                                            ; $42cb: $8f
	adc $e0                                          ; $42cc: $ce $e0
	rst AddAOntoHL                                          ; $42ce: $ef
	ret nz                                           ; $42cf: $c0

	ldh [c], a                                       ; $42d0: $e2
	ret z                                            ; $42d1: $c8

	di                                               ; $42d2: $f3
	ret nz                                           ; $42d3: $c0

	db $e3                                           ; $42d4: $e3
	ret nz                                           ; $42d5: $c0

	push hl                                          ; $42d6: $e5
	sbc d                                            ; $42d7: $9a
	ld [$4617], a                                    ; $42d8: $ea $17 $46
	cp a                                             ; $42db: $bf
	push af                                          ; $42dc: $f5
	sbc e                                            ; $42dd: $9b
	ld bc, $0007                                     ; $42de: $01 $07 $00
	rra                                              ; $42e1: $1f
	push af                                          ; $42e2: $f5
	sbc l                                            ; $42e3: $9d
	or b                                             ; $42e4: $b0
	ld hl, sp+$79                                    ; $42e5: $f8 $79

Jump_04d_42e7:
	xor l                                            ; $42e7: $ad
	ld h, a                                          ; $42e8: $67
	db $e4                                           ; $42e9: $e4
	sub c                                            ; $42ea: $91
	ld bc, $0f06                                     ; $42eb: $01 $06 $0f
	jr jr_04d_432f                                   ; $42ee: $18 $3f

	ld h, b                                          ; $42f0: $60
	rst $38                                          ; $42f1: $ff
	rlca                                             ; $42f2: $07
	rrca                                             ; $42f3: $0f
	ld b, $1f                                        ; $42f4: $06 $1f
	jr jr_04d_4377                                   ; $42f6: $18 $7f

	ld h, b                                          ; $42f8: $60
	ld a, e                                          ; $42f9: $7b
	ld e, h                                          ; $42fa: $5c
	ld a, l                                          ; $42fb: $7d
	inc b                                            ; $42fc: $04
	ld a, [hl]                                       ; $42fd: $7e
	push af                                          ; $42fe: $f5
	sbc [hl]                                         ; $42ff: $9e
	ld a, [bc]                                       ; $4300: $0a
	ld h, h                                          ; $4301: $64
	add c                                            ; $4302: $81
	ld [hl], e                                       ; $4303: $73
	cp $9c                                           ; $4304: $fe $9c
	ld [$95ff], sp                                   ; $4306: $08 $ff $95
	ld [hl], e                                       ; $4309: $73
	ld hl, sp+$77                                    ; $430a: $f8 $77
	and $7f                                          ; $430c: $e6 $7f
	ld a, [$fc7f]                                    ; $430e: $fa $7f $fc
	ld [hl], h                                       ; $4311: $74
	ld h, b                                          ; $4312: $60
	ld a, a                                          ; $4313: $7f
	ld hl, sp-$64                                    ; $4314: $f8 $9c
	db $10                                           ; $4316: $10
	rst $38                                          ; $4317: $ff
	jr nz, jr_04d_4392                               ; $4318: $20 $78

	ld l, b                                          ; $431a: $68
	ld a, a                                          ; $431b: $7f
	ret nc                                           ; $431c: $d0

	ld a, l                                          ; $431d: $7d
	halt                                             ; $431e: $76
	ld a, a                                          ; $431f: $7f
	ldh a, [$df]                                     ; $4320: $f0 $df
	rst $38                                          ; $4322: $ff
	ld a, l                                          ; $4323: $7d
	ld [$327e], a                                    ; $4324: $ea $7e $32
	sbc [hl]                                         ; $4327: $9e
	dec bc                                           ; $4328: $0b
	ld a, e                                          ; $4329: $7b
	db $fc                                           ; $432a: $fc
	sbc h                                            ; $432b: $9c
	xor e                                            ; $432c: $ab
	rst $38                                          ; $432d: $ff
	ld d, a                                          ; $432e: $57

jr_04d_432f:
	ld a, e                                          ; $432f: $7b
	ld [bc], a                                       ; $4330: $02
	rst SubAFromDE                                          ; $4331: $df
	rst $38                                          ; $4332: $ff
	sbc e                                            ; $4333: $9b
	rst SubAFromDE                                          ; $4334: $df
	ccf                                              ; $4335: $3f
	ld e, a                                          ; $4336: $5f
	cp a                                             ; $4337: $bf
	halt                                             ; $4338: $76
	db $fc                                           ; $4339: $fc
	sub [hl]                                         ; $433a: $96
	di                                               ; $433b: $f3
	rst $38                                          ; $433c: $ff
	rst SubAFromBC                                          ; $433d: $e7
	rst $38                                          ; $433e: $ff
	sbc $ff                                          ; $433f: $de $ff
	cp e                                             ; $4341: $bb
	rst $38                                          ; $4342: $ff
	ret z                                            ; $4343: $c8

jr_04d_4344:
	ld a, c                                          ; $4344: $79
	jr nc, @+$7f                                     ; $4345: $30 $7d

	inc a                                            ; $4347: $3c
	sbc d                                            ; $4348: $9a
	xor $ff                                          ; $4349: $ee $ff
	ld a, [$b9fd]                                    ; $434b: $fa $fd $b9
	ld a, e                                          ; $434e: $7b
	ld b, [hl]                                       ; $434f: $46
	adc d                                            ; $4350: $8a
	db $fc                                           ; $4351: $fc
	rst $38                                          ; $4352: $ff
	ld d, a                                          ; $4353: $57
	adc c                                            ; $4354: $89
	daa                                              ; $4355: $27
	rst SubAFromDE                                          ; $4356: $df
	sbc d                                            ; $4357: $9a
	ld a, l                                          ; $4358: $7d
	or c                                             ; $4359: $b1
	ld b, b                                          ; $435a: $40
	and e                                            ; $435b: $a3
	ret nz                                           ; $435c: $c0

	call nz, $f183                                   ; $435d: $c4 $83 $f1
	rrca                                             ; $4360: $0f
	ld h, e                                          ; $4361: $63
	sbc a                                            ; $4362: $9f
	rst $38                                          ; $4363: $ff
	rst $38                                          ; $4364: $ff
	ld l, h                                          ; $4365: $6c
	ld a, e                                          ; $4366: $7b
	xor h                                            ; $4367: $ac
	ld a, h                                          ; $4368: $7c
	ld a, d                                          ; $4369: $7a
	sbc [hl]                                         ; $436a: $9e
	inc e                                            ; $436b: $1c
	ld a, d                                          ; $436c: $7a
	call z, $f380                                    ; $436d: $cc $80 $f3
	db $fc                                           ; $4370: $fc
	rst SubAFromHL                                          ; $4371: $d7
	add sp, -$0d                                     ; $4372: $e8 $f3
	db $fc                                           ; $4374: $fc
	and $f9                                          ; $4375: $e6 $f9

jr_04d_4377:
	or $d9                                           ; $4377: $f6 $d9
	sbc l                                            ; $4379: $9d
	db $e3                                           ; $437a: $e3
	jr c, jr_04d_4344                                ; $437b: $38 $c7

	pop hl                                           ; $437d: $e1
	rra                                              ; $437e: $1f
	and e                                            ; $437f: $a3
	ld e, a                                          ; $4380: $5f
	ld c, [hl]                                       ; $4381: $4e
	cp a                                             ; $4382: $bf
	add a                                            ; $4383: $87
	ld a, b                                          ; $4384: $78
	jp nz, $9bfd                                     ; $4385: $c2 $fd $9b

	db $fc                                           ; $4388: $fc
	halt                                             ; $4389: $76
	ld sp, hl                                        ; $438a: $f9
	adc $f1                                          ; $438b: $ce $f1
	cp d                                             ; $438d: $ba
	add d                                            ; $438e: $82
	push bc                                          ; $438f: $c5
	ld [hl], b                                       ; $4390: $70
	adc a                                            ; $4391: $8f

jr_04d_4392:
	rst JumpTable                                          ; $4392: $c7
	ccf                                              ; $4393: $3f
	ld d, [hl]                                       ; $4394: $56
	cp a                                             ; $4395: $bf
	sbc h                                            ; $4396: $9c
	ld a, a                                          ; $4397: $7f
	ld a, [hl]                                       ; $4398: $7e
	cp a                                             ; $4399: $bf
	cp l                                             ; $439a: $bd
	ld a, [hl]                                       ; $439b: $7e
	ld a, l                                          ; $439c: $7d
	cp $fb                                           ; $439d: $fe $fb
	db $fc                                           ; $439f: $fc
	or $f9                                           ; $43a0: $f6 $f9
	call c, Call_04d_44e3                            ; $43a2: $dc $e3 $44
	rst $38                                          ; $43a5: $ff
	and [hl]                                         ; $43a6: $a6
	rst SubAFromDE                                          ; $43a7: $df
	ld c, a                                          ; $43a8: $4f
	cp a                                             ; $43a9: $bf
	sbc a                                            ; $43aa: $9f
	ld a, a                                          ; $43ab: $7f
	halt                                             ; $43ac: $76
	adc d                                            ; $43ad: $8a
	halt                                             ; $43ae: $76
	and $9c                                          ; $43af: $e6 $9c
	rst JumpTable                                          ; $43b1: $c7
	rst $38                                          ; $43b2: $ff
	rst SubAFromDE                                          ; $43b3: $df

Call_04d_43b4:
	sbc $ff                                          ; $43b4: $de $ff
	ld a, a                                          ; $43b6: $7f
	halt                                             ; $43b7: $76
	ld l, a                                          ; $43b8: $6f
	ldh a, [c]                                       ; $43b9: $f2
	reti                                             ; $43ba: $d9


	rst $38                                          ; $43bb: $ff
	ld a, [hl]                                       ; $43bc: $7e
	xor [hl]                                         ; $43bd: $ae
	ld a, h                                          ; $43be: $7c
	ld d, c                                          ; $43bf: $51
	add b                                            ; $43c0: $80
	db $fd                                           ; $43c1: $fd
	ldh a, [c]                                       ; $43c2: $f2
	add sp, -$09                                     ; $43c3: $e8 $f7
	jp $feec                                         ; $43c5: $c3 $ec $fe


	db $fc                                           ; $43c8: $fc
	rst AddAOntoHL                                          ; $43c9: $ef
	ldh a, [$a5]                                     ; $43ca: $f0 $a5
	jp nz, $0996                                     ; $43cc: $c2 $96 $09

	xor l                                            ; $43cf: $ad
	ld [de], a                                       ; $43d0: $12
	and d                                            ; $43d1: $a2
	dec e                                            ; $43d2: $1d
	ld e, e                                          ; $43d3: $5b
	db $fc                                           ; $43d4: $fc
	add b                                            ; $43d5: $80
	ld a, a                                          ; $43d6: $7f
	dec e                                            ; $43d7: $1d
	ld a, [hl]                                       ; $43d8: $7e
	or b                                             ; $43d9: $b0
	ld l, a                                          ; $43da: $6f
	dec h                                            ; $43db: $25
	jp $8f11                                         ; $43dc: $c3 $11 $8f


	rra                                              ; $43df: $1f
	sbc c                                            ; $43e0: $99
	cp a                                             ; $43e1: $bf
	db $db                                           ; $43e2: $db
	inc a                                            ; $43e3: $3c
	xor b                                            ; $43e4: $a8
	ld [hl], b                                       ; $43e5: $70
	and b                                            ; $43e6: $a0
	ld a, c                                          ; $43e7: $79
	inc b                                            ; $43e8: $04
	ld [hl], h                                       ; $43e9: $74
	cp b                                             ; $43ea: $b8
	db $dd                                           ; $43eb: $dd
	rst $38                                          ; $43ec: $ff
	sbc h                                            ; $43ed: $9c
	xor e                                            ; $43ee: $ab
	ld d, h                                          ; $43ef: $54
	ld d, l                                          ; $43f0: $55
	ld a, d                                          ; $43f1: $7a
	ld d, $7d                                        ; $43f2: $16 $7d
	ld d, b                                          ; $43f4: $50
	sbc l                                            ; $43f5: $9d
	ld b, [hl]                                       ; $43f6: $46
	cp c                                             ; $43f7: $b9
	ld l, a                                          ; $43f8: $6f
	ldh a, [$74]                                     ; $43f9: $f0 $74
	ld e, d                                          ; $43fb: $5a
	ld a, e                                          ; $43fc: $7b
	xor $74                                          ; $43fd: $ee $74
	ld b, [hl]                                       ; $43ff: $46

Jump_04d_4400:
	ld [hl], e                                       ; $4400: $73
	and l                                            ; $4401: $a5
	ld a, a                                          ; $4402: $7f
	call nz, $f675                                   ; $4403: $c4 $75 $f6
	ld a, e                                          ; $4406: $7b
	db $ec                                           ; $4407: $ec
	sbc [hl]                                         ; $4408: $9e
	cp a                                             ; $4409: $bf
	halt                                             ; $440a: $76
	ld hl, sp+$77                                    ; $440b: $f8 $77
	ldh [$7f], a                                     ; $440d: $e0 $7f
	db $fd                                           ; $440f: $fd
	ld a, [hl]                                       ; $4410: $7e
	add c                                            ; $4411: $81
	sbc h                                            ; $4412: $9c
	add c                                            ; $4413: $81
	ld a, a                                          ; $4414: $7f
	ld a, [hl+]                                      ; $4415: $2a
	ld a, d                                          ; $4416: $7a
	jp c, $ae9c                                      ; $4417: $da $9c $ae

	rst $38                                          ; $441a: $ff
	ld e, [hl]                                       ; $441b: $5e
	ld l, e                                          ; $441c: $6b
	xor $7f                                          ; $441d: $ee $7f
	db $f4                                           ; $441f: $f4
	ld a, [hl]                                       ; $4420: $7e
	and $7d                                          ; $4421: $e6 $7d
	add sp, -$21                                     ; $4423: $e8 $df
	rst $38                                          ; $4425: $ff
	sbc [hl]                                         ; $4426: $9e
	and $79                                          ; $4427: $e6 $79
	or h                                             ; $4429: $b4
	ld a, a                                          ; $442a: $7f
	ld e, $9d                                        ; $442b: $1e $9d
	ld hl, sp+$07                                    ; $442d: $f8 $07
	ld [hl], a                                       ; $442f: $77
	db $f4                                           ; $4430: $f4
	ld a, a                                          ; $4431: $7f
	or $7e                                           ; $4432: $f6 $7e
	db $ec                                           ; $4434: $ec
	sbc b                                            ; $4435: $98
	sub b                                            ; $4436: $90
	rst AddAOntoHL                                          ; $4437: $ef
	rst FarCall                                          ; $4438: $f7
	adc a                                            ; $4439: $8f
	ld e, a                                          ; $443a: $5f
	cp a                                             ; $443b: $bf
	ld a, h                                          ; $443c: $7c
	sbc $ff                                          ; $443d: $de $ff
	sub [hl]                                         ; $443f: $96
	ldh a, [c]                                       ; $4440: $f2
	rst $38                                          ; $4441: $ff
	jr nc, @+$01                                     ; $4442: $30 $ff

	ldh [c], a                                       ; $4444: $e2
	db $fd                                           ; $4445: $fd
	pop bc                                           ; $4446: $c1
	rst $38                                          ; $4447: $ff
	rst GetHLinHL                                          ; $4448: $cf
	ld [hl], b                                       ; $4449: $70
	ldh a, [$9e]                                     ; $444a: $f0 $9e
	adc a                                            ; $444c: $8f
	ld a, c                                          ; $444d: $79
	cp [hl]                                          ; $444e: $be
	reti                                             ; $444f: $d9


	rst $38                                          ; $4450: $ff
	ld a, h                                          ; $4451: $7c
	or e                                             ; $4452: $b3
	rst SubAFromDE                                          ; $4453: $df
	rst $38                                          ; $4454: $ff
	sbc [hl]                                         ; $4455: $9e
	ld sp, hl                                        ; $4456: $f9
	ld a, d                                          ; $4457: $7a
	call z, $f496                                    ; $4458: $cc $96 $f4
	ld sp, hl                                        ; $445b: $f9
	jp hl                                            ; $445c: $e9


	rst FarCall                                          ; $445d: $f7
	rst AddAOntoHL                                          ; $445e: $ef

jr_04d_445f:
	rst SubAFromDE                                          ; $445f: $df
	ld a, a                                          ; $4460: $7f
	cp a                                             ; $4461: $bf
	ld a, [hl]                                       ; $4462: $7e
	ld a, e                                          ; $4463: $7b
	db $f4                                           ; $4464: $f4
	ld a, a                                          ; $4465: $7f
	ldh [c], a                                       ; $4466: $e2
	adc [hl]                                         ; $4467: $8e
	sbc h                                            ; $4468: $9c
	rst $38                                          ; $4469: $ff
	ld l, $f1                                        ; $446a: $2e $f1
	ei                                               ; $446c: $fb
	rst SubAFromBC                                          ; $446d: $e7
	adc $ff                                          ; $446e: $ce $ff
	cp $f9                                           ; $4470: $fe $f9
	dec l                                            ; $4472: $2d
	di                                               ; $4473: $f3
	rlca                                             ; $4474: $07
	rst $38                                          ; $4475: $ff
	jr jr_04d_445f                                   ; $4476: $18 $e7

	inc bc                                           ; $4478: $03
	ld a, e                                          ; $4479: $7b
	inc d                                            ; $447a: $14
	sbc b                                            ; $447b: $98
	ld a, d                                          ; $447c: $7a
	db $fd                                           ; $447d: $fd
	ld a, a                                          ; $447e: $7f
	pop af                                           ; $447f: $f1
	ei                                               ; $4480: $fb
	rst FarCall                                          ; $4481: $f7
	rst SubAFromBC                                          ; $4482: $e7
	sbc $ff                                          ; $4483: $de $ff
	sbc d                                            ; $4485: $9a
	add hl, de                                       ; $4486: $19
	cp $7a                                           ; $4487: $fe $7a
	db $fd                                           ; $4489: $fd
	cp b                                             ; $448a: $b8
	ld h, a                                          ; $448b: $67
	ret nz                                           ; $448c: $c0

	add e                                            ; $448d: $83
	rst $38                                          ; $448e: $ff
	ldh a, [$7f]                                     ; $448f: $f0 $7f
	adc a                                            ; $4491: $8f
	ld a, a                                          ; $4492: $7f
	ld hl, sp+$7e                                    ; $4493: $f8 $7e
	pop hl                                           ; $4495: $e1
	db $fc                                           ; $4496: $fc
	ret nz                                           ; $4497: $c0

	rst $38                                          ; $4498: $ff

Call_04d_4499:
	add e                                            ; $4499: $83
	db $fc                                           ; $449a: $fc
	ld b, $f9                                        ; $449b: $06 $f9
	nop                                              ; $449d: $00
	rst $38                                          ; $449e: $ff
	xor l                                            ; $449f: $ad
	rst $38                                          ; $44a0: $ff
	cp h                                             ; $44a1: $bc
	jp $2fd0                                         ; $44a2: $c3 $d0 $2f


	ld c, b                                          ; $44a5: $48
	rst $38                                          ; $44a6: $ff
	ld sp, $03ff                                     ; $44a7: $31 $ff $03
	ld [hl], d                                       ; $44aa: $72
	ld c, h                                          ; $44ab: $4c
	ld a, a                                          ; $44ac: $7f
	sbc a                                            ; $44ad: $9f
	ld a, a                                          ; $44ae: $7f
	halt                                             ; $44af: $76
	ld a, a                                          ; $44b0: $7f
	xor h                                            ; $44b1: $ac
	sbc [hl]                                         ; $44b2: $9e
	db $fd                                           ; $44b3: $fd
	ld h, a                                          ; $44b4: $67
	jp nc, $f47b                                     ; $44b5: $d2 $7b $f4

	ld a, a                                          ; $44b8: $7f
	sub a                                            ; $44b9: $97
	ld a, a                                          ; $44ba: $7f
	ld a, b                                          ; $44bb: $78
	add b                                            ; $44bc: $80
	adc a                                            ; $44bd: $8f
	db $fc                                           ; $44be: $fc
	rra                                              ; $44bf: $1f
	rst $38                                          ; $44c0: $ff
	ld a, [hl]                                       ; $44c1: $7e
	cp a                                             ; $44c2: $bf
	ld a, h                                          ; $44c3: $7c
	cp $ff                                           ; $44c4: $fe $ff
	db $fc                                           ; $44c6: $fc
	db $fd                                           ; $44c7: $fd
	ld hl, sp-$36                                    ; $44c8: $f8 $ca
	db $ec                                           ; $44ca: $ec
	ld hl, sp-$39                                    ; $44cb: $f8 $c7
	db $fc                                           ; $44cd: $fc
	add e                                            ; $44ce: $83
	ld l, $91                                        ; $44cf: $2e $91
	ld [hl-], a                                      ; $44d1: $32
	inc b                                            ; $44d2: $04
	xor h                                            ; $44d3: $ac
	ld b, c                                          ; $44d4: $41
	sub d                                            ; $44d5: $92
	ld h, c                                          ; $44d6: $61
	sub h                                            ; $44d7: $94
	dec bc                                           ; $44d8: $0b
	push af                                          ; $44d9: $f5
	rrca                                             ; $44da: $0f
	ld l, h                                          ; $44db: $6c
	add c                                            ; $44dc: $81
	sbc [hl]                                         ; $44dd: $9e
	ld [hl-], a                                      ; $44de: $32
	db $fc                                           ; $44df: $fc
	ld a, c                                          ; $44e0: $79
	di                                               ; $44e1: $f3
	ld [de], a                                       ; $44e2: $12

Call_04d_44e3:
	ld h, a                                          ; $44e3: $67
	ld h, c                                          ; $44e4: $61
	sbc [hl]                                         ; $44e5: $9e
	inc c                                            ; $44e6: $0c
	di                                               ; $44e7: $f3
	ld [hl], b                                       ; $44e8: $70
	adc a                                            ; $44e9: $8f
	add d                                            ; $44ea: $82
	ld bc, $0709                                     ; $44eb: $01 $09 $07
	ret c                                            ; $44ee: $d8

	rrca                                             ; $44ef: $0f
	dec bc                                           ; $44f0: $0b
	sbc h                                            ; $44f1: $9c
	ld c, c                                          ; $44f2: $49
	and [hl]                                         ; $44f3: $a6
	ld h, h                                          ; $44f4: $64
	jp $936d                                         ; $44f5: $c3 $6d $93


	db $e4                                           ; $44f8: $e4
	ld e, a                                          ; $44f9: $5f
	ld b, b                                          ; $44fa: $40
	db $f4                                           ; $44fb: $f4
	ld a, b                                          ; $44fc: $78
	ret z                                            ; $44fd: $c8

	ld a, [$089c]                                    ; $44fe: $fa $9c $08
	nop                                              ; $4501: $00
	inc b                                            ; $4502: $04
	ld a, b                                          ; $4503: $78
	ld e, h                                          ; $4504: $5c
	ld a, [hl]                                       ; $4505: $7e
	ret nz                                           ; $4506: $c0

	sbc [hl]                                         ; $4507: $9e
	xor e                                            ; $4508: $ab
	ld a, e                                          ; $4509: $7b
	db $ec                                           ; $450a: $ec
	ld e, a                                          ; $450b: $5f
	db $e4                                           ; $450c: $e4
	ld a, a                                          ; $450d: $7f
	ldh a, [$7e]                                     ; $450e: $f0 $7e
	sbc $9a                                          ; $4510: $de $9a
	ld e, a                                          ; $4512: $5f
	nop                                              ; $4513: $00
	dec hl                                           ; $4514: $2b
	nop                                              ; $4515: $00
	dec d                                            ; $4516: $15
	ld a, b                                          ; $4517: $78
	adc h                                            ; $4518: $8c
	ld a, a                                          ; $4519: $7f
	db $f4                                           ; $451a: $f4
	sbc [hl]                                         ; $451b: $9e
	xor a                                            ; $451c: $af
	ld [hl], h                                       ; $451d: $74
	inc [hl]                                         ; $451e: $34
	sbc c                                            ; $451f: $99
	ld d, l                                          ; $4520: $55
	push af                                          ; $4521: $f5
	ld a, [bc]                                       ; $4522: $0a
	ld a, [$7f05]                                    ; $4523: $fa $05 $7f
	ld a, e                                          ; $4526: $7b
	db $f4                                           ; $4527: $f4
	ld [hl], a                                       ; $4528: $77
	call nc, $e27f                                   ; $4529: $d4 $7f $e2
	sub l                                            ; $452c: $95
	ld bc, $57ff                                     ; $452d: $01 $ff $57
	xor a                                            ; $4530: $af
	and b                                            ; $4531: $a0
	ld e, a                                          ; $4532: $5f
	ld d, l                                          ; $4533: $55
	xor d                                            ; $4534: $aa
	cp $01                                           ; $4535: $fe $01
	ld l, c                                          ; $4537: $69
	ld l, e                                          ; $4538: $6b
	sbc $ff                                          ; $4539: $de $ff
	ld a, h                                          ; $453b: $7c
	cp h                                             ; $453c: $bc
	sub l                                            ; $453d: $95
	ld b, b                                          ; $453e: $40
	cp a                                             ; $453f: $bf
	xor b                                            ; $4540: $a8
	ld d, a                                          ; $4541: $57
	push de                                          ; $4542: $d5
	ld a, [hl+]                                      ; $4543: $2a

jr_04d_4544:
	ld [$f515], a                                    ; $4544: $ea $15 $f5
	ld a, [bc]                                       ; $4547: $0a
	ld [hl], a                                       ; $4548: $77
	ld c, b                                          ; $4549: $48
	sbc [hl]                                         ; $454a: $9e
	inc a                                            ; $454b: $3c
	ld [hl], e                                       ; $454c: $73
	rst SubAFromBC                                          ; $454d: $e7
	ld a, a                                          ; $454e: $7f
	db $ec                                           ; $454f: $ec
	ld a, a                                          ; $4550: $7f
	ret c                                            ; $4551: $d8

	sbc d                                            ; $4552: $9a
	ld d, h                                          ; $4553: $54
	xor e                                            ; $4554: $ab
	rst SubAFromBC                                          ; $4555: $e7
	rst $38                                          ; $4556: $ff
	rra                                              ; $4557: $1f
	ld l, d                                          ; $4558: $6a
	ld [hl], d                                       ; $4559: $72
	ld a, a                                          ; $455a: $7f
	cp $77                                           ; $455b: $fe $77
	ret z                                            ; $455d: $c8

	sbc h                                            ; $455e: $9c
	add sp, -$39                                     ; $455f: $e8 $c7
	ld l, a                                          ; $4561: $6f
	ld a, c                                          ; $4562: $79
	sbc h                                            ; $4563: $9c
	halt                                             ; $4564: $76
	and [hl]                                         ; $4565: $a6
	ld [hl], a                                       ; $4566: $77
	xor $9c                                          ; $4567: $ee $9c
	ld d, b                                          ; $4569: $50
	xor a                                            ; $456a: $af
	ld c, a                                          ; $456b: $4f
	ret c                                            ; $456c: $d8

	rst $38                                          ; $456d: $ff
	ld h, e                                          ; $456e: $63
	or c                                             ; $456f: $b1
	call c, $9eff                                    ; $4570: $dc $ff $9e
	call nc, $f06b                                   ; $4573: $d4 $6b $f0
	sbc l                                            ; $4576: $9d
	push bc                                          ; $4577: $c5
	ei                                               ; $4578: $fb
	ld a, e                                          ; $4579: $7b
	ret nz                                           ; $457a: $c0

	sbc l                                            ; $457b: $9d
	ld a, a                                          ; $457c: $7f
	xor a                                            ; $457d: $af
	ld a, d                                          ; $457e: $7a
	ld hl, $959e                                     ; $457f: $21 $9e $95
	ld l, c                                          ; $4582: $69
	or $df                                           ; $4583: $f6 $df
	rst SubAFromDE                                          ; $4585: $df
	db $dd                                           ; $4586: $dd
	rst $38                                          ; $4587: $ff
	sub a                                            ; $4588: $97
	jp z, $fc3f                                      ; $4589: $ca $3f $fc

	inc bc                                           ; $458c: $03
	ld a, a                                          ; $458d: $7f
	add b                                            ; $458e: $80
	xor a                                            ; $458f: $af
	ld d, b                                          ; $4590: $50
	reti                                             ; $4591: $d9


	rst $38                                          ; $4592: $ff
	ld a, [hl]                                       ; $4593: $7e
	inc c                                            ; $4594: $0c
	ld a, h                                          ; $4595: $7c
	ldh a, [rPCM34]                                  ; $4596: $f0 $77
	rst GetHLinHL                                          ; $4598: $cf
	ld l, [hl]                                       ; $4599: $6e
	call nz, $ffdf                                   ; $459a: $c4 $df $ff
	add b                                            ; $459d: $80
	cp [hl]                                          ; $459e: $be
	rst $38                                          ; $459f: $ff
	ld d, l                                          ; $45a0: $55
	db $fd                                           ; $45a1: $fd
	ldh a, [$08]                                     ; $45a2: $f0 $08
	and $1e                                          ; $45a4: $e6 $1e
	ld sp, hl                                        ; $45a6: $f9
	ldh a, [$fb]                                     ; $45a7: $f0 $fb
	ldh a, [$fa]                                     ; $45a9: $f0 $fa
	push hl                                          ; $45ab: $e5
	pop af                                           ; $45ac: $f1
	adc [hl]                                         ; $45ad: $8e
	sbc l                                            ; $45ae: $9d
	ld [bc], a                                       ; $45af: $02
	add [hl]                                         ; $45b0: $86
	ld bc, $0ffc                                     ; $45b1: $01 $fc $0f
	nop                                              ; $45b4: $00
	rst $38                                          ; $45b5: $ff
	ld [hl], c                                       ; $45b6: $71
	adc [hl]                                         ; $45b7: $8e
	ld [de], a                                       ; $45b8: $12
	inc c                                            ; $45b9: $0c
	rst FarCall                                          ; $45ba: $f7
	jr c, jr_04d_4544                                ; $45bb: $38 $87

	adc l                                            ; $45bd: $8d
	ld a, b                                          ; $45be: $78
	rra                                              ; $45bf: $1f
	ldh [$3e], a                                     ; $45c0: $e0 $3e
	pop bc                                           ; $45c2: $c1
	ld b, e                                          ; $45c3: $43
	cp a                                             ; $45c4: $bf
	db $db                                           ; $45c5: $db
	ld a, a                                          ; $45c6: $7f
	inc sp                                           ; $45c7: $33
	rrca                                             ; $45c8: $0f
	ld h, e                                          ; $45c9: $63
	rra                                              ; $45ca: $1f
	push bc                                          ; $45cb: $c5
	ccf                                              ; $45cc: $3f
	call $1d3f                                       ; $45cd: $cd $3f $1d
	ld a, d                                          ; $45d0: $7a
	ld c, d                                          ; $45d1: $4a
	db $dd                                           ; $45d2: $dd
	rst $38                                          ; $45d3: $ff
	sub [hl]                                         ; $45d4: $96
	adc b                                            ; $45d5: $88
	ld b, a                                          ; $45d6: $47
	adc b                                            ; $45d7: $88
	rst JumpTable                                          ; $45d8: $c7
	xor h                                            ; $45d9: $ac
	rst JumpTable                                          ; $45da: $c7
	call nc, $e7ef                                   ; $45db: $d4 $ef $e7
	ld a, b                                          ; $45de: $78
	adc $9a                                          ; $45df: $ce $9a
	rst FarCall                                          ; $45e1: $f7
	ld hl, sp-$0d                                    ; $45e2: $f8 $f3
	call z, $7a02                                    ; $45e4: $cc $02 $7a
	add sp, -$62                                     ; $45e7: $e8 $9e
	xor b                                            ; $45e9: $a8
	ld a, e                                          ; $45ea: $7b
	inc b                                            ; $45eb: $04
	halt                                             ; $45ec: $76
	db $e4                                           ; $45ed: $e4
	sbc [hl]                                         ; $45ee: $9e
	db $eb                                           ; $45ef: $eb
	ld a, e                                          ; $45f0: $7b
	and b                                            ; $45f1: $a0
	ld [hl], a                                       ; $45f2: $77
	ld hl, sp+$7e                                    ; $45f3: $f8 $7e
	ret z                                            ; $45f5: $c8

	ld a, [hl]                                       ; $45f6: $7e
	ldh [rPCM34], a                                  ; $45f7: $e0 $77
	ld hl, sp-$62                                    ; $45f9: $f8 $9e
	cp [hl]                                          ; $45fb: $be
	ld a, e                                          ; $45fc: $7b
	ldh a, [$7e]                                     ; $45fd: $f0 $7e
	ret c                                            ; $45ff: $d8

	ld a, [hl]                                       ; $4600: $7e
	ret nc                                           ; $4601: $d0

	ld a, l                                          ; $4602: $7d
	sbc d                                            ; $4603: $9a
	sbc [hl]                                         ; $4604: $9e
	ld d, a                                          ; $4605: $57
	ld a, e                                          ; $4606: $7b
	or $7f                                           ; $4607: $f6 $7f
	db $fc                                           ; $4609: $fc
	halt                                             ; $460a: $76
	ldh [$7f], a                                     ; $460b: $e0 $7f
	db $f4                                           ; $460d: $f4
	ld d, b                                          ; $460e: $50
	ld c, l                                          ; $460f: $4d
	inc sp                                           ; $4610: $33
	cp $7e                                           ; $4611: $fe $7e
	or b                                             ; $4613: $b0
	ld d, a                                          ; $4614: $57
	db $f4                                           ; $4615: $f4
	ld a, c                                          ; $4616: $79
	ld b, b                                          ; $4617: $40
	rst SubAFromDE                                          ; $4618: $df
	ld d, l                                          ; $4619: $55
	sbc h                                            ; $461a: $9c
	xor d                                            ; $461b: $aa
	ld [$7715], a                                    ; $461c: $ea $15 $77
	ldh a, [c]                                       ; $461f: $f2
	ld a, a                                          ; $4620: $7f
	ld l, $77                                        ; $4621: $2e $77
	db $f4                                           ; $4623: $f4
	ld e, a                                          ; $4624: $5f
	db $fc                                           ; $4625: $fc
	ld a, [hl]                                       ; $4626: $7e
	xor h                                            ; $4627: $ac
	ld c, a                                          ; $4628: $4f
	ldh a, [$3f]                                     ; $4629: $f0 $3f
	db $fc                                           ; $462b: $fc
	ld a, [hl]                                       ; $462c: $7e
	adc b                                            ; $462d: $88
	ld d, a                                          ; $462e: $57
	ldh a, [$7e]                                     ; $462f: $f0 $7e
	sub b                                            ; $4631: $90
	ld l, [hl]                                       ; $4632: $6e
	sbc b                                            ; $4633: $98
	ld a, [hl]                                       ; $4634: $7e
	xor b                                            ; $4635: $a8
	ld [hl], a                                       ; $4636: $77
	db $fc                                           ; $4637: $fc
	ld a, h                                          ; $4638: $7c
	xor $5f                                          ; $4639: $ee $5f
	adc e                                            ; $463b: $8b
	ld a, [hl]                                       ; $463c: $7e
	call nz, $028b                                   ; $463d: $c4 $8b $02
	db $fd                                           ; $4640: $fd
	ld d, l                                          ; $4641: $55
	xor d                                            ; $4642: $aa
	ld a, [hl+]                                      ; $4643: $2a
	push de                                          ; $4644: $d5
	rla                                              ; $4645: $17
	add sp, $0f                                      ; $4646: $e8 $0f
	ldh a, [$1f]                                     ; $4648: $f0 $1f
	ldh [$2f], a                                     ; $464a: $e0 $2f
	ret nc                                           ; $464c: $d0

	ld e, a                                          ; $464d: $5f

jr_04d_464e:
	and b                                            ; $464e: $a0
	cp a                                             ; $464f: $bf
	ld b, b                                          ; $4650: $40
	ld a, a                                          ; $4651: $7f
	add b                                            ; $4652: $80
	ld [hl], a                                       ; $4653: $77
	push hl                                          ; $4654: $e5
	ld a, [hl]                                       ; $4655: $7e
	cp b                                             ; $4656: $b8
	sub a                                            ; $4657: $97
	ldh a, [$0c]                                     ; $4658: $f0 $0c
	pop hl                                           ; $465a: $e1
	rra                                              ; $465b: $1f
	rst GetHLinHL                                          ; $465c: $cf
	ccf                                              ; $465d: $3f
	rst SubAFromDE                                          ; $465e: $df
	ccf                                              ; $465f: $3f
	ld a, c                                          ; $4660: $79
	ld a, e                                          ; $4661: $7b
	ld a, e                                          ; $4662: $7b
	ldh a, [$7f]                                     ; $4663: $f0 $7f
	db $fd                                           ; $4665: $fd
	sbc d                                            ; $4666: $9a
	ld l, [hl]                                       ; $4667: $6e
	sbc a                                            ; $4668: $9f
	sbc d                                            ; $4669: $9a
	push hl                                          ; $466a: $e5
	ldh [$7a], a                                     ; $466b: $e0 $7a
	jr c, jr_04d_464e                                ; $466d: $38 $df

	rst $38                                          ; $466f: $ff
	ld h, h                                          ; $4670: $64
	ld a, [hl-]                                      ; $4671: $3a
	sbc d                                            ; $4672: $9a
	dec bc                                           ; $4673: $0b
	db $fc                                           ; $4674: $fc
	jp $0f3f                                         ; $4675: $c3 $3f $0f


	call c, Call_04d_6eff                            ; $4678: $dc $ff $6e
	jp c, $067d                                      ; $467b: $da $7d $06

	ld [hl], c                                       ; $467e: $71
	ld e, a                                          ; $467f: $5f
	sbc $ff                                          ; $4680: $de $ff
	ld a, c                                          ; $4682: $79
	ld e, [hl]                                       ; $4683: $5e
	sub [hl]                                         ; $4684: $96
	ld hl, sp-$74                                    ; $4685: $f8 $8c
	ldh a, [$30]                                     ; $4687: $f0 $30
	ret nz                                           ; $4689: $c0

	cpl                                              ; $468a: $2f
	add b                                            ; $468b: $80
	ld d, [hl]                                       ; $468c: $56
	cpl                                              ; $468d: $2f
	halt                                             ; $468e: $76
	ld a, [hl+]                                      ; $468f: $2a
	sub e                                            ; $4690: $93
	ld d, $89                                        ; $4691: $16 $89
	db $dd                                           ; $4693: $dd
	inc hl                                           ; $4694: $23
	scf                                              ; $4695: $37
	rrca                                             ; $4696: $0f
	ld [hl], a                                       ; $4697: $77
	rrca                                             ; $4698: $0f
	scf                                              ; $4699: $37
	rra                                              ; $469a: $1f
	adc a                                            ; $469b: $8f
	ccf                                              ; $469c: $3f
	ld [hl], e                                       ; $469d: $73
	call nc, $8173                                   ; $469e: $d4 $73 $81
	sbc [hl]                                         ; $46a1: $9e
	rlca                                             ; $46a2: $07
	cp $99                                           ; $46a3: $fe $99
	pop af                                           ; $46a5: $f1
	nop                                              ; $46a6: $00
	add sp, $16                                      ; $46a7: $e8 $16
	inc c                                            ; $46a9: $0c
	ldh a, [$5f]                                     ; $46aa: $f0 $5f
	ld b, $99                                        ; $46ac: $06 $99
	ld a, [bc]                                       ; $46ae: $0a
	sub l                                            ; $46af: $95
	and c                                            ; $46b0: $a1
	ld a, [bc]                                       ; $46b1: $0a
	ld b, h                                          ; $46b2: $44
	ld a, [hl-]                                      ; $46b3: $3a
	ld h, a                                          ; $46b4: $67
	ldh a, [c]                                       ; $46b5: $f2
	ld [hl], a                                       ; $46b6: $77
	ld b, b                                          ; $46b7: $40
	sbc e                                            ; $46b8: $9b
	add d                                            ; $46b9: $82
	ld a, l                                          ; $46ba: $7d
	ld bc, $6ffe                                     ; $46bb: $01 $fe $6f
	ldh a, [c]                                       ; $46be: $f2
	ld a, l                                          ; $46bf: $7d
	and d                                            ; $46c0: $a2
	ld h, a                                          ; $46c1: $67
	ld l, $57                                        ; $46c2: $2e $57
	ldh a, [c]                                       ; $46c4: $f2
	ld [hl], a                                       ; $46c5: $77
	push hl                                          ; $46c6: $e5
	ld d, a                                          ; $46c7: $57
	inc b                                            ; $46c8: $04
	ld [hl], a                                       ; $46c9: $77
	jr nz, @+$61                                     ; $46ca: $20 $5f

	ldh a, [$7f]                                     ; $46cc: $f0 $7f
	db $10                                           ; $46ce: $10
	ld a, a                                          ; $46cf: $7f
	ldh a, [c]                                       ; $46d0: $f2
	sbc l                                            ; $46d1: $9d
	inc b                                            ; $46d2: $04
	ei                                               ; $46d3: $fb
	ld e, [hl]                                       ; $46d4: $5e
	add sp, $77                                      ; $46d5: $e8 $77
	jp nc, $819d                                     ; $46d7: $d2 $9d $81

	ld a, [hl]                                       ; $46da: $7e
	halt                                             ; $46db: $76
	db $ec                                           ; $46dc: $ec
	ld a, [hl]                                       ; $46dd: $7e
	db $f4                                           ; $46de: $f4
	ld a, $7b                                        ; $46df: $3e $7b
	sbc l                                            ; $46e1: $9d
	ld a, [bc]                                       ; $46e2: $0a
	push af                                          ; $46e3: $f5
	ld [hl], l                                       ; $46e4: $75
	or d                                             ; $46e5: $b2
	ld l, a                                          ; $46e6: $6f
	xor h                                            ; $46e7: $ac
	ld [hl], a                                       ; $46e8: $77
	cp $9b                                           ; $46e9: $fe $9b
	ld b, c                                          ; $46eb: $41
	cp [hl]                                          ; $46ec: $be
	and d                                            ; $46ed: $a2
	ld e, l                                          ; $46ee: $5d

jr_04d_46ef:
	halt                                             ; $46ef: $76
	ld a, d                                          ; $46f0: $7a
	halt                                             ; $46f1: $76
	ret c                                            ; $46f2: $d8

	sbc e                                            ; $46f3: $9b
	dec b                                            ; $46f4: $05
	ld a, [$f50a]                                    ; $46f5: $fa $0a $f5
	ld [hl], a                                       ; $46f8: $77
	cp d                                             ; $46f9: $ba
	sub a                                            ; $46fa: $97
	ld d, a                                          ; $46fb: $57
	xor b                                            ; $46fc: $a8
	cp a                                             ; $46fd: $bf
	ld b, b                                          ; $46fe: $40
	ld d, l                                          ; $46ff: $55
	xor d                                            ; $4700: $aa
	xor e                                            ; $4701: $ab
	ld d, h                                          ; $4702: $54
	ld e, [hl]                                       ; $4703: $5e
	call nc, $fe77                                   ; $4704: $d4 $77 $fe
	sbc b                                            ; $4707: $98
	ei                                               ; $4708: $fb
	nop                                              ; $4709: $00
	cp $00                                           ; $470a: $fe $00
	push af                                          ; $470c: $f5
	nop                                              ; $470d: $00
	ld [$ec69], a                                    ; $470e: $ea $69 $ec
	ld a, [hl]                                       ; $4711: $7e
	jp nz, $f86f                                     ; $4712: $c2 $6f $f8

	ld [hl], a                                       ; $4715: $77
	db $fc                                           ; $4716: $fc
	sbc [hl]                                         ; $4717: $9e
	add b                                            ; $4718: $80
	cp $9b                                           ; $4719: $fe $9b

jr_04d_471b:
	rlca                                             ; $471b: $07
	rst $38                                          ; $471c: $ff
	ldh a, [rIF]                                     ; $471d: $f0 $0f
	ld [hl], h                                       ; $471f: $74
	call nc, $d86d                                   ; $4720: $d4 $6d $d8
	ld a, l                                          ; $4723: $7d
	call nz, $ce76                                   ; $4724: $c4 $76 $ce
	ld a, h                                          ; $4727: $7c
	push de                                          ; $4728: $d5
	ld [hl], h                                       ; $4729: $74
	or $76                                           ; $472a: $f6 $76
	ld [hl-], a                                      ; $472c: $32
	sbc l                                            ; $472d: $9d
	ld a, [hl]                                       ; $472e: $7e
	ld bc, $ffdb                                     ; $472f: $01 $db $ff
	ld a, l                                          ; $4732: $7d
	inc l                                            ; $4733: $2c
	ld a, [hl]                                       ; $4734: $7e
	sub l                                            ; $4735: $95
	ld l, a                                          ; $4736: $6f
	db $ec                                           ; $4737: $ec
	rst SubAFromHL                                          ; $4738: $d7
	rst $38                                          ; $4739: $ff
	ld a, [hl]                                       ; $473a: $7e
	call nz, $d877                                   ; $473b: $c4 $77 $d8
	db $d3                                           ; $473e: $d3
	rst $38                                          ; $473f: $ff
	ld a, a                                          ; $4740: $7f
	ret c                                            ; $4741: $d8

	sbc b                                            ; $4742: $98
	inc a                                            ; $4743: $3c
	inc bc                                           ; $4744: $03
	ld sp, hl                                        ; $4745: $f9
	rlca                                             ; $4746: $07
	ld a, d                                          ; $4747: $7a
	rlca                                             ; $4748: $07
	ld a, a                                          ; $4749: $7f
	ld a, d                                          ; $474a: $7a
	sub e                                            ; $474b: $93
	add b                                            ; $474c: $80
	jr nc, jr_04d_471b                               ; $474d: $30 $cc

	rst JumpTable                                          ; $474f: $c7
	ccf                                              ; $4750: $3f
	call c, $f53f                                    ; $4751: $dc $3f $f5
	cp $f1                                           ; $4754: $fe $f1
	rst $38                                          ; $4756: $ff
	add h                                            ; $4757: $84
	ld a, e                                          ; $4758: $7b
	ld a, h                                          ; $4759: $7c
	rst $38                                          ; $475a: $ff
	rst $38                                          ; $475b: $ff
	ld hl, sp+$3c                                    ; $475c: $f8 $3c
	db $10                                           ; $475e: $10
	rst $38                                          ; $475f: $ff
	di                                               ; $4760: $f3
	rrca                                             ; $4761: $0f
	rst $38                                          ; $4762: $ff
	xor l                                            ; $4763: $ad
	ld b, d                                          ; $4764: $42
	sbc a                                            ; $4765: $9f
	ldh [$7f], a                                     ; $4766: $e0 $7f
	ret nz                                           ; $4768: $c0

	ret z                                            ; $4769: $c8

	jr nz, jr_04d_46ef                               ; $476a: $20 $83

	add [hl]                                         ; $476c: $86
	inc b                                            ; $476d: $04
	rst FarCall                                          ; $476e: $f7
	adc a                                            ; $476f: $8f
	or b                                             ; $4770: $b0
	rst GetHLinHL                                          ; $4771: $cf
	rst GetHLinHL                                          ; $4772: $cf
	rst $38                                          ; $4773: $ff
	ld e, h                                          ; $4774: $5c
	and e                                            ; $4775: $a3
	xor $11                                          ; $4776: $ee $11
	inc h                                            ; $4778: $24
	dec de                                           ; $4779: $1b
	ld h, b                                          ; $477a: $60
	scf                                              ; $477b: $37
	ret nc                                           ; $477c: $d0

	rst AddAOntoHL                                          ; $477d: $ef
	ld h, h                                          ; $477e: $64
	sbc a                                            ; $477f: $9f
	ld a, [hl-]                                      ; $4780: $3a
	db $fd                                           ; $4781: $fd
	db $e3                                           ; $4782: $e3
	db $fc                                           ; $4783: $fc
	ld d, b                                          ; $4784: $50
	xor a                                            ; $4785: $af
	halt                                             ; $4786: $76
	or $7e                                           ; $4787: $f6 $7e
	sub $7c                                          ; $4789: $d6 $7c
	ld [hl], d                                       ; $478b: $72
	ld a, a                                          ; $478c: $7f
	db $fc                                           ; $478d: $fc
	adc e                                            ; $478e: $8b
	db $10                                           ; $478f: $10
	rrca                                             ; $4790: $0f
	ld b, e                                          ; $4791: $43
	nop                                              ; $4792: $00
	ld bc, $06fe                                     ; $4793: $01 $fe $06
	ld sp, hl                                        ; $4796: $f9
	inc e                                            ; $4797: $1c
	db $e3                                           ; $4798: $e3
	nop                                              ; $4799: $00
	rst $38                                          ; $479a: $ff
	inc bc                                           ; $479b: $03
	db $fc                                           ; $479c: $fc
	inc b                                            ; $479d: $04
	ei                                               ; $479e: $fb
	ld a, c                                          ; $479f: $79
	add [hl]                                         ; $47a0: $86
	rrca                                             ; $47a1: $0f
	jr nc, jr_04d_481b                               ; $47a2: $30 $77

	dec l                                            ; $47a4: $2d
	ld [hl], l                                       ; $47a5: $75
	add sp, $7f                                      ; $47a6: $e8 $7f
	db $fc                                           ; $47a8: $fc
	sbc l                                            ; $47a9: $9d
	ccf                                              ; $47aa: $3f
	ret nz                                           ; $47ab: $c0

	ld l, [hl]                                       ; $47ac: $6e
	ld [bc], a                                       ; $47ad: $02
	ld [hl], h                                       ; $47ae: $74
	ld l, d                                          ; $47af: $6a
	ld l, [hl]                                       ; $47b0: $6e
	adc b                                            ; $47b1: $88
	ld [hl], a                                       ; $47b2: $77
	cp $9b                                           ; $47b3: $fe $9b
	ld e, $e1                                        ; $47b5: $1e $e1
	ld [bc], a                                       ; $47b7: $02
	db $fd                                           ; $47b8: $fd
	halt                                             ; $47b9: $76
	or b                                             ; $47ba: $b0
	ld h, d                                          ; $47bb: $62
	ld c, d                                          ; $47bc: $4a
	sbc d                                            ; $47bd: $9a
	push af                                          ; $47be: $f5
	rla                                              ; $47bf: $17
	add sp, -$51                                     ; $47c0: $e8 $af
	ld d, b                                          ; $47c2: $50
	ld e, [hl]                                       ; $47c3: $5e
	ldh a, [c]                                       ; $47c4: $f2
	ld e, a                                          ; $47c5: $5f
	cp $9e                                           ; $47c6: $fe $9e
	db $fd                                           ; $47c8: $fd
	ld [hl], d                                       ; $47c9: $72
	db $ec                                           ; $47ca: $ec
	ld [hl], d                                       ; $47cb: $72
	ld d, b                                          ; $47cc: $50
	ld a, d                                          ; $47cd: $7a
	ldh [$6e], a                                     ; $47ce: $e0 $6e
	db $ec                                           ; $47d0: $ec
	sbc d                                            ; $47d1: $9a
	ld d, b                                          ; $47d2: $50
	nop                                              ; $47d3: $00
	ld a, [$d500]                                    ; $47d4: $fa $00 $d5
	ld [hl], e                                       ; $47d7: $73
	db $f4                                           ; $47d8: $f4
	ld a, h                                          ; $47d9: $7c
	cp h                                             ; $47da: $bc
	ei                                               ; $47db: $fb
	ld a, a                                          ; $47dc: $7f
	ld hl, sp+$7f                                    ; $47dd: $f8 $7f
	db $ec                                           ; $47df: $ec
	halt                                             ; $47e0: $76
	ret c                                            ; $47e1: $d8

	ldh [$d9], a                                     ; $47e2: $e0 $d9
	ld [hl], a                                       ; $47e4: $77
	call nz, Call_04d_7c74                           ; $47e5: $c4 $74 $7c
	ld sp, hl                                        ; $47e8: $f9
	ld a, [hl]                                       ; $47e9: $7e
	cp h                                             ; $47ea: $bc
	sbc l                                            ; $47eb: $9d
	ld e, d                                          ; $47ec: $5a
	dec b                                            ; $47ed: $05
	ld h, a                                          ; $47ee: $67
	db $ec                                           ; $47ef: $ec
	ld a, a                                          ; $47f0: $7f
	db $fc                                           ; $47f1: $fc
	ld a, a                                          ; $47f2: $7f
	dec h                                            ; $47f3: $25
	halt                                             ; $47f4: $76
	cp h                                             ; $47f5: $bc
	sbc d                                            ; $47f6: $9a
	push af                                          ; $47f7: $f5
	ld a, [bc]                                       ; $47f8: $0a
	ld a, d                                          ; $47f9: $7a
	dec b                                            ; $47fa: $05
	xor a                                            ; $47fb: $af
	ld a, b                                          ; $47fc: $78
	ld a, b                                          ; $47fd: $78
	ld a, a                                          ; $47fe: $7f
	db $fc                                           ; $47ff: $fc
	ld a, a                                          ; $4800: $7f
	ldh a, [rPCM12]                                  ; $4801: $f0 $76
	xor b                                            ; $4803: $a8
	adc [hl]                                         ; $4804: $8e
	ld b, c                                          ; $4805: $41
	cp h                                             ; $4806: $bc
	xor h                                            ; $4807: $ac
	ld d, h                                          ; $4808: $54
	ld d, h                                          ; $4809: $54
	and l                                            ; $480a: $a5
	or [hl]                                          ; $480b: $b6
	ld b, a                                          ; $480c: $47
	ld c, c                                          ; $480d: $49
	and c                                            ; $480e: $a1
	adc [hl]                                         ; $480f: $8e
	ld c, c                                          ; $4810: $49
	inc d                                            ; $4811: $14
	db $eb                                           ; $4812: $eb
	ld h, l                                          ; $4813: $65
	db $db                                           ; $4814: $db
	db $fc                                           ; $4815: $fc
	sbc $ff                                          ; $4816: $de $ff
	ld a, [hl]                                       ; $4818: $7e
	ld l, b                                          ; $4819: $68
	ld a, [hl]                                       ; $481a: $7e

jr_04d_481b:
	cp h                                             ; $481b: $bc
	sbc [hl]                                         ; $481c: $9e
	ld [hl], c                                       ; $481d: $71
	ld a, e                                          ; $481e: $7b
	db $fc                                           ; $481f: $fc
	sbc [hl]                                         ; $4820: $9e
	ld e, $76                                        ; $4821: $1e $76
	or [hl]                                          ; $4823: $b6
	sub a                                            ; $4824: $97
	rst $38                                          ; $4825: $ff
	add sp, -$09                                     ; $4826: $e8 $f7
	cp a                                             ; $4828: $bf
	ret nz                                           ; $4829: $c0

	ld b, b                                          ; $482a: $40
	cp a                                             ; $482b: $bf
	ei                                               ; $482c: $fb
	ld a, e                                          ; $482d: $7b
	rst SubAFromBC                                          ; $482e: $e7
	ld a, a                                          ; $482f: $7f
	xor $7f                                          ; $4830: $ee $7f
	cp $99                                           ; $4832: $fe $99
	ld [$0cf1], sp                                   ; $4834: $08 $f1 $0c
	ldh a, [$3e]                                     ; $4837: $f0 $3e
	ldh [$7a], a                                     ; $4839: $e0 $7a
	ld d, l                                          ; $483b: $55
	sbc $ff                                          ; $483c: $de $ff
	sub a                                            ; $483e: $97
	adc $f7                                          ; $483f: $ce $f7
	rra                                              ; $4841: $1f
	ldh [rBGP], a                                    ; $4842: $e0 $47
	add b                                            ; $4844: $80
	ld h, c                                          ; $4845: $61
	ld e, $75                                        ; $4846: $1e $75
	ld a, [bc]                                       ; $4848: $0a
	db $dd                                           ; $4849: $dd
	rst $38                                          ; $484a: $ff
	sbc d                                            ; $484b: $9a
	ld b, d                                          ; $484c: $42
	add a                                            ; $484d: $87
	dec de                                           ; $484e: $1b
	rst $38                                          ; $484f: $ff
	rlca                                             ; $4850: $07
	ld a, b                                          ; $4851: $78
	push hl                                          ; $4852: $e5
	ld a, a                                          ; $4853: $7f
	push de                                          ; $4854: $d5
	sub c                                            ; $4855: $91
	ld hl, sp-$01                                    ; $4856: $f8 $ff
	pop hl                                           ; $4858: $e1
	cp $82                                           ; $4859: $fe $82
	db $fd                                           ; $485b: $fd
	rst $38                                          ; $485c: $ff
	nop                                              ; $485d: $00
	cp a                                             ; $485e: $bf
	ret nz                                           ; $485f: $c0

	ld a, a                                          ; $4860: $7f
	ret nz                                           ; $4861: $c0

	rst $38                                          ; $4862: $ff
	ret nz                                           ; $4863: $c0

	halt                                             ; $4864: $76
	cp $9e                                           ; $4865: $fe $9e
	ld a, [hl]                                       ; $4867: $7e
	ld [hl], d                                       ; $4868: $72
	ld a, [$087f]                                    ; $4869: $fa $7f $08
	ld [hl], a                                       ; $486c: $77
	inc e                                            ; $486d: $1c
	sbc d                                            ; $486e: $9a
	ld l, b                                          ; $486f: $68
	nop                                              ; $4870: $00
	ret nc                                           ; $4871: $d0

	nop                                              ; $4872: $00
	and b                                            ; $4873: $a0
	ld a, e                                          ; $4874: $7b
	ld l, b                                          ; $4875: $68
	ld l, l                                          ; $4876: $6d
	add sp, -$62                                     ; $4877: $e8 $9e
	ld b, b                                          ; $4879: $40
	ld d, e                                          ; $487a: $53
	ld b, b                                          ; $487b: $40
	ld a, a                                          ; $487c: $7f
	db $fc                                           ; $487d: $fc
	ld c, a                                          ; $487e: $4f
	jr nc, jr_04d_48d0                               ; $487f: $30 $4f

	ldh a, [$9e]                                     ; $4881: $f0 $9e
	ld d, h                                          ; $4883: $54
	ld a, e                                          ; $4884: $7b
	ret z                                            ; $4885: $c8

	ld sp, hl                                        ; $4886: $f9
	sbc [hl]                                         ; $4887: $9e
	dec d                                            ; $4888: $15
	ld d, d                                          ; $4889: $52
	db $e4                                           ; $488a: $e4
	ld [hl], a                                       ; $488b: $77
	call nc, Call_04d_77f7                           ; $488c: $d4 $f7 $77
	ret z                                            ; $488f: $c8

	sbc [hl]                                         ; $4890: $9e
	db $dd                                           ; $4891: $dd
	ld hl, sp+$7d                                    ; $4892: $f8 $7d
	and h                                            ; $4894: $a4
	ld a, a                                          ; $4895: $7f
	ldh a, [$75]                                     ; $4896: $f0 $75
	sbc b                                            ; $4898: $98
	ld e, a                                          ; $4899: $5f
	db $e4                                           ; $489a: $e4
	ld [hl], a                                       ; $489b: $77
	db $fc                                           ; $489c: $fc
	ld a, [hl]                                       ; $489d: $7e
	db $fc                                           ; $489e: $fc
	db $fd                                           ; $489f: $fd
	ld a, [hl]                                       ; $48a0: $7e
	add sp, $6f                                      ; $48a1: $e8 $6f
	ldh a, [$78]                                     ; $48a3: $f0 $78
	rst AddAOntoHL                                          ; $48a5: $ef
	sbc l                                            ; $48a6: $9d
	nop                                              ; $48a7: $00
	ld a, [hl+]                                      ; $48a8: $2a
	ld a, d                                          ; $48a9: $7a
	db $ec                                           ; $48aa: $ec
	sbc c                                            ; $48ab: $99
	cp d                                             ; $48ac: $ba
	nop                                              ; $48ad: $00
	ld [hl], l                                       ; $48ae: $75
	nop                                              ; $48af: $00
	xor [hl]                                         ; $48b0: $ae
	nop                                              ; $48b1: $00
	ld a, b                                          ; $48b2: $78
	db $d3                                           ; $48b3: $d3
	ld a, [hl]                                       ; $48b4: $7e
	ld l, b                                          ; $48b5: $68
	sub a                                            ; $48b6: $97
	ld a, [bc]                                       ; $48b7: $0a
	xor l                                            ; $48b8: $ad
	nop                                              ; $48b9: $00
	ld e, e                                          ; $48ba: $5b
	nop                                              ; $48bb: $00
	or $00                                           ; $48bc: $f6 $00
	rst SubAFromDE                                          ; $48be: $df
	ld l, d                                          ; $48bf: $6a
	ld c, h                                          ; $48c0: $4c
	ld a, a                                          ; $48c1: $7f
	ld a, [hl-]                                      ; $48c2: $3a
	ld a, a                                          ; $48c3: $7f
	call c, $e47f                                    ; $48c4: $dc $7f $e4
	sbc [hl]                                         ; $48c7: $9e
	bit 3, d                                         ; $48c8: $cb $5a
	ld a, [hl-]                                      ; $48ca: $3a
	sub [hl]                                         ; $48cb: $96
	inc a                                            ; $48cc: $3c
	cp h                                             ; $48cd: $bc
	sbc a                                            ; $48ce: $9f
	rra                                              ; $48cf: $1f

jr_04d_48d0:
	rst SubAFromBC                                          ; $48d0: $e7
	rlca                                             ; $48d1: $07
	ld sp, hl                                        ; $48d2: $f9
	ld bc, $68fc                                     ; $48d3: $01 $fc $68
	ld a, b                                          ; $48d6: $78
	ld d, [hl]                                       ; $48d7: $56
	nop                                              ; $48d8: $00
	rst SubAFromDE                                          ; $48d9: $df
	ld h, [hl]                                       ; $48da: $66
	sbc [hl]                                         ; $48db: $9e
	ld h, l                                          ; $48dc: $65
	db $dd                                           ; $48dd: $dd
	inc sp                                           ; $48de: $33
	sbc c                                            ; $48df: $99
	dec [hl]                                         ; $48e0: $35
	ld d, l                                          ; $48e1: $55
	ld h, [hl]                                       ; $48e2: $66
	inc sp                                           ; $48e3: $33
	ld d, l                                          ; $48e4: $55
	ld d, e                                          ; $48e5: $53
	ld [hl], e                                       ; $48e6: $73
	or $df                                           ; $48e7: $f6 $df
	ld h, [hl]                                       ; $48e9: $66
	ld [hl], a                                       ; $48ea: $77
	ld hl, sp+$7f                                    ; $48eb: $f8 $7f
	rst AddAOntoHL                                          ; $48ed: $ef
	rst SubAFromDE                                          ; $48ee: $df
	ld d, l                                          ; $48ef: $55
	sbc l                                            ; $48f0: $9d
	ld h, l                                          ; $48f1: $65
	ld h, [hl]                                       ; $48f2: $66
	db $db                                           ; $48f3: $db
	ld d, l                                          ; $48f4: $55
	sbc e                                            ; $48f5: $9b
	ld h, l                                          ; $48f6: $65
	ld d, l                                          ; $48f7: $55
	ld d, [hl]                                       ; $48f8: $56
	ld h, [hl]                                       ; $48f9: $66
	db $dd                                           ; $48fa: $dd
	inc sp                                           ; $48fb: $33
	rst SubAFromDE                                          ; $48fc: $df
	ld h, [hl]                                       ; $48fd: $66
	sbc d                                            ; $48fe: $9a
	ld d, [hl]                                       ; $48ff: $56
	ld d, l                                          ; $4900: $55
	ld h, l                                          ; $4901: $65
	inc sp                                           ; $4902: $33
	ld h, l                                          ; $4903: $65
	jp c, $9d66                                      ; $4904: $da $66 $9d

	ld h, e                                          ; $4907: $63
	inc sp                                           ; $4908: $33
	db $db                                           ; $4909: $db
	ld d, l                                          ; $490a: $55
	rst SubAFromDE                                          ; $490b: $df
	ld [hl], a                                       ; $490c: $77
	sbc l                                            ; $490d: $9d
	ld h, [hl]                                       ; $490e: $66
	ld [hl], $6b                                     ; $490f: $36 $6b
	or $9d                                           ; $4911: $f6 $9d
	ld [hl], l                                       ; $4913: $75
	ld h, [hl]                                       ; $4914: $66
	ld [hl], e                                       ; $4915: $73
	adc $94                                          ; $4916: $ce $94
	ld d, e                                          ; $4918: $53
	ld [hl], a                                       ; $4919: $77
	ld [hl], h                                       ; $491a: $74
	ld b, h                                          ; $491b: $44
	ld b, h                                          ; $491c: $44
	ld b, a                                          ; $491d: $47
	ld h, [hl]                                       ; $491e: $66
	ld d, l                                          ; $491f: $55
	ld d, a                                          ; $4920: $57
	ld [hl], a                                       ; $4921: $77
	ld [hl], a                                       ; $4922: $77
	call c, $df44                                    ; $4923: $dc $44 $df
	ld h, [hl]                                       ; $4926: $66
	ld a, e                                          ; $4927: $7b
	ldh a, [$dd]                                     ; $4928: $f0 $dd
	ld b, h                                          ; $492a: $44
	sbc [hl]                                         ; $492b: $9e
	ld b, a                                          ; $492c: $47
	ld e, e                                          ; $492d: $5b
	add hl, bc                                       ; $492e: $09
	sbc l                                            ; $492f: $9d
	nop                                              ; $4930: $00
	rst $38                                          ; $4931: $ff
	rrca                                             ; $4932: $0f
	cp $9d                                           ; $4933: $fe $9d
	inc b                                            ; $4935: $04
	ei                                               ; $4936: $fb
	ld e, a                                          ; $4937: $5f
	db $f4                                           ; $4938: $f4
	sub c                                            ; $4939: $91
	ld bc, $2afe                                     ; $493a: $01 $fe $2a
	push de                                          ; $493d: $d5
	or b                                             ; $493e: $b0
	rrca                                             ; $493f: $0f
	rst GetHLinHL                                          ; $4940: $cf
	nop                                              ; $4941: $00
	inc [hl]                                         ; $4942: $34
	ret nz                                           ; $4943: $c0

	inc c                                            ; $4944: $0c
	ldh a, [rTAC]                                    ; $4945: $f0 $07
	ld hl, sp+$77                                    ; $4947: $f8 $77
	db $fc                                           ; $4949: $fc
	sbc l                                            ; $494a: $9d
	and d                                            ; $494b: $a2
	ld e, l                                          ; $494c: $5d
	ld [hl], a                                       ; $494d: $77
	add sp, -$70                                     ; $494e: $e8 $90
	ld h, b                                          ; $4950: $60
	rra                                              ; $4951: $1f
	jr nz, jr_04d_4973                               ; $4952: $20 $1f

	ld sp, hl                                        ; $4954: $f9
	ld b, $69                                        ; $4955: $06 $69
	ld b, $0e                                        ; $4957: $06 $0e
	ld bc, $02e5                                     ; $4959: $01 $e5 $02
	ld b, e                                          ; $495c: $43
	add b                                            ; $495d: $80
	ld b, b                                          ; $495e: $40
	ld a, e                                          ; $495f: $7b
	cp $9e                                           ; $4960: $fe $9e
	add b                                            ; $4962: $80
	cp $7f                                           ; $4963: $fe $7f
	db $fc                                           ; $4965: $fc
	add d                                            ; $4966: $82
	xor b                                            ; $4967: $a8
	ld d, b                                          ; $4968: $50
	dec b                                            ; $4969: $05
	ld a, [$ff00]                                    ; $496a: $fa $00 $ff
	add b                                            ; $496d: $80
	ld a, a                                          ; $496e: $7f
	ret nz                                           ; $496f: $c0

	ccf                                              ; $4970: $3f
	ret nz                                           ; $4971: $c0

	ccf                                              ; $4972: $3f

jr_04d_4973:
	add e                                            ; $4973: $83
	ld a, h                                          ; $4974: $7c
	sub $08                                          ; $4975: $d6 $08
	dec d                                            ; $4977: $15
	ld [$8802], sp                                   ; $4978: $08 $02 $88
	ld [bc], a                                       ; $497b: $02
	db $fc                                           ; $497c: $fc
	ld [bc], a                                       ; $497d: $02
	db $fc                                           ; $497e: $fc
	ld [hl], d                                       ; $497f: $72
	adc h                                            ; $4980: $8c
	sbc h                                            ; $4981: $9c
	nop                                              ; $4982: $00
	ld b, b                                          ; $4983: $40
	ld a, e                                          ; $4984: $7b
	ldh [rPCM34], a                                  ; $4985: $e0 $77
	call c, $80f1                                    ; $4987: $dc $f1 $80
	ld a, [hl+]                                      ; $498a: $2a
	nop                                              ; $498b: $00
	ld d, l                                          ; $498c: $55
	nop                                              ; $498d: $00
	ld [bc], a                                       ; $498e: $02
	nop                                              ; $498f: $00
	ld de, $0a00                                     ; $4990: $11 $00 $0a
	nop                                              ; $4993: $00
	inc bc                                           ; $4994: $03
	nop                                              ; $4995: $00
	ld h, $01                                        ; $4996: $26 $01
	ld [bc], a                                       ; $4998: $02
	nop                                              ; $4999: $00
	xor [hl]                                         ; $499a: $ae
	ld bc, $0354                                     ; $499b: $01 $54 $03
	xor h                                            ; $499e: $ac
	inc bc                                           ; $499f: $03
	ld d, [hl]                                       ; $49a0: $56
	ld bc, $03ac                                     ; $49a1: $01 $ac $03
	cp b                                             ; $49a4: $b8
	rlca                                             ; $49a5: $07
	db $f4                                           ; $49a6: $f4
	dec bc                                           ; $49a7: $0b
	xor b                                            ; $49a8: $a8
	sbc [hl]                                         ; $49a9: $9e
	ld d, a                                          ; $49aa: $57
	rlca                                             ; $49ab: $07

jr_04d_49ac:
	ld d, b                                          ; $49ac: $50
	ld l, a                                          ; $49ad: $6f
	cp $95                                           ; $49ae: $fe $95
	ld [bc], a                                       ; $49b0: $02
	db $fd                                           ; $49b1: $fd
	dec d                                            ; $49b2: $15
	ld [$d42b], a                                    ; $49b3: $ea $2b $d4
	ld d, [hl]                                       ; $49b6: $56
	xor b                                            ; $49b7: $a8
	cp l                                             ; $49b8: $bd
	ld b, b                                          ; $49b9: $40

jr_04d_49ba:
	ld l, a                                          ; $49ba: $6f
	ldh a, [hDisp1_WY]                                     ; $49bb: $f0 $95
	xor d                                            ; $49bd: $aa
	ld d, l                                          ; $49be: $55
	db $fd                                           ; $49bf: $fd
	ld [bc], a                                       ; $49c0: $02
	ld e, a                                          ; $49c1: $5f
	nop                                              ; $49c2: $00
	add d                                            ; $49c3: $82
	nop                                              ; $49c4: $00
	ld b, l                                          ; $49c5: $45
	nop                                              ; $49c6: $00
	ld e, a                                          ; $49c7: $5f
	call c, $a09a                                    ; $49c8: $dc $9a $a0
	ld e, a                                          ; $49cb: $5f
	db $f4                                           ; $49cc: $f4
	dec bc                                           ; $49cd: $0b
	ccf                                              ; $49ce: $3f
	ld h, a                                          ; $49cf: $67
	ldh a, [$9c]                                     ; $49d0: $f0 $9c
	cp $01                                           ; $49d2: $fe $01
	cp $77                                           ; $49d4: $fe $77
	jr nz, jr_04d_4a57                               ; $49d6: $20 $7f

	ld h, h                                          ; $49d8: $64
	adc d                                            ; $49d9: $8a
	ld sp, hl                                        ; $49da: $f9
	nop                                              ; $49db: $00
	di                                               ; $49dc: $f3
	rlca                                             ; $49dd: $07
	daa                                              ; $49de: $27
	rrca                                             ; $49df: $0f
	rrca                                             ; $49e0: $0f
	ld e, a                                          ; $49e1: $5f
	ld e, $3f                                        ; $49e2: $1e $3f
	cp a                                             ; $49e4: $bf
	ld a, a                                          ; $49e5: $7f
	ld a, $7f                                        ; $49e6: $3e $7f
	dec [hl]                                         ; $49e8: $35
	ld a, a                                          ; $49e9: $7f
	db $eb                                           ; $49ea: $eb
	rst $38                                          ; $49eb: $ff
	ld d, l                                          ; $49ec: $55
	rst $38                                          ; $49ed: $ff
	xor d                                            ; $49ee: $aa
	ld a, e                                          ; $49ef: $7b
	db $fc                                           ; $49f0: $fc
	add a                                            ; $49f1: $87
	xor a                                            ; $49f2: $af
	rst $38                                          ; $49f3: $ff
	ld b, c                                          ; $49f4: $41
	rst $38                                          ; $49f5: $ff
	add [hl]                                         ; $49f6: $86
	rst $38                                          ; $49f7: $ff
	ccf                                              ; $49f8: $3f
	reti                                             ; $49f9: $d9


	adc a                                            ; $49fa: $8f
	ret nz                                           ; $49fb: $c0

	ld h, a                                          ; $49fc: $67
	ldh a, [$b0]                                     ; $49fd: $f0 $b0
	ld hl, sp+$58                                    ; $49ff: $f8 $58
	db $fc                                           ; $4a01: $fc
	xor b                                            ; $4a02: $a8
	db $fc                                           ; $4a03: $fc
	ld e, l                                          ; $4a04: $5d
	rst $38                                          ; $4a05: $ff
	cp [hl]                                          ; $4a06: $be
	db $fd                                           ; $4a07: $fd
	or $f9                                           ; $4a08: $f6 $f9
	ld e, a                                          ; $4a0a: $5f
	or b                                             ; $4a0b: $b0
	ld a, a                                          ; $4a0c: $7f
	jr jr_04d_49ac                                   ; $4a0d: $18 $9d

	ld b, b                                          ; $4a0f: $40
	cp a                                             ; $4a10: $bf
	halt                                             ; $4a11: $76
	ldh a, [$7f]                                     ; $4a12: $f0 $7f
	add h                                            ; $4a14: $84
	ld a, a                                          ; $4a15: $7f
	ld a, [bc]                                       ; $4a16: $0a
	sub b                                            ; $4a17: $90
	cpl                                              ; $4a18: $2f
	ret nc                                           ; $4a19: $d0

	ld e, c                                          ; $4a1a: $59
	and b                                            ; $4a1b: $a0
	xor b                                            ; $4a1c: $a8
	ld b, b                                          ; $4a1d: $40
	ld d, h                                          ; $4a1e: $54
	add b                                            ; $4a1f: $80
	add sp, $00                                      ; $4a20: $e8 $00
	ld e, a                                          ; $4a22: $5f
	and b                                            ; $4a23: $a0
	and b                                            ; $4a24: $a0
	ld b, b                                          ; $4a25: $40
	ldh [$5b], a                                     ; $4a26: $e0 $5b
	jr jr_04d_49ba                                   ; $4a28: $18 $90

	ldh a, [rIF]                                     ; $4a2a: $f0 $0f

jr_04d_4a2c:
	jr @+$09                                         ; $4a2c: $18 $07

	inc b                                            ; $4a2e: $04
	inc bc                                           ; $4a2f: $03
	ld [bc], a                                       ; $4a30: $02
	ld bc, $0017                                     ; $4a31: $01 $17 $00
	ld [$5701], sp                                   ; $4a34: $08 $01 $57
	nop                                              ; $4a37: $00
	xor d                                            ; $4a38: $aa
	ld a, e                                          ; $4a39: $7b
	add b                                            ; $4a3a: $80
	sbc [hl]                                         ; $4a3b: $9e
	ld [$fe63], sp                                   ; $4a3c: $08 $63 $fe
	ld a, a                                          ; $4a3f: $7f
	adc l                                            ; $4a40: $8d
	rst SubAFromDE                                          ; $4a41: $df
	ccf                                              ; $4a42: $3f
	ld d, a                                          ; $4a43: $57
	ld a, [hl-]                                      ; $4a44: $3a
	adc h                                            ; $4a45: $8c
	and b                                            ; $4a46: $a0
	rst SubAFromDE                                          ; $4a47: $df
	push de                                          ; $4a48: $d5
	ld [$00c1], a                                    ; $4a49: $ea $c1 $00
	ld d, d                                          ; $4a4c: $52
	and b                                            ; $4a4d: $a0
	dec l                                            ; $4a4e: $2d
	ret nc                                           ; $4a4f: $d0

	ld d, $e8                                        ; $4a50: $16 $e8
	dec c                                            ; $4a52: $0d
	ldh a, [rAUD3ENA]                                ; $4a53: $f0 $1a
	ldh [$b0], a                                     ; $4a55: $e0 $b0

jr_04d_4a57:
	ld b, b                                          ; $4a57: $40
	ld l, b                                          ; $4a58: $68
	ld l, e                                          ; $4a59: $6b
	or a                                             ; $4a5a: $b7
	ld a, a                                          ; $4a5b: $7f
	ld sp, hl                                        ; $4a5c: $f9
	ld l, [hl]                                       ; $4a5d: $6e
	ret nz                                           ; $4a5e: $c0

	ei                                               ; $4a5f: $fb
	sbc [hl]                                         ; $4a60: $9e
	ld bc, $fa5b                                     ; $4a61: $01 $5b $fa
	sbc [hl]                                         ; $4a64: $9e
	dec d                                            ; $4a65: $15
	ld a, d                                          ; $4a66: $7a
	cp [hl]                                          ; $4a67: $be
	ld a, a                                          ; $4a68: $7f
	db $fc                                           ; $4a69: $fc
	ld a, a                                          ; $4a6a: $7f
	xor b                                            ; $4a6b: $a8
	ld a, [hl]                                       ; $4a6c: $7e
	cp d                                             ; $4a6d: $ba
	adc d                                            ; $4a6e: $8a
	ld a, $00                                        ; $4a6f: $3e $00
	ld [hl], l                                       ; $4a71: $75
	nop                                              ; $4a72: $00
	xor [hl]                                         ; $4a73: $ae
	nop                                              ; $4a74: $00
	ld d, b                                          ; $4a75: $50
	cpl                                              ; $4a76: $2f
	and d                                            ; $4a77: $a2
	dec e                                            ; $4a78: $1d
	ld d, l                                          ; $4a79: $55
	ld a, [hl+]                                      ; $4a7a: $2a
	cp $00                                           ; $4a7b: $fe $00
	ld d, b                                          ; $4a7d: $50
	jr nz, jr_04d_4a2c                               ; $4a7e: $20 $ac

	db $10                                           ; $4a80: $10
	ld a, [hl]                                       ; $4a81: $7e
	nop                                              ; $4a82: $00
	or a                                             ; $4a83: $b7
	ld a, e                                          ; $4a84: $7b
	sub b                                            ; $4a85: $90
	ld a, a                                          ; $4a86: $7f
	ld e, h                                          ; $4a87: $5c
	sub h                                            ; $4a88: $94
	push de                                          ; $4a89: $d5
	ld a, [hl+]                                      ; $4a8a: $2a
	xor d                                            ; $4a8b: $aa
	dec d                                            ; $4a8c: $15
	rra                                              ; $4a8d: $1f
	nop                                              ; $4a8e: $00
	xor h                                            ; $4a8f: $ac
	nop                                              ; $4a90: $00
	ld b, h                                          ; $4a91: $44
	nop                                              ; $4a92: $00
	rra                                              ; $4a93: $1f
	ld [hl], e                                       ; $4a94: $73
	nop                                              ; $4a95: $00
	adc c                                            ; $4a96: $89
	ld d, c                                          ; $4a97: $51
	xor [hl]                                         ; $4a98: $ae
	xor d                                            ; $4a99: $aa
	ld d, l                                          ; $4a9a: $55
	push de                                          ; $4a9b: $d5
	ld a, [hl+]                                      ; $4a9c: $2a
	ld a, a                                          ; $4a9d: $7f
	nop                                              ; $4a9e: $00
	db $fd                                           ; $4a9f: $fd
	nop                                              ; $4aa0: $00
	ld hl, sp+$00                                    ; $4aa1: $f8 $00
	ld a, b                                          ; $4aa3: $78
	add b                                            ; $4aa4: $80
	or b                                             ; $4aa5: $b0
	ld b, b                                          ; $4aa6: $40
	ld h, b                                          ; $4aa7: $60
	add b                                            ; $4aa8: $80
	ret nc                                           ; $4aa9: $d0

	nop                                              ; $4aaa: $00
	ldh [rP1], a                                     ; $4aab: $e0 $00
	ld [hl], a                                       ; $4aad: $77
	db $fc                                           ; $4aae: $fc
	sbc [hl]                                         ; $4aaf: $9e
	ld a, b                                          ; $4ab0: $78
	ld a, d                                          ; $4ab1: $7a
	ld [hl], h                                       ; $4ab2: $74
	ld sp, hl                                        ; $4ab3: $f9
	sbc b                                            ; $4ab4: $98
	ld b, $00                                        ; $4ab5: $06 $00
	add hl, de                                       ; $4ab7: $19
	nop                                              ; $4ab8: $00
	inc d                                            ; $4ab9: $14
	dec bc                                           ; $4aba: $0b
	xor d                                            ; $4abb: $aa
	ld a, e                                          ; $4abc: $7b
	and d                                            ; $4abd: $a2
	sbc [hl]                                         ; $4abe: $9e
	ld [$7bf9], sp                                   ; $4abf: $08 $f9 $7b
	call nz, $fc80                                   ; $4ac2: $c4 $80 $fc
	ld bc, $0359                                     ; $4ac5: $01 $59 $03
	inc h                                            ; $4ac8: $24
	inc bc                                           ; $4ac9: $03
	ld [$0007], sp                                   ; $4aca: $08 $07 $00
	rrca                                             ; $4acd: $0f
	nop                                              ; $4ace: $00
	ccf                                              ; $4acf: $3f
	nop                                              ; $4ad0: $00
	dec [hl]                                         ; $4ad1: $35
	nop                                              ; $4ad2: $00
	adc d                                            ; $4ad3: $8a
	ld a, d                                          ; $4ad4: $7a
	rst $38                                          ; $4ad5: $ff
	dec e                                            ; $4ad6: $1d

jr_04d_4ad7:
	ld c, a                                          ; $4ad7: $4f
	ld c, d                                          ; $4ad8: $4a
	ld a, a                                          ; $4ad9: $7f
	ld c, h                                          ; $4ada: $4c
	ld a, e                                          ; $4adb: $7b
	inc bc                                           ; $4adc: $03
	ld c, a                                          ; $4add: $4f
	ld bc, $f04f                                     ; $4ade: $01 $4f $f0
	rrca                                             ; $4ae1: $0f
	pop af                                           ; $4ae2: $f1
	sub d                                            ; $4ae3: $92
	dec b                                            ; $4ae4: $05
	sub h                                            ; $4ae5: $94
	rst $38                                          ; $4ae6: $ff
	ld a, [de]                                       ; $4ae7: $1a
	ldh [rPCM12], a                                  ; $4ae8: $e0 $76
	ei                                               ; $4aea: $fb
	inc e                                            ; $4aeb: $1c
	ei                                               ; $4aec: $fb
	or c                                             ; $4aed: $b1
	db $fc                                           ; $4aee: $fc
	nop                                              ; $4aef: $00
	or b                                             ; $4af0: $b0
	db $dd                                           ; $4af1: $dd
	rst $38                                          ; $4af2: $ff
	adc d                                            ; $4af3: $8a
	jr jr_04d_4ad7                                   ; $4af4: $18 $e1

	nop                                              ; $4af6: $00
	ld bc, $2150                                     ; $4af7: $01 $50 $21
	ld b, b                                          ; $4afa: $40
	dec hl                                           ; $4afb: $2b
	ld b, b                                          ; $4afc: $40
	dec d                                            ; $4afd: $15
	nop                                              ; $4afe: $00
	dec bc                                           ; $4aff: $0b
	cp $ff                                           ; $4b00: $fe $ff
	ld hl, sp-$09                                    ; $4b02: $f8 $f7
	ld [hl], l                                       ; $4b04: $75
	ld a, [bc]                                       ; $4b05: $0a
	ld a, [hl-]                                      ; $4b06: $3a
	dec b                                            ; $4b07: $05
	rst $38                                          ; $4b08: $ff
	ld l, a                                          ; $4b09: $6f
	or e                                             ; $4b0a: $b3
	sbc $ff                                          ; $4b0b: $de $ff
	rst $38                                          ; $4b0d: $ff
	sbc [hl]                                         ; $4b0e: $9e
	ld d, b                                          ; $4b0f: $50
	ld a, d                                          ; $4b10: $7a
	call z, $d49e                                    ; $4b11: $cc $9e $d4
	ld e, e                                          ; $4b14: $5b
	ldh a, [$6f]                                     ; $4b15: $f0 $6f
	ld a, [hl+]                                      ; $4b17: $2a
	ld e, a                                          ; $4b18: $5f
	ldh a, [$99]                                     ; $4b19: $f0 $99
	ld d, h                                          ; $4b1b: $54
	nop                                              ; $4b1c: $00
	rlca                                             ; $4b1d: $07
	ld a, b                                          ; $4b1e: $78
	rrca                                             ; $4b1f: $0f
	ld a, b                                          ; $4b20: $78
	ld [hl], a                                       ; $4b21: $77
	adc $dd                                          ; $4b22: $ce $dd
	rst $38                                          ; $4b24: $ff
	sbc l                                            ; $4b25: $9d
	ld a, a                                          ; $4b26: $7f
	adc b                                            ; $4b27: $88
	ld a, c                                          ; $4b28: $79
	reti                                             ; $4b29: $d9


	ld a, e                                          ; $4b2a: $7b
	ld a, d                                          ; $4b2b: $7a
	ld a, a                                          ; $4b2c: $7f

jr_04d_4b2d:
	ld b, h                                          ; $4b2d: $44
	ld l, e                                          ; $4b2e: $6b
	ldh [$99], a                                     ; $4b2f: $e0 $99
	rst $38                                          ; $4b31: $ff
	dec l                                            ; $4b32: $2d
	cp $3e                                           ; $4b33: $fe $3e
	rst $38                                          ; $4b35: $ff
	ld a, a                                          ; $4b36: $7f
	ld [hl], e                                       ; $4b37: $73
	xor a                                            ; $4b38: $af
	ld [hl], e                                       ; $4b39: $73
	ldh [$98], a                                     ; $4b3a: $e0 $98
	rst $38                                          ; $4b3c: $ff
	ret nc                                           ; $4b3d: $d0

	nop                                              ; $4b3e: $00
	ld l, b                                          ; $4b3f: $68
	add b                                            ; $4b40: $80
	db $e4                                           ; $4b41: $e4
	ret nc                                           ; $4b42: $d0

	ld h, a                                          ; $4b43: $67
	ldh a, [$9e]                                     ; $4b44: $f0 $9e
	ld a, [bc]                                       ; $4b46: $0a
	ld a, e                                          ; $4b47: $7b
	and $9b                                          ; $4b48: $e6 $9b
	add sp, $18                                      ; $4b4a: $e8 $18
	add sp, $18                                      ; $4b4c: $e8 $18
	ld [hl], d                                       ; $4b4e: $72
	cp h                                             ; $4b4f: $bc
	sbc c                                            ; $4b50: $99
	rst $38                                          ; $4b51: $ff
	rst FarCall                                          ; $4b52: $f7
	ld hl, sp-$08                                    ; $4b53: $f8 $f8
	jr nc, jr_04d_4b5c                               ; $4b55: $30 $05

	ld e, e                                          ; $4b57: $5b
	and b                                            ; $4b58: $a0
	ld a, c                                          ; $4b59: $79
	ret c                                            ; $4b5a: $d8

	ld a, d                                          ; $4b5b: $7a

jr_04d_4b5c:
	ret z                                            ; $4b5c: $c8

	ld a, a                                          ; $4b5d: $7f
	db $fc                                           ; $4b5e: $fc
	sbc [hl]                                         ; $4b5f: $9e
	ld d, c                                          ; $4b60: $51
	ld h, e                                          ; $4b61: $63
	ldh a, [$7e]                                     ; $4b62: $f0 $7e
	or h                                             ; $4b64: $b4
	ld a, [hl]                                       ; $4b65: $7e
	sbc b                                            ; $4b66: $98
	sbc [hl]                                         ; $4b67: $9e
	and b                                            ; $4b68: $a0
	ld e, e                                          ; $4b69: $5b
	ldh [$9e], a                                     ; $4b6a: $e0 $9e
	ld d, b                                          ; $4b6c: $50
	ld a, e                                          ; $4b6d: $7b
	dec de                                           ; $4b6e: $1b
	sbc e                                            ; $4b6f: $9b
	ld a, l                                          ; $4b70: $7d
	jr c, jr_04d_4b2d                                ; $4b71: $38 $ba

	jr c, jr_04d_4be4                                ; $4b73: $38 $6f

	ldh a, [$9e]                                     ; $4b75: $f0 $9e
	jr c, jr_04d_4bf4                                ; $4b77: $38 $7b

	or d                                             ; $4b79: $b2
	sbc [hl]                                         ; $4b7a: $9e
	ldh a, [$7a]                                     ; $4b7b: $f0 $7a
	jp c, $fc7f                                      ; $4b7d: $da $7f $fc

	ld l, e                                          ; $4b80: $6b
	ldh [$98], a                                     ; $4b81: $e0 $98
	adc $00                                          ; $4b83: $ce $00
	nop                                              ; $4b85: $00
	stop                                             ; $4b86: $10 $00
	ld [bc], a                                       ; $4b88: $02
	ld bc, $f27a                                     ; $4b89: $01 $7a $f2
	ld [hl], e                                       ; $4b8c: $73
	ldh a, [hDisp1_WY]                                     ; $4b8d: $f0 $95
	ld b, b                                          ; $4b8f: $40
	rst $38                                          ; $4b90: $ff
	ld b, b                                          ; $4b91: $40
	ret nz                                           ; $4b92: $c0

	add b                                            ; $4b93: $80
	ld a, a                                          ; $4b94: $7f
	rlca                                             ; $4b95: $07
	ld hl, sp+$5f                                    ; $4b96: $f8 $5f
	or b                                             ; $4b98: $b0
	ld l, a                                          ; $4b99: $6f
	ldh a, [hDisp1_WY]                                     ; $4b9a: $f0 $95
	inc de                                           ; $4b9c: $13
	rst SubAFromBC                                          ; $4b9d: $e7
	ld d, $af                                        ; $4b9e: $16 $af
	inc b                                            ; $4ba0: $04
	rst JumpTable                                          ; $4ba1: $c7
	ld b, h                                          ; $4ba2: $44
	rst JumpTable                                          ; $4ba3: $c7
	cp $39                                           ; $4ba4: $fe $39
	ld l, a                                          ; $4ba6: $6f
	ldh a, [hDisp1_WX]                                     ; $4ba7: $f0 $96
	ldh a, [$3f]                                     ; $4ba9: $f0 $3f
	ld b, b                                          ; $4bab: $40
	ccf                                              ; $4bac: $3f
	and e                                            ; $4bad: $a3
	ret nz                                           ; $4bae: $c0

	db $10                                           ; $4baf: $10
	rst AddAOntoHL                                          ; $4bb0: $ef
	ld h, b                                          ; $4bb1: $60
	ld l, e                                          ; $4bb2: $6b
	ld d, b                                          ; $4bb3: $50
	sub [hl]                                         ; $4bb4: $96
	db $dd                                           ; $4bb5: $dd
	ld [hl-], a                                      ; $4bb6: $32

Jump_04d_4bb7:
	pop hl                                           ; $4bb7: $e1
	inc sp                                           ; $4bb8: $33
	cp $01                                           ; $4bb9: $fe $01
	ld c, $f1                                        ; $4bbb: $0e $f1
	ld bc, $f06b                                     ; $4bbd: $01 $6b $f0
	sub l                                            ; $4bc0: $95
	call c, $3482                                    ; $4bc1: $dc $82 $34
	adc a                                            ; $4bc4: $8f
	rst AddAOntoHL                                          ; $4bc5: $ef
	rra                                              ; $4bc6: $1f
	or $0f                                           ; $4bc7: $f6 $0f
	ld hl, sp+$06                                    ; $4bc9: $f8 $06
	ld l, e                                          ; $4bcb: $6b
	and b                                            ; $4bcc: $a0
	sub [hl]                                         ; $4bcd: $96
	db $10                                           ; $4bce: $10
	ccf                                              ; $4bcf: $3f
	ret nc                                           ; $4bd0: $d0

	add b                                            ; $4bd1: $80
	ret z                                            ; $4bd2: $c8

	db $10                                           ; $4bd3: $10
	or e                                             ; $4bd4: $b3
	add hl, de                                       ; $4bd5: $19
	ld a, [hl-]                                      ; $4bd6: $3a
	ld l, a                                          ; $4bd7: $6f
	ldh a, [$9b]                                     ; $4bd8: $f0 $9b
	ld de, $9112                                     ; $4bda: $11 $12 $91
	ld [hl], d                                       ; $4bdd: $72
	ld a, e                                          ; $4bde: $7b
	push de                                          ; $4bdf: $d5
	ld a, e                                          ; $4be0: $7b
	ld l, b                                          ; $4be1: $68
	ld l, a                                          ; $4be2: $6f
	db $fd                                           ; $4be3: $fd

jr_04d_4be4:
	ld l, a                                          ; $4be4: $6f
	ei                                               ; $4be5: $fb
	ld d, a                                          ; $4be6: $57

jr_04d_4be7:
	ldh a, [$7f]                                     ; $4be7: $f0 $7f
	or d                                             ; $4be9: $b2
	ld c, a                                          ; $4bea: $4f
	ldh a, [$7c]                                     ; $4beb: $f0 $7c
	ld b, b                                          ; $4bed: $40
	adc a                                            ; $4bee: $8f
	xor b                                            ; $4bef: $a8
	rst SubAFromDE                                          ; $4bf0: $df
	ld l, b                                          ; $4bf1: $68
	sbc a                                            ; $4bf2: $9f
	ld l, a                                          ; $4bf3: $6f

jr_04d_4bf4:
	sbc b                                            ; $4bf4: $98
	rst AddAOntoHL                                          ; $4bf5: $ef
	jr jr_04d_4be7                                   ; $4bf6: $18 $ef

	jr jr_04d_4c62                                   ; $4bf8: $18 $68

	sbc a                                            ; $4bfa: $9f
	ld a, h                                          ; $4bfb: $7c
	adc e                                            ; $4bfc: $8b
	ld e, a                                          ; $4bfd: $5f
	adc b                                            ; $4bfe: $88
	ld [hl], b                                       ; $4bff: $70
	ldh [c], a                                       ; $4c00: $e2
	ld [hl], e                                       ; $4c01: $73
	cp $6d                                           ; $4c02: $fe $6d
	adc h                                            ; $4c04: $8c
	ld a, [hl]                                       ; $4c05: $7e
	adc $7e                                          ; $4c06: $ce $7e
	and e                                            ; $4c08: $a3
	ld a, a                                          ; $4c09: $7f
	cp $7e                                           ; $4c0a: $fe $7e
	ld a, [hl-]                                      ; $4c0c: $3a
	ld a, a                                          ; $4c0d: $7f
	cp $77                                           ; $4c0e: $fe $77
	ld hl, sp+$7a                                    ; $4c10: $f8 $7a
	sub a                                            ; $4c12: $97
	ld l, h                                          ; $4c13: $6c
	ret nz                                           ; $4c14: $c0

	ld l, e                                          ; $4c15: $6b
	ldh [$98], a                                     ; $4c16: $e0 $98
	ld a, [hl+]                                      ; $4c18: $2a
	rst $38                                          ; $4c19: $ff
	ld a, [bc]                                       ; $4c1a: $0a
	sbc h                                            ; $4c1b: $9c
	ld c, $9f                                        ; $4c1c: $0e $9f
	rrca                                             ; $4c1e: $0f
	ld e, e                                          ; $4c1f: $5b
	cp $7e                                           ; $4c20: $fe $7e
	ld [hl], b                                       ; $4c22: $70
	sbc b                                            ; $4c23: $98
	xor b                                            ; $4c24: $a8
	nop                                              ; $4c25: $00
	ld d, h                                          ; $4c26: $54
	add b                                            ; $4c27: $80
	add b                                            ; $4c28: $80
	nop                                              ; $4c29: $00
	call nz, $7079                                   ; $4c2a: $c4 $79 $70
	sbc d                                            ; $4c2d: $9a
	add c                                            ; $4c2e: $81
	nop                                              ; $4c2f: $00
	adc h                                            ; $4c30: $8c
	inc bc                                           ; $4c31: $03
	ld b, b                                          ; $4c32: $40
	ld l, c                                          ; $4c33: $69
	ld [hl], h                                       ; $4c34: $74
	sbc b                                            ; $4c35: $98
	inc c                                            ; $4c36: $0c
	inc bc                                           ; $4c37: $03
	ld h, d                                          ; $4c38: $62
	dec e                                            ; $4c39: $1d
	sbc b                                            ; $4c3a: $98
	ld h, b                                          ; $4c3b: $60
	db $ec                                           ; $4c3c: $ec
	ld a, d                                          ; $4c3d: $7a
	ret nz                                           ; $4c3e: $c0

	ld a, a                                          ; $4c3f: $7f
	di                                               ; $4c40: $f3
	ld a, a                                          ; $4c41: $7f
	ldh a, [c]                                       ; $4c42: $f2
	ld a, a                                          ; $4c43: $7f
	ld a, b                                          ; $4c44: $78
	ld a, a                                          ; $4c45: $7f
	ld [hl], a                                       ; $4c46: $77
	sub [hl]                                         ; $4c47: $96
	call c, $0023                                    ; $4c48: $dc $23 $00
	nop                                              ; $4c4b: $00
	db $fc                                           ; $4c4c: $fc
	ld [bc], a                                       ; $4c4d: $02
	jr z, jr_04d_4c62                                ; $4c4e: $28 $12

	sbc b                                            ; $4c50: $98
	ld a, c                                          ; $4c51: $79
	cp b                                             ; $4c52: $b8
	sbc b                                            ; $4c53: $98
	sbc $01                                          ; $4c54: $de $01
	ld a, a                                          ; $4c56: $7f
	add b                                            ; $4c57: $80
	ld a, [de]                                       ; $4c58: $1a
	pop bc                                           ; $4c59: $c1

jr_04d_4c5a:
	ld [$b679], sp                                   ; $4c5a: $08 $79 $b6
	add l                                            ; $4c5d: $85
	ld a, [de]                                       ; $4c5e: $1a
	ld bc, $0314                                     ; $4c5f: $01 $14 $03

jr_04d_4c62:
	pop hl                                           ; $4c62: $e1
	ld b, $e9                                        ; $4c63: $06 $e9
	ld b, $c1                                        ; $4c65: $06 $c1
	ld c, $d4                                        ; $4c67: $0e $d4
	dec bc                                           ; $4c69: $0b
	and d                                            ; $4c6a: $a2
	jr @-$74                                         ; $4c6b: $18 $8a

	jr nc, @-$5e                                     ; $4c6d: $30 $a0

	ld b, b                                          ; $4c6f: $40
	pop hl                                           ; $4c70: $e1
	nop                                              ; $4c71: $00
	inc a                                            ; $4c72: $3c
	ld b, e                                          ; $4c73: $43
	add c                                            ; $4c74: $81

jr_04d_4c75:
	ld a, [hl]                                       ; $4c75: $7e
	sbc h                                            ; $4c76: $9c
	ld h, b                                          ; $4c77: $60
	ld a, c                                          ; $4c78: $79
	jr nz, jr_04d_4c5a                               ; $4c79: $20 $df

	ld b, b                                          ; $4c7b: $40
	sub e                                            ; $4c7c: $93
	nop                                              ; $4c7d: $00
	ld b, a                                          ; $4c7e: $47
	cp b                                             ; $4c7f: $b8
	jr @-$1c                                         ; $4c80: $18 $e2

	sub c                                            ; $4c82: $91
	ldh [c], a                                       ; $4c83: $e2
	nop                                              ; $4c84: $00
	ldh [c], a                                       ; $4c85: $e2
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	ret nz                                           ; $4c88: $c0

	ld a, d                                          ; $4c89: $7a
	ld c, l                                          ; $4c8a: $4d
	sub e                                            ; $4c8b: $93
	ld b, b                                          ; $4c8c: $40
	ld bc, $3814                                     ; $4c8d: $01 $14 $38
	rlca                                             ; $4c90: $07
	jr c, @+$03                                      ; $4c91: $38 $01

	jr c, jr_04d_4c97                                ; $4c93: $38 $02

	dec a                                            ; $4c95: $3d
	nop                                              ; $4c96: $00

jr_04d_4c97:
	ld [hl], $79                                     ; $4c97: $36 $79
	sub d                                            ; $4c99: $92
	add b                                            ; $4c9a: $80
	ld [hl], $01                                     ; $4c9b: $36 $01
	inc h                                            ; $4c9d: $24
	ccf                                              ; $4c9e: $3f
	ret nz                                           ; $4c9f: $c0

jr_04d_4ca0:
	rst $38                                          ; $4ca0: $ff
	nop                                              ; $4ca1: $00
	ldh a, [$09]                                     ; $4ca2: $f0 $09
	adc e                                            ; $4ca4: $8b
	inc a                                            ; $4ca5: $3c
	cp $0d                                           ; $4ca6: $fe $0d
	cp a                                             ; $4ca8: $bf
	ccf                                              ; $4ca9: $3f
	ld [hl-], a                                      ; $4caa: $32
	xor a                                            ; $4cab: $af
	xor a                                            ; $4cac: $af
	cp a                                             ; $4cad: $bf
	rst $38                                          ; $4cae: $ff
	nop                                              ; $4caf: $00
	ei                                               ; $4cb0: $fb
	inc b                                            ; $4cb1: $04
	inc b                                            ; $4cb2: $04
	rst $38                                          ; $4cb3: $ff
	db $fd                                           ; $4cb4: $fd
	rrca                                             ; $4cb5: $0f
	ld [$07ff], sp                                   ; $4cb6: $08 $ff $07
	ld hl, sp-$80                                    ; $4cb9: $f8 $80
	ret nz                                           ; $4cbb: $c0

	ccf                                              ; $4cbc: $3f
	or [hl]                                          ; $4cbd: $b6
	rst $38                                          ; $4cbe: $ff
	pop bc                                           ; $4cbf: $c1
	db $10                                           ; $4cc0: $10
	ldh a, [rIF]                                     ; $4cc1: $f0 $0f
	db $fc                                           ; $4cc3: $fc

jr_04d_4cc4:
	ld [$906b], sp                                   ; $4cc4: $08 $6b $90
	ld b, $f0                                        ; $4cc7: $06 $f0
	sbc a                                            ; $4cc9: $9f
	jr nz, jr_04d_4ce5                               ; $4cca: $20 $19

	rst SubAFromBC                                          ; $4ccc: $e7
	and b                                            ; $4ccd: $a0
	rst SubAFromDE                                          ; $4cce: $df
	jr nz, jr_04d_4cc4                               ; $4ccf: $20 $f3

jr_04d_4cd1:
	add b                                            ; $4cd1: $80
	jr nc, @-$3e                                     ; $4cd2: $30 $c0

	inc sp                                           ; $4cd4: $33
	jr nz, jr_04d_4cea                               ; $4cd5: $20 $13

	inc hl                                           ; $4cd7: $23
	inc sp                                           ; $4cd8: $33
	jr nz, jr_04d_4c75                               ; $4cd9: $20 $9a

	di                                               ; $4cdb: $f3
	jr nz, jr_04d_4cd1                               ; $4cdc: $20 $f3

	ld [bc], a                                       ; $4cde: $02
	di                                               ; $4cdf: $f3
	ld l, [hl]                                       ; $4ce0: $6e
	add sp, $75                                      ; $4ce1: $e8 $75
	db $e3                                           ; $4ce3: $e3
	sub [hl]                                         ; $4ce4: $96

jr_04d_4ce5:
	xor e                                            ; $4ce5: $ab
	ld d, h                                          ; $4ce6: $54
	ld b, h                                          ; $4ce7: $44
	cp a                                             ; $4ce8: $bf
	sub a                                            ; $4ce9: $97

jr_04d_4cea:
	rst $38                                          ; $4cea: $ff
	db $fc                                           ; $4ceb: $fc
	rst $38                                          ; $4cec: $ff
	inc b                                            ; $4ced: $04
	ld a, e                                          ; $4cee: $7b
	ldh a, [c]                                       ; $4cef: $f2
	ld a, [hl]                                       ; $4cf0: $7e
	ld h, $98                                        ; $4cf1: $26 $98
	ret z                                            ; $4cf3: $c8

	rst $38                                          ; $4cf4: $ff
	jr z, @+$01                                      ; $4cf5: $28 $ff

	dec b                                            ; $4cf7: $05
	rst $38                                          ; $4cf8: $ff
	add d                                            ; $4cf9: $82
	ld [hl], e                                       ; $4cfa: $73
	db $e4                                           ; $4cfb: $e4
	ld a, a                                          ; $4cfc: $7f
	ld b, h                                          ; $4cfd: $44
	sbc d                                            ; $4cfe: $9a
	ccf                                              ; $4cff: $3f
	rst $38                                          ; $4d00: $ff
	ld [hl], a                                       ; $4d01: $77
	rst $38                                          ; $4d02: $ff
	adc c                                            ; $4d03: $89
	ld [hl], e                                       ; $4d04: $73
	db $f4                                           ; $4d05: $f4
	adc [hl]                                         ; $4d06: $8e
	ld e, l                                          ; $4d07: $5d
	adc d                                            ; $4d08: $8a
	ld e, b                                          ; $4d09: $58
	adc a                                            ; $4d0a: $8f
	sbc e                                            ; $4d0b: $9b
	inc c                                            ; $4d0c: $0c
	ld e, [hl]                                       ; $4d0d: $5e
	adc c                                            ; $4d0e: $89
	jr jr_04d_4ca0                                   ; $4d0f: $18 $8f

	ld e, [hl]                                       ; $4d11: $5e
	adc c                                            ; $4d12: $89
	rra                                              ; $4d13: $1f
	adc b                                            ; $4d14: $88
	ld e, e                                          ; $4d15: $5b
	adc h                                            ; $4d16: $8c
	xor d                                            ; $4d17: $aa
	ld a, d                                          ; $4d18: $7a
	db $ec                                           ; $4d19: $ec
	sub e                                            ; $4d1a: $93
	xor d                                            ; $4d1b: $aa
	ld a, a                                          ; $4d1c: $7f
	ld b, b                                          ; $4d1d: $40
	cp a                                             ; $4d1e: $bf
	and b                                            ; $4d1f: $a0
	ld e, a                                          ; $4d20: $5f
	ld c, d                                          ; $4d21: $4a
	cp a                                             ; $4d22: $bf
	xor d                                            ; $4d23: $aa
	ld d, l                                          ; $4d24: $55
	ld d, l                                          ; $4d25: $55
	xor d                                            ; $4d26: $aa
	ld h, [hl]                                       ; $4d27: $66
	add $77                                          ; $4d28: $c6 $77
	ld hl, sp-$68                                    ; $4d2a: $f8 $98
	ld a, [$797d]                                    ; $4d2c: $fa $7d $79
	cp $aa                                           ; $4d2f: $fe $aa
	rst $38                                          ; $4d31: $ff
	and b                                            ; $4d32: $a0
	ld [hl], e                                       ; $4d33: $73
	ret z                                            ; $4d34: $c8

	add b                                            ; $4d35: $80
	call nc, $bdff                                   ; $4d36: $d4 $ff $bd
	cp $bf                                           ; $4d39: $fe $bf
	ld h, b                                          ; $4d3b: $60
	ld h, b                                          ; $4d3c: $60
	sbc a                                            ; $4d3d: $9f
	rra                                              ; $4d3e: $1f
	adc a                                            ; $4d3f: $8f
	rra                                              ; $4d40: $1f
	adc [hl]                                         ; $4d41: $8e
	inc e                                            ; $4d42: $1c
	adc h                                            ; $4d43: $8c
	add hl, de                                       ; $4d44: $19
	add b                                            ; $4d45: $80
	ld [bc], a                                       ; $4d46: $02
	ld de, $1285                                     ; $4d47: $11 $85 $12
	adc b                                            ; $4d4a: $88
	rla                                              ; $4d4b: $17
	inc c                                            ; $4d4c: $0c
	dec de                                           ; $4d4d: $1b
	adc l                                            ; $4d4e: $8d
	inc bc                                           ; $4d4f: $03
	jr nc, jr_04d_4d61                               ; $4d50: $30 $0f

	ld c, l                                          ; $4d52: $4d

jr_04d_4d53:
	jr nc, jr_04d_4d6d                               ; $4d53: $30 $18

	adc l                                            ; $4d55: $8d
	pop hl                                           ; $4d56: $e1
	ld h, d                                          ; $4d57: $62
	add c                                            ; $4d58: $81
	adc $31                                          ; $4d59: $ce $31
	inc b                                            ; $4d5b: $04
	ei                                               ; $4d5c: $fb
	or $ff                                           ; $4d5d: $f6 $ff
	db $10                                           ; $4d5f: $10
	rrca                                             ; $4d60: $0f

jr_04d_4d61:
	nop                                              ; $4d61: $00
	cp a                                             ; $4d62: $bf
	ld b, b                                          ; $4d63: $40
	ccf                                              ; $4d64: $3f
	jr nz, @+$01                                     ; $4d65: $20 $ff

	ld d, l                                          ; $4d67: $55
	ld a, e                                          ; $4d68: $7b
	xor b                                            ; $4d69: $a8
	halt                                             ; $4d6a: $76
	ld [hl], d                                       ; $4d6b: $72
	sbc b                                            ; $4d6c: $98

jr_04d_4d6d:
	nop                                              ; $4d6d: $00
	adc [hl]                                         ; $4d6e: $8e
	inc c                                            ; $4d6f: $0c
	ret c                                            ; $4d70: $d8

	ld d, h                                          ; $4d71: $54
	ret c                                            ; $4d72: $d8

	adc b                                            ; $4d73: $88
	ld a, e                                          ; $4d74: $7b
	db $fc                                           ; $4d75: $fc
	add b                                            ; $4d76: $80
	inc b                                            ; $4d77: $04
	ret c                                            ; $4d78: $d8

	ld h, b                                          ; $4d79: $60
	rst SubAFromDE                                          ; $4d7a: $df
	rst $38                                          ; $4d7b: $ff
	rst SubAFromDE                                          ; $4d7c: $df
	nop                                              ; $4d7d: $00
	ld bc, $0088                                     ; $4d7e: $01 $88 $00
	ld [$0806], sp                                   ; $4d81: $08 $06 $08
	inc b                                            ; $4d84: $04
	add hl, bc                                       ; $4d85: $09
	nop                                              ; $4d86: $00
	ret nz                                           ; $4d87: $c0

	ld bc, $01ca                                     ; $4d88: $01 $ca $01
	ret nz                                           ; $4d8b: $c0

	add e                                            ; $4d8c: $83
	ld c, d                                          ; $4d8d: $4a
	or b                                             ; $4d8e: $b0
	sub l                                            ; $4d8f: $95
	ld h, b                                          ; $4d90: $60
	sbc d                                            ; $4d91: $9a
	ld h, b                                          ; $4d92: $60
	dec h                                            ; $4d93: $25
	ldh a, [$0a]                                     ; $4d94: $f0 $0a
	sub a                                            ; $4d96: $97
	ldh a, [rDIV]                                    ; $4d97: $f0 $04
	ld sp, hl                                        ; $4d99: $f9
	nop                                              ; $4d9a: $00
	ld sp, hl                                        ; $4d9b: $f9
	ld a, $c5                                        ; $4d9c: $3e $c5
	ld b, b                                          ; $4d9e: $40
	ld a, c                                          ; $4d9f: $79
	ld a, $8e                                        ; $4da0: $3e $8e
	xor b                                            ; $4da2: $a8
	ld [bc], a                                       ; $4da3: $02
	ld d, h                                          ; $4da4: $54
	ld [bc], a                                       ; $4da5: $02
	xor b                                            ; $4da6: $a8
	ld [bc], a                                       ; $4da7: $02
	ld b, h                                          ; $4da8: $44
	ld [hl-], a                                      ; $4da9: $32
	nop                                              ; $4daa: $00
	ccf                                              ; $4dab: $3f
	ld [hl], b                                       ; $4dac: $70
	cp a                                             ; $4dad: $bf
	add b                                            ; $4dae: $80
	ld bc, $0154                                     ; $4daf: $01 $54 $01
	xor d                                            ; $4db2: $aa
	ld [hl], e                                       ; $4db3: $73
	db $fc                                           ; $4db4: $fc
	add b                                            ; $4db5: $80
	inc b                                            ; $4db6: $04
	or e                                             ; $4db7: $b3
	nop                                              ; $4db8: $00
	cp e                                             ; $4db9: $bb
	jr nz, jr_04d_4d53                               ; $4dba: $20 $97

	nop                                              ; $4dbc: $00
	ld h, $00                                        ; $4dbd: $26 $00
	db $e4                                           ; $4dbf: $e4
	nop                                              ; $4dc0: $00
	and $00                                          ; $4dc1: $e6 $00
	dec h                                            ; $4dc3: $25
	ld h, b                                          ; $4dc4: $60
	ld h, $a0                                        ; $4dc5: $26 $a0
	ld h, l                                          ; $4dc7: $65
	and c                                            ; $4dc8: $a1
	ld h, a                                          ; $4dc9: $67
	ld bc, $ff27                                     ; $4dca: $01 $27 $ff
	or e                                             ; $4dcd: $b3
	ld a, a                                          ; $4dce: $7f
	ld hl, $2eff                                     ; $4dcf: $21 $ff $2e
	ldh a, [c]                                       ; $4dd2: $f2
	inc hl                                           ; $4dd3: $23
	ldh [c], a                                       ; $4dd4: $e2
	sbc b                                            ; $4dd5: $98
	ld sp, $9dfb                                     ; $4dd6: $31 $fb $9d
	ld h, a                                          ; $4dd9: $67
	cp l                                             ; $4dda: $bd
	ld e, a                                          ; $4ddb: $5f
	cp l                                             ; $4ddc: $bd
	sbc $80                                          ; $4ddd: $de $80
	ld a, a                                          ; $4ddf: $7f
	ld [hl-], a                                      ; $4de0: $32
	ld a, d                                          ; $4de1: $7a
	jr nc, @-$7c                                     ; $4de2: $30 $82

	inc h                                            ; $4de4: $24
	ld b, b                                          ; $4de5: $40
	ld a, [bc]                                       ; $4de6: $0a
	cp h                                             ; $4de7: $bc
	sub $ec                                          ; $4de8: $d6 $ec
	ld l, a                                          ; $4dea: $6f
	or $28                                           ; $4deb: $f6 $28
	rra                                              ; $4ded: $1f
	ldh [$fc], a                                     ; $4dee: $e0 $fc
	ld d, b                                          ; $4df0: $50
	jr nc, jr_04d_4e0b                               ; $4df1: $30 $18

	db $10                                           ; $4df3: $10
	call nc, $3138                                   ; $4df4: $d4 $38 $31
	cp $74                                           ; $4df7: $fe $74
	ld a, b                                          ; $4df9: $78
	ld a, [bc]                                       ; $4dfa: $0a
	pop af                                           ; $4dfb: $f1
	nop                                              ; $4dfc: $00
	or e                                             ; $4dfd: $b3
	nop                                              ; $4dfe: $00
	inc sp                                           ; $4dff: $33
	ld [bc], a                                       ; $4e00: $02
	ld a, e                                          ; $4e01: $7b
	cp $7f                                           ; $4e02: $fe $7f
	ld a, [$477f]                                    ; $4e04: $fa $7f $47
	ld a, [hl]                                       ; $4e07: $7e
	cp b                                             ; $4e08: $b8
	sbc h                                            ; $4e09: $9c
	inc hl                                           ; $4e0a: $23

jr_04d_4e0b:
	di                                               ; $4e0b: $f3

Call_04d_4e0c:
	xor d                                            ; $4e0c: $aa
	ld a, e                                          ; $4e0d: $7b
	ld d, [hl]                                       ; $4e0e: $56
	ld h, h                                          ; $4e0f: $64
	ldh [$9b], a                                     ; $4e10: $e0 $9b
	pop bc                                           ; $4e12: $c1
	ld a, $ff                                        ; $4e13: $3e $ff
	nop                                              ; $4e15: $00
	ld h, a                                          ; $4e16: $67
	ldh a, [$df]                                     ; $4e17: $f0 $df
	ld a, a                                          ; $4e19: $7f
	sbc c                                            ; $4e1a: $99
	db $fd                                           ; $4e1b: $fd
	cp $fc                                           ; $4e1c: $fe $fc
	inc bc                                           ; $4e1e: $03
	rst FarCall                                          ; $4e1f: $f7
	ld [$f067], sp                                   ; $4e20: $08 $67 $f0
	rst SubAFromDE                                          ; $4e23: $df
	rst $38                                          ; $4e24: $ff
	adc c                                            ; $4e25: $89
	xor d                                            ; $4e26: $aa
	push de                                          ; $4e27: $d5
	ld d, h                                          ; $4e28: $54
	xor e                                            ; $4e29: $ab
	add b                                            ; $4e2a: $80
	ld a, a                                          ; $4e2b: $7f
	adc d                                            ; $4e2c: $8a

jr_04d_4e2d:
	sbc a                                            ; $4e2d: $9f
	dec c                                            ; $4e2e: $0d
	rst SubAFromDE                                          ; $4e2f: $df
	adc b                                            ; $4e30: $88
	ld a, [de]                                       ; $4e31: $1a
	ld [$885b], sp                                   ; $4e32: $08 $5b $88
	sbc a                                            ; $4e35: $9f
	adc c                                            ; $4e36: $89
	ld e, [hl]                                       ; $4e37: $5e
	rrca                                             ; $4e38: $0f
	sbc b                                            ; $4e39: $98
	ld c, $d9                                        ; $4e3a: $0e $d9
	ld a, e                                          ; $4e3c: $7b
	add sp, $7b                                      ; $4e3d: $e8 $7b
	ldh [$80], a                                     ; $4e3f: $e0 $80
	xor e                                            ; $4e41: $ab
	nop                                              ; $4e42: $00
	ccf                                              ; $4e43: $3f
	rst $38                                          ; $4e44: $ff
	call z, Call_04d_7f33                            ; $4e45: $cc $33 $7f
	add b                                            ; $4e48: $80
	db $f4                                           ; $4e49: $f4
	ld a, [bc]                                       ; $4e4a: $0a
	adc b                                            ; $4e4b: $88
	ld a, l                                          ; $4e4c: $7d
	nop                                              ; $4e4d: $00
	rst $38                                          ; $4e4e: $ff
	ld e, b                                          ; $4e4f: $58
	inc hl                                           ; $4e50: $23
	dec bc                                           ; $4e51: $0b
	db $fc                                           ; $4e52: $fc
	rst $38                                          ; $4e53: $ff
	ldh a, [$f8]                                     ; $4e54: $f0 $f8
	ld b, $c7                                        ; $4e56: $06 $c7
	jr nz, jr_04d_4eba                               ; $4e58: $20 $60

	inc bc                                           ; $4e5a: $03
	ld a, [hl+]                                      ; $4e5b: $2a
	call nc, $904d                                   ; $4e5c: $d4 $4d $90
	nop                                              ; $4e5f: $00
	add b                                            ; $4e60: $80
	or e                                             ; $4e61: $b3
	adc l                                            ; $4e62: $8d
	ld h, e                                          ; $4e63: $63
	jr jr_04d_4e2d                                   ; $4e64: $18 $c7

	ld h, e                                          ; $4e66: $63

jr_04d_4e67:
	inc e                                            ; $4e67: $1c
	sbc [hl]                                         ; $4e68: $9e
	ld h, b                                          ; $4e69: $60
	db $10                                           ; $4e6a: $10
	ldh [$03], a                                     ; $4e6b: $e0 $03
	ld e, $80                                        ; $4e6d: $1e $80
	rra                                              ; $4e6f: $1f
	nop                                              ; $4e70: $00
	sub c                                            ; $4e71: $91
	add b                                            ; $4e72: $80
	dec de                                           ; $4e73: $1b
	adc [hl]                                         ; $4e74: $8e
	sbc e                                            ; $4e75: $9b
	adc a                                            ; $4e76: $8f
	db $10                                           ; $4e77: $10
	adc c                                            ; $4e78: $89
	db $10                                           ; $4e79: $10
	adc b                                            ; $4e7a: $88
	db $10                                           ; $4e7b: $10
	bit 6, [hl]                                      ; $4e7c: $cb $76
	jr jr_04d_4e67                                   ; $4e7e: $18 $e7

	sbc c                                            ; $4e80: $99
	inc c                                            ; $4e81: $0c
	nop                                              ; $4e82: $00
	ld e, $fd                                        ; $4e83: $1e $fd
	ld d, l                                          ; $4e85: $55
	ld [$9575], a                                    ; $4e86: $ea $75 $95
	sbc c                                            ; $4e89: $99
	dec b                                            ; $4e8a: $05
	rlca                                             ; $4e8b: $07
	xor d                                            ; $4e8c: $aa
	ld a, a                                          ; $4e8d: $7f
	inc e                                            ; $4e8e: $1c
	db $e3                                           ; $4e8f: $e3
	ld [hl], l                                       ; $4e90: $75
	dec c                                            ; $4e91: $0d
	ld a, [hl]                                       ; $4e92: $7e
	halt                                             ; $4e93: $76
	rst $38                                          ; $4e94: $ff
	sub [hl]                                         ; $4e95: $96
	ld a, [bc]                                       ; $4e96: $0a
	cp a                                             ; $4e97: $bf
	ld d, l                                          ; $4e98: $55
	rst $38                                          ; $4e99: $ff
	adc d                                            ; $4e9a: $8a
	rst SubAFromDE                                          ; $4e9b: $df
	nop                                              ; $4e9c: $00

Call_04d_4e9d:
	inc b                                            ; $4e9d: $04
	inc b                                            ; $4e9e: $04
	ld [hl], h                                       ; $4e9f: $74
	ld [$687c], a                                    ; $4ea0: $ea $7c $68
	sub e                                            ; $4ea3: $93
	dec a                                            ; $4ea4: $3d
	xor d                                            ; $4ea5: $aa
	db $fc                                           ; $4ea6: $fc
	ld a, b                                          ; $4ea7: $78
	jp $83c4                                         ; $4ea8: $c3 $c4 $83


	add hl, bc                                       ; $4eab: $09
	ld b, $0a                                        ; $4eac: $06 $0a
	inc b                                            ; $4eae: $04
	adc e                                            ; $4eaf: $8b
	ld a, d                                          ; $4eb0: $7a
	ret nz                                           ; $4eb1: $c0

	sub l                                            ; $4eb2: $95
	ld a, [bc]                                       ; $4eb3: $0a
	rlca                                             ; $4eb4: $07
	rrca                                             ; $4eb5: $0f
	rst JumpTable                                          ; $4eb6: $c7
	rrca                                             ; $4eb7: $0f
	ret nz                                           ; $4eb8: $c0

	db $fd                                           ; $4eb9: $fd

jr_04d_4eba:
	rst $38                                          ; $4eba: $ff
	nop                                              ; $4ebb: $00
	jr nz, jr_04d_4f35                               ; $4ebc: $20 $77

	ld h, c                                          ; $4ebe: $61
	sub l                                            ; $4ebf: $95
	inc bc                                           ; $4ec0: $03
	rst SubAFromDE                                          ; $4ec1: $df
	rst SubAFromDE                                          ; $4ec2: $df
	rst $38                                          ; $4ec3: $ff
	sub b                                            ; $4ec4: $90
	sbc a                                            ; $4ec5: $9f
	nop                                              ; $4ec6: $00
	rst $38                                          ; $4ec7: $ff
	ld a, e                                          ; $4ec8: $7b
	cp a                                             ; $4ec9: $bf
	db $fc                                           ; $4eca: $fc
	add b                                            ; $4ecb: $80
	ld a, a                                          ; $4ecc: $7f
	ccf                                              ; $4ecd: $3f
	cp a                                             ; $4ece: $bf
	inc a                                            ; $4ecf: $3c
	ld a, d                                          ; $4ed0: $7a
	nop                                              ; $4ed1: $00
	ld hl, sp+$00                                    ; $4ed2: $f8 $00
	rlca                                             ; $4ed4: $07
	ld b, $b7                                        ; $4ed5: $06 $b7
	rrca                                             ; $4ed7: $0f
	inc bc                                           ; $4ed8: $03
	ld c, $81                                        ; $4ed9: $0e $81
	or a                                             ; $4edb: $b7
	jr jr_04d_4f11                                   ; $4edc: $18 $33

	inc c                                            ; $4ede: $0c
	db $fd                                           ; $4edf: $fd
	ld [bc], a                                       ; $4ee0: $02
	add a                                            ; $4ee1: $87
	ld a, a                                          ; $4ee2: $7f

jr_04d_4ee3:
	jr nc, jr_04d_4ee3                               ; $4ee3: $30 $fe

	nop                                              ; $4ee5: $00
	ldh [rP1], a                                     ; $4ee6: $e0 $00
	ldh [$c4], a                                     ; $4ee8: $e0 $c4
	db $e3                                           ; $4eea: $e3
	adc h                                            ; $4eeb: $8c
	ld b, $21                                        ; $4eec: $06 $21
	rlca                                             ; $4eee: $07
	jr nz, jr_04d_4ef1                               ; $4eef: $20 $00

jr_04d_4ef1:
	rst SubAFromBC                                          ; $4ef1: $e7
	ret nz                                           ; $4ef2: $c0

	rst SubAFromBC                                          ; $4ef3: $e7
	nop                                              ; $4ef4: $00
	daa                                              ; $4ef5: $27
	ld hl, $2202                                     ; $4ef6: $21 $02 $22
	ld d, b                                          ; $4ef9: $50
	ld a, [$0001]                                    ; $4efa: $fa $01 $00
	rst $38                                          ; $4efd: $ff

Call_04d_4efe:
	rlca                                             ; $4efe: $07
	sbc $ff                                          ; $4eff: $de $ff
	sbc [hl]                                         ; $4f01: $9e
	rlca                                             ; $4f02: $07
	ld a, e                                          ; $4f03: $7b
	cp b                                             ; $4f04: $b8
	sub c                                            ; $4f05: $91
	add a                                            ; $4f06: $87
	rrca                                             ; $4f07: $0f
	cpl                                              ; $4f08: $2f
	rra                                              ; $4f09: $1f
	rst SubAFromDE                                          ; $4f0a: $df
	ld a, $7b                                        ; $4f0b: $3e $7b
	db $fc                                           ; $4f0d: $fc
	cp $f0                                           ; $4f0e: $fe $f0
	sbc h                                            ; $4f10: $9c

jr_04d_4f11:
	nop                                              ; $4f11: $00
	ld h, $f9                                        ; $4f12: $26 $f9
	ld a, b                                          ; $4f14: $78
	db $eb                                           ; $4f15: $eb
	sbc c                                            ; $4f16: $99
	sbc a                                            ; $4f17: $9f
	inc bc                                           ; $4f18: $03
	rst SubAFromHL                                          ; $4f19: $d7
	nop                                              ; $4f1a: $00
	db $d3                                           ; $4f1b: $d3
	ld d, a                                          ; $4f1c: $57
	ld [hl], c                                       ; $4f1d: $71
	sbc [hl]                                         ; $4f1e: $9e
	rst SubAFromDE                                          ; $4f1f: $df
	rst $38                                          ; $4f20: $ff
	adc h                                            ; $4f21: $8c
	jr nz, jr_04d_4f83                               ; $4f22: $20 $5f

	pop hl                                           ; $4f24: $e1
	di                                               ; $4f25: $f3
	ld [hl+], a                                      ; $4f26: $22
	di                                               ; $4f27: $f3
	ld [bc], a                                       ; $4f28: $02
	or e                                             ; $4f29: $b3
	db $e3                                           ; $4f2a: $e3
	di                                               ; $4f2b: $f3
	inc hl                                           ; $4f2c: $23
	rst FarCall                                          ; $4f2d: $f7
	nop                                              ; $4f2e: $00
	ld [hl], d                                       ; $4f2f: $72
	ldh [$f3], a                                     ; $4f30: $e0 $f3
	inc hl                                           ; $4f32: $23
	di                                               ; $4f33: $f3
	rst $38                                          ; $4f34: $ff

jr_04d_4f35:
	ld a, b                                          ; $4f35: $78
	db $e4                                           ; $4f36: $e4
	add [hl]                                         ; $4f37: $86
	db $fc                                           ; $4f38: $fc
	add e                                            ; $4f39: $83
	ld a, h                                          ; $4f3a: $7c
	jp $efb0                                         ; $4f3b: $c3 $b0 $ef


	ld d, h                                          ; $4f3e: $54
	rst $38                                          ; $4f3f: $ff
	xor c                                            ; $4f40: $a9
	rst $38                                          ; $4f41: $ff
	ld d, a                                          ; $4f42: $57
	rst $38                                          ; $4f43: $ff
	rst FarCall                                          ; $4f44: $f7
	nop                                              ; $4f45: $00
	ld a, [hl]                                       ; $4f46: $7e
	add b                                            ; $4f47: $80
	ld a, $c0                                        ; $4f48: $3e $c0
	inc c                                            ; $4f4a: $0c
	ldh a, [rDIV]                                    ; $4f4b: $f0 $04
	ld hl, sp-$7f                                    ; $4f4d: $f8 $81
	ld sp, hl                                        ; $4f4f: $f9
	di                                               ; $4f50: $f3
	ld a, c                                          ; $4f51: $79
	ld [hl], d                                       ; $4f52: $72
	ld [hl], e                                       ; $4f53: $73
	ld b, l                                          ; $4f54: $45
	add c                                            ; $4f55: $81
	nop                                              ; $4f56: $00
	rst SubAFromDE                                          ; $4f57: $df
	nop                                              ; $4f58: $00
	ld [hl], b                                       ; $4f59: $70
	adc a                                            ; $4f5a: $8f
	ld a, l                                          ; $4f5b: $7d
	adc a                                            ; $4f5c: $8f

jr_04d_4f5d:
	ld l, l                                          ; $4f5d: $6d
	sub e                                            ; $4f5e: $93
	sbc $33                                          ; $4f5f: $de $33
	ld [$4898], sp                                   ; $4f61: $08 $98 $48
	jr jr_04d_4f75                                   ; $4f64: $18 $0f

	jr jr_04d_4fb2                                   ; $4f66: $18 $4a

	sbc l                                            ; $4f68: $9d
	adc [hl]                                         ; $4f69: $8e
	add hl, de                                       ; $4f6a: $19
	ret z                                            ; $4f6b: $c8

	ld e, $8b                                        ; $4f6c: $1e $8b
	ld e, $8f                                        ; $4f6e: $1e $8f
	db $db                                           ; $4f70: $db
	nop                                              ; $4f71: $00
	nop                                              ; $4f72: $00
	rrca                                             ; $4f73: $0f
	ld [hl], a                                       ; $4f74: $77

jr_04d_4f75:
	ld de, $567f                                     ; $4f75: $11 $7f $56
	ld a, a                                          ; $4f78: $7f
	ld a, $94                                        ; $4f79: $3e $94
	db $fc                                           ; $4f7b: $fc
	jr nz, jr_04d_4f5d                               ; $4f7c: $20 $df

	or d                                             ; $4f7e: $b2
	ld a, a                                          ; $4f7f: $7f
	ld a, h                                          ; $4f80: $7c
	inc bc                                           ; $4f81: $03
	nop                                              ; $4f82: $00

jr_04d_4f83:
	rst $38                                          ; $4f83: $ff
	ld h, c                                          ; $4f84: $61
	sbc [hl]                                         ; $4f85: $9e
	ld a, e                                          ; $4f86: $7b
	dec l                                            ; $4f87: $2d
	sbc h                                            ; $4f88: $9c
	ldh a, [$f7]                                     ; $4f89: $f0 $f7
	ld [$ec7b], sp                                   ; $4f8b: $08 $7b $ec
	ld a, a                                          ; $4f8e: $7f
	and $78                                          ; $4f8f: $e6 $78
	cp c                                             ; $4f91: $b9
	ld a, [hl]                                       ; $4f92: $7e
	adc d                                            ; $4f93: $8a
	ld [hl], a                                       ; $4f94: $77
	ld l, $7f                                        ; $4f95: $2e $7f
	push af                                          ; $4f97: $f5
	add b                                            ; $4f98: $80
	ld bc, $3cfe                                     ; $4f99: $01 $fe $3c
	rst $38                                          ; $4f9c: $ff
	add hl, bc                                       ; $4f9d: $09
	db $10                                           ; $4f9e: $10
	db $10                                           ; $4f9f: $10
	adc a                                            ; $4fa0: $8f
	sbc a                                            ; $4fa1: $9f
	nop                                              ; $4fa2: $00
	sbc c                                            ; $4fa3: $99
	ld b, $9c                                        ; $4fa4: $06 $9c
	inc bc                                           ; $4fa6: $03
	add b                                            ; $4fa7: $80
	dec de                                           ; $4fa8: $1b
	sub e                                            ; $4fa9: $93
	inc c                                            ; $4faa: $0c
	sub e                                            ; $4fab: $93
	inc c                                            ; $4fac: $0c
	cp d                                             ; $4fad: $ba
	ld e, a                                          ; $4fae: $5f
	add b                                            ; $4faf: $80
	rst $38                                          ; $4fb0: $ff
	dec a                                            ; $4fb1: $3d

jr_04d_4fb2:
	jp c, $c3fc                                      ; $4fb2: $da $fc $c3

	ld c, h                                          ; $4fb5: $4c
	pop af                                           ; $4fb6: $f1

jr_04d_4fb7:
	ld [hl+], a                                      ; $4fb7: $22
	add b                                            ; $4fb8: $80
	ld [hl], a                                       ; $4fb9: $77
	ld e, l                                          ; $4fba: $5d
	rst SubAFromBC                                          ; $4fbb: $e7
	xor [hl]                                         ; $4fbc: $ae
	rst $38                                          ; $4fbd: $ff
	adc a                                            ; $4fbe: $8f

jr_04d_4fbf:
	call nc, $24d3                                   ; $4fbf: $d4 $d3 $24
	ei                                               ; $4fc2: $fb
	inc b                                            ; $4fc3: $04
	add e                                            ; $4fc4: $83
	inc b                                            ; $4fc5: $04
	add b                                            ; $4fc6: $80
	ld b, b                                          ; $4fc7: $40
	ldh [$d6], a                                     ; $4fc8: $e0 $d6
	ld a, [hl]                                       ; $4fca: $7e
	rst $38                                          ; $4fcb: $ff
	or l                                             ; $4fcc: $b5
	rst $38                                          ; $4fcd: $ff
	or b                                             ; $4fce: $b0
	ld b, c                                          ; $4fcf: $41
	ld hl, $01c2                                     ; $4fd0: $21 $c2 $01
	add $11                                          ; $4fd3: $c6 $11
	ld c, $20                                        ; $4fd5: $0e $20
	add hl, de                                       ; $4fd7: $19
	ld a, [hl]                                       ; $4fd8: $7e
	or h                                             ; $4fd9: $b4
	adc b                                            ; $4fda: $88
	xor e                                            ; $4fdb: $ab
	rst $38                                          ; $4fdc: $ff
	halt                                             ; $4fdd: $76
	rst $38                                          ; $4fde: $ff
	ld b, a                                          ; $4fdf: $47
	add b                                            ; $4fe0: $80
	ld c, b                                          ; $4fe1: $48
	add b                                            ; $4fe2: $80
	dec bc                                           ; $4fe3: $0b
	add b                                            ; $4fe4: $80
	adc a                                            ; $4fe5: $8f
	inc b                                            ; $4fe6: $04
	db $10                                           ; $4fe7: $10
	add hl, bc                                       ; $4fe8: $09
	sub e                                            ; $4fe9: $93
	dec c                                            ; $4fea: $0d
	sbc c                                            ; $4feb: $99
	add $9f                                          ; $4fec: $c6 $9f
	rst JumpTable                                          ; $4fee: $c7
	nop                                              ; $4fef: $00
	ldh [rIF], a                                     ; $4ff0: $e0 $0f
	ld a, e                                          ; $4ff2: $7b
	add c                                            ; $4ff3: $81
	add b                                            ; $4ff4: $80
	add b                                            ; $4ff5: $80
	ld a, h                                          ; $4ff6: $7c
	add b                                            ; $4ff7: $80
	nop                                              ; $4ff8: $00
	inc a                                            ; $4ff9: $3c
	rst SubAFromBC                                          ; $4ffa: $e7
	dec hl                                           ; $4ffb: $2b
	call nz, Call_04d_708f                           ; $4ffc: $c4 $8f $70
	nop                                              ; $4fff: $00
	rlca                                             ; $5000: $07
	sbc c                                            ; $5001: $99
	ld h, [hl]                                       ; $5002: $66
	adc b                                            ; $5003: $88
	rst FarCall                                          ; $5004: $f7
	ld bc, $5802                                     ; $5005: $01 $02 $58
	inc hl                                           ; $5008: $23
	dec b                                            ; $5009: $05
	ld hl, sp+$5f                                    ; $500a: $f8 $5f
	cp b                                             ; $500c: $b8
	sbc a                                            ; $500d: $9f
	ld sp, hl                                        ; $500e: $f9
	ret nz                                           ; $500f: $c0

	ret nz                                           ; $5010: $c0

	rrca                                             ; $5011: $0f
	sbc a                                            ; $5012: $9f
	rra                                              ; $5013: $1f
	sub b                                            ; $5014: $90
	sbc a                                            ; $5015: $9f
	jr jr_04d_4fb7                                   ; $5016: $18 $9f

	rlca                                             ; $5018: $07
	xor a                                            ; $5019: $af
	adc e                                            ; $501a: $8b
	db $fc                                           ; $501b: $fc
	inc e                                            ; $501c: $1c
	cp a                                             ; $501d: $bf
	jr jr_04d_4fbf                                   ; $501e: $18 $9f

	inc bc                                           ; $5020: $03
	inc h                                            ; $5021: $24
	rst JumpTable                                          ; $5022: $c7
	ldh [$79], a                                     ; $5023: $e0 $79

jr_04d_5025:
	ld a, [hl]                                       ; $5025: $7e
	add h                                            ; $5026: $84
	rst SubAFromBC                                          ; $5027: $e7
	jp $c0e0                                         ; $5028: $c3 $e0 $c0


	inc hl                                           ; $502b: $23
	ld b, e                                          ; $502c: $43
	and h                                            ; $502d: $a4
	rst JumpTable                                          ; $502e: $c7
	ld [hl+], a                                      ; $502f: $22
	and c                                            ; $5030: $a1
	db $fc                                           ; $5031: $fc
	db $fc                                           ; $5032: $fc
	jp hl                                            ; $5033: $e9


	ld h, c                                          ; $5034: $61
	ld [hl+], a                                      ; $5035: $22
	inc hl                                           ; $5036: $23
	sbc $d5                                          ; $5037: $de $d5
	ld l, $eb                                        ; $5039: $2e $eb
	cp $7e                                           ; $503b: $fe $7e
	db $fd                                           ; $503d: $fd
	call $04ff                                       ; $503e: $cd $ff $04
	ei                                               ; $5041: $fb
	ld [hl], e                                       ; $5042: $73
	ld c, $7c                                        ; $5043: $0e $7c
	adc [hl]                                         ; $5045: $8e
	add b                                            ; $5046: $80
	ldh [$62], a                                     ; $5047: $e0 $62
	db $fd                                           ; $5049: $fd
	xor h                                            ; $504a: $ac
	ei                                               ; $504b: $fb
	ld e, b                                          ; $504c: $58
	rst FarCall                                          ; $504d: $f7
	nop                                              ; $504e: $00
	rst $38                                          ; $504f: $ff
	ld h, b                                          ; $5050: $60
	sbc a                                            ; $5051: $9f
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	ld hl, sp+$1f                                    ; $5054: $f8 $1f
	add hl, bc                                       ; $5056: $09
	ld e, $66                                        ; $5057: $1e $66
	sbc c                                            ; $5059: $99
	ld l, [hl]                                       ; $505a: $6e
	rst FarCall                                          ; $505b: $f7
	ld a, a                                          ; $505c: $7f
	db $fc                                           ; $505d: $fc
	inc b                                            ; $505e: $04
	ldh a, [c]                                       ; $505f: $f2
	inc h                                            ; $5060: $24
	di                                               ; $5061: $f3
	inc d                                            ; $5062: $14

jr_04d_5063:
	add e                                            ; $5063: $83
	ld [hl], h                                       ; $5064: $74
	db $e3                                           ; $5065: $e3
	sub [hl]                                         ; $5066: $96
	rst FarCall                                          ; $5067: $f7
	inc hl                                           ; $5068: $23
	inc [hl]                                         ; $5069: $34
	jp $c334                                         ; $506a: $c3 $34 $c3


	scf                                              ; $506d: $37
	jp Jump_04d_7957                                 ; $506e: $c3 $57 $79


	ret nz                                           ; $5071: $c0

	ld a, a                                          ; $5072: $7f
	ld h, [hl]                                       ; $5073: $66
	ld a, a                                          ; $5074: $7f
	db $fc                                           ; $5075: $fc
	halt                                             ; $5076: $76
	rst SubAFromHL                                          ; $5077: $d7
	ld a, a                                          ; $5078: $7f
	ld hl, sp-$21                                    ; $5079: $f8 $df
	rst $38                                          ; $507b: $ff
	sbc [hl]                                         ; $507c: $9e
	ld e, l                                          ; $507d: $5d
	ld a, e                                          ; $507e: $7b
	db $f4                                           ; $507f: $f4
	sbc [hl]                                         ; $5080: $9e
	ld b, b                                          ; $5081: $40
	ld e, e                                          ; $5082: $5b
	ldh a, [$74]                                     ; $5083: $f0 $74
	cp b                                             ; $5085: $b8
	sbc [hl]                                         ; $5086: $9e
	dec d                                            ; $5087: $15
	ld e, e                                          ; $5088: $5b
	ldh a, [hDisp1_BGP]                                     ; $5089: $f0 $92
	add hl, bc                                       ; $508b: $09
	sbc a                                            ; $508c: $9f
	adc d                                            ; $508d: $8a
	rst SubAFromDE                                          ; $508e: $df
	rrca                                             ; $508f: $0f
	cp a                                             ; $5090: $bf
	adc d                                            ; $5091: $8a
	rst SubAFromDE                                          ; $5092: $df
	adc a                                            ; $5093: $8f
	jr c, jr_04d_5025                                ; $5094: $38 $8f

	ld d, b                                          ; $5096: $50
	ld d, h                                          ; $5097: $54
	sbc $ff                                          ; $5098: $de $ff
	sbc d                                            ; $509a: $9a
	add e                                            ; $509b: $83
	ld a, a                                          ; $509c: $7f
	sub a                                            ; $509d: $97
	ld l, a                                          ; $509e: $6f
	rst SubAFromBC                                          ; $509f: $e7
	halt                                             ; $50a0: $76
	ld h, d                                          ; $50a1: $62
	ld [hl], h                                       ; $50a2: $74
	ld e, e                                          ; $50a3: $5b
	sbc $ff                                          ; $50a4: $de $ff
	sbc [hl]                                         ; $50a6: $9e
	rst AddAOntoHL                                          ; $50a7: $ef
	ld a, e                                          ; $50a8: $7b
	adc $9e                                          ; $50a9: $ce $9e
	xor $63                                          ; $50ab: $ee $63
	ldh a, [$9c]                                     ; $50ad: $f0 $9c
	add b                                            ; $50af: $80
	ldh [$cb], a                                     ; $50b0: $e0 $cb
	ld a, d                                          ; $50b2: $7a
	ld l, h                                          ; $50b3: $6c
	add a                                            ; $50b4: $87
	add sp, -$01                                     ; $50b5: $e8 $ff
	ld a, [hl]                                       ; $50b7: $7e
	add c                                            ; $50b8: $81
	rst $38                                          ; $50b9: $ff
	inc bc                                           ; $50ba: $03
	cp [hl]                                          ; $50bb: $be
	inc b                                            ; $50bc: $04
	adc a                                            ; $50bd: $8f
	ld a, h                                          ; $50be: $7c
	ld a, a                                          ; $50bf: $7f
	sbc a                                            ; $50c0: $9f
	adc d                                            ; $50c1: $8a
	sbc a                                            ; $50c2: $9f
	dec d                                            ; $50c3: $15
	sbc a                                            ; $50c4: $9f
	ld a, [bc]                                       ; $50c5: $0a
	sbc a                                            ; $50c6: $9f
	adc b                                            ; $50c7: $88
	sbc b                                            ; $50c8: $98
	jr nc, jr_04d_5063                               ; $50c9: $30 $98

	ld h, e                                          ; $50cb: $63
	sbc h                                            ; $50cc: $9c
	db $dd                                           ; $50cd: $dd
	rst $38                                          ; $50ce: $ff
	ld a, h                                          ; $50cf: $7c
	ld [$799e], a                                    ; $50d0: $ea $9e $79
	ld a, e                                          ; $50d3: $7b
	ld e, h                                          ; $50d4: $5c

Call_04d_50d5:
	sbc c                                            ; $50d5: $99
	ld a, [bc]                                       ; $50d6: $0a
	nop                                              ; $50d7: $00
	dec b                                            ; $50d8: $05
	nop                                              ; $50d9: $00
	pop af                                           ; $50da: $f1
	ld c, $dd                                        ; $50db: $0e $dd
	rst $38                                          ; $50dd: $ff
	ld a, [hl]                                       ; $50de: $7e
	call z, $fe98                                    ; $50df: $cc $98 $fe
	rst $38                                          ; $50e2: $ff
	ldh a, [rIE]                                     ; $50e3: $f0 $ff
	xor a                                            ; $50e5: $af
	nop                                              ; $50e6: $00
	ld a, a                                          ; $50e7: $7f
	ld a, d                                          ; $50e8: $7a
	adc d                                            ; $50e9: $8a
	db $dd                                           ; $50ea: $dd
	rst $38                                          ; $50eb: $ff
	sbc l                                            ; $50ec: $9d
	db $fc                                           ; $50ed: $fc
	inc sp                                           ; $50ee: $33
	ld [hl], e                                       ; $50ef: $73
	or a                                             ; $50f0: $b7
	ld [hl], a                                       ; $50f1: $77
	dec hl                                           ; $50f2: $2b
	sbc l                                            ; $50f3: $9d
	rst $38                                          ; $50f4: $ff
	call nc, $ffde                                   ; $50f5: $d4 $de $ff
	sub d                                            ; $50f8: $92
	sub a                                            ; $50f9: $97
	rst GetHLinHL                                          ; $50fa: $cf
	dec d                                            ; $50fb: $15
	rst GetHLinHL                                          ; $50fc: $cf
	ld d, b                                          ; $50fd: $50
	rst GetHLinHL                                          ; $50fe: $cf
	or a                                             ; $50ff: $b7
	ld c, b                                          ; $5100: $48
	rst SubAFromBC                                          ; $5101: $e7
	jr jr_04d_5183                                   ; $5102: $18 $7f

	add b                                            ; $5104: $80
	sub c                                            ; $5105: $91
	sbc $ff                                          ; $5106: $de $ff
	sub a                                            ; $5108: $97
	ret                                              ; $5109: $c9


	or a                                             ; $510a: $b7
	rst JumpTable                                          ; $510b: $c7
	cp a                                             ; $510c: $bf
	inc bc                                           ; $510d: $03
	rst $38                                          ; $510e: $ff
	cp a                                             ; $510f: $bf
	ld b, b                                          ; $5110: $40
	ld l, a                                          ; $5111: $6f
	sbc $de                                          ; $5112: $de $de
	rst $38                                          ; $5114: $ff
	sbc l                                            ; $5115: $9d
	ei                                               ; $5116: $fb
	or a                                             ; $5117: $b7
	db $dd                                           ; $5118: $dd
	rst $38                                          ; $5119: $ff
	ld [hl], a                                       ; $511a: $77
	bit 6, e                                         ; $511b: $cb $73
	ldh a, [$9e]                                     ; $511d: $f0 $9e
	cp b                                             ; $511f: $b8
	db $db                                           ; $5120: $db
	rst $38                                          ; $5121: $ff
	ld h, e                                          ; $5122: $63
	ldh a, [hDisp1_WY]                                     ; $5123: $f0 $95
	ld [bc], a                                       ; $5125: $02
	rst SubAFromBC                                          ; $5126: $e7
	add l                                            ; $5127: $85
	rst SubAFromBC                                          ; $5128: $e7
	jp $c7f7                                         ; $5129: $c3 $f7 $c7


	jr c, @+$01                                      ; $512c: $38 $ff

	jr nc, jr_04d_519f                               ; $512e: $30 $6f

	ldh a, [$9a]                                     ; $5130: $f0 $9a
	ld sp, hl                                        ; $5132: $f9
	rst $38                                          ; $5133: $ff
	ei                                               ; $5134: $fb
	rst $38                                          ; $5135: $ff
	rst SubAFromBC                                          ; $5136: $e7
	ld e, e                                          ; $5137: $5b
	ldh [$9a], a                                     ; $5138: $e0 $9a
	ld a, [hl-]                                      ; $513a: $3a
	rst FarCall                                          ; $513b: $f7
	rst FarCall                                          ; $513c: $f7
	rst $38                                          ; $513d: $ff
	jp z, $f05b                                      ; $513e: $ca $5b $f0

	sbc [hl]                                         ; $5141: $9e
	db $ed                                           ; $5142: $ed
	sbc $ff                                          ; $5143: $de $ff
	ld a, a                                          ; $5145: $7f
	ld b, b                                          ; $5146: $40
	ld e, a                                          ; $5147: $5f
	ldh a, [hDisp1_WY]                                     ; $5148: $f0 $95
	add e                                            ; $514a: $83
	and a                                            ; $514b: $a7
	jp nz, Jump_04d_42e7                             ; $514c: $c2 $e7 $42

	rst SubAFromBC                                          ; $514f: $e7
	jp Jump_04d_717c                                 ; $5150: $c3 $7c $71


	cp $6f                                           ; $5153: $fe $6f
	ldh a, [$e3]                                     ; $5155: $f0 $e3
	sbc l                                            ; $5157: $9d
	inc d                                            ; $5158: $14
	ld [$d1e0], sp                                   ; $5159: $08 $e0 $d1
	ld a, h                                          ; $515c: $7c
	push af                                          ; $515d: $f5
	ld a, l                                          ; $515e: $7d
	ld a, a                                          ; $515f: $7f
	sbc d                                            ; $5160: $9a
	ld b, $00                                        ; $5161: $06 $00

jr_04d_5163:
	ld [$1100], sp                                   ; $5163: $08 $00 $11
	ld a, e                                          ; $5166: $7b
	or $9e                                           ; $5167: $f6 $9e
	ld [bc], a                                       ; $5169: $02
	cp $8c                                           ; $516a: $fe $8c
	sub a                                            ; $516c: $97
	rst AddAOntoHL                                          ; $516d: $ef
	rrca                                             ; $516e: $0f
	rst JumpTable                                          ; $516f: $c7
	adc a                                            ; $5170: $8f
	rlca                                             ; $5171: $07
	adc a                                            ; $5172: $8f
	rlca                                             ; $5173: $07
	rra                                              ; $5174: $1f
	rrca                                             ; $5175: $0f
	ld a, [bc]                                       ; $5176: $0a
	rra                                              ; $5177: $1f
	dec c                                            ; $5178: $0d
	rra                                              ; $5179: $1f
	ld a, [de]                                       ; $517a: $1a
	rra                                              ; $517b: $1f
	xor d                                            ; $517c: $aa
	rst $38                                          ; $517d: $ff
	db $fd                                           ; $517e: $fd
	halt                                             ; $517f: $76
	ld [hl], d                                       ; $5180: $72
	sbc $ff                                          ; $5181: $de $ff

jr_04d_5183:
	ld l, [hl]                                       ; $5183: $6e
	ld c, b                                          ; $5184: $48
	ld l, d                                          ; $5185: $6a
	ld b, d                                          ; $5186: $42
	inc bc                                           ; $5187: $03
	ldh a, [$03]                                     ; $5188: $f0 $03
	ldh a, [$03]                                     ; $518a: $f0 $03
	ldh a, [$03]                                     ; $518c: $f0 $03
	ldh a, [$03]                                     ; $518e: $f0 $03
	ldh a, [$37]                                     ; $5190: $f0 $37
	ldh a, [$75]                                     ; $5192: $f0 $75
	ld d, h                                          ; $5194: $54
	ld a, a                                          ; $5195: $7f
	cp $7c                                           ; $5196: $fe $7c
	and [hl]                                         ; $5198: $a6
	sub c                                            ; $5199: $91
	ldh [rAUD3HIGH], a                               ; $519a: $e0 $1e
	nop                                              ; $519c: $00
	ld e, $02                                        ; $519d: $1e $02

jr_04d_519f:
	inc e                                            ; $519f: $1c
	ld [bc], a                                       ; $51a0: $02
	inc e                                            ; $51a1: $1c
	jr nz, jr_04d_51c2                               ; $51a2: $20 $1e

	jr nz, jr_04d_51bc                               ; $51a4: $20 $16

	ld [hl+], a                                      ; $51a6: $22
	inc e                                            ; $51a7: $1c
	ld d, $c8                                        ; $51a8: $16 $c8
	sub [hl]                                         ; $51aa: $96
	db $10                                           ; $51ab: $10
	rrca                                             ; $51ac: $0f
	db $10                                           ; $51ad: $10
	rrca                                             ; $51ae: $0f
	ld de, $010e                                     ; $51af: $11 $0e $01
	ld e, $01                                        ; $51b2: $1e $01
	ld a, e                                          ; $51b4: $7b
	adc $7f                                          ; $51b5: $ce $7f
	cp $96                                           ; $51b7: $fe $96
	jr jr_04d_51bf                                   ; $51b9: $18 $04

jr_04d_51bb:
	nop                                              ; $51bb: $00

jr_04d_51bc:
	inc a                                            ; $51bc: $3c
	nop                                              ; $51bd: $00
	inc a                                            ; $51be: $3c

jr_04d_51bf:
	inc b                                            ; $51bf: $04
	jr c, jr_04d_51c2                                ; $51c0: $38 $00

jr_04d_51c2:
	ld [hl], e                                       ; $51c2: $73
	cp $9d                                           ; $51c3: $fe $9d
	ld b, b                                          ; $51c5: $40
	jr c, jr_04d_51bb                                ; $51c6: $38 $f3

	ld a, h                                          ; $51c8: $7c
	jr c, jr_04d_5163                                ; $51c9: $38 $98

	jr jr_04d_51ec                                   ; $51cb: $18 $1f

	rla                                              ; $51cd: $17
	jr jr_04d_51e7                                   ; $51ce: $18 $17

	jr jr_04d_5209                                   ; $51d0: $18 $37

	ld h, e                                          ; $51d2: $63
	cp $69                                           ; $51d3: $fe $69
	ld h, [hl]                                       ; $51d5: $66
	ld h, e                                          ; $51d6: $63
	cp $03                                           ; $51d7: $fe $03
	ldh a, [$03]                                     ; $51d9: $f0 $03
	ldh a, [$03]                                     ; $51db: $f0 $03
	ldh a, [$03]                                     ; $51dd: $f0 $03
	ldh a, [$03]                                     ; $51df: $f0 $03
	ldh a, [rAUD3LEN]                                ; $51e1: $f0 $1b
	ldh a, [$7a]                                     ; $51e3: $f0 $7a
	adc $88                                          ; $51e5: $ce $88

jr_04d_51e7:
	inc e                                            ; $51e7: $1c
	nop                                              ; $51e8: $00
	inc a                                            ; $51e9: $3c
	add h                                            ; $51ea: $84
	ld a, b                                          ; $51eb: $78

jr_04d_51ec:
	nop                                              ; $51ec: $00
	ld hl, sp+$00                                    ; $51ed: $f8 $00
	ldh a, [rP1]                                     ; $51ef: $f0 $00
	ldh [rLCDC], a                                   ; $51f1: $e0 $40
	add b                                            ; $51f3: $80
	rlca                                             ; $51f4: $07
	nop                                              ; $51f5: $00
	jr nz, @+$21                                     ; $51f6: $20 $1f

	jr nz, jr_04d_5219                               ; $51f8: $20 $1f

	ld [bc], a                                       ; $51fa: $02
	dec e                                            ; $51fb: $1d
	ld [$6210], sp                                   ; $51fc: $08 $10 $62
	db $fc                                           ; $51ff: $fc
	sbc b                                            ; $5200: $98
	ret nz                                           ; $5201: $c0

	ld c, $f1                                        ; $5202: $0e $f1
	nop                                              ; $5204: $00
	rst $38                                          ; $5205: $ff
	ld b, b                                          ; $5206: $40
	ld a, $fb                                        ; $5207: $3e $fb

jr_04d_5209:
	ld a, a                                          ; $5209: $7f
	ret nc                                           ; $520a: $d0

	sbc [hl]                                         ; $520b: $9e
	and b                                            ; $520c: $a0
	ld a, e                                          ; $520d: $7b
	ret nc                                           ; $520e: $d0

	adc e                                            ; $520f: $8b
	ld b, h                                          ; $5210: $44
	jr c, jr_04d_5213                                ; $5211: $38 $00

jr_04d_5213:
	ld a, b                                          ; $5213: $78
	add b                                            ; $5214: $80
	ld a, b                                          ; $5215: $78
	ld [$90f0], sp                                   ; $5216: $08 $f0 $90

jr_04d_5219:
	ld h, b                                          ; $5219: $60
	ld b, b                                          ; $521a: $40
	jr c, jr_04d_5265                                ; $521b: $38 $48

	jr nc, jr_04d_5267                               ; $521d: $30 $48

	jr nc, jr_04d_5222                               ; $521f: $30 $01

	ld [hl], b                                       ; $5221: $70

jr_04d_5222:
	ld [$7877], sp                                   ; $5222: $08 $77 $78
	adc l                                            ; $5225: $8d
	sub e                                            ; $5226: $93
	ld a, a                                          ; $5227: $7f
	inc e                                            ; $5228: $1c
	ld h, e                                          ; $5229: $63
	jr nz, jr_04d_522c                               ; $522a: $20 $00

jr_04d_522c:
	ld b, b                                          ; $522c: $40
	jr nz, jr_04d_51bf                               ; $522d: $20 $90

	ld h, b                                          ; $522f: $60
	db $10                                           ; $5230: $10
	ldh [rP1], a                                     ; $5231: $e0 $00
	ld [hl], a                                       ; $5233: $77
	cp $80                                           ; $5234: $fe $80
	ret nz                                           ; $5236: $c0

	nop                                              ; $5237: $00
	add b                                            ; $5238: $80
	rla                                              ; $5239: $17
	jr c, jr_04d_5252                                ; $523a: $38 $16

	add hl, sp                                       ; $523c: $39
	dec d                                            ; $523d: $15
	dec sp                                           ; $523e: $3b
	inc de                                           ; $523f: $13
	ccf                                              ; $5240: $3f
	dec d                                            ; $5241: $15
	dec sp                                           ; $5242: $3b
	ld d, $39                                        ; $5243: $16 $39
	rla                                              ; $5245: $17
	jr c, jr_04d_525f                                ; $5246: $38 $17

	jr c, @+$01                                      ; $5248: $38 $ff

	nop                                              ; $524a: $00
	ld a, [$1907]                                    ; $524b: $fa $07 $19
	db $e3                                           ; $524e: $e3
	reti                                             ; $524f: $d9


	db $e3                                           ; $5250: $e3
	ld a, [de]                                       ; $5251: $1a

jr_04d_5252:
	rst SubAFromBC                                          ; $5252: $e7
	rst FarCall                                          ; $5253: $f7
	inc c                                            ; $5254: $0c
	ld l, a                                          ; $5255: $6f
	ld a, [hl]                                       ; $5256: $7e
	sub l                                            ; $5257: $95
	db $e3                                           ; $5258: $e3
	inc e                                            ; $5259: $1c
	db $dd                                           ; $525a: $dd
	ld a, $1d                                        ; $525b: $3e $1d
	or [hl]                                          ; $525d: $b6
	sub l                                            ; $525e: $95

jr_04d_525f:
	cp $23                                           ; $525f: $fe $23
	call c, $f06f                                    ; $5261: $dc $6f $f0
	sbc c                                            ; $5264: $99

jr_04d_5265:
	ld [hl], d                                       ; $5265: $72
	rst $38                                          ; $5266: $ff

jr_04d_5267:
	ld b, l                                          ; $5267: $45
	rst $38                                          ; $5268: $ff
	or l                                             ; $5269: $b5
	ld a, a                                          ; $526a: $7f
	ld a, d                                          ; $526b: $7a
	inc h                                            ; $526c: $24
	sbc [hl]                                         ; $526d: $9e
	ld [hl], a                                       ; $526e: $77
	ld l, a                                          ; $526f: $6f
	ldh a, [hDisp1_WY]                                     ; $5270: $f0 $95
	rst SubAFromHL                                          ; $5272: $d7
	ld l, h                                          ; $5273: $6c
	ld a, l                                          ; $5274: $7d
	cp $55                                           ; $5275: $fe $55
	cp $55                                           ; $5277: $fe $55
	xor $d7                                          ; $5279: $ee $d7
	ld l, h                                          ; $527b: $6c
	ld c, a                                          ; $527c: $4f
	ld b, [hl]                                       ; $527d: $46
	inc bc                                           ; $527e: $03
	cp $03                                           ; $527f: $fe $03
	cp $03                                           ; $5281: $fe $03
	cp $03                                           ; $5283: $fe $03
	cp $7f                                           ; $5285: $fe $7f
	cp $4e                                           ; $5287: $fe $4e
	nop                                              ; $5289: $00
	reti                                             ; $528a: $d9


	ld b, h                                          ; $528b: $44
	sbc l                                            ; $528c: $9d
	ld b, [hl]                                       ; $528d: $46
	ld [hl], $da                                     ; $528e: $36 $da
	ld b, h                                          ; $5290: $44
	add b                                            ; $5291: $80
	ld d, [hl]                                       ; $5292: $56
	ld h, l                                          ; $5293: $65
	ld d, [hl]                                       ; $5294: $56
	ld b, h                                          ; $5295: $44
	ld b, e                                          ; $5296: $43
	ld [hl], a                                       ; $5297: $77
	ld b, e                                          ; $5298: $43
	ld b, h                                          ; $5299: $44
	ld b, h                                          ; $529a: $44
	ld b, l                                          ; $529b: $45
	ld d, l                                          ; $529c: $55
	ld d, l                                          ; $529d: $55
	ld d, [hl]                                       ; $529e: $56
	ld [hl], a                                       ; $529f: $77
	ld [hl], e                                       ; $52a0: $73
	ld [hl], a                                       ; $52a1: $77
	ld [hl], a                                       ; $52a2: $77
	ld b, l                                          ; $52a3: $45
	ld [hl], a                                       ; $52a4: $77
	ld d, l                                          ; $52a5: $55
	ld [hl], $55                                     ; $52a6: $36 $55
	ld d, l                                          ; $52a8: $55
	halt                                             ; $52a9: $76
	ld h, e                                          ; $52aa: $63
	ld [hl], a                                       ; $52ab: $77
	ld [hl], e                                       ; $52ac: $73
	halt                                             ; $52ad: $76
	ld h, a                                          ; $52ae: $67
	ld h, [hl]                                       ; $52af: $66
	ld h, [hl]                                       ; $52b0: $66
	sub h                                            ; $52b1: $94
	inc sp                                           ; $52b2: $33
	ld d, l                                          ; $52b3: $55
	ld h, [hl]                                       ; $52b4: $66
	ld h, [hl]                                       ; $52b5: $66
	ld h, l                                          ; $52b6: $65
	ld d, e                                          ; $52b7: $53
	ld h, [hl]                                       ; $52b8: $66
	ld h, a                                          ; $52b9: $67
	ld b, h                                          ; $52ba: $44
	ld [hl], $33                                     ; $52bb: $36 $33
	ld a, e                                          ; $52bd: $7b
	di                                               ; $52be: $f3
	sbc e                                            ; $52bf: $9b
	ld h, [hl]                                       ; $52c0: $66
	ld h, e                                          ; $52c1: $63
	ld [hl], a                                       ; $52c2: $77
	ld [hl], a                                       ; $52c3: $77
	ld a, e                                          ; $52c4: $7b
	ld hl, sp-$23                                    ; $52c5: $f8 $dd
	ld h, [hl]                                       ; $52c7: $66
	sbc [hl]                                         ; $52c8: $9e
	ld [hl], $db                                     ; $52c9: $36 $db
	ld h, [hl]                                       ; $52cb: $66
	sbc $44                                          ; $52cc: $de $44
	jp c, $de33                                      ; $52ce: $da $33 $de

	ld b, h                                          ; $52d1: $44
	jp c, Jump_04d_5f77                              ; $52d2: $da $77 $5f

	or $61                                           ; $52d5: $f6 $61
	add hl, bc                                       ; $52d7: $09
	sbc e                                            ; $52d8: $9b
	xor d                                            ; $52d9: $aa
	nop                                              ; $52da: $00
	ld d, l                                          ; $52db: $55
	nop                                              ; $52dc: $00
	rla                                              ; $52dd: $17
	db $fc                                           ; $52de: $fc
	sbc [hl]                                         ; $52df: $9e
	xor a                                            ; $52e0: $af
	ld c, e                                          ; $52e1: $4b
	ldh a, [$9c]                                     ; $52e2: $f0 $9c
	cp $00                                           ; $52e4: $fe $00
	ld [hl], l                                       ; $52e6: $75
	dec de                                           ; $52e7: $1b
	ret nc                                           ; $52e8: $d0

	sbc [hl]                                         ; $52e9: $9e
	ld d, b                                          ; $52ea: $50
	ld d, e                                          ; $52eb: $53
	ldh a, [$9c]                                     ; $52ec: $f0 $9c
	adc b                                            ; $52ee: $88
	nop                                              ; $52ef: $00
	db $10                                           ; $52f0: $10
	ld h, e                                          ; $52f1: $63
	db $f4                                           ; $52f2: $f4
	sbc [hl]                                         ; $52f3: $9e
	xor b                                            ; $52f4: $a8
	ld a, [$f067]                                    ; $52f5: $fa $67 $f0
	sbc b                                            ; $52f8: $98
	ld a, [bc]                                       ; $52f9: $0a
	nop                                              ; $52fa: $00
	ld bc, $0800                                     ; $52fb: $01 $00 $08
	nop                                              ; $52fe: $00
	inc b                                            ; $52ff: $04
	ld d, e                                          ; $5300: $53
	ret nc                                           ; $5301: $d0

	sbc [hl]                                         ; $5302: $9e
	ld [bc], a                                       ; $5303: $02
	ld e, e                                          ; $5304: $5b
	ldh [$6f], a                                     ; $5305: $e0 $6f
	db $fc                                           ; $5307: $fc
	sbc l                                            ; $5308: $9d
	inc e                                            ; $5309: $1c
	ld [$f04f], sp                                   ; $530a: $08 $4f $f0
	ld e, a                                          ; $530d: $5f
	ldh [$7f], a                                     ; $530e: $e0 $7f
	or b                                             ; $5310: $b0
	ld a, a                                          ; $5311: $7f
	sub h                                            ; $5312: $94
	sbc [hl]                                         ; $5313: $9e
	jr nz, jr_04d_5389                               ; $5314: $20 $73

	and b                                            ; $5316: $a0
	ld a, a                                          ; $5317: $7f
	ld hl, sp-$62                                    ; $5318: $f8 $9e
	add b                                            ; $531a: $80
	or $5f                                           ; $531b: $f6 $5f
	db $f4                                           ; $531d: $f4
	sbc [hl]                                         ; $531e: $9e
	ld b, b                                          ; $531f: $40
	ld a, e                                          ; $5320: $7b
	db $f4                                           ; $5321: $f4
	ld a, a                                          ; $5322: $7f
	db $fc                                           ; $5323: $fc
	ld [hl], a                                       ; $5324: $77
	call z, Call_04d_7ff7                            ; $5325: $cc $f7 $7f
	adc h                                            ; $5328: $8c
	ld [hl], a                                       ; $5329: $77
	sbc h                                            ; $532a: $9c
	ld h, a                                          ; $532b: $67
	ret c                                            ; $532c: $d8

	ld [hl], a                                       ; $532d: $77
	db $fc                                           ; $532e: $fc
	ld h, a                                          ; $532f: $67
	adc b                                            ; $5330: $88
	ld sp, hl                                        ; $5331: $f9
	ld e, a                                          ; $5332: $5f
	ld h, b                                          ; $5333: $60
	sbc [hl]                                         ; $5334: $9e
	dec b                                            ; $5335: $05
	ld [hl], e                                       ; $5336: $73
	db $fc                                           ; $5337: $fc
	ld c, a                                          ; $5338: $4f
	add b                                            ; $5339: $80
	ld b, a                                          ; $533a: $47
	ldh a, [$6f]                                     ; $533b: $f0 $6f
	inc c                                            ; $533d: $0c
	ei                                               ; $533e: $fb
	ld a, a                                          ; $533f: $7f
	ld [hl], h                                       ; $5340: $74
	ld a, a                                          ; $5341: $7f
	ld [hl], b                                       ; $5342: $70
	sbc [hl]                                         ; $5343: $9e
	ld de, $f07b                                     ; $5344: $11 $7b $f0
	ld l, a                                          ; $5347: $6f
	adc b                                            ; $5348: $88
	sbc [hl]                                         ; $5349: $9e
	and b                                            ; $534a: $a0
	ld [hl], a                                       ; $534b: $77
	db $fc                                           ; $534c: $fc
	ld a, a                                          ; $534d: $7f
	db $fd                                           ; $534e: $fd

jr_04d_534f:
	sub c                                            ; $534f: $91
	ld b, b                                          ; $5350: $40

jr_04d_5351:
	xor d                                            ; $5351: $aa
	nop                                              ; $5352: $00
	ld d, c                                          ; $5353: $51
	nop                                              ; $5354: $00
	jr z, jr_04d_5357                                ; $5355: $28 $00

jr_04d_5357:
	ld b, b                                          ; $5357: $40
	jr nc, @+$0a                                     ; $5358: $30 $08

	ld [hl], b                                       ; $535a: $70
	nop                                              ; $535b: $00
	ld [hl], b                                       ; $535c: $70
	ld [$fe7b], sp                                   ; $535d: $08 $7b $fe
	ld a, a                                          ; $5360: $7f
	ldh a, [$99]                                     ; $5361: $f0 $99
	ld b, l                                          ; $5363: $45
	ld [bc], a                                       ; $5364: $02
	nop                                              ; $5365: $00
	inc bc                                           ; $5366: $03
	inc b                                            ; $5367: $04
	inc bc                                           ; $5368: $03
	ld h, a                                          ; $5369: $67
	db $fc                                           ; $536a: $fc
	ld h, a                                          ; $536b: $67
	ld a, b                                          ; $536c: $78
	ld l, a                                          ; $536d: $6f
	db $fc                                           ; $536e: $fc
	ld a, a                                          ; $536f: $7f
	cp $7e                                           ; $5370: $fe $7e
	db $ec                                           ; $5372: $ec
	ld a, a                                          ; $5373: $7f

jr_04d_5374:
	cp b                                             ; $5374: $b8
	sub e                                            ; $5375: $93
	jr z, jr_04d_5388                                ; $5376: $28 $10

	nop                                              ; $5378: $00
	db $10                                           ; $5379: $10
	ld [$2030], sp                                   ; $537a: $08 $30 $20
	jr jr_04d_5383                                   ; $537d: $18 $04

	jr c, @+$06                                      ; $537f: $38 $04

	jr c, jr_04d_5374                                ; $5381: $38 $f1

jr_04d_5383:
	halt                                             ; $5383: $76
	call z, Call_04d_687f                            ; $5384: $cc $7f $68
	ld a, a                                          ; $5387: $7f

jr_04d_5388:
	ei                                               ; $5388: $fb

jr_04d_5389:
	sub a                                            ; $5389: $97
	ld a, [bc]                                       ; $538a: $0a
	inc b                                            ; $538b: $04
	db $10                                           ; $538c: $10

jr_04d_538d:
	inc c                                            ; $538d: $0c
	nop                                              ; $538e: $00
	inc c                                            ; $538f: $0c
	inc hl                                           ; $5390: $23
	inc e                                            ; $5391: $1c
	rst FarCall                                          ; $5392: $f7
	ld a, a                                          ; $5393: $7f

jr_04d_5394:
	sbc d                                            ; $5394: $9a
	ld a, a                                          ; $5395: $7f
	halt                                             ; $5396: $76
	adc l                                            ; $5397: $8d

jr_04d_5398:
	or [hl]                                          ; $5398: $b6
	nop                                              ; $5399: $00
	jr nz, jr_04d_53a4                               ; $539a: $20 $08

	inc b                                            ; $539c: $04
	jr jr_04d_53c1                                   ; $539d: $18 $22

	inc e                                            ; $539f: $1c
	nop                                              ; $53a0: $00
	inc e                                            ; $53a1: $1c
	ld [hl+], a                                      ; $53a2: $22
	inc e                                            ; $53a3: $1c

jr_04d_53a4:
	ld [bc], a                                       ; $53a4: $02
	inc a                                            ; $53a5: $3c
	nop                                              ; $53a6: $00
	ld a, $21                                        ; $53a7: $3e $21
	ld e, $f9                                        ; $53a9: $1e $f9
	ld a, a                                          ; $53ab: $7f
	adc e                                            ; $53ac: $8b
	sbc d                                            ; $53ad: $9a
	dec d                                            ; $53ae: $15
	nop                                              ; $53af: $00
	rrca                                             ; $53b0: $0f
	nop                                              ; $53b1: $00
	rra                                              ; $53b2: $1f
	halt                                             ; $53b3: $76
	call z, $fd7f                                    ; $53b4: $cc $7f $fd
	sub h                                            ; $53b7: $94
	jr nc, jr_04d_53ca                               ; $53b8: $30 $10

	jr nz, jr_04d_5351                               ; $53ba: $20 $95

	jr nz, jr_04d_5398                               ; $53bc: $20 $da

	jr nz, jr_04d_534f                               ; $53be: $20 $8f

	ld [hl], b                                       ; $53c0: $70

jr_04d_53c1:
	adc a                                            ; $53c1: $8f
	ld [hl], b                                       ; $53c2: $70
	rst FarCall                                          ; $53c3: $f7
	sbc d                                            ; $53c4: $9a
	ld b, c                                          ; $53c5: $41
	nop                                              ; $53c6: $00
	or c                                             ; $53c7: $b1
	nop                                              ; $53c8: $00
	db $fd                                           ; $53c9: $fd

jr_04d_53ca:
	ld [hl], a                                       ; $53ca: $77
	ld c, b                                          ; $53cb: $48
	sub d                                            ; $53cc: $92
	add b                                            ; $53cd: $80
	and b                                            ; $53ce: $a0
	ld b, b                                          ; $53cf: $40
	ld b, b                                          ; $53d0: $40
	add b                                            ; $53d1: $80
	jr nz, jr_04d_5394                               ; $53d2: $20 $c0

	ld hl, $22c0                                     ; $53d4: $21 $c0 $22
	pop bc                                           ; $53d7: $c1
	ld [hl], b                                       ; $53d8: $70
	add d                                            ; $53d9: $82
	halt                                             ; $53da: $76
	call z, $c772                                    ; $53db: $cc $72 $c7
	sbc b                                            ; $53de: $98
	ld bc, $c120                                     ; $53df: $01 $20 $c1
	ld [de], a                                       ; $53e2: $12
	pop hl                                           ; $53e3: $e1
	ld l, e                                          ; $53e4: $6b
	sub c                                            ; $53e5: $91
	ld a, e                                          ; $53e6: $7b
	inc h                                            ; $53e7: $24
	ld [hl], a                                       ; $53e8: $77
	ld e, c                                          ; $53e9: $59
	sbc [hl]                                         ; $53ea: $9e
	ret nz                                           ; $53eb: $c0

	ld [hl], a                                       ; $53ec: $77
	sbc $9a                                          ; $53ed: $de $9a
	or b                                             ; $53ef: $b0
	ldh [$d0], a                                     ; $53f0: $e0 $d0
	ldh a, [rAUD4LEN]                                ; $53f2: $f0 $20
	ld [hl], a                                       ; $53f4: $77
	nop                                              ; $53f5: $00
	add h                                            ; $53f6: $84
	jr nz, jr_04d_5449                               ; $53f7: $20 $50

	jr nz, jr_04d_53fb                               ; $53f9: $20 $00

jr_04d_53fb:
	jr nz, jr_04d_538d                               ; $53fb: $20 $90

	ld h, b                                          ; $53fd: $60
	nop                                              ; $53fe: $00
	ldh a, [hDisp1_SCY]                                     ; $53ff: $f0 $90
	ld h, b                                          ; $5401: $60
	ld [$0502], sp                                   ; $5402: $08 $02 $05
	ld [bc], a                                       ; $5405: $02
	ld [$0102], sp                                   ; $5406: $08 $02 $01
	ld b, $09                                        ; $5409: $06 $09
	ld b, $08                                        ; $540b: $06 $08
	rlca                                             ; $540d: $07
	nop                                              ; $540e: $00
	rrca                                             ; $540f: $0f
	db $10                                           ; $5410: $10
	rrca                                             ; $5411: $0f
	db $fd                                           ; $5412: $fd
	sbc [hl]                                         ; $5413: $9e
	and d                                            ; $5414: $a2
	ld a, c                                          ; $5415: $79
	call z, $fe9d                                    ; $5416: $cc $9d $fe
	ld bc, $fe6f                                     ; $5419: $01 $6f $fe
	sbc d                                            ; $541c: $9a
	add b                                            ; $541d: $80
	ld b, b                                          ; $541e: $40
	nop                                              ; $541f: $00
	ret nz                                           ; $5420: $c0

	jr nz, jr_04d_549e                               ; $5421: $20 $7b

	cp $9d                                           ; $5423: $fe $9d
	nop                                              ; $5425: $00
	ldh [$73], a                                     ; $5426: $e0 $73
	cp $9d                                           ; $5428: $fe $9d
	ldh a, [$28]                                     ; $542a: $f0 $28
	ld [hl], d                                       ; $542c: $72
	ldh [hDisp1_WY], a                                     ; $542d: $e0 $95
	ld d, c                                          ; $542f: $51
	ld [$10aa], sp                                   ; $5430: $08 $aa $10
	ld d, h                                          ; $5433: $54
	add hl, hl                                       ; $5434: $29
	xor e                                            ; $5435: $ab
	db $10                                           ; $5436: $10
	ld d, l                                          ; $5437: $55
	jr z, jr_04d_54b5                                ; $5438: $28 $7b

	and $77                                          ; $543a: $e6 $77
	ldh [c], a                                       ; $543c: $e2
	add b                                            ; $543d: $80
	ret nz                                           ; $543e: $c0

	push af                                          ; $543f: $f5
	nop                                              ; $5440: $00
	ld a, [de]                                       ; $5441: $1a
	ldh [$35], a                                     ; $5442: $e0 $35
	ret nz                                           ; $5444: $c0

	rst SubAFromDE                                          ; $5445: $df
	jr nz, jr_04d_5448                               ; $5446: $20 $00

jr_04d_5448:
	ld a, b                                          ; $5448: $78

jr_04d_5449:
	ld [bc], a                                       ; $5449: $02
	ld a, b                                          ; $544a: $78
	add h                                            ; $544b: $84
	ld a, c                                          ; $544c: $79
	dec bc                                           ; $544d: $0b
	ld [hl], b                                       ; $544e: $70
	ld a, h                                          ; $544f: $7c
	ld de, $10ef                                     ; $5450: $11 $ef $10
	or $19                                           ; $5453: $f6 $19
	xor l                                            ; $5455: $ad
	ld e, d                                          ; $5456: $5a
	nop                                              ; $5457: $00
	rlca                                             ; $5458: $07
	ret nz                                           ; $5459: $c0

	rlca                                             ; $545a: $07
	and b                                            ; $545b: $a0
	ld c, a                                          ; $545c: $4f
	sub l                                            ; $545d: $95
	ld e, b                                          ; $545e: $58
	and a                                            ; $545f: $a7
	or a                                             ; $5460: $b7
	ld b, b                                          ; $5461: $40
	ld d, h                                          ; $5462: $54
	and e                                            ; $5463: $a3
	push af                                          ; $5464: $f5
	ld [bc], a                                       ; $5465: $02
	ld [hl], l                                       ; $5466: $75
	add d                                            ; $5467: $82
	ld [hl], a                                       ; $5468: $77
	ld [hl], e                                       ; $5469: $73
	ld l, a                                          ; $546a: $6f
	cp $7f                                           ; $546b: $fe $7f
	or e                                             ; $546d: $b3
	adc e                                            ; $546e: $8b
	ld hl, sp+$00                                    ; $546f: $f8 $00
	ld a, l                                          ; $5471: $7d

jr_04d_5472:
	add b                                            ; $5472: $80
	jr z, jr_04d_54ad                                ; $5473: $28 $38

	jr @+$1a                                         ; $5475: $18 $18

	ld a, b                                          ; $5477: $78
	jr jr_04d_5472                                   ; $5478: $18 $f8

	ld [hl], a                                       ; $547a: $77
	sub b                                            ; $547b: $90
	db $fd                                           ; $547c: $fd
	ld [bc], a                                       ; $547d: $02
	sbc c                                            ; $547e: $99
	ld [hl], c                                       ; $547f: $71
	ld [bc], a                                       ; $5480: $02
	ldh [$03], a                                     ; $5481: $e0 $03
	cp $80                                           ; $5483: $fe $80
	ld [de], a                                       ; $5485: $12
	nop                                              ; $5486: $00
	inc a                                            ; $5487: $3c
	add b                                            ; $5488: $80
	inc e                                            ; $5489: $1c
	or b                                             ; $548a: $b0
	rlca                                             ; $548b: $07
	sbc h                                            ; $548c: $9c
	ld bc, $00ce                                     ; $548d: $01 $ce $00
	rst GetHLinHL                                          ; $5490: $cf
	nop                                              ; $5491: $00
	ld hl, $a01e                                     ; $5492: $21 $1e $a0
	ld e, $e3                                        ; $5495: $1e $e3
	inc e                                            ; $5497: $1c
	ldh [rAUD3HIGH], a                               ; $5498: $e0 $1e
	cp a                                             ; $549a: $bf
	nop                                              ; $549b: $00
	xor h                                            ; $549c: $ac
	sub d                                            ; $549d: $92

jr_04d_549e:
	ei                                               ; $549e: $fb
	add h                                            ; $549f: $84
	ld a, [hl]                                       ; $54a0: $7e
	nop                                              ; $54a1: $00
	ld d, b                                          ; $54a2: $50
	rrca                                             ; $54a3: $0f
	add b                                            ; $54a4: $80
	or $09                                           ; $54a5: $f6 $09
	ldh [$1f], a                                     ; $54a7: $e0 $1f
	ld [$5515], a                                    ; $54a9: $ea $15 $55
	ld a, [hl+]                                      ; $54ac: $2a

jr_04d_54ad:
	ld l, a                                          ; $54ad: $6f
	db $10                                           ; $54ae: $10
	ld a, a                                          ; $54af: $7f
	add b                                            ; $54b0: $80
	ccf                                              ; $54b1: $3f
	ld b, b                                          ; $54b2: $40
	ld h, c                                          ; $54b3: $61
	sbc [hl]                                         ; $54b4: $9e

jr_04d_54b5:
	ld b, c                                          ; $54b5: $41
	cp [hl]                                          ; $54b6: $be
	ld bc, $fbfe                                     ; $54b7: $01 $fe $fb
	inc b                                            ; $54ba: $04
	db $eb                                           ; $54bb: $eb
	inc b                                            ; $54bc: $04
	jp $f92c                                         ; $54bd: $c3 $2c $f9


	ld b, $ef                                        ; $54c0: $06 $ef
	nop                                              ; $54c2: $00
	cp a                                             ; $54c3: $bf
	add b                                            ; $54c4: $80
	nop                                              ; $54c5: $00
	db $fc                                           ; $54c6: $fc
	ld [bc], a                                       ; $54c7: $02
	cp $01                                           ; $54c8: $fe $01
	pop hl                                           ; $54ca: $e1
	ld b, $00                                        ; $54cb: $06 $00
	inc c                                            ; $54cd: $0c
	and c                                            ; $54ce: $a1
	jr jr_04d_5513                                   ; $54cf: $18 $42

	ld sp, $7380                                     ; $54d1: $31 $80 $73
	rst FarCall                                          ; $54d4: $f7
	ld l, b                                          ; $54d5: $68
	ld a, a                                          ; $54d6: $7f
	ldh [rAUD1ENV], a                                ; $54d7: $e0 $12
	ld c, c                                          ; $54d9: $49
	add c                                            ; $54da: $81
	ld l, h                                          ; $54db: $6c
	ld [$82c6], sp                                   ; $54dc: $08 $c6 $82
	ld b, l                                          ; $54df: $45
	ld b, b                                          ; $54e0: $40
	add a                                            ; $54e1: $87
	nop                                              ; $54e2: $00
	add a                                            ; $54e3: $87
	add b                                            ; $54e4: $80
	rst $38                                          ; $54e5: $ff
	nop                                              ; $54e6: $00
	ld a, $01                                        ; $54e7: $3e $01
	cp [hl]                                          ; $54e9: $be
	ld bc, $9d42                                     ; $54ea: $01 $42 $9d
	ld bc, $4260                                     ; $54ed: $01 $60 $42
	ld sp, $9922                                     ; $54f0: $31 $22 $99
	daa                                              ; $54f3: $27
	sbc b                                            ; $54f4: $98
	db $10                                           ; $54f5: $10
	ldh [rAUD1SWEEP], a                              ; $54f6: $e0 $10
	ldh [rAUD1HIGH], a                               ; $54f8: $e0 $14
	db $e3                                           ; $54fa: $e3
	or a                                             ; $54fb: $b7
	ld b, b                                          ; $54fc: $40
	call z, $2620                                    ; $54fd: $cc $20 $26
	reti                                             ; $5500: $d9


	ld l, $d1                                        ; $5501: $2e $d1
	db $dd                                           ; $5503: $dd
	add b                                            ; $5504: $80
	ld [hl+], a                                      ; $5505: $22
	ld b, l                                          ; $5506: $45
	dec sp                                           ; $5507: $3b
	ld d, e                                          ; $5508: $53
	cpl                                              ; $5509: $2f
	ld b, [hl]                                       ; $550a: $46
	sbc e                                            ; $550b: $9b
	ld hl, sp+$47                                    ; $550c: $f8 $47
	cp b                                             ; $550e: $b8
	ld h, a                                          ; $550f: $67
	ld c, e                                          ; $5510: $4b
	cp h                                             ; $5511: $bc
	rrca                                             ; $5512: $0f

jr_04d_5513:
	cp h                                             ; $5513: $bc
	ret nz                                           ; $5514: $c0

	ccf                                              ; $5515: $3f
	xor b                                            ; $5516: $a8
	ret nc                                           ; $5517: $d0

	nop                                              ; $5518: $00
	ld hl, sp+$05                                    ; $5519: $f8 $05
	ld hl, sp+$3a                                    ; $551b: $f8 $3a
	ret nz                                           ; $551d: $c0

	call Call_04d_6280                               ; $551e: $cd $80 $62
	db $fc                                           ; $5521: $fc
	cp a                                             ; $5522: $bf
	ld [hl], b                                       ; $5523: $70
	add b                                            ; $5524: $80
	ld d, e                                          ; $5525: $53
	xor d                                            ; $5526: $aa
	add b                                            ; $5527: $80
	ld [hl], b                                       ; $5528: $70
	add b                                            ; $5529: $80
	ld [hl], b                                       ; $552a: $70
	ld bc, $02f0                                     ; $552b: $01 $f0 $02
	ldh a, [$b5]                                     ; $552e: $f0 $b5
	nop                                              ; $5530: $00
	adc e                                            ; $5531: $8b
	ld [hl], b                                       ; $5532: $70
	rst $38                                          ; $5533: $ff
	nop                                              ; $5534: $00
	rst AddAOntoHL                                          ; $5535: $ef
	db $10                                           ; $5536: $10
	db $10                                           ; $5537: $10
	rrca                                             ; $5538: $0f
	ld sp, $5c0e                                     ; $5539: $31 $0e $5c
	inc hl                                           ; $553c: $23
	sbc [hl]                                         ; $553d: $9e
	jr nz, jr_04d_55b3                               ; $553e: $20 $73

	inc c                                            ; $5540: $0c
	ldh [$1f], a                                     ; $5541: $e0 $1f
	pop af                                           ; $5543: $f1
	sub h                                            ; $5544: $94
	ld c, $f1                                        ; $5545: $0e $f1
	ld c, $fe                                        ; $5547: $0e $fe
	ld bc, $03fc                                     ; $5549: $01 $fc $03
	db $fc                                           ; $554c: $fc
	inc bc                                           ; $554d: $03
	xor h                                            ; $554e: $ac
	inc bc                                           ; $554f: $03
	ld a, b                                          ; $5550: $78
	add [hl]                                         ; $5551: $86
	sbc d                                            ; $5552: $9a
	ld bc, $00ff                                     ; $5553: $01 $ff $00
	ld a, a                                          ; $5556: $7f
	nop                                              ; $5557: $00
	halt                                             ; $5558: $76
	jp z, $1d8b                                      ; $5559: $ca $8b $1d

	ldh [c], a                                       ; $555c: $e2
	add hl, bc                                       ; $555d: $09
	or $57                                           ; $555e: $f6 $57
	nop                                              ; $5560: $00
	rst $38                                          ; $5561: $ff
	nop                                              ; $5562: $00
	rst FarCall                                          ; $5563: $f7
	ld [$00f7], sp                                   ; $5564: $08 $f7 $00
	ld bc, $007b                                     ; $5567: $01 $7b $00
	xor e                                            ; $556a: $ab
	nop                                              ; $556b: $00
	ld d, c                                          ; $556c: $51
	ld bc, $6d01                                     ; $556d: $01 $01 $6d
	ld [hl], d                                       ; $5570: $72
	ld a, a                                          ; $5571: $7f
	db $ec                                           ; $5572: $ec
	sub a                                            ; $5573: $97
	nop                                              ; $5574: $00
	db $f4                                           ; $5575: $f4
	ld h, b                                          ; $5576: $60
	ldh [$a0], a                                     ; $5577: $e0 $a0
	ldh [rLCDC], a                                   ; $5579: $e0 $40
	ldh [$67], a                                     ; $557b: $e0 $67
	ldh a, [hDisp0_LCDC]                                     ; $557d: $f0 $82
	jr c, jr_04d_55e5                                ; $557f: $38 $64

	inc a                                            ; $5581: $3c
	add sp, $38                                      ; $5582: $e8 $38
	pop de                                           ; $5584: $d1
	inc e                                            ; $5585: $1c
	ld d, e                                          ; $5586: $53
	ld a, $4f                                        ; $5587: $3e $4f
	cp a                                             ; $5589: $bf
	cpl                                              ; $558a: $2f
	ld d, a                                          ; $558b: $57

jr_04d_558c:
	db $10                                           ; $558c: $10
	rst $38                                          ; $558d: $ff
	db $10                                           ; $558e: $10
	rla                                              ; $558f: $17
	inc d                                            ; $5590: $14
	rla                                              ; $5591: $17
	inc bc                                           ; $5592: $03
	ccf                                              ; $5593: $3f
	sub h                                            ; $5594: $94
	or d                                             ; $5595: $b2
	nop                                              ; $5596: $00
	rst $38                                          ; $5597: $ff
	inc c                                            ; $5598: $0c
	rst $38                                          ; $5599: $ff
	db $fc                                           ; $559a: $fc
	rst $38                                          ; $559b: $ff
	ld a, b                                          ; $559c: $78
	ld [hl-], a                                      ; $559d: $32

Call_04d_559e:
	add b                                            ; $559e: $80
	pop bc                                           ; $559f: $c1
	cp b                                             ; $55a0: $b8
	add e                                            ; $55a1: $83
	ld h, d                                          ; $55a2: $62
	add e                                            ; $55a3: $83
	ld c, [hl]                                       ; $55a4: $4e
	jp $c33d                                         ; $55a5: $c3 $3d $c3


	nop                                              ; $55a8: $00
	pop af                                           ; $55a9: $f1
	add b                                            ; $55aa: $80
	rst SubAFromHL                                          ; $55ab: $d7
	add a                                            ; $55ac: $87
	db $ed                                           ; $55ad: $ed
	ld c, a                                          ; $55ae: $4f
	ld d, b                                          ; $55af: $50
	adc a                                            ; $55b0: $8f
	inc h                                            ; $55b1: $24
	db $db                                           ; $55b2: $db

jr_04d_55b3:
	inc b                                            ; $55b3: $04
	ei                                               ; $55b4: $fb
	inc b                                            ; $55b5: $04
	di                                               ; $55b6: $f3
	inc b                                            ; $55b7: $04
	di                                               ; $55b8: $f3
	add h                                            ; $55b9: $84
	ld a, d                                          ; $55ba: $7a
	nop                                              ; $55bb: $00
	cp $0e                                           ; $55bc: $fe $0e
	sbc l                                            ; $55be: $9d
	ldh a, [c]                                       ; $55bf: $f2
	rst GetHLinHL                                          ; $55c0: $cf
	ld a, d                                          ; $55c1: $7a
	call z, $fe7f                                    ; $55c2: $cc $7f $fe
	sbc l                                            ; $55c5: $9d
	xor h                                            ; $55c6: $ac
	ld d, e                                          ; $55c7: $53
	reti                                             ; $55c8: $d9


	add b                                            ; $55c9: $80
	sub a                                            ; $55ca: $97
	ldh [$aa], a                                     ; $55cb: $e0 $aa
	add b                                            ; $55cd: $80
	sub l                                            ; $55ce: $95
	add b                                            ; $55cf: $80
	jp z, $bcbe                                      ; $55d0: $ca $be $bc

	ld l, c                                          ; $55d3: $69
	nop                                              ; $55d4: $00
	ld a, [hl]                                       ; $55d5: $7e
	adc c                                            ; $55d6: $89
	ld [hl], e                                       ; $55d7: $73
	rst FarCall                                          ; $55d8: $f7
	sbc h                                            ; $55d9: $9c
	rrca                                             ; $55da: $0f
	ld e, a                                          ; $55db: $5f
	nop                                              ; $55dc: $00
	ld l, b                                          ; $55dd: $68
	ldh a, [hDisp1_OBP0]                                     ; $55de: $f0 $93
	jr nz, jr_04d_558c                               ; $55e0: $20 $aa

	jr nz, jr_04d_5659                               ; $55e2: $20 $75

	inc hl                                           ; $55e4: $23

jr_04d_55e5:
	xor e                                            ; $55e5: $ab
	cpl                                              ; $55e6: $2f
	inc l                                            ; $55e7: $2c
	rrca                                             ; $55e8: $0f
	nop                                              ; $55e9: $00
	ld d, a                                          ; $55ea: $57
	ld bc, $f077                                     ; $55eb: $01 $77 $f0
	sbc b                                            ; $55ee: $98
	add h                                            ; $55ef: $84
	ld h, e                                          ; $55f0: $63
	add h                                            ; $55f1: $84
	ld h, e                                          ; $55f2: $63
	inc h                                            ; $55f3: $24
	ld b, e                                          ; $55f4: $43
	ld a, a                                          ; $55f5: $7f
	ld a, d                                          ; $55f6: $7a
	cp b                                             ; $55f7: $b8
	rst SubAFromDE                                          ; $55f8: $df
	rst $38                                          ; $55f9: $ff
	ld [hl], c                                       ; $55fa: $71
	di                                               ; $55fb: $f3
	ld a, d                                          ; $55fc: $7a
	call z, $0780                                    ; $55fd: $cc $80 $07
	add b                                            ; $5600: $80

jr_04d_5601:
	db $fc                                           ; $5601: $fc
	db $10                                           ; $5602: $10
	ldh a, [rAUD1SWEEP]                              ; $5603: $f0 $10
	ldh a, [$a7]                                     ; $5605: $f0 $a7
	stop                                             ; $5607: $10 $00
	rst AddAOntoHL                                          ; $5609: $ef
	rra                                              ; $560a: $1f
	inc bc                                           ; $560b: $03
	call c, $9c03                                    ; $560c: $dc $03 $9c
	cp e                                             ; $560f: $bb
	nop                                              ; $5610: $00
	ei                                               ; $5611: $fb
	inc b                                            ; $5612: $04
	ldh a, [$61]                                     ; $5613: $f0 $61
	ldh [rLCDC], a                                   ; $5615: $e0 $40
	inc bc                                           ; $5617: $03
	nop                                              ; $5618: $00
	add d                                            ; $5619: $82
	nop                                              ; $561a: $00
	rst SubAFromHL                                          ; $561b: $d7
	jr z, jr_04d_5601                                ; $561c: $28 $e3

	sbc b                                            ; $561e: $98
	inc e                                            ; $561f: $1c
	db $e3                                           ; $5620: $e3
	ld bc, $63e7                                     ; $5621: $01 $e7 $63
	inc bc                                           ; $5624: $03
	add b                                            ; $5625: $80
	ld l, a                                          ; $5626: $6f
	sbc [hl]                                         ; $5627: $9e
	add b                                            ; $5628: $80
	rst $38                                          ; $5629: $ff
	cpl                                              ; $562a: $2f
	rst $38                                          ; $562b: $ff
	xor l                                            ; $562c: $ad
	rst AddAOntoHL                                          ; $562d: $ef
	sbc l                                            ; $562e: $9d
	rst FarCall                                          ; $562f: $f7
	add a                                            ; $5630: $87
	adc a                                            ; $5631: $8f
	db $10                                           ; $5632: $10
	xor [hl]                                         ; $5633: $ae
	nop                                              ; $5634: $00
	ld b, d                                          ; $5635: $42
	inc b                                            ; $5636: $04
	and c                                            ; $5637: $a1
	ld [bc], a                                       ; $5638: $02
	cp $d3                                           ; $5639: $fe $d3
	rst $38                                          ; $563b: $ff
	ldh a, [c]                                       ; $563c: $f2
	pop af                                           ; $563d: $f1
	cp $fb                                           ; $563e: $fe $fb
	sbc $3e                                          ; $5640: $de $3e
	call $000c                                       ; $5642: $cd $0c $00
	ld c, $00                                        ; $5645: $0e $00
	ld a, [$8094]                                    ; $5647: $fa $94 $80
	pop af                                           ; $564a: $f1
	ld c, a                                          ; $564b: $4f

jr_04d_564c:
	ei                                               ; $564c: $fb
	ld d, $ff                                        ; $564d: $16 $ff
	jr c, jr_04d_564c                                ; $564f: $38 $fb

	rst FarCall                                          ; $5651: $f7
	di                                               ; $5652: $f3
	inc c                                            ; $5653: $0c
	ld [hl], a                                       ; $5654: $77
	ld a, [hl]                                       ; $5655: $7e
	ld a, e                                          ; $5656: $7b
	sbc d                                            ; $5657: $9a
	sub b                                            ; $5658: $90

jr_04d_5659:
	ld d, [hl]                                       ; $5659: $56
	rst FarCall                                          ; $565a: $f7
	add hl, bc                                       ; $565b: $09
	rst $38                                          ; $565c: $ff
	ld de, $4fff                                     ; $565d: $11 $ff $4f
	adc $3d                                          ; $5660: $ce $3d
	ld a, [hl]                                       ; $5662: $7e
	ld a, [bc]                                       ; $5663: $0a

jr_04d_5664:
	ld e, l                                          ; $5664: $5d
	dec d                                            ; $5665: $15
	ret nc                                           ; $5666: $d0

	ld [$696f], sp                                   ; $5667: $08 $6f $69
	sbc l                                            ; $566a: $9d
	inc bc                                           ; $566b: $03
	xor e                                            ; $566c: $ab
	ld a, e                                          ; $566d: $7b
	ld hl, sp+$7f                                    ; $566e: $f8 $7f
	db $e4                                           ; $5670: $e4
	sbc h                                            ; $5671: $9c
	ld d, l                                          ; $5672: $55
	rst $38                                          ; $5673: $ff
	ld a, [hl+]                                      ; $5674: $2a
	ld a, e                                          ; $5675: $7b
	ld hl, sp-$72                                    ; $5676: $f8 $8e
	and d                                            ; $5678: $a2
	inc d                                            ; $5679: $14
	ld d, l                                          ; $567a: $55
	ld d, h                                          ; $567b: $54
	ld [hl], h                                       ; $567c: $74
	inc d                                            ; $567d: $14
	ld e, l                                          ; $567e: $5d
	ld a, h                                          ; $567f: $7c
	ld a, [hl+]                                      ; $5680: $2a
	rst $38                                          ; $5681: $ff
	ld b, h                                          ; $5682: $44

jr_04d_5683:
	rst $38                                          ; $5683: $ff
	and d                                            ; $5684: $a2
	xor d                                            ; $5685: $aa
	ld d, l                                          ; $5686: $55
	ld d, l                                          ; $5687: $55
	xor d                                            ; $5688: $aa
	daa                                              ; $5689: $27
	db $fc                                           ; $568a: $fc
	sub a                                            ; $568b: $97
	xor e                                            ; $568c: $ab
	ld d, h                                          ; $568d: $54
	ld d, l                                          ; $568e: $55
	xor d                                            ; $568f: $aa
	xor a                                            ; $5690: $af
	ld b, b                                          ; $5691: $40
	ld l, a                                          ; $5692: $6f
	sbc b                                            ; $5693: $98
	ld a, d                                          ; $5694: $7a
	adc b                                            ; $5695: $88
	sbc [hl]                                         ; $5696: $9e
	add b                                            ; $5697: $80
	halt                                             ; $5698: $76
	call nc, $e27c                                   ; $5699: $d4 $7c $e2
	ld a, a                                          ; $569c: $7f
	db $fc                                           ; $569d: $fc
	sbc [hl]                                         ; $569e: $9e
	push de                                          ; $569f: $d5
	ld l, a                                          ; $56a0: $6f
	rrca                                             ; $56a1: $0f
	inc sp                                           ; $56a2: $33
	db $fc                                           ; $56a3: $fc
	add b                                            ; $56a4: $80
	ld d, h                                          ; $56a5: $54
	inc bc                                           ; $56a6: $03
	xor e                                            ; $56a7: $ab
	rlca                                             ; $56a8: $07
	sbc a                                            ; $56a9: $9f
	ld h, a                                          ; $56aa: $67
	call c, $dc24                                    ; $56ab: $dc $24 $dc
	inc h                                            ; $56ae: $24
	ret nc                                           ; $56af: $d0

	jr z, jr_04d_5683                                ; $56b0: $28 $d1

	jr z, jr_04d_5664                                ; $56b2: $28 $b0

	ld c, b                                          ; $56b4: $48
	cp e                                             ; $56b5: $bb
	ld c, e                                          ; $56b6: $4b
	cp b                                             ; $56b7: $b8
	ld c, b                                          ; $56b8: $48
	ld hl, sp-$08                                    ; $56b9: $f8 $f8
	ld a, $3e                                        ; $56bb: $3e $3e
	ccf                                              ; $56bd: $3f
	ccf                                              ; $56be: $3f
	dec e                                            ; $56bf: $1d
	ld [bc], a                                       ; $56c0: $02
	rrca                                             ; $56c1: $0f
	add b                                            ; $56c2: $80
	nop                                              ; $56c3: $00
	sub e                                            ; $56c4: $93
	nop                                              ; $56c5: $00
	ld e, a                                          ; $56c6: $5f
	ld d, a                                          ; $56c7: $57
	rst SubAFromDE                                          ; $56c8: $df
	sub a                                            ; $56c9: $97
	ld a, [hl+]                                      ; $56ca: $2a
	add b                                            ; $56cb: $80
	dec d                                            ; $56cc: $15
	nop                                              ; $56cd: $00
	jp z, $1500                                      ; $56ce: $ca $00 $15

	ld a, e                                          ; $56d1: $7b
	ld [hl+], a                                      ; $56d2: $22
	ld [hl], a                                       ; $56d3: $77
	or [hl]                                          ; $56d4: $b6
	rla                                              ; $56d5: $17
	or d                                             ; $56d6: $b2
	ld l, a                                          ; $56d7: $6f
	db $fc                                           ; $56d8: $fc
	adc a                                            ; $56d9: $8f
	add a                                            ; $56da: $87
	inc bc                                           ; $56db: $03
	ld b, a                                          ; $56dc: $47
	nop                                              ; $56dd: $00
	add d                                            ; $56de: $82
	ld bc, $0043                                     ; $56df: $01 $43 $00
	add e                                            ; $56e2: $83
	inc h                                            ; $56e3: $24
	ld b, a                                          ; $56e4: $47
	nop                                              ; $56e5: $00
	cp a                                             ; $56e6: $bf
	scf                                              ; $56e7: $37
	ld a, a                                          ; $56e8: $7f
	ld d, $de                                        ; $56e9: $16 $de
	rst $38                                          ; $56eb: $ff
	sbc l                                            ; $56ec: $9d
	nop                                              ; $56ed: $00
	sub [hl]                                         ; $56ee: $96
	ld [hl], a                                       ; $56ef: $77
	jr jr_04d_5770                                   ; $56f0: $18 $7e

	add sp, -$62                                     ; $56f2: $e8 $9e
	ld b, a                                          ; $56f4: $47
	sbc $ff                                          ; $56f5: $de $ff
	adc [hl]                                         ; $56f7: $8e
	ld a, a                                          ; $56f8: $7f
	push hl                                          ; $56f9: $e5
	add b                                            ; $56fa: $80
	jp nc, $ed38                                     ; $56fb: $d2 $38 $ed

	ld b, b                                          ; $56fe: $40
	ld [hl+], a                                      ; $56ff: $22
	nop                                              ; $5700: $00
	db $fd                                           ; $5701: $fd
	ld [hl], b                                       ; $5702: $70
	ld a, [$fdf8]                                    ; $5703: $fa $f8 $fd
	ldh [$fe], a                                     ; $5706: $e0 $fe
	ret nz                                           ; $5708: $c0

	ld b, a                                          ; $5709: $47
	cp [hl]                                          ; $570a: $be
	sbc h                                            ; $570b: $9c
	ld a, a                                          ; $570c: $7f
	inc sp                                           ; $570d: $33
	xor [hl]                                         ; $570e: $ae
	ld d, e                                          ; $570f: $53
	ldh a, [$9e]                                     ; $5710: $f0 $9e
	xor $7b                                          ; $5712: $ee $7b
	db $fc                                           ; $5714: $fc
	sbc e                                            ; $5715: $9b
	ld c, e                                          ; $5716: $4b
	nop                                              ; $5717: $00
	cp [hl]                                          ; $5718: $be
	ld e, $67                                        ; $5719: $1e $67
	ldh a, [$7e]                                     ; $571b: $f0 $7e
	ld b, a                                          ; $571d: $47
	sbc [hl]                                         ; $571e: $9e
	xor a                                            ; $571f: $af
	ld e, e                                          ; $5720: $5b
	db $fc                                           ; $5721: $fc
	ld a, a                                          ; $5722: $7f
	xor b                                            ; $5723: $a8
	sub a                                            ; $5724: $97
	rst SubAFromHL                                          ; $5725: $d7
	ld [$4eef], sp                                   ; $5726: $08 $ef $4e
	ld a, [$f505]                                    ; $5729: $fa $05 $f5
	ld a, [bc]                                       ; $572c: $0a
	ld h, a                                          ; $572d: $67
	db $fc                                           ; $572e: $fc
	ld c, [hl]                                       ; $572f: $4e
	db $ec                                           ; $5730: $ec
	sub l                                            ; $5731: $95
	ld e, a                                          ; $5732: $5f
	xor a                                            ; $5733: $af
	cp d                                             ; $5734: $ba
	ld b, l                                          ; $5735: $45
	ld e, l                                          ; $5736: $5d
	and d                                            ; $5737: $a2
	cp d                                             ; $5738: $ba
	ld d, l                                          ; $5739: $55
	ld e, l                                          ; $573a: $5d
	cp d                                             ; $573b: $ba
	ld l, a                                          ; $573c: $6f
	ldh a, [$9e]                                     ; $573d: $f0 $9e
	push de                                          ; $573f: $d5
	ld a, [hl-]                                      ; $5740: $3a
	call z, Call_04d_579d                            ; $5741: $cc $9d $57
	xor b                                            ; $5744: $a8
	ld e, a                                          ; $5745: $5f
	db $fc                                           ; $5746: $fc
	ld a, a                                          ; $5747: $7f
	ldh a, [$7e]                                     ; $5748: $f0 $7e
	call z, $fa9e                                    ; $574a: $cc $9e $fa
	ld a, d                                          ; $574d: $7a
	ret z                                            ; $574e: $c8

	ld h, a                                          ; $574f: $67
	db $fc                                           ; $5750: $fc
	ld a, [hl]                                       ; $5751: $7e
	ret nz                                           ; $5752: $c0

	ld b, a                                          ; $5753: $47
	ld h, b                                          ; $5754: $60
	sbc h                                            ; $5755: $9c
	ld e, e                                          ; $5756: $5b
	rlca                                             ; $5757: $07
	xor c                                            ; $5758: $a9
	ld a, c                                          ; $5759: $79
	inc h                                            ; $575a: $24
	ld e, a                                          ; $575b: $5f
	ldh a, [hDisp1_LCDC]                                     ; $575c: $f0 $8f
	xor e                                            ; $575e: $ab
	ld e, e                                          ; $575f: $5b
	dec hl                                           ; $5760: $2b
	db $db                                           ; $5761: $db
	xor a                                            ; $5762: $af
	db $db                                           ; $5763: $db
	and [hl]                                         ; $5764: $a6
	ld e, c                                          ; $5765: $59
	inc hl                                           ; $5766: $23
	ld d, b                                          ; $5767: $50
	ld a, [hl-]                                      ; $5768: $3a
	db $dd                                           ; $5769: $dd
	rst FarCall                                          ; $576a: $f7
	ld hl, sp-$01                                    ; $576b: $f8 $ff
	nop                                              ; $576d: $00
	sbc $df                                          ; $576e: $de $df

jr_04d_5770:
	sbc h                                            ; $5770: $9c
	sbc $f5                                          ; $5771: $de $f5
	ld [$ae67], a                                    ; $5773: $ea $67 $ae
	sbc e                                            ; $5776: $9b
	xor a                                            ; $5777: $af
	ld d, b                                          ; $5778: $50
	ld [$0280], a                                    ; $5779: $ea $80 $02
	ret z                                            ; $577c: $c8

	ld [hl], e                                       ; $577d: $73
	db $fc                                           ; $577e: $fc
	halt                                             ; $577f: $76
	rrca                                             ; $5780: $0f
	ld a, a                                          ; $5781: $7f
	ld hl, sp-$6a                                    ; $5782: $f8 $96
	ld d, b                                          ; $5784: $50
	nop                                              ; $5785: $00
	and [hl]                                         ; $5786: $a6
	ld bc, $027d                                     ; $5787: $01 $7d $02
	ld a, [$fd05]                                    ; $578a: $fa $05 $fd
	ld a, e                                          ; $578d: $7b
	db $fc                                           ; $578e: $fc
	ld a, e                                          ; $578f: $7b
	inc [hl]                                         ; $5790: $34
	cp $79                                           ; $5791: $fe $79
	db $fc                                           ; $5793: $fc
	sbc [hl]                                         ; $5794: $9e
	xor d                                            ; $5795: $aa
	ld l, a                                          ; $5796: $6f
	db $fc                                           ; $5797: $fc
	ld a, h                                          ; $5798: $7c
	reti                                             ; $5799: $d9


	sbc e                                            ; $579a: $9b
	nop                                              ; $579b: $00

Call_04d_579c:
	inc bc                                           ; $579c: $03

Call_04d_579d:
	nop                                              ; $579d: $00
	ld sp, hl                                        ; $579e: $f9
	ld a, e                                          ; $579f: $7b
	ld l, h                                          ; $57a0: $6c
	ld a, [hl]                                       ; $57a1: $7e
	inc h                                            ; $57a2: $24
	sbc [hl]                                         ; $57a3: $9e
	ld b, b                                          ; $57a4: $40
	ld [hl], a                                       ; $57a5: $77
	db $fc                                           ; $57a6: $fc
	ld a, d                                          ; $57a7: $7a
	ld e, a                                          ; $57a8: $5f
	sbc l                                            ; $57a9: $9d
	ccf                                              ; $57aa: $3f
	ld b, b                                          ; $57ab: $40
	ld h, e                                          ; $57ac: $63
	cp [hl]                                          ; $57ad: $be
	ld a, a                                          ; $57ae: $7f
	or $99                                           ; $57af: $f6 $99
	nop                                              ; $57b1: $00
	rra                                              ; $57b2: $1f
	nop                                              ; $57b3: $00
	add b                                            ; $57b4: $80
	nop                                              ; $57b5: $00
	rra                                              ; $57b6: $1f
	ld l, a                                          ; $57b7: $6f
	ldh a, [$7b]                                     ; $57b8: $f0 $7b
	db $e4                                           ; $57ba: $e4
	sbc c                                            ; $57bb: $99
	ld a, $00                                        ; $57bc: $3e $00
	ret nz                                           ; $57be: $c0

	nop                                              ; $57bf: $00
	cpl                                              ; $57c0: $2f
	nop                                              ; $57c1: $00
	ld l, d                                          ; $57c2: $6a
	and b                                            ; $57c3: $a0
	ld a, a                                          ; $57c4: $7f
	ldh a, [c]                                       ; $57c5: $f2
	ld a, a                                          ; $57c6: $7f
	di                                               ; $57c7: $f3
	ld a, e                                          ; $57c8: $7b
	ldh a, [c]                                       ; $57c9: $f2
	ld a, a                                          ; $57ca: $7f
	jp hl                                            ; $57cb: $e9


	sbc [hl]                                         ; $57cc: $9e
	dec d                                            ; $57cd: $15
	ld a, c                                          ; $57ce: $79
	rlca                                             ; $57cf: $07
	ld a, l                                          ; $57d0: $7d
	inc c                                            ; $57d1: $0c
	sbc [hl]                                         ; $57d2: $9e
	call c, $8774                                    ; $57d3: $dc $74 $87
	ld l, a                                          ; $57d6: $6f
	db $fc                                           ; $57d7: $fc
	sbc e                                            ; $57d8: $9b
	rst $38                                          ; $57d9: $ff
	dec d                                            ; $57da: $15
	rra                                              ; $57db: $1f
	ld a, [bc]                                       ; $57dc: $0a
	cp $80                                           ; $57dd: $fe $80
	ldh [$03], a                                     ; $57df: $e0 $03
	inc e                                            ; $57e1: $1c
	nop                                              ; $57e2: $00
	ret nz                                           ; $57e3: $c0

	ld b, [hl]                                       ; $57e4: $46
	jr c, jr_04d_57e8                                ; $57e5: $38 $01

	ret nz                                           ; $57e7: $c0

jr_04d_57e8:
	cp a                                             ; $57e8: $bf
	ld d, c                                          ; $57e9: $51
	ld e, a                                          ; $57ea: $5f
	cp [hl]                                          ; $57eb: $be
	dec sp                                           ; $57ec: $3b
	ld de, $1a0f                                     ; $57ed: $11 $0f $1a
	rst SubAFromDE                                          ; $57f0: $df
	ldh a, [$29]                                     ; $57f1: $f0 $29
	jr nc, @+$1d                                     ; $57f3: $30 $1b

	inc c                                            ; $57f5: $0c
	db $ec                                           ; $57f6: $ec
	ld a, $ea                                        ; $57f7: $3e $ea
	push de                                          ; $57f9: $d5
	push af                                          ; $57fa: $f5
	ld [$f5ea], a                                    ; $57fb: $ea $ea $f5
	sbc l                                            ; $57fe: $9d
	or $69                                           ; $57ff: $f6 $69
	sbc $e0                                          ; $5801: $de $e0
	sbc d                                            ; $5803: $9a
	ret nz                                           ; $5804: $c0

	cp $e0                                           ; $5805: $fe $e0
	pop af                                           ; $5807: $f1
	ldh [$4e], a                                     ; $5808: $e0 $4e
	ret nz                                           ; $580a: $c0

	sbc l                                            ; $580b: $9d
	dec [hl]                                         ; $580c: $35
	ld a, [bc]                                       ; $580d: $0a
	halt                                             ; $580e: $76
	call z, $b872                                    ; $580f: $cc $72 $b8
	sbc b                                            ; $5812: $98
	ld d, l                                          ; $5813: $55

jr_04d_5814:
	ld d, [hl]                                       ; $5814: $56
	xor e                                            ; $5815: $ab
	xor e                                            ; $5816: $ab
	ld d, a                                          ; $5817: $57
	ld d, a                                          ; $5818: $57
	xor e                                            ; $5819: $ab
	halt                                             ; $581a: $76
	call z, $a77f                                    ; $581b: $cc $7f $a7
	ld a, c                                          ; $581e: $79
	ld a, [hl]                                       ; $581f: $7e
	sbc b                                            ; $5820: $98
	ld h, b                                          ; $5821: $60
	cp a                                             ; $5822: $bf
	jr c, jr_04d_5814                                ; $5823: $38 $ef

	db $ec                                           ; $5825: $ec
	cp $fc                                           ; $5826: $fe $fc
	ld h, a                                          ; $5828: $67
	ld h, b                                          ; $5829: $60
	ld a, [hl]                                       ; $582a: $7e
	cp $7e                                           ; $582b: $fe $7e
	or b                                             ; $582d: $b0
	ld [hl], l                                       ; $582e: $75
	db $10                                           ; $582f: $10
	ld d, a                                          ; $5830: $57
	ld a, [bc]                                       ; $5831: $0a
	sbc d                                            ; $5832: $9a
	add b                                            ; $5833: $80
	ld a, a                                          ; $5834: $7f
	nop                                              ; $5835: $00
	ret nz                                           ; $5836: $c0

	ld d, a                                          ; $5837: $57
	ld l, d                                          ; $5838: $6a
	inc [hl]                                         ; $5839: $34
	ld a, a                                          ; $583a: $7f
	ldh a, [$99]                                     ; $583b: $f0 $99
	ret nz                                           ; $583d: $c0

	ccf                                              ; $583e: $3f
	ldh [rP1], a                                     ; $583f: $e0 $00
	nop                                              ; $5841: $00
	inc bc                                           ; $5842: $03
	ld [hl], a                                       ; $5843: $77
	call nz, $fe7f                                   ; $5844: $c4 $7f $fe
	sub l                                            ; $5847: $95

jr_04d_5848:
	ei                                               ; $5848: $fb
	ld bc, $3f43                                     ; $5849: $01 $43 $3f
	ld bc, $0301                                     ; $584c: $01 $01 $03
	ld bc, $37cb                                     ; $584f: $01 $cb $37
	ld l, [hl]                                       ; $5852: $6e
	call nz, $ff80                                   ; $5853: $c4 $80 $ff

jr_04d_5856:
	ldh a, [$3c]                                     ; $5856: $f0 $3c
	inc c                                            ; $5858: $0c
	cp $f7                                           ; $5859: $fe $f7
	cp $9e                                           ; $585b: $fe $9e
	sbc $46                                          ; $585d: $de $46
	ld a, [hl+]                                      ; $585f: $2a
	nop                                              ; $5860: $00
	add e                                            ; $5861: $83
	nop                                              ; $5862: $00

jr_04d_5863:
	pop hl                                           ; $5863: $e1
	ld e, $00                                        ; $5864: $1e $00
	ret nz                                           ; $5866: $c0

	inc c                                            ; $5867: $0c
	inc bc                                           ; $5868: $03
	nop                                              ; $5869: $00
	db $fc                                           ; $586a: $fc
	ld bc, $0000                                     ; $586b: $01 $00 $00
	ld a, a                                          ; $586e: $7f
	add e                                            ; $586f: $83
	nop                                              ; $5870: $00
	ldh [$1f], a                                     ; $5871: $e0 $1f
	ret nz                                           ; $5873: $c0

	sub e                                            ; $5874: $93
	nop                                              ; $5875: $00
	inc e                                            ; $5876: $1c
	inc bc                                           ; $5877: $03
	jr @-$1e                                         ; $5878: $18 $e0

	rlca                                             ; $587a: $07
	nop                                              ; $587b: $00

Jump_04d_587c:
	add b                                            ; $587c: $80
	ld a, [hl]                                       ; $587d: $7e
	ld bc, wInitialA                                     ; $587e: $01 $00 $c1
	ld a, e                                          ; $5881: $7b
	ld d, $89                                        ; $5882: $16 $89
	ld e, $01                                        ; $5884: $1e $01
	jr c, jr_04d_5848                                ; $5886: $38 $c0

	inc bc                                           ; $5888: $03
	nop                                              ; $5889: $00
	add [hl]                                         ; $588a: $86
	ld a, b                                          ; $588b: $78
	inc bc                                           ; $588c: $03
	nop                                              ; $588d: $00
	cp $39                                           ; $588e: $fe $39
	ret nz                                           ; $5890: $c0

	nop                                              ; $5891: $00
	inc a                                            ; $5892: $3c
	inc bc                                           ; $5893: $03
	jr c, jr_04d_5856                                ; $5894: $38 $c0

	nop                                              ; $5896: $00
	inc bc                                           ; $5897: $03
	ldh [rAUD3LEVEL], a                              ; $5898: $e0 $1c
	ld a, e                                          ; $589a: $7b
	ldh a, [c]                                       ; $589b: $f2
	ld a, a                                          ; $589c: $7f
	pop hl                                           ; $589d: $e1
	ld a, b                                          ; $589e: $78
	inc l                                            ; $589f: $2c
	sbc b                                            ; $58a0: $98
	jr nc, jr_04d_5863                               ; $58a1: $30 $c0

	rlca                                             ; $58a3: $07
	nop                                              ; $58a4: $00
	db $fc                                           ; $58a5: $fc
	nop                                              ; $58a6: $00
	rlca                                             ; $58a7: $07
	ld a, e                                          ; $58a8: $7b
	ldh a, [c]                                       ; $58a9: $f2
	sbc d                                            ; $58aa: $9a
	ld [bc], a                                       ; $58ab: $02
	db $fd                                           ; $58ac: $fd
	nop                                              ; $58ad: $00
	rst $38                                          ; $58ae: $ff
	ret nz                                           ; $58af: $c0

	ld a, e                                          ; $58b0: $7b
	or $77                                           ; $58b1: $f6 $77
	ldh a, [c]                                       ; $58b3: $f2
	ld a, a                                          ; $58b4: $7f
	jr jr_04d_5936                                   ; $58b5: $18 $7f

	inc a                                            ; $58b7: $3c
	ld a, e                                          ; $58b8: $7b
	ld [hl], b                                       ; $58b9: $70
	sbc e                                            ; $58ba: $9b
	rst $38                                          ; $58bb: $ff
	rra                                              ; $58bc: $1f
	nop                                              ; $58bd: $00
	ldh [$7b], a                                     ; $58be: $e0 $7b
	ldh a, [c]                                       ; $58c0: $f2
	sbc e                                            ; $58c1: $9b
	db $fd                                           ; $58c2: $fd
	ld [hl], d                                       ; $58c3: $72
	xor d                                            ; $58c4: $aa
	ld d, l                                          ; $58c5: $55
	ld [hl], e                                       ; $58c6: $73
	ld [hl], a                                       ; $58c7: $77
	sub a                                            ; $58c8: $97
	rst $38                                          ; $58c9: $ff
	ldh [rP1], a                                     ; $58ca: $e0 $00
	rrca                                             ; $58cc: $0f
	ld bc, $23fc                                     ; $58cd: $01 $fc $23
	ld d, l                                          ; $58d0: $55
	ld a, e                                          ; $58d1: $7b
	ld a, l                                          ; $58d2: $7d
	ld l, e                                          ; $58d3: $6b
	cp $7f                                           ; $58d4: $fe $7f
	ret z                                            ; $58d6: $c8

	sbc [hl]                                         ; $58d7: $9e
	rst JumpTable                                          ; $58d8: $c7
	ld h, e                                          ; $58d9: $63
	db $f4                                           ; $58da: $f4
	ld a, e                                          ; $58db: $7b
	cp $9d                                           ; $58dc: $fe $9d
	ld b, $79                                        ; $58de: $06 $79
	ld a, e                                          ; $58e0: $7b
	and d                                            ; $58e1: $a2
	ld e, e                                          ; $58e2: $5b
	ldh a, [hDisp0_LCDC]                                     ; $58e3: $f0 $82
	rrca                                             ; $58e5: $0f
	adc h                                            ; $58e6: $8c
	rra                                              ; $58e7: $1f
	add hl, bc                                       ; $58e8: $09
	dec sp                                           ; $58e9: $3b
	ld [$d039], sp                                   ; $58ea: $08 $39 $d0
	dec sp                                           ; $58ed: $3b
	ld sp, hl                                        ; $58ee: $f9
	ccf                                              ; $58ef: $3f
	rst $38                                          ; $58f0: $ff
	rra                                              ; $58f1: $1f
	rst $38                                          ; $58f2: $ff
	rra                                              ; $58f3: $1f
	ldh a, [$f0]                                     ; $58f4: $f0 $f0
	ldh [$f0], a                                     ; $58f6: $e0 $f0
	rst GetHLinHL                                          ; $58f8: $cf
	sub h                                            ; $58f9: $94
	add b                                            ; $58fa: $80
	adc b                                            ; $58fb: $88
	add a                                            ; $58fc: $87
	call z, $e880                                    ; $58fd: $cc $80 $e8
	rst JumpTable                                          ; $5900: $c7
	xor b                                            ; $5901: $a8
	ld a, e                                          ; $5902: $7b
	cp $98                                           ; $5903: $fe $98
	adc [hl]                                         ; $5905: $8e
	nop                                              ; $5906: $00
	ld h, b                                          ; $5907: $60
	nop                                              ; $5908: $00
	ccf                                              ; $5909: $3f
	nop                                              ; $590a: $00
	rrca                                             ; $590b: $0f
	ld a, d                                          ; $590c: $7a
	ld [hl], l                                       ; $590d: $75
	halt                                             ; $590e: $76
	add c                                            ; $590f: $81
	ld a, a                                          ; $5910: $7f
	ld l, a                                          ; $5911: $6f
	rst SubAFromDE                                          ; $5912: $df
	inc bc                                           ; $5913: $03
	add b                                            ; $5914: $80
	rrca                                             ; $5915: $0f
	ld b, $fc                                        ; $5916: $06 $fc
	ld e, $39                                        ; $5918: $1e $39
	nop                                              ; $591a: $00
	ld h, c                                          ; $591b: $61
	inc bc                                           ; $591c: $03
	adc d                                            ; $591d: $8a
	ld b, c                                          ; $591e: $41
	call $3500                                       ; $591f: $cd $00 $35
	adc b                                            ; $5922: $88
	rst $38                                          ; $5923: $ff
	dec a                                            ; $5924: $3d
	sbc h                                            ; $5925: $9c
	jr c, @+$22                                      ; $5926: $38 $20

	nop                                              ; $5928: $00
	rst $38                                          ; $5929: $ff
	ld e, $40                                        ; $592a: $1e $40
	add b                                            ; $592c: $80
	add e                                            ; $592d: $83
	nop                                              ; $592e: $00
	ld a, h                                          ; $592f: $7c
	add b                                            ; $5930: $80
	ld bc, $1880                                     ; $5931: $01 $80 $18
	ld a, [hl]                                       ; $5934: $7e
	ld h, [hl]                                       ; $5935: $66

jr_04d_5936:
	sbc h                                            ; $5936: $9c
	nop                                              ; $5937: $00
	ld h, e                                          ; $5938: $63
	inc e                                            ; $5939: $1c
	ld [hl], a                                       ; $593a: $77
	ld l, h                                          ; $593b: $6c
	sbc [hl]                                         ; $593c: $9e
	ld hl, sp+$7a                                    ; $593d: $f8 $7a
	ld bc, $227f                                     ; $593f: $01 $7f $22
	ld a, a                                          ; $5942: $7f
	ld c, e                                          ; $5943: $4b
	ld a, [hl]                                       ; $5944: $7e
	ret c                                            ; $5945: $d8

	ld a, d                                          ; $5946: $7a
	ld h, $7f                                        ; $5947: $26 $7f
	pop af                                           ; $5949: $f1
	sbc e                                            ; $594a: $9b
	ldh [rIF], a                                     ; $594b: $e0 $0f
	nop                                              ; $594d: $00
	ld hl, sp+$7b                                    ; $594e: $f8 $7b
	ld d, b                                          ; $5950: $50
	sub d                                            ; $5951: $92
	ld e, $e0                                        ; $5952: $1e $e0
	add b                                            ; $5954: $80
	nop                                              ; $5955: $00
	ccf                                              ; $5956: $3f
	inc bc                                           ; $5957: $03
	rst $38                                          ; $5958: $ff
	rlca                                             ; $5959: $07
	ld c, $0f                                        ; $595a: $0e $0f
	db $fc                                           ; $595c: $fc
	rst $38                                          ; $595d: $ff
	ld [$8077], sp                                   ; $595e: $08 $77 $80
	add b                                            ; $5961: $80
	dec c                                            ; $5962: $0d
	ldh a, [$60]                                     ; $5963: $f0 $60
	adc $88                                          ; $5965: $ce $88
	add a                                            ; $5967: $87
	rlca                                             ; $5968: $07
	ld a, b                                          ; $5969: $78
	nop                                              ; $596a: $00
	rra                                              ; $596b: $1f
	cp $0c                                           ; $596c: $fe $0c
	ld hl, sp+$08                                    ; $596e: $f8 $08
	ld hl, sp+$2e                                    ; $5970: $f8 $2e
	rrca                                             ; $5972: $0f
	add [hl]                                         ; $5973: $86
	ld b, $36                                        ; $5974: $06 $36
	ld l, a                                          ; $5976: $6f
	ld d, [hl]                                       ; $5977: $56
	cpl                                              ; $5978: $2f
	ld d, [hl]                                       ; $5979: $56
	rst SubAFromBC                                          ; $597a: $e7
	xor [hl]                                         ; $597b: $ae
	ld l, l                                          ; $597c: $6d
	inc c                                            ; $597d: $0c
	daa                                              ; $597e: $27
	ld d, $25                                        ; $597f: $16 $25
	rst $38                                          ; $5981: $ff
	sbc l                                            ; $5982: $9d
	ldh a, [rIF]                                     ; $5983: $f0 $0f
	ld d, a                                          ; $5985: $57
	ld d, b                                          ; $5986: $50
	sbc l                                            ; $5987: $9d
	ldh [$3f], a                                     ; $5988: $e0 $3f
	ld d, a                                          ; $598a: $57
	ldh a, [c]                                       ; $598b: $f2
	rrca                                             ; $598c: $0f
	cp $9d                                           ; $598d: $fe $9d
	dec b                                            ; $598f: $05
	ld a, [$ea66]                                    ; $5990: $fa $66 $ea
	ld a, a                                          ; $5993: $7f
	cp $9c                                           ; $5994: $fe $9c
	ld bc, $2afe                                     ; $5996: $01 $fe $2a
	ld a, d                                          ; $5999: $7a
	adc $6f                                          ; $599a: $ce $6f
	ldh a, [$67]                                     ; $599c: $f0 $67
	db $f4                                           ; $599e: $f4
	ld h, a                                          ; $599f: $67
	ldh a, [rHDMA5]                                  ; $59a0: $f0 $55
	sbc $77                                          ; $59a2: $de $77
	ldh a, [$9d]                                     ; $59a4: $f0 $9d
	ld d, h                                          ; $59a6: $54
	xor e                                            ; $59a7: $ab
	ld c, l                                          ; $59a8: $4d
	jp z, $159d                                      ; $59a9: $ca $9d $15

	ld [$f45f], a                                    ; $59ac: $ea $5f $f4
	sbc e                                            ; $59af: $9b
	ld d, b                                          ; $59b0: $50
	xor a                                            ; $59b1: $af
	xor b                                            ; $59b2: $a8
	ld d, a                                          ; $59b3: $57
	ld e, a                                          ; $59b4: $5f
	db $e4                                           ; $59b5: $e4
	ld a, [hl]                                       ; $59b6: $7e
	ld l, h                                          ; $59b7: $6c
	add l                                            ; $59b8: $85
	add hl, sp                                       ; $59b9: $39
	ldh a, [$31]                                     ; $59ba: $f0 $31
	ret nc                                           ; $59bc: $d0

	jr nc, @-$6e                                     ; $59bd: $30 $90

	ld sp, $3b50                                     ; $59bf: $31 $50 $3b
	sub c                                            ; $59c2: $91
	ccf                                              ; $59c3: $3f
	ld a, a                                          ; $59c4: $7f
	ccf                                              ; $59c5: $3f
	rst SubAFromDE                                          ; $59c6: $df
	ccf                                              ; $59c7: $3f
	ld c, a                                          ; $59c8: $4f
	xor b                                            ; $59c9: $a8
	rst JumpTable                                          ; $59ca: $c7
	add sp, $47                                      ; $59cb: $e8 $47
	ld hl, sp+$47                                    ; $59cd: $f8 $47
	add sp, $47                                      ; $59cf: $e8 $47
	add sp, -$79                                     ; $59d1: $e8 $87
	ld a, e                                          ; $59d3: $7b
	cp $80                                           ; $59d4: $fe $80
	rlca                                             ; $59d6: $07
	ldh [rIF], a                                     ; $59d7: $e0 $0f
	dec [hl]                                         ; $59d9: $35
	ld a, [$0001]                                    ; $59da: $fa $01 $00
	ld a, a                                          ; $59dd: $7f
	ld b, $f9                                        ; $59de: $06 $f9
	cp $01                                           ; $59e0: $fe $01
	cp $03                                           ; $59e2: $fe $03
	cp $07                                           ; $59e4: $fe $07
	cp $0d                                           ; $59e6: $fe $0d
	rst $38                                          ; $59e8: $ff
	ld c, c                                          ; $59e9: $49
	sub b                                            ; $59ea: $90
	or d                                             ; $59eb: $b2
	add hl, bc                                       ; $59ec: $09

jr_04d_59ed:
	jp z, $aa11                                      ; $59ed: $ca $11 $aa

	ld de, $31ca                                     ; $59f0: $11 $ca $31
	ld e, d                                          ; $59f3: $5a
	ld sp, $bd98                                     ; $59f4: $31 $98 $bd
	ld a, b                                          ; $59f7: $78
	or $fc                                           ; $59f8: $f6 $fc
	rst $38                                          ; $59fa: $ff
	rst $38                                          ; $59fb: $ff
	add b                                            ; $59fc: $80
	ld a, e                                          ; $59fd: $7b
	adc [hl]                                         ; $59fe: $8e
	ld a, a                                          ; $59ff: $7f
	db $fc                                           ; $5a00: $fc
	sub a                                            ; $5a01: $97
	call z, $fc7f                                    ; $5a02: $cc $7f $fc
	dec bc                                           ; $5a05: $0b
	ret z                                            ; $5a06: $c8

	add c                                            ; $5a07: $81
	sbc $71                                          ; $5a08: $de $71
	ld h, a                                          ; $5a0a: $67
	ld d, b                                          ; $5a0b: $50
	sub a                                            ; $5a0c: $97
	ld [de], a                                       ; $5a0d: $12
	db $e4                                           ; $5a0e: $e4
	ld [hl+], a                                      ; $5a0f: $22
	ret                                              ; $5a10: $c9


	ld c, d                                          ; $5a11: $4a
	sub c                                            ; $5a12: $91
	xor h                                            ; $5a13: $ac
	inc de                                           ; $5a14: $13
	ld e, a                                          ; $5a15: $5f
	ld [hl-], a                                      ; $5a16: $32
	sbc e                                            ; $5a17: $9b
	inc c                                            ; $5a18: $0c
	di                                               ; $5a19: $f3
	ccf                                              ; $5a1a: $3f
	ret nz                                           ; $5a1b: $c0

	ld a, d                                          ; $5a1c: $7a
	ld a, h                                          ; $5a1d: $7c
	ld [hl], e                                       ; $5a1e: $73
	db $f4                                           ; $5a1f: $f4
	sbc l                                            ; $5a20: $9d
	ld h, b                                          ; $5a21: $60
	sbc a                                            ; $5a22: $9f
	ld [hl], a                                       ; $5a23: $77
	ld a, [$007e]                                    ; $5a24: $fa $7e $00
	add b                                            ; $5a27: $80
	ld hl, $081f                                     ; $5a28: $21 $1f $08
	ldh a, [$08]                                     ; $5a2b: $f0 $08
	ldh a, [rP1]                                     ; $5a2d: $f0 $00
	ldh a, [rAUD1LEN]                                ; $5a2f: $f0 $11
	ldh [rAUD4GO], a                                 ; $5a31: $e0 $23
	ret nz                                           ; $5a33: $c0

	ld b, e                                          ; $5a34: $43
	ret nz                                           ; $5a35: $c0

	ldh [$c0], a                                     ; $5a36: $e0 $c0
	pop af                                           ; $5a38: $f1
	and b                                            ; $5a39: $a0
	ld c, h                                          ; $5a3a: $4c
	rlca                                             ; $5a3b: $07
	adc h                                            ; $5a3c: $8c
	dec bc                                           ; $5a3d: $0b
	inc a                                            ; $5a3e: $3c
	inc de                                           ; $5a3f: $13
	db $f4                                           ; $5a40: $f4
	inc hl                                           ; $5a41: $23
	db $fc                                           ; $5a42: $fc
	db $d3                                           ; $5a43: $d3
	sub h                                            ; $5a44: $94
	ld [hl], e                                       ; $5a45: $73
	sub h                                            ; $5a46: $94
	sbc h                                            ; $5a47: $9c
	ld h, d                                          ; $5a48: $62
	sub h                                            ; $5a49: $94
	ld h, c                                          ; $5a4a: $61
	ld l, a                                          ; $5a4b: $6f
	ret nc                                           ; $5a4c: $d0

	ld d, a                                          ; $5a4d: $57
	jr nz, jr_04d_59ed                               ; $5a4e: $20 $9d

	ld a, [bc]                                       ; $5a50: $0a
	push af                                          ; $5a51: $f5
	daa                                              ; $5a52: $27
	inc h                                            ; $5a53: $24
	rra                                              ; $5a54: $1f
	db $fc                                           ; $5a55: $fc
	ld a, a                                          ; $5a56: $7f
	cp l                                             ; $5a57: $bd
	sbc c                                            ; $5a58: $99
	ld e, a                                          ; $5a59: $5f
	and b                                            ; $5a5a: $a0
	xor e                                            ; $5a5b: $ab
	ld d, h                                          ; $5a5c: $54
	ld d, a                                          ; $5a5d: $57
	xor b                                            ; $5a5e: $a8
	ld l, h                                          ; $5a5f: $6c
	jp nz, Jump_04d_7f9e                             ; $5a60: $c2 $9e $7f

	ld [hl], a                                       ; $5a63: $77
	ld c, l                                          ; $5a64: $4d
	ld l, e                                          ; $5a65: $6b
	cp $77                                           ; $5a66: $fe $77
	ldh a, [rPCM34]                                  ; $5a68: $f0 $77
	ld hl, sp+$75                                    ; $5a6a: $f8 $75
	ld a, [bc]                                       ; $5a6c: $0a
	ld a, l                                          ; $5a6d: $7d
	ld h, c                                          ; $5a6e: $61
	sbc [hl]                                         ; $5a6f: $9e
	db $eb                                           ; $5a70: $eb
	ld [hl], e                                       ; $5a71: $73
	ldh a, [$9d]                                     ; $5a72: $f0 $9d
	push de                                          ; $5a74: $d5
	ld a, [hl+]                                      ; $5a75: $2a
	ld [hl], a                                       ; $5a76: $77
	xor $74                                          ; $5a77: $ee $74
	call c, $c878                                    ; $5a79: $dc $78 $c8
	ld l, e                                          ; $5a7c: $6b
	ret nz                                           ; $5a7d: $c0

	ld [hl], a                                       ; $5a7e: $77
	cp $7c                                           ; $5a7f: $fe $7c
	or d                                             ; $5a81: $b2
	ld a, h                                          ; $5a82: $7c
	jp nz, $bc7f                                     ; $5a83: $c2 $7f $bc

	sub [hl]                                         ; $5a86: $96
	and a                                            ; $5a87: $a7
	ld e, b                                          ; $5a88: $58
	rst $38                                          ; $5a89: $ff
	nop                                              ; $5a8a: $00
	ld h, $01                                        ; $5a8b: $26 $01
	db $fd                                           ; $5a8d: $fd
	ld [bc], a                                       ; $5a8e: $02
	cp [hl]                                          ; $5a8f: $be
	ld [hl], e                                       ; $5a90: $73
	db $ec                                           ; $5a91: $ec
	add l                                            ; $5a92: $85
	ccf                                              ; $5a93: $3f
	adc $3e                                          ; $5a94: $ce $3e
	ld b, h                                          ; $5a96: $44
	ld a, $84                                        ; $5a97: $3e $84
	inc e                                            ; $5a99: $1c
	ld b, h                                          ; $5a9a: $44
	inc c                                            ; $5a9b: $0c
	add h                                            ; $5a9c: $84
	nop                                              ; $5a9d: $00
	stop                                             ; $5a9e: $10 $00
	xor b                                            ; $5aa0: $a8
	nop                                              ; $5aa1: $00
	ld d, h                                          ; $5aa2: $54
	ld d, b                                          ; $5aa3: $50
	ld a, [bc]                                       ; $5aa4: $0a
	ld d, b                                          ; $5aa5: $50
	dec b                                            ; $5aa6: $05
	ld d, b                                          ; $5aa7: $50

jr_04d_5aa8:
	ld a, [bc]                                       ; $5aa8: $0a
	ld [hl], b                                       ; $5aa9: $70
	dec b                                            ; $5aaa: $05
	ld h, b                                          ; $5aab: $60
	ld a, [de]                                       ; $5aac: $1a
	ld a, c                                          ; $5aad: $79
	adc e                                            ; $5aae: $8b
	add c                                            ; $5aaf: $81
	xor e                                            ; $5ab0: $ab
	nop                                              ; $5ab1: $00
	ld d, a                                          ; $5ab2: $57
	dec bc                                           ; $5ab3: $0b
	rst FarCall                                          ; $5ab4: $f7
	db $10                                           ; $5ab5: $10
	db $e3                                           ; $5ab6: $e3
	db $10                                           ; $5ab7: $10
	ld sp, hl                                        ; $5ab8: $f9
	inc de                                           ; $5ab9: $13
	cp $3a                                           ; $5aba: $fe $3a
	rst $38                                          ; $5abc: $ff
	cpl                                              ; $5abd: $2f
	cp $2e                                           ; $5abe: $fe $2e
	rst $38                                          ; $5ac0: $ff
	inc a                                            ; $5ac1: $3c
	sbc $ba                                          ; $5ac2: $de $ba
	or $55                                           ; $5ac4: $f6 $55
	ei                                               ; $5ac6: $fb
	ld a, [hl-]                                      ; $5ac7: $3a
	ld [hl], l                                       ; $5ac8: $75
	ld d, l                                          ; $5ac9: $55
	ld a, [$f53a]                                    ; $5aca: $fa $3a $f5
	ld d, h                                          ; $5acd: $54
	ld a, e                                          ; $5ace: $7b
	db $fc                                           ; $5acf: $fc
	sub e                                            ; $5ad0: $93

jr_04d_5ad1:
	dec d                                            ; $5ad1: $15
	ld a, [$3f6c]                                    ; $5ad2: $fa $6c $3f
	jr nc, jr_04d_5af6                               ; $5ad5: $30 $1f

	sbc $83                                          ; $5ad7: $de $83
	ld h, a                                          ; $5ad9: $67
	pop bc                                           ; $5ada: $c1
	ld e, $f9                                        ; $5adb: $1e $f9
	ld a, b                                          ; $5add: $78
	scf                                              ; $5ade: $37
	add b                                            ; $5adf: $80
	ld d, h                                          ; $5ae0: $54
	nop                                              ; $5ae1: $00
	add sp, $4c                                      ; $5ae2: $e8 $4c
	or d                                             ; $5ae4: $b2
	jr c, jr_04d_5aa8                                ; $5ae5: $38 $c1

	ld e, l                                          ; $5ae7: $5d
	add d                                            ; $5ae8: $82
	ld d, a                                          ; $5ae9: $57
	adc b                                            ; $5aea: $88
	ld [$8c11], a                                    ; $5aeb: $ea $11 $8c
	ld h, e                                          ; $5aee: $63
	ld hl, $731e                                     ; $5aef: $21 $1e $73
	inc c                                            ; $5af2: $0c
	call nz, $7f38                                   ; $5af3: $c4 $38 $7f

jr_04d_5af6:
	add b                                            ; $5af6: $80
	add h                                            ; $5af7: $84
	inc bc                                           ; $5af8: $03
	pop de                                           ; $5af9: $d1
	ld c, $aa                                        ; $5afa: $0e $aa
	dec d                                            ; $5afc: $15
	push de                                          ; $5afd: $d5
	ld a, [hl+]                                      ; $5afe: $2a
	ld [hl], a                                       ; $5aff: $77
	ld h, [hl]                                       ; $5b00: $66
	add b                                            ; $5b01: $80
	ld bc, $033f                                     ; $5b02: $01 $3f $03
	db $fd                                           ; $5b05: $fd
	inc bc                                           ; $5b06: $03
	push af                                          ; $5b07: $f5
	inc bc                                           ; $5b08: $03
	xor c                                            ; $5b09: $a9
	inc bc                                           ; $5b0a: $03
	ld d, l                                          ; $5b0b: $55
	inc bc                                           ; $5b0c: $03
	xor c                                            ; $5b0d: $a9
	ld bc, $0157                                     ; $5b0e: $01 $57 $01
	xor e                                            ; $5b11: $ab
	pop af                                           ; $5b12: $f1
	sub b                                            ; $5b13: $90
	reti                                             ; $5b14: $d9


	db $10                                           ; $5b15: $10
	db $db                                           ; $5b16: $db
	add hl, bc                                       ; $5b17: $09
	rst SubAFromDE                                          ; $5b18: $df
	dec bc                                           ; $5b19: $0b
	rst SubAFromDE                                          ; $5b1a: $df
	dec c                                            ; $5b1b: $0d
	db $dd                                           ; $5b1c: $dd
	add hl, bc                                       ; $5b1d: $09
	db $dd                                           ; $5b1e: $dd
	adc l                                            ; $5b1f: $8d
	sbc $8e                                          ; $5b20: $de $8e
	adc e                                            ; $5b22: $8b
	inc d                                            ; $5b23: $14
	ldh [c], a                                       ; $5b24: $e2
	ld [de], a                                       ; $5b25: $12
	pop bc                                           ; $5b26: $c1
	ld a, [bc]                                       ; $5b27: $0a
	and b                                            ; $5b28: $a0
	ld a, [bc]                                       ; $5b29: $0a
	ld d, c                                          ; $5b2a: $51
	ld a, [bc]                                       ; $5b2b: $0a
	and b                                            ; $5b2c: $a0
	jr jr_04d_5b70                                   ; $5b2d: $18 $41

	jr jr_04d_5ad1                                   ; $5b2f: $18 $a0

	ld c, $51                                        ; $5b31: $0e $51
	ld l, a                                          ; $5b33: $6f
	jr nc, jr_04d_5b95                               ; $5b34: $30 $5f

	db $fc                                           ; $5b36: $fc
	ld [bc], a                                       ; $5b37: $02
	call nc, $fc53                                   ; $5b38: $d4 $53 $fc
	sbc l                                            ; $5b3b: $9d
	xor a                                            ; $5b3c: $af
	ld d, b                                          ; $5b3d: $50
	ld d, [hl]                                       ; $5b3e: $56
	call nc, $fe6f                                   ; $5b3f: $d4 $6f $fe
	ld a, a                                          ; $5b42: $7f
	ld e, c                                          ; $5b43: $59
	ld d, a                                          ; $5b44: $57
	ldh a, [c]                                       ; $5b45: $f2
	sbc h                                            ; $5b46: $9c
	sub l                                            ; $5b47: $95
	nop                                              ; $5b48: $00
	ld [$f25b], a                                    ; $5b49: $ea $5b $f2
	sbc l                                            ; $5b4c: $9d
	ld [$7615], a                                    ; $5b4d: $ea $15 $76

jr_04d_5b50:
	call z, $f79e                                    ; $5b50: $cc $9e $f7
	ld l, e                                          ; $5b53: $6b
	db $f4                                           ; $5b54: $f4
	ld [hl], a                                       ; $5b55: $77
	sub b                                            ; $5b56: $90
	ld a, d                                          ; $5b57: $7a
	db $fd                                           ; $5b58: $fd
	ld a, d                                          ; $5b59: $7a
	or [hl]                                          ; $5b5a: $b6
	ld a, h                                          ; $5b5b: $7c
	rst JumpTable                                          ; $5b5c: $c7
	ld a, [hl]                                       ; $5b5d: $7e
	ret nc                                           ; $5b5e: $d0

	sbc l                                            ; $5b5f: $9d
	ei                                               ; $5b60: $fb
	inc b                                            ; $5b61: $04
	ld h, [hl]                                       ; $5b62: $66
	sub h                                            ; $5b63: $94

jr_04d_5b64:
	ld [hl], a                                       ; $5b64: $77
	cp $9d                                           ; $5b65: $fe $9d
	rst SubAFromDE                                          ; $5b67: $df
	jr nz, jr_04d_5be5                               ; $5b68: $20 $7b

	call nc, $f07b                                   ; $5b6a: $d4 $7b $f0
	sub l                                            ; $5b6d: $95
	sub $28                                          ; $5b6e: $d6 $28

jr_04d_5b70:
	rst AddAOntoHL                                          ; $5b70: $ef
	db $10                                           ; $5b71: $10
	rst SubAFromDE                                          ; $5b72: $df
	jr nz, jr_04d_5b64                               ; $5b73: $20 $ef

	db $10                                           ; $5b75: $10
	db $fd                                           ; $5b76: $fd
	ld [bc], a                                       ; $5b77: $02
	ld l, a                                          ; $5b78: $6f
	adc h                                            ; $5b79: $8c
	ld b, l                                          ; $5b7a: $45
	ld b, h                                          ; $5b7b: $44
	sub e                                            ; $5b7c: $93
	ld c, h                                          ; $5b7d: $4c
	xor a                                            ; $5b7e: $af
	or a                                             ; $5b7f: $b7
	ld b, a                                          ; $5b80: $47
	inc e                                            ; $5b81: $1c
	ldh [$61], a                                     ; $5b82: $e0 $61
	adc d                                            ; $5b84: $8a
	ld a, [bc]                                       ; $5b85: $0a
	push af                                          ; $5b86: $f5
	inc b                                            ; $5b87: $04
	ei                                               ; $5b88: $fb

jr_04d_5b89:
	ld [hl], a                                       ; $5b89: $77
	rst JumpTable                                          ; $5b8a: $c7
	sbc l                                            ; $5b8b: $9d
	jr nc, jr_04d_5b89                               ; $5b8c: $30 $fb

	sbc $f0                                          ; $5b8e: $de $f0
	sbc h                                            ; $5b90: $9c
	rlca                                             ; $5b91: $07
	ld hl, sp+$07                                    ; $5b92: $f8 $07
	ld [hl], l                                       ; $5b94: $75

jr_04d_5b95:
	jr c, @+$81                                      ; $5b95: $38 $7f

	db $fc                                           ; $5b97: $fc
	add b                                            ; $5b98: $80
	and b                                            ; $5b99: $a0
	ld e, a                                          ; $5b9a: $5f
	sub l                                            ; $5b9b: $95
	ld h, b                                          ; $5b9c: $60
	inc bc                                           ; $5b9d: $03
	nop                                              ; $5b9e: $00
	pop af                                           ; $5b9f: $f1
	ld c, $f7                                        ; $5ba0: $0e $f7
	ld [$d52a], sp                                   ; $5ba2: $08 $2a $d5
	ld d, $e9                                        ; $5ba5: $16 $e9
	dec bc                                           ; $5ba7: $0b
	db $f4                                           ; $5ba8: $f4
	rlca                                             ; $5ba9: $07
	ld hl, sp-$0f                                    ; $5baa: $f8 $f1
	ld c, $e0                                        ; $5bac: $0e $e0
	rra                                              ; $5bae: $1f
	jr nz, jr_04d_5b50                               ; $5baf: $20 $9f

	ld a, a                                          ; $5bb1: $7f
	add b                                            ; $5bb2: $80
	ld c, $f1                                        ; $5bb3: $0e $f1
	add b                                            ; $5bb5: $80
	ld a, a                                          ; $5bb6: $7f
	add b                                            ; $5bb7: $80
	ld a, b                                          ; $5bb8: $78
	ld d, b                                          ; $5bb9: $50
	ld [hl], a                                       ; $5bba: $77
	cp d                                             ; $5bbb: $ba
	ld a, a                                          ; $5bbc: $7f
	db $e4                                           ; $5bbd: $e4
	ld e, a                                          ; $5bbe: $5f
	ld e, l                                          ; $5bbf: $5d
	sub a                                            ; $5bc0: $97
	and b                                            ; $5bc1: $a0
	ld d, b                                          ; $5bc2: $50
	ld b, $f9                                        ; $5bc3: $06 $f9
	cp a                                             ; $5bc5: $bf
	ld b, b                                          ; $5bc6: $40
	ld d, a                                          ; $5bc7: $57
	xor b                                            ; $5bc8: $a8
	ld [hl], h                                       ; $5bc9: $74
	ld a, [$f077]                                    ; $5bca: $fa $77 $f0
	adc a                                            ; $5bcd: $8f
	adc a                                            ; $5bce: $8f
	nop                                              ; $5bcf: $00

Jump_04d_5bd0:
	or [hl]                                          ; $5bd0: $b6
	ld b, c                                          ; $5bd1: $41
	xor c                                            ; $5bd2: $a9
	ld [bc], a                                       ; $5bd3: $02
	ld l, b                                          ; $5bd4: $68
	rla                                              ; $5bd5: $17
	cp b                                             ; $5bd6: $b8
	rlca                                             ; $5bd7: $07
	ld c, b                                          ; $5bd8: $48
	add a                                            ; $5bd9: $87
	xor b                                            ; $5bda: $a8
	rlca                                             ; $5bdb: $07
	ldh a, [rIF]                                     ; $5bdc: $f0 $0f
	ld [hl], $fc                                     ; $5bde: $36 $fc
	ld [hl], a                                       ; $5be0: $77
	db $fc                                           ; $5be1: $fc
	ld a, a                                          ; $5be2: $7f
	adc $5d                                          ; $5be3: $ce $5d

jr_04d_5be5:
	or h                                             ; $5be5: $b4
	ld l, a                                          ; $5be6: $6f
	cp $6d                                           ; $5be7: $fe $6d
	or h                                             ; $5be9: $b4
	ld [hl], a                                       ; $5bea: $77
	ldh a, [$9e]                                     ; $5beb: $f0 $9e
	ld a, [$c279]                                    ; $5bed: $fa $79 $c2
	ld a, [hl]                                       ; $5bf0: $7e
	ld a, [$c27d]                                    ; $5bf1: $fa $7d $c2
	ld a, a                                          ; $5bf4: $7f
	or $75                                           ; $5bf5: $f6 $75
	and h                                            ; $5bf7: $a4
	ld a, a                                          ; $5bf8: $7f
	ld hl, sp+$79                                    ; $5bf9: $f8 $79
	jp z, $fc73                                      ; $5bfb: $ca $73 $fc

	ld [hl], a                                       ; $5bfe: $77
	inc l                                            ; $5bff: $2c
	ld h, a                                          ; $5c00: $67
	db $f4                                           ; $5c01: $f4
	ld [hl], a                                       ; $5c02: $77
	adc $77                                          ; $5c03: $ce $77
	ldh a, [$75]                                     ; $5c05: $f0 $75
	cp h                                             ; $5c07: $bc
	ld a, [hl]                                       ; $5c08: $7e
	db $ec                                           ; $5c09: $ec
	ld a, e                                          ; $5c0a: $7b
	ld h, a                                          ; $5c0b: $67
	ld a, [hl]                                       ; $5c0c: $7e
	cp b                                             ; $5c0d: $b8
	sbc [hl]                                         ; $5c0e: $9e
	ld bc, $646e                                     ; $5c0f: $01 $6e $64
	ld a, [hl]                                       ; $5c12: $7e
	ld hl, sp+$7f                                    ; $5c13: $f8 $7f
	add sp, $7f                                      ; $5c15: $e8 $7f
	db $f4                                           ; $5c17: $f4
	ld [hl], a                                       ; $5c18: $77
	call nz, $f07f                                   ; $5c19: $c4 $7f $f0
	ld l, h                                          ; $5c1c: $6c
	ld h, h                                          ; $5c1d: $64
	sbc e                                            ; $5c1e: $9b
	ld b, b                                          ; $5c1f: $40
	cp a                                             ; $5c20: $bf
	and b                                            ; $5c21: $a0
	ld e, a                                          ; $5c22: $5f
	ld [hl], a                                       ; $5c23: $77
	inc h                                            ; $5c24: $24
	ld a, a                                          ; $5c25: $7f
	ld hl, sp+$74                                    ; $5c26: $f8 $74
	inc h                                            ; $5c28: $24
	ld a, a                                          ; $5c29: $7f
	db $ec                                           ; $5c2a: $ec
	ld d, [hl]                                       ; $5c2b: $56
	adc a                                            ; $5c2c: $8f
	ld l, a                                          ; $5c2d: $6f
	ld c, d                                          ; $5c2e: $4a
	ld e, a                                          ; $5c2f: $5f
	cp $7e                                           ; $5c30: $fe $7e
	ret nc                                           ; $5c32: $d0

	ld c, d                                          ; $5c33: $4a
	ld h, c                                          ; $5c34: $61
	ld c, e                                          ; $5c35: $4b
	cp $40                                           ; $5c36: $fe $40
	nop                                              ; $5c38: $00
	rst SubAFromHL                                          ; $5c39: $d7
	ld b, h                                          ; $5c3a: $44
	push de                                          ; $5c3b: $d5
	inc sp                                           ; $5c3c: $33
	sbc h                                            ; $5c3d: $9c
	dec [hl]                                         ; $5c3e: $35
	ld h, e                                          ; $5c3f: $63
	inc sp                                           ; $5c40: $33
	ld [hl], e                                       ; $5c41: $73
	ldh a, [hDisp1_WY]                                     ; $5c42: $f0 $95
	ld [hl], a                                       ; $5c44: $77
	ld d, l                                          ; $5c45: $55
	ld [hl], l                                       ; $5c46: $75
	ld h, a                                          ; $5c47: $67
	ld [hl], a                                       ; $5c48: $77
	ld b, h                                          ; $5c49: $44
	ld [hl], h                                       ; $5c4a: $74
	ld b, a                                          ; $5c4b: $47
	ld b, h                                          ; $5c4c: $44
	ld [hl], a                                       ; $5c4d: $77
	sbc $55                                          ; $5c4e: $de $55
	sbc e                                            ; $5c50: $9b
	ld [hl], a                                       ; $5c51: $77
	ld [hl], l                                       ; $5c52: $75
	ld [hl], h                                       ; $5c53: $74
	ld [hl], l                                       ; $5c54: $75
	reti                                             ; $5c55: $d9


	ld d, l                                          ; $5c56: $55
	sbc [hl]                                         ; $5c57: $9e
	ld d, a                                          ; $5c58: $57
	sbc $77                                          ; $5c59: $de $77
	ld [hl], e                                       ; $5c5b: $73
	db $ed                                           ; $5c5c: $ed
	call c, $9b44                                    ; $5c5d: $dc $44 $9b
	ld [hl], a                                       ; $5c60: $77
	dec [hl]                                         ; $5c61: $35
	ld d, e                                          ; $5c62: $53
	ld b, h                                          ; $5c63: $44
	ld l, e                                          ; $5c64: $6b
	or $7f                                           ; $5c65: $f6 $7f
	call c, $fc7f                                    ; $5c67: $dc $7f $fc
	ld l, a                                          ; $5c6a: $6f
	or $9c                                           ; $5c6b: $f6 $9c
	ld b, e                                          ; $5c6d: $43
	ld [hl], h                                       ; $5c6e: $74
	ld b, a                                          ; $5c6f: $47
	ld l, a                                          ; $5c70: $6f
	or $9d                                           ; $5c71: $f6 $9d
	ld b, h                                          ; $5c73: $44
	ld b, a                                          ; $5c74: $47
	ret c                                            ; $5c75: $d8

	ld b, h                                          ; $5c76: $44
	ld e, h                                          ; $5c77: $5c
	adc d                                            ; $5c78: $8a
	reti                                             ; $5c79: $d9


	rst $38                                          ; $5c7a: $ff
	ld sp, hl                                        ; $5c7b: $f9
	inc bc                                           ; $5c7c: $03
	ldh a, [$03]                                     ; $5c7d: $f0 $03
	ldh a, [$03]                                     ; $5c7f: $f0 $03
	ldh a, [$03]                                     ; $5c81: $f0 $03
	ldh a, [$03]                                     ; $5c83: $f0 $03
	ldh a, [$03]                                     ; $5c85: $f0 $03
	ldh a, [$03]                                     ; $5c87: $f0 $03
	ldh a, [$03]                                     ; $5c89: $f0 $03
	ldh a, [$03]                                     ; $5c8b: $f0 $03
	ldh a, [$03]                                     ; $5c8d: $f0 $03
	ldh a, [$fb]                                     ; $5c8f: $f0 $fb
	sub e                                            ; $5c91: $93
	add sp, -$31                                     ; $5c92: $e8 $cf
	and b                                            ; $5c94: $a0
	xor a                                            ; $5c95: $af
	ldh a, [c]                                       ; $5c96: $f2
	add l                                            ; $5c97: $85
	add d                                            ; $5c98: $82
	add c                                            ; $5c99: $81
	rlca                                             ; $5c9a: $07
	jr c, jr_04d_5ce4                                ; $5c9b: $38 $47

	rra                                              ; $5c9d: $1f
	db $dd                                           ; $5c9e: $dd
	ld a, a                                          ; $5c9f: $7f
	adc a                                            ; $5ca0: $8f
	ld h, a                                          ; $5ca1: $67
	sbc a                                            ; $5ca2: $9f
	ld [hl], a                                       ; $5ca3: $77
	jp $54bf                                         ; $5ca4: $c3 $bf $54


	or b                                             ; $5ca7: $b0
	ld h, b                                          ; $5ca8: $60
	ld hl, sp+$7c                                    ; $5ca9: $f8 $7c
	adc b                                            ; $5cab: $88
	db $fc                                           ; $5cac: $fc
	db $fc                                           ; $5cad: $fc
	ld hl, sp-$20                                    ; $5cae: $f8 $e0
	ldh [$de], a                                     ; $5cb0: $e0 $de
	rst $38                                          ; $5cb2: $ff
	sbc l                                            ; $5cb3: $9d
	db $fc                                           ; $5cb4: $fc
	add b                                            ; $5cb5: $80
	rst FarCall                                          ; $5cb6: $f7
	sbc e                                            ; $5cb7: $9b
	add hl, de                                       ; $5cb8: $19
	rst $38                                          ; $5cb9: $ff
	rst $38                                          ; $5cba: $ff
	ldh [$fd], a                                     ; $5cbb: $e0 $fd
	sbc [hl]                                         ; $5cbd: $9e
	ld h, d                                          ; $5cbe: $62
	ei                                               ; $5cbf: $fb
	sbc e                                            ; $5cc0: $9b
	db $e3                                           ; $5cc1: $e3
	di                                               ; $5cc2: $f3
	rst $38                                          ; $5cc3: $ff
	ldh a, [$fe]                                     ; $5cc4: $f0 $fe
	sbc l                                            ; $5cc6: $9d
	ld [bc], a                                       ; $5cc7: $02
	adc b                                            ; $5cc8: $88
	ei                                               ; $5cc9: $fb
	sbc h                                            ; $5cca: $9c
	ld c, $de                                        ; $5ccb: $0e $de
	ret c                                            ; $5ccd: $d8

	ld [hl], e                                       ; $5cce: $73
	and a                                            ; $5ccf: $a7
	sbc h                                            ; $5cd0: $9c
	inc b                                            ; $5cd1: $04
	ld b, h                                          ; $5cd2: $44
	inc b                                            ; $5cd3: $04
	db $fc                                           ; $5cd4: $fc
	sbc h                                            ; $5cd5: $9c
	db $e4                                           ; $5cd6: $e4
	db $f4                                           ; $5cd7: $f4
	ld [hl], h                                       ; $5cd8: $74
	ld [hl], e                                       ; $5cd9: $73
	ldh a, [$9e]                                     ; $5cda: $f0 $9e
	ld bc, $f16f                                     ; $5cdc: $01 $6f $f1
	sbc c                                            ; $5cdf: $99
	nop                                              ; $5ce0: $00
	rlca                                             ; $5ce1: $07
	rlca                                             ; $5ce2: $07
	inc c                                            ; $5ce3: $0c

jr_04d_5ce4:
	rst $38                                          ; $5ce4: $ff
	inc bc                                           ; $5ce5: $03
	db $fd                                           ; $5ce6: $fd
	sbc [hl]                                         ; $5ce7: $9e
	adc c                                            ; $5ce8: $89
	ei                                               ; $5ce9: $fb
	rst SubAFromDE                                          ; $5cea: $df
	db $db                                           ; $5ceb: $db
	sbc [hl]                                         ; $5cec: $9e
	dec de                                           ; $5ced: $1b

jr_04d_5cee:
	ld l, a                                          ; $5cee: $6f
	halt                                             ; $5cef: $76
	sbc [hl]                                         ; $5cf0: $9e
	jr c, jr_04d_5cee                                ; $5cf1: $38 $fb

	sbc h                                            ; $5cf3: $9c
	ld a, b                                          ; $5cf4: $78
	ld a, l                                          ; $5cf5: $7d
	ld h, l                                          ; $5cf6: $65
	sbc $ff                                          ; $5cf7: $de $ff
	ld [hl], a                                       ; $5cf9: $77
	sbc $9e                                          ; $5cfa: $de $9e
	ld c, $fb                                        ; $5cfc: $0e $fb
	sbc b                                            ; $5cfe: $98
	ret nz                                           ; $5cff: $c0

	cp $ff                                           ; $5d00: $fe $ff
	rst $38                                          ; $5d02: $ff
	cp $fc                                           ; $5d03: $fe $fc
	rlca                                             ; $5d05: $07
	ld [hl], e                                       ; $5d06: $73
	cp h                                             ; $5d07: $bc
	sbc l                                            ; $5d08: $9d
	ld [bc], a                                       ; $5d09: $02
	inc bc                                           ; $5d0a: $03
	ld a, e                                          ; $5d0b: $7b
	rst SubAFromBC                                          ; $5d0c: $e7
	sub e                                            ; $5d0d: $93
	ret z                                            ; $5d0e: $c8

	rlca                                             ; $5d0f: $07
	add b                                            ; $5d10: $80
	jr c, @+$01                                      ; $5d11: $38 $ff

	ld [bc], a                                       ; $5d13: $02
	ld bc, $81a0                                     ; $5d14: $01 $a0 $81
	rst $38                                          ; $5d17: $ff
	nop                                              ; $5d18: $00
	ld b, a                                          ; $5d19: $47
	sbc $ff                                          ; $5d1a: $de $ff
	sub b                                            ; $5d1c: $90
	ld e, a                                          ; $5d1d: $5f
	ld a, a                                          ; $5d1e: $7f
	rst $38                                          ; $5d1f: $ff
	cp a                                             ; $5d20: $bf
	rst AddAOntoHL                                          ; $5d21: $ef
	rst $38                                          ; $5d22: $ff
	cp a                                             ; $5d23: $bf
	ld e, a                                          ; $5d24: $5f
	cp a                                             ; $5d25: $bf
	ld a, a                                          ; $5d26: $7f
	ret nz                                           ; $5d27: $c0

	ld h, b                                          ; $5d28: $60
	db $10                                           ; $5d29: $10
	ldh [$f0], a                                     ; $5d2a: $e0 $f0
	sbc $e0                                          ; $5d2c: $de $e0
	db $db                                           ; $5d2e: $db
	rst $38                                          ; $5d2f: $ff
	rst SubAFromDE                                          ; $5d30: $df
	cp $fb                                           ; $5d31: $fe $fb
	rst SubAFromDE                                          ; $5d33: $df
	ld bc, $ffdd                                     ; $5d34: $01 $dd $ff
	sbc h                                            ; $5d37: $9c
	ld a, [$2030]                                    ; $5d38: $fa $30 $20
	ld [hl], e                                       ; $5d3b: $73
	ld e, a                                          ; $5d3c: $5f
	sbc h                                            ; $5d3d: $9c
	dec b                                            ; $5d3e: $05
	adc d                                            ; $5d3f: $8a
	push de                                          ; $5d40: $d5
	sbc $ff                                          ; $5d41: $de $ff
	sub e                                            ; $5d43: $93
	adc a                                            ; $5d44: $8f
	rlca                                             ; $5d45: $07
	rlca                                             ; $5d46: $07
	add hl, de                                       ; $5d47: $19
	inc d                                            ; $5d48: $14
	dec bc                                           ; $5d49: $0b
	nop                                              ; $5d4a: $00
	nop                                              ; $5d4b: $00
	ld d, b                                          ; $5d4c: $50
	cp b                                             ; $5d4d: $b8
	ld e, [hl]                                       ; $5d4e: $5e
	cp [hl]                                          ; $5d4f: $be
	reti                                             ; $5d50: $d9


	rst $38                                          ; $5d51: $ff
	sbc l                                            ; $5d52: $9d
	dec de                                           ; $5d53: $1b
	sub b                                            ; $5d54: $90
	ei                                               ; $5d55: $fb
	sbc l                                            ; $5d56: $9d
	db $e4                                           ; $5d57: $e4
	rst AddAOntoHL                                          ; $5d58: $ef
	ld a, $d0                                        ; $5d59: $3e $d0
	sbc c                                            ; $5d5b: $99
	ccf                                              ; $5d5c: $3f
	rra                                              ; $5d5d: $1f
	inc de                                           ; $5d5e: $13
	add e                                            ; $5d5f: $83
	inc [hl]                                         ; $5d60: $34
	ldh a, [c]                                       ; $5d61: $f2
	ld a, e                                          ; $5d62: $7b
	ld [hl], h                                       ; $5d63: $74
	sbc d                                            ; $5d64: $9a
	ldh [$ec], a                                     ; $5d65: $e0 $ec
	ld e, [hl]                                       ; $5d67: $5e
	cp $fc                                           ; $5d68: $fe $fc
	db $db                                           ; $5d6a: $db
	rst $38                                          ; $5d6b: $ff
	ld a, a                                          ; $5d6c: $7f
	adc [hl]                                         ; $5d6d: $8e
	ld sp, hl                                        ; $5d6e: $f9
	sbc l                                            ; $5d6f: $9d
	ld b, d                                          ; $5d70: $42
	ld b, c                                          ; $5d71: $41
	db $db                                           ; $5d72: $db
	ld b, b                                          ; $5d73: $40
	reti                                             ; $5d74: $d9


	ccf                                              ; $5d75: $3f
	sub a                                            ; $5d76: $97
	and b                                            ; $5d77: $a0
	ld h, b                                          ; $5d78: $60
	and b                                            ; $5d79: $a0
	ld h, b                                          ; $5d7a: $60
	or b                                             ; $5d7b: $b0
	ld [hl], b                                       ; $5d7c: $70
	or b                                             ; $5d7d: $b0
	ld [hl], b                                       ; $5d7e: $70
	reti                                             ; $5d7f: $d9


	ldh [hDisp0_LCDC], a                                     ; $5d80: $e0 $82
	ld a, c                                          ; $5d82: $79
	dec e                                            ; $5d83: $1d
	add c                                            ; $5d84: $81
	add c                                            ; $5d85: $81
	add h                                            ; $5d86: $84
	ld l, b                                          ; $5d87: $68
	ld [$3c00], sp                                   ; $5d88: $08 $00 $3c
	ld h, b                                          ; $5d8b: $60
	ld b, b                                          ; $5d8c: $40
	ld c, [hl]                                       ; $5d8d: $4e
	ld b, l                                          ; $5d8e: $45
	ld b, l                                          ; $5d8f: $45
	inc [hl]                                         ; $5d90: $34
	nop                                              ; $5d91: $00
	adc d                                            ; $5d92: $8a
	add d                                            ; $5d93: $82
	ld b, e                                          ; $5d94: $43
	ld [de], a                                       ; $5d95: $12
	sbc d                                            ; $5d96: $9a
	sub d                                            ; $5d97: $92
	add b                                            ; $5d98: $80
	nop                                              ; $5d99: $00
	jp nc, $a293                                     ; $5d9a: $d2 $93 $a2

	and d                                            ; $5d9d: $a2
	sub e                                            ; $5d9e: $93
	ld a, e                                          ; $5d9f: $7b
	ld l, d                                          ; $5da0: $6a
	adc d                                            ; $5da1: $8a
	ld [bc], a                                       ; $5da2: $02
	jp nz, Jump_04d_4400                             ; $5da3: $c2 $00 $44

	ld c, c                                          ; $5da6: $49
	nop                                              ; $5da7: $00
	nop                                              ; $5da8: $00
	inc bc                                           ; $5da9: $03
	ld e, $9c                                        ; $5daa: $1e $9c
	sbc b                                            ; $5dac: $98
	dec de                                           ; $5dad: $1b
	sbc $00                                          ; $5dae: $de $00
	nop                                              ; $5db0: $00
	rra                                              ; $5db1: $1f
	ld d, b                                          ; $5db2: $50
	ld b, [hl]                                       ; $5db3: $46
	ld c, [hl]                                       ; $5db4: $4e
	ld b, [hl]                                       ; $5db5: $46
	ld b, b                                          ; $5db6: $40
	ld a, e                                          ; $5db7: $7b
	adc c                                            ; $5db8: $89
	rst SubAFromDE                                          ; $5db9: $df
	ld c, h                                          ; $5dba: $4c
	rst SubAFromDE                                          ; $5dbb: $df
	ld b, h                                          ; $5dbc: $44
	ld [hl], a                                       ; $5dbd: $77
	add c                                            ; $5dbe: $81
	sbc h                                            ; $5dbf: $9c
	dec c                                            ; $5dc0: $0d
	ld [$7302], sp                                   ; $5dc1: $08 $02 $73
	ld a, c                                          ; $5dc4: $79
	ld a, [hl]                                       ; $5dc5: $7e
	xor h                                            ; $5dc6: $ac
	sbc [hl]                                         ; $5dc7: $9e
	inc b                                            ; $5dc8: $04
	halt                                             ; $5dc9: $76
	add sp, -$66                                     ; $5dca: $e8 $9a
	rst $38                                          ; $5dcc: $ff
	ld [hl+], a                                      ; $5dcd: $22
	jp nz, $9191                                     ; $5dce: $c2 $91 $91

	ld a, d                                          ; $5dd1: $7a
	db $e3                                           ; $5dd2: $e3
	sbc d                                            ; $5dd3: $9a
	ldh [$d9], a                                     ; $5dd4: $e0 $d9
	ld e, c                                          ; $5dd6: $59
	ld c, e                                          ; $5dd7: $4b
	ld c, [hl]                                       ; $5dd8: $4e
	ld [hl], a                                       ; $5dd9: $77
	ldh a, [hDisp0_WX]                                     ; $5dda: $f0 $89
	inc h                                            ; $5ddc: $24
	ld [$2e24], sp                                   ; $5ddd: $08 $24 $2e
	ld b, [hl]                                       ; $5de0: $46
	ld bc, $0000                                     ; $5de1: $01 $00 $00
	ld b, c                                          ; $5de4: $41
	ld [hl], c                                       ; $5de5: $71
	ld c, c                                          ; $5de6: $49
	ld b, l                                          ; $5de7: $45
	ld h, c                                          ; $5de8: $61
	nop                                              ; $5de9: $00
	nop                                              ; $5dea: $00
	add b                                            ; $5deb: $80
	add b                                            ; $5dec: $80
	and [hl]                                         ; $5ded: $a6
	and a                                            ; $5dee: $a7
	or b                                             ; $5def: $b0
	ld b, $d7                                        ; $5df0: $06 $d7
	ld a, d                                          ; $5df2: $7a
	xor [hl]                                         ; $5df3: $ae
	sbc e                                            ; $5df4: $9b
	jr jr_04d_5e15                                   ; $5df5: $18 $1e

	ld c, b                                          ; $5df7: $48
	ret c                                            ; $5df8: $d8

	ld a, e                                          ; $5df9: $7b
	rst SubAFromHL                                          ; $5dfa: $d7
	sbc [hl]                                         ; $5dfb: $9e
	inc b                                            ; $5dfc: $04
	ld a, e                                          ; $5dfd: $7b
	or e                                             ; $5dfe: $b3
	sub e                                            ; $5dff: $93
	nop                                              ; $5e00: $00
	ld [$0008], sp                                   ; $5e01: $08 $08 $00
	call z, $ecec                                    ; $5e04: $cc $ec $ec
	db $fc                                           ; $5e07: $fc
	call c, $9cdc                                    ; $5e08: $dc $dc $9c
	ld [$80d9], sp                                   ; $5e0b: $08 $d9 $80
	sbc $7f                                          ; $5e0e: $de $7f
	sbc [hl]                                         ; $5e10: $9e
	ccf                                              ; $5e11: $3f
	ld [hl], a                                       ; $5e12: $77
	cp $82                                           ; $5e13: $fe $82

jr_04d_5e15:
	cp a                                             ; $5e15: $bf
	ld a, [hl]                                       ; $5e16: $7e
	cp d                                             ; $5e17: $ba
	ld c, b                                          ; $5e18: $48
	and b                                            ; $5e19: $a0
	ld b, b                                          ; $5e1a: $40
	xor [hl]                                         ; $5e1b: $ae
	ld e, a                                          ; $5e1c: $5f
	ldh [$e0], a                                     ; $5e1d: $e0 $e0
	push hl                                          ; $5e1f: $e5
	ldh [c], a                                       ; $5e20: $e2
	db $ed                                           ; $5e21: $ed
	ld [rIE], a                                    ; $5e22: $ea $ff $ff
	xor c                                            ; $5e25: $a9
	ld e, [hl]                                       ; $5e26: $5e
	sbc a                                            ; $5e27: $9f
	ld a, h                                          ; $5e28: $7c
	cp l                                             ; $5e29: $bd
	rst $38                                          ; $5e2a: $ff
	dec [hl]                                         ; $5e2b: $35
	cp $07                                           ; $5e2c: $fe $07
	ld bc, $c320                                     ; $5e2e: $01 $20 $c3
	ld b, d                                          ; $5e31: $42
	ld a, e                                          ; $5e32: $7b
	ld [bc], a                                       ; $5e33: $02
	add b                                            ; $5e34: $80
	adc b                                            ; $5e35: $88
	adc [hl]                                         ; $5e36: $8e
	rst SubAFromDE                                          ; $5e37: $df
	rst $38                                          ; $5e38: $ff
	and c                                            ; $5e39: $a1
	dec a                                            ; $5e3a: $3d
	xor d                                            ; $5e3b: $aa
	ld d, l                                          ; $5e3c: $55
	rst $38                                          ; $5e3d: $ff
	pop af                                           ; $5e3e: $f1
	ld [hl+], a                                      ; $5e3f: $22
	ld b, $5e                                        ; $5e40: $06 $5e
	jp $fffe                                         ; $5e42: $c3 $fe $ff


	call $cfb6                                       ; $5e45: $cd $b6 $cf
	sbc [hl]                                         ; $5e48: $9e
	xor h                                            ; $5e49: $ac
	ld d, l                                          ; $5e4a: $55
	ei                                               ; $5e4b: $fb
	rst $38                                          ; $5e4c: $ff
	ccf                                              ; $5e4d: $3f
	ld a, c                                          ; $5e4e: $79
	jr nc, @+$63                                     ; $5e4f: $30 $61

	di                                               ; $5e51: $f3
	rst $38                                          ; $5e52: $ff
	ld a, a                                          ; $5e53: $7f
	sub d                                            ; $5e54: $92
	rst SubAFromDE                                          ; $5e55: $df
	and a                                            ; $5e56: $a7
	ldh [rAUD4POLY], a                               ; $5e57: $e0 $22
	push de                                          ; $5e59: $d5
	xor d                                            ; $5e5a: $aa
	ld a, a                                          ; $5e5b: $7f
	ld hl, sp-$14                                    ; $5e5c: $f8 $ec
	rst SubAFromDE                                          ; $5e5e: $df
	rra                                              ; $5e5f: $1f
	rst $38                                          ; $5e60: $ff
	ld a, a                                          ; $5e61: $7f
	db $dd                                           ; $5e62: $dd
	rst $38                                          ; $5e63: $ff
	add b                                            ; $5e64: $80
	ld e, a                                          ; $5e65: $5f
	inc a                                            ; $5e66: $3c
	ld e, [hl]                                       ; $5e67: $5e
	ld b, b                                          ; $5e68: $40
	add b                                            ; $5e69: $80
	nop                                              ; $5e6a: $00
	inc b                                            ; $5e6b: $04
	nop                                              ; $5e6c: $00
	add b                                            ; $5e6d: $80
	add e                                            ; $5e6e: $83

Call_04d_5e6f:
	and c                                            ; $5e6f: $a1
	push af                                          ; $5e70: $f5
	xor d                                            ; $5e71: $aa
	push de                                          ; $5e72: $d5
	xor $55                                          ; $5e73: $ee $55
	xor b                                            ; $5e75: $a8
	sbc [hl]                                         ; $5e76: $9e
	db $fc                                           ; $5e77: $fc
	pop hl                                           ; $5e78: $e1
	ld a, d                                          ; $5e79: $7a
	sbc b                                            ; $5e7a: $98
	ldh [$ce], a                                     ; $5e7b: $e0 $ce
	rst SubAFromHL                                          ; $5e7d: $d7
	ld bc, $0603                                     ; $5e7e: $01 $03 $06
	dec b                                            ; $5e81: $05
	ld h, a                                          ; $5e82: $67
	rra                                              ; $5e83: $1f
	ld a, a                                          ; $5e84: $7f
	sub b                                            ; $5e85: $90
	sub b                                            ; $5e86: $90
	ld e, a                                          ; $5e87: $5f
	ld a, [bc]                                       ; $5e88: $0a
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	db $10                                           ; $5e8b: $10
	sub h                                            ; $5e8c: $94
	cp b                                             ; $5e8d: $b8
	ld b, b                                          ; $5e8e: $40
	add b                                            ; $5e8f: $80
	ret nz                                           ; $5e90: $c0

	ret nz                                           ; $5e91: $c0

	ldh [$e0], a                                     ; $5e92: $e0 $e0
	ld a, b                                          ; $5e94: $78
	ld [hl], b                                       ; $5e95: $70
	ld sp, hl                                        ; $5e96: $f9
	sbc e                                            ; $5e97: $9b
	ld [hl], a                                       ; $5e98: $77
	ld a, a                                          ; $5e99: $7f
	ld d, a                                          ; $5e9a: $57
	cpl                                              ; $5e9b: $2f
	ld a, e                                          ; $5e9c: $7b
	cp $96                                           ; $5e9d: $fe $96
	dec hl                                           ; $5e9f: $2b
	jr nc, @+$32                                     ; $5ea0: $30 $30

	db $10                                           ; $5ea2: $10
	inc sp                                           ; $5ea3: $33
	rla                                              ; $5ea4: $17
	ld [hl], $1b                                     ; $5ea5: $36 $1b
	inc sp                                           ; $5ea7: $33
	db $dd                                           ; $5ea8: $dd
	ldh [$9c], a                                     ; $5ea9: $e0 $9c
	ld a, [$f6fb]                                    ; $5eab: $fa $fb $f6
	ld a, d                                          ; $5eae: $7a
	jr c, @-$68                                      ; $5eaf: $38 $96

	ld c, $d5                                        ; $5eb1: $0e $d5
	xor d                                            ; $5eb3: $aa
	ld d, l                                          ; $5eb4: $55
	xor d                                            ; $5eb5: $aa
	ld d, b                                          ; $5eb6: $50
	nop                                              ; $5eb7: $00
	ld bc, $713e                                     ; $5eb8: $01 $3e $71
	add a                                            ; $5ebb: $87
	sbc l                                            ; $5ebc: $9d
	ld bc, $7b7d                                     ; $5ebd: $01 $7d $7b
	ldh a, [c]                                       ; $5ec0: $f2
	sbc d                                            ; $5ec1: $9a
	ld d, h                                          ; $5ec2: $54
	add b                                            ; $5ec3: $80
	nop                                              ; $5ec4: $00
	rrca                                             ; $5ec5: $0f
	db $fc                                           ; $5ec6: $fc
	ei                                               ; $5ec7: $fb
	sub a                                            ; $5ec8: $97
	ld [$aa55], a                                    ; $5ec9: $ea $55 $aa
	ld d, l                                          ; $5ecc: $55
	xor e                                            ; $5ecd: $ab
	ld [bc], a                                       ; $5ece: $02
	inc b                                            ; $5ecf: $04
	ld [$7975], sp                                   ; $5ed0: $08 $75 $79
	ld a, a                                          ; $5ed3: $7f
	db $e3                                           ; $5ed4: $e3
	ld a, [hl]                                       ; $5ed5: $7e
	db $dd                                           ; $5ed6: $dd
	ld a, e                                          ; $5ed7: $7b
	ldh [c], a                                       ; $5ed8: $e2
	sbc e                                            ; $5ed9: $9b
	ld d, l                                          ; $5eda: $55
	ld [bc], a                                       ; $5edb: $02
	dec d                                            ; $5edc: $15
	ld c, d                                          ; $5edd: $4a
	db $fc                                           ; $5ede: $fc
	sbc h                                            ; $5edf: $9c
	db $fc                                           ; $5ee0: $fc
	ld [$73b5], a                                    ; $5ee1: $ea $b5 $73
	ldh a, [$9e]                                     ; $5ee4: $f0 $9e
	xor d                                            ; $5ee6: $aa
	ld a, d                                          ; $5ee7: $7a
	ld b, e                                          ; $5ee8: $43
	ei                                               ; $5ee9: $fb
	ld a, a                                          ; $5eea: $7f
	ret z                                            ; $5eeb: $c8

	sbc [hl]                                         ; $5eec: $9e
	add a                                            ; $5eed: $87
	ld [hl], a                                       ; $5eee: $77
	ldh a, [$7f]                                     ; $5eef: $f0 $7f
	sbc $9d                                          ; $5ef1: $de $9d
	nop                                              ; $5ef3: $00
	ccf                                              ; $5ef4: $3f
	ld a, [$f09d]                                    ; $5ef5: $fa $9d $f0
	ld b, a                                          ; $5ef8: $47
	ld [hl], e                                       ; $5ef9: $73
	sbc $9d                                          ; $5efa: $de $9d
	dec d                                            ; $5efc: $15
	cp $67                                           ; $5efd: $fe $67
	rst AddAOntoHL                                          ; $5eff: $ef
	sbc [hl]                                         ; $5f00: $9e
	ldh [$6f], a                                     ; $5f01: $e0 $6f
	sbc $9c                                          ; $5f03: $de $9c
	nop                                              ; $5f05: $00
	ld hl, sp+$7f                                    ; $5f06: $f8 $7f
	ld a, [$3099]                                    ; $5f08: $fa $99 $30
	call z, $56ac                                    ; $5f0b: $cc $ac $56
	xor d                                            ; $5f0e: $aa
	ld d, h                                          ; $5f0f: $54
	ld a, e                                          ; $5f10: $7b
	cp l                                             ; $5f11: $bd
	sbc h                                            ; $5f12: $9c
	ld a, $03                                        ; $5f13: $3e $03
	ld bc, $9f7b                                     ; $5f15: $01 $7b $9f
	sbc $80                                          ; $5f18: $de $80
	ld [hl], a                                       ; $5f1a: $77
	or a                                             ; $5f1b: $b7
	ld a, [hl]                                       ; $5f1c: $7e
	rst $38                                          ; $5f1d: $ff
	sub c                                            ; $5f1e: $91
	ld e, a                                          ; $5f1f: $5f
	ccf                                              ; $5f20: $3f
	rst SubAFromDE                                          ; $5f21: $df
	cp a                                             ; $5f22: $bf
	rst SubAFromDE                                          ; $5f23: $df
	xor a                                            ; $5f24: $af
	and h                                            ; $5f25: $a4
	ld e, a                                          ; $5f26: $5f
	xor b                                            ; $5f27: $a8
	ld e, a                                          ; $5f28: $5f
	cp a                                             ; $5f29: $bf
	ld d, [hl]                                       ; $5f2a: $56
	cp a                                             ; $5f2b: $bf
	ld e, [hl]                                       ; $5f2c: $5e
	ld l, c                                          ; $5f2d: $69
	adc b                                            ; $5f2e: $88
	sub a                                            ; $5f2f: $97
	di                                               ; $5f30: $f3
	ldh a, [rIE]                                     ; $5f31: $f0 $ff
	ret z                                            ; $5f33: $c8

	rst $38                                          ; $5f34: $ff
	add h                                            ; $5f35: $84
	rst $38                                          ; $5f36: $ff
	ld d, b                                          ; $5f37: $50
	ld [hl], h                                       ; $5f38: $74
	sbc b                                            ; $5f39: $98
	adc a                                            ; $5f3a: $8f
	scf                                              ; $5f3b: $37
	rst $38                                          ; $5f3c: $ff
	ld [hl], a                                       ; $5f3d: $77
	add hl, hl                                       ; $5f3e: $29
	db $fd                                           ; $5f3f: $fd
	ldh [$b2], a                                     ; $5f40: $e0 $b2
	ld [bc], a                                       ; $5f42: $02
	inc b                                            ; $5f43: $04
	ret nz                                           ; $5f44: $c0

	rrca                                             ; $5f45: $0f
	ret nz                                           ; $5f46: $c0

	db $10                                           ; $5f47: $10
	ccf                                              ; $5f48: $3f
	rst $38                                          ; $5f49: $ff
	db $fd                                           ; $5f4a: $fd
	ld a, b                                          ; $5f4b: $78
	push bc                                          ; $5f4c: $c5
	ld a, a                                          ; $5f4d: $7f
	ld a, [$af80]                                    ; $5f4e: $fa $80 $af
	ld e, [hl]                                       ; $5f51: $5e
	adc h                                            ; $5f52: $8c
	inc d                                            ; $5f53: $14
	ld c, c                                          ; $5f54: $49
	add a                                            ; $5f55: $87
	add e                                            ; $5f56: $83
	rlca                                             ; $5f57: $07
	rst SubAFromDE                                          ; $5f58: $df
	rst GetHLinHL                                          ; $5f59: $cf
	ld l, a                                          ; $5f5a: $6f
	rst AddAOntoHL                                          ; $5f5b: $ef
	or $70                                           ; $5f5c: $f6 $70
	ld a, c                                          ; $5f5e: $79
	ld sp, hl                                        ; $5f5f: $f9
	ld a, d                                          ; $5f60: $7a
	push de                                          ; $5f61: $d5
	ld [$3e75], a                                    ; $5f62: $ea $75 $3e
	ld hl, sp-$62                                    ; $5f65: $f8 $9e
	reti                                             ; $5f67: $d9


	rst $38                                          ; $5f68: $ff
	ld a, a                                          ; $5f69: $7f
	ccf                                              ; $5f6a: $3f
	adc e                                            ; $5f6b: $8b
	pop bc                                           ; $5f6c: $c1
	rlca                                             ; $5f6d: $07
	pop af                                           ; $5f6e: $f1
	sub d                                            ; $5f6f: $92
	and $00                                          ; $5f70: $e6 $00
	ret nz                                           ; $5f72: $c0

	ret nz                                           ; $5f73: $c0

	adc h                                            ; $5f74: $8c
	add b                                            ; $5f75: $80
	ld b, b                                          ; $5f76: $40

Jump_04d_5f77:
	and h                                            ; $5f77: $a4
	ld [hl], d                                       ; $5f78: $72
	xor d                                            ; $5f79: $aa
	push af                                          ; $5f7a: $f5
	ld a, [$79ff]                                    ; $5f7b: $fa $ff $79
	inc bc                                           ; $5f7e: $03
	add b                                            ; $5f7f: $80
	rst $38                                          ; $5f80: $ff
	ld [$1ac5], a                                    ; $5f81: $ea $c5 $1a
	dec e                                            ; $5f84: $1d
	adc e                                            ; $5f85: $8b
	push af                                          ; $5f86: $f5
	sbc $ae                                          ; $5f87: $de $ae
	rra                                              ; $5f89: $1f
	ccf                                              ; $5f8a: $3f
	rst $38                                          ; $5f8b: $ff
	rst $38                                          ; $5f8c: $ff
	ld a, [hl]                                       ; $5f8d: $7e
	ld c, $20                                        ; $5f8e: $0e $20
	ld a, b                                          ; $5f90: $78
	ldh a, [$f0]                                     ; $5f91: $f0 $f0
	ret c                                            ; $5f93: $d8

	sbc b                                            ; $5f94: $98
	ret z                                            ; $5f95: $c8

	nop                                              ; $5f96: $00
	ld h, c                                          ; $5f97: $61
	di                                               ; $5f98: $f3
	and b                                            ; $5f99: $a0
	ld c, b                                          ; $5f9a: $48
	and h                                            ; $5f9b: $a4
	ld b, b                                          ; $5f9c: $40
	db $10                                           ; $5f9d: $10
	pop bc                                           ; $5f9e: $c1
	sbc [hl]                                         ; $5f9f: $9e
	ld [de], a                                       ; $5fa0: $12
	ld l, b                                          ; $5fa1: $68
	and a                                            ; $5fa2: $a7
	rst $38                                          ; $5fa3: $ff
	ld a, [hl]                                       ; $5fa4: $7e
	add $9c                                          ; $5fa5: $c6 $9c
	ld d, a                                          ; $5fa7: $57
	xor e                                            ; $5fa8: $ab
	rst SubAFromHL                                          ; $5fa9: $d7
	ld a, e                                          ; $5faa: $7b
	cp $97                                           ; $5fab: $fe $97
	ld e, $0e                                        ; $5fad: $1e $0e
	ld d, $0e                                        ; $5faf: $16 $0e
	ld b, $0f                                        ; $5fb1: $06 $0f
	rlca                                             ; $5fb3: $07
	dec bc                                           ; $5fb4: $0b
	reti                                             ; $5fb5: $d9


	db $fc                                           ; $5fb6: $fc
	sub h                                            ; $5fb7: $94
	rlca                                             ; $5fb8: $07
	rra                                              ; $5fb9: $1f
	rlca                                             ; $5fba: $07
	xor a                                            ; $5fbb: $af
	rst SubAFromHL                                          ; $5fbc: $d7
	xor b                                            ; $5fbd: $a8
	ld e, h                                          ; $5fbe: $5c
	xor a                                            ; $5fbf: $af
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	sbc b                                            ; $5fc2: $98
	ld a, b                                          ; $5fc3: $78
	add b                                            ; $5fc4: $80
	sbc [hl]                                         ; $5fc5: $9e
	rrca                                             ; $5fc6: $0f
	ld a, d                                          ; $5fc7: $7a
	rst FarCall                                          ; $5fc8: $f7
	sbc c                                            ; $5fc9: $99
	jr nz, jr_04d_603d                               ; $5fca: $20 $71

	ld l, d                                          ; $5fcc: $6a
	ld c, l                                          ; $5fcd: $4d
	add [hl]                                         ; $5fce: $86
	ret                                              ; $5fcf: $c9


	ld a, e                                          ; $5fd0: $7b
	sbc b                                            ; $5fd1: $98
	sub d                                            ; $5fd2: $92
	ldh [$f8], a                                     ; $5fd3: $e0 $f8
	ld hl, sp+$78                                    ; $5fd5: $f8 $78
	ld [hl], h                                       ; $5fd7: $74
	ld [$c808], sp                                   ; $5fd8: $08 $08 $c8
	ld e, b                                          ; $5fdb: $58
	ld a, h                                          ; $5fdc: $7c
	ld h, d                                          ; $5fdd: $62
	jp $fe60                                         ; $5fde: $c3 $60 $fe


	sub e                                            ; $5fe1: $93
	and b                                            ; $5fe2: $a0
	add b                                            ; $5fe3: $80
	inc e                                            ; $5fe4: $1c
	inc a                                            ; $5fe5: $3c
	rra                                              ; $5fe6: $1f
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	dec d                                            ; $5fe9: $15
	ld a, [hl+]                                      ; $5fea: $2a
	nop                                              ; $5feb: $00
	jr nz, jr_04d_5fee                               ; $5fec: $20 $00

jr_04d_5fee:
	ld [hl], c                                       ; $5fee: $71
	adc e                                            ; $5fef: $8b
	ld a, d                                          ; $5ff0: $7a
	xor a                                            ; $5ff1: $af
	sbc e                                            ; $5ff2: $9b
	ld hl, $40c0                                     ; $5ff3: $21 $c0 $40
	push de                                          ; $5ff6: $d5
	db $fd                                           ; $5ff7: $fd
	ld a, [hl]                                       ; $5ff8: $7e
	cp l                                             ; $5ff9: $bd
	sbc l                                            ; $5ffa: $9d
	ccf                                              ; $5ffb: $3f
	ld a, [hl+]                                      ; $5ffc: $2a
	ld [hl], c                                       ; $5ffd: $71
	ld a, c                                          ; $5ffe: $79
	rst $38                                          ; $5fff: $ff
	ld a, [hl]                                       ; $6000: $7e
	push hl                                          ; $6001: $e5
	ld [hl], e                                       ; $6002: $73
	ldh a, [$9e]                                     ; $6003: $f0 $9e
	rst $38                                          ; $6005: $ff
	ld a, d                                          ; $6006: $7a
	xor d                                            ; $6007: $aa
	ld a, e                                          ; $6008: $7b
	ldh a, [hDisp0_SCY]                                     ; $6009: $f0 $83
	ld a, [de]                                       ; $600b: $1a
	dec d                                            ; $600c: $15
	dec hl                                           ; $600d: $2b
	ld e, [hl]                                       ; $600e: $5e
	ld b, c                                          ; $600f: $41
	and b                                            ; $6010: $a0
	ld a, [hl]                                       ; $6011: $7e
	cp l                                             ; $6012: $bd
	ld bc, $80c0                                     ; $6013: $01 $c0 $80
	add hl, bc                                       ; $6016: $09
	rrca                                             ; $6017: $0f
	rlca                                             ; $6018: $07
	rlca                                             ; $6019: $07
	dec de                                           ; $601a: $1b
	add b                                            ; $601b: $80
	add h                                            ; $601c: $84
	and e                                            ; $601d: $a3
	and l                                            ; $601e: $a5
	xor e                                            ; $601f: $ab
	push de                                          ; $6020: $d5
	rst SubAFromBC                                          ; $6021: $e7
	xor h                                            ; $6022: $ac
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	ld b, b                                          ; $6025: $40
	ld b, b                                          ; $6026: $40
	ld a, e                                          ; $6027: $7b
	sbc [hl]                                         ; $6028: $9e
	adc a                                            ; $6029: $8f
	di                                               ; $602a: $f3
	pop af                                           ; $602b: $f1
	pop hl                                           ; $602c: $e1
	call nz, $9092                                   ; $602d: $c4 $92 $90
	db $ec                                           ; $6030: $ec
	add sp, -$30                                     ; $6031: $e8 $d0
	ld [bc], a                                       ; $6033: $02
	jr @+$3b                                         ; $6034: $18 $39

	ld l, l                                          ; $6036: $6d
	ld a, a                                          ; $6037: $7f
	inc sp                                           ; $6038: $33
	ld [hl], a                                       ; $6039: $77
	ld h, b                                          ; $603a: $60
	xor b                                            ; $603b: $a8
	ld a, [hl]                                       ; $603c: $7e

jr_04d_603d:
	add $9c                                          ; $603d: $c6 $9c
	ld e, a                                          ; $603f: $5f
	xor a                                            ; $6040: $af
	ld d, a                                          ; $6041: $57
	ld a, e                                          ; $6042: $7b
	cp $97                                           ; $6043: $fe $97
	add hl, sp                                       ; $6045: $39
	ld d, [hl]                                       ; $6046: $56
	cpl                                              ; $6047: $2f
	ld e, a                                          ; $6048: $5f
	jr nz, jr_04d_60a7                               ; $6049: $20 $5c

	scf                                              ; $604b: $37
	ld h, h                                          ; $604c: $64
	sbc $ff                                          ; $604d: $de $ff
	rst SubAFromDE                                          ; $604f: $df
	ldh [$9a], a                                     ; $6050: $e0 $9a
	db $e3                                           ; $6052: $e3
	ldh [c], a                                       ; $6053: $e2
	jp nz, Jump_04d_4bb7                             ; $6054: $c2 $b7 $4b

	ld a, b                                          ; $6057: $78
	add h                                            ; $6058: $84
	rst SubAFromDE                                          ; $6059: $df
	ret nz                                           ; $605a: $c0

	sbc h                                            ; $605b: $9c
	jp nc, $bd4a                                     ; $605c: $d2 $4a $bd

	ld a, e                                          ; $605f: $7b
	push de                                          ; $6060: $d5
	sbc d                                            ; $6061: $9a
	add b                                            ; $6062: $80
	sbc e                                            ; $6063: $9b
	adc b                                            ; $6064: $88
	push hl                                          ; $6065: $e5
	dec [hl]                                         ; $6066: $35
	ld a, e                                          ; $6067: $7b
	ldh a, [$9a]                                     ; $6068: $f0 $9a
	ld bc, $0102                                     ; $606a: $01 $02 $01
	ld e, d                                          ; $606d: $5a
	jp z, $f07b                                      ; $606e: $ca $7b $f0

	sub d                                            ; $6071: $92
	inc bc                                           ; $6072: $03
	inc de                                           ; $6073: $13
	ret c                                            ; $6074: $d8

	push af                                          ; $6075: $f5
	ld [hl+], a                                      ; $6076: $22
	rst $38                                          ; $6077: $ff
	rst $38                                          ; $6078: $ff
	inc bc                                           ; $6079: $03
	ld a, h                                          ; $607a: $7c
	add a                                            ; $607b: $87
	inc bc                                           ; $607c: $03
	adc b                                            ; $607d: $88
	call c, $f07b                                    ; $607e: $dc $7b $f0
	sbc $83                                          ; $6081: $de $83
	sub e                                            ; $6083: $93
	xor [hl]                                         ; $6084: $ae
	add l                                            ; $6085: $85
	jp z, $b2e5                                      ; $6086: $ca $e5 $b2

	db $f4                                           ; $6089: $f4
	db $e3                                           ; $608a: $e3
	ld b, e                                          ; $608b: $43
	rst SubAFromDE                                          ; $608c: $df
	rst $38                                          ; $608d: $ff
	ld a, a                                          ; $608e: $7f
	ld a, e                                          ; $608f: $7b
	ld [hl], l                                       ; $6090: $75
	ld a, a                                          ; $6091: $7f
	sub l                                            ; $6092: $95
	adc d                                            ; $6093: $8a
	or a                                             ; $6094: $b7
	rst GetHLinHL                                          ; $6095: $cf
	ld e, a                                          ; $6096: $5f
	rst SubAFromDE                                          ; $6097: $df
	xor $ad                                          ; $6098: $ee $ad
	db $ec                                           ; $609a: $ec
	ld [hl], a                                       ; $609b: $77
	rst SubAFromDE                                          ; $609c: $df
	call c, $92ff                                    ; $609d: $dc $ff $92
	ccf                                              ; $60a0: $3f
	ld a, [hl]                                       ; $60a1: $7e
	rst AddAOntoHL                                          ; $60a2: $ef
	ld [hl], c                                       ; $60a3: $71
	xor a                                            ; $60a4: $af
	add [hl]                                         ; $60a5: $86
	ei                                               ; $60a6: $fb

jr_04d_60a7:
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	ld hl, sp-$08                                    ; $60a9: $f8 $f8
	sbc $de                                          ; $60ab: $de $de
	ld [hl], h                                       ; $60ad: $74
	add hl, hl                                       ; $60ae: $29
	sub b                                            ; $60af: $90
	ld a, c                                          ; $60b0: $79
	ldh [$e9], a                                     ; $60b1: $e0 $e9
	push de                                          ; $60b3: $d5
	xor c                                            ; $60b4: $a9
	dec sp                                           ; $60b5: $3b
	stop                                             ; $60b6: $10 $00
	add [hl]                                         ; $60b8: $86
	rra                                              ; $60b9: $1f
	rra                                              ; $60ba: $1f
	ccf                                              ; $60bb: $3f
	ld [hl], a                                       ; $60bc: $77
	rst SubAFromBC                                          ; $60bd: $e7
	rst AddAOntoHL                                          ; $60be: $ef
	halt                                             ; $60bf: $76
	ld sp, $878a                                     ; $60c0: $31 $8a $87
	add [hl]                                         ; $60c3: $86
	ret nz                                           ; $60c4: $c0

	ld b, c                                          ; $60c5: $41
	rla                                              ; $60c6: $17
	ld d, a                                          ; $60c7: $57
	dec hl                                           ; $60c8: $2b
	ld e, a                                          ; $60c9: $5f
	ld a, a                                          ; $60ca: $7f
	rst $38                                          ; $60cb: $ff
	push af                                          ; $60cc: $f5
	cp l                                             ; $60cd: $bd
	ccf                                              ; $60ce: $3f
	dec b                                            ; $60cf: $05
	add hl, bc                                       ; $60d0: $09
	dec b                                            ; $60d1: $05
	adc c                                            ; $60d2: $89
	ld b, l                                          ; $60d3: $45
	ld l, c                                          ; $60d4: $69
	push hl                                          ; $60d5: $e5
	xor c                                            ; $60d6: $a9
	reti                                             ; $60d7: $d9


	cp $93                                           ; $60d8: $fe $93
	ld h, a                                          ; $60da: $67
	ld a, c                                          ; $60db: $79
	ld l, l                                          ; $60dc: $6d
	add hl, de                                       ; $60dd: $19
	dec hl                                           ; $60de: $2b
	ld d, a                                          ; $60df: $57
	cp a                                             ; $60e0: $bf
	ld a, l                                          ; $60e1: $7d
	ld bc, $8b87                                     ; $60e2: $01 $87 $8b
	rst $38                                          ; $60e5: $ff
	ld [hl], l                                       ; $60e6: $75
	ld e, $7d                                        ; $60e7: $1e $7d
	inc c                                            ; $60e9: $0c
	add b                                            ; $60ea: $80
	rst AddAOntoHL                                          ; $60eb: $ef
	di                                               ; $60ec: $f3
	rst SubAFromBC                                          ; $60ed: $e7
	xor a                                            ; $60ee: $af
	rst AddAOntoHL                                          ; $60ef: $ef
	rst AddAOntoHL                                          ; $60f0: $ef
	xor [hl]                                         ; $60f1: $ae
	jp nc, $fe70                                     ; $60f2: $d2 $70 $fe

	db $fd                                           ; $60f5: $fd
	di                                               ; $60f6: $f3
	push af                                          ; $60f7: $f5
	sub d                                            ; $60f8: $92
	rst $38                                          ; $60f9: $ff
	rst AddAOntoHL                                          ; $60fa: $ef
	sbc $e6                                          ; $60fb: $de $e6
	db $fd                                           ; $60fd: $fd
	db $fd                                           ; $60fe: $fd

Call_04d_60ff:
	rst $38                                          ; $60ff: $ff
	cp $48                                           ; $6100: $fe $48
	ld d, b                                          ; $6102: $50
	dec [hl]                                         ; $6103: $35
	add hl, sp                                       ; $6104: $39
	ld e, d                                          ; $6105: $5a
	ldh [c], a                                       ; $6106: $e2
	ret nc                                           ; $6107: $d0

	and c                                            ; $6108: $a1
	ld d, d                                          ; $6109: $52
	adc l                                            ; $610a: $8d
	ret z                                            ; $610b: $c8

	ld a, d                                          ; $610c: $7a
	ld b, c                                          ; $610d: $41
	ld bc, $160c                                     ; $610e: $01 $0c $16
	halt                                             ; $6111: $76
	ld hl, $9133                                     ; $6112: $21 $33 $91
	or b                                             ; $6115: $b0
	ldh a, [$f7]                                     ; $6116: $f0 $f7
	cp $ee                                           ; $6118: $fe $ee
	ld d, l                                          ; $611a: $55
	and b                                            ; $611b: $a0
	ld b, b                                          ; $611c: $40
	sbc $ff                                          ; $611d: $de $ff
	rst SubAFromDE                                          ; $611f: $df
	ret nz                                           ; $6120: $c0

	ld sp, hl                                        ; $6121: $f9
	ld a, l                                          ; $6122: $7d
	cp [hl]                                          ; $6123: $be
	sub h                                            ; $6124: $94
	dec bc                                           ; $6125: $0b
	ld b, $23                                        ; $6126: $06 $23
	ld h, a                                          ; $6128: $67
	ld a, a                                          ; $6129: $7f
	dec a                                            ; $612a: $3d
	nop                                              ; $612b: $00
	ld bc, $d004                                     ; $612c: $01 $04 $d0
	nop                                              ; $612f: $00
	sbc $18                                          ; $6130: $de $18
	rst SubAFromDE                                          ; $6132: $df
	rst $38                                          ; $6133: $ff
	add a                                            ; $6134: $87
	xor a                                            ; $6135: $af
	cp $77                                           ; $6136: $fe $77
	db $d3                                           ; $6138: $d3
	rst $38                                          ; $6139: $ff
	rst $38                                          ; $613a: $ff
	inc [hl]                                         ; $613b: $34
	ld hl, sp+$70                                    ; $613c: $f8 $70
	ld [hl], c                                       ; $613e: $71
	db $ed                                           ; $613f: $ed
	cpl                                              ; $6140: $2f
	rrca                                             ; $6141: $0f
	inc c                                            ; $6142: $0c
	and l                                            ; $6143: $a5
	rst AddAOntoHL                                          ; $6144: $ef
	ld [hl], a                                       ; $6145: $77
	and b                                            ; $6146: $a0
	ld d, b                                          ; $6147: $50
	or e                                             ; $6148: $b3
	pop af                                           ; $6149: $f1
	db $fd                                           ; $614a: $fd
	ld e, a                                          ; $614b: $5f
	rra                                              ; $614c: $1f
	ld [hl], e                                       ; $614d: $73
	ccf                                              ; $614e: $3f
	sub [hl]                                         ; $614f: $96
	ld [hl], e                                       ; $6150: $73
	add sp, -$08                                     ; $6151: $e8 $f8
	push af                                          ; $6153: $f5
	ld e, d                                          ; $6154: $5a
	cp l                                             ; $6155: $bd
	ld e, h                                          ; $6156: $5c
	cp [hl]                                          ; $6157: $be
	ld a, d                                          ; $6158: $7a
	sbc $ff                                          ; $6159: $de $ff
	sbc l                                            ; $615b: $9d
	rst FarCall                                          ; $615c: $f7
	db $eb                                           ; $615d: $eb
	ld [hl], a                                       ; $615e: $77
	ccf                                              ; $615f: $3f
	ld h, [hl]                                       ; $6160: $66
	db $10                                           ; $6161: $10
	ld [hl], d                                       ; $6162: $72
	jp nz, $fe7f                                     ; $6163: $c2 $7f $fe

	adc h                                            ; $6166: $8c
	inc h                                            ; $6167: $24
	ld h, h                                          ; $6168: $64
	daa                                              ; $6169: $27
	ld h, h                                          ; $616a: $64
	ld [hl+], a                                      ; $616b: $22
	ld h, l                                          ; $616c: $65
	jr nz, jr_04d_61cf                               ; $616d: $20 $60

	ldh [c], a                                       ; $616f: $e2
	jp $c3e3                                         ; $6170: $c3 $e3 $c3


	db $e4                                           ; $6173: $e4
	ret nz                                           ; $6174: $c0

	ldh [$c0], a                                     ; $6175: $e0 $c0
	ret nz                                           ; $6177: $c0

	jp z, Jump_04d_79c0                              ; $6178: $ca $c0 $79

	inc c                                            ; $617b: $0c
	ld a, h                                          ; $617c: $7c
	sbc [hl]                                         ; $617d: $9e
	sbc $80                                          ; $617e: $de $80
	sbc [hl]                                         ; $6180: $9e
	rst $38                                          ; $6181: $ff
	halt                                             ; $6182: $76
	ld d, [hl]                                       ; $6183: $56
	sbc c                                            ; $6184: $99
	ld [bc], a                                       ; $6185: $02
	cp c                                             ; $6186: $b9
	inc bc                                           ; $6187: $03
	dec c                                            ; $6188: $0d
	and b                                            ; $6189: $a0
	ld b, b                                          ; $618a: $40
	ld [hl], a                                       ; $618b: $77
	rst FarCall                                          ; $618c: $f7
	sbc e                                            ; $618d: $9b
	ld bc, $50f0                                     ; $618e: $01 $f0 $50
	and b                                            ; $6191: $a0
	ld a, d                                          ; $6192: $7a
	cp l                                             ; $6193: $bd
	sub h                                            ; $6194: $94
	rlca                                             ; $6195: $07
	add a                                            ; $6196: $87
	rlca                                             ; $6197: $07
	add l                                            ; $6198: $85

Jump_04d_6199:
	inc bc                                           ; $6199: $03
	nop                                              ; $619a: $00
	nop                                              ; $619b: $00
	add d                                            ; $619c: $82
	inc bc                                           ; $619d: $03
	inc bc                                           ; $619e: $03
	add e                                            ; $619f: $83
	ld a, e                                          ; $61a0: $7b
	ld sp, hl                                        ; $61a1: $f9
	sbc c                                            ; $61a2: $99
	nop                                              ; $61a3: $00
	set 3, a                                         ; $61a4: $cb $df
	ld a, a                                          ; $61a6: $7f
	rst $38                                          ; $61a7: $ff
	ccf                                              ; $61a8: $3f
	ld a, d                                          ; $61a9: $7a
	sbc [hl]                                         ; $61aa: $9e
	sbc l                                            ; $61ab: $9d
	di                                               ; $61ac: $f3
	ei                                               ; $61ad: $fb
	ld [hl], a                                       ; $61ae: $77
	and e                                            ; $61af: $a3
	ld [hl], l                                       ; $61b0: $75
	sbc d                                            ; $61b1: $9a
	sub h                                            ; $61b2: $94
	rst AddAOntoHL                                          ; $61b3: $ef
	rst FarCall                                          ; $61b4: $f7
	db $fd                                           ; $61b5: $fd
	rst FarCall                                          ; $61b6: $f7
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	ld a, $7e                                        ; $61b9: $3e $7e
	db $fc                                           ; $61bb: $fc
	db $ec                                           ; $61bc: $ec
	and $74                                          ; $61bd: $e6 $74
	rst GetHLinHL                                          ; $61bf: $cf
	ld a, [hl]                                       ; $61c0: $7e
	adc $80                                          ; $61c1: $ce $80
	inc [hl]                                         ; $61c3: $34
	jr z, jr_04d_6213                                ; $61c4: $28 $4d

	ld c, c                                          ; $61c6: $49
	ld [hl], a                                       ; $61c7: $77
	nop                                              ; $61c8: $00
	nop                                              ; $61c9: $00
	cp [hl]                                          ; $61ca: $be
	ld a, a                                          ; $61cb: $7f
	ld a, a                                          ; $61cc: $7f
	ld a, [hl]                                       ; $61cd: $7e
	ld a, [hl]                                       ; $61ce: $7e

jr_04d_61cf:
	ld e, h                                          ; $61cf: $5c
	nop                                              ; $61d0: $00
	nop                                              ; $61d1: $00
	ld b, c                                          ; $61d2: $41
	rst AddAOntoHL                                          ; $61d3: $ef
	or a                                             ; $61d4: $b7
	sbc d                                            ; $61d5: $9a
	adc e                                            ; $61d6: $8b
	ld a, [rRAMG]                                    ; $61d7: $fa $00 $00
	rst FarCall                                          ; $61da: $f7
	inc sp                                           ; $61db: $33
	ld c, a                                          ; $61dc: $4f
	ld l, l                                          ; $61dd: $6d
	ld [hl], b                                       ; $61de: $70
	inc b                                            ; $61df: $04
	rra                                              ; $61e0: $1f
	ld a, $94                                        ; $61e1: $3e $94
	sbc $c8                                          ; $61e3: $de $c8
	ld c, $ff                                        ; $61e5: $0e $ff
	rst $38                                          ; $61e7: $ff
	cp a                                             ; $61e8: $bf
	ccf                                              ; $61e9: $3f
	rra                                              ; $61ea: $1f
	ld c, $de                                        ; $61eb: $0e $de
	pop de                                           ; $61ed: $d1
	sbc $c0                                          ; $61ee: $de $c0
	add b                                            ; $61f0: $80
	dec b                                            ; $61f1: $05
	ld l, c                                          ; $61f2: $69
	dec h                                            ; $61f3: $25
	ld c, l                                          ; $61f4: $4d
	push bc                                          ; $61f5: $c5
	xor l                                            ; $61f6: $ad
	push de                                          ; $61f7: $d5
	reti                                             ; $61f8: $d9


	ld a, $3e                                        ; $61f9: $3e $3e
	ld e, [hl]                                       ; $61fb: $5e
	cp $fe                                           ; $61fc: $fe $fe
	ld a, [hl]                                       ; $61fe: $7e
	ld a, $3e                                        ; $61ff: $3e $3e
	cp a                                             ; $6201: $bf
	ld c, d                                          ; $6202: $4a
	push af                                          ; $6203: $f5
	jp c, $aa95                                      ; $6204: $da $95 $aa

	ld e, [hl]                                       ; $6207: $5e
	rst $38                                          ; $6208: $ff
	db $fd                                           ; $6209: $fd
	db $fd                                           ; $620a: $fd
	xor a                                            ; $620b: $af
	daa                                              ; $620c: $27
	ld h, [hl]                                       ; $620d: $66
	ld a, a                                          ; $620e: $7f
	ld a, a                                          ; $620f: $7f
	sub l                                            ; $6210: $95
	inc c                                            ; $6211: $0c
	ld b, c                                          ; $6212: $41

jr_04d_6213:
	jp z, $aa44                                      ; $6213: $ca $44 $aa

	ld b, b                                          ; $6216: $40
	cp c                                             ; $6217: $b9
	ld l, a                                          ; $6218: $6f
	ld a, [hl]                                       ; $6219: $7e
	cp a                                             ; $621a: $bf

jr_04d_621b:
	ld a, e                                          ; $621b: $7b
	sub [hl]                                         ; $621c: $96
	adc [hl]                                         ; $621d: $8e
	rst $38                                          ; $621e: $ff
	ldh [c], a                                       ; $621f: $e2
	add e                                            ; $6220: $83
	dec c                                            ; $6221: $0d
	ld e, c                                          ; $6222: $59
	inc sp                                           ; $6223: $33
	ld c, [hl]                                       ; $6224: $4e
	cp l                                             ; $6225: $bd
	ld a, e                                          ; $6226: $7b
	rst SubAFromHL                                          ; $6227: $d7
	xor [hl]                                         ; $6228: $ae
	ld [hl], l                                       ; $6229: $75
	rst $38                                          ; $622a: $ff
	cp $fc                                           ; $622b: $fe $fc
	ldh a, [$e0]                                     ; $622d: $f0 $e0
	ld a, e                                          ; $622f: $7b
	sub d                                            ; $6230: $92
	ld a, h                                          ; $6231: $7c
	or d                                             ; $6232: $b2
	adc [hl]                                         ; $6233: $8e
	and [hl]                                         ; $6234: $a6
	ld d, a                                          ; $6235: $57
	and c                                            ; $6236: $a1
	ld b, e                                          ; $6237: $43
	and l                                            ; $6238: $a5
	ld bc, $07c7                                     ; $6239: $01 $c7 $07
	rrca                                             ; $623c: $0f
	rrca                                             ; $623d: $0f
	add hl, bc                                       ; $623e: $09
	ld bc, $0400                                     ; $623f: $01 $00 $04
	ret nz                                           ; $6242: $c0

	ret nz                                           ; $6243: $c0

	jp nz, $c1de                                     ; $6244: $c2 $de $c1

	ld a, l                                          ; $6247: $7d
	and e                                            ; $6248: $a3
	ld a, e                                          ; $6249: $7b
	push hl                                          ; $624a: $e5
	add b                                            ; $624b: $80
	add b                                            ; $624c: $80
	ret nz                                           ; $624d: $c0

	add c                                            ; $624e: $81
	add c                                            ; $624f: $81
	ld b, d                                          ; $6250: $42
	dec b                                            ; $6251: $05
	inc bc                                           ; $6252: $03
	and e                                            ; $6253: $a3
	and c                                            ; $6254: $a1
	add h                                            ; $6255: $84
	ld hl, sp-$08                                    ; $6256: $f8 $f8
	inc a                                            ; $6258: $3c
	jr z, jr_04d_629f                                ; $6259: $28 $44

	inc b                                            ; $625b: $04
	inc b                                            ; $625c: $04
	jr z, jr_04d_621b                                ; $625d: $28 $bc

	cp h                                             ; $625f: $bc
	ld a, b                                          ; $6260: $78
	cp a                                             ; $6261: $bf
	inc de                                           ; $6262: $13
	rra                                              ; $6263: $1f
	ld [$2a55], a                                    ; $6264: $ea $55 $2a
	add a                                            ; $6267: $87
	ld h, d                                          ; $6268: $62
	inc b                                            ; $6269: $04
	and h                                            ; $626a: $a4
	sbc [hl]                                         ; $626b: $9e
	ldh [$fc], a                                     ; $626c: $e0 $fc
	ld a, b                                          ; $626e: $78
	res 1, d                                         ; $626f: $cb $8a
	db $fd                                           ; $6271: $fd
	ld a, [$be57]                                    ; $6272: $fa $57 $be
	ld [hl], a                                       ; $6275: $77
	cpl                                              ; $6276: $2f
	ccf                                              ; $6277: $3f
	jr nz, jr_04d_62c1                               ; $6278: $20 $47

	rlca                                             ; $627a: $07
	rst $38                                          ; $627b: $ff
	rst $38                                          ; $627c: $ff
	db $fd                                           ; $627d: $fd
	inc e                                            ; $627e: $1c
	xor d                                            ; $627f: $aa

Call_04d_6280:
	ld d, l                                          ; $6280: $55
	ld h, d                                          ; $6281: $62
	ld hl, sp-$08                                    ; $6282: $f8 $f8
	ret nc                                           ; $6284: $d0

	ld [$ffd9], a                                    ; $6285: $ea $d9 $ff
	ld e, [hl]                                       ; $6288: $5e
	ret nz                                           ; $6289: $c0

	ld a, l                                          ; $628a: $7d
	add b                                            ; $628b: $80
	ld a, e                                          ; $628c: $7b
	cp $9c                                           ; $628d: $fe $9c
	cp a                                             ; $628f: $bf
	jr nz, jr_04d_62f2                               ; $6290: $20 $60

	ld [hl], a                                       ; $6292: $77
	cp $9c                                           ; $6293: $fe $9c
	inc hl                                           ; $6295: $23
	ld h, e                                          ; $6296: $63
	ldh [$7a], a                                     ; $6297: $e0 $7a
	call nz, $e087                                   ; $6299: $c4 $87 $e0
	call nz, $c7e6                                   ; $629c: $c4 $e6 $c7

jr_04d_629f:
	db $10                                           ; $629f: $10
	ld a, [hl-]                                      ; $62a0: $3a
	ccf                                              ; $62a1: $3f
	ld a, [de]                                       ; $62a2: $1a
	dec e                                            ; $62a3: $1d
	ld b, [hl]                                       ; $62a4: $46
	add c                                            ; $62a5: $81
	ld [hl+], a                                      ; $62a6: $22
	jr c, @+$81                                      ; $62a7: $38 $7f

	ccf                                              ; $62a9: $3f
	rra                                              ; $62aa: $1f
	ld a, a                                          ; $62ab: $7f
	ld a, e                                          ; $62ac: $7b
	cp $ff                                           ; $62ad: $fe $ff
	nop                                              ; $62af: $00
	db $10                                           ; $62b0: $10
	ldh [$f0], a                                     ; $62b1: $e0 $f0
	db $fc                                           ; $62b3: $fc
	ld a, a                                          ; $62b4: $7f
	ld sp, hl                                        ; $62b5: $f9
	rst SubAFromDE                                          ; $62b6: $df
	ldh a, [$7b]                                     ; $62b7: $f0 $7b
	and c                                            ; $62b9: $a1
	sbc [hl]                                         ; $62ba: $9e
	ld [bc], a                                       ; $62bb: $02
	jp c, Jump_04d_7e07                              ; $62bc: $da $07 $7e

	or b                                             ; $62bf: $b0
	sbc [hl]                                         ; $62c0: $9e

jr_04d_62c1:
	inc bc                                           ; $62c1: $03
	ld a, e                                          ; $62c2: $7b
	cp $94                                           ; $62c3: $fe $94
	inc sp                                           ; $62c5: $33
	di                                               ; $62c6: $f3
	dec hl                                           ; $62c7: $2b
	rst $38                                          ; $62c8: $ff
	pop hl                                           ; $62c9: $e1
	ret nz                                           ; $62ca: $c0

	ret nz                                           ; $62cb: $c0

	pop bc                                           ; $62cc: $c1
	ldh [c], a                                       ; $62cd: $e2
	pop hl                                           ; $62ce: $e1
	ld a, a                                          ; $62cf: $7f
	ld a, c                                          ; $62d0: $79
	jp nz, Jump_04d_6199                             ; $62d1: $c2 $99 $61

	and e                                            ; $62d4: $a3
	ld d, a                                          ; $62d5: $57
	or c                                             ; $62d6: $b1
	add b                                            ; $62d7: $80
	rst SubAFromBC                                          ; $62d8: $e7
	ld a, c                                          ; $62d9: $79
	rst SubAFromDE                                          ; $62da: $df
	sbc [hl]                                         ; $62db: $9e
	sub e                                            ; $62dc: $93
	ld a, d                                          ; $62dd: $7a
	cp b                                             ; $62de: $b8
	jp c, $9cfe                                      ; $62df: $da $fe $9c

	dec hl                                           ; $62e2: $2b
	inc hl                                           ; $62e3: $23
	inc de                                           ; $62e4: $13
	cp $9a                                           ; $62e5: $fe $9a
	ccf                                              ; $62e7: $3f
	ld a, a                                          ; $62e8: $7f
	ld a, h                                          ; $62e9: $7c
	ld a, l                                          ; $62ea: $7d
	ld l, l                                          ; $62eb: $6d
	cp $8d                                           ; $62ec: $fe $8d
	ret nz                                           ; $62ee: $c0

	cp e                                             ; $62ef: $bb
	ld h, e                                          ; $62f0: $63
	cp [hl]                                          ; $62f1: $be

jr_04d_62f2:
	ld a, [hl]                                       ; $62f2: $7e
	dec bc                                           ; $62f3: $0b
	dec bc                                           ; $62f4: $0b
	dec b                                            ; $62f5: $05
	push af                                          ; $62f6: $f5
	db $e4                                           ; $62f7: $e4
	add h                                            ; $62f8: $84
	push bc                                          ; $62f9: $c5
	add l                                            ; $62fa: $85
	dec b                                            ; $62fb: $05
	dec b                                            ; $62fc: $05
	dec bc                                           ; $62fd: $0b
	dec bc                                           ; $62fe: $0b
	dec de                                           ; $62ff: $1b
	ld a, b                                          ; $6300: $78
	ld a, [hl+]                                      ; $6301: $2a
	add b                                            ; $6302: $80
	ld a, e                                          ; $6303: $7b
	ld [hl], a                                       ; $6304: $77
	rst SubAFromBC                                          ; $6305: $e7
	rst SubAFromHL                                          ; $6306: $d7
	rst AddAOntoHL                                          ; $6307: $ef
	add b                                            ; $6308: $80
	add b                                            ; $6309: $80
	add c                                            ; $630a: $81
	add l                                            ; $630b: $85
	adc c                                            ; $630c: $89
	add hl, de                                       ; $630d: $19
	add hl, hl                                       ; $630e: $29
	ld de, $57d0                                     ; $630f: $11 $d0 $57
	db $db                                           ; $6312: $db
	ld d, e                                          ; $6313: $53
	ld c, c                                          ; $6314: $49
	call Call_04d_50d5                               ; $6315: $cd $d5 $50
	inc a                                            ; $6318: $3c
	cp h                                             ; $6319: $bc
	or b                                             ; $631a: $b0
	cp b                                             ; $631b: $b8
	or d                                             ; $631c: $b2
	ld [hl], $3e                                     ; $631d: $36 $3e
	cp [hl]                                          ; $631f: $be
	rst GetHLinHL                                          ; $6320: $cf
	add $87                                          ; $6321: $c6 $87
	ld b, l                                          ; $6323: $45
	dec bc                                           ; $6324: $0b
	ld e, a                                          ; $6325: $5f
	xor l                                            ; $6326: $ad
	ld bc, $2000                                     ; $6327: $01 $00 $20
	ld de, $1f2f                                     ; $632a: $11 $2f $1f
	rst $38                                          ; $632d: $ff

jr_04d_632e:
	cp $00                                           ; $632e: $fe $00
	ld bc, $f8fc                                     ; $6330: $01 $fc $f8
	push af                                          ; $6333: $f5
	db $ed                                           ; $6334: $ed
	ld e, l                                          ; $6335: $5d
	cp l                                             ; $6336: $bd
	ld [hl], l                                       ; $6337: $75
	jp hl                                            ; $6338: $e9


	dec sp                                           ; $6339: $3b
	ld [hl], b                                       ; $633a: $70
	ld l, l                                          ; $633b: $6d
	xor l                                            ; $633c: $ad
	sbc l                                            ; $633d: $9d
	ld l, b                                          ; $633e: $68
	ret nc                                           ; $633f: $d0

	halt                                             ; $6340: $76
	jp z, $019d                                      ; $6341: $ca $9d $01

	add h                                            ; $6344: $84
	ld a, d                                          ; $6345: $7a
	pop hl                                           ; $6346: $e1
	sbc $80                                          ; $6347: $de $80
	rst SubAFromDE                                          ; $6349: $df
	ret nz                                           ; $634a: $c0

	sub e                                            ; $634b: $93
	add hl, bc                                       ; $634c: $09
	dec c                                            ; $634d: $0d
	rrca                                             ; $634e: $0f
	rrca                                             ; $634f: $0f
	nop                                              ; $6350: $00
	jr z, jr_04d_63a5                                ; $6351: $28 $52

	and b                                            ; $6353: $a0
	inc b                                            ; $6354: $04
	inc b                                            ; $6355: $04
	inc e                                            ; $6356: $1c
	db $10                                           ; $6357: $10
	db $fd                                           ; $6358: $fd
	sbc [hl]                                         ; $6359: $9e
	sub b                                            ; $635a: $90
	sbc $a1                                          ; $635b: $de $a1
	add b                                            ; $635d: $80
	ld hl, $2420                                     ; $635e: $21 $20 $24
	jr nz, @+$04                                     ; $6361: $20 $02

	inc de                                           ; $6363: $13
	ld de, $1010                                     ; $6364: $11 $10 $10
	sub e                                            ; $6367: $93
	sub c                                            ; $6368: $91
	sub b                                            ; $6369: $90
	inc a                                            ; $636a: $3c
	ld a, $7d                                        ; $636b: $3e $7d
	ld [bc], a                                       ; $636d: $02
	dec b                                            ; $636e: $05
	xor d                                            ; $636f: $aa
	dec b                                            ; $6370: $05
	xor d                                            ; $6371: $aa
	ld a, b                                          ; $6372: $78
	cp b                                             ; $6373: $b8
	jr c, jr_04d_632e                                ; $6374: $38 $b8

	db $10                                           ; $6376: $10
	db $10                                           ; $6377: $10
	ld a, b                                          ; $6378: $78
	nop                                              ; $6379: $00
	ld sp, $5aac                                     ; $637a: $31 $ac $5a
	sbc c                                            ; $637d: $99
	xor a                                            ; $637e: $af
	ld d, [hl]                                       ; $637f: $56
	xor d                                            ; $6380: $aa
	ld d, b                                          ; $6381: $50
	and h                                            ; $6382: $a4
	nop                                              ; $6383: $00
	sbc $02                                          ; $6384: $de $02
	ld a, a                                          ; $6386: $7f
	jr nc, @-$65                                     ; $6387: $30 $99

	ld [bc], a                                       ; $6389: $02
	ld [$5561], sp                                   ; $638a: $08 $61 $55
	ld a, [hl+]                                      ; $638d: $2a
	dec b                                            ; $638e: $05
	ld [hl], l                                       ; $638f: $75
	add sp, -$62                                     ; $6390: $e8 $9e
	halt                                             ; $6392: $76
	cp $7f                                           ; $6393: $fe $7f
	or c                                             ; $6395: $b1
	sub h                                            ; $6396: $94
	ld h, b                                          ; $6397: $60
	db $10                                           ; $6398: $10
	sub l                                            ; $6399: $95
	ld a, [hl-]                                      ; $639a: $3a
	db $fd                                           ; $639b: $fd
	ld a, d                                          ; $639c: $7a
	rrca                                             ; $639d: $0f
	ld d, [hl]                                       ; $639e: $56
	xor d                                            ; $639f: $aa
	ld d, [hl]                                       ; $63a0: $56
	ld a, a                                          ; $63a1: $7f
	ld a, b                                          ; $63a2: $78
	pop hl                                           ; $63a3: $e1
	sbc [hl]                                         ; $63a4: $9e

jr_04d_63a5:
	rst FarCall                                          ; $63a5: $f7
	sbc $01                                          ; $63a6: $de $01
	ei                                               ; $63a8: $fb
	ld a, l                                          ; $63a9: $7d
	and h                                            ; $63aa: $a4
	sbc l                                            ; $63ab: $9d
	ld a, a                                          ; $63ac: $7f
	cp a                                             ; $63ad: $bf
	ld [hl], h                                       ; $63ae: $74
	sub d                                            ; $63af: $92
	ld a, a                                          ; $63b0: $7f
	ld sp, hl                                        ; $63b1: $f9
	add a                                            ; $63b2: $87
	jr nz, jr_04d_6416                               ; $63b3: $20 $61

	jr c, jr_04d_6434                                ; $63b5: $38 $7d

	dec a                                            ; $63b7: $3d
	ld e, b                                          ; $63b8: $58
	ret nz                                           ; $63b9: $c0

	ret nz                                           ; $63ba: $c0

	db $e3                                           ; $63bb: $e3
	pop bc                                           ; $63bc: $c1
	rst SubAFromBC                                          ; $63bd: $e7
	jp c, $fdfc                                      ; $63be: $da $fc $fd

	adc e                                            ; $63c1: $8b
	ld [bc], a                                       ; $63c2: $02
	ld [hl+], a                                      ; $63c3: $22
	db $e3                                           ; $63c4: $e3
	db $e3                                           ; $63c5: $e3
	ld [hl+], a                                      ; $63c6: $22
	ldh [c], a                                       ; $63c7: $e2
	ldh [c], a                                       ; $63c8: $e2
	ld a, $22                                        ; $63c9: $3e $22
	db $dd                                           ; $63cb: $dd
	rst SubAFromDE                                          ; $63cc: $df
	ld a, l                                          ; $63cd: $7d
	inc a                                            ; $63ce: $3c
	sbc [hl]                                         ; $63cf: $9e
	rst AddAOntoHL                                          ; $63d0: $ef
	ld a, e                                          ; $63d1: $7b
	sbc $9e                                          ; $63d2: $de $9e
	db $fd                                           ; $63d4: $fd
	ld [hl], l                                       ; $63d5: $75
	ld a, [bc]                                       ; $63d6: $0a
	sbc [hl]                                         ; $63d7: $9e
	ld bc, $ffdd                                     ; $63d8: $01 $dd $ff
	db $dd                                           ; $63db: $dd
	inc h                                            ; $63dc: $24
	sbc d                                            ; $63dd: $9a
	ld b, e                                          ; $63de: $43
	ld h, b                                          ; $63df: $60
	ld h, b                                          ; $63e0: $60
	jr nz, @-$7c                                     ; $63e1: $20 $82

	db $dd                                           ; $63e3: $dd
	add h                                            ; $63e4: $84
	sbc e                                            ; $63e5: $9b
	add d                                            ; $63e6: $82
	add b                                            ; $63e7: $80
	add c                                            ; $63e8: $81
	ld bc, $02de                                     ; $63e9: $01 $de $02
	sbc l                                            ; $63ec: $9d
	ret z                                            ; $63ed: $c8

	inc b                                            ; $63ee: $04
	db $fd                                           ; $63ef: $fd
	ld a, [hl]                                       ; $63f0: $7e
	ld a, [hl]                                       ; $63f1: $7e
	add b                                            ; $63f2: $80
	ld a, c                                          ; $63f3: $79
	adc $80                                          ; $63f4: $ce $80
	nop                                              ; $63f6: $00
	jr nz, @+$23                                     ; $63f7: $20 $21

	ld h, c                                          ; $63f9: $61
	ld h, [hl]                                       ; $63fa: $66
	ld [hl], d                                       ; $63fb: $72
	nop                                              ; $63fc: $00
	jr nz, jr_04d_63ff                               ; $63fd: $20 $00

jr_04d_63ff:
	rrca                                             ; $63ff: $0f
	ld c, $1f                                        ; $6400: $0e $1f
	rrca                                             ; $6402: $0f
	ld a, a                                          ; $6403: $7f
	ld h, b                                          ; $6404: $60
	jr nz, jr_04d_6427                               ; $6405: $20 $20

	db $10                                           ; $6407: $10
	rra                                              ; $6408: $1f
	ld e, $3e                                        ; $6409: $1e $3e
	dec d                                            ; $640b: $15
	dec hl                                           ; $640c: $2b
	ld e, l                                          ; $640d: $5d
	rst JumpTable                                          ; $640e: $c7
	ld b, a                                          ; $640f: $47
	ld e, c                                          ; $6410: $59
	add [hl]                                         ; $6411: $86
	ld a, [hl]                                       ; $6412: $7e
	ret c                                            ; $6413: $d8

	add l                                            ; $6414: $85
	rst FarCall                                          ; $6415: $f7

jr_04d_6416:
	and e                                            ; $6416: $a3
	inc bc                                           ; $6417: $03
	jp Jump_04d_79e7                                 ; $6418: $c3 $e7 $79


	db $e4                                           ; $641b: $e4
	ld [hl], $b2                                     ; $641c: $36 $b2
	dec hl                                           ; $641e: $2b
	scf                                              ; $641f: $37
	cpl                                              ; $6420: $2f
	or l                                             ; $6421: $b5
	sbc a                                            ; $6422: $9f
	ld e, $1b                                        ; $6423: $1e $1b
	rra                                              ; $6425: $1f
	sbc [hl]                                         ; $6426: $9e

jr_04d_6427:
	adc [hl]                                         ; $6427: $8e
	sub a                                            ; $6428: $97
	rrca                                             ; $6429: $0f
	rlca                                             ; $642a: $07
	adc a                                            ; $642b: $8f
	rst GetHLinHL                                          ; $642c: $cf
	xor $9f                                          ; $642d: $ee $9f
	sbc $ff                                          ; $642f: $de $ff
	sbc d                                            ; $6431: $9a
	db $fc                                           ; $6432: $fc
	ld a, [hl-]                                      ; $6433: $3a

jr_04d_6434:
	ld sp, $6011                                     ; $6434: $31 $11 $60
	ld a, d                                          ; $6437: $7a
	ld h, d                                          ; $6438: $62
	adc l                                            ; $6439: $8d
	ld a, a                                          ; $643a: $7f
	ld b, l                                          ; $643b: $45
	xor b                                            ; $643c: $a8
	ld e, c                                          ; $643d: $59
	and l                                            ; $643e: $a5
	call nc, $84e4                                   ; $643f: $d4 $e4 $84
	ld c, l                                          ; $6442: $4d
	or b                                             ; $6443: $b0
	ld e, [hl]                                       ; $6444: $5e
	xor [hl]                                         ; $6445: $ae
	sbc $6e                                          ; $6446: $de $6e
	sbc $fe                                          ; $6448: $de $fe
	cp [hl]                                          ; $644a: $be
	ld [hl], e                                       ; $644b: $73
	sbc $01                                          ; $644c: $de $01
	add b                                            ; $644e: $80
	ld [bc], a                                       ; $644f: $02
	dec a                                            ; $6450: $3d
	ld e, $eb                                        ; $6451: $1e $eb
	ld h, e                                          ; $6453: $63
	jr z, jr_04d_64a6                                ; $6454: $28 $50

	rst $38                                          ; $6456: $ff
	rlca                                             ; $6457: $07
	ld l, a                                          ; $6458: $6f
	cp a                                             ; $6459: $bf
	rst $38                                          ; $645a: $ff
	ld a, a                                          ; $645b: $7f
	nop                                              ; $645c: $00
	ld bc, $85ff                                     ; $645d: $01 $ff $85
	ld d, e                                          ; $6460: $53
	xor e                                            ; $6461: $ab
	ld d, [hl]                                       ; $6462: $56
	xor c                                            ; $6463: $a9
	ld sp, hl                                        ; $6464: $f9
	ld a, [$faff]                                    ; $6465: $fa $ff $fa
	add c                                            ; $6468: $81
	ld [bc], a                                       ; $6469: $02
	ld bc, $9f03                                     ; $646a: $01 $03 $9f
	add b                                            ; $646d: $80
	adc b                                            ; $646e: $88
	rst $38                                          ; $646f: $ff
	cp h                                             ; $6470: $bc
	xor c                                            ; $6471: $a9
	ld h, d                                          ; $6472: $62
	push bc                                          ; $6473: $c5
	ld a, [bc]                                       ; $6474: $0a
	ld b, b                                          ; $6475: $40
	rst $38                                          ; $6476: $ff
	ld a, a                                          ; $6477: $7f
	jp $d844                                         ; $6478: $c3 $44 $d8


	or b                                             ; $647b: $b0
	ret nz                                           ; $647c: $c0

	rst $38                                          ; $647d: $ff
	nop                                              ; $647e: $00
	rst $38                                          ; $647f: $ff
	xor d                                            ; $6480: $aa
	ld d, l                                          ; $6481: $55
	xor d                                            ; $6482: $aa
	ld d, l                                          ; $6483: $55
	xor e                                            ; $6484: $ab
	nop                                              ; $6485: $00
	ld l, c                                          ; $6486: $69
	push de                                          ; $6487: $d5
	adc l                                            ; $6488: $8d
	xor a                                            ; $6489: $af
	ld a, d                                          ; $648a: $7a
	ld h, b                                          ; $648b: $60
	xor d                                            ; $648c: $aa
	dec h                                            ; $648d: $25
	xor [hl]                                         ; $648e: $ae
	ld l, l                                          ; $648f: $6d
	and d                                            ; $6490: $a2
	db $10                                           ; $6491: $10
	sub l                                            ; $6492: $95
	rst $38                                          ; $6493: $ff
	db $10                                           ; $6494: $10
	db $10                                           ; $6495: $10
	inc de                                           ; $6496: $13
	cp $1c                                           ; $6497: $fe $1c
	rst $38                                          ; $6499: $ff
	xor d                                            ; $649a: $aa
	ld a, b                                          ; $649b: $78
	and c                                            ; $649c: $a1
	ld a, e                                          ; $649d: $7b
	cp $9c                                           ; $649e: $fe $9c
	nop                                              ; $64a0: $00
	ld d, l                                          ; $64a1: $55
	rst $38                                          ; $64a2: $ff
	ld [hl], h                                       ; $64a3: $74
	db $e3                                           ; $64a4: $e3
	add b                                            ; $64a5: $80

jr_04d_64a6:
	nop                                              ; $64a6: $00
	add sp, -$57                                     ; $64a7: $e8 $a9
	ld b, $a7                                        ; $64a9: $06 $a7
	ld d, d                                          ; $64ab: $52
	and d                                            ; $64ac: $a2
	ld d, e                                          ; $64ad: $53
	xor d                                            ; $64ae: $aa
	ld bc, $fd51                                     ; $64af: $01 $51 $fd
	dec bc                                           ; $64b2: $0b
	add hl, bc                                       ; $64b3: $09
	dec e                                            ; $64b4: $1d
	dec bc                                           ; $64b5: $0b
	ld bc, $2a70                                     ; $64b6: $01 $70 $2a
	ld d, l                                          ; $64b9: $55
	ld [hl+], a                                      ; $64ba: $22

jr_04d_64bb:
	dec d                                            ; $64bb: $15
	xor d                                            ; $64bc: $aa
	ld d, l                                          ; $64bd: $55
	ld a, [hl+]                                      ; $64be: $2a
	adc b                                            ; $64bf: $88
	ld d, l                                          ; $64c0: $55
	dec hl                                           ; $64c1: $2b
	ld e, b                                          ; $64c2: $58
	ld [hl], b                                       ; $64c3: $70
	ldh [$7d], a                                     ; $64c4: $e0 $7d
	ld c, b                                          ; $64c6: $48
	sub d                                            ; $64c7: $92
	cp $05                                           ; $64c8: $fe $05
	xor [hl]                                         ; $64ca: $ae
	db $fd                                           ; $64cb: $fd
	ld d, h                                          ; $64cc: $54
	xor c                                            ; $64cd: $a9
	ld d, h                                          ; $64ce: $54
	xor c                                            ; $64cf: $a9
	ld bc, $fdf8                                     ; $64d0: $01 $f8 $fd
	nop                                              ; $64d3: $00
	ld bc, $fe7b                                     ; $64d4: $01 $7b $fe
	sbc d                                            ; $64d7: $9a
	sbc b                                            ; $64d8: $98
	ld e, h                                          ; $64d9: $5c
	ld hl, sp+$1c                                    ; $64da: $f8 $1c
	sbc b                                            ; $64dc: $98
	ld a, e                                          ; $64dd: $7b
	cp $9d                                           ; $64de: $fe $9d
	rlca                                             ; $64e0: $07
	add e                                            ; $64e1: $83
	ld l, a                                          ; $64e2: $6f
	cp $7a                                           ; $64e3: $fe $7a
	ld c, l                                          ; $64e5: $4d
	rst SubAFromDE                                          ; $64e6: $df
	db $fc                                           ; $64e7: $fc
	sub e                                            ; $64e8: $93
	call nz, $c0c0                                   ; $64e9: $c4 $c0 $c0
	ld h, [hl]                                       ; $64ec: $66
	db $e4                                           ; $64ed: $e4
	ld h, h                                          ; $64ee: $64
	call nz, $ec7c                                   ; $64ef: $c4 $7c $ec
	ld h, h                                          ; $64f2: $64
	and $22                                          ; $64f3: $e6 $22
	sbc $2a                                          ; $64f5: $de $2a
	sbc h                                            ; $64f7: $9c
	ld [hl+], a                                      ; $64f8: $22
	ld [hl-], a                                      ; $64f9: $32
	ld [hl+], a                                      ; $64fa: $22
	ld a, e                                          ; $64fb: $7b
	add c                                            ; $64fc: $81
	db $dd                                           ; $64fd: $dd
	rst $38                                          ; $64fe: $ff
	sub e                                            ; $64ff: $93
	rst FarCall                                          ; $6500: $f7
	pop af                                           ; $6501: $f1
	nop                                              ; $6502: $00
	dec b                                            ; $6503: $05
	inc bc                                           ; $6504: $03
	jr nc, jr_04d_653f                               ; $6505: $30 $38

	cpl                                              ; $6507: $2f
	rlca                                             ; $6508: $07
	rrca                                             ; $6509: $0f
	inc h                                            ; $650a: $24
	ld h, $dd                                        ; $650b: $26 $dd
	ccf                                              ; $650d: $3f
	adc h                                            ; $650e: $8c
	cpl                                              ; $650f: $2f
	ld e, $02                                        ; $6510: $1e $02
	ld [bc], a                                       ; $6512: $02
	add d                                            ; $6513: $82
	add b                                            ; $6514: $80
	ret nz                                           ; $6515: $c0

	add d                                            ; $6516: $82
	add d                                            ; $6517: $82
	ld de, $8382                                     ; $6518: $11 $82 $83
	nop                                              ; $651b: $00
	add h                                            ; $651c: $84
	add l                                            ; $651d: $85
	adc b                                            ; $651e: $88
	db $10                                           ; $651f: $10
	ld [hl], h                                       ; $6520: $74

jr_04d_6521:
	jr nz, jr_04d_6521                               ; $6521: $20 $fe

	adc [hl]                                         ; $6523: $8e
	ld [$0007], sp                                   ; $6524: $08 $07 $00
	nop                                              ; $6527: $00
	ld h, b                                          ; $6528: $60
	jr nz, jr_04d_64bb                               ; $6529: $20 $90

	xor b                                            ; $652b: $a8
	rst GetHLinHL                                          ; $652c: $cf
	ld l, a                                          ; $652d: $6f
	ld a, a                                          ; $652e: $7f
	sbc a                                            ; $652f: $9f
	cpl                                              ; $6530: $2f
	ld c, a                                          ; $6531: $4f
	ld c, a                                          ; $6532: $4f
	adc a                                            ; $6533: $8f
	ld c, [hl]                                       ; $6534: $4e
	ld a, c                                          ; $6535: $79
	dec l                                            ; $6536: $2d
	add b                                            ; $6537: $80
	ld l, [hl]                                       ; $6538: $6e
	ld a, [hl]                                       ; $6539: $7e
	ld l, [hl]                                       ; $653a: $6e
	sbc $e0                                          ; $653b: $de $e0
	ldh a, [$e0]                                     ; $653d: $f0 $e0

jr_04d_653f:
	ldh a, [$fb]                                     ; $653f: $f0 $fb
	db $ec                                           ; $6541: $ec
	ret nc                                           ; $6542: $d0

	push af                                          ; $6543: $f5
	adc a                                            ; $6544: $8f
	sbc a                                            ; $6545: $9f
	sbc l                                            ; $6546: $9d
	ld a, h                                          ; $6547: $7c
	add [hl]                                         ; $6548: $86
	sbc a                                            ; $6549: $9f
	adc a                                            ; $654a: $8f
	adc e                                            ; $654b: $8b
	rst $38                                          ; $654c: $ff
	xor $fe                                          ; $654d: $ee $fe
	ld hl, sp-$71                                    ; $654f: $f8 $8f
	inc bc                                           ; $6551: $03
	ld d, [hl]                                       ; $6552: $56
	sub [hl]                                         ; $6553: $96
	sub $06                                          ; $6554: $d6 $06
	ld h, $7e                                        ; $6556: $26 $7e
	ld h, l                                          ; $6558: $65
	sbc b                                            ; $6559: $98
	ld e, $be                                        ; $655a: $1e $be
	cp $3f                                           ; $655c: $fe $3f
	ld a, $3e                                        ; $655e: $3e $3e
	cp [hl]                                          ; $6560: $be
	db $fd                                           ; $6561: $fd
	add b                                            ; $6562: $80
	jr nc, jr_04d_656d                               ; $6563: $30 $08

	inc e                                            ; $6565: $1c
	jr jr_04d_65ad                                   ; $6566: $18 $45

	sub d                                            ; $6568: $92
	db $10                                           ; $6569: $10

jr_04d_656a:
	jr c, jr_04d_656a                                ; $656a: $38 $fe

	inc e                                            ; $656c: $1c

jr_04d_656d:
	ld [$ba0c], sp                                   ; $656d: $08 $0c $ba
	ld l, l                                          ; $6570: $6d
	ld l, b                                          ; $6571: $68
	ld d, b                                          ; $6572: $50
	ld a, d                                          ; $6573: $7a
	ld a, l                                          ; $6574: $7d
	rst $38                                          ; $6575: $ff
	rst $38                                          ; $6576: $ff
	ld a, e                                          ; $6577: $7b
	rst SubAFromDE                                          ; $6578: $df
	reti                                             ; $6579: $d9


	db $e4                                           ; $657a: $e4
	jp nz, Jump_04d_40c1                             ; $657b: $c2 $c1 $40

	ld b, b                                          ; $657e: $40
	cp $fe                                           ; $657f: $fe $fe
	cp a                                             ; $6581: $bf
	sub d                                            ; $6582: $92
	ccf                                              ; $6583: $3f
	ld c, e                                          ; $6584: $4b
	ld b, a                                          ; $6585: $47
	jp z, $3f56                                      ; $6586: $ca $56 $3f

	cp [hl]                                          ; $6589: $be
	halt                                             ; $658a: $76
	ld l, d                                          ; $658b: $6a
	ld b, d                                          ; $658c: $42
	jp $c2c2                                         ; $658d: $c3 $c2 $c2


	ld [hl], a                                       ; $6590: $77
	inc b                                            ; $6591: $04
	ld a, a                                          ; $6592: $7f
	cp $9d                                           ; $6593: $fe $9d
	push de                                          ; $6595: $d5
	ld a, [hl+]                                      ; $6596: $2a
	ld l, c                                          ; $6597: $69
	ld hl, sp-$62                                    ; $6598: $f8 $9e
	add b                                            ; $659a: $80
	ld l, a                                          ; $659b: $6f
	ldh a, [$7a]                                     ; $659c: $f0 $7a
	ldh a, [$fa]                                     ; $659e: $f0 $fa
	ld b, a                                          ; $65a0: $47
	ldh a, [$9e]                                     ; $65a1: $f0 $9e
	dec h                                            ; $65a3: $25
	ld l, e                                          ; $65a4: $6b
	ldh a, [$9e]                                     ; $65a5: $f0 $9e
	jr jr_04d_65d4                                   ; $65a7: $18 $2b

	ldh [$9e], a                                     ; $65a9: $e0 $9e
	ld d, b                                          ; $65ab: $50
	ld l, e                                          ; $65ac: $6b

jr_04d_65ad:
	ldh a, [$9e]                                     ; $65ad: $f0 $9e
	add hl, bc                                       ; $65af: $09
	dec hl                                           ; $65b0: $2b
	ldh [$7e], a                                     ; $65b1: $e0 $7e
	add $6f                                          ; $65b3: $c6 $6f
	ldh a, [$7e]                                     ; $65b5: $f0 $7e
	ld a, [hl-]                                      ; $65b7: $3a
	ld l, l                                          ; $65b8: $6d
	add l                                            ; $65b9: $85
	sbc e                                            ; $65ba: $9b
	ret c                                            ; $65bb: $d8

	ld [hl], h                                       ; $65bc: $74
	xor b                                            ; $65bd: $a8
	rst $38                                          ; $65be: $ff
	ld a, e                                          ; $65bf: $7b
	ldh a, [$9b]                                     ; $65c0: $f0 $9b
	cp a                                             ; $65c2: $bf
	rlca                                             ; $65c3: $07
	adc e                                            ; $65c4: $8b
	ld d, a                                          ; $65c5: $57
	ld [hl], d                                       ; $65c6: $72
	ld e, a                                          ; $65c7: $5f
	sub l                                            ; $65c8: $95
	ld b, b                                          ; $65c9: $40
	jp $aa82                                         ; $65ca: $c3 $82 $aa


	ld d, a                                          ; $65cd: $57
	cp a                                             ; $65ce: $bf
	rst $38                                          ; $65cf: $ff
	rst $38                                          ; $65d0: $ff
	rst SubAFromBC                                          ; $65d1: $e7
	db $fc                                           ; $65d2: $fc
	ld [hl], l                                       ; $65d3: $75

jr_04d_65d4:
	sbc b                                            ; $65d4: $98
	cp $9b                                           ; $65d5: $fe $9b
	pop bc                                           ; $65d7: $c1
	ld a, a                                          ; $65d8: $7f
	ld c, d                                          ; $65d9: $4a
	ld b, c                                          ; $65da: $41
	ld [hl], l                                       ; $65db: $75
	xor $9c                                          ; $65dc: $ee $9c
	ld a, a                                          ; $65de: $7f
	rst AddAOntoHL                                          ; $65df: $ef
	push hl                                          ; $65e0: $e5
	ld [hl], h                                       ; $65e1: $74
	rst $38                                          ; $65e2: $ff
	add h                                            ; $65e3: $84
	cp c                                             ; $65e4: $b9
	dec a                                            ; $65e5: $3d
	jp c, Jump_04d_6edd                              ; $65e6: $da $dd $6e

	rst $38                                          ; $65e9: $ff
	cp $ff                                           ; $65ea: $fe $ff
	or $c0                                           ; $65ec: $f6 $c0
	ldh [$30], a                                     ; $65ee: $e0 $30
	sbc b                                            ; $65f0: $98
	ld [$0f08], sp                                   ; $65f1: $08 $08 $0f
	or [hl]                                          ; $65f4: $b6
	ld e, [hl]                                       ; $65f5: $5e
	cp [hl]                                          ; $65f6: $be
	ld a, [hl]                                       ; $65f7: $7e
	cp [hl]                                          ; $65f8: $be
	ld a, [hl]                                       ; $65f9: $7e
	cp a                                             ; $65fa: $bf
	rst $38                                          ; $65fb: $ff
	add hl, bc                                       ; $65fc: $09
	ld de, $de21                                     ; $65fd: $11 $21 $de
	ld b, c                                          ; $6600: $41
	sbc e                                            ; $6601: $9b
	ld b, b                                          ; $6602: $40
	ret nz                                           ; $6603: $c0

	nop                                              ; $6604: $00
	ld [$0ede], sp                                   ; $6605: $08 $de $0e
	sub a                                            ; $6608: $97
	ld a, [hl]                                       ; $6609: $7e
	ld c, h                                          ; $660a: $4c
	ld e, h                                          ; $660b: $5c
	rra                                              ; $660c: $1f
	cpl                                              ; $660d: $2f
	rst AddAOntoHL                                          ; $660e: $ef
	rrca                                             ; $660f: $0f
	rra                                              ; $6610: $1f
	sbc $ff                                          ; $6611: $de $ff
	adc e                                            ; $6613: $8b
	ld [hl], b                                       ; $6614: $70
	ld h, b                                          ; $6615: $60
	ld a, a                                          ; $6616: $7f
	ld a, a                                          ; $6617: $7f
	ld a, [hl]                                       ; $6618: $7e
	ld d, l                                          ; $6619: $55
	jp z, $f055                                      ; $661a: $ca $55 $f0

	rst $38                                          ; $661d: $ff
	ldh [$e0], a                                     ; $661e: $e0 $e0
	pop hl                                           ; $6620: $e1
	ld [$eaf5], a                                    ; $6621: $ea $f5 $ea
	ld [$80e0], a                                    ; $6624: $ea $e0 $80
	ld b, b                                          ; $6627: $40
	ld [hl], l                                       ; $6628: $75
	ccf                                              ; $6629: $3f
	sbc l                                            ; $662a: $9d
	pop af                                           ; $662b: $f1
	rst JumpTable                                          ; $662c: $c7
	ld a, b                                          ; $662d: $78
	inc l                                            ; $662e: $2c
	rst SubAFromDE                                          ; $662f: $df
	rst $38                                          ; $6630: $ff
	adc d                                            ; $6631: $8a
	cp $6e                                           ; $6632: $fe $6e
	ld d, h                                          ; $6634: $54
	ld l, d                                          ; $6635: $6a
	ld d, h                                          ; $6636: $54
	ld l, d                                          ; $6637: $6a
	ld d, l                                          ; $6638: $55
	xor c                                            ; $6639: $a9
	ld d, l                                          ; $663a: $55
	sbc a                                            ; $663b: $9f
	xor e                                            ; $663c: $ab
	sub l                                            ; $663d: $95
	xor e                                            ; $663e: $ab
	sub l                                            ; $663f: $95
	xor d                                            ; $6640: $aa
	ld a, [hl]                                       ; $6641: $7e
	cp $1c                                           ; $6642: $fe $1c
	inc c                                            ; $6644: $0c
	inc c                                            ; $6645: $0c
	inc d                                            ; $6646: $14
	sbc $36                                          ; $6647: $de $36
	sbc c                                            ; $6649: $99
	ld h, $0c                                        ; $664a: $26 $0c
	inc e                                            ; $664c: $1c
	ld e, $df                                        ; $664d: $1e $df
	sbc h                                            ; $664f: $9c
	sbc $1c                                          ; $6650: $de $1c
	call c, $9c7f                                    ; $6652: $dc $7f $9c
	ld e, a                                          ; $6655: $5f
	dec hl                                           ; $6656: $2b
	ld d, l                                          ; $6657: $55
	call c, $9940                                    ; $6658: $dc $40 $99
	ld h, b                                          ; $665b: $60
	ld d, h                                          ; $665c: $54
	ld l, d                                          ; $665d: $6a
	ld b, b                                          ; $665e: $40
	add d                                            ; $665f: $82
	jp $83de                                         ; $6660: $c3 $de $83


	sbc c                                            ; $6663: $99
	inc bc                                           ; $6664: $03
	ld bc, $0682                                     ; $6665: $01 $82 $06
	ld a, a                                          ; $6668: $7f
	ld a, [hl]                                       ; $6669: $7e
	db $dd                                           ; $666a: $dd
	cp $9c                                           ; $666b: $fe $9c
	dec e                                            ; $666d: $1d
	ccf                                              ; $666e: $3f
	ccf                                              ; $666f: $3f
	ld [hl], b                                       ; $6670: $70
	rst JumpTable                                          ; $6671: $c7
	sbc h                                            ; $6672: $9c
	ld b, b                                          ; $6673: $40
	jr nz, @+$22                                     ; $6674: $20 $20

	ld [hl], b                                       ; $6676: $70
	ccf                                              ; $6677: $3f
	ld a, a                                          ; $6678: $7f
	inc [hl]                                         ; $6679: $34
	db $db                                           ; $667a: $db
	rst $38                                          ; $667b: $ff
	ld e, d                                          ; $667c: $5a
	ret nz                                           ; $667d: $c0

	ld a, a                                          ; $667e: $7f
	ld d, e                                          ; $667f: $53
	ld c, a                                          ; $6680: $4f
	ldh a, [$73]                                     ; $6681: $f0 $73
	sbc $1b                                          ; $6683: $de $1b
	ldh a, [rWX]                                     ; $6685: $f0 $4b
	ret nz                                           ; $6687: $c0

	ld [hl], e                                       ; $6688: $73
	and c                                            ; $6689: $a1
	ld e, a                                          ; $668a: $5f
	ldh a, [$7a]                                     ; $668b: $f0 $7a
	db $e4                                           ; $668d: $e4
	ld d, a                                          ; $668e: $57
	ldh a, [$d9]                                     ; $668f: $f0 $d9
	rst $38                                          ; $6691: $ff
	rrca                                             ; $6692: $0f
	ldh a, [$9d]                                     ; $6693: $f0 $9d
	ld a, [$fb55]                                    ; $6695: $fa $55 $fb
	sub l                                            ; $6698: $95
	dec b                                            ; $6699: $05
	xor d                                            ; $669a: $aa
	db $fc                                           ; $669b: $fc
	db $fc                                           ; $669c: $fc
	db $fd                                           ; $669d: $fd
	rst $38                                          ; $669e: $ff
	ld hl, sp+$51                                    ; $669f: $f8 $51
	xor b                                            ; $66a1: $a8
	ld d, c                                          ; $66a2: $51
	db $dd                                           ; $66a3: $dd
	rlca                                             ; $66a4: $07
	sub e                                            ; $66a5: $93
	ld bc, $51a8                                     ; $66a6: $01 $a8 $51
	xor b                                            ; $66a9: $a8
	ld e, $15                                        ; $66aa: $1e $15
	xor d                                            ; $66ac: $aa
	dec [hl]                                         ; $66ad: $35
	ld a, [hl+]                                      ; $66ae: $2a
	dec d                                            ; $66af: $15
	adc d                                            ; $66b0: $8a
	dec b                                            ; $66b1: $05
	halt                                             ; $66b2: $76
	db $e4                                           ; $66b3: $e4
	ld a, e                                          ; $66b4: $7b
	rst FarCall                                          ; $66b5: $f7
	sbc l                                            ; $66b6: $9d
	sbc d                                            ; $66b7: $9a
	nop                                              ; $66b8: $00
	ld [hl], b                                       ; $66b9: $70
	ld b, b                                          ; $66ba: $40
	rst $38                                          ; $66bb: $ff
	sbc [hl]                                         ; $66bc: $9e
	db $fc                                           ; $66bd: $fc
	sbc $84                                          ; $66be: $de $84
	sbc $8c                                          ; $66c0: $de $8c
	sbc e                                            ; $66c2: $9b
	sbc h                                            ; $66c3: $9c
	ld a, [hl+]                                      ; $66c4: $2a
	sub l                                            ; $66c5: $95
	xor d                                            ; $66c6: $aa
	ld a, e                                          ; $66c7: $7b
	cp $7c                                           ; $66c8: $fe $7c
	ei                                               ; $66ca: $fb
	sbc l                                            ; $66cb: $9d
	ld d, l                                          ; $66cc: $55
	ld l, d                                          ; $66cd: $6a
	ld [hl], a                                       ; $66ce: $77
	cp $9d                                           ; $66cf: $fe $9d
	push de                                          ; $66d1: $d5
	xor d                                            ; $66d2: $aa
	ld e, d                                          ; $66d3: $5a
	nop                                              ; $66d4: $00
	sub $44                                          ; $66d5: $d6 $44
	sbc [hl]                                         ; $66d7: $9e
	inc sp                                           ; $66d8: $33
	db $dd                                           ; $66d9: $dd
	ld b, h                                          ; $66da: $44
	sbc [hl]                                         ; $66db: $9e
	ld b, a                                          ; $66dc: $47
	db $dd                                           ; $66dd: $dd
	ld b, h                                          ; $66de: $44
	sbc [hl]                                         ; $66df: $9e
	ld [hl], l                                       ; $66e0: $75
	db $dd                                           ; $66e1: $dd
	ld h, [hl]                                       ; $66e2: $66
	sbc c                                            ; $66e3: $99
	ld b, l                                          ; $66e4: $45
	ld b, [hl]                                       ; $66e5: $46
	ld h, [hl]                                       ; $66e6: $66
	ld h, h                                          ; $66e7: $64
	ld h, h                                          ; $66e8: $64
	ld d, l                                          ; $66e9: $55
	ld [hl], a                                       ; $66ea: $77
	ld [$3597], a                                    ; $66eb: $ea $97 $35
	inc sp                                           ; $66ee: $33
	inc sp                                           ; $66ef: $33
	ld h, [hl]                                       ; $66f0: $66
	ld h, l                                          ; $66f1: $65
	ld d, l                                          ; $66f2: $55
	ld h, [hl]                                       ; $66f3: $66
	ld h, e                                          ; $66f4: $63
	ld a, e                                          ; $66f5: $7b
	ld a, [$5380]                                    ; $66f6: $fa $80 $53
	inc sp                                           ; $66f9: $33
	ld h, [hl]                                       ; $66fa: $66
	ld h, [hl]                                       ; $66fb: $66
	ld d, l                                          ; $66fc: $55
	ld h, l                                          ; $66fd: $65
	ld d, [hl]                                       ; $66fe: $56
	dec [hl]                                         ; $66ff: $35
	ld d, [hl]                                       ; $6700: $56
	ld h, l                                          ; $6701: $65
	ld d, e                                          ; $6702: $53
	ld b, e                                          ; $6703: $43
	ld d, l                                          ; $6704: $55
	ld h, l                                          ; $6705: $65
	dec [hl]                                         ; $6706: $35
	ld h, [hl]                                       ; $6707: $66
	inc sp                                           ; $6708: $33
	inc sp                                           ; $6709: $33
	ld d, [hl]                                       ; $670a: $56
	ld h, l                                          ; $670b: $65
	ld d, l                                          ; $670c: $55
	inc sp                                           ; $670d: $33
	ld d, l                                          ; $670e: $55
	ld h, e                                          ; $670f: $63
	inc sp                                           ; $6710: $33
	ld h, e                                          ; $6711: $63
	inc sp                                           ; $6712: $33
	inc sp                                           ; $6713: $33
	ld [hl], $45                                     ; $6714: $36 $45
	ld d, l                                          ; $6716: $55
	sbc d                                            ; $6717: $9a
	ld d, e                                          ; $6718: $53
	ld d, l                                          ; $6719: $55
	inc sp                                           ; $671a: $33
	inc sp                                           ; $671b: $33
	ld d, e                                          ; $671c: $53
	db $dd                                           ; $671d: $dd
	inc sp                                           ; $671e: $33
	sbc $55                                          ; $671f: $de $55
	ld a, a                                          ; $6721: $7f
	rst FarCall                                          ; $6722: $f7
	ld a, e                                          ; $6723: $7b
	db $ec                                           ; $6724: $ec
	db $dd                                           ; $6725: $dd
	inc sp                                           ; $6726: $33

jr_04d_6727:
	ld a, e                                          ; $6727: $7b
	rst AddAOntoHL                                          ; $6728: $ef
	ld [hl], e                                       ; $6729: $73
	db $ec                                           ; $672a: $ec
	ld a, e                                          ; $672b: $7b
	ld sp, hl                                        ; $672c: $f9
	add $89                                          ; $672d: $c6 $89
	sub a                                            ; $672f: $97
	ld bc, $0000                                     ; $6730: $01 $00 $00
	inc b                                            ; $6733: $04
	rlca                                             ; $6734: $07
	ld d, e                                          ; $6735: $53
	dec e                                            ; $6736: $1d
	rlca                                             ; $6737: $07
	cp $80                                           ; $6738: $fe $80
	ld bc, $2408                                     ; $673a: $01 $08 $24
	cp $7f                                           ; $673d: $fe $7f
	rst SubAFromDE                                          ; $673f: $df
	ld e, c                                          ; $6740: $59
	nop                                              ; $6741: $00
	add hl, de                                       ; $6742: $19
	ld h, a                                          ; $6743: $67
	and b                                            ; $6744: $a0
	sbc a                                            ; $6745: $9f
	cp $24                                           ; $6746: $fe $24
	ld h, $a7                                        ; $6748: $26 $a7
	ret nz                                           ; $674a: $c0

	cp b                                             ; $674b: $b8
	ld a, a                                          ; $674c: $7f
	ld a, a                                          ; $674d: $7f
	rst $38                                          ; $674e: $ff
	ld [hl], c                                       ; $674f: $71
	call c, $1967                                    ; $6750: $dc $67 $19
	rra                                              ; $6753: $1f
	ld a, a                                          ; $6754: $7f
	rst $38                                          ; $6755: $ff
	rst $38                                          ; $6756: $ff
	adc d                                            ; $6757: $8a
	add d                                            ; $6758: $82
	add b                                            ; $6759: $80
	sub c                                            ; $675a: $91
	ld hl, sp-$1a                                    ; $675b: $f8 $e6
	ei                                               ; $675d: $fb
	rst $38                                          ; $675e: $ff
	rst $38                                          ; $675f: $ff
	db $10                                           ; $6760: $10
	dec c                                            ; $6761: $0d
	ldh a, [c]                                       ; $6762: $f2
	rst $38                                          ; $6763: $ff
	rst $38                                          ; $6764: $ff
	db $fc                                           ; $6765: $fc
	rst $38                                          ; $6766: $ff
	rst $38                                          ; $6767: $ff
	xor a                                            ; $6768: $af
	rst FarCall                                          ; $6769: $f7
	ld l, a                                          ; $676a: $6f
	rst $38                                          ; $676b: $ff
	ld a, a                                          ; $676c: $7f
	db $db                                           ; $676d: $db
	rst $38                                          ; $676e: $ff
	rst $38                                          ; $676f: $ff
	inc bc                                           ; $6770: $03
	sbc a                                            ; $6771: $9f
	sub c                                            ; $6772: $91
	ld [bc], a                                       ; $6773: $02
	dec hl                                           ; $6774: $2b
	ld d, e                                          ; $6775: $53
	ld e, e                                          ; $6776: $5b
	rst AddAOntoHL                                          ; $6777: $ef
	rst $38                                          ; $6778: $ff
	add b                                            ; $6779: $80

jr_04d_677a:
	db $e3                                           ; $677a: $e3
	ld h, e                                          ; $677b: $63
	db $fd                                           ; $677c: $fd
	call nz, $efe5                                   ; $677d: $c4 $e5 $ef
	rst $38                                          ; $6780: $ff
	jr jr_04d_6783                                   ; $6781: $18 $00

jr_04d_6783:
	sbc $27                                          ; $6783: $de $27
	ld a, [bc]                                       ; $6785: $0a
	db $db                                           ; $6786: $db
	sub c                                            ; $6787: $91
	jp hl                                            ; $6788: $e9


	rst $38                                          ; $6789: $ff
	db $fd                                           ; $678a: $fd
	daa                                              ; $678b: $27
	rst $38                                          ; $678c: $ff
	rst FarCall                                          ; $678d: $f7
	rst FarCall                                          ; $678e: $f7
	rst $38                                          ; $678f: $ff
	rst SubAFromDE                                          ; $6790: $df
	xor l                                            ; $6791: $ad
	rst SubAFromDE                                          ; $6792: $df
	ld a, h                                          ; $6793: $7c
	rst SubAFromBC                                          ; $6794: $e7
	jr nc, jr_04d_6727                               ; $6795: $30 $90

	ld hl, sp-$01                                    ; $6797: $f8 $ff
	sbc e                                            ; $6799: $9b
	inc bc                                           ; $679a: $03
	rlca                                             ; $679b: $07
	ld a, a                                          ; $679c: $7f
	cp $dd                                           ; $679d: $fe $dd
	rst $38                                          ; $679f: $ff
	add b                                            ; $67a0: $80
	ld a, a                                          ; $67a1: $7f
	cp e                                             ; $67a2: $bb
	cp $dd                                           ; $67a3: $fe $dd
	db $eb                                           ; $67a5: $eb
	jp hl                                            ; $67a6: $e9


	ld a, l                                          ; $67a7: $7d
	jr c, @+$01                                      ; $67a8: $38 $ff

	ld a, a                                          ; $67aa: $7f
	sbc a                                            ; $67ab: $9f
	jp $e061                                         ; $67ac: $c3 $61 $e0


	add b                                            ; $67af: $80
	call nz, $c000                                   ; $67b0: $c4 $00 $c0
	ld a, b                                          ; $67b3: $78
	db $fc                                           ; $67b4: $fc
	ld e, h                                          ; $67b5: $5c
	ld [$afec], a                                    ; $67b6: $ea $ec $af
	ret nz                                           ; $67b9: $c0

	ldh a, [$f0]                                     ; $67ba: $f0 $f0
	jr c, jr_04d_677a                                ; $67bc: $38 $bc

	inc e                                            ; $67be: $1c
	ld c, $9e                                        ; $67bf: $0e $9e
	ld a, [hl]                                       ; $67c1: $7e
	ldh [$ca], a                                     ; $67c2: $e0 $ca
	ld a, e                                          ; $67c4: $7b
	add hl, sp                                       ; $67c5: $39
	ei                                               ; $67c6: $fb
	adc a                                            ; $67c7: $8f
	dec e                                            ; $67c8: $1d
	inc [hl]                                         ; $67c9: $34
	ld [hl-], a                                      ; $67ca: $32
	ld c, b                                          ; $67cb: $48
	ld h, h                                          ; $67cc: $64
	sub b                                            ; $67cd: $90
	ld c, b                                          ; $67ce: $48
	jr nz, jr_04d_67d3                               ; $67cf: $20 $02

	ld [bc], a                                       ; $67d1: $02
	inc b                                            ; $67d2: $04

jr_04d_67d3:
	inc b                                            ; $67d3: $04
	ld [$1008], sp                                   ; $67d4: $08 $08 $10
	db $10                                           ; $67d7: $10
	ldh [$c1], a                                     ; $67d8: $e0 $c1
	sub b                                            ; $67da: $90
	inc b                                            ; $67db: $04
	ld [bc], a                                       ; $67dc: $02
	ld [$1806], sp                                   ; $67dd: $08 $06 $18
	ld [$0830], sp                                   ; $67e0: $08 $30 $08
	ld bc, $0201                                     ; $67e3: $01 $01 $02
	nop                                              ; $67e6: $00
	inc b                                            ; $67e7: $04
	nop                                              ; $67e8: $00
	ld [$b043], sp                                   ; $67e9: $08 $43 $b0
	add b                                            ; $67ec: $80
	ld b, a                                          ; $67ed: $47
	rra                                              ; $67ee: $1f
	di                                               ; $67ef: $f3
	rst SubAFromBC                                          ; $67f0: $e7
	add h                                            ; $67f1: $84
	ldh a, [rAUD3LEN]                                ; $67f2: $f0 $1b
	dec b                                            ; $67f4: $05
	ccf                                              ; $67f5: $3f
	rst $38                                          ; $67f6: $ff
	db $fc                                           ; $67f7: $fc
	inc d                                            ; $67f8: $14
	ld c, a                                          ; $67f9: $4f
	rrca                                             ; $67fa: $0f
	add h                                            ; $67fb: $84
	ld [$f9fc], sp                                   ; $67fc: $08 $fc $f9
	pop af                                           ; $67ff: $f1
	db $e3                                           ; $6800: $e3
	jr nc, jr_04d_6803                               ; $6801: $30 $00

jr_04d_6803:
	add c                                            ; $6803: $81
	add a                                            ; $6804: $87
	rst $38                                          ; $6805: $ff
	rst $38                                          ; $6806: $ff
	rst SubAFromDE                                          ; $6807: $df
	sbc [hl]                                         ; $6808: $9e
	xor $fd                                          ; $6809: $ee $fd
	ld a, a                                          ; $680b: $7f
	ld a, [hl]                                       ; $680c: $7e
	or b                                             ; $680d: $b0
	add b                                            ; $680e: $80
	ld l, h                                          ; $680f: $6c
	sbc e                                            ; $6810: $9b
	rst GetHLinHL                                          ; $6811: $cf
	rst GetHLinHL                                          ; $6812: $cf
	adc $de                                          ; $6813: $ce $de
	db $d3                                           ; $6815: $d3
	rst $38                                          ; $6816: $ff
	cp a                                             ; $6817: $bf
	ld l, a                                          ; $6818: $6f
	ld a, a                                          ; $6819: $7f
	rst $38                                          ; $681a: $ff
	db $fd                                           ; $681b: $fd
	cp c                                             ; $681c: $b9
	cp a                                             ; $681d: $bf
	add b                                            ; $681e: $80
	add b                                            ; $681f: $80
	ldh [$ed], a                                     ; $6820: $e0 $ed
	ld a, e                                          ; $6822: $7b
	scf                                              ; $6823: $37
	ld l, [hl]                                       ; $6824: $6e
	call c, Call_04d_7f7f                            ; $6825: $dc $7f $7f
	rra                                              ; $6828: $1f

jr_04d_6829:
	inc de                                           ; $6829: $13
	add a                                            ; $682a: $87
	rst GetHLinHL                                          ; $682b: $cf
	sbc a                                            ; $682c: $9f
	rst $38                                          ; $682d: $ff
	add a                                            ; $682e: $87
	ldh a, [c]                                       ; $682f: $f2
	add sp, -$03                                     ; $6830: $e8 $fd
	rst SubAFromDE                                          ; $6832: $df
	sub $ff                                          ; $6833: $d6 $ff
	sbc a                                            ; $6835: $9f
	cp $fd                                           ; $6836: $fe $fd
	di                                               ; $6838: $f3
	db $e3                                           ; $6839: $e3
	and a                                            ; $683a: $a7
	db $ec                                           ; $683b: $ec
	ldh a, [$e6]                                     ; $683c: $f0 $e6
	sbc a                                            ; $683e: $9f
	add e                                            ; $683f: $83

Jump_04d_6840:
	set 2, e                                         ; $6840: $cb $d3
	db $d3                                           ; $6842: $d3
	rlca                                             ; $6843: $07
	ld a, $59                                        ; $6844: $3e $59
	ld bc, $ffd9                                     ; $6846: $01 $d9 $ff
	sbc c                                            ; $6849: $99
	cp a                                             ; $684a: $bf
	rst $38                                          ; $684b: $ff
	db $fd                                           ; $684c: $fd
	sbc l                                            ; $684d: $9d
	call z, Call_04d_7a7c                            ; $684e: $cc $7c $7a
	adc a                                            ; $6851: $8f
	db $db                                           ; $6852: $db
	rst $38                                          ; $6853: $ff
	sub e                                            ; $6854: $93
	db $fc                                           ; $6855: $fc
	ret nz                                           ; $6856: $c0

	ldh a, [$f8]                                     ; $6857: $f0 $f8
	db $f4                                           ; $6859: $f4
	or b                                             ; $685a: $b0
	sub b                                            ; $685b: $90
	db $10                                           ; $685c: $10
	jr nz, @+$01                                     ; $685d: $20 $ff

	ei                                               ; $685f: $fb
	db $fc                                           ; $6860: $fc
	halt                                             ; $6861: $76
	or b                                             ; $6862: $b0
	adc l                                            ; $6863: $8d
	rst SubAFromDE                                          ; $6864: $df
	push bc                                          ; $6865: $c5
	ld [$0a0d], a                                    ; $6866: $ea $0d $0a
	add c                                            ; $6869: $81
	ld b, b                                          ; $686a: $40
	jr nz, jr_04d_68ad                               ; $686b: $20 $40

	ccf                                              ; $686d: $3f
	rra                                              ; $686e: $1f
	rlca                                             ; $686f: $07
	ld bc, $8000                                     ; $6870: $01 $00 $80
	ret nz                                           ; $6873: $c0

	ldh [$f0], a                                     ; $6874: $e0 $f0
	ld a, d                                          ; $6876: $7a
	ld c, h                                          ; $6877: $4c
	sub [hl]                                         ; $6878: $96
	ld b, b                                          ; $6879: $40
	call nz, VBlankInterrupt                         ; $687a: $c4 $40 $00
	nop                                              ; $687d: $00
	add b                                            ; $687e: $80

Call_04d_687f:
	add b                                            ; $687f: $80
	nop                                              ; $6880: $00
	add b                                            ; $6881: $80
	db $fd                                           ; $6882: $fd
	sbc b                                            ; $6883: $98
	add b                                            ; $6884: $80
	ld hl, sp+$1f                                    ; $6885: $f8 $1f
	ldh a, [$03]                                     ; $6887: $f0 $03
	xor b                                            ; $6889: $a8
	dec b                                            ; $688a: $05
	cp $9d                                           ; $688b: $fe $9d
	ldh [rIF], a                                     ; $688d: $e0 $0f
	ei                                               ; $688f: $fb
	sbc d                                            ; $6890: $9a
	ldh [rIE], a                                     ; $6891: $e0 $ff
	add a                                            ; $6893: $87
	ld [$fc50], sp                                   ; $6894: $08 $50 $fc
	sbc [hl]                                         ; $6897: $9e
	ld a, b                                          ; $6898: $78
	ld [hl], d                                       ; $6899: $72
	add hl, bc                                       ; $689a: $09
	sbc d                                            ; $689b: $9a
	nop                                              ; $689c: $00
	add d                                            ; $689d: $82
	rst $38                                          ; $689e: $ff
	ld a, $20                                        ; $689f: $3e $20
	ei                                               ; $68a1: $fb
	sbc c                                            ; $68a2: $99
	pop bc                                           ; $68a3: $c1
	rra                                              ; $68a4: $1f
	sub b                                            ; $68a5: $90
	ld b, b                                          ; $68a6: $40
	jr nz, jr_04d_6829                               ; $68a7: $20 $80

	ld a, e                                          ; $68a9: $7b
	jp nz, Jump_04d_7e9a                             ; $68aa: $c2 $9a $7e

jr_04d_68ad:
	jr nz, @+$22                                     ; $68ad: $20 $20

	ld b, b                                          ; $68af: $40
	ld b, b                                          ; $68b0: $40
	db $dd                                           ; $68b1: $dd
	add b                                            ; $68b2: $80
	ldh [$cc], a                                     ; $68b3: $e0 $cc
	ld a, a                                          ; $68b5: $7f
	xor l                                            ; $68b6: $ad
	sbc [hl]                                         ; $68b7: $9e
	inc bc                                           ; $68b8: $03
	ld h, a                                          ; $68b9: $67
	rst FarCall                                          ; $68ba: $f7
	sbc d                                            ; $68bb: $9a
	ld l, b                                          ; $68bc: $68
	db $10                                           ; $68bd: $10
	ldh [rAUD4LEN], a                                ; $68be: $e0 $20
	ret nz                                           ; $68c0: $c0

	ld a, e                                          ; $68c1: $7b
	cp c                                             ; $68c2: $b9
	ld a, a                                          ; $68c3: $7f
	ld c, [hl]                                       ; $68c4: $4e
	sbc [hl]                                         ; $68c5: $9e
	nop                                              ; $68c6: $00
	ld a, e                                          ; $68c7: $7b
	xor c                                            ; $68c8: $a9
	rst AddAOntoHL                                          ; $68c9: $ef
	rst SubAFromDE                                          ; $68ca: $df
	inc bc                                           ; $68cb: $03
	ld a, a                                          ; $68cc: $7f
	call c, $019e                                    ; $68cd: $dc $9e $01
	sbc $03                                          ; $68d0: $de $03
	ld sp, hl                                        ; $68d2: $f9
	sub c                                            ; $68d3: $91
	rlca                                             ; $68d4: $07
	ld e, h                                          ; $68d5: $5c
	ret nc                                           ; $68d6: $d0

	add c                                            ; $68d7: $81
	jp $3e07                                         ; $68d8: $c3 $07 $3e


	inc a                                            ; $68db: $3c
	rst $38                                          ; $68dc: $ff
	cp a                                             ; $68dd: $bf
	ccf                                              ; $68de: $3f
	ld a, [hl]                                       ; $68df: $7e
	inc a                                            ; $68e0: $3c
	ld hl, sp-$22                                    ; $68e1: $f8 $de
	ret nz                                           ; $68e3: $c0

	sub l                                            ; $68e4: $95
	ld e, $b2                                        ; $68e5: $1e $b2
	db $e3                                           ; $68e7: $e3
	ld h, c                                          ; $68e8: $61
	dec b                                            ; $68e9: $05
	inc bc                                           ; $68ea: $03
	rrca                                             ; $68eb: $0f
	ccf                                              ; $68ec: $3f
	pop hl                                           ; $68ed: $e1
	ld b, c                                          ; $68ee: $41
	ld a, e                                          ; $68ef: $7b
	reti                                             ; $68f0: $d9


	rst SubAFromDE                                          ; $68f1: $df
	rlca                                             ; $68f2: $07
	sub a                                            ; $68f3: $97
	or $6b                                           ; $68f4: $f6 $6b
	or $ae                                           ; $68f6: $f6 $ae
	db $fc                                           ; $68f8: $fc
	ld hl, sp-$04                                    ; $68f9: $f8 $fc
	db $f4                                           ; $68fb: $f4
	ld a, c                                          ; $68fc: $79
	ld l, l                                          ; $68fd: $6d
	rst SubAFromDE                                          ; $68fe: $df
	cp $7f                                           ; $68ff: $fe $7f
	rst FarCall                                          ; $6901: $f7
	sub h                                            ; $6902: $94
	ld hl, sp-$42                                    ; $6903: $f8 $be
	ccf                                              ; $6905: $3f
	ld [hl], a                                       ; $6906: $77
	inc l                                            ; $6907: $2c
	ccf                                              ; $6908: $3f
	inc l                                            ; $6909: $2c
	dec c                                            ; $690a: $0d
	add hl, de                                       ; $690b: $19
	scf                                              ; $690c: $37
	inc l                                            ; $690d: $2c
	ld a, d                                          ; $690e: $7a
	ld h, h                                          ; $690f: $64
	add h                                            ; $6910: $84
	inc bc                                           ; $6911: $03
	ld [bc], a                                       ; $6912: $02
	ld b, $0b                                        ; $6913: $06 $0b
	set 2, e                                         ; $6915: $cb $d3
	add c                                            ; $6917: $81
	sbc h                                            ; $6918: $9c
	xor b                                            ; $6919: $a8
	add d                                            ; $691a: $82
	ld [de], a                                       ; $691b: $12
	rst FarCall                                          ; $691c: $f7
	scf                                              ; $691d: $37
	ccf                                              ; $691e: $3f
	ld a, a                                          ; $691f: $7f
	ld h, a                                          ; $6920: $67
	ld b, a                                          ; $6921: $47
	ld [hl], l                                       ; $6922: $75
	ld sp, hl                                        ; $6923: $f9
	ccf                                              ; $6924: $3f
	rst $38                                          ; $6925: $ff
	rst GetHLinHL                                          ; $6926: $cf
	cp b                                             ; $6927: $b8
	adc [hl]                                         ; $6928: $8e
	rra                                              ; $6929: $1f
	ld l, c                                          ; $692a: $69
	rst AddAOntoHL                                          ; $692b: $ef
	ld [hl], d                                       ; $692c: $72
	jp nc, $ffde                                     ; $692d: $d2 $de $ff

	add b                                            ; $6930: $80
	and h                                            ; $6931: $a4
	or h                                             ; $6932: $b4
	ld c, [hl]                                       ; $6933: $4e
	xor [hl]                                         ; $6934: $ae
	ld e, a                                          ; $6935: $5f
	rst SubAFromHL                                          ; $6936: $d7
	jp Jump_04d_5bd0                                 ; $6937: $c3 $d0 $5b


	ld c, e                                          ; $693a: $4b
	add c                                            ; $693b: $81
	pop bc                                           ; $693c: $c1
	and b                                            ; $693d: $a0
	adc b                                            ; $693e: $88
	ldh [$e0], a                                     ; $693f: $e0 $e0
	and b                                            ; $6941: $a0
	ld d, b                                          ; $6942: $50
	or b                                             ; $6943: $b0
	ld e, b                                          ; $6944: $58
	add h                                            ; $6945: $84
	cp $cf                                           ; $6946: $fe $cf
	sbc a                                            ; $6948: $9f
	ldh a, [$f8]                                     ; $6949: $f0 $f8
	ld hl, sp-$04                                    ; $694b: $f8 $fc
	ld e, [hl]                                       ; $694d: $5e
	ld c, $12                                        ; $694e: $0e $12
	sbc [hl]                                         ; $6950: $9e
	ld bc, $5b33                                     ; $6951: $01 $33 $5b
	or $97                                           ; $6954: $f6 $97
	xor d                                            ; $6956: $aa
	dec d                                            ; $6957: $15
	ld a, [bc]                                       ; $6958: $0a
	dec b                                            ; $6959: $05
	ld [bc], a                                       ; $695a: $02
	dec b                                            ; $695b: $05
	ld a, [bc]                                       ; $695c: $0a
	dec d                                            ; $695d: $15
	ld hl, sp-$69                                    ; $695e: $f8 $97
	ld d, h                                          ; $6960: $54
	and h                                            ; $6961: $a4
	ld d, [hl]                                       ; $6962: $56
	and [hl]                                         ; $6963: $a6
	ld d, [hl]                                       ; $6964: $56
	and [hl]                                         ; $6965: $a6
	ld d, d                                          ; $6966: $52
	rlca                                             ; $6967: $07
	ld a, e                                          ; $6968: $7b
	scf                                              ; $6969: $37
	db $dd                                           ; $696a: $dd
	ld bc, $ff97                                     ; $696b: $01 $97 $ff
	add c                                            ; $696e: $81
	sub h                                            ; $696f: $94
	xor d                                            ; $6970: $aa
	sub l                                            ; $6971: $95
	xor d                                            ; $6972: $aa
	sub h                                            ; $6973: $94
	xor d                                            ; $6974: $aa
	ld sp, hl                                        ; $6975: $f9
	ld a, a                                          ; $6976: $7f
	adc c                                            ; $6977: $89
	sbc c                                            ; $6978: $99
	rlca                                             ; $6979: $07
	and b                                            ; $697a: $a0
	ld b, h                                          ; $697b: $44
	jr z, jr_04d_69be                                ; $697c: $28 $40

	add c                                            ; $697e: $81
	ld hl, sp+$7c                                    ; $697f: $f8 $7c
	push af                                          ; $6981: $f5
	sbc e                                            ; $6982: $9b
	rra                                              ; $6983: $1f
	nop                                              ; $6984: $00
	ld [$6e50], sp                                   ; $6985: $08 $50 $6e
	add b                                            ; $6988: $80
	db $fc                                           ; $6989: $fc
	sbc h                                            ; $698a: $9c
	ret nz                                           ; $698b: $c0

	rst $38                                          ; $698c: $ff
	ccf                                              ; $698d: $3f
	ld h, c                                          ; $698e: $61
	ld b, d                                          ; $698f: $42
	ld a, d                                          ; $6990: $7a
	ldh a, [$98]                                     ; $6991: $f0 $98
	ld b, $0e                                        ; $6993: $06 $0e
	jr @+$01                                         ; $6995: $18 $ff

	ld d, b                                          ; $6997: $50
	scf                                              ; $6998: $37
	inc [hl]                                         ; $6999: $34
	ld [hl], l                                       ; $699a: $75
	add l                                            ; $699b: $85
	sbc e                                            ; $699c: $9b
	nop                                              ; $699d: $00
	xor a                                            ; $699e: $af
	ld [$7208], sp                                   ; $699f: $08 $08 $72
	dec a                                            ; $69a2: $3d
	sbc [hl]                                         ; $69a3: $9e
	rra                                              ; $69a4: $1f
	ld l, d                                          ; $69a5: $6a
	ld b, l                                          ; $69a6: $45
	sbc l                                            ; $69a7: $9d
	ldh [$1f], a                                     ; $69a8: $e0 $1f
	ld a, [$fc9d]                                    ; $69aa: $fa $9d $fc
	add e                                            ; $69ad: $83
	ld a, [$7c9b]                                    ; $69ae: $fa $9b $7c
	ld [bc], a                                       ; $69b1: $02
	inc bc                                           ; $69b2: $03
	ld [bc], a                                       ; $69b3: $02
	ld d, b                                          ; $69b4: $50
	rst $38                                          ; $69b5: $ff
	sbc l                                            ; $69b6: $9d
	ld b, b                                          ; $69b7: $40
	ret nz                                           ; $69b8: $c0

	ei                                               ; $69b9: $fb
	ld h, [hl]                                       ; $69ba: $66
	ld b, a                                          ; $69bb: $47
	sub d                                            ; $69bc: $92
	dec d                                            ; $69bd: $15

jr_04d_69be:
	dec bc                                           ; $69be: $0b
	scf                                              ; $69bf: $37
	ld c, e                                          ; $69c0: $4b
	ld d, a                                          ; $69c1: $57
	adc a                                            ; $69c2: $8f
	and a                                            ; $69c3: $a7
	xor a                                            ; $69c4: $af
	rrca                                             ; $69c5: $0f
	rra                                              ; $69c6: $1f
	rra                                              ; $69c7: $1f
	ccf                                              ; $69c8: $3f
	ccf                                              ; $69c9: $3f
	sbc $7f                                          ; $69ca: $de $7f
	sbc b                                            ; $69cc: $98
	ld hl, sp-$20                                    ; $69cd: $f8 $e0
	ldh [$f0], a                                     ; $69cf: $e0 $f0
	ldh a, [$c0]                                     ; $69d1: $f0 $c0
	and b                                            ; $69d3: $a0
	ld a, b                                          ; $69d4: $78
	sub c                                            ; $69d5: $91
	sbc [hl]                                         ; $69d6: $9e
	ldh a, [$de]                                     ; $69d7: $f0 $de
	ldh [$7e], a                                     ; $69d9: $e0 $7e
	ld h, [hl]                                       ; $69db: $66
	add h                                            ; $69dc: $84
	add hl, de                                       ; $69dd: $19
	jr @+$08                                         ; $69de: $18 $06

	ld a, [de]                                       ; $69e0: $1a
	inc a                                            ; $69e1: $3c
	jr nz, @+$14                                     ; $69e2: $20 $12

	ld [bc], a                                       ; $69e4: $02
	ld b, $07                                        ; $69e5: $06 $07
	dec bc                                           ; $69e7: $0b
	rlca                                             ; $69e8: $07
	rlca                                             ; $69e9: $07
	rrca                                             ; $69ea: $0f
	rrca                                             ; $69eb: $0f
	rlca                                             ; $69ec: $07
	rla                                              ; $69ed: $17
	cp a                                             ; $69ee: $bf
	cp [hl]                                          ; $69ef: $be
	ld e, a                                          ; $69f0: $5f
	ld c, e                                          ; $69f1: $4b
	ld e, h                                          ; $69f2: $5c
	ld l, d                                          ; $69f3: $6a
	ld d, b                                          ; $69f4: $50
	ld hl, sp+$70                                    ; $69f5: $f8 $70
	ld [hl], b                                       ; $69f7: $70
	db $dd                                           ; $69f8: $dd
	ldh a, [hDisp1_WX]                                     ; $69f9: $f0 $96
	ldh [$6c], a                                     ; $69fb: $e0 $6c
	ld h, a                                          ; $69fd: $67
	and l                                            ; $69fe: $a5
	inc d                                            ; $69ff: $14
	ld d, h                                          ; $6a00: $54
	ld l, h                                          ; $6a01: $6c
	inc l                                            ; $6a02: $2c
	add hl, hl                                       ; $6a03: $29
	ld a, b                                          ; $6a04: $78
	ld b, [hl]                                       ; $6a05: $46
	sub e                                            ; $6a06: $93
	ld l, a                                          ; $6a07: $6f
	cpl                                              ; $6a08: $2f
	rrca                                             ; $6a09: $0f
	dec c                                            ; $6a0a: $0d
	inc c                                            ; $6a0b: $0c
	ret nz                                           ; $6a0c: $c0

	ldh [hDisp1_SCY], a                                     ; $6a0d: $e0 $90
	ldh [$e0], a                                     ; $6a0f: $e0 $e0
	ld hl, sp-$04                                    ; $6a11: $f8 $fc
	ld [hl], a                                       ; $6a13: $77
	cp c                                             ; $6a14: $b9
	sbc b                                            ; $6a15: $98
	add sp, -$10                                     ; $6a16: $e8 $f0
	ldh a, [$f8]                                     ; $6a18: $f0 $f8
	ldh a, [$15]                                     ; $6a1a: $f0 $15
	ld [bc], a                                       ; $6a1c: $02
	ld [hl], l                                       ; $6a1d: $75
	and l                                            ; $6a1e: $a5
	or $79                                           ; $6a1f: $f6 $79
	jp nz, $bc76                                     ; $6a21: $c2 $76 $bc

	ld a, e                                          ; $6a24: $7b
	add b                                            ; $6a25: $80
	ld h, c                                          ; $6a26: $61
	call nz, Call_04d_5e6f                           ; $6a27: $c4 $6f $5e
	ei                                               ; $6a2a: $fb
	sub a                                            ; $6a2b: $97
	ld a, [hl+]                                      ; $6a2c: $2a
	dec b                                            ; $6a2d: $05
	adc d                                            ; $6a2e: $8a
	dec d                                            ; $6a2f: $15
	ld a, [hl+]                                      ; $6a30: $2a
	inc d                                            ; $6a31: $14
	nop                                              ; $6a32: $00
	ld b, h                                          ; $6a33: $44
	ld sp, hl                                        ; $6a34: $f9
	sub a                                            ; $6a35: $97
	and d                                            ; $6a36: $a2
	ld d, d                                          ; $6a37: $52
	and d                                            ; $6a38: $a2
	ld d, d                                          ; $6a39: $52
	ld [hl+], a                                      ; $6a3a: $22
	ld [de], a                                       ; $6a3b: $12
	ld [hl+], a                                      ; $6a3c: $22
	ld d, $d9                                        ; $6a3d: $16 $d9
	ld bc, $9199                                     ; $6a3f: $01 $99 $91
	and b                                            ; $6a42: $a0
	sub b                                            ; $6a43: $90
	xor b                                            ; $6a44: $a8
	add b                                            ; $6a45: $80
	sbc b                                            ; $6a46: $98
	ld e, c                                          ; $6a47: $59
	adc b                                            ; $6a48: $88
	ld a, h                                          ; $6a49: $7c
	jr c, @-$64                                      ; $6a4a: $38 $9a

	inc c                                            ; $6a4c: $0c
	ld [$0a11], sp                                   ; $6a4d: $08 $11 $0a
	add hl, bc                                       ; $6a50: $09
	db $fc                                           ; $6a51: $fc
	sub c                                            ; $6a52: $91
	ld [$0605], sp                                   ; $6a53: $08 $05 $06
	cp e                                             ; $6a56: $bb
	dec h                                            ; $6a57: $25
	ld b, h                                          ; $6a58: $44
	sbc e                                            ; $6a59: $9b
	and c                                            ; $6a5a: $a1
	inc h                                            ; $6a5b: $24
	ld h, d                                          ; $6a5c: $62
	ld b, b                                          ; $6a5d: $40
	ld b, h                                          ; $6a5e: $44
	jr jr_04d_6a99                                   ; $6a5f: $18 $38

	ld [hl], a                                       ; $6a61: $77
	cp h                                             ; $6a62: $bc
	sbc [hl]                                         ; $6a63: $9e
	add d                                            ; $6a64: $82
	ld [hl], a                                       ; $6a65: $77
	dec b                                            ; $6a66: $05
	ld a, h                                          ; $6a67: $7c
	ld h, l                                          ; $6a68: $65
	ld a, a                                          ; $6a69: $7f
	add sp, -$07                                     ; $6a6a: $e8 $f9
	sub a                                            ; $6a6c: $97
	ld [hl], h                                       ; $6a6d: $74
	or h                                             ; $6a6e: $b4
	or h                                             ; $6a6f: $b4
	ld d, h                                          ; $6a70: $54
	sub h                                            ; $6a71: $94
	sub h                                            ; $6a72: $94
	inc d                                            ; $6a73: $14
	inc d                                            ; $6a74: $14
	reti                                             ; $6a75: $d9


	ld [$9ef1], sp                                   ; $6a76: $08 $f1 $9e
	ld a, [hl]                                       ; $6a79: $7e
	ld h, c                                          ; $6a7a: $61
	ld e, l                                          ; $6a7b: $5d
	or $7c                                           ; $6a7c: $f6 $7c
	and c                                            ; $6a7e: $a1
	sbc [hl]                                         ; $6a7f: $9e
	ld d, h                                          ; $6a80: $54
	ld h, c                                          ; $6a81: $61
	ld b, l                                          ; $6a82: $45
	ld a, [hl]                                       ; $6a83: $7e
	xor a                                            ; $6a84: $af
	sbc d                                            ; $6a85: $9a
	dec b                                            ; $6a86: $05
	rrca                                             ; $6a87: $0f
	dec hl                                           ; $6a88: $2b
	rst AddAOntoHL                                          ; $6a89: $ef
	rst FarCall                                          ; $6a8a: $f7
	ld [hl], l                                       ; $6a8b: $75
	inc a                                            ; $6a8c: $3c
	sub h                                            ; $6a8d: $94
	ld bc, $0507                                     ; $6a8e: $01 $07 $05
	inc bc                                           ; $6a91: $03
	sub a                                            ; $6a92: $97
	xor a                                            ; $6a93: $af
	rla                                              ; $6a94: $17
	adc [hl]                                         ; $6a95: $8e
	ld e, [hl]                                       ; $6a96: $5e
	sbc $fd                                          ; $6a97: $de $fd

jr_04d_6a99:
	ld a, b                                          ; $6a99: $78
	ld [hl], $7e                                     ; $6a9a: $36 $7e
	rst $38                                          ; $6a9c: $ff
	ld [hl], l                                       ; $6a9d: $75
	adc l                                            ; $6a9e: $8d
	call c, Call_04d_7b80                            ; $6a9f: $dc $80 $7b
	rst GetHLinHL                                          ; $6aa2: $cf
	ld [hl], l                                       ; $6aa3: $75
	inc l                                            ; $6aa4: $2c
	db $fd                                           ; $6aa5: $fd
	ld a, [hl]                                       ; $6aa6: $7e
	ld e, e                                          ; $6aa7: $5b
	sbc c                                            ; $6aa8: $99
	nop                                              ; $6aa9: $00
	dec b                                            ; $6aaa: $05
	ld c, $16                                        ; $6aab: $0e $16
	inc e                                            ; $6aad: $1c
	ld a, [$03de]                                    ; $6aae: $fa $de $03
	sub e                                            ; $6ab1: $93
	ld [bc], a                                       ; $6ab2: $02
	ld bc, $0309                                     ; $6ab3: $01 $09 $03
	dec b                                            ; $6ab6: $05
	db $10                                           ; $6ab7: $10
	sub b                                            ; $6ab8: $90
	cp b                                             ; $6ab9: $b8
	or b                                             ; $6aba: $b0
	add b                                            ; $6abb: $80
	jr nz, jr_04d_6ade                               ; $6abc: $20 $20

	halt                                             ; $6abe: $76
	and h                                            ; $6abf: $a4

jr_04d_6ac0:
	db $dd                                           ; $6ac0: $dd
	ret nz                                           ; $6ac1: $c0

	sub e                                            ; $6ac2: $93
	add b                                            ; $6ac3: $80
	ld bc, $0424                                     ; $6ac4: $01 $24 $04
	dec h                                            ; $6ac7: $25

jr_04d_6ac8:
	dec b                                            ; $6ac8: $05
	inc h                                            ; $6ac9: $24
	inc d                                            ; $6aca: $14
	inc [hl]                                         ; $6acb: $34
	inc c                                            ; $6acc: $0c
	add hl, bc                                       ; $6acd: $09
	add hl, bc                                       ; $6ace: $09
	call c, $9708                                    ; $6acf: $dc $08 $97
	jr nc, jr_04d_6ac0                               ; $6ad2: $30 $ec

	or h                                             ; $6ad4: $b4
	inc [hl]                                         ; $6ad5: $34
	inc c                                            ; $6ad6: $0c
	jp z, $e7ca                                      ; $6ad7: $ca $ca $e7

	call c, $def8                                    ; $6ada: $dc $f8 $de
	cp h                                             ; $6add: $bc

jr_04d_6ade:
	ld h, [hl]                                       ; $6ade: $66
	jp z, $d9e0                                      ; $6adf: $ca $e0 $d9

	sbc e                                            ; $6ae2: $9b
	ld [bc], a                                       ; $6ae3: $02
	stop                                             ; $6ae4: $10 $00
	db $10                                           ; $6ae6: $10
	push af                                          ; $6ae7: $f5
	ld a, [hl]                                       ; $6ae8: $7e
	add $7f                                          ; $6ae9: $c6 $7f
	cp $9e                                           ; $6aeb: $fe $9e
	ld [bc], a                                       ; $6aed: $02
	ld a, e                                          ; $6aee: $7b
	cp $d9                                           ; $6aef: $fe $d9
	ld bc, $80d9                                     ; $6af1: $01 $d9 $80
	ld sp, hl                                        ; $6af4: $f9
	sbc e                                            ; $6af5: $9b
	inc d                                            ; $6af6: $14
	inc h                                            ; $6af7: $24
	ld [bc], a                                       ; $6af8: $02
	inc b                                            ; $6af9: $04
	ld a, e                                          ; $6afa: $7b
	ld e, h                                          ; $6afb: $5c
	sbc h                                            ; $6afc: $9c
	nop                                              ; $6afd: $00
	dec bc                                           ; $6afe: $0b
	ld [bc], a                                       ; $6aff: $02
	ld [hl], a                                       ; $6b00: $77
	ld a, [$96ff]                                    ; $6b01: $fa $ff $96
	jp $9120                                         ; $6b04: $c3 $20 $91


	ld b, c                                          ; $6b07: $41
	ld b, b                                          ; $6b08: $40
	ld hl, $1930                                     ; $6b09: $21 $30 $19
	jr nz, jr_04d_6b88                               ; $6b0c: $20 $7a

	rst $38                                          ; $6b0e: $ff
	ld a, b                                          ; $6b0f: $78
	add [hl]                                         ; $6b10: $86
	sub a                                            ; $6b11: $97
	nop                                              ; $6b12: $00
	ld c, $19                                        ; $6b13: $0e $19
	add hl, de                                       ; $6b15: $19
	inc a                                            ; $6b16: $3c
	ld h, c                                          ; $6b17: $61
	ld e, [hl]                                       ; $6b18: $5e
	or c                                             ; $6b19: $b1
	ld [hl], c                                       ; $6b1a: $71
	ld h, b                                          ; $6b1b: $60
	sbc [hl]                                         ; $6b1c: $9e
	ld b, $7b                                        ; $6b1d: $06 $7b
	db $ec                                           ; $6b1f: $ec
	sub c                                            ; $6b20: $91
	inc b                                            ; $6b21: $04
	inc a                                            ; $6b22: $3c
	xor h                                            ; $6b23: $ac
	ld e, h                                          ; $6b24: $5c
	inc e                                            ; $6b25: $1c
	ld l, h                                          ; $6b26: $6c
	rst AddAOntoHL                                          ; $6b27: $ef
	cp h                                             ; $6b28: $bc
	ld [rRAMB], sp                                   ; $6b29: $08 $00 $40
	add b                                            ; $6b2c: $80
	ldh [hDisp1_SCY], a                                     ; $6b2d: $e0 $90
	ld a, [$209c]                                    ; $6b2f: $fa $9c $20
	scf                                              ; $6b32: $37
	db $f4                                           ; $6b33: $f4
	ld a, [$b042]                                    ; $6b34: $fa $42 $b0
	sbc b                                            ; $6b37: $98
	xor d                                            ; $6b38: $aa
	ld d, h                                          ; $6b39: $54
	xor d                                            ; $6b3a: $aa
	ld d, b                                          ; $6b3b: $50
	and b                                            ; $6b3c: $a0
	db $10                                           ; $6b3d: $10
	xor b                                            ; $6b3e: $a8
	ld h, c                                          ; $6b3f: $61
	jr nc, jr_04d_6ac8                               ; $6b40: $30 $86

	dec e                                            ; $6b42: $1d
	dec c                                            ; $6b43: $0d
	ld de, $650a                                     ; $6b44: $11 $0a $65
	ld c, e                                          ; $6b47: $4b
	cpl                                              ; $6b48: $2f
	rst GetHLinHL                                          ; $6b49: $cf
	inc bc                                           ; $6b4a: $03
	inc de                                           ; $6b4b: $13
	rrca                                             ; $6b4c: $0f
	scf                                              ; $6b4d: $37
	rra                                              ; $6b4e: $1f
	ccf                                              ; $6b4f: $3f
	ld e, a                                          ; $6b50: $5f
	ccf                                              ; $6b51: $3f
	db $fd                                           ; $6b52: $fd
	ld sp, hl                                        ; $6b53: $f9
	ld a, d                                          ; $6b54: $7a
	ld hl, sp-$06                                    ; $6b55: $f8 $fa
	push af                                          ; $6b57: $f5
	ldh a, [$f0]                                     ; $6b58: $f0 $f0
	cp $de                                           ; $6b5a: $fe $de
	db $fc                                           ; $6b5c: $fc
	sbc $f8                                          ; $6b5d: $de $f8
	sbc d                                            ; $6b5f: $9a
	ldh a, [$aa]                                     ; $6b60: $f0 $aa
	ld d, l                                          ; $6b62: $55
	nop                                              ; $6b63: $00
	inc b                                            ; $6b64: $04
	ld d, a                                          ; $6b65: $57
	inc de                                           ; $6b66: $13

Jump_04d_6b67:
	sbc l                                            ; $6b67: $9d
	pop af                                           ; $6b68: $f1
	inc c                                            ; $6b69: $0c
	ld a, d                                          ; $6b6a: $7a
	rst JumpTable                                          ; $6b6b: $c7
	cp $9d                                           ; $6b6c: $fe $9d
	rrca                                             ; $6b6e: $0f
	inc bc                                           ; $6b6f: $03
	ei                                               ; $6b70: $fb
	ld a, h                                          ; $6b71: $7c
	di                                               ; $6b72: $f3
	ld l, d                                          ; $6b73: $6a
	rst AddAOntoHL                                          ; $6b74: $ef
	ld l, c                                          ; $6b75: $69
	jr c, @-$6c                                      ; $6b76: $38 $92

	rst FarCall                                          ; $6b78: $f7
	rst JumpTable                                          ; $6b79: $c7
	call nz, $2424                                   ; $6b7a: $c4 $24 $24
	inc d                                            ; $6b7d: $14
	inc b                                            ; $6b7e: $04
	inc h                                            ; $6b7f: $24
	ld [$3938], sp                                   ; $6b80: $08 $38 $39
	jr jr_04d_6b9d                                   ; $6b83: $18 $18

	sbc $08                                          ; $6b85: $de $08
	ld a, a                                          ; $6b87: $7f

jr_04d_6b88:
	cp b                                             ; $6b88: $b8
	rst SubAFromDE                                          ; $6b89: $df
	inc c                                            ; $6b8a: $0c
	ld [hl], a                                       ; $6b8b: $77
	cpl                                              ; $6b8c: $2f
	sbc e                                            ; $6b8d: $9b
	inc l                                            ; $6b8e: $2c
	ld l, $ff                                        ; $6b8f: $2e $ff
	rlca                                             ; $6b91: $07
	ld [hl], a                                       ; $6b92: $77
	ld hl, sp-$21                                    ; $6b93: $f8 $df
	rst $38                                          ; $6b95: $ff
	sbc [hl]                                         ; $6b96: $9e
	rlca                                             ; $6b97: $07
	ld h, b                                          ; $6b98: $60
	and a                                            ; $6b99: $a7
	ld [hl], b                                       ; $6b9a: $70
	db $dd                                           ; $6b9b: $dd
	rst SubAFromDE                                          ; $6b9c: $df

jr_04d_6b9d:
	rst $38                                          ; $6b9d: $ff
	ld a, [hl]                                       ; $6b9e: $7e
	ld b, a                                          ; $6b9f: $47
	ld l, e                                          ; $6ba0: $6b
	or l                                             ; $6ba1: $b5
	ld l, a                                          ; $6ba2: $6f
	or a                                             ; $6ba3: $b7
	ld a, h                                          ; $6ba4: $7c
	ld a, [hl]                                       ; $6ba5: $7e
	ld sp, hl                                        ; $6ba6: $f9
	ld l, e                                          ; $6ba7: $6b
	rst FarCall                                          ; $6ba8: $f7
	sbc h                                            ; $6ba9: $9c
	cp $1f                                           ; $6baa: $fe $1f
	ld [hl], b                                       ; $6bac: $70
	ei                                               ; $6bad: $fb
	ld [hl], h                                       ; $6bae: $74
	xor d                                            ; $6baf: $aa
	ld a, l                                          ; $6bb0: $7d
	rlca                                             ; $6bb1: $07
	ld a, a                                          ; $6bb2: $7f
	cp $9e                                           ; $6bb3: $fe $9e
	cp $71                                           ; $6bb5: $fe $71
	cp e                                             ; $6bb7: $bb
	ld [hl], h                                       ; $6bb8: $74
	ld b, e                                          ; $6bb9: $43
	rst SubAFromDE                                          ; $6bba: $df
	rlca                                             ; $6bbb: $07
	call c, $9d80                                    ; $6bbc: $dc $80 $9d
	db $e3                                           ; $6bbf: $e3
	rst $38                                          ; $6bc0: $ff
	ld d, d                                          ; $6bc1: $52
	ld [hl], b                                       ; $6bc2: $70
	sbc e                                            ; $6bc3: $9b
	inc b                                            ; $6bc4: $04
	ret z                                            ; $6bc5: $c8

	or c                                             ; $6bc6: $b1
	push de                                          ; $6bc7: $d5
	ld l, a                                          ; $6bc8: $6f
	rst FarCall                                          ; $6bc9: $f7
	sub h                                            ; $6bca: $94
	ld c, b                                          ; $6bcb: $48
	ld a, [hl+]                                      ; $6bcc: $2a
	dec c                                            ; $6bcd: $0d
	dec b                                            ; $6bce: $05
	ld [bc], a                                       ; $6bcf: $02
	ld bc, $0400                                     ; $6bd0: $01 $00 $04
	ld [$02d0], sp                                   ; $6bd3: $08 $d0 $02
	ld a, e                                          ; $6bd6: $7b
	ld sp, hl                                        ; $6bd7: $f9
	ld a, e                                          ; $6bd8: $7b
	rst AddAOntoHL                                          ; $6bd9: $ef
	sbc d                                            ; $6bda: $9a
	ld [$0303], sp                                   ; $6bdb: $08 $03 $03
	inc b                                            ; $6bde: $04
	adc c                                            ; $6bdf: $89
	ld a, c                                          ; $6be0: $79
	ld e, l                                          ; $6be1: $5d
	ld a, e                                          ; $6be2: $7b
	di                                               ; $6be3: $f3
	add b                                            ; $6be4: $80
	add b                                            ; $6be5: $80
	ld b, $81                                        ; $6be6: $06 $81
	jp nz, Jump_04d_6840                             ; $6be8: $c2 $40 $68

	inc l                                            ; $6beb: $2c
	cp l                                             ; $6bec: $bd
	xor [hl]                                         ; $6bed: $ae
	ld d, l                                          ; $6bee: $55
	adc e                                            ; $6bef: $8b
	ld b, l                                          ; $6bf0: $45
	add sp, -$5c                                     ; $6bf1: $e8 $a4
	nop                                              ; $6bf3: $00
	ld [bc], a                                       ; $6bf4: $02
	ld d, c                                          ; $6bf5: $51
	xor d                                            ; $6bf6: $aa
	ld [hl], h                                       ; $6bf7: $74
	ld a, [hl+]                                      ; $6bf8: $2a
	dec d                                            ; $6bf9: $15
	jr jr_04d_6c5c                                   ; $6bfa: $18 $60

	ld c, c                                          ; $6bfc: $49
	sub [hl]                                         ; $6bfd: $96
	inc a                                            ; $6bfe: $3c
	ld c, d                                          ; $6bff: $4a
	add l                                            ; $6c00: $85
	inc h                                            ; $6c01: $24
	ld [hl], l                                       ; $6c02: $75
	db $10                                           ; $6c03: $10
	sbc b                                            ; $6c04: $98
	or [hl]                                          ; $6c05: $b6
	add hl, hl                                       ; $6c06: $29
	ld b, d                                          ; $6c07: $42
	and l                                            ; $6c08: $a5
	ld b, b                                          ; $6c09: $40
	ld bc, $fb8a                                     ; $6c0a: $01 $8a $fb
	sbc [hl]                                         ; $6c0d: $9e
	xor b                                            ; $6c0e: $a8
	ld l, d                                          ; $6c0f: $6a
	dec c                                            ; $6c10: $0d
	sub l                                            ; $6c11: $95
	db $10                                           ; $6c12: $10
	ldh [$a0], a                                     ; $6c13: $e0 $a0
	ld d, b                                          ; $6c15: $50
	xor c                                            ; $6c16: $a9
	db $f4                                           ; $6c17: $f4
	ld sp, hl                                        ; $6c18: $f9
	or $7d                                           ; $6c19: $f6 $7d
	call nc, Call_04d_7376                           ; $6c1b: $d4 $76 $73
	ld a, a                                          ; $6c1e: $7f
	xor l                                            ; $6c1f: $ad
	ld a, l                                          ; $6c20: $7d
	add e                                            ; $6c21: $83
	sub a                                            ; $6c22: $97
	rrca                                             ; $6c23: $0f
	cp a                                             ; $6c24: $bf
	ld a, a                                          ; $6c25: $7f
	xor a                                            ; $6c26: $af
	rla                                              ; $6c27: $17
	adc a                                            ; $6c28: $8f
	rla                                              ; $6c29: $17
	xor a                                            ; $6c2a: $af
	ld a, c                                          ; $6c2b: $79
	sub d                                            ; $6c2c: $92
	ld [hl], c                                       ; $6c2d: $71
	adc [hl]                                         ; $6c2e: $8e
	ld a, h                                          ; $6c2f: $7c
	sbc e                                            ; $6c30: $9b
	ld a, a                                          ; $6c31: $7f
	cp $9b                                           ; $6c32: $fe $9b
	jp nz, $ead4                                     ; $6c34: $c2 $d4 $ea

	sub b                                            ; $6c37: $90
	ld [hl], h                                       ; $6c38: $74
	ld d, d                                          ; $6c39: $52
	ld [hl], l                                       ; $6c3a: $75
	xor l                                            ; $6c3b: $ad
	ld l, h                                          ; $6c3c: $6c
	or h                                             ; $6c3d: $b4
	ld a, a                                          ; $6c3e: $7f
	and a                                            ; $6c3f: $a7
	db $f4                                           ; $6c40: $f4
	sbc h                                            ; $6c41: $9c
	ld hl, sp+$1c                                    ; $6c42: $f8 $1c
	ld c, $73                                        ; $6c44: $0e $73
	jr nc, jr_04d_6cc6                               ; $6c46: $30 $7e

	ld d, a                                          ; $6c48: $57
	ld a, e                                          ; $6c49: $7b
	cp e                                             ; $6c4a: $bb
	rst SubAFromDE                                          ; $6c4b: $df
	ld b, $9b                                        ; $6c4c: $06 $9b
	inc c                                            ; $6c4e: $0c
	ld c, $1c                                        ; $6c4f: $0e $1c
	dec e                                            ; $6c51: $1d
	ld e, [hl]                                       ; $6c52: $5e
	nop                                              ; $6c53: $00
	ld a, [hl]                                       ; $6c54: $7e
	call nz, $fe7f                                   ; $6c55: $c4 $7f $fe
	sbc l                                            ; $6c58: $9d
	nop                                              ; $6c59: $00
	inc h                                            ; $6c5a: $24
	ld c, h                                          ; $6c5b: $4c

jr_04d_6c5c:
	ldh a, [$9d]                                     ; $6c5c: $f0 $9d
	db $fc                                           ; $6c5e: $fc
	cpl                                              ; $6c5f: $2f
	ld a, [$f66e]                                    ; $6c60: $fa $6e $f6
	sbc h                                            ; $6c63: $9c
	ld [$6434], sp                                   ; $6c64: $08 $34 $64
	ld l, d                                          ; $6c67: $6a
	ld hl, $189e                                     ; $6c68: $21 $9e $18
	ldh [$d1], a                                     ; $6c6b: $e0 $d1
	sbc [hl]                                         ; $6c6d: $9e
	inc b                                            ; $6c6e: $04
	jp c, Jump_04d_7c02                              ; $6c6f: $da $02 $7c

	db $d3                                           ; $6c72: $d3
	ld b, l                                          ; $6c73: $45
	add b                                            ; $6c74: $80
	sbc l                                            ; $6c75: $9d
	ld bc, $7403                                     ; $6c76: $01 $03 $74
	sbc e                                            ; $6c79: $9b
	sub h                                            ; $6c7a: $94
	ld c, b                                          ; $6c7b: $48
	ld d, e                                          ; $6c7c: $53
	xor c                                            ; $6c7d: $a9
	add $c6                                          ; $6c7e: $c6 $c6
	add [hl]                                         ; $6c80: $86
	ld [bc], a                                       ; $6c81: $02
	nop                                              ; $6c82: $00
	jr nc, jr_04d_6cb1                               ; $6c83: $30 $2c

	ld b, [hl]                                       ; $6c85: $46
	ld [hl], b                                       ; $6c86: $70
	adc l                                            ; $6c87: $8d
	sub e                                            ; $6c88: $93
	ld b, e                                          ; $6c89: $43
	inc h                                            ; $6c8a: $24
	adc b                                            ; $6c8b: $88
	jr c, @+$4a                                      ; $6c8c: $38 $48

	add h                                            ; $6c8e: $84
	inc h                                            ; $6c8f: $24
	db $10                                           ; $6c90: $10
	jr nc, jr_04d_6ca5                               ; $6c91: $30 $12

	jr nc, jr_04d_6cdb                               ; $6c93: $30 $46

	ld [hl], l                                       ; $6c95: $75
	ld l, [hl]                                       ; $6c96: $6e
	sbc e                                            ; $6c97: $9b
	jr nc, jr_04d_6caa                               ; $6c98: $30 $10

	inc l                                            ; $6c9a: $2c
	jr jr_04d_6d16                                   ; $6c9b: $18 $79

	ld l, $9c                                        ; $6c9d: $2e $9c
	db $10                                           ; $6c9f: $10
	adc d                                            ; $6ca0: $8a
	inc l                                            ; $6ca1: $2c
	ld [hl], l                                       ; $6ca2: $75
	daa                                              ; $6ca3: $27
	ld a, a                                          ; $6ca4: $7f

jr_04d_6ca5:
	cp $95                                           ; $6ca5: $fe $95
	ld [SetWramBankAStoringCurrInHighByteInStackAfterReturn], sp                                   ; $6ca7: $08 $05 $08

jr_04d_6caa:
	nop                                              ; $6caa: $00
	add hl, bc                                       ; $6cab: $09
	ld [de], a                                       ; $6cac: $12
	inc e                                            ; $6cad: $1c
	jr nc, jr_04d_6cb4                               ; $6cae: $30 $04

	ld a, [bc]                                       ; $6cb0: $0a

jr_04d_6cb1:
	ld a, c                                          ; $6cb1: $79
	sub h                                            ; $6cb2: $94
	sbc c                                            ; $6cb3: $99

jr_04d_6cb4:
	add hl, bc                                       ; $6cb4: $09
	ld [bc], a                                       ; $6cb5: $02
	inc c                                            ; $6cb6: $0c
	ld b, $55                                        ; $6cb7: $06 $55
	and c                                            ; $6cb9: $a1
	ld [hl], e                                       ; $6cba: $73
	dec c                                            ; $6cbb: $0d
	sbc h                                            ; $6cbc: $9c
	ld b, c                                          ; $6cbd: $41
	xor d                                            ; $6cbe: $aa
	ld b, d                                          ; $6cbf: $42
	ld l, [hl]                                       ; $6cc0: $6e
	ld l, h                                          ; $6cc1: $6c
	sbc h                                            ; $6cc2: $9c
	ld [hl], b                                       ; $6cc3: $70
	xor e                                            ; $6cc4: $ab
	ld b, b                                          ; $6cc5: $40

jr_04d_6cc6:
	ld [hl], d                                       ; $6cc6: $72
	add hl, hl                                       ; $6cc7: $29
	sbc [hl]                                         ; $6cc8: $9e
	add b                                            ; $6cc9: $80
	ld l, h                                          ; $6cca: $6c
	ld c, l                                          ; $6ccb: $4d
	ld a, [hl]                                       ; $6ccc: $7e
	ret nz                                           ; $6ccd: $c0

	sub a                                            ; $6cce: $97
	ldh [c], a                                       ; $6ccf: $e2
	pop de                                           ; $6cd0: $d1
	ld a, [$f4e8]                                    ; $6cd1: $fa $e8 $f4
	jp z, $0707                                      ; $6cd4: $ca $07 $07

	sbc $0f                                          ; $6cd7: $de $0f
	sub h                                            ; $6cd9: $94
	rla                                              ; $6cda: $17

jr_04d_6cdb:
	dec bc                                           ; $6cdb: $0b
	dec d                                            ; $6cdc: $15
	ld e, a                                          ; $6cdd: $5f
	cp a                                             ; $6cde: $bf
	ld a, a                                          ; $6cdf: $7f
	ccf                                              ; $6ce0: $3f
	ld c, [hl]                                       ; $6ce1: $4e
	xor $7e                                          ; $6ce2: $ee $7e
	cp [hl]                                          ; $6ce4: $be
	jp c, $96ff                                      ; $6ce5: $da $ff $96

	ld a, [hl]                                       ; $6ce8: $7e
	and d                                            ; $6ce9: $a2
	push de                                          ; $6cea: $d5
	xor d                                            ; $6ceb: $aa
	push de                                          ; $6cec: $d5
	xor d                                            ; $6ced: $aa
	ld d, l                                          ; $6cee: $55
	xor d                                            ; $6cef: $aa
	ld d, l                                          ; $6cf0: $55
	ld h, [hl]                                       ; $6cf1: $66
	cpl                                              ; $6cf2: $2f
	sub a                                            ; $6cf3: $97
	jr z, jr_04d_6d47                                ; $6cf4: $28 $51

	adc d                                            ; $6cf6: $8a
	dec d                                            ; $6cf7: $15
	xor d                                            ; $6cf8: $aa
	ld d, l                                          ; $6cf9: $55
	and d                                            ; $6cfa: $a2
	ld b, l                                          ; $6cfb: $45
	ld sp, hl                                        ; $6cfc: $f9
	sub l                                            ; $6cfd: $95
	rlca                                             ; $6cfe: $07
	pop af                                           ; $6cff: $f1
	rst $38                                          ; $6d00: $ff
	rrca                                             ; $6d01: $0f
	rrca                                             ; $6d02: $0f
	ld a, a                                          ; $6d03: $7f
	rst $38                                          ; $6d04: $ff
	jp $0c00                                         ; $6d05: $c3 $00 $0c


	db $fc                                           ; $6d08: $fc
	sub [hl]                                         ; $6d09: $96
	jr nc, jr_04d_6d4b                               ; $6d0a: $30 $3f

	cp a                                             ; $6d0c: $bf
	rst $38                                          ; $6d0d: $ff
	push hl                                          ; $6d0e: $e5
	add d                                            ; $6d0f: $82
	push bc                                          ; $6d10: $c5
	ld a, [$76ae]                                    ; $6d11: $fa $ae $76
	di                                               ; $6d14: $f3
	sub e                                            ; $6d15: $93

jr_04d_6d16:
	ld d, b                                          ; $6d16: $50
	jr z, jr_04d_6d1d                                ; $6d17: $28 $04

	ld d, b                                          ; $6d19: $50
	nop                                              ; $6d1a: $00
	ld [hl], h                                       ; $6d1b: $74
	add b                                            ; $6d1c: $80

jr_04d_6d1d:
	ld [hl], h                                       ; $6d1d: $74
	and b                                            ; $6d1e: $a0
	ld d, l                                          ; $6d1f: $55
	add [hl]                                         ; $6d20: $86
	ret nz                                           ; $6d21: $c0

	db $db                                           ; $6d22: $db
	ld [$09df], sp                                   ; $6d23: $08 $df $09
	add b                                            ; $6d26: $80
	rrca                                             ; $6d27: $0f
	dec b                                            ; $6d28: $05
	inc bc                                           ; $6d29: $03
	ld l, h                                          ; $6d2a: $6c
	and [hl]                                         ; $6d2b: $a6
	ld e, [hl]                                       ; $6d2c: $5e
	ld [hl], a                                       ; $6d2d: $77
	call nz, $0e10                                   ; $6d2e: $c4 $10 $0e
	inc b                                            ; $6d31: $04
	db $10                                           ; $6d32: $10
	ld a, b                                          ; $6d33: $78
	pop hl                                           ; $6d34: $e1
	xor $38                                          ; $6d35: $ee $38
	add h                                            ; $6d37: $84
	or b                                             ; $6d38: $b0
	rrca                                             ; $6d39: $0f
	rlca                                             ; $6d3a: $07
	jp nz, $86a0                                     ; $6d3b: $c2 $a0 $86

	sbc h                                            ; $6d3e: $9c
	jr c, @+$0a                                      ; $6d3f: $38 $08

	add b                                            ; $6d41: $80
	sbc [hl]                                         ; $6d42: $9e
	dec e                                            ; $6d43: $1d
	ld a, a                                          ; $6d44: $7f
	ld h, b                                          ; $6d45: $60
	sbc [hl]                                         ; $6d46: $9e

jr_04d_6d47:
	ld h, b                                          ; $6d47: $60
	cp $9d                                           ; $6d48: $fe $9d
	ret nz                                           ; $6d4a: $c0

jr_04d_6d4b:
	ldh [rPCM34], a                                  ; $6d4b: $e0 $77
	ld a, [$f777]                                    ; $6d4d: $fa $77 $f7
	inc e                                            ; $6d50: $1c
	ld a, [hl+]                                      ; $6d51: $2a
	ld h, l                                          ; $6d52: $65
	ld c, e                                          ; $6d53: $4b
	ld a, l                                          ; $6d54: $7d
	reti                                             ; $6d55: $d9


	jp c, $da02                                      ; $6d56: $da $02 $da

	ld bc, $819e                                     ; $6d59: $01 $9e $81
	ld b, h                                          ; $6d5c: $44
	ld b, b                                          ; $6d5d: $40
	ld [hl], d                                       ; $6d5e: $72
	set 6, [hl]                                      ; $6d5f: $cb $f6
	sbc d                                            ; $6d61: $9a
	db $10                                           ; $6d62: $10
	sub b                                            ; $6d63: $90
	ld b, b                                          ; $6d64: $40
	ld [hl], b                                       ; $6d65: $70
	db $10                                           ; $6d66: $10
	ld l, d                                          ; $6d67: $6a
	ld a, [hl-]                                      ; $6d68: $3a
	sbc b                                            ; $6d69: $98
	jr nz, @+$12                                     ; $6d6a: $20 $10

	ld [$0804], sp                                   ; $6d6c: $08 $04 $08
	db $10                                           ; $6d6f: $10
	jr jr_04d_6ded                                   ; $6d70: $18 $7b

	cp $9d                                           ; $6d72: $fe $9d
	ld a, [de]                                       ; $6d74: $1a
	inc d                                            ; $6d75: $14
	ld a, e                                          ; $6d76: $7b
	db $ec                                           ; $6d77: $ec
	ld a, d                                          ; $6d78: $7a
	ret nc                                           ; $6d79: $d0

	sbc e                                            ; $6d7a: $9b
	ld bc, $200b                                     ; $6d7b: $01 $0b $20
	ld b, b                                          ; $6d7e: $40
	ld a, d                                          ; $6d7f: $7a
	push hl                                          ; $6d80: $e5
	cp $99                                           ; $6d81: $fe $99
	jr jr_04d_6dbd                                   ; $6d83: $18 $38

	ld l, b                                          ; $6d85: $68
	ld e, b                                          ; $6d86: $58
	ld c, b                                          ; $6d87: $48
	sbc b                                            ; $6d88: $98
	ld a, [hl-]                                      ; $6d89: $3a
	jr nc, @-$66                                     ; $6d8a: $30 $98

	ld h, b                                          ; $6d8c: $60
	ld [hl-], a                                      ; $6d8d: $32
	ld a, [hl]                                       ; $6d8e: $7e
	rst $38                                          ; $6d8f: $ff
	ccf                                              ; $6d90: $3f
	halt                                             ; $6d91: $76
	halt                                             ; $6d92: $76
	ld h, b                                          ; $6d93: $60
	ld d, b                                          ; $6d94: $50
	sub e                                            ; $6d95: $93
	ld a, [hl+]                                      ; $6d96: $2a
	dec [hl]                                         ; $6d97: $35
	add hl, hl                                       ; $6d98: $29
	ld d, a                                          ; $6d99: $57
	ld h, d                                          ; $6d9a: $62
	ld b, l                                          ; $6d9b: $45
	and d                                            ; $6d9c: $a2
	inc bc                                           ; $6d9d: $03
	rla                                              ; $6d9e: $17
	rrca                                             ; $6d9f: $0f
	rra                                              ; $6da0: $1f
	cpl                                              ; $6da1: $2f
	ld a, b                                          ; $6da2: $78
	ld c, a                                          ; $6da3: $4f
	sub [hl]                                         ; $6da4: $96
	ld a, h                                          ; $6da5: $7c
	db $fd                                           ; $6da6: $fd
	cp $ff                                           ; $6da7: $fe $ff
	cp $fd                                           ; $6da9: $fe $fd
	ld a, [$fe79]                                    ; $6dab: $fa $79 $fe
	ld [hl], h                                       ; $6dae: $74
	ld c, a                                          ; $6daf: $4f
	sbc $fc                                          ; $6db0: $de $fc
	sub a                                            ; $6db2: $97
	and b                                            ; $6db3: $a0
	ld d, c                                          ; $6db4: $51
	xor d                                            ; $6db5: $aa
	ld e, l                                          ; $6db6: $5d
	cp d                                             ; $6db7: $ba
	ld a, c                                          ; $6db8: $79
	jp nc, $fd37                                     ; $6db9: $d2 $37 $fd

	sub e                                            ; $6dbc: $93

jr_04d_6dbd:
	inc c                                            ; $6dbd: $0c
	inc e                                            ; $6dbe: $1c
	inc a                                            ; $6dbf: $3c
	ld a, h                                          ; $6dc0: $7c
	nop                                              ; $6dc1: $00
	ld d, h                                          ; $6dc2: $54
	xor d                                            ; $6dc3: $aa
	ld d, l                                          ; $6dc4: $55
	and [hl]                                         ; $6dc5: $a6
	rra                                              ; $6dc6: $1f
	cp d                                             ; $6dc7: $ba
	ld a, l                                          ; $6dc8: $7d
	ld [hl], e                                       ; $6dc9: $73
	ld l, b                                          ; $6dca: $68
	sub h                                            ; $6dcb: $94
	inc b                                            ; $6dcc: $04
	ld a, b                                          ; $6dcd: $78
	ld [hl], b                                       ; $6dce: $70
	inc bc                                           ; $6dcf: $03
	rla                                              ; $6dd0: $17
	and a                                            ; $6dd1: $a7
	ld d, [hl]                                       ; $6dd2: $56
	and h                                            ; $6dd3: $a4
	ld b, b                                          ; $6dd4: $40
	add b                                            ; $6dd5: $80
	ld b, b                                          ; $6dd6: $40
	ld [hl], h                                       ; $6dd7: $74
	ld d, c                                          ; $6dd8: $51
	ld a, h                                          ; $6dd9: $7c
	ld hl, sp+$78                                    ; $6dda: $f8 $78
	and e                                            ; $6ddc: $a3
	sbc e                                            ; $6ddd: $9b
	call $266c                                       ; $6dde: $cd $6c $26
	ld [hl+], a                                      ; $6de1: $22
	sbc $20                                          ; $6de2: $de $20
	sbc d                                            ; $6de4: $9a
	ld bc, $1030                                     ; $6de5: $01 $30 $10
	jr jr_04d_6dfe                                   ; $6de8: $18 $14

	sbc $10                                          ; $6dea: $de $10
	ld a, a                                          ; $6dec: $7f

jr_04d_6ded:
	ld sp, hl                                        ; $6ded: $f9
	sub [hl]                                         ; $6dee: $96
	ret nc                                           ; $6def: $d0

	jr nz, @+$12                                     ; $6df0: $20 $10

	ld de, $1214                                     ; $6df2: $11 $14 $12
	ret z                                            ; $6df5: $c8

	add sp, $28                                      ; $6df6: $e8 $28
	ld a, b                                          ; $6df8: $78
	ld b, c                                          ; $6df9: $41
	sub l                                            ; $6dfa: $95
	dec bc                                           ; $6dfb: $0b
	rrca                                             ; $6dfc: $0f
	nop                                              ; $6dfd: $00

jr_04d_6dfe:
	ld b, b                                          ; $6dfe: $40
	sub b                                            ; $6dff: $90
	ld l, b                                          ; $6e00: $68
	ld b, $c1                                        ; $6e01: $06 $c1
	call Call_04d_7ba1                               ; $6e03: $cd $a1 $7b
	ld [hl], a                                       ; $6e06: $77
	sub l                                            ; $6e07: $95
	jr nc, @+$3b                                     ; $6e08: $30 $39

	ccf                                              ; $6e0a: $3f
	ldh a, [c]                                       ; $6e0b: $f2
	ld [de], a                                       ; $6e0c: $12
	call nc, $00b4                                   ; $6e0d: $d4 $b4 $00
	ld [hl], b                                       ; $6e10: $70
	ld e, b                                          ; $6e11: $58
	ld a, d                                          ; $6e12: $7a
	ld l, $98                                        ; $6e13: $2e $98
	ld a, [hl-]                                      ; $6e15: $3a
	ld c, d                                          ; $6e16: $4a
	db $fc                                           ; $6e17: $fc
	inc c                                            ; $6e18: $0c
	call nz, $60ac                                   ; $6e19: $c4 $ac $60
	ld [hl], l                                       ; $6e1c: $75
	ret z                                            ; $6e1d: $c8

	rst SubAFromDE                                          ; $6e1e: $df
	ld bc, $03df                                     ; $6e1f: $01 $df $03
	sbc [hl]                                         ; $6e22: $9e
	ld b, e                                          ; $6e23: $43
	ld l, a                                          ; $6e24: $6f
	inc bc                                           ; $6e25: $03
	rst SubAFromDE                                          ; $6e26: $df
	ld bc, $8873                                     ; $6e27: $01 $73 $88
	sbc e                                            ; $6e2a: $9b
	adc h                                            ; $6e2b: $8c
	call z, $0088                                    ; $6e2c: $cc $88 $00
	sbc $20                                          ; $6e2f: $de $20
	sbc b                                            ; $6e31: $98
	ld hl, $3022                                     ; $6e32: $21 $22 $30
	ld [hl], b                                       ; $6e35: $70
	ld a, $3c                                        ; $6e36: $3e $3c
	jr c, jr_04d_6eb0                                ; $6e38: $38 $76

	pop bc                                           ; $6e3a: $c1
	ld a, b                                          ; $6e3b: $78
	ld b, [hl]                                       ; $6e3c: $46
	ld a, [hl]                                       ; $6e3d: $7e
	and c                                            ; $6e3e: $a1
	ld h, c                                          ; $6e3f: $61
	ld a, h                                          ; $6e40: $7c
	ld a, e                                          ; $6e41: $7b
	cp $dd                                           ; $6e42: $fe $dd
	ld bc, $419c                                     ; $6e44: $01 $9c $41
	add c                                            ; $6e47: $81
	add c                                            ; $6e48: $81
	ld e, c                                          ; $6e49: $59
	add b                                            ; $6e4a: $80
	db $ec                                           ; $6e4b: $ec
	ld [hl], c                                       ; $6e4c: $71
	or h                                             ; $6e4d: $b4
	ld a, a                                          ; $6e4e: $7f
	sub c                                            ; $6e4f: $91
	sbc l                                            ; $6e50: $9d
	inc d                                            ; $6e51: $14

jr_04d_6e52:
	nop                                              ; $6e52: $00
	ld a, c                                          ; $6e53: $79
	ld c, a                                          ; $6e54: $4f
	ld a, e                                          ; $6e55: $7b
	xor l                                            ; $6e56: $ad
	adc l                                            ; $6e57: $8d
	ld [bc], a                                       ; $6e58: $02
	inc de                                           ; $6e59: $13
	ld [de], a                                       ; $6e5a: $12
	inc d                                            ; $6e5b: $14
	add h                                            ; $6e5c: $84
	ld c, h                                          ; $6e5d: $4c
	inc a                                            ; $6e5e: $3c
	inc c                                            ; $6e5f: $0c
	inc b                                            ; $6e60: $04
	inc b                                            ; $6e61: $04
	inc c                                            ; $6e62: $0c
	ld [$2008], sp                                   ; $6e63: $08 $08 $20
	nop                                              ; $6e66: $00
	db $10                                           ; $6e67: $10
	ld [$f988], sp                                   ; $6e68: $08 $88 $f9
	ld a, [hl]                                       ; $6e6b: $7e
	add $6f                                          ; $6e6c: $c6 $6f
	cp $fe                                           ; $6e6e: $fe $fe
	ld a, a                                          ; $6e70: $7f

jr_04d_6e71:
	sub $9c                                          ; $6e71: $d6 $9c
	rlca                                             ; $6e73: $07
	add a                                            ; $6e74: $87
	db $eb                                           ; $6e75: $eb
	ld [hl], e                                       ; $6e76: $73
	ld [hl], d                                       ; $6e77: $72
	add c                                            ; $6e78: $81
	nop                                              ; $6e79: $00
	ld b, d                                          ; $6e7a: $42
	ld c, c                                          ; $6e7b: $49
	ld d, b                                          ; $6e7c: $50
	ld b, a                                          ; $6e7d: $47
	cpl                                              ; $6e7e: $2f
	db $10                                           ; $6e7f: $10
	ld hl, $cae1                                     ; $6e80: $21 $e1 $ca
	sbc h                                            ; $6e83: $9c
	jr nz, jr_04d_6ea6                               ; $6e84: $20 $20

	jr jr_04d_6ec0                                   ; $6e86: $18 $38

	or b                                             ; $6e88: $b0
	add b                                            ; $6e89: $80
	nop                                              ; $6e8a: $00
	jr c, jr_04d_6e52                                ; $6e8b: $38 $c5

	dec bc                                           ; $6e8d: $0b
	xor a                                            ; $6e8e: $af
	rst SubAFromDE                                          ; $6e8f: $df
	cp a                                             ; $6e90: $bf
	ld a, a                                          ; $6e91: $7f
	daa                                              ; $6e92: $27
	ld d, e                                          ; $6e93: $53
	ccf                                              ; $6e94: $3f
	rst $38                                          ; $6e95: $ff
	ld a, a                                          ; $6e96: $7f
	ld a, b                                          ; $6e97: $78
	ld d, d                                          ; $6e98: $52
	sbc e                                            ; $6e99: $9b
	rst $38                                          ; $6e9a: $ff
	cp a                                             ; $6e9b: $bf
	db $fc                                           ; $6e9c: $fc
	ld hl, sp-$22                                    ; $6e9d: $f8 $de
	cp $7e                                           ; $6e9f: $fe $7e
	ret nz                                           ; $6ea1: $c0

	sbc [hl]                                         ; $6ea2: $9e
	push af                                          ; $6ea3: $f5
	sbc $fc                                          ; $6ea4: $de $fc

jr_04d_6ea6:
	db $dd                                           ; $6ea6: $dd
	rst $38                                          ; $6ea7: $ff
	adc h                                            ; $6ea8: $8c
	ei                                               ; $6ea9: $fb
	ld [hl], $38                                     ; $6eaa: $36 $38
	dec bc                                           ; $6eac: $0b
	inc de                                           ; $6ead: $13
	pop bc                                           ; $6eae: $c1
	db $e3                                           ; $6eaf: $e3

jr_04d_6eb0:
	ldh [c], a                                       ; $6eb0: $e2
	ldh [$7c], a                                     ; $6eb1: $e0 $7c
	inc c                                            ; $6eb3: $0c
	ld de, $9307                                     ; $6eb4: $11 $07 $93
	ret nc                                           ; $6eb7: $d0

	pop af                                           ; $6eb8: $f1
	ldh a, [c]                                       ; $6eb9: $f2
	ld [hl], d                                       ; $6eba: $72
	ld [hl], b                                       ; $6ebb: $70
	sbc $f0                                          ; $6ebc: $de $f0
	ld a, h                                          ; $6ebe: $7c
	ld d, a                                          ; $6ebf: $57

jr_04d_6ec0:
	sbc h                                            ; $6ec0: $9c
	daa                                              ; $6ec1: $27
	ldh [$f8], a                                     ; $6ec2: $e0 $f8
	ld [hl], h                                       ; $6ec4: $74
	ld l, $9c                                        ; $6ec5: $2e $9c
	ld b, b                                          ; $6ec7: $40
	inc de                                           ; $6ec8: $13

jr_04d_6ec9:
	add b                                            ; $6ec9: $80
	ld a, d                                          ; $6eca: $7a
	ld c, c                                          ; $6ecb: $49
	sbc e                                            ; $6ecc: $9b
	inc d                                            ; $6ecd: $14
	inc [hl]                                         ; $6ece: $34
	sub b                                            ; $6ecf: $90
	ret c                                            ; $6ed0: $d8

jr_04d_6ed1:
	halt                                             ; $6ed1: $76
	ld c, l                                          ; $6ed2: $4d
	rst SubAFromDE                                          ; $6ed3: $df
	jr jr_04d_6e71                                   ; $6ed4: $18 $9b

	jr c, jr_04d_6ec9                                ; $6ed6: $38 $f1

	jr nz, @+$22                                     ; $6ed8: $20 $20

	ld a, d                                          ; $6eda: $7a
	inc e                                            ; $6edb: $1c
	ld a, [hl]                                       ; $6edc: $7e

Jump_04d_6edd:
	cpl                                              ; $6edd: $2f
	ld a, a                                          ; $6ede: $7f
	db $fc                                           ; $6edf: $fc
	sbc $10                                          ; $6ee0: $de $10
	ld a, e                                          ; $6ee2: $7b
	ld a, d                                          ; $6ee3: $7a
	sub l                                            ; $6ee4: $95
	ld [$181e], sp                                   ; $6ee5: $08 $1e $18
	db $10                                           ; $6ee8: $10
	inc d                                            ; $6ee9: $14
	rla                                              ; $6eea: $17
	inc de                                           ; $6eeb: $13
	rra                                              ; $6eec: $1f
	add hl, de                                       ; $6eed: $19
	inc b                                            ; $6eee: $04
	db $dd                                           ; $6eef: $dd
	ld [$5c79], sp                                   ; $6ef0: $08 $79 $5c
	add b                                            ; $6ef3: $80
	ld hl, $0944                                     ; $6ef4: $21 $44 $09
	add hl, de                                       ; $6ef7: $19
	add hl, de                                       ; $6ef8: $19
	call nc, Call_04d_4e0c                           ; $6ef9: $d4 $0c $4e
	ld e, $3c                                        ; $6efc: $1e $3c
	ld a, h                                          ; $6efe: $7c

Call_04d_6eff:
	jr nc, @+$22                                     ; $6eff: $30 $20

	inc hl                                           ; $6f01: $23
	di                                               ; $6f02: $f3
	ld sp, $94c8                                     ; $6f03: $31 $c8 $94
	and [hl]                                         ; $6f06: $a6
	jp $0196                                         ; $6f07: $c3 $96 $01


	ld a, [$80c5]                                    ; $6f0a: $fa $c5 $80
	ret z                                            ; $6f0d: $c8

	jr jr_04d_6f4c                                   ; $6f0e: $18 $3c

	ld a, c                                          ; $6f10: $79
	cp $7c                                           ; $6f11: $fe $7c
	add b                                            ; $6f13: $80
	ld a, d                                          ; $6f14: $7a
	dec h                                            ; $6f15: $25
	ld h, a                                          ; $6f16: $67
	inc sp                                           ; $6f17: $33
	sub e                                            ; $6f18: $93
	rst SubAFromDE                                          ; $6f19: $df
	ld a, l                                          ; $6f1a: $7d
	ret nc                                           ; $6f1b: $d0

	jp nz, $2340                                     ; $6f1c: $c2 $40 $23

	ld hl, $3031                                     ; $6f1f: $21 $31 $30
	ld [hl+], a                                      ; $6f22: $22
	ld l, a                                          ; $6f23: $6f
	cp l                                             ; $6f24: $bd
	adc e                                            ; $6f25: $8b
	ld c, $4c                                        ; $6f26: $0e $4c
	adc c                                            ; $6f28: $89
	ld b, h                                          ; $6f29: $44
	db $dd                                           ; $6f2a: $dd
	dec [hl]                                         ; $6f2b: $35
	xor d                                            ; $6f2c: $aa
	ld [hl], b                                       ; $6f2d: $70
	ldh a, [$f1]                                     ; $6f2e: $f0 $f1
	rst FarCall                                          ; $6f30: $f7
	cp e                                             ; $6f31: $bb
	jr nz, jr_04d_6ed1                               ; $6f32: $20 $9d

	jp z, $7b54                                      ; $6f34: $ca $54 $7b

	cp l                                             ; $6f37: $bd
	sub l                                            ; $6f38: $95
	ldh [$08], a                                     ; $6f39: $e0 $08
	nop                                              ; $6f3b: $00
	ld hl, sp-$20                                    ; $6f3c: $f8 $e0
	db $10                                           ; $6f3e: $10
	ld h, b                                          ; $6f3f: $60
	add b                                            ; $6f40: $80
	cp $f7                                           ; $6f41: $fe $f7
	halt                                             ; $6f43: $76
	call nz, $04db                                   ; $6f44: $c4 $db $04
	sbc [hl]                                         ; $6f47: $9e
	ld b, $71                                        ; $6f48: $06 $71
	add e                                            ; $6f4a: $83
	sbc [hl]                                         ; $6f4b: $9e

jr_04d_6f4c:
	ld b, c                                          ; $6f4c: $41
	ld [hl], h                                       ; $6f4d: $74
	ld b, b                                          ; $6f4e: $40
	rst SubAFromDE                                          ; $6f4f: $df
	add c                                            ; $6f50: $81
	sbc e                                            ; $6f51: $9b
	add b                                            ; $6f52: $80
	adc b                                            ; $6f53: $88
	adc b                                            ; $6f54: $88
	add c                                            ; $6f55: $81
	ld h, d                                          ; $6f56: $62
	and h                                            ; $6f57: $a4
	sub a                                            ; $6f58: $97
	inc b                                            ; $6f59: $04
	add h                                            ; $6f5a: $84
	pop bc                                           ; $6f5b: $c1
	add b                                            ; $6f5c: $80
	add b                                            ; $6f5d: $80
	db $fc                                           ; $6f5e: $fc
	sub b                                            ; $6f5f: $90
	inc bc                                           ; $6f60: $03
	ld l, l                                          ; $6f61: $6d
	ld [hl], e                                       ; $6f62: $73
	sub h                                            ; $6f63: $94
	inc c                                            ; $6f64: $0c
	ld [de], a                                       ; $6f65: $12
	adc d                                            ; $6f66: $8a
	inc bc                                           ; $6f67: $03
	ldh [c], a                                       ; $6f68: $e2
	nop                                              ; $6f69: $00
	ldh [hDisp0_WY], a                                     ; $6f6a: $e0 $88
	nop                                              ; $6f6c: $00
	ld bc, $7841                                     ; $6f6d: $01 $41 $78
	ld [hl], l                                       ; $6f70: $75
	ld a, a                                          ; $6f71: $7f
	ldh [c], a                                       ; $6f72: $e2
	add b                                            ; $6f73: $80
	ld a, [bc]                                       ; $6f74: $0a
	ld [$8004], sp                                   ; $6f75: $08 $04 $80

jr_04d_6f78:
	dec b                                            ; $6f78: $05
	ld [$0110], sp                                   ; $6f79: $08 $10 $01

jr_04d_6f7c:
	nop                                              ; $6f7c: $00
	inc b                                            ; $6f7d: $04
	sbc b                                            ; $6f7e: $98
	inc a                                            ; $6f7f: $3c
	ld a, [hl+]                                      ; $6f80: $2a
	inc e                                            ; $6f81: $1c
	jr z, jr_04d_6f7c                                ; $6f82: $28 $f8

	cp a                                             ; $6f84: $bf
	nop                                              ; $6f85: $00
	add d                                            ; $6f86: $82
	ld b, a                                          ; $6f87: $47
	db $ec                                           ; $6f88: $ec
	ld [hl], b                                       ; $6f89: $70
	ld l, l                                          ; $6f8a: $6d
	add h                                            ; $6f8b: $84
	nop                                              ; $6f8c: $00
	ld [$8819], sp                                   ; $6f8d: $08 $19 $88
	db $10                                           ; $6f90: $10
	ld [$8090], sp                                   ; $6f91: $08 $90 $80
	ld a, b                                          ; $6f94: $78
	jr c, jr_04d_700f                                ; $6f95: $38 $78

	jr nc, jr_04d_6f78                               ; $6f97: $30 $df

	dec de                                           ; $6f99: $1b
	dec d                                            ; $6f9a: $15
	or $ff                                           ; $6f9b: $f6 $ff
	rst $38                                          ; $6f9d: $ff
	db $10                                           ; $6f9e: $10
	add b                                            ; $6f9f: $80
	pop hl                                           ; $6fa0: $e1
	ld l, a                                          ; $6fa1: $6f
	add hl, sp                                       ; $6fa2: $39
	db $fc                                           ; $6fa3: $fc
	ld a, a                                          ; $6fa4: $7f
	rlca                                             ; $6fa5: $07
	sbc h                                            ; $6fa6: $9c
	cp [hl]                                          ; $6fa7: $be
	rst $38                                          ; $6fa8: $ff
	ld a, [$f4ff]                                    ; $6fa9: $fa $ff $f4
	ldh a, [c]                                       ; $6fac: $f2
	ld a, l                                          ; $6fad: $7d
	add b                                            ; $6fae: $80
	ld a, a                                          ; $6faf: $7f
	sub e                                            ; $6fb0: $93
	add d                                            ; $6fb1: $82
	rst $38                                          ; $6fb2: $ff
	sub h                                            ; $6fb3: $94
	xor $e6                                          ; $6fb4: $ee $e6
	di                                               ; $6fb6: $f3
	ld l, $1f                                        ; $6fb7: $2e $1f
	ld h, $5d                                        ; $6fb9: $26 $5d
	cp d                                             ; $6fbb: $ba
	push de                                          ; $6fbc: $d5
	ld a, [$d9f5]                                    ; $6fbd: $fa $f5 $d9
	rst $38                                          ; $6fc0: $ff
	sub d                                            ; $6fc1: $92
	and d                                            ; $6fc2: $a2
	ld e, b                                          ; $6fc3: $58
	or b                                             ; $6fc4: $b0
	ld d, b                                          ; $6fc5: $50
	or b                                             ; $6fc6: $b0
	ld h, d                                          ; $6fc7: $62
	ld b, c                                          ; $6fc8: $41
	ret nz                                           ; $6fc9: $c0

	ld sp, hl                                        ; $6fca: $f9
	pop af                                           ; $6fcb: $f1
	ld hl, sp-$04                                    ; $6fcc: $f8 $fc
	cp $de                                           ; $6fce: $fe $de
	rst $38                                          ; $6fd0: $ff
	sbc d                                            ; $6fd1: $9a
	db $e4                                           ; $6fd2: $e4
	add b                                            ; $6fd3: $80
	ld [$3220], sp                                   ; $6fd4: $08 $20 $32
	ld a, b                                          ; $6fd7: $78
	ld l, e                                          ; $6fd8: $6b
	add b                                            ; $6fd9: $80
	pop hl                                           ; $6fda: $e1
	push hl                                          ; $6fdb: $e5
	ld b, b                                          ; $6fdc: $40
	jr jr_04d_703d                                   ; $6fdd: $18 $5e

	ld a, $9e                                        ; $6fdf: $3e $9e
	cp $fd                                           ; $6fe1: $fe $fd
	cp $77                                           ; $6fe3: $fe $77
	add e                                            ; $6fe5: $83
	add e                                            ; $6fe6: $83
	inc de                                           ; $6fe7: $13
	scf                                              ; $6fe8: $37
	sbc a                                            ; $6fe9: $9f
	ldh a, [c]                                       ; $6fea: $f2
	db $fc                                           ; $6feb: $fc
	cp $40                                           ; $6fec: $fe $40
	nop                                              ; $6fee: $00
	inc a                                            ; $6fef: $3c
	ld a, [hl]                                       ; $6ff0: $7e
	ld a, a                                          ; $6ff1: $7f
	db $db                                           ; $6ff2: $db
	dec e                                            ; $6ff3: $1d
	ld a, [$677f]                                    ; $6ff4: $fa $7f $67
	ld l, a                                          ; $6ff7: $6f
	or a                                             ; $6ff8: $b7
	sub [hl]                                         ; $6ff9: $96
	cp [hl]                                          ; $6ffa: $be
	ld sp, $3672                                     ; $6ffb: $31 $72 $36
	and $ff                                          ; $6ffe: $e6 $ff
	rst FarCall                                          ; $7000: $f7
	ld a, l                                          ; $7001: $7d
	ld e, l                                          ; $7002: $5d
	ld a, d                                          ; $7003: $7a
	call $d880                                       ; $7004: $cd $80 $d8
	ldh [c], a                                       ; $7007: $e2
	sub d                                            ; $7008: $92
	call z, $09ef                                    ; $7009: $cc $ef $09
	ld bc, $0404                                     ; $700c: $01 $04 $04

jr_04d_700f:
	inc e                                            ; $700f: $1c
	inc c                                            ; $7010: $0c
	adc [hl]                                         ; $7011: $8e
	adc $69                                          ; $7012: $ce $69
	ld [bc], a                                       ; $7014: $02
	call c, $3f5e                                    ; $7015: $dc $5e $3f
	rst GetHLinHL                                          ; $7018: $cf
	pop bc                                           ; $7019: $c1
	nop                                              ; $701a: $00
	sub b                                            ; $701b: $90
	db $fd                                           ; $701c: $fd
	ccf                                              ; $701d: $3f
	ccf                                              ; $701e: $3f
	rra                                              ; $701f: $1f
	ld e, a                                          ; $7020: $5f
	ld h, e                                          ; $7021: $63
	ld h, e                                          ; $7022: $63
	ld d, e                                          ; $7023: $53
	db $e4                                           ; $7024: $e4
	ld a, a                                          ; $7025: $7f
	ld l, c                                          ; $7026: $69
	add b                                            ; $7027: $80
	inc c                                            ; $7028: $0c
	jp hl                                            ; $7029: $e9


	ldh [rP1], a                                     ; $702a: $e0 $00
	dec l                                            ; $702c: $2d
	or b                                             ; $702d: $b0
	or b                                             ; $702e: $b0
	inc e                                            ; $702f: $1c
	rra                                              ; $7030: $1f
	sbc a                                            ; $7031: $9f
	call $c3f9                                       ; $7032: $cd $f9 $c3
	rrca                                             ; $7035: $0f
	ld e, c                                          ; $7036: $59
	jr c, jr_04d_7059                                ; $7037: $38 $20

	dec de                                           ; $7039: $1b
	rra                                              ; $703a: $1f
	ei                                               ; $703b: $fb
	sbc a                                            ; $703c: $9f

jr_04d_703d:
	rst SubAFromDE                                          ; $703d: $df
	ccf                                              ; $703e: $3f
	pop af                                           ; $703f: $f1
	pop af                                           ; $7040: $f1
	pop hl                                           ; $7041: $e1
	rst $38                                          ; $7042: $ff
	ei                                               ; $7043: $fb
	add b                                            ; $7044: $80
	ld b, b                                          ; $7045: $40
	ld c, b                                          ; $7046: $48
	add b                                            ; $7047: $80
	ld b, $c7                                        ; $7048: $06 $c7
	rst JumpTable                                          ; $704a: $c7
	jp nz, $ff62                                     ; $704b: $c2 $62 $ff

	rst $38                                          ; $704e: $ff
	rlca                                             ; $704f: $07
	ld bc, $f880                                     ; $7050: $01 $80 $f8
	db $fd                                           ; $7053: $fd
	db $fd                                           ; $7054: $fd
	ret c                                            ; $7055: $d8

	pop hl                                           ; $7056: $e1
	db $e3                                           ; $7057: $e3
	ccf                                              ; $7058: $3f

jr_04d_7059:
	ldh [$e0], a                                     ; $7059: $e0 $e0
	rst $38                                          ; $705b: $ff
	adc a                                            ; $705c: $8f
	dec h                                            ; $705d: $25
	ld e, $1c                                        ; $705e: $1e $1c
	ret nz                                           ; $7060: $c0

	add hl, de                                       ; $7061: $19
	rra                                              ; $7062: $1f
	nop                                              ; $7063: $00
	ld [hl], b                                       ; $7064: $70
	ldh [rP1], a                                     ; $7065: $e0 $00
	add h                                            ; $7067: $84
	ld d, h                                          ; $7068: $54
	and d                                            ; $7069: $a2
	ld b, a                                          ; $706a: $47
	and l                                            ; $706b: $a5
	rla                                              ; $706c: $17
	sbc d                                            ; $706d: $9a
	nop                                              ; $706e: $00
	ret nz                                           ; $706f: $c0

	xor $5f                                          ; $7070: $ee $5f
	cp [hl]                                          ; $7072: $be
	db $dd                                           ; $7073: $dd
	rst $38                                          ; $7074: $ff
	ld a, l                                          ; $7075: $7d
	ld b, $02                                        ; $7076: $06 $02
	sbc $ba                                          ; $7078: $de $ba

jr_04d_707a:
	ld e, h                                          ; $707a: $5c
	sbc l                                            ; $707b: $9d
	ret c                                            ; $707c: $d8

	db $db                                           ; $707d: $db
	ld bc, $6101                                     ; $707e: $01 $01 $61
	ld b, c                                          ; $7081: $41
	ld hl, $d679                                     ; $7082: $21 $79 $d6
	ld [hl], b                                       ; $7085: $70
	ccf                                              ; $7086: $3f
	sbc l                                            ; $7087: $9d
	sbc b                                            ; $7088: $98
	inc e                                            ; $7089: $1c
	ld a, c                                          ; $708a: $79
	ret z                                            ; $708b: $c8

	ld [hl], l                                       ; $708c: $75
	sub l                                            ; $708d: $95
	sub e                                            ; $708e: $93

Call_04d_708f:
	ret nz                                           ; $708f: $c0

	add b                                            ; $7090: $80
	ld e, b                                          ; $7091: $58
	ld e, [hl]                                       ; $7092: $5e
	inc e                                            ; $7093: $1c
	ld [hl-], a                                      ; $7094: $32
	ldh [hDisp1_OBP0], a                                     ; $7095: $e0 $93
	sub [hl]                                         ; $7097: $96
	adc b                                            ; $7098: $88
	add [hl]                                         ; $7099: $86
	ld hl, $2979                                     ; $709a: $21 $79 $29
	ld a, l                                          ; $709d: $7d
	sbc e                                            ; $709e: $9b
	sbc l                                            ; $709f: $9d
	nop                                              ; $70a0: $00
	ld b, $7b                                        ; $70a1: $06 $7b
	jp hl                                            ; $70a3: $e9


	add b                                            ; $70a4: $80
	ld b, d                                          ; $70a5: $42
	add hl, de                                       ; $70a6: $19
	jr nc, jr_04d_70b1                               ; $70a7: $30 $08

	add hl, bc                                       ; $70a9: $09
	ld sp, $c7f9                                     ; $70aa: $31 $f9 $c7
	xor l                                            ; $70ad: $ad
	ld h, [hl]                                       ; $70ae: $66
	ld c, c                                          ; $70af: $49
	push af                                          ; $70b0: $f5

jr_04d_70b1:
	ld a, [hl+]                                      ; $70b1: $2a
	ld [hl], e                                       ; $70b2: $73
	ld h, c                                          ; $70b3: $61
	ld b, b                                          ; $70b4: $40
	xor c                                            ; $70b5: $a9
	add hl, de                                       ; $70b6: $19
	ld a, $13                                        ; $70b7: $3e $13
	sub a                                            ; $70b9: $97
	dec bc                                           ; $70ba: $0b
	sub c                                            ; $70bb: $91
	cp [hl]                                          ; $70bc: $be
	ld [hl], d                                       ; $70bd: $72
	rst $38                                          ; $70be: $ff
	cp $e7                                           ; $70bf: $fe $e7
	ld hl, $3d27                                     ; $70c1: $21 $27 $3d
	add b                                            ; $70c4: $80
	sbc [hl]                                         ; $70c5: $9e
	ld e, [hl]                                       ; $70c6: $5e
	call $cfc7                                       ; $70c7: $cd $c7 $cf
	ret z                                            ; $70ca: $c8

	ld c, a                                          ; $70cb: $4f
	sbc $03                                          ; $70cc: $de $03
	ld hl, $37b3                                     ; $70ce: $21 $b3 $37
	cp a                                             ; $70d1: $bf
	xor $ff                                          ; $70d2: $ee $ff
	cp [hl]                                          ; $70d4: $be
	inc a                                            ; $70d5: $3c
	rra                                              ; $70d6: $1f
	rst SubAFromHL                                          ; $70d7: $d7
	cp $1c                                           ; $70d8: $fe $1c
	rst SubAFromBC                                          ; $70da: $e7
	rst $38                                          ; $70db: $ff
	ld a, a                                          ; $70dc: $7f
	rst SubAFromDE                                          ; $70dd: $df
	rst AddAOntoHL                                          ; $70de: $ef
	rst AddAOntoHL                                          ; $70df: $ef
	rst $38                                          ; $70e0: $ff
	adc h                                            ; $70e1: $8c
	ld e, l                                          ; $70e2: $5d
	ld h, b                                          ; $70e3: $60
	rst SubAFromDE                                          ; $70e4: $df
	jr nc, jr_04d_707a                               ; $70e5: $30 $93

	ld a, $be                                        ; $70e7: $3e $be
	jr z, jr_04d_7140                                ; $70e9: $28 $55

	and b                                            ; $70eb: $a0
	or b                                             ; $70ec: $b0
	db $fd                                           ; $70ed: $fd
	rst GetHLinHL                                          ; $70ee: $cf
	rlca                                             ; $70ef: $07
	ld b, a                                          ; $70f0: $47
	rst $38                                          ; $70f1: $ff
	ld a, a                                          ; $70f2: $7f
	ld d, [hl]                                       ; $70f3: $56
	nop                                              ; $70f4: $00
	rst SubAFromHL                                          ; $70f5: $d7
	inc sp                                           ; $70f6: $33
	sbc e                                            ; $70f7: $9b
	dec [hl]                                         ; $70f8: $35
	ld d, [hl]                                       ; $70f9: $56
	dec [hl]                                         ; $70fa: $35
	ld d, l                                          ; $70fb: $55
	db $db                                           ; $70fc: $db
	inc sp                                           ; $70fd: $33
	sbc d                                            ; $70fe: $9a
	ld h, l                                          ; $70ff: $65
	ld h, [hl]                                       ; $7100: $66
	ld d, l                                          ; $7101: $55
	ld d, e                                          ; $7102: $53
	ld d, e                                          ; $7103: $53
	call c, $9d33                                    ; $7104: $dc $33 $9d
	ld d, l                                          ; $7107: $55
	ld h, [hl]                                       ; $7108: $66
	sbc $55                                          ; $7109: $de $55
	rst SubAFromDE                                          ; $710b: $df
	inc sp                                           ; $710c: $33
	sbc b                                            ; $710d: $98
	ld b, h                                          ; $710e: $44
	ld b, e                                          ; $710f: $43
	inc sp                                           ; $7110: $33
	inc sp                                           ; $7111: $33
	ld h, e                                          ; $7112: $63
	ld d, l                                          ; $7113: $55
	dec [hl]                                         ; $7114: $35
	sbc $33                                          ; $7115: $de $33
	sbc $44                                          ; $7117: $de $44
	sbc l                                            ; $7119: $9d
	inc [hl]                                         ; $711a: $34
	ld h, e                                          ; $711b: $63
	ld [hl], e                                       ; $711c: $73
	db $e4                                           ; $711d: $e4
	ld [hl], a                                       ; $711e: $77
	or $9e                                           ; $711f: $f6 $9e
	ld [hl], e                                       ; $7121: $73
	call c, Call_04d_7733                            ; $7122: $dc $33 $77
	or $dd                                           ; $7125: $f6 $dd
	inc sp                                           ; $7127: $33
	ld a, a                                          ; $7128: $7f
	ei                                               ; $7129: $fb
	ld a, a                                          ; $712a: $7f
	ret c                                            ; $712b: $d8

	sbc l                                            ; $712c: $9d
	ld b, e                                          ; $712d: $43
	ld b, h                                          ; $712e: $44
	ld [hl], e                                       ; $712f: $73
	xor $7f                                          ; $7130: $ee $7f
	or e                                             ; $7132: $b3
	ld a, a                                          ; $7133: $7f
	adc $7f                                          ; $7134: $ce $7f
	ei                                               ; $7136: $fb
	ld a, e                                          ; $7137: $7b
	ret c                                            ; $7138: $d8

	ld a, a                                          ; $7139: $7f
	ei                                               ; $713a: $fb
	sbc e                                            ; $713b: $9b
	ld d, l                                          ; $713c: $55
	inc [hl]                                         ; $713d: $34
	inc sp                                           ; $713e: $33
	ld b, [hl]                                       ; $713f: $46

jr_04d_7140:
	ld a, e                                          ; $7140: $7b
	or $9d                                           ; $7141: $f6 $9d
	inc [hl]                                         ; $7143: $34
	ld b, l                                          ; $7144: $45
	ld a, e                                          ; $7145: $7b
	xor l                                            ; $7146: $ad
	sbc [hl]                                         ; $7147: $9e
	inc [hl]                                         ; $7148: $34
	ei                                               ; $7149: $fb
	add hl, bc                                       ; $714a: $09
	sbc e                                            ; $714b: $9b
	ld d, l                                          ; $714c: $55
	xor d                                            ; $714d: $aa
	xor d                                            ; $714e: $aa
	ld d, l                                          ; $714f: $55
	ld h, a                                          ; $7150: $67
	db $fc                                           ; $7151: $fc
	sbc c                                            ; $7152: $99
	ld d, a                                          ; $7153: $57
	xor b                                            ; $7154: $a8
	xor a                                            ; $7155: $af
	ld d, b                                          ; $7156: $50
	ld d, h                                          ; $7157: $54
	xor e                                            ; $7158: $ab
	ld e, a                                          ; $7159: $5f
	ldh a, [$97]                                     ; $715a: $f0 $97
	push af                                          ; $715c: $f5
	ld a, [bc]                                       ; $715d: $0a
	rst $38                                          ; $715e: $ff
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	rst $38                                          ; $7161: $ff
	and b                                            ; $7162: $a0
	ld e, a                                          ; $7163: $5f
	ld e, a                                          ; $7164: $5f
	db $ec                                           ; $7165: $ec
	sbc e                                            ; $7166: $9b
	ld [$0015], a                                    ; $7167: $ea $15 $00
	rst $38                                          ; $716a: $ff
	ld [hl], a                                       ; $716b: $77
	cp $9d                                           ; $716c: $fe $9d
	add d                                            ; $716e: $82
	ld a, l                                          ; $716f: $7d
	ld h, a                                          ; $7170: $67
	call c, $f06f                                    ; $7171: $dc $6f $f0
	sub a                                            ; $7174: $97
	add b                                            ; $7175: $80
	ld a, a                                          ; $7176: $7f
	ld b, b                                          ; $7177: $40
	cp a                                             ; $7178: $bf
	xor d                                            ; $7179: $aa
	ld d, l                                          ; $717a: $55
	ld b, c                                          ; $717b: $41

Jump_04d_717c:
	cp [hl]                                          ; $717c: $be
	ld h, a                                          ; $717d: $67
	ldh a, [rPCM34]                                  ; $717e: $f0 $77
	cp $9d                                           ; $7180: $fe $9d
	ld [hl+], a                                      ; $7182: $22
	db $dd                                           ; $7183: $dd
	ld e, a                                          ; $7184: $5f
	ldh [$7f], a                                     ; $7185: $e0 $7f
	cp $9d                                           ; $7187: $fe $9d
	inc d                                            ; $7189: $14
	db $eb                                           ; $718a: $eb
	ld d, a                                          ; $718b: $57
	ret nc                                           ; $718c: $d0

	ld [hl], a                                       ; $718d: $77
	cp $9d                                           ; $718e: $fe $9d
	xor b                                            ; $7190: $a8
	ld d, a                                          ; $7191: $57
	ld e, a                                          ; $7192: $5f
	ldh a, [$9b]                                     ; $7193: $f0 $9b
	ld [bc], a                                       ; $7195: $02
	db $fd                                           ; $7196: $fd
	dec b                                            ; $7197: $05
	ld a, [$807b]                                    ; $7198: $fa $7b $80
	sbc h                                            ; $719b: $9c
	xor e                                            ; $719c: $ab
	xor l                                            ; $719d: $ad
	ld d, [hl]                                       ; $719e: $56
	ld l, a                                          ; $719f: $6f
	ldh a, [hDisp1_WY]                                     ; $71a0: $f0 $95
	ld [$50f7], sp                                   ; $71a2: $08 $f7 $50
	xor a                                            ; $71a5: $af
	rst $38                                          ; $71a6: $ff
	ld a, a                                          ; $71a7: $7f
	db $e3                                           ; $71a8: $e3
	call nz, $1f3b                                   ; $71a9: $c4 $3b $1f
	ld e, a                                          ; $71ac: $5f
	ret nc                                           ; $71ad: $d0

	sbc d                                            ; $71ae: $9a
	db $fd                                           ; $71af: $fd
	ld a, [$7d8e]                                    ; $71b0: $fa $8e $7d
	rst $38                                          ; $71b3: $ff
	ld h, e                                          ; $71b4: $63
	ldh a, [c]                                       ; $71b5: $f2
	ld l, a                                          ; $71b6: $6f
	cp $9d                                           ; $71b7: $fe $9d
	adc d                                            ; $71b9: $8a
	push af                                          ; $71ba: $f5
	ld d, a                                          ; $71bb: $57
	ldh a, [c]                                       ; $71bc: $f2
	sbc l                                            ; $71bd: $9d
	ld bc, $57fe                                     ; $71be: $01 $fe $57
	and b                                            ; $71c1: $a0
	ld a, a                                          ; $71c2: $7f
	cp $7f                                           ; $71c3: $fe $7f
	cp h                                             ; $71c5: $bc
	ld c, a                                          ; $71c6: $4f
	ldh a, [rPCM34]                                  ; $71c7: $f0 $77
	ld e, b                                          ; $71c9: $58
	ld c, a                                          ; $71ca: $4f
	ldh a, [$7f]                                     ; $71cb: $f0 $7f
	ld a, h                                          ; $71cd: $7c
	ld c, a                                          ; $71ce: $4f
	ldh a, [$9d]                                     ; $71cf: $f0 $9d
	ld a, [hl+]                                      ; $71d1: $2a
	push de                                          ; $71d2: $d5
	ld c, a                                          ; $71d3: $4f
	ret nz                                           ; $71d4: $c0

	ld a, a                                          ; $71d5: $7f
	inc b                                            ; $71d6: $04
	ld d, a                                          ; $71d7: $57
	ldh a, [$9d]                                     ; $71d8: $f0 $9d
	dec d                                            ; $71da: $15
	ld [$e04f], a                                    ; $71db: $ea $4f $e0
	ld [hl], a                                       ; $71de: $77
	sub b                                            ; $71df: $90
	ld a, a                                          ; $71e0: $7f
	rst AddAOntoHL                                          ; $71e1: $ef
	adc h                                            ; $71e2: $8c
	and b                                            ; $71e3: $a0
	nop                                              ; $71e4: $00
	ret nz                                           ; $71e5: $c0

	nop                                              ; $71e6: $00
	xor d                                            ; $71e7: $aa
	nop                                              ; $71e8: $00
	ld d, l                                          ; $71e9: $55
	add b                                            ; $71ea: $80
	cp d                                             ; $71eb: $ba
	ld b, b                                          ; $71ec: $40
	ld e, a                                          ; $71ed: $5f
	and b                                            ; $71ee: $a0
	xor a                                            ; $71ef: $af
	ld d, b                                          ; $71f0: $50
	ld a, a                                          ; $71f1: $7f
	nop                                              ; $71f2: $00
	cp a                                             ; $71f3: $bf
	nop                                              ; $71f4: $00
	ld d, l                                          ; $71f5: $55
	ld a, e                                          ; $71f6: $7b
	ldh a, [$9e]                                     ; $71f7: $f0 $9e
	ld d, h                                          ; $71f9: $54
	ld a, e                                          ; $71fa: $7b
	add sp, $77                                      ; $71fb: $e8 $77
	add e                                            ; $71fd: $83
	sbc h                                            ; $71fe: $9c
	db $fd                                           ; $71ff: $fd
	ld [bc], a                                       ; $7200: $02
	xor a                                            ; $7201: $af
	ld a, e                                          ; $7202: $7b
	ld hl, sp-$66                                    ; $7203: $f8 $9a
	adc e                                            ; $7205: $8b
	nop                                              ; $7206: $00
	rla                                              ; $7207: $17
	nop                                              ; $7208: $00
	ld [bc], a                                       ; $7209: $02
	ld [hl], e                                       ; $720a: $73
	add sp, $72                                      ; $720b: $e8 $72
	ret z                                            ; $720d: $c8

	sub l                                            ; $720e: $95
	ld a, [hl+]                                      ; $720f: $2a
	ld [$f515], a                                    ; $7210: $ea $15 $f5
	ld a, [bc]                                       ; $7213: $0a
	cp $01                                           ; $7214: $fe $01
	ld [hl], l                                       ; $7216: $75
	nop                                              ; $7217: $00
	cp d                                             ; $7218: $ba
	ld l, a                                          ; $7219: $6f
	ldh a, [$63]                                     ; $721a: $f0 $63
	db $fc                                           ; $721c: $fc
	sbc l                                            ; $721d: $9d
	ld a, [$4f05]                                    ; $721e: $fa $05 $4f
	ldh a, [$7f]                                     ; $7221: $f0 $7f
	or b                                             ; $7223: $b0
	ld e, a                                          ; $7224: $5f
	db $f4                                           ; $7225: $f4
	sbc c                                            ; $7226: $99
	xor e                                            ; $7227: $ab
	ld d, l                                          ; $7228: $55
	ld e, e                                          ; $7229: $5b
	and [hl]                                         ; $722a: $a6
	db $fc                                           ; $722b: $fc

jr_04d_722c:
	inc c                                            ; $722c: $0c
	ld l, a                                          ; $722d: $6f
	db $f4                                           ; $722e: $f4
	add b                                            ; $722f: $80
	xor c                                            ; $7230: $a9
	ld d, a                                          ; $7231: $57
	ld b, e                                          ; $7232: $43
	cp d                                             ; $7233: $ba
	ld c, [hl]                                       ; $7234: $4e
	call z, $1038                                    ; $7235: $cc $38 $10
	ld h, b                                          ; $7238: $60
	ld h, b                                          ; $7239: $60
	ld e, l                                          ; $723a: $5d
	xor e                                            ; $723b: $ab
	xor a                                            ; $723c: $af
	ld e, [hl]                                       ; $723d: $5e
	ld d, b                                          ; $723e: $50
	and b                                            ; $723f: $a0
	and d                                            ; $7240: $a2
	nop                                              ; $7241: $00
	ld e, l                                          ; $7242: $5d
	nop                                              ; $7243: $00
	and c                                            ; $7244: $a1
	ld bc, $0257                                     ; $7245: $01 $57 $02
	xor e                                            ; $7248: $ab
	ld [bc], a                                       ; $7249: $02
	ret nz                                           ; $724a: $c0

	rst $38                                          ; $724b: $ff
	jr nc, jr_04d_726e                               ; $724c: $30 $20

	ld h, l                                          ; $724e: $65
	add b                                            ; $724f: $80
	ld b, b                                          ; $7250: $40
	rst GetHLinHL                                          ; $7251: $cf
	add b                                            ; $7252: $80
	ld d, a                                          ; $7253: $57
	nop                                              ; $7254: $00
	xor d                                            ; $7255: $aa
	dec b                                            ; $7256: $05
	ld [hl], b                                       ; $7257: $70
	rrca                                             ; $7258: $0f
	ld [$4315], a                                    ; $7259: $ea $15 $43
	ccf                                              ; $725c: $3f
	or b                                             ; $725d: $b0
	ld c, a                                          ; $725e: $4f
	sub c                                            ; $725f: $91
	ld l, a                                          ; $7260: $6f
	ret z                                            ; $7261: $c8

	scf                                              ; $7262: $37
	call nz, $0e3b                                   ; $7263: $c4 $3b $0e
	ld sp, hl                                        ; $7266: $f9
	ld b, $fd                                        ; $7267: $06 $fd
	inc bc                                           ; $7269: $03
	cp $ff                                           ; $726a: $fe $ff
	cp $ff                                           ; $726c: $fe $ff

jr_04d_726e:
	rst $38                                          ; $726e: $ff
	sub e                                            ; $726f: $93
	cp l                                             ; $7270: $bd
	rst $38                                          ; $7271: $ff
	ld d, a                                          ; $7272: $57
	rst $38                                          ; $7273: $ff
	dec hl                                           ; $7274: $2b
	rst $38                                          ; $7275: $ff
	dec d                                            ; $7276: $15
	rst $38                                          ; $7277: $ff
	ld l, $ff                                        ; $7278: $2e $ff
	rla                                              ; $727a: $17
	rst $38                                          ; $727b: $ff
	ld a, e                                          ; $727c: $7b
	adc h                                            ; $727d: $8c
	sub e                                            ; $727e: $93
	push af                                          ; $727f: $f5
	rst $38                                          ; $7280: $ff
	rst $38                                          ; $7281: $ff
	cp a                                             ; $7282: $bf
	rst $38                                          ; $7283: $ff
	ld e, a                                          ; $7284: $5f
	rst $38                                          ; $7285: $ff
	xor a                                            ; $7286: $af
	rst $38                                          ; $7287: $ff
	push de                                          ; $7288: $d5
	rst $38                                          ; $7289: $ff
	xor d                                            ; $728a: $aa
	ld a, e                                          ; $728b: $7b
	ldh a, [$72]                                     ; $728c: $f0 $72
	jr jr_04d_722c                                   ; $728e: $18 $9c

	push af                                          ; $7290: $f5
	db $fd                                           ; $7291: $fd
	ld a, [$ffdb]                                    ; $7292: $fa $db $ff
	ld d, a                                          ; $7295: $57
	ld [hl], b                                       ; $7296: $70
	sbc e                                            ; $7297: $9b
	push hl                                          ; $7298: $e5
	ld a, [$f4eb]                                    ; $7299: $fa $eb $f4
	ld d, a                                          ; $729c: $57
	ldh a, [$9c]                                     ; $729d: $f0 $9c
	ld a, a                                          ; $729f: $7f
	add b                                            ; $72a0: $80
	rst $38                                          ; $72a1: $ff
	ld d, e                                          ; $72a2: $53
	ld b, b                                          ; $72a3: $40
	halt                                             ; $72a4: $76
	db $eb                                           ; $72a5: $eb
	ld e, a                                          ; $72a6: $5f
	ldh a, [$7f]                                     ; $72a7: $f0 $7f
	db $f4                                           ; $72a9: $f4
	sbc [hl]                                         ; $72aa: $9e
	cp $63                                           ; $72ab: $fe $63
	ldh a, [$7f]                                     ; $72ad: $f0 $7f
	jr c, @-$62                                      ; $72af: $38 $9c

	ld a, [hl]                                       ; $72b1: $7e
	add b                                            ; $72b2: $80
	push af                                          ; $72b3: $f5
	ld a, e                                          ; $72b4: $7b
	ld [bc], a                                       ; $72b5: $02
	ld a, [hl]                                       ; $72b6: $7e
	or c                                             ; $72b7: $b1
	ld [hl], a                                       ; $72b8: $77
	db $f4                                           ; $72b9: $f4
	ld a, a                                          ; $72ba: $7f
	add sp, $7e                                      ; $72bb: $e8 $7e
	jp z, $f47f                                      ; $72bd: $ca $7f $f4

	halt                                             ; $72c0: $76
	add l                                            ; $72c1: $85
	ld e, a                                          ; $72c2: $5f
	call nz, $d87e                                   ; $72c3: $c4 $7e $d8

jr_04d_72c6:
	ld [hl], a                                       ; $72c6: $77
	jp nz, $ab9b                                     ; $72c7: $c2 $9b $ab

	ld d, h                                          ; $72ca: $54
	rst $38                                          ; $72cb: $ff
	nop                                              ; $72cc: $00
	ld h, a                                          ; $72cd: $67
	inc c                                            ; $72ce: $0c
	ld a, [hl]                                       ; $72cf: $7e
	db $f4                                           ; $72d0: $f4
	ld [hl], a                                       ; $72d1: $77
	xor $9e                                          ; $72d2: $ee $9e
	db $fd                                           ; $72d4: $fd
	ld h, e                                          ; $72d5: $63
	cp h                                             ; $72d6: $bc
	sbc e                                            ; $72d7: $9b
	cp e                                             ; $72d8: $bb
	ld b, h                                          ; $72d9: $44
	rst SubAFromDE                                          ; $72da: $df
	jr nz, jr_04d_7358                               ; $72db: $20 $7b

	db $f4                                           ; $72dd: $f4
	sbc d                                            ; $72de: $9a
	nop                                              ; $72df: $00
	ei                                               ; $72e0: $fb
	nop                                              ; $72e1: $00
	ld a, a                                          ; $72e2: $7f
	add b                                            ; $72e3: $80
	ld l, a                                          ; $72e4: $6f
	and b                                            ; $72e5: $a0
	ld [hl], a                                       ; $72e6: $77
	cp $99                                           ; $72e7: $fe $99
	push de                                          ; $72e9: $d5
	ld a, [hl+]                                      ; $72ea: $2a
	rst AddAOntoHL                                          ; $72eb: $ef
	db $10                                           ; $72ec: $10
	ld e, a                                          ; $72ed: $5f
	and b                                            ; $72ee: $a0
	ld l, a                                          ; $72ef: $6f
	cp h                                             ; $72f0: $bc
	sbc [hl]                                         ; $72f1: $9e

jr_04d_72f2:
	rst SubAFromDE                                          ; $72f2: $df
	ld a, e                                          ; $72f3: $7b

jr_04d_72f4:
	ldh a, [$80]                                     ; $72f4: $f0 $80
	rst SubAFromHL                                          ; $72f6: $d7
	jr z, jr_04d_72f2                                ; $72f7: $28 $f9

	ld b, $ff                                        ; $72f9: $06 $ff
	ld bc, $52a7                                     ; $72fb: $01 $a7 $52
	ld c, l                                          ; $72fe: $4d
	and [hl]                                         ; $72ff: $a6
	db $db                                           ; $7300: $db
	inc c                                            ; $7301: $0c
	or l                                             ; $7302: $b5
	ld a, [hl-]                                      ; $7303: $3a
	jp z, $f874                                      ; $7304: $ca $74 $f8

	jr nc, jr_04d_737e                               ; $7307: $30 $75

	pop bc                                           ; $7309: $c1
	cpl                                              ; $730a: $2f
	add d                                            ; $730b: $82
	ld a, [hl]                                       ; $730c: $7e
	inc b                                            ; $730d: $04
	rst GetHLinHL                                          ; $730e: $cf
	jr jr_04d_72c6                                   ; $730f: $18 $b5

	ld a, [de]                                       ; $7311: $1a
	ld l, d                                          ; $7312: $6a
	dec [hl]                                         ; $7313: $35
	push de                                          ; $7314: $d5
	sbc e                                            ; $7315: $9b
	ld l, d                                          ; $7316: $6a
	call nz, stodo_ScriptRelatedStruct                                   ; $7317: $c4 $80 $ba
	ld a, d                                          ; $731a: $7a
	call nc, $bb80                                   ; $731b: $d4 $80 $bb
	nop                                              ; $731e: $00
	ld l, [hl]                                       ; $731f: $6e
	ld de, $ab54                                     ; $7320: $11 $54 $ab
	ld a, [hl+]                                      ; $7323: $2a
	push de                                          ; $7324: $d5
	ld d, h                                          ; $7325: $54
	xor e                                            ; $7326: $ab
	ld d, a                                          ; $7327: $57
	inc b                                            ; $7328: $04
	and d                                            ; $7329: $a2
	inc c                                            ; $732a: $0c
	dec a                                            ; $732b: $3d
	ld c, b                                          ; $732c: $48
	ld b, d                                          ; $732d: $42
	sbc l                                            ; $732e: $9d
	sub b                                            ; $732f: $90
	ld e, a                                          ; $7330: $5f
	ld e, b                                          ; $7331: $58
	or a                                             ; $7332: $b7
	jr nz, jr_04d_72f4                               ; $7333: $20 $bf

	and b                                            ; $7335: $a0
	ld a, a                                          ; $7336: $7f
	ld d, b                                          ; $7337: $50
	cpl                                              ; $7338: $2f
	xor d                                            ; $7339: $aa
	ld d, l                                          ; $733a: $55

jr_04d_733b:
	ld d, b                                          ; $733b: $50
	sbc [hl]                                         ; $733c: $9e
	xor a                                            ; $733d: $af
	ld h, l                                          ; $733e: $65
	ret c                                            ; $733f: $d8

	sub h                                            ; $7340: $94
	inc bc                                           ; $7341: $03
	rst $38                                          ; $7342: $ff
	inc bc                                           ; $7343: $03
	cp $01                                           ; $7344: $fe $01
	rst $38                                          ; $7346: $ff
	add hl, bc                                       ; $7347: $09
	rst $38                                          ; $7348: $ff
	rrca                                             ; $7349: $0f
	rst $38                                          ; $734a: $ff
	rlca                                             ; $734b: $07
	ld a, e                                          ; $734c: $7b
	cp $9e                                           ; $734d: $fe $9e
	ccf                                              ; $734f: $3f
	sbc $ff                                          ; $7350: $de $ff
	add l                                            ; $7352: $85
	adc e                                            ; $7353: $8b
	ld a, a                                          ; $7354: $7f
	call nc, $cb3f                                   ; $7355: $d4 $3f $cb

jr_04d_7358:
	cp a                                             ; $7358: $bf
	ld a, a                                          ; $7359: $7f
	rst SubAFromDE                                          ; $735a: $df
	rst AddAOntoHL                                          ; $735b: $ef
	rst SubAFromDE                                          ; $735c: $df
	xor a                                            ; $735d: $af
	db $f4                                           ; $735e: $f4
	ld a, [hl]                                       ; $735f: $7e
	db $fc                                           ; $7360: $fc
	cp $fc                                           ; $7361: $fe $fc
	push de                                          ; $7363: $d5
	rst $38                                          ; $7364: $ff
	ld [$77ff], a                                    ; $7365: $ea $ff $77
	rst $38                                          ; $7368: $ff
	db $fc                                           ; $7369: $fc
	db $fc                                           ; $736a: $fc
	sub b                                            ; $736b: $90
	add b                                            ; $736c: $80
	ei                                               ; $736d: $fb
	ld a, [hl]                                       ; $736e: $7e
	or [hl]                                          ; $736f: $b6
	sbc d                                            ; $7370: $9a
	ld a, a                                          ; $7371: $7f
	rst $38                                          ; $7372: $ff
	ld de, $20f0                                     ; $7373: $11 $f0 $20

Call_04d_7376:
	ld hl, sp-$67                                    ; $7376: $f8 $99
	ei                                               ; $7378: $fb
	db $fc                                           ; $7379: $fc
	ld bc, $46ff                                     ; $737a: $01 $ff $46
	ccf                                              ; $737d: $3f

jr_04d_737e:
	ld l, a                                          ; $737e: $6f
	cp $8b                                           ; $737f: $fe $8b
	ld d, [hl]                                       ; $7381: $56
	cpl                                              ; $7382: $2f
	ld d, [hl]                                       ; $7383: $56
	cpl                                              ; $7384: $2f
	rst $38                                          ; $7385: $ff
	nop                                              ; $7386: $00
	rst SubAFromDE                                          ; $7387: $df
	jr nz, jr_04d_739f                               ; $7388: $20 $15

	ld [$758a], a                                    ; $738a: $ea $8a $75
	add l                                            ; $738d: $85
	ld a, d                                          ; $738e: $7a
	db $10                                           ; $738f: $10
	rst $38                                          ; $7390: $ff
	adc b                                            ; $7391: $88
	ld a, a                                          ; $7392: $7f
	sub h                                            ; $7393: $94
	ld a, a                                          ; $7394: $7f
	ld a, d                                          ; $7395: $7a
	jp c, $df7f                                      ; $7396: $da $7f $df

	ld l, d                                          ; $7399: $6a
	ld hl, sp+$7f                                    ; $739a: $f8 $7f
	jr z, jr_04d_733b                                ; $739c: $28 $9d

	rra                                              ; $739e: $1f

jr_04d_739f:
	ldh [$75], a                                     ; $739f: $e0 $75
	cp h                                             ; $73a1: $bc
	ld a, a                                          ; $73a2: $7f
	ldh a, [$9b]                                     ; $73a3: $f0 $9b
	cp a                                             ; $73a5: $bf
	ld b, b                                          ; $73a6: $40
	ld d, a                                          ; $73a7: $57
	xor b                                            ; $73a8: $a8
	ld [hl], a                                       ; $73a9: $77
	ld a, a                                          ; $73aa: $7f
	sbc e                                            ; $73ab: $9b
	add c                                            ; $73ac: $81
	ld c, $fd                                        ; $73ad: $0e $fd
	ld [bc], a                                       ; $73af: $02
	ld l, [hl]                                       ; $73b0: $6e
	ld hl, sp+$67                                    ; $73b1: $f8 $67
	cp $77                                           ; $73b3: $fe $77
	ret c                                            ; $73b5: $d8

	ld a, a                                          ; $73b6: $7f
	inc c                                            ; $73b7: $0c
	ld [hl], a                                       ; $73b8: $77
	or $6f                                           ; $73b9: $f6 $6f
	add sp, $7f                                      ; $73bb: $e8 $7f
	ldh a, [$6e]                                     ; $73bd: $f0 $6e
	or d                                             ; $73bf: $b2
	ld a, l                                          ; $73c0: $7d
	sub b                                            ; $73c1: $90
	ld [hl], a                                       ; $73c2: $77
	db $fc                                           ; $73c3: $fc
	adc d                                            ; $73c4: $8a
	nop                                              ; $73c5: $00
	inc bc                                           ; $73c6: $03
	ld d, l                                          ; $73c7: $55
	and b                                            ; $73c8: $a0
	xor d                                            ; $73c9: $aa
	nop                                              ; $73ca: $00
	ld b, b                                          ; $73cb: $40
	ld b, $00                                        ; $73cc: $06 $00
	rlca                                             ; $73ce: $07
	nop                                              ; $73cf: $00
	rlca                                             ; $73d0: $07
	inc e                                            ; $73d1: $1c
	inc bc                                           ; $73d2: $03
	jr z, jr_04d_742c                                ; $73d3: $28 $57

	inc d                                            ; $73d5: $14
	dec bc                                           ; $73d6: $0b
	ld a, a                                          ; $73d7: $7f
	nop                                              ; $73d8: $00
	dec hl                                           ; $73d9: $2b
	ld a, e                                          ; $73da: $7b
	ldh [$99], a                                     ; $73db: $e0 $99
	ld a, [hl+]                                      ; $73dd: $2a
	ret nz                                           ; $73de: $c0

	dec d                                            ; $73df: $15
	ldh [rAUD3ENA], a                                ; $73e0: $e0 $1a
	ldh [rPCM34], a                                  ; $73e2: $e0 $77
	db $fc                                           ; $73e4: $fc
	ld [hl], a                                       ; $73e5: $77
	call z, Call_04d_7a7e                            ; $73e6: $cc $7e $7a
	ld a, c                                          ; $73e9: $79
	ld a, b                                          ; $73ea: $78
	ld l, e                                          ; $73eb: $6b
	db $fc                                           ; $73ec: $fc
	ld a, e                                          ; $73ed: $7b
	add d                                            ; $73ee: $82
	add b                                            ; $73ef: $80
	inc bc                                           ; $73f0: $03
	ei                                               ; $73f1: $fb
	rlca                                             ; $73f2: $07
	and $0f                                          ; $73f3: $e6 $0f
	ld e, h                                          ; $73f5: $5c
	rrca                                             ; $73f6: $0f
	cp l                                             ; $73f7: $bd
	rra                                              ; $73f8: $1f
	ld [hl], e                                       ; $73f9: $73
	inc e                                            ; $73fa: $1c
	add c                                            ; $73fb: $81
	ld bc, $daa5                                     ; $73fc: $01 $a5 $da
	adc e                                            ; $73ff: $8b
	push af                                          ; $7400: $f5
	dec b                                            ; $7401: $05
	ld sp, hl                                        ; $7402: $f9
	ld a, [bc]                                       ; $7403: $0a
	di                                               ; $7404: $f3
	add h                                            ; $7405: $84
	rst $38                                          ; $7406: $ff
	add h                                            ; $7407: $84
	rst $38                                          ; $7408: $ff
	sub a                                            ; $7409: $97
	cpl                                              ; $740a: $2f
	rst $38                                          ; $740b: $ff
	inc a                                            ; $740c: $3c
	xor d                                            ; $740d: $aa
	push de                                          ; $740e: $d5
	ld a, h                                          ; $740f: $7c
	ld b, [hl]                                       ; $7410: $46
	ld a, h                                          ; $7411: $7c
	jr z, jr_04d_7493                                ; $7412: $28 $7f

	res 2, e                                         ; $7414: $cb $93
	add hl, bc                                       ; $7416: $09
	or $09                                           ; $7417: $f6 $09
	rst FarCall                                          ; $7419: $f7
	cp $fc                                           ; $741a: $fe $fc
	adc a                                            ; $741c: $8f
	ld c, $a0                                        ; $741d: $0e $a0
	ld e, a                                          ; $741f: $5f
	ld b, b                                          ; $7420: $40
	cp a                                             ; $7421: $bf
	ld a, d                                          ; $7422: $7a
	add sp, -$80                                     ; $7423: $e8 $80
	db $fc                                           ; $7425: $fc
	ld a, a                                          ; $7426: $7f
	rst $38                                          ; $7427: $ff
	ei                                               ; $7428: $fb
	jp nz, $3f3b                                     ; $7429: $c2 $3b $3f

jr_04d_742c:
	dec sp                                           ; $742c: $3b
	dec b                                            ; $742d: $05
	and b                                            ; $742e: $a0
	ld a, a                                          ; $742f: $7f
	ld b, b                                          ; $7430: $40
	rst $38                                          ; $7431: $ff
	ldh [$df], a                                     ; $7432: $e0 $df
	db $fd                                           ; $7434: $fd
	cp $cc                                           ; $7435: $fe $cc
	ret z                                            ; $7437: $c8

	di                                               ; $7438: $f3
	ld e, [hl]                                       ; $7439: $5e
	ld h, $e7                                        ; $743a: $26 $e7
	ldh [c], a                                       ; $743c: $e2
	xor $67                                          ; $743d: $ee $67
	db $fc                                           ; $743f: $fc
	ccf                                              ; $7440: $3f
	rst GetHLinHL                                          ; $7441: $cf
	ld a, l                                          ; $7442: $7d
	db $fc                                           ; $7443: $fc
	add b                                            ; $7444: $80
	cp c                                             ; $7445: $b9
	ld de, $f53d                                     ; $7446: $11 $3d $f5
	cp l                                             ; $7449: $bd
	push hl                                          ; $744a: $e5
	and c                                            ; $744b: $a1
	inc bc                                           ; $744c: $03
	ld b, $66                                        ; $744d: $06 $66
	rst $38                                          ; $744f: $ff
	rst $38                                          ; $7450: $ff
	ldh a, [c]                                       ; $7451: $f2
	ldh [rHDMA3], a                                  ; $7452: $e0 $53
	ld h, d                                          ; $7454: $62
	ld a, a                                          ; $7455: $7f
	jp nc, $965d                                     ; $7456: $d2 $5d $96

	ld c, $17                                        ; $7459: $0e $17
	jr nc, jr_04d_747d                               ; $745b: $30 $20

	ld b, e                                          ; $745d: $43
	ccf                                              ; $745e: $3f
	cp $fc                                           ; $745f: $fe $fc
	ld a, $3c                                        ; $7461: $3e $3c
	ld a, $94                                        ; $7463: $3e $94
	inc a                                            ; $7465: $3c
	ld d, [hl]                                       ; $7466: $56
	inc a                                            ; $7467: $3c
	ld d, $bc                                        ; $7468: $16 $bc
	cp [hl]                                          ; $746a: $be
	db $fc                                           ; $746b: $fc
	ld e, $7c                                        ; $746c: $1e $7c
	or $dc                                           ; $746e: $f6 $dc
	pop hl                                           ; $7470: $e1
	halt                                             ; $7471: $76
	call z, $fe7f                                    ; $7472: $cc $7f $fe
	ld h, [hl]                                       ; $7475: $66
	cp [hl]                                          ; $7476: $be
	ld a, a                                          ; $7477: $7f
	cp $9d                                           ; $7478: $fe $9d
	ld a, [bc]                                       ; $747a: $0a
	rst $38                                          ; $747b: $ff
	ld a, d                                          ; $747c: $7a

jr_04d_747d:
	pop de                                           ; $747d: $d1
	sbc [hl]                                         ; $747e: $9e
	rst $38                                          ; $747f: $ff
	ld a, c                                          ; $7480: $79
	rst FarCall                                          ; $7481: $f7
	ld a, e                                          ; $7482: $7b
	db $fc                                           ; $7483: $fc
	ld a, [hl]                                       ; $7484: $7e
	cp [hl]                                          ; $7485: $be
	ld a, e                                          ; $7486: $7b
	ld hl, sp-$63                                    ; $7487: $f8 $9d
	ld hl, sp+$01                                    ; $7489: $f8 $01
	ld [hl], l                                       ; $748b: $75
	sbc c                                            ; $748c: $99
	ld e, a                                          ; $748d: $5f
	cp $8a                                           ; $748e: $fe $8a
	rrca                                             ; $7490: $0f
	nop                                              ; $7491: $00
	rrca                                             ; $7492: $0f

jr_04d_7493:
	add b                                            ; $7493: $80
	adc a                                            ; $7494: $8f
	ld b, b                                          ; $7495: $40
	rst GetHLinHL                                          ; $7496: $cf
	and b                                            ; $7497: $a0
	rst GetHLinHL                                          ; $7498: $cf
	ld b, b                                          ; $7499: $40
	rst AddAOntoHL                                          ; $749a: $ef
	and b                                            ; $749b: $a0
	rst $38                                          ; $749c: $ff
	ld d, b                                          ; $749d: $50
	rst $38                                          ; $749e: $ff
	ld a, a                                          ; $749f: $7f
	add b                                            ; $74a0: $80
	rrca                                             ; $74a1: $0f
	ldh [rSB], a                                     ; $74a2: $e0 $01
	db $fc                                           ; $74a4: $fc
	ld [hl], a                                       ; $74a5: $77
	and $7f                                          ; $74a6: $e6 $7f
	ld e, d                                          ; $74a8: $5a
	sbc e                                            ; $74a9: $9b
	ld hl, sp-$09                                    ; $74aa: $f8 $f7
	cp $fd                                           ; $74ac: $fe $fd
	ld l, a                                          ; $74ae: $6f
	db $db                                           ; $74af: $db
	sbc e                                            ; $74b0: $9b
	ccf                                              ; $74b1: $3f
	add b                                            ; $74b2: $80
	rrca                                             ; $74b3: $0f
	ldh a, [$6f]                                     ; $74b4: $f0 $6f
	ld [$a095], a                                    ; $74b6: $ea $95 $a0
	ld b, b                                          ; $74b9: $40
	ld b, d                                          ; $74ba: $42
	pop hl                                           ; $74bb: $e1
	and d                                            ; $74bc: $a2
	ld b, c                                          ; $74bd: $41
	ld b, d                                          ; $74be: $42
	pop hl                                           ; $74bf: $e1
	ld [hl+], a                                      ; $74c0: $22
	pop bc                                           ; $74c1: $c1
	ld a, e                                          ; $74c2: $7b
	db $fc                                           ; $74c3: $fc
	sub b                                            ; $74c4: $90
	reti                                             ; $74c5: $d9


	ld [hl], $c9                                     ; $74c6: $36 $c9
	jr nz, jr_04d_7511                               ; $74c8: $20 $47

	inc d                                            ; $74ca: $14
	db $e3                                           ; $74cb: $e3
	xor b                                            ; $74cc: $a8
	ld d, a                                          ; $74cd: $57
	ld d, c                                          ; $74ce: $51
	xor [hl]                                         ; $74cf: $ae
	xor d                                            ; $74d0: $aa
	ld d, l                                          ; $74d1: $55
	dec d                                            ; $74d2: $15
	ld [$e077], a                                    ; $74d3: $ea $77 $e0
	ld a, [hl]                                       ; $74d6: $7e
	ld l, [hl]                                       ; $74d7: $6e
	sub c                                            ; $74d8: $91
	jr nz, @-$32                                     ; $74d9: $20 $cc

	ld c, $dc                                        ; $74db: $0e $dc
	inc b                                            ; $74dd: $04
	sbc $0c                                          ; $74de: $de $0c
	cp $04                                           ; $74e0: $fe $04
	sbc $8c                                          ; $74e2: $de $8c
	ld e, [hl]                                       ; $74e4: $5e
	inc h                                            ; $74e5: $24
	sbc $f1                                          ; $74e6: $de $f1
	pop de                                           ; $74e8: $d1
	ld bc, $bd83                                     ; $74e9: $01 $83 $bd
	di                                               ; $74ec: $f3
	and h                                            ; $74ed: $a4
	rst FarCall                                          ; $74ee: $f7
	or e                                             ; $74ef: $b3
	di                                               ; $74f0: $f3
	xor d                                            ; $74f1: $aa
	pop af                                           ; $74f2: $f1
	xor e                                            ; $74f3: $ab
	rst FarCall                                          ; $74f4: $f7
	or a                                             ; $74f5: $b7
	rst $38                                          ; $74f6: $ff
	xor e                                            ; $74f7: $ab
	db $fc                                           ; $74f8: $fc
	or b                                             ; $74f9: $b0
	db $fc                                           ; $74fa: $fc
	add a                                            ; $74fb: $87
	adc d                                            ; $74fc: $8a
	ld [$060f], sp                                   ; $74fd: $08 $0f $06
	inc c                                            ; $7500: $0c
	or $c9                                           ; $7501: $f6 $c9
	rst SubAFromDE                                          ; $7503: $df
	ccf                                              ; $7504: $3f
	ldh [c], a                                       ; $7505: $e2
	db $fc                                           ; $7506: $fc
	db $fd                                           ; $7507: $fd
	add b                                            ; $7508: $80
	dec c                                            ; $7509: $0d
	inc b                                            ; $750a: $04
	ld c, h                                          ; $750b: $4c
	adc b                                            ; $750c: $88
	ld c, [hl]                                       ; $750d: $4e
	sub c                                            ; $750e: $91
	rst $38                                          ; $750f: $ff
	ld a, a                                          ; $7510: $7f

jr_04d_7511:
	cp $81                                           ; $7511: $fe $81
	ld a, e                                          ; $7513: $7b
	ccf                                              ; $7514: $3f
	inc [hl]                                         ; $7515: $34
	ld a, e                                          ; $7516: $7b
	ld [hl], c                                       ; $7517: $71
	ld a, $7f                                        ; $7518: $3e $7f
	ld c, h                                          ; $751a: $4c
	call Call_04d_7f03                               ; $751b: $cd $03 $7f
	cp $7f                                           ; $751e: $fe $7f
	add b                                            ; $7520: $80
	xor [hl]                                         ; $7521: $ae
	rst $38                                          ; $7522: $ff
	ld h, l                                          ; $7523: $65
	ei                                               ; $7524: $fb
	xor $df                                          ; $7525: $ee $df
	inc hl                                           ; $7527: $23
	sub a                                            ; $7528: $97
	rst $38                                          ; $7529: $ff
	or e                                             ; $752a: $b3
	ld c, a                                          ; $752b: $4f
	db $fc                                           ; $752c: $fc
	rst $38                                          ; $752d: $ff
	ld hl, sp+$00                                    ; $752e: $f8 $00
	add b                                            ; $7530: $80
	sbc $c0                                          ; $7531: $de $c0
	ld a, e                                          ; $7533: $7b
	db $fc                                           ; $7534: $fc
	sbc c                                            ; $7535: $99
	ld b, b                                          ; $7536: $40
	ret nz                                           ; $7537: $c0

	ret nz                                           ; $7538: $c0

	rst $38                                          ; $7539: $ff
	db $fc                                           ; $753a: $fc
	ret nz                                           ; $753b: $c0

	db $f4                                           ; $753c: $f4
	sbc h                                            ; $753d: $9c
	cp $1c                                           ; $753e: $fe $1c
	ld d, $7b                                        ; $7540: $16 $7b
	cp $9e                                           ; $7542: $fe $9e
	ld e, $73                                        ; $7544: $1e $73
	ld a, [$149b]                                    ; $7546: $fa $9b $14
	ld e, $1c                                        ; $7549: $1e $1c
	ld e, $e1                                        ; $754b: $1e $e1
	halt                                             ; $754d: $76
	call z, Call_04d_4e9d                            ; $754e: $cc $9d $4e
	scf                                              ; $7551: $37
	ld e, a                                          ; $7552: $5f
	cp $76                                           ; $7553: $fe $76
	call z, $fc77                                    ; $7555: $cc $77 $fc
	sbc e                                            ; $7558: $9b
	inc e                                            ; $7559: $1c
	rst AddAOntoHL                                          ; $755a: $ef
	cp [hl]                                          ; $755b: $be
	ld e, a                                          ; $755c: $5f
	ld a, c                                          ; $755d: $79
	cpl                                              ; $755e: $2f
	ld l, c                                          ; $755f: $69
	jr jr_04d_75c9                                   ; $7560: $18 $67

	cp $90                                           ; $7562: $fe $90
	or b                                             ; $7564: $b0
	rst $38                                          ; $7565: $ff
	and b                                            ; $7566: $a0
	rst $38                                          ; $7567: $ff
	ld d, c                                          ; $7568: $51
	cp $a0                                           ; $7569: $fe $a0
	rst $38                                          ; $756b: $ff
	ld d, a                                          ; $756c: $57
	ld hl, sp-$53                                    ; $756d: $f8 $ad
	ldh a, [c]                                       ; $756f: $f2
	ld a, d                                          ; $7570: $7a

jr_04d_7571:
	push bc                                          ; $7571: $c5
	push de                                          ; $7572: $d5
	ld a, c                                          ; $7573: $79
	sub h                                            ; $7574: $94
	add h                                            ; $7575: $84
	ld c, a                                          ; $7576: $4f
	rst $38                                          ; $7577: $ff
	ld a, [hl]                                       ; $7578: $7e
	rst $38                                          ; $7579: $ff
	jp c, $867d                                      ; $757a: $da $7d $86

	ld a, c                                          ; $757d: $79
	cpl                                              ; $757e: $2f
	rst SubAFromDE                                          ; $757f: $df

Call_04d_7580:
	daa                                              ; $7580: $27
	rst SubAFromDE                                          ; $7581: $df
	ld e, l                                          ; $7582: $5d
	and e                                            ; $7583: $a3
	or l                                             ; $7584: $b5
	ld e, a                                          ; $7585: $5f
	rst GetHLinHL                                          ; $7586: $cf
	ldh a, [$fb]                                     ; $7587: $f0 $fb
	db $fc                                           ; $7589: $fc
	ld c, [hl]                                       ; $758a: $4e
	db $fd                                           ; $758b: $fd
	ld a, l                                          ; $758c: $7d
	rst $38                                          ; $758d: $ff
	pop bc                                           ; $758e: $c1
	cp $cd                                           ; $758f: $fe $cd
	sbc $ff                                          ; $7591: $de $ff
	sub a                                            ; $7593: $97
	cp $ff                                           ; $7594: $fe $ff
	ld b, $f9                                        ; $7596: $06 $f9
	jr z, jr_04d_7571                                ; $7598: $28 $d7

	inc d                                            ; $759a: $14
	db $eb                                           ; $759b: $eb
	ld [hl], h                                       ; $759c: $74
	call z, $ca7e                                    ; $759d: $cc $7e $ca
	ld a, a                                          ; $75a0: $7f
	db $fc                                           ; $75a1: $fc
	add b                                            ; $75a2: $80
	inc hl                                           ; $75a3: $23
	rst SubAFromDE                                          ; $75a4: $df
	add h                                            ; $75a5: $84
	rst $38                                          ; $75a6: $ff
	jr nz, @-$1f                                     ; $75a7: $20 $df

	call nz, $2b3f                                   ; $75a9: $c4 $3f $2b
	rst $38                                          ; $75ac: $ff
	call c, Call_04d_60ff                            ; $75ad: $dc $ff $60
	rst $38                                          ; $75b0: $ff
	db $db                                           ; $75b1: $db
	db $e4                                           ; $75b2: $e4
	db $db                                           ; $75b3: $db
	dec h                                            ; $75b4: $25
	xor $dc                                          ; $75b5: $ee $dc
	call z, Call_04d_4efe                            ; $75b7: $cc $fe $4e
	cp $de                                           ; $75ba: $fe $de
	cp $f5                                           ; $75bc: $fe $f5
	ld a, [hl]                                       ; $75be: $7e
	cpl                                              ; $75bf: $2f
	rst $38                                          ; $75c0: $ff
	ld d, a                                          ; $75c1: $57
	sbc h                                            ; $75c2: $9c
	rst $38                                          ; $75c3: $ff
	cpl                                              ; $75c4: $2f
	cp $f7                                           ; $75c5: $fe $f7
	ld [hl], h                                       ; $75c7: $74
	rst GetHLinHL                                          ; $75c8: $cf

jr_04d_75c9:
	sbc l                                            ; $75c9: $9d
	ld b, b                                          ; $75ca: $40
	add b                                            ; $75cb: $80
	pop de                                           ; $75cc: $d1
	ld bc, $b49d                                     ; $75cd: $01 $9d $b4
	ld hl, sp+$6f                                    ; $75d0: $f8 $6f
	cp $9a                                           ; $75d2: $fe $9a
	ldh a, [$fc]                                     ; $75d4: $f0 $fc
	or h                                             ; $75d6: $b4
	ld hl, sp-$0c                                    ; $75d7: $f8 $f4
	ld a, e                                          ; $75d9: $7b
	ld hl, sp-$0f                                    ; $75da: $f8 $f1
	add b                                            ; $75dc: $80
	dec hl                                           ; $75dd: $2b
	ld sp, $263d                                     ; $75de: $31 $3d $26
	cpl                                              ; $75e1: $2f
	ld sp, $233c                                     ; $75e2: $31 $3c $23
	ld l, a                                          ; $75e5: $6f
	jr nc, jr_04d_7664                               ; $75e6: $30 $7c

	inc hl                                           ; $75e8: $23
	ld h, a                                          ; $75e9: $67
	add hl, sp                                       ; $75ea: $39
	ld l, [hl]                                       ; $75eb: $6e
	scf                                              ; $75ec: $37
	inc a                                            ; $75ed: $3c
	rst GetHLinHL                                          ; $75ee: $cf
	or $3b                                           ; $75ef: $f6 $3b
	cp l                                             ; $75f1: $bd
	rst SubAFromBC                                          ; $75f2: $e7
	jp c, $fe7d                                      ; $75f3: $da $7d $fe

	rst JumpTable                                          ; $75f6: $c7
	ld l, a                                          ; $75f7: $6f
	cp l                                             ; $75f8: $bd
	inc d                                            ; $75f9: $14
	db $eb                                           ; $75fa: $eb
	ld [hl], c                                       ; $75fb: $71
	sbc l                                            ; $75fc: $9d
	sbc [hl]                                         ; $75fd: $9e
	nop                                              ; $75fe: $00
	ret c                                            ; $75ff: $d8

	ret nz                                           ; $7600: $c0

	sbc h                                            ; $7601: $9c
	ldh [$c0], a                                     ; $7602: $e0 $c0
	ld h, b                                          ; $7604: $60
	ld a, e                                          ; $7605: $7b
	ei                                               ; $7606: $fb
	pop af                                           ; $7607: $f1
	ld a, d                                          ; $7608: $7a
	push bc                                          ; $7609: $c5
	ld l, e                                          ; $760a: $6b
	cp $9c                                           ; $760b: $fe $9c
	ld c, $1e                                        ; $760d: $0e $1e
	inc c                                            ; $760f: $0c
	ld a, e                                          ; $7610: $7b
	cp $f7                                           ; $7611: $fe $f7
	sbc c                                            ; $7613: $99
	dec sp                                           ; $7614: $3b
	ld c, $65                                        ; $7615: $0e $65
	ld e, $3a                                        ; $7617: $1e $3a
	dec c                                            ; $7619: $0d
	ld l, d                                          ; $761a: $6a
	ld a, [hl+]                                      ; $761b: $2a
	halt                                             ; $761c: $76
	daa                                              ; $761d: $27
	sub [hl]                                         ; $761e: $96
	nop                                              ; $761f: $00
	ld d, $09                                        ; $7620: $16 $09
	rla                                              ; $7622: $17
	add sp, $7a                                      ; $7623: $e8 $7a
	dec b                                            ; $7625: $05
	ld d, l                                          ; $7626: $55
	ld a, [hl+]                                      ; $7627: $2a
	ld a, b                                          ; $7628: $78
	ld h, d                                          ; $7629: $62
	rst SubAFromDE                                          ; $762a: $df

Call_04d_762b:
	xor e                                            ; $762b: $ab
	add b                                            ; $762c: $80
	ld d, l                                          ; $762d: $55
	rla                                              ; $762e: $17
	add sp, $28                                      ; $762f: $e8 $28
	rst SubAFromHL                                          ; $7631: $d7
	ld d, h                                          ; $7632: $54
	xor a                                            ; $7633: $af
	or e                                             ; $7634: $b3
	ld a, a                                          ; $7635: $7f
	ld d, e                                          ; $7636: $53
	cp a                                             ; $7637: $bf
	inc bc                                           ; $7638: $03
	rst $38                                          ; $7639: $ff
	ld d, [hl]                                       ; $763a: $56
	rst $38                                          ; $763b: $ff
	and l                                            ; $763c: $a5
	rst $38                                          ; $763d: $ff
	or d                                             ; $763e: $b2
	ld a, a                                          ; $763f: $7f
	jp c, Jump_04d_6b67                              ; $7640: $da $67 $6b

	rst FarCall                                          ; $7643: $f7
	dec [hl]                                         ; $7644: $35
	ld a, [$fcf3]                                    ; $7645: $fa $f3 $fc
	ld a, [$e7fd]                                    ; $7648: $fa $fd $e7
	cp $9d                                           ; $764b: $fe $9d
	xor $f5                                          ; $764d: $ee $f5
	ld [hl], h                                       ; $764f: $74
	ld h, [hl]                                       ; $7650: $66
	adc b                                            ; $7651: $88
	ld c, l                                          ; $7652: $4d
	ld a, [$2ad5]                                    ; $7653: $fa $d5 $2a
	dec hl                                           ; $7656: $2b
	call nc, $2ed1                                   ; $7657: $d4 $d1 $2e
	ld c, b                                          ; $765a: $48
	or a                                             ; $765b: $b7
	xor d                                            ; $765c: $aa
	ld d, l                                          ; $765d: $55
	ld d, c                                          ; $765e: $51
	xor [hl]                                         ; $765f: $ae
	xor [hl]                                         ; $7660: $ae
	ld e, a                                          ; $7661: $5f
	ld c, c                                          ; $7662: $49
	cp [hl]                                          ; $7663: $be

jr_04d_7664:
	ld [hl+], a                                      ; $7664: $22
	rst $38                                          ; $7665: $ff
	ld c, b                                          ; $7666: $48
	rst $38                                          ; $7667: $ff
	add [hl]                                         ; $7668: $86
	ld a, d                                          ; $7669: $7a
	and [hl]                                         ; $766a: $a6
	sub h                                            ; $766b: $94
	ret nc                                           ; $766c: $d0

	ld a, a                                          ; $766d: $7f
	ld c, e                                          ; $766e: $4b
	cp a                                             ; $766f: $bf
	add l                                            ; $7670: $85
	ld a, d                                          ; $7671: $7a
	ld e, d                                          ; $7672: $5a
	db $fd                                           ; $7673: $fd
	rst FarCall                                          ; $7674: $f7
	rst $38                                          ; $7675: $ff
	ld a, l                                          ; $7676: $7d
	sbc $ff                                          ; $7677: $de $ff
	ld a, h                                          ; $7679: $7c
	jp nz, $ab8a                                     ; $767a: $c2 $8a $ab

	rst $38                                          ; $767d: $ff
	rst SubAFromHL                                          ; $767e: $d7
	rst $38                                          ; $767f: $ff
	adc a                                            ; $7680: $8f
	rst $38                                          ; $7681: $ff
	ld e, a                                          ; $7682: $5f
	rst $38                                          ; $7683: $ff
	ld b, $ff                                        ; $7684: $06 $ff
	ld d, l                                          ; $7686: $55
	xor d                                            ; $7687: $aa
	ld l, d                                          ; $7688: $6a
	push de                                          ; $7689: $d5
	dec b                                            ; $768a: $05
	ld a, [$ff68]                                    ; $768b: $fa $68 $ff
	ld [hl], b                                       ; $768e: $70
	rst $38                                          ; $768f: $ff
	ld hl, sp+$7b                                    ; $7690: $f8 $7b
	ldh a, [hDisp1_SCY]                                     ; $7692: $f0 $90
	ldh a, [rIF]                                     ; $7694: $f0 $0f
	db $e4                                           ; $7696: $e4
	rra                                              ; $7697: $1f
	ret nc                                           ; $7698: $d0

	cpl                                              ; $7699: $2f
	ld l, c                                          ; $769a: $69
	sub a                                            ; $769b: $97
	ld [bc], a                                       ; $769c: $02
	rst $38                                          ; $769d: $ff
	ld a, [de]                                       ; $769e: $1a
	rst $38                                          ; $769f: $ff
	ld b, l                                          ; $76a0: $45
	cp a                                             ; $76a1: $bf
	sbc d                                            ; $76a2: $9a
	sbc $ff                                          ; $76a3: $de $ff
	ld a, [hl]                                       ; $76a5: $7e
	ret z                                            ; $76a6: $c8

	sbc e                                            ; $76a7: $9b
	rst SubAFromDE                                          ; $76a8: $df
	cp $1f                                           ; $76a9: $fe $1f
	cp $d9                                           ; $76ab: $fe $d9
	rst $38                                          ; $76ad: $ff
	rst SubAFromDE                                          ; $76ae: $df
	add b                                            ; $76af: $80
	halt                                             ; $76b0: $76
	rst JumpTable                                          ; $76b1: $c7
	sub l                                            ; $76b2: $95
	ldh [$60], a                                     ; $76b3: $e0 $60
	ldh a, [$e0]                                     ; $76b5: $f0 $e0
	db $e4                                           ; $76b7: $e4
	ldh [$f6], a                                     ; $76b8: $e0 $f6
	db $fc                                           ; $76ba: $fc
	db $ec                                           ; $76bb: $ec
	db $fc                                           ; $76bc: $fc
	db $d3                                           ; $76bd: $d3
	ld bc, $4a7f                                     ; $76be: $01 $7f $4a
	ld a, [hl]                                       ; $76c1: $7e
	call z, $8c7d                                    ; $76c2: $cc $7d $8c
	ld a, a                                          ; $76c5: $7f
	cp $7e                                           ; $76c6: $fe $7e
	jp nz, $fc6f                                     ; $76c8: $c2 $6f $fc

	ld a, a                                          ; $76cb: $7f
	cp $f3                                           ; $76cc: $fe $f3
	add b                                            ; $76ce: $80
	rra                                              ; $76cf: $1f
	nop                                              ; $76d0: $00
	ld [hl], b                                       ; $76d1: $70
	ccf                                              ; $76d2: $3f
	ld h, b                                          ; $76d3: $60
	ccf                                              ; $76d4: $3f
	ld [hl], b                                       ; $76d5: $70
	ccf                                              ; $76d6: $3f
	ld l, c                                          ; $76d7: $69
	scf                                              ; $76d8: $37
	ld [hl], d                                       ; $76d9: $72
	ccf                                              ; $76da: $3f
	ld a, a                                          ; $76db: $7f
	ccf                                              ; $76dc: $3f
	ld h, e                                          ; $76dd: $63
	nop                                              ; $76de: $00
	inc bc                                           ; $76df: $03
	nop                                              ; $76e0: $00
	ld a, e                                          ; $76e1: $7b
	rst AddAOntoHL                                          ; $76e2: $ef
	ei                                               ; $76e3: $fb
	sbc $8c                                          ; $76e4: $de $8c
	rst FarCall                                          ; $76e6: $f7
	ld d, d                                          ; $76e7: $52
	rst AddAOntoHL                                          ; $76e8: $ef
	sub $ff                                          ; $76e9: $d6 $ff
	ld a, [hl]                                       ; $76eb: $7e
	add b                                            ; $76ec: $80
	rlca                                             ; $76ed: $07
	sbc e                                            ; $76ee: $9b
	nop                                              ; $76ef: $00
	rlca                                             ; $76f0: $07
	ld a, a                                          ; $76f1: $7f
	jr nz, jr_04d_776e                               ; $76f2: $20 $7a

	jp z, $fe7f                                      ; $76f4: $ca $7f $fe

	sub l                                            ; $76f7: $95
	ld b, b                                          ; $76f8: $40
	ldh [$60], a                                     ; $76f9: $e0 $60
	ret nz                                           ; $76fb: $c0

	pop hl                                           ; $76fc: $e1
	nop                                              ; $76fd: $00
	ld d, l                                          ; $76fe: $55
	xor d                                            ; $76ff: $aa
	ld [$f9f5], a                                    ; $7700: $ea $f5 $f9
	add a                                            ; $7703: $87
	dec b                                            ; $7704: $05
	ld [bc], a                                       ; $7705: $02
	xor $1f                                          ; $7706: $ee $1f
	ld a, e                                          ; $7708: $7b
	cp [hl]                                          ; $7709: $be
	db $f4                                           ; $770a: $f4
	rst $38                                          ; $770b: $ff
	ld e, $0e                                        ; $770c: $1e $0e
	ld [de], a                                       ; $770e: $12
	dec c                                            ; $770f: $0d
	ld de, $220e                                     ; $7710: $11 $0e $22
	dec e                                            ; $7713: $1d
	and c                                            ; $7714: $a1
	ld e, $88                                        ; $7715: $1e $88
	rra                                              ; $7717: $1f
	ld e, d                                          ; $7718: $5a
	adc l                                            ; $7719: $8d
	dec d                                            ; $771a: $15
	sbc $77                                          ; $771b: $de $77
	ld a, [bc]                                       ; $771d: $0a
	sbc [hl]                                         ; $771e: $9e
	ld [hl], l                                       ; $771f: $75
	ld a, e                                          ; $7720: $7b
	db $fc                                           ; $7721: $fc
	sbc h                                            ; $7722: $9c
	ld b, b                                          ; $7723: $40
	cp a                                             ; $7724: $bf
	nop                                              ; $7725: $00
	ld a, b                                          ; $7726: $78
	ld h, [hl]                                       ; $7727: $66
	sbc l                                            ; $7728: $9d
	add e                                            ; $7729: $83
	ld a, a                                          ; $772a: $7f
	ld [hl], a                                       ; $772b: $77
	ldh a, [$7f]                                     ; $772c: $f0 $7f
	db $fc                                           ; $772e: $fc
	add b                                            ; $772f: $80
	ld a, [bc]                                       ; $7730: $0a
	push af                                          ; $7731: $f5
	nop                                              ; $7732: $00

Call_04d_7733:
	rst $38                                          ; $7733: $ff
	inc c                                            ; $7734: $0c
	rst $38                                          ; $7735: $ff
	jp nc, $e8ff                                     ; $7736: $d2 $ff $e8

	rst $38                                          ; $7739: $ff
	cp a                                             ; $773a: $bf
	ld d, a                                          ; $773b: $57
	ld d, h                                          ; $773c: $54
	cp a                                             ; $773d: $bf
	xor d                                            ; $773e: $aa
	ld a, a                                          ; $773f: $7f
	ld d, h                                          ; $7740: $54
	cp a                                             ; $7741: $bf
	adc d                                            ; $7742: $8a
	ld a, a                                          ; $7743: $7f
	rst JumpTable                                          ; $7744: $c7
	cp a                                             ; $7745: $bf
	ld a, [hl+]                                      ; $7746: $2a
	rst SubAFromDE                                          ; $7747: $df
	push af                                          ; $7748: $f5
	rst $38                                          ; $7749: $ff
	ld b, b                                          ; $774a: $40
	rst $38                                          ; $774b: $ff
	dec h                                            ; $774c: $25
	rst SubAFromDE                                          ; $774d: $df
	ld e, e                                          ; $774e: $5b
	sub a                                            ; $774f: $97
	cp a                                             ; $7750: $bf
	rst SubAFromHL                                          ; $7751: $d7
	ccf                                              ; $7752: $3f
	and a                                            ; $7753: $a7
	ld a, a                                          ; $7754: $7f
	ld e, a                                          ; $7755: $5f
	rst $38                                          ; $7756: $ff
	cp a                                             ; $7757: $bf
	sbc $ff                                          ; $7758: $de $ff
	sub [hl]                                         ; $775a: $96
	ld a, [hl+]                                      ; $775b: $2a
	push af                                          ; $775c: $f5
	push hl                                          ; $775d: $e5
	ld a, [$ffe0]                                    ; $775e: $fa $e0 $ff
	db $f4                                           ; $7761: $f4
	rst $38                                          ; $7762: $ff
	db $ed                                           ; $7763: $ed
	ld a, d                                          ; $7764: $7a

jr_04d_7765:
	ldh a, [$7e]                                     ; $7765: $f0 $7e
	db $ec                                           ; $7767: $ec
	rst SubAFromDE                                          ; $7768: $df
	rst $38                                          ; $7769: $ff
	add [hl]                                         ; $776a: $86
	and d                                            ; $776b: $a2
	ld e, l                                          ; $776c: $5d
	ld c, l                                          ; $776d: $4d

jr_04d_776e:
	cp d                                             ; $776e: $ba
	dec e                                            ; $776f: $1d
	rst $38                                          ; $7770: $ff
	ld a, [hl+]                                      ; $7771: $2a
	rst $38                                          ; $7772: $ff
	dec l                                            ; $7773: $2d
	rst $38                                          ; $7774: $ff
	sbc c                                            ; $7775: $99
	rst $38                                          ; $7776: $ff
	ret nz                                           ; $7777: $c0

	rst $38                                          ; $7778: $ff

jr_04d_7779:
	or l                                             ; $7779: $b5
	rst $38                                          ; $777a: $ff
	rst SubAFromHL                                          ; $777b: $d7
	db $eb                                           ; $777c: $eb
	xor b                                            ; $777d: $a8
	rst SubAFromHL                                          ; $777e: $d7
	dec d                                            ; $777f: $15
	cp $ea                                           ; $7780: $fe $ea
	cp a                                             ; $7782: $bf
	push de                                          ; $7783: $d5
	ld a, d                                          ; $7784: $7a
	call z, $c876                                    ; $7785: $cc $76 $c8
	ld [hl], a                                       ; $7788: $77
	db $fc                                           ; $7789: $fc
	ld a, a                                          ; $778a: $7f
	ret z                                            ; $778b: $c8

	ld a, a                                          ; $778c: $7f
	cp b                                             ; $778d: $b8
	sbc [hl]                                         ; $778e: $9e
	db $eb                                           ; $778f: $eb
	ld a, e                                          ; $7790: $7b
	ret nc                                           ; $7791: $d0

	inc bc                                           ; $7792: $03
	rst $38                                          ; $7793: $ff
	adc $ff                                          ; $7794: $ce $ff
	sbc d                                            ; $7796: $9a
	db $ec                                           ; $7797: $ec
	add sp, -$10                                     ; $7798: $e8 $f0
	ldh [$80], a                                     ; $779a: $e0 $80
	ld a, b                                          ; $779c: $78
	and h                                            ; $779d: $a4
	ld a, l                                          ; $779e: $7d
	ldh [c], a                                       ; $779f: $e2
	sbc l                                            ; $77a0: $9d
	add b                                            ; $77a1: $80
	pop bc                                           ; $77a2: $c1
	ld a, b                                          ; $77a3: $78
	sbc [hl]                                         ; $77a4: $9e
	ld a, c                                          ; $77a5: $79
	add b                                            ; $77a6: $80
	halt                                             ; $77a7: $76
	inc de                                           ; $77a8: $13
	ld a, [hl]                                       ; $77a9: $7e
	ld hl, sp+$7e                                    ; $77aa: $f8 $7e
	inc l                                            ; $77ac: $2c
	rst SubAFromDE                                          ; $77ad: $df
	rst $38                                          ; $77ae: $ff
	sub h                                            ; $77af: $94
	ld hl, sp+$07                                    ; $77b0: $f8 $07
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	ldh a, [$fc]                                     ; $77b4: $f0 $fc
	and h                                            ; $77b6: $a4
	ei                                               ; $77b7: $fb
	ccf                                              ; $77b8: $3f
	nop                                              ; $77b9: $00
	add d                                            ; $77ba: $82
	ld a, e                                          ; $77bb: $7b
	sub a                                            ; $77bc: $97
	ld a, [hl]                                       ; $77bd: $7e
	ld a, [hl+]                                      ; $77be: $2a
	sub l                                            ; $77bf: $95
	ld d, l                                          ; $77c0: $55
	cp d                                             ; $77c1: $ba
	ld [bc], a                                       ; $77c2: $02
	jr c, jr_04d_780c                                ; $77c3: $38 $47

	jr c, jr_04d_77d6                                ; $77c5: $38 $0f

	ldh a, [$f0]                                     ; $77c7: $f0 $f0
	rrca                                             ; $77c9: $0f
	ld [hl], l                                       ; $77ca: $75
	dec d                                            ; $77cb: $15
	ld [hl], a                                       ; $77cc: $77
	jr z, jr_04d_7765                                ; $77cd: $28 $96

	xor [hl]                                         ; $77cf: $ae
	ld bc, $3fc0                                     ; $77d0: $01 $c0 $3f
	rst $38                                          ; $77d3: $ff
	nop                                              ; $77d4: $00
	ccf                                              ; $77d5: $3f

jr_04d_77d6:
	rst $38                                          ; $77d6: $ff
	db $fc                                           ; $77d7: $fc
	ld a, d                                          ; $77d8: $7a
	ld c, d                                          ; $77d9: $4a
	ld a, e                                          ; $77da: $7b
	ldh a, [rIE]                                     ; $77db: $f0 $ff
	ld a, h                                          ; $77dd: $7c
	cp l                                             ; $77de: $bd
	rst SubAFromDE                                          ; $77df: $df
	ret nz                                           ; $77e0: $c0

	sbc l                                            ; $77e1: $9d
	ccf                                              ; $77e2: $3f
	ldh [$7a], a                                     ; $77e3: $e0 $7a
	jr nz, jr_04d_7779                               ; $77e5: $20 $92

	rlca                                             ; $77e7: $07
	ld hl, sp+$01                                    ; $77e8: $f8 $01
	cp $58                                           ; $77ea: $fe $58
	nop                                              ; $77ec: $00
	ccf                                              ; $77ed: $3f
	ldh a, [$d0]                                     ; $77ee: $f0 $d0
	cpl                                              ; $77f0: $2f
	ld b, a                                          ; $77f1: $47
	rst $38                                          ; $77f2: $ff
	rrca                                             ; $77f3: $0f
	ld a, d                                          ; $77f4: $7a
	or $7f                                           ; $77f5: $f6 $7f

Call_04d_77f7:
	jp z, $eb7f                                      ; $77f7: $ca $7f $eb

	ld a, a                                          ; $77fa: $7f
	or c                                             ; $77fb: $b1
	ld a, a                                          ; $77fc: $7f
	db $fc                                           ; $77fd: $fc
	sbc h                                            ; $77fe: $9c
	dec de                                           ; $77ff: $1b
	cp $40                                           ; $7800: $fe $40
	ld a, e                                          ; $7802: $7b
	call nz, Call_04d_559e                           ; $7803: $c4 $9e $55
	ld [hl], e                                       ; $7806: $73
	and h                                            ; $7807: $a4
	adc h                                            ; $7808: $8c
	db $fd                                           ; $7809: $fd
	ld [bc], a                                       ; $780a: $02
	rst $38                                          ; $780b: $ff

jr_04d_780c:
	nop                                              ; $780c: $00
	ld d, c                                          ; $780d: $51
	ld b, $02                                        ; $780e: $06 $02
	dec e                                            ; $7810: $1d
	ld b, b                                          ; $7811: $40
	ccf                                              ; $7812: $3f
	ld e, b                                          ; $7813: $58
	daa                                              ; $7814: $27
	add b                                            ; $7815: $80
	rrca                                             ; $7816: $0f
	rst AddAOntoHL                                          ; $7817: $ef
	nop                                              ; $7818: $00
	ld a, l                                          ; $7819: $7d
	rst $38                                          ; $781a: $ff
	rst AddAOntoHL                                          ; $781b: $ef
	ld a, e                                          ; $781c: $7b
	add $9c                                          ; $781d: $c6 $9c
	ld e, d                                          ; $781f: $5a
	db $fc                                           ; $7820: $fc
	xor d                                            ; $7821: $aa
	ld a, d                                          ; $7822: $7a
	ld [hl+], a                                      ; $7823: $22
	ld a, a                                          ; $7824: $7f
	db $fd                                           ; $7825: $fd
	sbc l                                            ; $7826: $9d
	db $fd                                           ; $7827: $fd
	cp $dd                                           ; $7828: $fe $dd
	db $fc                                           ; $782a: $fc
	ld a, a                                          ; $782b: $7f
	db $ec                                           ; $782c: $ec
	sub c                                            ; $782d: $91
	ei                                               ; $782e: $fb
	ld a, a                                          ; $782f: $7f
	dec [hl]                                         ; $7830: $35
	ld a, a                                          ; $7831: $7f
	ld a, e                                          ; $7832: $7b
	sbc a                                            ; $7833: $9f
	rra                                              ; $7834: $1f
	rrca                                             ; $7835: $0f
	rlca                                             ; $7836: $07
	rrca                                             ; $7837: $0f
	rrca                                             ; $7838: $0f
	add a                                            ; $7839: $87
	xor a                                            ; $783a: $af
	rlca                                             ; $783b: $07
	reti                                             ; $783c: $d9


	rst $38                                          ; $783d: $ff
	rst SubAFromDE                                          ; $783e: $df
	ei                                               ; $783f: $fb
	sbc e                                            ; $7840: $9b
	ld sp, hl                                        ; $7841: $f9
	ld hl, sp-$04                                    ; $7842: $f8 $fc
	db $fc                                           ; $7844: $fc
	reti                                             ; $7845: $d9


	rst $38                                          ; $7846: $ff
	sbc [hl]                                         ; $7847: $9e
	ld a, a                                          ; $7848: $7f
	halt                                             ; $7849: $76
	push bc                                          ; $784a: $c5
	db $dd                                           ; $784b: $dd
	rst $38                                          ; $784c: $ff
	ld a, a                                          ; $784d: $7f
	ld [hl], l                                       ; $784e: $75
	inc bc                                           ; $784f: $03
	rst $38                                          ; $7850: $ff
	push de                                          ; $7851: $d5
	rst $38                                          ; $7852: $ff
	ld a, l                                          ; $7853: $7d
	pop af                                           ; $7854: $f1
	sub $ff                                          ; $7855: $d6 $ff
	ld a, a                                          ; $7857: $7f
	adc l                                            ; $7858: $8d
	sbc l                                            ; $7859: $9d
	cp $91                                           ; $785a: $fe $91
	ld l, e                                          ; $785c: $6b
	ldh a, [hDisp1_WY]                                     ; $785d: $f0 $95
	db $fd                                           ; $785f: $fd
	ld hl, sp-$01                                    ; $7860: $f8 $ff
	ld hl, sp-$03                                    ; $7862: $f8 $fd
	ld hl, sp-$49                                    ; $7864: $f8 $b7
	ret z                                            ; $7866: $c8

	add l                                            ; $7867: $85
	ret z                                            ; $7868: $c8

	ld [hl], a                                       ; $7869: $77
	jp hl                                            ; $786a: $e9


	adc d                                            ; $786b: $8a
	xor d                                            ; $786c: $aa
	nop                                              ; $786d: $00
	ld d, l                                          ; $786e: $55
	nop                                              ; $786f: $00
	db $eb                                           ; $7870: $eb
	ld bc, $0157                                     ; $7871: $01 $57 $01
	xor e                                            ; $7874: $ab
	inc bc                                           ; $7875: $03
	ld a, a                                          ; $7876: $7f
	inc bc                                           ; $7877: $03
	ld a, b                                          ; $7878: $78
	rst GetHLinHL                                          ; $7879: $cf
	scf                                              ; $787a: $37
	res 7, c                                         ; $787b: $cb $b9
	ld [hl], e                                       ; $787d: $73
	db $fd                                           ; $787e: $fd
	db $db                                           ; $787f: $db
	db $ed                                           ; $7880: $ed
	jp c, $9eff                                      ; $7881: $da $ff $9e

	ld h, b                                          ; $7884: $60
	ld a, c                                          ; $7885: $79
	ld a, a                                          ; $7886: $7f
	sbc b                                            ; $7887: $98
	ld hl, sp-$02                                    ; $7888: $f8 $fe
	ld a, a                                          ; $788a: $7f
	cp $ab                                           ; $788b: $fe $ab
	cp $75                                           ; $788d: $fe $75
	ld a, e                                          ; $788f: $7b
	db $fc                                           ; $7890: $fc

jr_04d_7891:
	sbc [hl]                                         ; $7891: $9e
	ld [hl], a                                       ; $7892: $77
	ld e, b                                          ; $7893: $58
	jr nc, jr_04d_7891                               ; $7894: $30 $fb

	sub [hl]                                         ; $7896: $96
	ld [$0131], sp                                   ; $7897: $08 $31 $01
	add hl, sp                                       ; $789a: $39
	add hl, hl                                       ; $789b: $29
	ld de, $3901                                     ; $789c: $11 $01 $39
	add hl, bc                                       ; $789f: $09
	ld a, e                                          ; $78a0: $7b
	ld hl, sp+$7f                                    ; $78a1: $f8 $7f
	db $fc                                           ; $78a3: $fc
	sbc l                                            ; $78a4: $9d
	ld de, $7929                                     ; $78a5: $11 $29 $79
	ld c, [hl]                                       ; $78a8: $4e
	add b                                            ; $78a9: $80
	rst $38                                          ; $78aa: $ff
	jr z, @+$01                                      ; $78ab: $28 $ff

	ld a, b                                          ; $78ad: $78
	rst $38                                          ; $78ae: $ff
	ld a, l                                          ; $78af: $7d
	add sp, $6f                                      ; $78b0: $e8 $6f
	pop bc                                           ; $78b2: $c1
	ld l, h                                          ; $78b3: $6c
	add $6e                                          ; $78b4: $c6 $6e
	call nz, $fff8                                   ; $78b6: $c4 $f8 $ff
	ldh [$df], a                                     ; $78b9: $e0 $df
	db $e3                                           ; $78bb: $e3
	rst $38                                          ; $78bc: $ff
	db $ec                                           ; $78bd: $ec
	rst SubAFromDE                                          ; $78be: $df
	add sp, -$40                                     ; $78bf: $e8 $c0
	cp b                                             ; $78c1: $b8
	jr nc, @+$1e                                     ; $78c2: $30 $1c

	ld [$080c], sp                                   ; $78c4: $08 $0c $08
	push af                                          ; $78c7: $f5
	ldh a, [hDisp1_LCDC]                                     ; $78c8: $f0 $8f
	ld a, [$f5f0]                                    ; $78ca: $fa $f0 $f5
	ldh a, [$f2]                                     ; $78cd: $f0 $f2
	ldh [rPCM34], a                                  ; $78cf: $e0 $77
	ret nz                                           ; $78d1: $c0

	ld d, a                                          ; $78d2: $57
	ldh [rBGP], a                                    ; $78d3: $e0 $47
	ldh a, [rBGP]                                    ; $78d5: $f0 $47
	ldh a, [rP1]                                     ; $78d7: $f0 $00
	nop                                              ; $78d9: $00
	ld [hl], a                                       ; $78da: $77
	add d                                            ; $78db: $82
	ld a, c                                          ; $78dc: $79
	or e                                             ; $78dd: $b3
	ld l, e                                          ; $78de: $6b
	cp $6f                                           ; $78df: $fe $6f
	ldh a, [$7f]                                     ; $78e1: $f0 $7f
	db $fc                                           ; $78e3: $fc
	sbc h                                            ; $78e4: $9c
	db $fd                                           ; $78e5: $fd
	nop                                              ; $78e6: $00
	cp $73                                           ; $78e7: $fe $73
	ldh a, [$97]                                     ; $78e9: $f0 $97
	ld a, b                                          ; $78eb: $78
	ld a, a                                          ; $78ec: $7f
	ld hl, sp-$01                                    ; $78ed: $f8 $ff
	ld a, c                                          ; $78ef: $79
	ld a, a                                          ; $78f0: $7f
	ld sp, hl                                        ; $78f1: $f9
	rst $38                                          ; $78f2: $ff
	ld [hl], a                                       ; $78f3: $77
	ld hl, sp-$80                                    ; $78f4: $f8 $80

jr_04d_78f6:
	db $fc                                           ; $78f6: $fc
	ld a, a                                          ; $78f7: $7f
	db $e4                                           ; $78f8: $e4
	rst $38                                          ; $78f9: $ff
	db $fc                                           ; $78fa: $fc
	ld [$887d], sp                                   ; $78fb: $08 $7d $88
	cp l                                             ; $78fe: $bd
	call z, $ccbc                                    ; $78ff: $cc $bc $cc
	cp l                                             ; $7902: $bd
	ret z                                            ; $7903: $c8

	cp b                                             ; $7904: $b8
	ret                                              ; $7905: $c9


	cp l                                             ; $7906: $bd
	ret                                              ; $7907: $c9


	cp a                                             ; $7908: $bf
	call $0788                                       ; $7909: $cd $88 $07
	xor e                                            ; $790c: $ab
	rlca                                             ; $790d: $07
	ld c, e                                          ; $790e: $4b
	add [hl]                                         ; $790f: $86
	db $e3                                           ; $7910: $e3
	ld e, $f3                                        ; $7911: $1e $f3
	cp $eb                                           ; $7913: $fe $eb
	adc a                                            ; $7915: $8f
	cp $83                                           ; $7916: $fe $83
	cp $cb                                           ; $7918: $fe $cb
	db $fc                                           ; $791a: $fc
	rst $38                                          ; $791b: $ff
	cp $f2                                           ; $791c: $fe $f2
	inc b                                            ; $791e: $04
	ld a, [hl+]                                      ; $791f: $2a
	inc b                                            ; $7920: $04
	or $6c                                           ; $7921: $f6 $6c
	di                                               ; $7923: $f3
	ld a, [hl]                                       ; $7924: $7e
	ld hl, sp+$7a                                    ; $7925: $f8 $7a
	and [hl]                                         ; $7927: $a6
	add b                                            ; $7928: $80
	ld [hl], d                                       ; $7929: $72
	ld [bc], a                                       ; $792a: $02
	cp a                                             ; $792b: $bf
	rra                                              ; $792c: $1f
	cp e                                             ; $792d: $bb
	db $10                                           ; $792e: $10
	or b                                             ; $792f: $b0
	dec de                                           ; $7930: $1b
	or h                                             ; $7931: $b4
	dec de                                           ; $7932: $1b
	or b                                             ; $7933: $b0
	dec de                                           ; $7934: $1b
	ld [hl-], a                                      ; $7935: $32
	dec de                                           ; $7936: $1b
	ld e, d                                          ; $7937: $5a
	jr nc, jr_04d_78f6                               ; $7938: $30 $bc

	ld l, b                                          ; $793a: $68
	db $fc                                           ; $793b: $fc
	ldh a, [$9c]                                     ; $793c: $f0 $9c
	ld b, $f4                                        ; $793e: $06 $f4
	sbc [hl]                                         ; $7940: $9e
	ld h, h                                          ; $7941: $64
	sbc [hl]                                         ; $7942: $9e
	ld b, c                                          ; $7943: $41
	sbc [hl]                                         ; $7944: $9e
	ld h, [hl]                                       ; $7945: $66
	sbc b                                            ; $7946: $98
	adc b                                            ; $7947: $88
	ld a, e                                          ; $7948: $7b
	sub [hl]                                         ; $7949: $96
	rst $38                                          ; $794a: $ff
	sub h                                            ; $794b: $94
	add a                                            ; $794c: $87
	ld a, e                                          ; $794d: $7b
	db $f4                                           ; $794e: $f4
	ei                                               ; $794f: $fb
	sub $fb                                          ; $7950: $d6 $fb
	rst FarCall                                          ; $7952: $f7
	ei                                               ; $7953: $fb
	jp c, $0500                                      ; $7954: $da $00 $05

Jump_04d_7957:
	ld a, e                                          ; $7957: $7b
	sub b                                            ; $7958: $90
	sub d                                            ; $7959: $92
	ld l, b                                          ; $795a: $68
	rlca                                             ; $795b: $07
	xor $ef                                          ; $795c: $ee $ef
	inc l                                            ; $795e: $2c
	rst SubAFromBC                                          ; $795f: $e7
	jr z, @-$0f                                      ; $7960: $28 $ef

	ld l, b                                          ; $7962: $68
	rst AddAOntoHL                                          ; $7963: $ef
	and b                                            ; $7964: $a0
	nop                                              ; $7965: $00
	ld d, a                                          ; $7966: $57
	ld a, e                                          ; $7967: $7b
	ldh a, [hDisp1_OBP1]                                     ; $7968: $f0 $94
	or c                                             ; $796a: $b1
	rst SubAFromDE                                          ; $796b: $df
	or b                                             ; $796c: $b0
	rst SubAFromDE                                          ; $796d: $df
	ret nc                                           ; $796e: $d0

	sbc a                                            ; $796f: $9f
	ret nc                                           ; $7970: $d0

	sbc a                                            ; $7971: $9f
	ccf                                              ; $7972: $3f
	add b                                            ; $7973: $80
	dec h                                            ; $7974: $25
	ld [hl], e                                       ; $7975: $73
	ld [hl], b                                       ; $7976: $70
	sub d                                            ; $7977: $92
	db $fd                                           ; $7978: $fd
	ld [$48bd], sp                                   ; $7979: $08 $bd $48

jr_04d_797c:
	db $dd                                           ; $797c: $dd
	ld c, b                                          ; $797d: $48
	dec a                                            ; $797e: $3d
	ld hl, sp-$07                                    ; $797f: $f8 $f9
	jr @+$01                                         ; $7981: $18 $ff

	ld [$7bfb], sp                                   ; $7983: $08 $fb $7b
	cp $9d                                           ; $7986: $fe $9d
	rst $38                                          ; $7988: $ff
	inc bc                                           ; $7989: $03
	ld a, e                                          ; $798a: $7b
	cp $9c                                           ; $798b: $fe $9c
	ld bc, $01fd                                     ; $798d: $01 $fd $01
	ld l, a                                          ; $7990: $6f
	ld d, d                                          ; $7991: $52
	ld a, e                                          ; $7992: $7b
	cp $72                                           ; $7993: $fe $72
	sub a                                            ; $7995: $97
	ld [hl], d                                       ; $7996: $72
	ccf                                              ; $7997: $3f
	sbc [hl]                                         ; $7998: $9e
	ld a, e                                          ; $7999: $7b
	ld a, e                                          ; $799a: $7b
	cp $9b                                           ; $799b: $fe $9b
	dec sp                                           ; $799d: $3b
	xor e                                            ; $799e: $ab
	cp $55                                           ; $799f: $fe $55
	ld a, d                                          ; $79a1: $7a
	ret z                                            ; $79a2: $c8

	ld [hl], a                                       ; $79a3: $77
	db $fc                                           ; $79a4: $fc
	sbc [hl]                                         ; $79a5: $9e
	push de                                          ; $79a6: $d5
	ld [hl], e                                       ; $79a7: $73
	db $fc                                           ; $79a8: $fc
	push af                                          ; $79a9: $f5
	add b                                            ; $79aa: $80
	db $10                                           ; $79ab: $10
	jr nz, jr_04d_7a16                               ; $79ac: $20 $68

	jr nc, jr_04d_79d8                               ; $79ae: $30 $28

	ld de, $2910                                     ; $79b0: $11 $10 $29
	jr z, jr_04d_79c6                                ; $79b3: $28 $11

	inc de                                           ; $79b5: $13
	add hl, hl                                       ; $79b6: $29
	add hl, bc                                       ; $79b7: $09
	ld sp, $2913                                     ; $79b8: $31 $13 $29
	dec hl                                           ; $79bb: $2b
	ld de, $2b15                                     ; $79bc: $11 $15 $2b
	db $ec                                           ; $79bf: $ec

Jump_04d_79c0:
	adc $77                                          ; $79c0: $ce $77
	call nz, $e4f6                                   ; $79c2: $c4 $f6 $e4
	ld a, [hl]                                       ; $79c5: $7e

jr_04d_79c6:
	adc $ff                                          ; $79c6: $ce $ff
	xor $fd                                          ; $79c8: $ee $fd
	add e                                            ; $79ca: $83
	call $edfd                                       ; $79cb: $cd $fd $ed
	rst $38                                          ; $79ce: $ff
	db $ed                                           ; $79cf: $ed
	ld b, d                                          ; $79d0: $42
	ld [$8648], sp                                   ; $79d1: $08 $48 $86
	ld b, $0c                                        ; $79d4: $06 $0c
	inc c                                            ; $79d6: $0c
	ld c, h                                          ; $79d7: $4c

jr_04d_79d8:
	ret c                                            ; $79d8: $d8

	ld c, b                                          ; $79d9: $48
	sbc [hl]                                         ; $79da: $9e
	jr jr_04d_797c                                   ; $79db: $18 $9f

	jr jr_04d_79fe                                   ; $79dd: $18 $1f

	sbc b                                            ; $79df: $98
	ld c, a                                          ; $79e0: $4f
	ldh a, [rVBK]                                    ; $79e1: $f0 $4f
	ldh a, [$7f]                                     ; $79e3: $f0 $7f
	ldh a, [rIE]                                     ; $79e5: $f0 $ff

Jump_04d_79e7:
	ld [hl], e                                       ; $79e7: $73
	cp $7e                                           ; $79e8: $fe $7e
	jp nz, $379e                                     ; $79ea: $c2 $9e $37

	ld a, c                                          ; $79ed: $79
	adc d                                            ; $79ee: $8a
	rrca                                             ; $79ef: $0f
	cp $9e                                           ; $79f0: $fe $9e
	db $e4                                           ; $79f2: $e4
	ld a, d                                          ; $79f3: $7a
	call z, $fc77                                    ; $79f4: $cc $77 $fc
	sbc [hl]                                         ; $79f7: $9e
	call nz, $fc6b                                   ; $79f8: $c4 $6b $fc
	sbc c                                            ; $79fb: $99
	cp b                                             ; $79fc: $b8
	rst GetHLinHL                                          ; $79fd: $cf

jr_04d_79fe:
	cp [hl]                                          ; $79fe: $be
	rst JumpTable                                          ; $79ff: $c7
	cp [hl]                                          ; $7a00: $be
	jp $fe6f                                         ; $7a01: $c3 $6f $fe


	sbc [hl]                                         ; $7a04: $9e
	cp h                                             ; $7a05: $bc
	ld a, e                                          ; $7a06: $7b
	db $fc                                           ; $7a07: $fc
	add b                                            ; $7a08: $80
	inc e                                            ; $7a09: $1c
	ld hl, sp+$3d                                    ; $7a0a: $f8 $3d
	ld hl, sp+$3f                                    ; $7a0c: $f8 $3f
	ld hl, sp-$41                                    ; $7a0e: $f8 $bf
	ld a, c                                          ; $7a10: $79
	cp [hl]                                          ; $7a11: $be
	ld [hl], b                                       ; $7a12: $70
	cp [hl]                                          ; $7a13: $be
	ld [hl], d                                       ; $7a14: $72
	cp e                                             ; $7a15: $bb

jr_04d_7a16:
	ld h, a                                          ; $7a16: $67
	cp c                                             ; $7a17: $b9
	ld h, [hl]                                       ; $7a18: $66
	add a                                            ; $7a19: $87
	ld c, [hl]                                       ; $7a1a: $4e
	adc h                                            ; $7a1b: $8c
	add a                                            ; $7a1c: $87
	ld hl, $ce83                                     ; $7a1d: $21 $83 $ce
	inc bc                                           ; $7a20: $03
	adc a                                            ; $7a21: $8f
	rrca                                             ; $7a22: $0f
	ld e, d                                          ; $7a23: $5a
	rst $38                                          ; $7a24: $ff
	db $fc                                           ; $7a25: $fc
	adc [hl]                                         ; $7a26: $8e
	db $ec                                           ; $7a27: $ec
	sub a                                            ; $7a28: $97
	sbc [hl]                                         ; $7a29: $9e
	ld e, d                                          ; $7a2a: $5a
	db $fd                                           ; $7a2b: $fd
	xor h                                            ; $7a2c: $ac
	ei                                               ; $7a2d: $fb
	ld e, h                                          ; $7a2e: $5c
	ei                                               ; $7a2f: $fb
	xor h                                            ; $7a30: $ac
	ld a, b                                          ; $7a31: $78
	cp $97                                           ; $7a32: $fe $97
	ld hl, sp+$4f                                    ; $7a34: $f8 $4f
	ld [$454f], a                                    ; $7a36: $ea $4f $45
	rst AddAOntoHL                                          ; $7a39: $ef
	db $f4                                           ; $7a3a: $f4
	dec bc                                           ; $7a3b: $0b
	ld h, a                                          ; $7a3c: $67
	and l                                            ; $7a3d: $a5
	sub a                                            ; $7a3e: $97
	dec d                                            ; $7a3f: $15
	rst $38                                          ; $7a40: $ff
	xor d                                            ; $7a41: $aa
	rst $38                                          ; $7a42: $ff
	ld d, l                                          ; $7a43: $55
	rst $38                                          ; $7a44: $ff
	add b                                            ; $7a45: $80
	ld a, a                                          ; $7a46: $7f
	ld [hl], a                                       ; $7a47: $77
	db $f4                                           ; $7a48: $f4
	sbc [hl]                                         ; $7a49: $9e
	dec b                                            ; $7a4a: $05
	ld [hl], e                                       ; $7a4b: $73
	db $f4                                           ; $7a4c: $f4
	ld [hl], a                                       ; $7a4d: $77
	db $fc                                           ; $7a4e: $fc
	ld e, a                                          ; $7a4f: $5f
	db $f4                                           ; $7a50: $f4
	sbc [hl]                                         ; $7a51: $9e
	ld d, a                                          ; $7a52: $57
	ld a, b                                          ; $7a53: $78
	ld c, b                                          ; $7a54: $48
	ld a, h                                          ; $7a55: $7c
	xor c                                            ; $7a56: $a9
	ld a, h                                          ; $7a57: $7c
	ld h, $6f                                        ; $7a58: $26 $6f
	add sp, -$69                                     ; $7a5a: $e8 $97
	xor a                                            ; $7a5c: $af
	rst $38                                          ; $7a5d: $ff
	db $fd                                           ; $7a5e: $fd
	rst $38                                          ; $7a5f: $ff
	ld [$d5ff], a                                    ; $7a60: $ea $ff $d5
	rst $38                                          ; $7a63: $ff
	ld [hl], d                                       ; $7a64: $72
	call z, $089c                                    ; $7a65: $cc $9c $08
	db $10                                           ; $7a68: $10
	rst AddAOntoHL                                          ; $7a69: $ef
	ld sp, hl                                        ; $7a6a: $f9
	ld l, d                                          ; $7a6b: $6a
	ld a, [bc]                                       ; $7a6c: $0a
	ld a, [hl]                                       ; $7a6d: $7e
	cp l                                             ; $7a6e: $bd
	ld a, h                                          ; $7a6f: $7c
	ld l, [hl]                                       ; $7a70: $6e
	db $dd                                           ; $7a71: $dd
	ld bc, $f77f                                     ; $7a72: $01 $7f $f7

jr_04d_7a75:
	sub b                                            ; $7a75: $90
	dec sp                                           ; $7a76: $3b
	rst $38                                          ; $7a77: $ff
	ld a, e                                          ; $7a78: $7b
	ld a, a                                          ; $7a79: $7f
	ei                                               ; $7a7a: $fb
	ld sp, hl                                        ; $7a7b: $f9

Call_04d_7a7c:
	rst $38                                          ; $7a7c: $ff
	db $fc                                           ; $7a7d: $fc

Call_04d_7a7e:
	ld hl, sp-$44                                    ; $7a7e: $f8 $bc
	ret c                                            ; $7a80: $d8

	ret c                                            ; $7a81: $d8

	sbc h                                            ; $7a82: $9c
	sbc l                                            ; $7a83: $9d
	sbc $7b                                          ; $7a84: $de $7b
	call nz, $767c                                   ; $7a86: $c4 $7c $76
	sbc $ff                                          ; $7a89: $de $ff
	ei                                               ; $7a8b: $fb
	ld a, l                                          ; $7a8c: $7d
	ld [hl], h                                       ; $7a8d: $74
	sbc b                                            ; $7a8e: $98
	xor c                                            ; $7a8f: $a9
	ld d, b                                          ; $7a90: $50
	ld d, l                                          ; $7a91: $55
	dec hl                                           ; $7a92: $2b
	ccf                                              ; $7a93: $3f
	rst $38                                          ; $7a94: $ff
	cp $79                                           ; $7a95: $fe $79
	ret z                                            ; $7a97: $c8

	ei                                               ; $7a98: $fb
	sbc [hl]                                         ; $7a99: $9e
	jp $ee78                                         ; $7a9a: $c3 $78 $ee


	sbc l                                            ; $7a9d: $9d
	db $fd                                           ; $7a9e: $fd
	ldh a, [c]                                       ; $7a9f: $f2
	rst FarCall                                          ; $7aa0: $f7
	db $dd                                           ; $7aa1: $dd
	rst $38                                          ; $7aa2: $ff
	sbc d                                            ; $7aa3: $9a
	jr nc, jr_04d_7a75                               ; $7aa4: $30 $cf

	and b                                            ; $7aa6: $a0
	ret nz                                           ; $7aa7: $c0

	ld [$de7b], sp                                   ; $7aa8: $08 $7b $de
	ld a, a                                          ; $7aab: $7f
	or d                                             ; $7aac: $b2
	rst $38                                          ; $7aad: $ff
	adc [hl]                                         ; $7aae: $8e
	rra                                              ; $7aaf: $1f
	rst $38                                          ; $7ab0: $ff
	cp a                                             ; $7ab1: $bf
	rst SubAFromDE                                          ; $7ab2: $df
	cp a                                             ; $7ab3: $bf
	ret nc                                           ; $7ab4: $d0

	jr nc, @-$2e                                     ; $7ab5: $30 $d0

	ret nc                                           ; $7ab7: $d0

	ldh a, [$64]                                     ; $7ab8: $f0 $64
	ld hl, sp+$32                                    ; $7aba: $f8 $32
	db $fd                                           ; $7abc: $fd
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	sbc a                                            ; $7abf: $9f
	ld a, d                                          ; $7ac0: $7a
	ret z                                            ; $7ac1: $c8

	sbc c                                            ; $7ac2: $99
	rst SubAFromDE                                          ; $7ac3: $df
	jr nz, jr_04d_7ac6                               ; $7ac4: $20 $00

jr_04d_7ac6:
	rlca                                             ; $7ac6: $07
	ld [hl], l                                       ; $7ac7: $75
	ld a, [bc]                                       ; $7ac8: $0a
	ld [hl], a                                       ; $7ac9: $77
	or d                                             ; $7aca: $b2
	ld e, a                                          ; $7acb: $5f
	add b                                            ; $7acc: $80
	sbc l                                            ; $7acd: $9d
	ld [hl], d                                       ; $7ace: $72
	adc l                                            ; $7acf: $8d
	ld d, a                                          ; $7ad0: $57
	ld [hl], b                                       ; $7ad1: $70
	ld a, a                                          ; $7ad2: $7f
	adc [hl]                                         ; $7ad3: $8e
	sbc l                                            ; $7ad4: $9d
	sub l                                            ; $7ad5: $95
	ld l, [hl]                                       ; $7ad6: $6e
	ei                                               ; $7ad7: $fb
	ld a, a                                          ; $7ad8: $7f
	ld b, [hl]                                       ; $7ad9: $46
	sbc [hl]                                         ; $7ada: $9e
	xor $7b                                          ; $7adb: $ee $7b
	ld [hl], $df                                     ; $7add: $36 $df
	rst $38                                          ; $7adf: $ff
	sbc l                                            ; $7ae0: $9d
	inc sp                                           ; $7ae1: $33
	call z, $e06b                                    ; $7ae2: $cc $6b $e0
	sbc e                                            ; $7ae5: $9b
	jp $c3bf                                         ; $7ae6: $c3 $bf $c3


	jp $ffde                                         ; $7ae9: $c3 $de $ff


	ld a, d                                          ; $7aec: $7a
	add hl, bc                                       ; $7aed: $09
	add b                                            ; $7aee: $80
	inc bc                                           ; $7aef: $03
	rlca                                             ; $7af0: $07
	inc bc                                           ; $7af1: $03
	ld b, $03                                        ; $7af2: $06 $03
	rst $38                                          ; $7af4: $ff
	jr nz, jr_04d_7b73                               ; $7af5: $20 $7c

	or e                                             ; $7af7: $b3
	ld d, b                                          ; $7af8: $50
	cp a                                             ; $7af9: $bf
	sbc a                                            ; $7afa: $9f
	rst $38                                          ; $7afb: $ff
	sub h                                            ; $7afc: $94
	ei                                               ; $7afd: $fb
	ldh a, [$b0]                                     ; $7afe: $f0 $b0
	add hl, sp                                       ; $7b00: $39
	ret nc                                           ; $7b01: $d0

	ld b, c                                          ; $7b02: $41
	db $e3                                           ; $7b03: $e3
	ret c                                            ; $7b04: $d8

	cp $b3                                           ; $7b05: $fe $b3
	call c, $dd94                                    ; $7b07: $dc $94 $dd
	sbc [hl]                                         ; $7b0a: $9e
	db $dd                                           ; $7b0b: $dd
	adc d                                            ; $7b0c: $8a
	db $ed                                           ; $7b0d: $ed
	ld a, [hl]                                       ; $7b0e: $7e
	call z, $9b96                                    ; $7b0f: $cc $96 $9b
	cp $d7                                           ; $7b12: $fe $d7
	rst $38                                          ; $7b14: $ff
	or $e7                                           ; $7b15: $f6 $e7
	rst SubAFromHL                                          ; $7b17: $d7
	di                                               ; $7b18: $f3
	cp e                                             ; $7b19: $bb
	ld a, e                                          ; $7b1a: $7b
	jr nc, @-$60                                     ; $7b1b: $30 $9e

	db $fd                                           ; $7b1d: $fd
	ld a, e                                          ; $7b1e: $7b
	pop de                                           ; $7b1f: $d1
	sbc e                                            ; $7b20: $9b
	ld [bc], a                                       ; $7b21: $02
	rlca                                             ; $7b22: $07
	xor $d7                                          ; $7b23: $ee $d7
	ld l, [hl]                                       ; $7b25: $6e
	db $e4                                           ; $7b26: $e4
	ld a, b                                          ; $7b27: $78
	ld l, $7f                                        ; $7b28: $2e $7f
	add e                                            ; $7b2a: $83
	ld [hl], a                                       ; $7b2b: $77
	add c                                            ; $7b2c: $81
	sbc l                                            ; $7b2d: $9d
	nop                                              ; $7b2e: $00
	xor e                                            ; $7b2f: $ab
	ld [hl], e                                       ; $7b30: $73
	ldh a, [$7f]                                     ; $7b31: $f0 $7f
	ret c                                            ; $7b33: $d8

	ld l, e                                          ; $7b34: $6b
	rra                                              ; $7b35: $1f
	ld a, e                                          ; $7b36: $7b
	ld b, b                                          ; $7b37: $40
	ld [hl], a                                       ; $7b38: $77
	ldh a, [$9e]                                     ; $7b39: $f0 $9e
	rst SubAFromDE                                          ; $7b3b: $df
	ld h, e                                          ; $7b3c: $63
	ldh a, [$6f]                                     ; $7b3d: $f0 $6f
	ret nc                                           ; $7b3f: $d0

	sbc [hl]                                         ; $7b40: $9e
	ld [hl], l                                       ; $7b41: $75
	ld h, e                                          ; $7b42: $63
	ldh a, [rLYC]                                    ; $7b43: $f0 $45
	nop                                              ; $7b45: $00
	add $33                                          ; $7b46: $c6 $33
	sbc [hl]                                         ; $7b48: $9e
	ld b, e                                          ; $7b49: $43
	jp c, $9d33                                      ; $7b4a: $da $33 $9d

	ld b, h                                          ; $7b4d: $44
	ld b, e                                          ; $7b4e: $43
	ld [hl], a                                       ; $7b4f: $77
	or $9e                                           ; $7b50: $f6 $9e
	inc [hl]                                         ; $7b52: $34
	call c, $9644                                    ; $7b53: $dc $44 $96
	ld b, e                                          ; $7b56: $43
	dec [hl]                                         ; $7b57: $35
	ld d, l                                          ; $7b58: $55
	ld d, l                                          ; $7b59: $55
	ld d, h                                          ; $7b5a: $54
	ld b, h                                          ; $7b5b: $44
	ld b, a                                          ; $7b5c: $47
	ld [hl], h                                       ; $7b5d: $74
	ld b, h                                          ; $7b5e: $44
	db $db                                           ; $7b5f: $db
	ld d, l                                          ; $7b60: $55
	ld a, e                                          ; $7b61: $7b
	or $9e                                           ; $7b62: $f6 $9e
	ld b, l                                          ; $7b64: $45
	db $dd                                           ; $7b65: $dd
	ld d, l                                          ; $7b66: $55
	rst SubAFromDE                                          ; $7b67: $df
	ld h, l                                          ; $7b68: $65
	sbc $44                                          ; $7b69: $de $44
	sbc l                                            ; $7b6b: $9d
	ld b, a                                          ; $7b6c: $47
	ld d, l                                          ; $7b6d: $55
	sbc $66                                          ; $7b6e: $de $66
	sbc h                                            ; $7b70: $9c
	ld h, a                                          ; $7b71: $67
	ld [hl], h                                       ; $7b72: $74

jr_04d_7b73:
	ld b, h                                          ; $7b73: $44
	sbc $77                                          ; $7b74: $de $77
	sbc [hl]                                         ; $7b76: $9e
	ld [hl], h                                       ; $7b77: $74
	db $dd                                           ; $7b78: $dd
	ld [hl], a                                       ; $7b79: $77
	ld [hl], e                                       ; $7b7a: $73
	or $9e                                           ; $7b7b: $f6 $9e
	ld [hl], a                                       ; $7b7d: $77
	sbc $44                                          ; $7b7e: $de $44

Call_04d_7b80:
	sbc [hl]                                         ; $7b80: $9e
	ld h, [hl]                                       ; $7b81: $66
	ld [hl], a                                       ; $7b82: $77
	db $fc                                           ; $7b83: $fc
	sbc l                                            ; $7b84: $9d
	ld h, h                                          ; $7b85: $64
	ld b, a                                          ; $7b86: $47
	sbc $44                                          ; $7b87: $de $44
	inc [hl]                                         ; $7b89: $34
	add hl, bc                                       ; $7b8a: $09
	jp c, $9eff                                      ; $7b8b: $da $ff $9e

	ei                                               ; $7b8e: $fb
	call c, $94ff                                    ; $7b8f: $dc $ff $94
	sbc a                                            ; $7b92: $9f
	cp $ef                                           ; $7b93: $fe $ef
	rst $38                                          ; $7b95: $ff
	rst AddAOntoHL                                          ; $7b96: $ef
	rst $38                                          ; $7b97: $ff
	rst $38                                          ; $7b98: $ff
	cp $ff                                           ; $7b99: $fe $ff
	rst $38                                          ; $7b9b: $ff
	rst SubAFromDE                                          ; $7b9c: $df
	db $dd                                           ; $7b9d: $dd
	rst $38                                          ; $7b9e: $ff
	ld a, e                                          ; $7b9f: $7b
	ei                                               ; $7ba0: $fb

Call_04d_7ba1:
	sbc [hl]                                         ; $7ba1: $9e
	ld [hl], a                                       ; $7ba2: $77
	call c, $9eff                                    ; $7ba3: $dc $ff $9e
	ld a, a                                          ; $7ba6: $7f
	ld a, e                                          ; $7ba7: $7b
	cp $77                                           ; $7ba8: $fe $77
	call c, $df80                                    ; $7baa: $dc $80 $df
	cp e                                             ; $7bad: $bb
	rst FarCall                                          ; $7bae: $f7
	rst $38                                          ; $7baf: $ff
	di                                               ; $7bb0: $f3
	rst $38                                          ; $7bb1: $ff
	rst $38                                          ; $7bb2: $ff
	rst AddAOntoHL                                          ; $7bb3: $ef
	rst FarCall                                          ; $7bb4: $f7
	rst $38                                          ; $7bb5: $ff
	db $fc                                           ; $7bb6: $fc
	rst $38                                          ; $7bb7: $ff
	cp $e7                                           ; $7bb8: $fe $e7
	rst SubAFromBC                                          ; $7bba: $e7
	rst $38                                          ; $7bbb: $ff
	rst SubAFromBC                                          ; $7bbc: $e7
	rst $38                                          ; $7bbd: $ff
	ld [hl], a                                       ; $7bbe: $77
	di                                               ; $7bbf: $f3
	or $b7                                           ; $7bc0: $f6 $b7
	rst FarCall                                          ; $7bc2: $f7
	and a                                            ; $7bc3: $a7
	rrca                                             ; $7bc4: $0f
	rst GetHLinHL                                          ; $7bc5: $cf
	rst AddAOntoHL                                          ; $7bc6: $ef
	sbc a                                            ; $7bc7: $9f
	rst SubAFromDE                                          ; $7bc8: $df
	sbc a                                            ; $7bc9: $9f
	rst SubAFromDE                                          ; $7bca: $df
	rst SubAFromDE                                          ; $7bcb: $df
	rst GetHLinHL                                          ; $7bcc: $cf
	sub a                                            ; $7bcd: $97
	rst FarCall                                          ; $7bce: $f7
	di                                               ; $7bcf: $f3
	ld a, a                                          ; $7bd0: $7f
	rrca                                             ; $7bd1: $0f
	di                                               ; $7bd2: $f3
	push bc                                          ; $7bd3: $c5
	db $fd                                           ; $7bd4: $fd
	db $ec                                           ; $7bd5: $ec
	ld a, e                                          ; $7bd6: $7b
	cp $98                                           ; $7bd7: $fe $98
	inc a                                            ; $7bd9: $3c
	db $fd                                           ; $7bda: $fd
	sbc [hl]                                         ; $7bdb: $9e
	sbc [hl]                                         ; $7bdc: $9e
	adc a                                            ; $7bdd: $8f
	sbc a                                            ; $7bde: $9f
	add a                                            ; $7bdf: $87
	call c, Call_04d_7fff                            ; $7be0: $dc $ff $7f
	ret c                                            ; $7be3: $d8

	sub [hl]                                         ; $7be4: $96
	db $e3                                           ; $7be5: $e3
	rst $38                                          ; $7be6: $ff
	cp $f6                                           ; $7be7: $fe $f6
	jr c, jr_04d_7c26                                ; $7be9: $38 $3b

	rst JumpTable                                          ; $7beb: $c7
	cp a                                             ; $7bec: $bf
	sbc l                                            ; $7bed: $9d
	db $dd                                           ; $7bee: $dd
	rst $38                                          ; $7bef: $ff
	adc l                                            ; $7bf0: $8d
	sbc h                                            ; $7bf1: $9c
	cp e                                             ; $7bf2: $bb
	cp c                                             ; $7bf3: $b9
	call nz, $17ef                                   ; $7bf4: $c4 $ef $17
	rst $38                                          ; $7bf7: $ff
	ld a, c                                          ; $7bf8: $79
	cp $f7                                           ; $7bf9: $fe $f7
	cp $ff                                           ; $7bfb: $fe $ff
	cp $fc                                           ; $7bfd: $fe $fc
	ld sp, hl                                        ; $7bff: $f9
	push af                                          ; $7c00: $f5
	ccf                                              ; $7c01: $3f

Jump_04d_7c02:
	rst GetHLinHL                                          ; $7c02: $cf
	db $db                                           ; $7c03: $db
	rst $38                                          ; $7c04: $ff
	sbc e                                            ; $7c05: $9b
	ld a, a                                          ; $7c06: $7f
	ccf                                              ; $7c07: $3f
	ld a, a                                          ; $7c08: $7f
	ldh a, [$73]                                     ; $7c09: $f0 $73
	sub [hl]                                         ; $7c0b: $96
	ld a, a                                          ; $7c0c: $7f
	jp hl                                            ; $7c0d: $e9


	ld a, a                                          ; $7c0e: $7f
	and b                                            ; $7c0f: $a0
	adc d                                            ; $7c10: $8a
	ld sp, hl                                        ; $7c11: $f9
	rst $38                                          ; $7c12: $ff
	db $e3                                           ; $7c13: $e3
	rst AddAOntoHL                                          ; $7c14: $ef
	ld b, $f8                                        ; $7c15: $06 $f8
	ccf                                              ; $7c17: $3f
	db $fd                                           ; $7c18: $fd
	sbc l                                            ; $7c19: $9d
	ei                                               ; $7c1a: $fb
	add hl, sp                                       ; $7c1b: $39
	rst FarCall                                          ; $7c1c: $f7
	ld a, e                                          ; $7c1d: $7b
	rst SubAFromBC                                          ; $7c1e: $e7
	rst AddAOntoHL                                          ; $7c1f: $ef
	rst SubAFromDE                                          ; $7c20: $df
	rst GetHLinHL                                          ; $7c21: $cf
	cp a                                             ; $7c22: $bf
	sbc a                                            ; $7c23: $9f
	ld a, a                                          ; $7c24: $7f
	ccf                                              ; $7c25: $3f

jr_04d_7c26:
	pop de                                           ; $7c26: $d1
	rst $38                                          ; $7c27: $ff
	ld a, a                                          ; $7c28: $7f
	rst GetHLinHL                                          ; $7c29: $cf
	call nz, Call_04d_7fff                           ; $7c2a: $c4 $ff $7f
	ccf                                              ; $7c2d: $3f
	ld [hl], e                                       ; $7c2e: $73
	jr c, @+$05                                      ; $7c2f: $38 $03

	rst $38                                          ; $7c31: $ff
	jp z, $9bff                                      ; $7c32: $ca $ff $9b

	ldh a, [$e0]                                     ; $7c35: $f0 $e0
	inc hl                                           ; $7c37: $23
	sbc a                                            ; $7c38: $9f
	push de                                          ; $7c39: $d5
	rst $38                                          ; $7c3a: $ff
	sbc h                                            ; $7c3b: $9c
	ld a, a                                          ; $7c3c: $7f
	ld e, a                                          ; $7c3d: $5f
	sbc a                                            ; $7c3e: $9f
	ld l, e                                          ; $7c3f: $6b
	ld d, [hl]                                       ; $7c40: $56
	ld e, e                                          ; $7c41: $5b
	sbc l                                            ; $7c42: $9d
	ld a, d                                          ; $7c43: $7a
	db $d3                                           ; $7c44: $d3
	rst SubAFromDE                                          ; $7c45: $df
	rst $38                                          ; $7c46: $ff
	sbc b                                            ; $7c47: $98
	cp [hl]                                          ; $7c48: $be
	cp $5f                                           ; $7c49: $fe $5f
	rst $38                                          ; $7c4b: $ff
	xor d                                            ; $7c4c: $aa
	rst $38                                          ; $7c4d: $ff
	ld d, l                                          ; $7c4e: $55
	ld a, e                                          ; $7c4f: $7b
	db $fc                                           ; $7c50: $fc
	sbc l                                            ; $7c51: $9d
	ccf                                              ; $7c52: $3f
	sub a                                            ; $7c53: $97
	db $dd                                           ; $7c54: $dd
	rst $38                                          ; $7c55: $ff
	sbc d                                            ; $7c56: $9a
	rst JumpTable                                          ; $7c57: $c7
	rst SubAFromHL                                          ; $7c58: $d7
	rst $38                                          ; $7c59: $ff
	rst $38                                          ; $7c5a: $ff
	xor e                                            ; $7c5b: $ab
	ld [hl], e                                       ; $7c5c: $73
	ldh a, [$dc]                                     ; $7c5d: $f0 $dc
	rst $38                                          ; $7c5f: $ff
	sbc [hl]                                         ; $7c60: $9e
	db $fd                                           ; $7c61: $fd
	db $db                                           ; $7c62: $db
	rst $38                                          ; $7c63: $ff
	ld l, a                                          ; $7c64: $6f
	ldh a, [$7e]                                     ; $7c65: $f0 $7e
	call c, Call_04d_7580                            ; $7c67: $dc $80 $75
	ld [hl], a                                       ; $7c6a: $77
	ei                                               ; $7c6b: $fb
	db $db                                           ; $7c6c: $db
	ld sp, hl                                        ; $7c6d: $f9

jr_04d_7c6e:
	ld sp, hl                                        ; $7c6e: $f9
	ld [$54ff], a                                    ; $7c6f: $ea $ff $54
	cp $a8                                           ; $7c72: $fe $a8

Call_04d_7c74:
	ldh a, [$f7]                                     ; $7c74: $f0 $f7
	ld sp, hl                                        ; $7c76: $f9
	ld hl, sp-$04                                    ; $7c77: $f8 $fc
	or c                                             ; $7c79: $b1
	cp l                                             ; $7c7a: $bd
	and d                                            ; $7c7b: $a2
	ld a, [$f7c5]                                    ; $7c7c: $fa $c5 $f7
	adc d                                            ; $7c7f: $8a
	ld e, a                                          ; $7c80: $5f
	ld [hl], l                                       ; $7c81: $75
	ld e, e                                          ; $7c82: $5b
	ld a, [hl+]                                      ; $7c83: $2a
	ld a, a                                          ; $7c84: $7f
	rst FarCall                                          ; $7c85: $f7
	ld h, a                                          ; $7c86: $67
	xor $98                                          ; $7c87: $ee $98
	db $d3                                           ; $7c89: $d3
	rst FarCall                                          ; $7c8a: $f7
	jp hl                                            ; $7c8b: $e9


	db $eb                                           ; $7c8c: $eb
	call c, $fed5                                    ; $7c8d: $dc $d5 $fe
	ld [hl], e                                       ; $7c90: $73
	or b                                             ; $7c91: $b0
	ld a, [hl]                                       ; $7c92: $7e
	ld hl, sp-$64                                    ; $7c93: $f8 $9c
	sub e                                            ; $7c95: $93
	xor [hl]                                         ; $7c96: $ae
	db $d3                                           ; $7c97: $d3
	ld a, e                                          ; $7c98: $7b
	ld hl, sp-$74                                    ; $7c99: $f8 $8c
	ld a, a                                          ; $7c9b: $7f
	sub a                                            ; $7c9c: $97
	jr c, jr_04d_7c6e                                ; $7c9d: $38 $cf

	add b                                            ; $7c9f: $80
	add l                                            ; $7ca0: $85
	ld b, a                                          ; $7ca1: $47
	dec l                                            ; $7ca2: $2d
	ld a, b                                          ; $7ca3: $78
	rst $38                                          ; $7ca4: $ff
	ld h, a                                          ; $7ca5: $67
	rst $38                                          ; $7ca6: $ff
	cp [hl]                                          ; $7ca7: $be
	rst SubAFromDE                                          ; $7ca8: $df
	ldh a, [$fb]                                     ; $7ca9: $f0 $fb
	add a                                            ; $7cab: $87
	ld d, l                                          ; $7cac: $55
	ccf                                              ; $7cad: $3f
	ld [hl], a                                       ; $7cae: $77
	ldh [$99], a                                     ; $7caf: $e0 $99
	ld [$f7bf], a                                    ; $7cb1: $ea $bf $f7
	add c                                            ; $7cb4: $81
	rst $38                                          ; $7cb5: $ff
	rrca                                             ; $7cb6: $0f
	halt                                             ; $7cb7: $76
	ei                                               ; $7cb8: $fb
	ld [hl], a                                       ; $7cb9: $77
	and h                                            ; $7cba: $a4
	ld [hl], e                                       ; $7cbb: $73
	and b                                            ; $7cbc: $a0
	ld a, d                                          ; $7cbd: $7a
	ld h, b                                          ; $7cbe: $60
	halt                                             ; $7cbf: $76
	cp a                                             ; $7cc0: $bf
	ld h, a                                          ; $7cc1: $67
	ldh a, [$9d]                                     ; $7cc2: $f0 $9d
	cp a                                             ; $7cc4: $bf
	pop bc                                           ; $7cc5: $c1
	db $dd                                           ; $7cc6: $dd
	rst $38                                          ; $7cc7: $ff
	ld l, a                                          ; $7cc8: $6f
	ld [hl], h                                       ; $7cc9: $74
	ld [hl], e                                       ; $7cca: $73
	ldh [rOCPS], a                                   ; $7ccb: $e0 $6a
	cp h                                             ; $7ccd: $bc
	sbc [hl]                                         ; $7cce: $9e
	ld d, a                                          ; $7ccf: $57
	ld h, a                                          ; $7cd0: $67
	ldh a, [$7f]                                     ; $7cd1: $f0 $7f
	or b                                             ; $7cd3: $b0
	ld l, e                                          ; $7cd4: $6b
	ld e, l                                          ; $7cd5: $5d
	ld l, e                                          ; $7cd6: $6b
	ldh a, [$da]                                     ; $7cd7: $f0 $da
	rst $38                                          ; $7cd9: $ff
	ld h, e                                          ; $7cda: $63
	ret nc                                           ; $7cdb: $d0

	sbc l                                            ; $7cdc: $9d
	rst $38                                          ; $7cdd: $ff
	xor a                                            ; $7cde: $af
	ld [hl], d                                       ; $7cdf: $72
	cp h                                             ; $7ce0: $bc
	ld e, a                                          ; $7ce1: $5f
	ldh a, [$9e]                                     ; $7ce2: $f0 $9e
	cp [hl]                                          ; $7ce4: $be
	ld l, e                                          ; $7ce5: $6b
	adc $6f                                          ; $7ce6: $ce $6f
	ldh a, [$7f]                                     ; $7ce8: $f0 $7f
	sub [hl]                                         ; $7cea: $96
	sbc h                                            ; $7ceb: $9c
	xor [hl]                                         ; $7cec: $ae
	halt                                             ; $7ced: $76
	db $fc                                           ; $7cee: $fc
	ld [hl], d                                       ; $7cef: $72
	db $fc                                           ; $7cf0: $fc
	adc h                                            ; $7cf1: $8c
	or b                                             ; $7cf2: $b0
	pop hl                                           ; $7cf3: $e1
	ld b, h                                          ; $7cf4: $44
	sbc [hl]                                         ; $7cf5: $9e
	adc d                                            ; $7cf6: $8a
	ccf                                              ; $7cf7: $3f
	ld a, a                                          ; $7cf8: $7f
	ld a, a                                          ; $7cf9: $7f
	cp a                                             ; $7cfa: $bf
	rst SubAFromDE                                          ; $7cfb: $df
	ld e, a                                          ; $7cfc: $5f
	cp a                                             ; $7cfd: $bf
	ccf                                              ; $7cfe: $3f
	cp a                                             ; $7cff: $bf
	sub l                                            ; $7d00: $95
	adc a                                            ; $7d01: $8f
	adc d                                            ; $7d02: $8a
	rst SubAFromDE                                          ; $7d03: $df
	dec d                                            ; $7d04: $15
	ld a, e                                          ; $7d05: $7b
	ld e, h                                          ; $7d06: $5c
	ld a, l                                          ; $7d07: $7d
	db $d3                                           ; $7d08: $d3
	ld a, a                                          ; $7d09: $7f
	ldh a, [$7f]                                     ; $7d0a: $f0 $7f
	db $ed                                           ; $7d0c: $ed
	ld a, a                                          ; $7d0d: $7f
	ei                                               ; $7d0e: $fb
	sbc h                                            ; $7d0f: $9c
	ld b, e                                          ; $7d10: $43
	ret z                                            ; $7d11: $c8

	and d                                            ; $7d12: $a2
	ld a, e                                          ; $7d13: $7b
	ret nc                                           ; $7d14: $d0

	sbc l                                            ; $7d15: $9d
	ld a, d                                          ; $7d16: $7a
	add hl, bc                                       ; $7d17: $09
	reti                                             ; $7d18: $d9


	rst $38                                          ; $7d19: $ff
	sub a                                            ; $7d1a: $97
	ld e, a                                          ; $7d1b: $5f
	ld a, a                                          ; $7d1c: $7f
	xor d                                            ; $7d1d: $aa
	sbc a                                            ; $7d1e: $9f
	ld d, l                                          ; $7d1f: $55
	rst AddAOntoHL                                          ; $7d20: $ef
	xor d                                            ; $7d21: $aa
	rst AddAOntoHL                                          ; $7d22: $ef
	ld [hl], a                                       ; $7d23: $77
	inc a                                            ; $7d24: $3c
	ld [hl], a                                       ; $7d25: $77
	cp b                                             ; $7d26: $b8
	sbc b                                            ; $7d27: $98
	ld d, a                                          ; $7d28: $57
	ld sp, hl                                        ; $7d29: $f9

jr_04d_7d2a:
	xor d                                            ; $7d2a: $aa
	db $fd                                           ; $7d2b: $fd
	ld d, l                                          ; $7d2c: $55
	rst $38                                          ; $7d2d: $ff
	db $10                                           ; $7d2e: $10
	ld a, e                                          ; $7d2f: $7b
	ldh a, [$6f]                                     ; $7d30: $f0 $6f
	xor b                                            ; $7d32: $a8
	sub a                                            ; $7d33: $97
	ld d, l                                          ; $7d34: $55
	ld a, [$fcaa]                                    ; $7d35: $fa $aa $fc
	ld b, h                                          ; $7d38: $44
	ld sp, hl                                        ; $7d39: $f9
	db $10                                           ; $7d3a: $10
	ldh [c], a                                       ; $7d3b: $e2
	ld a, e                                          ; $7d3c: $7b
	db $f4                                           ; $7d3d: $f4
	add b                                            ; $7d3e: $80
	db $ec                                           ; $7d3f: $ec
	ld d, c                                          ; $7d40: $51
	ldh [$8a], a                                     ; $7d41: $e0 $8a
	rst JumpTable                                          ; $7d43: $c7
	push af                                          ; $7d44: $f5
	rra                                              ; $7d45: $1f
	xor d                                            ; $7d46: $aa
	ld a, a                                          ; $7d47: $7f
	nop                                              ; $7d48: $00
	pop hl                                           ; $7d49: $e1
	rlca                                             ; $7d4a: $07
	ld e, d                                          ; $7d4b: $5a
	ld b, l                                          ; $7d4c: $45
	add e                                            ; $7d4d: $83
	ld a, [hl+]                                      ; $7d4e: $2a
	ld a, a                                          ; $7d4f: $7f
	ld d, l                                          ; $7d50: $55
	ld sp, hl                                        ; $7d51: $f9
	xor [hl]                                         ; $7d52: $ae
	ld sp, hl                                        ; $7d53: $f9
	ld d, b                                          ; $7d54: $50
	db $fc                                           ; $7d55: $fc
	nop                                              ; $7d56: $00
	add e                                            ; $7d57: $83
	dec c                                            ; $7d58: $0d
	db $fc                                           ; $7d59: $fc
	rst $38                                          ; $7d5a: $ff
	xor d                                            ; $7d5b: $aa
	ld d, a                                          ; $7d5c: $57
	ld hl, sp-$80                                    ; $7d5d: $f8 $80
	xor d                                            ; $7d5f: $aa
	di                                               ; $7d60: $f3
	nop                                              ; $7d61: $00
	rst $38                                          ; $7d62: $ff
	inc b                                            ; $7d63: $04
	ret                                              ; $7d64: $c9


	nop                                              ; $7d65: $00
	add hl, bc                                       ; $7d66: $09
	rst GetHLinHL                                          ; $7d67: $cf
	jr nc, jr_04d_7d2a                               ; $7d68: $30 $c0

	ccf                                              ; $7d6a: $3f
	ld b, b                                          ; $7d6b: $40
	cp a                                             ; $7d6c: $bf
	ld d, b                                          ; $7d6d: $50
	ld hl, sp-$5c                                    ; $7d6e: $f8 $a4
	db $e3                                           ; $7d70: $e3

jr_04d_7d71:
	dec sp                                           ; $7d71: $3b
	ld b, l                                          ; $7d72: $45
	ld l, e                                          ; $7d73: $6b
	inc e                                            ; $7d74: $1c
	call nc, $aa3c                                   ; $7d75: $d4 $3c $aa
	rst $38                                          ; $7d78: $ff
	nop                                              ; $7d79: $00
	rst $38                                          ; $7d7a: $ff
	add b                                            ; $7d7b: $80
	ld a, a                                          ; $7d7c: $7f
	call nc, $3e9a                                   ; $7d7d: $d4 $9a $3e
	and [hl]                                         ; $7d80: $a6
	jp $fc57                                         ; $7d81: $c3 $57 $fc


	ld a, e                                          ; $7d84: $7b
	or b                                             ; $7d85: $b0

jr_04d_7d86:
	sbc l                                            ; $7d86: $9d
	ei                                               ; $7d87: $fb
	and b                                            ; $7d88: $a0
	ld a, e                                          ; $7d89: $7b
	ldh a, [hDisp1_SCY]                                     ; $7d8a: $f0 $90
	ld bc, $53fe                                     ; $7d8c: $01 $fe $53
	ld sp, hl                                        ; $7d8f: $f9
	add a                                            ; $7d90: $87
	sbc b                                            ; $7d91: $98
	sub b                                            ; $7d92: $90
	ld [hl], a                                       ; $7d93: $77
	add sp, -$67                                     ; $7d94: $e8 $99
	ld d, h                                          ; $7d96: $54
	di                                               ; $7d97: $f3
	and a                                            ; $7d98: $a7
	ld hl, sp+$00                                    ; $7d99: $f8 $00
	ld a, e                                          ; $7d9b: $7b
	xor $7f                                          ; $7d9c: $ee $7f
	and b                                            ; $7d9e: $a0
	sub c                                            ; $7d9f: $91
	xor c                                            ; $7da0: $a9
	db $e4                                           ; $7da1: $e4
	ld d, l                                          ; $7da2: $55
	db $fd                                           ; $7da3: $fd
	ld [$373f], a                                    ; $7da4: $ea $3f $37
	ld e, c                                          ; $7da7: $59
	ld e, $01                                        ; $7da8: $1e $01
	ld b, e                                          ; $7daa: $43
	add h                                            ; $7dab: $84
	jr nc, jr_04d_7d71                               ; $7dac: $30 $c3

	ld h, e                                          ; $7dae: $63
	add b                                            ; $7daf: $80
	ld a, e                                          ; $7db0: $7b
	db $fc                                           ; $7db1: $fc
	ld a, a                                          ; $7db2: $7f
	or b                                             ; $7db3: $b0
	sbc l                                            ; $7db4: $9d
	jr nc, jr_04d_7d86                               ; $7db5: $30 $cf

	ld h, a                                          ; $7db7: $67
	db $f4                                           ; $7db8: $f4
	sbc h                                            ; $7db9: $9c
	ld [hl], l                                       ; $7dba: $75
	sbc a                                            ; $7dbb: $9f
	add b                                            ; $7dbc: $80
	ld a, e                                          ; $7dbd: $7b
	jp nc, $fe7f                                     ; $7dbe: $d2 $7f $fe

	sbc e                                            ; $7dc1: $9b
	ld [hl], l                                       ; $7dc2: $75
	rst SubAFromDE                                          ; $7dc3: $df
	xor d                                            ; $7dc4: $aa
	rst SubAFromDE                                          ; $7dc5: $df
	ld l, a                                          ; $7dc6: $6f
	db $ec                                           ; $7dc7: $ec
	sbc e                                            ; $7dc8: $9b
	nop                                              ; $7dc9: $00
	ld a, a                                          ; $7dca: $7f
	add b                                            ; $7dcb: $80
	ld a, a                                          ; $7dcc: $7f
	ld [hl], a                                       ; $7dcd: $77
	ret nz                                           ; $7dce: $c0

	ld h, a                                          ; $7dcf: $67
	ret nc                                           ; $7dd0: $d0

	ld [hl], a                                       ; $7dd1: $77
	ldh [c], a                                       ; $7dd2: $e2
	rla                                              ; $7dd3: $17
	ldh a, [rPCM34]                                  ; $7dd4: $f0 $77
	ld [hl], b                                       ; $7dd6: $70
	ld a, e                                          ; $7dd7: $7b
	ldh a, [$7e]                                     ; $7dd8: $f0 $7e
	jr z, @-$7c                                      ; $7dda: $28 $82

	cp $55                                           ; $7ddc: $fe $55
	db $fc                                           ; $7dde: $fc
	xor c                                            ; $7ddf: $a9
	db $fc                                           ; $7de0: $fc
	ld d, a                                          ; $7de1: $57
	db $fc                                           ; $7de2: $fc
	xor b                                            ; $7de3: $a8
	db $fd                                           ; $7de4: $fd
	inc bc                                           ; $7de5: $03
	db $fc                                           ; $7de6: $fc
	nop                                              ; $7de7: $00
	cp $95                                           ; $7de8: $fe $95
	ld a, a                                          ; $7dea: $7f
	ld h, $f1                                        ; $7deb: $26 $f1
	ld d, l                                          ; $7ded: $55
	xor $2a                                          ; $7dee: $ee $2a
	rst AddAOntoHL                                          ; $7df0: $ef
	ld [hl], l                                       ; $7df1: $75
	rst GetHLinHL                                          ; $7df2: $cf
	inc c                                            ; $7df3: $0c
	db $e3                                           ; $7df4: $e3
	dec b                                            ; $7df5: $05
	ld hl, sp-$6b                                    ; $7df6: $f8 $95
	ld l, d                                          ; $7df8: $6a
	ld [hl], e                                       ; $7df9: $73
	call nc, Call_04d_7f84                           ; $7dfa: $d4 $84 $7f
	ld [$35bf], a                                    ; $7dfd: $ea $bf $35
	rst SubAFromDE                                          ; $7e00: $df
	ld a, [hl+]                                      ; $7e01: $2a
	sbc $29                                          ; $7e02: $de $29
	call nc, Call_04d_43b4                           ; $7e04: $d4 $b4 $43

Jump_04d_7e07:
	ld d, c                                          ; $7e07: $51
	ld sp, hl                                        ; $7e08: $f9
	xor e                                            ; $7e09: $ab
	cp [hl]                                          ; $7e0a: $be
	ld b, l                                          ; $7e0b: $45
	ld l, [hl]                                       ; $7e0c: $6e
	xor e                                            ; $7e0d: $ab
	sbc $15                                          ; $7e0e: $de $15
	sbc [hl]                                         ; $7e10: $9e
	adc [hl]                                         ; $7e11: $8e
	ld a, c                                          ; $7e12: $79
	add hl, de                                       ; $7e13: $19
	rst JumpTable                                          ; $7e14: $c7
	dec d                                            ; $7e15: $15
	jp z, $e07b                                      ; $7e16: $ca $7b $e0

	sbc e                                            ; $7e19: $9b
	rst FarCall                                          ; $7e1a: $f7
	ld e, l                                          ; $7e1b: $5d
	rst FarCall                                          ; $7e1c: $f7
	and d                                            ; $7e1d: $a2
	ld a, e                                          ; $7e1e: $7b
	db $fc                                           ; $7e1f: $fc
	sub l                                            ; $7e20: $95
	xor d                                            ; $7e21: $aa
	rst GetHLinHL                                          ; $7e22: $cf
	dec [hl]                                         ; $7e23: $35
	sbc a                                            ; $7e24: $9f
	ret nz                                           ; $7e25: $c0

	ccf                                              ; $7e26: $3f
	nop                                              ; $7e27: $00
	rst AddAOntoHL                                          ; $7e28: $ef
	db $10                                           ; $7e29: $10
	rst AddAOntoHL                                          ; $7e2a: $ef
	ld l, a                                          ; $7e2b: $6f
	sub [hl]                                         ; $7e2c: $96
	ld l, a                                          ; $7e2d: $6f
	cp $99                                           ; $7e2e: $fe $99
	ld [hl+], a                                      ; $7e30: $22
	call nz, $8873                                   ; $7e31: $c4 $73 $88
	and h                                            ; $7e34: $a4

jr_04d_7e35:
	inc bc                                           ; $7e35: $03
	ld [hl], a                                       ; $7e36: $77
	ld d, $6f                                        ; $7e37: $16 $6f
	ldh a, [$9b]                                     ; $7e39: $f0 $9b
	ld a, b                                          ; $7e3b: $78
	ld [hl], c                                       ; $7e3c: $71
	ldh a, [rIF]                                     ; $7e3d: $f0 $0f
	ld [hl], e                                       ; $7e3f: $73
	ldh a, [c]                                       ; $7e40: $f2
	ld a, e                                          ; $7e41: $7b
	ld d, h                                          ; $7e42: $54
	ld [hl], a                                       ; $7e43: $77
	cp $9d                                           ; $7e44: $fe $9d
	inc bc                                           ; $7e46: $03
	pop af                                           ; $7e47: $f1
	ld [hl], a                                       ; $7e48: $77
	ld a, [$409d]                                    ; $7e49: $fa $9d $40
	ccf                                              ; $7e4c: $3f
	ld d, a                                          ; $7e4d: $57
	call z, $fe53                                    ; $7e4e: $cc $53 $fe
	ld l, e                                          ; $7e51: $6b
	ret c                                            ; $7e52: $d8

	ld h, e                                          ; $7e53: $63
	cp $77                                           ; $7e54: $fe $77
	cp b                                             ; $7e56: $b8
	ld a, a                                          ; $7e57: $7f
	db $ec                                           ; $7e58: $ec
	ld [hl], e                                       ; $7e59: $73
	inc d                                            ; $7e5a: $14
	scf                                              ; $7e5b: $37
	cp $99                                           ; $7e5c: $fe $99
	ld c, $f0                                        ; $7e5e: $0e $f0
	ld bc, $28fe                                     ; $7e60: $01 $fe $28
	rst JumpTable                                          ; $7e63: $c7
	ld e, a                                          ; $7e64: $5f
	ldh a, [hDisp1_OBP0]                                     ; $7e65: $f0 $93
	ld b, $71                                        ; $7e67: $06 $71
	add e                                            ; $7e69: $83
	jr c, @-$5b                                      ; $7e6a: $38 $a3

	inc b                                            ; $7e6c: $04
	ld d, c                                          ; $7e6d: $51
	adc h                                            ; $7e6e: $8c
	jr nz, jr_04d_7e35                               ; $7e6f: $20 $c4

jr_04d_7e71:
	dec de                                           ; $7e71: $1b
	ldh [$67], a                                     ; $7e72: $e0 $67
	db $ec                                           ; $7e74: $ec
	ld a, a                                          ; $7e75: $7f
	call nz, $587f                                   ; $7e76: $c4 $7f $58
	sbc [hl]                                         ; $7e79: $9e
	add b                                            ; $7e7a: $80
	ld [hl], a                                       ; $7e7b: $77
	cp $9e                                           ; $7e7c: $fe $9e
	rra                                              ; $7e7e: $1f
	ld [hl], a                                       ; $7e7f: $77
	ldh a, [c]                                       ; $7e80: $f2
	ld a, e                                          ; $7e81: $7b
	ld [hl], h                                       ; $7e82: $74
	sbc [hl]                                         ; $7e83: $9e
	cp $67                                           ; $7e84: $fe $67
	ld h, d                                          ; $7e86: $62
	ld c, a                                          ; $7e87: $4f
	cp $97                                           ; $7e88: $fe $97
	inc b                                            ; $7e8a: $04
	ei                                               ; $7e8b: $fb
	nop                                              ; $7e8c: $00
	ei                                               ; $7e8d: $fb
	nop                                              ; $7e8e: $00
	rst SubAFromDE                                          ; $7e8f: $df
	jr nz, jr_04d_7e71                               ; $7e90: $20 $df

	inc hl                                           ; $7e92: $23
	ld h, h                                          ; $7e93: $64
	dec sp                                           ; $7e94: $3b
	cp $97                                           ; $7e95: $fe $97
	adc b                                            ; $7e97: $88
	ld [hl], a                                       ; $7e98: $77
	ld e, b                                          ; $7e99: $58

Jump_04d_7e9a:
	daa                                              ; $7e9a: $27
	ld b, $d1                                        ; $7e9b: $06 $d1
	add hl, bc                                       ; $7e9d: $09
	ldh a, [c]                                       ; $7e9e: $f2
	ld a, e                                          ; $7e9f: $7b
	db $f4                                           ; $7ea0: $f4
	add b                                            ; $7ea1: $80
	ei                                               ; $7ea2: $fb
	inc c                                            ; $7ea3: $0c
	pop af                                           ; $7ea4: $f1
	inc b                                            ; $7ea5: $04
	ld a, [$6d92]                                    ; $7ea6: $fa $92 $6d
	ld d, b                                          ; $7ea9: $50
	xor e                                            ; $7eaa: $ab
	ld d, b                                          ; $7eab: $50
	xor e                                            ; $7eac: $ab
	ld e, b                                          ; $7ead: $58
	and e                                            ; $7eae: $a3
	cp b                                             ; $7eaf: $b8
	inc bc                                           ; $7eb0: $03
	ld e, b                                          ; $7eb1: $58
	add e                                            ; $7eb2: $83
	ld a, [bc]                                       ; $7eb3: $0a
	pop af                                           ; $7eb4: $f1
	inc e                                            ; $7eb5: $1c
	ldh [rSC], a                                     ; $7eb6: $e0 $02
	call c, $ec03                                    ; $7eb8: $dc $03 $ec

jr_04d_7ebb:
	nop                                              ; $7ebb: $00
	db $ed                                           ; $7ebc: $ed
	nop                                              ; $7ebd: $00
	db $ed                                           ; $7ebe: $ed
	ld [hl+], a                                      ; $7ebf: $22
	call Call_04d_4499                               ; $7ec0: $cd $99 $44
	adc c                                            ; $7ec3: $89
	inc l                                            ; $7ec4: $2c
	inc de                                           ; $7ec5: $13
	ld d, b                                          ; $7ec6: $50
	daa                                              ; $7ec7: $27
	daa                                              ; $7ec8: $27
	jr c, jr_04d_7f4a                                ; $7ec9: $38 $7f

	cp $99                                           ; $7ecb: $fe $99
	ld a, [bc]                                       ; $7ecd: $0a
	push af                                          ; $7ece: $f5
	ld d, l                                          ; $7ecf: $55
	xor d                                            ; $7ed0: $aa
	xor d                                            ; $7ed1: $aa
	ld d, l                                          ; $7ed2: $55
	ld h, a                                          ; $7ed3: $67
	ldh a, [c]                                       ; $7ed4: $f2
	sub a                                            ; $7ed5: $97
	dec d                                            ; $7ed6: $15
	ld [$54ab], a                                    ; $7ed7: $ea $ab $54
	ld d, h                                          ; $7eda: $54
	xor b                                            ; $7edb: $a8
	xor d                                            ; $7edc: $aa
	ld d, c                                          ; $7edd: $51
	ld h, a                                          ; $7ede: $67
	ldh a, [$7f]                                     ; $7edf: $f0 $7f
	db $e4                                           ; $7ee1: $e4
	sbc [hl]                                         ; $7ee2: $9e
	xor b                                            ; $7ee3: $a8
	ld a, e                                          ; $7ee4: $7b
	ld sp, hl                                        ; $7ee5: $f9
	ld [hl], a                                       ; $7ee6: $77
	or $77                                           ; $7ee7: $f6 $77
	ld h, b                                          ; $7ee9: $60
	ld a, a                                          ; $7eea: $7f
	ret c                                            ; $7eeb: $d8

	sub a                                            ; $7eec: $97
	ld d, l                                          ; $7eed: $55
	ld a, [hl+]                                      ; $7eee: $2a
	ld [$2d05], a                                    ; $7eef: $ea $05 $2d
	jp nz, $e512                                     ; $7ef2: $c2 $12 $e5

	ld l, a                                          ; $7ef5: $6f
	ldh [c], a                                       ; $7ef6: $e2
	ld a, e                                          ; $7ef7: $7b
	ldh a, [$7b]                                     ; $7ef8: $f0 $7b
	call nz, $c05f                                   ; $7efa: $c4 $5f $c0
	scf                                              ; $7efd: $37
	ldh a, [$99]                                     ; $7efe: $f0 $99
	ld [$5515], a                                    ; $7f00: $ea $15 $55

Call_04d_7f03:
	ld a, [hl+]                                      ; $7f03: $2a
	rst SubAFromBC                                          ; $7f04: $e7
	jr jr_04d_7f76                                   ; $7f05: $18 $6f

	and h                                            ; $7f07: $a4
	ld l, a                                          ; $7f08: $6f
	db $e4                                           ; $7f09: $e4
	sbc e                                            ; $7f0a: $9b
	ld e, l                                          ; $7f0b: $5d
	and d                                            ; $7f0c: $a2
	sub d                                            ; $7f0d: $92
	ld b, b                                          ; $7f0e: $40
	ld l, a                                          ; $7f0f: $6f
	and h                                            ; $7f10: $a4
	ld [hl], a                                       ; $7f11: $77
	ldh a, [$7f]                                     ; $7f12: $f0 $7f
	sub b                                            ; $7f14: $90
	sbc e                                            ; $7f15: $9b
	push de                                          ; $7f16: $d5
	ld a, [hl+]                                      ; $7f17: $2a
	ld h, d                                          ; $7f18: $62
	inc b                                            ; $7f19: $04
	ld e, a                                          ; $7f1a: $5f
	ldh a, [$5f]                                     ; $7f1b: $f0 $5f
	ret nz                                           ; $7f1d: $c0

	cpl                                              ; $7f1e: $2f
	ldh a, [$9b]                                     ; $7f1f: $f0 $9b
	or c                                             ; $7f21: $b1
	ld b, b                                          ; $7f22: $40
	ld [$6e87], sp                                   ; $7f23: $08 $87 $6e
	jr c, jr_04d_7ebb                                ; $7f26: $38 $93

	ld d, b                                          ; $7f28: $50
	xor a                                            ; $7f29: $af
	xor d                                            ; $7f2a: $aa
	ld d, l                                          ; $7f2b: $55
	adc l                                            ; $7f2c: $8d
	ld [bc], a                                       ; $7f2d: $02
	sub $21                                          ; $7f2e: $d6 $21
	ld d, l                                          ; $7f30: $55
	and d                                            ; $7f31: $a2
	ld [bc], a                                       ; $7f32: $02

Call_04d_7f33:
	add l                                            ; $7f33: $85
	cpl                                              ; $7f34: $2f
	add b                                            ; $7f35: $80
	sbc l                                            ; $7f36: $9d
	jr @-$17                                         ; $7f37: $18 $e7

	rra                                              ; $7f39: $1f
	ldh a, [$7e]                                     ; $7f3a: $f0 $7e
	ld [hl], h                                       ; $7f3c: $74
	sbc [hl]                                         ; $7f3d: $9e
	ld [bc], a                                       ; $7f3e: $02
	ld a, c                                          ; $7f3f: $79
	halt                                             ; $7f40: $76
	ld h, a                                          ; $7f41: $67
	ldh a, [$80]                                     ; $7f42: $f0 $80
	ret nz                                           ; $7f44: $c0

	add hl, sp                                       ; $7f45: $39
	ld b, b                                          ; $7f46: $40
	cp a                                             ; $7f47: $bf
	inc b                                            ; $7f48: $04
	ei                                               ; $7f49: $fb

jr_04d_7f4a:
	ld a, [bc]                                       ; $7f4a: $0a
	pop af                                           ; $7f4b: $f1
	halt                                             ; $7f4c: $76
	add hl, bc                                       ; $7f4d: $09
	xor $11                                          ; $7f4e: $ee $11
	ld d, l                                          ; $7f50: $55
	xor b                                            ; $7f51: $a8
	xor d                                            ; $7f52: $aa
	ld d, h                                          ; $7f53: $54
	ld c, $f1                                        ; $7f54: $0e $f1
	nop                                              ; $7f56: $00
	cp $61                                           ; $7f57: $fe $61
	sbc [hl]                                         ; $7f59: $9e
	sbc $21                                          ; $7f5a: $de $21
	nop                                              ; $7f5c: $00
	cp a                                             ; $7f5d: $bf
	ld l, b                                          ; $7f5e: $68
	sub a                                            ; $7f5f: $97
	push de                                          ; $7f60: $d5
	ld a, [hl+]                                      ; $7f61: $2a
	ld l, d                                          ; $7f62: $6a
	sbc [hl]                                         ; $7f63: $9e
	dec d                                            ; $7f64: $15
	ld d, [hl]                                       ; $7f65: $56
	adc $7f                                          ; $7f66: $ce $7f
	sub $5f                                          ; $7f68: $d6 $5f
	sbc b                                            ; $7f6a: $98
	ld h, a                                          ; $7f6b: $67
	db $fc                                           ; $7f6c: $fc
	add b                                            ; $7f6d: $80
	ld d, b                                          ; $7f6e: $50
	and e                                            ; $7f6f: $a3
	and d                                            ; $7f70: $a2
	ld d, h                                          ; $7f71: $54
	ld d, h                                          ; $7f72: $54
	and d                                            ; $7f73: $a2
	or e                                             ; $7f74: $b3
	ld b, l                                          ; $7f75: $45

jr_04d_7f76:
	ld a, h                                          ; $7f76: $7c
	add d                                            ; $7f77: $82
	xor d                                            ; $7f78: $aa
	ld b, h                                          ; $7f79: $44
	ld [hl], l                                       ; $7f7a: $75
	add b                                            ; $7f7b: $80
	xor [hl]                                         ; $7f7c: $ae
	ld d, c                                          ; $7f7d: $51
	ld d, h                                          ; $7f7e: $54

Call_04d_7f7f:
	xor e                                            ; $7f7f: $ab
	ld a, [hl+]                                      ; $7f80: $2a
	ld d, l                                          ; $7f81: $55
	ld a, c                                          ; $7f82: $79
	ld a, b                                          ; $7f83: $78

Call_04d_7f84:
	cp b                                             ; $7f84: $b8
	push af                                          ; $7f85: $f5
	ld d, a                                          ; $7f86: $57
	ld a, [hl+]                                      ; $7f87: $2a
	ld a, h                                          ; $7f88: $7c
	ld a, h                                          ; $7f89: $7c
	ld d, h                                          ; $7f8a: $54
	xor b                                            ; $7f8b: $a8
	xor a                                            ; $7f8c: $af
	adc [hl]                                         ; $7f8d: $8e
	inc bc                                           ; $7f8e: $03
	ld d, l                                          ; $7f8f: $55
	and d                                            ; $7f90: $a2
	xor [hl]                                         ; $7f91: $ae
	ld d, c                                          ; $7f92: $51
	ld e, c                                          ; $7f93: $59
	and d                                            ; $7f94: $a2
	xor d                                            ; $7f95: $aa
	ld d, c                                          ; $7f96: $51
	ld d, l                                          ; $7f97: $55
	and d                                            ; $7f98: $a2
	and d                                            ; $7f99: $a2
	ld d, l                                          ; $7f9a: $55
	push hl                                          ; $7f9b: $e5
	ld a, [bc]                                       ; $7f9c: $0a
	rst GetHLinHL                                          ; $7f9d: $cf

Jump_04d_7f9e:
	nop                                              ; $7f9e: $00
	ld d, a                                          ; $7f9f: $57
	call nz, Call_04d_579c                           ; $7fa0: $c4 $9c $57
	xor b                                            ; $7fa3: $a8
	rst $38                                          ; $7fa4: $ff
	ld l, e                                          ; $7fa5: $6b
	ldh a, [$9c]                                     ; $7fa6: $f0 $9c
	and d                                            ; $7fa8: $a2
	ld b, l                                          ; $7fa9: $45
	ld b, l                                          ; $7faa: $45
	ld a, e                                          ; $7fab: $7b
	ld hl, sp+$77                                    ; $7fac: $f8 $77
	sbc e                                            ; $7fae: $9b
	sbc c                                            ; $7faf: $99
	ld e, l                                          ; $7fb0: $5d
	and b                                            ; $7fb1: $a0
	or c                                             ; $7fb2: $b1
	ld b, b                                          ; $7fb3: $40
	ld e, a                                          ; $7fb4: $5f
	and b                                            ; $7fb5: $a0
	ld a, e                                          ; $7fb6: $7b
	ret nc                                           ; $7fb7: $d0

	sub h                                            ; $7fb8: $94
	xor b                                            ; $7fb9: $a8
	xor e                                            ; $7fba: $ab
	ld d, h                                          ; $7fbb: $54
	rst FarCall                                          ; $7fbc: $f7
	ld [$00ff], sp                                   ; $7fbd: $08 $ff $00
	ldh a, [c]                                       ; $7fc0: $f2
	ld bc, $1b80                                     ; $7fc1: $01 $80 $1b
	ld l, a                                          ; $7fc4: $6f
	call nc, $b07e                                   ; $7fc5: $d4 $7e $b0
	sub l                                            ; $7fc8: $95
	ld [hl], c                                       ; $7fc9: $71
	ld [$01c9], sp                                   ; $7fca: $08 $c9 $01
	ld c, b                                          ; $7fcd: $48
	sub d                                            ; $7fce: $92
	dec h                                            ; $7fcf: $25
	ret c                                            ; $7fd0: $d8

	ld d, a                                          ; $7fd1: $57
	xor b                                            ; $7fd2: $a8
	ld l, a                                          ; $7fd3: $6f
	ret nz                                           ; $7fd4: $c0

	ld a, e                                          ; $7fd5: $7b
	ldh [$8d], a                                     ; $7fd6: $e0 $8d
	ret nz                                           ; $7fd8: $c0

	ld d, h                                          ; $7fd9: $54
	dec hl                                           ; $7fda: $2b
	xor d                                            ; $7fdb: $aa
	dec d                                            ; $7fdc: $15
	ld d, l                                          ; $7fdd: $55
	adc d                                            ; $7fde: $8a
	xor d                                            ; $7fdf: $aa
	ld b, l                                          ; $7fe0: $45
	ld e, l                                          ; $7fe1: $5d
	and b                                            ; $7fe2: $a0
	xor d                                            ; $7fe3: $aa
	ld d, h                                          ; $7fe4: $54
	db $fd                                           ; $7fe5: $fd
	ld [bc], a                                       ; $7fe6: $02
	rst $38                                          ; $7fe7: $ff
	nop                                              ; $7fe8: $00
	ld d, h                                          ; $7fe9: $54
	ld a, d                                          ; $7fea: $7a
	xor b                                            ; $7feb: $a8
	ld a, a                                          ; $7fec: $7f
	db $f4                                           ; $7fed: $f4
	sub d                                            ; $7fee: $92
	ld a, [$ed01]                                    ; $7fef: $fa $01 $ed
	ld [bc], a                                       ; $7ff2: $02
	ld l, e                                          ; $7ff3: $6b
	dec d                                            ; $7ff4: $15
	ld d, a                                          ; $7ff5: $57
	xor a                                            ; $7ff6: $af

Call_04d_7ff7:
	rst $38                                          ; $7ff7: $ff
	inc e                                            ; $7ff8: $1c
	inc bc                                           ; $7ff9: $03
	db $fc                                           ; $7ffa: $fc
	add b                                            ; $7ffb: $80
	ld a, e                                          ; $7ffc: $7b
	ld a, b                                          ; $7ffd: $78
	add a                                            ; $7ffe: $87

Call_04d_7fff:
	cp [hl]                                          ; $7fff: $be
