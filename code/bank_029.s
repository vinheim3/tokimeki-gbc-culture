; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

Call_029_4000:
	ld e, h                                          ; $4000: $5c
	nop                                              ; $4001: $00
	add b                                            ; $4002: $80
	ld e, a                                          ; $4003: $5f
	ldh a, [$b9]                                     ; $4004: $f0 $b9
	ld [hl], a                                       ; $4006: $77
	rst SubAFromHL                                          ; $4007: $d7
	ccf                                              ; $4008: $3f
	db $ed                                           ; $4009: $ed
	ld e, $5e                                        ; $400a: $1e $5e
	or c                                             ; $400c: $b1
	ld a, e                                          ; $400d: $7b
	and a                                            ; $400e: $a7
	ld [hl], a                                       ; $400f: $77
	adc a                                            ; $4010: $8f
	rst AddAOntoHL                                          ; $4011: $ef
	sbc a                                            ; $4012: $9f
	db $f4                                           ; $4013: $f4
	inc e                                            ; $4014: $1c
	xor $fe                                          ; $4015: $ee $fe
	inc hl                                           ; $4017: $23
	rst SubAFromDE                                          ; $4018: $df
	rst $38                                          ; $4019: $ff
	nop                                              ; $401a: $00
	rst AddAOntoHL                                          ; $401b: $ef
	ldh a, [$fb]                                     ; $401c: $f0 $fb
	db $fc                                           ; $401e: $fc
	dec e                                            ; $401f: $1d
	ld e, $8e                                        ; $4020: $1e $8e
	sub l                                            ; $4022: $95
	adc h                                            ; $4023: $8c
	ld b, $01                                        ; $4024: $06 $01
	dec b                                            ; $4026: $05
	inc bc                                           ; $4027: $03
	ld a, [bc]                                       ; $4028: $0a
	ld b, $1c                                        ; $4029: $06 $1c
	nop                                              ; $402b: $00
	ld bc, $fe73                                     ; $402c: $01 $73 $fe
	rst $38                                          ; $402f: $ff
	add d                                            ; $4030: $82
	cp e                                             ; $4031: $bb
	rst $38                                          ; $4032: $ff
	cp a                                             ; $4033: $bf
	bit 7, d                                         ; $4034: $cb $7a
	jp $e25b                                         ; $4036: $c3 $5b $e2


	ld e, l                                          ; $4039: $5d
	pop hl                                           ; $403a: $e1

jr_029_403b:
	cp $e0                                           ; $403b: $fe $e0
	ld l, a                                          ; $403d: $6f
	ldh a, [$be]                                     ; $403e: $f0 $be
	ldh a, [$c8]                                     ; $4040: $f0 $c8
	call z, $f8f8                                    ; $4042: $cc $f8 $f8
	add sp, -$08                                     ; $4045: $e8 $f8
	ld c, b                                          ; $4047: $48
	db $38, $91                                      ; $4048: $38 $91
	ld [hl], b                                       ; $404a: $70
	rst SubAFromBC                                          ; $404b: $e7
	ldh [$1f], a                                     ; $404c: $e0 $1f
	ld [hl], e                                       ; $404e: $73
	sbc $fd                                          ; $404f: $de $fd
	sub l                                            ; $4051: $95
	ld a, h                                          ; $4052: $7c
	nop                                              ; $4053: $00
	rst JumpTable                                          ; $4054: $c7
	jr c, @+$03                                      ; $4055: $38 $01

	cp $e8                                           ; $4057: $fe $e8
	db $10                                           ; $4059: $10
	ret c                                            ; $405a: $d8

	jr nc, jr_029_4061                               ; $405b: $30 $04

	nop                                              ; $405d: $00
	sbc $55                                          ; $405e: $de $55
	ld e, h                                          ; $4060: $5c

jr_029_4061:
	nop                                              ; $4061: $00
	add b                                            ; $4062: $80
	ld e, a                                          ; $4063: $5f
	ldh a, [$b9]                                     ; $4064: $f0 $b9
	ld [hl], a                                       ; $4066: $77
	rst SubAFromHL                                          ; $4067: $d7
	ccf                                              ; $4068: $3f
	db $ed                                           ; $4069: $ed
	ld e, $5f                                        ; $406a: $1e $5f
	or b                                             ; $406c: $b0
	ld a, [hl]                                       ; $406d: $7e
	and c                                            ; $406e: $a1
	ld a, e                                          ; $406f: $7b
	add a                                            ; $4070: $87
	rst FarCall                                          ; $4071: $f7
	adc a                                            ; $4072: $8f
	db $f4                                           ; $4073: $f4
	inc e                                            ; $4074: $1c
	xor $fe                                          ; $4075: $ee $fe
	inc hl                                           ; $4077: $23
	rst SubAFromDE                                          ; $4078: $df
	rst $38                                          ; $4079: $ff
	nop                                              ; $407a: $00
	rst $38                                          ; $407b: $ff
	nop                                              ; $407c: $00
	rst AddAOntoHL                                          ; $407d: $ef
	ldh a, [$fb]                                     ; $407e: $f0 $fb
	db $fc                                           ; $4080: $fc
	sbc [hl]                                         ; $4081: $9e
	sub l                                            ; $4082: $95
	sbc [hl]                                         ; $4083: $9e
	ld b, $01                                        ; $4084: $06 $01
	dec b                                            ; $4086: $05
	inc bc                                           ; $4087: $03
	ld a, [bc]                                       ; $4088: $0a
	ld b, $1c                                        ; $4089: $06 $1c
	nop                                              ; $408b: $00
	ld bc, $fe73                                     ; $408c: $01 $73 $fe
	rst $38                                          ; $408f: $ff
	add d                                            ; $4090: $82
	xor a                                            ; $4091: $af
	rst SubAFromDE                                          ; $4092: $df
	cp e                                             ; $4093: $bb
	rst $38                                          ; $4094: $ff
	ld a, [hl]                                       ; $4095: $7e
	bit 3, e                                         ; $4096: $cb $5b
	ldh [c], a                                       ; $4098: $e2
	ld e, l                                          ; $4099: $5d
	pop hl                                           ; $409a: $e1
	cp $e0                                           ; $409b: $fe $e0
	ld l, a                                          ; $409d: $6f
	ldh a, [$be]                                     ; $409e: $f0 $be
	ldh a, [$c8]                                     ; $40a0: $f0 $c8
	call z, $f8f8                                    ; $40a2: $cc $f8 $f8
	add sp, -$08                                     ; $40a5: $e8 $f8
	ld c, b                                          ; $40a7: $48
	jr c, jr_029_403b                                ; $40a8: $38 $91

	ld [hl], b                                       ; $40aa: $70
	rst SubAFromBC                                          ; $40ab: $e7
	ldh [$1f], a                                     ; $40ac: $e0 $1f
	ld [hl], e                                       ; $40ae: $73
	sbc $fd                                          ; $40af: $de $fd
	sub l                                            ; $40b1: $95
	ld a, h                                          ; $40b2: $7c
	nop                                              ; $40b3: $00
	rst JumpTable                                          ; $40b4: $c7
	jr c, @+$03                                      ; $40b5: $38 $01

	cp $e8                                           ; $40b7: $fe $e8
	db $10                                           ; $40b9: $10
	ret c                                            ; $40ba: $d8

	jr nc, jr_029_40c1                               ; $40bb: $30 $04

	nop                                              ; $40bd: $00
	sbc $55                                          ; $40be: $de $55
	ld e, b                                          ; $40c0: $58

jr_029_40c1:
	add b                                            ; $40c1: $80
	add h                                            ; $40c2: $84
	ld e, a                                          ; $40c3: $5f
	cp c                                             ; $40c4: $b9
	rst SubAFromHL                                          ; $40c5: $d7
	db $ed                                           ; $40c6: $ed
	ld e, a                                          ; $40c7: $5f
	ld a, a                                          ; $40c8: $7f
	ld a, a                                          ; $40c9: $7f
	rst $38                                          ; $40ca: $ff
	ldh a, [rPCM34]                                  ; $40cb: $f0 $77
	ccf                                              ; $40cd: $3f
	ld e, $b0                                        ; $40ce: $1e $b0
	and b                                            ; $40d0: $a0
	add b                                            ; $40d1: $80
	add b                                            ; $40d2: $80
	db $f4                                           ; $40d3: $f4
	xor $23                                          ; $40d4: $ee $23
	rst $38                                          ; $40d6: $ff
	rst $38                                          ; $40d7: $ff
	cp $fe                                           ; $40d8: $fe $fe
	db $fc                                           ; $40da: $fc
	inc e                                            ; $40db: $1c
	cp $df                                           ; $40dc: $fe $df
	db $fc                                           ; $40de: $fc
	sbc e                                            ; $40df: $9b
	ld b, $05                                        ; $40e0: $06 $05
	ld a, [bc]                                       ; $40e2: $0a
	inc e                                            ; $40e3: $1c

jr_029_40e4:
	sbc $01                                          ; $40e4: $de $01
	sbc e                                            ; $40e6: $9b
	nop                                              ; $40e7: $00
	ld bc, $0603                                     ; $40e8: $01 $03 $06
	db $fc                                           ; $40eb: $fc
	add c                                            ; $40ec: $81
	cp a                                             ; $40ed: $bf
	cp [hl]                                          ; $40ee: $be
	ld l, l                                          ; $40ef: $6d
	ld e, e                                          ; $40f0: $5b
	ld e, l                                          ; $40f1: $5d
	cp $6f                                           ; $40f2: $fe $6f
	cp [hl]                                          ; $40f4: $be
	ret nz                                           ; $40f5: $c0

	pop bc                                           ; $40f6: $c1
	sbc $e7                                          ; $40f7: $de $e7
	db $e3                                           ; $40f9: $e3
	ldh [$f0], a                                     ; $40fa: $e0 $f0
	ldh a, [$fc]                                     ; $40fc: $f0 $fc
	jr jr_029_40e4                                   ; $40fe: $18 $e4

	ld a, [$e7d1]                                    ; $4100: $fa $d1 $e7
	rra                                              ; $4103: $1f
	ld bc, $e000                                     ; $4104: $01 $00 $e0
	inc e                                            ; $4107: $1c
	db $fc                                           ; $4108: $fc
	ld hl, sp-$20                                    ; $4109: $f8 $e0
	db $fc                                           ; $410b: $fc
	sbc d                                            ; $410c: $9a
	ld a, h                                          ; $410d: $7c
	rst JumpTable                                          ; $410e: $c7
	ld bc, $d8e8                                     ; $410f: $01 $e8 $d8
	db $fd                                           ; $4112: $fd
	sbc e                                            ; $4113: $9b

jr_029_4114:
	jr c, jr_029_4114                                ; $4114: $38 $fe

	db $10                                           ; $4116: $10
	jr nc, jr_029_411d                               ; $4117: $30 $04

	nop                                              ; $4119: $00
	sbc $55                                          ; $411a: $de $55
	ld e, b                                          ; $411c: $58

jr_029_411d:
	add b                                            ; $411d: $80
	add h                                            ; $411e: $84
	ld e, a                                          ; $411f: $5f
	cp c                                             ; $4120: $b9
	rst SubAFromHL                                          ; $4121: $d7
	db $ed                                           ; $4122: $ed
	ld e, a                                          ; $4123: $5f
	ld a, a                                          ; $4124: $7f
	ld a, a                                          ; $4125: $7f
	rst $38                                          ; $4126: $ff
	ldh a, [rPCM34]                                  ; $4127: $f0 $77
	ccf                                              ; $4129: $3f
	ld e, $b0                                        ; $412a: $1e $b0
	and b                                            ; $412c: $a0
	add b                                            ; $412d: $80
	add b                                            ; $412e: $80
	db $f4                                           ; $412f: $f4
	xor $23                                          ; $4130: $ee $23
	rst $38                                          ; $4132: $ff
	rst $38                                          ; $4133: $ff
	cp $fe                                           ; $4134: $fe $fe
	db $fc                                           ; $4136: $fc
	inc e                                            ; $4137: $1c
	cp $df                                           ; $4138: $fe $df
	db $fc                                           ; $413a: $fc
	sbc e                                            ; $413b: $9b
	ld b, $05                                        ; $413c: $06 $05
	ld a, [bc]                                       ; $413e: $0a
	inc e                                            ; $413f: $1c
	sbc $01                                          ; $4140: $de $01
	sbc e                                            ; $4142: $9b
	nop                                              ; $4143: $00
	ld bc, $0603                                     ; $4144: $01 $03 $06
	db $fc                                           ; $4147: $fc
	rst SubAFromDE                                          ; $4148: $df
	cp a                                             ; $4149: $bf
	add e                                            ; $414a: $83
	ld a, h                                          ; $414b: $7c
	ld e, a                                          ; $414c: $5f
	ld d, a                                          ; $414d: $57
	db $fd                                           ; $414e: $fd
	ld l, a                                          ; $414f: $6f
	cp [hl]                                          ; $4150: $be
	ret nz                                           ; $4151: $c0

	ret nz                                           ; $4152: $c0

jr_029_4153:
	jp $efe0                                         ; $4153: $c3 $e0 $ef


	db $e3                                           ; $4156: $e3
	ldh a, [$f0]                                     ; $4157: $f0 $f0
	db $fc                                           ; $4159: $fc
	ld hl, sp+$08                                    ; $415a: $f8 $08
	cp [hl]                                          ; $415c: $be
	pop af                                           ; $415d: $f1
	rst JumpTable                                          ; $415e: $c7
	rra                                              ; $415f: $1f
	ld bc, $0000                                     ; $4160: $01 $00 $00
	ldh a, [$7c]                                     ; $4163: $f0 $7c
	ld hl, sp-$20                                    ; $4165: $f8 $e0
	db $fc                                           ; $4167: $fc
	sbc d                                            ; $4168: $9a
	ld a, h                                          ; $4169: $7c
	rst JumpTable                                          ; $416a: $c7
	ld bc, $d8e8                                     ; $416b: $01 $e8 $d8
	db $fd                                           ; $416e: $fd
	sbc e                                            ; $416f: $9b

jr_029_4170:
	jr c, jr_029_4170                                ; $4170: $38 $fe

	db $10                                           ; $4172: $10
	jr nc, jr_029_4179                               ; $4173: $30 $04

	nop                                              ; $4175: $00
	sbc $55                                          ; $4176: $de $55
	ld e, h                                          ; $4178: $5c

jr_029_4179:
	nop                                              ; $4179: $00
	add b                                            ; $417a: $80
	ld e, a                                          ; $417b: $5f
	pop af                                           ; $417c: $f1
	cp a                                             ; $417d: $bf
	ld [hl], a                                       ; $417e: $77
	sbc $3f                                          ; $417f: $de $3f
	add sp, $1f                                      ; $4181: $e8 $1f
	ld e, e                                          ; $4183: $5b
	or a                                             ; $4184: $b7
	ld d, a                                          ; $4185: $57
	xor a                                            ; $4186: $af
	ld a, a                                          ; $4187: $7f
	adc a                                            ; $4188: $8f
	ei                                               ; $4189: $fb
	cp a                                             ; $418a: $bf
	db $f4                                           ; $418b: $f4
	db $fc                                           ; $418c: $fc
	xor $fe                                          ; $418d: $ee $fe
	inc hl                                           ; $418f: $23
	rst SubAFromDE                                          ; $4190: $df
	rst AddAOntoHL                                          ; $4191: $ef
	ldh a, [$f7]                                     ; $4192: $f0 $f7
	ld hl, sp+$1b                                    ; $4194: $f8 $1b
	inc e                                            ; $4196: $1c
	adc l                                            ; $4197: $8d
	adc [hl]                                         ; $4198: $8e
	adc $95                                          ; $4199: $ce $95
	call z, $0106                                    ; $419b: $cc $06 $01
	dec b                                            ; $419e: $05
	inc bc                                           ; $419f: $03
	ld a, [bc]                                       ; $41a0: $0a
	ld b, $1c                                        ; $41a1: $06 $1c
	nop                                              ; $41a3: $00
	ld bc, $fe73                                     ; $41a4: $01 $73 $fe
	rst $38                                          ; $41a7: $ff
	add d                                            ; $41a8: $82
	cp [hl]                                          ; $41a9: $be
	jp z, $cbb7                                      ; $41aa: $ca $b7 $cb

	ld a, d                                          ; $41ad: $7a
	jp $e25b                                         ; $41ae: $c3 $5b $e2


	ld e, l                                          ; $41b1: $5d
	pop hl                                           ; $41b2: $e1

jr_029_41b3:
	cp $e0                                           ; $41b3: $fe $e0
	ld l, a                                          ; $41b5: $6f
	ldh a, [$be]                                     ; $41b6: $f0 $be
	ldh a, [$f8]                                     ; $41b8: $f0 $f8
	db $fc                                           ; $41ba: $fc
	ld hl, sp-$08                                    ; $41bb: $f8 $f8
	add sp, -$08                                     ; $41bd: $e8 $f8
	ld c, b                                          ; $41bf: $48
	jr c, jr_029_4153                                ; $41c0: $38 $91

	ld [hl], b                                       ; $41c2: $70
	rst SubAFromBC                                          ; $41c3: $e7
	ldh [$1f], a                                     ; $41c4: $e0 $1f
	ld [hl], e                                       ; $41c6: $73
	sbc $fd                                          ; $41c7: $de $fd
	sub l                                            ; $41c9: $95
	ld a, h                                          ; $41ca: $7c
	nop                                              ; $41cb: $00
	rst JumpTable                                          ; $41cc: $c7
	jr c, @+$03                                      ; $41cd: $38 $01

	cp $e8                                           ; $41cf: $fe $e8
	db $10                                           ; $41d1: $10
	ret c                                            ; $41d2: $d8

	jr nc, jr_029_41d9                               ; $41d3: $30 $04

	nop                                              ; $41d5: $00
	sbc $55                                          ; $41d6: $de $55
	ld e, h                                          ; $41d8: $5c

jr_029_41d9:
	nop                                              ; $41d9: $00
	add b                                            ; $41da: $80
	ld e, a                                          ; $41db: $5f
	pop af                                           ; $41dc: $f1
	cp a                                             ; $41dd: $bf
	ld [hl], a                                       ; $41de: $77
	sbc $3f                                          ; $41df: $de $3f
	jp hl                                            ; $41e1: $e9


	ld e, $5e                                        ; $41e2: $1e $5e
	or c                                             ; $41e4: $b1
	ld e, e                                          ; $41e5: $5b
	and a                                            ; $41e6: $a7
	ld [hl], a                                       ; $41e7: $77
	adc a                                            ; $41e8: $8f
	rst $38                                          ; $41e9: $ff
	adc a                                            ; $41ea: $8f
	db $f4                                           ; $41eb: $f4
	db $fc                                           ; $41ec: $fc
	xor $fe                                          ; $41ed: $ee $fe
	inc hl                                           ; $41ef: $23
	rst SubAFromDE                                          ; $41f0: $df
	rst $38                                          ; $41f1: $ff
	nop                                              ; $41f2: $00
	rra                                              ; $41f3: $1f
	ldh [$f7], a                                     ; $41f4: $e0 $f7
	ld hl, sp-$65                                    ; $41f6: $f8 $9b
	sbc h                                            ; $41f8: $9c
	adc $95                                          ; $41f9: $ce $95
	call z, $0106                                    ; $41fb: $cc $06 $01
	dec b                                            ; $41fe: $05
	inc bc                                           ; $41ff: $03
	ld a, [bc]                                       ; $4200: $0a
	ld b, $1c                                        ; $4201: $06 $1c
	nop                                              ; $4203: $00
	ld bc, $fe73                                     ; $4204: $01 $73 $fe
	rst $38                                          ; $4207: $ff
	add d                                            ; $4208: $82
	cp d                                             ; $4209: $ba
	cp $bf                                           ; $420a: $fe $bf
	bit 7, d                                         ; $420c: $cb $7a
	jp $e25b                                         ; $420e: $c3 $5b $e2


	ld e, l                                          ; $4211: $5d
	pop hl                                           ; $4212: $e1
	cp $e0                                           ; $4213: $fe $e0
	ld l, a                                          ; $4215: $6f
	ldh a, [$be]                                     ; $4216: $f0 $be
	ldh a, [$f8]                                     ; $4218: $f0 $f8
	db $fc                                           ; $421a: $fc
	ld hl, sp-$08                                    ; $421b: $f8 $f8
	add sp, -$08                                     ; $421d: $e8 $f8
	ld c, b                                          ; $421f: $48
	jr c, jr_029_41b3                                ; $4220: $38 $91

	ld [hl], b                                       ; $4222: $70
	rst SubAFromBC                                          ; $4223: $e7
	ldh [$1f], a                                     ; $4224: $e0 $1f
	ld [hl], e                                       ; $4226: $73
	sbc $fd                                          ; $4227: $de $fd
	sub l                                            ; $4229: $95
	ld a, h                                          ; $422a: $7c
	nop                                              ; $422b: $00
	rst JumpTable                                          ; $422c: $c7
	jr c, @+$03                                      ; $422d: $38 $01

	cp $e8                                           ; $422f: $fe $e8
	db $10                                           ; $4231: $10
	ret c                                            ; $4232: $d8

	jr nc, jr_029_4239                               ; $4233: $30 $04

	nop                                              ; $4235: $00
	sbc $55                                          ; $4236: $de $55
	ld d, a                                          ; $4238: $57

jr_029_4239:
	add b                                            ; $4239: $80
	adc h                                            ; $423a: $8c
	ld e, a                                          ; $423b: $5f
	cp a                                             ; $423c: $bf
	sbc $e9                                          ; $423d: $de $e9
	ld e, a                                          ; $423f: $5f
	ld e, a                                          ; $4240: $5f
	ld a, a                                          ; $4241: $7f
	cp $f1                                           ; $4242: $fe $f1
	ld [hl], a                                       ; $4244: $77
	ccf                                              ; $4245: $3f
	ld e, $b0                                        ; $4246: $1e $b0
	and b                                            ; $4248: $a0
	add b                                            ; $4249: $80
	add c                                            ; $424a: $81
	db $f4                                           ; $424b: $f4
	xor $23                                          ; $424c: $ee $23
	db $dd                                           ; $424e: $dd
	rst $38                                          ; $424f: $ff
	sbc e                                            ; $4250: $9b
	ld c, $fc                                        ; $4251: $0e $fc
	cp $df                                           ; $4253: $fe $df
	db $fd                                           ; $4255: $fd
	sbc d                                            ; $4256: $9a
	ldh a, [rTMA]                                    ; $4257: $f0 $06
	dec b                                            ; $4259: $05
	ld a, [bc]                                       ; $425a: $0a
	inc e                                            ; $425b: $1c
	sbc $01                                          ; $425c: $de $01
	sbc e                                            ; $425e: $9b
	nop                                              ; $425f: $00
	ld bc, $0603                                     ; $4260: $01 $03 $06
	db $fc                                           ; $4263: $fc
	add d                                            ; $4264: $82
	cp c                                             ; $4265: $b9
	cp [hl]                                          ; $4266: $be
	ld l, a                                          ; $4267: $6f
	ld e, a                                          ; $4268: $5f
	ld d, c                                          ; $4269: $51
	rst $38                                          ; $426a: $ff
	ld l, a                                          ; $426b: $6f
	cp [hl]                                          ; $426c: $be
	add $c1                                          ; $426d: $c6 $c1
	rst SubAFromDE                                          ; $426f: $df
	db $e3                                           ; $4270: $e3
	rst AddAOntoHL                                          ; $4271: $ef
	ldh [$f0], a                                     ; $4272: $e0 $f0
	ldh a, [$fc]                                     ; $4274: $f0 $fc
	add sp, -$08                                     ; $4276: $e8 $f8
	db $fc                                           ; $4278: $fc
	ld de, $1fff                                     ; $4279: $11 $ff $1f
	ld bc, $f000                                     ; $427c: $01 $00 $f0
	ld hl, sp-$04                                    ; $427f: $f8 $fc
	ld hl, sp-$05                                    ; $4281: $f8 $fb
	sbc d                                            ; $4283: $9a
	ld a, h                                          ; $4284: $7c
	rst JumpTable                                          ; $4285: $c7
	ld bc, $d8e8                                     ; $4286: $01 $e8 $d8
	db $fd                                           ; $4289: $fd
	sbc e                                            ; $428a: $9b

jr_029_428b:
	jr c, jr_029_428b                                ; $428b: $38 $fe

	db $10                                           ; $428d: $10
	jr nc, jr_029_4294                               ; $428e: $30 $04

	nop                                              ; $4290: $00
	sbc $55                                          ; $4291: $de $55
	ld d, [hl]                                       ; $4293: $56

jr_029_4294:
	add b                                            ; $4294: $80
	adc h                                            ; $4295: $8c
	ld e, a                                          ; $4296: $5f
	cp a                                             ; $4297: $bf

Call_029_4298:
	sbc $e9                                          ; $4298: $de $e9
	ld e, a                                          ; $429a: $5f
	ld e, a                                          ; $429b: $5f
	ld a, a                                          ; $429c: $7f
	rst $38                                          ; $429d: $ff
	pop af                                           ; $429e: $f1
	ld [hl], a                                       ; $429f: $77
	ccf                                              ; $42a0: $3f
	ld e, $b0                                        ; $42a1: $1e $b0
	and b                                            ; $42a3: $a0
	add b                                            ; $42a4: $80
	add b                                            ; $42a5: $80
	db $f4                                           ; $42a6: $f4
	xor $23                                          ; $42a7: $ee $23
	db $dd                                           ; $42a9: $dd
	rst $38                                          ; $42aa: $ff
	sbc e                                            ; $42ab: $9b
	cp $fc                                           ; $42ac: $fe $fc
	cp $df                                           ; $42ae: $fe $df
	db $fc                                           ; $42b0: $fc
	sbc e                                            ; $42b1: $9b
	ld b, $05                                        ; $42b2: $06 $05
	ld a, [bc]                                       ; $42b4: $0a
	inc e                                            ; $42b5: $1c
	sbc $01                                          ; $42b6: $de $01
	sbc e                                            ; $42b8: $9b
	nop                                              ; $42b9: $00
	ld bc, $0603                                     ; $42ba: $01 $03 $06
	db $fc                                           ; $42bd: $fc
	add d                                            ; $42be: $82
	cp a                                             ; $42bf: $bf
	cp [hl]                                          ; $42c0: $be
	ld a, a                                          ; $42c1: $7f
	ld e, l                                          ; $42c2: $5d
	ld d, a                                          ; $42c3: $57
	rst $38                                          ; $42c4: $ff
	ld l, a                                          ; $42c5: $6f
	cp [hl]                                          ; $42c6: $be
	ret nz                                           ; $42c7: $c0

	pop bc                                           ; $42c8: $c1
	ret nz                                           ; $42c9: $c0

	db $e3                                           ; $42ca: $e3
	rst AddAOntoHL                                          ; $42cb: $ef
	ldh [$f0], a                                     ; $42cc: $e0 $f0
	ldh a, [$fc]                                     ; $42ce: $f0 $fc
	ld [$f0f8], sp                                   ; $42d0: $08 $f8 $f0
	db $dd                                           ; $42d3: $dd
	rst $38                                          ; $42d4: $ff
	rra                                              ; $42d5: $1f
	ld bc, $f000                                     ; $42d6: $01 $00 $f0

Call_029_42d9:
	nop                                              ; $42d9: $00
	ld hl, sp-$04                                    ; $42da: $f8 $fc
	ei                                               ; $42dc: $fb
	sbc d                                            ; $42dd: $9a
	ld a, h                                          ; $42de: $7c
	rst JumpTable                                          ; $42df: $c7
	ld bc, $d8e8                                     ; $42e0: $01 $e8 $d8
	db $fd                                           ; $42e3: $fd
	sbc e                                            ; $42e4: $9b

jr_029_42e5:
	jr c, jr_029_42e5                                ; $42e5: $38 $fe

	db $10                                           ; $42e7: $10
	jr nc, jr_029_42ee                               ; $42e8: $30 $04

	nop                                              ; $42ea: $00
	sbc $55                                          ; $42eb: $de $55
	ld b, e                                          ; $42ed: $43

jr_029_42ee:
	nop                                              ; $42ee: $00
	add b                                            ; $42ef: $80
	cp [hl]                                          ; $42f0: $be
	sbc h                                            ; $42f1: $9c
	ld a, a                                          ; $42f2: $7f
	ccf                                              ; $42f3: $3f
	add [hl]                                         ; $42f4: $86
	ld a, c                                          ; $42f5: $79
	ccf                                              ; $42f6: $3f
	ret nz                                           ; $42f7: $c0

	sbc $3f                                          ; $42f8: $de $3f
	cp a                                             ; $42fa: $bf
	ld a, a                                          ; $42fb: $7f
	ld [hl], c                                       ; $42fc: $71
	pop af                                           ; $42fd: $f1
	ld hl, sp+$78                                    ; $42fe: $f8 $78
	rra                                              ; $4300: $1f
	add hl, de                                       ; $4301: $19
	db $db                                           ; $4302: $db
	ld de, $c1e1                                     ; $4303: $11 $e1 $c1
	or c                                             ; $4306: $b1
	ld h, c                                          ; $4307: $61
	di                                               ; $4308: $f3
	ld [de], a                                       ; $4309: $12
	and c                                            ; $430a: $a1
	ret nz                                           ; $430b: $c0

	pop de                                           ; $430c: $d1
	ldh [$f2], a                                     ; $430d: $e0 $f2
	sub c                                            ; $430f: $91
	pop hl                                           ; $4310: $e1
	ld a, h                                          ; $4311: $7c
	inc a                                            ; $4312: $3c
	cpl                                              ; $4313: $2f
	ccf                                              ; $4314: $3f
	ld l, $3f                                        ; $4315: $2e $3f
	inc [hl]                                         ; $4317: $34
	inc hl                                           ; $4318: $23
	add hl, de                                       ; $4319: $19
	rla                                              ; $431a: $17
	sbc a                                            ; $431b: $9f
	ld c, $e0                                        ; $431c: $0e $e0
	cp $8f                                           ; $431e: $fe $8f
	or e                                             ; $4320: $b3
	ld sp, hl                                        ; $4321: $f9
	and c                                            ; $4322: $a1
	and e                                            ; $4323: $a3
	add e                                            ; $4324: $83
	add e                                            ; $4325: $83
	add [hl]                                         ; $4326: $86
	add e                                            ; $4327: $83
	rrca                                             ; $4328: $0f
	inc b                                            ; $4329: $04
	inc c                                            ; $432a: $0c
	rlca                                             ; $432b: $07
	rla                                              ; $432c: $17
	rrca                                             ; $432d: $0f
	ld e, $0f                                        ; $432e: $1e $0f
	inc b                                            ; $4330: $04
	nop                                              ; $4331: $00
	rst SubAFromDE                                          ; $4332: $df
	ld d, l                                          ; $4333: $55
	ld b, e                                          ; $4334: $43
	nop                                              ; $4335: $00
	add b                                            ; $4336: $80
	cp [hl]                                          ; $4337: $be
	sbc h                                            ; $4338: $9c
	ld a, a                                          ; $4339: $7f
	ccf                                              ; $433a: $3f
	add [hl]                                         ; $433b: $86
	ld a, c                                          ; $433c: $79
	ccf                                              ; $433d: $3f
	ret nz                                           ; $433e: $c0

	rst $38                                          ; $433f: $ff
	nop                                              ; $4340: $00
	sbc $3f                                          ; $4341: $de $3f
	cp a                                             ; $4343: $bf
	ld a, a                                          ; $4344: $7f
	ld sp, hl                                        ; $4345: $f9
	ld a, c                                          ; $4346: $79
	rra                                              ; $4347: $1f
	add hl, de                                       ; $4348: $19
	db $db                                           ; $4349: $db
	ld de, $c1e1                                     ; $434a: $11 $e1 $c1
	or c                                             ; $434d: $b1
	ld h, c                                          ; $434e: $61
	di                                               ; $434f: $f3
	ld [de], a                                       ; $4350: $12
	pop bc                                           ; $4351: $c1
	nop                                              ; $4352: $00
	and c                                            ; $4353: $a1
	ret nz                                           ; $4354: $c0

	jp nz, $e191                                     ; $4355: $c2 $91 $e1

	ld a, h                                          ; $4358: $7c
	ld a, h                                          ; $4359: $7c
	cpl                                              ; $435a: $2f
	ccf                                              ; $435b: $3f
	ld l, $3f                                        ; $435c: $2e $3f
	inc [hl]                                         ; $435e: $34
	inc hl                                           ; $435f: $23
	add hl, de                                       ; $4360: $19
	rla                                              ; $4361: $17
	sbc a                                            ; $4362: $9f
	ld c, $e0                                        ; $4363: $0e $e0
	cp $8f                                           ; $4365: $fe $8f
	di                                               ; $4367: $f3
	pop hl                                           ; $4368: $e1
	or c                                             ; $4369: $b1
	ei                                               ; $436a: $fb
	db $e3                                           ; $436b: $e3
	and e                                            ; $436c: $a3
	add [hl]                                         ; $436d: $86
	add e                                            ; $436e: $83
	rrca                                             ; $436f: $0f
	inc b                                            ; $4370: $04
	inc c                                            ; $4371: $0c
	rlca                                             ; $4372: $07
	rla                                              ; $4373: $17
	rrca                                             ; $4374: $0f
	ld e, $0f                                        ; $4375: $1e $0f
	inc b                                            ; $4377: $04
	nop                                              ; $4378: $00
	rst SubAFromDE                                          ; $4379: $df
	ld d, l                                          ; $437a: $55
	ld b, b                                          ; $437b: $40
	nop                                              ; $437c: $00
	sub [hl]                                         ; $437d: $96
	cp [hl]                                          ; $437e: $be
	sbc h                                            ; $437f: $9c
	ld a, a                                          ; $4380: $7f
	ccf                                              ; $4381: $3f
	add [hl]                                         ; $4382: $86
	ld a, c                                          ; $4383: $79
	ccf                                              ; $4384: $3f
	ret nz                                           ; $4385: $c0

	db $fc                                           ; $4386: $fc
	cp l                                             ; $4387: $bd
	ld hl, sp-$10                                    ; $4388: $f8 $f0
	ldh [$1f], a                                     ; $438a: $e0 $1f
	sub l                                            ; $438c: $95
	add hl, de                                       ; $438d: $19
	db $db                                           ; $438e: $db
	ld de, $c1e1                                     ; $438f: $11 $e1 $c1
	or c                                             ; $4392: $b1
	ld h, c                                          ; $4393: $61
	inc sp                                           ; $4394: $33
	ld [de], a                                       ; $4395: $12
	ld bc, $01bf                                     ; $4396: $01 $bf $01
	ld [bc], a                                       ; $4399: $02
	ld a, a                                          ; $439a: $7f
	db $fd                                           ; $439b: $fd
	cp a                                             ; $439c: $bf
	ccf                                              ; $439d: $3f
	ld e, b                                          ; $439e: $58
	sub a                                            ; $439f: $97
	ld h, b                                          ; $43a0: $60
	rst $38                                          ; $43a1: $ff
	ccf                                              ; $43a2: $3f
	dec l                                            ; $43a3: $2d
	rra                                              ; $43a4: $1f
	sbc [hl]                                         ; $43a5: $9e
	rrca                                             ; $43a6: $0f
	ldh [$bf], a                                     ; $43a7: $e0 $bf
	nop                                              ; $43a9: $00
	inc bc                                           ; $43aa: $03
	sub b                                            ; $43ab: $90
	ld bc, $0381                                     ; $43ac: $01 $81 $03
	ld h, e                                          ; $43af: $63
	db $e3                                           ; $43b0: $e3
	add $e3                                          ; $43b1: $c6 $e3
	adc a                                            ; $43b3: $8f
	call nz, $078c                                   ; $43b4: $c4 $8c $07
	rla                                              ; $43b7: $17
	rrca                                             ; $43b8: $0f
	ld e, $0f                                        ; $43b9: $1e $0f
	inc b                                            ; $43bb: $04
	nop                                              ; $43bc: $00
	rst SubAFromDE                                          ; $43bd: $df
	ld d, l                                          ; $43be: $55
	ccf                                              ; $43bf: $3f
	nop                                              ; $43c0: $00
	sub [hl]                                         ; $43c1: $96
	cp [hl]                                          ; $43c2: $be
	sbc h                                            ; $43c3: $9c
	ld a, a                                          ; $43c4: $7f
	ccf                                              ; $43c5: $3f
	add [hl]                                         ; $43c6: $86
	ld a, c                                          ; $43c7: $79
	ccf                                              ; $43c8: $3f
	ret nz                                           ; $43c9: $c0

	db $fc                                           ; $43ca: $fc
	cp l                                             ; $43cb: $bd
	ld hl, sp-$10                                    ; $43cc: $f8 $f0
	ldh [$1f], a                                     ; $43ce: $e0 $1f
	sub l                                            ; $43d0: $95
	add hl, de                                       ; $43d1: $19
	db $db                                           ; $43d2: $db
	ld de, $c1e1                                     ; $43d3: $11 $e1 $c1
	or c                                             ; $43d6: $b1
	ld h, c                                          ; $43d7: $61
	inc sp                                           ; $43d8: $33
	ld [de], a                                       ; $43d9: $12
	ld bc, $01bf                                     ; $43da: $01 $bf $01
	ld [bc], a                                       ; $43dd: $02
	ld a, a                                          ; $43de: $7f
	db $fd                                           ; $43df: $fd
	cp [hl]                                          ; $43e0: $be
	inc a                                            ; $43e1: $3c
	inc bc                                           ; $43e2: $03
	db $f4                                           ; $43e3: $f4
	sbc c                                            ; $43e4: $99
	ld a, b                                          ; $43e5: $78
	rra                                              ; $43e6: $1f
	ccf                                              ; $43e7: $3f
	adc [hl]                                         ; $43e8: $8e
	rra                                              ; $43e9: $1f
	ldh [$bf], a                                     ; $43ea: $e0 $bf
	nop                                              ; $43ec: $00
	inc bc                                           ; $43ed: $03
	rst SubAFromDE                                          ; $43ee: $df
	ld bc, $0392                                     ; $43ef: $01 $92 $03
	add e                                            ; $43f2: $83
	inc bc                                           ; $43f3: $03
	ld b, $03                                        ; $43f4: $06 $03
	rst GetHLinHL                                          ; $43f6: $cf
	db $e4                                           ; $43f7: $e4
	adc h                                            ; $43f8: $8c
	rlca                                             ; $43f9: $07
	rla                                              ; $43fa: $17
	rrca                                             ; $43fb: $0f
	ld e, $0f                                        ; $43fc: $1e $0f
	inc b                                            ; $43fe: $04
	nop                                              ; $43ff: $00
	rst SubAFromDE                                          ; $4400: $df
	ld d, l                                          ; $4401: $55
	ld b, e                                          ; $4402: $43
	nop                                              ; $4403: $00
	add b                                            ; $4404: $80
	cp a                                             ; $4405: $bf
	sbc a                                            ; $4406: $9f
	ld a, a                                          ; $4407: $7f
	ccf                                              ; $4408: $3f
	adc [hl]                                         ; $4409: $8e
	ld [hl], c                                       ; $440a: $71
	ld c, $ff                                        ; $440b: $0e $ff
	rst SubAFromDE                                          ; $440d: $df
	ccf                                              ; $440e: $3f
	or c                                             ; $440f: $b1
	ld [hl], c                                       ; $4410: $71
	ld a, b                                          ; $4411: $78
	ld hl, sp-$04                                    ; $4412: $f8 $fc
	ld a, h                                          ; $4414: $7c
	rra                                              ; $4415: $1f
	add hl, de                                       ; $4416: $19
	db $db                                           ; $4417: $db
	sub c                                            ; $4418: $91
	pop hl                                           ; $4419: $e1
	pop bc                                           ; $441a: $c1
	or c                                             ; $441b: $b1
	ld h, c                                          ; $441c: $61
	or e                                             ; $441d: $b3
	jp nz, $e0c1                                     ; $441e: $c2 $c1 $e0

	pop hl                                           ; $4421: $e1
	ldh a, [$b2]                                     ; $4422: $f0 $b2
	sub c                                            ; $4424: $91
	ld sp, hl                                        ; $4425: $f9
	ld l, a                                          ; $4426: $6f
	cpl                                              ; $4427: $2f
	ccf                                              ; $4428: $3f
	ccf                                              ; $4429: $3f
	ld l, $3f                                        ; $442a: $2e $3f
	inc [hl]                                         ; $442c: $34
	inc hl                                           ; $442d: $23
	add hl, de                                       ; $442e: $19
	rla                                              ; $442f: $17
	sbc a                                            ; $4430: $9f
	ld c, $e0                                        ; $4431: $0e $e0
	cp $8f                                           ; $4433: $fe $8f
	db $e3                                           ; $4435: $e3
	and c                                            ; $4436: $a1
	add c                                            ; $4437: $81
	and e                                            ; $4438: $a3
	add e                                            ; $4439: $83
	add e                                            ; $443a: $83
	add [hl]                                         ; $443b: $86
	add e                                            ; $443c: $83
	rrca                                             ; $443d: $0f
	inc b                                            ; $443e: $04
	inc c                                            ; $443f: $0c
	rlca                                             ; $4440: $07
	rla                                              ; $4441: $17
	rrca                                             ; $4442: $0f
	ld e, $0f                                        ; $4443: $1e $0f
	inc b                                            ; $4445: $04
	nop                                              ; $4446: $00
	rst SubAFromDE                                          ; $4447: $df
	ld d, l                                          ; $4448: $55
	ld b, e                                          ; $4449: $43
	nop                                              ; $444a: $00
	add b                                            ; $444b: $80
	cp a                                             ; $444c: $bf
	sbc a                                            ; $444d: $9f
	ld a, a                                          ; $444e: $7f
	ccf                                              ; $444f: $3f
	adc [hl]                                         ; $4450: $8e
	ld [hl], c                                       ; $4451: $71
	ccf                                              ; $4452: $3f
	ret nz                                           ; $4453: $c0

	ldh [$1f], a                                     ; $4454: $e0 $1f
	rst SubAFromDE                                          ; $4456: $df
	ccf                                              ; $4457: $3f
	cp c                                             ; $4458: $b9
	ld a, c                                          ; $4459: $79
	db $fc                                           ; $445a: $fc
	ld a, h                                          ; $445b: $7c
	rra                                              ; $445c: $1f
	add hl, de                                       ; $445d: $19
	db $db                                           ; $445e: $db
	sub c                                            ; $445f: $91
	pop hl                                           ; $4460: $e1
	pop bc                                           ; $4461: $c1
	or c                                             ; $4462: $b1
	ld h, c                                          ; $4463: $61
	di                                               ; $4464: $f3
	ld [bc], a                                       ; $4465: $02
	add c                                            ; $4466: $81
	ret nz                                           ; $4467: $c0

	pop bc                                           ; $4468: $c1
	ldh [$e2], a                                     ; $4469: $e0 $e2
	sub c                                            ; $446b: $91
	pop af                                           ; $446c: $f1
	ld l, a                                          ; $446d: $6f
	ld l, a                                          ; $446e: $6f
	ccf                                              ; $446f: $3f
	ccf                                              ; $4470: $3f
	ld l, $3f                                        ; $4471: $2e $3f
	inc [hl]                                         ; $4473: $34
	inc hl                                           ; $4474: $23
	add hl, de                                       ; $4475: $19
	rla                                              ; $4476: $17
	sbc a                                            ; $4477: $9f
	ld c, $e0                                        ; $4478: $0e $e0
	cp $8f                                           ; $447a: $fe $8f
	di                                               ; $447c: $f3
	cp c                                             ; $447d: $b9
	and c                                            ; $447e: $a1
	and e                                            ; $447f: $a3
	add e                                            ; $4480: $83
	add e                                            ; $4481: $83
	add [hl]                                         ; $4482: $86
	add e                                            ; $4483: $83
	rrca                                             ; $4484: $0f
	inc b                                            ; $4485: $04
	inc c                                            ; $4486: $0c
	rlca                                             ; $4487: $07
	rla                                              ; $4488: $17
	rrca                                             ; $4489: $0f
	ld e, $0f                                        ; $448a: $1e $0f
	inc b                                            ; $448c: $04
	nop                                              ; $448d: $00
	rst SubAFromDE                                          ; $448e: $df
	ld d, l                                          ; $448f: $55
	ld b, b                                          ; $4490: $40
	nop                                              ; $4491: $00
	sub [hl]                                         ; $4492: $96
	cp a                                             ; $4493: $bf
	sbc a                                            ; $4494: $9f
	ld a, a                                          ; $4495: $7f
	ccf                                              ; $4496: $3f
	adc [hl]                                         ; $4497: $8e
	ld [hl], c                                       ; $4498: $71
	rra                                              ; $4499: $1f
	ldh [$fc], a                                     ; $449a: $e0 $fc
	cp l                                             ; $449c: $bd
	ld hl, sp-$10                                    ; $449d: $f8 $f0
	rst $38                                          ; $449f: $ff
	rra                                              ; $44a0: $1f
	sub l                                            ; $44a1: $95
	add hl, de                                       ; $44a2: $19
	db $db                                           ; $44a3: $db
	sub c                                            ; $44a4: $91
	pop hl                                           ; $44a5: $e1
	pop bc                                           ; $44a6: $c1
	or c                                             ; $44a7: $b1
	ld h, c                                          ; $44a8: $61
	and e                                            ; $44a9: $a3
	ld b, d                                          ; $44aa: $42
	ld bc, $01bf                                     ; $44ab: $01 $bf $01
	ld [bc], a                                       ; $44ae: $02
	sub e                                            ; $44af: $93
	ld bc, $0020                                     ; $44b0: $01 $20 $00
	ld c, $1f                                        ; $44b3: $0e $1f
	rra                                              ; $44b5: $1f
	ccf                                              ; $44b6: $3f
	ld a, a                                          ; $44b7: $7f
	ld a, a                                          ; $44b8: $7f
	dec d                                            ; $44b9: $15
	dec sp                                           ; $44ba: $3b
	add b                                            ; $44bb: $80
	cp [hl]                                          ; $44bc: $be
	ldh [rP1], a                                     ; $44bd: $e0 $00

Call_029_44bf:
	inc bc                                           ; $44bf: $03
	rst SubAFromDE                                          ; $44c0: $df
	ld bc, $0392                                     ; $44c1: $01 $92 $03
	db $e3                                           ; $44c4: $e3
	di                                               ; $44c5: $f3
	add [hl]                                         ; $44c6: $86
	jp $04ef                                         ; $44c7: $c3 $ef $04


	inc c                                            ; $44ca: $0c
	rlca                                             ; $44cb: $07
	rla                                              ; $44cc: $17
	rrca                                             ; $44cd: $0f
	ld e, $0f                                        ; $44ce: $1e $0f
	inc b                                            ; $44d0: $04
	nop                                              ; $44d1: $00
	rst SubAFromDE                                          ; $44d2: $df
	ld d, l                                          ; $44d3: $55
	dec a                                            ; $44d4: $3d
	nop                                              ; $44d5: $00
	sub [hl]                                         ; $44d6: $96
	cp a                                             ; $44d7: $bf
	sbc a                                            ; $44d8: $9f
	ld a, a                                          ; $44d9: $7f
	ccf                                              ; $44da: $3f
	adc [hl]                                         ; $44db: $8e
	ld [hl], c                                       ; $44dc: $71
	rra                                              ; $44dd: $1f
	ldh [$fc], a                                     ; $44de: $e0 $fc
	cp l                                             ; $44e0: $bd
	ld hl, sp-$10                                    ; $44e1: $f8 $f0
	ldh [$1f], a                                     ; $44e3: $e0 $1f
	sub l                                            ; $44e5: $95
	add hl, de                                       ; $44e6: $19
	db $db                                           ; $44e7: $db
	sub c                                            ; $44e8: $91
	pop hl                                           ; $44e9: $e1
	pop bc                                           ; $44ea: $c1
	or c                                             ; $44eb: $b1
	ld h, c                                          ; $44ec: $61
	and e                                            ; $44ed: $a3
	ld b, d                                          ; $44ee: $42
	ld bc, $01bf                                     ; $44ef: $01 $bf $01
	ld [bc], a                                       ; $44f2: $02
	ld a, a                                          ; $44f3: $7f
	db $fd                                           ; $44f4: $fd
	cp [hl]                                          ; $44f5: $be
	rra                                              ; $44f6: $1f
	jr nz, jr_029_4518                               ; $44f7: $20 $1f

	sbc e                                            ; $44f9: $9b
	ccf                                              ; $44fa: $3f
	ld [hl], a                                       ; $44fb: $77
	ld a, a                                          ; $44fc: $7f
	add b                                            ; $44fd: $80
	cp [hl]                                          ; $44fe: $be
	ldh [rP1], a                                     ; $44ff: $e0 $00
	inc bc                                           ; $4501: $03
	rst SubAFromDE                                          ; $4502: $df
	ld bc, $03de                                     ; $4503: $01 $de $03
	sub l                                            ; $4506: $95
	ld b, $83                                        ; $4507: $06 $83
	rst GetHLinHL                                          ; $4509: $cf
	db $e4                                           ; $450a: $e4
	inc c                                            ; $450b: $0c
	rlca                                             ; $450c: $07
	rla                                              ; $450d: $17
	rrca                                             ; $450e: $0f
	ld e, $0f                                        ; $450f: $1e $0f
	inc b                                            ; $4511: $04
	nop                                              ; $4512: $00
	rst SubAFromDE                                          ; $4513: $df
	ld d, l                                          ; $4514: $55
	ld a, [hl-]                                      ; $4515: $3a
	nop                                              ; $4516: $00
	sub [hl]                                         ; $4517: $96

jr_029_4518:
	ld d, a                                          ; $4518: $57
	nop                                              ; $4519: $00
	adc [hl]                                         ; $451a: $8e
	ld bc, $0106                                     ; $451b: $01 $06 $01
	inc bc                                           ; $451e: $03
	ld bc, $bf00                                     ; $451f: $01 $00 $bf
	ld b, $02                                        ; $4522: $06 $02
	sbc l                                            ; $4524: $9d
	inc bc                                           ; $4525: $03
	nop                                              ; $4526: $00
	cp [hl]                                          ; $4527: $be
	dec b                                            ; $4528: $05
	nop                                              ; $4529: $00
	nop                                              ; $452a: $00
	sbc $80                                          ; $452b: $de $80
	rst $38                                          ; $452d: $ff
	sbc d                                            ; $452e: $9a
	jr nc, jr_029_4531                               ; $452f: $30 $00

jr_029_4531:
	and b                                            ; $4531: $a0
	ld h, b                                          ; $4532: $60
	nop                                              ; $4533: $00
	cp h                                             ; $4534: $bc
	ld bc, $c080                                     ; $4535: $01 $80 $c0
	ldh [$f0], a                                     ; $4538: $e0 $f0
	sub a                                            ; $453a: $97
	add b                                            ; $453b: $80
	db $fc                                           ; $453c: $fc
	ldh [$fe], a                                     ; $453d: $e0 $fe
	ld hl, sp-$01                                    ; $453f: $f8 $ff
	rst $38                                          ; $4541: $ff
	ret nz                                           ; $4542: $c0

	cp h                                             ; $4543: $bc
	add b                                            ; $4544: $80
	nop                                              ; $4545: $00
	nop                                              ; $4546: $00
	ld bc, $9a07                                     ; $4547: $01 $07 $9a
	inc bc                                           ; $454a: $03
	dec c                                            ; $454b: $0d
	ld b, $ff                                        ; $454c: $06 $ff
	jr jr_029_4554                                   ; $454e: $18 $04

jr_029_4550:
	nop                                              ; $4550: $00
	rst SubAFromDE                                          ; $4551: $df
	ld b, h                                          ; $4552: $44
	dec sp                                           ; $4553: $3b

jr_029_4554:
	nop                                              ; $4554: $00
	sub [hl]                                         ; $4555: $96
	ld d, a                                          ; $4556: $57
	nop                                              ; $4557: $00
	adc [hl]                                         ; $4558: $8e
	ld bc, $0106                                     ; $4559: $01 $06 $01
	inc bc                                           ; $455c: $03
	ld bc, $bf00                                     ; $455d: $01 $00 $bf
	ld b, $02                                        ; $4560: $06 $02
	sbc e                                            ; $4562: $9b
	inc bc                                           ; $4563: $03
	nop                                              ; $4564: $00
	ld bc, $fd05                                     ; $4565: $01 $05 $fd
	sbc $80                                          ; $4568: $de $80
	rst $38                                          ; $456a: $ff
	sbc e                                            ; $456b: $9b
	jr nc, jr_029_456e                               ; $456c: $30 $00

jr_029_456e:
	jr nz, jr_029_4550                               ; $456e: $20 $e0

	cp a                                             ; $4570: $bf
	ret nz                                           ; $4571: $c0

	nop                                              ; $4572: $00
	sbc [hl]                                         ; $4573: $9e
	add c                                            ; $4574: $81
	cp [hl]                                          ; $4575: $be
	ret nz                                           ; $4576: $c0

	ldh [$f0], a                                     ; $4577: $e0 $f0
	sub a                                            ; $4579: $97
	add b                                            ; $457a: $80
	db $fc                                           ; $457b: $fc
	ldh [$fe], a                                     ; $457c: $e0 $fe
	ld hl, sp-$01                                    ; $457e: $f8 $ff
	rst $38                                          ; $4580: $ff
	nop                                              ; $4581: $00
	cp h                                             ; $4582: $bc
	ret nz                                           ; $4583: $c0

	add b                                            ; $4584: $80
	nop                                              ; $4585: $00
	ld bc, $9a07                                     ; $4586: $01 $07 $9a
	inc bc                                           ; $4589: $03
	dec c                                            ; $458a: $0d
	ld b, $ff                                        ; $458b: $06 $ff
	jr jr_029_4593                                   ; $458d: $18 $04

	nop                                              ; $458f: $00
	rst SubAFromDE                                          ; $4590: $df
	ld b, h                                          ; $4591: $44
	inc a                                            ; $4592: $3c

jr_029_4593:
	nop                                              ; $4593: $00
	sub [hl]                                         ; $4594: $96
	ld d, a                                          ; $4595: $57
	nop                                              ; $4596: $00
	adc [hl]                                         ; $4597: $8e
	ld bc, $0106                                     ; $4598: $01 $06 $01
	inc bc                                           ; $459b: $03
	ld bc, $bf00                                     ; $459c: $01 $00 $bf
	ld b, $03                                        ; $459f: $06 $03
	rst SubAFromDE                                          ; $45a1: $df
	inc bc                                           ; $45a2: $03
	sbc l                                            ; $45a3: $9d
	ld bc, $fd05                                     ; $45a4: $01 $05 $fd
	sbc $80                                          ; $45a7: $de $80
	rst $38                                          ; $45a9: $ff
	sbc l                                            ; $45aa: $9d
	jr nc, jr_029_45ad                               ; $45ab: $30 $00

jr_029_45ad:
	sbc $e0                                          ; $45ad: $de $e0
	sbc l                                            ; $45af: $9d
	ret nz                                           ; $45b0: $c0

	ld bc, $80bd                                     ; $45b1: $01 $bd $80
	pop bc                                           ; $45b4: $c1
	ldh [$f0], a                                     ; $45b5: $e0 $f0
	sub a                                            ; $45b7: $97
	add b                                            ; $45b8: $80
	db $fc                                           ; $45b9: $fc
	ldh [$fe], a                                     ; $45ba: $e0 $fe
	ld hl, sp-$01                                    ; $45bc: $f8 $ff
	rst $38                                          ; $45be: $ff
	ret nz                                           ; $45bf: $c0

	ld a, e                                          ; $45c0: $7b
	and $9e                                          ; $45c1: $e6 $9e
	ret nz                                           ; $45c3: $c0

	cp [hl]                                          ; $45c4: $be
	add b                                            ; $45c5: $80
	ld bc, $9a07                                     ; $45c6: $01 $07 $9a
	inc bc                                           ; $45c9: $03
	dec c                                            ; $45ca: $0d
	ld b, $ff                                        ; $45cb: $06 $ff
	jr @+$06                                         ; $45cd: $18 $04

	nop                                              ; $45cf: $00
	rst SubAFromDE                                          ; $45d0: $df
	ld b, h                                          ; $45d1: $44
	ld a, $00                                        ; $45d2: $3e $00
	sub [hl]                                         ; $45d4: $96
	ld d, a                                          ; $45d5: $57
	nop                                              ; $45d6: $00
	adc [hl]                                         ; $45d7: $8e
	ld bc, $0106                                     ; $45d8: $01 $06 $01
	inc bc                                           ; $45db: $03
	ld bc, $bf00                                     ; $45dc: $01 $00 $bf
	ld b, $03                                        ; $45df: $06 $03
	rst SubAFromDE                                          ; $45e1: $df
	inc bc                                           ; $45e2: $03
	sbc l                                            ; $45e3: $9d
	ld bc, $fd05                                     ; $45e4: $01 $05 $fd
	sbc $80                                          ; $45e7: $de $80
	rst $38                                          ; $45e9: $ff
	sbc l                                            ; $45ea: $9d
	jr nc, jr_029_45ed                               ; $45eb: $30 $00

jr_029_45ed:
	sbc $e0                                          ; $45ed: $de $e0
	sbc e                                            ; $45ef: $9b
	ret nz                                           ; $45f0: $c0

	nop                                              ; $45f1: $00
	ld bc, $be80                                     ; $45f2: $01 $80 $be
	ret nz                                           ; $45f5: $c0

	pop hl                                           ; $45f6: $e1
	ldh a, [hDisp1_WX]                                     ; $45f7: $f0 $96
	add b                                            ; $45f9: $80
	db $fc                                           ; $45fa: $fc
	ldh [$fe], a                                     ; $45fb: $e0 $fe
	ld hl, sp-$01                                    ; $45fd: $f8 $ff
	rst $38                                          ; $45ff: $ff
	add b                                            ; $4600: $80
	ret nz                                           ; $4601: $c0

	cp a                                             ; $4602: $bf
	add b                                            ; $4603: $80
	nop                                              ; $4604: $00
	ld a, a                                          ; $4605: $7f
	ei                                               ; $4606: $fb
	sub a                                            ; $4607: $97
	add c                                            ; $4608: $81
	nop                                              ; $4609: $00
	rlca                                             ; $460a: $07
	inc bc                                           ; $460b: $03
	dec c                                            ; $460c: $0d
	ld b, $ff                                        ; $460d: $06 $ff
	jr jr_029_4615                                   ; $460f: $18 $04

	nop                                              ; $4611: $00
	rst SubAFromDE                                          ; $4612: $df
	ld b, h                                          ; $4613: $44
	ld a, [hl-]                                      ; $4614: $3a

jr_029_4615:
	nop                                              ; $4615: $00
	sub b                                            ; $4616: $90
	ld d, a                                          ; $4617: $57
	nop                                              ; $4618: $00
	adc [hl]                                         ; $4619: $8e
	ld bc, $0106                                     ; $461a: $01 $06 $01
	inc bc                                           ; $461d: $03
	ld bc, $0000                                     ; $461e: $01 $00 $00
	ld a, [bc]                                       ; $4621: $0a
	inc b                                            ; $4622: $04
	ld b, $03                                        ; $4623: $06 $03
	nop                                              ; $4625: $00
	cp [hl]                                          ; $4626: $be
	dec b                                            ; $4627: $05
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	sbc $80                                          ; $462a: $de $80
	rst $38                                          ; $462c: $ff
	sbc d                                            ; $462d: $9a
	jr z, jr_029_4640                                ; $462e: $28 $10

	or b                                             ; $4630: $b0
	ld h, b                                          ; $4631: $60
	nop                                              ; $4632: $00
	cp h                                             ; $4633: $bc
	ld bc, $c080                                     ; $4634: $01 $80 $c0
	ldh [$f0], a                                     ; $4637: $e0 $f0
	sub a                                            ; $4639: $97
	add b                                            ; $463a: $80
	db $fc                                           ; $463b: $fc
	ldh [$fe], a                                     ; $463c: $e0 $fe
	ld hl, sp-$01                                    ; $463e: $f8 $ff

jr_029_4640:
	rst $38                                          ; $4640: $ff
	ret nz                                           ; $4641: $c0

	cp h                                             ; $4642: $bc
	add b                                            ; $4643: $80
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	ld bc, $9a07                                     ; $4646: $01 $07 $9a
	inc bc                                           ; $4649: $03
	dec c                                            ; $464a: $0d
	ld b, $ff                                        ; $464b: $06 $ff
	jr jr_029_4653                                   ; $464d: $18 $04

	nop                                              ; $464f: $00
	rst SubAFromDE                                          ; $4650: $df
	ld b, h                                          ; $4651: $44
	ld a, [hl-]                                      ; $4652: $3a

jr_029_4653:
	nop                                              ; $4653: $00
	adc [hl]                                         ; $4654: $8e
	ld d, a                                          ; $4655: $57
	nop                                              ; $4656: $00
	adc [hl]                                         ; $4657: $8e
	ld bc, $0106                                     ; $4658: $01 $06 $01
	inc bc                                           ; $465b: $03
	ld bc, $0000                                     ; $465c: $01 $00 $00

jr_029_465f:
	ld a, [bc]                                       ; $465f: $0a
	inc b                                            ; $4660: $04
	ld b, $07                                        ; $4661: $06 $07
	ld bc, $0503                                     ; $4663: $01 $03 $05
	db $fd                                           ; $4666: $fd
	sbc $80                                          ; $4667: $de $80
	rst $38                                          ; $4669: $ff
	sbc b                                            ; $466a: $98
	jr z, @+$12                                      ; $466b: $28 $10

	jr nc, jr_029_465f                               ; $466d: $30 $f0

	ret nz                                           ; $466f: $c0

	ldh [rP1], a                                     ; $4670: $e0 $00
	cp l                                             ; $4672: $bd
	add c                                            ; $4673: $81
	ret nz                                           ; $4674: $c0

	ldh [$f0], a                                     ; $4675: $e0 $f0
	sub a                                            ; $4677: $97
	add b                                            ; $4678: $80
	db $fc                                           ; $4679: $fc
	ldh [$fe], a                                     ; $467a: $e0 $fe
	ld hl, sp-$01                                    ; $467c: $f8 $ff

Call_029_467e:
	rst $38                                          ; $467e: $ff
	nop                                              ; $467f: $00
	cp h                                             ; $4680: $bc
	ret nz                                           ; $4681: $c0

	add b                                            ; $4682: $80
	nop                                              ; $4683: $00
	ld bc, $9a07                                     ; $4684: $01 $07 $9a
	inc bc                                           ; $4687: $03
	dec c                                            ; $4688: $0d
	ld b, $ff                                        ; $4689: $06 $ff
	jr jr_029_4691                                   ; $468b: $18 $04

	nop                                              ; $468d: $00
	rst SubAFromDE                                          ; $468e: $df
	ld b, h                                          ; $468f: $44
	inc a                                            ; $4690: $3c

jr_029_4691:
	nop                                              ; $4691: $00
	adc [hl]                                         ; $4692: $8e
	ld d, a                                          ; $4693: $57
	nop                                              ; $4694: $00
	adc [hl]                                         ; $4695: $8e
	ld bc, $0106                                     ; $4696: $01 $06 $01
	inc bc                                           ; $4699: $03
	ld bc, $0000                                     ; $469a: $01 $00 $00
	ld a, [bc]                                       ; $469d: $0a
	inc b                                            ; $469e: $04
	rlca                                             ; $469f: $07
	rlca                                             ; $46a0: $07
	inc bc                                           ; $46a1: $03
	inc bc                                           ; $46a2: $03
	dec b                                            ; $46a3: $05
	db $fd                                           ; $46a4: $fd
	sbc $80                                          ; $46a5: $de $80
	rst $38                                          ; $46a7: $ff
	sub [hl]                                         ; $46a8: $96
	jr z, jr_029_46bb                                ; $46a9: $28 $10

	ldh a, [$f0]                                     ; $46ab: $f0 $f0
	ldh [$e0], a                                     ; $46ad: $e0 $e0
	ld bc, $8001                                     ; $46af: $01 $01 $80
	cp [hl]                                          ; $46b2: $be
	pop bc                                           ; $46b3: $c1
	ldh [$f0], a                                     ; $46b4: $e0 $f0
	sub l                                            ; $46b6: $95
	add b                                            ; $46b7: $80
	db $fc                                           ; $46b8: $fc
	ldh [$fe], a                                     ; $46b9: $e0 $fe

jr_029_46bb:
	ld hl, sp-$01                                    ; $46bb: $f8 $ff
	rst $38                                          ; $46bd: $ff
	ld b, b                                          ; $46be: $40
	ret nz                                           ; $46bf: $c0

	nop                                              ; $46c0: $00
	cp l                                             ; $46c1: $bd
	ret nz                                           ; $46c2: $c0

	add b                                            ; $46c3: $80
	ld bc, $9a07                                     ; $46c4: $01 $07 $9a
	inc bc                                           ; $46c7: $03
	dec c                                            ; $46c8: $0d
	ld b, $ff                                        ; $46c9: $06 $ff
	jr @+$06                                         ; $46cb: $18 $04

	nop                                              ; $46cd: $00
	rst SubAFromDE                                          ; $46ce: $df
	ld b, h                                          ; $46cf: $44
	ld a, $00                                        ; $46d0: $3e $00
	adc [hl]                                         ; $46d2: $8e
	ld d, a                                          ; $46d3: $57
	nop                                              ; $46d4: $00
	adc [hl]                                         ; $46d5: $8e
	ld bc, $0106                                     ; $46d6: $01 $06 $01
	inc bc                                           ; $46d9: $03
	ld bc, $0000                                     ; $46da: $01 $00 $00
	ld a, [bc]                                       ; $46dd: $0a
	inc b                                            ; $46de: $04
	rlca                                             ; $46df: $07
	rlca                                             ; $46e0: $07
	inc bc                                           ; $46e1: $03
	inc bc                                           ; $46e2: $03
	dec b                                            ; $46e3: $05
	db $fd                                           ; $46e4: $fd
	sbc $80                                          ; $46e5: $de $80
	rst $38                                          ; $46e7: $ff
	sub [hl]                                         ; $46e8: $96
	jr z, jr_029_46fb                                ; $46e9: $28 $10

	ldh a, [$f0]                                     ; $46eb: $f0 $f0
	ldh [$e0], a                                     ; $46ed: $e0 $e0
	ld bc, $8101                                     ; $46ef: $01 $01 $81
	cp [hl]                                          ; $46f2: $be
	ret nz                                           ; $46f3: $c0

	pop hl                                           ; $46f4: $e1
	ldh a, [hDisp1_WY]                                     ; $46f5: $f0 $95
	add b                                            ; $46f7: $80
	db $fc                                           ; $46f8: $fc
	ldh [$fe], a                                     ; $46f9: $e0 $fe

jr_029_46fb:
	ld hl, sp-$01                                    ; $46fb: $f8 $ff
	rst $38                                          ; $46fd: $ff
	ld b, b                                          ; $46fe: $40
	ret nz                                           ; $46ff: $c0

	ld b, b                                          ; $4700: $40
	ld a, e                                          ; $4701: $7b
	db $e4                                           ; $4702: $e4
	ld a, a                                          ; $4703: $7f
	xor $7f                                          ; $4704: $ee $7f
	ld [$d37f], a                                    ; $4706: $ea $7f $d3
	sbc e                                            ; $4709: $9b
	dec c                                            ; $470a: $0d
	ld b, $ff                                        ; $470b: $06 $ff
	jr jr_029_4713                                   ; $470d: $18 $04

	nop                                              ; $470f: $00
	rst SubAFromDE                                          ; $4710: $df
	ld b, h                                          ; $4711: $44
	add hl, hl                                       ; $4712: $29

jr_029_4713:
	nop                                              ; $4713: $00
	pop af                                           ; $4714: $f1
	sbc [hl]                                         ; $4715: $9e
	ld a, b                                          ; $4716: $78
	ld a, e                                          ; $4717: $7b
	cp $99                                           ; $4718: $fe $99
	ld a, h                                          ; $471a: $7c
	inc b                                            ; $471b: $04
	ld a, [hl]                                       ; $471c: $7e
	inc c                                            ; $471d: $0c
	inc a                                            ; $471e: $3c
	ld [$9dfd], sp                                   ; $471f: $08 $fd $9d

jr_029_4722:
	ld e, b                                          ; $4722: $58
	jr c, jr_029_4722                                ; $4723: $38 $fd

	sbc [hl]                                         ; $4725: $9e
	add b                                            ; $4726: $80
	ld a, e                                          ; $4727: $7b
	cp $93                                           ; $4728: $fe $93
	ret nz                                           ; $472a: $c0

	nop                                              ; $472b: $00
	ldh [rP1], a                                     ; $472c: $e0 $00
	ldh a, [$c0]                                     ; $472e: $f0 $c0
	ld hl, sp-$10                                    ; $4730: $f8 $f0
	cp b                                             ; $4732: $b8
	ld h, h                                          ; $4733: $64
	nop                                              ; $4734: $00
	nop                                              ; $4735: $00
	ld [hl], e                                       ; $4736: $73
	db $eb                                           ; $4737: $eb
	db $fc                                           ; $4738: $fc
	rst SubAFromDE                                          ; $4739: $df
	ld bc, $0004                                     ; $473a: $01 $04 $00
	rst SubAFromDE                                          ; $473d: $df
	ld d, l                                          ; $473e: $55
	add hl, hl                                       ; $473f: $29
	nop                                              ; $4740: $00
	pop af                                           ; $4741: $f1
	sbc [hl]                                         ; $4742: $9e
	ld a, b                                          ; $4743: $78
	ld a, e                                          ; $4744: $7b
	cp $99                                           ; $4745: $fe $99
	ld a, h                                          ; $4747: $7c
	inc b                                            ; $4748: $04
	ld a, [hl]                                       ; $4749: $7e
	inc c                                            ; $474a: $0c
	inc a                                            ; $474b: $3c
	ld [$f273], sp                                   ; $474c: $08 $73 $f2

jr_029_474f:
	sbc [hl]                                         ; $474f: $9e
	jr c, jr_029_474f                                ; $4750: $38 $fd

	sbc [hl]                                         ; $4752: $9e
	add b                                            ; $4753: $80
	ld a, e                                          ; $4754: $7b
	cp $95                                           ; $4755: $fe $95
	ret nz                                           ; $4757: $c0

	nop                                              ; $4758: $00
	ldh [rP1], a                                     ; $4759: $e0 $00
	ldh a, [$c0]                                     ; $475b: $f0 $c0
	ld hl, sp-$10                                    ; $475d: $f8 $f0
	ld hl, sp+$6c                                    ; $475f: $f8 $6c
	ld [hl], a                                       ; $4761: $77
	db $ec                                           ; $4762: $ec
	sbc [hl]                                         ; $4763: $9e
	jr nc, @-$04                                     ; $4764: $30 $fa

	rst SubAFromDE                                          ; $4766: $df
	ld bc, $0004                                     ; $4767: $01 $04 $00
	rst SubAFromDE                                          ; $476a: $df
	ld d, l                                          ; $476b: $55
	inc l                                            ; $476c: $2c
	nop                                              ; $476d: $00
	pop af                                           ; $476e: $f1
	sbc [hl]                                         ; $476f: $9e
	ld a, b                                          ; $4770: $78
	cp a                                             ; $4771: $bf
	ld a, b                                          ; $4772: $78
	ld a, h                                          ; $4773: $7c
	sbc d                                            ; $4774: $9a
	inc b                                            ; $4775: $04
	ld a, [hl]                                       ; $4776: $7e
	inc c                                            ; $4777: $0c
	inc a                                            ; $4778: $3c
	ld [$f273], sp                                   ; $4779: $08 $73 $f2

jr_029_477c:
	sbc [hl]                                         ; $477c: $9e
	jr c, jr_029_477c                                ; $477d: $38 $fd

	sbc [hl]                                         ; $477f: $9e
	add b                                            ; $4780: $80
	cp l                                             ; $4781: $bd
	add b                                            ; $4782: $80
	ret nz                                           ; $4783: $c0

	ldh [$f0], a                                     ; $4784: $e0 $f0
	sub l                                            ; $4786: $95
	ret nz                                           ; $4787: $c0

	ld hl, sp-$10                                    ; $4788: $f8 $f0
	ld hl, sp+$4c                                    ; $478a: $f8 $4c
	db $fc                                           ; $478c: $fc
	ld a, b                                          ; $478d: $78
	ld a, b                                          ; $478e: $78
	jr nc, jr_029_4791                               ; $478f: $30 $00

jr_029_4791:
	cp l                                             ; $4791: $bd
	jr nc, jr_029_4794                               ; $4792: $30 $00

jr_029_4794:
	nop                                              ; $4794: $00
	ld bc, $019e                                     ; $4795: $01 $9e $01
	inc b                                            ; $4798: $04
	nop                                              ; $4799: $00
	rst SubAFromDE                                          ; $479a: $df
	ld d, l                                          ; $479b: $55
	ld l, $00                                        ; $479c: $2e $00
	pop af                                           ; $479e: $f1
	sbc [hl]                                         ; $479f: $9e
	ld a, b                                          ; $47a0: $78
	cp a                                             ; $47a1: $bf
	ld a, b                                          ; $47a2: $78
	ld a, h                                          ; $47a3: $7c
	sbc d                                            ; $47a4: $9a
	inc b                                            ; $47a5: $04
	ld a, [hl]                                       ; $47a6: $7e
	inc c                                            ; $47a7: $0c
	inc a                                            ; $47a8: $3c
	ld [$9dfd], sp                                   ; $47a9: $08 $fd $9d

jr_029_47ac:
	ld a, h                                          ; $47ac: $7c
	jr c, jr_029_47ac                                ; $47ad: $38 $fd

	sbc [hl]                                         ; $47af: $9e
	add b                                            ; $47b0: $80
	cp l                                             ; $47b1: $bd
	add b                                            ; $47b2: $80
	ret nz                                           ; $47b3: $c0

	ldh [$f0], a                                     ; $47b4: $e0 $f0
	sub l                                            ; $47b6: $95
	ret nz                                           ; $47b7: $c0

	ld hl, sp-$10                                    ; $47b8: $f8 $f0
	xor $44                                          ; $47ba: $ee $44
	cp $fc                                           ; $47bc: $fe $fc
	db $fc                                           ; $47be: $fc
	ld a, h                                          ; $47bf: $7c
	ld a, b                                          ; $47c0: $78
	ld a, e                                          ; $47c1: $7b
	add sp, $7f                                      ; $47c2: $e8 $7f
	ret c                                            ; $47c4: $d8

	sbc e                                            ; $47c5: $9b
	jr nc, jr_029_47c8                               ; $47c6: $30 $00

jr_029_47c8:
	ld bc, $0401                                     ; $47c8: $01 $01 $04
	nop                                              ; $47cb: $00
	rst SubAFromDE                                          ; $47cc: $df
	ld d, l                                          ; $47cd: $55
	jr z, jr_029_47d0                                ; $47ce: $28 $00

jr_029_47d0:
	pop af                                           ; $47d0: $f1
	sbc [hl]                                         ; $47d1: $9e
	ld a, b                                          ; $47d2: $78
	ld a, e                                          ; $47d3: $7b
	cp $99                                           ; $47d4: $fe $99
	ld a, h                                          ; $47d6: $7c
	inc b                                            ; $47d7: $04
	ld a, [hl]                                       ; $47d8: $7e
	inc c                                            ; $47d9: $0c
	inc a                                            ; $47da: $3c
	ld [$9dfd], sp                                   ; $47db: $08 $fd $9d
	ld a, [hl]                                       ; $47de: $7e
	db $fc                                           ; $47df: $fc
	db $fd                                           ; $47e0: $fd
	sbc [hl]                                         ; $47e1: $9e
	add b                                            ; $47e2: $80
	ld a, e                                          ; $47e3: $7b
	cp $92                                           ; $47e4: $fe $92
	ret nz                                           ; $47e6: $c0

	nop                                              ; $47e7: $00
	ldh [rP1], a                                     ; $47e8: $e0 $00
	ldh a, [$c0]                                     ; $47ea: $f0 $c0

jr_029_47ec:
	ld hl, sp-$10                                    ; $47ec: $f8 $f0
	jr c, jr_029_4854                                ; $47ee: $38 $64

	nop                                              ; $47f0: $00
	nop                                              ; $47f1: $00
	jr c, jr_029_47ec                                ; $47f2: $38 $f8

	rst SubAFromDE                                          ; $47f4: $df
	ld bc, $0004                                     ; $47f5: $01 $04 $00
	rst SubAFromDE                                          ; $47f8: $df
	ld d, l                                          ; $47f9: $55
	ld a, [hl+]                                      ; $47fa: $2a
	nop                                              ; $47fb: $00
	pop af                                           ; $47fc: $f1
	sbc [hl]                                         ; $47fd: $9e
	ld a, b                                          ; $47fe: $78
	ld a, e                                          ; $47ff: $7b
	cp $99                                           ; $4800: $fe $99
	ld a, h                                          ; $4802: $7c
	inc b                                            ; $4803: $04
	ld a, [hl]                                       ; $4804: $7e
	inc c                                            ; $4805: $0c
	inc a                                            ; $4806: $3c
	ld [$dffd], sp                                   ; $4807: $08 $fd $df
	cp $fd                                           ; $480a: $fe $fd
	sbc [hl]                                         ; $480c: $9e
	add b                                            ; $480d: $80
	ld a, e                                          ; $480e: $7b
	cp $91                                           ; $480f: $fe $91
	ret nz                                           ; $4811: $c0

	nop                                              ; $4812: $00
	ldh [rP1], a                                     ; $4813: $e0 $00
	ldh a, [$c0]                                     ; $4815: $f0 $c0
	ld hl, sp-$10                                    ; $4817: $f8 $f0
	sbc $64                                          ; $4819: $de $64
	ld a, h                                          ; $481b: $7c
	jr c, jr_029_481e                                ; $481c: $38 $00

jr_029_481e:
	nop                                              ; $481e: $00
	ld a, e                                          ; $481f: $7b
	db $fd                                           ; $4820: $fd
	db $fc                                           ; $4821: $fc
	rst SubAFromDE                                          ; $4822: $df
	ld bc, $0004                                     ; $4823: $01 $04 $00
	rst SubAFromDE                                          ; $4826: $df
	ld d, l                                          ; $4827: $55
	dec hl                                           ; $4828: $2b
	nop                                              ; $4829: $00
	pop af                                           ; $482a: $f1
	sbc [hl]                                         ; $482b: $9e
	ld a, b                                          ; $482c: $78
	cp a                                             ; $482d: $bf
	ld a, b                                          ; $482e: $78
	ld a, h                                          ; $482f: $7c
	sbc d                                            ; $4830: $9a
	inc b                                            ; $4831: $04
	ld a, [hl]                                       ; $4832: $7e
	inc c                                            ; $4833: $0c
	inc a                                            ; $4834: $3c
	ld [$dffd], sp                                   ; $4835: $08 $fd $df
	cp $fd                                           ; $4838: $fe $fd
	sbc [hl]                                         ; $483a: $9e
	add b                                            ; $483b: $80
	cp l                                             ; $483c: $bd
	add b                                            ; $483d: $80
	ret nz                                           ; $483e: $c0

	ldh [$f0], a                                     ; $483f: $e0 $f0
	sub l                                            ; $4841: $95
	ret nz                                           ; $4842: $c0

	ld hl, sp-$10                                    ; $4843: $f8 $f0
	cp $7c                                           ; $4845: $fe $7c
	db $fc                                           ; $4847: $fc
	ld a, h                                          ; $4848: $7c
	ld a, h                                          ; $4849: $7c
	jr c, jr_029_484c                                ; $484a: $38 $00

jr_029_484c:
	cp l                                             ; $484c: $bd
	jr c, jr_029_484f                                ; $484d: $38 $00

jr_029_484f:
	nop                                              ; $484f: $00
	ld bc, $019e                                     ; $4850: $01 $9e $01
	inc b                                            ; $4853: $04

jr_029_4854:
	nop                                              ; $4854: $00
	rst SubAFromDE                                          ; $4855: $df
	ld d, l                                          ; $4856: $55
	ld sp, $f300                                     ; $4857: $31 $00 $f3
	rst SubAFromDE                                          ; $485a: $df
	ld bc, $789e                                     ; $485b: $01 $9e $78
	cp a                                             ; $485e: $bf
	ld a, b                                          ; $485f: $78
	ld a, h                                          ; $4860: $7c
	sbc c                                            ; $4861: $99
	inc b                                            ; $4862: $04
	ld a, [hl]                                       ; $4863: $7e
	inc c                                            ; $4864: $0c
	inc a                                            ; $4865: $3c
	ld [$bf00], sp                                   ; $4866: $08 $00 $bf
	db $fc                                           ; $4869: $fc
	rst $38                                          ; $486a: $ff
	sbc l                                            ; $486b: $9d
	cp $01                                           ; $486c: $fe $01
	cp e                                             ; $486e: $bb
	nop                                              ; $486f: $00
	add b                                            ; $4870: $80
	add b                                            ; $4871: $80
	ret nz                                           ; $4872: $c0

	ldh [$f0], a                                     ; $4873: $e0 $f0
	sbc e                                            ; $4875: $9b
	ret nz                                           ; $4876: $c0

	ld hl, sp-$10                                    ; $4877: $f8 $f0
	cp $de                                           ; $4879: $fe $de
	db $fc                                           ; $487b: $fc
	sbc d                                            ; $487c: $9a
	ld hl, sp+$78                                    ; $487d: $f8 $78
	ld a, b                                          ; $487f: $78
	jr nc, jr_029_4882                               ; $4880: $30 $00

jr_029_4882:
	cp [hl]                                          ; $4882: $be
	ld a, b                                          ; $4883: $78
	nop                                              ; $4884: $00
	ld bc, $019e                                     ; $4885: $01 $9e $01
	inc b                                            ; $4888: $04
	nop                                              ; $4889: $00
	rst SubAFromDE                                          ; $488a: $df
	ld d, l                                          ; $488b: $55
	ld e, d                                          ; $488c: $5a
	add l                                            ; $488d: $85
	reti                                             ; $488e: $d9


	rst $38                                          ; $488f: $ff
	ld sp, hl                                        ; $4890: $f9
	inc bc                                           ; $4891: $03
	ldh a, [rWX]                                     ; $4892: $f0 $4b
	ldh a, [$99]                                     ; $4894: $f0 $99
	pop hl                                           ; $4896: $e1
	ldh [$c0], a                                     ; $4897: $e0 $c0
	ret nz                                           ; $4899: $c0

	add b                                            ; $489a: $80
	add b                                            ; $489b: $80
	ld a, [$0398]                                    ; $489c: $fa $98 $03
	rlca                                             ; $489f: $07
	rlca                                             ; $48a0: $07
	rst $38                                          ; $48a1: $ff
	ccf                                              ; $48a2: $3f
	rlca                                             ; $48a3: $07
	ld bc, $9df7                                     ; $48a4: $01 $f7 $9d
	ldh [$fc], a                                     ; $48a7: $e0 $fc
	db $dd                                           ; $48a9: $dd
	rst $38                                          ; $48aa: $ff
	ld d, a                                          ; $48ab: $57
	db $ed                                           ; $48ac: $ed
	jp c, $9eff                                      ; $48ad: $da $ff $9e

	ccf                                              ; $48b0: $3f
	inc bc                                           ; $48b1: $03
	and b                                            ; $48b2: $a0
	inc bc                                           ; $48b3: $03
	ldh a, [$03]                                     ; $48b4: $f0 $03
	ldh a, [$03]                                     ; $48b6: $f0 $03
	ldh a, [$03]                                     ; $48b8: $f0 $03
	ldh a, [$03]                                     ; $48ba: $f0 $03
	ldh a, [$03]                                     ; $48bc: $f0 $03

jr_029_48be:
	ldh a, [$3f]                                     ; $48be: $f0 $3f
	ldh a, [$df]                                     ; $48c0: $f0 $df
	cp $df                                           ; $48c2: $fe $df
	db $fc                                           ; $48c4: $fc
	rst SubAFromDE                                          ; $48c5: $df
	ld hl, sp-$62                                    ; $48c6: $f8 $9e
	ldh a, [$f8]                                     ; $48c8: $f0 $f8
	add b                                            ; $48ca: $80
	dec d                                            ; $48cb: $15
	nop                                              ; $48cc: $00
	dec d                                            ; $48cd: $15
	ld a, [hl+]                                      ; $48ce: $2a
	dec a                                            ; $48cf: $3d
	ld l, d                                          ; $48d0: $6a
	ld e, a                                          ; $48d1: $5f
	rrca                                             ; $48d2: $0f
	ld a, [bc]                                       ; $48d3: $0a
	rra                                              ; $48d4: $1f
	ld a, [bc]                                       ; $48d5: $0a
	dec d                                            ; $48d6: $15
	ld [bc], a                                       ; $48d7: $02

jr_029_48d8:
	dec d                                            ; $48d8: $15
	nop                                              ; $48d9: $00
	nop                                              ; $48da: $00
	db $10                                           ; $48db: $10
	ld [bc], a                                       ; $48dc: $02
	ld d, l                                          ; $48dd: $55
	xor c                                            ; $48de: $a9
	ld d, l                                          ; $48df: $55
	xor e                                            ; $48e0: $ab
	db $f4                                           ; $48e1: $f4
	rst $38                                          ; $48e2: $ff
	rst AddAOntoHL                                          ; $48e3: $ef
	db $fd                                           ; $48e4: $fd
	xor d                                            ; $48e5: $aa
	ld d, [hl]                                       ; $48e6: $56
	xor d                                            ; $48e7: $aa
	ld d, h                                          ; $48e8: $54
	ld a, [bc]                                       ; $48e9: $0a
	sbc [hl]                                         ; $48ea: $9e
	nop                                              ; $48eb: $00
	ld l, [hl]                                       ; $48ec: $6e
	and c                                            ; $48ed: $a1
	ld h, [hl]                                       ; $48ee: $66
	cp a                                             ; $48ef: $bf
	sbc [hl]                                         ; $48f0: $9e
	ld bc, $b576                                     ; $48f1: $01 $76 $b5
	sbc h                                            ; $48f4: $9c
	db $10                                           ; $48f5: $10
	jr nc, jr_029_48d8                               ; $48f6: $30 $e0

	ld [hl], d                                       ; $48f8: $72
	adc [hl]                                         ; $48f9: $8e
	sbc h                                            ; $48fa: $9c
	db $10                                           ; $48fb: $10
	jr nz, jr_029_48be                               ; $48fc: $20 $c0

	ld a, e                                          ; $48fe: $7b

Call_029_48ff:
	and b                                            ; $48ff: $a0
	ld d, d                                          ; $4900: $52
	adc a                                            ; $4901: $8f
	ld l, a                                          ; $4902: $6f
	sub b                                            ; $4903: $90
	ld e, e                                          ; $4904: $5b
	db $ed                                           ; $4905: $ed
	inc bc                                           ; $4906: $03
	ld [hl], b                                       ; $4907: $70
	inc bc                                           ; $4908: $03
	ldh a, [$03]                                     ; $4909: $f0 $03
	ldh a, [$03]                                     ; $490b: $f0 $03
	ldh a, [$03]                                     ; $490d: $f0 $03
	ldh a, [$03]                                     ; $490f: $f0 $03
	ldh a, [$5f]                                     ; $4911: $f0 $5f
	ldh a, [$97]                                     ; $4913: $f0 $97
	ldh a, [$e0]                                     ; $4915: $f0 $e0
	ldh [$e1], a                                     ; $4917: $e0 $e1
	ret nz                                           ; $4919: $c0

	pop bc                                           ; $491a: $c1
	add d                                            ; $491b: $82
	add l                                            ; $491c: $85
	ld sp, hl                                        ; $491d: $f9
	sub [hl]                                         ; $491e: $96
	ld a, [$ff5f]                                    ; $491f: $fa $5f $ff
	ld e, a                                          ; $4922: $5f
	rst $38                                          ; $4923: $ff
	ld d, a                                          ; $4924: $57
	rst $38                                          ; $4925: $ff
	ld d, a                                          ; $4926: $57
	dec b                                            ; $4927: $05
	ld a, [$aa81]                                    ; $4928: $fa $81 $aa
	call nc, $d0e8                                   ; $492b: $d4 $e8 $d0
	xor b                                            ; $492e: $a8
	ret nc                                           ; $492f: $d0

	and b                                            ; $4930: $a0
	ld d, b                                          ; $4931: $50
	ld d, h                                          ; $4932: $54
	jr z, jr_029_4949                                ; $4933: $28 $14

	jr z, jr_029_4987                                ; $4935: $28 $50

	jr nz, jr_029_4989                               ; $4937: $20 $50

	and b                                            ; $4939: $a0
	inc bc                                           ; $493a: $03
	ld b, $0c                                        ; $493b: $06 $0c
	jr c, jr_029_49af                                ; $493d: $38 $70

	ld h, b                                          ; $493f: $60
	ret nz                                           ; $4940: $c0

	ret nz                                           ; $4941: $c0

	ld [bc], a                                       ; $4942: $02
	inc b                                            ; $4943: $04
	ld [$4030], sp                                   ; $4944: $08 $30 $40
	ld b, b                                          ; $4947: $40
	ld l, c                                          ; $4948: $69

jr_029_4949:
	ld d, [hl]                                       ; $4949: $56
	sbc h                                            ; $494a: $9c
	inc bc                                           ; $494b: $03
	rrca                                             ; $494c: $0f
	rra                                              ; $494d: $1f
	ld sp, hl                                        ; $494e: $f9
	sub l                                            ; $494f: $95
	ld b, $0f                                        ; $4950: $06 $0f
	rra                                              ; $4952: $1f
	ld a, [hl-]                                      ; $4953: $3a
	cp $f5                                           ; $4954: $fe $f5
	add sp, -$25                                     ; $4956: $e8 $db
	nop                                              ; $4958: $00
	ld bc, $4379                                     ; $4959: $01 $79 $43
	ld a, a                                          ; $495c: $7f
	db $f4                                           ; $495d: $f4
	ld a, l                                          ; $495e: $7d
	ld l, b                                          ; $495f: $68
	sbc b                                            ; $4960: $98
	ret nz                                           ; $4961: $c0

	ldh a, [rSCY]                                    ; $4962: $f0 $42
	daa                                              ; $4964: $27
	ccf                                              ; $4965: $3f
	ret nc                                           ; $4966: $d0

	ld c, [hl]                                       ; $4967: $4e
	ld a, e                                          ; $4968: $7b
	ld hl, sp-$66                                    ; $4969: $f8 $9a
	cp $ff                                           ; $496b: $fe $ff
	ld hl, sp-$20                                    ; $496d: $f8 $e0
	add b                                            ; $496f: $80
	halt                                             ; $4970: $76
	or l                                             ; $4971: $b5
	ld a, [hl]                                       ; $4972: $7e
	sbc d                                            ; $4973: $9a
	sbc [hl]                                         ; $4974: $9e
	ld [bc], a                                       ; $4975: $02
	db $fc                                           ; $4976: $fc
	ld [hl], a                                       ; $4977: $77
	ld hl, sp+$6a                                    ; $4978: $f8 $6a
	and d                                            ; $497a: $a2
	ld a, a                                          ; $497b: $7f
	push af                                          ; $497c: $f5
	ei                                               ; $497d: $fb
	sbc [hl]                                         ; $497e: $9e
	ret nz                                           ; $497f: $c0

Jump_029_4980:
	ld l, c                                          ; $4980: $69
	ld sp, $079e                                     ; $4981: $31 $9e $07
	inc bc                                           ; $4984: $03
	ld b, b                                          ; $4985: $40
	inc bc                                           ; $4986: $03

jr_029_4987:
	ldh a, [$03]                                     ; $4987: $f0 $03

jr_029_4989:
	ldh a, [$03]                                     ; $4989: $f0 $03
	ldh a, [$2b]                                     ; $498b: $f0 $2b
	ldh a, [$71]                                     ; $498d: $f0 $71
	adc [hl]                                         ; $498f: $8e
	ld sp, hl                                        ; $4990: $f9
	sbc e                                            ; $4991: $9b
	ld [bc], a                                       ; $4992: $02
	dec b                                            ; $4993: $05
	ld a, [bc]                                       ; $4994: $0a
	dec b                                            ; $4995: $05
	ld l, a                                          ; $4996: $6f
	ld [hl-], a                                      ; $4997: $32
	ld l, d                                          ; $4998: $6a
	ret nz                                           ; $4999: $c0

	sbc e                                            ; $499a: $9b
	ld e, l                                          ; $499b: $5d
	ld [$aa5c], a                                    ; $499c: $ea $5c $aa
	cp $7f                                           ; $499f: $fe $7f
	db $eb                                           ; $49a1: $eb
	sbc l                                            ; $49a2: $9d
	dec d                                            ; $49a3: $15
	inc bc                                           ; $49a4: $03
	halt                                             ; $49a5: $76
	cp h                                             ; $49a6: $bc
	add b                                            ; $49a7: $80
	ld hl, $4101                                     ; $49a8: $21 $01 $41
	ld [bc], a                                       ; $49ab: $02
	add e                                            ; $49ac: $83
	inc bc                                           ; $49ad: $03
	dec b                                            ; $49ae: $05

jr_029_49af:
	rlca                                             ; $49af: $07
	pop bc                                           ; $49b0: $c1
	pop bc                                           ; $49b1: $c1
	add c                                            ; $49b2: $81
	add e                                            ; $49b3: $83
	ld [bc], a                                       ; $49b4: $02
	ld [bc], a                                       ; $49b5: $02
	ld b, $04                                        ; $49b6: $06 $04
	ld b, b                                          ; $49b8: $40
	ret nc                                           ; $49b9: $d0

	jp nz, $8480                                     ; $49ba: $c2 $80 $84

	inc [hl]                                         ; $49bd: $34
	ld [bc], a                                       ; $49be: $02
	nop                                              ; $49bf: $00
	add b                                            ; $49c0: $80
	nop                                              ; $49c1: $00
	db $10                                           ; $49c2: $10
	ld [de], a                                       ; $49c3: $12
	ld [de], a                                       ; $49c4: $12
	add d                                            ; $49c5: $82
	and h                                            ; $49c6: $a4
	sub [hl]                                         ; $49c7: $96
	and h                                            ; $49c8: $a4
	rra                                              ; $49c9: $1f
	ccf                                              ; $49ca: $3f
	dec a                                            ; $49cb: $3d
	ld a, d                                          ; $49cc: $7a
	halt                                             ; $49cd: $76
	reti                                             ; $49ce: $d9


	or c                                             ; $49cf: $b1
	ldh a, [c]                                       ; $49d0: $f2
	ld a, d                                          ; $49d1: $7a
	cp e                                             ; $49d2: $bb
	ld a, [hl]                                       ; $49d3: $7e
	pop de                                           ; $49d4: $d1
	add b                                            ; $49d5: $80
	ccf                                              ; $49d6: $3f
	ld a, a                                          ; $49d7: $7f
	ld a, a                                          ; $49d8: $7f
	db $ed                                           ; $49d9: $ed
	sub $68                                          ; $49da: $d6 $68
	pop de                                           ; $49dc: $d1
	xor d                                            ; $49dd: $aa
	ld d, l                                          ; $49de: $55
	xor d                                            ; $49df: $aa
	add h                                            ; $49e0: $84
	ld a, [hl]                                       ; $49e1: $7e
	ld hl, sp-$10                                    ; $49e2: $f8 $f0
	ld h, b                                          ; $49e4: $60
	ret nz                                           ; $49e5: $c0

	add b                                            ; $49e6: $80
	ld bc, $3053                                     ; $49e7: $01 $53 $30
	ld b, a                                          ; $49ea: $47
	jr jr_029_4a0d                                   ; $49eb: $18 $20

	ret nc                                           ; $49ed: $d0

	ld a, [bc]                                       ; $49ee: $0a
	ld bc, $0032                                     ; $49ef: $01 $32 $00
	ld bc, $1806                                     ; $49f2: $01 $06 $18
	add b                                            ; $49f5: $80
	inc hl                                           ; $49f6: $23
	call nz, $2198                                   ; $49f7: $c4 $98 $21
	rst $38                                          ; $49fa: $ff
	pop bc                                           ; $49fb: $c1
	jr jr_029_4a0d                                   ; $49fc: $18 $0f

	ldh a, [rVBK]                                    ; $49fe: $f0 $4f
	inc sp                                           ; $4a00: $33
	db $e4                                           ; $4a01: $e4
	ld a, $ff                                        ; $4a02: $3e $ff
	rlca                                             ; $4a04: $07
	ldh a, [rIF]                                     ; $4a05: $f0 $0f
	ccf                                              ; $4a07: $3f
	db $fc                                           ; $4a08: $fc
	ld hl, sp-$50                                    ; $4a09: $f8 $b0
	sub $2a                                          ; $4a0b: $d6 $2a

jr_029_4a0d:
	ld a, [de]                                       ; $4a0d: $1a
	ld c, h                                          ; $4a0e: $4c
	add h                                            ; $4a0f: $84
	ldh a, [c]                                       ; $4a10: $f2
	jp c, $f870                                      ; $4a11: $da $70 $f8

	db $fd                                           ; $4a14: $fd
	sbc d                                            ; $4a15: $9a
	db $fd                                           ; $4a16: $fd
	cp a                                             ; $4a17: $bf
	rst $38                                          ; $4a18: $ff
	ld a, a                                          ; $4a19: $7f
	ccf                                              ; $4a1a: $3f
	cp $9b                                           ; $4a1b: $fe $9b
	ld [$98ae], sp                                   ; $4a1d: $08 $ae $98
	ld a, a                                          ; $4a20: $7f
	ld a, e                                          ; $4a21: $7b
	or b                                             ; $4a22: $b0
	sbc c                                            ; $4a23: $99
	nop                                              ; $4a24: $00
	jr jr_029_4a45                                   ; $4a25: $18 $1e

	ccf                                              ; $4a27: $3f
	cp a                                             ; $4a28: $bf
	db $fc                                           ; $4a29: $fc
	ld [hl], d                                       ; $4a2a: $72
	or l                                             ; $4a2b: $b5
	ld a, [hl]                                       ; $4a2c: $7e
	add h                                            ; $4a2d: $84
	sbc [hl]                                         ; $4a2e: $9e
	jr jr_029_4a9f                                   ; $4a2f: $18 $6e

	and d                                            ; $4a31: $a2
	sbc l                                            ; $4a32: $9d
	ldh a, [rAUD3LEVEL]                              ; $4a33: $f0 $1c
	ld c, [hl]                                       ; $4a35: $4e
	and d                                            ; $4a36: $a2
	ld h, e                                          ; $4a37: $63
	jr nz, jr_029_4ab1                               ; $4a38: $20 $77

	ret z                                            ; $4a3a: $c8

	inc bc                                           ; $4a3b: $03
	nop                                              ; $4a3c: $00
	inc bc                                           ; $4a3d: $03
	ldh a, [$03]                                     ; $4a3e: $f0 $03
	ldh a, [rIE]                                     ; $4a40: $f0 $ff
	ld a, b                                          ; $4a42: $78
	ld d, l                                          ; $4a43: $55
	ld a, c                                          ; $4a44: $79

jr_029_4a45:
	adc l                                            ; $4a45: $8d
	sbc [hl]                                         ; $4a46: $9e
	pop bc                                           ; $4a47: $c1
	ld h, [hl]                                       ; $4a48: $66
	db $10                                           ; $4a49: $10
	sub [hl]                                         ; $4a4a: $96
	nop                                              ; $4a4b: $00
	ld d, h                                          ; $4a4c: $54
	ld a, [hl+]                                      ; $4a4d: $2a
	ld e, a                                          ; $4a4e: $5f
	or l                                             ; $4a4f: $b5
	ld a, a                                          ; $4a50: $7f
	cp a                                             ; $4a51: $bf
	ld a, a                                          ; $4a52: $7f
	ld a, a                                          ; $4a53: $7f
	ld a, [$e97e]                                    ; $4a54: $fa $7e $e9
	sbc e                                            ; $4a57: $9b
	xor [hl]                                         ; $4a58: $ae
	ld e, h                                          ; $4a59: $5c
	db $fc                                           ; $4a5a: $fc
	ld e, b                                          ; $4a5b: $58
	ld a, e                                          ; $4a5c: $7b
	call c, $b061                                    ; $4a5d: $dc $61 $b0
	adc b                                            ; $4a60: $88
	ld [$0d0d], sp                                   ; $4a61: $08 $0d $0d
	dec b                                            ; $4a64: $05
	ld b, $02                                        ; $4a65: $06 $02
	inc bc                                           ; $4a67: $03
	dec b                                            ; $4a68: $05
	dec c                                            ; $4a69: $0d
	add hl, bc                                       ; $4a6a: $09
	add hl, bc                                       ; $4a6b: $09
	inc e                                            ; $4a6c: $1c
	inc e                                            ; $4a6d: $1c
	ld a, $3e                                        ; $4a6e: $3e $3e
	adc b                                            ; $4a70: $88
	xor c                                            ; $4a71: $a9
	db $eb                                           ; $4a72: $eb
	ld l, a                                          ; $4a73: $6f
	push hl                                          ; $4a74: $e5
	or a                                             ; $4a75: $b7
	ldh a, [c]                                       ; $4a76: $f2
	ld a, e                                          ; $4a77: $7b
	sbc $24                                          ; $4a78: $de $24
	sub d                                            ; $4a7a: $92
	and h                                            ; $4a7b: $a4
	and [hl]                                         ; $4a7c: $a6
	ldh [c], a                                       ; $4a7d: $e2
	ld d, e                                          ; $4a7e: $53
	ld [hl], c                                       ; $4a7f: $71
	ld d, h                                          ; $4a80: $54
	ld d, h                                          ; $4a81: $54

jr_029_4a82:
	ld c, b                                          ; $4a82: $48
	ld c, b                                          ; $4a83: $48
	pop de                                           ; $4a84: $d1
	or d                                             ; $4a85: $b2
	ldh [c], a                                       ; $4a86: $e2
	ld h, h                                          ; $4a87: $64
	db $dd                                           ; $4a88: $dd
	rst $38                                          ; $4a89: $ff
	rst SubAFromDE                                          ; $4a8a: $df
	ld a, a                                          ; $4a8b: $7f
	ld a, a                                          ; $4a8c: $7f
	rrca                                             ; $4a8d: $0f
	add l                                            ; $4a8e: $85
	jr jr_029_4a82                                   ; $4a8f: $18 $f1

	ld h, a                                          ; $4a91: $67
	xor a                                            ; $4a92: $af
	ld c, h                                          ; $4a93: $4c
	ld e, h                                          ; $4a94: $5c
	sbc l                                            ; $4a95: $9d
	ld a, [$2ca6]                                    ; $4a96: $fa $a6 $2c
	reti                                             ; $4a99: $d9


	jp nc, $a4b6                                     ; $4a9a: $d2 $b6 $a4

	ld l, b                                          ; $4a9d: $68
	ld c, c                                          ; $4a9e: $49

jr_029_4a9f:
	push hl                                          ; $4a9f: $e5
	jp z, $2a95                                      ; $4aa0: $ca $95 $2a

	ld d, d                                          ; $4aa3: $52
	and l                                            ; $4aa4: $a5
	ld c, e                                          ; $4aa5: $4b
	rla                                              ; $4aa6: $17
	ld b, e                                          ; $4aa7: $43
	add a                                            ; $4aa8: $87
	ld a, c                                          ; $4aa9: $79
	ld [hl], e                                       ; $4aaa: $73
	add b                                            ; $4aab: $80
	ld a, [hl]                                       ; $4aac: $7e
	db $fd                                           ; $4aad: $fd
	ei                                               ; $4aae: $fb
	ld b, b                                          ; $4aaf: $40
	add b                                            ; $4ab0: $80

jr_029_4ab1:
	inc bc                                           ; $4ab1: $03
	rrca                                             ; $4ab2: $0f
	dec sp                                           ; $4ab3: $3b
	ld l, a                                          ; $4ab4: $6f
	rst $38                                          ; $4ab5: $ff
	ld a, a                                          ; $4ab6: $7f
	ldh a, [$e3]                                     ; $4ab7: $f0 $e3
	rst GetHLinHL                                          ; $4ab9: $cf
	cp a                                             ; $4aba: $bf
	ld a, h                                          ; $4abb: $7c
	ldh a, [$c0]                                     ; $4abc: $f0 $c0
	add b                                            ; $4abe: $80
	rlca                                             ; $4abf: $07
	ld a, [hl]                                       ; $4ac0: $7e
	xor $7e                                          ; $4ac1: $ee $7e
	cp $fe                                           ; $4ac3: $fe $fe
	or $c6                                           ; $4ac5: $f6 $c6
	ccf                                              ; $4ac7: $3f
	rst $38                                          ; $4ac8: $ff
	di                                               ; $4ac9: $f3
	add d                                            ; $4aca: $82
	db $dd                                           ; $4acb: $dd
	ld [bc], a                                       ; $4acc: $02
	adc h                                            ; $4acd: $8c
	sub b                                            ; $4ace: $90
	db $e3                                           ; $4acf: $e3
	cp $7f                                           ; $4ad0: $fe $7f
	rst JumpTable                                          ; $4ad2: $c7
	ld [hl], c                                       ; $4ad3: $71
	jr z, jr_029_4b32                                ; $4ad4: $28 $5c

	ldh [$fc], a                                     ; $4ad6: $e0 $fc
	rst $38                                          ; $4ad8: $ff
	rst SubAFromBC                                          ; $4ad9: $e7
	ld [hl], e                                       ; $4ada: $73
	ld d, c                                          ; $4adb: $51
	ld e, b                                          ; $4adc: $58
	ld c, b                                          ; $4add: $48
	jr jr_029_4aec                                   ; $4ade: $18 $0c

	or $73                                           ; $4ae0: $f6 $73
	and l                                            ; $4ae2: $a5
	sub h                                            ; $4ae3: $94
	rrca                                             ; $4ae4: $0f
	rlca                                             ; $4ae5: $07
	inc bc                                           ; $4ae6: $03
	pop hl                                           ; $4ae7: $e1
	ld hl, sp-$59                                    ; $4ae8: $f8 $a7
	db $d3                                           ; $4aea: $d3
	ld l, c                                          ; $4aeb: $69

jr_029_4aec:
	ret nz                                           ; $4aec: $c0

	ld hl, sp-$02                                    ; $4aed: $f8 $fe
	ld [hl], l                                       ; $4aef: $75
	cp $9e                                           ; $4af0: $fe $9e
	inc e                                            ; $4af2: $1c
	ld [hl], a                                       ; $4af3: $77
	ld d, h                                          ; $4af4: $54
	sbc e                                            ; $4af5: $9b
	ret nz                                           ; $4af6: $c0

	pop hl                                           ; $4af7: $e1
	pop af                                           ; $4af8: $f1
	ei                                               ; $4af9: $fb
	ld e, d                                          ; $4afa: $5a
	or l                                             ; $4afb: $b5
	ld [hl], e                                       ; $4afc: $73
	push hl                                          ; $4afd: $e5
	ld c, [hl]                                       ; $4afe: $4e
	and d                                            ; $4aff: $a2
	ld a, a                                          ; $4b00: $7f
	db $ed                                           ; $4b01: $ed
	ld c, c                                          ; $4b02: $49
	ld sp, $e002                                     ; $4b03: $31 $02 $e0
	inc sp                                           ; $4b06: $33
	ldh a, [$79]                                     ; $4b07: $f0 $79
	adc [hl]                                         ; $4b09: $8e
	ld sp, hl                                        ; $4b0a: $f9
	sbc d                                            ; $4b0b: $9a
	pop bc                                           ; $4b0c: $c1
	add b                                            ; $4b0d: $80
	add c                                            ; $4b0e: $81
	nop                                              ; $4b0f: $00
	ld bc, $8f59                                     ; $4b10: $01 $59 $8f
	ld a, l                                          ; $4b13: $7d
	call $3f89                                       ; $4b14: $cd $89 $3f
	ld d, a                                          ; $4b17: $57
	ccf                                              ; $4b18: $3f
	ld d, a                                          ; $4b19: $57
	xor a                                            ; $4b1a: $af
	ld d, a                                          ; $4b1b: $57
	ld b, b                                          ; $4b1c: $40
	add b                                            ; $4b1d: $80
	ld b, b                                          ; $4b1e: $40
	xor b                                            ; $4b1f: $a8
	ld b, b                                          ; $4b20: $40
	xor b                                            ; $4b21: $a8
	ld d, b                                          ; $4b22: $50
	ld [$e0e0], sp                                   ; $4b23: $08 $e0 $e0
	ret nz                                           ; $4b26: $c0

	ret nz                                           ; $4b27: $c0

	add b                                            ; $4b28: $80
	add c                                            ; $4b29: $81
	add e                                            ; $4b2a: $83
	inc bc                                           ; $4b2b: $03
	db $fd                                           ; $4b2c: $fd
	ld a, h                                          ; $4b2d: $7c
	xor c                                            ; $4b2e: $a9
	rst $38                                          ; $4b2f: $ff
	adc d                                            ; $4b30: $8a
	add hl, hl                                       ; $4b31: $29

jr_029_4b32:
	ld bc, $00aa                                     ; $4b32: $01 $aa $00
	xor d                                            ; $4b35: $aa
	ld d, h                                          ; $4b36: $54
	xor d                                            ; $4b37: $aa
	push af                                          ; $4b38: $f5
	ld d, a                                          ; $4b39: $57
	ld a, a                                          ; $4b3a: $7f
	ld d, l                                          ; $4b3b: $55
	rst $38                                          ; $4b3c: $ff
	ld d, l                                          ; $4b3d: $55
	xor e                                            ; $4b3e: $ab
	ld d, l                                          ; $4b3f: $55
	ld a, [bc]                                       ; $4b40: $0a
	ld a, [hl]                                       ; $4b41: $7e
	db $eb                                           ; $4b42: $eb
	push af                                          ; $4b43: $f5
	ldh a, [c]                                       ; $4b44: $f2
	ld h, c                                          ; $4b45: $61
	sbc $01                                          ; $4b46: $de $01
	sbc e                                            ; $4b48: $9b
	add hl, sp                                       ; $4b49: $39
	inc a                                            ; $4b4a: $3c
	sbc [hl]                                         ; $4b4b: $9e
	sbc a                                            ; $4b4c: $9f
	db $dd                                           ; $4b4d: $dd
	rst $38                                          ; $4b4e: $ff
	add b                                            ; $4b4f: $80
	push bc                                          ; $4b50: $c5
	ld c, e                                          ; $4b51: $4b
	adc d                                            ; $4b52: $8a
	sub a                                            ; $4b53: $97
	dec d                                            ; $4b54: $15
	cpl                                              ; $4b55: $2f
	cpl                                              ; $4b56: $2f
	ld e, a                                          ; $4b57: $5f
	cp $fc                                           ; $4b58: $fe $fc
	db $fd                                           ; $4b5a: $fd
	ld sp, hl                                        ; $4b5b: $f9
	ei                                               ; $4b5c: $fb
	ldh a, [c]                                       ; $4b5d: $f2
	ldh a, [c]                                       ; $4b5e: $f2
	db $e4                                           ; $4b5f: $e4
	ld a, d                                          ; $4b60: $7a
	push af                                          ; $4b61: $f5
	add $fa                                          ; $4b62: $c6 $fa
	and h                                            ; $4b64: $a4
	call nc, $8949                                   ; $4b65: $d4 $49 $89
	pop de                                           ; $4b68: $d1
	sub e                                            ; $4b69: $93
	or e                                             ; $4b6a: $b3
	daa                                              ; $4b6b: $27
	ld l, a                                          ; $4b6c: $6f
	ld l, a                                          ; $4b6d: $6f
	rst $38                                          ; $4b6e: $ff
	add [hl]                                         ; $4b6f: $86
	rst $38                                          ; $4b70: $ff
	and a                                            ; $4b71: $a7
	ld c, e                                          ; $4b72: $4b
	or $ac                                           ; $4b73: $f6 $ac
	ld e, b                                          ; $4b75: $58
	cp a                                             ; $4b76: $bf
	jr nc, @+$01                                     ; $4b77: $30 $ff

	cp $fc                                           ; $4b79: $fe $fc
	ld hl, sp-$10                                    ; $4b7b: $f8 $f0
	ldh [$cf], a                                     ; $4b7d: $e0 $cf
	rst $38                                          ; $4b7f: $ff
	rst $38                                          ; $4b80: $ff
	rst SubAFromDE                                          ; $4b81: $df
	inc a                                            ; $4b82: $3c
	ld [hl], b                                       ; $4b83: $70
	ldh [$80], a                                     ; $4b84: $e0 $80
	add b                                            ; $4b86: $80
	ret nz                                           ; $4b87: $c0

	ldh [rOCPS], a                                   ; $4b88: $e0 $6a
	ld d, c                                          ; $4b8a: $51
	sbc d                                            ; $4b8b: $9a
	ret nz                                           ; $4b8c: $c0

	ld b, $06                                        ; $4b8d: $06 $06
	inc b                                            ; $4b8f: $04
	inc b                                            ; $4b90: $04
	sbc $0c                                          ; $4b91: $de $0c
	sbc [hl]                                         ; $4b93: $9e
	add hl, de                                       ; $4b94: $19
	ld a, c                                          ; $4b95: $79
	inc h                                            ; $4b96: $24
	db $dd                                           ; $4b97: $dd
	rlca                                             ; $4b98: $07
	sbc e                                            ; $4b99: $9b
	rrca                                             ; $4b9a: $0f
	call z, Call_029_55cc                            ; $4b9b: $cc $cc $55
	ld a, c                                          ; $4b9e: $79
	inc a                                            ; $4b9f: $3c
	sbc b                                            ; $4ba0: $98
	sub [hl]                                         ; $4ba1: $96
	and l                                            ; $4ba2: $a5
	ld b, h                                          ; $4ba3: $44
	ld b, h                                          ; $4ba4: $44
	call z, $decc                                    ; $4ba5: $cc $cc $de
	sbc $ff                                          ; $4ba8: $de $ff
	add h                                            ; $4baa: $84
	dec [hl]                                         ; $4bab: $35
	cp h                                             ; $4bac: $bc
	xor [hl]                                         ; $4bad: $ae
	ld l, $5a                                        ; $4bae: $2e $5a
	ld d, [hl]                                       ; $4bb0: $56
	ld e, a                                          ; $4bb1: $5f
	ld e, l                                          ; $4bb2: $5d
	ld a, a                                          ; $4bb3: $7f
	ld [hl], a                                       ; $4bb4: $77
	ld a, e                                          ; $4bb5: $7b
	ei                                               ; $4bb6: $fb
	db $ed                                           ; $4bb7: $ed
	db $ed                                           ; $4bb8: $ed
	db $e4                                           ; $4bb9: $e4
	and $30                                          ; $4bba: $e6 $30
	cp b                                             ; $4bbc: $b8
	cp b                                             ; $4bbd: $b8
	ldh a, [$c0]                                     ; $4bbe: $f0 $c0
	ret nz                                           ; $4bc0: $c0

	rst SubAFromDE                                          ; $4bc1: $df
	pop hl                                           ; $4bc2: $e1
	rst GetHLinHL                                          ; $4bc3: $cf
	rst JumpTable                                          ; $4bc4: $c7
	rst JumpTable                                          ; $4bc5: $c7
	ld a, e                                          ; $4bc6: $7b
	or d                                             ; $4bc7: $b2
	sbc l                                            ; $4bc8: $9d
	ldh [$fe], a                                     ; $4bc9: $e0 $fe
	db $fc                                           ; $4bcb: $fc
	sbc [hl]                                         ; $4bcc: $9e
	rra                                              ; $4bcd: $1f
	jp c, Jump_029_73ff                              ; $4bce: $da $ff $73

	xor d                                            ; $4bd1: $aa
	add [hl]                                         ; $4bd2: $86
	ld bc, $fc0f                                     ; $4bd3: $01 $0f $fc
	ldh a, [$80]                                     ; $4bd6: $f0 $80
	ldh [$fe], a                                     ; $4bd8: $e0 $fe
	rst $38                                          ; $4bda: $ff
	cp $f0                                           ; $4bdb: $fe $f0
	inc bc                                           ; $4bdd: $03
	rrca                                             ; $4bde: $0f
	ld a, a                                          ; $4bdf: $7f
	rra                                              ; $4be0: $1f
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	ldh [rDIV], a                                    ; $4be3: $e0 $04
	inc b                                            ; $4be5: $04
	ld [$1008], sp                                   ; $4be6: $08 $08 $10
	nop                                              ; $4be9: $00
	ret nz                                           ; $4bea: $c0

	jr jr_029_4c65                                   ; $4beb: $18 $78

	adc d                                            ; $4bed: $8a
	ld a, a                                          ; $4bee: $7f
	ld a, h                                          ; $4bef: $7c
	ld l, [hl]                                       ; $4bf0: $6e
	or l                                             ; $4bf1: $b5
	sbc l                                            ; $4bf2: $9d
	ld d, h                                          ; $4bf3: $54
	and d                                            ; $4bf4: $a2
	ld e, d                                          ; $4bf5: $5a
	ldh [rPCM34], a                                  ; $4bf6: $e0 $77
	db $ed                                           ; $4bf8: $ed
	ld a, l                                          ; $4bf9: $7d
	ret z                                            ; $4bfa: $c8

	ld a, [hl+]                                      ; $4bfb: $2a
	ret nz                                           ; $4bfc: $c0

	ld [hl], e                                       ; $4bfd: $73
	bit 7, c                                         ; $4bfe: $cb $79
	adc [hl]                                         ; $4c00: $8e
	ld hl, sp+$7e                                    ; $4c01: $f8 $7e
	jp $059d                                         ; $4c03: $c3 $9d $05


	inc bc                                           ; $4c06: $03
	ld a, e                                          ; $4c07: $7b
	cp $f9                                           ; $4c08: $fe $f9
	sbc h                                            ; $4c0a: $9c
	rrca                                             ; $4c0b: $0f
	ld e, [hl]                                       ; $4c0c: $5e
	cp [hl]                                          ; $4c0d: $be
	ld [hl], e                                       ; $4c0e: $73
	db $dd                                           ; $4c0f: $dd
	ld sp, hl                                        ; $4c10: $f9
	ld a, e                                          ; $4c11: $7b
	dec a                                            ; $4c12: $3d
	ld a, l                                          ; $4c13: $7d
	rst SubAFromHL                                          ; $4c14: $d7
	ld a, l                                          ; $4c15: $7d
	sub $60                                          ; $4c16: $d6 $60
	ldh a, [$97]                                     ; $4c18: $f0 $97
	ld a, [rIE]                                    ; $4c1a: $fa $ff $ff
	push af                                          ; $4c1d: $f5
	rst $38                                          ; $4c1e: $ff
	push de                                          ; $4c1f: $d5
	ld [$7b55], a                                    ; $4c20: $ea $55 $7b
	rst GetHLinHL                                          ; $4c23: $cf
	add b                                            ; $4c24: $80
	ld a, [bc]                                       ; $4c25: $0a
	nop                                              ; $4c26: $00
	ld a, [hl+]                                      ; $4c27: $2a
	dec d                                            ; $4c28: $15
	xor d                                            ; $4c29: $aa
	xor c                                            ; $4c2a: $a9
	ld b, c                                          ; $4c2b: $41
	xor d                                            ; $4c2c: $aa
	ld [hl], h                                       ; $4c2d: $74
	ld a, [$fb5d]                                    ; $4c2e: $fa $5d $fb
	ld d, l                                          ; $4c31: $55
	ld d, a                                          ; $4c32: $57
	cp a                                             ; $4c33: $bf
	ld d, l                                          ; $4c34: $55
	adc e                                            ; $4c35: $8b
	dec b                                            ; $4c36: $05
	and e                                            ; $4c37: $a3
	inc bc                                           ; $4c38: $03
	add a                                            ; $4c39: $87
	ld e, [hl]                                       ; $4c3a: $5e
	ld d, d                                          ; $4c3b: $52
	sbc [hl]                                         ; $4c3c: $9e
	cp h                                             ; $4c3d: $bc
	and l                                            ; $4c3e: $a5
	add hl, sp                                       ; $4c3f: $39
	dec a                                            ; $4c40: $3d
	ld [hl], e                                       ; $4c41: $73
	push hl                                          ; $4c42: $e5
	db $ed                                           ; $4c43: $ed
	sub c                                            ; $4c44: $91
	jp hl                                            ; $4c45: $e9


	set 3, d                                         ; $4c46: $cb $da
	jp nc, $94d2                                     ; $4c48: $d2 $d2 $94

	sub d                                            ; $4c4b: $92
	inc de                                           ; $4c4c: $13
	dec h                                            ; $4c4d: $25
	daa                                              ; $4c4e: $27
	ld c, e                                          ; $4c4f: $4b
	ld c, a                                          ; $4c50: $4f
	sbc l                                            ; $4c51: $9d
	sbc a                                            ; $4c52: $9f
	halt                                             ; $4c53: $76
	ld c, h                                          ; $4c54: $4c
	ld a, a                                          ; $4c55: $7f
	xor b                                            ; $4c56: $a8
	sub h                                            ; $4c57: $94
	or $f3                                           ; $4c58: $f6 $f3
	ld a, [hl]                                       ; $4c5a: $7e
	rst SubAFromBC                                          ; $4c5b: $e7
	jp $b983                                         ; $4c5c: $c3 $83 $b9


	ld b, $75                                        ; $4c5f: $06 $75
	db $fd                                           ; $4c61: $fd
	add c                                            ; $4c62: $81
	ld l, l                                          ; $4c63: $6d
	ld [bc], a                                       ; $4c64: $02

jr_029_4c65:
	sbc e                                            ; $4c65: $9b
	cp $30                                           ; $4c66: $fe $30
	ld d, b                                          ; $4c68: $50
	cp b                                             ; $4c69: $b8
	ld a, d                                          ; $4c6a: $7a
	or a                                             ; $4c6b: $b7
	sbc d                                            ; $4c6c: $9a
	nop                                              ; $4c6d: $00
	add c                                            ; $4c6e: $81
	ldh [$a0], a                                     ; $4c6f: $e0 $a0
	ld b, b                                          ; $4c71: $40
	db $fc                                           ; $4c72: $fc
	sub a                                            ; $4c73: $97
	add hl, de                                       ; $4c74: $19
	ld a, [de]                                       ; $4c75: $1a
	scf                                              ; $4c76: $37
	add hl, sp                                       ; $4c77: $39
	ld [hl], a                                       ; $4c78: $77
	ld l, l                                          ; $4c79: $6d
	rst $38                                          ; $4c7a: $ff
	rst $38                                          ; $4c7b: $ff
	ld [hl], a                                       ; $4c7c: $77
	adc d                                            ; $4c7d: $8a
	add b                                            ; $4c7e: $80
	add hl, de                                       ; $4c7f: $19
	inc sp                                           ; $4c80: $33
	rst JumpTable                                          ; $4c81: $c7
	rrca                                             ; $4c82: $0f
	cp l                                             ; $4c83: $bd
	xor l                                            ; $4c84: $ad
	ld d, h                                          ; $4c85: $54
	ld a, h                                          ; $4c86: $7c
	cp h                                             ; $4c87: $bc
	ld a, h                                          ; $4c88: $7c
	db $fc                                           ; $4c89: $fc
	cp h                                             ; $4c8a: $bc
	rst SubAFromBC                                          ; $4c8b: $e7
	rst FarCall                                          ; $4c8c: $f7
	rst $38                                          ; $4c8d: $ff
	rst $38                                          ; $4c8e: $ff
	rst GetHLinHL                                          ; $4c8f: $cf
	add a                                            ; $4c90: $87
	add a                                            ; $4c91: $87
	rst JumpTable                                          ; $4c92: $c7
	ld c, c                                          ; $4c93: $49
	ld c, c                                          ; $4c94: $49
	adc l                                            ; $4c95: $8d
	call Call_029_5d4d                               ; $4c96: $cd $4d $5d
	ld e, l                                          ; $4c99: $5d
	ld e, c                                          ; $4c9a: $59
	or $f6                                           ; $4c9b: $f6 $f6
	ldh a, [c]                                       ; $4c9d: $f2
	rst SubAFromDE                                          ; $4c9e: $df
	or d                                             ; $4c9f: $b2
	rst SubAFromDE                                          ; $4ca0: $df
	and d                                            ; $4ca1: $a2
	sbc [hl]                                         ; $4ca2: $9e
	and [hl]                                         ; $4ca3: $a6
	ld a, d                                          ; $4ca4: $7a
	ld hl, $d09a                                     ; $4ca5: $21 $9a $d0
	call z, $e78e                                    ; $4ca8: $cc $8e $e7
	rst SubAFromBC                                          ; $4cab: $e7
	sbc $ff                                          ; $4cac: $de $ff
	sbc c                                            ; $4cae: $99
	rst AddAOntoHL                                          ; $4caf: $ef
	di                                               ; $4cb0: $f3
	pop af                                           ; $4cb1: $f1
	sbc b                                            ; $4cb2: $98
	sbc b                                            ; $4cb3: $98
	rra                                              ; $4cb4: $1f
	halt                                             ; $4cb5: $76
	dec de                                           ; $4cb6: $1b
	sbc h                                            ; $4cb7: $9c
	nop                                              ; $4cb8: $00
	inc bc                                           ; $4cb9: $03
	rst GetHLinHL                                          ; $4cba: $cf
	ld a, d                                          ; $4cbb: $7a
	rst GetHLinHL                                          ; $4cbc: $cf
	sbc $ff                                          ; $4cbd: $de $ff

jr_029_4cbf:
	add l                                            ; $4cbf: $85
	db $fc                                           ; $4cc0: $fc
	jr nc, jr_029_4cbf                               ; $4cc1: $30 $fc

	rst $38                                          ; $4cc3: $ff
	inc bc                                           ; $4cc4: $03
	rrca                                             ; $4cc5: $0f
	ccf                                              ; $4cc6: $3f
	db $fd                                           ; $4cc7: $fd
	ei                                               ; $4cc8: $fb
	ldh a, [c]                                       ; $4cc9: $f2
	inc bc                                           ; $4cca: $03
	nop                                              ; $4ccb: $00
	db $fc                                           ; $4ccc: $fc
	ldh a, [$c0]                                     ; $4ccd: $f0 $c0
	ld [bc], a                                       ; $4ccf: $02
	inc b                                            ; $4cd0: $04
	dec c                                            ; $4cd1: $0d
	jr nz, jr_029_4cf5                               ; $4cd2: $20 $21

	ld b, c                                          ; $4cd4: $41
	ld b, e                                          ; $4cd5: $43
	ld b, e                                          ; $4cd6: $43
	ld b, [hl]                                       ; $4cd7: $46
	ld b, l                                          ; $4cd8: $45
	adc [hl]                                         ; $4cd9: $8e
	ld [hl], l                                       ; $4cda: $75
	add sp, -$22                                     ; $4cdb: $e8 $de
	ret nz                                           ; $4cdd: $c0

	sbc d                                            ; $4cde: $9a
	add b                                            ; $4cdf: $80
	ld d, l                                          ; $4ce0: $55
	xor a                                            ; $4ce1: $af
	ld e, a                                          ; $4ce2: $5f
	cp a                                             ; $4ce3: $bf
	ld a, b                                          ; $4ce4: $78
	sub b                                            ; $4ce5: $90
	ld h, d                                          ; $4ce6: $62
	ldh [$9e], a                                     ; $4ce7: $e0 $9e
	ld e, b                                          ; $4ce9: $58
	halt                                             ; $4cea: $76
	db $e3                                           ; $4ceb: $e3
	sbc $c0                                          ; $4cec: $de $c0
	halt                                             ; $4cee: $76
	and $9e                                          ; $4cef: $e6 $9e
	ld bc, $03de                                     ; $4cf1: $01 $de $03
	ld b, [hl]                                       ; $4cf4: $46

jr_029_4cf5:
	ret nz                                           ; $4cf5: $c0

	ld [hl], l                                       ; $4cf6: $75
	or c                                             ; $4cf7: $b1
	ld h, d                                          ; $4cf8: $62
	and e                                            ; $4cf9: $a3
	ld [hl], a                                       ; $4cfa: $77
	sub [hl]                                         ; $4cfb: $96
	sbc b                                            ; $4cfc: $98
	dec b                                            ; $4cfd: $05
	ld a, [bc]                                       ; $4cfe: $0a
	inc b                                            ; $4cff: $04
	add hl, bc                                       ; $4d00: $09
	inc d                                            ; $4d01: $14
	ld [$6e16], sp                                   ; $4d02: $08 $16 $6e
	or h                                             ; $4d05: $b4
	rst SubAFromDE                                          ; $4d06: $df
	ld bc, $f098                                     ; $4d07: $01 $98 $f0
	ld h, b                                          ; $4d0a: $60
	and b                                            ; $4d0b: $a0
	nop                                              ; $4d0c: $00
	ld b, c                                          ; $4d0d: $41
	ld bc, $770a                                     ; $4d0e: $01 $0a $77
	ld a, d                                          ; $4d11: $7a
	sub a                                            ; $4d12: $97
	inc c                                            ; $4d13: $0c
	inc e                                            ; $4d14: $1c
	ld e, b                                          ; $4d15: $58
	ld [hl], b                                       ; $4d16: $70
	ldh a, [$7f]                                     ; $4d17: $f0 $7f
	ld a, a                                          ; $4d19: $7f
	rst $38                                          ; $4d1a: $ff
	ld a, c                                          ; $4d1b: $79
	sub a                                            ; $4d1c: $97
	sbc l                                            ; $4d1d: $9d
	xor a                                            ; $4d1e: $af
	ld d, l                                          ; $4d1f: $55
	ld h, d                                          ; $4d20: $62
	ret nz                                           ; $4d21: $c0

	sub [hl]                                         ; $4d22: $96
	ld d, l                                          ; $4d23: $55
	cp $fd                                           ; $4d24: $fe $fd
	ld a, [$fa55]                                    ; $4d26: $fa $55 $fa
	ld d, l                                          ; $4d29: $55
	dec b                                            ; $4d2a: $05
	xor d                                            ; $4d2b: $aa
	ei                                               ; $4d2c: $fb
	add b                                            ; $4d2d: $80
	xor c                                            ; $4d2e: $a9
	ld e, e                                          ; $4d2f: $5b
	or a                                             ; $4d30: $b7
	ld l, e                                          ; $4d31: $6b
	push af                                          ; $4d32: $f5
	ei                                               ; $4d33: $fb
	rst AddAOntoHL                                          ; $4d34: $ef
	db $dd                                           ; $4d35: $dd
	rrca                                             ; $4d36: $0f
	rla                                              ; $4d37: $17
	cpl                                              ; $4d38: $2f
	ld e, e                                          ; $4d39: $5b
	ld d, a                                          ; $4d3a: $57
	xor a                                            ; $4d3b: $af
	call Call_029_42d9                               ; $4d3c: $cd $d9 $42
	ld [hl], e                                       ; $4d3f: $73
	ld h, e                                          ; $4d40: $63
	ld b, [hl]                                       ; $4d41: $46
	ld b, l                                          ; $4d42: $45
	dec h                                            ; $4d43: $25
	ld c, l                                          ; $4d44: $4d
	ld c, e                                          ; $4d45: $4b
	or l                                             ; $4d46: $b5
	and l                                            ; $4d47: $a5
	and l                                            ; $4d48: $a5
	xor c                                            ; $4d49: $a9
	xor d                                            ; $4d4a: $aa
	jp z, $96c2                                      ; $4d4b: $ca $c2 $96

	call nz, $3c9e                                   ; $4d4e: $c4 $9e $3c
	jr c, @+$5a                                      ; $4d51: $38 $58

	ld a, b                                          ; $4d53: $78
	ld [hl], b                                       ; $4d54: $70
	or b                                             ; $4d55: $b0
	or b                                             ; $4d56: $b0
	ld a, e                                          ; $4d57: $7b
	ld l, d                                          ; $4d58: $6a
	ld [hl], e                                       ; $4d59: $73
	ld c, [hl]                                       ; $4d5a: $4e
	sbc [hl]                                         ; $4d5b: $9e

jr_029_4d5c:
	ld b, $71                                        ; $4d5c: $06 $71
	ld [hl], $7a                                     ; $4d5e: $36 $7a
	ld e, b                                          ; $4d60: $58
	ld [hl], e                                       ; $4d61: $73
	jr jr_029_4dde                                   ; $4d62: $18 $7a

	rla                                              ; $4d64: $17
	halt                                             ; $4d65: $76
	ret                                              ; $4d66: $c9


	ld a, l                                          ; $4d67: $7d
	sub h                                            ; $4d68: $94
	ld a, a                                          ; $4d69: $7f
	ld [$6b6f], a                                    ; $4d6a: $ea $6f $6b
	add [hl]                                         ; $4d6d: $86
	inc b                                            ; $4d6e: $04
	ld a, b                                          ; $4d6f: $78
	ld [hl], b                                       ; $4d70: $70
	ld [hl], e                                       ; $4d71: $73
	ld a, a                                          ; $4d72: $7f
	ld l, c                                          ; $4d73: $69
	inc hl                                           ; $4d74: $23
	inc a                                            ; $4d75: $3c
	ld a, c                                          ; $4d76: $79
	add hl, de                                       ; $4d77: $19
	db $10                                           ; $4d78: $10
	scf                                              ; $4d79: $37
	ccf                                              ; $4d7a: $3f
	ccf                                              ; $4d7b: $3f
	ld a, [hl-]                                      ; $4d7c: $3a
	inc [hl]                                         ; $4d7d: $34
	jr jr_029_4d5c                                   ; $4d7e: $18 $dc

	ld a, h                                          ; $4d80: $7c
	db $f4                                           ; $4d81: $f4
	ld a, h                                          ; $4d82: $7c
	ld hl, sp+$28                                    ; $4d83: $f8 $28
	ret c                                            ; $4d85: $d8

	add sp, $7a                                      ; $4d86: $e8 $7a
	sbc $9a                                          ; $4d88: $de $9a
	rst AddAOntoHL                                          ; $4d8a: $ef
	ld a, a                                          ; $4d8b: $7f
	ld e, a                                          ; $4d8c: $5f
	ccf                                              ; $4d8d: $3f
	ccf                                              ; $4d8e: $3f
	ld l, h                                          ; $4d8f: $6c
	pop bc                                           ; $4d90: $c1
	ld a, [hl]                                       ; $4d91: $7e
	ld [hl], h                                       ; $4d92: $74
	db $dd                                           ; $4d93: $dd
	dec h                                            ; $4d94: $25
	db $dd                                           ; $4d95: $dd
	ld b, a                                          ; $4d96: $47
	add a                                            ; $4d97: $87
	ld [hl], e                                       ; $4d98: $73
	ld [hl], c                                       ; $4d99: $71
	pop af                                           ; $4d9a: $f1
	ld hl, sp-$08                                    ; $4d9b: $f8 $f8
	db $fc                                           ; $4d9d: $fc
	db $fc                                           ; $4d9e: $fc
	cp $8c                                           ; $4d9f: $fe $8c
	adc [hl]                                         ; $4da1: $8e
	ld c, $07                                        ; $4da2: $0e $07
	rlca                                             ; $4da4: $07
	inc bc                                           ; $4da5: $03
	inc bc                                           ; $4da6: $03
	ld bc, rIE                                     ; $4da7: $01 $ff $ff
	ld hl, sp-$40                                    ; $4daa: $f8 $c0
	ld bc, $0e07                                     ; $4dac: $01 $07 $0e
	jr c, @+$7c                                      ; $4daf: $38 $7a

	ld b, $82                                        ; $4db1: $06 $82
	ccf                                              ; $4db3: $3f

jr_029_4db4:
	cp $f8                                           ; $4db4: $fe $f8
	pop af                                           ; $4db6: $f1
	rst JumpTable                                          ; $4db7: $c7
	add $1d                                          ; $4db8: $c6 $1d
	ld a, [hl-]                                      ; $4dba: $3a
	ldh [c], a                                       ; $4dbb: $e2
	call nz, $0884                                   ; $4dbc: $c4 $84 $08
	ld [$e339], sp                                   ; $4dbf: $08 $39 $e3
	add $1e                                          ; $4dc2: $c6 $1e
	inc a                                            ; $4dc4: $3c
	ld a, h                                          ; $4dc5: $7c
	ld hl, sp-$08                                    ; $4dc6: $f8 $f8
	adc l                                            ; $4dc8: $8d
	ld a, [de]                                       ; $4dc9: $1a
	dec e                                            ; $4dca: $1d
	dec sp                                           ; $4dcb: $3b
	dec [hl]                                         ; $4dcc: $35
	dec hl                                           ; $4dcd: $2b
	ld [hl], a                                       ; $4dce: $77
	ld l, e                                          ; $4dcf: $6b
	ld h, [hl]                                       ; $4dd0: $66
	db $fc                                           ; $4dd1: $fc
	ld a, a                                          ; $4dd2: $7f
	ld hl, $7170                                     ; $4dd3: $21 $70 $71
	ld h, b                                          ; $4dd6: $60
	ld [hl], b                                       ; $4dd7: $70
	sbc [hl]                                         ; $4dd8: $9e
	add b                                            ; $4dd9: $80
	ld [hl], d                                       ; $4dda: $72
	jp z, $07de                                      ; $4ddb: $ca $de $07

jr_029_4dde:
	sbc b                                            ; $4dde: $98
	ld b, $0e                                        ; $4ddf: $06 $0e
	inc c                                            ; $4de1: $0c
	inc e                                            ; $4de2: $1c
	inc e                                            ; $4de3: $1c
	jr jr_029_4e1e                                   ; $4de4: $18 $38

	inc a                                            ; $4de6: $3c
	nop                                              ; $4de7: $00
	push de                                          ; $4de8: $d5
	inc sp                                           ; $4de9: $33
	sbc h                                            ; $4dea: $9c
	nop                                              ; $4deb: $00
	inc bc                                           ; $4dec: $03
	ld b, e                                          ; $4ded: $43
	ld h, a                                          ; $4dee: $67
	or $9d                                           ; $4def: $f6 $9d
	ld [hl], a                                       ; $4df1: $77
	halt                                             ; $4df2: $76
	db $db                                           ; $4df3: $db
	inc sp                                           ; $4df4: $33
	sbc c                                            ; $4df5: $99
	jr nc, jr_029_4df9                               ; $4df6: $30 $01

	ld [hl], a                                       ; $4df8: $77

jr_029_4df9:
	ld h, [hl]                                       ; $4df9: $66
	ld h, [hl]                                       ; $4dfa: $66
	ld h, h                                          ; $4dfb: $64
	ld h, a                                          ; $4dfc: $67
	or $9c                                           ; $4dfd: $f6 $9c
	ld [hl], a                                       ; $4dff: $77
	ld h, d                                          ; $4e00: $62
	ld d, h                                          ; $4e01: $54
	ld a, e                                          ; $4e02: $7b
	sbc $97                                          ; $4e03: $de $97
	jr nc, jr_029_4e07                               ; $4e05: $30 $00

jr_029_4e07:
	ld d, $67                                        ; $4e07: $16 $67
	ld [hl], a                                       ; $4e09: $77
	ld h, [hl]                                       ; $4e0a: $66
	ld d, l                                          ; $4e0b: $55
	ld d, l                                          ; $4e0c: $55
	ld a, e                                          ; $4e0d: $7b
	reti                                             ; $4e0e: $d9


	sub a                                            ; $4e0f: $97
	nop                                              ; $4e10: $00
	ld b, $77                                        ; $4e11: $06 $77
	ld [hl], a                                       ; $4e13: $77
	halt                                             ; $4e14: $76
	ld d, l                                          ; $4e15: $55
	ld d, d                                          ; $4e16: $52
	ld [hl+], a                                      ; $4e17: $22
	ld a, e                                          ; $4e18: $7b
	or $7f                                           ; $4e19: $f6 $7f
	db $e3                                           ; $4e1b: $e3
	sbc d                                            ; $4e1c: $9a
	ld [hl], a                                       ; $4e1d: $77

jr_029_4e1e:
	ld [hl], d                                       ; $4e1e: $72
	ld d, l                                          ; $4e1f: $55
	ld d, d                                          ; $4e20: $52
	inc hl                                           ; $4e21: $23
	rst FarCall                                          ; $4e22: $f7
	rlca                                             ; $4e23: $07
	sbc [hl]                                         ; $4e24: $9e
	cp $b5                                           ; $4e25: $fe $b5
	cp $fc                                           ; $4e27: $fe $fc
	db $fc                                           ; $4e29: $fc
	ld hl, sp-$08                                    ; $4e2a: $f8 $f8
	ld hl, sp-$10                                    ; $4e2c: $f8 $f0
	nop                                              ; $4e2e: $00
	nop                                              ; $4e2f: $00
	nop                                              ; $4e30: $00
	nop                                              ; $4e31: $00
	jr jr_029_4db4                                   ; $4e32: $18 $80

	rlca                                             ; $4e34: $07
	inc bc                                           ; $4e35: $03
	nop                                              ; $4e36: $00
	ld [hl], b                                       ; $4e37: $70
	rrca                                             ; $4e38: $0f
	add d                                            ; $4e39: $82
	ld [hl], c                                       ; $4e3a: $71
	inc c                                            ; $4e3b: $0c
	inc bc                                           ; $4e3c: $03
	inc d                                            ; $4e3d: $14
	inc bc                                           ; $4e3e: $03
	add hl, hl                                       ; $4e3f: $29
	rlca                                             ; $4e40: $07
	add hl, de                                       ; $4e41: $19
	rlca                                             ; $4e42: $07
	jr nz, @-$3b                                     ; $4e43: $20 $c3

	add h                                            ; $4e45: $84
	ld a, b                                          ; $4e46: $78
	ld bc, $68fe                                     ; $4e47: $01 $fe $68
	rst $38                                          ; $4e4a: $ff
	ld [bc], a                                       ; $4e4b: $02
	ldh a, [$c5]                                     ; $4e4c: $f0 $c5
	ldh [$ec], a                                     ; $4e4e: $e0 $ec
	sbc $96                                          ; $4e50: $de $96
	rst $38                                          ; $4e52: $ff
	sub [hl]                                         ; $4e53: $96
	ld c, [hl]                                       ; $4e54: $4e
	cp $3c                                           ; $4e55: $fe $3c
	db $fc                                           ; $4e57: $fc
	jr jr_029_4ed6                                   ; $4e58: $18 $7c

	sbc h                                            ; $4e5a: $9c
	jr c, jr_029_4e07                                ; $4e5b: $38 $aa

	cp c                                             ; $4e5d: $b9
	ld d, l                                          ; $4e5e: $55
	ld a, [bc]                                       ; $4e5f: $0a
	ld d, l                                          ; $4e60: $55
	ld [bc], a                                       ; $4e61: $02
	ld d, l                                          ; $4e62: $55
	nop                                              ; $4e63: $00
	dec d                                            ; $4e64: $15
	db $eb                                           ; $4e65: $eb
	sbc e                                            ; $4e66: $9b
	ld bc, $0155                                     ; $4e67: $01 $55 $01
	xor e                                            ; $4e6a: $ab
	ld l, e                                          ; $4e6b: $6b
	db $fc                                           ; $4e6c: $fc
	ld a, a                                          ; $4e6d: $7f
	db $e4                                           ; $4e6e: $e4
	sub l                                            ; $4e6f: $95
	ld d, a                                          ; $4e70: $57
	inc bc                                           ; $4e71: $03
	cp e                                             ; $4e72: $bb
	sub c                                            ; $4e73: $91
	push af                                          ; $4e74: $f5
	or c                                             ; $4e75: $b1
	xor e                                            ; $4e76: $ab
	ld hl, $2075                                     ; $4e77: $21 $75 $20
	ld [hl], a                                       ; $4e7a: $77
	db $f4                                           ; $4e7b: $f4
	adc c                                            ; $4e7c: $89
	cp l                                             ; $4e7d: $bd
	ccf                                              ; $4e7e: $3f
	rst GetHLinHL                                          ; $4e7f: $cf
	pop af                                           ; $4e80: $f1
	ld c, d                                          ; $4e81: $4a
	push bc                                          ; $4e82: $c5
	ld a, [bc]                                       ; $4e83: $0a
	push bc                                          ; $4e84: $c5
	ld a, [de]                                       ; $4e85: $1a
	push bc                                          ; $4e86: $c5
	rst SubAFromHL                                          ; $4e87: $d7
	adc c                                            ; $4e88: $89
	db $dd                                           ; $4e89: $dd
	adc e                                            ; $4e8a: $8b
	db $dd                                           ; $4e8b: $dd
	adc e                                            ; $4e8c: $8b
	reti                                             ; $4e8d: $d9


	adc e                                            ; $4e8e: $8b
	db $d3                                           ; $4e8f: $d3
	adc e                                            ; $4e90: $8b
	and b                                            ; $4e91: $a0
	ret nz                                           ; $4e92: $c0

	ld l, a                                          ; $4e93: $6f
	cp $97                                           ; $4e94: $fe $97
	ret nz                                           ; $4e96: $c0

	ldh [$b0], a                                     ; $4e97: $e0 $b0
	ldh [$98], a                                     ; $4e99: $e0 $98
	ldh a, [$cc]                                     ; $4e9b: $f0 $cc
	cp b                                             ; $4e9d: $b8
	db $fd                                           ; $4e9e: $fd
	sbc e                                            ; $4e9f: $9b
	ld bc, $0100                                     ; $4ea0: $01 $00 $01
	ld bc, $f86f                                     ; $4ea3: $01 $6f $f8
	rst $38                                          ; $4ea6: $ff
	sub d                                            ; $4ea7: $92
	rlca                                             ; $4ea8: $07
	inc b                                            ; $4ea9: $04
	dec h                                            ; $4eaa: $25
	ld e, $1b                                        ; $4eab: $1e $1b
	inc c                                            ; $4ead: $0c
	adc [hl]                                         ; $4eae: $8e
	nop                                              ; $4eaf: $00
	ldh [$80], a                                     ; $4eb0: $e0 $80
	ld c, b                                          ; $4eb2: $48
	jr nc, jr_029_4ee5                               ; $4eb3: $30 $30

	cp e                                             ; $4eb5: $bb
	ret nz                                           ; $4eb6: $c0

	rra                                              ; $4eb7: $1f
	rlca                                             ; $4eb8: $07
	inc bc                                           ; $4eb9: $03
	rrca                                             ; $4eba: $0f
	rra                                              ; $4ebb: $1f
	adc a                                            ; $4ebc: $8f
	ld bc, $033f                                     ; $4ebd: $01 $3f $03
	ld a, e                                          ; $4ec0: $7b
	rlca                                             ; $4ec1: $07
	rst $38                                          ; $4ec2: $ff
	rlca                                             ; $4ec3: $07
	xor b                                            ; $4ec4: $a8
	ld a, a                                          ; $4ec5: $7f
	ret nc                                           ; $4ec6: $d0

	ld a, a                                          ; $4ec7: $7f
	ld d, b                                          ; $4ec8: $50
	rst $38                                          ; $4ec9: $ff
	sub b                                            ; $4eca: $90
	rst $38                                          ; $4ecb: $ff
	ld hl, $fe73                                     ; $4ecc: $21 $73 $fe
	sbc c                                            ; $4ecf: $99
	ld b, b                                          ; $4ed0: $40
	rst $38                                          ; $4ed1: $ff
	db $fc                                           ; $4ed2: $fc
	add a                                            ; $4ed3: $87
	ld hl, sp-$71                                    ; $4ed4: $f8 $8f

jr_029_4ed6:
	ld [hl], a                                       ; $4ed6: $77
	cp $96                                           ; $4ed7: $fe $96
	ldh a, [$1f]                                     ; $4ed9: $f0 $1f
	ldh a, [$1f]                                     ; $4edb: $f0 $1f
	ldh [$3f], a                                     ; $4edd: $e0 $3f
	ldh [$3f], a                                     ; $4edf: $e0 $3f
	rst $38                                          ; $4ee1: $ff
	cp [hl]                                          ; $4ee2: $be
	rst $38                                          ; $4ee3: $ff
	rst $38                                          ; $4ee4: $ff

jr_029_4ee5:
	ld a, [hl]                                       ; $4ee5: $7e
	sbc h                                            ; $4ee6: $9c
	add c                                            ; $4ee7: $81
	ld a, h                                          ; $4ee8: $7c
	add e                                            ; $4ee9: $83
	ld [hl], a                                       ; $4eea: $77
	cp $99                                           ; $4eeb: $fe $99
	ld a, b                                          ; $4eed: $78
	add a                                            ; $4eee: $87
	ld [hl], b                                       ; $4eef: $70
	adc a                                            ; $4ef0: $8f
	ret nz                                           ; $4ef1: $c0

	ccf                                              ; $4ef2: $3f
	cp l                                             ; $4ef3: $bd
	rst $38                                          ; $4ef4: $ff
	rst $38                                          ; $4ef5: $ff
	rst $38                                          ; $4ef6: $ff
	rst $38                                          ; $4ef7: $ff
	adc d                                            ; $4ef8: $8a
	ld bc, $02ff                                     ; $4ef9: $01 $ff $02
	rst $38                                          ; $4efc: $ff
	db $10                                           ; $4efd: $10
	ldh a, [rAUD4LEN]                                ; $4efe: $f0 $20
	ldh [$31], a                                     ; $4f00: $e0 $31
	ldh [$63], a                                     ; $4f02: $e0 $63
	ret nz                                           ; $4f04: $c0

	ld d, l                                          ; $4f05: $55
	ret nz                                           ; $4f06: $c0

	adc d                                            ; $4f07: $8a
	ldh [rBCPD], a                                   ; $4f08: $e0 $69
	sub [hl]                                         ; $4f0a: $96
	and b                                            ; $4f0b: $a0
	ld e, a                                          ; $4f0c: $5f
	rst SubAFromHL                                          ; $4f0d: $d7
	or e                                             ; $4f0e: $b3
	xor a                                            ; $4f0f: $af
	rst SubAFromDE                                          ; $4f10: $df
	xor a                                            ; $4f11: $af
	ld e, a                                          ; $4f12: $5f
	cp a                                             ; $4f13: $bf
	ld a, a                                          ; $4f14: $7f
	cp a                                             ; $4f15: $bf
	db $fc                                           ; $4f16: $fc
	ld hl, sp-$08                                    ; $4f17: $f8 $f8
	ldh a, [$f0]                                     ; $4f19: $f0 $f0
	ldh a, [$e0]                                     ; $4f1b: $f0 $e0
	sub h                                            ; $4f1d: $94
	ld bc, $0140                                     ; $4f1e: $01 $40 $01
	rrca                                             ; $4f21: $0f
	jr nc, jr_029_4f33                               ; $4f22: $30 $0f

	ld [hl], b                                       ; $4f24: $70
	rra                                              ; $4f25: $1f
	ld h, b                                          ; $4f26: $60
	rra                                              ; $4f27: $1f
	ldh [$7b], a                                     ; $4f28: $e0 $7b
	and e                                            ; $4f2a: $a3
	ld a, a                                          ; $4f2b: $7f
	or a                                             ; $4f2c: $b7
	add b                                            ; $4f2d: $80
	ret nz                                           ; $4f2e: $c0

	ld a, a                                          ; $4f2f: $7f
	add b                                            ; $4f30: $80
	ldh a, [rSB]                                     ; $4f31: $f0 $01

jr_029_4f33:
	ldh [rSB], a                                     ; $4f33: $e0 $01
	ldh [rSC], a                                     ; $4f35: $e0 $02
	ret nz                                           ; $4f37: $c0

	inc bc                                           ; $4f38: $03
	pop bc                                           ; $4f39: $c1
	inc bc                                           ; $4f3a: $03
	ret nz                                           ; $4f3b: $c0

	rlca                                             ; $4f3c: $07
	add c                                            ; $4f3d: $81
	rlca                                             ; $4f3e: $07
	add b                                            ; $4f3f: $80
	rrca                                             ; $4f40: $0f
	ld bc, $1ff8                                     ; $4f41: $01 $f8 $1f
	inc c                                            ; $4f44: $0c
	rrca                                             ; $4f45: $0f
	rlca                                             ; $4f46: $07
	add e                                            ; $4f47: $83
	rlca                                             ; $4f48: $07
	ld d, a                                          ; $4f49: $57
	adc a                                            ; $4f4a: $8f
	xor a                                            ; $4f4b: $af
	rst $38                                          ; $4f4c: $ff
	add b                                            ; $4f4d: $80
	ld h, a                                          ; $4f4e: $67
	sbc a                                            ; $4f4f: $9f
	sbc [hl]                                         ; $4f50: $9e
	adc a                                            ; $4f51: $8f
	or h                                             ; $4f52: $b4
	rst $38                                          ; $4f53: $ff
	ld e, d                                          ; $4f54: $5a
	rst $38                                          ; $4f55: $ff
	cp h                                             ; $4f56: $bc
	rst $38                                          ; $4f57: $ff
	ld a, d                                          ; $4f58: $7a
	rst $38                                          ; $4f59: $ff
	push af                                          ; $4f5a: $f5
	rst $38                                          ; $4f5b: $ff
	jp hl                                            ; $4f5c: $e9


	rst $38                                          ; $4f5d: $ff
	ld d, e                                          ; $4f5e: $53
	rst $38                                          ; $4f5f: $ff
	xor l                                            ; $4f60: $ad
	cp $48                                           ; $4f61: $fe $48
	sbc b                                            ; $4f63: $98
	ld d, b                                          ; $4f64: $50
	adc b                                            ; $4f65: $88
	cpl                                              ; $4f66: $2f
	ret nz                                           ; $4f67: $c0

	ld l, d                                          ; $4f68: $6a
	add b                                            ; $4f69: $80
	and l                                            ; $4f6a: $a5
	nop                                              ; $4f6b: $00
	ld e, d                                          ; $4f6c: $5a
	sbc d                                            ; $4f6d: $9a
	and b                                            ; $4f6e: $a0
	sub c                                            ; $4f6f: $91
	ld h, c                                          ; $4f70: $61
	ld d, c                                          ; $4f71: $51
	ld hl, $1a7b                                     ; $4f72: $21 $7b $1a
	adc b                                            ; $4f75: $88
	ld bc, $0f0e                                     ; $4f76: $01 $0e $0f
	scf                                              ; $4f79: $37
	jr c, @+$5e                                      ; $4f7a: $38 $5c

	ld h, e                                          ; $4f7c: $63
	or e                                             ; $4f7d: $b3
	call z, $b857                                    ; $4f7e: $cc $57 $b8
	cpl                                              ; $4f81: $2f
	ldh a, [rAUD3LEVEL]                              ; $4f82: $f0 $1c
	rra                                              ; $4f84: $1f
	rst AddAOntoHL                                          ; $4f85: $ef
	ldh a, [$fc]                                     ; $4f86: $f0 $fc
	inc bc                                           ; $4f88: $03
	db $e3                                           ; $4f89: $e3
	inc e                                            ; $4f8a: $1c
	rra                                              ; $4f8b: $1f
	ldh [rPCM34], a                                  ; $4f8c: $e0 $77
	ld e, l                                          ; $4f8e: $5d
	sub a                                            ; $4f8f: $97
	db $fd                                           ; $4f90: $fd
	ld [bc], a                                       ; $4f91: $02
	ld sp, hl                                        ; $4f92: $f9
	rlca                                             ; $4f93: $07
	add d                                            ; $4f94: $82
	ld a, l                                          ; $4f95: $7d
	ld a, $c1                                        ; $4f96: $3e $c1
	ld l, e                                          ; $4f98: $6b
	ld c, a                                          ; $4f99: $4f
	cp a                                             ; $4f9a: $bf
	rst $38                                          ; $4f9b: $ff
	db $db                                           ; $4f9c: $db
	sub a                                            ; $4f9d: $97
	add e                                            ; $4f9e: $83
	rst GetHLinHL                                          ; $4f9f: $cf
	sub e                                            ; $4fa0: $93
	res 2, a                                         ; $4fa1: $cb $97
	rst GetHLinHL                                          ; $4fa3: $cf
	sub a                                            ; $4fa4: $97
	rst AddAOntoHL                                          ; $4fa5: $ef
	ld [hl], e                                       ; $4fa6: $73
	cp $94                                           ; $4fa7: $fe $94
	rst $38                                          ; $4fa9: $ff
	add a                                            ; $4faa: $87
	and $9c                                          ; $4fab: $e6 $9c
	ld a, e                                          ; $4fad: $7b
	add [hl]                                         ; $4fae: $86
	ld a, l                                          ; $4faf: $7d
	add e                                            ; $4fb0: $83
	cp $01                                           ; $4fb1: $fe $01
	di                                               ; $4fb3: $f3
	cp d                                             ; $4fb4: $ba
	ldh [$e0], a                                     ; $4fb5: $e0 $e0
	ret nz                                           ; $4fb7: $c0

	nop                                              ; $4fb8: $00
	nop                                              ; $4fb9: $00
	add b                                            ; $4fba: $80
	ret nz                                           ; $4fbb: $c0

	sub l                                            ; $4fbc: $95
	add b                                            ; $4fbd: $80
	ld h, b                                          ; $4fbe: $60
	ret nz                                           ; $4fbf: $c0

	add sp, $30                                      ; $4fc0: $e8 $30
	ld [hl], a                                       ; $4fc2: $77
	jr jr_029_4fe4                                   ; $4fc3: $18 $1f

	rrca                                             ; $4fc5: $0f
	ld bc, $03be                                     ; $4fc6: $01 $be $03
	rrca                                             ; $4fc9: $0f
	ld e, $8d                                        ; $4fca: $1e $8d
	ld bc, $073b                                     ; $4fcc: $01 $3b $07
	db $ed                                           ; $4fcf: $ed
	rra                                              ; $4fd0: $1f
	cp l                                             ; $4fd1: $bd
	ld a, a                                          ; $4fd2: $7f
	db $fd                                           ; $4fd3: $fd
	rst $38                                          ; $4fd4: $ff
	cp $0f                                           ; $4fd5: $fe $0f
	cp $1f                                           ; $4fd7: $fe $1f
	xor [hl]                                         ; $4fd9: $ae
	ld a, a                                          ; $4fda: $7f
	call z, $ecff                                    ; $4fdb: $cc $ff $ec
	ld a, e                                          ; $4fde: $7b
	ld [hl], b                                       ; $4fdf: $70
	adc c                                            ; $4fe0: $89
	ld sp, hl                                        ; $4fe1: $f9
	rst $38                                          ; $4fe2: $ff
	di                                               ; $4fe3: $f3

jr_029_4fe4:
	ei                                               ; $4fe4: $fb
	ld d, d                                          ; $4fe5: $52
	rst AddAOntoHL                                          ; $4fe6: $ef
	ld d, d                                          ; $4fe7: $52
	rst AddAOntoHL                                          ; $4fe8: $ef
	or d                                             ; $4fe9: $b2
	rst GetHLinHL                                          ; $4fea: $cf
	and h                                            ; $4feb: $a4
	rst GetHLinHL                                          ; $4fec: $cf
	push hl                                          ; $4fed: $e5
	adc a                                            ; $4fee: $8f
	ld b, l                                          ; $4fef: $45
	adc a                                            ; $4ff0: $8f
	ld e, e                                          ; $4ff1: $5b
	adc a                                            ; $4ff2: $8f
	sbc a                                            ; $4ff3: $9f
	rrca                                             ; $4ff4: $0f
	ret nz                                           ; $4ff5: $c0

	ld a, a                                          ; $4ff6: $7f
	ld a, e                                          ; $4ff7: $7b
	cp $9e                                           ; $4ff8: $fe $9e
	rst $38                                          ; $4ffa: $ff
	ld e, a                                          ; $4ffb: $5f
	cp $76                                           ; $4ffc: $fe $76
	adc $7f                                          ; $4ffe: $ce $7f
	cp $7b                                           ; $5000: $fe $7b
	ld de, $1f9e                                     ; $5002: $11 $9e $1f
	ld a, e                                          ; $5005: $7b
	ld de, $3f80                                     ; $5006: $11 $80 $3f
	add c                                            ; $5009: $81
	ld a, a                                          ; $500a: $7f
	ld b, $fd                                        ; $500b: $06 $fd
	rrca                                             ; $500d: $0f
	ld hl, sp+$0e                                    ; $500e: $f8 $0e
	ld hl, sp+$1f                                    ; $5010: $f8 $1f
	ldh a, [$3e]                                     ; $5012: $f0 $3e
	ldh [rSVBK], a                                   ; $5014: $e0 $70
	rst JumpTable                                          ; $5016: $c7
	ldh [hDisp1_LCDC], a                                     ; $5017: $e0 $8f
	ldh a, [rIF]                                     ; $5019: $f0 $0f
	ld bc, $1efc                                     ; $501b: $01 $fc $1e
	ret nz                                           ; $501e: $c0

	push bc                                          ; $501f: $c5
	jr c, jr_029_504c                                ; $5020: $38 $2a

	ld d, h                                          ; $5022: $54
	pop de                                           ; $5023: $d1
	ld l, $a0                                        ; $5024: $2e $a0
	ld e, [hl]                                       ; $5026: $5e
	sbc d                                            ; $5027: $9a
	dec b                                            ; $5028: $05
	rst $38                                          ; $5029: $ff
	rrca                                             ; $502a: $0f
	cp a                                             ; $502b: $bf
	ld a, [hl]                                       ; $502c: $7e
	cp d                                             ; $502d: $ba
	rst $38                                          ; $502e: $ff
	ld a, [hl]                                       ; $502f: $7e
	db $fd                                           ; $5030: $fd
	cp $fd                                           ; $5031: $fe $fd
	rst SubAFromBC                                          ; $5033: $e7
	adc d                                            ; $5034: $8a
	adc h                                            ; $5035: $8c
	ldh a, [$a0]                                     ; $5036: $f0 $a0
	inc bc                                           ; $5038: $03
	ld b, b                                          ; $5039: $40
	inc bc                                           ; $503a: $03
	add b                                            ; $503b: $80
	rlca                                             ; $503c: $07
	nop                                              ; $503d: $00
	rlca                                             ; $503e: $07
	add c                                            ; $503f: $81
	ld c, $01                                        ; $5040: $0e $01
	ld c, $03                                        ; $5042: $0e $03
	inc c                                            ; $5044: $0c
	inc bc                                           ; $5045: $03
	inc e                                            ; $5046: $1c
	ld a, a                                          ; $5047: $7f
	add b                                            ; $5048: $80
	ld e, a                                          ; $5049: $5f
	inc [hl]                                         ; $504a: $34
	ld [hl], a                                       ; $504b: $77

jr_029_504c:
	cp $bc                                           ; $504c: $fe $bc
	rlca                                             ; $504e: $07
	ld bc, $f080                                     ; $504f: $01 $80 $f0
	cp $90                                           ; $5052: $fe $90
	add b                                            ; $5054: $80
	ld a, a                                          ; $5055: $7f
	ldh a, [rIF]                                     ; $5056: $f0 $0f
	cp $01                                           ; $5058: $fe $01
	rlca                                             ; $505a: $07
	rst $38                                          ; $505b: $ff
	xor e                                            ; $505c: $ab
	rst $38                                          ; $505d: $ff
	ld d, l                                          ; $505e: $55
	ccf                                              ; $505f: $3f
	ld a, [bc]                                       ; $5060: $0a
	rlca                                             ; $5061: $07
	ld [bc], a                                       ; $5062: $02
	ld l, a                                          ; $5063: $6f
	ld [$fc91], a                                    ; $5064: $ea $91 $fc
	cp $fc                                           ; $5067: $fe $fc
	rst $38                                          ; $5069: $ff
	cp $9d                                           ; $506a: $fe $9d
	adc $fa                                          ; $506c: $ce $fa
	db $fc                                           ; $506e: $fc
	ld [hl], d                                       ; $506f: $72
	db $fc                                           ; $5070: $fc
	ld h, e                                          ; $5071: $63
	ld e, $03                                        ; $5072: $1e $03
	ld a, e                                          ; $5074: $7b
	ld [$3292], a                                    ; $5075: $ea $92 $32
	inc bc                                           ; $5078: $03
	ld [hl], h                                       ; $5079: $74
	rlca                                             ; $507a: $07
	jp hl                                            ; $507b: $e9


	rrca                                             ; $507c: $0f
	ld [hl], e                                       ; $507d: $73
	rra                                              ; $507e: $1f
	ld e, [hl]                                       ; $507f: $5e
	rra                                              ; $5080: $1f
	rst SubAFromBC                                          ; $5081: $e7
	ccf                                              ; $5082: $3f
	pop bc                                           ; $5083: $c1
	ld a, e                                          ; $5084: $7b
	ld d, [hl]                                       ; $5085: $56
	sbc h                                            ; $5086: $9c
	rst SubAFromDE                                          ; $5087: $df
	ld h, b                                          ; $5088: $60
	cp a                                             ; $5089: $bf
	ld a, d                                          ; $508a: $7a
	ld a, d                                          ; $508b: $7a
	ld l, a                                          ; $508c: $6f
	xor d                                            ; $508d: $aa
	ld a, a                                          ; $508e: $7f
	ld a, [$597f]                                    ; $508f: $fa $7f $59
	ld a, [hl]                                       ; $5092: $7e
	call nz, $bc7f                                   ; $5093: $c4 $7f $bc
	ld a, a                                          ; $5096: $7f
	cp $67                                           ; $5097: $fe $67
	and d                                            ; $5099: $a2
	sbc l                                            ; $509a: $9d
	di                                               ; $509b: $f3
	inc c                                            ; $509c: $0c
	ld l, a                                          ; $509d: $6f
	add sp, $7f                                      ; $509e: $e8 $7f
	cp $7e                                           ; $50a0: $fe $7e
	cp h                                             ; $50a2: $bc
	ld a, a                                          ; $50a3: $7f
	cp $97                                           ; $50a4: $fe $97
	rst SubAFromDE                                          ; $50a6: $df
	ld h, c                                          ; $50a7: $61
	db $dd                                           ; $50a8: $dd
	ld h, e                                          ; $50a9: $63
	db $fd                                           ; $50aa: $fd
	add a                                            ; $50ab: $87
	db $fd                                           ; $50ac: $fd
	rst GetHLinHL                                          ; $50ad: $cf
	ld [hl], a                                       ; $50ae: $77
	cp $9a                                           ; $50af: $fe $9a
	cp b                                             ; $50b1: $b8
	rst AddAOntoHL                                          ; $50b2: $ef
	cp b                                             ; $50b3: $b8
	rst AddAOntoHL                                          ; $50b4: $ef
	jr c, jr_029_5132                                ; $50b5: $38 $7b

	cp $7e                                           ; $50b7: $fe $7e
	adc $77                                          ; $50b9: $ce $77
	cp $80                                           ; $50bb: $fe $80
	ld b, b                                          ; $50bd: $40
	add b                                            ; $50be: $80
	ldh [$80], a                                     ; $50bf: $e0 $80
	cp b                                             ; $50c1: $b8
	ret nz                                           ; $50c2: $c0

	add [hl]                                         ; $50c3: $86
	ld hl, sp+$73                                    ; $50c4: $f8 $73
	ret nz                                           ; $50c6: $c0

	rla                                              ; $50c7: $17
	rrca                                             ; $50c8: $0f
	dec e                                            ; $50c9: $1d
	rrca                                             ; $50ca: $0f
	dec de                                           ; $50cb: $1b
	inc c                                            ; $50cc: $0c
	dec sp                                           ; $50cd: $3b
	inc c                                            ; $50ce: $0c
	ccf                                              ; $50cf: $3f
	ld [$0877], sp                                   ; $50d0: $08 $77 $08
	ld a, [hl]                                       ; $50d3: $7e
	ld bc, $0235                                     ; $50d4: $01 $35 $02
	rst $38                                          ; $50d7: $ff
	rst $38                                          ; $50d8: $ff
	ldh a, [c]                                       ; $50d9: $f2
	rst $38                                          ; $50da: $ff
	call nz, $a879                                   ; $50db: $c4 $79 $a8
	add b                                            ; $50de: $80
	ld a, b                                          ; $50df: $78
	rst JumpTable                                          ; $50e0: $c7
	ld a, h                                          ; $50e1: $7c
	jp $c1fe                                         ; $50e2: $c3 $fe $c1


	rst $38                                          ; $50e5: $ff
	pop bc                                           ; $50e6: $c1
	ei                                               ; $50e7: $fb
	di                                               ; $50e8: $f3
	rst FarCall                                          ; $50e9: $f7
	or $f7                                           ; $50ea: $f6 $f7
	and $6f                                          ; $50ec: $e6 $6f
	db $ec                                           ; $50ee: $ec
	ld a, [hl]                                       ; $50ef: $7e
	call z, $dcfe                                    ; $50f0: $cc $fe $dc
	db $fd                                           ; $50f3: $fd
	sbc b                                            ; $50f4: $98
	rst $38                                          ; $50f5: $ff
	cp b                                             ; $50f6: $b8
	sbc l                                            ; $50f7: $9d
	rrca                                             ; $50f8: $0f
	cp c                                             ; $50f9: $b9
	rra                                              ; $50fa: $1f
	ld sp, $711f                                     ; $50fb: $31 $1f $71
	adc c                                            ; $50fe: $89
	ccf                                              ; $50ff: $3f
	ld h, c                                          ; $5100: $61
	ccf                                              ; $5101: $3f
	pop hl                                           ; $5102: $e1
	ld a, a                                          ; $5103: $7f
	pop hl                                           ; $5104: $e1
	ld a, a                                          ; $5105: $7f
	and c                                            ; $5106: $a1
	rst $38                                          ; $5107: $ff
	pop bc                                           ; $5108: $c1
	cp $81                                           ; $5109: $fe $81
	cp $82                                           ; $510b: $fe $82
	db $fd                                           ; $510d: $fd
	add d                                            ; $510e: $82
	db $fd                                           ; $510f: $fd
	adc b                                            ; $5110: $88
	rst $38                                          ; $5111: $ff
	ld [$10ff], sp                                   ; $5112: $08 $ff $10

jr_029_5115:
	ld a, e                                          ; $5115: $7b
	cp $7f                                           ; $5116: $fe $7f
	ld [hl], l                                       ; $5118: $75
	ld a, a                                          ; $5119: $7f
	ld l, a                                          ; $511a: $6f
	add b                                            ; $511b: $80
	rlca                                             ; $511c: $07
	db $fc                                           ; $511d: $fc
	ld c, $f9                                        ; $511e: $0e $f9
	jr jr_029_5115                                   ; $5120: $18 $f3

	add hl, de                                       ; $5122: $19
	ldh a, [c]                                       ; $5123: $f2
	ld a, $e3                                        ; $5124: $3e $e3
	ld a, a                                          ; $5126: $7f
	rst GetHLinHL                                          ; $5127: $cf
	xor b                                            ; $5128: $a8
	rlca                                             ; $5129: $07
	ld d, h                                          ; $512a: $54
	inc bc                                           ; $512b: $03
	ld a, [hl+]                                      ; $512c: $2a
	call nc, $f805                                   ; $512d: $d4 $05 $f8
	ld a, [bc]                                       ; $5130: $0a
	pop af                                           ; $5131: $f1

jr_029_5132:
	dec d                                            ; $5132: $15
	ld a, [$7fb8]                                    ; $5133: $fa $b8 $7f
	inc a                                            ; $5136: $3c
	rst $38                                          ; $5137: $ff
	dec sp                                           ; $5138: $3b
	ld h, a                                          ; $5139: $67
	ld [hl], l                                       ; $513a: $75
	sub l                                            ; $513b: $95
	set 1, d                                         ; $513c: $cb $ca
	dec [hl]                                         ; $513e: $35
	call nz, $a13b                                   ; $513f: $c4 $3b $a1
	ld e, a                                          ; $5142: $5f
	inc de                                           ; $5143: $13
	rst $38                                          ; $5144: $ff
	ld a, $de                                        ; $5145: $3e $de
	rst $38                                          ; $5147: $ff
	add a                                            ; $5148: $87
	ld b, $f8                                        ; $5149: $06 $f8
	ld [bc], a                                       ; $514b: $02
	db $fc                                           ; $514c: $fc
	adc h                                            ; $514d: $8c
	ld hl, sp-$04                                    ; $514e: $f8 $fc
	ldh a, [$f8]                                     ; $5150: $f0 $f8
	add b                                            ; $5152: $80
	jr @-$1e                                         ; $5153: $18 $e0

	nop                                              ; $5155: $00
	ldh a, [rAUD1SWEEP]                              ; $5156: $f0 $10
	ldh [rTAC], a                                    ; $5158: $e0 $07
	jr jr_029_5163                                   ; $515a: $18 $07

	jr c, jr_029_5165                                ; $515c: $38 $07

	jr c, jr_029_516f                                ; $515e: $38 $0f

	ld [hl], b                                       ; $5160: $70
	ld l, l                                          ; $5161: $6d
	adc d                                            ; $5162: $8a

jr_029_5163:
	ld a, [hl]                                       ; $5163: $7e
	ld a, l                                          ; $5164: $7d

jr_029_5165:
	ld c, [hl]                                       ; $5165: $4e
	jp nz, $fe3f                                     ; $5166: $c2 $3f $fe

	ld l, [hl]                                       ; $5169: $6e
	cp d                                             ; $516a: $ba
	ld e, d                                          ; $516b: $5a
	and b                                            ; $516c: $a0
	ld [hl], d                                       ; $516d: $72
	cp d                                             ; $516e: $ba

jr_029_516f:
	ld e, a                                          ; $516f: $5f
	ld [$3fbb], a                                    ; $5170: $ea $bb $3f
	rlca                                             ; $5173: $07
	ld bc, $e080                                     ; $5174: $01 $80 $e0
	db $fc                                           ; $5177: $fc
	ld [hl], a                                       ; $5178: $77
	ld [$8795], a                                    ; $5179: $ea $95 $87
	ld a, b                                          ; $517c: $78
	rst AddAOntoHL                                          ; $517d: $ef
	inc e                                            ; $517e: $1c
	ld [hl], d                                       ; $517f: $72
	adc a                                            ; $5180: $8f
	ld sp, $080f                                     ; $5181: $31 $0f $08
	rlca                                             ; $5184: $07
	ld a, b                                          ; $5185: $78
	sub d                                            ; $5186: $92
	ld a, e                                          ; $5187: $7b

jr_029_5188:
	ld [$f180], a                                    ; $5188: $ea $80 $f1
	ld c, $f0                                        ; $518b: $0e $f0
	rrca                                             ; $518d: $0f
	ldh a, [rIF]                                     ; $518e: $f0 $0f
	ld [hl], b                                       ; $5190: $70
	adc a                                            ; $5191: $8f
	or b                                             ; $5192: $b0
	rst GetHLinHL                                          ; $5193: $cf
	ld e, b                                          ; $5194: $58
	rst SubAFromBC                                          ; $5195: $e7
	ld h, b                                          ; $5196: $60
	ccf                                              ; $5197: $3f
	ld [$ed07], sp                                   ; $5198: $08 $07 $ed
	inc sp                                           ; $519b: $33
	db $ed                                           ; $519c: $ed

jr_029_519d:
	inc sp                                           ; $519d: $33
	push de                                          ; $519e: $d5
	dec sp                                           ; $519f: $3b
	ld [hl], a                                       ; $51a0: $77
	sbc e                                            ; $51a1: $9b
	ld a, [hl+]                                      ; $51a2: $2a
	rst SubAFromDE                                          ; $51a3: $df
	ld a, [hl+]                                      ; $51a4: $2a
	rst SubAFromDE                                          ; $51a5: $df
	ld a, [de]                                       ; $51a6: $1a
	rst AddAOntoHL                                          ; $51a7: $ef
	ld b, $7d                                        ; $51a8: $06 $7d

jr_029_51aa:
	call z, $3e99                                    ; $51aa: $cc $99 $3e
	db $db                                           ; $51ad: $db
	inc a                                            ; $51ae: $3c
	ei                                               ; $51af: $fb
	inc e                                            ; $51b0: $1c
	db $eb                                           ; $51b1: $eb
	ld a, e                                          ; $51b2: $7b
	cp $84                                           ; $51b3: $fe $84
	ei                                               ; $51b5: $fb
	inc c                                            ; $51b6: $0c
	db $fc                                           ; $51b7: $fc
	rlca                                             ; $51b8: $07
	db $fd                                           ; $51b9: $fd
	inc bc                                           ; $51ba: $03
	jr nz, jr_029_519d                               ; $51bb: $20 $e0

	and b                                            ; $51bd: $a0
	ld h, b                                          ; $51be: $60
	ret nc                                           ; $51bf: $d0

	jr nc, jr_029_51aa                               ; $51c0: $30 $e8

	jr jr_029_5188                                   ; $51c2: $18 $c4

	inc a                                            ; $51c4: $3c
	cp d                                             ; $51c5: $ba
	ld a, [hl]                                       ; $51c6: $7e
	cp $fe                                           ; $51c7: $fe $fe
	db $e3                                           ; $51c9: $e3
	rst $38                                          ; $51ca: $ff
	adc e                                            ; $51cb: $8b
	inc b                                            ; $51cc: $04
	ld b, l                                          ; $51cd: $45
	ld [$be39], sp                                   ; $51ce: $08 $39 $be
	inc bc                                           ; $51d1: $03
	rlca                                             ; $51d2: $07
	rrca                                             ; $51d3: $0f
	sbc l                                            ; $51d4: $9d
	ld bc, $7b03                                     ; $51d5: $01 $03 $7b
	cp $7e                                           ; $51d8: $fe $7e
	rst AddAOntoHL                                          ; $51da: $ef
	sub h                                            ; $51db: $94
	cp l                                             ; $51dc: $bd
	jp $87fb                                         ; $51dd: $c3 $fb $87


	or $8f                                           ; $51e0: $f6 $8f
	db $ec                                           ; $51e2: $ec
	sbc a                                            ; $51e3: $9f
	ld e, b                                          ; $51e4: $58
	cp a                                             ; $51e5: $bf
	ld de, $5e78                                     ; $51e6: $11 $78 $5e
	sub d                                            ; $51e9: $92
	rst $38                                          ; $51ea: $ff
	ld [hl], b                                       ; $51eb: $70
	rst SubAFromDE                                          ; $51ec: $df
	pop af                                           ; $51ed: $f1
	ccf                                              ; $51ee: $3f
	db $e3                                           ; $51ef: $e3
	ccf                                              ; $51f0: $3f
	rst SubAFromBC                                          ; $51f1: $e7
	ld a, c                                          ; $51f2: $79
	rst GetHLinHL                                          ; $51f3: $cf
	ldh a, [$9f]                                     ; $51f4: $f0 $9f
	ldh [$7a], a                                     ; $51f6: $e0 $7a
	ld b, l                                          ; $51f8: $45
	ld a, [hl]                                       ; $51f9: $7e
	adc $98                                          ; $51fa: $ce $98
	and d                                            ; $51fc: $a2
	rst $38                                          ; $51fd: $ff
	ld [hl+], a                                      ; $51fe: $22
	rst $38                                          ; $51ff: $ff
	ld b, d                                          ; $5200: $42
	rst $38                                          ; $5201: $ff
	ld b, h                                          ; $5202: $44
	ld a, d                                          ; $5203: $7a
	sbc d                                            ; $5204: $9a
	sbc d                                            ; $5205: $9a
	add l                                            ; $5206: $85
	rst $38                                          ; $5207: $ff
	adc c                                            ; $5208: $89
	rst $38                                          ; $5209: $ff
	jr nz, jr_029_5287                               ; $520a: $20 $7b

	call c, Call_029_4298                            ; $520c: $dc $98 $42
	cp $44                                           ; $520f: $fe $44
	db $fc                                           ; $5211: $fc
	adc b                                            ; $5212: $88
	ld hl, sp-$70                                    ; $5213: $f8 $90
	ld a, b                                          ; $5215: $78
	ld h, [hl]                                       ; $5216: $66
	add b                                            ; $5217: $80
	ld b, b                                          ; $5218: $40
	ret nz                                           ; $5219: $c0

	sub e                                            ; $521a: $93
	sbc a                                            ; $521b: $9f
	dec l                                            ; $521c: $2d
	inc de                                           ; $521d: $13
	ld b, e                                          ; $521e: $43
	rrca                                             ; $521f: $0f
	rrca                                             ; $5220: $0f
	rra                                              ; $5221: $1f
	inc c                                            ; $5222: $0c
	inc sp                                           ; $5223: $33
	inc b                                            ; $5224: $04
	ld [$0413], sp                                   ; $5225: $08 $13 $04
	inc b                                            ; $5228: $04
	dec bc                                           ; $5229: $0b
	rst GetHLinHL                                          ; $522a: $cf
	rst $38                                          ; $522b: $ff
	adc a                                            ; $522c: $8f
	rst $38                                          ; $522d: $ff
	or l                                             ; $522e: $b5
	rst $38                                          ; $522f: $ff
	db $fc                                           ; $5230: $fc
	rst $38                                          ; $5231: $ff
	dec sp                                           ; $5232: $3b
	rst $38                                          ; $5233: $ff
	rst JumpTable                                          ; $5234: $c7
	ccf                                              ; $5235: $3f
	ld a, [de]                                       ; $5236: $1a
	add b                                            ; $5237: $80
	rlca                                             ; $5238: $07
	daa                                              ; $5239: $27
	ret nz                                           ; $523a: $c0

	cp e                                             ; $523b: $bb
	rst JumpTable                                          ; $523c: $c7
	call $f5f3                                       ; $523d: $cd $f3 $f5
	ei                                               ; $5240: $fb
	ld a, a                                          ; $5241: $7f
	rst $38                                          ; $5242: $ff
	cp $ff                                           ; $5243: $fe $ff
	ei                                               ; $5245: $fb
	db $fc                                           ; $5246: $fc
	cp $f9                                           ; $5247: $fe $f9
	and b                                            ; $5249: $a0
	ld a, a                                          ; $524a: $7f
	ldh [$e1], a                                     ; $524b: $e0 $e1
	ret nz                                           ; $524d: $c0

	pop hl                                           ; $524e: $e1
	ret nz                                           ; $524f: $c0

	jp $c380                                         ; $5250: $c3 $80 $c3


	ret nz                                           ; $5253: $c0

	add e                                            ; $5254: $83
	add b                                            ; $5255: $80
	rlca                                             ; $5256: $07
	sbc e                                            ; $5257: $9b
	ld bc, $0106                                     ; $5258: $01 $06 $01
	ld c, $6c                                        ; $525b: $0e $6c
	ld e, d                                          ; $525d: $5a
	ld b, l                                          ; $525e: $45
	adc d                                            ; $525f: $8a
	inc bc                                           ; $5260: $03
	cp $b4                                           ; $5261: $fe $b4
	rst $38                                          ; $5263: $ff
	rst $38                                          ; $5264: $ff
	rst $38                                          ; $5265: $ff
	rst $38                                          ; $5266: $ff
	rst $38                                          ; $5267: $ff
	rst $38                                          ; $5268: $ff
	rst $38                                          ; $5269: $ff
	rst $38                                          ; $526a: $ff
	rst $38                                          ; $526b: $ff
	rst $38                                          ; $526c: $ff
	rst $38                                          ; $526d: $ff
	rst $38                                          ; $526e: $ff
	cp $5a                                           ; $526f: $fe $5a
	and h                                            ; $5271: $a4
	ld [hl], d                                       ; $5272: $72
	or b                                             ; $5273: $b0
	ld e, d                                          ; $5274: $5a
	and h                                            ; $5275: $a4
	ld [hl], a                                       ; $5276: $77
	cp $7a                                           ; $5277: $fe $7a
	cp d                                             ; $5279: $ba
	rst $38                                          ; $527a: $ff
	ld l, d                                          ; $527b: $6a
	and h                                            ; $527c: $a4
	ld a, l                                          ; $527d: $7d
	ld [hl], h                                       ; $527e: $74
	ld a, a                                          ; $527f: $7f
	ldh a, [$7e]                                     ; $5280: $f0 $7e
	adc $99                                          ; $5282: $ce $99
	ld b, $7f                                        ; $5284: $06 $7f
	ld [bc], a                                       ; $5286: $02

jr_029_5287:
	rrca                                             ; $5287: $0f
	ld [bc], a                                       ; $5288: $02
	inc bc                                           ; $5289: $03
	cp [hl]                                          ; $528a: $be
	nop                                              ; $528b: $00
	ldh [$f8], a                                     ; $528c: $e0 $f8
	ld a, a                                          ; $528e: $7f
	ld [$f797], a                                    ; $528f: $ea $97 $f7
	rrca                                             ; $5292: $0f
	db $ed                                           ; $5293: $ed
	ld e, $b7                                        ; $5294: $1e $b7
	ld a, b                                          ; $5296: $78
	ld c, a                                          ; $5297: $4f
	ldh a, [$6e]                                     ; $5298: $f0 $6e
	ld a, c                                          ; $529a: $79
	rst $38                                          ; $529b: $ff
	sbc l                                            ; $529c: $9d
	add c                                            ; $529d: $81
	rst $38                                          ; $529e: $ff
	ld [hl], a                                       ; $529f: $77
	jp c, $a877                                      ; $52a0: $da $77 $a8

	ld a, [hl]                                       ; $52a3: $7e
	or h                                             ; $52a4: $b4
	add c                                            ; $52a5: $81
	cp $02                                           ; $52a6: $fe $02
	dec a                                            ; $52a8: $3d
	inc bc                                           ; $52a9: $03
	add e                                            ; $52aa: $83
	ld bc, $81c3                                     ; $52ab: $01 $c3 $81
	db $e3                                           ; $52ae: $e3
	add c                                            ; $52af: $81
	rst FarCall                                          ; $52b0: $f7
	ld b, c                                          ; $52b1: $41
	rst $38                                          ; $52b2: $ff
	pop bc                                           ; $52b3: $c1
	ccf                                              ; $52b4: $3f
	ld h, c                                          ; $52b5: $61
	dec sp                                           ; $52b6: $3b
	ld [hl], l                                       ; $52b7: $75
	dec sp                                           ; $52b8: $3b
	push af                                          ; $52b9: $f5
	ld c, a                                          ; $52ba: $4f
	di                                               ; $52bb: $f3
	ld e, a                                          ; $52bc: $5f
	rst SubAFromBC                                          ; $52bd: $e7
	cp a                                             ; $52be: $bf
	adc $bb                                          ; $52bf: $ce $bb
	call c, $906f                                    ; $52c1: $dc $6f $90
	ld l, a                                          ; $52c4: $6f
	ld a, [hl-]                                      ; $52c5: $3a
	ld a, a                                          ; $52c6: $7f
	ret nc                                           ; $52c7: $d0

	ld a, a                                          ; $52c8: $7f
	sub l                                            ; $52c9: $95
	adc b                                            ; $52ca: $88
	add e                                            ; $52cb: $83
	ld a, a                                          ; $52cc: $7f
	add $3f                                          ; $52cd: $c6 $3f
	xor $1f                                          ; $52cf: $ee $1f
	ld [$f31f], a                                    ; $52d1: $ea $1f $f3
	rra                                              ; $52d4: $1f
	pop de                                           ; $52d5: $d1
	ccf                                              ; $52d6: $3f
	ld a, [bc]                                       ; $52d7: $0a
	rst $38                                          ; $52d8: $ff

jr_029_52d9:
	dec bc                                           ; $52d9: $0b
	rst $38                                          ; $52da: $ff
	ld d, $fe                                        ; $52db: $16 $fe
	inc d                                            ; $52dd: $14
	db $fc                                           ; $52de: $fc
	jr jr_029_52d9                                   ; $52df: $18 $f8

	jr nc, @+$7c                                     ; $52e1: $30 $7a

	ret nc                                           ; $52e3: $d0

	sbc d                                            ; $52e4: $9a
	ld h, b                                          ; $52e5: $60
	ldh [$80], a                                     ; $52e6: $e0 $80
	add b                                            ; $52e8: $80
	nop                                              ; $52e9: $00
	cp d                                             ; $52ea: $ba
	ld [bc], a                                       ; $52eb: $02
	inc b                                            ; $52ec: $04
	ld a, [bc]                                       ; $52ed: $0a
	inc b                                            ; $52ee: $04
	ld [$1104], sp                                   ; $52ef: $08 $04 $11
	sub l                                            ; $52f2: $95
	inc b                                            ; $52f3: $04
	jr nc, jr_029_52fe                               ; $52f4: $30 $08

	add hl, bc                                       ; $52f6: $09
	inc d                                            ; $52f7: $14
	db $10                                           ; $52f8: $10
	ld [$104d], sp                                   ; $52f9: $08 $4d $10
	jr nz, jr_029_5379                               ; $52fc: $20 $7b

jr_029_52fe:
	db $fc                                           ; $52fe: $fc
	add b                                            ; $52ff: $80
	or d                                             ; $5300: $b2
	ld [$fc03], sp                                   ; $5301: $08 $03 $fc
	ret nz                                           ; $5304: $c0

	ccf                                              ; $5305: $3f
	ccf                                              ; $5306: $3f
	ret nz                                           ; $5307: $c0

	nop                                              ; $5308: $00
	rst $38                                          ; $5309: $ff
	xor b                                            ; $530a: $a8
	ld d, a                                          ; $530b: $57
	ld d, l                                          ; $530c: $55
	xor d                                            ; $530d: $aa
	xor d                                            ; $530e: $aa
	ld d, l                                          ; $530f: $55
	ld d, l                                          ; $5310: $55
	xor d                                            ; $5311: $aa
	cp $01                                           ; $5312: $fe $01
	inc e                                            ; $5314: $1c
	ldh [c], a                                       ; $5315: $e2
	add b                                            ; $5316: $80
	ld a, [hl]                                       ; $5317: $7e
	ld a, b                                          ; $5318: $78
	add h                                            ; $5319: $84
	nop                                              ; $531a: $00
	db $fc                                           ; $531b: $fc
	ld b, b                                          ; $531c: $40
	cp b                                             ; $531d: $b8
	and b                                            ; $531e: $a0
	sbc h                                            ; $531f: $9c
	ld e, b                                          ; $5320: $58
	ld c, b                                          ; $5321: $48
	or b                                             ; $5322: $b0
	ld [hl], h                                       ; $5323: $74
	ld e, h                                          ; $5324: $5c
	ld a, a                                          ; $5325: $7f
	cp $75                                           ; $5326: $fe $75
	adc d                                            ; $5328: $8a
	sbc l                                            ; $5329: $9d
	rrca                                             ; $532a: $0f
	jr nc, jr_029_53a2                               ; $532b: $30 $75

	adc h                                            ; $532d: $8c
	ld [bc], a                                       ; $532e: $02
	xor $03                                          ; $532f: $ee $03
	cp $03                                           ; $5331: $fe $03
	cp $b2                                           ; $5333: $fe $b2
	rst $38                                          ; $5335: $ff
	rst $38                                          ; $5336: $ff
	rst $38                                          ; $5337: $ff
	rst $38                                          ; $5338: $ff
	rst $38                                          ; $5339: $ff
	rst $38                                          ; $533a: $ff
	rst $38                                          ; $533b: $ff
	rst $38                                          ; $533c: $ff
	rst $38                                          ; $533d: $ff
	rst $38                                          ; $533e: $ff
	rst $38                                          ; $533f: $ff
	rst $38                                          ; $5340: $ff
	rst $38                                          ; $5341: $ff
	rst $38                                          ; $5342: $ff
	ldh a, [$72]                                     ; $5343: $f0 $72
	cp d                                             ; $5345: $ba
	ld e, d                                          ; $5346: $5a
	sub b                                            ; $5347: $90
	ld [hl], d                                       ; $5348: $72
	cp d                                             ; $5349: $ba
	sbc l                                            ; $534a: $9d
	ldh [$1f], a                                     ; $534b: $e0 $1f
	ld h, a                                          ; $534d: $67
	ld [$1d7e], a                                    ; $534e: $ea $7e $1d
	ld [hl], d                                       ; $5351: $72
	adc [hl]                                         ; $5352: $8e
	ld a, a                                          ; $5353: $7f
	ld l, $6b                                        ; $5354: $2e $6b
	ld [$c997], a                                    ; $5356: $ea $97 $c9
	rst $38                                          ; $5359: $ff
	dec b                                            ; $535a: $05
	rst $38                                          ; $535b: $ff
	ld b, $3f                                        ; $535c: $06 $3f
	ld [bc], a                                       ; $535e: $02
	rrca                                             ; $535f: $0f
	cp l                                             ; $5360: $bd
	ld bc, $c000                                     ; $5361: $01 $00 $c0
	ld hl, sp+$66                                    ; $5364: $f8 $66
	ld c, d                                          ; $5366: $4a
	ld a, a                                          ; $5367: $7f
	and $9d                                          ; $5368: $e6 $9d
	add hl, sp                                       ; $536a: $39
	ld b, $77                                        ; $536b: $06 $77
	db $eb                                           ; $536d: $eb
	sub l                                            ; $536e: $95
	and c                                            ; $536f: $a1
	ld a, a                                          ; $5370: $7f
	ret nz                                           ; $5371: $c0

	ld a, a                                          ; $5372: $7f
	inc c                                            ; $5373: $0c
	di                                               ; $5374: $f3
	ld a, $c1                                        ; $5375: $3e $c1
	cp $01                                           ; $5377: $fe $01

jr_029_5379:
	ld [hl], a                                       ; $5379: $77
	db $ec                                           ; $537a: $ec
	sbc h                                            ; $537b: $9c
	ld hl, sp+$07                                    ; $537c: $f8 $07
	ldh [$de], a                                     ; $537e: $e0 $de
	ret nz                                           ; $5380: $c0

	sbc [hl]                                         ; $5381: $9e
	add b                                            ; $5382: $80
	ld a, e                                          ; $5383: $7b
	cp $96                                           ; $5384: $fe $96
	and b                                            ; $5386: $a0
	ret nz                                           ; $5387: $c0

	sub b                                            ; $5388: $90
	ldh [hDisp0_WY], a                                     ; $5389: $e0 $88
	ldh a, [$b6]                                     ; $538b: $f0 $b6
	ret z                                            ; $538d: $c8

	ld [$10b9], sp                                   ; $538e: $08 $b9 $10
	ld [$0110], sp                                   ; $5391: $08 $10 $01
	db $10                                           ; $5394: $10
	dec b                                            ; $5395: $05
	ld a, [bc]                                       ; $5396: $0a
	ld l, h                                          ; $5397: $6c
	sbc c                                            ; $5398: $99
	db $10                                           ; $5399: $10
	and d                                            ; $539a: $a2
	ld [$1044], sp                                   ; $539b: $08 $44 $10
	ld [$40bc], a                                    ; $539e: $ea $bc $40
	add d                                            ; $53a1: $82

jr_029_53a2:
	ld b, d                                          ; $53a2: $42
	add e                                            ; $53a3: $83
	xor d                                            ; $53a4: $aa

jr_029_53a5:
	ld a, d                                          ; $53a5: $7a
	call z, $fc77                                    ; $53a6: $cc $77 $fc
	ld a, [hl]                                       ; $53a9: $7e
	ret nz                                           ; $53aa: $c0

	add a                                            ; $53ab: $87
	ld d, b                                          ; $53ac: $50
	xor a                                            ; $53ad: $af
	ld [$00f7], sp                                   ; $53ae: $08 $f7 $00
	rst $38                                          ; $53b1: $ff
	and b                                            ; $53b2: $a0
	ld d, b                                          ; $53b3: $50
	ld b, b                                          ; $53b4: $40
	or b                                             ; $53b5: $b0
	sub b                                            ; $53b6: $90
	ld h, c                                          ; $53b7: $61
	ld b, b                                          ; $53b8: $40
	and c                                            ; $53b9: $a1
	jr nz, @-$3d                                     ; $53ba: $20 $c1

	nop                                              ; $53bc: $00
	jp $8340                                         ; $53bd: $c3 $40 $83


	nop                                              ; $53c0: $00
	add a                                            ; $53c1: $87
	rra                                              ; $53c2: $1f
	ldh [$74], a                                     ; $53c3: $e0 $74
	ld e, d                                          ; $53c5: $5a
	ld bc, $038c                                     ; $53c6: $01 $8c $03
	cp $03                                           ; $53c9: $fe $03
	cp $03                                           ; $53cb: $fe $03
	cp $03                                           ; $53cd: $fe $03
	cp $b6                                           ; $53cf: $fe $b6
	rst $38                                          ; $53d1: $ff
	rst $38                                          ; $53d2: $ff
	rst $38                                          ; $53d3: $ff
	rst $38                                          ; $53d4: $ff
	rst $38                                          ; $53d5: $ff
	rst $38                                          ; $53d6: $ff
	rst $38                                          ; $53d7: $ff
	rst $38                                          ; $53d8: $ff
	rst $38                                          ; $53d9: $ff
	rst $38                                          ; $53da: $ff
	nop                                              ; $53db: $00
	sbc [hl]                                         ; $53dc: $9e
	cp $5e                                           ; $53dd: $fe $5e
	and h                                            ; $53df: $a4
	ld [hl], e                                       ; $53e0: $73
	ldh a, [$72]                                     ; $53e1: $f0 $72
	cp d                                             ; $53e3: $ba
	ld [hl], a                                       ; $53e4: $77
	ld [$d47e], a                                    ; $53e5: $ea $7e $d4
	ld [hl], a                                       ; $53e8: $77
	ldh a, [$9a]                                     ; $53e9: $f0 $9a
	jr nz, jr_029_540c                               ; $53eb: $20 $1f

	ld [$0307], sp                                   ; $53ed: $08 $07 $03
	ld l, [hl]                                       ; $53f0: $6e
	and h                                            ; $53f1: $a4
	sbc [hl]                                         ; $53f2: $9e
	ldh a, [rPCM34]                                  ; $53f3: $f0 $77
	ld [$9c94], a                                    ; $53f5: $ea $94 $9c
	db $e3                                           ; $53f8: $e3
	adc [hl]                                         ; $53f9: $8e
	pop af                                           ; $53fa: $f1
	inc bc                                           ; $53fb: $03
	db $fc                                           ; $53fc: $fc
	dec d                                            ; $53fd: $15
	ld a, [hl+]                                      ; $53fe: $2a
	ld a, [hl+]                                      ; $53ff: $2a
	dec d                                            ; $5400: $15
	ld b, $73                                        ; $5401: $06 $73
	call nc, $d48e                                   ; $5403: $d4 $8e $d4
	ld bc, $8679                                     ; $5406: $01 $79 $86
	ld [de], a                                       ; $5409: $12
	db $ec                                           ; $540a: $ec
	dec b                                            ; $540b: $05

jr_029_540c:
	ld hl, sp-$56                                    ; $540c: $f8 $aa
	ld d, h                                          ; $540e: $54
	ld d, h                                          ; $540f: $54
	xor c                                            ; $5410: $a9
	xor b                                            ; $5411: $a8
	ld d, [hl]                                       ; $5412: $56
	inc d                                            ; $5413: $14
	dec bc                                           ; $5414: $0b
	add b                                            ; $5415: $80
	ld a, e                                          ; $5416: $7b
	call nc, $8091                                   ; $5417: $d4 $91 $80
	ld [bc], a                                       ; $541a: $02
	ld b, b                                          ; $541b: $40
	dec b                                            ; $541c: $05
	adc b                                            ; $541d: $88
	ld [bc], a                                       ; $541e: $02
	inc b                                            ; $541f: $04
	ld b, c                                          ; $5420: $41
	jr nz, jr_029_53a5                               ; $5421: $20 $82

	db $10                                           ; $5423: $10
	pop bc                                           ; $5424: $c1
	jr nc, @-$2f                                     ; $5425: $30 $cf

	cp c                                             ; $5427: $b9
	ld a, a                                          ; $5428: $7f
	sbc a                                            ; $5429: $9f
	ld a, [hl]                                       ; $542a: $7e
	cp $fc                                           ; $542b: $fe $fc
	db $fc                                           ; $542d: $fc
	ld a, h                                          ; $542e: $7c
	add a                                            ; $542f: $87
	ld a, h                                          ; $5430: $7c
	ld e, h                                          ; $5431: $5c
	ld a, a                                          ; $5432: $7f
	cp $65                                           ; $5433: $fe $65
	adc h                                            ; $5435: $8c
	ld a, a                                          ; $5436: $7f
	cp $03                                           ; $5437: $fe $03
	ld e, [hl]                                       ; $5439: $5e
	inc bc                                           ; $543a: $03
	cp $03                                           ; $543b: $fe $03
	cp $03                                           ; $543d: $fe $03
	cp $03                                           ; $543f: $fe $03
	cp $03                                           ; $5441: $fe $03
	cp $1f                                           ; $5443: $fe $1f
	cp $6e                                           ; $5445: $fe $6e
	cp d                                             ; $5447: $ba
	ld e, d                                          ; $5448: $5a
	and b                                            ; $5449: $a0
	ld a, d                                          ; $544a: $7a
	cp d                                             ; $544b: $ba
	ld a, l                                          ; $544c: $7d
	pop de                                           ; $544d: $d1
	ld e, a                                          ; $544e: $5f
	ld [$029e], a                                    ; $544f: $ea $9e $02
	halt                                             ; $5452: $76
	and h                                            ; $5453: $a4
	ld a, h                                          ; $5454: $7c
	inc a                                            ; $5455: $3c
	ld l, e                                          ; $5456: $6b
	ld [$5c7d], a                                    ; $5457: $ea $7d $5c
	sbc d                                            ; $545a: $9a
	ld [bc], a                                       ; $545b: $02
	ldh a, [$4c]                                     ; $545c: $f0 $4c
	ld sp, $7204                                     ; $545e: $31 $04 $72
	adc a                                            ; $5461: $8f
	cp h                                             ; $5462: $bc
	add b                                            ; $5463: $80
	ldh a, [$fc]                                     ; $5464: $f0 $fc
	ld hl, sp-$08                                    ; $5466: $f8 $f8
	sbc c                                            ; $5468: $99
	ld [$00f0], sp                                   ; $5469: $08 $f0 $00
	ldh a, [rLCDC]                                   ; $546c: $f0 $40
	ld hl, $01be                                     ; $546e: $21 $be $01
	ld bc, $7c03                                     ; $5471: $01 $03 $7c
	ld e, h                                          ; $5474: $5c
	ld a, b                                          ; $5475: $78
	ld e, d                                          ; $5476: $5a
	ld l, c                                          ; $5477: $69
	adc h                                            ; $5478: $8c
	ld [hl], l                                       ; $5479: $75
	adc d                                            ; $547a: $8a
	inc bc                                           ; $547b: $03
	ld a, [hl]                                       ; $547c: $7e
	or h                                             ; $547d: $b4
	rst $38                                          ; $547e: $ff
	rst $38                                          ; $547f: $ff
	rst $38                                          ; $5480: $ff
	rst $38                                          ; $5481: $ff
	rst $38                                          ; $5482: $ff
	rst $38                                          ; $5483: $ff
	rst $38                                          ; $5484: $ff
	rst $38                                          ; $5485: $ff
	rst $38                                          ; $5486: $ff
	rst $38                                          ; $5487: $ff
	rst $38                                          ; $5488: $ff
	pop af                                           ; $5489: $f1
	ldh [$9a], a                                     ; $548a: $e0 $9a
	ld c, $c0                                        ; $548c: $0e $c0
	ld de, $17c0                                     ; $548e: $11 $c0 $17
	ld h, a                                          ; $5491: $67
	ldh a, [$97]                                     ; $5492: $f0 $97
	db $ec                                           ; $5494: $ec
	nop                                              ; $5495: $00
	ld b, b                                          ; $5496: $40
	adc e                                            ; $5497: $8b
	ld bc, $206a                                     ; $5498: $01 $6a $20
	ld c, h                                          ; $549b: $4c
	ld h, a                                          ; $549c: $67
	ldh a, [$97]                                     ; $549d: $f0 $97
	rst SubAFromBC                                          ; $549f: $e7
	nop                                              ; $54a0: $00
	ld bc, $095a                                     ; $54a1: $01 $5a $09
	ld d, d                                          ; $54a4: $52
	nop                                              ; $54a5: $00
	ld h, d                                          ; $54a6: $62
	ld h, a                                          ; $54a7: $67
	ldh a, [$97]                                     ; $54a8: $f0 $97
	cp l                                             ; $54aa: $bd
	nop                                              ; $54ab: $00
	jr jr_029_54cf                                   ; $54ac: $18 $21

	jr @+$27                                         ; $54ae: $18 $25

	inc e                                            ; $54b0: $1c
	and c                                            ; $54b1: $a1
	ld h, a                                          ; $54b2: $67
	ldh a, [$97]                                     ; $54b3: $f0 $97
	sbc h                                            ; $54b5: $9c
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	ld l, e                                          ; $54b8: $6b
	ld hl, $004a                                     ; $54b9: $21 $4a $00
	adc h                                            ; $54bc: $8c
	ld c, a                                          ; $54bd: $4f
	ret nc                                           ; $54be: $d0

	sbc [hl]                                         ; $54bf: $9e
	ld bc, $d063                                     ; $54c0: $01 $63 $d0
	sbc e                                            ; $54c3: $9b
	ld l, h                                          ; $54c4: $6c
	nop                                              ; $54c5: $00
	jr nz, jr_029_5513                               ; $54c6: $20 $4b

	ld a, e                                          ; $54c8: $7b
	xor $9e                                          ; $54c9: $ee $9e
	ld [de], a                                       ; $54cb: $12
	ld h, a                                          ; $54cc: $67
	ldh a, [$9b]                                     ; $54cd: $f0 $9b

jr_029_54cf:
	db $db                                           ; $54cf: $db
	nop                                              ; $54d0: $00
	ld bc, $7b4a                                     ; $54d1: $01 $4a $7b
	cp $9e                                           ; $54d4: $fe $9e
	ld d, d                                          ; $54d6: $52
	ld h, a                                          ; $54d7: $67
	ldh a, [$9b]                                     ; $54d8: $f0 $9b
	sub a                                            ; $54da: $97
	nop                                              ; $54db: $00
	add b                                            ; $54dc: $80
	ld [de], a                                       ; $54dd: $12
	cp a                                             ; $54de: $bf
	ld d, b                                          ; $54df: $50
	ld d, l                                          ; $54e0: $55
	ld h, a                                          ; $54e1: $67

jr_029_54e2:
	ldh a, [$97]                                     ; $54e2: $f0 $97
	ld e, $40                                        ; $54e4: $1e $40
	ld c, $50                                        ; $54e6: $0e $50
	inc c                                            ; $54e8: $0c
	ld d, c                                          ; $54e9: $51
	inc c                                            ; $54ea: $0c
	ld d, c                                          ; $54eb: $51
	ld h, a                                          ; $54ec: $67
	ldh a, [$9d]                                     ; $54ed: $f0 $9d
	ld e, l                                          ; $54ef: $5d
	nop                                              ; $54f0: $00
	ld [hl], a                                       ; $54f1: $77
	ldh a, [c]                                       ; $54f2: $f2
	ld e, a                                          ; $54f3: $5f
	ldh a, [$98]                                     ; $54f4: $f0 $98
	db $e3                                           ; $54f6: $e3
	nop                                              ; $54f7: $00

jr_029_54f8:
	ldh [$0d], a                                     ; $54f8: $e0 $0d
	db $e4                                           ; $54fa: $e4
	add hl, bc                                       ; $54fb: $09
	ldh [$61], a                                     ; $54fc: $e0 $61
	ld d, [hl]                                       ; $54fe: $56
	sbc b                                            ; $54ff: $98
	ld h, [hl]                                       ; $5500: $66
	nop                                              ; $5501: $00
	nop                                              ; $5502: $00
	ld e, d                                          ; $5503: $5a
	ld [$0056], sp                                   ; $5504: $08 $56 $00
	ld h, e                                          ; $5507: $63
	or b                                             ; $5508: $b0
	sub c                                            ; $5509: $91
	ret nc                                           ; $550a: $d0

	ld bc, $9b40                                     ; $550b: $01 $40 $9b
	ld c, c                                          ; $550e: $49
	sub d                                            ; $550f: $92
	add hl, bc                                       ; $5510: $09
	ld [de], a                                       ; $5511: $12
	add b                                            ; $5512: $80

jr_029_5513:
	ld a, a                                          ; $5513: $7f
	ldh a, [rIF]                                     ; $5514: $f0 $0f
	cp $01                                           ; $5516: $fe $01
	ld [hl], a                                       ; $5518: $77
	ld h, b                                          ; $5519: $60
	sbc c                                            ; $551a: $99

jr_029_551b:
	inc b                                            ; $551b: $04
	ld l, c                                          ; $551c: $69
	inc h                                            ; $551d: $24
	ld e, c                                          ; $551e: $59
	inc e                                            ; $551f: $1c
	add b                                            ; $5520: $80
	cp [hl]                                          ; $5521: $be
	add e                                            ; $5522: $83
	rst FarCall                                          ; $5523: $f7
	rst $38                                          ; $5524: $ff
	ld a, [hl]                                       ; $5525: $7e
	push de                                          ; $5526: $d5
	sub a                                            ; $5527: $97
	ld h, e                                          ; $5528: $63
	nop                                              ; $5529: $00
	nop                                              ; $552a: $00
	xor [hl]                                         ; $552b: $ae
	add [hl]                                         ; $552c: $86
	jr z, jr_029_552f                                ; $552d: $28 $00

jr_029_552f:
	ld h, e                                          ; $552f: $63
	ld h, h                                          ; $5530: $64
	ld e, b                                          ; $5531: $58
	sub a                                            ; $5532: $97
	ld sp, $0000                                     ; $5533: $31 $00 $00
	rst SubAFromHL                                          ; $5536: $d7
	ld b, e                                          ; $5537: $43
	or h                                             ; $5538: $b4
	db $10                                           ; $5539: $10
	ld hl, $c067                                     ; $553a: $21 $67 $c0
	ld a, a                                          ; $553d: $7f
	add $7f                                          ; $553e: $c6 $7f
	ld [bc], a                                       ; $5540: $02
	ld a, e                                          ; $5541: $7b
	jr nc, jr_029_54e2                               ; $5542: $30 $9e

	ld a, [de]                                       ; $5544: $1a
	ld h, d                                          ; $5545: $62
	ld e, b                                          ; $5546: $58
	sbc b                                            ; $5547: $98
	ld b, h                                          ; $5548: $44
	nop                                              ; $5549: $00
	ld e, l                                          ; $554a: $5d
	inc c                                            ; $554b: $0c
	ld d, c                                          ; $554c: $51
	nop                                              ; $554d: $00
	ld b, l                                          ; $554e: $45
	ld h, a                                          ; $554f: $67
	ldh a, [$7d]                                     ; $5550: $f0 $7d
	dec sp                                           ; $5552: $3b
	sub c                                            ; $5553: $91
	ccf                                              ; $5554: $3f
	add b                                            ; $5555: $80
	sbc a                                            ; $5556: $9f
	jr nz, jr_029_54f8                               ; $5557: $20 $9f

	jr nz, jr_029_551b                               ; $5559: $20 $c0

	ld de, $0ee0                                     ; $555b: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $555e: $e0 $11
	ldh a, [rIF]                                     ; $5560: $f0 $0f
	ld h, a                                          ; $5562: $67
	add sp, -$69                                     ; $5563: $e8 $97
	inc h                                            ; $5565: $24
	ld c, e                                          ; $5566: $4b
	ld hl, $60ca                                     ; $5567: $21 $ca $60
	adc h                                            ; $556a: $8c
	db $e4                                           ; $556b: $e4
	dec de                                           ; $556c: $1b
	ld h, a                                          ; $556d: $67
	ldh a, [$97]                                     ; $556e: $f0 $97
	jr nz, jr_029_55cc                               ; $5570: $20 $5a

	ld [$0052], sp                                   ; $5572: $08 $52 $00
	rst SubAFromBC                                          ; $5575: $e7
	ld h, e                                          ; $5576: $63
	sbc h                                            ; $5577: $9c
	ld h, a                                          ; $5578: $67
	ldh a, [$7e]                                     ; $5579: $f0 $7e
	adc $97                                          ; $557b: $ce $97
	inc c                                            ; $557d: $0c
	ld de, $b500                                     ; $557e: $11 $00 $b5
	sub b                                            ; $5581: $90
	ld h, a                                          ; $5582: $67
	di                                               ; $5583: $f3
	inc c                                            ; $5584: $0c
	ld l, a                                          ; $5585: $6f
	ldh a, [$9e]                                     ; $5586: $f0 $9e
	add h                                            ; $5588: $84
	halt                                             ; $5589: $76
	jp z, $9c9c                                      ; $558a: $ca $9c $9c

	adc h                                            ; $558d: $8c
	ld [hl], e                                       ; $558e: $73
	ld h, a                                          ; $558f: $67
	ldh [$9e], a                                     ; $5590: $e0 $9e
	ld hl, $ca76                                     ; $5592: $21 $76 $ca
	sbc [hl]                                         ; $5595: $9e
	and $5f                                          ; $5596: $e6 $5f
	ret nc                                           ; $5598: $d0

	ld [hl], a                                       ; $5599: $77
	ld a, d                                          ; $559a: $7a
	ld a, [hl]                                       ; $559b: $7e
	ld a, d                                          ; $559c: $7a
	sbc l                                            ; $559d: $9d
	inc h                                            ; $559e: $24
	db $db                                           ; $559f: $db
	ld h, e                                          ; $55a0: $63
	ld a, b                                          ; $55a1: $78
	ld a, a                                          ; $55a2: $7f
	or d                                             ; $55a3: $b2
	ld a, a                                          ; $55a4: $7f
	xor [hl]                                         ; $55a5: $ae
	sbc h                                            ; $55a6: $9c
	jp nc, $b748                                     ; $55a7: $d2 $48 $b7

	ld h, e                                          ; $55aa: $63
	ldh [$98], a                                     ; $55ab: $e0 $98
	ld d, $03                                        ; $55ad: $16 $03
	call nc, $9443                                   ; $55af: $d4 $43 $94
	ld b, e                                          ; $55b2: $43
	cp h                                             ; $55b3: $bc
	ld h, a                                          ; $55b4: $67
	ldh a, [$97]                                     ; $55b5: $f0 $97
	inc c                                            ; $55b7: $0c
	ld d, b                                          ; $55b8: $50
	ld [$0953], sp                                   ; $55b9: $08 $53 $09
	ld d, d                                          ; $55bc: $52
	add hl, bc                                       ; $55bd: $09
	or $63                                           ; $55be: $f6 $63
	ldh a, [$7a]                                     ; $55c0: $f0 $7a
	call z, Call_029_44bf                            ; $55c2: $cc $bf $44
	rst $38                                          ; $55c5: $ff
	ld h, a                                          ; $55c6: $67
	ldh a, [rPCM12]                                  ; $55c7: $f0 $76
	jp z, $249d                                      ; $55c9: $ca $9d $24

Call_029_55cc:
jr_029_55cc:
	ld c, c                                          ; $55cc: $49
	ld e, e                                          ; $55cd: $5b
	or b                                             ; $55ce: $b0
	ld [hl], a                                       ; $55cf: $77
	ld h, b                                          ; $55d0: $60
	sbc h                                            ; $55d1: $9c
	ld h, [hl]                                       ; $55d2: $66
	ld [hl+], a                                      ; $55d3: $22
	db $dd                                           ; $55d4: $dd
	ld h, e                                          ; $55d5: $63
	ld [$d29c], sp                                   ; $55d6: $08 $9c $d2
	ld c, c                                          ; $55d9: $49
	sub d                                            ; $55da: $92
	ld a, e                                          ; $55db: $7b
	cp $9e                                           ; $55dc: $fe $9e
	or [hl]                                          ; $55de: $b6
	ld h, a                                          ; $55df: $67
	ldh a, [$99]                                     ; $55e0: $f0 $99
	add h                                            ; $55e2: $84
	ld l, c                                          ; $55e3: $69
	inc h                                            ; $55e4: $24
	ld c, c                                          ; $55e5: $49
	inc b                                            ; $55e6: $04
	sbc c                                            ; $55e7: $99
	ld e, a                                          ; $55e8: $5f
	ld h, b                                          ; $55e9: $60
	sbc [hl]                                         ; $55ea: $9e
	ld bc, $ca7a                                     ; $55eb: $01 $7a $ca
	sbc e                                            ; $55ee: $9b
	add b                                            ; $55ef: $80
	inc hl                                           ; $55f0: $23
	add c                                            ; $55f1: $81
	ld a, [hl]                                       ; $55f2: $7e
	ld h, e                                          ; $55f3: $63
	ret nz                                           ; $55f4: $c0

	ld a, [hl]                                       ; $55f5: $7e
	jp z, $949a                                      ; $55f6: $ca $9a $94

	nop                                              ; $55f9: $00
	ld sp, $ef10                                     ; $55fa: $31 $10 $ef
	ld h, e                                          ; $55fd: $63
	ldh a, [$79]                                     ; $55fe: $f0 $79
	call z, $249d                                    ; $5600: $cc $9d $24
	ld c, b                                          ; $5603: $48
	ld e, e                                          ; $5604: $5b
	and b                                            ; $5605: $a0
	ld a, [hl]                                       ; $5606: $7e
	jp z, $d19a                                      ; $5607: $ca $9a $d1

	ld b, b                                          ; $560a: $40
	add h                                            ; $560b: $84
	ld b, b                                          ; $560c: $40
	cp a                                             ; $560d: $bf
	ld h, a                                          ; $560e: $67
	ldh a, [rPCM12]                                  ; $560f: $f0 $76
	call z, $079b                                    ; $5611: $cc $9b $07
	ld l, b                                          ; $5614: $68
	daa                                              ; $5615: $27
	ret c                                            ; $5616: $d8

	ld h, a                                          ; $5617: $67
	ldh a, [rSCY]                                    ; $5618: $f0 $42
	nop                                              ; $561a: $00
	add b                                            ; $561b: $80
	jr nc, jr_029_561e                               ; $561c: $30 $00

jr_029_561e:
	nop                                              ; $561e: $00
	ld h, $77                                        ; $561f: $26 $77
	ld [hl], a                                       ; $5621: $77
	ld [hl], d                                       ; $5622: $72
	ld d, l                                          ; $5623: $55
	ld [hl+], a                                      ; $5624: $22
	inc hl                                           ; $5625: $23
	jr nc, jr_029_5628                               ; $5626: $30 $00

jr_029_5628:
	ld d, l                                          ; $5628: $55
	ld d, [hl]                                       ; $5629: $56
	ld [hl], a                                       ; $562a: $77
	ld [hl], a                                       ; $562b: $77
	ld h, d                                          ; $562c: $62
	ld d, d                                          ; $562d: $52
	ld d, d                                          ; $562e: $52
	inc sp                                           ; $562f: $33
	jr nc, jr_029_5634                               ; $5630: $30 $02

	ld d, l                                          ; $5632: $55
	ld d, d                                          ; $5633: $52

jr_029_5634:
	ld [hl], a                                       ; $5634: $77
	ld d, d                                          ; $5635: $52
	dec h                                            ; $5636: $25
	ld [hl+], a                                      ; $5637: $22
	ld d, d                                          ; $5638: $52
	inc sp                                           ; $5639: $33
	inc sp                                           ; $563a: $33
	sub a                                            ; $563b: $97
	inc [hl]                                         ; $563c: $34
	ld d, l                                          ; $563d: $55
	ld d, l                                          ; $563e: $55
	ld d, a                                          ; $563f: $57
	ld d, d                                          ; $5640: $52
	ld d, l                                          ; $5641: $55
	nop                                              ; $5642: $00
	inc bc                                           ; $5643: $03
	db $dd                                           ; $5644: $dd
	inc sp                                           ; $5645: $33
	sbc d                                            ; $5646: $9a
	ld b, l                                          ; $5647: $45
	ld d, a                                          ; $5648: $57
	ld d, l                                          ; $5649: $55
	ld d, [hl]                                       ; $564a: $56
	ld h, e                                          ; $564b: $63
	db $db                                           ; $564c: $db
	inc sp                                           ; $564d: $33
	sbc h                                            ; $564e: $9c
	ld b, h                                          ; $564f: $44
	ld d, l                                          ; $5650: $55
	ld b, $6b                                        ; $5651: $06 $6b
	or $7f                                           ; $5653: $f6 $7f
	sbc $9d                                          ; $5655: $de $9d
	nop                                              ; $5657: $00
	ld [hl], e                                       ; $5658: $73
	pop bc                                           ; $5659: $c1
	inc sp                                           ; $565a: $33
	ld b, c                                          ; $565b: $41
	add l                                            ; $565c: $85
	reti                                             ; $565d: $d9


	rst $38                                          ; $565e: $ff
	ld sp, hl                                        ; $565f: $f9
	inc bc                                           ; $5660: $03
	ldh a, [rWX]                                     ; $5661: $f0 $4b
	ldh a, [$9e]                                     ; $5663: $f0 $9e
	rst SubAFromBC                                          ; $5665: $e7
	sbc $c0                                          ; $5666: $de $c0
	rst SubAFromDE                                          ; $5668: $df
	add b                                            ; $5669: $80
	rst FarCall                                          ; $566a: $f7
	rst SubAFromDE                                          ; $566b: $df
	rst $38                                          ; $566c: $ff
	sbc l                                            ; $566d: $9d
	rra                                              ; $566e: $1f
	rlca                                             ; $566f: $07
	cp $9e                                           ; $5670: $fe $9e
	ld [bc], a                                       ; $5672: $02
	ld d, e                                          ; $5673: $53
	ret nc                                           ; $5674: $d0

	sbc [hl]                                         ; $5675: $9e
	ccf                                              ; $5676: $3f
	ld [hl], a                                       ; $5677: $77
	db $ed                                           ; $5678: $ed
	inc bc                                           ; $5679: $03
	or b                                             ; $567a: $b0
	inc bc                                           ; $567b: $03
	ldh a, [$03]                                     ; $567c: $f0 $03
	ldh a, [$03]                                     ; $567e: $f0 $03
	ldh a, [$03]                                     ; $5680: $f0 $03
	ldh a, [$03]                                     ; $5682: $f0 $03
	ldh a, [$03]                                     ; $5684: $f0 $03
	ldh a, [$0b]                                     ; $5686: $f0 $0b
	ldh a, [$de]                                     ; $5688: $f0 $de
	cp $de                                           ; $568a: $fe $de
	db $fc                                           ; $568c: $fc
	rst SubAFromDE                                          ; $568d: $df
	ld hl, sp-$0d                                    ; $568e: $f8 $f3
	sbc l                                            ; $5690: $9d
	jr nz, jr_029_56e3                               ; $5691: $20 $50

	ld sp, hl                                        ; $5693: $f9
	sbc l                                            ; $5694: $9d
	ld b, $04                                        ; $5695: $06 $04
	sbc $09                                          ; $5697: $de $09
	sbc d                                            ; $5699: $9a
	ld [de], a                                       ; $569a: $12
	ld de, $0122                                     ; $569b: $11 $22 $01
	inc bc                                           ; $569e: $03
	sbc $07                                          ; $569f: $de $07
	rst SubAFromDE                                          ; $56a1: $df
	rrca                                             ; $56a2: $0f
	sub e                                            ; $56a3: $93
	rra                                              ; $56a4: $1f
	nop                                              ; $56a5: $00
	ldh a, [$dc]                                     ; $56a6: $f0 $dc
	xor e                                            ; $56a8: $ab
	ld d, l                                          ; $56a9: $55
	xor d                                            ; $56aa: $aa
	ld d, l                                          ; $56ab: $55
	xor d                                            ; $56ac: $aa
	ret nz                                           ; $56ad: $c0

	ld hl, sp-$02                                    ; $56ae: $f8 $fe
	ld l, [hl]                                       ; $56b0: $6e
	or l                                             ; $56b1: $b5
	sbc b                                            ; $56b2: $98
	rrca                                             ; $56b3: $0f
	inc bc                                           ; $56b4: $03
	add b                                            ; $56b5: $80
	ld h, b                                          ; $56b6: $60
	xor h                                            ; $56b7: $ac
	ld d, a                                          ; $56b8: $57
	xor e                                            ; $56b9: $ab
	cp $9c                                           ; $56ba: $fe $9c
	add b                                            ; $56bc: $80
	ldh a, [$fc]                                     ; $56bd: $f0 $fc
	call c, $9aff                                    ; $56bf: $dc $ff $9a
	ld a, a                                          ; $56c2: $7f
	rrca                                             ; $56c3: $0f
	inc bc                                           ; $56c4: $03
	nop                                              ; $56c5: $00
	ldh [$fa], a                                     ; $56c6: $e0 $fa
	sbc [hl]                                         ; $56c8: $9e
	ldh [$db], a                                     ; $56c9: $e0 $db

Jump_029_56cb:
	rst $38                                          ; $56cb: $ff
	ld a, a                                          ; $56cc: $7f
	db $ed                                           ; $56cd: $ed
	inc bc                                           ; $56ce: $03
	ld [hl], b                                       ; $56cf: $70
	inc bc                                           ; $56d0: $03
	ldh a, [$03]                                     ; $56d1: $f0 $03
	ldh a, [$03]                                     ; $56d3: $f0 $03
	ldh a, [$03]                                     ; $56d5: $f0 $03
	ldh a, [$03]                                     ; $56d7: $f0 $03
	ldh a, [$3f]                                     ; $56d9: $f0 $3f
	ldh a, [$df]                                     ; $56db: $f0 $df
	ldh a, [$de]                                     ; $56dd: $f0 $de
	ldh [$df], a                                     ; $56df: $e0 $df
	ret nz                                           ; $56e1: $c0

	sbc [hl]                                         ; $56e2: $9e

jr_029_56e3:
	add d                                            ; $56e3: $82
	ld sp, hl                                        ; $56e4: $f9
	sbc b                                            ; $56e5: $98
	ld a, [bc]                                       ; $56e6: $0a
	rlca                                             ; $56e7: $07
	rlca                                             ; $56e8: $07
	ld bc, $0000                                     ; $56e9: $01 $00 $00
	ld bc, $fc7b                                     ; $56ec: $01 $7b $fc
	ei                                               ; $56ef: $fb
	sbc d                                            ; $56f0: $9a
	dec h                                            ; $56f1: $25
	ld [hl+], a                                      ; $56f2: $22
	push bc                                          ; $56f3: $c5
	ret nz                                           ; $56f4: $c0

	add c                                            ; $56f5: $81
	ld a, c                                          ; $56f6: $79
	ld [hl], b                                       ; $56f7: $70
	rst SubAFromDE                                          ; $56f8: $df
	rra                                              ; $56f9: $1f
	rst SubAFromDE                                          ; $56fa: $df
	ccf                                              ; $56fb: $3f
	rst SubAFromDE                                          ; $56fc: $df
	ld a, a                                          ; $56fd: $7f
	rst SubAFromDE                                          ; $56fe: $df
	rst $38                                          ; $56ff: $ff
	ld a, d                                          ; $5700: $7a
	call nz, $029a                                   ; $5701: $c4 $9a $02
	ld d, l                                          ; $5704: $55
	nop                                              ; $5705: $00
	ld d, b                                          ; $5706: $50
	ld bc, $ffd9                                     ; $5707: $01 $d9 $ff
	sbc d                                            ; $570a: $9a
	ld d, l                                          ; $570b: $55
	xor e                                            ; $570c: $ab
	ld d, a                                          ; $570d: $57
	cp a                                             ; $570e: $bf
	ccf                                              ; $570f: $3f
	ld a, e                                          ; $5710: $7b
	add sp, -$21                                     ; $5711: $e8 $df
	rst $38                                          ; $5713: $ff
	adc b                                            ; $5714: $88
	cp $f9                                           ; $5715: $fe $f9
	and $d9                                          ; $5717: $e6 $d9
	or [hl]                                          ; $5719: $b6
	ld c, h                                          ; $571a: $4c
	db $fc                                           ; $571b: $fc
	or b                                             ; $571c: $b0
	adc a                                            ; $571d: $8f
	ld [hl], e                                       ; $571e: $73
	adc h                                            ; $571f: $8c
	ld a, a                                          ; $5720: $7f
	ld hl, sp-$19                                    ; $5721: $f8 $e7
	ldh a, [$cf]                                     ; $5723: $f0 $cf
	ld [hl], b                                       ; $5725: $70
	adc a                                            ; $5726: $8f
	ld [hl], e                                       ; $5727: $73
	add b                                            ; $5728: $80
	rlca                                             ; $5729: $07
	rra                                              ; $572a: $1f
	inc bc                                           ; $572b: $03
	ld a, e                                          ; $572c: $7b
	sbc l                                            ; $572d: $9d
	ld a, [hl]                                       ; $572e: $7e
	jp $3c9d                                         ; $572f: $c3 $9d $3c


	jp $a25a                                         ; $5732: $c3 $5a $a2


	ld a, a                                          ; $5735: $7f
	and h                                            ; $5736: $a4
	sbc h                                            ; $5737: $9c
	ldh [rAUD2LOW], a                                ; $5738: $e0 $18
	add h                                            ; $573a: $84
	db $fd                                           ; $573b: $fd
	ld d, [hl]                                       ; $573c: $56
	adc a                                            ; $573d: $8f
	ld c, e                                          ; $573e: $4b
	ld h, b                                          ; $573f: $60
	sbc [hl]                                         ; $5740: $9e
	ld a, a                                          ; $5741: $7f
	inc bc                                           ; $5742: $03
	ld b, b                                          ; $5743: $40
	inc bc                                           ; $5744: $03
	ldh a, [$03]                                     ; $5745: $f0 $03
	ldh a, [$03]                                     ; $5747: $f0 $03
	ldh a, [$2b]                                     ; $5749: $f0 $2b
	ldh a, [$71]                                     ; $574b: $f0 $71
	adc l                                            ; $574d: $8d
	ld sp, hl                                        ; $574e: $f9
	sbc l                                            ; $574f: $9d
	add c                                            ; $5750: $81
	ld [bc], a                                       ; $5751: $02
	ld [hl], d                                       ; $5752: $72
	push de                                          ; $5753: $d5
	sbc [hl]                                         ; $5754: $9e
	ld b, b                                          ; $5755: $40
	ld sp, hl                                        ; $5756: $f9
	sub a                                            ; $5757: $97
	ld bc, $f2c2                                     ; $5758: $01 $c2 $f2
	ld a, h                                          ; $575b: $7c
	inc e                                            ; $575c: $1c
	inc c                                            ; $575d: $0c
	ld [$7a08], sp                                   ; $575e: $08 $08 $7a
	cp l                                             ; $5761: $bd
	sbc $03                                          ; $5762: $de $03
	rst SubAFromDE                                          ; $5764: $df
	rlca                                             ; $5765: $07
	ld b, e                                          ; $5766: $43
	cp b                                             ; $5767: $b8
	ld a, c                                          ; $5768: $79
	ld [hl], a                                       ; $5769: $77
	ld a, l                                          ; $576a: $7d
	ld a, d                                          ; $576b: $7a
	sbc l                                            ; $576c: $9d
	dec e                                            ; $576d: $1d
	ld a, [hl-]                                      ; $576e: $3a
	ld a, e                                          ; $576f: $7b
	cp c                                             ; $5770: $b9
	add b                                            ; $5771: $80
	db $fc                                           ; $5772: $fc
	ld sp, hl                                        ; $5773: $f9
	di                                               ; $5774: $f3
	rst FarCall                                          ; $5775: $f7
	rst AddAOntoHL                                          ; $5776: $ef
	push af                                          ; $5777: $f5
	db $eb                                           ; $5778: $eb
	sub $ad                                          ; $5779: $d6 $ad
	jp z, $a315                                      ; $577b: $ca $15 $a3

	ld [hl+], a                                      ; $577e: $22
	sbc b                                            ; $577f: $98
	jr nc, @+$63                                     ; $5780: $30 $61

	jp nz, $8884                                     ; $5782: $c2 $84 $88

	jr jr_029_5797                                   ; $5785: $18 $10

	db $db                                           ; $5787: $db
	ld l, h                                          ; $5788: $6c
	cp c                                             ; $5789: $b9
	ld [hl], a                                       ; $578a: $77
	xor $d5                                          ; $578b: $ee $d5
	ld a, [hl+]                                      ; $578d: $2a
	sub h                                            ; $578e: $94
	inc a                                            ; $578f: $3c
	di                                               ; $5790: $f3
	add b                                            ; $5791: $80
	add [hl]                                         ; $5792: $86
	ld [$2211], sp                                   ; $5793: $08 $11 $22
	ld b, h                                          ; $5796: $44

jr_029_5797:
	ld c, b                                          ; $5797: $48
	ld e, $7f                                        ; $5798: $1e $7f
	ldh a, [$c7]                                     ; $579a: $f0 $c7
	ld b, [hl]                                       ; $579c: $46
	dec de                                           ; $579d: $1b
	ld h, a                                          ; $579e: $67
	sbc b                                            ; $579f: $98
	pop hl                                           ; $57a0: $e1
	add b                                            ; $57a1: $80
	rrca                                             ; $57a2: $0f
	ccf                                              ; $57a3: $3f
	add c                                            ; $57a4: $81
	rlca                                             ; $57a5: $07
	nop                                              ; $57a6: $00
	rlca                                             ; $57a7: $07
	ld h, d                                          ; $57a8: $62
	sub c                                            ; $57a9: $91
	ld l, c                                          ; $57aa: $69
	sub h                                            ; $57ab: $94
	and $13                                          ; $57ac: $e6 $13
	rl a                                             ; $57ae: $cb $17
	rst $38                                          ; $57b0: $ff
	sbc h                                            ; $57b1: $9c
	ld a, a                                          ; $57b2: $7f
	sbc a                                            ; $57b3: $9f
	rst AddAOntoHL                                          ; $57b4: $ef
	db $dd                                           ; $57b5: $dd
	rst $38                                          ; $57b6: $ff
	sub [hl]                                         ; $57b7: $96
	jr nz, jr_029_57ba                               ; $57b8: $20 $00

jr_029_57ba:
	ld l, $b0                                        ; $57ba: $2e $b0
	cp $e1                                           ; $57bc: $fe $e1
	ldh a, [$3c]                                     ; $57be: $f0 $3c
	ret nz                                           ; $57c0: $c0

	ld l, [hl]                                       ; $57c1: $6e
	or l                                             ; $57c2: $b5
	sbc [hl]                                         ; $57c3: $9e
	jp $b572                                         ; $57c4: $c3 $72 $b5


	sbc h                                            ; $57c7: $9c
	jp $0830                                         ; $57c8: $c3 $30 $08


	ld [hl], l                                       ; $57cb: $75
	ld b, h                                          ; $57cc: $44
	ld e, [hl]                                       ; $57cd: $5e
	and d                                            ; $57ce: $a2
	sbc [hl]                                         ; $57cf: $9e
	add b                                            ; $57d0: $80
	ld l, e                                          ; $57d1: $6b
	ld h, b                                          ; $57d2: $60
	ld a, l                                          ; $57d3: $7d
	ld a, [bc]                                       ; $57d4: $0a
	ld b, [hl]                                       ; $57d5: $46
	adc a                                            ; $57d6: $8f
	inc bc                                           ; $57d7: $03
	db $10                                           ; $57d8: $10
	inc bc                                           ; $57d9: $03
	ldh a, [$03]                                     ; $57da: $f0 $03
	ldh a, [rHDMA3]                                  ; $57dc: $f0 $53
	ldh a, [$df]                                     ; $57de: $f0 $df
	ld hl, sp-$22                                    ; $57e0: $f8 $de
	ldh a, [$79]                                     ; $57e2: $f0 $79
	adc [hl]                                         ; $57e4: $8e
	ld h, b                                          ; $57e5: $60
	ld d, [hl]                                       ; $57e6: $56
	sbc l                                            ; $57e7: $9d
	ld d, h                                          ; $57e8: $54
	rrca                                             ; $57e9: $0f
	ld [hl], l                                       ; $57ea: $75
	adc a                                            ; $57eb: $8f
	ld hl, sp-$75                                    ; $57ec: $f8 $8b
	db $10                                           ; $57ee: $10
	ld [de], a                                       ; $57ef: $12
	db $10                                           ; $57f0: $10
	xor d                                            ; $57f1: $aa
	ldh [$ca], a                                     ; $57f2: $e0 $ca
	ld d, h                                          ; $57f4: $54
	xor d                                            ; $57f5: $aa
	rrca                                             ; $57f6: $0f
	dec c                                            ; $57f7: $0d
	rrca                                             ; $57f8: $0f
	dec d                                            ; $57f9: $15
	rra                                              ; $57fa: $1f
	dec [hl]                                         ; $57fb: $35
	dec hl                                           ; $57fc: $2b
	ld d, l                                          ; $57fd: $55
	nop                                              ; $57fe: $00

Jump_029_57ff:
	add b                                            ; $57ff: $80
	nop                                              ; $5800: $00
	xor b                                            ; $5801: $a8
	ld a, e                                          ; $5802: $7b
	cp $9a                                           ; $5803: $fe $9a
	xor d                                            ; $5805: $aa
	rst $38                                          ; $5806: $ff
	ld a, a                                          ; $5807: $7f
	rst $38                                          ; $5808: $ff
	ld d, a                                          ; $5809: $57
	ld a, e                                          ; $580a: $7b
	cp $96                                           ; $580b: $fe $96
	ld d, l                                          ; $580d: $55
	inc sp                                           ; $580e: $33
	inc [hl]                                         ; $580f: $34
	ld h, $24                                        ; $5810: $26 $24
	jr z, @+$0f                                      ; $5812: $28 $0d

	dec c                                            ; $5814: $0d
	dec de                                           ; $5815: $1b
	halt                                             ; $5816: $76
	ld a, h                                          ; $5817: $7c
	add c                                            ; $5818: $81
	db $fc                                           ; $5819: $fc
	ld hl, sp-$08                                    ; $581a: $f8 $f8
	pop af                                           ; $581c: $f1
	ld d, c                                          ; $581d: $51
	ld h, c                                          ; $581e: $61
	ldh [c], a                                       ; $581f: $e2
	call nz, $94d5                                   ; $5820: $c4 $d5 $94
	sub b                                            ; $5823: $90
	xor d                                            ; $5824: $aa
	jr nz, @+$22                                     ; $5825: $20 $20

	ld b, c                                          ; $5827: $41
	ld b, e                                          ; $5828: $43
	add d                                            ; $5829: $82
	add d                                            ; $582a: $82
	add [hl]                                         ; $582b: $86
	inc b                                            ; $582c: $04

jr_029_582d:
	ld c, c                                          ; $582d: $49
	ld [hl+], a                                      ; $582e: $22
	sub b                                            ; $582f: $90
	ld b, c                                          ; $5830: $41
	ld [hl+], a                                      ; $5831: $22
	add d                                            ; $5832: $82
	add l                                            ; $5833: $85
	ld d, l                                          ; $5834: $55
	sub b                                            ; $5835: $90
	sub b                                            ; $5836: $90
	ld a, e                                          ; $5837: $7b
	xor $7f                                          ; $5838: $ee $7f
	db $ed                                           ; $583a: $ed
	add b                                            ; $583b: $80
	add e                                            ; $583c: $83
	scf                                              ; $583d: $37
	ld e, a                                          ; $583e: $5f
	cp c                                             ; $583f: $b9
	ld h, [hl]                                       ; $5840: $66
	ret                                              ; $5841: $c9


	sub e                                            ; $5842: $93
	and h                                            ; $5843: $a4
	adc b                                            ; $5844: $88
	rrca                                             ; $5845: $0f
	jr c, jr_029_58a8                                ; $5846: $38 $60

	pop bc                                           ; $5848: $c1
	add a                                            ; $5849: $87
	adc [hl]                                         ; $584a: $8e
	inc e                                            ; $584b: $1c
	add hl, sp                                       ; $584c: $39
	xor $d6                                          ; $584d: $ee $d6
	db $ed                                           ; $584f: $ed
	ld h, [hl]                                       ; $5850: $66
	sub l                                            ; $5851: $95
	ld c, a                                          ; $5852: $4f
	ld b, $76                                        ; $5853: $06 $76
	rst $38                                          ; $5855: $ff
	ccf                                              ; $5856: $3f
	rra                                              ; $5857: $1f
	rst $38                                          ; $5858: $ff
	cp $3c                                           ; $5859: $fe $3c
	ld a, [hl]                                       ; $585b: $7e
	sbc $80                                          ; $585c: $de $80
	jp $8c79                                         ; $585e: $c3 $79 $8c


	and $d7                                          ; $5861: $e6 $d7
	db $e3                                           ; $5863: $e3
	ld a, d                                          ; $5864: $7a
	cp c                                             ; $5865: $b9
	nop                                              ; $5866: $00
	ldh a, [$f8]                                     ; $5867: $f0 $f8
	inc b                                            ; $5869: $04
	ld h, d                                          ; $586a: $62
	or d                                             ; $586b: $b2
	ld d, e                                          ; $586c: $53
	dec hl                                           ; $586d: $2b
	dec h                                            ; $586e: $25
	call nc, $a56a                                   ; $586f: $d4 $6a $a5
	ld [hl], a                                       ; $5872: $77
	ld [hl], d                                       ; $5873: $72
	db $db                                           ; $5874: $db
	ei                                               ; $5875: $fb
	sbc $2f                                          ; $5876: $de $2f
	sub a                                            ; $5878: $97
	ld e, e                                          ; $5879: $5b
	add hl, bc                                       ; $587a: $09
	dec c                                            ; $587b: $0d
	inc h                                            ; $587c: $24
	add b                                            ; $587d: $80
	inc b                                            ; $587e: $04
	inc [hl]                                         ; $587f: $34
	or d                                             ; $5880: $b2
	jp z, Jump_029_6549                              ; $5881: $ca $49 $65

	db $e4                                           ; $5884: $e4
	or [hl]                                          ; $5885: $b6
	or d                                             ; $5886: $b2
	rst AddAOntoHL                                          ; $5887: $ef
	ld l, a                                          ; $5888: $6f
	scf                                              ; $5889: $37
	or a                                             ; $588a: $b7
	sbc e                                            ; $588b: $9b
	sbc e                                            ; $588c: $9b
	ret                                              ; $588d: $c9


	call Call_029_4000                               ; $588e: $cd $00 $40
	jr nc, jr_029_58e3                               ; $5891: $30 $50

	jr z, jr_029_582d                                ; $5893: $28 $98

	xor h                                            ; $5895: $ac
	or h                                             ; $5896: $b4
	nop                                              ; $5897: $00
	ret nz                                           ; $5898: $c0

	ldh a, [$f0]                                     ; $5899: $f0 $f0
	ld hl, sp-$08                                    ; $589b: $f8 $f8
	rst SubAFromDE                                          ; $589d: $df
	db $fc                                           ; $589e: $fc
	ld l, d                                          ; $589f: $6a
	or l                                             ; $58a0: $b5
	ld h, e                                          ; $58a1: $63
	dec a                                            ; $58a2: $3d
	ld l, d                                          ; $58a3: $6a
	and d                                            ; $58a4: $a2
	ld h, l                                          ; $58a5: $65
	ldh a, [$9e]                                     ; $58a6: $f0 $9e

jr_029_58a8:
	add b                                            ; $58a8: $80
	ld l, c                                          ; $58a9: $69
	ld sp, $1f9e                                     ; $58aa: $31 $9e $1f
	ld [bc], a                                       ; $58ad: $02
	ldh [rAUD1LOW], a                                ; $58ae: $e0 $13
	ldh a, [$df]                                     ; $58b0: $f0 $df
	cp $f9                                           ; $58b2: $fe $f9
	sbc h                                            ; $58b4: $9c
	add b                                            ; $58b5: $80
	add l                                            ; $58b6: $85
	add d                                            ; $58b7: $82
	ld d, [hl]                                       ; $58b8: $56
	pop de                                           ; $58b9: $d1
	ld [hl], l                                       ; $58ba: $75
	ld a, [hl]                                       ; $58bb: $7e
	sbc d                                            ; $58bc: $9a
	ld h, c                                          ; $58bd: $61
	ld a, [$0e3e]                                    ; $58be: $fa $3e $0e
	dec b                                            ; $58c1: $05
	ld [hl], e                                       ; $58c2: $73
	ld a, e                                          ; $58c3: $7b
	rst SubAFromDE                                          ; $58c4: $df
	ld bc, $0280                                     ; $58c5: $01 $80 $02
	sub l                                            ; $58c8: $95
	xor d                                            ; $58c9: $aa
	ld d, l                                          ; $58ca: $55
	ccf                                              ; $58cb: $3f
	ld d, l                                          ; $58cc: $55
	rst $38                                          ; $58cd: $ff
	db $fd                                           ; $58ce: $fd
	rst $38                                          ; $58cf: $ff
	ld l, d                                          ; $58d0: $6a
	ld d, l                                          ; $58d1: $55
	xor d                                            ; $58d2: $aa
	ret nz                                           ; $58d3: $c0

	xor d                                            ; $58d4: $aa
	nop                                              ; $58d5: $00
	ld [bc], a                                       ; $58d6: $02
	nop                                              ; $58d7: $00
	ld b, b                                          ; $58d8: $40
	xor d                                            ; $58d9: $aa
	ld d, b                                          ; $58da: $50
	ld [$fa54], a                                    ; $58db: $ea $54 $fa
	ld d, b                                          ; $58de: $50
	ld a, [$55bf]                                    ; $58df: $fa $bf $55
	xor a                                            ; $58e2: $af

jr_029_58e3:
	dec d                                            ; $58e3: $15
	xor e                                            ; $58e4: $ab
	dec b                                            ; $58e5: $05
	sbc l                                            ; $58e6: $9d
	xor a                                            ; $58e7: $af
	dec b                                            ; $58e8: $05
	db $dd                                           ; $58e9: $dd
	dec de                                           ; $58ea: $1b
	db $dd                                           ; $58eb: $dd
	rra                                              ; $58ec: $1f
	reti                                             ; $58ed: $d9


	pop af                                           ; $58ee: $f1
	rst SubAFromDE                                          ; $58ef: $df
	xor b                                            ; $58f0: $a8
	sub a                                            ; $58f1: $97
	ret z                                            ; $58f2: $c8

	ret                                              ; $58f3: $c9


	ret                                              ; $58f4: $c9


	ld sp, hl                                        ; $58f5: $f9
	ei                                               ; $58f6: $fb
	ei                                               ; $58f7: $fb
	inc b                                            ; $58f8: $04
	inc b                                            ; $58f9: $04
	db $db                                           ; $58fa: $db

jr_029_58fb:
	inc h                                            ; $58fb: $24
	sub [hl]                                         ; $58fc: $96
	dec d                                            ; $58fd: $15
	inc sp                                           ; $58fe: $33
	dec hl                                           ; $58ff: $2b
	ld a, [hl+]                                      ; $5900: $2a
	ld a, [hl+]                                      ; $5901: $2a
	and d                                            ; $5902: $a2
	inc sp                                           ; $5903: $33
	inc sp                                           ; $5904: $33
	add e                                            ; $5905: $83
	db $dd                                           ; $5906: $dd
	add [hl]                                         ; $5907: $86
	adc d                                            ; $5908: $8a
	ld c, $8e                                        ; $5909: $0e $8e
	adc [hl]                                         ; $590b: $8e
	db $10                                           ; $590c: $10
	ld de, $2213                                     ; $590d: $11 $13 $22
	ld h, $26                                        ; $5910: $26 $26
	inc h                                            ; $5912: $24
	inc l                                            ; $5913: $2c
	dec sp                                           ; $5914: $3b
	ld [hl], a                                       ; $5915: $77
	halt                                             ; $5916: $76
	xor $ec                                          ; $5917: $ee $ec
	db $ec                                           ; $5919: $ec
	db $fc                                           ; $591a: $fc
	ld hl, sp-$07                                    ; $591b: $f8 $f9
	add b                                            ; $591d: $80
	ei                                               ; $591e: $fb
	sbc [hl]                                         ; $591f: $9e
	adc c                                            ; $5920: $89
	ld a, [$6d9a]                                    ; $5921: $fa $9a $6d
	cp l                                             ; $5924: $bd
	cp l                                             ; $5925: $bd

jr_029_5926:
	ld a, l                                          ; $5926: $7d
	ld e, l                                          ; $5927: $5d
	sbc $55                                          ; $5928: $de $55
	sbc d                                            ; $592a: $9a
	cp e                                             ; $592b: $bb
	rst SubAFromHL                                          ; $592c: $d7
	rst SubAFromHL                                          ; $592d: $d7
	ld d, a                                          ; $592e: $57
	ld [hl], a                                       ; $592f: $77
	sbc $7f                                          ; $5930: $de $7f
	sub [hl]                                         ; $5932: $96
	ld a, e                                          ; $5933: $7b
	ld l, l                                          ; $5934: $6d
	db $ed                                           ; $5935: $ed
	db $ed                                           ; $5936: $ed
	cp l                                             ; $5937: $bd
	ld a, l                                          ; $5938: $7d
	ld [hl], l                                       ; $5939: $75
	ld d, l                                          ; $593a: $55
	add h                                            ; $593b: $84
	sbc $92                                          ; $593c: $de $92
	rst SubAFromDE                                          ; $593e: $df
	jp nz, $ca88                                     ; $593f: $c2 $88 $ca

	ld [$fb73], a                                    ; $5942: $ea $73 $fb
	db $db                                           ; $5945: $db
	db $db                                           ; $5946: $db
	cp c                                             ; $5947: $b9
	cp l                                             ; $5948: $bd
	cp l                                             ; $5949: $bd
	dec a                                            ; $594a: $3d
	call z, $6444                                    ; $594b: $cc $44 $64
	ld h, h                                          ; $594e: $64
	ld h, [hl]                                       ; $594f: $66
	ld h, d                                          ; $5950: $62
	ld h, d                                          ; $5951: $62
	ldh [c], a                                       ; $5952: $e2
	sbc h                                            ; $5953: $9c
	ld d, h                                          ; $5954: $54
	ld e, h                                          ; $5955: $5c
	ld d, h                                          ; $5956: $54
	ld e, h                                          ; $5957: $5c
	sbc $4c                                          ; $5958: $de $4c
	reti                                             ; $595a: $d9


	db $fc                                           ; $595b: $fc
	sub a                                            ; $595c: $97
	inc bc                                           ; $595d: $03
	ld [bc], a                                       ; $595e: $02
	ld [bc], a                                       ; $595f: $02
	ld b, $06                                        ; $5960: $06 $06
	dec c                                            ; $5962: $0d
	inc c                                            ; $5963: $0c
	dec c                                            ; $5964: $0d
	ld [hl], a                                       ; $5965: $77
	ld b, e                                          ; $5966: $43
	ld a, a                                          ; $5967: $7f
	ld b, d                                          ; $5968: $42
	ld a, a                                          ; $5969: $7f
	ldh a, [c]                                       ; $596a: $f2
	rst SubAFromDE                                          ; $596b: $df
	ld b, b                                          ; $596c: $40
	rst SubAFromDE                                          ; $596d: $df
	jr nz, jr_029_58fb                               ; $596e: $20 $8b

	and b                                            ; $5970: $a0
	ld h, b                                          ; $5971: $60
	sub b                                            ; $5972: $90
	db $10                                           ; $5973: $10
	add b                                            ; $5974: $80
	add b                                            ; $5975: $80
	ret nz                                           ; $5976: $c0

	ret nz                                           ; $5977: $c0

	ld b, b                                          ; $5978: $40
	add b                                            ; $5979: $80
	ld h, b                                          ; $597a: $60
	ldh [$03], a                                     ; $597b: $e0 $03
	nop                                              ; $597d: $00
	ld h, b                                          ; $597e: $60
	ld c, h                                          ; $597f: $4c
	ld c, a                                          ; $5980: $4f
	ld l, $3f                                        ; $5981: $2e $3f
	ld a, $fe                                        ; $5983: $3e $fe
	rst SubAFromDE                                          ; $5985: $df
	jr nc, jr_029_5926                               ; $5986: $30 $9e

	db $10                                           ; $5988: $10
	ld a, d                                          ; $5989: $7a
	ldh a, [$7e]                                     ; $598a: $f0 $7e
	or l                                             ; $598c: $b5
	ld [hl], l                                       ; $598d: $75
	ld sp, $c39e                                     ; $598e: $31 $9e $c3
	ld d, d                                          ; $5991: $52
	ldh [$7b], a                                     ; $5992: $e0 $7b
	db $ed                                           ; $5994: $ed
	ld h, $c0                                        ; $5995: $26 $c0
	ld [hl], l                                       ; $5997: $75
	db $db                                           ; $5998: $db
	ld a, l                                          ; $5999: $7d
	adc l                                            ; $599a: $8d
	rst SubAFromDE                                          ; $599b: $df
	ldh [$f7], a                                     ; $599c: $e0 $f7
	sbc e                                            ; $599e: $9b
	jr nz, jr_029_59f1                               ; $599f: $20 $50

	ld a, [hl+]                                      ; $59a1: $2a
	rlca                                             ; $59a2: $07
	ld e, a                                          ; $59a3: $5f
	ret nc                                           ; $59a4: $d0

	sbc [hl]                                         ; $59a5: $9e
	dec b                                            ; $59a6: $05
	sbc $0b                                          ; $59a7: $de $0b
	sbc d                                            ; $59a9: $9a
	rla                                              ; $59aa: $17
	sub a                                            ; $59ab: $97
	rst AddAOntoHL                                          ; $59ac: $ef
	db $ed                                           ; $59ad: $ed
	ld [bc], a                                       ; $59ae: $02
	sbc $04                                          ; $59af: $de $04
	rst SubAFromDE                                          ; $59b1: $df
	ld [$10df], sp                                   ; $59b2: $08 $df $10
	ld [hl], l                                       ; $59b5: $75
	sbc h                                            ; $59b6: $9c
	ld [hl], a                                       ; $59b7: $77
	cp $f9                                           ; $59b8: $fe $f9
	sub e                                            ; $59ba: $93
	push de                                          ; $59bb: $d5
	cp $fd                                           ; $59bc: $fe $fd
	ld e, [hl]                                       ; $59be: $5e
	rst $38                                          ; $59bf: $ff
	ld d, [hl]                                       ; $59c0: $56
	rst $38                                          ; $59c1: $ff
	ld d, l                                          ; $59c2: $55
	ld a, [hl+]                                      ; $59c3: $2a
	ld bc, $0102                                     ; $59c4: $01 $02 $01
	halt                                             ; $59c7: $76
	ld a, [de]                                       ; $59c8: $1a
	db $dd                                           ; $59c9: $dd
	rrca                                             ; $59ca: $0f
	sbc $07                                          ; $59cb: $de $07
	sbc [hl]                                         ; $59cd: $9e
	rrca                                             ; $59ce: $0f
	db $dd                                           ; $59cf: $dd
	ld sp, hl                                        ; $59d0: $f9
	rst SubAFromDE                                          ; $59d1: $df
	db $fd                                           ; $59d2: $fd
	add b                                            ; $59d3: $80
	ld a, [$7bf2]                                    ; $59d4: $fa $f2 $7b
	ld e, a                                          ; $59d7: $5f
	db $dd                                           ; $59d8: $dd
	sbc l                                            ; $59d9: $9d
	cp l                                             ; $59da: $bd
	db $ec                                           ; $59db: $ec
	xor $fe                                          ; $59dc: $ee $fe
	and h                                            ; $59de: $a4
	or b                                             ; $59df: $b0
	or d                                             ; $59e0: $b2
	ldh a, [c]                                       ; $59e1: $f2
	jp nc, $d9db                                     ; $59e2: $d2 $db $d9

	call $9253                                       ; $59e5: $cd $53 $92
	or d                                             ; $59e8: $b2
	di                                               ; $59e9: $f3
	db $d3                                           ; $59ea: $d3
	cp c                                             ; $59eb: $b9
	jp hl                                            ; $59ec: $e9


	ld a, c                                          ; $59ed: $79
	adc [hl]                                         ; $59ee: $8e
	rst GetHLinHL                                          ; $59ef: $cf
	rst GetHLinHL                                          ; $59f0: $cf

jr_029_59f1:
	ld c, a                                          ; $59f1: $4f
	ld l, a                                          ; $59f2: $6f
	sub h                                            ; $59f3: $94
	ld h, a                                          ; $59f4: $67
	scf                                              ; $59f5: $37
	or a                                             ; $59f6: $b7
	inc l                                            ; $59f7: $2c
	inc l                                            ; $59f8: $2c
	inc h                                            ; $59f9: $24
	inc d                                            ; $59fa: $14
	ld e, $1f                                        ; $59fb: $1e $1f
	rra                                              ; $59fd: $1f
	sbc c                                            ; $59fe: $99
	ld [hl], l                                       ; $59ff: $75
	call nc, $fc9b                                   ; $5a00: $d4 $9b $fc
	or $f0                                           ; $5a03: $f6 $f0
	ldh a, [$7a]                                     ; $5a05: $f0 $7a
	ld e, d                                          ; $5a07: $5a
	sbc d                                            ; $5a08: $9a
	ld e, e                                          ; $5a09: $5b
	cp a                                             ; $5a0a: $bf
	inc bc                                           ; $5a0b: $03
	rrca                                             ; $5a0c: $0f
	sbc a                                            ; $5a0d: $9f
	ld a, e                                          ; $5a0e: $7b
	ld hl, sp-$6c                                    ; $5a0f: $f8 $94
	inc a                                            ; $5a11: $3c
	ld a, a                                          ; $5a12: $7f
	rst $38                                          ; $5a13: $ff
	ldh a, [$60]                                     ; $5a14: $f0 $60
	xor h                                            ; $5a16: $ac
	db $ec                                           ; $5a17: $ec
	db $fc                                           ; $5a18: $fc
	cp $7e                                           ; $5a19: $fe $7e
	cp $dd                                           ; $5a1b: $fe $dd
	rst $38                                          ; $5a1d: $ff
	adc h                                            ; $5a1e: $8c
	or a                                             ; $5a1f: $b7
	ld h, e                                          ; $5a20: $63
	add e                                            ; $5a21: $83
	db $e3                                           ; $5a22: $e3
	add hl, de                                       ; $5a23: $19
	ld bc, $a5b5                                     ; $5a24: $01 $b5 $a5
	sub l                                            ; $5a27: $95
	pop de                                           ; $5a28: $d1
	ld d, e                                          ; $5a29: $53
	ld l, d                                          ; $5a2a: $6a
	ld l, d                                          ; $5a2b: $6a
	ld d, [hl]                                       ; $5a2c: $56
	ld [$fafa], a                                    ; $5a2d: $ea $fa $fa
	cp $fc                                           ; $5a30: $fe $fc
	sbc $fd                                          ; $5a32: $de $fd
	sbc $3d                                          ; $5a34: $de $3d
	sbc l                                            ; $5a36: $9d
	inc a                                            ; $5a37: $3c
	ld a, d                                          ; $5a38: $7a
	sbc $5a                                          ; $5a39: $de $5a
	sbc $e2                                          ; $5a3b: $de $e2
	sbc [hl]                                         ; $5a3d: $9e
	db $e3                                           ; $5a3e: $e3
	db $dd                                           ; $5a3f: $dd
	rst SubAFromBC                                          ; $5a40: $e7
	sbc $4c                                          ; $5a41: $de $4c
	sbc $48                                          ; $5a43: $de $48
	rst SubAFromDE                                          ; $5a45: $df
	adc b                                            ; $5a46: $88
	ld [hl], c                                       ; $5a47: $71
	ld [bc], a                                       ; $5a48: $02
	sbc $f8                                          ; $5a49: $de $f8
	add b                                            ; $5a4b: $80
	ld a, [de]                                       ; $5a4c: $1a
	add hl, de                                       ; $5a4d: $19
	jr nc, jr_029_5a74                               ; $5a4e: $30 $24

	ld l, d                                          ; $5a50: $6a
	ld b, l                                          ; $5a51: $45
	ret z                                            ; $5a52: $c8

	pop de                                           ; $5a53: $d1
	dec b                                            ; $5a54: $05
	ld b, $0f                                        ; $5a55: $06 $0f
	rra                                              ; $5a57: $1f
	rra                                              ; $5a58: $1f
	ld a, $3f                                        ; $5a59: $3e $3f
	ld a, $10                                        ; $5a5b: $3e $10
	db $10                                           ; $5a5d: $10
	xor b                                            ; $5a5e: $a8
	ld c, b                                          ; $5a5f: $48
	adc b                                            ; $5a60: $88
	ld d, h                                          ; $5a61: $54
	sbc h                                            ; $5a62: $9c
	inc [hl]                                         ; $5a63: $34
	ldh [$e0], a                                     ; $5a64: $e0 $e0
	ld d, b                                          ; $5a66: $50
	or b                                             ; $5a67: $b0
	ld [hl], b                                       ; $5a68: $70
	xor b                                            ; $5a69: $a8
	ld h, b                                          ; $5a6a: $60
	sub [hl]                                         ; $5a6b: $96
	ret z                                            ; $5a6c: $c8

	dec a                                            ; $5a6d: $3d
	ld a, $3d                                        ; $5a6e: $3e $3d
	ld a, [de]                                       ; $5a70: $1a
	rla                                              ; $5a71: $17
	ld a, [de]                                       ; $5a72: $1a
	inc d                                            ; $5a73: $14

jr_029_5a74:
	add hl, de                                       ; $5a74: $19
	db $fc                                           ; $5a75: $fc
	ld a, d                                          ; $5a76: $7a
	sbc [hl]                                         ; $5a77: $9e
	sub l                                            ; $5a78: $95
	ld b, e                                          ; $5a79: $43
	db $e3                                           ; $5a7a: $e3
	inc hl                                           ; $5a7b: $23
	ld [hl+], a                                      ; $5a7c: $22
	and d                                            ; $5a7d: $a2
	ld h, d                                          ; $5a7e: $62
	and b                                            ; $5a7f: $a0
	ld h, b                                          ; $5a80: $60
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	halt                                             ; $5a83: $76
	and b                                            ; $5a84: $a0
	ld a, a                                          ; $5a85: $7f
	cp $7a                                           ; $5a86: $fe $7a
	ld sp, $019b                                     ; $5a88: $31 $9b $01
	ld b, b                                          ; $5a8b: $40
	ld b, b                                          ; $5a8c: $40
	ret nz                                           ; $5a8d: $c0

	ld [hl], b                                       ; $5a8e: $70
	ld [hl], b                                       ; $5a8f: $70
	rst SubAFromDE                                          ; $5a90: $df
	ld bc, $03df                                     ; $5a91: $01 $df $03
	ld b, [hl]                                       ; $5a94: $46
	ret nz                                           ; $5a95: $c0

	ld a, h                                          ; $5a96: $7c
	ld d, [hl]                                       ; $5a97: $56
	rst SubAFromDE                                          ; $5a98: $df
	ret nz                                           ; $5a99: $c0

	ld a, h                                          ; $5a9a: $7c
	or c                                             ; $5a9b: $b1
	ld a, l                                          ; $5a9c: $7d
	cp b                                             ; $5a9d: $b8
	db $f4                                           ; $5a9e: $f4
	sbc h                                            ; $5a9f: $9c
	ld b, e                                          ; $5aa0: $43
	push hl                                          ; $5aa1: $e5
	ei                                               ; $5aa2: $fb
	ld sp, hl                                        ; $5aa3: $f9
	sub a                                            ; $5aa4: $97
	ld e, d                                          ; $5aa5: $5a
	ld d, l                                          ; $5aa6: $55
	ld e, d                                          ; $5aa7: $5a
	or l                                             ; $5aa8: $b5
	xor d                                            ; $5aa9: $aa
	ld d, l                                          ; $5aaa: $55
	ld a, [hl+]                                      ; $5aab: $2a
	ld d, l                                          ; $5aac: $55
	sbc $20                                          ; $5aad: $de $20
	rst SubAFromDE                                          ; $5aaf: $df
	ld b, b                                          ; $5ab0: $40
	sbc $80                                          ; $5ab1: $de $80
	sbc h                                            ; $5ab3: $9c
	xor e                                            ; $5ab4: $ab
	ld d, l                                          ; $5ab5: $55
	xor d                                            ; $5ab6: $aa
	ld [hl], e                                       ; $5ab7: $73
	cp $62                                           ; $5ab8: $fe $62
	ld [hl], b                                       ; $5aba: $70
	ld a, e                                          ; $5abb: $7b
	db $f4                                           ; $5abc: $f4
	ld a, e                                          ; $5abd: $7b
	db $ec                                           ; $5abe: $ec
	sbc [hl]                                         ; $5abf: $9e
	ld d, a                                          ; $5ac0: $57
	ei                                               ; $5ac1: $fb
	ld a, [hl]                                       ; $5ac2: $7e
	cp a                                             ; $5ac3: $bf
	adc e                                            ; $5ac4: $8b
	adc a                                            ; $5ac5: $8f
	ld e, a                                          ; $5ac6: $5f
	sbc a                                            ; $5ac7: $9f
	ld a, [de]                                       ; $5ac8: $1a
	cp l                                             ; $5ac9: $bd
	ld a, [hl-]                                      ; $5aca: $3a
	dec d                                            ; $5acb: $15
	ld h, b                                          ; $5acc: $60
	ld [hl], c                                       ; $5acd: $71
	and b                                            ; $5ace: $a0
	ld h, b                                          ; $5acf: $60
	ldh [rLCDC], a                                   ; $5ad0: $e0 $40
	ret nz                                           ; $5ad2: $c0

	ldh [$9e], a                                     ; $5ad3: $e0 $9e
	cp a                                             ; $5ad5: $bf
	cp a                                             ; $5ad6: $bf
	sbc a                                            ; $5ad7: $9f
	rra                                              ; $5ad8: $1f
	sbc $1e                                          ; $5ad9: $de $1e
	sbc d                                            ; $5adb: $9a
	ld a, $a4                                        ; $5adc: $3e $a4
	and [hl]                                         ; $5ade: $a6
	sub e                                            ; $5adf: $93
	ld a, [de]                                       ; $5ae0: $1a
	sbc $16                                          ; $5ae1: $de $16
	add [hl]                                         ; $5ae3: $86
	ld a, [hl+]                                      ; $5ae4: $2a
	ld sp, $3838                                     ; $5ae5: $31 $38 $38
	sbc h                                            ; $5ae8: $9c
	sbc $6f                                          ; $5ae9: $de $6f
	dec [hl]                                         ; $5aeb: $35
	dec e                                            ; $5aec: $1d
	rst $38                                          ; $5aed: $ff
	rst AddAOntoHL                                          ; $5aee: $ef
	rst AddAOntoHL                                          ; $5aef: $ef
	rst FarCall                                          ; $5af0: $f7
	ld [hl], e                                       ; $5af1: $73
	add hl, sp                                       ; $5af2: $39
	inc e                                            ; $5af3: $1c
	inc c                                            ; $5af4: $0c
	sbc c                                            ; $5af5: $99
	call z, Call_029_66cc                            ; $5af6: $cc $cc $66
	halt                                             ; $5af9: $76
	ld a, $a5                                        ; $5afa: $3e $a5
	ldh a, [c]                                       ; $5afc: $f2
	ld [hl], h                                       ; $5afd: $74
	sub e                                            ; $5afe: $93
	sub a                                            ; $5aff: $97
	call c, $e4ec                                    ; $5b00: $dc $ec $e4
	ldh a, [c]                                       ; $5b03: $f2
	rst $38                                          ; $5b04: $ff
	rst $38                                          ; $5b05: $ff
	ld [hl], d                                       ; $5b06: $72
	ld b, h                                          ; $5b07: $44
	ld a, e                                          ; $5b08: $7b
	inc d                                            ; $5b09: $14
	sbc c                                            ; $5b0a: $99
	nop                                              ; $5b0b: $00
	rra                                              ; $5b0c: $1f
	ccf                                              ; $5b0d: $3f
	ld [hl+], a                                      ; $5b0e: $22
	ld b, $07                                        ; $5b0f: $06 $07
	ld a, d                                          ; $5b11: $7a
	jr c, jr_029_5b8c                                ; $5b12: $38 $78

	and h                                            ; $5b14: $a4
	adc d                                            ; $5b15: $8a
	ld a, a                                          ; $5b16: $7f
	rst SubAFromDE                                          ; $5b17: $df
	ld a, a                                          ; $5b18: $7f
	rst $38                                          ; $5b19: $ff
	rrca                                             ; $5b1a: $0f
	add b                                            ; $5b1b: $80
	ldh a, [$7e]                                     ; $5b1c: $f0 $7e
	ld hl, sp-$04                                    ; $5b1e: $f8 $fc
	ld sp, $01c1                                     ; $5b20: $31 $c1 $01
	jp z, $a9ee                                      ; $5b23: $ca $ee $a9

	sbc b                                            ; $5b26: $98
	ret z                                            ; $5b27: $c8

	ld d, h                                          ; $5b28: $54
	push de                                          ; $5b29: $d5
	reti                                             ; $5b2a: $d9


	db $dd                                           ; $5b2b: $dd
	rst $38                                          ; $5b2c: $ff
	sbc c                                            ; $5b2d: $99
	cp a                                             ; $5b2e: $bf
	cp e                                             ; $5b2f: $bb
	dec sp                                           ; $5b30: $3b
	scf                                              ; $5b31: $37
	ld e, d                                          ; $5b32: $5a
	ld e, h                                          ; $5b33: $5c
	sbc $b4                                          ; $5b34: $de $b4
	sbc d                                            ; $5b36: $9a
	push af                                          ; $5b37: $f5
	ld [hl], l                                       ; $5b38: $75
	ld l, c                                          ; $5b39: $69
	rst SubAFromBC                                          ; $5b3a: $e7
	rst SubAFromBC                                          ; $5b3b: $e7
	sbc $cf                                          ; $5b3c: $de $cf
	rst SubAFromDE                                          ; $5b3e: $df
	adc a                                            ; $5b3f: $8f
	sbc [hl]                                         ; $5b40: $9e
	sbc a                                            ; $5b41: $9f
	db $dd                                           ; $5b42: $dd
	sub b                                            ; $5b43: $90
	sbc [hl]                                         ; $5b44: $9e
	and b                                            ; $5b45: $a0
	sbc $20                                          ; $5b46: $de $20
	db $dd                                           ; $5b48: $dd
	ldh a, [$dd]                                     ; $5b49: $f0 $dd
	ldh [hDisp1_WY], a                                     ; $5b4b: $e0 $95
	adc d                                            ; $5b4d: $8a
	sub l                                            ; $5b4e: $95
	and d                                            ; $5b4f: $a2
	ld d, l                                          ; $5b50: $55
	ld [hl+], a                                      ; $5b51: $22
	inc b                                            ; $5b52: $04
	add hl, hl                                       ; $5b53: $29
	dec b                                            ; $5b54: $05
	ld a, l                                          ; $5b55: $7d
	ld a, d                                          ; $5b56: $7a
	ld a, e                                          ; $5b57: $7b
	cp $80                                           ; $5b58: $fe $80
	dec sp                                           ; $5b5a: $3b
	ld d, $1a                                        ; $5b5b: $16 $1a
	xor h                                            ; $5b5d: $ac
	ld b, [hl]                                       ; $5b5e: $46
	ld l, d                                          ; $5b5f: $6a
	ld d, [hl]                                       ; $5b60: $56
	xor d                                            ; $5b61: $aa
	rst JumpTable                                          ; $5b62: $c7
	and l                                            ; $5b63: $a5
	ld c, e                                          ; $5b64: $4b
	ld b, b                                          ; $5b65: $40
	add b                                            ; $5b66: $80
	add h                                            ; $5b67: $84
	add b                                            ; $5b68: $80
	inc b                                            ; $5b69: $04
	ld [$140a], sp                                   ; $5b6a: $08 $0a $14
	inc d                                            ; $5b6d: $14
	add hl, bc                                       ; $5b6e: $09
	ld a, [bc]                                       ; $5b6f: $0a
	dec b                                            ; $5b70: $05
	ld [bc], a                                       ; $5b71: $02
	inc b                                            ; $5b72: $04
	dec bc                                           ; $5b73: $0b
	ld b, $03                                        ; $5b74: $06 $03
	ld b, $05                                        ; $5b76: $06 $05
	ld a, [bc]                                       ; $5b78: $0a
	sub d                                            ; $5b79: $92
	dec c                                            ; $5b7a: $0d
	ld a, [bc]                                       ; $5b7b: $0a
	inc b                                            ; $5b7c: $04
	nop                                              ; $5b7d: $00
	and b                                            ; $5b7e: $a0
	ld hl, $a161                                     ; $5b7f: $21 $61 $a1
	ld h, c                                          ; $5b82: $61
	or c                                             ; $5b83: $b1
	ld b, b                                          ; $5b84: $40
	sub b                                            ; $5b85: $90
	ld b, b                                          ; $5b86: $40
	ld [hl], b                                       ; $5b87: $70
	ld hl, sp-$6a                                    ; $5b88: $f8 $96
	jr nz, @+$62                                     ; $5b8a: $20 $60

jr_029_5b8c:
	add b                                            ; $5b8c: $80
	add b                                            ; $5b8d: $80
	add hl, bc                                       ; $5b8e: $09
	ld bc, $0311                                     ; $5b8f: $01 $11 $03
	inc bc                                           ; $5b92: $03
	sbc $07                                          ; $5b93: $de $07
	sbc c                                            ; $5b95: $99
	ld b, $0e                                        ; $5b96: $06 $0e
	ld c, $1c                                        ; $5b98: $0e $1c
	inc e                                            ; $5b9a: $1c
	jr c, jr_029_5bd4                                ; $5b9b: $38 $37

	nop                                              ; $5b9d: $00
	push de                                          ; $5b9e: $d5
	inc sp                                           ; $5b9f: $33
	sbc l                                            ; $5ba0: $9d
	nop                                              ; $5ba1: $00
	inc bc                                           ; $5ba2: $03
	ld h, e                                          ; $5ba3: $63
	or $9c                                           ; $5ba4: $f6 $9c
	rlca                                             ; $5ba6: $07
	ld b, d                                          ; $5ba7: $42
	inc hl                                           ; $5ba8: $23
	ld l, e                                          ; $5ba9: $6b
	or $9b                                           ; $5baa: $f6 $9b
	ld [hl], h                                       ; $5bac: $74
	ld b, h                                          ; $5bad: $44
	ld b, h                                          ; $5bae: $44
	ld [hl+], a                                      ; $5baf: $22
	db $dd                                           ; $5bb0: $dd
	inc sp                                           ; $5bb1: $33
	sbc [hl]                                         ; $5bb2: $9e
	jr nc, jr_029_5c2c                               ; $5bb3: $30 $77

	or $9e                                           ; $5bb5: $f6 $9e
	ld b, h                                          ; $5bb7: $44
	ld [hl], a                                       ; $5bb8: $77
	ld [$f67b], a                                    ; $5bb9: $ea $7b $f6
	sbc d                                            ; $5bbc: $9a
	ld b, [hl]                                       ; $5bbd: $46
	ld d, h                                          ; $5bbe: $54
	ld b, h                                          ; $5bbf: $44
	jr nz, jr_029_5bc2                               ; $5bc0: $20 $00

jr_029_5bc2:
	ld a, e                                          ; $5bc2: $7b
	db $e3                                           ; $5bc3: $e3
	ld a, e                                          ; $5bc4: $7b
	or $9c                                           ; $5bc5: $f6 $9c
	ld d, [hl]                                       ; $5bc7: $56
	ld b, h                                          ; $5bc8: $44
	ld b, b                                          ; $5bc9: $40
	ld a, e                                          ; $5bca: $7b
	ret z                                            ; $5bcb: $c8

	rst $38                                          ; $5bcc: $ff
	sbc h                                            ; $5bcd: $9c
	rlca                                             ; $5bce: $07
	ld h, [hl]                                       ; $5bcf: $66
	ld h, [hl]                                       ; $5bd0: $66
	ld [hl], a                                       ; $5bd1: $77
	or $0a                                           ; $5bd2: $f6 $0a

jr_029_5bd4:
	ld [$fe9a], sp                                   ; $5bd4: $08 $9a $fe
	nop                                              ; $5bd7: $00
	cp $00                                           ; $5bd8: $fe $00
	db $fc                                           ; $5bda: $fc

Jump_029_5bdb:
	ld [hl], e                                       ; $5bdb: $73
	cp $9e                                           ; $5bdc: $fe $9e
	ld hl, sp+$7b                                    ; $5bde: $f8 $7b
	cp $9e                                           ; $5be0: $fe $9e
	ldh a, [$f6]                                     ; $5be2: $f0 $f6
	add h                                            ; $5be4: $84
	ld [bc], a                                       ; $5be5: $02
	nop                                              ; $5be6: $00
	ld h, b                                          ; $5be7: $60
	nop                                              ; $5be8: $00
	ld a, d                                          ; $5be9: $7a
	nop                                              ; $5bea: $00
	ld a, $01                                        ; $5beb: $3e $01
	ld l, $01                                        ; $5bed: $2e $01
	inc d                                            ; $5bef: $14
	ld [bc], a                                       ; $5bf0: $02
	xor l                                            ; $5bf1: $ad
	ld [bc], a                                       ; $5bf2: $02
	inc d                                            ; $5bf3: $14
	ld [bc], a                                       ; $5bf4: $02
	xor c                                            ; $5bf5: $a9
	inc b                                            ; $5bf6: $04
	ld e, b                                          ; $5bf7: $58
	inc b                                            ; $5bf8: $04
	or l                                             ; $5bf9: $b5
	ld [$00aa], sp                                   ; $5bfa: $08 $aa $00
	ld d, l                                          ; $5bfd: $55
	nop                                              ; $5bfe: $00
	add b                                            ; $5bff: $80
	ld a, e                                          ; $5c00: $7b
	db $fc                                           ; $5c01: $fc
	rst $38                                          ; $5c02: $ff
	ld l, a                                          ; $5c03: $6f
	db $fc                                           ; $5c04: $fc
	ld [hl], a                                       ; $5c05: $77
	ldh a, [$67]                                     ; $5c06: $f0 $67
	db $f4                                           ; $5c08: $f4
	ld a, e                                          ; $5c09: $7b
	db $fc                                           ; $5c0a: $fc
	add b                                            ; $5c0b: $80
	ld bc, $01aa                                     ; $5c0c: $01 $aa $01
	ld d, h                                          ; $5c0f: $54
	inc bc                                           ; $5c10: $03
	xor b                                            ; $5c11: $a8
	rlca                                             ; $5c12: $07
	ld e, l                                          ; $5c13: $5d
	ld [bc], a                                       ; $5c14: $02
	add hl, hl                                       ; $5c15: $29
	ld b, $50                                        ; $5c16: $06 $50
	rrca                                             ; $5c18: $0f
	ld [hl-], a                                      ; $5c19: $32
	dec c                                            ; $5c1a: $0d
	pop bc                                           ; $5c1b: $c1
	sbc [hl]                                         ; $5c1c: $9e
	ld [hl], l                                       ; $5c1d: $75
	add b                                            ; $5c1e: $80
	ld [$f400], a                                    ; $5c1f: $ea $00 $f4
	nop                                              ; $5c22: $00
	ld [$d400], a                                    ; $5c23: $ea $00 $d4
	nop                                              ; $5c26: $00
	ld l, b                                          ; $5c27: $68
	add b                                            ; $5c28: $80
	add b                                            ; $5c29: $80
	ld a, h                                          ; $5c2a: $7c
	sub l                                            ; $5c2b: $95

jr_029_5c2c:
	add b                                            ; $5c2c: $80
	jr z, jr_029_5c6e                                ; $5c2d: $28 $3f

	ld a, [hl+]                                      ; $5c2f: $2a
	ld a, [hl-]                                      ; $5c30: $3a
	dec hl                                           ; $5c31: $2b
	dec sp                                           ; $5c32: $3b
	dec hl                                           ; $5c33: $2b
	dec hl                                           ; $5c34: $2b
	inc hl                                           ; $5c35: $23
	ld a, e                                          ; $5c36: $7b
	cp $df                                           ; $5c37: $fe $df
	dec hl                                           ; $5c39: $2b
	sub a                                            ; $5c3a: $97
	add hl, hl                                       ; $5c3b: $29
	cpl                                              ; $5c3c: $2f
	add hl, hl                                       ; $5c3d: $29
	ld [bc], a                                       ; $5c3e: $02
	ld bc, $0103                                     ; $5c3f: $01 $03 $01
	ld bc, $7ffe                                     ; $5c42: $01 $fe $7f
	xor h                                            ; $5c45: $ac
	ld a, a                                          ; $5c46: $7f
	db $fd                                           ; $5c47: $fd
	sbc $80                                          ; $5c48: $de $80
	sub a                                            ; $5c4a: $97
	ret nz                                           ; $5c4b: $c0

	ret c                                            ; $5c4c: $d8

	cp b                                             ; $5c4d: $b8
	ld hl, sp+$00                                    ; $5c4e: $f8 $00
	and b                                            ; $5c50: $a0
	ret nz                                           ; $5c51: $c0

	ret nz                                           ; $5c52: $c0

	cp $96                                           ; $5c53: $fe $96
	ld [hl], h                                       ; $5c55: $74
	ret c                                            ; $5c56: $d8

	ld e, b                                          ; $5c57: $58
	nop                                              ; $5c58: $00
	ld h, b                                          ; $5c59: $60
	ret nz                                           ; $5c5a: $c0

	dec d                                            ; $5c5b: $15
	nop                                              ; $5c5c: $00
	ld a, [bc]                                       ; $5c5d: $0a
	ld a, [$da7f]                                    ; $5c5e: $fa $7f $da
	sbc [hl]                                         ; $5c61: $9e
	inc bc                                           ; $5c62: $03
	ld a, e                                          ; $5c63: $7b
	cp $80                                           ; $5c64: $fe $80
	ld e, a                                          ; $5c66: $5f
	ld bc, $03be                                     ; $5c67: $01 $be $03
	ld a, [hl]                                       ; $5c6a: $7e
	inc bc                                           ; $5c6b: $03
	cp $03                                           ; $5c6c: $fe $03

jr_029_5c6e:
	db $fc                                           ; $5c6e: $fc
	rlca                                             ; $5c6f: $07
	db $fc                                           ; $5c70: $fc

jr_029_5c71:
	rlca                                             ; $5c71: $07
	ld hl, sp+$0f                                    ; $5c72: $f8 $0f
	ld sp, hl                                        ; $5c74: $f9
	rrca                                             ; $5c75: $0f
	jp hl                                            ; $5c76: $e9


	scf                                              ; $5c77: $37
	cp d                                             ; $5c78: $ba
	ld h, a                                          ; $5c79: $67
	jp Jump_029_646e                                 ; $5c7a: $c3 $6e $64


	adc $56                                          ; $5c7d: $ce $56
	call z, $9cc8                                    ; $5c7f: $cc $c8 $9c
	xor l                                            ; $5c82: $ad
	sbc b                                            ; $5c83: $98
	adc l                                            ; $5c84: $8d
	adc d                                            ; $5c85: $8a
	jr c, jr_029_5c71                                ; $5c86: $38 $e9

	rra                                              ; $5c88: $1f
	ld l, c                                          ; $5c89: $69
	rra                                              ; $5c8a: $1f
	ld l, d                                          ; $5c8b: $6a
	rra                                              ; $5c8c: $1f
	ld d, d                                          ; $5c8d: $52
	ccf                                              ; $5c8e: $3f
	push de                                          ; $5c8f: $d5
	ccf                                              ; $5c90: $3f
	and l                                            ; $5c91: $a5
	ld a, a                                          ; $5c92: $7f
	and [hl]                                         ; $5c93: $a6
	ld a, [hl]                                       ; $5c94: $7e
	ld [$407e], a                                    ; $5c95: $ea $7e $40
	ret nz                                           ; $5c98: $c0

	ld b, b                                          ; $5c99: $40
	ret nz                                           ; $5c9a: $c0

	db $dd                                           ; $5c9b: $dd
	add b                                            ; $5c9c: $80
	ld sp, hl                                        ; $5c9d: $f9
	add b                                            ; $5c9e: $80
	add hl, de                                       ; $5c9f: $19
	ld b, $83                                        ; $5ca0: $06 $83
	inc c                                            ; $5ca2: $0c
	adc e                                            ; $5ca3: $8b
	inc b                                            ; $5ca4: $04
	ld b, e                                          ; $5ca5: $43
	inc b                                            ; $5ca6: $04
	rst SubAFromBC                                          ; $5ca7: $e7
	nop                                              ; $5ca8: $00
	ld h, e                                          ; $5ca9: $63
	nop                                              ; $5caa: $00
	or e                                             ; $5cab: $b3
	nop                                              ; $5cac: $00
	ld d, c                                          ; $5cad: $51
	nop                                              ; $5cae: $00
	add l                                            ; $5caf: $85
	ld a, [de]                                       ; $5cb0: $1a
	adc d                                            ; $5cb1: $8a
	dec [hl]                                         ; $5cb2: $35
	sub l                                            ; $5cb3: $95
	ld a, [hl+]                                      ; $5cb4: $2a
	sbc e                                            ; $5cb5: $9b
	inc [hl]                                         ; $5cb6: $34
	ld h, $78                                        ; $5cb7: $26 $78
	ld c, [hl]                                       ; $5cb9: $4e

jr_029_5cba:
	ld [hl], b                                       ; $5cba: $70
	inc h                                            ; $5cbb: $24
	ld hl, sp-$34                                    ; $5cbc: $f8 $cc
	add l                                            ; $5cbe: $85
	ld [hl], b                                       ; $5cbf: $70
	rlca                                             ; $5cc0: $07
	nop                                              ; $5cc1: $00
	add [hl]                                         ; $5cc2: $86
	nop                                              ; $5cc3: $00
	add l                                            ; $5cc4: $85
	nop                                              ; $5cc5: $00
	add a                                            ; $5cc6: $87
	nop                                              ; $5cc7: $00
	add h                                            ; $5cc8: $84
	ld bc, $8142                                     ; $5cc9: $01 $42 $81
	ret nz                                           ; $5ccc: $c0

	inc bc                                           ; $5ccd: $03
	pop bc                                           ; $5cce: $c1
	ld [bc], a                                       ; $5ccf: $02
	jr nz, @+$42                                     ; $5cd0: $20 $40

	ld d, b                                          ; $5cd2: $50
	and b                                            ; $5cd3: $a0
	jr nz, @-$3e                                     ; $5cd4: $20 $c0

	ld d, b                                          ; $5cd6: $50
	and b                                            ; $5cd7: $a0
	and b                                            ; $5cd8: $a0
	ld a, e                                          ; $5cd9: $7b
	ld hl, sp-$78                                    ; $5cda: $f8 $88
	and b                                            ; $5cdc: $a0
	ld b, c                                          ; $5cdd: $41
	ld b, b                                          ; $5cde: $40
	and c                                            ; $5cdf: $a1
	rlca                                             ; $5ce0: $07
	jr c, jr_029_5d32                                ; $5ce1: $38 $4f

	jr nc, jr_029_5cf4                               ; $5ce3: $30 $0f

	ld [hl], b                                       ; $5ce5: $70
	adc a                                            ; $5ce6: $8f
	ld [hl], b                                       ; $5ce7: $70

jr_029_5ce8:
	rra                                              ; $5ce8: $1f
	ldh [$1f], a                                     ; $5ce9: $e0 $1f
	ldh [$3f], a                                     ; $5ceb: $e0 $3f
	ret nz                                           ; $5ced: $c0

	ccf                                              ; $5cee: $3f
	ret nz                                           ; $5cef: $c0

	ldh a, [rP1]                                     ; $5cf0: $f0 $00
	ldh [$7b], a                                     ; $5cf2: $e0 $7b

jr_029_5cf4:
	cp $7f                                           ; $5cf4: $fe $7f
	ld d, b                                          ; $5cf6: $50
	sbc [hl]                                         ; $5cf7: $9e
	pop bc                                           ; $5cf8: $c1
	ld a, e                                          ; $5cf9: $7b
	db $fc                                           ; $5cfa: $fc
	sbc [hl]                                         ; $5cfb: $9e
	add c                                            ; $5cfc: $81
	cp $9a                                           ; $5cfd: $fe $9a
	ccf                                              ; $5cff: $3f
	nop                                              ; $5d00: $00
	rrca                                             ; $5d01: $0f
	nop                                              ; $5d02: $00
	ld d, a                                          ; $5d03: $57
	ld a, d                                          ; $5d04: $7a
	call nz, $f27e                                   ; $5d05: $c4 $7e $f2
	ld a, a                                          ; $5d08: $7f
	ld c, b                                          ; $5d09: $48
	ld [hl], a                                       ; $5d0a: $77
	db $fc                                           ; $5d0b: $fc
	adc a                                            ; $5d0c: $8f
	ld d, b                                          ; $5d0d: $50
	ld [$10a5], sp                                   ; $5d0e: $08 $a5 $10
	ldh [rAUD1SWEEP], a                              ; $5d11: $e0 $10
	db $e4                                           ; $5d13: $e4
	db $10                                           ; $5d14: $10
	ld b, b                                          ; $5d15: $40
	jr nz, jr_029_5ce8                               ; $5d16: $20 $d0

	jr nz, jr_029_5cba                               ; $5d18: $20 $a0

	ld b, b                                          ; $5d1a: $40
	add b                                            ; $5d1b: $80
	ld b, b                                          ; $5d1c: $40
	db $fd                                           ; $5d1d: $fd
	sbc $07                                          ; $5d1e: $de $07
	sbc [hl]                                         ; $5d20: $9e
	ld b, $db                                        ; $5d21: $06 $db
	inc bc                                           ; $5d23: $03
	rst SubAFromDE                                          ; $5d24: $df
	ld bc, $0edf                                     ; $5d25: $01 $df $0e
	add b                                            ; $5d28: $80
	ei                                               ; $5d29: $fb
	cp $57                                           ; $5d2a: $fe $57

jr_029_5d2c:
	db $fd                                           ; $5d2c: $fd
	xor a                                            ; $5d2d: $af
	ld a, [$f55f]                                    ; $5d2e: $fa $5f $f5
	cp a                                             ; $5d31: $bf

jr_029_5d32:
	ld [$f75d], a                                    ; $5d32: $ea $5d $f7
	cp e                                             ; $5d35: $bb
	xor $a0                                          ; $5d36: $ee $a0
	sbc l                                            ; $5d38: $9d
	ld h, b                                          ; $5d39: $60
	ld e, d                                          ; $5d3a: $5a
	ld b, b                                          ; $5d3b: $40
	ld [hl], l                                       ; $5d3c: $75
	ld b, b                                          ; $5d3d: $40
	ld a, d                                          ; $5d3e: $7a
	and c                                            ; $5d3f: $a1
	dec [hl]                                         ; $5d40: $35
	and e                                            ; $5d41: $a3
	xor e                                            ; $5d42: $ab
	inc hl                                           ; $5d43: $23
	or [hl]                                          ; $5d44: $b6
	and l                                            ; $5d45: $a5
	xor [hl]                                         ; $5d46: $ae
	nop                                              ; $5d47: $00
	add b                                            ; $5d48: $80
	ld d, b                                          ; $5d49: $50
	nop                                              ; $5d4a: $00
	xor b                                            ; $5d4b: $a8
	nop                                              ; $5d4c: $00

Call_029_5d4d:
	ld d, b                                          ; $5d4d: $50
	ccf                                              ; $5d4e: $3f
	cp a                                             ; $5d4f: $bf
	ret nc                                           ; $5d50: $d0

	rst AddAOntoHL                                          ; $5d51: $ef
	or b                                             ; $5d52: $b0
	rst GetHLinHL                                          ; $5d53: $cf
	add sp, -$79                                     ; $5d54: $e8 $87
	sub $81                                          ; $5d56: $d6 $81

jr_029_5d58:
	ccf                                              ; $5d58: $3f
	add hl, hl                                       ; $5d59: $29
	ccf                                              ; $5d5a: $3f
	dec h                                            ; $5d5b: $25
	rra                                              ; $5d5c: $1f
	dec d                                            ; $5d5d: $15
	sbc a                                            ; $5d5e: $9f
	sub h                                            ; $5d5f: $94
	ld a, a                                          ; $5d60: $7f
	rst $38                                          ; $5d61: $ff
	nop                                              ; $5d62: $00
	rst $38                                          ; $5d63: $ff
	rrca                                             ; $5d64: $0f
	rst $38                                          ; $5d65: $ff
	jr nc, jr_029_5d58                               ; $5d66: $30 $f0

	adc d                                            ; $5d68: $8a
	ldh [$c1], a                                     ; $5d69: $e0 $c1
	ldh [$e2], a                                     ; $5d6b: $e0 $e2
	rst FarCall                                          ; $5d6d: $f7
	rst FarCall                                          ; $5d6e: $f7
	ld sp, hl                                        ; $5d6f: $f9
	ld hl, sp-$1d                                    ; $5d70: $f8 $e3
	ldh a, [$fe]                                     ; $5d72: $f0 $fe
	rst $38                                          ; $5d74: $ff
	add l                                            ; $5d75: $85
	inc bc                                           ; $5d76: $03
	rla                                              ; $5d77: $17
	rrca                                             ; $5d78: $0f
	ld h, b                                          ; $5d79: $60
	jr nc, jr_029_5d2c                               ; $5d7a: $30 $b0

	ld h, b                                          ; $5d7c: $60
	ld h, b                                          ; $5d7d: $60
	db $dd                                           ; $5d7e: $dd
	ret nz                                           ; $5d7f: $c0

	sub l                                            ; $5d80: $95
	add b                                            ; $5d81: $80
	ldh [$80], a                                     ; $5d82: $e0 $80
	ld h, b                                          ; $5d84: $60
	add b                                            ; $5d85: $80
	db $e3                                           ; $5d86: $e3
	ret nz                                           ; $5d87: $c0

	rlca                                             ; $5d88: $07
	nop                                              ; $5d89: $00
	rlca                                             ; $5d8a: $07
	ld a, e                                          ; $5d8b: $7b
	ld l, [hl]                                       ; $5d8c: $6e
	ld a, a                                          ; $5d8d: $7f
	cp $80                                           ; $5d8e: $fe $80
	ld e, $01                                        ; $5d90: $1e $01
	dec sp                                           ; $5d92: $3b
	rlca                                             ; $5d93: $07
	db $ec                                           ; $5d94: $ec
	rra                                              ; $5d95: $1f
	pop bc                                           ; $5d96: $c1
	rst $38                                          ; $5d97: $ff
	pop af                                           ; $5d98: $f1
	rra                                              ; $5d99: $1f
	ldh a, [c]                                       ; $5d9a: $f2
	rra                                              ; $5d9b: $1f
	ldh [c], a                                       ; $5d9c: $e2
	ld a, $c4                                        ; $5d9d: $3e $c4
	ld a, [hl]                                       ; $5d9f: $7e
	call nz, $88fd                                   ; $5da0: $c4 $fd $88
	ld sp, hl                                        ; $5da3: $f9
	sub b                                            ; $5da4: $90
	ei                                               ; $5da5: $fb
	ld hl, $53f7                                     ; $5da6: $21 $f7 $53
	jr c, @+$14                                      ; $5da9: $38 $12

	ld [hl], c                                       ; $5dab: $71
	or [hl]                                          ; $5dac: $b6
	ld h, c                                          ; $5dad: $61
	dec h                                            ; $5dae: $25
	adc d                                            ; $5daf: $8a
	db $e3                                           ; $5db0: $e3
	ld l, a                                          ; $5db1: $6f
	jp $87db                                         ; $5db2: $c3 $db $87


	sub [hl]                                         ; $5db5: $96
	adc a                                            ; $5db6: $8f
	cp [hl]                                          ; $5db7: $be
	rrca                                             ; $5db8: $0f
	ld c, h                                          ; $5db9: $4c
	db $fc                                           ; $5dba: $fc
	call c, $98fc                                    ; $5dbb: $dc $fc $98
	ld hl, sp-$50                                    ; $5dbe: $f8 $b0
	ldh a, [$a0]                                     ; $5dc0: $f0 $a0
	ldh [$60], a                                     ; $5dc2: $e0 $60
	ldh [rPCM12], a                                  ; $5dc4: $e0 $76
	add $76                                          ; $5dc6: $c6 $76
	add d                                            ; $5dc8: $82
	sbc [hl]                                         ; $5dc9: $9e
	ld a, [hl+]                                      ; $5dca: $2a
	cp $8e                                           ; $5dcb: $fe $8e
	ld l, d                                          ; $5dcd: $6a
	add b                                            ; $5dce: $80
	or h                                             ; $5dcf: $b4
	ret nz                                           ; $5dd0: $c0

	ld e, d                                          ; $5dd1: $5a
	ldh [$2d], a                                     ; $5dd2: $e0 $2d
	ldh a, [$b9]                                     ; $5dd4: $f0 $b9
	nop                                              ; $5dd6: $00
	jr jr_029_5dd9                                   ; $5dd7: $18 $00

jr_029_5dd9:
	cp h                                             ; $5dd9: $bc
	nop                                              ; $5dda: $00
	inc e                                            ; $5ddb: $1c
	nop                                              ; $5ddc: $00
	xor [hl]                                         ; $5ddd: $ae
	ld a, e                                          ; $5dde: $7b
	xor b                                            ; $5ddf: $a8
	sbc [hl]                                         ; $5de0: $9e
	xor a                                            ; $5de1: $af
	ld a, e                                          ; $5de2: $7b
	ld d, $80                                        ; $5de3: $16 $80
	adc c                                            ; $5de5: $89
	ld [hl], b                                       ; $5de6: $70
	ret c                                            ; $5de7: $d8

	ld hl, $20d3                                     ; $5de8: $21 $d3 $20
	ld [hl], d                                       ; $5deb: $72
	ld bc, $0265                                     ; $5dec: $01 $65 $02
	ld [hl], $01                                     ; $5def: $36 $01
	dec a                                            ; $5df1: $3d
	ld [bc], a                                       ; $5df2: $02
	sbc d                                            ; $5df3: $9a
	dec b                                            ; $5df4: $05
	ld h, d                                          ; $5df5: $62
	add c                                            ; $5df6: $81
	and e                                            ; $5df7: $a3
	ld b, b                                          ; $5df8: $40
	ld h, d                                          ; $5df9: $62
	add c                                            ; $5dfa: $81
	and c                                            ; $5dfb: $a1
	ld b, b                                          ; $5dfc: $40
	ld d, c                                          ; $5dfd: $51
	and b                                            ; $5dfe: $a0
	pop af                                           ; $5dff: $f1
	nop                                              ; $5e00: $00
	pop de                                           ; $5e01: $d1
	nop                                              ; $5e02: $00
	or b                                             ; $5e03: $b0
	ld a, [hl]                                       ; $5e04: $7e
	inc [hl]                                         ; $5e05: $34
	adc h                                            ; $5e06: $8c
	ld b, e                                          ; $5e07: $43
	ld b, b                                          ; $5e08: $40
	add e                                            ; $5e09: $83
	add h                                            ; $5e0a: $84
	ld b, e                                          ; $5e0b: $43
	ld b, b                                          ; $5e0c: $40
	add a                                            ; $5e0d: $87
	ld [$8187], sp                                   ; $5e0e: $08 $87 $81
	ld c, $11                                        ; $5e11: $0e $11
	ld c, $03                                        ; $5e13: $0e $03
	inc e                                            ; $5e15: $1c
	ld a, a                                          ; $5e16: $7f
	add b                                            ; $5e17: $80
	ld a, a                                          ; $5e18: $7f
	add b                                            ; $5e19: $80
	ld a, e                                          ; $5e1a: $7b
	ld b, l                                          ; $5e1b: $45
	ld h, e                                          ; $5e1c: $63
	cp $76                                           ; $5e1d: $fe $76
	inc b                                            ; $5e1f: $04
	cp $7e                                           ; $5e20: $fe $7e
	jp $097e                                         ; $5e22: $c3 $7e $09


	sbc c                                            ; $5e25: $99
	cp $80                                           ; $5e26: $fe $80
	ld a, a                                          ; $5e28: $7f
	ldh a, [rIF]                                     ; $5e29: $f0 $0f
	ld d, l                                          ; $5e2b: $55
	ld a, d                                          ; $5e2c: $7a
	inc e                                            ; $5e2d: $1c
	ld a, [hl]                                       ; $5e2e: $7e
	inc c                                            ; $5e2f: $0c
	ld e, a                                          ; $5e30: $5f
	ld [$ce7a], a                                    ; $5e31: $ea $7a $ce
	ld a, [hl]                                       ; $5e34: $7e
	ld b, h                                          ; $5e35: $44
	ld h, d                                          ; $5e36: $62
	ld b, d                                          ; $5e37: $42
	ld a, c                                          ; $5e38: $79
	ld a, [$01de]                                    ; $5e39: $fa $de $01
	push af                                          ; $5e3c: $f5
	add b                                            ; $5e3d: $80
	ld [hl], a                                       ; $5e3e: $77
	db $dd                                           ; $5e3f: $dd
	xor $bb                                          ; $5e40: $ee $bb
	db $dd                                           ; $5e42: $dd
	rst FarCall                                          ; $5e43: $f7
	xor d                                            ; $5e44: $aa
	rst $38                                          ; $5e45: $ff
	push de                                          ; $5e46: $d5
	rst $38                                          ; $5e47: $ff
	ld a, a                                          ; $5e48: $7f
	ld l, a                                          ; $5e49: $6f
	ld [hl], l                                       ; $5e4a: $75
	ld e, a                                          ; $5e4b: $5f
	ld a, a                                          ; $5e4c: $7f
	ld a, a                                          ; $5e4d: $7f
	ld d, a                                          ; $5e4e: $57
	call nc, $dd9b                                   ; $5e4f: $d4 $9b $dd
	ld d, a                                          ; $5e52: $57
	reti                                             ; $5e53: $d9


	xor a                                            ; $5e54: $af
	jp hl                                            ; $5e55: $e9


	ld c, e                                          ; $5e56: $4b
	db $ed                                           ; $5e57: $ed
	db $eb                                           ; $5e58: $eb
	db $ed                                           ; $5e59: $ed
	ld d, a                                          ; $5e5a: $57
	push af                                          ; $5e5b: $f5
	rst FarCall                                          ; $5e5c: $f7
	add b                                            ; $5e5d: $80
	push af                                          ; $5e5e: $f5
	xor e                                            ; $5e5f: $ab
	add b                                            ; $5e60: $80
	ld d, l                                          ; $5e61: $55
	add b                                            ; $5e62: $80
	xor e                                            ; $5e63: $ab
	ld bc, $02d6                                     ; $5e64: $01 $d6 $02
	xor h                                            ; $5e67: $ac
	inc b                                            ; $5e68: $04
	reti                                             ; $5e69: $d9


	ld [$10b8], sp                                   ; $5e6a: $08 $b8 $10
	ldh a, [rAUD1SWEEP]                              ; $5e6d: $f0 $10
	ld h, a                                          ; $5e6f: $67
	jp $8894                                         ; $5e70: $c3 $94 $88


	jr nz, jr_029_5e85                               ; $5e73: $20 $10

	ld b, d                                          ; $5e75: $42
	ld hl, $03c5                                     ; $5e76: $21 $c5 $03
	adc e                                            ; $5e79: $8b
	rlca                                             ; $5e7a: $07
	ld d, $0c                                        ; $5e7b: $16 $0c
	add b                                            ; $5e7d: $80

jr_029_5e7e:
	inc a                                            ; $5e7e: $3c
	jr @-$03                                         ; $5e7f: $18 $fb

	cp $1f                                           ; $5e81: $fe $1f
	inc c                                            ; $5e83: $0c
	db $fd                                           ; $5e84: $fd

jr_029_5e85:
	ld b, $ee                                        ; $5e85: $06 $ee
	di                                               ; $5e87: $f3
	rst $38                                          ; $5e88: $ff
	rra                                              ; $5e89: $1f
	rst $38                                          ; $5e8a: $ff
	ret nz                                           ; $5e8b: $c0

	ld sp, $7b21                                     ; $5e8c: $31 $21 $7b
	ld de, $7ffe                                     ; $5e8f: $11 $fe $7f
	ei                                               ; $5e92: $fb
	inc a                                            ; $5e93: $3c
	rst SubAFromDE                                          ; $5e94: $df
	jr nc, jr_029_5e7e                               ; $5e95: $30 $e7

	jr nc, @-$2b                                     ; $5e97: $30 $d3

	ld h, b                                          ; $5e99: $60
	sub b                                            ; $5e9a: $90
	ldh [$50], a                                     ; $5e9b: $e0 $50
	sbc c                                            ; $5e9d: $99
	and b                                            ; $5e9e: $a0
	ret nc                                           ; $5e9f: $d0

	jr nz, @+$01                                     ; $5ea0: $20 $ff

	ld bc, $79fe                                     ; $5ea2: $01 $fe $79
	sub d                                            ; $5ea5: $92
	add b                                            ; $5ea6: $80
	db $fd                                           ; $5ea7: $fd
	rlca                                             ; $5ea8: $07
	adc $07                                          ; $5ea9: $ce $07
	inc c                                            ; $5eab: $0c
	rlca                                             ; $5eac: $07
	ld [$180f], sp                                   ; $5ead: $08 $0f $18
	rrca                                             ; $5eb0: $0f
	inc sp                                           ; $5eb1: $33
	xor $56                                          ; $5eb2: $ee $56
	db $ec                                           ; $5eb4: $ec
	and l                                            ; $5eb5: $a5
	call c, $b94e                                    ; $5eb6: $dc $4e $b9
	dec e                                            ; $5eb9: $1d
	di                                               ; $5eba: $f3
	dec sp                                           ; $5ebb: $3b
	rst SubAFromBC                                          ; $5ebc: $e7
	ld h, a                                          ; $5ebd: $67
	rst SubAFromDE                                          ; $5ebe: $df
	adc $be                                          ; $5ebf: $ce $be
	ld a, h                                          ; $5ec1: $7c
	rra                                              ; $5ec2: $1f
	db $fd                                           ; $5ec3: $fd
	ccf                                              ; $5ec4: $3f
	ld a, [$7e92]                                    ; $5ec5: $fa $92 $7e
	call c, $88fc                                    ; $5ec8: $dc $fc $88
	ld hl, sp+$04                                    ; $5ecb: $f8 $04
	db $fc                                           ; $5ecd: $fc
	ld [bc], a                                       ; $5ece: $02
	cp $01                                           ; $5ecf: $fe $01
	rst $38                                          ; $5ed1: $ff
	add c                                            ; $5ed2: $81
	add b                                            ; $5ed3: $80
	ld [hl], l                                       ; $5ed4: $75
	ld l, $84                                        ; $5ed5: $2e $84
	inc b                                            ; $5ed7: $04
	inc bc                                           ; $5ed8: $03
	dec b                                            ; $5ed9: $05
	inc bc                                           ; $5eda: $03
	ld a, [bc]                                       ; $5edb: $0a
	rlca                                             ; $5edc: $07
	add hl, bc                                       ; $5edd: $09
	rlca                                             ; $5ede: $07
	ld [de], a                                       ; $5edf: $12
	rrca                                             ; $5ee0: $0f
	ld e, [hl]                                       ; $5ee1: $5e
	ldh a, [$b5]                                     ; $5ee2: $f0 $b5
	ld hl, sp+$5a                                    ; $5ee4: $f8 $5a
	db $fc                                           ; $5ee6: $fc
	xor l                                            ; $5ee7: $ad
	cp $57                                           ; $5ee8: $fe $57
	cp $aa                                           ; $5eea: $fe $aa
	rst $38                                          ; $5eec: $ff
	ld d, a                                          ; $5eed: $57
	rst $38                                          ; $5eee: $ff
	xor c                                            ; $5eef: $a9
	rst $38                                          ; $5ef0: $ff
	xor e                                            ; $5ef1: $ab
	ld a, c                                          ; $5ef2: $79
	ld [$fc77], a                                    ; $5ef3: $ea $77 $fc
	ld a, h                                          ; $5ef6: $7c
	ret z                                            ; $5ef7: $c8

	sbc [hl]                                         ; $5ef8: $9e

jr_029_5ef9:
	push de                                          ; $5ef9: $d5
	ld a, d                                          ; $5efa: $7a
	xor h                                            ; $5efb: $ac
	sub [hl]                                         ; $5efc: $96
	push de                                          ; $5efd: $d5
	add b                                            ; $5efe: $80
	sbc l                                            ; $5eff: $9d
	ld [bc], a                                       ; $5f00: $02
	adc $00                                          ; $5f01: $ce $00
	rst GetHLinHL                                          ; $5f03: $cf
	nop                                              ; $5f04: $00
	and $7b                                          ; $5f05: $e6 $7b
	cp $94                                           ; $5f07: $fe $94
	ld [hl], e                                       ; $5f09: $73
	nop                                              ; $5f0a: $00
	cp e                                             ; $5f0b: $bb
	nop                                              ; $5f0c: $00
	ld a, c                                          ; $5f0d: $79
	nop                                              ; $5f0e: $00
	ld [hl], b                                       ; $5f0f: $70
	nop                                              ; $5f10: $00
	add sp, $00                                      ; $5f11: $e8 $00
	ld [hl], h                                       ; $5f13: $74
	ld a, e                                          ; $5f14: $7b
	db $fc                                           ; $5f15: $fc
	sbc h                                            ; $5f16: $9c
	ret nc                                           ; $5f17: $d0

	nop                                              ; $5f18: $00
	ld l, b                                          ; $5f19: $68
	ld a, e                                          ; $5f1a: $7b
	db $fc                                           ; $5f1b: $fc
	sbc c                                            ; $5f1c: $99
	and b                                            ; $5f1d: $a0

jr_029_5f1e:
	nop                                              ; $5f1e: $00
	inc bc                                           ; $5f1f: $03
	inc e                                            ; $5f20: $1c
	rlca                                             ; $5f21: $07
	jr c, jr_029_5f79                                ; $5f22: $38 $55

	adc h                                            ; $5f24: $8c
	ld d, [hl]                                       ; $5f25: $56
	call nz, $fe77                                   ; $5f26: $c4 $77 $fe
	sbc l                                            ; $5f29: $9d
	db $fc                                           ; $5f2a: $fc
	inc bc                                           ; $5f2b: $03
	ld c, a                                          ; $5f2c: $4f
	ldh a, [$6e]                                     ; $5f2d: $f0 $6e
	cp d                                             ; $5f2f: $ba
	ld e, a                                          ; $5f30: $5f
	ld [$a570], a                                    ; $5f31: $ea $70 $a5
	ld a, l                                          ; $5f34: $7d
	ld e, e                                          ; $5f35: $5b
	ld a, e                                          ; $5f36: $7b
	ld [$c37f], a                                    ; $5f37: $ea $7f $c3
	ld [hl], a                                       ; $5f3a: $77

jr_029_5f3b:
	ld [$6bf8], a                                    ; $5f3b: $ea $f8 $6b
	ld [$359e], a                                    ; $5f3e: $ea $9e $35
	sbc $3f                                          ; $5f41: $de $3f
	sbc h                                            ; $5f43: $9c
	scf                                              ; $5f44: $37
	ccf                                              ; $5f45: $3f
	ld e, $de                                        ; $5f46: $1e $de
	rra                                              ; $5f48: $1f
	rst SubAFromDE                                          ; $5f49: $df
	rlca                                             ; $5f4a: $07
	ld [hl], a                                       ; $5f4b: $77
	ld [$f58f], a                                    ; $5f4c: $ea $8f $f5
	or $fd                                           ; $5f4f: $f6 $fd
	cp $27                                           ; $5f51: $fe $27
	rra                                              ; $5f53: $1f
	sbc $21                                          ; $5f54: $de $21
	rra                                              ; $5f56: $1f
	ldh [$f3], a                                     ; $5f57: $e0 $f3
	db $fc                                           ; $5f59: $fc
	dec e                                            ; $5f5a: $1d
	ld c, $1a                                        ; $5f5b: $0e $1a
	rlca                                             ; $5f5d: $07
	ld a, c                                          ; $5f5e: $79
	rst FarCall                                          ; $5f5f: $f7
	ld a, a                                          ; $5f60: $7f
	cp $dd                                           ; $5f61: $fe $dd
	ret nz                                           ; $5f63: $c0

	sub [hl]                                         ; $5f64: $96
	ld b, b                                          ; $5f65: $40
	ld h, b                                          ; $5f66: $60
	jr nz, jr_029_5ef9                               ; $5f67: $20 $90

	db $10                                           ; $5f69: $10
	call z, Call_029_7108                            ; $5f6a: $cc $08 $71
	jr nz, @+$79                                     ; $5f6d: $20 $77

	ld h, $9c                                        ; $5f6f: $26 $9c
	ld c, $04                                        ; $5f71: $0e $04
	nop                                              ; $5f73: $00
	ld a, d                                          ; $5f74: $7a
	ld e, b                                          ; $5f75: $58
	ld a, l                                          ; $5f76: $7d
	xor d                                            ; $5f77: $aa
	ld a, l                                          ; $5f78: $7d

jr_029_5f79:
	ld [de], a                                       ; $5f79: $12
	add b                                            ; $5f7a: $80
	ld a, [hl]                                       ; $5f7b: $7e
	di                                               ; $5f7c: $f3
	xor l                                            ; $5f7d: $ad
	sbc $97                                          ; $5f7e: $de $97
	inc c                                            ; $5f80: $0c
	dec [hl]                                         ; $5f81: $35
	inc c                                            ; $5f82: $0c
	call nc, $dc2c                                   ; $5f83: $d4 $2c $dc
	ld l, b                                          ; $5f86: $68
	adc b                                            ; $5f87: $88
	ld hl, sp-$08                                    ; $5f88: $f8 $f8
	ldh a, [$d0]                                     ; $5f8a: $f0 $d0
	jr nz, jr_029_5f1e                               ; $5f8c: $20 $90

	jr nz, jr_029_5f90                               ; $5f8e: $20 $00

jr_029_5f90:
	db $10                                           ; $5f90: $10
	add b                                            ; $5f91: $80
	db $10                                           ; $5f92: $10
	ld d, b                                          ; $5f93: $50
	add b                                            ; $5f94: $80
	or b                                             ; $5f95: $b0
	ld b, b                                          ; $5f96: $40
	ld sp, $5151                                     ; $5f97: $31 $51 $51
	add b                                            ; $5f9a: $80
	ld sp, $1f11                                     ; $5f9b: $31 $11 $1f
	ld [hl+], a                                      ; $5f9e: $22
	ccf                                              ; $5f9f: $3f
	ld [hl+], a                                      ; $5fa0: $22
	ccf                                              ; $5fa1: $3f
	ld b, h                                          ; $5fa2: $44
	ld a, a                                          ; $5fa3: $7f
	adc c                                            ; $5fa4: $89
	rst $38                                          ; $5fa5: $ff
	sub e                                            ; $5fa6: $93
	cp $17                                           ; $5fa7: $fe $17
	db $fc                                           ; $5fa9: $fc
	cpl                                              ; $5faa: $2f
	ld hl, sp+$1f                                    ; $5fab: $f8 $1f
	cp $3e                                           ; $5fad: $fe $3e
	db $fc                                           ; $5faf: $fc
	ld a, l                                          ; $5fb0: $7d
	db $ec                                           ; $5fb1: $ec
	ld hl, sp-$38                                    ; $5fb2: $f8 $c8
	pop af                                           ; $5fb4: $f1
	db $10                                           ; $5fb5: $10
	ldh a, [c]                                       ; $5fb6: $f2
	db $10                                           ; $5fb7: $10
	push hl                                          ; $5fb8: $e5
	jr nz, jr_029_5f3b                               ; $5fb9: $20 $80

	jp z, $e140                                      ; $5fbb: $ca $40 $e1

	rra                                              ; $5fbe: $1f
	pop af                                           ; $5fbf: $f1
	rrca                                             ; $5fc0: $0f
	ld a, c                                          ; $5fc1: $79
	rlca                                             ; $5fc2: $07
	cp l                                             ; $5fc3: $bd
	inc bc                                           ; $5fc4: $03
	ld e, a                                          ; $5fc5: $5f
	ld bc, $01ae                                     ; $5fc6: $01 $ae $01
	ld d, [hl]                                       ; $5fc9: $56
	ld bc, $00ab                                     ; $5fca: $01 $ab $00
	sub b                                            ; $5fcd: $90
	adc a                                            ; $5fce: $8f
	ld h, b                                          ; $5fcf: $60
	rst SubAFromDE                                          ; $5fd0: $df
	jr nc, @+$01                                     ; $5fd1: $30 $ff

	ld c, b                                          ; $5fd3: $48
	cp a                                             ; $5fd4: $bf
	ld a, h                                          ; $5fd5: $7c
	add a                                            ; $5fd6: $87
	cp $83                                           ; $5fd7: $fe $83
	rst $38                                          ; $5fd9: $ff
	add b                                            ; $5fda: $80
	add c                                            ; $5fdb: $81
	cp $81                                           ; $5fdc: $fe $81
	ld d, h                                          ; $5fde: $54
	db $eb                                           ; $5fdf: $eb
	xor [hl]                                         ; $5fe0: $ae
	pop de                                           ; $5fe1: $d1
	ld e, [hl]                                       ; $5fe2: $5e
	and c                                            ; $5fe3: $a1
	dec [hl]                                         ; $5fe4: $35
	jp $836c                                         ; $5fe5: $c3 $6c $83


	dec [hl]                                         ; $5fe8: $35
	jp $e78a                                         ; $5fe9: $c3 $8a $e7


	ld c, c                                          ; $5fec: $49
	rst FarCall                                          ; $5fed: $f7
	xor d                                            ; $5fee: $aa
	ret nz                                           ; $5fef: $c0

	ld d, l                                          ; $5ff0: $55
	ldh [$aa], a                                     ; $5ff1: $e0 $aa
	ldh a, [$5d]                                     ; $5ff3: $f0 $5d
	ldh a, [$a6]                                     ; $5ff5: $f0 $a6
	ld hl, sp+$53                                    ; $5ff7: $f8 $53
	db $fc                                           ; $5ff9: $fc
	sbc b                                            ; $5ffa: $98
	xor c                                            ; $5ffb: $a9
	cp $44                                           ; $5ffc: $fe $44
	rst $38                                          ; $5ffe: $ff
	xor l                                            ; $5fff: $ad
	nop                                              ; $6000: $00
	ld a, h                                          ; $6001: $7c
	ld a, c                                          ; $6002: $79
	ld [hl], h                                       ; $6003: $74

Call_029_6004:
	sbc [hl]                                         ; $6004: $9e
	ld e, [hl]                                       ; $6005: $5e
	ld a, e                                          ; $6006: $7b
	db $fc                                           ; $6007: $fc
	adc c                                            ; $6008: $89
	ld a, [hl]                                       ; $6009: $7e
	nop                                              ; $600a: $00
	xor h                                            ; $600b: $ac
	nop                                              ; $600c: $00
	ld sp, hl                                        ; $600d: $f9
	nop                                              ; $600e: $00
	ld d, b                                          ; $600f: $50
	ld bc, $01a0                                     ; $6010: $01 $a0 $01
	ld b, d                                          ; $6013: $42
	ld bc, $0380                                     ; $6014: $01 $80 $03
	ld b, h                                          ; $6017: $44
	inc bc                                           ; $6018: $03
	add b                                            ; $6019: $80
	rlca                                             ; $601a: $07
	ld [$0107], sp                                   ; $601b: $08 $07 $01
	ld c, $74                                        ; $601e: $0e $74
	ld e, h                                          ; $6020: $5c
	ld [hl], l                                       ; $6021: $75
	adc h                                            ; $6022: $8c
	ld c, l                                          ; $6023: $4d
	adc d                                            ; $6024: $8a
	inc bc                                           ; $6025: $03
	cp $23                                           ; $6026: $fe $23
	cp $6e                                           ; $6028: $fe $6e
	cp d                                             ; $602a: $ba
	ld e, d                                          ; $602b: $5a
	sub b                                            ; $602c: $90
	ld a, d                                          ; $602d: $7a
	cp d                                             ; $602e: $ba
	ld a, a                                          ; $602f: $7f
	ld sp, hl                                        ; $6030: $f9
	ld e, a                                          ; $6031: $5f
	ld [$037e], a                                    ; $6032: $ea $7e $03
	ld l, d                                          ; $6035: $6a
	and h                                            ; $6036: $a4
	sbc [hl]                                         ; $6037: $9e
	db $fc                                           ; $6038: $fc
	ld l, a                                          ; $6039: $6f
	ld [$669a], a                                    ; $603a: $ea $9a $66
	add h                                            ; $603d: $84
	cp d                                             ; $603e: $ba
	jp nz, Jump_029_791f                             ; $603f: $c2 $1f $79

	xor $66                                          ; $6042: $ee $66
	adc [hl]                                         ; $6044: $8e
	sub h                                            ; $6045: $94
	ld a, a                                          ; $6046: $7f
	ld bc, $037d                                     ; $6047: $01 $7d $03
	ld a, e                                          ; $604a: $7b
	ld b, $f7                                        ; $604b: $06 $f7
	inc c                                            ; $604d: $0c
	ld e, a                                          ; $604e: $5f
	jr c, @+$21                                      ; $604f: $38 $1f

	ld a, d                                          ; $6051: $7a
	cp [hl]                                          ; $6052: $be
	ld a, d                                          ; $6053: $7a
	ld d, c                                          ; $6054: $51
	add b                                            ; $6055: $80
	inc e                                            ; $6056: $1c
	xor a                                            ; $6057: $af
	ld [hl-], a                                      ; $6058: $32
	ei                                               ; $6059: $fb
	add hl, sp                                       ; $605a: $39
	db $ed                                           ; $605b: $ed
	inc [hl]                                         ; $605c: $34
	rst SubAFromBC                                          ; $605d: $e7
	ld [hl-], a                                      ; $605e: $32
	db $e3                                           ; $605f: $e3
	ld sp, $31e3                                     ; $6060: $31 $e3 $31
	ld h, [hl]                                       ; $6063: $66
	ld sp, $1332                                     ; $6064: $31 $32 $13
	ld a, [de]                                       ; $6067: $1a
	dec bc                                           ; $6068: $0b
	inc b                                            ; $6069: $04
	rlca                                             ; $606a: $07
	add l                                            ; $606b: $85
	add a                                            ; $606c: $87
	push bc                                          ; $606d: $c5
	ld b, a                                          ; $606e: $47
	bit 1, a                                         ; $606f: $cb $4f
	ei                                               ; $6071: $fb
	ld e, [hl]                                       ; $6072: $5e
	rst $38                                          ; $6073: $ff
	xor a                                            ; $6074: $af
	add b                                            ; $6075: $80
	ld e, c                                          ; $6076: $59
	ldh a, [$f1]                                     ; $6077: $f0 $f1
	ldh [$e3], a                                     ; $6079: $e0 $e3
	pop bc                                           ; $607b: $c1

jr_029_607c:
	rst SubAFromDE                                          ; $607c: $df
	sbc [hl]                                         ; $607d: $9e
	db $fc                                           ; $607e: $fc
	ld h, h                                          ; $607f: $64
	cp b                                             ; $6080: $b8
	jr jr_029_607c                                   ; $6081: $18 $f9

	add sp, -$0e                                     ; $6083: $e8 $f2
	db $10                                           ; $6085: $10
	push de                                          ; $6086: $d5
	ret nz                                           ; $6087: $c0

	xor d                                            ; $6088: $aa
	add b                                            ; $6089: $80
	push de                                          ; $608a: $d5
	nop                                              ; $608b: $00
	xor d                                            ; $608c: $aa
	ld b, b                                          ; $608d: $40
	ld d, l                                          ; $608e: $55
	jr nz, @-$54                                     ; $608f: $20 $aa

	db $10                                           ; $6091: $10
	ld d, a                                          ; $6092: $57
	dec bc                                           ; $6093: $0b
	xor h                                            ; $6094: $ac
	sbc [hl]                                         ; $6095: $9e
	rlca                                             ; $6096: $07
	ld [hl], l                                       ; $6097: $75
	or [hl]                                          ; $6098: $b6
	ld a, e                                          ; $6099: $7b
	db $fc                                           ; $609a: $fc
	add b                                            ; $609b: $80
	ld bc, $075f                                     ; $609c: $01 $5f $07
	ld sp, hl                                        ; $609f: $f9
	ld a, $cf                                        ; $60a0: $3e $cf
	ldh a, [rIE]                                     ; $60a2: $f0 $ff
	nop                                              ; $60a4: $00
	cp $81                                           ; $60a5: $fe $81
	rst $38                                          ; $60a7: $ff
	add b                                            ; $60a8: $80
	rst $38                                          ; $60a9: $ff
	add b                                            ; $60aa: $80
	rst AddAOntoHL                                          ; $60ab: $ef
	add b                                            ; $60ac: $80
	push af                                          ; $60ad: $f5
	add b                                            ; $60ae: $80
	ld [$f600], a                                    ; $60af: $ea $00 $f6
	ld bc, $07e9                                     ; $60b2: $01 $e9 $07
	jr nc, @+$01                                     ; $60b5: $30 $ff

	inc c                                            ; $60b7: $0c
	rst $38                                          ; $60b8: $ff
	inc bc                                           ; $60b9: $03
	rst $38                                          ; $60ba: $ff
	add b                                            ; $60bb: $80
	adc a                                            ; $60bc: $8f
	ld [hl], c                                       ; $60bd: $71
	and $1f                                          ; $60be: $e6 $1f
	sbc $39                                          ; $60c0: $de $39
	ld [hl], h                                       ; $60c2: $74
	db $e3                                           ; $60c3: $e3
	db $ec                                           ; $60c4: $ec
	add e                                            ; $60c5: $83
	ld [de], a                                       ; $60c6: $12
	rst AddAOntoHL                                          ; $60c7: $ef
	and h                                            ; $60c8: $a4
	ld c, a                                          ; $60c9: $4f
	ld d, d                                          ; $60ca: $52
	adc a                                            ; $60cb: $8f
	and l                                            ; $60cc: $a5
	rst SubAFromDE                                          ; $60cd: $df
	ld h, d                                          ; $60ce: $62
	rst SubAFromDE                                          ; $60cf: $df
	ld b, h                                          ; $60d0: $44
	rst $38                                          ; $60d1: $ff
	jr z, @+$01                                      ; $60d2: $28 $ff

	jr nz, @+$01                                     ; $60d4: $20 $ff

	ld sp, hl                                        ; $60d6: $f9
	nop                                              ; $60d7: $00
	ld [hl], d                                       ; $60d8: $72
	add b                                            ; $60d9: $80
	ld [de], a                                       ; $60da: $12
	sub e                                            ; $60db: $93
	ldh [rAUD1HIGH], a                               ; $60dc: $e0 $14
	ldh [hDisp1_OBP1], a                                     ; $60de: $e0 $94
	ldh [$08], a                                     ; $60e0: $e0 $08
	ldh a, [$08]                                     ; $60e2: $f0 $08
	ldh a, [rLCDC]                                   ; $60e4: $f0 $40
	sbc b                                            ; $60e6: $98
	ld bc, $5c78                                     ; $60e7: $01 $78 $5c
	ld a, a                                          ; $60ea: $7f
	cp $95                                           ; $60eb: $fe $95
	daa                                              ; $60ed: $27
	jr jr_029_60f7                                   ; $60ee: $18 $07

	jr c, @+$49                                      ; $60f0: $38 $47

	jr c, jr_029_6103                                ; $60f2: $38 $0f

	ld [hl], b                                       ; $60f4: $70
	rrca                                             ; $60f5: $0f
	ld [hl], b                                       ; $60f6: $70

jr_029_60f7:
	ld [bc], a                                       ; $60f7: $02
	xor $03                                          ; $60f8: $ee $03
	cp $03                                           ; $60fa: $fe $03
	cp $13                                           ; $60fc: $fe $13
	cp $4d                                           ; $60fe: $fe $4d
	ld [hl-], a                                      ; $6100: $32
	ld a, d                                          ; $6101: $7a
	sub b                                            ; $6102: $90

jr_029_6103:
	ld l, c                                          ; $6103: $69
	ld c, b                                          ; $6104: $48
	ld a, a                                          ; $6105: $7f
	ld [$9378], a                                    ; $6106: $ea $78 $93
	ld a, e                                          ; $6109: $7b
	ldh a, [$9d]                                     ; $610a: $f0 $9d
	ld b, $01                                        ; $610c: $06 $01
	ld [hl], d                                       ; $610e: $72
	cp c                                             ; $610f: $b9

jr_029_6110:
	adc [hl]                                         ; $6110: $8e
	ret nz                                           ; $6111: $c0

	nop                                              ; $6112: $00

jr_029_6113:
	ld hl, sp+$00                                    ; $6113: $f8 $00
	cp $c0                                           ; $6115: $fe $c0
	ccf                                              ; $6117: $3f
	ldh a, [rIF]                                     ; $6118: $f0 $0f
	cp [hl]                                          ; $611a: $be
	add sp, -$58                                     ; $611b: $e8 $a8
	ld hl, sp+$29                                    ; $611d: $f8 $29
	ld [hl], b                                       ; $611f: $70
	inc bc                                           ; $6120: $03
	ld bc, $8f76                                     ; $6121: $01 $76 $8f
	ld [hl], a                                       ; $6124: $77
	ld [$659e], a                                    ; $6125: $ea $9e $65
	ld a, c                                          ; $6128: $79
	sbc h                                            ; $6129: $9c
	sbc l                                            ; $612a: $9d
	sub l                                            ; $612b: $95
	add b                                            ; $612c: $80
	halt                                             ; $612d: $76
	call c, $2a9c                                    ; $612e: $dc $9c $2a
	nop                                              ; $6131: $00
	dec b                                            ; $6132: $05
	cp $9a                                           ; $6133: $fe $9a
	ld d, a                                          ; $6135: $57
	ld [bc], a                                       ; $6136: $02
	xor a                                            ; $6137: $af
	ld bc, $6857                                     ; $6138: $01 $57 $68
	ld a, [hl]                                       ; $613b: $7e
	ld [hl], h                                       ; $613c: $74
	halt                                             ; $613d: $76
	add b                                            ; $613e: $80
	db $fd                                           ; $613f: $fd
	nop                                              ; $6140: $00
	ld [$f500], a                                    ; $6141: $ea $00 $f5
	add b                                            ; $6144: $80
	ld a, [$ff40]                                    ; $6145: $fa $40 $ff
	jr nz, @-$02                                     ; $6148: $20 $fc

	inc de                                           ; $614a: $13
	pop hl                                           ; $614b: $e1
	ccf                                              ; $614c: $3f
	jp nz, Jump_029_57ff                             ; $614d: $c2 $ff $57

	ld c, $ae                                        ; $6150: $0e $ae
	jr @+$5f                                         ; $6152: $18 $5d

	jr nc, jr_029_6110                               ; $6154: $30 $ba

	ld h, b                                          ; $6156: $60
	ld [hl], a                                       ; $6157: $77
	ret nz                                           ; $6158: $c0

	xor $81                                          ; $6159: $ee $81
	ld a, b                                          ; $615b: $78
	add a                                            ; $615c: $87
	ld h, e                                          ; $615d: $63
	sbc e                                            ; $615e: $9b
	sbc a                                            ; $615f: $9f
	ld e, [hl]                                       ; $6160: $5e
	ld bc, $7baf                                     ; $6161: $01 $af $7b
	ret c                                            ; $6164: $d8

	sub h                                            ; $6165: $94
	ld a, [$8f00]                                    ; $6166: $fa $00 $8f
	ld a, h                                          ; $6169: $7c
	ld a, [hl-]                                      ; $616a: $3a
	ldh a, [$f5]                                     ; $616b: $f0 $f5
	ret nz                                           ; $616d: $c0

	db $eb                                           ; $616e: $eb
	nop                                              ; $616f: $00
	jr nz, jr_029_61ec                               ; $6170: $20 $7a

	call z, $a183                                    ; $6172: $cc $83 $a1
	ld a, [hl]                                       ; $6175: $7e
	pop hl                                           ; $6176: $e1
	ld a, $e2                                        ; $6177: $3e $e2
	inc a                                            ; $6179: $3c
	jp nz, $c47c                                     ; $617a: $c2 $7c $c4

	ld a, c                                          ; $617d: $79
	push bc                                          ; $617e: $c5
	ld a, c                                          ; $617f: $79

jr_029_6180:
	xor b                                            ; $6180: $a8
	jr nc, jr_029_6113                               ; $6181: $30 $90

	jr nc, jr_029_61a5                               ; $6183: $30 $20

	ld [hl], b                                       ; $6185: $70
	ld b, b                                          ; $6186: $40
	ld h, c                                          ; $6187: $61
	and b                                            ; $6188: $a0
	pop hl                                           ; $6189: $e1
	ld b, b                                          ; $618a: $40
	db $e3                                           ; $618b: $e3
	add b                                            ; $618c: $80
	jp $c740                                         ; $618d: $c3 $40 $c7


	ld [hl], h                                       ; $6190: $74
	ld e, h                                          ; $6191: $5c
	ld bc, $038c                                     ; $6192: $01 $8c $03
	cp $03                                           ; $6195: $fe $03
	cp $03                                           ; $6197: $fe $03
	cp $03                                           ; $6199: $fe $03
	cp $6b                                           ; $619b: $fe $6b
	cp $6e                                           ; $619d: $fe $6e
	cp d                                             ; $619f: $ba
	ld e, d                                          ; $61a0: $5a
	and b                                            ; $61a1: $a0
	sbc d                                            ; $61a2: $9a
	rst $38                                          ; $61a3: $ff
	ret nz                                           ; $61a4: $c0

jr_029_61a5:
	ccf                                              ; $61a5: $3f
	ld hl, sp+$07                                    ; $61a6: $f8 $07
	ld e, e                                          ; $61a8: $5b
	ldh a, [$6e]                                     ; $61a9: $f0 $6e
	and h                                            ; $61ab: $a4
	ld h, e                                          ; $61ac: $63
	ld [$179a], a                                    ; $61ad: $ea $9a $17
	ld bc, $030a                                     ; $61b0: $01 $0a $03
	nop                                              ; $61b3: $00
	halt                                             ; $61b4: $76
	and e                                            ; $61b5: $a3
	sbc [hl]                                         ; $61b6: $9e
	ldh [rPCM34], a                                  ; $61b7: $e0 $77
	ld [$137f], a                                    ; $61b9: $ea $7f $13
	sub l                                            ; $61bc: $95
	inc b                                            ; $61bd: $04
	rst $38                                          ; $61be: $ff
	ld [$10ff], sp                                   ; $61bf: $08 $ff $10
	rst $38                                          ; $61c2: $ff
	inc hl                                           ; $61c3: $23
	ccf                                              ; $61c4: $3f
	rlca                                             ; $61c5: $07
	inc b                                            ; $61c6: $04
	db $fc                                           ; $61c7: $fc
	sbc e                                            ; $61c8: $9b
	ldh [hDisp1_LCDC], a                                     ; $61c9: $e0 $8f
	ld a, h                                          ; $61cb: $7c
	ld a, $7a                                        ; $61cc: $3e $7a
	ret c                                            ; $61ce: $d8

	ld l, [hl]                                       ; $61cf: $6e
	and h                                            ; $61d0: $a4
	add b                                            ; $61d1: $80
	ccf                                              ; $61d2: $3f
	nop                                              ; $61d3: $00
	inc b                                            ; $61d4: $04
	inc bc                                           ; $61d5: $03
	ld d, l                                          ; $61d6: $55
	ld [bc], a                                       ; $61d7: $02
	cp e                                             ; $61d8: $bb
	inc b                                            ; $61d9: $04
	ld [hl], a                                       ; $61da: $77
	ld [$10ef], sp                                   ; $61db: $08 $ef $10
	rst SubAFromDE                                          ; $61de: $df
	jr nz, jr_029_6180                               ; $61df: $20 $9f

	ld h, c                                          ; $61e1: $61
	ccf                                              ; $61e2: $3f
	pop bc                                           ; $61e3: $c1
	ccf                                              ; $61e4: $3f
	pop bc                                           ; $61e5: $c1
	ret z                                            ; $61e6: $c8

	ld [hl], e                                       ; $61e7: $73
	adc l                                            ; $61e8: $8d
	di                                               ; $61e9: $f3
	sub d                                            ; $61ea: $92
	rst SubAFromBC                                          ; $61eb: $e7

jr_029_61ec:
	adc l                                            ; $61ec: $8d
	rst FarCall                                          ; $61ed: $f7
	adc d                                            ; $61ee: $8a
	rst $38                                          ; $61ef: $ff
	inc b                                            ; $61f0: $04
	sub h                                            ; $61f1: $94
	cp $0a                                           ; $61f2: $fe $0a
	cp $14                                           ; $61f4: $fe $14
	db $fc                                           ; $61f6: $fc
	add b                                            ; $61f7: $80
	add a                                            ; $61f8: $87
	ld bc, $818e                                     ; $61f9: $01 $8e $81
	adc [hl]                                         ; $61fc: $8e
	ld [hl], l                                       ; $61fd: $75
	adc h                                            ; $61fe: $8c
	sbc l                                            ; $61ff: $9d
	inc bc                                           ; $6200: $03
	inc a                                            ; $6201: $3c
	ld [hl], l                                       ; $6202: $75
	adc h                                            ; $6203: $8c
	inc bc                                           ; $6204: $03
	ld c, [hl]                                       ; $6205: $4e
	inc bc                                           ; $6206: $03
	cp $03                                           ; $6207: $fe $03
	cp $03                                           ; $6209: $fe $03
	cp $03                                           ; $620b: $fe $03
	cp $03                                           ; $620d: $fe $03
	cp $1f                                           ; $620f: $fe $1f
	cp $56                                           ; $6211: $fe $56
	and h                                            ; $6213: $a4
	ld [hl], d                                       ; $6214: $72
	and b                                            ; $6215: $a0
	sbc [hl]                                         ; $6216: $9e
	db $fc                                           ; $6217: $fc
	halt                                             ; $6218: $76
	cp d                                             ; $6219: $ba
	ld e, l                                          ; $621a: $5d
	ld e, $6e                                        ; $621b: $1e $6e
	cp d                                             ; $621d: $ba
	ld a, a                                          ; $621e: $7f
	ld [$c37d], a                                    ; $621f: $ea $7d $c3
	ld l, a                                          ; $6222: $6f
	ld [$7e99], a                                    ; $6223: $ea $99 $7e
	add e                                            ; $6226: $83
	ccf                                              ; $6227: $3f
	inc bc                                           ; $6228: $03
	ld b, $07                                        ; $6229: $06 $07
	cp $7d                                           ; $622b: $fe $7d
	ld [$ea73], sp                                   ; $622d: $08 $73 $ea
	ld a, l                                          ; $6230: $7d
	ld [hl+], a                                      ; $6231: $22
	sbc l                                            ; $6232: $9d
	ld d, b                                          ; $6233: $50
	ld hl, sp+$7b                                    ; $6234: $f8 $7b
	db $fc                                           ; $6236: $fc
	ld a, h                                          ; $6237: $7c
	db $fc                                           ; $6238: $fc
	sbc [hl]                                         ; $6239: $9e
	ld de, $7a7a                                     ; $623a: $11 $7a $7a
	ld a, [hl]                                       ; $623d: $7e
	halt                                             ; $623e: $76
	sbc [hl]                                         ; $623f: $9e
	add e                                            ; $6240: $83
	ld [hl], h                                       ; $6241: $74
	ld e, h                                          ; $6242: $5c
	ld h, l                                          ; $6243: $65
	adc h                                            ; $6244: $8c
	ld [hl], l                                       ; $6245: $75
	adc d                                            ; $6246: $8a
	inc bc                                           ; $6247: $03
	ld a, [hl]                                       ; $6248: $7e
	dec hl                                           ; $6249: $2b
	cp $97                                           ; $624a: $fe $97
	pop af                                           ; $624c: $f1
	nop                                              ; $624d: $00
	ldh [$0e], a                                     ; $624e: $e0 $0e
	ret nz                                           ; $6250: $c0

	ld de, $17c0                                     ; $6251: $11 $c0 $17
	ld h, a                                          ; $6254: $67
	ldh a, [$97]                                     ; $6255: $f0 $97
	db $ec                                           ; $6257: $ec
	nop                                              ; $6258: $00
	ld b, b                                          ; $6259: $40
	adc e                                            ; $625a: $8b
	ld bc, $206a                                     ; $625b: $01 $6a $20
	ld c, h                                          ; $625e: $4c
	ld h, a                                          ; $625f: $67
	ldh a, [$97]                                     ; $6260: $f0 $97
	rst SubAFromBC                                          ; $6262: $e7
	nop                                              ; $6263: $00
	ld bc, $095a                                     ; $6264: $01 $5a $09
	ld d, d                                          ; $6267: $52
	nop                                              ; $6268: $00
	ld h, d                                          ; $6269: $62
	ld h, a                                          ; $626a: $67
	ldh a, [$97]                                     ; $626b: $f0 $97
	cp l                                             ; $626d: $bd
	nop                                              ; $626e: $00
	jr jr_029_6292                                   ; $626f: $18 $21

	jr @+$27                                         ; $6271: $18 $25

	inc e                                            ; $6273: $1c
	and c                                            ; $6274: $a1
	ld h, a                                          ; $6275: $67
	ldh a, [$97]                                     ; $6276: $f0 $97
	sbc h                                            ; $6278: $9c
	nop                                              ; $6279: $00
	nop                                              ; $627a: $00
	ld l, e                                          ; $627b: $6b
	ld hl, $004a                                     ; $627c: $21 $4a $00
	adc h                                            ; $627f: $8c
	ld c, a                                          ; $6280: $4f
	ret nc                                           ; $6281: $d0

	sbc [hl]                                         ; $6282: $9e
	ld bc, $d063                                     ; $6283: $01 $63 $d0
	sbc e                                            ; $6286: $9b
	ld l, h                                          ; $6287: $6c
	nop                                              ; $6288: $00
	jr nz, jr_029_62d6                               ; $6289: $20 $4b

	ld a, e                                          ; $628b: $7b
	xor $9e                                          ; $628c: $ee $9e
	ld [de], a                                       ; $628e: $12
	ld h, a                                          ; $628f: $67
	ldh a, [$9b]                                     ; $6290: $f0 $9b

jr_029_6292:
	db $db                                           ; $6292: $db
	nop                                              ; $6293: $00
	ld bc, $7b4a                                     ; $6294: $01 $4a $7b
	cp $9e                                           ; $6297: $fe $9e
	ld d, d                                          ; $6299: $52
	ld h, a                                          ; $629a: $67
	ldh a, [$97]                                     ; $629b: $f0 $97
	sub a                                            ; $629d: $97
	nop                                              ; $629e: $00
	add b                                            ; $629f: $80
	ld [de], a                                       ; $62a0: $12
	nop                                              ; $62a1: $00
	ld d, b                                          ; $62a2: $50
	nop                                              ; $62a3: $00
	ld d, l                                          ; $62a4: $55

jr_029_62a5:
	ld h, a                                          ; $62a5: $67
	ldh a, [$97]                                     ; $62a6: $f0 $97
	ld e, $40                                        ; $62a8: $1e $40
	ld c, $50                                        ; $62aa: $0e $50
	inc c                                            ; $62ac: $0c
	ld d, c                                          ; $62ad: $51
	inc c                                            ; $62ae: $0c
	ld d, c                                          ; $62af: $51
	ld h, a                                          ; $62b0: $67
	ldh a, [$9d]                                     ; $62b1: $f0 $9d
	ld e, l                                          ; $62b3: $5d
	nop                                              ; $62b4: $00
	ld [hl], a                                       ; $62b5: $77
	ldh a, [c]                                       ; $62b6: $f2
	ld e, a                                          ; $62b7: $5f
	ldh a, [$98]                                     ; $62b8: $f0 $98
	db $e3                                           ; $62ba: $e3

jr_029_62bb:
	nop                                              ; $62bb: $00
	ldh [$0d], a                                     ; $62bc: $e0 $0d
	db $e4                                           ; $62be: $e4
	add hl, bc                                       ; $62bf: $09
	ldh [$62], a                                     ; $62c0: $e0 $62
	ret z                                            ; $62c2: $c8

	sbc b                                            ; $62c3: $98
	ld h, [hl]                                       ; $62c4: $66
	nop                                              ; $62c5: $00
	nop                                              ; $62c6: $00
	ld e, d                                          ; $62c7: $5a
	ld [$0056], sp                                   ; $62c8: $08 $56 $00
	ld h, e                                          ; $62cb: $63
	or b                                             ; $62cc: $b0
	sub l                                            ; $62cd: $95
	ret nc                                           ; $62ce: $d0

	ld bc, $9b40                                     ; $62cf: $01 $40 $9b
	ld c, c                                          ; $62d2: $49
	sub d                                            ; $62d3: $92
	add hl, bc                                       ; $62d4: $09
	ld [de], a                                       ; $62d5: $12

jr_029_62d6:
	ldh a, [rIF]                                     ; $62d6: $f0 $0f
	ld l, l                                          ; $62d8: $6d
	ld e, $87                                        ; $62d9: $1e $87
	sbc [hl]                                         ; $62db: $9e
	nop                                              ; $62dc: $00
	inc b                                            ; $62dd: $04

jr_029_62de:
	ld l, c                                          ; $62de: $69
	inc h                                            ; $62df: $24
	ld e, c                                          ; $62e0: $59
	inc e                                            ; $62e1: $1c
	add b                                            ; $62e2: $80
	nop                                              ; $62e3: $00
	rst FarCall                                          ; $62e4: $f7
	nop                                              ; $62e5: $00
	rst $38                                          ; $62e6: $ff
	add b                                            ; $62e7: $80
	ld a, a                                          ; $62e8: $7f
	pop af                                           ; $62e9: $f1
	ld c, $63                                        ; $62ea: $0e $63
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	xor [hl]                                         ; $62ee: $ae
	add [hl]                                         ; $62ef: $86
	jr z, jr_029_62f2                                ; $62f0: $28 $00

jr_029_62f2:
	ld h, e                                          ; $62f2: $63
	ld h, [hl]                                       ; $62f3: $66
	adc $97                                          ; $62f4: $ce $97
	ld sp, $0000                                     ; $62f6: $31 $00 $00
	rst SubAFromHL                                          ; $62f9: $d7
	ld b, e                                          ; $62fa: $43
	or h                                             ; $62fb: $b4
	db $10                                           ; $62fc: $10
	ld hl, $c067                                     ; $62fd: $21 $67 $c0
	ld a, a                                          ; $6300: $7f
	add $7f                                          ; $6301: $c6 $7f
	ld [bc], a                                       ; $6303: $02
	ld a, e                                          ; $6304: $7b
	jr nc, jr_029_62a5                               ; $6305: $30 $9e

	ld a, [de]                                       ; $6307: $1a
	ld h, d                                          ; $6308: $62
	ld l, b                                          ; $6309: $68
	sbc b                                            ; $630a: $98
	ld b, h                                          ; $630b: $44
	nop                                              ; $630c: $00
	ld e, l                                          ; $630d: $5d
	inc c                                            ; $630e: $0c
	ld d, c                                          ; $630f: $51
	nop                                              ; $6310: $00
	ld b, l                                          ; $6311: $45
	ld h, a                                          ; $6312: $67
	ldh a, [hDisp1_LCDC]                                     ; $6313: $f0 $8f
	ld a, a                                          ; $6315: $7f
	nop                                              ; $6316: $00
	ccf                                              ; $6317: $3f
	add b                                            ; $6318: $80
	sbc a                                            ; $6319: $9f
	jr nz, jr_029_62bb                               ; $631a: $20 $9f

	jr nz, jr_029_62de                               ; $631c: $20 $c0

	ld de, $0ee0                                     ; $631e: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $6321: $e0 $11
	ldh a, [rIF]                                     ; $6323: $f0 $0f
	ld h, a                                          ; $6325: $67
	add sp, -$69                                     ; $6326: $e8 $97
	inc h                                            ; $6328: $24
	ld c, e                                          ; $6329: $4b
	ld hl, $60ca                                     ; $632a: $21 $ca $60
	adc h                                            ; $632d: $8c
	db $e4                                           ; $632e: $e4
	dec de                                           ; $632f: $1b
	ld h, a                                          ; $6330: $67
	ldh a, [$97]                                     ; $6331: $f0 $97
	jr nz, @+$5c                                     ; $6333: $20 $5a

	ld [$0052], sp                                   ; $6335: $08 $52 $00
	rst SubAFromBC                                          ; $6338: $e7
	ld h, e                                          ; $6339: $63
	sbc h                                            ; $633a: $9c
	ld h, a                                          ; $633b: $67
	ldh a, [$7e]                                     ; $633c: $f0 $7e
	adc $97                                          ; $633e: $ce $97
	inc c                                            ; $6340: $0c
	ld de, $b500                                     ; $6341: $11 $00 $b5
	sub b                                            ; $6344: $90
	ld h, a                                          ; $6345: $67
	di                                               ; $6346: $f3
	inc c                                            ; $6347: $0c
	ld l, a                                          ; $6348: $6f
	ldh a, [$9e]                                     ; $6349: $f0 $9e
	add h                                            ; $634b: $84
	halt                                             ; $634c: $76
	jp z, $9c9c                                      ; $634d: $ca $9c $9c

	adc h                                            ; $6350: $8c
	ld [hl], e                                       ; $6351: $73
	ld h, a                                          ; $6352: $67
	ldh [$9e], a                                     ; $6353: $e0 $9e
	ld hl, $ca76                                     ; $6355: $21 $76 $ca
	sbc [hl]                                         ; $6358: $9e
	and $5f                                          ; $6359: $e6 $5f
	ret nc                                           ; $635b: $d0

	ld [hl], a                                       ; $635c: $77
	ld a, d                                          ; $635d: $7a
	ld a, [hl]                                       ; $635e: $7e
	ld a, d                                          ; $635f: $7a
	sbc l                                            ; $6360: $9d
	inc h                                            ; $6361: $24
	db $db                                           ; $6362: $db
	ld h, e                                          ; $6363: $63
	ld a, b                                          ; $6364: $78
	ld a, a                                          ; $6365: $7f
	or d                                             ; $6366: $b2
	ld a, a                                          ; $6367: $7f
	xor [hl]                                         ; $6368: $ae
	sbc h                                            ; $6369: $9c
	jp nc, $b748                                     ; $636a: $d2 $48 $b7

	ld h, e                                          ; $636d: $63
	ldh [$98], a                                     ; $636e: $e0 $98
	ld d, $03                                        ; $6370: $16 $03
	call nc, $9443                                   ; $6372: $d4 $43 $94
	ld b, e                                          ; $6375: $43
	cp h                                             ; $6376: $bc
	ld h, a                                          ; $6377: $67
	ldh a, [$97]                                     ; $6378: $f0 $97
	inc c                                            ; $637a: $0c
	ld d, b                                          ; $637b: $50
	ld [$0953], sp                                   ; $637c: $08 $53 $09
	ld d, d                                          ; $637f: $52
	add hl, bc                                       ; $6380: $09
	or $63                                           ; $6381: $f6 $63
	ldh a, [$7a]                                     ; $6383: $f0 $7a
	call z, $447b                                    ; $6385: $cc $7b $44
	rst SubAFromDE                                          ; $6388: $df
	rst $38                                          ; $6389: $ff
	ld l, e                                          ; $638a: $6b
	ldh a, [rPCM12]                                  ; $638b: $f0 $76
	jp z, $249d                                      ; $638d: $ca $9d $24

	ld c, c                                          ; $6390: $49
	ld e, e                                          ; $6391: $5b
	or b                                             ; $6392: $b0
	ld [hl], a                                       ; $6393: $77
	ld h, b                                          ; $6394: $60
	sbc h                                            ; $6395: $9c
	ld h, [hl]                                       ; $6396: $66
	ld [hl+], a                                      ; $6397: $22
	db $dd                                           ; $6398: $dd
	ld h, e                                          ; $6399: $63
	ld [$d29c], sp                                   ; $639a: $08 $9c $d2
	ld c, c                                          ; $639d: $49
	sub d                                            ; $639e: $92
	ld a, e                                          ; $639f: $7b
	cp $9e                                           ; $63a0: $fe $9e
	or [hl]                                          ; $63a2: $b6
	ld h, a                                          ; $63a3: $67
	ldh a, [$99]                                     ; $63a4: $f0 $99
	add h                                            ; $63a6: $84
	ld l, c                                          ; $63a7: $69
	inc h                                            ; $63a8: $24
	ld c, c                                          ; $63a9: $49
	inc b                                            ; $63aa: $04
	sbc c                                            ; $63ab: $99
	ld e, a                                          ; $63ac: $5f
	ld h, b                                          ; $63ad: $60
	sbc [hl]                                         ; $63ae: $9e
	ld bc, $ca7a                                     ; $63af: $01 $7a $ca
	sbc e                                            ; $63b2: $9b
	add b                                            ; $63b3: $80
	inc hl                                           ; $63b4: $23
	add c                                            ; $63b5: $81
	ld a, [hl]                                       ; $63b6: $7e
	ld h, e                                          ; $63b7: $63
	ret nz                                           ; $63b8: $c0

	ld a, [hl]                                       ; $63b9: $7e
	jp z, $949a                                      ; $63ba: $ca $9a $94

	nop                                              ; $63bd: $00
	ld sp, $ef10                                     ; $63be: $31 $10 $ef
	ld h, e                                          ; $63c1: $63
	ldh a, [$79]                                     ; $63c2: $f0 $79
	call z, $249d                                    ; $63c4: $cc $9d $24
	ld c, b                                          ; $63c7: $48
	ld e, e                                          ; $63c8: $5b
	and b                                            ; $63c9: $a0
	ld a, [hl]                                       ; $63ca: $7e
	jp z, $d19a                                      ; $63cb: $ca $9a $d1

	ld b, b                                          ; $63ce: $40
	add h                                            ; $63cf: $84
	ld b, b                                          ; $63d0: $40
	cp a                                             ; $63d1: $bf
	ld h, a                                          ; $63d2: $67
	ldh a, [rPCM12]                                  ; $63d3: $f0 $76
	call z, $079b                                    ; $63d5: $cc $9b $07
	ld l, b                                          ; $63d8: $68
	daa                                              ; $63d9: $27
	ret c                                            ; $63da: $d8

	ld h, a                                          ; $63db: $67
	ldh a, [$3c]                                     ; $63dc: $f0 $3c
	nop                                              ; $63de: $00
	sub c                                            ; $63df: $91
	jr nc, jr_029_63e2                               ; $63e0: $30 $00

jr_029_63e2:
	nop                                              ; $63e2: $00
	rlca                                             ; $63e3: $07
	ld d, l                                          ; $63e4: $55
	ld d, [hl]                                       ; $63e5: $56
	ld b, h                                          ; $63e6: $44
	ld b, b                                          ; $63e7: $40
	nop                                              ; $63e8: $00
	inc bc                                           ; $63e9: $03
	jr nc, jr_029_63f3                               ; $63ea: $30 $07

	ld [hl], c                                       ; $63ec: $71
	rla                                              ; $63ed: $17
	ld a, e                                          ; $63ee: $7b
	or $ff                                           ; $63ef: $f6 $ff
	rst SubAFromDE                                          ; $63f1: $df
	inc sp                                           ; $63f2: $33

jr_029_63f3:
	ld a, a                                          ; $63f3: $7f
	or $9b                                           ; $63f4: $f6 $9b
	dec d                                            ; $63f6: $15
	ld d, l                                          ; $63f7: $55
	ld h, h                                          ; $63f8: $64
	ld [hl], b                                       ; $63f9: $70
	ld [hl], a                                       ; $63fa: $77
	or $97                                           ; $63fb: $f6 $97
	inc sp                                           ; $63fd: $33
	ld [hl], l                                       ; $63fe: $75
	ld d, l                                          ; $63ff: $55
	ld d, l                                          ; $6400: $55
	ld h, [hl]                                       ; $6401: $66
	ld de, $0300                                     ; $6402: $11 $00 $03
	db $dd                                           ; $6405: $dd
	inc sp                                           ; $6406: $33
	sbc d                                            ; $6407: $9a
	ld d, l                                          ; $6408: $55
	ld [hl], $61                                     ; $6409: $36 $61
	ld de, $7310                                     ; $640b: $11 $10 $73
	or $df                                           ; $640e: $f6 $df
	inc sp                                           ; $6410: $33
	sbc $11                                          ; $6411: $de $11
	reti                                             ; $6413: $d9


	inc sp                                           ; $6414: $33
	ld e, a                                          ; $6415: $5f
	or $c9                                           ; $6416: $f6 $c9
	inc sp                                           ; $6418: $33
	ld b, [hl]                                       ; $6419: $46
	add l                                            ; $641a: $85
	reti                                             ; $641b: $d9


	rst $38                                          ; $641c: $ff
	ld sp, hl                                        ; $641d: $f9
	inc bc                                           ; $641e: $03
	ldh a, [$db]                                     ; $641f: $f0 $db
	rst $38                                          ; $6421: $ff
	sbc [hl]                                         ; $6422: $9e
	cp $f9                                           ; $6423: $fe $f9
	sbc l                                            ; $6425: $9d
	pop bc                                           ; $6426: $c1
	ret nz                                           ; $6427: $c0

	sbc $80                                          ; $6428: $de $80
	or $9b                                           ; $642a: $f6 $9b
	rst $38                                          ; $642c: $ff
	ccf                                              ; $642d: $3f
	rlca                                             ; $642e: $07
	ld bc, $ddf5                                     ; $642f: $01 $f5 $dd
	rst $38                                          ; $6432: $ff
	sbc l                                            ; $6433: $9d
	ccf                                              ; $6434: $3f
	rrca                                             ; $6435: $0f
	ld e, a                                          ; $6436: $5f
	db $ed                                           ; $6437: $ed
	jp c, $9eff                                      ; $6438: $da $ff $9e

	ccf                                              ; $643b: $3f
	inc bc                                           ; $643c: $03
	sub b                                            ; $643d: $90
	inc bc                                           ; $643e: $03
	ldh a, [$03]                                     ; $643f: $f0 $03
	ldh a, [$03]                                     ; $6441: $f0 $03
	ldh a, [$03]                                     ; $6443: $f0 $03
	ldh a, [$03]                                     ; $6445: $f0 $03
	ldh a, [$03]                                     ; $6447: $f0 $03
	ldh a, [rSCX]                                    ; $6449: $f0 $43
	ldh a, [$df]                                     ; $644b: $f0 $df
	cp $df                                           ; $644d: $fe $df
	db $fc                                           ; $644f: $fc
	rst SubAFromDE                                          ; $6450: $df
	ld hl, sp-$63                                    ; $6451: $f8 $9d
	ldh a, [$f1]                                     ; $6453: $f0 $f1
	ld sp, hl                                        ; $6455: $f9
	sbc b                                            ; $6456: $98
	db $10                                           ; $6457: $10
	ld [bc], a                                       ; $6458: $02
	ld d, l                                          ; $6459: $55
	ld a, [hl+]                                      ; $645a: $2a
	push de                                          ; $645b: $d5
	ld a, [$63f7]                                    ; $645c: $fa $f7 $63
	ldh [rIE], a                                     ; $645f: $e0 $ff
	sbc c                                            ; $6461: $99
	ld b, b                                          ; $6462: $40
	and d                                            ; $6463: $a2
	ld d, l                                          ; $6464: $55
	xor d                                            ; $6465: $aa
	ld [hl], l                                       ; $6466: $75
	rst AddAOntoHL                                          ; $6467: $ef
	ld sp, hl                                        ; $6468: $f9
	sbc b                                            ; $6469: $98
	ld d, b                                          ; $646a: $50
	nop                                              ; $646b: $00
	ld d, l                                          ; $646c: $55
	xor b                                            ; $646d: $a8

Jump_029_646e:
	ld d, l                                          ; $646e: $55
	xor d                                            ; $646f: $aa
	ld d, l                                          ; $6470: $55
	ld l, d                                          ; $6471: $6a
	sub b                                            ; $6472: $90
	sub [hl]                                         ; $6473: $96
	ld bc, $0f07                                     ; $6474: $01 $07 $0f
	ld bc, $0040                                     ; $6477: $01 $40 $00
	ld d, b                                          ; $647a: $50
	cp a                                             ; $647b: $bf
	ret nz                                           ; $647c: $c0

	ei                                               ; $647d: $fb
	sbc [hl]                                         ; $647e: $9e
	ccf                                              ; $647f: $3f
	db $dd                                           ; $6480: $dd
	rst $38                                          ; $6481: $ff
	sbc [hl]                                         ; $6482: $9e
	ld a, a                                          ; $6483: $7f
	ld a, d                                          ; $6484: $7a
	and d                                            ; $6485: $a2
	sbc l                                            ; $6486: $9d
	ret nz                                           ; $6487: $c0

	ld l, h                                          ; $6488: $6c
	db $fc                                           ; $6489: $fc
	sbc l                                            ; $648a: $9d
	ldh [$f8], a                                     ; $648b: $e0 $f8
	db $db                                           ; $648d: $db
	rst $38                                          ; $648e: $ff
	ld [hl], a                                       ; $648f: $77
	db $ed                                           ; $6490: $ed
	inc bc                                           ; $6491: $03
	ld [hl], b                                       ; $6492: $70
	inc bc                                           ; $6493: $03
	ldh a, [$03]                                     ; $6494: $f0 $03
	ldh a, [$03]                                     ; $6496: $f0 $03
	ldh a, [$03]                                     ; $6498: $f0 $03
	ldh a, [$03]                                     ; $649a: $f0 $03
	ldh a, [rSCX]                                    ; $649c: $f0 $43
	ldh a, [$99]                                     ; $649e: $f0 $99
	ldh [$e1], a                                     ; $64a0: $e0 $e1
	ldh [$c0], a                                     ; $64a2: $e0 $c0
	ret nz                                           ; $64a4: $c0

	add c                                            ; $64a5: $81
	ld e, l                                          ; $64a6: $5d
	adc [hl]                                         ; $64a7: $8e
	ld a, a                                          ; $64a8: $7f
	inc d                                            ; $64a9: $14
	sbc c                                            ; $64aa: $99
	cp a                                             ; $64ab: $bf
	ld a, a                                          ; $64ac: $7f
	cp a                                             ; $64ad: $bf
	ld e, a                                          ; $64ae: $5f
	xor a                                            ; $64af: $af
	rla                                              ; $64b0: $17
	ld c, a                                          ; $64b1: $4f
	ret nc                                           ; $64b2: $d0

	rst SubAFromDE                                          ; $64b3: $df
	cp $6e                                           ; $64b4: $fe $6e
	pop de                                           ; $64b6: $d1
	rst SubAFromDE                                          ; $64b7: $df
	inc bc                                           ; $64b8: $03
	ld a, [hl]                                       ; $64b9: $7e
	sub l                                            ; $64ba: $95
	sub l                                            ; $64bb: $95
	ldh [$c3], a                                     ; $64bc: $e0 $c3
	add h                                            ; $64be: $84
	ld [$2310], sp                                   ; $64bf: $08 $10 $23
	rrca                                             ; $64c2: $0f
	rra                                              ; $64c3: $1f
	ccf                                              ; $64c4: $3f
	ld a, a                                          ; $64c5: $7f
	db $dd                                           ; $64c6: $dd
	rst $38                                          ; $64c7: $ff
	sub a                                            ; $64c8: $97
	rrca                                             ; $64c9: $0f
	jr nc, @-$3e                                     ; $64ca: $30 $c0

	rrca                                             ; $64cc: $0f

jr_029_64cd:
	ld a, a                                          ; $64cd: $7f
	ld hl, sp-$32                                    ; $64ce: $f8 $ce
	dec sp                                           ; $64d0: $3b
	sbc $ff                                          ; $64d1: $de $ff
	add b                                            ; $64d3: $80
	ldh a, [hDisp0_OBP1]                                     ; $64d4: $f0 $87
	ccf                                              ; $64d6: $3f
	pop af                                           ; $64d7: $f1
	rst JumpTable                                          ; $64d8: $c7
	cp d                                             ; $64d9: $ba
	ld [hl], h                                       ; $64da: $74
	dec sp                                           ; $64db: $3b
	rst SubAFromHL                                          ; $64dc: $d7
	ld [hl], a                                       ; $64dd: $77
	jr jr_029_64cd                                   ; $64de: $18 $ed

	rst $38                                          ; $64e0: $ff
	db $fd                                           ; $64e1: $fd
	ei                                               ; $64e2: $fb
	rst FarCall                                          ; $64e3: $f7
	ld a, $fc                                        ; $64e4: $3e $fc
	rst $38                                          ; $64e6: $ff
	rst $38                                          ; $64e7: $ff
	rra                                              ; $64e8: $1f
	jr nz, jr_029_655b                               ; $64e9: $20 $70

	ret nz                                           ; $64eb: $c0

	sbc [hl]                                         ; $64ec: $9e
	ld [hl], c                                       ; $64ed: $71
	adc $bf                                          ; $64ee: $ce $bf
	ld e, a                                          ; $64f0: $5f
	ret nz                                           ; $64f1: $c0

	adc b                                            ; $64f2: $88
	sbc c                                            ; $64f3: $99
	ccf                                              ; $64f4: $3f
	ld h, c                                          ; $64f5: $61
	adc [hl]                                         ; $64f6: $8e
	ccf                                              ; $64f7: $3f
	ld [hl], c                                       ; $64f8: $71
	ldh [$6e], a                                     ; $64f9: $e0 $6e
	or l                                             ; $64fb: $b5
	sbc l                                            ; $64fc: $9d
	add b                                            ; $64fd: $80
	ld b, b                                          ; $64fe: $40
	cp $9e                                           ; $64ff: $fe $9e
	ret nz                                           ; $6501: $c0

	ld e, [hl]                                       ; $6502: $5e
	and d                                            ; $6503: $a2
	ld [hl], e                                       ; $6504: $73
	ldh a, [rHDMA3]                                  ; $6505: $f0 $53
	db $ed                                           ; $6507: $ed
	inc bc                                           ; $6508: $03
	ld b, b                                          ; $6509: $40
	inc bc                                           ; $650a: $03
	ldh a, [$03]                                     ; $650b: $f0 $03
	ldh a, [$03]                                     ; $650d: $f0 $03
	ldh a, [$33]                                     ; $650f: $f0 $33
	ldh a, [$de]                                     ; $6511: $f0 $de
	cp $de                                           ; $6513: $fe $de
	db $fc                                           ; $6515: $fc
	sbc [hl]                                         ; $6516: $9e
	ld hl, sp-$07                                    ; $6517: $f8 $f9
	sub a                                            ; $6519: $97
	ld a, [bc]                                       ; $651a: $0a
	dec d                                            ; $651b: $15
	ld a, [hl+]                                      ; $651c: $2a
	rra                                              ; $651d: $1f
	dec hl                                           ; $651e: $2b
	ld e, a                                          ; $651f: $5f
	ld a, [hl+]                                      ; $6520: $2a
	ld d, l                                          ; $6521: $55
	ld h, e                                          ; $6522: $63
	ldh a, [$9d]                                     ; $6523: $f0 $9d
	ld b, c                                          ; $6525: $41
	xor d                                            ; $6526: $aa
	sbc $ff                                          ; $6527: $de $ff
	sbc [hl]                                         ; $6529: $9e
	ld hl, sp+$6d                                    ; $652a: $f8 $6d
	xor a                                            ; $652c: $af
	add b                                            ; $652d: $80
	rlca                                             ; $652e: $07
	ccf                                              ; $652f: $3f
	rst $38                                          ; $6530: $ff
	db $fc                                           ; $6531: $fc
	db $fc                                           ; $6532: $fc
	ld sp, hl                                        ; $6533: $f9
	ld sp, hl                                        ; $6534: $f9
	ldh a, [c]                                       ; $6535: $f2
	ldh a, [c]                                       ; $6536: $f2
	ld [hl], h                                       ; $6537: $74
	dec d                                            ; $6538: $15
	rlca                                             ; $6539: $07
	rlca                                             ; $653a: $07

jr_029_653b:
	rrca                                             ; $653b: $0f
	rrca                                             ; $653c: $0f
	rra                                              ; $653d: $1f
	sbc a                                            ; $653e: $9f
	rst $38                                          ; $653f: $ff
	rst $38                                          ; $6540: $ff
	ld b, h                                          ; $6541: $44
	add d                                            ; $6542: $82
	inc b                                            ; $6543: $04
	add hl, hl                                       ; $6544: $29
	ld d, d                                          ; $6545: $52
	and l                                            ; $6546: $a5
	xor c                                            ; $6547: $a9
	ld [hl], c                                       ; $6548: $71

Jump_029_6549:
	rst $38                                          ; $6549: $ff
	db $fc                                           ; $654a: $fc
	ld hl, sp-$10                                    ; $654b: $f8 $f0
	add b                                            ; $654d: $80
	pop hl                                           ; $654e: $e1
	jp $8cc6                                         ; $654f: $c3 $c6 $8c


	or [hl]                                          ; $6552: $b6
	ld l, h                                          ; $6553: $6c
	cp b                                             ; $6554: $b8
	ld e, c                                          ; $6555: $59
	sub e                                            ; $6556: $93
	or d                                             ; $6557: $b2
	or [hl]                                          ; $6558: $b6
	inc [hl]                                         ; $6559: $34
	inc c                                            ; $655a: $0c

jr_029_655b:
	jr jr_029_65cd                                   ; $655b: $18 $70

	ldh a, [$f0]                                     ; $655d: $f0 $f0
	ld h, c                                          ; $655f: $61
	ld h, c                                          ; $6560: $61
	db $e3                                           ; $6561: $e3
	halt                                             ; $6562: $76
	ld a, $c7                                        ; $6563: $3e $c7
	cp a                                             ; $6565: $bf
	ld e, a                                          ; $6566: $5f
	sbc c                                            ; $6567: $99
	or e                                             ; $6568: $b3
	ld h, $0f                                        ; $6569: $26 $0f
	inc bc                                           ; $656b: $03
	ccf                                              ; $656c: $3f
	add b                                            ; $656d: $80
	ld b, e                                          ; $656e: $43
	add c                                            ; $656f: $81
	rlca                                             ; $6570: $07
	rrca                                             ; $6571: $0f
	add hl, de                                       ; $6572: $19
	and d                                            ; $6573: $a2
	sbc l                                            ; $6574: $9d
	ld a, $63                                        ; $6575: $3e $63
	pop af                                           ; $6577: $f1
	ld b, d                                          ; $6578: $42
	cp c                                             ; $6579: $b9
	db $fc                                           ; $657a: $fc
	call c, $e3fe                                    ; $657b: $dc $fe $e3
	pop bc                                           ; $657e: $c1
	add b                                            ; $657f: $80
	cp h                                             ; $6580: $bc
	cp $e7                                           ; $6581: $fe $e7
	pop hl                                           ; $6583: $e1
	ld sp, $4c98                                     ; $6584: $31 $98 $4c
	and h                                            ; $6587: $a4
	call nc, Call_029_6852                           ; $6588: $d4 $52 $68
	ld a, $1e                                        ; $658b: $3e $1e
	adc b                                            ; $658d: $88
	rrca                                             ; $658e: $0f
	add a                                            ; $658f: $87
	rst JumpTable                                          ; $6590: $c7
	ld h, e                                          ; $6591: $63
	ld h, e                                          ; $6592: $63
	ld sp, $a040                                     ; $6593: $31 $40 $a0
	and h                                            ; $6596: $a4
	sub $d6                                          ; $6597: $d6 $d6
	rst SubAFromBC                                          ; $6599: $e7
	ld h, a                                          ; $659a: $67
	ld d, [hl]                                       ; $659b: $56
	rst $38                                          ; $659c: $ff
	ld a, a                                          ; $659d: $7f
	ld a, e                                          ; $659e: $7b
	add hl, sp                                       ; $659f: $39
	add hl, sp                                       ; $65a0: $39
	jr jr_029_653b                                   ; $65a1: $18 $98

	adc b                                            ; $65a3: $88
	inc bc                                           ; $65a4: $03
	sbc $80                                          ; $65a5: $de $80
	sbc $40                                          ; $65a7: $de $40
	sbc [hl]                                         ; $65a9: $9e
	ld a, c                                          ; $65aa: $79
	ld e, d                                          ; $65ab: $5a
	or l                                             ; $65ac: $b5
	sbc d                                            ; $65ad: $9a
	inc bc                                           ; $65ae: $03
	nop                                              ; $65af: $00
	jr nz, jr_029_65d2                               ; $65b0: $20 $20

	jr c, jr_029_6622                                ; $65b2: $38 $6e

	and d                                            ; $65b4: $a2
	sbc [hl]                                         ; $65b5: $9e
	cp $67                                           ; $65b6: $fe $67
	db $ed                                           ; $65b8: $ed
	ld h, [hl]                                       ; $65b9: $66
	rrca                                             ; $65ba: $0f
	sbc [hl]                                         ; $65bb: $9e
	add b                                            ; $65bc: $80
	jp c, $9eff                                      ; $65bd: $da $ff $9e

	ld a, a                                          ; $65c0: $7f
	inc bc                                           ; $65c1: $03
	nop                                              ; $65c2: $00
	inc bc                                           ; $65c3: $03
	ldh a, [$03]                                     ; $65c4: $f0 $03
	ldh a, [$fc]                                     ; $65c6: $f0 $fc
	ld a, a                                          ; $65c8: $7f
	ld a, [bc]                                       ; $65c9: $0a
	ld a, l                                          ; $65ca: $7d
	cp a                                             ; $65cb: $bf
	ld a, c                                          ; $65cc: $79

jr_029_65cd:
	adc [hl]                                         ; $65cd: $8e
	ld h, c                                          ; $65ce: $61
	adc a                                            ; $65cf: $8f
	sbc h                                            ; $65d0: $9c
	xor e                                            ; $65d1: $ab

jr_029_65d2:
	ld b, a                                          ; $65d2: $47
	ld b, $71                                        ; $65d3: $06 $71
	and [hl]                                         ; $65d5: $a6

jr_029_65d6:
	ld a, l                                          ; $65d6: $7d
	and l                                            ; $65d7: $a5
	ld l, a                                          ; $65d8: $6f
	ld hl, sp-$78                                    ; $65d9: $f8 $88
	ccf                                              ; $65db: $3f
	pop bc                                           ; $65dc: $c1
	ld b, $0b                                        ; $65dd: $06 $0b
	inc [hl]                                         ; $65df: $34
	ld d, e                                          ; $65e0: $53
	rst SubAFromBC                                          ; $65e1: $e7
	sbc b                                            ; $65e2: $98
	rst $38                                          ; $65e3: $ff
	pop bc                                           ; $65e4: $c1
	rlca                                             ; $65e5: $07
	ld [$4f33], sp                                   ; $65e6: $08 $33 $4f
	sbc h                                            ; $65e9: $9c
	ld a, b                                          ; $65ea: $78
	add hl, hl                                       ; $65eb: $29
	ld [$3533], a                                    ; $65ec: $ea $33 $35
	db $f4                                           ; $65ef: $f4
	dec h                                            ; $65f0: $25
	xor c                                            ; $65f1: $a9
	ld a, d                                          ; $65f2: $7a
	xor e                                            ; $65f3: $ab
	rst SubAFromDE                                          ; $65f4: $df
	cp $7b                                           ; $65f5: $fe $7b
	ld e, c                                          ; $65f7: $59
	add b                                            ; $65f8: $80
	ld a, a                                          ; $65f9: $7f
	pop hl                                           ; $65fa: $e1
	jp Jump_029_6c86                                 ; $65fb: $c3 $86 $6c


	sbc l                                            ; $65fe: $9d
	ld a, e                                          ; $65ff: $7b
	di                                               ; $6600: $f3
	push hl                                          ; $6601: $e5
	jr @+$32                                         ; $6602: $18 $30

	ld h, c                                          ; $6604: $61
	jp $86c3                                         ; $6605: $c3 $c3 $86


	inc c                                            ; $6608: $0c
	jr jr_029_6638                                   ; $6609: $18 $2d

	dec l                                            ; $660b: $2d
	jr z, jr_029_65d6                                ; $660c: $28 $c8

	ld a, d                                          ; $660e: $7a
	ld e, d                                          ; $660f: $5a
	ld [hl], c                                       ; $6610: $71
	ld [hl], l                                       ; $6611: $75
	ldh [c], a                                       ; $6612: $e2
	ldh [c], a                                       ; $6613: $e2
	and $e6                                          ; $6614: $e6 $e6
	call nz, $dfc4                                   ; $6616: $c4 $c4 $df
	call z, $2d80                                    ; $6619: $cc $80 $2d
	ld l, e                                          ; $661c: $6b
	ld e, d                                          ; $661d: $5a
	sub $d5                                          ; $661e: $d6 $d5
	sub l                                            ; $6620: $95
	and l                                            ; $6621: $a5

jr_029_6622:
	xor [hl]                                         ; $6622: $ae
	db $10                                           ; $6623: $10
	db $10                                           ; $6624: $10
	ld hl, $2321                                     ; $6625: $21 $21 $23
	ld h, e                                          ; $6628: $63
	ld b, e                                          ; $6629: $43
	ld b, e                                          ; $662a: $43
	ld h, [hl]                                       ; $662b: $66
	di                                               ; $662c: $f3
	sbc c                                            ; $662d: $99
	push bc                                          ; $662e: $c5
	ld hl, $6852                                     ; $662f: $21 $52 $68
	reti                                             ; $6632: $d9


	jp $e181                                         ; $6633: $c3 $81 $e1


	ld sp, hl                                        ; $6636: $f9
	db $fc                                           ; $6637: $fc

jr_029_6638:
	cp h                                             ; $6638: $bc
	sbc [hl]                                         ; $6639: $9e
	add b                                            ; $663a: $80
	ld c, $a8                                        ; $663b: $0e $a8
	inc [hl]                                         ; $663d: $34
	inc b                                            ; $663e: $04
	ld b, d                                          ; $663f: $42
	sub d                                            ; $6640: $92
	or d                                             ; $6641: $b2
	sub c                                            ; $6642: $91
	ld e, c                                          ; $6643: $59
	ld sp, $9899                                     ; $6644: $31 $99 $98
	sbc h                                            ; $6647: $9c
	call z, $eecc                                    ; $6648: $cc $cc $ee
	ld h, [hl]                                       ; $664b: $66
	ld e, d                                          ; $664c: $5a
	ld a, [bc]                                       ; $664d: $0a
	ld a, [bc]                                       ; $664e: $0a
	inc c                                            ; $664f: $0c
	dec h                                            ; $6650: $25
	dec h                                            ; $6651: $25
	inc d                                            ; $6652: $14
	ld d, $84                                        ; $6653: $16 $84
	call nz, $c2c4                                   ; $6655: $c4 $c4 $c2
	jp nz, $9542                                     ; $6658: $c2 $42 $95

	ld h, e                                          ; $665b: $63
	ld h, c                                          ; $665c: $61
	xor c                                            ; $665d: $a9
	jr nz, jr_029_668f                               ; $665e: $20 $2f

	ld l, [hl]                                       ; $6660: $6e
	ld h, [hl]                                       ; $6661: $66
	inc d                                            ; $6662: $14
	sub b                                            ; $6663: $90
	sbc h                                            ; $6664: $9c
	sbc $70                                          ; $6665: $de $70
	sub c                                            ; $6667: $91
	ld sp, $3b39                                     ; $6668: $31 $39 $3b
	ccf                                              ; $666b: $3f
	ld a, $e4                                        ; $666c: $3e $e4
	and d                                            ; $666e: $a2
	ld de, $1810                                     ; $666f: $11 $10 $18
	ld d, $f3                                        ; $6672: $16 $f3
	pop de                                           ; $6674: $d1
	rst $38                                          ; $6675: $ff
	ld [hl], c                                       ; $6676: $71
	ld [de], a                                       ; $6677: $12
	adc e                                            ; $6678: $8b
	rst $38                                          ; $6679: $ff
	ccf                                              ; $667a: $3f
	ld h, b                                          ; $667b: $60
	dec [hl]                                         ; $667c: $35
	jp c, Jump_029_68fd                              ; $667d: $da $fd $68

	inc [hl]                                         ; $6680: $34
	sbc d                                            ; $6681: $9a
	call $e0c0                                       ; $6682: $cd $c0 $e0
	ldh a, [$b8]                                     ; $6685: $f0 $b8
	ret z                                            ; $6687: $c8

	ldh [$f0], a                                     ; $6688: $e0 $f0
	ld a, b                                          ; $668a: $78
	rra                                              ; $668b: $1f
	inc bc                                           ; $668c: $03
	ld [hl], d                                       ; $668d: $72
	cp c                                             ; $668e: $b9

jr_029_668f:
	sbc [hl]                                         ; $668f: $9e
	ld d, b                                          ; $6690: $50
	ld e, a                                          ; $6691: $5f
	db $10                                           ; $6692: $10
	sbc [hl]                                         ; $6693: $9e
	ld a, a                                          ; $6694: $7f
	ld l, a                                          ; $6695: $6f
	db $ed                                           ; $6696: $ed
	ld d, a                                          ; $6697: $57
	nop                                              ; $6698: $00
	ld e, e                                          ; $6699: $5b
	db $ed                                           ; $669a: $ed
	ld [bc], a                                       ; $669b: $02
	ret nc                                           ; $669c: $d0

	dec sp                                           ; $669d: $3b
	ldh a, [$75]                                     ; $669e: $f0 $75
	adc [hl]                                         ; $66a0: $8e
	ld sp, hl                                        ; $66a1: $f9
	rst SubAFromDE                                          ; $66a2: $df
	add b                                            ; $66a3: $80
	di                                               ; $66a4: $f3
	sub d                                            ; $66a5: $92
	inc bc                                           ; $66a6: $03
	inc b                                            ; $66a7: $04
	add hl, bc                                       ; $66a8: $09
	ld [de], a                                       ; $66a9: $12
	inc l                                            ; $66aa: $2c
	jr nc, @+$63                                     ; $66ab: $30 $61

	ld b, c                                          ; $66ad: $41
	ld [bc], a                                       ; $66ae: $02
	rlca                                             ; $66af: $07
	rrca                                             ; $66b0: $0f
	ld e, $3c                                        ; $66b1: $1e $3c
	ld a, e                                          ; $66b3: $7b
	ld hl, sp-$79                                    ; $66b4: $f8 $87
	ld [hl-], a                                      ; $66b6: $32
	db $e4                                           ; $66b7: $e4
	jr z, @+$53                                      ; $66b8: $28 $51

	db $e3                                           ; $66ba: $e3
	push bc                                          ; $66bb: $c5
	jp z, $f19a                                      ; $66bc: $ca $9a $f1

	db $e3                                           ; $66bf: $e3
	daa                                              ; $66c0: $27
	ld c, a                                          ; $66c1: $4f
	sbc [hl]                                         ; $66c2: $9e
	cp h                                             ; $66c3: $bc
	add hl, sp                                       ; $66c4: $39
	ld a, c                                          ; $66c5: $79
	dec [hl]                                         ; $66c6: $35
	inc [hl]                                         ; $66c7: $34
	ld sp, hl                                        ; $66c8: $f9
	ld a, [de]                                       ; $66c9: $1a
	sbc h                                            ; $66ca: $9c
	db $10                                           ; $66cb: $10

Call_029_66cc:
	inc sp                                           ; $66cc: $33
	ld e, a                                          ; $66cd: $5f
	halt                                             ; $66ce: $76
	ld b, $7b                                        ; $66cf: $06 $7b
	dec a                                            ; $66d1: $3d
	add b                                            ; $66d2: $80
	db $fc                                           ; $66d3: $fc
	add d                                            ; $66d4: $82
	ld l, h                                          ; $66d5: $6c
	pop af                                           ; $66d6: $f1
	rst JumpTable                                          ; $66d7: $c7
	ld a, [de]                                       ; $66d8: $1a
	ld a, l                                          ; $66d9: $7d
	pop af                                           ; $66da: $f1
	jp $c371                                         ; $66db: $c3 $71 $c3


	adc a                                            ; $66de: $8f
	ld a, $fd                                        ; $66df: $3e $fd
	db $e3                                           ; $66e1: $e3
	adc a                                            ; $66e2: $8f
	ld a, $75                                        ; $66e3: $3e $75
	ld h, a                                          ; $66e5: $67
	rst AddAOntoHL                                          ; $66e6: $ef
	xor $cc                                          ; $66e7: $ee $cc
	db $dd                                           ; $66e9: $dd
	sbc c                                            ; $66ea: $99
	dec sp                                           ; $66eb: $3b
	call z, $98dc                                    ; $66ec: $cc $dc $98
	sbc c                                            ; $66ef: $99
	cp e                                             ; $66f0: $bb
	inc sp                                           ; $66f1: $33
	add c                                            ; $66f2: $81
	ld [hl], a                                       ; $66f3: $77
	and $ee                                          ; $66f4: $e6 $ee
	ld c, d                                          ; $66f6: $4a

jr_029_66f7:
	sbc h                                            ; $66f7: $9c
	db $dd                                           ; $66f8: $dd
	cp c                                             ; $66f9: $b9
	ld l, e                                          ; $66fa: $6b
	or $d7                                           ; $66fb: $f6 $d7
	ld b, e                                          ; $66fd: $43
	rst JumpTable                                          ; $66fe: $c7
	rst JumpTable                                          ; $66ff: $c7
	add [hl]                                         ; $6700: $86
	adc [hl]                                         ; $6701: $8e
	sbc h                                            ; $6702: $9c
	jr jr_029_673e                                   ; $6703: $18 $39

	push de                                          ; $6705: $d5
	call z, $8582                                    ; $6706: $cc $82 $85
	ld [bc], a                                       ; $6709: $02
	ld bc, $d000                                     ; $670a: $01 $00 $d0
	ld c, $07                                        ; $670d: $0e $07
	rlca                                             ; $670f: $07
	inc bc                                           ; $6710: $03
	ld a, b                                          ; $6711: $78
	ld b, [hl]                                       ; $6712: $46
	add b                                            ; $6713: $80
	ldh [$4c], a                                     ; $6714: $e0 $4c
	db $ec                                           ; $6716: $ec
	or $7b                                           ; $6717: $f6 $7b
	cp l                                             ; $6719: $bd
	ld e, d                                          ; $671a: $5a
	xor l                                            ; $671b: $ad
	ld d, [hl]                                       ; $671c: $56
	ld [hl], a                                       ; $671d: $77
	inc sp                                           ; $671e: $33
	dec sp                                           ; $671f: $3b
	sbc l                                            ; $6720: $9d
	adc $ef                                          ; $6721: $ce $ef
	ld [hl], a                                       ; $6723: $77
	dec sp                                           ; $6724: $3b
	jp z, Jump_029_56cb                              ; $6725: $ca $cb $56

	scf                                              ; $6728: $37
	adc e                                            ; $6729: $8b
	call $d366                                       ; $672a: $cd $66 $d3
	ld sp, $b931                                     ; $672d: $31 $31 $b9
	ret c                                            ; $6730: $d8

	db $fc                                           ; $6731: $fc
	ld a, [hl]                                       ; $6732: $7e
	rst SubAFromDE                                          ; $6733: $df
	rst $38                                          ; $6734: $ff
	add b                                            ; $6735: $80
	ld sp, hl                                        ; $6736: $f9
	ld a, e                                          ; $6737: $7b
	rst AddAOntoHL                                          ; $6738: $ef
	cp h                                             ; $6739: $bc
	sbc b                                            ; $673a: $98
	ld e, c                                          ; $673b: $59
	ld e, [hl]                                       ; $673c: $5e
	dec l                                            ; $673d: $2d

jr_029_673e:
	db $10                                           ; $673e: $10
	sub b                                            ; $673f: $90
	sbc b                                            ; $6740: $98
	set 5, a                                         ; $6741: $cb $ef
	rst AddAOntoHL                                          ; $6743: $ef
	rst SubAFromBC                                          ; $6744: $e7
	or $11                                           ; $6745: $f6 $11
	jr @+$1e                                         ; $6747: $18 $1c

	ld a, $6f                                        ; $6749: $3e $6f
	xor a                                            ; $674b: $af
	daa                                              ; $674c: $27
	daa                                              ; $674d: $27
	rst $38                                          ; $674e: $ff
	rst $38                                          ; $674f: $ff
	rst FarCall                                          ; $6750: $f7
	di                                               ; $6751: $f3
	ld sp, hl                                        ; $6752: $f9
	ld sp, hl                                        ; $6753: $f9
	db $fc                                           ; $6754: $fc
	sbc l                                            ; $6755: $9d
	db $fc                                           ; $6756: $fc
	xor $76                                          ; $6757: $ee $76
	dec sp                                           ; $6759: $3b
	ld a, e                                          ; $675a: $7b
	ld [hl], a                                       ; $675b: $77
	sbc e                                            ; $675c: $9b
	jr c, jr_029_66f7                                ; $675d: $38 $98

	adc b                                            ; $675f: $88
	ret z                                            ; $6760: $c8

	db $dd                                           ; $6761: $dd
	ret nz                                           ; $6762: $c0

	sbc l                                            ; $6763: $9d
	ld [$4f77], a                                    ; $6764: $ea $77 $4f
	db $10                                           ; $6767: $10
	sbc h                                            ; $6768: $9c
	xor d                                            ; $6769: $aa
	ld d, l                                          ; $676a: $55
	ld a, [$f053]                                    ; $676b: $fa $53 $f0
	ld a, [hl]                                       ; $676e: $7e
	and [hl]                                         ; $676f: $a6
	sbc e                                            ; $6770: $9b
	xor a                                            ; $6771: $af
	ld d, a                                          ; $6772: $57
	rst AddAOntoHL                                          ; $6773: $ef
	rst FarCall                                          ; $6774: $f7
	ld e, a                                          ; $6775: $5f
	ldh a, [$7a]                                     ; $6776: $f0 $7a
	or l                                             ; $6778: $b5
	ld a, [hl]                                       ; $6779: $7e
	add l                                            ; $677a: $85
	sbc $c0                                          ; $677b: $de $c0
	ld d, [hl]                                       ; $677d: $56
	ldh [rRP], a                                     ; $677e: $e0 $56
	adc a                                            ; $6780: $8f
	ld b, [hl]                                       ; $6781: $46
	ret nz                                           ; $6782: $c0

	ld a, h                                          ; $6783: $7c
	sbc c                                            ; $6784: $99
	ld [hl], c                                       ; $6785: $71
	adc [hl]                                         ; $6786: $8e
	sbc [hl]                                         ; $6787: $9e
	pop hl                                           ; $6788: $e1
	ld hl, sp-$68                                    ; $6789: $f8 $98
	jr nz, jr_029_678d                               ; $678b: $20 $00

jr_029_678d:
	xor b                                            ; $678d: $a8
	db $10                                           ; $678e: $10
	xor d                                            ; $678f: $aa
	inc d                                            ; $6790: $14
	xor d                                            ; $6791: $aa
	ld h, d                                          ; $6792: $62
	ret nz                                           ; $6793: $c0

	ld a, l                                          ; $6794: $7d
	adc b                                            ; $6795: $88
	rst SubAFromDE                                          ; $6796: $df
	inc b                                            ; $6797: $04
	rst SubAFromDE                                          ; $6798: $df
	add hl, bc                                       ; $6799: $09
	sbc e                                            ; $679a: $9b
	ld a, [bc]                                       ; $679b: $0a
	ld [bc], a                                       ; $679c: $02
	ld [bc], a                                       ; $679d: $02
	dec b                                            ; $679e: $05
	ld [hl], h                                       ; $679f: $74
	ld e, l                                          ; $67a0: $5d
	add e                                            ; $67a1: $83
	ld c, $14                                        ; $67a2: $0e $14
	add hl, hl                                       ; $67a4: $29
	ld [hl], d                                       ; $67a5: $72
	or a                                             ; $67a6: $b7
	and l                                            ; $67a7: $a5
	ld c, a                                          ; $67a8: $4f
	ld c, l                                          ; $67a9: $4d
	ld d, h                                          ; $67aa: $54
	di                                               ; $67ab: $f3
	rst FarCall                                          ; $67ac: $f7
	rst AddAOntoHL                                          ; $67ad: $ef
	xor [hl]                                         ; $67ae: $ae
	cp [hl]                                          ; $67af: $be
	ld a, h                                          ; $67b0: $7c
	ld a, h                                          ; $67b1: $7c
	ld [hl], l                                       ; $67b2: $75
	adc b                                            ; $67b3: $88
	ld l, a                                          ; $67b4: $6f
	call z, $b396                                    ; $67b5: $cc $96 $b3
	inc hl                                           ; $67b8: $23
	ld [hl], d                                       ; $67b9: $72
	cp d                                             ; $67ba: $ba
	rst $38                                          ; $67bb: $ff
	sbc a                                            ; $67bc: $9f
	ccf                                              ; $67bd: $3f
	ld a, e                                          ; $67be: $7b
	ld c, c                                          ; $67bf: $49
	sub e                                            ; $67c0: $93
	rst AddAOntoHL                                          ; $67c1: $ef
	and a                                            ; $67c2: $a7
	rlca                                             ; $67c3: $07
	adc d                                            ; $67c4: $8a
	ld h, h                                          ; $67c5: $64
	dec e                                            ; $67c6: $1d
	ld [$910d], a                                    ; $67c7: $ea $0d $91
	ld h, e                                          ; $67ca: $63
	cp $ff                                           ; $67cb: $fe $ff
	ld a, b                                          ; $67cd: $78
	inc sp                                           ; $67ce: $33
	sbc $ff                                          ; $67cf: $de $ff
	add b                                            ; $67d1: $80
	inc sp                                           ; $67d2: $33
	ld h, a                                          ; $67d3: $67
	rst GetHLinHL                                          ; $67d4: $cf
	ld e, [hl]                                       ; $67d5: $5e
	cp l                                             ; $67d6: $bd
	ld [hl], d                                       ; $67d7: $72
	add l                                            ; $67d8: $85
	dec bc                                           ; $67d9: $0b
	xor $fc                                          ; $67da: $ee $fc
	ld hl, sp-$0f                                    ; $67dc: $f8 $f1
	db $e3                                           ; $67de: $e3
	rst GetHLinHL                                          ; $67df: $cf
	cp $fc                                           ; $67e0: $fe $fc
	xor [hl]                                         ; $67e2: $ae
	ld e, a                                          ; $67e3: $5f
	ld e, l                                          ; $67e4: $5d
	xor a                                            ; $67e5: $af
	ld a, a                                          ; $67e6: $7f
	cp $fb                                           ; $67e7: $fe $fb
	rst AddAOntoHL                                          ; $67e9: $ef
	ld [hl], a                                       ; $67ea: $77
	rst AddAOntoHL                                          ; $67eb: $ef
	cp $f0                                           ; $67ec: $fe $f0
	add b                                            ; $67ee: $80
	ld bc, $8a07                                     ; $67ef: $01 $07 $8a
	rra                                              ; $67f2: $1f
	ld [hl], b                                       ; $67f3: $70
	ret nz                                           ; $67f4: $c0

	jp nz, $ffe6                                     ; $67f5: $c2 $e6 $ff

	rst AddAOntoHL                                          ; $67f8: $ef
	rst FarCall                                          ; $67f9: $f7
	cp $f8                                           ; $67fa: $fe $f8
	db $fc                                           ; $67fc: $fc
	inc a                                            ; $67fd: $3c
	jr jr_029_6800                                   ; $67fe: $18 $00

jr_029_6800:
	ldh a, [$f8]                                     ; $6800: $f0 $f8
	db $fc                                           ; $6802: $fc
	dec l                                            ; $6803: $2d
	dec de                                           ; $6804: $1b
	ld c, $02                                        ; $6805: $0e $02
	ld [hl], l                                       ; $6807: $75
	ld [de], a                                       ; $6808: $12
	sbc h                                            ; $6809: $9c
	rra                                              ; $680a: $1f
	rlca                                             ; $680b: $07
	ld bc, $b17a                                     ; $680c: $01 $7a $b1
	rst $38                                          ; $680f: $ff
	sbc b                                            ; $6810: $98
	ld l, c                                          ; $6811: $69
	ld a, a                                          ; $6812: $7f
	inc bc                                           ; $6813: $03
	ld e, $3f                                        ; $6814: $1e $3f
	rst $38                                          ; $6816: $ff
	ld sp, hl                                        ; $6817: $f9
	halt                                             ; $6818: $76

jr_029_6819:
	ld h, c                                          ; $6819: $61
	sub d                                            ; $681a: $92
	pop hl                                           ; $681b: $e1
	ret nz                                           ; $681c: $c0

	nop                                              ; $681d: $00
	ld a, $7f                                        ; $681e: $3e $7f
	and l                                            ; $6820: $a5
	ld d, d                                          ; $6821: $52
	xor d                                            ; $6822: $aa
	sbc $6b                                          ; $6823: $de $6b
	jp hl                                            ; $6825: $e9


	set 2, d                                         ; $6826: $cb $d2
	ld [hl], a                                       ; $6828: $77
	rst AddAOntoHL                                          ; $6829: $ef
	adc e                                            ; $682a: $8b
	rst SubAFromDE                                          ; $682b: $df
	rra                                              ; $682c: $1f
	ccf                                              ; $682d: $3f
	ld a, $37                                        ; $682e: $3e $37
	ld [hl], a                                       ; $6830: $77
	ld [hl], a                                       ; $6831: $77
	rst FarCall                                          ; $6832: $f7
	rst FarCall                                          ; $6833: $f7
	rst AddAOntoHL                                          ; $6834: $ef
	rst AddAOntoHL                                          ; $6835: $ef
	rst $38                                          ; $6836: $ff
	db $fc                                           ; $6837: $fc
	call c, $9cdc                                    ; $6838: $dc $dc $9c
	sbc h                                            ; $683b: $9c
	jr c, @-$46                                      ; $683c: $38 $b8

	jr nc, jr_029_6819                               ; $683e: $30 $d9

	rst $38                                          ; $6840: $ff
	sbc $40                                          ; $6841: $de $40
	ld bc, $5dc0                                     ; $6843: $01 $c0 $5d
	ret nz                                           ; $6846: $c0

	ld a, a                                          ; $6847: $7f
	ld l, b                                          ; $6848: $68
	ld d, l                                          ; $6849: $55
	ret nz                                           ; $684a: $c0

	ld a, a                                          ; $684b: $7f
	ld a, a                                          ; $684c: $7f
	sbc [hl]                                         ; $684d: $9e
	ld a, [hl+]                                      ; $684e: $2a
	ld [hl], e                                       ; $684f: $73
	add h                                            ; $6850: $84
	db $fd                                           ; $6851: $fd

Call_029_6852:
	sbc b                                            ; $6852: $98
	ld [$b018], sp                                   ; $6853: $08 $18 $b0
	db $10                                           ; $6856: $10
	or b                                             ; $6857: $b0
	ld h, b                                          ; $6858: $60
	and b                                            ; $6859: $a0
	ld [hl], a                                       ; $685a: $77
	or e                                             ; $685b: $b3
	ld a, a                                          ; $685c: $7f
	ld l, e                                          ; $685d: $6b
	rst SubAFromDE                                          ; $685e: $df
	inc bc                                           ; $685f: $03
	sbc [hl]                                         ; $6860: $9e
	rlca                                             ; $6861: $07
	db $db                                           ; $6862: $db
	rst $38                                          ; $6863: $ff
	rst SubAFromDE                                          ; $6864: $df
	cp $f9                                           ; $6865: $fe $f9
	sbc l                                            ; $6867: $9d
	jp Jump_029_69c0                                 ; $6868: $c3 $c0 $69


	adc [hl]                                         ; $686b: $8e
	halt                                             ; $686c: $76
	ldh [c], a                                       ; $686d: $e2
	sbc $1f                                          ; $686e: $de $1f
	ld a, [hl]                                       ; $6870: $7e
	ld c, a                                          ; $6871: $4f
	sub a                                            ; $6872: $97
	inc d                                            ; $6873: $14
	ld a, [hl-]                                      ; $6874: $3a
	inc [hl]                                         ; $6875: $34
	dec hl                                           ; $6876: $2b
	ld [hl], b                                       ; $6877: $70
	ld h, c                                          ; $6878: $61
	nop                                              ; $6879: $00
	nop                                              ; $687a: $00
	sbc $c0                                          ; $687b: $de $c0
	sub d                                            ; $687d: $92
	call nz, $8e8f                                   ; $687e: $c4 $8f $8e
	ld a, [bc]                                       ; $6881: $0a
	adc d                                            ; $6882: $8a
	inc b                                            ; $6883: $04
	and h                                            ; $6884: $a4
	inc b                                            ; $6885: $04
	and b                                            ; $6886: $a0
	ld b, b                                          ; $6887: $40
	and b                                            ; $6888: $a0
	ld c, $0e                                        ; $6889: $0e $0e
	sbc $04                                          ; $688b: $de $04
	cp $9e                                           ; $688d: $fe $9e
	sbc d                                            ; $688f: $9a
	sbc $ad                                          ; $6890: $de $ad
	rst SubAFromDE                                          ; $6892: $df
	jp z, $8adf                                      ; $6893: $ca $df $8a

	sbc [hl]                                         ; $6896: $9e
	db $fd                                           ; $6897: $fd
	sbc $eb                                          ; $6898: $de $eb
	rst SubAFromDE                                          ; $689a: $df
	adc $df                                          ; $689b: $ce $df
	adc [hl]                                         ; $689d: $8e
	sub [hl]                                         ; $689e: $96
	xor e                                            ; $689f: $ab
	ld a, [hl+]                                      ; $68a0: $2a
	ld a, [hl+]                                      ; $68a1: $2a
	dec sp                                           ; $68a2: $3b
	add hl, de                                       ; $68a3: $19
	add hl, de                                       ; $68a4: $19
	inc e                                            ; $68a5: $1c
	inc e                                            ; $68a6: $1c
	and [hl]                                         ; $68a7: $a6
	sbc $26                                          ; $68a8: $de $26
	rst SubAFromDE                                          ; $68aa: $df
	dec d                                            ; $68ab: $15
	rst SubAFromDE                                          ; $68ac: $df
	inc d                                            ; $68ad: $14
	add l                                            ; $68ae: $85
	ld a, $55                                        ; $68af: $3e $55
	ld e, d                                          ; $68b1: $5a
	ld d, a                                          ; $68b2: $57
	ld d, c                                          ; $68b3: $51
	ld c, [hl]                                       ; $68b4: $4e
	and a                                            ; $68b5: $a7
	and [hl]                                         ; $68b6: $a6
	rst $38                                          ; $68b7: $ff
	db $db                                           ; $68b8: $db
	push de                                          ; $68b9: $d5
	jp nc, $c9db                                     ; $68ba: $d2 $db $c9

	db $e4                                           ; $68bd: $e4
	rst SubAFromBC                                          ; $68be: $e7
	ld [hl], e                                       ; $68bf: $73
	jp nc, Jump_029_5bdb                             ; $68c0: $d2 $db $5b

	ld e, e                                          ; $68c3: $5b
	rst SubAFromDE                                          ; $68c4: $df
	push de                                          ; $68c5: $d5
	push de                                          ; $68c6: $d5
	db $fc                                           ; $68c7: $fc
	db $fd                                           ; $68c8: $fd
	sbc $ec                                          ; $68c9: $de $ec
	add e                                            ; $68cb: $83
	db $e4                                           ; $68cc: $e4
	and $66                                          ; $68cd: $e6 $66
	sbc $ec                                          ; $68cf: $de $ec
	call c, $ebe9                                    ; $68d1: $dc $e9 $eb
	ldh a, [c]                                       ; $68d4: $f2
	db $fc                                           ; $68d5: $fc
	rst $38                                          ; $68d6: $ff
	ld a, $fc                                        ; $68d7: $3e $fc
	ld l, h                                          ; $68d9: $6c
	cpl                                              ; $68da: $2f
	dec b                                            ; $68db: $05
	inc b                                            ; $68dc: $04
	ld b, $03                                        ; $68dd: $06 $03
	inc l                                            ; $68df: $2c
	ld [hl], b                                       ; $68e0: $70
	ldh a, [$f0]                                     ; $68e1: $f0 $f0
	and b                                            ; $68e3: $a0
	ld [hl], b                                       ; $68e4: $70
	jr nz, jr_029_6947                               ; $68e5: $20 $60

	jr nc, jr_029_6964                               ; $68e7: $30 $7b

	ld hl, sp+$7f                                    ; $68e9: $f8 $7f
	rst FarCall                                          ; $68eb: $f7
	ld a, [hl]                                       ; $68ec: $7e
	ld b, $df                                        ; $68ed: $06 $df
	inc bc                                           ; $68ef: $03
	ld [hl], a                                       ; $68f0: $77
	ld b, l                                          ; $68f1: $45
	sbc l                                            ; $68f2: $9d
	ld [bc], a                                       ; $68f3: $02
	inc d                                            ; $68f4: $14
	ld sp, hl                                        ; $68f5: $f9
	add h                                            ; $68f6: $84
	ld l, a                                          ; $68f7: $6f
	rst JumpTable                                          ; $68f8: $c7
	rst SubAFromDE                                          ; $68f9: $df
	push af                                          ; $68fa: $f5
	ld d, [hl]                                       ; $68fb: $56
	ld c, l                                          ; $68fc: $4d

Jump_029_68fd:
	db $dd                                           ; $68fd: $dd
	cpl                                              ; $68fe: $2f
	rst AddAOntoHL                                          ; $68ff: $ef
	rst JumpTable                                          ; $6900: $c7
	sbc $fe                                          ; $6901: $de $fe
	db $fc                                           ; $6903: $fc
	call nc, Call_029_7844                           ; $6904: $d4 $44 $78
	ld [hl], h                                       ; $6907: $74
	ld hl, sp-$48                                    ; $6908: $f8 $b8
	or b                                             ; $690a: $b0
	ld e, b                                          ; $690b: $58
	ld d, b                                          ; $690c: $50
	sub b                                            ; $690d: $90
	or b                                             ; $690e: $b0
	cp h                                             ; $690f: $bc
	ld hl, sp-$10                                    ; $6910: $f8 $f0
	ld a, d                                          ; $6912: $7a
	rlca                                             ; $6913: $07
	sub h                                            ; $6914: $94
	ldh a, [$d0]                                     ; $6915: $f0 $d0
	ld a, a                                          ; $6917: $7f
	ld a, a                                          ; $6918: $7f
	rrca                                             ; $6919: $0f
	rla                                              ; $691a: $17
	ld a, [hl+]                                      ; $691b: $2a
	ld d, l                                          ; $691c: $55
	ld a, [bc]                                       ; $691d: $0a
	inc d                                            ; $691e: $14
	ld h, b                                          ; $691f: $60
	ld l, [hl]                                       ; $6920: $6e
	pop de                                           ; $6921: $d1
	ld a, d                                          ; $6922: $7a
	ldh a, [$7d]                                     ; $6923: $f0 $7d
	and b                                            ; $6925: $a0
	sbc e                                            ; $6926: $9b
	cp a                                             ; $6927: $bf
	ld e, a                                          ; $6928: $5f
	xor e                                            ; $6929: $ab
	ld d, l                                          ; $692a: $55
	ld e, d                                          ; $692b: $5a
	ldh [$9b], a                                     ; $692c: $e0 $9b
	ld a, a                                          ; $692e: $7f
	ld [$fef0], a                                    ; $692f: $ea $f0 $fe
	ld d, a                                          ; $6932: $57
	ldh a, [$df]                                     ; $6933: $f0 $df
	rst $38                                          ; $6935: $ff
	sbc h                                            ; $6936: $9c
	ld d, a                                          ; $6937: $57
	ld a, [bc]                                       ; $6938: $0a
	sub l                                            ; $6939: $95
	ld e, l                                          ; $693a: $5d
	ret nz                                           ; $693b: $c0

	sbc c                                            ; $693c: $99
	ld a, [$faf5]                                    ; $693d: $fa $f5 $fa
	push af                                          ; $6940: $f5
	ld [$6175], a                                    ; $6941: $ea $75 $61
	ld h, b                                          ; $6944: $60
	sbc b                                            ; $6945: $98
	dec b                                            ; $6946: $05

jr_029_6947:
	xor d                                            ; $6947: $aa
	ld d, l                                          ; $6948: $55
	xor e                                            ; $6949: $ab
	ld d, l                                          ; $694a: $55
	xor d                                            ; $694b: $aa
	ld d, [hl]                                       ; $694c: $56
	ld sp, hl                                        ; $694d: $f9
	sbc h                                            ; $694e: $9c
	pop bc                                           ; $694f: $c1
	add c                                            ; $6950: $81
	add e                                            ; $6951: $83
	ld a, d                                          ; $6952: $7a
	jp z, $e47e                                      ; $6953: $ca $7e $e4

	sub a                                            ; $6956: $97
	ld b, $0e                                        ; $6957: $06 $0e
	inc c                                            ; $6959: $0c
	inc e                                            ; $695a: $1c
	inc e                                            ; $695b: $1c
	jr jr_029_6996                                   ; $695c: $18 $38

	jr nc, jr_029_699d                               ; $695e: $30 $3d

	nop                                              ; $6960: $00
	push de                                          ; $6961: $d5
	inc sp                                           ; $6962: $33
	sbc h                                            ; $6963: $9c

jr_029_6964:
	ld b, h                                          ; $6964: $44
	ld [hl+], a                                      ; $6965: $22
	inc de                                           ; $6966: $13
	jp c, $9b33                                      ; $6967: $da $33 $9b

	ld b, d                                          ; $696a: $42
	dec h                                            ; $696b: $25
	ld d, l                                          ; $696c: $55
	ld de, $33dc                                     ; $696d: $11 $dc $33
	sbc l                                            ; $6970: $9d
	ld [hl-], a                                      ; $6971: $32
	ld [hl+], a                                      ; $6972: $22
	sbc $55                                          ; $6973: $de $55
	ld [hl], e                                       ; $6975: $73
	push af                                          ; $6976: $f5
	sbc b                                            ; $6977: $98
	ld [hl-], a                                      ; $6978: $32
	ld d, l                                          ; $6979: $55
	ld d, l                                          ; $697a: $55
	ld d, [hl]                                       ; $697b: $56
	ld d, l                                          ; $697c: $55
	ld d, l                                          ; $697d: $55
	inc hl                                           ; $697e: $23
	sbc $33                                          ; $697f: $de $33
	sub a                                            ; $6981: $97
	dec b                                            ; $6982: $05
	ld d, l                                          ; $6983: $55
	ld d, l                                          ; $6984: $55
	ld h, [hl]                                       ; $6985: $66
	ld h, l                                          ; $6986: $65
	ld d, d                                          ; $6987: $52
	inc h                                            ; $6988: $24
	ld b, h                                          ; $6989: $44
	ld l, a                                          ; $698a: $6f
	or $98                                           ; $698b: $f6 $98
	ld h, [hl]                                       ; $698d: $66
	ld h, d                                          ; $698e: $62
	ld b, h                                          ; $698f: $44
	ld b, h                                          ; $6990: $44
	jr nc, jr_029_69c3                               ; $6991: $30 $30

	ld [bc], a                                       ; $6993: $02
	ld a, e                                          ; $6994: $7b
	rst FarCall                                          ; $6995: $f7

jr_029_6996:
	sbc d                                            ; $6996: $9a
	ld h, [hl]                                       ; $6997: $66
	ld h, h                                          ; $6998: $64
	ld b, h                                          ; $6999: $44
	ld b, h                                          ; $699a: $44
	inc bc                                           ; $699b: $03
	xor d                                            ; $699c: $aa

Call_029_699d:
jr_029_699d:
	rlca                                             ; $699d: $07
	sbc h                                            ; $699e: $9c
	cp $00                                           ; $699f: $fe $00
	db $fc                                           ; $69a1: $fc
	ld a, e                                          ; $69a2: $7b
	cp $9e                                           ; $69a3: $fe $9e
	ld hl, sp+$7b                                    ; $69a5: $f8 $7b
	cp $80                                           ; $69a7: $fe $80
	ldh a, [rP1]                                     ; $69a9: $f0 $00
	pop af                                           ; $69ab: $f1
	nop                                              ; $69ac: $00
	ldh a, [rSB]                                     ; $69ad: $f0 $01
	nop                                              ; $69af: $00
	ccf                                              ; $69b0: $3f
	nop                                              ; $69b1: $00
	ccf                                              ; $69b2: $3f
	ld bc, $717e                                     ; $69b3: $01 $7e $71
	ld c, $0f                                        ; $69b6: $0e $0f
	ldh a, [$e0]                                     ; $69b8: $f0 $e0
	rra                                              ; $69ba: $1f
	sbc $21                                          ; $69bb: $de $21
	cp a                                             ; $69bd: $bf
	add $c1                                          ; $69be: $c6 $c1

Jump_029_69c0:
	ld e, $e3                                        ; $69c0: $1e $e3
	inc e                                            ; $69c2: $1c

jr_029_69c3:
	ret z                                            ; $69c3: $c8

	jr nc, @+$17                                     ; $69c4: $30 $15

	ldh [$5b], a                                     ; $69c6: $e0 $5b
	sub l                                            ; $69c8: $95

jr_029_69c9:
	add b                                            ; $69c9: $80
	ldh [c], a                                       ; $69ca: $e2
	nop                                              ; $69cb: $00
	inc a                                            ; $69cc: $3c

jr_029_69cd:
	ret nz                                           ; $69cd: $c0

	add a                                            ; $69ce: $87
	jr c, jr_029_69c9                                ; $69cf: $38 $f8

	nop                                              ; $69d1: $00
	rlca                                             ; $69d2: $07
	ld a, e                                          ; $69d3: $7b
	call nc, Call_029_6a95                           ; $69d4: $d4 $95 $6a
	nop                                              ; $69d7: $00
	ld e, e                                          ; $69d8: $5b
	nop                                              ; $69d9: $00
	sub $00                                          ; $69da: $d6 $00
	or [hl]                                          ; $69dc: $b6
	nop                                              ; $69dd: $00
	dec l                                            ; $69de: $2d
	nop                                              ; $69df: $00
	db $dd                                           ; $69e0: $dd
	inc b                                            ; $69e1: $04
	add b                                            ; $69e2: $80
	call nz, Call_029_6004                           ; $69e3: $c4 $04 $60
	nop                                              ; $69e6: $00
	jr nc, jr_029_69e9                               ; $69e7: $30 $00

jr_029_69e9:
	sbc d                                            ; $69e9: $9a
	nop                                              ; $69ea: $00
	sub h                                            ; $69eb: $94
	ld [$04aa], sp                                   ; $69ec: $08 $aa $04
	ld c, $0a                                        ; $69ef: $0e $0a
	ld c, $0a                                        ; $69f1: $0e $0a
	rlca                                             ; $69f3: $07
	dec b                                            ; $69f4: $05
	inc bc                                           ; $69f5: $03
	inc bc                                           ; $69f6: $03
	inc b                                            ; $69f7: $04
	rlca                                             ; $69f8: $07
	inc c                                            ; $69f9: $0c
	adc a                                            ; $69fa: $8f
	ld [hl-], a                                      ; $69fb: $32
	ccf                                              ; $69fc: $3f
	ld b, c                                          ; $69fd: $41
	rst $38                                          ; $69fe: $ff
	ld a, c                                          ; $69ff: $79
	ld a, a                                          ; $6a00: $7f
	inc hl                                           ; $6a01: $23
	add b                                            ; $6a02: $80
	ccf                                              ; $6a03: $3f
	rst JumpTable                                          ; $6a04: $c7
	db $fd                                           ; $6a05: $fd
	rrca                                             ; $6a06: $0f
	ld a, [$f41e]                                    ; $6a07: $fa $1e $f4
	dec a                                            ; $6a0a: $3d
	add sp, $3b                                      ; $6a0b: $e8 $3b
	pop af                                           ; $6a0d: $f1
	ld a, [hl-]                                      ; $6a0e: $3a
	ldh a, [c]                                       ; $6a0f: $f2
	push de                                          ; $6a10: $d5
	and $c5                                          ; $6a11: $e6 $c5
	or $ec                                           ; $6a13: $f6 $ec
	scf                                              ; $6a15: $37
	ld a, a                                          ; $6a16: $7f
	scf                                              ; $6a17: $37
	call c, $b848                                    ; $6a18: $dc $48 $b8
	sub b                                            ; $6a1b: $90
	ld [hl], e                                       ; $6a1c: $73
	jr nz, @-$38                                     ; $6a1d: $20 $c6

	ld h, e                                          ; $6a1f: $63
	rst $38                                          ; $6a20: $ff
	nop                                              ; $6a21: $00
	sbc [hl]                                         ; $6a22: $9e
	ldh [$7b], a                                     ; $6a23: $e0 $7b
	add [hl]                                         ; $6a25: $86
	ld a, e                                          ; $6a26: $7b
	add b                                            ; $6a27: $80
	sub a                                            ; $6a28: $97
	add b                                            ; $6a29: $80
	ld a, h                                          ; $6a2a: $7c
	ld b, b                                          ; $6a2b: $40
	inc a                                            ; $6a2c: $3c
	jr nz, jr_029_69cd                               ; $6a2d: $20 $9e

	db $10                                           ; $6a2f: $10
	ret nz                                           ; $6a30: $c0

	ld hl, sp+$7f                                    ; $6a31: $f8 $7f
	ld [hl], l                                       ; $6a33: $75
	db $fd                                           ; $6a34: $fd
	add b                                            ; $6a35: $80
	halt                                             ; $6a36: $76
	nop                                              ; $6a37: $00
	di                                               ; $6a38: $f3
	inc b                                            ; $6a39: $04
	rst FarCall                                          ; $6a3a: $f7
	ld c, $7a                                        ; $6a3b: $0e $7a
	inc c                                            ; $6a3d: $0c
	jr jr_029_6a40                                   ; $6a3e: $18 $00

jr_029_6a40:
	ret nz                                           ; $6a40: $c0

	nop                                              ; $6a41: $00
	add sp, $74                                      ; $6a42: $e8 $74
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	ld a, e                                          ; $6a46: $7b
	nop                                              ; $6a47: $00
	ld [bc], a                                       ; $6a48: $02
	ld bc, $0103                                     ; $6a49: $01 $03 $01
	ld bc, $0603                                     ; $6a4c: $01 $03 $06
	ld [bc], a                                       ; $6a4f: $02
	ld b, $02                                        ; $6a50: $06 $02
	inc c                                            ; $6a52: $0c
	inc b                                            ; $6a53: $04
	rrca                                             ; $6a54: $0f
	adc [hl]                                         ; $6a55: $8e
	rrca                                             ; $6a56: $0f
	or b                                             ; $6a57: $b0
	ret nc                                           ; $6a58: $d0

	sub b                                            ; $6a59: $90
	ldh a, [hDisp1_SCY]                                     ; $6a5a: $f0 $90
	ldh a, [$af]                                     ; $6a5c: $f0 $af
	rst AddAOntoHL                                          ; $6a5e: $ef
	xor d                                            ; $6a5f: $aa
	rst AddAOntoHL                                          ; $6a60: $ef
	rst GetHLinHL                                          ; $6a61: $cf
	rst GetHLinHL                                          ; $6a62: $cf
	ret                                              ; $6a63: $c9


	call $898d                                       ; $6a64: $cd $8d $89
	ei                                               ; $6a67: $fb
	rst SubAFromDE                                          ; $6a68: $df
	ret nz                                           ; $6a69: $c0

	sub a                                            ; $6a6a: $97
	inc sp                                           ; $6a6b: $33
	di                                               ; $6a6c: $f3
	adc [hl]                                         ; $6a6d: $8e
	rst $38                                          ; $6a6e: $ff
	push bc                                          ; $6a6f: $c5
	cp $c2                                           ; $6a70: $fe $c2
	rst $38                                          ; $6a72: $ff
	db $fd                                           ; $6a73: $fd
	rst SubAFromDE                                          ; $6a74: $df
	ld a, $95                                        ; $6a75: $3e $95
	db $fd                                           ; $6a77: $fd
	rst SubAFromHL                                          ; $6a78: $d7
	ld d, e                                          ; $6a79: $53
	xor a                                            ; $6a7a: $af
	cp l                                             ; $6a7b: $bd
	ld e, [hl]                                       ; $6a7c: $5e
	ld l, h                                          ; $6a7d: $6c
	di                                               ; $6a7e: $f3
	ldh [$1f], a                                     ; $6a7f: $e0 $1f
	db $fd                                           ; $6a81: $fd
	rst SubAFromDE                                          ; $6a82: $df
	ld [hl], b                                       ; $6a83: $70
	sub h                                            ; $6a84: $94
	sbc b                                            ; $6a85: $98
	ld hl, sp+$64                                    ; $6a86: $f8 $64
	db $fc                                           ; $6a88: $fc
	adc d                                            ; $6a89: $8a
	cp $14                                           ; $6a8a: $fe $14
	db $fc                                           ; $6a8c: $fc
	ld a, b                                          ; $6a8d: $78
	ld hl, sp+$02                                    ; $6a8e: $f8 $02
	ld a, e                                          ; $6a90: $7b
	sbc b                                            ; $6a91: $98
	ld h, a                                          ; $6a92: $67
	db $fc                                           ; $6a93: $fc
	sbc [hl]                                         ; $6a94: $9e

Call_029_6a95:
	inc bc                                           ; $6a95: $03
	ld a, e                                          ; $6a96: $7b
	db $fc                                           ; $6a97: $fc
	sub [hl]                                         ; $6a98: $96
	xor d                                            ; $6a99: $aa
	nop                                              ; $6a9a: $00
	ld d, l                                          ; $6a9b: $55
	nop                                              ; $6a9c: $00
	db $eb                                           ; $6a9d: $eb
	nop                                              ; $6a9e: $00
	push de                                          ; $6a9f: $d5
	nop                                              ; $6aa0: $00
	xor a                                            ; $6aa1: $af
	ld a, e                                          ; $6aa2: $7b

jr_029_6aa3:
	ld hl, sp-$62                                    ; $6aa3: $f8 $9e
	cp a                                             ; $6aa5: $bf
	ld a, e                                          ; $6aa6: $7b
	db $fc                                           ; $6aa7: $fc
	sbc h                                            ; $6aa8: $9c
	xor h                                            ; $6aa9: $ac
	nop                                              ; $6aaa: $00
	ld d, h                                          ; $6aab: $54
	ld a, e                                          ; $6aac: $7b
	ld h, d                                          ; $6aad: $62
	sbc [hl]                                         ; $6aae: $9e
	ld e, b                                          ; $6aaf: $58
	ld a, e                                          ; $6ab0: $7b
	db $fc                                           ; $6ab1: $fc
	add b                                            ; $6ab2: $80
	ld d, b                                          ; $6ab3: $50
	ld bc, $01f0                                     ; $6ab4: $01 $f0 $01
	ld h, b                                          ; $6ab7: $60
	inc bc                                           ; $6ab8: $03
	rrca                                             ; $6ab9: $0f
	ld [hl], b                                       ; $6aba: $70
	rra                                              ; $6abb: $1f
	ld h, b                                          ; $6abc: $60
	rra                                              ; $6abd: $1f
	ldh [$1f], a                                     ; $6abe: $e0 $1f
	ldh [$3f], a                                     ; $6ac0: $e0 $3f
	ret nz                                           ; $6ac2: $c0

	ccf                                              ; $6ac3: $3f
	ret nz                                           ; $6ac4: $c0

	ld a, a                                          ; $6ac5: $7f
	add b                                            ; $6ac6: $80
	ld a, a                                          ; $6ac7: $7f
	add b                                            ; $6ac8: $80
	ldh [rSB], a                                     ; $6ac9: $e0 $01
	jp nz, $c101                                     ; $6acb: $c2 $01 $c1

	ld [bc], a                                       ; $6ace: $02
	jp nz, $8501                                     ; $6acf: $c2 $01 $85

	sbc e                                            ; $6ad2: $9b
	ld [bc], a                                       ; $6ad3: $02
	add d                                            ; $6ad4: $82
	nop                                              ; $6ad5: $00
	dec b                                            ; $6ad6: $05
	ld a, e                                          ; $6ad7: $7b
	cp d                                             ; $6ad8: $ba
	add b                                            ; $6ad9: $80
	and $ff                                          ; $6ada: $e6 $ff
	ld a, l                                          ; $6adc: $7d
	cp $1f                                           ; $6add: $fe $1f
	rst $38                                          ; $6adf: $ff
	cp e                                             ; $6ae0: $bb
	ld e, a                                          ; $6ae1: $5f

jr_029_6ae2:
	ld a, b                                          ; $6ae2: $78
	sbc a                                            ; $6ae3: $9f
	rst SubAFromHL                                          ; $6ae4: $d7
	jr c, jr_029_6b5c                                ; $6ae5: $38 $75

	jr c, jr_029_6aa3                                ; $6ae7: $38 $ba

	ld [hl], b                                       ; $6ae9: $70
	ret nz                                           ; $6aea: $c0

	rlca                                             ; $6aeb: $07
	sbc b                                            ; $6aec: $98
	ld l, b                                          ; $6aed: $68
	ld a, a                                          ; $6aee: $7f
	sbc b                                            ; $6aef: $98
	sbc $f9                                          ; $6af0: $de $f9
	ld sp, hl                                        ; $6af2: $f9
	cp $3e                                           ; $6af3: $fe $3e
	rst $38                                          ; $6af5: $ff
	rst SubAFromBC                                          ; $6af6: $e7
	ld a, a                                          ; $6af7: $7f
	ld sp, hl                                        ; $6af8: $f9
	add b                                            ; $6af9: $80
	ld h, a                                          ; $6afa: $67
	push hl                                          ; $6afb: $e5
	nop                                              ; $6afc: $00
	jr c, @-$3e                                      ; $6afd: $38 $c0

	rlca                                             ; $6aff: $07
	jr jr_029_6ae2                                   ; $6b00: $18 $e0

	inc bc                                           ; $6b02: $03
	ld hl, sp+$70                                    ; $6b03: $f8 $70
	ld a, a                                          ; $6b05: $7f
	ldh [$e7], a                                     ; $6b06: $e0 $e7
	ld sp, hl                                        ; $6b08: $f9
	pop af                                           ; $6b09: $f1
	rst $38                                          ; $6b0a: $ff
	ld c, e                                          ; $6b0b: $4b
	inc b                                            ; $6b0c: $04
	ld de, $3607                                     ; $6b0d: $11 $07 $36
	ld b, $ce                                        ; $6b10: $06 $ce
	inc c                                            ; $6b12: $0c
	dec d                                            ; $6b13: $15
	reti                                             ; $6b14: $d9


	jr z, jr_029_6b47                                ; $6b15: $28 $30

	ldh a, [$a0]                                     ; $6b17: $f0 $a0
	add b                                            ; $6b19: $80
	ldh [$a0], a                                     ; $6b1a: $e0 $a0
	jp $f4bf                                         ; $6b1c: $c3 $bf $f4


	rst GetHLinHL                                          ; $6b1f: $cf
	ld a, [hl+]                                      ; $6b20: $2a
	dec a                                            ; $6b21: $3d
	rla                                              ; $6b22: $17
	jr @+$0d                                         ; $6b23: $18 $0b

	inc c                                            ; $6b25: $0c
	adc l                                            ; $6b26: $8d
	add a                                            ; $6b27: $87
	ld b, a                                          ; $6b28: $47
	ld b, d                                          ; $6b29: $42
	ld [hl], a                                       ; $6b2a: $77
	ld hl, $f2be                                     ; $6b2b: $21 $be $f2
	sbc a                                            ; $6b2e: $9f
	ldh a, [$5f]                                     ; $6b2f: $f0 $5f
	ldh a, [$2f]                                     ; $6b31: $f0 $2f
	ld hl, sp-$19                                    ; $6b33: $f8 $e7
	db $fc                                           ; $6b35: $fc
	inc de                                           ; $6b36: $13
	cp $11                                           ; $6b37: $fe $11
	sbc c                                            ; $6b39: $99
	rst $38                                          ; $6b3a: $ff
	ld [$e3ff], sp                                   ; $6b3b: $08 $ff $e3
	ld b, a                                          ; $6b3e: $47
	jp $9efe                                         ; $6b3f: $c3 $fe $9e


	add b                                            ; $6b42: $80
	ld a, d                                          ; $6b43: $7a
	call z, Call_029_467e                            ; $6b44: $cc $7e $46

jr_029_6b47:
	ld a, a                                          ; $6b47: $7f
	inc hl                                           ; $6b48: $23
	sub [hl]                                         ; $6b49: $96
	rst $38                                          ; $6b4a: $ff
	add b                                            ; $6b4b: $80
	ld a, [hl]                                       ; $6b4c: $7e
	sub b                                            ; $6b4d: $90
	ei                                               ; $6b4e: $fb
	db $fc                                           ; $6b4f: $fc
	cpl                                              ; $6b50: $2f
	ld e, $0b                                        ; $6b51: $1e $0b
	ld a, d                                          ; $6b53: $7a
	adc l                                            ; $6b54: $8d
	ld a, [hl]                                       ; $6b55: $7e
	add sp, $7f                                      ; $6b56: $e8 $7f
	ld b, d                                          ; $6b58: $42
	ld a, a                                          ; $6b59: $7f
	add sp, -$05                                     ; $6b5a: $e8 $fb

jr_029_6b5c:
	rst SubAFromDE                                          ; $6b5c: $df
	add b                                            ; $6b5d: $80
	sub h                                            ; $6b5e: $94
	ld b, b                                          ; $6b5f: $40
	ldh [$b4], a                                     ; $6b60: $e0 $b4
	ld hl, sp+$4d                                    ; $6b62: $f8 $4d
	cp $c3                                           ; $6b64: $fe $c3
	ld a, a                                          ; $6b66: $7f
	ld d, b                                          ; $6b67: $50
	jr nz, jr_029_6b8a                               ; $6b68: $20 $20

	db $fc                                           ; $6b6a: $fc
	ld a, d                                          ; $6b6b: $7a
	ld l, [hl]                                       ; $6b6c: $6e
	add e                                            ; $6b6d: $83
	inc b                                            ; $6b6e: $04
	jr c, @+$1a                                      ; $6b6f: $38 $18

	ldh [$e0], a                                     ; $6b71: $e0 $e0
	ld de, $321f                                     ; $6b73: $11 $1f $32
	ccf                                              ; $6b76: $3f
	ld h, b                                          ; $6b77: $60
	ld a, a                                          ; $6b78: $7f
	and b                                            ; $6b79: $a0
	cp a                                             ; $6b7a: $bf
	jr nz, jr_029_6bbc                               ; $6b7b: $20 $3f

	ld b, b                                          ; $6b7d: $40
	ld a, a                                          ; $6b7e: $7f
	ld b, b                                          ; $6b7f: $40
	ld a, a                                          ; $6b80: $7f
	ret nz                                           ; $6b81: $c0

	ld a, a                                          ; $6b82: $7f
	call $39c8                                       ; $6b83: $cd $c8 $39
	ld hl, sp+$08                                    ; $6b86: $f8 $08
	ld hl, sp+$0c                                    ; $6b88: $f8 $0c

jr_029_6b8a:
	ld a, e                                          ; $6b8a: $7b
	cp $80                                           ; $6b8b: $fe $80
	ld b, $fc                                        ; $6b8d: $06 $fc
	ld b, $fc                                        ; $6b8f: $06 $fc
	inc bc                                           ; $6b91: $03
	cp $42                                           ; $6b92: $fe $42
	rst $38                                          ; $6b94: $ff

jr_029_6b95:
	add l                                            ; $6b95: $85
	rst $38                                          ; $6b96: $ff
	ld a, [$2c3f]                                    ; $6b97: $fa $3f $2c
	rra                                              ; $6b9a: $1f
	dec b                                            ; $6b9b: $05
	rrca                                             ; $6b9c: $0f
	rlca                                             ; $6b9d: $07
	ld a, [bc]                                       ; $6b9e: $0a
	dec bc                                           ; $6b9f: $0b
	stop                                             ; $6ba0: $10 $00
	nop                                              ; $6ba2: $00
	ld a, a                                          ; $6ba3: $7f
	rst $38                                          ; $6ba4: $ff
	cp [hl]                                          ; $6ba5: $be
	pop bc                                           ; $6ba6: $c1
	ld bc, $f8ff                                     ; $6ba7: $01 $ff $f8
	rlca                                             ; $6baa: $07
	inc bc                                           ; $6bab: $03
	sub c                                            ; $6bac: $91
	rst $38                                          ; $6bad: $ff
	db $fc                                           ; $6bae: $fc
	db $fc                                           ; $6baf: $fc
	ld hl, sp+$08                                    ; $6bb0: $f8 $08
	ld [hl], b                                       ; $6bb2: $70
	jr nc, jr_029_6b95                               ; $6bb3: $30 $e0

	ldh [rAUD4LEN], a                                ; $6bb5: $e0 $20
	ldh [$c0], a                                     ; $6bb7: $e0 $c0
	ret nz                                           ; $6bb9: $c0

	add b                                            ; $6bba: $80
	ld h, a                                          ; $6bbb: $67

jr_029_6bbc:
	sub a                                            ; $6bbc: $97
	ld a, e                                          ; $6bbd: $7b
	ld c, $7e                                        ; $6bbe: $0e $7e
	jp z, $069e                                      ; $6bc0: $ca $9e $06

	ld a, e                                          ; $6bc3: $7b
	ld b, $98                                        ; $6bc4: $06 $98
	dec bc                                           ; $6bc6: $0b
	nop                                              ; $6bc7: $00
	dec c                                            ; $6bc8: $0d
	nop                                              ; $6bc9: $00
	dec de                                           ; $6bca: $1b
	nop                                              ; $6bcb: $00
	dec [hl]                                         ; $6bcc: $35
	ld a, e                                          ; $6bcd: $7b
	ld l, h                                          ; $6bce: $6c
	sbc [hl]                                         ; $6bcf: $9e
	ld d, a                                          ; $6bd0: $57
	ld a, e                                          ; $6bd1: $7b
	db $fc                                           ; $6bd2: $fc
	sbc [hl]                                         ; $6bd3: $9e
	ld e, a                                          ; $6bd4: $5f
	ld a, e                                          ; $6bd5: $7b
	db $fc                                           ; $6bd6: $fc
	sbc [hl]                                         ; $6bd7: $9e
	ld a, a                                          ; $6bd8: $7f
	ld [hl], a                                       ; $6bd9: $77
	ld h, b                                          ; $6bda: $60
	ld a, [hl]                                       ; $6bdb: $7e
	ld [hl+], a                                      ; $6bdc: $22
	sub b                                            ; $6bdd: $90
	inc bc                                           ; $6bde: $03
	ret nz                                           ; $6bdf: $c0

	rlca                                             ; $6be0: $07
	ret nz                                           ; $6be1: $c0

	rlca                                             ; $6be2: $07
	adc c                                            ; $6be3: $89
	ld b, $81                                        ; $6be4: $06 $81
	ld c, $83                                        ; $6be6: $0e $83
	inc c                                            ; $6be8: $0c
	inc bc                                           ; $6be9: $03
	inc e                                            ; $6bea: $1c
	rlca                                             ; $6beb: $07
	jr jr_029_6c65                                   ; $6bec: $18 $77

	db $ec                                           ; $6bee: $ec
	ld d, a                                          ; $6bef: $57
	cp $fa                                           ; $6bf0: $fe $fa
	ld a, a                                          ; $6bf2: $7f
	ld sp, $7b7d                                     ; $6bf3: $31 $7d $7b
	sub [hl]                                         ; $6bf6: $96
	rst $38                                          ; $6bf7: $ff
	ldh [$1f], a                                     ; $6bf8: $e0 $1f
	ld hl, sp+$07                                    ; $6bfa: $f8 $07
	ld h, c                                          ; $6bfc: $61
	ld [hl], b                                       ; $6bfd: $70
	ld [hl+], a                                      ; $6bfe: $22
	jr nz, jr_029_6c6b                               ; $6bff: $20 $6a

	dec b                                            ; $6c01: $05
	ld [hl], a                                       ; $6c02: $77
	dec de                                           ; $6c03: $1b
	sub l                                            ; $6c04: $95
	db $fc                                           ; $6c05: $fc
	ld a, [hl]                                       ; $6c06: $7e
	pop hl                                           ; $6c07: $e1
	set 4, c                                         ; $6c08: $cb $e1
	rst FarCall                                          ; $6c0a: $f7
	pop bc                                           ; $6c0b: $c1
	db $ed                                           ; $6c0c: $ed
	jp $de0b                                         ; $6c0d: $c3 $0b $de


	inc bc                                           ; $6c10: $03
	db $fd                                           ; $6c11: $fd
	rst SubAFromDE                                          ; $6c12: $df
	rst $38                                          ; $6c13: $ff
	adc [hl]                                         ; $6c14: $8e
	xor a                                            ; $6c15: $af
	rst SubAFromDE                                          ; $6c16: $df
	ei                                               ; $6c17: $fb
	add a                                            ; $6c18: $87
	cp $87                                           ; $6c19: $fe $87
	ld a, [hl]                                       ; $6c1b: $7e
	add a                                            ; $6c1c: $87
	rst FarCall                                          ; $6c1d: $f7
	ld c, $7d                                        ; $6c1e: $0e $7d
	ld c, $1e                                        ; $6c20: $0e $1e
	inc c                                            ; $6c22: $0c
	and b                                            ; $6c23: $a0
	ldh [$f0], a                                     ; $6c24: $e0 $f0
	ld a, e                                          ; $6c26: $7b
	cp $9e                                           ; $6c27: $fe $9e
	ld e, b                                          ; $6c29: $58
	ld a, e                                          ; $6c2a: $7b
	cp $9c                                           ; $6c2b: $fe $9c
	ret z                                            ; $6c2d: $c8

	ld [hl], b                                       ; $6c2e: $70
	call z, $fe7b                                    ; $6c2f: $cc $7b $fe
	sub h                                            ; $6c32: $94
	ccf                                              ; $6c33: $3f
	ld de, $081f                                     ; $6c34: $11 $1f $08
	rrca                                             ; $6c37: $0f
	inc b                                            ; $6c38: $04
	rlca                                             ; $6c39: $07
	inc b                                            ; $6c3a: $04
	rlca                                             ; $6c3b: $07
	ld [bc], a                                       ; $6c3c: $02
	inc bc                                           ; $6c3d: $03
	ld a, c                                          ; $6c3e: $79

jr_029_6c3f:
	ret c                                            ; $6c3f: $d8

	add b                                            ; $6c40: $80
	add hl, bc                                       ; $6c41: $09
	nop                                              ; $6c42: $00
	sbc b                                            ; $6c43: $98
	ld a, a                                          ; $6c44: $7f
	db $f4                                           ; $6c45: $f4
	rst AddAOntoHL                                          ; $6c46: $ef
	cp $85                                           ; $6c47: $fe $85
	cp e                                             ; $6c49: $bb
	call nz, $6ed3                                   ; $6c4a: $c4 $d3 $6e
	rst AddAOntoHL                                          ; $6c4d: $ef
	ld [hl], d                                       ; $6c4e: $72
	rst $38                                          ; $6c4f: $ff
	ld hl, $a1ff                                     ; $6c50: $21 $ff $a1
	ld a, a                                          ; $6c53: $7f
	ret nz                                           ; $6c54: $c0

	ccf                                              ; $6c55: $3f
	ldh [$3f], a                                     ; $6c56: $e0 $3f
	ldh a, [$2f]                                     ; $6c58: $f0 $2f
	add sp, $27                                      ; $6c5a: $e8 $27
	db $e4                                           ; $6c5c: $e4
	dec hl                                           ; $6c5d: $2b
	xor $13                                          ; $6c5e: $ee $13
	sbc e                                            ; $6c60: $9b
	cp $17                                           ; $6c61: $fe $17
	db $fc                                           ; $6c63: $fc
	ret nz                                           ; $6c64: $c0

jr_029_6c65:
	ld a, c                                          ; $6c65: $79
	xor b                                            ; $6c66: $a8
	ld [hl], a                                       ; $6c67: $77
	cp $7f                                           ; $6c68: $fe $7f
	sub e                                            ; $6c6a: $93

jr_029_6c6b:
	ld a, a                                          ; $6c6b: $7f
	cp $8b                                           ; $6c6c: $fe $8b
	add c                                            ; $6c6e: $81
	nop                                              ; $6c6f: $00
	add c                                            ; $6c70: $81
	ld bc, $7c47                                     ; $6c71: $01 $47 $7c
	ld c, h                                          ; $6c74: $4c
	ld a, b                                          ; $6c75: $78
	ld e, c                                          ; $6c76: $59
	ld [hl], b                                       ; $6c77: $70
	ld a, a                                          ; $6c78: $7f
	ld h, e                                          ; $6c79: $63
	ld a, a                                          ; $6c7a: $7f
	call z, $98ff                                    ; $6c7b: $cc $ff $98
	rst $38                                          ; $6c7e: $ff

jr_029_6c7f:
	xor c                                            ; $6c7f: $a9
	ei                                               ; $6c80: $fb
	dec bc                                           ; $6c81: $0b
	db $fd                                           ; $6c82: $fd
	adc e                                            ; $6c83: $8b
	pop af                                           ; $6c84: $f1
	ld h, b                                          ; $6c85: $60

Jump_029_6c86:
	sub b                                            ; $6c86: $90
	pop af                                           ; $6c87: $f1
	sbc c                                            ; $6c88: $99
	pop af                                           ; $6c89: $f1
	adc e                                            ; $6c8a: $8b
	ld sp, hl                                        ; $6c8b: $f9
	adc c                                            ; $6c8c: $89
	ei                                               ; $6c8d: $fb
	ld c, e                                          ; $6c8e: $4b
	ld a, [$ff80]                                    ; $6c8f: $fa $80 $ff
	add c                                            ; $6c92: $81
	cp $87                                           ; $6c93: $fe $87
	ld hl, sp-$01                                    ; $6c95: $f8 $ff
	add b                                            ; $6c97: $80
	ld [hl], a                                       ; $6c98: $77
	ld b, h                                          ; $6c99: $44
	add b                                            ; $6c9a: $80
	cp $01                                           ; $6c9b: $fe $01
	db $fc                                           ; $6c9d: $fc
	inc bc                                           ; $6c9e: $03
	ei                                               ; $6c9f: $fb
	rlca                                             ; $6ca0: $07
	db $f4                                           ; $6ca1: $f4
	rrca                                             ; $6ca2: $0f
	db $eb                                           ; $6ca3: $eb
	inc e                                            ; $6ca4: $1c
	rst SubAFromHL                                          ; $6ca5: $d7
	jr c, jr_029_6c3f                                ; $6ca6: $38 $97

	ld a, b                                          ; $6ca8: $78
	add hl, hl                                       ; $6ca9: $29
	rst $38                                          ; $6caa: $ff
	ld e, a                                          ; $6cab: $5f
	and $bb                                          ; $6cac: $e6 $bb
	add $81                                          ; $6cae: $c6 $81
	add c                                            ; $6cb0: $81
	cp $fe                                           ; $6cb1: $fe $fe
	scf                                              ; $6cb3: $37
	ld sp, hl                                        ; $6cb4: $f9
	ret nc                                           ; $6cb5: $d0

	ld h, c                                          ; $6cb6: $61
	and e                                            ; $6cb7: $a3
	rst JumpTable                                          ; $6cb8: $c7
	ld e, h                                          ; $6cb9: $5c
	sbc c                                            ; $6cba: $99
	adc h                                            ; $6cbb: $8c
	cp b                                             ; $6cbc: $b8
	jr nc, jr_029_6c7f                               ; $6cbd: $30 $c0

	ld h, b                                          ; $6cbf: $60
	ret z                                            ; $6cc0: $c8

	ld a, c                                          ; $6cc1: $79
	cpl                                              ; $6cc2: $2f
	sub d                                            ; $6cc3: $92
	ld a, [hl+]                                      ; $6cc4: $2a
	nop                                              ; $6cc5: $00
	add l                                            ; $6cc6: $85
	add b                                            ; $6cc7: $80
	ld [$c1c0], a                                    ; $6cc8: $ea $c0 $c1
	ld b, b                                          ; $6ccb: $40
	ldh [c], a                                       ; $6ccc: $e2
	ld b, b                                          ; $6ccd: $40
	ret nz                                           ; $6cce: $c0

	ld b, b                                          ; $6ccf: $40

jr_029_6cd0:
	jr z, jr_029_6cd0                                ; $6cd0: $28 $fe

	ld a, l                                          ; $6cd2: $7d
	sbc h                                            ; $6cd3: $9c
	sbc [hl]                                         ; $6cd4: $9e
	ld b, b                                          ; $6cd5: $40
	ld [hl], c                                       ; $6cd6: $71
	sbc b                                            ; $6cd7: $98
	sbc h                                            ; $6cd8: $9c
	xor e                                            ; $6cd9: $ab
	nop                                              ; $6cda: $00
	rla                                              ; $6cdb: $17
	ld a, b                                          ; $6cdc: $78
	sub c                                            ; $6cdd: $91
	ld a, [hl]                                       ; $6cde: $7e
	ret c                                            ; $6cdf: $d8

	ld l, [hl]                                       ; $6ce0: $6e
	sub $6f                                          ; $6ce1: $d6 $6f
	cp $7e                                           ; $6ce3: $fe $7e
	ld a, [hl+]                                      ; $6ce5: $2a
	ld e, h                                          ; $6ce6: $5c
	ld l, [hl]                                       ; $6ce7: $6e
	ld a, b                                          ; $6ce8: $78
	ld l, h                                          ; $6ce9: $6c
	sbc b                                            ; $6cea: $98
	ld bc, $3807                                     ; $6ceb: $01 $07 $38
	rrca                                             ; $6cee: $0f
	jr nc, jr_029_6d40                               ; $6cef: $30 $4f

	jr nc, jr_029_6d60                               ; $6cf1: $30 $6d

	adc d                                            ; $6cf3: $8a
	ld [hl], l                                       ; $6cf4: $75
	adc h                                            ; $6cf5: $8c
	ld b, [hl]                                       ; $6cf6: $46
	ret nz                                           ; $6cf7: $c0

	ld b, d                                          ; $6cf8: $42
	or b                                             ; $6cf9: $b0
	ld [hl], d                                       ; $6cfa: $72
	cp d                                             ; $6cfb: $ba
	ld e, e                                          ; $6cfc: $5b
	ldh a, [$72]                                     ; $6cfd: $f0 $72
	cp d                                             ; $6cff: $ba
	ld a, a                                          ; $6d00: $7f
	rst FarCall                                          ; $6d01: $f7
	ld a, a                                          ; $6d02: $7f
	push bc                                          ; $6d03: $c5
	ld l, a                                          ; $6d04: $6f
	ld [$0e9d], a                                    ; $6d05: $ea $9d $0e
	inc c                                            ; $6d08: $0c
	ld e, [hl]                                       ; $6d09: $5e
	and h                                            ; $6d0a: $a4
	ld [hl], a                                       ; $6d0b: $77
	ld [$c496], a                                    ; $6d0c: $ea $96 $c4
	ld a, b                                          ; $6d0f: $78
	ld h, h                                          ; $6d10: $64
	jr c, jr_029_6d77                                ; $6d11: $38 $64

	jr c, @+$36                                      ; $6d13: $38 $34

	ld [$6b04], sp                                   ; $6d15: $08 $04 $6b
	ld [$0896], a                                    ; $6d18: $ea $96 $08
	nop                                              ; $6d1b: $00
	inc c                                            ; $6d1c: $0c
	nop                                              ; $6d1d: $00
	inc b                                            ; $6d1e: $04
	ld [$0804], sp                                   ; $6d1f: $08 $04 $08
	ld e, $7b                                        ; $6d22: $1e $7b
	cp $7e                                           ; $6d24: $fe $7e
	or [hl]                                          ; $6d26: $b6
	add a                                            ; $6d27: $87
	rlca                                             ; $6d28: $07
	nop                                              ; $6d29: $00
	db $ed                                           ; $6d2a: $ed
	or e                                             ; $6d2b: $b3
	ld sp, hl                                        ; $6d2c: $f9
	ld d, a                                          ; $6d2d: $57
	ld [hl], d                                       ; $6d2e: $72
	ld e, l                                          ; $6d2f: $5d
	ld a, [hl]                                       ; $6d30: $7e
	ld sp, $393e                                     ; $6d31: $31 $3e $39
	ld a, $19                                        ; $6d34: $3e $19
	jr c, jr_029_6d47                                ; $6d36: $38 $0f

	inc e                                            ; $6d38: $1c
	rrca                                             ; $6d39: $0f
	rlca                                             ; $6d3a: $07
	db $fc                                           ; $6d3b: $fc
	add a                                            ; $6d3c: $87
	db $fc                                           ; $6d3d: $fc
	sbc a                                            ; $6d3e: $9f
	rst $38                                          ; $6d3f: $ff

jr_029_6d40:
	ld a, c                                          ; $6d40: $79
	ld d, a                                          ; $6d41: $57
	sbc [hl]                                         ; $6d42: $9e
	ldh [$7b], a                                     ; $6d43: $e0 $7b
	inc sp                                           ; $6d45: $33
	sbc h                                            ; $6d46: $9c

jr_029_6d47:
	ret nz                                           ; $6d47: $c0

	ld hl, sp-$08                                    ; $6d48: $f8 $f8
	db $dd                                           ; $6d4a: $dd
	ld bc, $c1df                                     ; $6d4b: $01 $df $c1
	add b                                            ; $6d4e: $80
	ld sp, $0d33                                     ; $6d4f: $31 $33 $0d
	rrca                                             ; $6d52: $0f
	rlca                                             ; $6d53: $07
	inc bc                                           ; $6d54: $03
	rrca                                             ; $6d55: $0f
	ld bc, $010f                                     ; $6d56: $01 $0f $01
	ei                                               ; $6d59: $fb
	ld a, [hl-]                                      ; $6d5a: $3a
	rst SubAFromBC                                          ; $6d5b: $e7

jr_029_6d5c:
	call nz, $0ccf                                   ; $6d5c: $c4 $cf $0c
	adc a                                            ; $6d5f: $8f

jr_029_6d60:
	ld a, [bc]                                       ; $6d60: $0a
	sbc a                                            ; $6d61: $9f
	db $10                                           ; $6d62: $10
	ccf                                              ; $6d63: $3f
	jr nc, jr_029_6de4                               ; $6d64: $30 $7e

	ld c, c                                          ; $6d66: $49
	rst $38                                          ; $6d67: $ff
	ret z                                            ; $6d68: $c8

	ld [hl], a                                       ; $6d69: $77
	ld a, [$fe25]                                    ; $6d6a: $fa $25 $fe
	and a                                            ; $6d6d: $a7
	add b                                            ; $6d6e: $80
	ld a, h                                          ; $6d6f: $7c

jr_029_6d70:
	rst JumpTable                                          ; $6d70: $c7
	ld a, b                                          ; $6d71: $78
	rst JumpTable                                          ; $6d72: $c7
	ld hl, sp-$19                                    ; $6d73: $f8 $e7
	sbc b                                            ; $6d75: $98
	rst SubAFromBC                                          ; $6d76: $e7

jr_029_6d77:
	jr jr_029_6d70                                   ; $6d77: $18 $f7

	ld [$07f8], sp                                   ; $6d79: $08 $f8 $07
	ld sp, hl                                        ; $6d7c: $f9
	rlca                                             ; $6d7d: $07
	ldh a, [c]                                       ; $6d7e: $f2
	rrca                                             ; $6d7f: $0f
	push hl                                          ; $6d80: $e5
	ld e, $e5                                        ; $6d81: $1e $e5
	ld e, $cb                                        ; $6d83: $1e $cb
	ccf                                              ; $6d85: $3f
	adc $39                                          ; $6d86: $ce $39
	sub e                                            ; $6d88: $93
	ld a, l                                          ; $6d89: $7d
	rst SubAFromHL                                          ; $6d8a: $d7
	db $ed                                           ; $6d8b: $ed
	ld l, [hl]                                       ; $6d8c: $6e
	cp e                                             ; $6d8d: $bb
	sub b                                            ; $6d8e: $90
	or $1c                                           ; $6d8f: $f6 $1c
	ld hl, sp+$38                                    ; $6d91: $f8 $38
	ldh a, [$61]                                     ; $6d93: $f0 $61
	ld h, l                                          ; $6d95: $65
	jp nz, $84ce                                     ; $6d96: $c2 $ce $84

	ret c                                            ; $6d99: $d8

	jr jr_029_6d5c                                   ; $6d9a: $18 $c0

	add b                                            ; $6d9c: $80
	ld bc, $017a                                     ; $6d9d: $01 $7a $01
	ld a, [hl]                                       ; $6da0: $7e
	halt                                             ; $6da1: $76
	sbc e                                            ; $6da2: $9b
	add e                                            ; $6da3: $83
	nop                                              ; $6da4: $00
	ld [bc], a                                       ; $6da5: $02
	ld bc, $2e75                                     ; $6da6: $01 $75 $2e
	sbc [hl]                                         ; $6da9: $9e
	jp nz, $9977                                     ; $6daa: $c2 $77 $99

	rst SubAFromDE                                          ; $6dad: $df
	ld b, b                                          ; $6dae: $40
	ld [hl], a                                       ; $6daf: $77
	ei                                               ; $6db0: $fb
	ld [hl], e                                       ; $6db1: $73
	cp $9e                                           ; $6db2: $fe $9e
	dec hl                                           ; $6db4: $2b
	ld a, c                                          ; $6db5: $79
	sub b                                            ; $6db6: $90
	sbc d                                            ; $6db7: $9a
	and a                                            ; $6db8: $a7
	nop                                              ; $6db9: $00
	rlca                                             ; $6dba: $07
	nop                                              ; $6dbb: $00
	rrca                                             ; $6dbc: $0f
	ld a, e                                          ; $6dbd: $7b
	cp $9b                                           ; $6dbe: $fe $9b
	rla                                              ; $6dc0: $17
	ld [$100f], sp                                   ; $6dc1: $08 $0f $10
	ld c, a                                          ; $6dc4: $4f
	ld [bc], a                                       ; $6dc5: $02
	ld a, [hl]                                       ; $6dc6: $7e
	ld l, [hl]                                       ; $6dc7: $6e
	ld a, [hl]                                       ; $6dc8: $7e
	adc $9a                                          ; $6dc9: $ce $9a
	ldh [c], a                                       ; $6dcb: $e2
	ld bc, $03e0                                     ; $6dcc: $01 $e0 $03
	call nz, $8a79                                   ; $6dcf: $c4 $79 $8a
	sbc [hl]                                         ; $6dd2: $9e
	add c                                            ; $6dd3: $81
	ld [hl], c                                       ; $6dd4: $71
	adc h                                            ; $6dd5: $8c
	ld [hl], h                                       ; $6dd6: $74
	ld e, h                                          ; $6dd7: $5c
	ld a, a                                          ; $6dd8: $7f
	cp $06                                           ; $6dd9: $fe $06
	jp z, $fe03                                      ; $6ddb: $ca $03 $fe

	ld h, e                                          ; $6dde: $63
	cp $56                                           ; $6ddf: $fe $56
	and h                                            ; $6de1: $a4
	ld [hl], d                                       ; $6de2: $72
	and b                                            ; $6de3: $a0

jr_029_6de4:
	ld e, d                                          ; $6de4: $5a
	and h                                            ; $6de5: $a4
	ld l, c                                          ; $6de6: $69
	jr nc, jr_029_6e3b                               ; $6de7: $30 $52

	adc [hl]                                         ; $6de9: $8e
	sbc c                                            ; $6dea: $99
	dec e                                            ; $6deb: $1d
	rrca                                             ; $6dec: $0f
	ld e, $0f                                        ; $6ded: $1e $0f
	rlca                                             ; $6def: $07
	ld [bc], a                                       ; $6df0: $02
	ld e, a                                          ; $6df1: $5f
	ld [$079d], a                                    ; $6df2: $ea $9d $07
	add a                                            ; $6df5: $87
	ld l, l                                          ; $6df6: $6d

jr_029_6df7:
	inc hl                                           ; $6df7: $23
	ld h, h                                          ; $6df8: $64
	ld d, a                                          ; $6df9: $57
	add b                                            ; $6dfa: $80
	rst SubAFromDE                                          ; $6dfb: $df
	ld bc, $c2ff                                     ; $6dfc: $01 $ff $c2
	ld a, a                                          ; $6dff: $7f
	ld a, [hl-]                                      ; $6e00: $3a
	ccf                                              ; $6e01: $3f
	ld h, $3f                                        ; $6e02: $26 $3f
	ld [de], a                                       ; $6e04: $12
	scf                                              ; $6e05: $37
	ld bc, $0117                                     ; $6e06: $01 $17 $01
	inc de                                           ; $6e09: $13
	ld bc, $84ff                                     ; $6e0a: $01 $ff $84
	rst $38                                          ; $6e0d: $ff
	call nz, Call_029_48ff                           ; $6e0e: $c4 $ff $48
	rst $38                                          ; $6e11: $ff
	jr nc, jr_029_6df7                               ; $6e12: $30 $e3

	inc a                                            ; $6e14: $3c
	rst JumpTable                                          ; $6e15: $c7
	ld a, b                                          ; $6e16: $78
	adc a                                            ; $6e17: $8f
	ldh a, [rSB]                                     ; $6e18: $f0 $01
	sbc [hl]                                         ; $6e1a: $9e
	cp $57                                           ; $6e1b: $fe $57
	inc h                                            ; $6e1d: $24
	ld [hl], l                                       ; $6e1e: $75
	sub b                                            ; $6e1f: $90
	adc h                                            ; $6e20: $8c
	sub c                                            ; $6e21: $91
	ld a, a                                          ; $6e22: $7f
	sbc a                                            ; $6e23: $9f

jr_029_6e24:
	ld a, a                                          ; $6e24: $7f
	inc sp                                           ; $6e25: $33
	rst $38                                          ; $6e26: $ff
	ld [hl+], a                                      ; $6e27: $22
	cp $2c                                           ; $6e28: $fe $2c
	db $fc                                           ; $6e2a: $fc
	ld c, b                                          ; $6e2b: $48
	ld sp, hl                                        ; $6e2c: $f9
	ld [hl], c                                       ; $6e2d: $71
	di                                               ; $6e2e: $f3
	ld d, d                                          ; $6e2f: $52
	or $f0                                           ; $6e30: $f6 $f0
	jr nz, jr_029_6e74                               ; $6e32: $20 $40

	ld a, b                                          ; $6e34: $78
	ld [hl], d                                       ; $6e35: $72
	ld a, l                                          ; $6e36: $7d
	or b                                             ; $6e37: $b0
	sbc [hl]                                         ; $6e38: $9e
	ld b, b                                          ; $6e39: $40
	ld l, b                                          ; $6e3a: $68

jr_029_6e3b:
	ld l, l                                          ; $6e3b: $6d
	ld a, a                                          ; $6e3c: $7f
	and d                                            ; $6e3d: $a2
	ld a, [hl]                                       ; $6e3e: $7e
	ldh [$7e], a                                     ; $6e3f: $e0 $7e
	ret z                                            ; $6e41: $c8

	sub d                                            ; $6e42: $92
	rlca                                             ; $6e43: $07
	ld bc, $030d                                     ; $6e44: $01 $0d $03
	ld e, $02                                        ; $6e47: $1e $02
	ld a, [hl-]                                      ; $6e49: $3a
	ld b, $74                                        ; $6e4a: $06 $74

Call_029_6e4c:
	inc c                                            ; $6e4c: $0c
	add b                                            ; $6e4d: $80
	add b                                            ; $6e4e: $80
	add h                                            ; $6e4f: $84
	ld a, e                                          ; $6e50: $7b
	cp $96                                           ; $6e51: $fe $96
	xor b                                            ; $6e53: $a8
	nop                                              ; $6e54: $00
	ld e, d                                          ; $6e55: $5a
	nop                                              ; $6e56: $00
	ld e, $00                                        ; $6e57: $1e $00
	inc sp                                           ; $6e59: $33
	nop                                              ; $6e5a: $00
	ld sp, $9079                                     ; $6e5b: $31 $79 $90
	ld a, a                                          ; $6e5e: $7f
	cp $81                                           ; $6e5f: $fe $81
	ld e, a                                          ; $6e61: $5f
	jr nz, jr_029_6ee2                               ; $6e62: $20 $7e

	ld bc, $00ff                                     ; $6e64: $01 $ff $00
	cp d                                             ; $6e67: $ba
	ld b, l                                          ; $6e68: $45
	ld a, a                                          ; $6e69: $7f
	add b                                            ; $6e6a: $80
	ld [$ff15], a                                    ; $6e6b: $ea $15 $ff
	nop                                              ; $6e6e: $00
	ld [$fc15], a                                    ; $6e6f: $ea $15 $fc
	ld [bc], a                                       ; $6e72: $02
	xor d                                            ; $6e73: $aa

jr_029_6e74:
	ld d, h                                          ; $6e74: $54
	or $08                                           ; $6e75: $f6 $08
	xor b                                            ; $6e77: $a8
	ld d, h                                          ; $6e78: $54
	ret nc                                           ; $6e79: $d0

	jr z, jr_029_6e24                                ; $6e7a: $28 $a8

	ld d, h                                          ; $6e7c: $54
	inc bc                                           ; $6e7d: $03
	inc e                                            ; $6e7e: $1c
	ld a, b                                          ; $6e7f: $78
	ld e, d                                          ; $6e80: $5a
	sbc [hl]                                         ; $6e81: $9e
	jr c, jr_029_6ef9                                ; $6e82: $38 $75

	adc d                                            ; $6e84: $8a
	ld l, l                                          ; $6e85: $6d
	adc h                                            ; $6e86: $8c
	ld [bc], a                                       ; $6e87: $02
	xor $03                                          ; $6e88: $ee $03
	cp $03                                           ; $6e8a: $fe $03
	cp $13                                           ; $6e8c: $fe $13
	cp $56                                           ; $6e8e: $fe $56
	and h                                            ; $6e90: $a4
	ld [hl], d                                       ; $6e91: $72
	and b                                            ; $6e92: $a0
	ld a, [hl]                                       ; $6e93: $7e
	cp d                                             ; $6e94: $ba
	ld a, h                                          ; $6e95: $7c
	rst SubAFromDE                                          ; $6e96: $df
	ld [hl], d                                       ; $6e97: $72
	and h                                            ; $6e98: $a4
	ld a, [hl]                                       ; $6e99: $7e
	ldh a, [c]                                       ; $6e9a: $f2
	ld [hl], a                                       ; $6e9b: $77
	ldh a, [$7f]                                     ; $6e9c: $f0 $7f
	inc d                                            ; $6e9e: $14
	ld l, d                                          ; $6e9f: $6a
	and h                                            ; $6ea0: $a4
	ld l, e                                          ; $6ea1: $6b
	ld [$fa7f], a                                    ; $6ea2: $ea $7f $fa
	ld a, [hl]                                       ; $6ea5: $7e
	ld de, $209b                                     ; $6ea6: $11 $9b $20
	rra                                              ; $6ea9: $1f
	inc b                                            ; $6eaa: $04
	inc bc                                           ; $6eab: $03
	ld a, e                                          ; $6eac: $7b
	jp hl                                            ; $6ead: $e9


	ld [hl], d                                       ; $6eae: $72
	adc [hl]                                         ; $6eaf: $8e
	sbc l                                            ; $6eb0: $9d
	ld [hl], b                                       ; $6eb1: $70
	adc a                                            ; $6eb2: $8f
	ld h, a                                          ; $6eb3: $67
	push bc                                          ; $6eb4: $c5
	sub d                                            ; $6eb5: $92
	ld hl, $091f                                     ; $6eb6: $21 $1f $09
	rlca                                             ; $6eb9: $07
	ld bc, $9400                                     ; $6eba: $01 $00 $94
	db $fc                                           ; $6ebd: $fc
	sbc b                                            ; $6ebe: $98
	ld hl, sp-$50                                    ; $6ebf: $f8 $b0
	ldh a, [$c0]                                     ; $6ec1: $f0 $c0
	ld a, d                                          ; $6ec3: $7a
	call z, Call_029_75f7                            ; $6ec4: $cc $f7 $75
	adc [hl]                                         ; $6ec7: $8e
	ld a, [hl]                                       ; $6ec8: $7e
	jp z, $fe77                                      ; $6ec9: $ca $77 $fe

	ld a, l                                          ; $6ecc: $7d
	adc l                                            ; $6ecd: $8d
	add b                                            ; $6ece: $80
	db $e4                                           ; $6ecf: $e4
	inc e                                            ; $6ed0: $1c
	call $8a38                                       ; $6ed1: $cd $38 $8a
	ld a, h                                          ; $6ed4: $7c
	sbc b                                            ; $6ed5: $98
	ld a, a                                          ; $6ed6: $7f
	sbc [hl]                                         ; $6ed7: $9e
	ld a, a                                          ; $6ed8: $7f
	or a                                             ; $6ed9: $b7
	ld l, a                                          ; $6eda: $6f
	xor c                                            ; $6edb: $a9
	ld h, e                                          ; $6edc: $63
	push af                                          ; $6edd: $f5
	ld b, e                                          ; $6ede: $43
	xor e                                            ; $6edf: $ab
	nop                                              ; $6ee0: $00
	ld d, [hl]                                       ; $6ee1: $56

jr_029_6ee2:
	ld bc, $02ad                                     ; $6ee2: $01 $ad $02
	ld a, h                                          ; $6ee5: $7c
	db $e3                                           ; $6ee6: $e3
	ld e, c                                          ; $6ee7: $59
	and $c2                                          ; $6ee8: $e6 $c2
	db $fd                                           ; $6eea: $fd
	ld sp, hl                                        ; $6eeb: $f9
	cp $d2                                           ; $6eec: $fe $d2
	sbc b                                            ; $6eee: $98
	cp l                                             ; $6eef: $bd
	push de                                          ; $6ef0: $d5
	ld a, [hl+]                                      ; $6ef1: $2a
	xor d                                            ; $6ef2: $aa
	ld d, l                                          ; $6ef3: $55
	ld d, l                                          ; $6ef4: $55
	xor d                                            ; $6ef5: $aa
	ld h, a                                          ; $6ef6: $67
	db $fc                                           ; $6ef7: $fc
	adc l                                            ; $6ef8: $8d

jr_029_6ef9:
	xor b                                            ; $6ef9: $a8
	ld d, a                                          ; $6efa: $57
	ld d, b                                          ; $6efb: $50
	xor b                                            ; $6efc: $a8
	and b                                            ; $6efd: $a0
	ld d, c                                          ; $6efe: $51
	ld d, b                                          ; $6eff: $50
	and c                                            ; $6f00: $a1
	and b                                            ; $6f01: $a0
	ld b, c                                          ; $6f02: $41
	ld b, b                                          ; $6f03: $40
	and e                                            ; $6f04: $a3
	add b                                            ; $6f05: $80
	ld b, e                                          ; $6f06: $43
	ld b, b                                          ; $6f07: $40
	add a                                            ; $6f08: $87
	ld bc, $6cc6                                     ; $6f09: $01 $c6 $6c
	ld e, d                                          ; $6f0c: $5a
	ld bc, $038c                                     ; $6f0d: $01 $8c $03
	cp $03                                           ; $6f10: $fe $03
	cp $03                                           ; $6f12: $fe $03
	cp $03                                           ; $6f14: $fe $03
	cp $69                                           ; $6f16: $fe $69
	xor d                                            ; $6f18: $aa
	ld c, c                                          ; $6f19: $49
	jr nc, @+$5c                                     ; $6f1a: $30 $5a

	and h                                            ; $6f1c: $a4
	ld [hl], e                                       ; $6f1d: $73
	ldh a, [$7e]                                     ; $6f1e: $f0 $7e
	ret c                                            ; $6f20: $d8

	sbc [hl]                                         ; $6f21: $9e
	ldh [$65], a                                     ; $6f22: $e0 $65
	ld [hl-], a                                      ; $6f24: $32
	ld [hl], a                                       ; $6f25: $77
	ld [$4865], a                                    ; $6f26: $ea $65 $48
	ld h, a                                          ; $6f29: $67
	ld [$0596], a                                    ; $6f2a: $ea $96 $05
	ld [bc], a                                       ; $6f2d: $02
	ld bc, $0906                                     ; $6f2e: $01 $06 $09
	ld b, $11                                        ; $6f31: $06 $11
	ld c, $05                                        ; $6f33: $0e $05
	ld [hl], l                                       ; $6f35: $75
	inc e                                            ; $6f36: $1c
	rst $38                                          ; $6f37: $ff
	add a                                            ; $6f38: $87
	ldh [$ed], a                                     ; $6f39: $e0 $ed
	ld b, e                                          ; $6f3b: $43
	db $d3                                           ; $6f3c: $d3
	ld b, a                                          ; $6f3d: $47
	xor d                                            ; $6f3e: $aa
	add a                                            ; $6f3f: $87
	rst SubAFromHL                                          ; $6f40: $d7
	adc [hl]                                         ; $6f41: $8e
	or l                                             ; $6f42: $b5
	adc [hl]                                         ; $6f43: $8e
	ld c, [hl]                                       ; $6f44: $4e
	inc e                                            ; $6f45: $1c
	add hl, bc                                       ; $6f46: $09
	inc e                                            ; $6f47: $1c
	inc bc                                           ; $6f48: $03
	inc b                                            ; $6f49: $04
	ld h, l                                          ; $6f4a: $65
	sbc d                                            ; $6f4b: $9a
	xor d                                            ; $6f4c: $aa
	dec d                                            ; $6f4d: $15
	ld d, l                                          ; $6f4e: $55
	ld a, [hl+]                                      ; $6f4f: $2a
	ld [$fc7b], a                                    ; $6f50: $ea $7b $fc
	ld l, [hl]                                       ; $6f53: $6e
	ret nc                                           ; $6f54: $d0

	ld a, a                                          ; $6f55: $7f
	db $fc                                           ; $6f56: $fc
	adc e                                            ; $6f57: $8b
	and b                                            ; $6f58: $a0
	ld e, a                                          ; $6f59: $5f
	ld d, l                                          ; $6f5a: $55
	xor d                                            ; $6f5b: $aa
	add b                                            ; $6f5c: $80
	ld a, a                                          ; $6f5d: $7f
	ld d, l                                          ; $6f5e: $55
	xor d                                            ; $6f5f: $aa
	nop                                              ; $6f60: $00
	cp $54                                           ; $6f61: $fe $54
	xor d                                            ; $6f63: $aa
	nop                                              ; $6f64: $00
	db $fc                                           ; $6f65: $fc
	ld bc, $018e                                     ; $6f66: $01 $8e $01
	adc [hl]                                         ; $6f69: $8e
	inc bc                                           ; $6f6a: $03
	inc c                                            ; $6f6b: $0c
	ld a, c                                          ; $6f6c: $79
	adc h                                            ; $6f6d: $8c
	sbc [hl]                                         ; $6f6e: $9e
	jr jr_029_6fde                                   ; $6f6f: $18 $6d

	adc h                                            ; $6f71: $8c
	inc bc                                           ; $6f72: $03
	ld c, [hl]                                       ; $6f73: $4e
	inc bc                                           ; $6f74: $03
	cp $03                                           ; $6f75: $fe $03
	cp $03                                           ; $6f77: $fe $03
	cp $03                                           ; $6f79: $fe $03
	cp $03                                           ; $6f7b: $fe $03
	cp $1f                                           ; $6f7d: $fe $1f
	cp $56                                           ; $6f7f: $fe $56
	and h                                            ; $6f81: $a4
	ld [hl], d                                       ; $6f82: $72
	and b                                            ; $6f83: $a0
	ld e, d                                          ; $6f84: $5a
	and h                                            ; $6f85: $a4
	ld [hl], e                                       ; $6f86: $73
	ldh a, [rBCPD]                                   ; $6f87: $f0 $69
	ld c, b                                          ; $6f89: $48
	ld [hl], a                                       ; $6f8a: $77
	ld [$f097], a                                    ; $6f8b: $ea $97 $f0
	rrca                                             ; $6f8e: $0f
	cp $01                                           ; $6f8f: $fe $01
	push de                                          ; $6f91: $d5
	ld a, [hl+]                                      ; $6f92: $2a
	jr nz, @+$21                                     ; $6f93: $20 $1f

	ld a, d                                          ; $6f95: $7a
	and h                                            ; $6f96: $a4
	ld a, l                                          ; $6f97: $7d
	ld e, a                                          ; $6f98: $5f
	ld l, e                                          ; $6f99: $6b
	ld [$5499], a                                    ; $6f9a: $ea $99 $54
	xor b                                            ; $6f9d: $a8
	nop                                              ; $6f9e: $00
	ld hl, sp+$50                                    ; $6f9f: $f8 $50
	xor b                                            ; $6fa1: $a8
	ld a, e                                          ; $6fa2: $7b
	db $f4                                           ; $6fa3: $f4
	ld a, h                                          ; $6fa4: $7c
	dec [hl]                                         ; $6fa5: $35
	ld [hl], l                                       ; $6fa6: $75
	ld c, e                                          ; $6fa7: $4b
	sbc [hl]                                         ; $6fa8: $9e
	add e                                            ; $6fa9: $83
	ld a, b                                          ; $6faa: $78
	ld e, d                                          ; $6fab: $5a
	sbc [hl]                                         ; $6fac: $9e
	ldh [$5d], a                                     ; $6fad: $e0 $5d
	adc h                                            ; $6faf: $8c
	ld bc, $238a                                     ; $6fb0: $01 $8a $23
	cp $97                                           ; $6fb3: $fe $97
	pop af                                           ; $6fb5: $f1
	nop                                              ; $6fb6: $00
	ldh [$0e], a                                     ; $6fb7: $e0 $0e
	ret nz                                           ; $6fb9: $c0

	ld de, $17c0                                     ; $6fba: $11 $c0 $17
	ld h, a                                          ; $6fbd: $67
	ldh a, [$97]                                     ; $6fbe: $f0 $97
	db $ec                                           ; $6fc0: $ec
	nop                                              ; $6fc1: $00
	ld b, b                                          ; $6fc2: $40
	adc e                                            ; $6fc3: $8b
	ld bc, $206a                                     ; $6fc4: $01 $6a $20
	ld c, h                                          ; $6fc7: $4c
	ld h, a                                          ; $6fc8: $67
	ldh a, [$97]                                     ; $6fc9: $f0 $97
	rst SubAFromBC                                          ; $6fcb: $e7
	nop                                              ; $6fcc: $00
	ld bc, $095a                                     ; $6fcd: $01 $5a $09
	ld d, d                                          ; $6fd0: $52
	nop                                              ; $6fd1: $00
	ld h, d                                          ; $6fd2: $62
	ld h, a                                          ; $6fd3: $67
	ldh a, [$97]                                     ; $6fd4: $f0 $97
	cp l                                             ; $6fd6: $bd
	nop                                              ; $6fd7: $00
	jr jr_029_6ffb                                   ; $6fd8: $18 $21

	jr @+$27                                         ; $6fda: $18 $25

	inc e                                            ; $6fdc: $1c
	and c                                            ; $6fdd: $a1

jr_029_6fde:
	ld h, a                                          ; $6fde: $67
	ldh a, [$97]                                     ; $6fdf: $f0 $97
	sbc h                                            ; $6fe1: $9c
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	ld l, e                                          ; $6fe4: $6b
	ld hl, $004a                                     ; $6fe5: $21 $4a $00
	adc h                                            ; $6fe8: $8c
	ld c, a                                          ; $6fe9: $4f
	ret nc                                           ; $6fea: $d0

	sbc [hl]                                         ; $6feb: $9e
	ld bc, $d063                                     ; $6fec: $01 $63 $d0
	sbc e                                            ; $6fef: $9b
	ld l, h                                          ; $6ff0: $6c
	nop                                              ; $6ff1: $00
	jr nz, jr_029_703f                               ; $6ff2: $20 $4b

	ld a, e                                          ; $6ff4: $7b
	xor $9e                                          ; $6ff5: $ee $9e
	ld [de], a                                       ; $6ff7: $12
	ld h, a                                          ; $6ff8: $67
	ldh a, [$9b]                                     ; $6ff9: $f0 $9b

jr_029_6ffb:
	db $db                                           ; $6ffb: $db
	nop                                              ; $6ffc: $00
	ld bc, $7b4a                                     ; $6ffd: $01 $4a $7b
	cp $9e                                           ; $7000: $fe $9e
	ld d, d                                          ; $7002: $52
	ld h, a                                          ; $7003: $67
	ldh a, [$97]                                     ; $7004: $f0 $97
	sub a                                            ; $7006: $97
	nop                                              ; $7007: $00
	add b                                            ; $7008: $80
	ld [de], a                                       ; $7009: $12
	nop                                              ; $700a: $00
	ld d, b                                          ; $700b: $50
	nop                                              ; $700c: $00
	ld d, l                                          ; $700d: $55

jr_029_700e:
	ld h, a                                          ; $700e: $67
	ldh a, [$97]                                     ; $700f: $f0 $97
	ld e, $40                                        ; $7011: $1e $40
	ld c, $50                                        ; $7013: $0e $50
	inc c                                            ; $7015: $0c
	ld d, c                                          ; $7016: $51
	inc c                                            ; $7017: $0c
	ld d, c                                          ; $7018: $51
	ld h, a                                          ; $7019: $67
	ldh a, [$9d]                                     ; $701a: $f0 $9d
	ld e, l                                          ; $701c: $5d
	nop                                              ; $701d: $00
	ld [hl], a                                       ; $701e: $77
	ldh a, [c]                                       ; $701f: $f2
	ld e, a                                          ; $7020: $5f
	ldh a, [$97]                                     ; $7021: $f0 $97
	db $e3                                           ; $7023: $e3

jr_029_7024:
	nop                                              ; $7024: $00
	ldh [$0d], a                                     ; $7025: $e0 $0d
	db $e4                                           ; $7027: $e4
	add hl, bc                                       ; $7028: $09
	ldh [$03], a                                     ; $7029: $e0 $03
	ld h, a                                          ; $702b: $67
	ldh a, [$98]                                     ; $702c: $f0 $98
	ld h, [hl]                                       ; $702e: $66
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	ld e, d                                          ; $7031: $5a
	ld [$0056], sp                                   ; $7032: $08 $56 $00
	ld h, e                                          ; $7035: $63
	or b                                             ; $7036: $b0
	sub a                                            ; $7037: $97
	ret nc                                           ; $7038: $d0

	ld bc, $9b40                                     ; $7039: $01 $40 $9b
	ld c, c                                          ; $703c: $49
	sub d                                            ; $703d: $92
	add hl, bc                                       ; $703e: $09

jr_029_703f:
	ld [de], a                                       ; $703f: $12
	ld l, [hl]                                       ; $7040: $6e
	cp d                                             ; $7041: $ba
	ld a, a                                          ; $7042: $7f
	ldh a, [$97]                                     ; $7043: $f0 $97
	sbc [hl]                                         ; $7045: $9e
	nop                                              ; $7046: $00

jr_029_7047:
	inc b                                            ; $7047: $04
	ld l, c                                          ; $7048: $69
	inc h                                            ; $7049: $24
	ld e, c                                          ; $704a: $59
	inc e                                            ; $704b: $1c
	add b                                            ; $704c: $80
	ld [hl], a                                       ; $704d: $77
	db $e3                                           ; $704e: $e3
	sub e                                            ; $704f: $93
	ld bc, $c1fe                                     ; $7050: $01 $fe $c1
	ld a, $63                                        ; $7053: $3e $63
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	xor [hl]                                         ; $7057: $ae
	add [hl]                                         ; $7058: $86
	jr z, jr_029_705b                                ; $7059: $28 $00

jr_029_705b:
	ld h, e                                          ; $705b: $63
	ld h, a                                          ; $705c: $67
	ret nc                                           ; $705d: $d0

	ld a, [hl]                                       ; $705e: $7e
	or c                                             ; $705f: $b1
	sbc c                                            ; $7060: $99
	nop                                              ; $7061: $00
	rst SubAFromHL                                          ; $7062: $d7
	ld b, e                                          ; $7063: $43
	or h                                             ; $7064: $b4
	db $10                                           ; $7065: $10
	ld hl, $f067                                     ; $7066: $21 $67 $f0
	ld a, a                                          ; $7069: $7f
	add $7f                                          ; $706a: $c6 $7f
	ld [bc], a                                       ; $706c: $02
	ld a, e                                          ; $706d: $7b
	jr nc, jr_029_700e                               ; $706e: $30 $9e

	ld a, [de]                                       ; $7070: $1a
	ld h, d                                          ; $7071: $62
	ld e, b                                          ; $7072: $58
	sbc b                                            ; $7073: $98
	ld b, h                                          ; $7074: $44
	nop                                              ; $7075: $00
	ld e, l                                          ; $7076: $5d
	inc c                                            ; $7077: $0c
	ld d, c                                          ; $7078: $51
	nop                                              ; $7079: $00
	ld b, l                                          ; $707a: $45
	ld h, a                                          ; $707b: $67
	ldh a, [hDisp1_LCDC]                                     ; $707c: $f0 $8f
	ld a, a                                          ; $707e: $7f
	nop                                              ; $707f: $00
	ccf                                              ; $7080: $3f
	add b                                            ; $7081: $80
	sbc a                                            ; $7082: $9f
	jr nz, jr_029_7024                               ; $7083: $20 $9f

	jr nz, jr_029_7047                               ; $7085: $20 $c0

	ld de, $0ee0                                     ; $7087: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $708a: $e0 $11
	ldh a, [rIF]                                     ; $708c: $f0 $0f
	ld h, a                                          ; $708e: $67
	add sp, -$69                                     ; $708f: $e8 $97
	inc h                                            ; $7091: $24
	ld c, e                                          ; $7092: $4b
	ld hl, $60ca                                     ; $7093: $21 $ca $60
	adc h                                            ; $7096: $8c
	db $e4                                           ; $7097: $e4
	dec de                                           ; $7098: $1b
	ld h, a                                          ; $7099: $67
	ldh a, [$97]                                     ; $709a: $f0 $97
	jr nz, @+$5c                                     ; $709c: $20 $5a

	ld [$0052], sp                                   ; $709e: $08 $52 $00
	rst SubAFromBC                                          ; $70a1: $e7
	ld h, e                                          ; $70a2: $63
	sbc h                                            ; $70a3: $9c
	ld h, a                                          ; $70a4: $67
	ldh a, [$7e]                                     ; $70a5: $f0 $7e
	adc $97                                          ; $70a7: $ce $97
	inc c                                            ; $70a9: $0c
	ld de, $b500                                     ; $70aa: $11 $00 $b5
	sub b                                            ; $70ad: $90
	ld h, a                                          ; $70ae: $67
	di                                               ; $70af: $f3
	inc c                                            ; $70b0: $0c
	ld l, a                                          ; $70b1: $6f
	ldh a, [$9e]                                     ; $70b2: $f0 $9e
	add h                                            ; $70b4: $84
	halt                                             ; $70b5: $76
	jp z, $9c9c                                      ; $70b6: $ca $9c $9c

	adc h                                            ; $70b9: $8c
	ld [hl], e                                       ; $70ba: $73
	ld h, a                                          ; $70bb: $67
	ldh [$9e], a                                     ; $70bc: $e0 $9e
	ld hl, $ca76                                     ; $70be: $21 $76 $ca
	sbc [hl]                                         ; $70c1: $9e
	and $5f                                          ; $70c2: $e6 $5f
	ret nc                                           ; $70c4: $d0

	ld [hl], a                                       ; $70c5: $77
	ld a, d                                          ; $70c6: $7a
	ld a, [hl]                                       ; $70c7: $7e
	ld a, d                                          ; $70c8: $7a
	sbc l                                            ; $70c9: $9d
	inc h                                            ; $70ca: $24
	db $db                                           ; $70cb: $db
	ld h, e                                          ; $70cc: $63
	ld a, b                                          ; $70cd: $78
	ld a, a                                          ; $70ce: $7f
	or d                                             ; $70cf: $b2
	ld a, a                                          ; $70d0: $7f
	xor [hl]                                         ; $70d1: $ae
	sbc h                                            ; $70d2: $9c
	jp nc, $b748                                     ; $70d3: $d2 $48 $b7

	ld h, e                                          ; $70d6: $63
	ldh [$98], a                                     ; $70d7: $e0 $98
	ld d, $03                                        ; $70d9: $16 $03
	call nc, $9443                                   ; $70db: $d4 $43 $94
	ld b, e                                          ; $70de: $43
	cp h                                             ; $70df: $bc
	ld h, a                                          ; $70e0: $67
	ldh a, [$97]                                     ; $70e1: $f0 $97
	inc c                                            ; $70e3: $0c
	ld d, b                                          ; $70e4: $50
	ld [$0953], sp                                   ; $70e5: $08 $53 $09
	ld d, d                                          ; $70e8: $52
	add hl, bc                                       ; $70e9: $09
	or $63                                           ; $70ea: $f6 $63
	ldh a, [$7a]                                     ; $70ec: $f0 $7a
	call z, $447b                                    ; $70ee: $cc $7b $44
	rst SubAFromDE                                          ; $70f1: $df
	rst $38                                          ; $70f2: $ff
	ld l, e                                          ; $70f3: $6b
	ldh a, [rPCM12]                                  ; $70f4: $f0 $76
	jp z, $249d                                      ; $70f6: $ca $9d $24

	ld c, c                                          ; $70f9: $49
	ld e, e                                          ; $70fa: $5b
	or b                                             ; $70fb: $b0
	ld [hl], a                                       ; $70fc: $77
	ld h, b                                          ; $70fd: $60
	sbc h                                            ; $70fe: $9c
	ld h, [hl]                                       ; $70ff: $66
	ld [hl+], a                                      ; $7100: $22
	db $dd                                           ; $7101: $dd
	ld h, e                                          ; $7102: $63
	ld [$d29c], sp                                   ; $7103: $08 $9c $d2
	ld c, c                                          ; $7106: $49

Call_029_7107:
	sub d                                            ; $7107: $92

Call_029_7108:
	ld a, e                                          ; $7108: $7b
	cp $9e                                           ; $7109: $fe $9e
	or [hl]                                          ; $710b: $b6
	ld h, a                                          ; $710c: $67
	ldh a, [$99]                                     ; $710d: $f0 $99
	add h                                            ; $710f: $84
	ld l, c                                          ; $7110: $69
	inc h                                            ; $7111: $24
	ld c, c                                          ; $7112: $49
	inc b                                            ; $7113: $04
	sbc c                                            ; $7114: $99
	ld e, a                                          ; $7115: $5f
	ld h, b                                          ; $7116: $60
	sbc [hl]                                         ; $7117: $9e
	ld bc, $ca7a                                     ; $7118: $01 $7a $ca
	sbc e                                            ; $711b: $9b
	add b                                            ; $711c: $80
	inc hl                                           ; $711d: $23
	add c                                            ; $711e: $81
	ld a, [hl]                                       ; $711f: $7e
	ld h, e                                          ; $7120: $63
	ret nz                                           ; $7121: $c0

	ld a, [hl]                                       ; $7122: $7e
	jp z, $949a                                      ; $7123: $ca $9a $94

	nop                                              ; $7126: $00
	ld sp, $ef10                                     ; $7127: $31 $10 $ef
	ld h, e                                          ; $712a: $63
	ldh a, [$79]                                     ; $712b: $f0 $79
	call z, $249d                                    ; $712d: $cc $9d $24
	ld c, b                                          ; $7130: $48
	ld e, e                                          ; $7131: $5b
	and b                                            ; $7132: $a0
	ld a, [hl]                                       ; $7133: $7e
	jp z, $d19a                                      ; $7134: $ca $9a $d1

	ld b, b                                          ; $7137: $40
	add h                                            ; $7138: $84
	ld b, b                                          ; $7139: $40
	cp a                                             ; $713a: $bf
	ld h, a                                          ; $713b: $67
	ldh a, [rPCM12]                                  ; $713c: $f0 $76
	call z, $079b                                    ; $713e: $cc $9b $07
	ld l, b                                          ; $7141: $68
	daa                                              ; $7142: $27
	ret c                                            ; $7143: $d8

	ld h, a                                          ; $7144: $67
	ldh a, [$3b]                                     ; $7145: $f0 $3b
	nop                                              ; $7147: $00
	sbc e                                            ; $7148: $9b
	jr nc, jr_029_714b                               ; $7149: $30 $00

jr_029_714b:
	rlca                                             ; $714b: $07
	halt                                             ; $714c: $76
	db $dd                                           ; $714d: $dd
	ld h, [hl]                                       ; $714e: $66
	adc e                                            ; $714f: $8b
	nop                                              ; $7150: $00
	inc bc                                           ; $7151: $03
	jr nc, jr_029_7154                               ; $7152: $30 $00

jr_029_7154:
	ld b, e                                          ; $7154: $43
	halt                                             ; $7155: $76
	ld h, [hl]                                       ; $7156: $66
	ld h, e                                          ; $7157: $63
	halt                                             ; $7158: $76
	ld h, [hl]                                       ; $7159: $66
	nop                                              ; $715a: $00
	inc sp                                           ; $715b: $33
	inc sp                                           ; $715c: $33
	nop                                              ; $715d: $00
	ld b, h                                          ; $715e: $44
	scf                                              ; $715f: $37
	ld h, d                                          ; $7160: $62
	inc sp                                           ; $7161: $33
	inc [hl]                                         ; $7162: $34
	ld b, b                                          ; $7163: $40
	ld a, e                                          ; $7164: $7b
	or $9b                                           ; $7165: $f6 $9b
	inc sp                                           ; $7167: $33
	ld b, h                                          ; $7168: $44
	scf                                              ; $7169: $37
	inc hl                                           ; $716a: $23
	ld l, e                                          ; $716b: $6b
	or $df                                           ; $716c: $f6 $df
	inc sp                                           ; $716e: $33
	ld a, a                                          ; $716f: $7f
	or $9c                                           ; $7170: $f6 $9c
	ld b, h                                          ; $7172: $44
	nop                                              ; $7173: $00
	inc bc                                           ; $7174: $03
	jp c, $5f33                                      ; $7175: $da $33 $5f

	or $6b                                           ; $7178: $f6 $6b
	db $e3                                           ; $717a: $e3
	db $dd                                           ; $717b: $dd
	inc sp                                           ; $717c: $33
	ld e, a                                          ; $717d: $5f
	or $d4                                           ; $717e: $f6 $d4
	inc sp                                           ; $7180: $33
	ld [hl], c                                       ; $7181: $71
	add l                                            ; $7182: $85
	reti                                             ; $7183: $d9


	rst $38                                          ; $7184: $ff
	ld sp, hl                                        ; $7185: $f9
	inc bc                                           ; $7186: $03
	ldh a, [$dc]                                     ; $7187: $f0 $dc
	rst $38                                          ; $7189: $ff
	rst SubAFromDE                                          ; $718a: $df
	cp $f9                                           ; $718b: $fe $f9
	sbc h                                            ; $718d: $9c
	ret nz                                           ; $718e: $c0

	add b                                            ; $718f: $80
	add b                                            ; $7190: $80
	ld hl, sp-$68                                    ; $7191: $f8 $98
	inc b                                            ; $7193: $04
	rrca                                             ; $7194: $0f
	rrca                                             ; $7195: $0f
	rra                                              ; $7196: $1f
	rst $38                                          ; $7197: $ff
	rra                                              ; $7198: $1f
	inc bc                                           ; $7199: $03
	or $9d                                           ; $719a: $f6 $9d
	ldh [$f8], a                                     ; $719c: $e0 $f8
	db $dd                                           ; $719e: $dd
	rst $38                                          ; $719f: $ff
	sbc l                                            ; $71a0: $9d
	rra                                              ; $71a1: $1f
	rlca                                             ; $71a2: $07
	rst FarCall                                          ; $71a3: $f7
	jp c, $9eff                                      ; $71a4: $da $ff $9e

	rra                                              ; $71a7: $1f
	inc bc                                           ; $71a8: $03
	sub b                                            ; $71a9: $90
	inc bc                                           ; $71aa: $03
	ldh a, [$03]                                     ; $71ab: $f0 $03
	ldh a, [$03]                                     ; $71ad: $f0 $03
	ldh a, [$03]                                     ; $71af: $f0 $03
	ldh a, [$03]                                     ; $71b1: $f0 $03
	ldh a, [$03]                                     ; $71b3: $f0 $03
	ldh a, [rSCX]                                    ; $71b5: $f0 $43
	ldh a, [$df]                                     ; $71b7: $f0 $df
	db $fc                                           ; $71b9: $fc
	rst SubAFromDE                                          ; $71ba: $df
	ld hl, sp-$21                                    ; $71bb: $f8 $df
	ldh a, [$df]                                     ; $71bd: $f0 $df
	ldh [$f6], a                                     ; $71bf: $e0 $f6
	sub h                                            ; $71c1: $94
	jr c, @+$3f                                      ; $71c2: $38 $3d

	ld [bc], a                                       ; $71c4: $02
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	rra                                              ; $71c7: $1f
	rra                                              ; $71c8: $1f
	ccf                                              ; $71c9: $3f
	rlca                                             ; $71ca: $07
	ld b, d                                          ; $71cb: $42
	ld a, l                                          ; $71cc: $7d
	ld l, e                                          ; $71cd: $6b
	ret c                                            ; $71ce: $d8

	sbc h                                            ; $71cf: $9c
	and b                                            ; $71d0: $a0
	ld bc, $dc03                                     ; $71d1: $01 $03 $dc
	rst $38                                          ; $71d4: $ff
	sbc [hl]                                         ; $71d5: $9e
	ld e, a                                          ; $71d6: $5f
	ld [hl], e                                       ; $71d7: $73
	ldh a, [$9a]                                     ; $71d8: $f0 $9a
	rra                                              ; $71da: $1f
	ld a, a                                          ; $71db: $7f
	rst $38                                          ; $71dc: $ff
	cp $fc                                           ; $71dd: $fe $fc
	ld a, d                                          ; $71df: $7a
	or l                                             ; $71e0: $b5
	sbc d                                            ; $71e1: $9a
	ld hl, sp-$20                                    ; $71e2: $f8 $e0
	jp $0884                                         ; $71e4: $c3 $84 $08


	halt                                             ; $71e7: $76
	or l                                             ; $71e8: $b5
	sbc [hl]                                         ; $71e9: $9e
	ret nz                                           ; $71ea: $c0

	ld h, [hl]                                       ; $71eb: $66
	and d                                            ; $71ec: $a2
	sbc h                                            ; $71ed: $9c
	add b                                            ; $71ee: $80
	rrca                                             ; $71ef: $0f
	dec sp                                           ; $71f0: $3b
	ld l, d                                          ; $71f1: $6a
	and d                                            ; $71f2: $a2
	sbc [hl]                                         ; $71f3: $9e
	ld h, b                                          ; $71f4: $60
	ld h, a                                          ; $71f5: $67
	db $ed                                           ; $71f6: $ed
	ld l, [hl]                                       ; $71f7: $6e
	and d                                            ; $71f8: $a2
	ld e, [hl]                                       ; $71f9: $5e
	adc a                                            ; $71fa: $8f
	inc bc                                           ; $71fb: $03
	ld h, b                                          ; $71fc: $60
	inc bc                                           ; $71fd: $03
	ldh a, [$03]                                     ; $71fe: $f0 $03
	ldh a, [$03]                                     ; $7200: $f0 $03
	ldh a, [$03]                                     ; $7202: $f0 $03
	ldh a, [$03]                                     ; $7204: $f0 $03
	ldh a, [$7e]                                     ; $7206: $f0 $7e
	rst $38                                          ; $7208: $ff
	ld h, c                                          ; $7209: $61
	xor [hl]                                         ; $720a: $ae
	rst SubAFromDE                                          ; $720b: $df
	ret nz                                           ; $720c: $c0

	ld l, l                                          ; $720d: $6d
	adc [hl]                                         ; $720e: $8e
	rst SubAFromDE                                          ; $720f: $df
	ld bc, $03df                                     ; $7210: $01 $df $03
	rst SubAFromDE                                          ; $7213: $df
	rlca                                             ; $7214: $07
	sbc [hl]                                         ; $7215: $9e
	rrca                                             ; $7216: $0f
	db $fd                                           ; $7217: $fd
	sbc l                                            ; $7218: $9d
	ld h, b                                          ; $7219: $60
	db $fc                                           ; $721a: $fc
	ld l, a                                          ; $721b: $6f

Jump_029_721c:
	ret c                                            ; $721c: $d8

	sbc [hl]                                         ; $721d: $9e
	sbc a                                            ; $721e: $9f
	ld a, d                                          ; $721f: $7a
	jp z, $ee7f                                      ; $7220: $ca $7f $ee

	ld a, d                                          ; $7223: $7a
	or [hl]                                          ; $7224: $b6
	add b                                            ; $7225: $80
	ccf                                              ; $7226: $3f
	ld a, a                                          ; $7227: $7f
	ld a, a                                          ; $7228: $7f
	db $fd                                           ; $7229: $fd
	ld a, [$f4f2]                                    ; $722a: $fa $f2 $f4
	db $e4                                           ; $722d: $e4
	add sp, -$38                                     ; $722e: $e8 $c8
	ret                                              ; $7230: $c9


	or e                                             ; $7231: $b3
	ld l, [hl]                                       ; $7232: $6e
	set 2, a                                         ; $7233: $cb $d7
	sub $ad                                          ; $7235: $d6 $ad
	db $e4                                           ; $7237: $e4
	ld c, d                                          ; $7238: $4a
	ld e, b                                          ; $7239: $58
	or b                                             ; $723a: $b0
	ld [hl], h                                       ; $723b: $74
	ld l, c                                          ; $723c: $69
	ld l, e                                          ; $723d: $6b
	sub $9e                                          ; $723e: $d6 $9e
	cp h                                             ; $7240: $bc
	ld h, h                                          ; $7241: $64
	adc c                                            ; $7242: $89
	sub e                                            ; $7243: $93
	add [hl]                                         ; $7244: $86
	add e                                            ; $7245: $83
	ld a, [hl+]                                      ; $7246: $2a
	ld d, h                                          ; $7247: $54
	dec h                                            ; $7248: $25
	xor b                                            ; $7249: $a8
	inc bc                                           ; $724a: $03
	ld b, a                                          ; $724b: $47
	adc [hl]                                         ; $724c: $8e
	inc e                                            ; $724d: $1c
	inc e                                            ; $724e: $1c
	jr c, jr_029_72c9                                ; $724f: $38 $78

	ld [hl], c                                       ; $7251: $71
	ld hl, sp-$6c                                    ; $7252: $f8 $94
	dec hl                                           ; $7254: $2b
	ld d, [hl]                                       ; $7255: $56
	ld l, a                                          ; $7256: $6f
	db $db                                           ; $7257: $db
	xor d                                            ; $7258: $aa
	and [hl]                                         ; $7259: $a6
	add b                                            ; $725a: $80
	rrca                                             ; $725b: $0f
	inc e                                            ; $725c: $1c
	add hl, sp                                       ; $725d: $39
	ld sp, $c363                                     ; $725e: $31 $63 $c3
	jp $a27a                                         ; $7261: $c3 $7a $a2


	sbc d                                            ; $7264: $9a
	sbc b                                            ; $7265: $98
	jr c, jr_029_72dd                                ; $7266: $38 $75

	ld l, c                                          ; $7268: $69
	ei                                               ; $7269: $fb
	ld a, e                                          ; $726a: $7b
	sub [hl]                                         ; $726b: $96
	sbc c                                            ; $726c: $99
	ldh [$c7], a                                     ; $726d: $e0 $c7
	add [hl]                                         ; $726f: $86
	adc [hl]                                         ; $7270: $8e
	inc c                                            ; $7271: $0c
	ccf                                              ; $7272: $3f
	ld l, [hl]                                       ; $7273: $6e
	or l                                             ; $7274: $b5
	ld a, d                                          ; $7275: $7a
	ld e, [hl]                                       ; $7276: $5e
	ld [hl], c                                       ; $7277: $71
	ld sp, $fe9e                                     ; $7278: $31 $9e $fe
	sbc $ff                                          ; $727b: $de $ff
	ld l, e                                          ; $727d: $6b
	db $ed                                           ; $727e: $ed
	ld d, a                                          ; $727f: $57
	ld h, b                                          ; $7280: $60
	ld e, a                                          ; $7281: $5f
	db $ed                                           ; $7282: $ed
	inc bc                                           ; $7283: $03
	jr nc, @+$05                                     ; $7284: $30 $03

	ldh a, [$03]                                     ; $7286: $f0 $03
	ldh a, [$03]                                     ; $7288: $f0 $03
	ldh a, [$57]                                     ; $728a: $f0 $57
	ldh a, [$df]                                     ; $728c: $f0 $df
	cp $6d                                           ; $728e: $fe $6d
	adc [hl]                                         ; $7290: $8e
	or $9a                                           ; $7291: $f6 $9a
	dec c                                            ; $7293: $0d
	ccf                                              ; $7294: $3f
	dec [hl]                                         ; $7295: $35
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	ld a, b                                          ; $7298: $78
	ld d, l                                          ; $7299: $55
	add b                                            ; $729a: $80
	ld [de], a                                       ; $729b: $12
	nop                                              ; $729c: $00
	ld a, [bc]                                       ; $729d: $0a
	ld a, a                                          ; $729e: $7f
	ld a, a                                          ; $729f: $7f
	inc bc                                           ; $72a0: $03
	rrca                                             ; $72a1: $0f
	rrca                                             ; $72a2: $0f
	ld e, a                                          ; $72a3: $5f
	xor e                                            ; $72a4: $ab
	rra                                              ; $72a5: $1f
	cpl                                              ; $72a6: $2f
	ld a, a                                          ; $72a7: $7f
	db $fc                                           ; $72a8: $fc
	ldh a, [$f0]                                     ; $72a9: $f0 $f0
	and b                                            ; $72ab: $a0
	ld d, h                                          ; $72ac: $54
	pop hl                                           ; $72ad: $e1
	pop de                                           ; $72ae: $d1
	add c                                            ; $72af: $81
	sub l                                            ; $72b0: $95
	sub l                                            ; $72b1: $95
	sub d                                            ; $72b2: $92
	or e                                             ; $72b3: $b3
	and l                                            ; $72b4: $a5
	inc h                                            ; $72b5: $24
	inc h                                            ; $72b6: $24
	inc b                                            ; $72b7: $04
	ei                                               ; $72b8: $fb
	ei                                               ; $72b9: $fb
	ld a, [hl]                                       ; $72ba: $7e
	adc h                                            ; $72bb: $8c
	ld [hl], a                                       ; $72bc: $77
	inc de                                           ; $72bd: $13
	sbc d                                            ; $72be: $9a
	ret z                                            ; $72bf: $c8

	adc l                                            ; $72c0: $8d
	sub d                                            ; $72c1: $92
	db $10                                           ; $72c2: $10
	inc d                                            ; $72c3: $14
	sbc $21                                          ; $72c4: $de $21
	sbc h                                            ; $72c6: $9c
	inc a                                            ; $72c7: $3c
	ld a, b                                          ; $72c8: $78

jr_029_72c9:
	ld a, c                                          ; $72c9: $79
	ld a, e                                          ; $72ca: $7b
	db $ed                                           ; $72cb: $ed
	rst SubAFromDE                                          ; $72cc: $df
	rst $38                                          ; $72cd: $ff
	add b                                            ; $72ce: $80
	ld c, e                                          ; $72cf: $4b

jr_029_72d0:
	ld d, e                                          ; $72d0: $53
	sub [hl]                                         ; $72d1: $96
	add [hl]                                         ; $72d2: $86
	xor h                                            ; $72d3: $ac
	inc l                                            ; $72d4: $2c
	add hl, hl                                       ; $72d5: $29
	add hl, sp                                       ; $72d6: $39
	pop af                                           ; $72d7: $f1
	pop hl                                           ; $72d8: $e1

jr_029_72d9:
	db $e3                                           ; $72d9: $e3
	db $e3                                           ; $72da: $e3
	rst JumpTable                                          ; $72db: $c7

jr_029_72dc:
	rst JumpTable                                          ; $72dc: $c7

jr_029_72dd:
	adc $ce                                          ; $72dd: $ce $ce
	ld b, [hl]                                       ; $72df: $46
	ld c, h                                          ; $72e0: $4c
	ld c, l                                          ; $72e1: $4d
	adc h                                            ; $72e2: $8c
	sbc b                                            ; $72e3: $98
	ld a, [de]                                       ; $72e4: $1a
	ld [de], a                                       ; $72e5: $12
	or [hl]                                          ; $72e6: $b6
	add e                                            ; $72e7: $83
	add a                                            ; $72e8: $87
	add [hl]                                         ; $72e9: $86
	ld b, $0e                                        ; $72ea: $06 $0e
	inc c                                            ; $72ec: $0c
	inc e                                            ; $72ed: $1c
	sub [hl]                                         ; $72ee: $96
	jr jr_029_72d0                                   ; $72ef: $18 $df

	db $d3                                           ; $72f1: $d3
	or e                                             ; $72f2: $b3
	xor e                                            ; $72f3: $ab
	inc hl                                           ; $72f4: $23
	ld h, [hl]                                       ; $72f5: $66
	ld d, [hl]                                       ; $72f6: $56
	sub $de                                          ; $72f7: $d6 $de
	jr jr_029_72d9                                   ; $72f9: $18 $de

	jr nc, @-$6c                                     ; $72fb: $30 $92

	ld h, b                                          ; $72fd: $60
	ld h, h                                          ; $72fe: $64
	adc e                                            ; $72ff: $8b
	adc l                                            ; $7300: $8d
	add hl, bc                                       ; $7301: $09
	inc de                                           ; $7302: $13
	ld b, c                                          ; $7303: $41
	ld h, l                                          ; $7304: $65
	push hl                                          ; $7305: $e5
	ld h, l                                          ; $7306: $65
	halt                                             ; $7307: $76
	ld d, e                                          ; $7308: $53
	ld d, e                                          ; $7309: $53
	db $dd                                           ; $730a: $dd
	ld c, c                                          ; $730b: $49
	adc [hl]                                         ; $730c: $8e
	ret                                              ; $730d: $c9


	nop                                              ; $730e: $00
	xor b                                            ; $730f: $a8
	add $a0                                          ; $7310: $c6 $a0
	ld h, a                                          ; $7312: $67
	ld d, d                                          ; $7313: $52
	pop af                                           ; $7314: $f1
	xor e                                            ; $7315: $ab
	jr nz, jr_029_7318                               ; $7316: $20 $00

jr_029_7318:
	add h                                            ; $7318: $84
	add $c2                                          ; $7319: $c6 $c2
	db $e3                                           ; $731b: $e3
	ld h, e                                          ; $731c: $63
	ld [hl], c                                       ; $731d: $71
	halt                                             ; $731e: $76
	ld b, c                                          ; $731f: $41
	sbc e                                            ; $7320: $9b
	jr nz, jr_029_7397                               ; $7321: $20 $74

	and d                                            ; $7323: $a2
	ld a, [hl-]                                      ; $7324: $3a
	cp $9a                                           ; $7325: $fe $9a
	ld b, b                                          ; $7327: $40
	ld h, b                                          ; $7328: $60
	ld hl, $9030                                     ; $7329: $21 $30 $90
	ld a, d                                          ; $732c: $7a
	or l                                             ; $732d: $b5
	sbc [hl]                                         ; $732e: $9e
	ld bc, $9efe                                     ; $732f: $01 $fe $9e
	ld [$9dfb], sp                                   ; $7332: $08 $fb $9d
	add b                                            ; $7335: $80
	ret c                                            ; $7336: $d8

	ld l, [hl]                                       ; $7337: $6e
	and d                                            ; $7338: $a2
	ld [hl], a                                       ; $7339: $77
	db $ed                                           ; $733a: $ed
	ld d, e                                          ; $733b: $53
	jr nz, jr_029_72dc                               ; $733c: $20 $9e

	ccf                                              ; $733e: $3f
	inc bc                                           ; $733f: $03
	nop                                              ; $7340: $00
	inc bc                                           ; $7341: $03
	ldh a, [$03]                                     ; $7342: $f0 $03
	ldh a, [$6e]                                     ; $7344: $f0 $6e
	dec c                                            ; $7346: $0d
	rst SubAFromDE                                          ; $7347: $df
	ldh [rHDMA1], a                                  ; $7348: $e0 $51
	adc [hl]                                         ; $734a: $8e
	adc a                                            ; $734b: $8f
	ld sp, $15ea                                     ; $734c: $31 $ea $15
	nop                                              ; $734f: $00
	ld bc, $0f07                                     ; $7350: $01 $07 $0f
	ld a, [bc]                                       ; $7353: $0a
	adc $15                                          ; $7354: $ce $15
	ld [$feff], a                                    ; $7356: $ea $ff $fe
	ld hl, sp-$10                                    ; $7359: $f8 $f0
	push af                                          ; $735b: $f5
	ld [hl], l                                       ; $735c: $75
	ld h, h                                          ; $735d: $64
	sbc e                                            ; $735e: $9b
	ld [$aa56], a                                    ; $735f: $ea $56 $aa
	db $f4                                           ; $7362: $f4
	sbc $01                                          ; $7363: $de $01
	db $dd                                           ; $7365: $dd
	inc bc                                           ; $7366: $03
	sbc [hl]                                         ; $7367: $9e
	rlca                                             ; $7368: $07
	sbc $08                                          ; $7369: $de $08
	rst SubAFromDE                                          ; $736b: $df
	db $10                                           ; $736c: $10
	rst SubAFromDE                                          ; $736d: $df
	ld de, $219e                                     ; $736e: $11 $9e $21
	reti                                             ; $7371: $d9


	rst $38                                          ; $7372: $ff
	sbc l                                            ; $7373: $9d
	ld b, c                                          ; $7374: $41
	ld b, d                                          ; $7375: $42
	db $dd                                           ; $7376: $dd
	jp nz, $84df                                     ; $7377: $c2 $df $84

	reti                                             ; $737a: $d9


	rst $38                                          ; $737b: $ff
	add b                                            ; $737c: $80
	add hl, sp                                       ; $737d: $39
	ld [hl], e                                       ; $737e: $73
	ld [hl], e                                       ; $737f: $73
	ld d, d                                          ; $7380: $52
	and d                                            ; $7381: $a2
	and l                                            ; $7382: $a5
	ld b, l                                          ; $7383: $45
	ld c, e                                          ; $7384: $4b
	adc $9c                                          ; $7385: $ce $9c
	sbc h                                            ; $7387: $9c
	cp h                                             ; $7388: $bc
	ld a, h                                          ; $7389: $7c
	ld a, b                                          ; $738a: $78
	ld hl, sp-$0f                                    ; $738b: $f8 $f1
	and [hl]                                         ; $738d: $a6
	ld h, l                                          ; $738e: $65
	ld c, l                                          ; $738f: $4d
	set 2, [hl]                                      ; $7390: $cb $d6
	sbc l                                            ; $7392: $9d
	cp l                                             ; $7393: $bd
	dec a                                            ; $7394: $3d
	jr c, jr_029_73cf                                ; $7395: $38 $38

jr_029_7397:
	ld [hl], c                                       ; $7397: $71
	ld [hl], c                                       ; $7398: $71
	ld h, e                                          ; $7399: $63
	and $c4                                          ; $739a: $e6 $c4
	add [hl]                                         ; $739c: $86
	ret z                                            ; $739d: $c8

	sub $dc                                          ; $739e: $d6 $dc
	ld e, l                                          ; $73a0: $5d
	call $dccd                                       ; $73a1: $cd $cd $dc
	sbc h                                            ; $73a4: $9c
	sbc l                                            ; $73a5: $9d
	db $e4                                           ; $73a6: $e4
	and $ee                                          ; $73a7: $e6 $ee
	ld a, [hl]                                       ; $73a9: $7e
	ld a, [hl]                                       ; $73aa: $7e
	ld [hl], a                                       ; $73ab: $77
	rst FarCall                                          ; $73ac: $f7
	rst FarCall                                          ; $73ad: $f7
	ld b, c                                          ; $73ae: $41
	ld c, e                                          ; $73af: $4b
	ld e, e                                          ; $73b0: $5b
	db $db                                           ; $73b1: $db
	ret                                              ; $73b2: $c9


	ret                                              ; $73b3: $c9


	sbc c                                            ; $73b4: $99
	sbc c                                            ; $73b5: $99
	db $dd                                           ; $73b6: $dd
	db $ed                                           ; $73b7: $ed
	db $dd                                           ; $73b8: $dd
	rst $38                                          ; $73b9: $ff
	sub h                                            ; $73ba: $94
	ld l, c                                          ; $73bb: $69
	ld h, h                                          ; $73bc: $64
	ld d, l                                          ; $73bd: $55
	jr nc, jr_029_73f2                               ; $73be: $30 $32

	ld a, [hl+]                                      ; $73c0: $2a
	add hl, de                                       ; $73c1: $19
	dec d                                            ; $73c2: $15
	ld sp, $3839                                     ; $73c3: $31 $39 $38
	sbc $1c                                          ; $73c6: $de $1c
	rst SubAFromDE                                          ; $73c8: $df
	ld c, $8e                                        ; $73c9: $0e $8e
	ld [de], a                                       ; $73cb: $12
	call Call_029_699d                               ; $73cc: $cd $9d $69

jr_029_73cf:
	db $eb                                           ; $73cf: $eb
	push de                                          ; $73d0: $d5
	ld d, l                                          ; $73d1: $55
	ld e, d                                          ; $73d2: $5a
	sbc b                                            ; $73d3: $98
	sbc b                                            ; $73d4: $98
	ret z                                            ; $73d5: $c8

	call z, Call_029_6e4c                            ; $73d6: $cc $4c $6e
	ld l, [hl]                                       ; $73d9: $6e
	ld h, a                                          ; $73da: $67
	ret c                                            ; $73db: $d8

	db $dd                                           ; $73dc: $dd
	ld a, b                                          ; $73dd: $78
	sbc $f8                                          ; $73de: $de $f8
	sbc $0f                                          ; $73e0: $de $0f
	sbc $4f                                          ; $73e2: $de $4f
	sbc b                                            ; $73e4: $98
	ld l, a                                          ; $73e5: $6f
	cpl                                              ; $73e6: $2f
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	xor b                                            ; $73e9: $a8
	ld d, l                                          ; $73ea: $55
	ld a, [hl+]                                      ; $73eb: $2a
	ld [hl], e                                       ; $73ec: $73
	scf                                              ; $73ed: $37
	sbc h                                            ; $73ee: $9c
	ld d, b                                          ; $73ef: $50
	xor d                                            ; $73f0: $aa
	push de                                          ; $73f1: $d5

jr_029_73f2:
	sbc $ff                                          ; $73f2: $de $ff
	sbc [hl]                                         ; $73f4: $9e
	rrca                                             ; $73f5: $0f
	ld e, [hl]                                       ; $73f6: $5e
	or l                                             ; $73f7: $b5
	ld a, c                                          ; $73f8: $79
	ld sp, $b572                                     ; $73f9: $31 $72 $b5
	ld d, e                                          ; $73fc: $53
	db $ed                                           ; $73fd: $ed
	ld l, [hl]                                       ; $73fe: $6e

Jump_029_73ff:
	and d                                            ; $73ff: $a2
	ld e, a                                          ; $7400: $5f
	db $ed                                           ; $7401: $ed
	ld [bc], a                                       ; $7402: $02
	ret nc                                           ; $7403: $d0

	ld b, a                                          ; $7404: $47
	ldh a, [$75]                                     ; $7405: $f0 $75
	adc a                                            ; $7407: $8f
	ld a, c                                          ; $7408: $79
	adc [hl]                                         ; $7409: $8e
	ld e, c                                          ; $740a: $59
	sub c                                            ; $740b: $91
	add d                                            ; $740c: $82
	rrca                                             ; $740d: $0f
	dec e                                            ; $740e: $1d
	ld a, [bc]                                       ; $740f: $0a
	dec d                                            ; $7410: $15
	jr nz, jr_029_741a                               ; $7411: $20 $07

	rlca                                             ; $7413: $07
	ld [bc], a                                       ; $7414: $02
	nop                                              ; $7415: $00
	ld [bc], a                                       ; $7416: $02
	dec d                                            ; $7417: $15
	ld a, [hl+]                                      ; $7418: $2a
	rra                                              ; $7419: $1f

jr_029_741a:
	dec b                                            ; $741a: $05
	and e                                            ; $741b: $a3
	ld [hl], a                                       ; $741c: $77
	rst $38                                          ; $741d: $ff
	rra                                              ; $741e: $1f
	xor d                                            ; $741f: $aa
	dec d                                            ; $7420: $15
	ld l, $fa                                        ; $7421: $2e $fa
	ld e, h                                          ; $7423: $5c
	adc b                                            ; $7424: $88
	nop                                              ; $7425: $00
	ldh [rHDMA5], a                                  ; $7426: $e0 $55
	ld [$77d0], a                                    ; $7428: $ea $d0 $77
	call nc, $d09b                                   ; $742b: $d4 $9b $d0
	or b                                             ; $742e: $b0
	ld h, c                                          ; $742f: $61
	ld [hl+], a                                      ; $7430: $22
	ld a, b                                          ; $7431: $78
	dec [hl]                                         ; $7432: $35
	ld [hl], b                                       ; $7433: $70
	ld b, [hl]                                       ; $7434: $46
	rst SubAFromDE                                          ; $7435: $df
	inc hl                                           ; $7436: $23
	rst SubAFromDE                                          ; $7437: $df
	ld b, l                                          ; $7438: $45
	sbc e                                            ; $7439: $9b
	adc c                                            ; $743a: $89
	adc d                                            ; $743b: $8a
	ld [de], a                                       ; $743c: $12
	sub h                                            ; $743d: $94
	jp c, $96ff                                      ; $743e: $da $ff $96

	ld a, a                                          ; $7441: $7f
	adc b                                            ; $7442: $88
	adc b                                            ; $7443: $88
	ld de, $3a67                                     ; $7444: $11 $67 $3a
	ld h, h                                          ; $7447: $64
	ld c, b                                          ; $7448: $48
	ret nc                                           ; $7449: $d0

	reti                                             ; $744a: $d9


	rst $38                                          ; $744b: $ff
	sub e                                            ; $744c: $93
	adc [hl]                                         ; $744d: $8e
	sbc d                                            ; $744e: $9a
	inc d                                            ; $744f: $14
	jr z, jr_029_7463                                ; $7450: $28 $11

	ld [hl+], a                                      ; $7452: $22
	ld b, l                                          ; $7453: $45
	adc $f3                                          ; $7454: $ce $f3
	rst SubAFromBC                                          ; $7456: $e7
	rst AddAOntoHL                                          ; $7457: $ef
	rst SubAFromDE                                          ; $7458: $df
	db $dd                                           ; $7459: $dd
	rst $38                                          ; $745a: $ff
	add b                                            ; $745b: $80
	ld e, c                                          ; $745c: $59
	or e                                             ; $745d: $b3
	ld h, e                                          ; $745e: $63
	and a                                            ; $745f: $a7
	ld b, a                                          ; $7460: $47
	cp $96                                           ; $7461: $fe $96

jr_029_7463:
	ld a, l                                          ; $7463: $7d
	or b                                             ; $7464: $b0
	ld h, b                                          ; $7465: $60
	pop bc                                           ; $7466: $c1
	pop bc                                           ; $7467: $c1
	add c                                            ; $7468: $81
	ld a, e                                          ; $7469: $7b
	rst AddAOntoHL                                          ; $746a: $ef
	rst $38                                          ; $746b: $ff
	cp l                                             ; $746c: $bd
	cp d                                             ; $746d: $ba
	dec sp                                           ; $746e: $3b
	ld a, e                                          ; $746f: $7b
	ld d, a                                          ; $7470: $57
	push de                                          ; $7471: $d5
	sbc l                                            ; $7472: $9d
	ld e, c                                          ; $7473: $59
	rst SubAFromBC                                          ; $7474: $e7
	rst AddAOntoHL                                          ; $7475: $ef
	xor $ce                                          ; $7476: $ee $ce
	call c, $989c                                    ; $7478: $dc $9c $98
	sub l                                            ; $747b: $95
	sub b                                            ; $747c: $90
	xor e                                            ; $747d: $ab
	cp d                                             ; $747e: $ba
	cp d                                             ; $747f: $ba
	jp c, $d7f7                                      ; $7480: $da $f7 $d7

	rst SubAFromHL                                          ; $7483: $d7
	sbc a                                            ; $7484: $9f
	cp $de                                           ; $7485: $fe $de
	xor $80                                          ; $7487: $ee $80
	db $dd                                           ; $7489: $dd
	rst SubAFromDE                                          ; $748a: $df
	sbc h                                            ; $748b: $9c
	sbc b                                            ; $748c: $98
	inc e                                            ; $748d: $1c
	inc c                                            ; $748e: $0c
	ld c, $ee                                        ; $748f: $0e $ee
	cp a                                             ; $7491: $bf
	rst SubAFromDE                                          ; $7492: $df
	ei                                               ; $7493: $fb
	pop af                                           ; $7494: $f1
	rlca                                             ; $7495: $07
	rlca                                             ; $7496: $07
	inc bc                                           ; $7497: $03
	ld [hl], e                                       ; $7498: $73
	rst $38                                          ; $7499: $ff
	db $e3                                           ; $749a: $e3
	ld bc, $aa00                                     ; $749b: $01 $00 $aa
	rst AddAOntoHL                                          ; $749e: $ef
	ld [hl], a                                       ; $749f: $77
	ld d, a                                          ; $74a0: $57
	dec sp                                           ; $74a1: $3b
	add hl, hl                                       ; $74a2: $29
	adc h                                            ; $74a3: $8c
	add $77                                          ; $74a4: $c6 $77
	inc sp                                           ; $74a6: $33
	cp e                                             ; $74a7: $bb
	sbc l                                            ; $74a8: $9d
	cp c                                             ; $74a9: $b9
	db $dd                                           ; $74aa: $dd
	ld a, e                                          ; $74ab: $7b
	xor [hl]                                         ; $74ac: $ae
	db $dd                                           ; $74ad: $dd
	ld hl, sp-$21                                    ; $74ae: $f8 $df
	db $fc                                           ; $74b0: $fc
	sub [hl]                                         ; $74b1: $96
	xor $e6                                          ; $74b2: $ee $e6
	ccf                                              ; $74b4: $3f
	rra                                              ; $74b5: $1f
	sbc a                                            ; $74b6: $9f
	ld c, a                                          ; $74b7: $4f
	ld h, a                                          ; $74b8: $67
	scf                                              ; $74b9: $37
	cp e                                             ; $74ba: $bb
	inc bc                                           ; $74bb: $03
	ld [$7ffd], sp                                   ; $74bc: $08 $fd $7f
	ld h, $9d                                        ; $74bf: $26 $9d
	nop                                              ; $74c1: $00
	ld e, [hl]                                       ; $74c2: $5e
	halt                                             ; $74c3: $76
	or l                                             ; $74c4: $b5
	sbc e                                            ; $74c5: $9b
	db $fd                                           ; $74c6: $fd
	rst $38                                          ; $74c7: $ff
	rst $38                                          ; $74c8: $ff
	and c                                            ; $74c9: $a1
	db $fd                                           ; $74ca: $fd
	sbc [hl]                                         ; $74cb: $9e
	and b                                            ; $74cc: $a0
	ld l, d                                          ; $74cd: $6a
	and d                                            ; $74ce: $a2
	sbc [hl]                                         ; $74cf: $9e
	ld e, a                                          ; $74d0: $5f
	ld b, [hl]                                       ; $74d1: $46
	and d                                            ; $74d2: $a2
	sbc [hl]                                         ; $74d3: $9e
	add b                                            ; $74d4: $80
	ld [hl], d                                       ; $74d5: $72
	adc a                                            ; $74d6: $8f
	sbc [hl]                                         ; $74d7: $9e
	ld a, a                                          ; $74d8: $7f
	ld d, a                                          ; $74d9: $57
	db $ed                                           ; $74da: $ed
	ld b, a                                          ; $74db: $47
	xor b                                            ; $74dc: $a8
	rst SubAFromDE                                          ; $74dd: $df
	ldh a, [$75]                                     ; $74de: $f0 $75
	adc a                                            ; $74e0: $8f
	ld a, l                                          ; $74e1: $7d
	adc [hl]                                         ; $74e2: $8e
	db $fc                                           ; $74e3: $fc
	ld a, c                                          ; $74e4: $79
	xor h                                            ; $74e5: $ac
	adc d                                            ; $74e6: $8a
	ld d, b                                          ; $74e7: $50
	nop                                              ; $74e8: $00
	inc bc                                           ; $74e9: $03
	ld c, $03                                        ; $74ea: $0e $03
	nop                                              ; $74ec: $00
	ld h, c                                          ; $74ed: $61
	sub e                                            ; $74ee: $93
	cpl                                              ; $74ef: $2f
	ld a, a                                          ; $74f0: $7f
	ld a, h                                          ; $74f1: $7c
	ldh a, [$fc]                                     ; $74f2: $f0 $fc
	rst $38                                          ; $74f4: $ff
	sbc [hl]                                         ; $74f5: $9e
	inc c                                            ; $74f6: $0c
	rst $38                                          ; $74f7: $ff
	rst $38                                          ; $74f8: $ff
	ld e, a                                          ; $74f9: $5f
	dec bc                                           ; $74fa: $0b
	sbc a                                            ; $74fb: $9f
	ld a, d                                          ; $74fc: $7a
	sbc h                                            ; $74fd: $9c
	ld h, l                                          ; $74fe: $65
	ld [hl], b                                       ; $74ff: $70
	add [hl]                                         ; $7500: $86
	ld d, d                                          ; $7501: $52
	or l                                             ; $7502: $b5
	xor e                                            ; $7503: $ab
	ld c, d                                          ; $7504: $4a
	sub [hl]                                         ; $7505: $96
	dec l                                            ; $7506: $2d
	add hl, hl                                       ; $7507: $29
	ld e, d                                          ; $7508: $5a
	ld l, a                                          ; $7509: $6f
	adc $dc                                          ; $750a: $ce $dc
	cp l                                             ; $750c: $bd
	ld a, c                                          ; $750d: $79
	di                                               ; $750e: $f3
	rst FarCall                                          ; $750f: $f7
	rst SubAFromBC                                          ; $7510: $e7
	and h                                            ; $7511: $a4
	jr z, jr_029_755d                                ; $7512: $28 $49

	ld c, c                                          ; $7514: $49
	sub c                                            ; $7515: $91
	pop de                                           ; $7516: $d1
	jp nc, Jump_029_7faa                             ; $7517: $d2 $aa $7f

	db $dd                                           ; $751a: $dd
	rst $38                                          ; $751b: $ff
	sub h                                            ; $751c: $94
	cp a                                             ; $751d: $bf
	ccf                                              ; $751e: $3f
	ld [hl], a                                       ; $751f: $77
	db $e3                                           ; $7520: $e3
	adc l                                            ; $7521: $8d
	ldh a, [c]                                       ; $7522: $f2
	and l                                            ; $7523: $a5
	xor [hl]                                         ; $7524: $ae
	and b                                            ; $7525: $a0
	and b                                            ; $7526: $a0
	and c                                            ; $7527: $a1
	jp c, $98ff                                      ; $7528: $da $ff $98

	cp $9b                                           ; $752b: $fe $9b
	dec a                                            ; $752d: $3d
	ld e, a                                          ; $752e: $5f
	rst $38                                          ; $752f: $ff
	ld a, a                                          ; $7530: $7f
	cp a                                             ; $7531: $bf
	ld [hl], a                                       ; $7532: $77
	or $77                                           ; $7533: $f6 $77
	sbc c                                            ; $7535: $99
	add e                                            ; $7536: $83
	add c                                            ; $7537: $81
	add e                                            ; $7538: $83
	add [hl]                                         ; $7539: $86
	db $f4                                           ; $753a: $f4
	db $fc                                           ; $753b: $fc
	db $e3                                           ; $753c: $e3
	cp [hl]                                          ; $753d: $be
	rst $38                                          ; $753e: $ff
	rst GetHLinHL                                          ; $753f: $cf
	add [hl]                                         ; $7540: $86
	rst $38                                          ; $7541: $ff
	rrca                                             ; $7542: $0f
	inc bc                                           ; $7543: $03
	inc e                                            ; $7544: $1c
	ld a, a                                          ; $7545: $7f
	rst $38                                          ; $7546: $ff
	push bc                                          ; $7547: $c5
	add d                                            ; $7548: $82
	ld sp, $2020                                     ; $7549: $31 $20 $20
	ld [hl], b                                       ; $754c: $70
	ldh a, [rSVBK]                                   ; $754d: $f0 $70
	ldh [$c0], a                                     ; $754f: $e0 $c0
	pop de                                           ; $7551: $d1
	ldh [$7b], a                                     ; $7552: $e0 $7b
	ld a, h                                          ; $7554: $7c
	ld a, c                                          ; $7555: $79
	ld [$2f92], sp                                   ; $7556: $08 $92 $2f
	ccf                                              ; $7559: $3f
	rrca                                             ; $755a: $0f
	rrca                                             ; $755b: $0f
	rlca                                             ; $755c: $07

jr_029_755d:
	ld b, $07                                        ; $755d: $06 $07
	rlca                                             ; $755f: $07
	jr nc, jr_029_7562                               ; $7560: $30 $00

jr_029_7562:
	ld bc, $0603                                     ; $7562: $01 $03 $06
	ld a, e                                          ; $7565: $7b
	ld hl, sp-$69                                    ; $7566: $f8 $97
	pop hl                                           ; $7568: $e1
	db $10                                           ; $7569: $10
	db $f4                                           ; $756a: $f4
	cp $1f                                           ; $756b: $fe $1f
	inc de                                           ; $756d: $13
	ld d, [hl]                                       ; $756e: $56
	ldh a, [c]                                       ; $756f: $f2
	ld a, e                                          ; $7570: $7b
	ld hl, $fc91                                     ; $7571: $21 $91 $fc
	ccf                                              ; $7574: $3f
	ld b, $82                                        ; $7575: $06 $82
	ldh a, [$e5]                                     ; $7577: $f0 $e5

jr_029_7579:
	or $7a                                           ; $7579: $f6 $7a
	ld a, a                                          ; $757b: $7f
	ld a, e                                          ; $757c: $7b
	ld sp, hl                                        ; $757d: $f9
	db $ed                                           ; $757e: $ed
	ld e, e                                          ; $757f: $5b
	ld a, a                                          ; $7580: $7f
	sbc $3f                                          ; $7581: $de $3f
	rst SubAFromDE                                          ; $7583: $df
	ld a, a                                          ; $7584: $7f
	sub h                                            ; $7585: $94
	ld a, e                                          ; $7586: $7b
	jp hl                                            ; $7587: $e9


	pop af                                           ; $7588: $f1
	ret nz                                           ; $7589: $c0

	ldh [$e0], a                                     ; $758a: $e0 $e0
	and b                                            ; $758c: $a0
	and b                                            ; $758d: $a0
	or b                                             ; $758e: $b0
	ret nc                                           ; $758f: $d0

	rst $38                                          ; $7590: $ff
	ld [hl], a                                       ; $7591: $77
	rst AddAOntoHL                                          ; $7592: $ef
	sbc h                                            ; $7593: $9c
	cp a                                             ; $7594: $bf
	sbc [hl]                                         ; $7595: $9e
	sbc a                                            ; $7596: $9f
	db $fc                                           ; $7597: $fc
	sbc h                                            ; $7598: $9c
	jr nz, jr_029_75ab                               ; $7599: $20 $10

	jr nz, jr_029_7579                               ; $759b: $20 $dc

	rst $38                                          ; $759d: $ff
	sbc h                                            ; $759e: $9c
	rra                                              ; $759f: $1f
	rrca                                             ; $75a0: $0f
	rra                                              ; $75a1: $1f
	ld a, d                                          ; $75a2: $7a
	call nc, $7afc                                   ; $75a3: $d4 $fc $7a
	call nc, $ffdc                                   ; $75a6: $d4 $dc $ff
	sbc l                                            ; $75a9: $9d
	cp l                                             ; $75aa: $bd

jr_029_75ab:
	ld e, a                                          ; $75ab: $5f
	ld l, a                                          ; $75ac: $6f
	ld d, $9d                                        ; $75ad: $16 $9d
	ld b, d                                          ; $75af: $42
	and b                                            ; $75b0: $a0
	ld l, a                                          ; $75b1: $6f
	ld h, b                                          ; $75b2: $60
	ld a, l                                          ; $75b3: $7d
	ld e, d                                          ; $75b4: $5a
	sub c                                            ; $75b5: $91
	stop                                             ; $75b6: $10 $00
	nop                                              ; $75b8: $00
	dec hl                                           ; $75b9: $2b
	nop                                              ; $75ba: $00
	ld h, e                                          ; $75bb: $63
	xor a                                            ; $75bc: $af
	ld d, l                                          ; $75bd: $55
	rst AddAOntoHL                                          ; $75be: $ef
	rst $38                                          ; $75bf: $ff
	rst $38                                          ; $75c0: $ff
	call nc, $9cff                                   ; $75c1: $d4 $ff $9c
	db $fd                                           ; $75c4: $fd
	ld a, h                                          ; $75c5: $7c
	sub [hl]                                         ; $75c6: $96
	sbc l                                            ; $75c7: $9d
	ld [$ddf4], a                                    ; $75c8: $ea $f4 $dd
	rst $38                                          ; $75cb: $ff
	ld a, h                                          ; $75cc: $7c
	add [hl]                                         ; $75cd: $86
	sbc l                                            ; $75ce: $9d
	dec d                                            ; $75cf: $15
	dec bc                                           ; $75d0: $0b
	ld e, h                                          ; $75d1: $5c
	ld l, b                                          ; $75d2: $68
	sbc c                                            ; $75d3: $99
	ret nz                                           ; $75d4: $c0

	pop bc                                           ; $75d5: $c1
	jp $8383                                         ; $75d6: $c3 $83 $83


	rlca                                             ; $75d9: $07
	ld [hl], a                                       ; $75da: $77
	call z, $8e75                                    ; $75db: $cc $75 $8e
	ld h, d                                          ; $75de: $62
	sbc l                                            ; $75df: $9d
	ld a, [$e67e]                                    ; $75e0: $fa $7e $e6
	ld l, l                                          ; $75e3: $6d
	xor [hl]                                         ; $75e4: $ae
	add [hl]                                         ; $75e5: $86
	inc b                                            ; $75e6: $04
	sbc b                                            ; $75e7: $98
	ld h, h                                          ; $75e8: $64
	inc bc                                           ; $75e9: $03
	rlca                                             ; $75ea: $07
	ld [bc], a                                       ; $75eb: $02
	rra                                              ; $75ec: $1f
	xor e                                            ; $75ed: $ab
	ld [$9800], sp                                   ; $75ee: $08 $00 $98
	db $fc                                           ; $75f1: $fc
	ld hl, sp-$03                                    ; $75f2: $f8 $fd
	ldh [rHDMA4], a                                  ; $75f4: $e0 $54
	db $fc                                           ; $75f6: $fc

Call_029_75f7:
	ld a, b                                          ; $75f7: $78
	pop af                                           ; $75f8: $f1
	di                                               ; $75f9: $f3
	ldh [c], a                                       ; $75fa: $e2
	and $ce                                          ; $75fb: $e6 $ce
	call z, Call_029_7107                            ; $75fd: $cc $07 $71
	sub d                                            ; $7600: $92
	rst SubAFromDE                                          ; $7601: $df
	ld a, a                                          ; $7602: $7f
	add b                                            ; $7603: $80
	ld d, a                                          ; $7604: $57
	and l                                            ; $7605: $a5
	ld a, [hl+]                                      ; $7606: $2a
	ld c, $14                                        ; $7607: $0e $14
	dec [hl]                                         ; $7609: $35
	ld sp, $ee63                                     ; $760a: $31 $63 $ee
	sbc $dd                                          ; $760d: $de $dd
	ld sp, hl                                        ; $760f: $f9
	ei                                               ; $7610: $fb
	ei                                               ; $7611: $fb
	rst $38                                          ; $7612: $ff
	rst $38                                          ; $7613: $ff
	xor d                                            ; $7614: $aa
	ld e, d                                          ; $7615: $5a
	ld d, d                                          ; $7616: $52
	db $f4                                           ; $7617: $f4
	or h                                             ; $7618: $b4
	and h                                            ; $7619: $a4
	and [hl]                                         ; $761a: $a6
	adc $77                                          ; $761b: $ce $77
	rst SubAFromBC                                          ; $761d: $e7
	rst AddAOntoHL                                          ; $761e: $ef
	rst GetHLinHL                                          ; $761f: $cf
	rst GetHLinHL                                          ; $7620: $cf
	rst SubAFromDE                                          ; $7621: $df

jr_029_7622:
	rst SubAFromDE                                          ; $7622: $df
	sub [hl]                                         ; $7623: $96
	cp a                                             ; $7624: $bf
	and c                                            ; $7625: $a1
	and c                                            ; $7626: $a1
	sub e                                            ; $7627: $93
	db $d3                                           ; $7628: $d3
	ld d, e                                          ; $7629: $53
	ld d, e                                          ; $762a: $53
	ld [hl], e                                       ; $762b: $73
	ld [hl], e                                       ; $762c: $73
	ld [hl], e                                       ; $762d: $73
	sbc e                                            ; $762e: $9b
	sbc $fc                                          ; $762f: $de $fc
	ld [hl], d                                       ; $7631: $72
	xor c                                            ; $7632: $a9
	sbc b                                            ; $7633: $98
	cp a                                             ; $7634: $bf
	ld a, a                                          ; $7635: $7f
	rst SubAFromDE                                          ; $7636: $df
	adc a                                            ; $7637: $8f
	add e                                            ; $7638: $83
	add a                                            ; $7639: $87
	add c                                            ; $763a: $81
	sbc $c0                                          ; $763b: $de $c0
	sub b                                            ; $763d: $90
	ld h, b                                          ; $763e: $60
	ldh [c], a                                       ; $763f: $e2
	ld a, d                                          ; $7640: $7a
	or b                                             ; $7641: $b0
	ld [hl-], a                                      ; $7642: $32
	adc h                                            ; $7643: $8c
	ld hl, sp-$20                                    ; $7644: $f8 $e0
	nop                                              ; $7646: $00
	ldh [c], a                                       ; $7647: $e2
	cp $7e                                           ; $7648: $fe $7e
	cp h                                             ; $764a: $bc
	db $f4                                           ; $764b: $f4
	ld a, b                                          ; $764c: $78
	ld [hl], a                                       ; $764d: $77
	add b                                            ; $764e: $80
	ld a, [hl]                                       ; $764f: $7e
	ret c                                            ; $7650: $d8

	ld a, a                                          ; $7651: $7f
	and h                                            ; $7652: $a4
	ld a, l                                          ; $7653: $7d
	and e                                            ; $7654: $a3
	ld sp, hl                                        ; $7655: $f9
	adc e                                            ; $7656: $8b
	ld b, $02                                        ; $7657: $06 $02
	add e                                            ; $7659: $83
	pop bc                                           ; $765a: $c1
	and b                                            ; $765b: $a0
	sub b                                            ; $765c: $90
	ld hl, sp-$10                                    ; $765d: $f8 $f0
	inc bc                                           ; $765f: $03
	inc bc                                           ; $7660: $03
	ld bc, $4000                                     ; $7661: $01 $00 $40
	ld h, b                                          ; $7664: $60
	jr nc, @+$62                                     ; $7665: $30 $60

	call nc, $a110                                   ; $7667: $d4 $10 $a1
	pop hl                                           ; $766a: $e1
	halt                                             ; $766b: $76
	ld b, a                                          ; $766c: $47
	ld a, [hl]                                       ; $766d: $7e
	sbc h                                            ; $766e: $9c
	sbc [hl]                                         ; $766f: $9e
	ld [hl], b                                       ; $7670: $70
	ld a, e                                          ; $7671: $7b
	ld hl, sp-$21                                    ; $7672: $f8 $df
	ld bc, $e3df                                     ; $7674: $01 $df $e3
	sub h                                            ; $7677: $94
	and c                                            ; $7678: $a1
	ld d, l                                          ; $7679: $55
	ld d, [hl]                                       ; $767a: $56
	ld c, d                                          ; $767b: $4a
	ld a, [bc]                                       ; $767c: $0a
	ld c, $c9                                        ; $767d: $0e $c9
	ret                                              ; $767f: $c9


	res 1, e                                         ; $7680: $cb $8b
	adc d                                            ; $7682: $8a
	sbc $9e                                          ; $7683: $de $9e
	sbc [hl]                                         ; $7685: $9e
	ret nc                                           ; $7686: $d0

	ld a, e                                          ; $7687: $7b
	rst SubAFromBC                                          ; $7688: $e7
	sbc c                                            ; $7689: $99
	ld [hl], b                                       ; $768a: $70
	jr nc, @+$22                                     ; $768b: $30 $20

jr_029_768d:
	jr nz, jr_029_7622                               ; $768d: $20 $93

	ret nc                                           ; $768f: $d0

	sbc $50                                          ; $7690: $de $50
	ld a, a                                          ; $7692: $7f
	ld hl, sp-$7a                                    ; $7693: $f8 $86
	db $e3                                           ; $7695: $e3
	ld b, b                                          ; $7696: $40
	ld [$1a35], a                                    ; $7697: $ea $35 $1a
	dec c                                            ; $769a: $0d
	jr jr_029_768d                                   ; $769b: $18 $f0

	ld bc, $15bf                                     ; $769d: $01 $bf $15
	ld a, [bc]                                       ; $76a0: $0a
	dec b                                            ; $76a1: $05
	ld [bc], a                                       ; $76a2: $02
	rlca                                             ; $76a3: $07
	rrca                                             ; $76a4: $0f
	cp $00                                           ; $76a5: $fe $00
	nop                                              ; $76a7: $00
	ld b, b                                          ; $76a8: $40
	and b                                            ; $76a9: $a0
	nop                                              ; $76aa: $00
	ld bc, $22c2                                     ; $76ab: $01 $c2 $22
	ld a, e                                          ; $76ae: $7b
	ld a, d                                          ; $76af: $7a
	ld a, [hl]                                       ; $76b0: $7e
	scf                                              ; $76b1: $37
	sub d                                            ; $76b2: $92
	cp $3c                                           ; $76b3: $fe $3c
	inc e                                            ; $76b5: $1c
	inc bc                                           ; $76b6: $03
	dec d                                            ; $76b7: $15
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	ret nz                                           ; $76ba: $c0

	jr nz, jr_029_76d9                               ; $76bb: $20 $1c

	ld [de], a                                       ; $76bd: $12
	db $fc                                           ; $76be: $fc
	ld [$9479], a                                    ; $76bf: $ea $79 $94
	sub c                                            ; $76c2: $91
	rra                                              ; $76c3: $1f
	inc bc                                           ; $76c4: $03
	ld bc, $75ff                                     ; $76c5: $01 $ff $75
	and c                                            ; $76c8: $a1
	ld [bc], a                                       ; $76c9: $02
	inc b                                            ; $76ca: $04
	inc b                                            ; $76cb: $04
	ld [bc], a                                       ; $76cc: $02
	ld bc, $8a00                                     ; $76cd: $01 $00 $8a
	ld e, [hl]                                       ; $76d0: $5e
	ld a, b                                          ; $76d1: $78
	and [hl]                                         ; $76d2: $a6
	adc l                                            ; $76d3: $8d
	db $fc                                           ; $76d4: $fc
	cp $e8                                           ; $76d5: $fe $e8
	ret nz                                           ; $76d7: $c0

	add b                                            ; $76d8: $80

jr_029_76d9:
	ld b, b                                          ; $76d9: $40
	jr nz, jr_029_76fc                               ; $76da: $20 $20

	ld b, b                                          ; $76dc: $40
	add b                                            ; $76dd: $80
	rla                                              ; $76de: $17
	ld a, $7e                                        ; $76df: $3e $7e
	ld a, $1c                                        ; $76e1: $3e $1c
	inc e                                            ; $76e3: $1c
	jr c, jr_029_775e                                ; $76e4: $38 $78

	ld [hl], l                                       ; $76e6: $75
	call z, $e676                                    ; $76e7: $cc $76 $e6
	sbc h                                            ; $76ea: $9c
	ld b, $0c                                        ; $76eb: $06 $0c
	inc c                                            ; $76ed: $0c
	sbc $18                                          ; $76ee: $de $18
	rst SubAFromDE                                          ; $76f0: $df
	jr nc, jr_029_7734                               ; $76f1: $30 $41

	nop                                              ; $76f3: $00
	rst SubAFromDE                                          ; $76f4: $df
	inc sp                                           ; $76f5: $33
	sbc [hl]                                         ; $76f6: $9e
	ld de, $33d8                                     ; $76f7: $11 $d8 $33
	sbc h                                            ; $76fa: $9c
	ld h, [hl]                                       ; $76fb: $66

jr_029_76fc:
	ld [hl], d                                       ; $76fc: $72
	inc hl                                           ; $76fd: $23
	db $db                                           ; $76fe: $db
	inc sp                                           ; $76ff: $33
	sbc e                                            ; $7700: $9b
	ld sp, $4467                                     ; $7701: $31 $67 $44
	ld b, h                                          ; $7704: $44
	ld l, a                                          ; $7705: $6f
	push af                                          ; $7706: $f5
	sbc l                                            ; $7707: $9d
	ld [hl], $64                                     ; $7708: $36 $64
	sbc $44                                          ; $770a: $de $44
	sbc [hl]                                         ; $770c: $9e
	ld b, d                                          ; $770d: $42
	ld [hl], e                                       ; $770e: $73
	or $9e                                           ; $770f: $f6 $9e
	inc b                                            ; $7711: $04
	sbc $44                                          ; $7712: $de $44
	sbc h                                            ; $7714: $9c
	ld b, a                                          ; $7715: $47
	ld h, c                                          ; $7716: $61
	inc de                                           ; $7717: $13
	ld a, e                                          ; $7718: $7b
	reti                                             ; $7719: $d9


	ld [hl], e                                       ; $771a: $73
	or $df                                           ; $771b: $f6 $df
	ld h, [hl]                                       ; $771d: $66
	ld a, a                                          ; $771e: $7f
	push af                                          ; $771f: $f5
	sbc d                                            ; $7720: $9a
	ld h, b                                          ; $7721: $60
	ld b, h                                          ; $7722: $44
	ld b, h                                          ; $7723: $44
	ld d, l                                          ; $7724: $55
	ld d, h                                          ; $7725: $54
	ld a, e                                          ; $7726: $7b
	or $9d                                           ; $7727: $f6 $9d
	ld h, c                                          ; $7729: $61
	ld sp, $f67b                                     ; $772a: $31 $7b $f6
	sbc [hl]                                         ; $772d: $9e
	ld b, l                                          ; $772e: $45
	ld [hl], a                                       ; $772f: $77
	or $9e                                           ; $7730: $f6 $9e
	ld h, e                                          ; $7732: $63
	ld h, d                                          ; $7733: $62

jr_029_7734:
	rlca                                             ; $7734: $07
	sbc d                                            ; $7735: $9a
	ld hl, sp+$00                                    ; $7736: $f8 $00
	ld hl, sp+$00                                    ; $7738: $f8 $00
	ldh a, [$7b]                                     ; $773a: $f0 $7b
	cp $9e                                           ; $773c: $fe $9e
	ldh [$7b], a                                     ; $773e: $e0 $7b
	cp $82                                           ; $7740: $fe $82
	ret nz                                           ; $7742: $c0

	nop                                              ; $7743: $00
	ret nz                                           ; $7744: $c0

	ld bc, $320d                                     ; $7745: $01 $0d $32
	rra                                              ; $7748: $1f
	jr nz, jr_029_775a                               ; $7749: $20 $0f

	jr nc, @+$1c                                     ; $774b: $30 $1a

	ld h, b                                          ; $774d: $60
	dec [hl]                                         ; $774e: $35
	ld b, b                                          ; $774f: $40
	ld a, d                                          ; $7750: $7a
	add b                                            ; $7751: $80
	ld l, a                                          ; $7752: $6f
	add b                                            ; $7753: $80
	ld d, a                                          ; $7754: $57
	nop                                              ; $7755: $00
	ld a, a                                          ; $7756: $7f
	add b                                            ; $7757: $80
	rst $38                                          ; $7758: $ff
	nop                                              ; $7759: $00

jr_029_775a:
	rst $38                                          ; $775a: $ff
	nop                                              ; $775b: $00
	cp e                                             ; $775c: $bb
	nop                                              ; $775d: $00

jr_029_775e:
	ld [hl], l                                       ; $775e: $75
	ld a, e                                          ; $775f: $7b
	ld a, [$fe7f]                                    ; $7760: $fa $7f $fe
	sbc d                                            ; $7763: $9a
	db $fd                                           ; $7764: $fd
	nop                                              ; $7765: $00
	call c, $9cf7                                    ; $7766: $dc $f7 $9c
	ld a, e                                          ; $7769: $7b
	cp $9d                                           ; $776a: $fe $9d
	cp l                                             ; $776c: $bd
	rst SubAFromBC                                          ; $776d: $e7
	ld h, a                                          ; $776e: $67
	cp $8a                                           ; $776f: $fe $8a
	db $e3                                           ; $7771: $e3
	cp a                                             ; $7772: $bf
	rst SubAFromBC                                          ; $7773: $e7
	cp a                                             ; $7774: $bf
	rst JumpTable                                          ; $7775: $c7
	db $fd                                           ; $7776: $fd
	rst JumpTable                                          ; $7777: $c7
	ld a, l                                          ; $7778: $7d
	call $cd7d                                       ; $7779: $cd $7d $cd
	ld a, c                                          ; $777c: $79
	ld c, a                                          ; $777d: $4f
	ld a, c                                          ; $777e: $79
	db $ed                                           ; $777f: $ed
	add hl, sp                                       ; $7780: $39
	ld c, d                                          ; $7781: $4a
	cp a                                             ; $7782: $bf
	dec bc                                           ; $7783: $0b
	rst $38                                          ; $7784: $ff
	ld a, [de]                                       ; $7785: $1a
	ld a, e                                          ; $7786: $7b
	cp $9c                                           ; $7787: $fe $9c
	add hl, de                                       ; $7789: $19
	rst $38                                          ; $778a: $ff
	inc [hl]                                         ; $778b: $34
	ld a, e                                          ; $778c: $7b
	cp $80                                           ; $778d: $fe $80
	ld [hl-], a                                      ; $778f: $32
	rst $38                                          ; $7790: $ff
	di                                               ; $7791: $f3
	sbc h                                            ; $7792: $9c
	ld [hl], e                                       ; $7793: $73
	ld a, h                                          ; $7794: $7c
	or e                                             ; $7795: $b3
	inc e                                            ; $7796: $1c
	jp nc, Jump_029_721c                             ; $7797: $d2 $1c $72

	sbc h                                            ; $779a: $9c
	ld a, [$ba8c]                                    ; $779b: $fa $8c $ba
	call z, $dc6b                                    ; $779e: $cc $6b $dc
	rst SubAFromDE                                          ; $77a1: $df
	ld h, b                                          ; $77a2: $60
	ld a, a                                          ; $77a3: $7f
	ld h, b                                          ; $77a4: $60
	ld l, a                                          ; $77a5: $6f
	ld [hl], b                                       ; $77a6: $70
	ld [hl], a                                       ; $77a7: $77
	ld a, b                                          ; $77a8: $78
	ld e, e                                          ; $77a9: $5b
	ld a, h                                          ; $77aa: $7c
	ld c, l                                          ; $77ab: $4d
	ld a, [hl]                                       ; $77ac: $7e
	ld c, [hl]                                       ; $77ad: $4e
	sbc e                                            ; $77ae: $9b
	ld a, a                                          ; $77af: $7f
	ld e, a                                          ; $77b0: $5f
	ld l, a                                          ; $77b1: $6f
	add b                                            ; $77b2: $80
	ld a, e                                          ; $77b3: $7b
	adc d                                            ; $77b4: $8a
	ld a, a                                          ; $77b5: $7f
	add [hl]                                         ; $77b6: $86
	ld a, a                                          ; $77b7: $7f
	add b                                            ; $77b8: $80
	ld [hl], a                                       ; $77b9: $77
	ld a, b                                          ; $77ba: $78
	sbc e                                            ; $77bb: $9b
	db $fc                                           ; $77bc: $fc
	nop                                              ; $77bd: $00
	ld a, h                                          ; $77be: $7c
	add b                                            ; $77bf: $80
	db $fd                                           ; $77c0: $fd
	add b                                            ; $77c1: $80
	ld bc, $1c06                                     ; $77c2: $01 $06 $1c
	ld [$0f00], sp                                   ; $77c5: $08 $00 $0f
	inc c                                            ; $77c8: $0c
	rlca                                             ; $77c9: $07
	ld b, $03                                        ; $77ca: $06 $03
	inc bc                                           ; $77cc: $03
	ld bc, $0000                                     ; $77cd: $01 $00 $00
	add b                                            ; $77d0: $80
	ld a, b                                          ; $77d1: $78
	jr @+$0a                                         ; $77d2: $18 $08

	ret c                                            ; $77d4: $d8

	ld [hl], b                                       ; $77d5: $70
	or b                                             ; $77d6: $b0
	ldh a, [rSVBK]                                   ; $77d7: $f0 $70
	ldh [$a0], a                                     ; $77d9: $e0 $a0
	ldh [$e0], a                                     ; $77db: $e0 $e0
	ret nz                                           ; $77dd: $c0

	ld [bc], a                                       ; $77de: $02
	inc bc                                           ; $77df: $03
	ld [bc], a                                       ; $77e0: $02
	add l                                            ; $77e1: $85
	inc bc                                           ; $77e2: $03
	ld b, $03                                        ; $77e3: $06 $03
	inc b                                            ; $77e5: $04
	rlca                                             ; $77e6: $07
	dec c                                            ; $77e7: $0d
	ld b, $0d                                        ; $77e8: $06 $0d
	ld c, $1d                                        ; $77ea: $0e $1d
	ld c, $35                                        ; $77ec: $0e $35
	ld e, $11                                        ; $77ee: $1e $11
	sub c                                            ; $77f0: $91
	sub b                                            ; $77f1: $90
	db $10                                           ; $77f2: $10
	or b                                             ; $77f3: $b0
	db $10                                           ; $77f4: $10
	db $10                                           ; $77f5: $10
	jr nc, jr_029_7810                               ; $77f6: $30 $18

	jr nc, jr_029_7876                               ; $77f8: $30 $7c

	jr nz, jr_029_787a                               ; $77fa: $20 $7e

	ld a, e                                          ; $77fc: $7b
	cp $83                                           ; $77fd: $fe $83
	and b                                            ; $77ff: $a0
	rst $38                                          ; $7800: $ff
	ld b, b                                          ; $7801: $40
	ld a, a                                          ; $7802: $7f
	jr nz, jr_029_7844                               ; $7803: $20 $3f

	db $10                                           ; $7805: $10
	rra                                              ; $7806: $1f
	ld [$080f], sp                                   ; $7807: $08 $0f $08
	rrca                                             ; $780a: $0f
	inc b                                            ; $780b: $04
	rlca                                             ; $780c: $07
	inc b                                            ; $780d: $04
	rlca                                             ; $780e: $07
	ld a, [de]                                       ; $780f: $1a

jr_029_7810:
	db $e4                                           ; $7810: $e4
	ld h, $c0                                        ; $7811: $26 $c0
	ld b, e                                          ; $7813: $43
	add b                                            ; $7814: $80
	ld b, d                                          ; $7815: $42
	add c                                            ; $7816: $81
	inc h                                            ; $7817: $24
	jp $e718                                         ; $7818: $c3 $18 $e7


	ld [hl], a                                       ; $781b: $77
	dec a                                            ; $781c: $3d
	sub e                                            ; $781d: $93
	ld de, $100e                                     ; $781e: $11 $0e $10

jr_029_7821:
	rrca                                             ; $7821: $0f
	jr nz, jr_029_7843                               ; $7822: $20 $1f

	ret nz                                           ; $7824: $c0

	ccf                                              ; $7825: $3f
	ld bc, $03fe                                     ; $7826: $01 $fe $03
	db $fc                                           ; $7829: $fc
	ld [hl], a                                       ; $782a: $77
	ldh a, [hDisp1_SCX]                                     ; $782b: $f0 $91
	ld hl, $d200                                     ; $782d: $21 $00 $d2
	ld hl, $f30c                                     ; $7830: $21 $0c $f3
	nop                                              ; $7833: $00
	rst $38                                          ; $7834: $ff
	ld b, b                                          ; $7835: $40
	cp a                                             ; $7836: $bf
	xor l                                            ; $7837: $ad
	ld d, d                                          ; $7838: $52
	ld d, b                                          ; $7839: $50
	xor a                                            ; $783a: $af
	ld [hl], e                                       ; $783b: $73
	dec de                                           ; $783c: $1b
	ld a, e                                          ; $783d: $7b
	cp $99                                           ; $783e: $fe $99
	jr nz, jr_029_7821                               ; $7840: $20 $df

	ret nc                                           ; $7842: $d0

jr_029_7843:
	cpl                                              ; $7843: $2f

Call_029_7844:
jr_029_7844:
	xor d                                            ; $7844: $aa
	ld d, l                                          ; $7845: $55
	ld [hl], e                                       ; $7846: $73
	db $f4                                           ; $7847: $f4
	halt                                             ; $7848: $76
	db $e3                                           ; $7849: $e3
	ld l, [hl]                                       ; $784a: $6e
	pop hl                                           ; $784b: $e1
	sbc [hl]                                         ; $784c: $9e
	pop bc                                           ; $784d: $c1
	ld a, e                                          ; $784e: $7b
	cp $92                                           ; $784f: $fe $92
	add c                                            ; $7851: $81
	rra                                              ; $7852: $1f
	ld h, b                                          ; $7853: $60
	rra                                              ; $7854: $1f
	ld h, b                                          ; $7855: $60
	ccf                                              ; $7856: $3f
	ld b, b                                          ; $7857: $40
	ccf                                              ; $7858: $3f
	ret nz                                           ; $7859: $c0

	ccf                                              ; $785a: $3f
	ret nz                                           ; $785b: $c0

	ld a, a                                          ; $785c: $7f
	add b                                            ; $785d: $80
	halt                                             ; $785e: $76
	db $e4                                           ; $785f: $e4
	ld a, a                                          ; $7860: $7f
	ld l, a                                          ; $7861: $6f
	sub l                                            ; $7862: $95
	add b                                            ; $7863: $80
	ld bc, $0280                                     ; $7864: $01 $80 $02
	nop                                              ; $7867: $00
	dec b                                            ; $7868: $05
	nop                                              ; $7869: $00
	ld [bc], a                                       ; $786a: $02
	nop                                              ; $786b: $00
	inc b                                            ; $786c: $04
	db $fd                                           ; $786d: $fd
	sbc [hl]                                         ; $786e: $9e
	xor e                                            ; $786f: $ab
	ld a, e                                          ; $7870: $7b
	push af                                          ; $7871: $f5
	sub d                                            ; $7872: $92
	dec bc                                           ; $7873: $0b
	nop                                              ; $7874: $00
	ccf                                              ; $7875: $3f

jr_029_7876:
	nop                                              ; $7876: $00
	rrca                                             ; $7877: $0f
	nop                                              ; $7878: $00
	add hl, hl                                       ; $7879: $29

jr_029_787a:
	nop                                              ; $787a: $00
	ld d, h                                          ; $787b: $54
	nop                                              ; $787c: $00
	jr z, jr_029_787f                                ; $787d: $28 $00

jr_029_787f:
	ld a, [$bd7b]                                    ; $787f: $fa $7b $bd
	sbc [hl]                                         ; $7882: $9e
	cp $73                                           ; $7883: $fe $73
	or a                                             ; $7885: $b7
	sub e                                            ; $7886: $93
	ld [$5500], a                                    ; $7887: $ea $00 $55
	nop                                              ; $788a: $00
	ld a, [bc]                                       ; $788b: $0a
	nop                                              ; $788c: $00
	cp a                                             ; $788d: $bf
	db $e3                                           ; $788e: $e3
	rst $38                                          ; $788f: $ff
	ld h, e                                          ; $7890: $63
	rst $38                                          ; $7891: $ff
	ld h, c                                          ; $7892: $61
	ld a, e                                          ; $7893: $7b

jr_029_7894:
	cp $80                                           ; $7894: $fe $80
	jr nz, jr_029_7894                               ; $7896: $20 $fc

	db $10                                           ; $7898: $10
	ld [hl], b                                       ; $7899: $70
	nop                                              ; $789a: $00

jr_029_789b:
	add c                                            ; $789b: $81
	ld bc, $2838                                     ; $789c: $01 $38 $28
	jr c, jr_029_78c9                                ; $789f: $38 $28

	jr jr_029_789b                                   ; $78a1: $18 $f8

	inc c                                            ; $78a3: $0c
	adc h                                            ; $78a4: $8c
	add h                                            ; $78a5: $84
	add h                                            ; $78a6: $84
	rrca                                             ; $78a7: $0f
	ccf                                              ; $78a8: $3f
	ld a, a                                          ; $78a9: $7f
	ldh a, [$e3]                                     ; $78aa: $f0 $e3
	add b                                            ; $78ac: $80
	xor d                                            ; $78ad: $aa
	rst AddAOntoHL                                          ; $78ae: $ef
	xor c                                            ; $78af: $a9
	rst AddAOntoHL                                          ; $78b0: $ef
	sub h                                            ; $78b1: $94
	rst FarCall                                          ; $78b2: $f7
	ld d, a                                          ; $78b3: $57
	ld [hl], a                                       ; $78b4: $77
	sbc e                                            ; $78b5: $9b
	ld a, [hl]                                       ; $78b6: $7e
	ld a, c                                          ; $78b7: $79
	cp $81                                           ; $78b8: $fe $81
	ld [hl], a                                       ; $78ba: $77
	jp z, Jump_029_4980                              ; $78bb: $ca $80 $49

	cp $7d                                           ; $78be: $fe $7d
	cp $f5                                           ; $78c0: $fe $f5
	cp $85                                           ; $78c2: $fe $85
	cp $04                                           ; $78c4: $fe $04
	rst $38                                          ; $78c6: $ff
	inc b                                            ; $78c7: $04
	rst $38                                          ; $78c8: $ff

jr_029_78c9:
	ld [bc], a                                       ; $78c9: $02
	rst $38                                          ; $78ca: $ff
	adc [hl]                                         ; $78cb: $8e
	ld [hl], e                                       ; $78cc: $73
	ld d, a                                          ; $78cd: $57
	ld l, a                                          ; $78ce: $6f
	ld e, a                                          ; $78cf: $5f
	ld h, a                                          ; $78d0: $67
	ld e, a                                          ; $78d1: $5f
	ld h, a                                          ; $78d2: $67
	ld l, e                                          ; $78d3: $6b
	ld [hl], a                                       ; $78d4: $77
	ld l, a                                          ; $78d5: $6f
	inc sp                                           ; $78d6: $33
	and a                                            ; $78d7: $a7
	dec sp                                           ; $78d8: $3b
	or l                                             ; $78d9: $b5
	dec sp                                           ; $78da: $3b
	scf                                              ; $78db: $37
	sub e                                            ; $78dc: $93
	cp c                                             ; $78dd: $b9
	cp [hl]                                          ; $78de: $be
	ret nz                                           ; $78df: $c0

	sbc $e0                                          ; $78e0: $de $e0
	rst FarCall                                          ; $78e2: $f7
	ld hl, sp-$03                                    ; $78e3: $f8 $fd
	cp $ff                                           ; $78e5: $fe $ff
	rst $38                                          ; $78e7: $ff
	ccf                                              ; $78e8: $3f
	ld [hl], e                                       ; $78e9: $73
	ld b, [hl]                                       ; $78ea: $46
	ld a, d                                          ; $78eb: $7a
	rst GetHLinHL                                          ; $78ec: $cf
	ld a, [hl]                                       ; $78ed: $7e
	ret nz                                           ; $78ee: $c0

	ld a, [hl]                                       ; $78ef: $7e
	call z, $0080                                    ; $78f0: $cc $80 $00
	and b                                            ; $78f3: $a0
	ret nz                                           ; $78f4: $c0

	add sp, -$10                                     ; $78f5: $e8 $f0
	dec a                                            ; $78f7: $3d
	cp $73                                           ; $78f8: $fe $73
	adc a                                            ; $78fa: $8f
	ret nz                                           ; $78fb: $c0

	nop                                              ; $78fc: $00
	jr nz, jr_029_78ff                               ; $78fd: $20 $00

jr_029_78ff:
	ld b, c                                          ; $78ff: $41
	add c                                            ; $7900: $81
	pop bc                                           ; $7901: $c1
	inc bc                                           ; $7902: $03
	inc bc                                           ; $7903: $03
	rlca                                             ; $7904: $07
	rlca                                             ; $7905: $07
	rrca                                             ; $7906: $0f
	dec bc                                           ; $7907: $0b
	rra                                              ; $7908: $1f
	ei                                               ; $7909: $fb
	rst FarCall                                          ; $790a: $f7
	ld h, l                                          ; $790b: $65
	ld a, $45                                        ; $790c: $3e $45
	cp $c9                                           ; $790e: $fe $c9
	cp $8b                                           ; $7910: $fe $8b
	ret z                                            ; $7912: $c8

	rst $38                                          ; $7913: $ff
	adc b                                            ; $7914: $88
	rst $38                                          ; $7915: $ff
	adc c                                            ; $7916: $89
	rst $38                                          ; $7917: $ff
	sbc c                                            ; $7918: $99
	rst $38                                          ; $7919: $ff
	sub c                                            ; $791a: $91
	rst $38                                          ; $791b: $ff
	db $fc                                           ; $791c: $fc
	ld b, b                                          ; $791d: $40
	ld a, b                                          ; $791e: $78

Jump_029_791f:
	ret nz                                           ; $791f: $c0

	ld a, b                                          ; $7920: $78
	ret nz                                           ; $7921: $c0

	ldh a, [$80]                                     ; $7922: $f0 $80
	ldh [$80], a                                     ; $7924: $e0 $80
	ld a, d                                          ; $7926: $7a
	ld [bc], a                                       ; $7927: $02
	ld a, e                                          ; $7928: $7b
	ret z                                            ; $7929: $c8

	halt                                             ; $792a: $76
	call z, $fe7f                                    ; $792b: $cc $7f $fe
	ld a, [hl]                                       ; $792e: $7e
	add h                                            ; $792f: $84
	ld a, a                                          ; $7930: $7f
	cp $99                                           ; $7931: $fe $99
	inc e                                            ; $7933: $1c
	rlca                                             ; $7934: $07
	jr @+$11                                         ; $7935: $18 $0f

	jr c, jr_029_7948                                ; $7937: $38 $0f

	ld h, [hl]                                       ; $7939: $66
	xor $99                                          ; $793a: $ee $99
	dec d                                            ; $793c: $15
	ld [$55aa], a                                    ; $793d: $ea $aa $55
	dec d                                            ; $7940: $15
	ld [$f267], a                                    ; $7941: $ea $67 $f2
	ld a, a                                          ; $7944: $7f
	cp $97                                           ; $7945: $fe $97
	add d                                            ; $7947: $82

jr_029_7948:
	ld a, l                                          ; $7948: $7d
	push hl                                          ; $7949: $e5
	ld a, [de]                                       ; $794a: $1a
	dec bc                                           ; $794b: $0b
	db $f4                                           ; $794c: $f4
	ld a, a                                          ; $794d: $7f
	add b                                            ; $794e: $80
	ld h, a                                          ; $794f: $67
	ldh [c], a                                       ; $7950: $e2
	sbc c                                            ; $7951: $99
	xor e                                            ; $7952: $ab
	ld d, h                                          ; $7953: $54
	ld a, l                                          ; $7954: $7d
	add d                                            ; $7955: $82
	ld a, [$6705]                                    ; $7956: $fa $05 $67
	ldh [c], a                                       ; $7959: $e2
	ld a, [hl]                                       ; $795a: $7e
	or [hl]                                          ; $795b: $b6
	sbc l                                            ; $795c: $9d
	and b                                            ; $795d: $a0
	ld e, [hl]                                       ; $795e: $5e
	ld a, e                                          ; $795f: $7b
	add hl, bc                                       ; $7960: $09
	ld a, [hl]                                       ; $7961: $7e
	sbc [hl]                                         ; $7962: $9e
	ld a, a                                          ; $7963: $7f
	cp $9a                                           ; $7964: $fe $9a
	add e                                            ; $7966: $83
	nop                                              ; $7967: $00
	add e                                            ; $7968: $83
	ld bc, $7b06                                     ; $7969: $01 $06 $7b
	cp $9b                                           ; $796c: $fe $9b
	ld c, $03                                        ; $796e: $0e $03
	inc c                                            ; $7970: $0c
	inc bc                                           ; $7971: $03
	ld a, e                                          ; $7972: $7b
	xor l                                            ; $7973: $ad
	ld h, e                                          ; $7974: $63
	cp a                                             ; $7975: $bf
	ld l, e                                          ; $7976: $6b
	cp $fa                                           ; $7977: $fe $fa
	ld a, a                                          ; $7979: $7f
	cp b                                             ; $797a: $b8
	ld a, [hl]                                       ; $797b: $7e
	sbc h                                            ; $797c: $9c
	sub a                                            ; $797d: $97
	cp $80                                           ; $797e: $fe $80
	ld a, a                                          ; $7980: $7f
	ldh a, [rIF]                                     ; $7981: $f0 $0f
	dec b                                            ; $7983: $05
	nop                                              ; $7984: $00
	ld a, [hl+]                                      ; $7985: $2a
	ld a, d                                          ; $7986: $7a
	ret c                                            ; $7987: $d8

	ld a, a                                          ; $7988: $7f
	db $fc                                           ; $7989: $fc
	ld a, a                                          ; $798a: $7f
	ld hl, sp+$6f                                    ; $798b: $f8 $6f
	ld [$119e], a                                    ; $798d: $ea $9e $11
	cp $9c                                           ; $7990: $fe $9c
	ld d, b                                          ; $7992: $50
	nop                                              ; $7993: $00
	xor b                                            ; $7994: $a8
	ld [hl], d                                       ; $7995: $72
	or h                                             ; $7996: $b4
	ld a, e                                          ; $7997: $7b
	ld h, $91                                        ; $7998: $26 $91
	ld bc, $0203                                     ; $799a: $01 $03 $02
	ld b, $04                                        ; $799d: $06 $04
	inc c                                            ; $799f: $0c
	ld [$101c], sp                                   ; $79a0: $08 $1c $10
	jr c, @+$22                                      ; $79a3: $38 $20

	ld a, b                                          ; $79a5: $78
	ld b, b                                          ; $79a6: $40
	ldh a, [$7b]                                     ; $79a7: $f0 $7b
	ld c, h                                          ; $79a9: $4c
	ld [hl], a                                       ; $79aa: $77
	db $10                                           ; $79ab: $10
	push af                                          ; $79ac: $f5
	ld a, a                                          ; $79ad: $7f
	xor [hl]                                         ; $79ae: $ae
	sbc d                                            ; $79af: $9a
	ld a, a                                          ; $79b0: $7f
	nop                                              ; $79b1: $00
	dec sp                                           ; $79b2: $3b
	inc b                                            ; $79b3: $04
	inc b                                            ; $79b4: $04
	ld [hl], l                                       ; $79b5: $75
	rst JumpTable                                          ; $79b6: $c7
	db $fc                                           ; $79b7: $fc
	ld a, [hl]                                       ; $79b8: $7e
	add hl, de                                       ; $79b9: $19
	sbc [hl]                                         ; $79ba: $9e
	rst $38                                          ; $79bb: $ff
	ld a, e                                          ; $79bc: $7b
	cp $9a                                           ; $79bd: $fe $9a
	ld a, a                                          ; $79bf: $7f
	add e                                            ; $79c0: $83
	inc bc                                           ; $79c1: $03
	rst $38                                          ; $79c2: $ff
	ccf                                              ; $79c3: $3f
	call c, $9007                                    ; $79c4: $dc $07 $90
	ld a, e                                          ; $79c7: $7b
	cp l                                             ; $79c8: $bd
	ld e, d                                          ; $79c9: $5a
	cp l                                             ; $79ca: $bd
	ld a, l                                          ; $79cb: $7d
	sub [hl]                                         ; $79cc: $96
	ld a, $d3                                        ; $79cd: $3e $d3
	ld l, $db                                        ; $79cf: $2e $db
	sbc a                                            ; $79d1: $9f
	jp hl                                            ; $79d2: $e9


	sbc b                                            ; $79d3: $98
	rst AddAOntoHL                                          ; $79d4: $ef
	push bc                                          ; $79d5: $c5
	ld a, c                                          ; $79d6: $79
	db $fc                                           ; $79d7: $fc
	sbc b                                            ; $79d8: $98
	add c                                            ; $79d9: $81
	cp $e3                                           ; $79da: $fe $e3
	sbc h                                            ; $79dc: $9c
	cp h                                             ; $79dd: $bc
	ret nz                                           ; $79de: $c0

	ld a, h                                          ; $79df: $7c
	ld a, e                                          ; $79e0: $7b
	cp $99                                           ; $79e1: $fe $99
	cp [hl]                                          ; $79e3: $be
	ldh [$ae], a                                     ; $79e4: $e0 $ae
	ldh a, [$fe]                                     ; $79e6: $f0 $fe
	ld bc, $686f                                     ; $79e8: $01 $6f $68
	sbc [hl]                                         ; $79eb: $9e
	ld a, [hl]                                       ; $79ec: $7e
	ld a, [$3396]                                    ; $79ed: $fa $96 $33
	rst JumpTable                                          ; $79f0: $c7
	db $e3                                           ; $79f1: $e3
	dec b                                            ; $79f2: $05
	push bc                                          ; $79f3: $c5
	ld bc, $0189                                     ; $79f4: $01 $89 $01
	ld a, [bc]                                       ; $79f7: $0a
	ld a, c                                          ; $79f8: $79
	adc b                                            ; $79f9: $88
	ld a, a                                          ; $79fa: $7f
	cp $df                                           ; $79fb: $fe $df
	inc bc                                           ; $79fd: $03
	sub d                                            ; $79fe: $92
	ld sp, $33ff                                     ; $79ff: $31 $ff $33
	cp $73                                           ; $7a02: $fe $73
	cp $62                                           ; $7a04: $fe $62
	cp $66                                           ; $7a06: $fe $66
	db $fc                                           ; $7a08: $fc
	db $e4                                           ; $7a09: $e4
	db $fc                                           ; $7a0a: $fc
	call z, $fe7b                                    ; $7a0b: $cc $7b $fe
	ld [hl], c                                       ; $7a0e: $71
	ld d, b                                          ; $7a0f: $50
	sbc e                                            ; $7a10: $9b
	nop                                              ; $7a11: $00
	inc bc                                           ; $7a12: $03
	nop                                              ; $7a13: $00
	rlca                                             ; $7a14: $07
	ld a, d                                          ; $7a15: $7a
	ld c, $7f                                        ; $7a16: $0e $7f
	cp $99                                           ; $7a18: $fe $99
	ld e, $01                                        ; $7a1a: $1e $01
	ld a, b                                          ; $7a1c: $78
	rrca                                             ; $7a1d: $0f
	ldh a, [$1f]                                     ; $7a1e: $f0 $1f
	ld [hl], a                                       ; $7a20: $77
	cp $93                                           ; $7a21: $fe $93
	ld hl, sp+$2f                                    ; $7a23: $f8 $2f
	db $e4                                           ; $7a25: $e4
	ld b, a                                          ; $7a26: $47
	jp nz, $c383                                     ; $7a27: $c2 $83 $c3

	add c                                            ; $7a2a: $81
	nop                                              ; $7a2b: $00
	rst $38                                          ; $7a2c: $ff
	ld [bc], a                                       ; $7a2d: $02
	db $fd                                           ; $7a2e: $fd
	halt                                             ; $7a2f: $76
	ret z                                            ; $7a30: $c8

	sbc e                                            ; $7a31: $9b
	dec b                                            ; $7a32: $05
	ld a, [$d42b]                                    ; $7a33: $fa $2b $d4
	ld [hl], a                                       ; $7a36: $77
	db $fc                                           ; $7a37: $fc
	sbc c                                            ; $7a38: $99
	ld a, [de]                                       ; $7a39: $1a
	push hl                                          ; $7a3a: $e5
	and b                                            ; $7a3b: $a0
	ld e, a                                          ; $7a3c: $5f
	ld b, b                                          ; $7a3d: $40
	cp a                                             ; $7a3e: $bf
	ld [hl], b                                       ; $7a3f: $70
	or h                                             ; $7a40: $b4
	ld a, [hl]                                       ; $7a41: $7e
	ld sp, $fa7b                                     ; $7a42: $31 $7b $fa
	ld a, a                                          ; $7a45: $7f
	ldh a, [c]                                       ; $7a46: $f2
	add c                                            ; $7a47: $81
	ld [hl], l                                       ; $7a48: $75
	adc d                                            ; $7a49: $8a
	cp [hl]                                          ; $7a4a: $be
	ld b, c                                          ; $7a4b: $41
	cp $01                                           ; $7a4c: $fe $01
	ld hl, sp+$07                                    ; $7a4e: $f8 $07
	ld d, b                                          ; $7a50: $50
	xor a                                            ; $7a51: $af
	adc c                                            ; $7a52: $89
	halt                                             ; $7a53: $76
	call nc, $2c2b                                   ; $7a54: $d4 $2b $2c
	ret nc                                           ; $7a57: $d0

	ld hl, sp+$00                                    ; $7a58: $f8 $00
	ld a, b                                          ; $7a5a: $78
	add b                                            ; $7a5b: $80
	and b                                            ; $7a5c: $a0
	ld d, b                                          ; $7a5d: $50
	nop                                              ; $7a5e: $00
	ldh a, [$a0]                                     ; $7a5f: $f0 $a0
	ld b, b                                          ; $7a61: $40
	ld b, b                                          ; $7a62: $40
	and b                                            ; $7a63: $a0
	nop                                              ; $7a64: $00
	ldh [$7a], a                                     ; $7a65: $e0 $7a
	ld a, e                                          ; $7a67: $7b
	sbc h                                            ; $7a68: $9c
	jr nc, jr_029_7a7a                               ; $7a69: $30 $0f

	jr nc, @+$77                                     ; $7a6b: $30 $75

	adc d                                            ; $7a6d: $8a
	sbc l                                            ; $7a6e: $9d
	rra                                              ; $7a6f: $1f
	ldh [$75], a                                     ; $7a70: $e0 $75
	adc d                                            ; $7a72: $8a
	ld b, [hl]                                       ; $7a73: $46
	ret nz                                           ; $7a74: $c0

	ld h, a                                          ; $7a75: $67
	ld d, b                                          ; $7a76: $50
	ld h, d                                          ; $7a77: $62
	or b                                             ; $7a78: $b0

jr_029_7a79:
	ld [hl], d                                       ; $7a79: $72

jr_029_7a7a:
	cp d                                             ; $7a7a: $ba
	ld e, a                                          ; $7a7b: $5f
	ld [$a456], a                                    ; $7a7c: $ea $56 $a4
	ld [hl], a                                       ; $7a7f: $77
	ld [$6bf8], a                                    ; $7a80: $ea $f8 $6b
	ld [$70f2], a                                    ; $7a83: $ea $f2 $70
	add b                                            ; $7a86: $80
	push af                                          ; $7a87: $f5
	sub a                                            ; $7a88: $97
	dec b                                            ; $7a89: $05
	rlca                                             ; $7a8a: $07
	dec b                                            ; $7a8b: $05
	rlca                                             ; $7a8c: $07
	rlca                                             ; $7a8d: $07
	dec b                                            ; $7a8e: $05
	rrca                                             ; $7a8f: $0f
	ld a, [bc]                                       ; $7a90: $0a
	ld [hl], a                                       ; $7a91: $77
	cp $9e                                           ; $7a92: $fe $9e
	dec c                                            ; $7a94: $0d
	ld a, e                                          ; $7a95: $7b
	cp $83                                           ; $7a96: $fe $83
	db $e4                                           ; $7a98: $e4
	ld a, h                                          ; $7a99: $7c
	ldh a, [c]                                       ; $7a9a: $f2
	ld a, $ea                                        ; $7a9b: $3e $ea
	ld l, $e5                                        ; $7a9d: $2e $e5
	daa                                              ; $7a9f: $27
	ldh [c], a                                       ; $7aa0: $e2
	inc hl                                           ; $7aa1: $23
	pop hl                                           ; $7aa2: $e1
	ld hl, $20e0                                     ; $7aa3: $21 $e0 $20
	ldh [rAUD4LEN], a                                ; $7aa6: $e0 $20
	db $d3                                           ; $7aa8: $d3
	ld a, h                                          ; $7aa9: $7c
	ld a, h                                          ; $7aaa: $7c
	inc sp                                           ; $7aab: $33
	add hl, sp                                       ; $7aac: $39
	jr jr_029_7ac7                                   ; $7aad: $18 $18

	ld [$848c], sp                                   ; $7aaf: $08 $8c $84
	ret nz                                           ; $7ab2: $c0

	ret nz                                           ; $7ab3: $c0

	ld h, a                                          ; $7ab4: $67
	cp l                                             ; $7ab5: $bd
	sbc b                                            ; $7ab6: $98
	jr nz, jr_029_7a79                               ; $7ab7: $20 $c0

	ld b, b                                          ; $7ab9: $40
	jr c, @+$3a                                      ; $7aba: $38 $38

	inc b                                            ; $7abc: $04
	rlca                                             ; $7abd: $07
	ld [hl], d                                       ; $7abe: $72
	ld h, h                                          ; $7abf: $64
	sub e                                            ; $7ac0: $93
	dec b                                            ; $7ac1: $05
	ld b, $0e                                        ; $7ac2: $06 $0e
	inc b                                            ; $7ac4: $04
	ld b, $08                                        ; $7ac5: $06 $08

jr_029_7ac7:
	inc e                                            ; $7ac7: $1c
	nop                                              ; $7ac8: $00
	add hl, sp                                       ; $7ac9: $39
	ld bc, $01c1                                     ; $7aca: $01 $c1 $01
	ld [hl], a                                       ; $7acd: $77
	and e                                            ; $7ace: $a3
	add b                                            ; $7acf: $80
	ld [hl], h                                       ; $7ad0: $74
	ld a, h                                          ; $7ad1: $7c
	halt                                             ; $7ad2: $76
	ld a, d                                          ; $7ad3: $7a
	and $fa                                          ; $7ad4: $e6 $fa
	or $ea                                           ; $7ad6: $f6 $ea
	cp e                                             ; $7ad8: $bb
	or l                                             ; $7ad9: $b5
	dec de                                           ; $7ada: $1b
	dec d                                            ; $7adb: $15
	dec e                                            ; $7adc: $1d
	ld [de], a                                       ; $7add: $12
	dec e                                            ; $7ade: $1d
	ld [de], a                                       ; $7adf: $12
	rra                                              ; $7ae0: $1f
	ld bc, $033d                                     ; $7ae1: $01 $3d $03
	ld a, $03                                        ; $7ae4: $3e $03
	ld a, [hl-]                                      ; $7ae6: $3a
	rlca                                             ; $7ae7: $07
	dec e                                            ; $7ae8: $1d
	ld b, $1d                                        ; $7ae9: $06 $1d
	ld b, $8d                                        ; $7aeb: $06 $8d
	add [hl]                                         ; $7aed: $86
	adc l                                            ; $7aee: $8d
	sbc l                                            ; $7aef: $9d
	add [hl]                                         ; $7af0: $86
	add c                                            ; $7af1: $81
	ld a, e                                          ; $7af2: $7b
	jp c, $b77f                                      ; $7af3: $da $7f $b7

	ld a, h                                          ; $7af6: $7c
	sub e                                            ; $7af7: $93
	ld a, a                                          ; $7af8: $7f
	ld h, e                                          ; $7af9: $63
	ld a, [hl]                                       ; $7afa: $7e
	ld hl, sp+$7f                                    ; $7afb: $f8 $7f
	cp $7e                                           ; $7afd: $fe $7e
	and c                                            ; $7aff: $a1
	adc a                                            ; $7b00: $8f
	rla                                              ; $7b01: $17
	add sp, -$7e                                     ; $7b02: $e8 $82
	db $fd                                           ; $7b04: $fd
	sub l                                            ; $7b05: $95
	ld [$457a], a                                    ; $7b06: $ea $7a $45
	ccf                                              ; $7b09: $3f
	jr nz, @+$41                                     ; $7b0a: $20 $3f

	jr nz, jr_029_7b2d                               ; $7b0c: $20 $1f

	db $10                                           ; $7b0e: $10
	dec c                                            ; $7b0f: $0d
	ld a, [bc]                                       ; $7b10: $0a
	ld [hl], a                                       ; $7b11: $77
	inc l                                            ; $7b12: $2c
	sbc l                                            ; $7b13: $9d
	ld e, a                                          ; $7b14: $5f
	and b                                            ; $7b15: $a0
	ld l, a                                          ; $7b16: $6f
	inc h                                            ; $7b17: $24
	ld a, h                                          ; $7b18: $7c
	and h                                            ; $7b19: $a4
	sbc [hl]                                         ; $7b1a: $9e
	or c                                             ; $7b1b: $b1
	ld a, e                                          ; $7b1c: $7b
	nop                                              ; $7b1d: $00
	ld a, [hl]                                       ; $7b1e: $7e
	add $96                                          ; $7b1f: $c6 $96
	db $f4                                           ; $7b21: $f4
	dec bc                                           ; $7b22: $0b
	and b                                            ; $7b23: $a0
	ld e, a                                          ; $7b24: $5f
	push de                                          ; $7b25: $d5
	ld a, [hl+]                                      ; $7b26: $2a
	rst $38                                          ; $7b27: $ff
	nop                                              ; $7b28: $00
	xor a                                            ; $7b29: $af
	halt                                             ; $7b2a: $76
	ld c, d                                          ; $7b2b: $4a
	ld [hl], h                                       ; $7b2c: $74

jr_029_7b2d:
	ld e, d                                          ; $7b2d: $5a
	ld a, c                                          ; $7b2e: $79
	adc h                                            ; $7b2f: $8c
	ld a, [hl]                                       ; $7b30: $7e
	ld l, l                                          ; $7b31: $6d
	ld l, l                                          ; $7b32: $6d
	adc d                                            ; $7b33: $8a
	ld [hl], h                                       ; $7b34: $74
	ld e, d                                          ; $7b35: $5a
	ld [hl], h                                       ; $7b36: $74
	ld e, b                                          ; $7b37: $58
	inc bc                                           ; $7b38: $03
	cp $03                                           ; $7b39: $fe $03
	cp $6f                                           ; $7b3b: $fe $6f
	cp $56                                           ; $7b3d: $fe $56
	and h                                            ; $7b3f: $a4
	ld [hl], d                                       ; $7b40: $72
	and b                                            ; $7b41: $a0
	ld e, d                                          ; $7b42: $5a
	and h                                            ; $7b43: $a4
	ld h, c                                          ; $7b44: $61
	jr nc, jr_029_7ba1                               ; $7b45: $30 $5a

	adc [hl]                                         ; $7b47: $8e
	sbc b                                            ; $7b48: $98
	add hl, de                                       ; $7b49: $19
	ld d, $1b                                        ; $7b4a: $16 $1b
	inc d                                            ; $7b4c: $14
	dec de                                           ; $7b4d: $1b
	inc d                                            ; $7b4e: $14
	inc bc                                           ; $7b4f: $03
	ld h, e                                          ; $7b50: $63
	ld [$d09d], a                                    ; $7b51: $ea $9d $d0
	jr nc, jr_029_7bcd                               ; $7b54: $30 $77

	cp $97                                           ; $7b56: $fe $97
	add sp, $18                                      ; $7b58: $e8 $18
	ld l, b                                          ; $7b5a: $68
	jr jr_029_7b65                                   ; $7b5b: $18 $08

	jr jr_029_7b63                                   ; $7b5d: $18 $04

	inc b                                            ; $7b5f: $04
	ldh [$d1], a                                     ; $7b60: $e0 $d1
	ld a, [hl]                                       ; $7b62: $7e

jr_029_7b63:
	ldh [c], a                                       ; $7b63: $e2
	add b                                            ; $7b64: $80

jr_029_7b65:
	ld c, $09                                        ; $7b65: $0e $09
	ld c, $09                                        ; $7b67: $0e $09
	rrca                                             ; $7b69: $0f
	ld [$080f], sp                                   ; $7b6a: $08 $0f $08
	rra                                              ; $7b6d: $1f
	jr jr_029_7bdf                                   ; $7b6e: $18 $6f

	ld l, b                                          ; $7b70: $68
	adc a                                            ; $7b71: $8f
	adc b                                            ; $7b72: $88
	rrca                                             ; $7b73: $0f
	ld [$47c2], sp                                   ; $7b74: $08 $c2 $47
	jp $e143                                         ; $7b77: $c3 $43 $e1


	and e                                            ; $7b7a: $a3
	pop hl                                           ; $7b7b: $e1
	and e                                            ; $7b7c: $a3
	pop af                                           ; $7b7d: $f1
	ld d, c                                          ; $7b7e: $51
	ld hl, sp+$29                                    ; $7b7f: $f8 $29
	cp h                                             ; $7b81: $bc
	dec d                                            ; $7b82: $15
	sbc a                                            ; $7b83: $9f
	sbc l                                            ; $7b84: $9d
	dec bc                                           ; $7b85: $0b
	db $fc                                           ; $7b86: $fc
	ld a, b                                          ; $7b87: $78
	adc c                                            ; $7b88: $89
	ld a, e                                          ; $7b89: $7b
	add l                                            ; $7b8a: $85
	ld a, l                                          ; $7b8b: $7d
	sub $94                                          ; $7b8c: $d6 $94
	ldh a, [hDisp1_LCDC]                                     ; $7b8e: $f0 $8f
	ld hl, sp-$79                                    ; $7b90: $f8 $87
	cp $81                                           ; $7b92: $fe $81
	rst $38                                          ; $7b94: $ff
	ld [$040f], sp                                   ; $7b95: $08 $0f $04
	rlca                                             ; $7b98: $07
	ld [hl], l                                       ; $7b99: $75
	ld b, [hl]                                       ; $7b9a: $46
	ld a, a                                          ; $7b9b: $7f
	add $7e                                          ; $7b9c: $c6 $7e
	add b                                            ; $7b9e: $80
	ld a, d                                          ; $7b9f: $7a
	xor d                                            ; $7ba0: $aa

jr_029_7ba1:
	sub [hl]                                         ; $7ba1: $96
	add b                                            ; $7ba2: $80
	ld l, d                                          ; $7ba3: $6a
	add b                                            ; $7ba4: $80
	or a                                             ; $7ba5: $b7
	ld b, b                                          ; $7ba6: $40
	ld e, a                                          ; $7ba7: $5f
	and b                                            ; $7ba8: $a0
	dec bc                                           ; $7ba9: $0b
	db $f4                                           ; $7baa: $f4
	ld [hl], l                                       ; $7bab: $75
	ld l, h                                          ; $7bac: $6c
	sub b                                            ; $7bad: $90
	add l                                            ; $7bae: $85
	ld a, [$7d42]                                    ; $7baf: $fa $42 $7d
	cp $00                                           ; $7bb2: $fe $00
	db $ec                                           ; $7bb4: $ec

jr_029_7bb5:
	db $10                                           ; $7bb5: $10
	ld d, b                                          ; $7bb6: $50
	xor h                                            ; $7bb7: $ac
	add b                                            ; $7bb8: $80
	ld a, b                                          ; $7bb9: $78
	ret nc                                           ; $7bba: $d0

	jr z, jr_029_7bb5                                ; $7bbb: $28 $f8

	ld a, e                                          ; $7bbd: $7b
	ld h, c                                          ; $7bbe: $61
	sbc l                                            ; $7bbf: $9d
	or b                                             ; $7bc0: $b0
	ld b, b                                          ; $7bc1: $40
	ld l, h                                          ; $7bc2: $6c
	ld e, d                                          ; $7bc3: $5a
	ld a, e                                          ; $7bc4: $7b
	cp $9e                                           ; $7bc5: $fe $9e
	jr c, jr_029_7c42                                ; $7bc7: $38 $79

	adc b                                            ; $7bc9: $88
	sbc h                                            ; $7bca: $9c
	ld [hl], b                                       ; $7bcb: $70
	rra                                              ; $7bcc: $1f

jr_029_7bcd:
	ld h, b                                          ; $7bcd: $60
	ld [bc], a                                       ; $7bce: $02
	xor $03                                          ; $7bcf: $ee $03
	cp $03                                           ; $7bd1: $fe $03
	cp $13                                           ; $7bd3: $fe $13
	cp $4d                                           ; $7bd5: $fe $4d
	ld [hl-], a                                      ; $7bd7: $32
	ld a, d                                          ; $7bd8: $7a
	and b                                            ; $7bd9: $a0
	halt                                             ; $7bda: $76
	cp d                                             ; $7bdb: $ba
	sbc [hl]                                         ; $7bdc: $9e
	db $fc                                           ; $7bdd: $fc
	ld e, a                                          ; $7bde: $5f

jr_029_7bdf:
	ld [$3259], a                                    ; $7bdf: $ea $59 $32
	ld [hl], e                                       ; $7be2: $73
	ld [$3249], a                                    ; $7be3: $ea $49 $32
	sub d                                            ; $7be6: $92
	ldh a, [$e3]                                     ; $7be7: $f0 $e3
	ld [bc], a                                       ; $7be9: $02
	cp $84                                           ; $7bea: $fe $84
	cp $49                                           ; $7bec: $fe $49
	ei                                               ; $7bee: $fb
	ld d, [hl]                                       ; $7bef: $56
	or $6c                                           ; $7bf0: $f6 $6c
	rra                                              ; $7bf2: $1f
	rra                                              ; $7bf3: $1f
	ld a, b                                          ; $7bf4: $78
	ld e, e                                          ; $7bf5: $5b
	ld a, h                                          ; $7bf6: $7c
	ld e, h                                          ; $7bf7: $5c
	sbc l                                            ; $7bf8: $9d
	ld c, b                                          ; $7bf9: $48
	rrca                                             ; $7bfa: $0f
	ld a, d                                          ; $7bfb: $7a
	jp z, $fe7b                                      ; $7bfc: $ca $7b $fe

	add b                                            ; $7bff: $80
	jr jr_029_7ba1                                   ; $7c00: $18 $9f

	ret nc                                           ; $7c02: $d0

	rra                                              ; $7c03: $1f
	jr nc, @+$81                                     ; $7c04: $30 $7f

	ldh [$0c], a                                     ; $7c06: $e0 $0c
	rlca                                             ; $7c08: $07
	rrca                                             ; $7c09: $0f
	inc bc                                           ; $7c0a: $03
	sbc h                                            ; $7c0b: $9c

jr_029_7c0c:
	inc bc                                           ; $7c0c: $03
	ld hl, sp+$07                                    ; $7c0d: $f8 $07
	ld hl, sp+$07                                    ; $7c0f: $f8 $07
	ldh a, [rIF]                                     ; $7c11: $f0 $0f
	ldh [$1f], a                                     ; $7c13: $e0 $1f
	add b                                            ; $7c15: $80
	ld a, a                                          ; $7c16: $7f
	ret nc                                           ; $7c17: $d0

	xor a                                            ; $7c18: $af
	ld a, [$9f85]                                    ; $7c19: $fa $85 $9f
	ldh [$b4], a                                     ; $7c1c: $e0 $b4

jr_029_7c1e:
	ret nz                                           ; $7c1e: $c0

	add b                                            ; $7c1f: $80
	add sp, -$80                                     ; $7c20: $e8 $80
	db $fd                                           ; $7c22: $fd
	add b                                            ; $7c23: $80

jr_029_7c24:
	rst $38                                          ; $7c24: $ff
	add b                                            ; $7c25: $80
	rst SubAFromDE                                          ; $7c26: $df
	and c                                            ; $7c27: $a1
	ld [hl], b                                       ; $7c28: $70
	ret nz                                           ; $7c29: $c0

	jr c, jr_029_7c0c                                ; $7c2a: $38 $e0

	jr jr_029_7c1e                                   ; $7c2c: $18 $f0

	jr @+$72                                         ; $7c2e: $18 $70

	jr jr_029_7c62                                   ; $7c30: $18 $30

	jr jr_029_7c24                                   ; $7c32: $18 $f0

	ld hl, sp-$10                                    ; $7c34: $f8 $f0
	ld hl, sp+$10                                    ; $7c36: $f8 $10
	jr nz, jr_029_7c79                               ; $7c38: $20 $3f

	jr nc, jr_029_7c5b                               ; $7c3a: $30 $1f

	db $10                                           ; $7c3c: $10
	rra                                              ; $7c3d: $1f
	jr c, jr_029_7cbf                                ; $7c3e: $38 $7f

	pop bc                                           ; $7c40: $c1
	ld [hl], e                                       ; $7c41: $73

jr_029_7c42:
	cp e                                             ; $7c42: $bb
	sbc l                                            ; $7c43: $9d
	sbc b                                            ; $7c44: $98
	adc a                                            ; $7c45: $8f
	ld a, c                                          ; $7c46: $79
	ld d, l                                          ; $7c47: $55
	ld a, a                                          ; $7c48: $7f
	cp $7d                                           ; $7c49: $fe $7d
	ld c, a                                          ; $7c4b: $4f
	ld h, c                                          ; $7c4c: $61
	adc d                                            ; $7c4d: $8a
	ld a, [hl]                                       ; $7c4e: $7e
	adc $74                                          ; $7c4f: $ce $74
	ld e, d                                          ; $7c51: $5a
	ld a, a                                          ; $7c52: $7f
	cp $01                                           ; $7c53: $fe $01
	adc d                                            ; $7c55: $8a
	inc bc                                           ; $7c56: $03
	cp $03                                           ; $7c57: $fe $03
	cp $03                                           ; $7c59: $fe $03

jr_029_7c5b:
	cp $03                                           ; $7c5b: $fe $03
	cp $7b                                           ; $7c5d: $fe $7b
	cp $4d                                           ; $7c5f: $fe $4d
	ld [hl-], a                                      ; $7c61: $32

jr_029_7c62:
	ld a, d                                          ; $7c62: $7a
	or b                                             ; $7c63: $b0
	ld e, d                                          ; $7c64: $5a
	and h                                            ; $7c65: $a4
	ld l, d                                          ; $7c66: $6a
	and b                                            ; $7c67: $a0
	ld a, d                                          ; $7c68: $7a
	cp d                                             ; $7c69: $ba
	sbc l                                            ; $7c6a: $9d
	inc b                                            ; $7c6b: $04
	ld hl, sp+$67                                    ; $7c6c: $f8 $67
	ld [$009d], a                                    ; $7c6e: $ea $9d $00
	ccf                                              ; $7c71: $3f
	ld a, d                                          ; $7c72: $7a
	cp d                                             ; $7c73: $ba
	ld [hl], h                                       ; $7c74: $74
	daa                                              ; $7c75: $27
	ld l, d                                          ; $7c76: $6a
	adc [hl]                                         ; $7c77: $8e
	ld a, a                                          ; $7c78: $7f

jr_029_7c79:
	db $ed                                           ; $7c79: $ed
	ld a, a                                          ; $7c7a: $7f
	cp $99                                           ; $7c7b: $fe $99
	ld [bc], a                                       ; $7c7d: $02
	rst $38                                          ; $7c7e: $ff
	inc b                                            ; $7c7f: $04
	ccf                                              ; $7c80: $3f
	ld [$6f0f], sp                                   ; $7c81: $08 $0f $6f
	ld [$2f80], a                                    ; $7c84: $ea $80 $2f
	ret nc                                           ; $7c87: $d0

	add hl, sp                                       ; $7c88: $39
	ret nz                                           ; $7c89: $c0

	ld [hl], d                                       ; $7c8a: $72
	add c                                            ; $7c8b: $81
	dec l                                            ; $7c8c: $2d
	jp nc, $a15e                                     ; $7c8d: $d2 $5e $a1

	ld hl, sp+$02                                    ; $7c90: $f8 $02
	ld a, l                                          ; $7c92: $7d
	nop                                              ; $7c93: $00
	ld c, $00                                        ; $7c94: $0e $00
	ld sp, hl                                        ; $7c96: $f9
	ld sp, hl                                        ; $7c97: $f9
	db $fd                                           ; $7c98: $fd
	adc c                                            ; $7c99: $89
	ld a, l                                          ; $7c9a: $7d
	db $fd                                           ; $7c9b: $fd
	inc a                                            ; $7c9c: $3c
	db $fc                                           ; $7c9d: $fc
	ld a, [hl]                                       ; $7c9e: $7e
	call nz, $be3e                                   ; $7c9f: $c4 $3e $be
	ld bc, $0057                                     ; $7ca2: $01 $57 $00
	adc h                                            ; $7ca5: $8c
	xor d                                            ; $7ca6: $aa
	sub b                                            ; $7ca7: $90
	rra                                              ; $7ca8: $1f
	or b                                             ; $7ca9: $b0
	ld e, $e0                                        ; $7caa: $1e $e0
	ld a, $c0                                        ; $7cac: $3e $c0
	cp $80                                           ; $7cae: $fe $80
	db $fc                                           ; $7cb0: $fc
	add b                                            ; $7cb1: $80
	db $fc                                           ; $7cb2: $fc
	nop                                              ; $7cb3: $00
	ld hl, sp+$00                                    ; $7cb4: $f8 $00
	cp b                                             ; $7cb6: $b8
	nop                                              ; $7cb7: $00
	rlca                                             ; $7cb8: $07
	ld [hl], h                                       ; $7cb9: $74
	ld e, d                                          ; $7cba: $5a
	ld a, c                                          ; $7cbb: $79
	adc d                                            ; $7cbc: $8a
	ld l, l                                          ; $7cbd: $6d
	adc b                                            ; $7cbe: $88

jr_029_7cbf:
	sbc [hl]                                         ; $7cbf: $9e
	jr c, @+$05                                      ; $7cc0: $38 $03

	ld c, [hl]                                       ; $7cc2: $4e
	inc bc                                           ; $7cc3: $03
	cp $03                                           ; $7cc4: $fe $03
	cp $03                                           ; $7cc6: $fe $03
	cp $03                                           ; $7cc8: $fe $03
	cp $03                                           ; $7cca: $fe $03
	cp $1f                                           ; $7ccc: $fe $1f
	cp $4d                                           ; $7cce: $fe $4d
	ld [hl-], a                                      ; $7cd0: $32
	ld a, d                                          ; $7cd1: $7a
	or b                                             ; $7cd2: $b0
	ld d, c                                          ; $7cd3: $51
	ld [hl-], a                                      ; $7cd4: $32
	ld a, e                                          ; $7cd5: $7b
	ldh a, [$9e]                                     ; $7cd6: $f0 $9e
	inc bc                                           ; $7cd8: $03
	ld d, l                                          ; $7cd9: $55
	ld [hl-], a                                      ; $7cda: $32
	ld a, a                                          ; $7cdb: $7f
	ld [$0099], a                                    ; $7cdc: $ea $99 $00
	ld d, l                                          ; $7cdf: $55
	nop                                              ; $7ce0: $00
	ld a, d                                          ; $7ce1: $7a
	nop                                              ; $7ce2: $00
	rra                                              ; $7ce3: $1f
	ld e, a                                          ; $7ce4: $5f
	ld [$009d], a                                    ; $7ce5: $ea $9d $00
	ld d, b                                          ; $7ce8: $50
	ld a, e                                          ; $7ce9: $7b
	ld a, [$fe7f]                                    ; $7cea: $fa $7f $fe
	ld [hl], l                                       ; $7ced: $75
	adc d                                            ; $7cee: $8a
	rst $38                                          ; $7cef: $ff
	ld a, a                                          ; $7cf0: $7f
	ldh [c], a                                       ; $7cf1: $e2
	sbc [hl]                                         ; $7cf2: $9e
	ld bc, $5a78                                     ; $7cf3: $01 $78 $5a
	ld a, l                                          ; $7cf6: $7d
	ld l, a                                          ; $7cf7: $6f
	sbc [hl]                                         ; $7cf8: $9e
	ld h, b                                          ; $7cf9: $60
	ld a, e                                          ; $7cfa: $7b
	cp $9e                                           ; $7cfb: $fe $9e
	ldh [$6d], a                                     ; $7cfd: $e0 $6d
	adc d                                            ; $7cff: $8a
	inc bc                                           ; $7d00: $03
	ld a, [hl]                                       ; $7d01: $7e
	dec hl                                           ; $7d02: $2b
	cp $97                                           ; $7d03: $fe $97
	pop af                                           ; $7d05: $f1
	nop                                              ; $7d06: $00
	ldh [$0e], a                                     ; $7d07: $e0 $0e
	ret nz                                           ; $7d09: $c0

	ld de, $17c0                                     ; $7d0a: $11 $c0 $17
	ld h, a                                          ; $7d0d: $67
	ldh a, [$97]                                     ; $7d0e: $f0 $97
	db $ec                                           ; $7d10: $ec
	nop                                              ; $7d11: $00
	ld b, b                                          ; $7d12: $40
	adc e                                            ; $7d13: $8b
	ld bc, $206a                                     ; $7d14: $01 $6a $20
	ld c, h                                          ; $7d17: $4c
	ld h, a                                          ; $7d18: $67
	ldh a, [$97]                                     ; $7d19: $f0 $97
	rst SubAFromBC                                          ; $7d1b: $e7
	nop                                              ; $7d1c: $00
	ld bc, $095a                                     ; $7d1d: $01 $5a $09
	ld d, d                                          ; $7d20: $52
	nop                                              ; $7d21: $00
	ld h, d                                          ; $7d22: $62
	ld h, a                                          ; $7d23: $67
	ldh a, [$97]                                     ; $7d24: $f0 $97
	cp l                                             ; $7d26: $bd
	nop                                              ; $7d27: $00
	jr jr_029_7d4b                                   ; $7d28: $18 $21

	jr @+$27                                         ; $7d2a: $18 $25

	inc e                                            ; $7d2c: $1c
	and c                                            ; $7d2d: $a1
	ld h, a                                          ; $7d2e: $67
	ldh a, [$97]                                     ; $7d2f: $f0 $97
	sbc h                                            ; $7d31: $9c
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	ld l, e                                          ; $7d34: $6b
	ld hl, $004a                                     ; $7d35: $21 $4a $00
	adc h                                            ; $7d38: $8c
	ld c, a                                          ; $7d39: $4f
	ret nc                                           ; $7d3a: $d0

	sbc [hl]                                         ; $7d3b: $9e
	ld bc, $d063                                     ; $7d3c: $01 $63 $d0
	sbc e                                            ; $7d3f: $9b
	ld l, h                                          ; $7d40: $6c
	nop                                              ; $7d41: $00
	jr nz, jr_029_7d8f                               ; $7d42: $20 $4b

	ld a, e                                          ; $7d44: $7b
	xor $9e                                          ; $7d45: $ee $9e
	ld [de], a                                       ; $7d47: $12
	ld h, a                                          ; $7d48: $67
	ldh a, [$9b]                                     ; $7d49: $f0 $9b

jr_029_7d4b:
	db $db                                           ; $7d4b: $db
	nop                                              ; $7d4c: $00
	ld bc, $7b4a                                     ; $7d4d: $01 $4a $7b
	cp $9e                                           ; $7d50: $fe $9e
	ld d, d                                          ; $7d52: $52
	ld h, a                                          ; $7d53: $67
	ldh a, [$9b]                                     ; $7d54: $f0 $9b
	sub a                                            ; $7d56: $97
	nop                                              ; $7d57: $00
	add b                                            ; $7d58: $80
	ld [de], a                                       ; $7d59: $12
	ld a, e                                          ; $7d5a: $7b
	inc h                                            ; $7d5b: $24
	sbc [hl]                                         ; $7d5c: $9e

jr_029_7d5d:
	ld d, l                                          ; $7d5d: $55
	ld h, a                                          ; $7d5e: $67
	ldh a, [$97]                                     ; $7d5f: $f0 $97
	ld e, $40                                        ; $7d61: $1e $40
	ld c, $50                                        ; $7d63: $0e $50
	inc c                                            ; $7d65: $0c
	ld d, c                                          ; $7d66: $51
	inc c                                            ; $7d67: $0c
	ld d, c                                          ; $7d68: $51
	ld h, a                                          ; $7d69: $67
	ldh a, [$9d]                                     ; $7d6a: $f0 $9d
	ld e, l                                          ; $7d6c: $5d
	nop                                              ; $7d6d: $00
	ld [hl], a                                       ; $7d6e: $77
	ldh a, [c]                                       ; $7d6f: $f2
	ld e, a                                          ; $7d70: $5f
	ldh a, [$97]                                     ; $7d71: $f0 $97

jr_029_7d73:
	db $e3                                           ; $7d73: $e3
	nop                                              ; $7d74: $00
	ldh [$0d], a                                     ; $7d75: $e0 $0d
	db $e4                                           ; $7d77: $e4
	add hl, bc                                       ; $7d78: $09
	ldh [$03], a                                     ; $7d79: $e0 $03
	ld h, a                                          ; $7d7b: $67
	ldh a, [$98]                                     ; $7d7c: $f0 $98
	ld h, [hl]                                       ; $7d7e: $66
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	ld e, d                                          ; $7d81: $5a
	ld [$0056], sp                                   ; $7d82: $08 $56 $00
	ld h, e                                          ; $7d85: $63
	or b                                             ; $7d86: $b0
	sub a                                            ; $7d87: $97
	ret nc                                           ; $7d88: $d0

	ld bc, $9b40                                     ; $7d89: $01 $40 $9b
	ld c, c                                          ; $7d8c: $49
	sub d                                            ; $7d8d: $92
	add hl, bc                                       ; $7d8e: $09

jr_029_7d8f:
	ld [de], a                                       ; $7d8f: $12
	ld h, [hl]                                       ; $7d90: $66
	and h                                            ; $7d91: $a4
	ld a, a                                          ; $7d92: $7f
	ld h, b                                          ; $7d93: $60
	adc c                                            ; $7d94: $89
	inc b                                            ; $7d95: $04

jr_029_7d96:
	ld l, c                                          ; $7d96: $69
	inc h                                            ; $7d97: $24
	ld e, c                                          ; $7d98: $59
	inc e                                            ; $7d99: $1c
	add b                                            ; $7d9a: $80
	nop                                              ; $7d9b: $00
	add c                                            ; $7d9c: $81
	nop                                              ; $7d9d: $00
	di                                               ; $7d9e: $f3
	nop                                              ; $7d9f: $00
	ei                                               ; $7da0: $fb
	ldh [$1f], a                                     ; $7da1: $e0 $1f
	ld h, e                                          ; $7da3: $63
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	xor [hl]                                         ; $7da6: $ae
	add [hl]                                         ; $7da7: $86
	jr z, jr_029_7daa                                ; $7da8: $28 $00

jr_029_7daa:
	ld h, e                                          ; $7daa: $63
	ld h, h                                          ; $7dab: $64
	ld e, b                                          ; $7dac: $58
	sub a                                            ; $7dad: $97
	ld sp, $0000                                     ; $7dae: $31 $00 $00
	rst SubAFromHL                                          ; $7db1: $d7
	ld b, e                                          ; $7db2: $43
	or h                                             ; $7db3: $b4
	db $10                                           ; $7db4: $10
	ld hl, $c067                                     ; $7db5: $21 $67 $c0
	ld a, a                                          ; $7db8: $7f
	add $7f                                          ; $7db9: $c6 $7f
	ld [bc], a                                       ; $7dbb: $02
	ld a, e                                          ; $7dbc: $7b
	jr nc, jr_029_7d5d                               ; $7dbd: $30 $9e

	ld a, [de]                                       ; $7dbf: $1a
	ld h, d                                          ; $7dc0: $62
	ld e, b                                          ; $7dc1: $58
	sbc b                                            ; $7dc2: $98
	ld b, h                                          ; $7dc3: $44
	nop                                              ; $7dc4: $00
	ld e, l                                          ; $7dc5: $5d
	inc c                                            ; $7dc6: $0c
	ld d, c                                          ; $7dc7: $51
	nop                                              ; $7dc8: $00
	ld b, l                                          ; $7dc9: $45
	ld h, a                                          ; $7dca: $67
	ldh a, [hDisp1_LCDC]                                     ; $7dcb: $f0 $8f
	ld a, a                                          ; $7dcd: $7f
	nop                                              ; $7dce: $00
	ccf                                              ; $7dcf: $3f
	add b                                            ; $7dd0: $80
	sbc a                                            ; $7dd1: $9f
	jr nz, jr_029_7d73                               ; $7dd2: $20 $9f

	jr nz, jr_029_7d96                               ; $7dd4: $20 $c0

	ld de, $0ee0                                     ; $7dd6: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $7dd9: $e0 $11
	ldh a, [rIF]                                     ; $7ddb: $f0 $0f
	ld h, a                                          ; $7ddd: $67
	add sp, -$69                                     ; $7dde: $e8 $97
	inc h                                            ; $7de0: $24
	ld c, e                                          ; $7de1: $4b
	ld hl, $60ca                                     ; $7de2: $21 $ca $60
	adc h                                            ; $7de5: $8c
	db $e4                                           ; $7de6: $e4
	dec de                                           ; $7de7: $1b
	ld h, a                                          ; $7de8: $67
	ldh a, [$97]                                     ; $7de9: $f0 $97
	jr nz, @+$5c                                     ; $7deb: $20 $5a

	ld [$0052], sp                                   ; $7ded: $08 $52 $00
	rst SubAFromBC                                          ; $7df0: $e7
	ld h, e                                          ; $7df1: $63
	sbc h                                            ; $7df2: $9c
	ld h, a                                          ; $7df3: $67
	ldh a, [$7e]                                     ; $7df4: $f0 $7e
	adc $97                                          ; $7df6: $ce $97
	inc c                                            ; $7df8: $0c
	ld de, $b500                                     ; $7df9: $11 $00 $b5
	sub b                                            ; $7dfc: $90
	ld h, a                                          ; $7dfd: $67
	di                                               ; $7dfe: $f3
	inc c                                            ; $7dff: $0c
	ld l, a                                          ; $7e00: $6f
	ldh a, [$9e]                                     ; $7e01: $f0 $9e
	add h                                            ; $7e03: $84
	halt                                             ; $7e04: $76
	jp z, $9c9c                                      ; $7e05: $ca $9c $9c

	adc h                                            ; $7e08: $8c
	ld [hl], e                                       ; $7e09: $73
	ld h, a                                          ; $7e0a: $67
	ldh [$9e], a                                     ; $7e0b: $e0 $9e
	ld hl, $ca76                                     ; $7e0d: $21 $76 $ca
	sbc [hl]                                         ; $7e10: $9e
	and $5f                                          ; $7e11: $e6 $5f
	ret nc                                           ; $7e13: $d0

	ld [hl], a                                       ; $7e14: $77
	ld a, d                                          ; $7e15: $7a
	ld a, [hl]                                       ; $7e16: $7e
	ld a, d                                          ; $7e17: $7a
	sbc l                                            ; $7e18: $9d
	inc h                                            ; $7e19: $24
	db $db                                           ; $7e1a: $db
	ld h, e                                          ; $7e1b: $63
	ld a, b                                          ; $7e1c: $78
	ld a, a                                          ; $7e1d: $7f
	or d                                             ; $7e1e: $b2
	ld a, a                                          ; $7e1f: $7f
	xor [hl]                                         ; $7e20: $ae
	sbc h                                            ; $7e21: $9c
	jp nc, $b748                                     ; $7e22: $d2 $48 $b7

	ld h, e                                          ; $7e25: $63
	ldh [$98], a                                     ; $7e26: $e0 $98
	ld d, $03                                        ; $7e28: $16 $03
	call nc, $9443                                   ; $7e2a: $d4 $43 $94
	ld b, e                                          ; $7e2d: $43
	cp h                                             ; $7e2e: $bc
	ld h, a                                          ; $7e2f: $67
	ldh a, [$97]                                     ; $7e30: $f0 $97
	inc c                                            ; $7e32: $0c
	ld d, b                                          ; $7e33: $50
	ld [$0953], sp                                   ; $7e34: $08 $53 $09
	ld d, d                                          ; $7e37: $52
	add hl, bc                                       ; $7e38: $09
	or $63                                           ; $7e39: $f6 $63
	ldh a, [$7a]                                     ; $7e3b: $f0 $7a
	call z, $447b                                    ; $7e3d: $cc $7b $44
	rst SubAFromDE                                          ; $7e40: $df
	rst $38                                          ; $7e41: $ff
	ld l, e                                          ; $7e42: $6b
	ldh a, [rPCM12]                                  ; $7e43: $f0 $76
	jp z, $249d                                      ; $7e45: $ca $9d $24

	ld c, c                                          ; $7e48: $49
	ld e, e                                          ; $7e49: $5b
	or b                                             ; $7e4a: $b0
	ld [hl], a                                       ; $7e4b: $77
	ld h, b                                          ; $7e4c: $60
	sbc h                                            ; $7e4d: $9c
	ld h, [hl]                                       ; $7e4e: $66
	ld [hl+], a                                      ; $7e4f: $22
	db $dd                                           ; $7e50: $dd
	ld h, e                                          ; $7e51: $63
	ld [$d29c], sp                                   ; $7e52: $08 $9c $d2
	ld c, c                                          ; $7e55: $49
	sub d                                            ; $7e56: $92
	ld a, e                                          ; $7e57: $7b
	cp $9e                                           ; $7e58: $fe $9e
	or [hl]                                          ; $7e5a: $b6
	ld h, a                                          ; $7e5b: $67
	ldh a, [$99]                                     ; $7e5c: $f0 $99
	add h                                            ; $7e5e: $84
	ld l, c                                          ; $7e5f: $69
	inc h                                            ; $7e60: $24
	ld c, c                                          ; $7e61: $49
	inc b                                            ; $7e62: $04
	sbc c                                            ; $7e63: $99
	ld e, a                                          ; $7e64: $5f
	ld h, b                                          ; $7e65: $60
	sbc [hl]                                         ; $7e66: $9e
	ld bc, $ca7a                                     ; $7e67: $01 $7a $ca
	sbc e                                            ; $7e6a: $9b
	add b                                            ; $7e6b: $80
	inc hl                                           ; $7e6c: $23
	add c                                            ; $7e6d: $81
	ld a, [hl]                                       ; $7e6e: $7e
	ld h, e                                          ; $7e6f: $63
	ret nz                                           ; $7e70: $c0

	ld a, [hl]                                       ; $7e71: $7e
	jp z, $949a                                      ; $7e72: $ca $9a $94

	nop                                              ; $7e75: $00
	ld sp, $ef10                                     ; $7e76: $31 $10 $ef
	ld h, e                                          ; $7e79: $63
	ldh a, [$79]                                     ; $7e7a: $f0 $79
	call z, $249d                                    ; $7e7c: $cc $9d $24
	ld c, b                                          ; $7e7f: $48
	ld e, e                                          ; $7e80: $5b
	and b                                            ; $7e81: $a0
	ld a, [hl]                                       ; $7e82: $7e
	jp z, $d19a                                      ; $7e83: $ca $9a $d1

	ld b, b                                          ; $7e86: $40
	add h                                            ; $7e87: $84
	ld b, b                                          ; $7e88: $40
	cp a                                             ; $7e89: $bf
	ld h, a                                          ; $7e8a: $67
	ldh a, [rPCM12]                                  ; $7e8b: $f0 $76
	call z, $079b                                    ; $7e8d: $cc $9b $07
	ld l, b                                          ; $7e90: $68
	daa                                              ; $7e91: $27
	ret c                                            ; $7e92: $d8

	ld h, a                                          ; $7e93: $67
	ldh a, [$3f]                                     ; $7e94: $f0 $3f
	nop                                              ; $7e96: $00
	adc b                                            ; $7e97: $88
	ld [hl], $60                                     ; $7e98: $36 $60
	inc b                                            ; $7e9a: $04
	ld b, h                                          ; $7e9b: $44
	ld d, l                                          ; $7e9c: $55
	ld d, h                                          ; $7e9d: $54
	ld b, a                                          ; $7e9e: $47
	ld h, [hl]                                       ; $7e9f: $66
	ld h, [hl]                                       ; $7ea0: $66
	ld h, e                                          ; $7ea1: $63
	ld d, $60                                        ; $7ea2: $16 $60
	ld [hl], l                                       ; $7ea4: $75
	ld d, h                                          ; $7ea5: $54
	ld d, l                                          ; $7ea6: $55
	ld d, h                                          ; $7ea7: $54
	ld d, a                                          ; $7ea8: $57
	ld h, [hl]                                       ; $7ea9: $66
	ld h, [hl]                                       ; $7eaa: $66
	inc sp                                           ; $7eab: $33
	ld [hl], $65                                     ; $7eac: $36 $65
	ld d, l                                          ; $7eae: $55
	ld l, e                                          ; $7eaf: $6b
	or $df                                           ; $7eb0: $f6 $df
	inc sp                                           ; $7eb2: $33
	sbc b                                            ; $7eb3: $98
	dec [hl]                                         ; $7eb4: $35
	ld [hl-], a                                      ; $7eb5: $32
	ld d, l                                          ; $7eb6: $55
	ld d, e                                          ; $7eb7: $53
	ld d, a                                          ; $7eb8: $57
	ld h, [hl]                                       ; $7eb9: $66
	ld h, e                                          ; $7eba: $63
	call c, $9b33                                    ; $7ebb: $dc $33 $9b
	dec [hl]                                         ; $7ebe: $35
	ld d, e                                          ; $7ebf: $53
	daa                                              ; $7ec0: $27
	halt                                             ; $7ec1: $76
	ld l, a                                          ; $7ec2: $6f
	or $9a                                           ; $7ec3: $f6 $9a
	inc sp                                           ; $7ec5: $33
	ld d, d                                          ; $7ec6: $52
	ld [hl], $77                                     ; $7ec7: $36 $77
	inc de                                           ; $7ec9: $13
	jp c, Jump_029_7f33                              ; $7eca: $da $33 $7f

	or $d8                                           ; $7ecd: $f6 $d8
	inc sp                                           ; $7ecf: $33
	sbc [hl]                                         ; $7ed0: $9e
	rla                                              ; $7ed1: $17
	swap e                                           ; $7ed2: $cb $33
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

Jump_029_7f33:
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

Jump_029_7faa:
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
