; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $07a", ROMX[$4000], BANK[$7a]

	ld de, $f143                                     ; $4000: $11 $43 $f1
	sub [hl]                                         ; $4003: $96
	pop af                                           ; $4004: $f1
	ld e, c                                          ; $4005: $59
	ld b, h                                          ; $4006: $44
	dec sp                                           ; $4007: $3b
	dec a                                            ; $4008: $3d

Jump_07a_4009:
	dec [hl]                                         ; $4009: $35
	rla                                              ; $400a: $17
	add hl, bc                                       ; $400b: $09
	ld de, $f343                                     ; $400c: $11 $43 $f3
	ld [hl], $44                                     ; $400f: $36 $44
	ld h, b                                          ; $4011: $60
	ld h, b                                          ; $4012: $60
	dec [hl]                                         ; $4013: $35
	rla                                              ; $4014: $17
	add hl, bc                                       ; $4015: $09
	ld de, $f043                                     ; $4016: $11 $43 $f0
	ld bc, $01f0                                     ; $4019: $01 $f0 $01
	dec sp                                           ; $401c: $3b
	scf                                              ; $401d: $37
	ld a, [bc]                                       ; $401e: $0a
	add a                                            ; $401f: $87
	di                                               ; $4020: $f3
	ld [hl], $44                                     ; $4021: $36 $44
	ld c, b                                          ; $4023: $48
	dec [hl]                                         ; $4024: $35
	rla                                              ; $4025: $17
	add hl, bc                                       ; $4026: $09
	ld [$2000], sp                                   ; $4027: $08 $00 $20
	add c                                            ; $402a: $81
	ld [hl], l                                       ; $402b: $75
	sub l                                            ; $402c: $95
	ld h, l                                          ; $402d: $65
	ld l, c                                          ; $402e: $69
	ldh a, [c]                                       ; $402f: $f2
	ld a, $f2                                        ; $4030: $3e $f2
	db $dd                                           ; $4032: $dd
	ld b, d                                          ; $4033: $42
	ldh a, [rBGP]                                    ; $4034: $f0 $47
	ldh a, [$2a]                                     ; $4036: $f0 $2a
	ld b, h                                          ; $4038: $44
	dec [hl]                                         ; $4039: $35
	ld a, [bc]                                       ; $403a: $0a
	ld e, d                                          ; $403b: $5a
	ld c, l                                          ; $403c: $4d
	ld b, a                                          ; $403d: $47
	ld a, $45                                        ; $403e: $3e $45
	add hl, sp                                       ; $4040: $39
	inc a                                            ; $4041: $3c
	ld a, [hl-]                                      ; $4042: $3a
	ld [hl], $09                                     ; $4043: $36 $09
	ld [$2000], sp                                   ; $4045: $08 $00 $20
	di                                               ; $4048: $f3
	and h                                            ; $4049: $a4
	pop af                                           ; $404a: $f1
	ld h, a                                          ; $404b: $67
	ldh a, [$65]                                     ; $404c: $f0 $65
	ld h, a                                          ; $404e: $67
	ldh a, [rOBP0]                                   ; $404f: $f0 $48
	ldh a, [rAUD2HIGH]                               ; $4051: $f0 $19
	di                                               ; $4053: $f3
	and l                                            ; $4054: $a5
	add hl, bc                                       ; $4055: $09
	ld [$0204], sp                                   ; $4056: $08 $04 $02
	adc h                                            ; $4059: $8c
	di                                               ; $405a: $f3
	add hl, hl                                       ; $405b: $29
	ld l, l                                          ; $405c: $6d
	ldh a, [c]                                       ; $405d: $f2
	and c                                            ; $405e: $a1
	add hl, bc                                       ; $405f: $09
	ld [$0404], sp                                   ; $4060: $08 $04 $04
	jr c, @+$63                                      ; $4063: $38 $61

	ld e, a                                          ; $4065: $5f
	add hl, sp                                       ; $4066: $39
	add hl, bc                                       ; $4067: $09
	ld [$0004], sp                                   ; $4068: $08 $04 $00
	ldh a, [$fb]                                     ; $406b: $f0 $fb
	sbc [hl]                                         ; $406d: $9e
	add hl, bc                                       ; $406e: $09
	ld [$0004], sp                                   ; $406f: $08 $04 $00
	ld b, [hl]                                       ; $4072: $46
	ld b, h                                          ; $4073: $44
	ld a, [hl-]                                      ; $4074: $3a
	add hl, bc                                       ; $4075: $09
	ld [$1004], sp                                   ; $4076: $08 $04 $10
	ldh a, [c]                                       ; $4079: $f2
	and b                                            ; $407a: $a0
	ldh a, [c]                                       ; $407b: $f2
	ld c, d                                          ; $407c: $4a
	di                                               ; $407d: $f3
	sbc l                                            ; $407e: $9d
	ldh a, [c]                                       ; $407f: $f2
	ld c, d                                          ; $4080: $4a
	ldh a, [c]                                       ; $4081: $f2
	inc h                                            ; $4082: $24
	ldh a, [c]                                       ; $4083: $f2
	add hl, sp                                       ; $4084: $39
	ld c, d                                          ; $4085: $4a
	ldh a, [rSCX]                                    ; $4086: $f0 $43
	db $f4                                           ; $4088: $f4
	ret                                              ; $4089: $c9


	di                                               ; $408a: $f3
	set 6, b                                         ; $408b: $cb $f0
	inc [hl]                                         ; $408d: $34
	ld b, d                                          ; $408e: $42
	ldh a, [$5d]                                     ; $408f: $f0 $5d
	db $f4                                           ; $4091: $f4
	xor [hl]                                         ; $4092: $ae
	ldh a, [$8a]                                     ; $4093: $f0 $8a
	add hl, bc                                       ; $4095: $09
	ld [$1004], sp                                   ; $4096: $08 $04 $10
	ld b, [hl]                                       ; $4099: $46
	ld a, [hl-]                                      ; $409a: $3a
	dec a                                            ; $409b: $3d
	ld b, d                                          ; $409c: $42
	ldh a, [hDisp0_SCY]                                     ; $409d: $f0 $83
	ldh a, [rTIMA]                                   ; $409f: $f0 $05
	ldh a, [rLYC]                                    ; $40a1: $f0 $45
	ld c, e                                          ; $40a3: $4b
	ld [hl], $09                                     ; $40a4: $36 $09
	ld [$1004], sp                                   ; $40a6: $08 $04 $10
	ld b, [hl]                                       ; $40a9: $46
	ld a, [hl-]                                      ; $40aa: $3a
	dec a                                            ; $40ab: $3d
	ld b, d                                          ; $40ac: $42
	ldh a, [hDisp0_SCY]                                     ; $40ad: $f0 $83
	ldh a, [rTIMA]                                   ; $40af: $f0 $05
	ld l, b                                          ; $40b1: $68
	ld c, e                                          ; $40b2: $4b
	ld [hl], $09                                     ; $40b3: $36 $09
	ld [$1004], sp                                   ; $40b5: $08 $04 $10
	ld b, [hl]                                       ; $40b8: $46
	ld a, [hl-]                                      ; $40b9: $3a
	dec a                                            ; $40ba: $3d
	ld b, d                                          ; $40bb: $42
	ldh a, [c]                                       ; $40bc: $f2
	rla                                              ; $40bd: $17
	di                                               ; $40be: $f3
	sbc a                                            ; $40bf: $9f
	pop af                                           ; $40c0: $f1
	db $e4                                           ; $40c1: $e4
	ld c, e                                          ; $40c2: $4b
	ld [hl], $09                                     ; $40c3: $36 $09
	ld [$1004], sp                                   ; $40c5: $08 $04 $10
	pop af                                           ; $40c8: $f1
	or a                                             ; $40c9: $b7
	pop af                                           ; $40ca: $f1
	add $9b                                          ; $40cb: $c6 $9b
	ldh a, [$0e]                                     ; $40cd: $f0 $0e
	ld b, d                                          ; $40cf: $42
	ldh a, [hDisp0_SCY]                                     ; $40d0: $f0 $83
	ldh a, [rTIMA]                                   ; $40d2: $f0 $05
	ldh a, [rLYC]                                    ; $40d4: $f0 $45
	ld c, e                                          ; $40d6: $4b
	ld [hl], $09                                     ; $40d7: $36 $09
	ld [$1004], sp                                   ; $40d9: $08 $04 $10
	pop af                                           ; $40dc: $f1
	or a                                             ; $40dd: $b7
	pop af                                           ; $40de: $f1
	add $9b                                          ; $40df: $c6 $9b
	ldh a, [$0e]                                     ; $40e1: $f0 $0e
	ld b, d                                          ; $40e3: $42
	ldh a, [hDisp0_SCY]                                     ; $40e4: $f0 $83
	ldh a, [rTIMA]                                   ; $40e6: $f0 $05
	ld l, b                                          ; $40e8: $68
	ld c, e                                          ; $40e9: $4b
	ld [hl], $09                                     ; $40ea: $36 $09
	ld [$1004], sp                                   ; $40ec: $08 $04 $10
	pop af                                           ; $40ef: $f1
	or a                                             ; $40f0: $b7
	pop af                                           ; $40f1: $f1
	add $9b                                          ; $40f2: $c6 $9b

Jump_07a_40f4:
	ldh a, [$0e]                                     ; $40f4: $f0 $0e
	ld b, d                                          ; $40f6: $42
	ldh a, [c]                                       ; $40f7: $f2
	rla                                              ; $40f8: $17
	di                                               ; $40f9: $f3
	sbc a                                            ; $40fa: $9f
	pop af                                           ; $40fb: $f1
	db $e4                                           ; $40fc: $e4
	ld c, e                                          ; $40fd: $4b
	ld [hl], $09                                     ; $40fe: $36 $09
	ld [$1004], sp                                   ; $4100: $08 $04 $10
	ld b, l                                          ; $4103: $45
	ld e, a                                          ; $4104: $5f
	ld a, $38                                        ; $4105: $3e $38
	ld c, d                                          ; $4107: $4a
	ld d, c                                          ; $4108: $51
	inc a                                            ; $4109: $3c
	ld [hl], $08                                     ; $410a: $36 $08
	ld e, b                                          ; $410c: $58
	db $10                                           ; $410d: $10
	ld c, e                                          ; $410e: $4b
	jr c, @+$0a                                      ; $410f: $38 $08

	ld a, h                                          ; $4111: $7c
	db $10                                           ; $4112: $10
	jr c, @+$3a                                      ; $4113: $38 $38

	ld e, [hl]                                       ; $4115: $5e
	add hl, bc                                       ; $4116: $09
	ld [$0588], sp                                   ; $4117: $08 $88 $05
	push af                                          ; $411a: $f5
	xor a                                            ; $411b: $af
	ld [$0b88], sp                                   ; $411c: $08 $88 $0b
	push af                                          ; $411f: $f5
	xor [hl]                                         ; $4120: $ae
	add hl, bc                                       ; $4121: $09
	ld [$0418], sp                                   ; $4122: $08 $18 $04
	ldh a, [hDisp0_SCY]                                     ; $4125: $f0 $83
	ldh a, [rTIMA]                                   ; $4127: $f0 $05
	ldh a, [rLYC]                                    ; $4129: $f0 $45
	ld [$0450], sp                                   ; $412b: $08 $50 $04
	db $f4                                           ; $412e: $f4
	ld c, a                                          ; $412f: $4f
	ld [$0470], sp                                   ; $4130: $08 $70 $04
	ldh a, [rLYC]                                    ; $4133: $f0 $45
	ld [$0480], sp                                   ; $4135: $08 $80 $04
	db $f4                                           ; $4138: $f4
	ld c, [hl]                                       ; $4139: $4e
	ld [$0818], sp                                   ; $413a: $08 $18 $08
	ldh a, [hDisp0_SCY]                                     ; $413d: $f0 $83
	ldh a, [rTIMA]                                   ; $413f: $f0 $05
	ld l, b                                          ; $4141: $68
	ld [$0850], sp                                   ; $4142: $08 $50 $08
	db $f4                                           ; $4145: $f4
	ld c, a                                          ; $4146: $4f
	ld [$0870], sp                                   ; $4147: $08 $70 $08
	ld l, b                                          ; $414a: $68
	ld [$0880], sp                                   ; $414b: $08 $80 $08
	db $f4                                           ; $414e: $f4
	ld c, [hl]                                       ; $414f: $4e
	ld [$0c18], sp                                   ; $4150: $08 $18 $0c
	ldh a, [c]                                       ; $4153: $f2
	rla                                              ; $4154: $17
	di                                               ; $4155: $f3
	sbc a                                            ; $4156: $9f
	pop af                                           ; $4157: $f1
	db $e4                                           ; $4158: $e4
	ld [$0c50], sp                                   ; $4159: $08 $50 $0c
	db $f4                                           ; $415c: $f4
	ld c, a                                          ; $415d: $4f
	ld [$0c70], sp                                   ; $415e: $08 $70 $0c
	pop af                                           ; $4161: $f1
	db $e4                                           ; $4162: $e4
	ld [$0c80], sp                                   ; $4163: $08 $80 $0c
	db $f4                                           ; $4166: $f4
	ld c, [hl]                                       ; $4167: $4e
	add hl, bc                                       ; $4168: $09
	nop                                              ; $4169: $00
	pop af                                           ; $416a: $f1
	ld e, d                                          ; $416b: $5a
	add hl, bc                                       ; $416c: $09
	nop                                              ; $416d: $00
	pop af                                           ; $416e: $f1
	cp b                                             ; $416f: $b8
	add hl, bc                                       ; $4170: $09
	pop af                                           ; $4171: $f1
	ld e, d                                          ; $4172: $5a
	pop af                                           ; $4173: $f1
	cp b                                             ; $4174: $b8
	add hl, bc                                       ; $4175: $09
	nop                                              ; $4176: $00
	pop af                                           ; $4177: $f1
	ld h, h                                          ; $4178: $64
	add hl, bc                                       ; $4179: $09
	ld [$0628], sp                                   ; $417a: $08 $28 $06
	ldh a, [rLYC]                                    ; $417d: $f0 $45
	ld [$0648], sp                                   ; $417f: $08 $48 $06
	ld l, b                                          ; $4182: $68
	ldh a, [rTIMA]                                   ; $4183: $f0 $05
	ld [$0678], sp                                   ; $4185: $08 $78 $06
	pop af                                           ; $4188: $f1
	db $e4                                           ; $4189: $e4
	ld [$0904], sp                                   ; $418a: $08 $04 $09
	pop af                                           ; $418d: $f1
	or a                                             ; $418e: $b7
	pop af                                           ; $418f: $f1
	add $9b                                          ; $4190: $c6 $9b
	ldh a, [$0e]                                     ; $4192: $f0 $0e
	ld [$0b28], sp                                   ; $4194: $08 $28 $0b
	ldh a, [rLYC]                                    ; $4197: $f0 $45
	ld [$0b48], sp                                   ; $4199: $08 $48 $0b
	ld l, b                                          ; $419c: $68
	ldh a, [rTIMA]                                   ; $419d: $f0 $05
	ld [$0b78], sp                                   ; $419f: $08 $78 $0b
	pop af                                           ; $41a2: $f1
	db $e4                                           ; $41a3: $e4
	add hl, bc                                       ; $41a4: $09
	ld a, [de]                                       ; $41a5: $1a
	nop                                              ; $41a6: $00
	inc h                                            ; $41a7: $24
	nop                                              ; $41a8: $00
	cpl                                              ; $41a9: $2f
	nop                                              ; $41aa: $00
	ld a, [hl-]                                      ; $41ab: $3a
	nop                                              ; $41ac: $00
	ld b, l                                          ; $41ad: $45
	nop                                              ; $41ae: $00
	ld d, e                                          ; $41af: $53
	nop                                              ; $41b0: $00
	ld h, b                                          ; $41b1: $60
	nop                                              ; $41b2: $00
	ld l, a                                          ; $41b3: $6f
	nop                                              ; $41b4: $00
	ld a, h                                          ; $41b5: $7c
	nop                                              ; $41b6: $00
	add a                                            ; $41b7: $87
	nop                                              ; $41b8: $00
	sbc c                                            ; $41b9: $99
	nop                                              ; $41ba: $00
	and a                                            ; $41bb: $a7
	nop                                              ; $41bc: $00
	or [hl]                                          ; $41bd: $b6
	nop                                              ; $41be: $00
	call nz, $f200                                   ; $41bf: $c4 $00 $f2
	ld c, c                                          ; $41c2: $49
	pop af                                           ; $41c3: $f1
	push af                                          ; $41c4: $f5
	add hl, bc                                       ; $41c5: $09
	db $f4                                           ; $41c6: $f4
	ld c, l                                          ; $41c7: $4d
	add hl, bc                                       ; $41c8: $09
	ld c, c                                          ; $41c9: $49
	ld d, h                                          ; $41ca: $54
	ld d, d                                          ; $41cb: $52
	add hl, bc                                       ; $41cc: $09
	ldh a, [$e6]                                     ; $41cd: $f0 $e6
	di                                               ; $41cf: $f3
	xor $09                                          ; $41d0: $ee $09
	ldh a, [c]                                       ; $41d2: $f2
	cp a                                             ; $41d3: $bf
	ld l, l                                          ; $41d4: $6d
	add hl, bc                                       ; $41d5: $09

jr_07a_41d6:
	ldh a, [$c2]                                     ; $41d6: $f0 $c2
	ld h, l                                          ; $41d8: $65
	add hl, bc                                       ; $41d9: $09
	ldh a, [rAUD2HIGH]                               ; $41da: $f0 $19
	db $f4                                           ; $41dc: $f4
	ld c, h                                          ; $41dd: $4c
	add hl, bc                                       ; $41de: $09
	pop af                                           ; $41df: $f1
	jr z, jr_07a_41d6                                ; $41e0: $28 $f4

	ret z                                            ; $41e2: $c8

	add hl, bc                                       ; $41e3: $09
	ld e, h                                          ; $41e4: $5c
	ld l, h                                          ; $41e5: $6c
	add hl, bc                                       ; $41e6: $09
	sbc [hl]                                         ; $41e7: $9e
	ldh a, [$2e]                                     ; $41e8: $f0 $2e
	add hl, bc                                       ; $41ea: $09
	di                                               ; $41eb: $f3
	db $ed                                           ; $41ec: $ed
	ld l, l                                          ; $41ed: $6d
	add hl, bc                                       ; $41ee: $09
	sbc [hl]                                         ; $41ef: $9e
	ldh a, [$fd]                                     ; $41f0: $f0 $fd
	ld h, l                                          ; $41f2: $65
	add hl, bc                                       ; $41f3: $09
	di                                               ; $41f4: $f3
	and c                                            ; $41f5: $a1
	pop af                                           ; $41f6: $f1
	push af                                          ; $41f7: $f5
	add hl, bc                                       ; $41f8: $09
	db $f4                                           ; $41f9: $f4
	rst JumpTable                                          ; $41fa: $c7
	ld l, l                                          ; $41fb: $6d
	add hl, bc                                       ; $41fc: $09
	pop af                                           ; $41fd: $f1
	ld e, d                                          ; $41fe: $5a
	ldh a, [c]                                       ; $41ff: $f2
	ld c, b                                          ; $4200: $48
	pop af                                           ; $4201: $f1
	ld e, d                                          ; $4202: $5a
	add hl, bc                                       ; $4203: $09
	db $f4                                           ; $4204: $f4
	ld a, $9e                                        ; $4205: $3e $9e
	add hl, bc                                       ; $4207: $09
	db $f4                                           ; $4208: $f4
	add $f0                                          ; $4209: $c6 $f0
	scf                                              ; $420b: $37
	add hl, bc                                       ; $420c: $09
	pop af                                           ; $420d: $f1
	ret nc                                           ; $420e: $d0

	ld [hl], e                                       ; $420f: $73
	sbc b                                            ; $4210: $98
	ld e, c                                          ; $4211: $59
	add hl, bc                                       ; $4212: $09
	pop af                                           ; $4213: $f1
	and d                                            ; $4214: $a2
	di                                               ; $4215: $f3
	and c                                            ; $4216: $a1
	add hl, bc                                       ; $4217: $09
	db $f4                                           ; $4218: $f4
	push bc                                          ; $4219: $c5
	ldh a, [$79]                                     ; $421a: $f0 $79
	add hl, bc                                       ; $421c: $09
	pop af                                           ; $421d: $f1
	ld c, c                                          ; $421e: $49
	ldh a, [$03]                                     ; $421f: $f0 $03
	pop af                                           ; $4221: $f1
	ld c, c                                          ; $4222: $49
	add hl, bc                                       ; $4223: $09
	pop af                                           ; $4224: $f1
	ld e, c                                          ; $4225: $59
	ldh a, [c]                                       ; $4226: $f2
	ldh a, [$09]                                     ; $4227: $f0 $09
	db $f4                                           ; $4229: $f4
	call nz, $e7f2                                   ; $422a: $c4 $f2 $e7
	add hl, bc                                       ; $422d: $09
	ld h, c                                          ; $422e: $61
	ld d, [hl]                                       ; $422f: $56
	ld h, c                                          ; $4230: $61
	ld d, [hl]                                       ; $4231: $56
	add hl, bc                                       ; $4232: $09
	ldh a, [rAUD2HIGH]                               ; $4233: $f0 $19
	ldh a, [c]                                       ; $4235: $f2
	ld c, c                                          ; $4236: $49
	add hl, bc                                       ; $4237: $09
	ldh a, [c]                                       ; $4238: $f2
	ldh [$09], a                                     ; $4239: $e0 $09
	dec a                                            ; $423b: $3d
	inc a                                            ; $423c: $3c
	ld d, b                                          ; $423d: $50
	dec a                                            ; $423e: $3d
	add hl, bc                                       ; $423f: $09
	ldh a, [rAUD2HIGH]                               ; $4240: $f0 $19
	db $f4                                           ; $4242: $f4
	jp $f309                                         ; $4243: $c3 $09 $f3


	sbc h                                            ; $4246: $9c
	pop af                                           ; $4247: $f1
	ld [hl], e                                       ; $4248: $73
	add hl, bc                                       ; $4249: $09
	ldh a, [$ba]                                     ; $424a: $f0 $ba
	ldh a, [$35]                                     ; $424c: $f0 $35
	ldh a, [$27]                                     ; $424e: $f0 $27
	ld e, c                                          ; $4250: $59
	ldh a, [$03]                                     ; $4251: $f0 $03
	add hl, bc                                       ; $4253: $09
	ldh a, [c]                                       ; $4254: $f2
	cp l                                             ; $4255: $bd
	ldh a, [rAUD2LOW]                                ; $4256: $f0 $18
	add hl, bc                                       ; $4258: $09
	db $f4                                           ; $4259: $f4
	ld c, e                                          ; $425a: $4b
	db $f4                                           ; $425b: $f4
	ld d, c                                          ; $425c: $51
	add hl, bc                                       ; $425d: $09
	ldh a, [$d8]                                     ; $425e: $f0 $d8
	ld e, a                                          ; $4260: $5f
	ld l, [hl]                                       ; $4261: $6e
	ld b, c                                          ; $4262: $41
	add hl, bc                                       ; $4263: $09
	db $f4                                           ; $4264: $f4
	ld b, l                                          ; $4265: $45
	pop af                                           ; $4266: $f1
	inc d                                            ; $4267: $14
	add hl, bc                                       ; $4268: $09
	db $f4                                           ; $4269: $f4
	jp nz, Jump_07a_5bf0                             ; $426a: $c2 $f0 $5b

	add hl, bc                                       ; $426d: $09
	ccf                                              ; $426e: $3f
	ld d, b                                          ; $426f: $50
	ld a, $f2                                        ; $4270: $3e $f2
	sbc [hl]                                         ; $4272: $9e
	add hl, sp                                       ; $4273: $39
	add hl, bc                                       ; $4274: $09
	pop af                                           ; $4275: $f1
	add hl, de                                       ; $4276: $19
	push af                                          ; $4277: $f5
	xor l                                            ; $4278: $ad
	add hl, bc                                       ; $4279: $09
	ldh a, [$f6]                                     ; $427a: $f0 $f6
	adc h                                            ; $427c: $8c
	add hl, bc                                       ; $427d: $09
	ldh a, [$fe]                                     ; $427e: $f0 $fe
	dec sp                                           ; $4280: $3b
	ld h, c                                          ; $4281: $61
	ldh a, [c]                                       ; $4282: $f2
	db $eb                                           ; $4283: $eb
	add hl, bc                                       ; $4284: $09
	ld d, h                                          ; $4285: $54
	ld a, [hl-]                                      ; $4286: $3a
	ld l, h                                          ; $4287: $6c
	add hl, bc                                       ; $4288: $09
	dec a                                            ; $4289: $3d
	ld e, a                                          ; $428a: $5f
	add hl, sp                                       ; $428b: $39
	add hl, bc                                       ; $428c: $09
	pop af                                           ; $428d: $f1
	pop de                                           ; $428e: $d1
	ldh a, [c]                                       ; $428f: $f2
	ld [hl], c                                       ; $4290: $71
	ldh a, [$e5]                                     ; $4291: $f0 $e5
	ldh a, [rAUD3LOW]                                ; $4293: $f0 $1d
	ld h, l                                          ; $4295: $65
	add hl, bc                                       ; $4296: $09
	ld [$0204], sp                                   ; $4297: $08 $04 $02
	di                                               ; $429a: $f3
	and h                                            ; $429b: $a4
	ldh a, [$2f]                                     ; $429c: $f0 $2f
	ldh a, [$7c]                                     ; $429e: $f0 $7c
	add e                                            ; $42a0: $83
	ld l, c                                          ; $42a1: $69
	di                                               ; $42a2: $f3
	and l                                            ; $42a3: $a5
	ld [$0510], sp                                   ; $42a4: $08 $10 $05
	pop af                                           ; $42a7: $f1
	or a                                             ; $42a8: $b7
	pop af                                           ; $42a9: $f1
	add $9b                                          ; $42aa: $c6 $9b
	ldh a, [$0e]                                     ; $42ac: $f0 $0e
	ld [$0558], sp                                   ; $42ae: $08 $58 $05
	pop af                                           ; $42b1: $f1
	add [hl]                                         ; $42b2: $86
	ldh a, [rLYC]                                    ; $42b3: $f0 $45
	pop af                                           ; $42b5: $f1
	jp nz, $088a                                     ; $42b6: $c2 $8a $08

	db $10                                           ; $42b9: $10
	ld [$4cf0], sp                                   ; $42ba: $08 $f0 $4c
	ldh a, [rAUD2LOW]                                ; $42bd: $f0 $18
	pop af                                           ; $42bf: $f1
	sbc a                                            ; $42c0: $9f
	pop af                                           ; $42c1: $f1
	adc [hl]                                         ; $42c2: $8e
	ld [$0858], sp                                   ; $42c3: $08 $58 $08
	push af                                          ; $42c6: $f5
	xor e                                            ; $42c7: $ab
	ldh a, [$3a]                                     ; $42c8: $f0 $3a
	di                                               ; $42ca: $f3
	db $ed                                           ; $42cb: $ed
	adc h                                            ; $42cc: $8c
	ld [$0b10], sp                                   ; $42cd: $08 $10 $0b
	ldh a, [$3c]                                     ; $42d0: $f0 $3c
	ldh a, [$39]                                     ; $42d2: $f0 $39
	ldh a, [$b5]                                     ; $42d4: $f0 $b5
	inc a                                            ; $42d6: $3c
	ld d, a                                          ; $42d7: $57
	ld [$0b58], sp                                   ; $42d8: $08 $58 $0b
	push af                                          ; $42db: $f5
	xor d                                            ; $42dc: $aa
	pop af                                           ; $42dd: $f1
	add $f1                                          ; $42de: $c6 $f1
	xor [hl]                                         ; $42e0: $ae
	adc h                                            ; $42e1: $8c
	ld [$0e10], sp                                   ; $42e2: $08 $10 $0e
	ldh a, [$33]                                     ; $42e5: $f0 $33
	ldh a, [$2e]                                     ; $42e7: $f0 $2e
	pop af                                           ; $42e9: $f1
	ld l, d                                          ; $42ea: $6a
	ld [$0e58], sp                                   ; $42eb: $08 $58 $0e
	push af                                          ; $42ee: $f5
	xor b                                            ; $42ef: $a8
	pop af                                           ; $42f0: $f1
	rst GetHLinHL                                          ; $42f1: $cf
	push af                                          ; $42f2: $f5
	xor c                                            ; $42f3: $a9
	adc h                                            ; $42f4: $8c
	add hl, bc                                       ; $42f5: $09
	ld [$0510], sp                                   ; $42f6: $08 $10 $05
	adc d                                            ; $42f9: $8a
	ldh a, [$37]                                     ; $42fa: $f0 $37
	ldh a, [$3a]                                     ; $42fc: $f0 $3a
	ldh a, [rHDMA2]                                  ; $42fe: $f0 $52
	ld [$0558], sp                                   ; $4300: $08 $58 $05
	di                                               ; $4303: $f3
	db $db                                           ; $4304: $db
	ldh a, [$3a]                                     ; $4305: $f0 $3a
	ld l, h                                          ; $4307: $6c
	ld e, h                                          ; $4308: $5c
	ld d, h                                          ; $4309: $54
	ld [$0810], sp                                   ; $430a: $08 $10 $08
	ldh a, [$df]                                     ; $430d: $f0 $df
	pop af                                           ; $430f: $f1
	db $f4                                           ; $4310: $f4
	ld [hl], d                                       ; $4311: $72
	pop af                                           ; $4312: $f1
	ld e, $08                                        ; $4313: $1e $08
	ld e, b                                          ; $4315: $58
	ld [$c0f4], sp                                   ; $4316: $08 $f4 $c0
	ldh a, [c]                                       ; $4319: $f2
	db $10                                           ; $431a: $10
	ldh a, [c]                                       ; $431b: $f2
	rst SubAFromDE                                          ; $431c: $df
	db $f4                                           ; $431d: $f4
	pop bc                                           ; $431e: $c1
	ld [$0b10], sp                                   ; $431f: $08 $10 $0b
	ldh a, [$a2]                                     ; $4322: $f0 $a2
	ldh a, [rAUDTERM]                                ; $4324: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $4326: $f0 $91
	ld [hl], l                                       ; $4328: $75
	ld a, l                                          ; $4329: $7d
	ld [$0b58], sp                                   ; $432a: $08 $58 $0b
	db $f4                                           ; $432d: $f4
	cp a                                             ; $432e: $bf
	ldh a, [rAUD2LOW]                                ; $432f: $f0 $18
	ldh a, [c]                                       ; $4331: $f2
	ldh a, [$3a]                                     ; $4332: $f0 $3a
	ld c, [hl]                                       ; $4334: $4e
	ld l, h                                          ; $4335: $6c
	ld [$0e10], sp                                   ; $4336: $08 $10 $0e
	ldh a, [$6c]                                     ; $4339: $f0 $6c
	ldh a, [$61]                                     ; $433b: $f0 $61
	ldh a, [c]                                       ; $433d: $f2
	ld d, $8a                                        ; $433e: $16 $8a
	ld [$0e58], sp                                   ; $4340: $08 $58 $0e
	push af                                          ; $4343: $f5
	and [hl]                                         ; $4344: $a6
	push af                                          ; $4345: $f5
	and a                                            ; $4346: $a7
	pop af                                           ; $4347: $f1
	ld hl, $20f2                                     ; $4348: $21 $f2 $20
	add hl, bc                                       ; $434b: $09
	ld [$0510], sp                                   ; $434c: $08 $10 $05
	ldh a, [rIF]                                     ; $434f: $f0 $0f
	ld l, c                                          ; $4351: $69
	ldh a, [rP1]                                     ; $4352: $f0 $00
	sbc b                                            ; $4354: $98
	ldh a, [$3d]                                     ; $4355: $f0 $3d
	ld [$0714], sp                                   ; $4357: $08 $14 $07
	ldh a, [rAUD3HIGH]                               ; $435a: $f0 $1e
	ldh a, [rAUD3LOW]                                ; $435c: $f0 $1d
	sub e                                            ; $435e: $93
	ldh a, [$50]                                     ; $435f: $f0 $50
	ldh a, [rSC]                                     ; $4361: $f0 $02
	add e                                            ; $4363: $83
	ld [$0758], sp                                   ; $4364: $08 $58 $07
	push af                                          ; $4367: $f5
	and l                                            ; $4368: $a5
	ldh a, [c]                                       ; $4369: $f2
	ldh a, [$f4]                                     ; $436a: $f0 $f4
	cp [hl]                                          ; $436c: $be
	ldh a, [$f6]                                     ; $436d: $f0 $f6
	add hl, bc                                       ; $436f: $09
	ld [$0204], sp                                   ; $4370: $08 $04 $02
	di                                               ; $4373: $f3
	and h                                            ; $4374: $a4
	ldh a, [$2f]                                     ; $4375: $f0 $2f
	ldh a, [$7c]                                     ; $4377: $f0 $7c
	add e                                            ; $4379: $83
	ld l, c                                          ; $437a: $69
	di                                               ; $437b: $f3
	and l                                            ; $437c: $a5
	ld [$0510], sp                                   ; $437d: $08 $10 $05
	pop af                                           ; $4380: $f1
	or a                                             ; $4381: $b7
	pop af                                           ; $4382: $f1
	add $9b                                          ; $4383: $c6 $9b
	ldh a, [$0e]                                     ; $4385: $f0 $0e
	ld [$0558], sp                                   ; $4387: $08 $58 $05
	pop af                                           ; $438a: $f1
	add [hl]                                         ; $438b: $86
	ldh a, [rLYC]                                    ; $438c: $f0 $45
	pop af                                           ; $438e: $f1
	jp nz, $088a                                     ; $438f: $c2 $8a $08

	db $10                                           ; $4392: $10
	ld [$daf0], sp                                   ; $4393: $08 $f0 $da
	ldh a, [rLYC]                                    ; $4396: $f0 $45
	pop af                                           ; $4398: $f1
	or l                                             ; $4399: $b5
	ld a, h                                          ; $439a: $7c
	ld [$0858], sp                                   ; $439b: $08 $58 $08
	pop af                                           ; $439e: $f1
	ret c                                            ; $439f: $d8

	pop af                                           ; $43a0: $f1
	sub e                                            ; $43a1: $93
	ldh a, [$79]                                     ; $43a2: $f0 $79
	adc h                                            ; $43a4: $8c
	ld [$0b10], sp                                   ; $43a5: $08 $10 $0b
	ldh a, [$b9]                                     ; $43a8: $f0 $b9
	ld a, h                                          ; $43aa: $7c
	ldh a, [$80]                                     ; $43ab: $f0 $80
	ldh a, [hDisp1_BGP]                                     ; $43ad: $f0 $92
	ld [$0b58], sp                                   ; $43af: $08 $58 $0b
	ldh a, [rAUD2HIGH]                               ; $43b2: $f0 $19
	ldh a, [$f9]                                     ; $43b4: $f0 $f9
	adc h                                            ; $43b6: $8c
	ld [$0e10], sp                                   ; $43b7: $08 $10 $0e
	ldh a, [$e6]                                     ; $43ba: $f0 $e6
	ldh a, [$ef]                                     ; $43bc: $f0 $ef
	pop af                                           ; $43be: $f1
	xor [hl]                                         ; $43bf: $ae
	adc h                                            ; $43c0: $8c
	ld [$0e58], sp                                   ; $43c1: $08 $58 $0e
	ldh a, [$2e]                                     ; $43c4: $f0 $2e
	pop af                                           ; $43c6: $f1
	push af                                          ; $43c7: $f5
	db $f4                                           ; $43c8: $f4
	cp [hl]                                          ; $43c9: $be
	pop af                                           ; $43ca: $f1
	call $0809                                       ; $43cb: $cd $09 $08
	db $10                                           ; $43ce: $10
	dec b                                            ; $43cf: $05
	ldh a, [$b3]                                     ; $43d0: $f0 $b3
	pop af                                           ; $43d2: $f1
	db $db                                           ; $43d3: $db
	pop af                                           ; $43d4: $f1
	ldh a, [$08]                                     ; $43d5: $f0 $08
	ld e, b                                          ; $43d7: $58
	dec b                                            ; $43d8: $05
	push af                                          ; $43d9: $f5
	and e                                            ; $43da: $a3
	ldh a, [c]                                       ; $43db: $f2
	ld l, a                                          ; $43dc: $6f
	push af                                          ; $43dd: $f5
	and h                                            ; $43de: $a4
	db $f4                                           ; $43df: $f4
	or d                                             ; $43e0: $b2
	ld [$0810], sp                                   ; $43e1: $08 $10 $08
	ldh a, [$7d]                                     ; $43e4: $f0 $7d
	ld l, b                                          ; $43e6: $68
	ldh a, [hDisp1_BGP]                                     ; $43e7: $f0 $92
	pop af                                           ; $43e9: $f1
	call nz, $088c                                   ; $43ea: $c4 $8c $08
	ld e, b                                          ; $43ed: $58
	ld [$a6f3], sp                                   ; $43ee: $08 $f3 $a6
	push af                                          ; $43f1: $f5
	and d                                            ; $43f2: $a2
	db $f4                                           ; $43f3: $f4

Jump_07a_43f4:
	ld c, h                                          ; $43f4: $4c
	pop af                                           ; $43f5: $f1
	adc h                                            ; $43f6: $8c
	adc h                                            ; $43f7: $8c
	ld [$0b10], sp                                   ; $43f8: $08 $10 $0b
	ldh a, [$0a]                                     ; $43fb: $f0 $0a
	pop af                                           ; $43fd: $f1
	and b                                            ; $43fe: $a0
	ldh a, [rAUD2ENV]                                ; $43ff: $f0 $17
	ldh a, [$4e]                                     ; $4401: $f0 $4e
	adc d                                            ; $4403: $8a
	ld [$0b58], sp                                   ; $4404: $08 $58 $0b
	ld b, l                                          ; $4407: $45
	ld a, $5c                                        ; $4408: $3e $5c
	ld d, l                                          ; $440a: $55
	ld d, a                                          ; $440b: $57
	ld b, c                                          ; $440c: $41
	ld [$0e10], sp                                   ; $440d: $08 $10 $0e
	ldh a, [$df]                                     ; $4410: $f0 $df
	pop af                                           ; $4412: $f1
	db $f4                                           ; $4413: $f4
	ld [hl], d                                       ; $4414: $72
	pop af                                           ; $4415: $f1
	ld e, $08                                        ; $4416: $1e $08
	ld e, b                                          ; $4418: $58
	ld c, $f4                                        ; $4419: $0e $f4
	ret nz                                           ; $441b: $c0

	ldh a, [c]                                       ; $441c: $f2
	db $10                                           ; $441d: $10
	ldh a, [c]                                       ; $441e: $f2
	rst SubAFromDE                                          ; $441f: $df
	db $f4                                           ; $4420: $f4
	pop bc                                           ; $4421: $c1
	add hl, bc                                       ; $4422: $09
	ld [$0510], sp                                   ; $4423: $08 $10 $05
	ldh a, [$a2]                                     ; $4426: $f0 $a2
	ldh a, [rAUDTERM]                                ; $4428: $f0 $25
	ldh a, [hDisp1_SCX]                                     ; $442a: $f0 $91
	ld [hl], l                                       ; $442c: $75
	ld a, l                                          ; $442d: $7d
	ld [$0558], sp                                   ; $442e: $08 $58 $05
	db $f4                                           ; $4431: $f4
	cp a                                             ; $4432: $bf
	ldh a, [rAUD2LOW]                                ; $4433: $f0 $18
	ldh a, [c]                                       ; $4435: $f2
	ldh a, [$3a]                                     ; $4436: $f0 $3a
	ld c, [hl]                                       ; $4438: $4e
	ld l, h                                          ; $4439: $6c
	ld [$0810], sp                                   ; $443a: $08 $10 $08
	ldh a, [hDisp1_OBP0]                                     ; $443d: $f0 $93
	ldh a, [$b4]                                     ; $443f: $f0 $b4
	pop af                                           ; $4441: $f1
	di                                               ; $4442: $f3
	adc h                                            ; $4443: $8c
	ld [$0858], sp                                   ; $4444: $08 $58 $08
	ldh a, [rAUD2HIGH]                               ; $4447: $f0 $19
	di                                               ; $4449: $f3
	call z, $9ff1                                    ; $444a: $cc $f1 $9f
	ldh a, [$37]                                     ; $444d: $f0 $37
	add hl, bc                                       ; $444f: $09
	ld [$0304], sp                                   ; $4450: $08 $04 $03

jr_07a_4453:
	di                                               ; $4453: $f3
	and h                                            ; $4454: $a4
	ldh a, [c]                                       ; $4455: $f2
	and b                                            ; $4456: $a0
	ldh a, [c]                                       ; $4457: $f2
	add hl, sp                                       ; $4458: $39
	pop af                                           ; $4459: $f1
	ld e, d                                          ; $445a: $5a
	di                                               ; $445b: $f3
	jr c, @-$0b                                      ; $445c: $38 $f3

	jr c, jr_07a_4453                                ; $445e: $38 $f3

	and l                                            ; $4460: $a5
	ld [$0604], sp                                   ; $4461: $08 $04 $06
	ldh a, [rWY]                                     ; $4464: $f0 $4a
	ldh a, [$c4]                                     ; $4466: $f0 $c4
	ld [hl], l                                       ; $4468: $75
	sub e                                            ; $4469: $93
	ldh a, [rDIV]                                    ; $446a: $f0 $04
	ld e, c                                          ; $446c: $59
	ld [$080c], sp                                   ; $446d: $08 $0c $08
	ldh a, [c]                                       ; $4470: $f2
	ld c, c                                          ; $4471: $49
	pop af                                           ; $4472: $f1
	push af                                          ; $4473: $f5
	db $f4                                           ; $4474: $f4
	ld c, l                                          ; $4475: $4d
	ld [$0b04], sp                                   ; $4476: $08 $04 $0b
	sbc b                                            ; $4479: $98
	ldh a, [$ba]                                     ; $447a: $f0 $ba
	ldh a, [rP1]                                     ; $447c: $f0 $00
	ldh a, [$c3]                                     ; $447e: $f0 $c3
	ld [$0d0c], sp                                   ; $4480: $08 $0c $0d
	ldh a, [$e6]                                     ; $4483: $f0 $e6
	di                                               ; $4485: $f3
	xor $f2                                          ; $4486: $ee $f2
	cp a                                             ; $4488: $bf
	ld l, l                                          ; $4489: $6d
	add hl, bc                                       ; $448a: $09
	ld [$0104], sp                              ; $448b: $08 $04 $01
	add c                                            ; $448e: $81
	ldh a, [$1f]                                     ; $448f: $f0 $1f
	ldh a, [$50]                                     ; $4491: $f0 $50
	ldh a, [rSC]                                     ; $4493: $f0 $02
	ldh a, [$27]                                     ; $4495: $f0 $27
	ld [$030c], sp                                   ; $4497: $08 $0c $03
	ldh a, [c]                                       ; $449a: $f2
	ld c, c                                          ; $449b: $49
	pop af                                           ; $449c: $f1
	push af                                          ; $449d: $f5
	db $f4                                           ; $449e: $f4
	ld c, l                                          ; $449f: $4d
	ld [$050c], sp                                   ; $44a0: $08 $0c $05
	ldh a, [$e6]                                     ; $44a3: $f0 $e6
	di                                               ; $44a5: $f3
	xor $f2                                          ; $44a6: $ee $f2

jr_07a_44a8:
	cp a                                             ; $44a8: $bf
	ld l, l                                          ; $44a9: $6d
	ld [$070c], sp                                   ; $44aa: $08 $0c $07
	ldh a, [rAUD2HIGH]                               ; $44ad: $f0 $19
	db $f4                                           ; $44af: $f4
	ld c, h                                          ; $44b0: $4c
	pop af                                           ; $44b1: $f1
	jr z, jr_07a_44a8                                ; $44b2: $28 $f4

	ret z                                            ; $44b4: $c8

	ld [$090c], sp                                   ; $44b5: $08 $0c $09
	db $f4                                           ; $44b8: $f4
	ld a, $9e                                        ; $44b9: $3e $9e
	db $f4                                           ; $44bb: $f4
	add $f0                                          ; $44bc: $c6 $f0
	scf                                              ; $44be: $37
	ld [$0b0c], sp                                   ; $44bf: $08 $0c $0b
	di                                               ; $44c2: $f3
	and c                                            ; $44c3: $a1
	pop af                                           ; $44c4: $f1
	push af                                          ; $44c5: $f5
	db $f4                                           ; $44c6: $f4
	rst JumpTable                                          ; $44c7: $c7
	ld l, l                                          ; $44c8: $6d
	ld [$0d0c], sp                                   ; $44c9: $08 $0c $0d
	pop af                                           ; $44cc: $f1
	ld e, c                                          ; $44cd: $59
	ldh a, [c]                                       ; $44ce: $f2
	ldh a, [$f4]                                     ; $44cf: $f0 $f4
	call nz, $e7f2                                   ; $44d1: $c4 $f2 $e7
	ld [$0f0c], sp                                   ; $44d4: $08 $0c $0f
	ldh a, [rAUD2HIGH]                               ; $44d7: $f0 $19
	ldh a, [c]                                       ; $44d9: $f2
	ld c, c                                          ; $44da: $49
	ldh a, [c]                                       ; $44db: $f2
	ldh [$09], a                                     ; $44dc: $e0 $09
	ld [$0104], sp                              ; $44de: $08 $04 $01
	ldh a, [$3d]                                     ; $44e1: $f0 $3d
	ld e, c                                          ; $44e3: $59
	ld l, c                                          ; $44e4: $69
	ldh a, [$a0]                                     ; $44e5: $f0 $a0
	ld e, c                                          ; $44e7: $59
	sub e                                            ; $44e8: $93
	add e                                            ; $44e9: $83
	ld [$030c], sp                                   ; $44ea: $08 $0c $03
	sbc [hl]                                         ; $44ed: $9e
	ldh a, [$2e]                                     ; $44ee: $f0 $2e
	di                                               ; $44f0: $f3
	db $ed                                           ; $44f1: $ed
	ld l, l                                          ; $44f2: $6d
	ld [$050c], sp                                   ; $44f3: $08 $0c $05
	db $f4                                           ; $44f6: $f4
	cp l                                             ; $44f7: $bd
	ldh a, [c]                                       ; $44f8: $f2
	ld c, c                                          ; $44f9: $49
	ldh a, [rHDMA2]                                  ; $44fa: $f0 $52
	ld [$070c], sp                                   ; $44fc: $08 $0c $07
	pop af                                           ; $44ff: $f1
	ld e, c                                          ; $4500: $59
	ldh a, [c]                                       ; $4501: $f2
	ldh a, [$f4]                                     ; $4502: $f0 $f4
	cp h                                             ; $4504: $bc
	ldh a, [rTIMA]                                   ; $4505: $f0 $05
	add hl, bc                                       ; $4507: $09
	ld [$0104], sp                              ; $4508: $08 $04 $01
	ldh a, [rWY]                                     ; $450b: $f0 $4a
	ldh a, [c]                                       ; $450d: $f2
	jr jr_07a_458d                                   ; $450e: $18 $7d

	ld h, l                                          ; $4510: $65
	ld [$030c], sp                                   ; $4511: $08 $0c $03
	sbc [hl]                                         ; $4514: $9e
	ldh a, [$2e]                                     ; $4515: $f0 $2e
	di                                               ; $4517: $f3
	db $ed                                           ; $4518: $ed
	ld l, l                                          ; $4519: $6d
	ld [$050c], sp                                   ; $451a: $08 $0c $05
	push af                                          ; $451d: $f5
	and b                                            ; $451e: $a0
	ldh a, [c]                                       ; $451f: $f2
	ldh a, [$f4]                                     ; $4520: $f0 $f4
	ld c, e                                          ; $4522: $4b
	push af                                          ; $4523: $f5
	and c                                            ; $4524: $a1
	ld [$070c], sp                                   ; $4525: $08 $0c $07
	db $f4                                           ; $4528: $f4
	cp l                                             ; $4529: $bd
	ldh a, [c]                                       ; $452a: $f2
	ld c, c                                          ; $452b: $49
	ldh a, [rHDMA2]                                  ; $452c: $f0 $52
	ld [$090c], sp                                   ; $452e: $08 $0c $09
	di                                               ; $4531: $f3
	ld e, h                                          ; $4532: $5c
	di                                               ; $4533: $f3
	xor $f0                                          ; $4534: $ee $f0
	dec l                                            ; $4536: $2d
	db $f4                                           ; $4537: $f4
	ld a, [hl+]                                      ; $4538: $2a
	adc h                                            ; $4539: $8c
	ld [$0b0c], sp                                   ; $453a: $08 $0c $0b
	push af                                          ; $453d: $f5
	sbc a                                            ; $453e: $9f
	ldh a, [c]                                       ; $453f: $f2
	ld [hl], d                                       ; $4540: $72
	db $f4                                           ; $4541: $f4
	ld [hl+], a                                      ; $4542: $22
	di                                               ; $4543: $f3
	jp hl                                            ; $4544: $e9


	ld [$0d0c], sp                                   ; $4545: $08 $0c $0d
	pop af                                           ; $4548: $f1
	or a                                             ; $4549: $b7
	ldh a, [$3a]                                     ; $454a: $f0 $3a
	db $f4                                           ; $454c: $f4
	or e                                             ; $454d: $b3
	adc h                                            ; $454e: $8c
	ld [$0f0c], sp                                   ; $454f: $08 $0c $0f
	add a                                            ; $4552: $87
	di                                               ; $4553: $f3
	and c                                            ; $4554: $a1
	ldh a, [hDisp1_OBP0]                                     ; $4555: $f0 $93
	adc h                                            ; $4557: $8c
	add hl, bc                                       ; $4558: $09
	ld [$030c], sp                                   ; $4559: $08 $0c $03
	pop af                                           ; $455c: $f1
	ld e, c                                          ; $455d: $59
	ldh a, [c]                                       ; $455e: $f2
	ldh a, [$f4]                                     ; $455f: $f0 $f4
	cp h                                             ; $4561: $bc
	ldh a, [rTIMA]                                   ; $4562: $f0 $05
	ld [$050c], sp                                   ; $4564: $08 $0c $05
	pop af                                           ; $4567: $f1
	and d                                            ; $4568: $a2
	di                                               ; $4569: $f3
	and c                                            ; $456a: $a1
	db $f4                                           ; $456b: $f4
	push bc                                          ; $456c: $c5
	ldh a, [$79]                                     ; $456d: $f0 $79
	ld [$070c], sp                                   ; $456f: $08 $0c $07
	di                                               ; $4572: $f3
	db $db                                           ; $4573: $db
	ldh a, [$3a]                                     ; $4574: $f0 $3a
	push af                                          ; $4576: $f5
	sbc [hl]                                         ; $4577: $9e
	adc h                                            ; $4578: $8c
	add hl, bc                                       ; $4579: $09
	ld [$0104], sp                              ; $457a: $08 $04 $01
	ldh a, [rAUD4POLY]                               ; $457d: $f0 $22
	ldh a, [hDisp0_WX]                                     ; $457f: $f0 $89
	ld h, l                                          ; $4581: $65
	ldh a, [$32]                                     ; $4582: $f0 $32
	ld [$0308], sp                                   ; $4584: $08 $08 $03
	ldh a, [rWY]                                     ; $4587: $f0 $4a
	ldh a, [$c4]                                     ; $4589: $f0 $c4
	ld [hl], l                                       ; $458b: $75
	sub e                                            ; $458c: $93

jr_07a_458d:
	ldh a, [rDIV]                                    ; $458d: $f0 $04
	ld e, c                                          ; $458f: $59
	ld [$050c], sp                                   ; $4590: $08 $0c $05
	ldh a, [rAUD2HIGH]                               ; $4593: $f0 $19
	db $f4                                           ; $4595: $f4
	jp $9cf3                                         ; $4596: $c3 $f3 $9c


	pop af                                           ; $4599: $f1
	ld [hl], e                                       ; $459a: $73
	ld [$0804], sp                                   ; $459b: $08 $04 $08
	ldh a, [rAUD4POLY]                               ; $459e: $f0 $22
	ldh a, [hDisp0_WX]                                     ; $45a0: $f0 $89
	ld h, l                                          ; $45a2: $65
	ldh a, [$32]                                     ; $45a3: $f0 $32
	ld [$0a0c], sp                                   ; $45a5: $08 $0c $0a
	pop af                                           ; $45a8: $f1
	add hl, de                                       ; $45a9: $19
	push af                                          ; $45aa: $f5
	xor l                                            ; $45ab: $ad
	ldh a, [$f6]                                     ; $45ac: $f0 $f6
	adc h                                            ; $45ae: $8c
	ld [$0c0c], sp                                   ; $45af: $08 $0c $0c
	ldh a, [c]                                       ; $45b2: $f2
	cp l                                             ; $45b3: $bd
	ldh a, [rAUD2LOW]                                ; $45b4: $f0 $18
	db $f4                                           ; $45b6: $f4
	ld c, e                                          ; $45b7: $4b
	db $f4                                           ; $45b8: $f4
	ld d, c                                          ; $45b9: $51
	ld [$0e0c], sp                                   ; $45ba: $08 $0c $0e
	db $f4                                           ; $45bd: $f4
	ld b, l                                          ; $45be: $45
	pop af                                           ; $45bf: $f1
	inc d                                            ; $45c0: $14
	db $f4                                           ; $45c1: $f4
	jp nz, Jump_07a_5bf0                             ; $45c2: $c2 $f0 $5b

	add hl, bc                                       ; $45c5: $09
	ld [$0104], sp                              ; $45c6: $08 $04 $01
	ldh a, [rWY]                                     ; $45c9: $f0 $4a
	ldh a, [c]                                       ; $45cb: $f2
	jr @+$7f                                         ; $45cc: $18 $7d

	ld h, l                                          ; $45ce: $65
	ld [$0308], sp                                   ; $45cf: $08 $08 $03
	ldh a, [rWY]                                     ; $45d2: $f0 $4a
	ldh a, [$c4]                                     ; $45d4: $f0 $c4
	ld [hl], l                                       ; $45d6: $75
	sub e                                            ; $45d7: $93
	sbc b                                            ; $45d8: $98
	ldh a, [rWX]                                     ; $45d9: $f0 $4b
	ld h, l                                          ; $45db: $65
	ld [$050c], sp                                   ; $45dc: $08 $0c $05
	pop af                                           ; $45df: $f1
	ld a, [$29f3]                                    ; $45e0: $fa $f3 $29
	ldh a, [hDisp1_OBP0]                                     ; $45e3: $f0 $93
	push af                                          ; $45e5: $f5
	sbc l                                            ; $45e6: $9d
	ld [$070c], sp                                   ; $45e7: $08 $0c $07
	ldh a, [c]                                       ; $45ea: $f2
	adc l                                            ; $45eb: $8d
	ldh a, [$2e]                                     ; $45ec: $f0 $2e
	ldh a, [rSTAT]                                   ; $45ee: $f0 $41
	db $f4                                           ; $45f0: $f4
	cp e                                             ; $45f1: $bb
	ld [$090c], sp                                   ; $45f2: $08 $0c $09
	pop af                                           ; $45f5: $f1
	ld [hl], a                                       ; $45f6: $77

jr_07a_45f7:
	pop af                                           ; $45f7: $f1
	or a                                             ; $45f8: $b7
	push af                                          ; $45f9: $f5
	sbc h                                            ; $45fa: $9c
	adc h                                            ; $45fb: $8c
	add hl, bc                                       ; $45fc: $09
	ld [$0104], sp                              ; $45fd: $08 $04 $01
	pop af                                           ; $4600: $f1
	dec l                                            ; $4601: $2d
	ldh a, [$4e]                                     ; $4602: $f0 $4e
	db $f4                                           ; $4604: $f4
	jr nz, jr_07a_45f7                               ; $4605: $20 $f0

	ld a, a                                          ; $4607: $7f
	ld [$0308], sp                                   ; $4608: $08 $08 $03
	db $f4                                           ; $460b: $f4
	cp d                                             ; $460c: $ba
	add a                                            ; $460d: $87
	db $f4                                           ; $460e: $f4
	ld a, [hl-]                                      ; $460f: $3a
	sbc d                                            ; $4610: $9a
	push af                                          ; $4611: $f5
	sbc e                                            ; $4612: $9b
	ldh a, [$28]                                     ; $4613: $f0 $28
	ld [$0508], sp                                   ; $4615: $08 $08 $05
	db $f4                                           ; $4618: $f4
	cp d                                             ; $4619: $ba
	db $fd                                           ; $461a: $fd
	add d                                            ; $461b: $82
	db $fd                                           ; $461c: $fd
	add e                                            ; $461d: $83
	db $fd                                           ; $461e: $fd
	add h                                            ; $461f: $84
	db $fd                                           ; $4620: $fd
	add l                                            ; $4621: $85
	db $fd                                           ; $4622: $fd
	add [hl]                                         ; $4623: $86
	ld [$0708], sp                                   ; $4624: $08 $08 $07
	db $f4                                           ; $4627: $f4
	cp d                                             ; $4628: $ba
	ldh a, [$3d]                                     ; $4629: $f0 $3d
	ld e, c                                          ; $462b: $59
	ldh a, [$f2]                                     ; $462c: $f0 $f2
	ldh a, [$de]                                     ; $462e: $f0 $de
	ldh a, [$7e]                                     ; $4630: $f0 $7e
	ldh a, [rWX]                                     ; $4632: $f0 $4b
	ld h, l                                          ; $4634: $65
	ld [$0a04], sp                                   ; $4635: $08 $04 $0a
	ldh a, [$99]                                     ; $4638: $f0 $99
	pop af                                           ; $463a: $f1
	dec l                                            ; $463b: $2d
	push af                                          ; $463c: $f5
	sbc d                                            ; $463d: $9a
	di                                               ; $463e: $f3
	ld e, e                                          ; $463f: $5b
	ld [$0c0c], sp                                   ; $4640: $08 $0c $0c
	ldh a, [$d9]                                     ; $4643: $f0 $d9
	ldh a, [c]                                       ; $4645: $f2
	adc l                                            ; $4646: $8d
	push af                                          ; $4647: $f5
	sbc c                                            ; $4648: $99
	ld [$0e0c], sp                                   ; $4649: $08 $0c $0e
	pop af                                           ; $464c: $f1
	dec hl                                           ; $464d: $2b
	pop af                                           ; $464e: $f1
	or a                                             ; $464f: $b7
	push af                                          ; $4650: $f5
	sbc b                                            ; $4651: $98
	adc h                                            ; $4652: $8c

Jump_07a_4653:
	add hl, bc                                       ; $4653: $09
	ld [$0404], sp                                   ; $4654: $08 $04 $04
	ldh a, [rAUD4POLY]                               ; $4657: $f0 $22
	ldh a, [hDisp0_WX]                                     ; $4659: $f0 $89
	ld h, l                                          ; $465b: $65
	ldh a, [$32]                                     ; $465c: $f0 $32
	ld [$0608], sp                                   ; $465e: $08 $08 $06
	add c                                            ; $4661: $81
	ldh a, [$1f]                                     ; $4662: $f0 $1f
	ldh a, [rWY]                                     ; $4664: $f0 $4a
	ldh a, [$a1]                                     ; $4666: $f0 $a1
	ld e, c                                          ; $4668: $59
	ldh a, [rAUD4POLY]                               ; $4669: $f0 $22
	ld e, c                                          ; $466b: $59
	ld [$090c], sp                                   ; $466c: $08 $0c $09
	push af                                          ; $466f: $f5
	sub [hl]                                         ; $4670: $96
	ldh a, [c]                                       ; $4671: $f2
	ldh a, [$f5]                                     ; $4672: $f0 $f5
	sub a                                            ; $4674: $97
	db $f4                                           ; $4675: $f4
	cp e                                             ; $4676: $bb
	add hl, bc                                       ; $4677: $09
	ld [$0404], sp                                   ; $4678: $08 $04 $04
	add c                                            ; $467b: $81
	ldh a, [$1f]                                     ; $467c: $f0 $1f
	ldh a, [rWY]                                     ; $467e: $f0 $4a
	ldh a, [$a1]                                     ; $4680: $f0 $a1
	ld e, c                                          ; $4682: $59
	ldh a, [rAUD4POLY]                               ; $4683: $f0 $22
	ld e, c                                          ; $4685: $59
	ld [$070c], sp                                   ; $4686: $08 $0c $07
	push af                                          ; $4689: $f5
	sub h                                            ; $468a: $94
	adc h                                            ; $468b: $8c
	push af                                          ; $468c: $f5
	sub l                                            ; $468d: $95
	db $f4                                           ; $468e: $f4
	xor c                                            ; $468f: $a9
	add hl, bc                                       ; $4690: $09
	ld [$0404], sp                                   ; $4691: $08 $04 $04
	pop af                                           ; $4694: $f1
	ld b, b                                          ; $4695: $40
	ldh a, [$50]                                     ; $4696: $f0 $50
	sub l                                            ; $4698: $95
	sub e                                            ; $4699: $93
	ldh a, [$60]                                     ; $469a: $f0 $60
	ldh a, [$c4]                                     ; $469c: $f0 $c4
	ldh a, [rBCPD]                                   ; $469e: $f0 $69
	ld [$0608], sp                                   ; $46a0: $08 $08 $06
	add c                                            ; $46a3: $81
	ldh a, [$1f]                                     ; $46a4: $f0 $1f
	ldh a, [rWY]                                     ; $46a6: $f0 $4a
	ldh a, [$a1]                                     ; $46a8: $f0 $a1
	ld e, c                                          ; $46aa: $59
	ldh a, [rAUD4POLY]                               ; $46ab: $f0 $22
	ld e, c                                          ; $46ad: $59
	ld [$090c], sp                                   ; $46ae: $08 $0c $09
	push af                                          ; $46b1: $f5
	sub e                                            ; $46b2: $93
	pop af                                           ; $46b3: $f1
	add $f2                                          ; $46b4: $c6 $f2
	sbc h                                            ; $46b6: $9c
	ldh a, [c]                                       ; $46b7: $f2
	cp d                                             ; $46b8: $ba
	add hl, bc                                       ; $46b9: $09
	ld [$0f16], sp                                   ; $46ba: $08 $16 $0f
	ld b, e                                          ; $46bd: $43
	ldh a, [rAUD2ENV]                                ; $46be: $f0 $17
	ldh a, [$cf]                                     ; $46c0: $f0 $cf
	ld a, $38                                        ; $46c2: $3e $38
	ldh a, [rAUD2LOW]                                ; $46c4: $f0 $18
	ldh a, [c]                                       ; $46c6: $f2
	and c                                            ; $46c7: $a1
	ld e, d                                          ; $46c8: $5a
	ld c, a                                          ; $46c9: $4f
	ld b, d                                          ; $46ca: $42
	sbc e                                            ; $46cb: $9b
	ldh a, [$eb]                                     ; $46cc: $f0 $eb
	add hl, bc                                       ; $46ce: $09
	ld [$0f2c], sp                                   ; $46cf: $08 $2c $0f
	di                                               ; $46d2: $f3
	sub d                                            ; $46d3: $92
	ld b, a                                          ; $46d4: $47
	ldh a, [$74]                                     ; $46d5: $f0 $74
	ld c, [hl]                                       ; $46d7: $4e
	di                                               ; $46d8: $f3
	ld h, l                                          ; $46d9: $65
	pop af                                           ; $46da: $f1
	ld l, [hl]                                       ; $46db: $6e
	ld c, e                                          ; $46dc: $4b
	add hl, bc                                       ; $46dd: $09
	ld [$0f34], sp                                   ; $46de: $08 $34 $0f
	push af                                          ; $46e1: $f5
	sub c                                            ; $46e2: $91
	ld d, a                                          ; $46e3: $57
	ld b, a                                          ; $46e4: $47
	push af                                          ; $46e5: $f5
	sub d                                            ; $46e6: $92
	ld c, l                                          ; $46e7: $4d
	ccf                                              ; $46e8: $3f
	add hl, bc                                       ; $46e9: $09
	ld [$0f2e], sp                                   ; $46ea: $08 $2e $0f
	pop af                                           ; $46ed: $f1
	or [hl]                                          ; $46ee: $b6
	ld b, d                                          ; $46ef: $42
	di                                               ; $46f0: $f3
	ld l, l                                          ; $46f1: $6d
	ld h, d                                          ; $46f2: $62
	pop af                                           ; $46f3: $f1
	sub h                                            ; $46f4: $94
	dec a                                            ; $46f5: $3d
	jr c, jr_07a_4701                                ; $46f6: $38 $09

	ld [$0f2e], sp                                   ; $46f8: $08 $2e $0f
	di                                               ; $46fb: $f3
	reti                                             ; $46fc: $d9


	push af                                          ; $46fd: $f5
	sub b                                            ; $46fe: $90
	ld d, e                                          ; $46ff: $53
	ldh a, [c]                                       ; $4700: $f2

jr_07a_4701:
	push de                                          ; $4701: $d5
	ldh a, [rAUD1SWEEP]                              ; $4702: $f0 $10
	ld d, c                                          ; $4704: $51
	ld b, l                                          ; $4705: $45
	add hl, bc                                       ; $4706: $09
	ld [$0f26], sp                                   ; $4707: $08 $26 $0f
	pop af                                           ; $470a: $f1
	ld e, d                                          ; $470b: $5a
	ldh a, [c]                                       ; $470c: $f2
	jp nz, $f000                                     ; $470d: $c2 $00 $f0

	ld d, [hl]                                       ; $4710: $56
	ld d, e                                          ; $4711: $53
	jr c, @+$50                                      ; $4712: $38 $4e

	ld a, [hl-]                                      ; $4714: $3a
	ld d, b                                          ; $4715: $50
	ld a, e                                          ; $4716: $7b
	add hl, bc                                       ; $4717: $09
	ld [$0f2e], sp                                   ; $4718: $08 $2e $0f
	ldh a, [c]                                       ; $471b: $f2
	sub [hl]                                         ; $471c: $96
	ld e, h                                          ; $471d: $5c
	ld a, $71                                        ; $471e: $3e $71
	dec a                                            ; $4720: $3d
	jr c, jr_07a_4765                                ; $4721: $38 $42

	ld b, a                                          ; $4723: $47
	add hl, bc                                       ; $4724: $09
	ld [$0f20], sp                                   ; $4725: $08 $20 $0f
	pop af                                           ; $4728: $f1
	ld e, d                                          ; $4729: $5a
	ldh a, [c]                                       ; $472a: $f2
	jp nz, $f000                                     ; $472b: $c2 $00 $f0

	ld b, a                                          ; $472e: $47
	ld h, d                                          ; $472f: $62
	ldh a, [$e8]                                     ; $4730: $f0 $e8
	ld a, c                                          ; $4732: $79
	ld c, [hl]                                       ; $4733: $4e
	ld a, [hl-]                                      ; $4734: $3a
	ld d, b                                          ; $4735: $50
	ld a, e                                          ; $4736: $7b
	add hl, bc                                       ; $4737: $09
	ld [$0f30], sp                                   ; $4738: $08 $30 $0f
	ld a, d                                          ; $473b: $7a
	ld d, a                                          ; $473c: $57
	dec a                                            ; $473d: $3d
	jr c, jr_07a_47aa                                ; $473e: $38 $6a

	ld d, c                                          ; $4740: $51
	sbc l                                            ; $4741: $9d
	add hl, bc                                       ; $4742: $09
	ld [$0f24], sp                                   ; $4743: $08 $24 $0f
	pop af                                           ; $4746: $f1
	ld e, d                                          ; $4747: $5a
	ldh a, [c]                                       ; $4748: $f2
	jp nz, $f100                                     ; $4749: $c2 $00 $f1

	add sp, $4a                                      ; $474c: $e8 $4a
	ldh a, [rHDMA3]                                  ; $474e: $f0 $53
	ld e, [hl]                                       ; $4750: $5e
	ld c, [hl]                                       ; $4751: $4e
	ld a, [hl-]                                      ; $4752: $3a
	ld d, b                                          ; $4753: $50
	add hl, bc                                       ; $4754: $09
	ld [$0f30], sp                                   ; $4755: $08 $30 $0f
	ld b, b                                          ; $4758: $40
	ld c, l                                          ; $4759: $4d
	ld b, h                                          ; $475a: $44
	ld e, l                                          ; $475b: $5d
	ld c, d                                          ; $475c: $4a
	ld c, a                                          ; $475d: $4f
	jr c, jr_07a_4798                                ; $475e: $38 $38

	add hl, bc                                       ; $4760: $09
	ld [$0f1a], sp                                   ; $4761: $08 $1a $0f
	pop af                                           ; $4764: $f1

jr_07a_4765:
	ld e, d                                          ; $4765: $5a
	ldh a, [c]                                       ; $4766: $f2
	jp nz, $3800                                     ; $4767: $c2 $00 $38

	add b                                            ; $476a: $80
	ld c, a                                          ; $476b: $4f
	ld [hl], d                                       ; $476c: $72
	add b                                            ; $476d: $80
	ld [hl], c                                       ; $476e: $71
	ccf                                              ; $476f: $3f
	jr c, jr_07a_47af                                ; $4770: $38 $3d

	jr c, jr_07a_477d                                ; $4772: $38 $09

	ld [$0f26], sp                                   ; $4774: $08 $26 $0f
	ldh a, [rAUD2ENV]                                ; $4777: $f0 $17
	ldh a, [$cf]                                     ; $4779: $f0 $cf
	ld a, $38                                        ; $477b: $3e $38

jr_07a_477d:
	ld c, c                                          ; $477d: $49
	ldh a, [$2d]                                     ; $477e: $f0 $2d
	dec sp                                           ; $4780: $3b
	ccf                                              ; $4781: $3f
	ld c, a                                          ; $4782: $4f
	add hl, bc                                       ; $4783: $09
	ld a, e                                          ; $4784: $7b
	ldh a, [rKEY1]                                   ; $4785: $f0 $4d
	ldh a, [$fe]                                     ; $4787: $f0 $fe
	ldh a, [$8c]                                     ; $4789: $f0 $8c
	pop af                                           ; $478b: $f1
	halt                                             ; $478c: $76
	ldh a, [$36]                                     ; $478d: $f0 $36
	ldh a, [c]                                       ; $478f: $f2
	sbc $f4                                          ; $4790: $de $f4
	ld d, b                                          ; $4792: $50
	di                                               ; $4793: $f3
	ld e, a                                          ; $4794: $5f
	pop af                                           ; $4795: $f1
	rla                                              ; $4796: $17
	db $f4                                           ; $4797: $f4

jr_07a_4798:
	ld d, b                                          ; $4798: $50
	db $f4                                           ; $4799: $f4
	rst SubAFromDE                                          ; $479a: $df
	pop af                                           ; $479b: $f1
	sub a                                            ; $479c: $97
	di                                               ; $479d: $f3
	sub [hl]                                         ; $479e: $96
	db $f4                                           ; $479f: $f4
	ldh [$f4], a                                     ; $47a0: $e0 $f4
	ccf                                              ; $47a2: $3f
	db $f4                                           ; $47a3: $f4
	ld c, d                                          ; $47a4: $4a

jr_07a_47a5:
	pop af                                           ; $47a5: $f1
	ld e, d                                          ; $47a6: $5a
	pop af                                           ; $47a7: $f1
	cp b                                             ; $47a8: $b8
	ldh a, [c]                                       ; $47a9: $f2

jr_07a_47aa:
	inc h                                            ; $47aa: $24
	ldh a, [c]                                       ; $47ab: $f2
	ld d, l                                          ; $47ac: $55
	ldh a, [c]                                       ; $47ad: $f2
	ld c, d                                          ; $47ae: $4a

jr_07a_47af:
	di                                               ; $47af: $f3
	jr c, jr_07a_47a5                                ; $47b0: $38 $f3

	push hl                                          ; $47b2: $e5
	db $f4                                           ; $47b3: $f4
	ld c, b                                          ; $47b4: $48
	db $f4                                           ; $47b5: $f4
	db $db                                           ; $47b6: $db
	ldh a, [c]                                       ; $47b7: $f2
	add [hl]                                         ; $47b8: $86
	pop af                                           ; $47b9: $f1
	ld d, c                                          ; $47ba: $51
	di                                               ; $47bb: $f3
	sbc l                                            ; $47bc: $9d
	ldh a, [c]                                       ; $47bd: $f2
	ld l, l                                          ; $47be: $6d
	ldh a, [c]                                       ; $47bf: $f2
	ld c, b                                          ; $47c0: $48
	pop af                                           ; $47c1: $f1
	ld h, h                                          ; $47c2: $64
	ldh a, [c]                                       ; $47c3: $f2
	jp $dcf4                                         ; $47c4: $c3 $f4 $dc


	di                                               ; $47c7: $f3
	dec c                                            ; $47c8: $0d
	ldh a, [c]                                       ; $47c9: $f2
	and b                                            ; $47ca: $a0
	ldh a, [c]                                       ; $47cb: $f2
	add hl, sp                                       ; $47cc: $39
	db $f4                                           ; $47cd: $f4
	db $dd                                           ; $47ce: $dd
	di                                               ; $47cf: $f3
	sbc d                                            ; $47d0: $9a
	db $f4                                           ; $47d1: $f4
	sbc $f2                                          ; $47d2: $de $f2
	db $ed                                           ; $47d4: $ed
	di                                               ; $47d5: $f3
	and $f3                                          ; $47d6: $e6 $f3
	cpl                                              ; $47d8: $2f
	di                                               ; $47d9: $f3
	rst SubAFromDE                                          ; $47da: $df
	db $f4                                           ; $47db: $f4
	rst GetHLinHL                                          ; $47dc: $cf
	db $f4                                           ; $47dd: $f4
	inc a                                            ; $47de: $3c
	db $f4                                           ; $47df: $f4
	ret nc                                           ; $47e0: $d0

	db $f4                                           ; $47e1: $f4
	pop de                                           ; $47e2: $d1
	db $f4                                           ; $47e3: $f4
	jp nc, Jump_07a_40f4                             ; $47e4: $d2 $f4 $40

	ldh a, [c]                                       ; $47e7: $f2
	jp nz, Jump_07a_43f4                             ; $47e8: $c2 $f4 $43

	db $f4                                           ; $47eb: $f4
	db $d3                                           ; $47ec: $d3
	di                                               ; $47ed: $f3
	sbc e                                            ; $47ee: $9b
	db $f4                                           ; $47ef: $f4
	ld b, d                                          ; $47f0: $42
	di                                               ; $47f1: $f3
	ld a, [hl+]                                      ; $47f2: $2a
	di                                               ; $47f3: $f3
	pop hl                                           ; $47f4: $e1
	di                                               ; $47f5: $f3
	ld h, h                                          ; $47f6: $64
	db $f4                                           ; $47f7: $f4
	call nc, $d5f4                                   ; $47f8: $d4 $f4 $d5
	ldh a, [c]                                       ; $47fb: $f2
	xor $f4                                          ; $47fc: $ee $f4
	sub $f3                                          ; $47fe: $d6 $f3
	ldh [$f4], a                                     ; $4800: $e0 $f4
	ld b, c                                          ; $4802: $41
	db $f4                                           ; $4803: $f4
	rst SubAFromHL                                          ; $4804: $d7
	db $f4                                           ; $4805: $f4
	ret c                                            ; $4806: $d8

	db $f4                                           ; $4807: $f4
	reti                                             ; $4808: $d9


	db $f4                                           ; $4809: $f4
	jp c, Jump_07a_60f3                              ; $480a: $da $f3 $60

	push af                                          ; $480d: $f5
	xor $f5                                          ; $480e: $ee $f5
	rst AddAOntoHL                                          ; $4810: $ef
	push af                                          ; $4811: $f5
	ldh a, [$f5]                                     ; $4812: $f0 $f5
	pop af                                           ; $4814: $f1
	push af                                          ; $4815: $f5
	ldh a, [c]                                       ; $4816: $f2
	push af                                          ; $4817: $f5
	di                                               ; $4818: $f3
	push af                                          ; $4819: $f5
	db $f4                                           ; $481a: $f4
	db $f4                                           ; $481b: $f4
	and c                                            ; $481c: $a1
	push af                                          ; $481d: $f5
	push af                                          ; $481e: $f5
	add hl, bc                                       ; $481f: $09
	inc bc                                           ; $4820: $03
	ld [bc], a                                       ; $4821: $02
	ldh a, [$c0]                                     ; $4822: $f0 $c0
	add hl, bc                                       ; $4824: $09
	inc bc                                           ; $4825: $03
	inc b                                            ; $4826: $04
	ldh a, [$c0]                                     ; $4827: $f0 $c0
	add hl, bc                                       ; $4829: $09
	inc bc                                           ; $482a: $03
	rlca                                             ; $482b: $07
	ldh a, [$c0]                                     ; $482c: $f0 $c0
	add hl, bc                                       ; $482e: $09
	ld bc, $c0ca                                     ; $482f: $01 $ca $c0
	dec l                                            ; $4832: $2d
	cpl                                              ; $4833: $2f
	inc sp                                           ; $4834: $33
	scf                                              ; $4835: $37
	dec sp                                           ; $4836: $3b
	inc sp                                           ; $4837: $33
	cpl                                              ; $4838: $2f
	scf                                              ; $4839: $37
	inc sp                                           ; $483a: $33
	dec l                                            ; $483b: $2d
	scf                                              ; $483c: $37
	inc sp                                           ; $483d: $33
	cpl                                              ; $483e: $2f
	scf                                              ; $483f: $37
	scf                                              ; $4840: $37
	ccf                                              ; $4841: $3f
	dec sp                                           ; $4842: $3b
	dec sp                                           ; $4843: $3b
	dec l                                            ; $4844: $2d
	scf                                              ; $4845: $37
	inc sp                                           ; $4846: $33
	cpl                                              ; $4847: $2f
	scf                                              ; $4848: $37
	inc sp                                           ; $4849: $33
	dec l                                            ; $484a: $2d
	cpl                                              ; $484b: $2f
	inc sp                                           ; $484c: $33
	scf                                              ; $484d: $37
	dec sp                                           ; $484e: $3b
	inc sp                                           ; $484f: $33
	ccf                                              ; $4850: $3f
	dec sp                                           ; $4851: $3b
	inc sp                                           ; $4852: $33
	dec l                                            ; $4853: $2d
	scf                                              ; $4854: $37
	inc sp                                           ; $4855: $33
	dec l                                            ; $4856: $2d
	dec l                                            ; $4857: $2d
	inc sp                                           ; $4858: $33
	cpl                                              ; $4859: $2f
	scf                                              ; $485a: $37
	inc sp                                           ; $485b: $33
	dec d                                            ; $485c: $15
	add hl, bc                                       ; $485d: $09
	ld [de], a                                       ; $485e: $12
	ldh a, [rRP]                                     ; $485f: $f0 $56
	add hl, bc                                       ; $4861: $09
	ld h, b                                          ; $4862: $60
	ld h, b                                          ; $4863: $60
	ld h, b                                          ; $4864: $60
	add hl, bc                                       ; $4865: $09
	ld de, $56f0                                     ; $4866: $11 $f0 $56
	add hl, bc                                       ; $4869: $09
	ld de, $4158                                     ; $486a: $11 $58 $41
	add hl, bc                                       ; $486d: $09
	ld [de], a                                       ; $486e: $12
	ld e, b                                          ; $486f: $58
	ld b, c                                          ; $4870: $41

jr_07a_4871:
	add hl, bc                                       ; $4871: $09
	dec b                                            ; $4872: $05
	sbc b                                            ; $4873: $98
	ldh a, [$ba]                                     ; $4874: $f0 $ba
	ldh a, [rP1]                                     ; $4876: $f0 $00
	ldh a, [$c3]                                     ; $4878: $f0 $c3
	ld a, [bc]                                       ; $487a: $0a
	ldh a, [rSCX]                                    ; $487b: $f0 $43
	pop af                                           ; $487d: $f1
	jr nz, jr_07a_4871                               ; $487e: $20 $f1

	inc e                                            ; $4880: $1c
	ld a, [bc]                                       ; $4881: $0a
	ldh a, [rAUD4POLY]                               ; $4882: $f0 $22
	ldh a, [rBCPD]                                   ; $4884: $f0 $69
	ldh a, [$6d]                                     ; $4886: $f0 $6d
	ld e, c                                          ; $4888: $59
	ldh a, [$27]                                     ; $4889: $f0 $27
	ld a, [bc]                                       ; $488b: $0a
	ldh a, [c]                                       ; $488c: $f2
	ld l, e                                          ; $488d: $6b
	ldh a, [rAUD4GO]                                 ; $488e: $f0 $23
	ldh a, [rWY]                                     ; $4890: $f0 $4a
	pop af                                           ; $4892: $f1
	dec b                                            ; $4893: $05
	ld a, [bc]                                       ; $4894: $0a
	ldh a, [$7a]                                     ; $4895: $f0 $7a
	ldh a, [rAUD4ENV]                                ; $4897: $f0 $21
	pop af                                           ; $4899: $f1
	inc d                                            ; $489a: $14
	ld d, a                                          ; $489b: $57
	ldh a, [c]                                       ; $489c: $f2
	ld b, d                                          ; $489d: $42
	ld e, [hl]                                       ; $489e: $5e
	ld a, [bc]                                       ; $489f: $0a
	di                                               ; $48a0: $f3
	sub e                                            ; $48a1: $93
	di                                               ; $48a2: $f3
	ld h, l                                          ; $48a3: $65
	ldh a, [$60]                                     ; $48a4: $f0 $60
	add e                                            ; $48a6: $83
	ld l, c                                          ; $48a7: $69
	ld a, [bc]                                       ; $48a8: $0a
	ldh a, [rAUD4POLY]                               ; $48a9: $f0 $22
	ldh a, [hDisp0_WX]                                     ; $48ab: $f0 $89
	ld h, l                                          ; $48ad: $65
	ldh a, [$32]                                     ; $48ae: $f0 $32
	ldh a, [$60]                                     ; $48b0: $f0 $60
	add e                                            ; $48b2: $83
	ld l, c                                          ; $48b3: $69
	ld a, [bc]                                       ; $48b4: $0a
	ldh a, [$c3]                                     ; $48b5: $f0 $c3
	add c                                            ; $48b7: $81
	sbc b                                            ; $48b8: $98
	ldh a, [rWX]                                     ; $48b9: $f0 $4b
	ld h, l                                          ; $48bb: $65
	ld a, [bc]                                       ; $48bc: $0a
	pop af                                           ; $48bd: $f1
	ld [hl], c                                       ; $48be: $71
	pop af                                           ; $48bf: $f1
	dec c                                            ; $48c0: $0d
	ld a, [bc]                                       ; $48c1: $0a
	ldh a, [$ce]                                     ; $48c2: $f0 $ce
	ldh a, [c]                                       ; $48c4: $f2
	ld e, b                                          ; $48c5: $58
	add hl, bc                                       ; $48c6: $09
	ld bc, $d841                                     ; $48c7: $01 $41 $d8
	inc de                                           ; $48ca: $13
	jr jr_07a_48ea                                   ; $48cb: $18 $1d

	ld hl, $2b26                                     ; $48cd: $21 $26 $2b
	jr nc, @+$37                                     ; $48d0: $30 $35

	jr c, jr_07a_4912                                ; $48d2: $38 $3e

	ld b, h                                          ; $48d4: $44
	ld c, e                                          ; $48d5: $4b
	ld d, b                                          ; $48d6: $50
	ld d, l                                          ; $48d7: $55
	ld e, d                                          ; $48d8: $5a
	ld e, d                                          ; $48d9: $5a
	pop af                                           ; $48da: $f1
	or a                                             ; $48db: $b7
	pop af                                           ; $48dc: $f1
	add $09                                          ; $48dd: $c6 $09
	ldh a, [$da]                                     ; $48df: $f0 $da
	ldh a, [rLYC]                                    ; $48e1: $f0 $45
	add hl, bc                                       ; $48e3: $09
	ldh a, [$b9]                                     ; $48e4: $f0 $b9
	ld a, h                                          ; $48e6: $7c
	add hl, bc                                       ; $48e7: $09
	ldh a, [$e6]                                     ; $48e8: $f0 $e6

jr_07a_48ea:
	ldh a, [$ef]                                     ; $48ea: $f0 $ef
	add hl, bc                                       ; $48ec: $09
	ldh a, [$4c]                                     ; $48ed: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $48ef: $f0 $18
	add hl, bc                                       ; $48f1: $09
	ldh a, [$3c]                                     ; $48f2: $f0 $3c
	ldh a, [$39]                                     ; $48f4: $f0 $39
	add hl, bc                                       ; $48f6: $09
	ldh a, [$33]                                     ; $48f7: $f0 $33
	ldh a, [$2e]                                     ; $48f9: $f0 $2e
	add hl, bc                                       ; $48fb: $09
	ldh a, [$b3]                                     ; $48fc: $f0 $b3
	add hl, bc                                       ; $48fe: $09
	ldh a, [$7d]                                     ; $48ff: $f0 $7d
	ld l, b                                          ; $4901: $68
	ldh a, [hDisp1_BGP]                                     ; $4902: $f0 $92
	add hl, bc                                       ; $4904: $09
	adc d                                            ; $4905: $8a
	ldh a, [$37]                                     ; $4906: $f0 $37
	ldh a, [$3a]                                     ; $4908: $f0 $3a
	add hl, bc                                       ; $490a: $09
	ldh a, [$0a]                                     ; $490b: $f0 $0a
	pop af                                           ; $490d: $f1
	and b                                            ; $490e: $a0
	ldh a, [rAUD2ENV]                                ; $490f: $f0 $17
	add hl, bc                                       ; $4911: $09

jr_07a_4912:
	ldh a, [$6c]                                     ; $4912: $f0 $6c
	ldh a, [$61]                                     ; $4914: $f0 $61
	add hl, bc                                       ; $4916: $09
	ldh a, [rIF]                                     ; $4917: $f0 $0f
	ld [hl], e                                       ; $4919: $73
	ld l, c                                          ; $491a: $69
	add hl, bc                                       ; $491b: $09
	ldh a, [hDisp1_OBP0]                                     ; $491c: $f0 $93
	ldh a, [$b4]                                     ; $491e: $f0 $b4
	add hl, bc                                       ; $4920: $09
	adc e                                            ; $4921: $8b
	ldh a, [$72]                                     ; $4922: $f0 $72
	add hl, bc                                       ; $4924: $09
	ldh a, [rAUD3LOW]                                ; $4925: $f0 $1d
	ld h, l                                          ; $4927: $65
	ldh a, [$50]                                     ; $4928: $f0 $50
	ld e, c                                          ; $492a: $59
	add e                                            ; $492b: $83
	add hl, bc                                       ; $492c: $09
	ldh a, [rAUD3ENA]                                ; $492d: $f0 $1a
	ldh a, [rBCPD]                                   ; $492f: $f0 $69
	ldh a, [$1f]                                     ; $4931: $f0 $1f
	ld e, c                                          ; $4933: $59
	ldh a, [$32]                                     ; $4934: $f0 $32
	add hl, bc                                       ; $4936: $09
	di                                               ; $4937: $f3
	and d                                            ; $4938: $a2
	ldh a, [rAUD1LOW]                                ; $4939: $f0 $13
	di                                               ; $493b: $f3
	ld a, [hl-]                                      ; $493c: $3a
	add hl, bc                                       ; $493d: $09
	pop af                                           ; $493e: $f1
	ld c, b                                          ; $493f: $48
	ldh a, [$50]                                     ; $4940: $f0 $50
	ld [hl], l                                       ; $4942: $75
	ld e, c                                          ; $4943: $59
	ld l, c                                          ; $4944: $69
	add hl, bc                                       ; $4945: $09
	ldh a, [rAUD3LOW]                                ; $4946: $f0 $1d
	ldh a, [rDIV]                                    ; $4948: $f0 $04
	pop af                                           ; $494a: $f1
	ld [hl], h                                       ; $494b: $74
	add hl, bc                                       ; $494c: $09
	ldh a, [$2f]                                     ; $494d: $f0 $2f
	ldh a, [rSC]                                     ; $494f: $f0 $02
	ld e, c                                          ; $4951: $59
	pop af                                           ; $4952: $f1
	ld [hl+], a                                      ; $4953: $22
	ldh a, [$50]                                     ; $4954: $f0 $50
	ldh a, [rAUD3LOW]                                ; $4956: $f0 $1d
	add hl, bc                                       ; $4958: $09
	ldh a, [rDMA]                                    ; $4959: $f0 $46
	ldh a, [$62]                                     ; $495b: $f0 $62
	add hl, bc                                       ; $495d: $09
	pop af                                           ; $495e: $f1
	rra                                              ; $495f: $1f
	ldh a, [rAUD3HIGH]                               ; $4960: $f0 $1e
	ldh a, [rDMA]                                    ; $4962: $f0 $46
	ldh a, [$62]                                     ; $4964: $f0 $62
	add hl, bc                                       ; $4966: $09
	ldh a, [$d0]                                     ; $4967: $f0 $d0
	ld a, [hl]                                       ; $4969: $7e
	ldh a, [rSTAT]                                   ; $496a: $f0 $41
	add hl, bc                                       ; $496c: $09
	ldh a, [c]                                       ; $496d: $f2
	ld e, d                                          ; $496e: $5a
	ldh a, [c]                                       ; $496f: $f2
	ld e, e                                          ; $4970: $5b
	add h                                            ; $4971: $84
	add hl, bc                                       ; $4972: $09
	ldh a, [$b9]                                     ; $4973: $f0 $b9
	ld a, h                                          ; $4975: $7c
	ldh a, [$1f]                                     ; $4976: $f0 $1f
	ldh a, [$6e]                                     ; $4978: $f0 $6e
	add hl, bc                                       ; $497a: $09
	pop af                                           ; $497b: $f1
	or a                                             ; $497c: $b7
	pop af                                           ; $497d: $f1
	add $30                                          ; $497e: $c6 $30
	ld l, [hl]                                       ; $4980: $6e
	ld [hl], c                                       ; $4981: $71
	ccf                                              ; $4982: $3f
	dec sp                                           ; $4983: $3b
	scf                                              ; $4984: $37
	add hl, bc                                       ; $4985: $09
	ldh a, [$da]                                     ; $4986: $f0 $da
	ldh a, [rLYC]                                    ; $4988: $f0 $45
	jr nc, jr_07a_49d2                               ; $498a: $30 $46

	ld b, [hl]                                       ; $498c: $46
	dec sp                                           ; $498d: $3b
	scf                                              ; $498e: $37
	add [hl]                                         ; $498f: $86
	ld [hl], c                                       ; $4990: $71
	ld d, d                                          ; $4991: $52
	jr c, jr_07a_49e7                                ; $4992: $38 $53

	scf                                              ; $4994: $37
	add hl, bc                                       ; $4995: $09
	ldh a, [$b9]                                     ; $4996: $f0 $b9
	ld a, h                                          ; $4998: $7c
	jr nc, @+$56                                     ; $4999: $30 $54

	ld c, l                                          ; $499b: $4d
	ld c, d                                          ; $499c: $4a
	ld c, a                                          ; $499d: $4f
	ld d, l                                          ; $499e: $55
	ld d, b                                          ; $499f: $50
	jr c, jr_07a_49dc                                ; $49a0: $38 $3a

	ld e, b                                          ; $49a2: $58
	jr c, jr_07a_49dc                                ; $49a3: $38 $37

	add hl, bc                                       ; $49a5: $09
	add [hl]                                         ; $49a6: $86
	add [hl]                                         ; $49a7: $86
	add [hl]                                         ; $49a8: $86
	add [hl]                                         ; $49a9: $86
	pop af                                           ; $49aa: $f1
	ld [de], a                                       ; $49ab: $12
	ldh a, [rAUD1LEN]                                ; $49ac: $f0 $11
	pop af                                           ; $49ae: $f1
	ld [de], a                                       ; $49af: $12
	ldh a, [rAUD1LEN]                                ; $49b0: $f0 $11
	ldh a, [c]                                       ; $49b2: $f2
	ld d, [hl]                                       ; $49b3: $56
	ld c, l                                          ; $49b4: $4d
	ldh a, [c]                                       ; $49b5: $f2
	push bc                                          ; $49b6: $c5
	ld h, c                                          ; $49b7: $61
	add hl, bc                                       ; $49b8: $09
	ldh a, [$4c]                                     ; $49b9: $f0 $4c
	ldh a, [rAUD2LOW]                                ; $49bb: $f0 $18
	jr nc, @+$55                                     ; $49bd: $30 $53

	ld b, c                                          ; $49bf: $41
	ld a, e                                          ; $49c0: $7b
	dec sp                                           ; $49c1: $3b
	ccf                                              ; $49c2: $3f
	dec sp                                           ; $49c3: $3b
	scf                                              ; $49c4: $37
	add hl, bc                                       ; $49c5: $09
	ldh a, [$3c]                                     ; $49c6: $f0 $3c
	ldh a, [$39]                                     ; $49c8: $f0 $39
	jr nc, jr_07a_4a30                               ; $49ca: $30 $64

	pop af                                           ; $49cc: $f1
	ccf                                              ; $49cd: $3f
	ldh a, [hDisp0_OBP1]                                     ; $49ce: $f0 $87
	ld e, c                                          ; $49d0: $59
	ld e, c                                          ; $49d1: $59

jr_07a_49d2:
	dec sp                                           ; $49d2: $3b
	scf                                              ; $49d3: $37
	scf                                              ; $49d4: $37
	add hl, bc                                       ; $49d5: $09
	add [hl]                                         ; $49d6: $86
	add [hl]                                         ; $49d7: $86
	add [hl]                                         ; $49d8: $86

jr_07a_49d9:
	add [hl]                                         ; $49d9: $86
	add [hl]                                         ; $49da: $86
	ld h, h                                          ; $49db: $64

jr_07a_49dc:
	ld l, [hl]                                       ; $49dc: $6e

jr_07a_49dd:
	ld e, e                                          ; $49dd: $5b
	ld b, d                                          ; $49de: $42
	pop af                                           ; $49df: $f1
	ld [hl-], a                                      ; $49e0: $32
	ld d, a                                          ; $49e1: $57
	add hl, bc                                       ; $49e2: $09
	ldh a, [$33]                                     ; $49e3: $f0 $33
	ldh a, [$2e]                                     ; $49e5: $f0 $2e

jr_07a_49e7:
	jr nc, jr_07a_49d9                               ; $49e7: $30 $f0

	adc [hl]                                         ; $49e9: $8e
	ldh a, [c]                                       ; $49ea: $f2
	jr jr_07a_49dd                                   ; $49eb: $18 $f0

	jp nz, $f065                                     ; $49ed: $c2 $65 $f0

	cp d                                             ; $49f0: $ba
	pop af                                           ; $49f1: $f1
	ret nc                                           ; $49f2: $d0

jr_07a_49f3:
	ld e, c                                          ; $49f3: $59
	scf                                              ; $49f4: $37
	add hl, bc                                       ; $49f5: $09
	ld b, [hl]                                       ; $49f6: $46
	dec sp                                           ; $49f7: $3b
	scf                                              ; $49f8: $37
	jr c, jr_07a_4a69                                ; $49f9: $38 $6e

	inc [hl]                                         ; $49fb: $34
	ld a, [hl-]                                      ; $49fc: $3a
	ld b, c                                          ; $49fd: $41
	ld c, d                                          ; $49fe: $4a

jr_07a_49ff:
	ld c, a                                          ; $49ff: $4f
	ld a, [hl-]                                      ; $4a00: $3a
	jr c, jr_07a_49f3                                ; $4a01: $38 $f0

jr_07a_4a03:
	ld e, $f0                                        ; $4a03: $1e $f0
	ld e, $f0                                        ; $4a05: $1e $f0
	ld e, $09                                        ; $4a07: $1e $09
	ldh a, [$33]                                     ; $4a09: $f0 $33
	ldh a, [$2e]                                     ; $4a0b: $f0 $2e
	jr nc, jr_07a_49ff                               ; $4a0d: $30 $f0

	adc [hl]                                         ; $4a0f: $8e
	ldh a, [c]                                       ; $4a10: $f2
	jr jr_07a_4a03                                   ; $4a11: $18 $f0

	jp nz, $f065                                     ; $4a13: $c2 $65 $f0

	cp d                                             ; $4a16: $ba
	pop af                                           ; $4a17: $f1
	ret nc                                           ; $4a18: $d0

	ld e, c                                          ; $4a19: $59
	scf                                              ; $4a1a: $37
	add hl, bc                                       ; $4a1b: $09
	pop af                                           ; $4a1c: $f1
	or d                                             ; $4a1d: $b2
	pop af                                           ; $4a1e: $f1
	ld c, b                                          ; $4a1f: $48
	ldh a, [rAUD2LOW]                                ; $4a20: $f0 $18
	ldh a, [c]                                       ; $4a22: $f2
	and c                                            ; $4a23: $a1
	ld e, c                                          ; $4a24: $59
	dec sp                                           ; $4a25: $3b
	scf                                              ; $4a26: $37
	add hl, bc                                       ; $4a27: $09
	ldh a, [$b3]                                     ; $4a28: $f0 $b3
	jr nc, jr_07a_4a7e                               ; $4a2a: $30 $52

	dec a                                            ; $4a2c: $3d
	ld l, a                                          ; $4a2d: $6f
	ld b, d                                          ; $4a2e: $42
	ld c, c                                          ; $4a2f: $49

jr_07a_4a30:
	ld d, a                                          ; $4a30: $57
	ld d, h                                          ; $4a31: $54
	ld d, e                                          ; $4a32: $53
	ld l, l                                          ; $4a33: $6d
	add h                                            ; $4a34: $84
	dec [hl]                                         ; $4a35: $35
	add hl, bc                                       ; $4a36: $09
	ldh a, [$b3]                                     ; $4a37: $f0 $b3
	jr nc, jr_07a_4a85                               ; $4a39: $30 $4a

	ld a, [hl-]                                      ; $4a3b: $3a
	ld h, h                                          ; $4a3c: $64
	ld a, $3f                                        ; $4a3d: $3e $3f
	ld d, b                                          ; $4a3f: $50
	dec sp                                           ; $4a40: $3b
	ld a, $56                                        ; $4a41: $3e $56
	jr c, @+$39                                      ; $4a43: $38 $37

	add hl, bc                                       ; $4a45: $09
	ldh a, [$7d]                                     ; $4a46: $f0 $7d
	ld l, b                                          ; $4a48: $68
	ldh a, [hDisp1_BGP]                                     ; $4a49: $f0 $92
	jr nc, @+$4e                                     ; $4a4b: $30 $4c

	ld e, [hl]                                       ; $4a4d: $5e
	inc [hl]                                         ; $4a4e: $34
	ld c, h                                          ; $4a4f: $4c
	ld e, [hl]                                       ; $4a50: $5e
	dec sp                                           ; $4a51: $3b
	dec [hl]                                         ; $4a52: $35
	add hl, bc                                       ; $4a53: $09
	ldh a, [$0c]                                     ; $4a54: $f0 $0c
	jr c, @+$41                                      ; $4a56: $38 $3f

	inc [hl]                                         ; $4a58: $34
	ldh a, [$0c]                                     ; $4a59: $f0 $0c
	jr c, jr_07a_4a9c                                ; $4a5b: $38 $3f

	dec sp                                           ; $4a5d: $3b
	scf                                              ; $4a5e: $37
	add hl, bc                                       ; $4a5f: $09
	ldh a, [$d0]                                     ; $4a60: $f0 $d0
	ld a, [hl]                                       ; $4a62: $7e
	ldh a, [rSTAT]                                   ; $4a63: $f0 $41
	jr nc, jr_07a_4aa1                               ; $4a65: $30 $3a

	ld b, c                                          ; $4a67: $41
	ld b, h                                          ; $4a68: $44

jr_07a_4a69:
	inc [hl]                                         ; $4a69: $34
	ld a, [hl-]                                      ; $4a6a: $3a
	ld b, c                                          ; $4a6b: $41
	ld b, h                                          ; $4a6c: $44
	ld [hl], $09                                     ; $4a6d: $36 $09
	ldh a, [rDMA]                                    ; $4a6f: $f0 $46
	ldh a, [$62]                                     ; $4a71: $f0 $62
	jr nc, jr_07a_4aaf                               ; $4a73: $30 $3a

	ld b, c                                          ; $4a75: $41
	ld b, h                                          ; $4a76: $44
	inc [hl]                                         ; $4a77: $34
	ld a, [hl-]                                      ; $4a78: $3a
	ld b, c                                          ; $4a79: $41
	ld b, h                                          ; $4a7a: $44
	ld [hl], $09                                     ; $4a7b: $36 $09
	adc d                                            ; $4a7d: $8a

jr_07a_4a7e:
	ldh a, [$37]                                     ; $4a7e: $f0 $37
	ldh a, [$3a]                                     ; $4a80: $f0 $3a
	jr nc, jr_07a_4ae0                               ; $4a82: $30 $5c

	ld d, [hl]                                       ; $4a84: $56

jr_07a_4a85:
	dec sp                                           ; $4a85: $3b
	scf                                              ; $4a86: $37
	add hl, bc                                       ; $4a87: $09
	adc d                                            ; $4a88: $8a
	ldh a, [$37]                                     ; $4a89: $f0 $37
	ldh a, [$3a]                                     ; $4a8b: $f0 $3a
	jr nc, jr_07a_4ada                               ; $4a8d: $30 $4b

	dec sp                                           ; $4a8f: $3b
	scf                                              ; $4a90: $37
	add hl, bc                                       ; $4a91: $09
	ldh a, [$0a]                                     ; $4a92: $f0 $0a
	pop af                                           ; $4a94: $f1
	and b                                            ; $4a95: $a0
	ldh a, [rAUD2ENV]                                ; $4a96: $f0 $17
	jr nc, jr_07a_4af8                               ; $4a98: $30 $5e

	ld e, c                                          ; $4a9a: $59
	ld b, c                                          ; $4a9b: $41

jr_07a_4a9c:
	add hl, bc                                       ; $4a9c: $09
	ld e, [hl]                                       ; $4a9d: $5e
	ld e, c                                          ; $4a9e: $59
	ld b, c                                          ; $4a9f: $41
	ld [hl-], a                                      ; $4aa0: $32

jr_07a_4aa1:
	add hl, sp                                       ; $4aa1: $39
	ld b, b                                          ; $4aa2: $40
	ld a, [hl-]                                      ; $4aa3: $3a
	ld e, h                                          ; $4aa4: $5c
	inc sp                                           ; $4aa5: $33
	add hl, bc                                       ; $4aa6: $09
	ldh a, [$d0]                                     ; $4aa7: $f0 $d0
	ld a, [hl]                                       ; $4aa9: $7e
	ldh a, [rSTAT]                                   ; $4aaa: $f0 $41
	jr nc, jr_07a_4b02                               ; $4aac: $30 $54

	ld c, l                                          ; $4aae: $4d

jr_07a_4aaf:
	ld c, e                                          ; $4aaf: $4b
	jr c, jr_07a_4aee                                ; $4ab0: $38 $3c

	ld b, c                                          ; $4ab2: $41
	scf                                              ; $4ab3: $37
	add hl, bc                                       ; $4ab4: $09
	ldh a, [rAUD2ENV]                                ; $4ab5: $f0 $17
	adc h                                            ; $4ab7: $8c
	pop af                                           ; $4ab8: $f1
	ld e, [hl]                                       ; $4ab9: $5e
	ld h, d                                          ; $4aba: $62
	ldh a, [c]                                       ; $4abb: $f2
	adc c                                            ; $4abc: $89
	inc a                                            ; $4abd: $3c
	ld a, c                                          ; $4abe: $79
	ccf                                              ; $4abf: $3f
	ld c, e                                          ; $4ac0: $4b
	inc [hl]                                         ; $4ac1: $34
	add hl, bc                                       ; $4ac2: $09
	ldh a, [$ab]                                     ; $4ac3: $f0 $ab
	ld d, e                                          ; $4ac5: $53
	ld d, c                                          ; $4ac6: $51
	dec a                                            ; $4ac7: $3d
	ld c, [hl]                                       ; $4ac8: $4e
	dec [hl]                                         ; $4ac9: $35
	add hl, bc                                       ; $4aca: $09
	ldh a, [rDMA]                                    ; $4acb: $f0 $46
	ldh a, [$62]                                     ; $4acd: $f0 $62
	jr nc, jr_07a_4b09                               ; $4acf: $30 $38

	dec sp                                           ; $4ad1: $3b
	inc a                                            ; $4ad2: $3c
	pop af                                           ; $4ad3: $f1
	dec [hl]                                         ; $4ad4: $35
	ld b, c                                          ; $4ad5: $41
	scf                                              ; $4ad6: $37
	add hl, bc                                       ; $4ad7: $09
	ldh a, [rAUD2ENV]                                ; $4ad8: $f0 $17

jr_07a_4ada:
	adc h                                            ; $4ada: $8c
	pop af                                           ; $4adb: $f1
	ld e, [hl]                                       ; $4adc: $5e
	ld h, d                                          ; $4add: $62
	ldh a, [c]                                       ; $4ade: $f2
	adc c                                            ; $4adf: $89

jr_07a_4ae0:
	inc a                                            ; $4ae0: $3c
	ld a, c                                          ; $4ae1: $79
	ccf                                              ; $4ae2: $3f
	ld c, e                                          ; $4ae3: $4b
	inc [hl]                                         ; $4ae4: $34
	add hl, bc                                       ; $4ae5: $09
	ldh a, [rDMA]                                    ; $4ae6: $f0 $46
	ldh a, [$62]                                     ; $4ae8: $f0 $62
	ld b, d                                          ; $4aea: $42
	ldh a, [$fb]                                     ; $4aeb: $f0 $fb
	db $f4                                           ; $4aed: $f4

jr_07a_4aee:
	xor l                                            ; $4aee: $ad
	ld c, l                                          ; $4aef: $4d
	scf                                              ; $4af0: $37
	add hl, bc                                       ; $4af1: $09
	adc e                                            ; $4af2: $8b
	ldh a, [$72]                                     ; $4af3: $f0 $72
	jr nc, @+$3a                                     ; $4af5: $30 $38

	ld d, l                                          ; $4af7: $55

jr_07a_4af8:
	sub a                                            ; $4af8: $97
	dec sp                                           ; $4af9: $3b
	scf                                              ; $4afa: $37
	add hl, bc                                       ; $4afb: $09
	add e                                            ; $4afc: $83
	ldh a, [c]                                       ; $4afd: $f2
	ld b, h                                          ; $4afe: $44
	sbc b                                            ; $4aff: $98
	ldh a, [$7c]                                     ; $4b00: $f0 $7c

jr_07a_4b02:
	ldh a, [$03]                                     ; $4b02: $f0 $03

jr_07a_4b04:
	adc e                                            ; $4b04: $8b
	ldh a, [$72]                                     ; $4b05: $f0 $72
	ldh a, [rIF]                                     ; $4b07: $f0 $0f

jr_07a_4b09:
	ld e, c                                          ; $4b09: $59
	ld h, l                                          ; $4b0a: $65
	ldh a, [$2b]                                     ; $4b0b: $f0 $2b
	scf                                              ; $4b0d: $37
	add hl, bc                                       ; $4b0e: $09
	adc e                                            ; $4b0f: $8b
	ldh a, [$72]                                     ; $4b10: $f0 $72
	jr nc, jr_07a_4b04                               ; $4b12: $30 $f0

	or a                                             ; $4b14: $b7
	ld d, b                                          ; $4b15: $50
	ld e, [hl]                                       ; $4b16: $5e
	scf                                              ; $4b17: $37
	add hl, bc                                       ; $4b18: $09
	ldh a, [$50]                                     ; $4b19: $f0 $50
	ld [hl], l                                       ; $4b1b: $75
	ld e, c                                          ; $4b1c: $59
	ld l, c                                          ; $4b1d: $69
	adc e                                            ; $4b1e: $8b
	ldh a, [$72]                                     ; $4b1f: $f0 $72
	ldh a, [$2f]                                     ; $4b21: $f0 $2f
	ld e, c                                          ; $4b23: $59
	ld [hl], e                                       ; $4b24: $73
	sub e                                            ; $4b25: $93
	scf                                              ; $4b26: $37
	add hl, bc                                       ; $4b27: $09
	add [hl]                                         ; $4b28: $86
	add [hl]                                         ; $4b29: $86
	add [hl]                                         ; $4b2a: $86
	add [hl]                                         ; $4b2b: $86
	add [hl]                                         ; $4b2c: $86
	adc e                                            ; $4b2d: $8b
	ldh a, [$72]                                     ; $4b2e: $f0 $72
	ld b, d                                          ; $4b30: $42
	pop af                                           ; $4b31: $f1
	add l                                            ; $4b32: $85
	ldh a, [c]                                       ; $4b33: $f2
	xor a                                            ; $4b34: $af
	add hl, bc                                       ; $4b35: $09
	ld de, $f042                                     ; $4b36: $11 $42 $f0
	ld h, l                                          ; $4b39: $65
	ldh a, [$7f]                                     ; $4b3a: $f0 $7f
	ld d, e                                          ; $4b3c: $53
	pop af                                           ; $4b3d: $f1
	pop de                                           ; $4b3e: $d1
	push af                                          ; $4b3f: $f5
	push hl                                          ; $4b40: $e5
	ldh a, [$d3]                                     ; $4b41: $f0 $d3
	ldh a, [c]                                       ; $4b43: $f2
	jp hl                                            ; $4b44: $e9


	ld a, $3d                                        ; $4b45: $3e $3d
	add hl, bc                                       ; $4b47: $09
	ld de, $f242                                     ; $4b48: $11 $42 $f2
	sub c                                            ; $4b4b: $91
	ldh a, [c]                                       ; $4b4c: $f2
	push bc                                          ; $4b4d: $c5
	add hl, bc                                       ; $4b4e: $09
	ldh a, [c]                                       ; $4b4f: $f2
	sub c                                            ; $4b50: $91
	ldh a, [c]                                       ; $4b51: $f2
	push bc                                          ; $4b52: $c5
	ld c, e                                          ; $4b53: $4b
	ldh a, [rHDMA5]                                  ; $4b54: $f0 $55
	pop af                                           ; $4b56: $f1
	add b                                            ; $4b57: $80
	ld a, $3d                                        ; $4b58: $3e $3d
	add hl, bc                                       ; $4b5a: $09
	ld de, $094b                                     ; $4b5b: $11 $4b $09
	inc bc                                           ; $4b5e: $03
	add h                                            ; $4b5f: $84
	ld l, e                                          ; $4b60: $6b
	ret c                                            ; $4b61: $d8

	ld b, d                                          ; $4b62: $42
	ldh a, [$f1]                                     ; $4b63: $f0 $f1
	ldh a, [$9d]                                     ; $4b65: $f0 $9d
	ld e, c                                          ; $4b67: $59
	ldh a, [$7e]                                     ; $4b68: $f0 $7e
	ld h, d                                          ; $4b6a: $62
	ldh a, [c]                                       ; $4b6b: $f2
	push hl                                          ; $4b6c: $e5
	ld e, [hl]                                       ; $4b6d: $5e
	dec a                                            ; $4b6e: $3d
	add hl, bc                                       ; $4b6f: $09
	inc bc                                           ; $4b70: $03
	add h                                            ; $4b71: $84
	ld l, e                                          ; $4b72: $6b
	ret c                                            ; $4b73: $d8

	ld b, d                                          ; $4b74: $42
	ldh a, [$f1]                                     ; $4b75: $f0 $f1
	ldh a, [$9d]                                     ; $4b77: $f0 $9d
	ld e, c                                          ; $4b79: $59
	ldh a, [$7e]                                     ; $4b7a: $f0 $7e
	ld h, d                                          ; $4b7c: $62
	pop af                                           ; $4b7d: $f1
	ld c, d                                          ; $4b7e: $4a
	ld e, l                                          ; $4b7f: $5d
	dec a                                            ; $4b80: $3d
	add hl, bc                                       ; $4b81: $09
	ld de, $024b                                     ; $4b82: $11 $4b $02
	rst JumpTable                                          ; $4b85: $c7
	adc b                                            ; $4b86: $88
	ld h, d                                          ; $4b87: $62
	inc a                                            ; $4b88: $3c
	ld a, e                                          ; $4b89: $7b
	dec sp                                           ; $4b8a: $3b
	dec a                                            ; $4b8b: $3d
	add hl, bc                                       ; $4b8c: $09
	ldh a, [$d0]                                     ; $4b8d: $f0 $d0
	ld a, [hl]                                       ; $4b8f: $7e
	pop af                                           ; $4b90: $f1
	ld e, d                                          ; $4b91: $5a
	ld c, e                                          ; $4b92: $4b
	add hl, bc                                       ; $4b93: $09
	ldh a, [$d0]                                     ; $4b94: $f0 $d0
	ld a, [hl]                                       ; $4b96: $7e
	pop af                                           ; $4b97: $f1
	cp b                                             ; $4b98: $b8
	ld c, e                                          ; $4b99: $4b
	add hl, bc                                       ; $4b9a: $09
	ldh a, [$d0]                                     ; $4b9b: $f0 $d0
	ld a, [hl]                                       ; $4b9d: $7e
	ldh a, [c]                                       ; $4b9e: $f2
	inc h                                            ; $4b9f: $24
	ld c, e                                          ; $4ba0: $4b
	add hl, bc                                       ; $4ba1: $09
	ldh a, [$d0]                                     ; $4ba2: $f0 $d0
	ld a, [hl]                                       ; $4ba4: $7e
	pop af                                           ; $4ba5: $f1
	ld e, d                                          ; $4ba6: $5a
	ld b, a                                          ; $4ba7: $47
	add hl, bc                                       ; $4ba8: $09
	ldh a, [$d0]                                     ; $4ba9: $f0 $d0
	ld a, [hl]                                       ; $4bab: $7e
	pop af                                           ; $4bac: $f1
	cp b                                             ; $4bad: $b8
	ld b, a                                          ; $4bae: $47
	add hl, bc                                       ; $4baf: $09
	ldh a, [$d0]                                     ; $4bb0: $f0 $d0
	ld a, [hl]                                       ; $4bb2: $7e
	ldh a, [c]                                       ; $4bb3: $f2
	inc h                                            ; $4bb4: $24
	ld b, a                                          ; $4bb5: $47
	add hl, bc                                       ; $4bb6: $09
	ldh a, [$d0]                                     ; $4bb7: $f0 $d0
	ld a, [hl]                                       ; $4bb9: $7e
	ldh a, [rSTAT]                                   ; $4bba: $f0 $41
	ld b, a                                          ; $4bbc: $47
	add hl, bc                                       ; $4bbd: $09
	add [hl]                                         ; $4bbe: $86
	add [hl]                                         ; $4bbf: $86
	add [hl]                                         ; $4bc0: $86
	add [hl]                                         ; $4bc1: $86
	add [hl]                                         ; $4bc2: $86
	ldh a, [$9d]                                     ; $4bc3: $f0 $9d
	ldh a, [$a6]                                     ; $4bc5: $f0 $a6
	ld l, c                                          ; $4bc7: $69
	ld h, l                                          ; $4bc8: $65
	ldh a, [c]                                       ; $4bc9: $f2
	and $f1                                          ; $4bca: $e6 $f1
	ld l, $09                                        ; $4bcc: $2e $09
	add [hl]                                         ; $4bce: $86
	add [hl]                                         ; $4bcf: $86
	add [hl]                                         ; $4bd0: $86
	add [hl]                                         ; $4bd1: $86
	add [hl]                                         ; $4bd2: $86
	ldh a, [$f6]                                     ; $4bd3: $f0 $f6
	pop af                                           ; $4bd5: $f1
	inc [hl]                                         ; $4bd6: $34

jr_07a_4bd7:
	ldh a, [c]                                       ; $4bd7: $f2
	pop bc                                           ; $4bd8: $c1
	pop af                                           ; $4bd9: $f1
	ld a, d                                          ; $4bda: $7a
	ldh a, [$1f]                                     ; $4bdb: $f0 $1f
	ldh a, [$6e]                                     ; $4bdd: $f0 $6e
	add hl, bc                                       ; $4bdf: $09
	ldh a, [$1f]                                     ; $4be0: $f0 $1f
	ldh a, [$6e]                                     ; $4be2: $f0 $6e
	jr nc, jr_07a_4bd7                               ; $4be4: $30 $f1

	ld a, d                                          ; $4be6: $7a
	db $f4                                           ; $4be7: $f4
	call $0ff0                                       ; $4be8: $cd $f0 $0f
	ld e, c                                          ; $4beb: $59
	ld h, l                                          ; $4bec: $65
	ldh a, [$2b]                                     ; $4bed: $f0 $2b
	scf                                              ; $4bef: $37
	add hl, bc                                       ; $4bf0: $09
	ldh a, [$1f]                                     ; $4bf1: $f0 $1f
	ldh a, [$6e]                                     ; $4bf3: $f0 $6e
	jr nc, @-$0b                                     ; $4bf5: $30 $f3

	rst SubAFromBC                                          ; $4bf7: $e7
	di                                               ; $4bf8: $f3
	call c, Call_07a_54f1                            ; $4bf9: $dc $f1 $54
	ldh a, [rAUD4POLY]                               ; $4bfc: $f0 $22
	ld a, l                                          ; $4bfe: $7d
	ld e, c                                          ; $4bff: $59
	ldh a, [$03]                                     ; $4c00: $f0 $03
	ld [hl], e                                       ; $4c02: $73
	scf                                              ; $4c03: $37
	add hl, bc                                       ; $4c04: $09
	ldh a, [$1f]                                     ; $4c05: $f0 $1f
	ldh a, [$6e]                                     ; $4c07: $f0 $6e
	jr nc, @-$0e                                     ; $4c09: $30 $f0

	or $f1                                           ; $4c0b: $f6 $f1
	inc [hl]                                         ; $4c0d: $34
	ldh a, [c]                                       ; $4c0e: $f2
	pop bc                                           ; $4c0f: $c1
	pop af                                           ; $4c10: $f1
	ld a, d                                          ; $4c11: $7a
	ldh a, [$de]                                     ; $4c12: $f0 $de
	ldh a, [$c4]                                     ; $4c14: $f0 $c4
	ld e, c                                          ; $4c16: $59
	ldh a, [$27]                                     ; $4c17: $f0 $27
	scf                                              ; $4c19: $37
	add hl, bc                                       ; $4c1a: $09
	add [hl]                                         ; $4c1b: $86
	add [hl]                                         ; $4c1c: $86
	add [hl]                                         ; $4c1d: $86
	ldh a, [c]                                       ; $4c1e: $f2
	adc a                                            ; $4c1f: $8f
	ldh a, [c]                                       ; $4c20: $f2
	sub b                                            ; $4c21: $90
	pop af                                           ; $4c22: $f1
	reti                                             ; $4c23: $d9


	add [hl]                                         ; $4c24: $86
	ldh a, [$3f]                                     ; $4c25: $f0 $3f
	db $f4                                           ; $4c27: $f4
	ld b, h                                          ; $4c28: $44
	ld b, d                                          ; $4c29: $42
	pop af                                           ; $4c2a: $f1
	add e                                            ; $4c2b: $83
	add hl, bc                                       ; $4c2c: $09
	add [hl]                                         ; $4c2d: $86
	add [hl]                                         ; $4c2e: $86
	add [hl]                                         ; $4c2f: $86
	ldh a, [rAUD3ENA]                                ; $4c30: $f0 $1a
	ld e, c                                          ; $4c32: $59
	ldh a, [$9d]                                     ; $4c33: $f0 $9d
	ldh a, [$03]                                     ; $4c35: $f0 $03
	ld h, l                                          ; $4c37: $65
	ld b, d                                          ; $4c38: $42
	ldh a, [rOCPD]                                   ; $4c39: $f0 $6b
	ldh a, [rSC]                                     ; $4c3b: $f0 $02
	pop af                                           ; $4c3d: $f1
	ld b, c                                          ; $4c3e: $41
	ld e, h                                          ; $4c3f: $5c
	add hl, bc                                       ; $4c40: $09
	add [hl]                                         ; $4c41: $86
	add [hl]                                         ; $4c42: $86
	add [hl]                                         ; $4c43: $86
	add [hl]                                         ; $4c44: $86
	add [hl]                                         ; $4c45: $86
	di                                               ; $4c46: $f3
	and e                                            ; $4c47: $a3
	di                                               ; $4c48: $f3
	sbc $f1                                          ; $4c49: $de $f1
	ld d, d                                          ; $4c4b: $52
	ldh a, [$dc]                                     ; $4c4c: $f0 $dc
	di                                               ; $4c4e: $f3
	db $eb                                           ; $4c4f: $eb
	add hl, bc                                       ; $4c50: $09
	add [hl]                                         ; $4c51: $86
	add [hl]                                         ; $4c52: $86
	add [hl]                                         ; $4c53: $86
	add [hl]                                         ; $4c54: $86
	ldh a, [hDisp0_BGP]                                     ; $4c55: $f0 $85
	pop af                                           ; $4c57: $f1
	ld h, l                                          ; $4c58: $65
	ldh a, [$c3]                                     ; $4c59: $f0 $c3
	ld e, c                                          ; $4c5b: $59
	ldh a, [rAUD4LEN]                                ; $4c5c: $f0 $20
	ld e, c                                          ; $4c5e: $59
	pop af                                           ; $4c5f: $f1
	sub a                                            ; $4c60: $97
	ld [hl], e                                       ; $4c61: $73
	ldh a, [$32]                                     ; $4c62: $f0 $32
	add hl, bc                                       ; $4c64: $09
	add [hl]                                         ; $4c65: $86
	add [hl]                                         ; $4c66: $86
	add [hl]                                         ; $4c67: $86
	add [hl]                                         ; $4c68: $86
	add [hl]                                         ; $4c69: $86
	pop af                                           ; $4c6a: $f1
	scf                                              ; $4c6b: $37
	ld b, d                                          ; $4c6c: $42
	ldh a, [c]                                       ; $4c6d: $f2
	rrca                                             ; $4c6e: $0f
	ldh a, [rAUD4POLY]                               ; $4c6f: $f0 $22
	ld e, c                                          ; $4c71: $59
	ldh a, [rBCPD]                                   ; $4c72: $f0 $69
	add hl, bc                                       ; $4c74: $09
	add [hl]                                         ; $4c75: $86
	add [hl]                                         ; $4c76: $86
	add [hl]                                         ; $4c77: $86
	add [hl]                                         ; $4c78: $86
	add [hl]                                         ; $4c79: $86
	add [hl]                                         ; $4c7a: $86
	ldh a, [rPCM34]                                  ; $4c7b: $f0 $77
	di                                               ; $4c7d: $f3
	and e                                            ; $4c7e: $a3
	ldh a, [c]                                       ; $4c7f: $f2
	ld hl, $8609                                     ; $4c80: $21 $09 $86
	add [hl]                                         ; $4c83: $86
	add [hl]                                         ; $4c84: $86
	add [hl]                                         ; $4c85: $86
	add [hl]                                         ; $4c86: $86
	ldh a, [$ba]                                     ; $4c87: $f0 $ba
	ld a, l                                          ; $4c89: $7d
	ldh a, [$3d]                                     ; $4c8a: $f0 $3d
	ldh a, [$a6]                                     ; $4c8c: $f0 $a6
	ldh a, [rSC]                                     ; $4c8e: $f0 $02
	ldh a, [$f1]                                     ; $4c90: $f0 $f1
	ld h, l                                          ; $4c92: $65
	sub e                                            ; $4c93: $93
	add hl, bc                                       ; $4c94: $09
	add [hl]                                         ; $4c95: $86
	add [hl]                                         ; $4c96: $86
	add [hl]                                         ; $4c97: $86
	add [hl]                                         ; $4c98: $86
	add [hl]                                         ; $4c99: $86
	add [hl]                                         ; $4c9a: $86
	ld a, a                                          ; $4c9b: $7f
	ldh a, [rTAC]                                    ; $4c9c: $f0 $07
	ldh a, [$5f]                                     ; $4c9e: $f0 $5f
	ldh a, [rAUD1ENV]                                ; $4ca0: $f0 $12
	add hl, bc                                       ; $4ca2: $09
	ldh a, [$2f]                                     ; $4ca3: $f0 $2f
	ldh a, [rSC]                                     ; $4ca5: $f0 $02
	ld e, c                                          ; $4ca7: $59
	pop af                                           ; $4ca8: $f1
	ld [hl+], a                                      ; $4ca9: $22
	ldh a, [$50]                                     ; $4caa: $f0 $50
	ldh a, [rAUD3LOW]                                ; $4cac: $f0 $1d
	ld d, e                                          ; $4cae: $53
	ldh a, [c]                                       ; $4caf: $f2
	ret nz                                           ; $4cb0: $c0

	dec sp                                           ; $4cb1: $3b
	ccf                                              ; $4cb2: $3f
	ld e, h                                          ; $4cb3: $5c
	dec a                                            ; $4cb4: $3d
	scf                                              ; $4cb5: $37
	add hl, bc                                       ; $4cb6: $09
	add [hl]                                         ; $4cb7: $86
	add [hl]                                         ; $4cb8: $86
	add [hl]                                         ; $4cb9: $86
	add [hl]                                         ; $4cba: $86
	sub e                                            ; $4cbb: $93
	ldh a, [rSC]                                     ; $4cbc: $f0 $02
	ld [hl], e                                       ; $4cbe: $73
	sbc b                                            ; $4cbf: $98
	ldh a, [$a1]                                     ; $4cc0: $f0 $a1
	ldh a, [rAUD3HIGH]                               ; $4cc2: $f0 $1e
	sub e                                            ; $4cc4: $93
	ldh a, [$1f]                                     ; $4cc5: $f0 $1f
	ld e, c                                          ; $4cc7: $59
	add hl, bc                                       ; $4cc8: $09
	add [hl]                                         ; $4cc9: $86
	add [hl]                                         ; $4cca: $86
	add [hl]                                         ; $4ccb: $86
	add [hl]                                         ; $4ccc: $86
	ldh a, [rAUD4POLY]                               ; $4ccd: $f0 $22
	ld e, c                                          ; $4ccf: $59
	pop af                                           ; $4cd0: $f1
	dec b                                            ; $4cd1: $05
	ld h, l                                          ; $4cd2: $65
	ldh a, [rBCPD]                                   ; $4cd3: $f0 $69
	ld e, c                                          ; $4cd5: $59
	ldh a, [$9d]                                     ; $4cd6: $f0 $9d
	ldh a, [rSC]                                     ; $4cd8: $f0 $02
	ld h, l                                          ; $4cda: $65
	add hl, bc                                       ; $4cdb: $09
	ld de, $4430                                     ; $4cdc: $11 $30 $44
	ld [hl], c                                       ; $4cdf: $71
	ld b, h                                          ; $4ce0: $44
	scf                                              ; $4ce1: $37
	push af                                          ; $4ce2: $f5
	db $e4                                           ; $4ce3: $e4
	ld h, e                                          ; $4ce4: $63
	ld c, l                                          ; $4ce5: $4d
	ccf                                              ; $4ce6: $3f
	ld a, $52                                        ; $4ce7: $3e $52
	add hl, sp                                       ; $4ce9: $39
	scf                                              ; $4cea: $37
	add hl, bc                                       ; $4ceb: $09
	ld d, l                                          ; $4cec: $55
	ld b, b                                          ; $4ced: $40
	dec sp                                           ; $4cee: $3b
	dec a                                            ; $4cef: $3d
	ld c, l                                          ; $4cf0: $4d
	ld [hl], c                                       ; $4cf1: $71
	ld e, c                                          ; $4cf2: $59
	scf                                              ; $4cf3: $37
	add hl, bc                                       ; $4cf4: $09
	ldh a, [c]                                       ; $4cf5: $f2
	ld [hl], e                                       ; $4cf6: $73
	pop af                                           ; $4cf7: $f1
	add a                                            ; $4cf8: $87
	ld b, d                                          ; $4cf9: $42
	ldh a, [rAUD3LOW]                                ; $4cfa: $f0 $1d
	ldh a, [rDIV]                                    ; $4cfc: $f0 $04
	pop af                                           ; $4cfe: $f1
	ld [hl], h                                       ; $4cff: $74
	ld [hl], d                                       ; $4d00: $72
	pop af                                           ; $4d01: $f1
	add hl, bc                                       ; $4d02: $09
	scf                                              ; $4d03: $37
	add hl, bc                                       ; $4d04: $09
	ldh a, [$fb]                                     ; $4d05: $f0 $fb
	push af                                          ; $4d07: $f5
	db $e3                                           ; $4d08: $e3

jr_07a_4d09:
	jr nc, @-$0e                                     ; $4d09: $30 $f0

	sub $f2                                          ; $4d0b: $d6 $f2
	and c                                            ; $4d0d: $a1
	di                                               ; $4d0e: $f3
	db $ec                                           ; $4d0f: $ec
	ld sp, $f098                                     ; $4d10: $31 $98 $f0
	ld c, e                                          ; $4d13: $4b
	ld [hl], e                                       ; $4d14: $73
	ld l, c                                          ; $4d15: $69
	add hl, bc                                       ; $4d16: $09
	jr nc, jr_07a_4d09                               ; $4d17: $30 $f0

	sub $f2                                          ; $4d19: $d6 $f2
	and c                                            ; $4d1b: $a1
	di                                               ; $4d1c: $f3
	db $ec                                           ; $4d1d: $ec
	ld sp, $40f1                                     ; $4d1e: $31 $f1 $40
	ldh a, [$09]                                     ; $4d21: $f0 $09
	ldh a, [$03]                                     ; $4d23: $f0 $03
	pop af                                           ; $4d25: $f1
	ld [hl], h                                       ; $4d26: $74
	ld e, c                                          ; $4d27: $59
	db $f4                                           ; $4d28: $f4
	add hl, sp                                       ; $4d29: $39
	push af                                          ; $4d2a: $f5
	ldh [c], a                                       ; $4d2b: $e2
	add hl, bc                                       ; $4d2c: $09
	ldh a, [rAUD3LOW]                                ; $4d2d: $f0 $1d
	ldh a, [rDIV]                                    ; $4d2f: $f0 $04
	pop af                                           ; $4d31: $f1
	ld [hl], h                                       ; $4d32: $74
	jr nc, jr_07a_4d89                               ; $4d33: $30 $54

	dec sp                                           ; $4d35: $3b
	dec a                                            ; $4d36: $3d
	ld d, b                                          ; $4d37: $50
	ld c, c                                          ; $4d38: $49
	ld d, h                                          ; $4d39: $54
	ld a, b                                          ; $4d3a: $78
	dec a                                            ; $4d3b: $3d
	ld d, b                                          ; $4d3c: $50
	add hl, bc                                       ; $4d3d: $09
	ld b, h                                          ; $4d3e: $44
	ld [hl], c                                       ; $4d3f: $71
	ld b, h                                          ; $4d40: $44
	ldh a, [$8c]                                     ; $4d41: $f0 $8c
	scf                                              ; $4d43: $37
	add hl, bc                                       ; $4d44: $09
	ldh a, [$0a]                                     ; $4d45: $f0 $0a
	ld d, l                                          ; $4d47: $55
	ld e, l                                          ; $4d48: $5d
	ld e, [hl]                                       ; $4d49: $5e
	ld c, l                                          ; $4d4a: $4d
	scf                                              ; $4d4b: $37
	add hl, bc                                       ; $4d4c: $09
	ldh a, [$fc]                                     ; $4d4d: $f0 $fc
	ldh a, [c]                                       ; $4d4f: $f2
	nop                                              ; $4d50: $00
	ld b, a                                          ; $4d51: $47
	ldh a, [$6f]                                     ; $4d52: $f0 $6f
	dec sp                                           ; $4d54: $3b
	dec a                                            ; $4d55: $3d
	scf                                              ; $4d56: $37
	scf                                              ; $4d57: $37
	add hl, bc                                       ; $4d58: $09
	ld b, [hl]                                       ; $4d59: $46
	ld d, a                                          ; $4d5a: $57
	ld d, e                                          ; $4d5b: $53
	ld c, c                                          ; $4d5c: $49
	add hl, sp                                       ; $4d5d: $39
	inc [hl]                                         ; $4d5e: $34
	ldh a, [rAUD3LOW]                                ; $4d5f: $f0 $1d
	ldh a, [rDIV]                                    ; $4d61: $f0 $04
	pop af                                           ; $4d63: $f1
	ld [hl], h                                       ; $4d64: $74
	ld b, d                                          ; $4d65: $42
	ld h, h                                          ; $4d66: $64
	ld e, e                                          ; $4d67: $5b
	ld e, b                                          ; $4d68: $58
	ld b, c                                          ; $4d69: $41
	add hl, bc                                       ; $4d6a: $09
	ldh a, [c]                                       ; $4d6b: $f2
	inc hl                                           ; $4d6c: $23
	ldh a, [$ad]                                     ; $4d6d: $f0 $ad
	di                                               ; $4d6f: $f3
	ld c, $86                                        ; $4d70: $0e $86
	pop af                                           ; $4d72: $f1
	ld c, a                                          ; $4d73: $4f
	pop af                                           ; $4d74: $f1
	inc l                                            ; $4d75: $2c
	pop af                                           ; $4d76: $f1
	sbc [hl]                                         ; $4d77: $9e
	ldh a, [$58]                                     ; $4d78: $f0 $58
	ldh a, [c]                                       ; $4d7a: $f2
	adc h                                            ; $4d7b: $8c
	ldh a, [c]                                       ; $4d7c: $f2
	ld c, d                                          ; $4d7d: $4a
	ldh a, [c]                                       ; $4d7e: $f2
	db $ed                                           ; $4d7f: $ed
	ldh a, [c]                                       ; $4d80: $f2
	jp $6409                                         ; $4d81: $c3 $09 $64


	pop af                                           ; $4d84: $f1
	add [hl]                                         ; $4d85: $86
	add [hl]                                         ; $4d86: $86
	add [hl]                                         ; $4d87: $86
	pop af                                           ; $4d88: $f1

jr_07a_4d89:
	ld c, a                                          ; $4d89: $4f
	pop af                                           ; $4d8a: $f1
	pop de                                           ; $4d8b: $d1
	ldh a, [$e5]                                     ; $4d8c: $f0 $e5
	pop af                                           ; $4d8e: $f1
	ld c, c                                          ; $4d8f: $49
	ld e, c                                          ; $4d90: $59
	ldh a, [$03]                                     ; $4d91: $f0 $03
	ldh a, [$32]                                     ; $4d93: $f0 $32
	add hl, bc                                       ; $4d95: $09
	ld h, h                                          ; $4d96: $64
	dec a                                            ; $4d97: $3d
	inc a                                            ; $4d98: $3c
	ld d, b                                          ; $4d99: $50
	pop af                                           ; $4d9a: $f1
	ld c, a                                          ; $4d9b: $4f
	add hl, bc                                       ; $4d9c: $09
	ld h, h                                          ; $4d9d: $64
	dec a                                            ; $4d9e: $3d
	inc a                                            ; $4d9f: $3c
	ld d, b                                          ; $4da0: $50
	pop af                                           ; $4da1: $f1
	ld c, a                                          ; $4da2: $4f
	ldh a, [c]                                       ; $4da3: $f2
	ld [hl], b                                       ; $4da4: $70
	ld b, d                                          ; $4da5: $42
	ldh a, [$e6]                                     ; $4da6: $f0 $e6
	di                                               ; $4da8: $f3
	adc e                                            ; $4da9: $8b
	add hl, bc                                       ; $4daa: $09
	ld h, h                                          ; $4dab: $64
	dec a                                            ; $4dac: $3d
	inc a                                            ; $4dad: $3c
	ld d, b                                          ; $4dae: $50
	pop af                                           ; $4daf: $f1
	ld c, a                                          ; $4db0: $4f
	ldh a, [c]                                       ; $4db1: $f2
	ld [hl], b                                       ; $4db2: $70
	ld b, d                                          ; $4db3: $42
	di                                               ; $4db4: $f3
	daa                                              ; $4db5: $27
	db $f4                                           ; $4db6: $f4
	call z, $6409                                    ; $4db7: $cc $09 $64
	dec a                                            ; $4dba: $3d
	inc a                                            ; $4dbb: $3c
	ld d, b                                          ; $4dbc: $50
	pop af                                           ; $4dbd: $f1
	ld c, a                                          ; $4dbe: $4f
	ldh a, [c]                                       ; $4dbf: $f2
	ld [hl], b                                       ; $4dc0: $70
	ld b, d                                          ; $4dc1: $42
	push af                                          ; $4dc2: $f5
	pop hl                                           ; $4dc3: $e1
	di                                               ; $4dc4: $f3
	ld h, $09                                        ; $4dc5: $26 $09
	ld h, h                                          ; $4dc7: $64
	dec a                                            ; $4dc8: $3d
	inc a                                            ; $4dc9: $3c
	ld d, b                                          ; $4dca: $50
	pop af                                           ; $4dcb: $f1
	ld c, a                                          ; $4dcc: $4f
	ldh a, [c]                                       ; $4dcd: $f2
	ld [hl], b                                       ; $4dce: $70
	ld b, d                                          ; $4dcf: $42
	di                                               ; $4dd0: $f3
	db $e3                                           ; $4dd1: $e3
	ldh a, [$2c]                                     ; $4dd2: $f0 $2c
	add hl, bc                                       ; $4dd4: $09
	ldh a, [rAUD3ENA]                                ; $4dd5: $f0 $1a
	ldh a, [rBCPD]                                   ; $4dd7: $f0 $69
	ldh a, [rAUD3HIGH]                               ; $4dd9: $f0 $1e
	ldh a, [$1f]                                     ; $4ddb: $f0 $1f
	ld e, c                                          ; $4ddd: $59
	ldh a, [$32]                                     ; $4dde: $f0 $32
	ld d, e                                          ; $4de0: $53
	ldh a, [c]                                       ; $4de1: $f2
	ret nz                                           ; $4de2: $c0

	dec sp                                           ; $4de3: $3b
	ccf                                              ; $4de4: $3f
	ld e, h                                          ; $4de5: $5c
	dec a                                            ; $4de6: $3d
	scf                                              ; $4de7: $37
	add hl, bc                                       ; $4de8: $09
	add [hl]                                         ; $4de9: $86
	add [hl]                                         ; $4dea: $86
	add [hl]                                         ; $4deb: $86
	add [hl]                                         ; $4dec: $86
	add [hl]                                         ; $4ded: $86
	ldh a, [$60]                                     ; $4dee: $f0 $60
	ld e, c                                          ; $4df0: $59
	ldh a, [$03]                                     ; $4df1: $f0 $03
	ldh a, [rAUD3HIGH]                               ; $4df3: $f0 $1e
	ldh a, [rIF]                                     ; $4df5: $f0 $0f
	ld h, l                                          ; $4df7: $65
	ldh a, [$2b]                                     ; $4df8: $f0 $2b
	add hl, bc                                       ; $4dfa: $09
	add [hl]                                         ; $4dfb: $86
	add [hl]                                         ; $4dfc: $86
	add [hl]                                         ; $4dfd: $86
	add [hl]                                         ; $4dfe: $86
	ldh a, [$3d]                                     ; $4dff: $f0 $3d
	add e                                            ; $4e01: $83
	ld l, c                                          ; $4e02: $69
	ldh a, [rSC]                                     ; $4e03: $f0 $02
	ldh a, [$03]                                     ; $4e05: $f0 $03
	ldh a, [$8e]                                     ; $4e07: $f0 $8e
	pop af                                           ; $4e09: $f1
	ld c, l                                          ; $4e0a: $4d
	ld h, l                                          ; $4e0b: $65
	ldh a, [$50]                                     ; $4e0c: $f0 $50
	add hl, bc                                       ; $4e0e: $09
	ld de, $4430                                     ; $4e0f: $11 $30 $44
	ld [hl], c                                       ; $4e12: $71
	ld b, h                                          ; $4e13: $44
	scf                                              ; $4e14: $37
	ld l, [hl]                                       ; $4e15: $6e
	ld d, b                                          ; $4e16: $50
	ld c, l                                          ; $4e17: $4d
	ccf                                              ; $4e18: $3f
	ld a, $52                                        ; $4e19: $3e $52
	add hl, sp                                       ; $4e1b: $39
	scf                                              ; $4e1c: $37
	add hl, bc                                       ; $4e1d: $09
	ld [hl], $36                                     ; $4e1e: $36 $36
	ld [hl], $30                                     ; $4e20: $36 $30
	ldh a, [$fd]                                     ; $4e22: $f0 $fd
	ldh a, [$2f]                                     ; $4e24: $f0 $2f
	ldh a, [$c4]                                     ; $4e26: $f0 $c4
	ld e, c                                          ; $4e28: $59
	scf                                              ; $4e29: $37
	add hl, bc                                       ; $4e2a: $09
	ld de, $3a30                                     ; $4e2b: $11 $30 $3a
	dec sp                                           ; $4e2e: $3b
	inc [hl]                                         ; $4e2f: $34
	ld a, [hl-]                                      ; $4e30: $3a
	ld b, c                                          ; $4e31: $41
	ld b, h                                          ; $4e32: $44
	scf                                              ; $4e33: $37
	add hl, bc                                       ; $4e34: $09
	ldh a, [c]                                       ; $4e35: $f2
	ld [hl], e                                       ; $4e36: $73
	pop af                                           ; $4e37: $f1
	add a                                            ; $4e38: $87
	ld b, d                                          ; $4e39: $42
	ldh a, [rAUD3LOW]                                ; $4e3a: $f0 $1d
	ld h, l                                          ; $4e3c: $65
	ldh a, [$50]                                     ; $4e3d: $f0 $50
	ld e, c                                          ; $4e3f: $59
	add e                                            ; $4e40: $83
	pop af                                           ; $4e41: $f1
	add hl, bc                                       ; $4e42: $09
	ldh a, [$3e]                                     ; $4e43: $f0 $3e
	scf                                              ; $4e45: $37
	add hl, bc                                       ; $4e46: $09
	add [hl]                                         ; $4e47: $86
	add [hl]                                         ; $4e48: $86
	add [hl]                                         ; $4e49: $86
	add [hl]                                         ; $4e4a: $86
	ldh a, [rAUD3LOW]                                ; $4e4b: $f0 $1d
	ld h, l                                          ; $4e4d: $65
	ldh a, [$50]                                     ; $4e4e: $f0 $50
	ld e, c                                          ; $4e50: $59
	add e                                            ; $4e51: $83
	push af                                          ; $4e52: $f5
	ldh [$f3], a                                     ; $4e53: $e0 $f3
	and [hl]                                         ; $4e55: $a6
	di                                               ; $4e56: $f3
	rra                                              ; $4e57: $1f
	add hl, bc                                       ; $4e58: $09
	ldh a, [$fc]                                     ; $4e59: $f0 $fc
	ldh a, [c]                                       ; $4e5b: $f2
	nop                                              ; $4e5c: $00
	ld b, a                                          ; $4e5d: $47
	ldh a, [$6f]                                     ; $4e5e: $f0 $6f
	dec sp                                           ; $4e60: $3b
	dec a                                            ; $4e61: $3d
	scf                                              ; $4e62: $37
	scf                                              ; $4e63: $37
	add hl, bc                                       ; $4e64: $09
	ld b, [hl]                                       ; $4e65: $46
	ld d, a                                          ; $4e66: $57
	ld d, e                                          ; $4e67: $53
	ld c, c                                          ; $4e68: $49
	add hl, sp                                       ; $4e69: $39
	inc [hl]                                         ; $4e6a: $34
	ldh a, [c]                                       ; $4e6b: $f2
	ld [hl], e                                       ; $4e6c: $73
	pop af                                           ; $4e6d: $f1
	add a                                            ; $4e6e: $87
	ld b, d                                          ; $4e6f: $42
	ldh a, [rAUD3LOW]                                ; $4e70: $f0 $1d
	ld h, l                                          ; $4e72: $65
	ldh a, [$50]                                     ; $4e73: $f0 $50
	ld e, c                                          ; $4e75: $59
	add e                                            ; $4e76: $83
	add hl, bc                                       ; $4e77: $09
	ldh a, [c]                                       ; $4e78: $f2
	inc hl                                           ; $4e79: $23
	ldh a, [$ad]                                     ; $4e7a: $f0 $ad
	di                                               ; $4e7c: $f3
	ld c, $86                                        ; $4e7d: $0e $86
	pop af                                           ; $4e7f: $f1
	ld c, a                                          ; $4e80: $4f
	ldh a, [c]                                       ; $4e81: $f2
	jr c, @-$0e                                      ; $4e82: $38 $f0

	ld e, b                                          ; $4e84: $58
	pop af                                           ; $4e85: $f1
	sbc [hl]                                         ; $4e86: $9e
	ldh a, [c]                                       ; $4e87: $f2
	ld c, d                                          ; $4e88: $4a
	ldh a, [c]                                       ; $4e89: $f2
	db $ed                                           ; $4e8a: $ed
	ldh a, [c]                                       ; $4e8b: $f2
	jp $6409                                         ; $4e8c: $c3 $09 $64


	pop af                                           ; $4e8f: $f1
	add [hl]                                         ; $4e90: $86
	add [hl]                                         ; $4e91: $86
	add [hl]                                         ; $4e92: $86
	pop af                                           ; $4e93: $f1
	ld c, a                                          ; $4e94: $4f
	pop af                                           ; $4e95: $f1
	inc l                                            ; $4e96: $2c
	ldh a, [c]                                       ; $4e97: $f2
	ld [hl], c                                       ; $4e98: $71
	pop af                                           ; $4e99: $f1
	pop de                                           ; $4e9a: $d1
	pop af                                           ; $4e9b: $f1
	ld c, c                                          ; $4e9c: $49
	ld e, c                                          ; $4e9d: $59
	ldh a, [$03]                                     ; $4e9e: $f0 $03
	ldh a, [$32]                                     ; $4ea0: $f0 $32
	add hl, bc                                       ; $4ea2: $09
	ld h, h                                          ; $4ea3: $64
	dec a                                            ; $4ea4: $3d
	inc a                                            ; $4ea5: $3c
	ld d, b                                          ; $4ea6: $50
	pop af                                           ; $4ea7: $f1
	ld c, a                                          ; $4ea8: $4f
	add hl, bc                                       ; $4ea9: $09
	ld h, h                                          ; $4eaa: $64
	dec a                                            ; $4eab: $3d
	inc a                                            ; $4eac: $3c
	ld d, b                                          ; $4ead: $50
	pop af                                           ; $4eae: $f1
	ld c, a                                          ; $4eaf: $4f
	push af                                          ; $4eb0: $f5
	rst SubAFromDE                                          ; $4eb1: $df
	ld b, d                                          ; $4eb2: $42
	pop af                                           ; $4eb3: $f1
	or h                                             ; $4eb4: $b4
	ld e, l                                          ; $4eb5: $5d
	ldh a, [c]                                       ; $4eb6: $f2
	db $e3                                           ; $4eb7: $e3
	add hl, bc                                       ; $4eb8: $09
	ld h, h                                          ; $4eb9: $64
	dec a                                            ; $4eba: $3d
	inc a                                            ; $4ebb: $3c
	ld d, b                                          ; $4ebc: $50
	pop af                                           ; $4ebd: $f1
	ld c, a                                          ; $4ebe: $4f
	pop af                                           ; $4ebf: $f1
	sub a                                            ; $4ec0: $97
	ldh a, [$de]                                     ; $4ec1: $f0 $de
	db $f4                                           ; $4ec3: $f4
	call z, $a8f4                                    ; $4ec4: $cc $f4 $a8
	add hl, bc                                       ; $4ec7: $09
	ld h, h                                          ; $4ec8: $64
	dec a                                            ; $4ec9: $3d
	inc a                                            ; $4eca: $3c
	ld d, b                                          ; $4ecb: $50
	pop af                                           ; $4ecc: $f1
	ld c, a                                          ; $4ecd: $4f
	ldh a, [c]                                       ; $4ece: $f2
	call c, $8af2                                    ; $4ecf: $dc $f2 $8a
	ld a, $09                                        ; $4ed2: $3e $09
	ld h, h                                          ; $4ed4: $64
	dec a                                            ; $4ed5: $3d
	inc a                                            ; $4ed6: $3c
	ld d, b                                          ; $4ed7: $50
	pop af                                           ; $4ed8: $f1
	ld c, a                                          ; $4ed9: $4f
	ldh a, [rAUD3ENA]                                ; $4eda: $f0 $1a
	ldh a, [rBCPD]                                   ; $4edc: $f0 $69
	db $f4                                           ; $4ede: $f4
	ld hl, $f109                                     ; $4edf: $21 $09 $f1
	ld c, b                                          ; $4ee2: $48
	ldh a, [rAUD3HIGH]                               ; $4ee3: $f0 $1e
	ldh a, [$50]                                     ; $4ee5: $f0 $50
	ld [hl], l                                       ; $4ee7: $75
	ld e, c                                          ; $4ee8: $59
	ld l, c                                          ; $4ee9: $69
	ld d, e                                          ; $4eea: $53
	ldh a, [c]                                       ; $4eeb: $f2
	ret nz                                           ; $4eec: $c0

	dec sp                                           ; $4eed: $3b
	ccf                                              ; $4eee: $3f
	ld e, h                                          ; $4eef: $5c
	dec a                                            ; $4ef0: $3d
	scf                                              ; $4ef1: $37
	add hl, bc                                       ; $4ef2: $09
	add [hl]                                         ; $4ef3: $86
	add [hl]                                         ; $4ef4: $86
	add [hl]                                         ; $4ef5: $86
	add [hl]                                         ; $4ef6: $86
	db $f4                                           ; $4ef7: $f4
	or b                                             ; $4ef8: $b0
	ld c, l                                          ; $4ef9: $4d
	ld b, c                                          ; $4efa: $41
	push af                                          ; $4efb: $f5
	sbc $f1                                          ; $4efc: $de $f1
	sub $f3                                          ; $4efe: $d6 $f3
	ld l, b                                          ; $4f00: $68
	ld e, h                                          ; $4f01: $5c
	add hl, bc                                       ; $4f02: $09
	add [hl]                                         ; $4f03: $86
	add [hl]                                         ; $4f04: $86
	add [hl]                                         ; $4f05: $86
	add [hl]                                         ; $4f06: $86
	add [hl]                                         ; $4f07: $86
	add [hl]                                         ; $4f08: $86
	add e                                            ; $4f09: $83
	ldh a, [rDIV]                                    ; $4f0a: $f0 $04
	ld h, l                                          ; $4f0c: $65
	ldh a, [$fd]                                     ; $4f0d: $f0 $fd
	ld e, c                                          ; $4f0f: $59
	ld l, c                                          ; $4f10: $69
	add hl, bc                                       ; $4f11: $09
	ld de, $4430                                     ; $4f12: $11 $30 $44
	ld [hl], c                                       ; $4f15: $71
	ld b, h                                          ; $4f16: $44
	scf                                              ; $4f17: $37
	ldh a, [$65]                                     ; $4f18: $f0 $65
	ld d, e                                          ; $4f1a: $53
	ldh a, [rOBP0]                                   ; $4f1b: $f0 $48
	inc a                                            ; $4f1d: $3c
	ld a, [hl-]                                      ; $4f1e: $3a
	jr c, jr_07a_4f58                                ; $4f1f: $38 $37

	add hl, bc                                       ; $4f21: $09
	ld [hl], $36                                     ; $4f22: $36 $36
	ld [hl], $30                                     ; $4f24: $36 $30
	db $f4                                           ; $4f26: $f4
	set 6, e                                         ; $4f27: $cb $f3
	ld a, [hl-]                                      ; $4f29: $3a
	ld b, a                                          ; $4f2a: $47
	ld d, d                                          ; $4f2b: $52
	inc a                                            ; $4f2c: $3c
	ld a, c                                          ; $4f2d: $79
	ld a, [hl-]                                      ; $4f2e: $3a
	ld e, b                                          ; $4f2f: $58
	ld c, l                                          ; $4f30: $4d
	dec [hl]                                         ; $4f31: $35
	add hl, bc                                       ; $4f32: $09
	ld de, $3630                                     ; $4f33: $11 $30 $36
	scf                                              ; $4f36: $37
	add hl, bc                                       ; $4f37: $09
	ldh a, [c]                                       ; $4f38: $f2
	ld [hl], e                                       ; $4f39: $73
	pop af                                           ; $4f3a: $f1
	add a                                            ; $4f3b: $87
	ld b, d                                          ; $4f3c: $42
	di                                               ; $4f3d: $f3
	and d                                            ; $4f3e: $a2
	ldh a, [rAUD1LOW]                                ; $4f3f: $f0 $13
	di                                               ; $4f41: $f3

jr_07a_4f42:
	ld a, [hl-]                                      ; $4f42: $3a
	db $f4                                           ; $4f43: $f4
	xor h                                            ; $4f44: $ac
	pop af                                           ; $4f45: $f1
	add hl, bc                                       ; $4f46: $09
	scf                                              ; $4f47: $37
	add hl, bc                                       ; $4f48: $09
	di                                               ; $4f49: $f3
	and d                                            ; $4f4a: $a2
	ldh a, [rAUD1LOW]                                ; $4f4b: $f0 $13
	di                                               ; $4f4d: $f3
	ld a, [hl-]                                      ; $4f4e: $3a
	jr nc, jr_07a_4f42                               ; $4f4f: $30 $f1

	or c                                             ; $4f51: $b1
	ld e, [hl]                                       ; $4f52: $5e
	ld c, [hl]                                       ; $4f53: $4e
	add a                                            ; $4f54: $87
	pop af                                           ; $4f55: $f1
	ld c, b                                          ; $4f56: $48
	ld b, l                                          ; $4f57: $45

jr_07a_4f58:
	inc [hl]                                         ; $4f58: $34
	add hl, bc                                       ; $4f59: $09
	pop af                                           ; $4f5a: $f1
	ld [hl-], a                                      ; $4f5b: $32
	ld d, a                                          ; $4f5c: $57
	ld h, d                                          ; $4f5d: $62
	pop af                                           ; $4f5e: $f1
	ld e, b                                          ; $4f5f: $58
	ld [hl], c                                       ; $4f60: $71
	ldh a, [c]                                       ; $4f61: $f2
	add d                                            ; $4f62: $82
	ld e, [hl]                                       ; $4f63: $5e
	dec [hl]                                         ; $4f64: $35
	add hl, bc                                       ; $4f65: $09
	add [hl]                                         ; $4f66: $86
	add [hl]                                         ; $4f67: $86
	add [hl]                                         ; $4f68: $86
	add [hl]                                         ; $4f69: $86
	pop af                                           ; $4f6a: $f1
	and [hl]                                         ; $4f6b: $a6
	ldh a, [$f6]                                     ; $4f6c: $f0 $f6
	pop af                                           ; $4f6e: $f1
	dec d                                            ; $4f6f: $15
	push af                                          ; $4f70: $f5
	db $dd                                           ; $4f71: $dd
	ld b, d                                          ; $4f72: $42
	db $f4                                           ; $4f73: $f4
	sbc a                                            ; $4f74: $9f
	ldh a, [rSCX]                                    ; $4f75: $f0 $43
	add hl, bc                                       ; $4f77: $09
	pop af                                           ; $4f78: $f1
	ld c, b                                          ; $4f79: $48
	ldh a, [rAUD3HIGH]                               ; $4f7a: $f0 $1e
	ldh a, [$50]                                     ; $4f7c: $f0 $50
	ld [hl], l                                       ; $4f7e: $75
	ld e, c                                          ; $4f7f: $59
	ld l, c                                          ; $4f80: $69
	ld c, e                                          ; $4f81: $4b
	ldh a, [c]                                       ; $4f82: $f2
	ld l, [hl]                                       ; $4f83: $6e
	dec sp                                           ; $4f84: $3b
	ccf                                              ; $4f85: $3f
	jr c, jr_07a_4fc3                                ; $4f86: $38 $3b

	dec a                                            ; $4f88: $3d
	dec [hl]                                         ; $4f89: $35
	add hl, bc                                       ; $4f8a: $09
	di                                               ; $4f8b: $f3
	and d                                            ; $4f8c: $a2
	ldh a, [rAUD1LOW]                                ; $4f8d: $f0 $13
	di                                               ; $4f8f: $f3
	ld a, [hl-]                                      ; $4f90: $3a
	jr nc, @+$4d                                     ; $4f91: $30 $4b

	ld a, $3d                                        ; $4f93: $3e $3d
	ld a, [hl-]                                      ; $4f95: $3a
	jr c, jr_07a_4fe1                                ; $4f96: $38 $49

	ld d, h                                          ; $4f98: $54
	ld e, a                                          ; $4f99: $5f
	ld h, d                                          ; $4f9a: $62
	add hl, bc                                       ; $4f9b: $09
	ld h, h                                          ; $4f9c: $64
	ld [hl], d                                       ; $4f9d: $72
	ld a, c                                          ; $4f9e: $79
	ld a, $3f                                        ; $4f9f: $3e $3f
	ld a, $52                                        ; $4fa1: $3e $52
	dec sp                                           ; $4fa3: $3b
	dec a                                            ; $4fa4: $3d
	dec [hl]                                         ; $4fa5: $35
	add hl, bc                                       ; $4fa6: $09
	ld c, d                                          ; $4fa7: $4a
	ld c, e                                          ; $4fa8: $4b
	inc [hl]                                         ; $4fa9: $34
	db $f4                                           ; $4faa: $f4
	set 6, e                                         ; $4fab: $cb $f3
	ld a, [hl-]                                      ; $4fad: $3a
	ld c, e                                          ; $4fae: $4b
	ld d, h                                          ; $4faf: $54
	ld c, l                                          ; $4fb0: $4d
	ld b, a                                          ; $4fb1: $47
	ccf                                              ; $4fb2: $3f
	dec [hl]                                         ; $4fb3: $35
	add hl, bc                                       ; $4fb4: $09
	ldh a, [$fc]                                     ; $4fb5: $f0 $fc
	ldh a, [c]                                       ; $4fb7: $f2
	nop                                              ; $4fb8: $00
	ld b, a                                          ; $4fb9: $47
	ldh a, [$6f]                                     ; $4fba: $f0 $6f
	dec sp                                           ; $4fbc: $3b
	dec a                                            ; $4fbd: $3d
	scf                                              ; $4fbe: $37
	scf                                              ; $4fbf: $37
	add hl, bc                                       ; $4fc0: $09
	ld b, [hl]                                       ; $4fc1: $46
	ld d, a                                          ; $4fc2: $57

jr_07a_4fc3:
	ld d, e                                          ; $4fc3: $53
	ld c, c                                          ; $4fc4: $49
	add hl, sp                                       ; $4fc5: $39
	inc [hl]                                         ; $4fc6: $34
	ldh a, [c]                                       ; $4fc7: $f2
	ld [hl], e                                       ; $4fc8: $73
	pop af                                           ; $4fc9: $f1
	add a                                            ; $4fca: $87
	ld b, d                                          ; $4fcb: $42
	di                                               ; $4fcc: $f3
	and d                                            ; $4fcd: $a2
	ldh a, [rAUD1LOW]                                ; $4fce: $f0 $13
	di                                               ; $4fd0: $f3

jr_07a_4fd1:
	ld a, [hl-]                                      ; $4fd1: $3a
	add hl, bc                                       ; $4fd2: $09
	ldh a, [c]                                       ; $4fd3: $f2
	inc hl                                           ; $4fd4: $23
	ldh a, [$ad]                                     ; $4fd5: $f0 $ad
	di                                               ; $4fd7: $f3
	ld c, $86                                        ; $4fd8: $0e $86
	pop af                                           ; $4fda: $f1
	ld c, a                                          ; $4fdb: $4f
	ldh a, [c]                                       ; $4fdc: $f2
	jr c, jr_07a_4fd1                                ; $4fdd: $38 $f2

	adc h                                            ; $4fdf: $8c
	pop af                                           ; $4fe0: $f1

jr_07a_4fe1:
	inc l                                            ; $4fe1: $2c
	ldh a, [c]                                       ; $4fe2: $f2
	ld c, d                                          ; $4fe3: $4a
	ldh a, [c]                                       ; $4fe4: $f2
	db $ed                                           ; $4fe5: $ed
	ldh a, [c]                                       ; $4fe6: $f2
	jp $6409                                         ; $4fe7: $c3 $09 $64


	pop af                                           ; $4fea: $f1
	add [hl]                                         ; $4feb: $86
	add [hl]                                         ; $4fec: $86
	add [hl]                                         ; $4fed: $86
	pop af                                           ; $4fee: $f1
	ld c, a                                          ; $4fef: $4f
	ldh a, [$58]                                     ; $4ff0: $f0 $58
	pop af                                           ; $4ff2: $f1
	sbc [hl]                                         ; $4ff3: $9e
	ldh a, [c]                                       ; $4ff4: $f2
	adc h                                            ; $4ff5: $8c
	pop af                                           ; $4ff6: $f1
	pop de                                           ; $4ff7: $d1
	pop af                                           ; $4ff8: $f1
	ld c, c                                          ; $4ff9: $49
	ld e, c                                          ; $4ffa: $59
	ldh a, [$03]                                     ; $4ffb: $f0 $03
	ldh a, [$32]                                     ; $4ffd: $f0 $32
	add hl, bc                                       ; $4fff: $09
	ld h, h                                          ; $5000: $64
	dec a                                            ; $5001: $3d
	inc a                                            ; $5002: $3c
	ld d, b                                          ; $5003: $50
	pop af                                           ; $5004: $f1
	ld c, a                                          ; $5005: $4f
	add hl, bc                                       ; $5006: $09
	ld h, h                                          ; $5007: $64
	dec a                                            ; $5008: $3d
	inc a                                            ; $5009: $3c
	ld d, b                                          ; $500a: $50
	pop af                                           ; $500b: $f1
	ld c, a                                          ; $500c: $4f
	pop af                                           ; $500d: $f1
	ld c, b                                          ; $500e: $48
	ld a, c                                          ; $500f: $79
	ld b, c                                          ; $5010: $41
	ldh a, [$8c]                                     ; $5011: $f0 $8c
	jr c, jr_07a_501e                                ; $5013: $38 $09

	ld h, h                                          ; $5015: $64
	dec a                                            ; $5016: $3d
	inc a                                            ; $5017: $3c
	ld d, b                                          ; $5018: $50
	pop af                                           ; $5019: $f1
	ld c, a                                          ; $501a: $4f
	pop af                                           ; $501b: $f1
	ld c, b                                          ; $501c: $48
	ld b, d                                          ; $501d: $42

jr_07a_501e:
	db $f4                                           ; $501e: $f4
	ld c, c                                          ; $501f: $49
	add hl, bc                                       ; $5020: $09
	ld h, h                                          ; $5021: $64
	dec a                                            ; $5022: $3d
	inc a                                            ; $5023: $3c
	ld d, b                                          ; $5024: $50
	pop af                                           ; $5025: $f1
	ld c, a                                          ; $5026: $4f
	pop af                                           ; $5027: $f1
	ld c, b                                          ; $5028: $48
	ld d, d                                          ; $5029: $52
	ld b, c                                          ; $502a: $41
	ld e, e                                          ; $502b: $5b
	ldh a, [c]                                       ; $502c: $f2
	sbc [hl]                                         ; $502d: $9e
	add hl, sp                                       ; $502e: $39
	add hl, bc                                       ; $502f: $09
	ld h, h                                          ; $5030: $64
	dec a                                            ; $5031: $3d
	inc a                                            ; $5032: $3c
	ld d, b                                          ; $5033: $50
	pop af                                           ; $5034: $f1
	ld c, a                                          ; $5035: $4f
	pop af                                           ; $5036: $f1
	ld c, b                                          ; $5037: $48
	ld b, d                                          ; $5038: $42
	push af                                          ; $5039: $f5
	call c, $f209                                    ; $503a: $dc $09 $f2
	ld e, d                                          ; $503d: $5a
	ldh a, [c]                                       ; $503e: $f2
	ld e, e                                          ; $503f: $5b
	add h                                            ; $5040: $84
	ld d, e                                          ; $5041: $53
	ldh a, [c]                                       ; $5042: $f2
	ret nz                                           ; $5043: $c0

	dec sp                                           ; $5044: $3b
	ccf                                              ; $5045: $3f
	ld e, h                                          ; $5046: $5c
	dec a                                            ; $5047: $3d
	scf                                              ; $5048: $37
	add hl, bc                                       ; $5049: $09
	ldh a, [$b9]                                     ; $504a: $f0 $b9
	ld a, h                                          ; $504c: $7c
	jr nc, @+$71                                     ; $504d: $30 $6f

	ld d, e                                          ; $504f: $53
	pop af                                           ; $5050: $f1
	ld a, c                                          ; $5051: $79
	pop af                                           ; $5052: $f1
	ld h, d                                          ; $5053: $62
	ld d, c                                          ; $5054: $51
	ld c, [hl]                                       ; $5055: $4e
	ld d, d                                          ; $5056: $52
	ld c, d                                          ; $5057: $4a
	inc [hl]                                         ; $5058: $34
	add hl, bc                                       ; $5059: $09
	ldh a, [rHDMA1]                                  ; $505a: $f0 $51
	ld h, c                                          ; $505c: $61
	ld d, h                                          ; $505d: $54
	dec a                                            ; $505e: $3d
	ld e, [hl]                                       ; $505f: $5e
	ld a, [hl-]                                      ; $5060: $3a

jr_07a_5061:
	ld e, b                                          ; $5061: $58
	jr c, jr_07a_5099                                ; $5062: $38 $35

	add hl, bc                                       ; $5064: $09
	ldh a, [c]                                       ; $5065: $f2
	ld e, d                                          ; $5066: $5a
	ldh a, [c]                                       ; $5067: $f2
	ld e, e                                          ; $5068: $5b
	add h                                            ; $5069: $84
	jr nc, jr_07a_5061                               ; $506a: $30 $f5

	sub $f4                                          ; $506c: $d6 $f4
	adc $f5                                          ; $506e: $ce $f5
	rst SubAFromHL                                          ; $5070: $d7
	push af                                          ; $5071: $f5
	ret c                                            ; $5072: $d8

	push af                                          ; $5073: $f5
	reti                                             ; $5074: $d9


	push af                                          ; $5075: $f5
	jp c, $dbf5                                      ; $5076: $da $f5 $db

	scf                                              ; $5079: $37
	add hl, bc                                       ; $507a: $09
	ldh a, [c]                                       ; $507b: $f2
	ld e, d                                          ; $507c: $5a
	ldh a, [c]                                       ; $507d: $f2
	ld e, e                                          ; $507e: $5b
	add h                                            ; $507f: $84
	jr nc, @-$09                                     ; $5080: $30 $f5

	ret nc                                           ; $5082: $d0

	push af                                          ; $5083: $f5
	pop de                                           ; $5084: $d1
	push af                                          ; $5085: $f5
	jp nc, $d3f5                                     ; $5086: $d2 $f5 $d3

	push af                                          ; $5089: $f5

jr_07a_508a:
	call nc, $d5f5                                   ; $508a: $d4 $f5 $d5
	add hl, bc                                       ; $508d: $09
	ldh a, [c]                                       ; $508e: $f2
	ld e, d                                          ; $508f: $5a
	ldh a, [c]                                       ; $5090: $f2
	ld e, e                                          ; $5091: $5b
	add h                                            ; $5092: $84
	jr nc, jr_07a_508a                               ; $5093: $30 $f5

	ret z                                            ; $5095: $c8

	push af                                          ; $5096: $f5
	ret                                              ; $5097: $c9


	push af                                          ; $5098: $f5

jr_07a_5099:
	jp z, $cbf5                                      ; $5099: $ca $f5 $cb

	push af                                          ; $509c: $f5
	call z, $cdf5                                    ; $509d: $cc $f5 $cd
	push af                                          ; $50a0: $f5
	adc $f5                                          ; $50a1: $ce $f5
	rst GetHLinHL                                          ; $50a3: $cf
	add hl, bc                                       ; $50a4: $09
	ld de, $41f0                                     ; $50a5: $11 $f0 $41
	ld c, e                                          ; $50a8: $4b
	ldh a, [$e1]                                     ; $50a9: $f0 $e1
	ldh a, [rSB]                                     ; $50ab: $f0 $01
	sub h                                            ; $50ad: $94

jr_07a_50ae:
	ld a, $3d                                        ; $50ae: $3e $3d
	dec [hl]                                         ; $50b0: $35
	add hl, bc                                       ; $50b1: $09
	ldh a, [c]                                       ; $50b2: $f2
	ld e, d                                          ; $50b3: $5a
	ldh a, [c]                                       ; $50b4: $f2
	ld e, e                                          ; $50b5: $5b
	add h                                            ; $50b6: $84
	jr nc, jr_07a_50ae                               ; $50b7: $30 $f5

	jp nz, $c3f5                                     ; $50b9: $c2 $f5 $c3

	push af                                          ; $50bc: $f5
	call nz, $eff3                                   ; $50bd: $c4 $f3 $ef
	db $f4                                           ; $50c0: $f4
	sbc [hl]                                         ; $50c1: $9e
	push af                                          ; $50c2: $f5
	push bc                                          ; $50c3: $c5
	push af                                          ; $50c4: $f5
	add $f5                                          ; $50c5: $c6 $f5
	rst JumpTable                                          ; $50c7: $c7
	add hl, bc                                       ; $50c8: $09
	push af                                          ; $50c9: $f5
	or [hl]                                          ; $50ca: $b6
	push af                                          ; $50cb: $f5
	or a                                             ; $50cc: $b7
	push af                                          ; $50cd: $f5
	cp b                                             ; $50ce: $b8
	push af                                          ; $50cf: $f5
	cp c                                             ; $50d0: $b9
	push af                                          ; $50d1: $f5
	cp d                                             ; $50d2: $ba
	push af                                          ; $50d3: $f5
	cp e                                             ; $50d4: $bb
	push af                                          ; $50d5: $f5
	cp h                                             ; $50d6: $bc
	push af                                          ; $50d7: $f5
	cp l                                             ; $50d8: $bd
	push af                                          ; $50d9: $f5
	cp [hl]                                          ; $50da: $be
	push af                                          ; $50db: $f5
	cp a                                             ; $50dc: $bf
	push af                                          ; $50dd: $f5
	ret nz                                           ; $50de: $c0

	push af                                          ; $50df: $f5
	pop bc                                           ; $50e0: $c1
	add hl, bc                                       ; $50e1: $09
	ldh a, [c]                                       ; $50e2: $f2
	ld e, d                                          ; $50e3: $5a
	ldh a, [c]                                       ; $50e4: $f2
	ld e, e                                          ; $50e5: $5b
	add h                                            ; $50e6: $84

jr_07a_50e7:
	ld c, e                                          ; $50e7: $4b
	ldh a, [c]                                       ; $50e8: $f2
	ld l, [hl]                                       ; $50e9: $6e
	dec sp                                           ; $50ea: $3b
	ccf                                              ; $50eb: $3f
	jr c, jr_07a_5129                                ; $50ec: $38 $3b

	dec a                                            ; $50ee: $3d
	dec [hl]                                         ; $50ef: $35
	add hl, bc                                       ; $50f0: $09
	ldh a, [$b9]                                     ; $50f1: $f0 $b9
	ld a, h                                          ; $50f3: $7c
	jr nc, jr_07a_50e7                               ; $50f4: $30 $f1

	ld c, h                                          ; $50f6: $4c
	ldh a, [hDisp0_WY]                                     ; $50f7: $f0 $88
	ldh a, [$9c]                                     ; $50f9: $f0 $9c
	ldh a, [$0d]                                     ; $50fb: $f0 $0d
	ld b, a                                          ; $50fd: $47
	add hl, bc                                       ; $50fe: $09
	ldh a, [c]                                       ; $50ff: $f2
	ld h, e                                          ; $5100: $63
	pop af                                           ; $5101: $f1
	jp Jump_07a_4653                                 ; $5102: $c3 $53 $46


	dec sp                                           ; $5105: $3b
	dec a                                            ; $5106: $3d
	ld l, h                                          ; $5107: $6c
	dec a                                            ; $5108: $3d
	jr c, @+$4e                                      ; $5109: $38 $4c

	add hl, bc                                       ; $510b: $09
	ld de, $4530                                     ; $510c: $11 $30 $45
	ld a, c                                          ; $510f: $79

jr_07a_5110:
	dec sp                                           ; $5110: $3b
	scf                                              ; $5111: $37
	add [hl]                                         ; $5112: $86
	ldh a, [$b9]                                     ; $5113: $f0 $b9
	ld a, h                                          ; $5115: $7c
	ld e, b                                          ; $5116: $58
	ld b, c                                          ; $5117: $41
	scf                                              ; $5118: $37
	add hl, bc                                       ; $5119: $09
	ldh a, [$b9]                                     ; $511a: $f0 $b9
	ld a, h                                          ; $511c: $7c
	jr nc, jr_07a_5110                               ; $511d: $30 $f1

	jp nz, $1ef0                                     ; $511f: $c2 $f0 $1e

	ldh a, [$f6]                                     ; $5122: $f0 $f6
	pop af                                           ; $5124: $f1
	inc [hl]                                         ; $5125: $34
	ldh a, [c]                                       ; $5126: $f2
	pop bc                                           ; $5127: $c1
	pop af                                           ; $5128: $f1

jr_07a_5129:
	ld a, d                                          ; $5129: $7a
	ldh a, [$1f]                                     ; $512a: $f0 $1f
	ldh a, [$6e]                                     ; $512c: $f0 $6e
	scf                                              ; $512e: $37
	scf                                              ; $512f: $37
	add hl, bc                                       ; $5130: $09
	add [hl]                                         ; $5131: $86
	add [hl]                                         ; $5132: $86
	add [hl]                                         ; $5133: $86
	add [hl]                                         ; $5134: $86
	pop af                                           ; $5135: $f1
	ld a, d                                          ; $5136: $7a
	db $f4                                           ; $5137: $f4
	call $32f0                                       ; $5138: $cd $f0 $32
	ldh a, [rP1]                                     ; $513b: $f0 $00
	ldh a, [$03]                                     ; $513d: $f0 $03
	ldh a, [rIF]                                     ; $513f: $f0 $0f
	ld h, l                                          ; $5141: $65
	ldh a, [$2b]                                     ; $5142: $f0 $2b
	add hl, bc                                       ; $5144: $09
	add [hl]                                         ; $5145: $86
	add [hl]                                         ; $5146: $86
	add [hl]                                         ; $5147: $86
	di                                               ; $5148: $f3
	rst SubAFromBC                                          ; $5149: $e7
	di                                               ; $514a: $f3
	call c, Call_07a_54f1                            ; $514b: $dc $f1 $54
	ldh a, [rAUD4POLY]                               ; $514e: $f0 $22
	ld a, l                                          ; $5150: $7d
	ldh a, [$03]                                     ; $5151: $f0 $03
	sbc b                                            ; $5153: $98
	ldh a, [$7c]                                     ; $5154: $f0 $7c
	ldh a, [$a0]                                     ; $5156: $f0 $a0
	ld e, c                                          ; $5158: $59
	add hl, bc                                       ; $5159: $09
	add [hl]                                         ; $515a: $86
	add [hl]                                         ; $515b: $86
	add [hl]                                         ; $515c: $86
	ldh a, [$f6]                                     ; $515d: $f0 $f6
	pop af                                           ; $515f: $f1
	inc [hl]                                         ; $5160: $34
	ldh a, [c]                                       ; $5161: $f2
	pop bc                                           ; $5162: $c1
	pop af                                           ; $5163: $f1
	ld a, d                                          ; $5164: $7a

jr_07a_5165:
	ldh a, [$9d]                                     ; $5165: $f0 $9d
	ldh a, [$a6]                                     ; $5167: $f0 $a6
	ldh a, [$de]                                     ; $5169: $f0 $de
	ld e, c                                          ; $516b: $59
	ldh a, [$27]                                     ; $516c: $f0 $27
	add hl, bc                                       ; $516e: $09
	ldh a, [$1f]                                     ; $516f: $f0 $1f
	ldh a, [$6e]                                     ; $5171: $f0 $6e
	jr nc, jr_07a_5165                               ; $5173: $30 $f0

	and [hl]                                         ; $5175: $a6
	pop af                                           ; $5176: $f1
	ld [hl], h                                       ; $5177: $74
	ldh a, [$50]                                     ; $5178: $f0 $50
	ldh a, [rAUD3HIGH]                               ; $517a: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $517c: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $517e: $f0 $1e
	ld [hl], e                                       ; $5180: $73
	add hl, bc                                       ; $5181: $09
	ldh a, [$d0]                                     ; $5182: $f0 $d0
	ld a, [hl]                                       ; $5184: $7e
	ldh a, [rSTAT]                                   ; $5185: $f0 $41
	ld d, e                                          ; $5187: $53
	ldh a, [c]                                       ; $5188: $f2
	ret nz                                           ; $5189: $c0

	dec sp                                           ; $518a: $3b
	ccf                                              ; $518b: $3f
	ld e, h                                          ; $518c: $5c
	dec a                                            ; $518d: $3d
	scf                                              ; $518e: $37
	add hl, bc                                       ; $518f: $09
	ldh a, [$d0]                                     ; $5190: $f0 $d0
	ld a, [hl]                                       ; $5192: $7e
	pop af                                           ; $5193: $f1
	ld e, d                                          ; $5194: $5a
	ld b, d                                          ; $5195: $42
	ldh a, [c]                                       ; $5196: $f2
	sub c                                            ; $5197: $91
	ldh a, [c]                                       ; $5198: $f2
	push bc                                          ; $5199: $c5
	add hl, bc                                       ; $519a: $09
	ldh a, [$d0]                                     ; $519b: $f0 $d0
	ld a, [hl]                                       ; $519d: $7e
	pop af                                           ; $519e: $f1
	cp b                                             ; $519f: $b8
	ld b, d                                          ; $51a0: $42
	ldh a, [c]                                       ; $51a1: $f2
	sub c                                            ; $51a2: $91
	ldh a, [c]                                       ; $51a3: $f2
	push bc                                          ; $51a4: $c5
	add hl, bc                                       ; $51a5: $09
	ldh a, [$d0]                                     ; $51a6: $f0 $d0
	ld a, [hl]                                       ; $51a8: $7e
	ldh a, [c]                                       ; $51a9: $f2
	inc h                                            ; $51aa: $24
	ld b, d                                          ; $51ab: $42
	ldh a, [c]                                       ; $51ac: $f2
	sub c                                            ; $51ad: $91
	ldh a, [c]                                       ; $51ae: $f2
	push bc                                          ; $51af: $c5
	add hl, bc                                       ; $51b0: $09
	ldh a, [$d0]                                     ; $51b1: $f0 $d0
	ld a, [hl]                                       ; $51b3: $7e
	ldh a, [rIF]                                     ; $51b4: $f0 $0f
	ld h, l                                          ; $51b6: $65
	ldh a, [$2b]                                     ; $51b7: $f0 $2b
	add hl, bc                                       ; $51b9: $09
	ldh a, [$d0]                                     ; $51ba: $f0 $d0
	ld a, [hl]                                       ; $51bc: $7e
	jr nc, jr_07a_51ff                               ; $51bd: $30 $40

	ld b, c                                          ; $51bf: $41
	ld a, [hl-]                                      ; $51c0: $3a
	ldh a, [c]                                       ; $51c1: $f2
	sub c                                            ; $51c2: $91
	ldh a, [c]                                       ; $51c3: $f2
	push bc                                          ; $51c4: $c5
	ld c, d                                          ; $51c5: $4a
	ld c, e                                          ; $51c6: $4b
	inc [hl]                                         ; $51c7: $34
	add hl, bc                                       ; $51c8: $09
	halt                                             ; $51c9: $76
	ldh a, [rSTAT]                                   ; $51ca: $f0 $41
	ld b, d                                          ; $51cc: $42
	push af                                          ; $51cd: $f5
	or l                                             ; $51ce: $b5

jr_07a_51cf:
	ld c, c                                          ; $51cf: $49
	ld c, e                                          ; $51d0: $4b
	pop af                                           ; $51d1: $f1
	xor $4d                                          ; $51d2: $ee $4d
	ld c, h                                          ; $51d4: $4c
	add l                                            ; $51d5: $85
	adc l                                            ; $51d6: $8d
	scf                                              ; $51d7: $37
	add hl, bc                                       ; $51d8: $09
	ldh a, [$d0]                                     ; $51d9: $f0 $d0
	ld a, [hl]                                       ; $51db: $7e
	jr nc, jr_07a_51cf                               ; $51dc: $30 $f1

	push af                                          ; $51de: $f5
	ldh a, [$08]                                     ; $51df: $f0 $08
	ld e, d                                          ; $51e1: $5a
	ld b, a                                          ; $51e2: $47
	ld c, a                                          ; $51e3: $4f
	ld a, [hl-]                                      ; $51e4: $3a
	jr c, @+$70                                      ; $51e5: $38 $6e

	add b                                            ; $51e7: $80
	ld [hl], c                                       ; $51e8: $71
	dec [hl]                                         ; $51e9: $35
	add hl, bc                                       ; $51ea: $09
	sub h                                            ; $51eb: $94
	ldh a, [hDisp1_WX]                                     ; $51ec: $f0 $96
	ld a, $3f                                        ; $51ee: $3e $3f
	ld e, h                                          ; $51f0: $5c
	ld l, [hl]                                       ; $51f1: $6e
	ld d, e                                          ; $51f2: $53
	ld c, l                                          ; $51f3: $4d
	scf                                              ; $51f4: $37
	add hl, bc                                       ; $51f5: $09
	ldh a, [$d0]                                     ; $51f6: $f0 $d0
	ld a, [hl]                                       ; $51f8: $7e
	jr nc, jr_07a_5250                               ; $51f9: $30 $55

	dec sp                                           ; $51fb: $3b
	scf                                              ; $51fc: $37
	ld a, [hl-]                                      ; $51fd: $3a
	inc a                                            ; $51fe: $3c

jr_07a_51ff:
	ld a, [hl-]                                      ; $51ff: $3a
	inc a                                            ; $5200: $3c
	ld l, [hl]                                       ; $5201: $6e
	ld c, [hl]                                       ; $5202: $4e
	ld a, [hl-]                                      ; $5203: $3a
	dec sp                                           ; $5204: $3b
	scf                                              ; $5205: $37
	add hl, bc                                       ; $5206: $09
	ld a, $3c                                        ; $5207: $3e $3c
	dec a                                            ; $5209: $3d
	ld c, h                                          ; $520a: $4c
	add l                                            ; $520b: $85
	inc [hl]                                         ; $520c: $34
	add hl, bc                                       ; $520d: $09
	ldh a, [rDMA]                                    ; $520e: $f0 $46
	ldh a, [$62]                                     ; $5210: $f0 $62
	ldh a, [hDisp0_OBP1]                                     ; $5212: $f0 $87
	ld b, a                                          ; $5214: $47
	ldh a, [$bf]                                     ; $5215: $f0 $bf
	pop af                                           ; $5217: $f1
	rst $38                                          ; $5218: $ff
	ldh a, [c]                                       ; $5219: $f2
	ld l, e                                          ; $521a: $6b
	ld b, h                                          ; $521b: $44
	scf                                              ; $521c: $37
	add hl, bc                                       ; $521d: $09
	ldh a, [$fc]                                     ; $521e: $f0 $fc
	ldh a, [c]                                       ; $5220: $f2
	nop                                              ; $5221: $00
	ld b, a                                          ; $5222: $47
	ldh a, [$6f]                                     ; $5223: $f0 $6f
	dec sp                                           ; $5225: $3b
	dec a                                            ; $5226: $3d
	scf                                              ; $5227: $37
	scf                                              ; $5228: $37
	add hl, bc                                       ; $5229: $09
	ldh a, [c]                                       ; $522a: $f2
	inc hl                                           ; $522b: $23
	ldh a, [$ad]                                     ; $522c: $f0 $ad
	di                                               ; $522e: $f3
	ld c, $86                                        ; $522f: $0e $86
	pop af                                           ; $5231: $f1
	ld c, a                                          ; $5232: $4f
	ldh a, [$58]                                     ; $5233: $f0 $58
	ldh a, [$e5]                                     ; $5235: $f0 $e5
	ldh a, [c]                                       ; $5237: $f2
	ld [$9ef1], a                                    ; $5238: $ea $f1 $9e
	ldh a, [c]                                       ; $523b: $f2
	ld c, d                                          ; $523c: $4a
	ldh a, [c]                                       ; $523d: $f2
	db $ed                                           ; $523e: $ed
	ldh a, [c]                                       ; $523f: $f2
	jp $6409                                         ; $5240: $c3 $09 $64


	pop af                                           ; $5243: $f1
	add [hl]                                         ; $5244: $86
	add [hl]                                         ; $5245: $86
	add [hl]                                         ; $5246: $86
	pop af                                           ; $5247: $f1
	ld c, a                                          ; $5248: $4f
	ldh a, [$e5]                                     ; $5249: $f0 $e5
	ldh a, [c]                                       ; $524b: $f2
	ld [$9ef1], a                                    ; $524c: $ea $f1 $9e
	pop af                                           ; $524f: $f1

jr_07a_5250:
	sbc [hl]                                         ; $5250: $9e
	pop af                                           ; $5251: $f1
	ld c, c                                          ; $5252: $49
	ld e, c                                          ; $5253: $59
	ldh a, [$03]                                     ; $5254: $f0 $03
	ldh a, [$32]                                     ; $5256: $f0 $32
	add hl, bc                                       ; $5258: $09
	ld h, h                                          ; $5259: $64
	dec a                                            ; $525a: $3d
	inc a                                            ; $525b: $3c
	ld d, b                                          ; $525c: $50
	pop af                                           ; $525d: $f1
	ld c, a                                          ; $525e: $4f
	add hl, bc                                       ; $525f: $09
	ld h, h                                          ; $5260: $64
	dec a                                            ; $5261: $3d
	inc a                                            ; $5262: $3c
	ld d, b                                          ; $5263: $50
	pop af                                           ; $5264: $f1
	ld c, a                                          ; $5265: $4f
	pop af                                           ; $5266: $f1
	ld d, h                                          ; $5267: $54
	add e                                            ; $5268: $83
	ldh a, [rP1]                                     ; $5269: $f0 $00
	ldh a, [$03]                                     ; $526b: $f0 $03
	adc c                                            ; $526d: $89
	ldh a, [rSC]                                     ; $526e: $f0 $02
	ld h, l                                          ; $5270: $65
	add hl, bc                                       ; $5271: $09
	ld h, h                                          ; $5272: $64
	dec a                                            ; $5273: $3d
	inc a                                            ; $5274: $3c
	ld d, b                                          ; $5275: $50
	pop af                                           ; $5276: $f1
	ld c, a                                          ; $5277: $4f
	push af                                          ; $5278: $f5
	or h                                             ; $5279: $b4
	ld b, d                                          ; $527a: $42
	ldh a, [c]                                       ; $527b: $f2
	add hl, sp                                       ; $527c: $39
	sbc b                                            ; $527d: $98
	ldh a, [$7c]                                     ; $527e: $f0 $7c
	ldh a, [$f2]                                     ; $5280: $f0 $f2
	add hl, bc                                       ; $5282: $09
	ld h, h                                          ; $5283: $64
	dec a                                            ; $5284: $3d
	inc a                                            ; $5285: $3c
	ld d, b                                          ; $5286: $50
	pop af                                           ; $5287: $f1
	ld c, a                                          ; $5288: $4f
	ldh a, [$f1]                                     ; $5289: $f0 $f1
	ld a, l                                          ; $528b: $7d
	pop af                                           ; $528c: $f1
	db $e3                                           ; $528d: $e3
	ld b, d                                          ; $528e: $42
	adc c                                            ; $528f: $89
	di                                               ; $5290: $f3
	db $dd                                           ; $5291: $dd
	add hl, bc                                       ; $5292: $09
	ld h, h                                          ; $5293: $64
	dec a                                            ; $5294: $3d
	inc a                                            ; $5295: $3c
	ld d, b                                          ; $5296: $50
	pop af                                           ; $5297: $f1
	ld c, a                                          ; $5298: $4f
	db $f4                                           ; $5299: $f4
	jp z, $b3f5                                      ; $529a: $ca $f5 $b3

	ld b, d                                          ; $529d: $42
	inc a                                            ; $529e: $3c
	dec a                                            ; $529f: $3d
	ld a, [hl-]                                      ; $52a0: $3a
	add hl, bc                                       ; $52a1: $09
	ld [hl], $36                                     ; $52a2: $36 $36
	jr nc, jr_07a_5307                               ; $52a4: $30 $61

	ld h, [hl]                                       ; $52a6: $66
	dec sp                                           ; $52a7: $3b
	ld c, c                                          ; $52a8: $49
	sbc c                                            ; $52a9: $99
	ccf                                              ; $52aa: $3f
	add l                                            ; $52ab: $85
	ld e, c                                          ; $52ac: $59
	jr c, jr_07a_52e6                                ; $52ad: $38 $37

	add hl, bc                                       ; $52af: $09
	ld de, $f030                                     ; $52b0: $11 $30 $f0
	sbc b                                            ; $52b3: $98
	ld b, h                                          ; $52b4: $44
	dec sp                                           ; $52b5: $3b
	scf                                              ; $52b6: $37
	add hl, bc                                       ; $52b7: $09
	ldh a, [rDMA]                                    ; $52b8: $f0 $46
	ldh a, [$62]                                     ; $52ba: $f0 $62
	jr nc, jr_07a_5334                               ; $52bc: $30 $76

	ldh a, [hDisp0_OBP1]                                     ; $52be: $f0 $87
	ld c, e                                          ; $52c0: $4b
	inc [hl]                                         ; $52c1: $34
	add hl, bc                                       ; $52c2: $09
	ld d, h                                          ; $52c3: $54
	ld b, d                                          ; $52c4: $42
	ldh a, [$f6]                                     ; $52c5: $f0 $f6
	pop af                                           ; $52c7: $f1
	inc [hl]                                         ; $52c8: $34
	ld b, d                                          ; $52c9: $42
	ldh a, [rDMA]                                    ; $52ca: $f0 $46
	ldh a, [$62]                                     ; $52cc: $f0 $62
	ld b, h                                          ; $52ce: $44
	scf                                              ; $52cf: $37
	add hl, bc                                       ; $52d0: $09
	adc h                                            ; $52d1: $8c
	ldh a, [rTAC]                                    ; $52d2: $f0 $07
	ldh a, [rSTAT]                                   ; $52d4: $f0 $41
	ld d, e                                          ; $52d6: $53
	di                                               ; $52d7: $f3
	dec e                                            ; $52d8: $1d
	ldh a, [rTAC]                                    ; $52d9: $f0 $07
	ld c, c                                          ; $52db: $49
	add hl, bc                                       ; $52dc: $09
	ldh a, [$f6]                                     ; $52dd: $f0 $f6
	ldh a, [rAUDVOL]                                 ; $52df: $f0 $24
	ld b, a                                          ; $52e1: $47
	ld a, [hl-]                                      ; $52e2: $3a
	dec sp                                           ; $52e3: $3b
	dec a                                            ; $52e4: $3d
	ld b, l                                          ; $52e5: $45

jr_07a_52e6:
	add hl, sp                                       ; $52e6: $39
	ld b, h                                          ; $52e7: $44
	ld a, [hl-]                                      ; $52e8: $3a
	dec [hl]                                         ; $52e9: $35
	add hl, bc                                       ; $52ea: $09
	ld b, h                                          ; $52eb: $44
	ld d, e                                          ; $52ec: $53
	inc [hl]                                         ; $52ed: $34
	di                                               ; $52ee: $f3
	sbc b                                            ; $52ef: $98
	ldh a, [rDMA]                                    ; $52f0: $f0 $46
	ld c, e                                          ; $52f2: $4b
	ld d, h                                          ; $52f3: $54
	ld d, h                                          ; $52f4: $54
	ld d, d                                          ; $52f5: $52
	ld c, d                                          ; $52f6: $4a
	ld b, h                                          ; $52f7: $44
	scf                                              ; $52f8: $37
	add hl, bc                                       ; $52f9: $09
	ldh a, [rBCPS]                                   ; $52fa: $f0 $68
	ld h, d                                          ; $52fc: $62
	ld e, b                                          ; $52fd: $58
	ld a, c                                          ; $52fe: $79
	ccf                                              ; $52ff: $3f
	ld c, a                                          ; $5300: $4f
	ld d, b                                          ; $5301: $50
	add hl, sp                                       ; $5302: $39
	sub a                                            ; $5303: $97
	dec [hl]                                         ; $5304: $35
	add hl, bc                                       ; $5305: $09
	ld d, h                                          ; $5306: $54

jr_07a_5307:
	ld c, l                                          ; $5307: $4d
	ld c, d                                          ; $5308: $4a
	ld c, a                                          ; $5309: $4f
	ld d, l                                          ; $530a: $55
	ld d, b                                          ; $530b: $50
	ld e, [hl]                                       ; $530c: $5e
	add l                                            ; $530d: $85
	ld e, c                                          ; $530e: $59
	jr c, jr_07a_5348                                ; $530f: $38 $37

	add hl, bc                                       ; $5311: $09
	pop af                                           ; $5312: $f1
	ld d, d                                          ; $5313: $52
	di                                               ; $5314: $f3
	scf                                              ; $5315: $37

jr_07a_5316:
	ldh a, [$7f]                                     ; $5316: $f0 $7f
	scf                                              ; $5318: $37
	add hl, bc                                       ; $5319: $09
	ldh a, [rDMA]                                    ; $531a: $f0 $46
	ldh a, [$62]                                     ; $531c: $f0 $62
	jr nc, @-$0e                                     ; $531e: $30 $f0

	ld b, d                                          ; $5320: $42
	dec sp                                           ; $5321: $3b
	inc [hl]                                         ; $5322: $34
	ld [hl], a                                       ; $5323: $77
	jr c, jr_07a_5316                                ; $5324: $38 $f0

	dec l                                            ; $5326: $2d
	dec sp                                           ; $5327: $3b
	dec a                                            ; $5328: $3d
	inc a                                            ; $5329: $3c
	dec [hl]                                         ; $532a: $35
	add hl, bc                                       ; $532b: $09
	halt                                             ; $532c: $76
	ldh a, [hDisp0_OBP1]                                     ; $532d: $f0 $87
	ld b, a                                          ; $532f: $47
	db $f4                                           ; $5330: $f4
	xor e                                            ; $5331: $ab
	ld d, b                                          ; $5332: $50
	add hl, sp                                       ; $5333: $39

jr_07a_5334:
	pop af                                           ; $5334: $f1
	ld b, d                                          ; $5335: $42
	ld b, d                                          ; $5336: $42
	pop af                                           ; $5337: $f1
	sub [hl]                                         ; $5338: $96
	pop af                                           ; $5339: $f1
	db $ec                                           ; $533a: $ec
	ld c, e                                          ; $533b: $4b
	add hl, bc                                       ; $533c: $09
	ld d, h                                          ; $533d: $54
	add hl, sp                                       ; $533e: $39
	ld a, [hl-]                                      ; $533f: $3a
	ld c, [hl]                                       ; $5340: $4e
	ld b, d                                          ; $5341: $42
	ld b, h                                          ; $5342: $44
	dec [hl]                                         ; $5343: $35
	add hl, bc                                       ; $5344: $09
	ld c, e                                          ; $5345: $4b
	dec sp                                           ; $5346: $3b
	ld c, e                                          ; $5347: $4b

jr_07a_5348:
	dec sp                                           ; $5348: $3b
	ld c, e                                          ; $5349: $4b
	dec sp                                           ; $534a: $3b
	ld c, e                                          ; $534b: $4b
	dec sp                                           ; $534c: $3b
	ld c, e                                          ; $534d: $4b
	dec sp                                           ; $534e: $3b
	ldh a, [rAUD3HIGH]                               ; $534f: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $5351: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $5353: $f0 $1e
	add hl, bc                                       ; $5355: $09
	ld [hl-], a                                      ; $5356: $32
	ld e, d                                          ; $5357: $5a
	ld d, h                                          ; $5358: $54
	inc a                                            ; $5359: $3c
	ld d, b                                          ; $535a: $50
	ld c, c                                          ; $535b: $49
	ld c, a                                          ; $535c: $4f
	ld a, [hl-]                                      ; $535d: $3a
	ld d, l                                          ; $535e: $55
	pop af                                           ; $535f: $f1
	dec l                                            ; $5360: $2d
	ld d, e                                          ; $5361: $53
	ldh a, [$0c]                                     ; $5362: $f0 $0c
	ld d, h                                          ; $5364: $54
	ld e, [hl]                                       ; $5365: $5e
	ccf                                              ; $5366: $3f
	ld e, h                                          ; $5367: $5c
	dec a                                            ; $5368: $3d
	add hl, bc                                       ; $5369: $09
	pop af                                           ; $536a: $f1
	xor d                                            ; $536b: $aa
	pop af                                           ; $536c: $f1
	sbc l                                            ; $536d: $9d
	ld b, d                                          ; $536e: $42
	pop af                                           ; $536f: $f1
	dec l                                            ; $5370: $2d
	jr nc, jr_07a_53d7                               ; $5371: $30 $64

	ld c, h                                          ; $5373: $4c
	ld d, e                                          ; $5374: $53
	jr c, @+$36                                      ; $5375: $38 $34

	add hl, bc                                       ; $5377: $09
	ldh a, [$d9]                                     ; $5378: $f0 $d9
	ld h, c                                          ; $537a: $61
	ld b, [hl]                                       ; $537b: $46
	ld d, e                                          ; $537c: $53
	dec sp                                           ; $537d: $3b
	ccf                                              ; $537e: $3f
	dec [hl]                                         ; $537f: $35
	add hl, bc                                       ; $5380: $09
	ld b, [hl]                                       ; $5381: $46
	ld a, [hl-]                                      ; $5382: $3a
	dec a                                            ; $5383: $3d
	ld b, a                                          ; $5384: $47
	ld c, e                                          ; $5385: $4b
	inc [hl]                                         ; $5386: $34
	add hl, bc                                       ; $5387: $09
	ld d, d                                          ; $5388: $52
	ld b, h                                          ; $5389: $44
	ld l, [hl]                                       ; $538a: $6e
	ld c, [hl]                                       ; $538b: $4e
	ldh a, [$8c]                                     ; $538c: $f0 $8c
	ld e, h                                          ; $538e: $5c
	ld d, h                                          ; $538f: $54
	ld c, c                                          ; $5390: $49
	ld d, e                                          ; $5391: $53
	ld b, [hl]                                       ; $5392: $46
	ld c, [hl]                                       ; $5393: $4e
	ld b, d                                          ; $5394: $42
	ld b, l                                          ; $5395: $45
	scf                                              ; $5396: $37
	add hl, bc                                       ; $5397: $09
	ld b, b                                          ; $5398: $40
	add hl, sp                                       ; $5399: $39
	ld b, l                                          ; $539a: $45
	inc [hl]                                         ; $539b: $34
	ld b, [hl]                                       ; $539c: $46
	ld a, [hl-]                                      ; $539d: $3a
	dec a                                            ; $539e: $3d
	ld b, a                                          ; $539f: $47
	ld a, [hl-]                                      ; $53a0: $3a
	ld d, b                                          ; $53a1: $50
	ld c, d                                          ; $53a2: $4a
	ld e, h                                          ; $53a3: $5c
	ld c, [hl]                                       ; $53a4: $4e
	ld h, e                                          ; $53a5: $63
	scf                                              ; $53a6: $37
	add hl, bc                                       ; $53a7: $09
	pop af                                           ; $53a8: $f1
	ld e, h                                          ; $53a9: $5c
	ld a, $38                                        ; $53aa: $3e $38
	ldh a, [$7f]                                     ; $53ac: $f0 $7f
	ld h, d                                          ; $53ae: $62
	ld b, [hl]                                       ; $53af: $46
	ldh a, [rSB]                                     ; $53b0: $f0 $01
	ld c, [hl]                                       ; $53b2: $4e
	dec [hl]                                         ; $53b3: $35
	add hl, bc                                       ; $53b4: $09
	ldh a, [$f7]                                     ; $53b5: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $53b7: $f0 $17
	ld h, d                                          ; $53b9: $62
	ldh a, [rAUD3HIGH]                               ; $53ba: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $53bc: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $53be: $f0 $1e
	ldh a, [c]                                       ; $53c0: $f2
	dec c                                            ; $53c1: $0d
	dec sp                                           ; $53c2: $3b
	ccf                                              ; $53c3: $3f
	ld b, [hl]                                       ; $53c4: $46
	ldh a, [rSB]                                     ; $53c5: $f0 $01
	ccf                                              ; $53c7: $3f
	scf                                              ; $53c8: $37
	add hl, bc                                       ; $53c9: $09
	ldh a, [rDMA]                                    ; $53ca: $f0 $46
	ldh a, [$62]                                     ; $53cc: $f0 $62
	jr nc, jr_07a_540a                               ; $53ce: $30 $3a

	ld b, a                                          ; $53d0: $47
	ldh a, [c]                                       ; $53d1: $f2
	db $eb                                           ; $53d2: $eb
	ldh a, [c]                                       ; $53d3: $f2
	db $eb                                           ; $53d4: $eb
	ldh a, [c]                                       ; $53d5: $f2
	db $eb                                           ; $53d6: $eb

jr_07a_53d7:
	ld e, c                                          ; $53d7: $59
	scf                                              ; $53d8: $37
	ld [hl], $09                                     ; $53d9: $36 $09
	ld de, $f130                                     ; $53db: $11 $30 $f1
	ld d, d                                          ; $53de: $52
	di                                               ; $53df: $f3
	scf                                              ; $53e0: $37
	ldh a, [$7f]                                     ; $53e1: $f0 $7f
	ld c, e                                          ; $53e3: $4b
	ld [hl], d                                       ; $53e4: $72
	pop af                                           ; $53e5: $f1
	inc d                                            ; $53e6: $14
	dec sp                                           ; $53e7: $3b
	dec a                                            ; $53e8: $3d
	adc l                                            ; $53e9: $8d
	scf                                              ; $53ea: $37
	add hl, bc                                       ; $53eb: $09
	ldh a, [rDMA]                                    ; $53ec: $f0 $46
	ldh a, [$62]                                     ; $53ee: $f0 $62
	scf                                              ; $53f0: $37
	ldh a, [$e4]                                     ; $53f1: $f0 $e4
	ld e, l                                          ; $53f3: $5d
	ld c, [hl]                                       ; $53f4: $4e
	pop af                                           ; $53f5: $f1
	dec bc                                           ; $53f6: $0b
	ld b, a                                          ; $53f7: $47
	ld c, e                                          ; $53f8: $4b
	jr c, jr_07a_5437                                ; $53f9: $38 $3c

	ld a, [hl-]                                      ; $53fb: $3a
	jr c, jr_07a_5435                                ; $53fc: $38 $37

	scf                                              ; $53fe: $37
	add hl, bc                                       ; $53ff: $09
	ldh a, [rDMA]                                    ; $5400: $f0 $46
	ldh a, [$62]                                     ; $5402: $f0 $62
	jr nc, jr_07a_545a                               ; $5404: $30 $54

	ld h, e                                          ; $5406: $63
	dec sp                                           ; $5407: $3b
	ldh a, [$36]                                     ; $5408: $f0 $36

jr_07a_540a:
	ld d, e                                          ; $540a: $53
	inc [hl]                                         ; $540b: $34
	add hl, bc                                       ; $540c: $09
	pop af                                           ; $540d: $f1
	ld d, d                                          ; $540e: $52
	di                                               ; $540f: $f3
	scf                                              ; $5410: $37
	ldh a, [$7f]                                     ; $5411: $f0 $7f
	ld h, d                                          ; $5413: $62
	ld [hl], d                                       ; $5414: $72
	pop af                                           ; $5415: $f1
	inc d                                            ; $5416: $14
	dec sp                                           ; $5417: $3b
	dec a                                            ; $5418: $3d
	pop af                                           ; $5419: $f1
	rst SubAFromHL                                          ; $541a: $d7
	ldh a, [$0d]                                     ; $541b: $f0 $0d
	ld c, d                                          ; $541d: $4a
	add hl, bc                                       ; $541e: $09
	ldh a, [c]                                       ; $541f: $f2
	jr z, @+$49                                      ; $5420: $28 $47

	ldh a, [rLCDC]                                   ; $5422: $f0 $40
	ld d, a                                          ; $5424: $57
	ld h, h                                          ; $5425: $64
	dec sp                                           ; $5426: $3b
	ccf                                              ; $5427: $3f
	add hl, bc                                       ; $5428: $09
	halt                                             ; $5429: $76
	ldh a, [hDisp0_OBP1]                                     ; $542a: $f0 $87
	ld b, d                                          ; $542c: $42
	pop af                                           ; $542d: $f1
	jp nz, $f042                                     ; $542e: $c2 $42 $f0

	ld a, a                                          ; $5431: $7f
	ld h, d                                          ; $5432: $62
	ld [hl], d                                       ; $5433: $72
	ld a, c                                          ; $5434: $79

jr_07a_5435:
	ccf                                              ; $5435: $3f
	ld d, l                                          ; $5436: $55

jr_07a_5437:
	ld c, l                                          ; $5437: $4d
	ld c, [hl]                                       ; $5438: $4e
	dec [hl]                                         ; $5439: $35
	add hl, bc                                       ; $543a: $09

jr_07a_543b:
	ldh a, [$b5]                                     ; $543b: $f0 $b5
	ld d, l                                          ; $543d: $55
	sub a                                            ; $543e: $97
	ld e, c                                          ; $543f: $59
	dec sp                                           ; $5440: $3b
	scf                                              ; $5441: $37
	add hl, bc                                       ; $5442: $09
	ldh a, [rDMA]                                    ; $5443: $f0 $46
	ldh a, [$62]                                     ; $5445: $f0 $62
	jr nc, jr_07a_543b                               ; $5447: $30 $f2

	or h                                             ; $5449: $b4
	di                                               ; $544a: $f3
	and e                                            ; $544b: $a3
	scf                                              ; $544c: $37
	add hl, bc                                       ; $544d: $09
	ldh a, [rDMA]                                    ; $544e: $f0 $46
	ldh a, [$62]                                     ; $5450: $f0 $62
	jr nc, @-$0e                                     ; $5452: $30 $f0

	xor e                                            ; $5454: $ab
	ld b, d                                          ; $5455: $42
	ldh a, [$c0]                                     ; $5456: $f0 $c0
	pop af                                           ; $5458: $f1
	sbc b                                            ; $5459: $98

jr_07a_545a:
	ld b, a                                          ; $545a: $47
	inc a                                            ; $545b: $3c
	ld e, l                                          ; $545c: $5d
	ccf                                              ; $545d: $3f
	inc [hl]                                         ; $545e: $34
	add hl, bc                                       ; $545f: $09
	ldh a, [$e4]                                     ; $5460: $f0 $e4
	ld e, l                                          ; $5462: $5d
	ld c, [hl]                                       ; $5463: $4e

jr_07a_5464:
	pop af                                           ; $5464: $f1
	dec bc                                           ; $5465: $0b
	ld b, a                                          ; $5466: $47
	ld c, e                                          ; $5467: $4b
	jr c, jr_07a_54a6                                ; $5468: $38 $3c

	ld c, h                                          ; $546a: $4c
	add l                                            ; $546b: $85
	scf                                              ; $546c: $37
	add hl, bc                                       ; $546d: $09
	ldh a, [rDMA]                                    ; $546e: $f0 $46
	ldh a, [$62]                                     ; $5470: $f0 $62
	jr nc, jr_07a_5464                               ; $5472: $30 $f0

	ld b, d                                          ; $5474: $42
	dec sp                                           ; $5475: $3b
	scf                                              ; $5476: $37
	add [hl]                                         ; $5477: $86
	pop af                                           ; $5478: $f1
	ldh [c], a                                       ; $5479: $e2
	ld e, l                                          ; $547a: $5d
	ld a, [hl-]                                      ; $547b: $3a
	jr c, jr_07a_54b3                                ; $547c: $38 $35

	add hl, bc                                       ; $547e: $09
	halt                                             ; $547f: $76
	ldh a, [hDisp0_OBP1]                                     ; $5480: $f0 $87
	ld b, a                                          ; $5482: $47
	push af                                          ; $5483: $f5
	or d                                             ; $5484: $b2
	di                                               ; $5485: $f3
	ld l, b                                          ; $5486: $68
	ld d, l                                          ; $5487: $55
	ld a, [hl-]                                      ; $5488: $3a
	ld e, d                                          ; $5489: $5a

jr_07a_548a:
	ldh a, [c]                                       ; $548a: $f2
	ld l, a                                          ; $548b: $6f
	ldh a, [rAUD1HIGH]                               ; $548c: $f0 $14
	ldh a, [$0a]                                     ; $548e: $f0 $0a
	jr c, jr_07a_54f5                                ; $5490: $38 $63

	scf                                              ; $5492: $37
	add hl, bc                                       ; $5493: $09
	ldh a, [rDMA]                                    ; $5494: $f0 $46
	ldh a, [$62]                                     ; $5496: $f0 $62
	jr nc, jr_07a_548a                               ; $5498: $30 $f0

	ld b, d                                          ; $549a: $42
	dec sp                                           ; $549b: $3b
	inc [hl]                                         ; $549c: $34
	ldh a, [$71]                                     ; $549d: $f0 $71
	ld c, l                                          ; $549f: $4d
	sub [hl]                                         ; $54a0: $96
	dec sp                                           ; $54a1: $3b
	dec a                                            ; $54a2: $3d
	adc l                                            ; $54a3: $8d
	dec sp                                           ; $54a4: $3b
	add hl, bc                                       ; $54a5: $09

jr_07a_54a6:
	halt                                             ; $54a6: $76
	ldh a, [hDisp0_OBP1]                                     ; $54a7: $f0 $87
	ld h, d                                          ; $54a9: $62
	ldh a, [c]                                       ; $54aa: $f2
	ld [de], a                                       ; $54ab: $12
	ld a, c                                          ; $54ac: $79
	ld c, [hl]                                       ; $54ad: $4e
	ld l, [hl]                                       ; $54ae: $6e
	add b                                            ; $54af: $80
	ld d, e                                          ; $54b0: $53
	inc [hl]                                         ; $54b1: $34
	add hl, bc                                       ; $54b2: $09

jr_07a_54b3:
	ld d, h                                          ; $54b3: $54
	ld b, d                                          ; $54b4: $42
	ldh a, [$f6]                                     ; $54b5: $f0 $f6
	ld b, a                                          ; $54b7: $47
	jr c, jr_07a_54f7                                ; $54b8: $38 $3d

	ld c, c                                          ; $54ba: $49
	ld c, e                                          ; $54bb: $4b
	ld a, [hl-]                                      ; $54bc: $3a
	ldh a, [rAUD3HIGH]                               ; $54bd: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $54bf: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $54c1: $f0 $1e
	dec [hl]                                         ; $54c3: $35
	add hl, bc                                       ; $54c4: $09
	ld de, $f030                                     ; $54c5: $11 $30 $f0
	ld b, [hl]                                       ; $54c8: $46
	ldh a, [$62]                                     ; $54c9: $f0 $62
	ldh a, [rAUD3HIGH]                               ; $54cb: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $54cd: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $54cf: $f0 $1e
	dec [hl]                                         ; $54d1: $35
	add hl, bc                                       ; $54d2: $09
	ldh a, [rDMA]                                    ; $54d3: $f0 $46
	ldh a, [$62]                                     ; $54d5: $f0 $62
	jr nc, @+$3a                                     ; $54d7: $30 $38

	ld l, [hl]                                       ; $54d9: $6e
	inc [hl]                                         ; $54da: $34
	add hl, bc                                       ; $54db: $09
	ld b, b                                          ; $54dc: $40
	ld b, d                                          ; $54dd: $42
	ldh a, [$fb]                                     ; $54de: $f0 $fb
	ld c, e                                          ; $54e0: $4b
	ld c, a                                          ; $54e1: $4f
	add hl, sp                                       ; $54e2: $39
	halt                                             ; $54e3: $76
	ld b, a                                          ; $54e4: $47
	ld c, e                                          ; $54e5: $4b
	ldh a, [rSCY]                                    ; $54e6: $f0 $42
	ld e, b                                          ; $54e8: $58
	ld h, e                                          ; $54e9: $63
	ld a, $55                                        ; $54ea: $3e $55
	ld a, [hl-]                                      ; $54ec: $3a
	jr c, jr_07a_5524                                ; $54ed: $38 $35

	add hl, bc                                       ; $54ef: $09
	ld d, h                                          ; $54f0: $54

Call_07a_54f1:
	ld c, l                                          ; $54f1: $4d
	inc a                                            ; $54f2: $3c
	ld d, b                                          ; $54f3: $50
	ld c, e                                          ; $54f4: $4b

jr_07a_54f5:
	inc [hl]                                         ; $54f5: $34
	ld h, h                                          ; $54f6: $64

jr_07a_54f7:
	sbc [hl]                                         ; $54f7: $9e
	ld d, e                                          ; $54f8: $53
	ldh a, [rDMA]                                    ; $54f9: $f0 $46
	ldh a, [$62]                                     ; $54fb: $f0 $62
	ld b, h                                          ; $54fd: $44
	dec [hl]                                         ; $54fe: $35
	add hl, bc                                       ; $54ff: $09
	pop af                                           ; $5500: $f1
	rra                                              ; $5501: $1f
	ldh a, [rAUD3HIGH]                               ; $5502: $f0 $1e
	ldh a, [rDMA]                                    ; $5504: $f0 $46
	ldh a, [$62]                                     ; $5506: $f0 $62
	jr nc, @+$48                                     ; $5508: $30 $46

	ld a, e                                          ; $550a: $7b
	ld b, l                                          ; $550b: $45
	inc [hl]                                         ; $550c: $34
	add hl, bc                                       ; $550d: $09
	ldh a, [$f7]                                     ; $550e: $f0 $f7
	ldh a, [rAUD2ENV]                                ; $5510: $f0 $17
	ld c, c                                          ; $5512: $49

jr_07a_5513:
	pop af                                           ; $5513: $f1
	ld h, b                                          ; $5514: $60
	ld a, [hl]                                       ; $5515: $7e
	ld d, l                                          ; $5516: $55
	ld a, [hl-]                                      ; $5517: $3a
	dec sp                                           ; $5518: $3b
	scf                                              ; $5519: $37
	add hl, bc                                       ; $551a: $09
	ldh a, [rDMA]                                    ; $551b: $f0 $46
	ldh a, [$62]                                     ; $551d: $f0 $62
	jr nc, jr_07a_5513                               ; $551f: $30 $f2

	rra                                              ; $5521: $1f
	ldh a, [hDisp0_OBP1]                                     ; $5522: $f0 $87

jr_07a_5524:
	ld b, d                                          ; $5524: $42
	ldh a, [$7f]                                     ; $5525: $f0 $7f
	ld c, e                                          ; $5527: $4b
	ld b, b                                          ; $5528: $40
	ld b, c                                          ; $5529: $41
	ld a, [hl-]                                      ; $552a: $3a
	ld c, a                                          ; $552b: $4f
	ld b, c                                          ; $552c: $41
	inc a                                            ; $552d: $3c
	scf                                              ; $552e: $37
	add hl, bc                                       ; $552f: $09
	ldh a, [rDMA]                                    ; $5530: $f0 $46
	ldh a, [$62]                                     ; $5532: $f0 $62
	jr nc, @-$0e                                     ; $5534: $30 $f0

	and $f2                                          ; $5536: $e6 $f2
	add h                                            ; $5538: $84
	pop af                                           ; $5539: $f1
	ld a, [hl-]                                      ; $553a: $3a
	jr c, jr_07a_55a0                                ; $553b: $38 $63

	scf                                              ; $553d: $37
	add hl, bc                                       ; $553e: $09
	ldh a, [rDMA]                                    ; $553f: $f0 $46
	ldh a, [$62]                                     ; $5541: $f0 $62

jr_07a_5543:
	jr nc, @+$3c                                     ; $5543: $30 $3a

	inc a                                            ; $5545: $3c
	ld a, [hl-]                                      ; $5546: $3a
	inc a                                            ; $5547: $3c
	ld l, [hl]                                       ; $5548: $6e
	ld c, [hl]                                       ; $5549: $4e
	ld a, [hl-]                                      ; $554a: $3a
	scf                                              ; $554b: $37
	add hl, bc                                       ; $554c: $09
	ldh a, [rDMA]                                    ; $554d: $f0 $46
	ldh a, [$62]                                     ; $554f: $f0 $62
	jr nc, jr_07a_5543                               ; $5551: $30 $f0

	ld d, h                                          ; $5553: $54

jr_07a_5554:
	ld a, $4b                                        ; $5554: $3e $4b
	ld c, d                                          ; $5556: $4a
	ld e, h                                          ; $5557: $5c
	ld b, b                                          ; $5558: $40
	add hl, sp                                       ; $5559: $39
	ld b, h                                          ; $555a: $44
	ld a, [hl-]                                      ; $555b: $3a
	dec [hl]                                         ; $555c: $35
	add hl, bc                                       ; $555d: $09
	ldh a, [rDMA]                                    ; $555e: $f0 $46
	ldh a, [$62]                                     ; $5560: $f0 $62
	jr nc, jr_07a_5554                               ; $5562: $30 $f0

	xor e                                            ; $5564: $ab
	ld b, d                                          ; $5565: $42
	ldh a, [$c0]                                     ; $5566: $f0 $c0
	pop af                                           ; $5568: $f1
	sbc b                                            ; $5569: $98
	ld b, a                                          ; $556a: $47
	inc a                                            ; $556b: $3c
	ld e, l                                          ; $556c: $5d
	ccf                                              ; $556d: $3f
	inc [hl]                                         ; $556e: $34
	add hl, bc                                       ; $556f: $09
	ldh a, [$e4]                                     ; $5570: $f0 $e4
	ld e, l                                          ; $5572: $5d
	ld c, [hl]                                       ; $5573: $4e
	pop af                                           ; $5574: $f1
	dec bc                                           ; $5575: $0b
	ld b, a                                          ; $5576: $47
	ld c, e                                          ; $5577: $4b
	jr c, @+$3e                                      ; $5578: $38 $3c

	ld c, h                                          ; $557a: $4c
	add l                                            ; $557b: $85
	scf                                              ; $557c: $37
	add hl, bc                                       ; $557d: $09
	ldh a, [rDMA]                                    ; $557e: $f0 $46
	ldh a, [$62]                                     ; $5580: $f0 $62
	jr nc, jr_07a_55fa                               ; $5582: $30 $76

	ldh a, [hDisp0_OBP1]                                     ; $5584: $f0 $87
	ld d, e                                          ; $5586: $53
	ldh a, [rAUD3HIGH]                               ; $5587: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $5589: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $558b: $f0 $1e
	add hl, bc                                       ; $558d: $09
	ldh a, [rDMA]                                    ; $558e: $f0 $46
	ldh a, [$62]                                     ; $5590: $f0 $62
	ld b, d                                          ; $5592: $42
	ld d, h                                          ; $5593: $54
	ld b, d                                          ; $5594: $42
	halt                                             ; $5595: $76
	ldh a, [hDisp0_OBP1]                                     ; $5596: $f0 $87
	ld d, e                                          ; $5598: $53
	ldh a, [rAUD3HIGH]                               ; $5599: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $559b: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $559d: $f0 $1e
	add hl, bc                                       ; $559f: $09

jr_07a_55a0:
	ld d, h                                          ; $55a0: $54
	ld b, c                                          ; $55a1: $41
	ld a, [hl-]                                      ; $55a2: $3a
	ldh a, [$28]                                     ; $55a3: $f0 $28
	ld c, d                                          ; $55a5: $4a
	ldh a, [$e4]                                     ; $55a6: $f0 $e4
	ld e, l                                          ; $55a8: $5d
	ld c, [hl]                                       ; $55a9: $4e
	pop af                                           ; $55aa: $f1
	dec bc                                           ; $55ab: $0b
	ld b, a                                          ; $55ac: $47
	ld c, e                                          ; $55ad: $4b
	jr c, jr_07a_55ec                                ; $55ae: $38 $3c

	ld b, c                                          ; $55b0: $41
	scf                                              ; $55b1: $37
	add hl, bc                                       ; $55b2: $09
	ldh a, [rDMA]                                    ; $55b3: $f0 $46
	ldh a, [$62]                                     ; $55b5: $f0 $62
	jr nc, jr_07a_55f2                               ; $55b7: $30 $39

	pop af                                           ; $55b9: $f1
	ld a, b                                          ; $55ba: $78
	pop af                                           ; $55bb: $f1
	ld a, b                                          ; $55bc: $78
	pop af                                           ; $55bd: $f1
	ld a, b                                          ; $55be: $78
	pop af                                           ; $55bf: $f1
	ld a, b                                          ; $55c0: $78
	ldh a, [rAUD3HIGH]                               ; $55c1: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $55c3: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $55c5: $f0 $1e
	add hl, bc                                       ; $55c7: $09
	ldh a, [$fc]                                     ; $55c8: $f0 $fc
	ldh a, [c]                                       ; $55ca: $f2
	nop                                              ; $55cb: $00
	ld b, a                                          ; $55cc: $47
	ldh a, [$6f]                                     ; $55cd: $f0 $6f
	dec sp                                           ; $55cf: $3b
	dec a                                            ; $55d0: $3d
	scf                                              ; $55d1: $37
	scf                                              ; $55d2: $37
	add hl, bc                                       ; $55d3: $09
	ldh a, [c]                                       ; $55d4: $f2
	inc hl                                           ; $55d5: $23
	ldh a, [$ad]                                     ; $55d6: $f0 $ad
	di                                               ; $55d8: $f3
	ld c, $86                                        ; $55d9: $0e $86
	pop af                                           ; $55db: $f1
	ld c, a                                          ; $55dc: $4f
	ldh a, [$e5]                                     ; $55dd: $f0 $e5
	ldh a, [$58]                                     ; $55df: $f0 $58
	ldh a, [c]                                       ; $55e1: $f2
	ld [hl], c                                       ; $55e2: $71
	ldh a, [c]                                       ; $55e3: $f2
	ld [$71f2], a                                    ; $55e4: $ea $f2 $71
	ldh a, [c]                                       ; $55e7: $f2
	ld c, d                                          ; $55e8: $4a
	ldh a, [c]                                       ; $55e9: $f2
	db $ed                                           ; $55ea: $ed
	ldh a, [c]                                       ; $55eb: $f2

jr_07a_55ec:
	jp $6409                                         ; $55ec: $c3 $09 $64


	pop af                                           ; $55ef: $f1
	add [hl]                                         ; $55f0: $86
	add [hl]                                         ; $55f1: $86

jr_07a_55f2:
	add [hl]                                         ; $55f2: $86
	pop af                                           ; $55f3: $f1
	ld c, a                                          ; $55f4: $4f
	ldh a, [c]                                       ; $55f5: $f2
	ld [$d1f1], a                                    ; $55f6: $ea $f1 $d1
	pop af                                           ; $55f9: $f1

jr_07a_55fa:
	pop de                                           ; $55fa: $d1
	ldh a, [$e5]                                     ; $55fb: $f0 $e5
	pop af                                           ; $55fd: $f1
	pop de                                           ; $55fe: $d1
	pop af                                           ; $55ff: $f1
	ld c, c                                          ; $5600: $49
	ld e, c                                          ; $5601: $59
	ldh a, [$03]                                     ; $5602: $f0 $03
	ldh a, [$32]                                     ; $5604: $f0 $32
	add hl, bc                                       ; $5606: $09
	ld h, h                                          ; $5607: $64
	dec a                                            ; $5608: $3d
	inc a                                            ; $5609: $3c
	ld d, b                                          ; $560a: $50
	pop af                                           ; $560b: $f1
	ld c, a                                          ; $560c: $4f
	add hl, bc                                       ; $560d: $09
	ldh a, [c]                                       ; $560e: $f2
	ld e, h                                          ; $560f: $5c
	pop af                                           ; $5610: $f1
	ld l, e                                          ; $5611: $6b
	di                                               ; $5612: $f3
	ld l, a                                          ; $5613: $6f
	ldh a, [c]                                       ; $5614: $f2
	ld [hl], h                                       ; $5615: $74
	pop af                                           ; $5616: $f1
	ld c, a                                          ; $5617: $4f
	add hl, bc                                       ; $5618: $09
	ld h, h                                          ; $5619: $64
	dec a                                            ; $561a: $3d
	inc a                                            ; $561b: $3c
	ld d, b                                          ; $561c: $50
	pop af                                           ; $561d: $f1
	ld c, a                                          ; $561e: $4f
	ldh a, [$32]                                     ; $561f: $f0 $32
	ldh a, [rSC]                                     ; $5621: $f0 $02
	pop af                                           ; $5623: $f1
	ld c, c                                          ; $5624: $49
	ld h, l                                          ; $5625: $65
	adc c                                            ; $5626: $89
	ldh a, [rSC]                                     ; $5627: $f0 $02
	ld h, l                                          ; $5629: $65
	add hl, bc                                       ; $562a: $09
	ld h, h                                          ; $562b: $64
	dec a                                            ; $562c: $3d
	inc a                                            ; $562d: $3c
	ld d, b                                          ; $562e: $50
	pop af                                           ; $562f: $f1
	ld c, a                                          ; $5630: $4f
	ldh a, [$d0]                                     ; $5631: $f0 $d0
	ld [hl], a                                       ; $5633: $77
	ldh a, [c]                                       ; $5634: $f2
	or b                                             ; $5635: $b0
	ld a, [hl-]                                      ; $5636: $3a
	adc c                                            ; $5637: $89
	di                                               ; $5638: $f3
	db $dd                                           ; $5639: $dd
	add hl, bc                                       ; $563a: $09
	ld h, h                                          ; $563b: $64
	dec a                                            ; $563c: $3d
	inc a                                            ; $563d: $3c
	ld d, b                                          ; $563e: $50
	pop af                                           ; $563f: $f1
	ld c, a                                          ; $5640: $4f
	pop af                                           ; $5641: $f1
	ld b, b                                          ; $5642: $40
	sub e                                            ; $5643: $93
	add e                                            ; $5644: $83
	ldh a, [$35]                                     ; $5645: $f0 $35
	ldh a, [rP1]                                     ; $5647: $f0 $00
	ldh a, [rAUD4LEN]                                ; $5649: $f0 $20
	ld e, c                                          ; $564b: $59
	add hl, bc                                       ; $564c: $09
	ld h, h                                          ; $564d: $64
	dec a                                            ; $564e: $3d
	inc a                                            ; $564f: $3c
	ld d, b                                          ; $5650: $50
	pop af                                           ; $5651: $f1
	ld c, a                                          ; $5652: $4f
	ldh a, [rDMA]                                    ; $5653: $f0 $46
	ldh a, [$62]                                     ; $5655: $f0 $62
	ld b, d                                          ; $5657: $42
	di                                               ; $5658: $f3
	adc c                                            ; $5659: $89
	ld a, $09                                        ; $565a: $3e $09
	ld bc, $d8c0                                     ; $565c: $01 $c0 $d8
	rlca                                             ; $565f: $07
	ld a, [de]                                       ; $5660: $1a
	dec l                                            ; $5661: $2d
	ld b, b                                          ; $5662: $40
	ldh a, [c]                                       ; $5663: $f2
	ld e, h                                          ; $5664: $5c
	pop af                                           ; $5665: $f1
	ld l, e                                          ; $5666: $6b
	di                                               ; $5667: $f3
	ld l, a                                          ; $5668: $6f
	ldh a, [c]                                       ; $5669: $f2
	ld [hl], h                                       ; $566a: $74
	pop af                                           ; $566b: $f1
	ld c, a                                          ; $566c: $4f
	ldh a, [$f6]                                     ; $566d: $f0 $f6
	pop af                                           ; $566f: $f1
	inc [hl]                                         ; $5670: $34
	ldh a, [rDMA]                                    ; $5671: $f0 $46
	ldh a, [$62]                                     ; $5673: $f0 $62
	add hl, bc                                       ; $5675: $09
	ldh a, [c]                                       ; $5676: $f2
	ld e, h                                          ; $5677: $5c
	pop af                                           ; $5678: $f1
	ld l, e                                          ; $5679: $6b
	di                                               ; $567a: $f3
	ld l, a                                          ; $567b: $6f
	ldh a, [c]                                       ; $567c: $f2
	ld [hl], h                                       ; $567d: $74
	pop af                                           ; $567e: $f1
	ld c, a                                          ; $567f: $4f
	ldh a, [rBGP]                                    ; $5680: $f0 $47
	ldh a, [$c9]                                     ; $5682: $f0 $c9
	ldh a, [rDMA]                                    ; $5684: $f0 $46
	ldh a, [$62]                                     ; $5686: $f0 $62
	add hl, bc                                       ; $5688: $09
	ldh a, [c]                                       ; $5689: $f2
	ld e, h                                          ; $568a: $5c
	pop af                                           ; $568b: $f1
	ld l, e                                          ; $568c: $6b
	di                                               ; $568d: $f3
	ld l, a                                          ; $568e: $6f
	ldh a, [c]                                       ; $568f: $f2
	ld [hl], h                                       ; $5690: $74
	pop af                                           ; $5691: $f1
	ld c, a                                          ; $5692: $4f
	pop af                                           ; $5693: $f1
	cp a                                             ; $5694: $bf
	pop af                                           ; $5695: $f1
	db $fd                                           ; $5696: $fd
	ldh a, [rDMA]                                    ; $5697: $f0 $46
	ldh a, [$62]                                     ; $5699: $f0 $62
	add hl, bc                                       ; $569b: $09
	ldh a, [c]                                       ; $569c: $f2
	ld e, h                                          ; $569d: $5c
	pop af                                           ; $569e: $f1
	ld l, e                                          ; $569f: $6b
	di                                               ; $56a0: $f3
	ld l, a                                          ; $56a1: $6f
	ldh a, [c]                                       ; $56a2: $f2
	ld [hl], h                                       ; $56a3: $74
	pop af                                           ; $56a4: $f1
	ld c, a                                          ; $56a5: $4f
	ldh a, [$7d]                                     ; $56a6: $f0 $7d
	pop af                                           ; $56a8: $f1
	cp h                                             ; $56a9: $bc
	ld e, l                                          ; $56aa: $5d
	ldh a, [rDMA]                                    ; $56ab: $f0 $46
	ldh a, [$62]                                     ; $56ad: $f0 $62
	add hl, bc                                       ; $56af: $09
	ld [hl], $36                                     ; $56b0: $36 $36
	add hl, bc                                       ; $56b2: $09
	add [hl]                                         ; $56b3: $86
	add [hl]                                         ; $56b4: $86
	add [hl]                                         ; $56b5: $86
	add [hl]                                         ; $56b6: $86
	ldh a, [$6c]                                     ; $56b7: $f0 $6c
	ldh a, [$61]                                     ; $56b9: $f0 $61
	ld b, d                                          ; $56bb: $42
	ldh a, [$a9]                                     ; $56bc: $f0 $a9
	ldh a, [$d1]                                     ; $56be: $f0 $d1
	pop af                                           ; $56c0: $f1
	xor e                                            ; $56c1: $ab
	add hl, bc                                       ; $56c2: $09
	ld de, $f047                                     ; $56c3: $11 $47 $f0
	ld a, a                                          ; $56c6: $7f

jr_07a_56c7:
	ld d, e                                          ; $56c7: $53
	push af                                          ; $56c8: $f5
	or c                                             ; $56c9: $b1
	jr c, jr_07a_570b                                ; $56ca: $38 $3f

	ld e, h                                          ; $56cc: $5c
	dec a                                            ; $56cd: $3d
	scf                                              ; $56ce: $37
	add hl, bc                                       ; $56cf: $09
	ldh a, [rIF]                                     ; $56d0: $f0 $0f
	ld [hl], e                                       ; $56d2: $73
	ld l, c                                          ; $56d3: $69
	jr nc, jr_07a_56c7                               ; $56d4: $30 $f1

jr_07a_56d6:
	db $e3                                           ; $56d6: $e3
	ldh a, [$9d]                                     ; $56d7: $f0 $9d
	ldh a, [$60]                                     ; $56d9: $f0 $60
	pop af                                           ; $56db: $f1
	ret nc                                           ; $56dc: $d0

	ldh a, [$09]                                     ; $56dd: $f0 $09
	add hl, bc                                       ; $56df: $09
	ldh a, [rIF]                                     ; $56e0: $f0 $0f
	ld [hl], e                                       ; $56e2: $73
	ld l, c                                          ; $56e3: $69
	jr nc, jr_07a_56d6                               ; $56e4: $30 $f0

	cp d                                             ; $56e6: $ba

jr_07a_56e7:
	pop af                                           ; $56e7: $f1
	ld [bc], a                                       ; $56e8: $02
	add e                                            ; $56e9: $83
	ldh a, [$03]                                     ; $56ea: $f0 $03
	pop af                                           ; $56ec: $f1
	inc hl                                           ; $56ed: $23
	pop af                                           ; $56ee: $f1
	dec [hl]                                         ; $56ef: $35
	add hl, bc                                       ; $56f0: $09
	ldh a, [rIF]                                     ; $56f1: $f0 $0f
	ld [hl], e                                       ; $56f3: $73
	ld l, c                                          ; $56f4: $69
	jr nc, jr_07a_56e7                               ; $56f5: $30 $f0

	ld de, $f034                                     ; $56f7: $11 $34 $f0
	ld de, $a0f0                                     ; $56fa: $11 $f0 $a0
	ld a, l                                          ; $56fd: $7d
	ldh a, [rAUD3HIGH]                               ; $56fe: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $5700: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $5702: $f0 $1e
	add hl, bc                                       ; $5704: $09
	ldh a, [rIF]                                     ; $5705: $f0 $0f
	ld [hl], e                                       ; $5707: $73
	ld l, c                                          ; $5708: $69
	jr nc, @+$60                                     ; $5709: $30 $5e

jr_07a_570b:
	ld e, [hl]                                       ; $570b: $5e
	pop af                                           ; $570c: $f1
	cp $f2                                           ; $570d: $fe $f2
	ccf                                              ; $570f: $3f
	ld b, a                                          ; $5710: $47
	ld a, c                                          ; $5711: $79
	jr c, @+$39                                      ; $5712: $38 $37

	add hl, bc                                       ; $5714: $09
	ldh a, [rIF]                                     ; $5715: $f0 $0f
	ld [hl], e                                       ; $5717: $73
	ld l, c                                          ; $5718: $69
	jr nc, jr_07a_570b                               ; $5719: $30 $f0

	ld [hl], l                                       ; $571b: $75
	adc h                                            ; $571c: $8c
	ld b, d                                          ; $571d: $42
	ld b, c                                          ; $571e: $41
	ld a, [hl-]                                      ; $571f: $3a
	ld b, l                                          ; $5720: $45
	scf                                              ; $5721: $37
	add hl, bc                                       ; $5722: $09
	ldh a, [rIF]                                     ; $5723: $f0 $0f
	ld [hl], e                                       ; $5725: $73
	ld l, c                                          ; $5726: $69
	jr nc, jr_07a_5763                               ; $5727: $30 $3a

	ld [hl], c                                       ; $5729: $71
	ld c, c                                          ; $572a: $49
	ld b, c                                          ; $572b: $41
	ld b, d                                          ; $572c: $42
	inc a                                            ; $572d: $3c
	scf                                              ; $572e: $37
	add hl, bc                                       ; $572f: $09
	ldh a, [rIF]                                     ; $5730: $f0 $0f
	ld [hl], e                                       ; $5732: $73
	ld l, c                                          ; $5733: $69
	jr nc, jr_07a_57a4                               ; $5734: $30 $6e

	ld [hl], c                                       ; $5736: $71
	ld b, c                                          ; $5737: $41
	inc a                                            ; $5738: $3c
	jr c, jr_07a_5772                                ; $5739: $38 $37

	add hl, bc                                       ; $573b: $09
	ldh a, [$d0]                                     ; $573c: $f0 $d0
	ld a, [hl]                                       ; $573e: $7e
	pop af                                           ; $573f: $f1
	cp b                                             ; $5740: $b8
	jr nc, jr_07a_577c                               ; $5741: $30 $39

	inc [hl]                                         ; $5743: $34
	pop af                                           ; $5744: $f1
	or e                                             ; $5745: $b3
	ldh a, [c]                                       ; $5746: $f2
	rra                                              ; $5747: $1f
	ldh a, [rAUD3HIGH]                               ; $5748: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $574a: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $574c: $f0 $1e
	add hl, bc                                       ; $574e: $09
	ldh a, [$d0]                                     ; $574f: $f0 $d0
	ld a, [hl]                                       ; $5751: $7e
	ldh a, [c]                                       ; $5752: $f2
	inc h                                            ; $5753: $24
	jr nc, jr_07a_57c1                               ; $5754: $30 $6b

jr_07a_5756:
	inc a                                            ; $5756: $3c
	pop af                                           ; $5757: $f1
	ld [hl-], a                                      ; $5758: $32
	dec sp                                           ; $5759: $3b
	ccf                                              ; $575a: $3f
	ld d, d                                          ; $575b: $52
	ld d, c                                          ; $575c: $51
	adc l                                            ; $575d: $8d
	add hl, bc                                       ; $575e: $09
	ldh a, [$d0]                                     ; $575f: $f0 $d0
	ld a, [hl]                                       ; $5761: $7e
	pop af                                           ; $5762: $f1

jr_07a_5763:
	ld e, d                                          ; $5763: $5a
	jr nc, jr_07a_5756                               ; $5764: $30 $f0

	ld c, l                                          ; $5766: $4d
	inc [hl]                                         ; $5767: $34
	ldh a, [rKEY1]                                   ; $5768: $f0 $4d
	ldh a, [rKEY1]                                   ; $576a: $f0 $4d
	dec sp                                           ; $576c: $3b
	ccf                                              ; $576d: $3f
	ld b, c                                          ; $576e: $41
	ld e, e                                          ; $576f: $5b
	ld d, [hl]                                       ; $5770: $56
	ld c, h                                          ; $5771: $4c

jr_07a_5772:
	add l                                            ; $5772: $85
	scf                                              ; $5773: $37
	add hl, bc                                       ; $5774: $09
	ldh a, [rDMA]                                    ; $5775: $f0 $46
	ldh a, [$62]                                     ; $5777: $f0 $62
	jr nc, jr_07a_57cf                               ; $5779: $30 $54

	ld c, l                                          ; $577b: $4d

jr_07a_577c:
	ld c, e                                          ; $577c: $4b
	ldh a, [$ab]                                     ; $577d: $f0 $ab
	ld c, c                                          ; $577f: $49
	ldh a, [$ab]                                     ; $5780: $f0 $ab
	ld b, d                                          ; $5782: $42
	ldh a, [$fc]                                     ; $5783: $f0 $fc
	jr c, @+$39                                      ; $5785: $38 $37

	add hl, bc                                       ; $5787: $09
	ldh a, [rAUD2ENV]                                ; $5788: $f0 $17
	ld c, e                                          ; $578a: $4b
	pop af                                           ; $578b: $f1

jr_07a_578c:
	push af                                          ; $578c: $f5
	ld h, d                                          ; $578d: $62
	di                                               ; $578e: $f3
	ret c                                            ; $578f: $d8

	ldh a, [$be]                                     ; $5790: $f0 $be
	ld a, [hl-]                                      ; $5792: $3a
	scf                                              ; $5793: $37
	add hl, bc                                       ; $5794: $09
	ldh a, [hDisp1_OBP0]                                     ; $5795: $f0 $93
	ldh a, [$b4]                                     ; $5797: $f0 $b4
	jr nc, jr_07a_578c                               ; $5799: $30 $f1

	jp hl                                            ; $579b: $e9


	ld e, l                                          ; $579c: $5d
	ld h, d                                          ; $579d: $62
	pop af                                           ; $579e: $f1
	ld bc, $4a41                                     ; $579f: $01 $41 $4a
	ld d, l                                          ; $57a2: $55
	ld c, [hl]                                       ; $57a3: $4e

jr_07a_57a4:
	ld c, h                                          ; $57a4: $4c
	scf                                              ; $57a5: $37
	add hl, bc                                       ; $57a6: $09
	ld [hl], $36                                     ; $57a7: $36 $36
	ld b, d                                          ; $57a9: $42
	ldh a, [c]                                       ; $57aa: $f2
	sub c                                            ; $57ab: $91
	ldh a, [c]                                       ; $57ac: $f2
	push bc                                          ; $57ad: $c5
	add hl, bc                                       ; $57ae: $09
	ld [hl], $36                                     ; $57af: $36 $36

jr_07a_57b1:
	jr nc, jr_07a_57eb                               ; $57b1: $30 $38

	jr c, jr_07a_5818                                ; $57b3: $38 $63

	ld c, h                                          ; $57b5: $4c
	ld [hl], $38                                     ; $57b6: $36 $38
	ld d, l                                          ; $57b8: $55
	ld h, e                                          ; $57b9: $63
	ld b, l                                          ; $57ba: $45
	scf                                              ; $57bb: $37
	add hl, bc                                       ; $57bc: $09
	ld [hl], $36                                     ; $57bd: $36 $36
	jr nc, jr_07a_57b1                               ; $57bf: $30 $f0

jr_07a_57c1:
	ld e, h                                          ; $57c1: $5c
	ld b, d                                          ; $57c2: $42
	db $f4                                           ; $57c3: $f4
	and h                                            ; $57c4: $a4
	ld e, [hl]                                       ; $57c5: $5e
	dec a                                            ; $57c6: $3d
	dec a                                            ; $57c7: $3d
	ld [hl], c                                       ; $57c8: $71
	ld a, $f0                                        ; $57c9: $3e $f0
	inc de                                           ; $57cb: $13
	ld a, $37                                        ; $57cc: $3e $37
	add hl, bc                                       ; $57ce: $09

jr_07a_57cf:
	ldh a, [hDisp1_OBP0]                                     ; $57cf: $f0 $93
	ldh a, [$b4]                                     ; $57d1: $f0 $b4
	jr nc, jr_07a_581b                               ; $57d3: $30 $46

	ld c, l                                          ; $57d5: $4d
	ld [hl], $4f                                     ; $57d6: $36 $4f
	add hl, sp                                       ; $57d8: $39
	ldh a, [$ce]                                     ; $57d9: $f0 $ce
	ld h, e                                          ; $57db: $63
	dec sp                                           ; $57dc: $3b
	dec a                                            ; $57dd: $3d
	ld b, d                                          ; $57de: $42
	ld [hl], $09                                     ; $57df: $36 $09
	ldh a, [hDisp1_OBP0]                                     ; $57e1: $f0 $93
	ldh a, [$b4]                                     ; $57e3: $f0 $b4
	jr nc, @+$71                                     ; $57e5: $30 $6f

	ld b, a                                          ; $57e7: $47
	ld d, d                                          ; $57e8: $52
	inc a                                            ; $57e9: $3c
	ld a, c                                          ; $57ea: $79

jr_07a_57eb:
	ccf                                              ; $57eb: $3f
	scf                                              ; $57ec: $37
	add hl, bc                                       ; $57ed: $09
	ld e, h                                          ; $57ee: $5c
	ld d, [hl]                                       ; $57ef: $56
	dec sp                                           ; $57f0: $3b
	scf                                              ; $57f1: $37
	add hl, bc                                       ; $57f2: $09
	ld e, h                                          ; $57f3: $5c
	ldh a, [c]                                       ; $57f4: $f2
	sbc [hl]                                         ; $57f5: $9e
	add hl, sp                                       ; $57f6: $39
	ldh a, [c]                                       ; $57f7: $f2
	ld l, h                                          ; $57f8: $6c
	ldh a, [c]                                       ; $57f9: $f2
	ld l, h                                          ; $57fa: $6c
	ldh a, [rAUD3HIGH]                               ; $57fb: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $57fd: $f0 $1e
	ldh a, [rAUD3HIGH]                               ; $57ff: $f0 $1e
	add hl, bc                                       ; $5801: $09
	ld de, $8b09                                     ; $5802: $11 $09 $8b
	ldh a, [$72]                                     ; $5805: $f0 $72
	ld b, d                                          ; $5807: $42
	ldh a, [$65]                                     ; $5808: $f0 $65
	ldh a, [$7f]                                     ; $580a: $f0 $7f
	ld d, e                                          ; $580c: $53
	ldh a, [$d3]                                     ; $580d: $f0 $d3
	ldh a, [c]                                       ; $580f: $f2
	jp hl                                            ; $5810: $e9


	ld a, $3d                                        ; $5811: $3e $3d
	add hl, bc                                       ; $5813: $09
	ld de, $f042                                     ; $5814: $11 $42 $f0
	ld h, l                                          ; $5817: $65

jr_07a_5818:
	ldh a, [$7f]                                     ; $5818: $f0 $7f
	ld d, e                                          ; $581a: $53

jr_07a_581b:
	ldh a, [$d3]                                     ; $581b: $f0 $d3
	ldh a, [c]                                       ; $581d: $f2
	jp hl                                            ; $581e: $e9


	ld a, $3d                                        ; $581f: $3e $3d
	add hl, bc                                       ; $5821: $09
	inc bc                                           ; $5822: $03
	add h                                            ; $5823: $84
	ld [hl], c                                       ; $5824: $71
	ret c                                            ; $5825: $d8

	ld b, d                                          ; $5826: $42
	ldh a, [$f1]                                     ; $5827: $f0 $f1
	ldh a, [$9d]                                     ; $5829: $f0 $9d
	ld e, c                                          ; $582b: $59
	ldh a, [$7e]                                     ; $582c: $f0 $7e
	ld h, d                                          ; $582e: $62
	pop af                                           ; $582f: $f1
	ld c, d                                          ; $5830: $4a
	ld e, l                                          ; $5831: $5d
	dec a                                            ; $5832: $3d
	add hl, bc                                       ; $5833: $09
	ldh a, [$b9]                                     ; $5834: $f0 $b9
	ld a, h                                          ; $5836: $7c
	jr nc, @+$3a                                     ; $5837: $30 $38

	ld d, l                                          ; $5839: $55
	ld h, e                                          ; $583a: $63
	ld b, l                                          ; $583b: $45
	ld [hl], $09                                     ; $583c: $36 $09
	pop af                                           ; $583e: $f1
	ld a, c                                          ; $583f: $79
	pop af                                           ; $5840: $f1
	ld h, d                                          ; $5841: $62
	ld c, e                                          ; $5842: $4b
	jr c, @+$3a                                      ; $5843: $38 $38

	ld [hl], $09                                     ; $5845: $36 $09
	ldh a, [$3d]                                     ; $5847: $f0 $3d
	ld e, c                                          ; $5849: $59
	ldh a, [$27]                                     ; $584a: $f0 $27
	pop af                                           ; $584c: $f1
	or b                                             ; $584d: $b0
	db $f4                                           ; $584e: $f4
	scf                                              ; $584f: $37
	ldh a, [$75]                                     ; $5850: $f0 $75
	ldh a, [c]                                       ; $5852: $f2
	db $fd                                           ; $5853: $fd
	add hl, bc                                       ; $5854: $09
	ldh a, [$c3]                                     ; $5855: $f0 $c3
	ld e, c                                          ; $5857: $59
	ld l, c                                          ; $5858: $69
	ldh a, [rAUD4LEN]                                ; $5859: $f0 $20
	ldh a, [rSC]                                     ; $585b: $f0 $02
	ld h, l                                          ; $585d: $65
	ldh a, [rAUD4POLY]                               ; $585e: $f0 $22
	ld e, c                                          ; $5860: $59
	ldh a, [rP1]                                     ; $5861: $f0 $00
	ld h, l                                          ; $5863: $65
	sub e                                            ; $5864: $93
	add hl, bc                                       ; $5865: $09
	ldh a, [rAUD3LEVEL]                              ; $5866: $f0 $1c
	ldh a, [$f4]                                     ; $5868: $f0 $f4
	ld [hl], c                                       ; $586a: $71
	ld b, l                                          ; $586b: $45
	scf                                              ; $586c: $37
	add hl, bc                                       ; $586d: $09
	pop af                                           ; $586e: $f1
	jp nz, $1ef0                                     ; $586f: $c2 $f0 $1e

	ldh a, [$f6]                                     ; $5872: $f0 $f6
	pop af                                           ; $5874: $f1
	inc [hl]                                         ; $5875: $34
	ldh a, [c]                                       ; $5876: $f2
	pop bc                                           ; $5877: $c1
	pop af                                           ; $5878: $f1
	ld a, d                                          ; $5879: $7a
	ldh a, [$1f]                                     ; $587a: $f0 $1f
	ldh a, [$6e]                                     ; $587c: $f0 $6e
	scf                                              ; $587e: $37
	add hl, bc                                       ; $587f: $09
	ldh a, [c]                                       ; $5880: $f2
	ld l, a                                          ; $5881: $6f
	db $f4                                           ; $5882: $f4
	ret                                              ; $5883: $c9


	ldh a, [$2f]                                     ; $5884: $f0 $2f
	ld e, c                                          ; $5886: $59
	ld c, d                                          ; $5887: $4a
	ldh a, [$3d]                                     ; $5888: $f0 $3d
	pop af                                           ; $588a: $f1
	ld d, h                                          ; $588b: $54
	ld d, e                                          ; $588c: $53
	ld e, $f0                                        ; $588d: $1e $f0
	ld e, b                                          ; $588f: $58
	di                                               ; $5890: $f3
	ldh a, [$f0]                                     ; $5891: $f0 $f0
	ld c, b                                          ; $5893: $48
	ld e, $f0                                        ; $5894: $1e $f0
	push hl                                          ; $5896: $e5
	ld a, $52                                        ; $5897: $3e $52
	add hl, bc                                       ; $5899: $09
	ld d, c                                          ; $589a: $51
	dec [hl]                                         ; $589b: $35
	ld e, $f0                                        ; $589c: $1e $f0
	ld e, b                                          ; $589e: $58
	pop af                                           ; $589f: $f1
	ld e, d                                          ; $58a0: $5a
	ld e, $f0                                        ; $58a1: $1e $f0
	push hl                                          ; $58a3: $e5
	ldh a, [$6e]                                     ; $58a4: $f0 $6e
	ldh a, [rDIV]                                    ; $58a6: $f0 $04
	ld h, l                                          ; $58a8: $65
	ld h, d                                          ; $58a9: $62
	ld e, $f0                                        ; $58aa: $1e $f0
	ld e, b                                          ; $58ac: $58
	ldh a, [c]                                       ; $58ad: $f2
	and d                                            ; $58ae: $a2
	ld d, c                                          ; $58af: $51
	ld e, $f0                                        ; $58b0: $1e $f0
	push hl                                          ; $58b2: $e5
	ld d, h                                          ; $58b3: $54
	ld c, c                                          ; $58b4: $49
	ld c, d                                          ; $58b5: $4a
	add hl, bc                                       ; $58b6: $09
	ld e, $f0                                        ; $58b7: $1e $f0
	ld e, b                                          ; $58b9: $58
	ldh a, [$3d]                                     ; $58ba: $f0 $3d
	pop af                                           ; $58bc: $f1
	ld d, h                                          ; $58bd: $54
	ld e, $f0                                        ; $58be: $1e $f0
	push hl                                          ; $58c0: $e5
	ld c, e                                          ; $58c1: $4b
	ldh a, [rPCM34]                                  ; $58c2: $f0 $77
	ld b, d                                          ; $58c4: $42
	ldh a, [rAUD2HIGH]                               ; $58c5: $f0 $19
	ld b, a                                          ; $58c7: $47
	ld e, $f1                                        ; $58c8: $1e $f1
	inc l                                            ; $58ca: $2c
	sub [hl]                                         ; $58cb: $96
	ld d, a                                          ; $58cc: $57
	ld d, d                                          ; $58cd: $52
	ld d, c                                          ; $58ce: $51
	ld e, $f0                                        ; $58cf: $1e $f0
	push hl                                          ; $58d1: $e5
	dec [hl]                                         ; $58d2: $35
	add hl, bc                                       ; $58d3: $09
	ld e, $f0                                        ; $58d4: $1e $f0
	ld e, b                                          ; $58d6: $58
	pop af                                           ; $58d7: $f1
	ld e, d                                          ; $58d8: $5a
	ld e, $f0                                        ; $58d9: $1e $f0
	push hl                                          ; $58db: $e5
	ldh a, [$6e]                                     ; $58dc: $f0 $6e
	ldh a, [rDIV]                                    ; $58de: $f0 $04
	ld h, l                                          ; $58e0: $65
	ld h, d                                          ; $58e1: $62
	ld e, $f0                                        ; $58e2: $1e $f0
	ld e, b                                          ; $58e4: $58
	ldh a, [c]                                       ; $58e5: $f2
	ld a, a                                          ; $58e6: $7f
	ld d, c                                          ; $58e7: $51
	ld e, $f0                                        ; $58e8: $1e $f0
	push hl                                          ; $58ea: $e5

jr_07a_58eb:
	ld c, c                                          ; $58eb: $49
	ldh a, [rPCM34]                                  ; $58ec: $f0 $77
	ld b, d                                          ; $58ee: $42
	ldh a, [rAUD2HIGH]                               ; $58ef: $f0 $19
	inc a                                            ; $58f1: $3c
	ld d, b                                          ; $58f2: $50
	add hl, bc                                       ; $58f3: $09
	ld e, $f1                                        ; $58f4: $1e $f1
	inc l                                            ; $58f6: $2c
	ld d, c                                          ; $58f7: $51
	ld d, l                                          ; $58f8: $55
	jr c, jr_07a_58eb                                ; $58f9: $38 $f0

	ld a, $f0                                        ; $58fb: $3e $f0
	ld bc, $5152                                     ; $58fd: $01 $52 $51
	dec [hl]                                         ; $5900: $35
	add hl, bc                                       ; $5901: $09
	di                                               ; $5902: $f3
	ldh a, [$f0]                                     ; $5903: $f0 $f0
	ld c, b                                          ; $5905: $48
	ld a, $3f                                        ; $5906: $3e $3f
	ld c, [hl]                                       ; $5908: $4e
	ldh a, [rSC]                                     ; $5909: $f0 $02
	ld a, l                                          ; $590b: $7d
	ld h, l                                          ; $590c: $65
	ld h, d                                          ; $590d: $62
	ldh a, [$6e]                                     ; $590e: $f0 $6e
	ldh a, [rDIV]                                    ; $5910: $f0 $04
	ld h, l                                          ; $5912: $65
	ld c, d                                          ; $5913: $4a
	add hl, bc                                       ; $5914: $09
	ld e, $f0                                        ; $5915: $1e $f0
	ld e, b                                          ; $5917: $58
	pop af                                           ; $5918: $f1
	jr nc, jr_07a_598c                               ; $5919: $30 $71

	ccf                                              ; $591b: $3f
	ld e, $f1                                        ; $591c: $1e $f1
	inc l                                            ; $591e: $2c
	db $f4                                           ; $591f: $f4
	ld c, c                                          ; $5920: $49
	ldh a, [$0d]                                     ; $5921: $f0 $0d
	ld e, $f0                                        ; $5923: $1e $f0
	push hl                                          ; $5925: $e5
	ld h, d                                          ; $5926: $62
	ldh a, [$ec]                                     ; $5927: $f0 $ec
	ldh a, [hDisp0_WY]                                     ; $5929: $f0 $88
	ld a, $3f                                        ; $592b: $3e $3f
	ld c, h                                          ; $592d: $4c
	dec [hl]                                         ; $592e: $35
	add hl, bc                                       ; $592f: $09
	ldh a, [$d6]                                     ; $5930: $f0 $d6
	ld b, a                                          ; $5932: $47
	inc [hl]                                         ; $5933: $34
	ldh a, [rSC]                                     ; $5934: $f0 $02
	ld a, l                                          ; $5936: $7d
	ld h, l                                          ; $5937: $65
	ldh a, [$3e]                                     ; $5938: $f0 $3e
	ld h, d                                          ; $593a: $62
	di                                               ; $593b: $f3
	ldh a, [$f0]                                     ; $593c: $f0 $f0
	ld c, b                                          ; $593e: $48
	ld a, $3f                                        ; $593f: $3e $3f
	ld c, [hl]                                       ; $5941: $4e
	add hl, bc                                       ; $5942: $09
	ldh a, [$35]                                     ; $5943: $f0 $35
	ld e, c                                          ; $5945: $59
	pop af                                           ; $5946: $f1
	daa                                              ; $5947: $27
	ldh a, [$03]                                     ; $5948: $f0 $03
	ld h, d                                          ; $594a: $62
	ldh a, [$6e]                                     ; $594b: $f0 $6e
	ldh a, [rDIV]                                    ; $594d: $f0 $04
	ld h, l                                          ; $594f: $65
	ld c, d                                          ; $5950: $4a
	ld e, $f0                                        ; $5951: $1e $f0
	ld e, b                                          ; $5953: $58
	pop af                                           ; $5954: $f1
	jr nc, jr_07a_59c8                               ; $5955: $30 $71

	ld c, [hl]                                       ; $5957: $4e
	ld e, $f0                                        ; $5958: $1e $f0
	push hl                                          ; $595a: $e5
	ld c, c                                          ; $595b: $49
	inc [hl]                                         ; $595c: $34
	add hl, bc                                       ; $595d: $09
	ld b, b                                          ; $595e: $40
	ld d, h                                          ; $595f: $54
	ld b, a                                          ; $5960: $47
	ld e, $f1                                        ; $5961: $1e $f1
	inc l                                            ; $5963: $2c
	ldh a, [c]                                       ; $5964: $f2
	inc [hl]                                         ; $5965: $34
	ld h, d                                          ; $5966: $62
	ldh a, [c]                                       ; $5967: $f2
	ld h, d                                          ; $5968: $62
	ldh a, [rSB]                                     ; $5969: $f0 $01
	ld c, [hl]                                       ; $596b: $4e
	ld e, $f0                                        ; $596c: $1e $f0
	push hl                                          ; $596e: $e5
	ld h, e                                          ; $596f: $63
	dec [hl]                                         ; $5970: $35
	add hl, bc                                       ; $5971: $09
	add [hl]                                         ; $5972: $86
	ldh a, [$3e]                                     ; $5973: $f0 $3e
	inc a                                            ; $5975: $3c
	ld d, b                                          ; $5976: $50
	ldh a, [c]                                       ; $5977: $f2
	ld c, a                                          ; $5978: $4f
	ld d, a                                          ; $5979: $57
	ccf                                              ; $597a: $3f
	ld d, l                                          ; $597b: $55
	ld c, [hl]                                       ; $597c: $4e
	ld e, $f0                                        ; $597d: $1e $f0
	ld e, b                                          ; $597f: $58
	ldh a, [rAUD4LEN]                                ; $5980: $f0 $20
	ld e, c                                          ; $5982: $59
	ld e, $f0                                        ; $5983: $1e $f0
	push hl                                          ; $5985: $e5
	ld b, a                                          ; $5986: $47
	add hl, bc                                       ; $5987: $09
	add [hl]                                         ; $5988: $86
	ldh a, [rDIV]                                    ; $5989: $f0 $04
	ld a, l                                          ; $598b: $7d

jr_07a_598c:
	pop af                                           ; $598c: $f1
	ld d, h                                          ; $598d: $54
	ld h, l                                          ; $598e: $65
	ldh a, [$50]                                     ; $598f: $f0 $50
	ld h, d                                          ; $5991: $62
	ldh a, [rTMA]                                    ; $5992: $f0 $06
	ld h, e                                          ; $5994: $63
	ld a, c                                          ; $5995: $79
	ccf                                              ; $5996: $3f
	add hl, bc                                       ; $5997: $09
	add [hl]                                         ; $5998: $86
	pop af                                           ; $5999: $f1
	ld e, d                                          ; $599a: $5a
	ldh a, [$6e]                                     ; $599b: $f0 $6e
	ldh a, [rDIV]                                    ; $599d: $f0 $04
	ld h, l                                          ; $599f: $65
	ld h, d                                          ; $59a0: $62
	ld e, $f0                                        ; $59a1: $1e $f0
	ld e, b                                          ; $59a3: $58
	ldh a, [c]                                       ; $59a4: $f2
	and d                                            ; $59a5: $a2
	ld a, $3f                                        ; $59a6: $3e $3f
	jr c, jr_07a_59e5                                ; $59a8: $38 $3b

	ccf                                              ; $59aa: $3f
	ld c, h                                          ; $59ab: $4c
	dec [hl]                                         ; $59ac: $35
	add hl, bc                                       ; $59ad: $09
	ld e, $f0                                        ; $59ae: $1e $f0
	ld e, b                                          ; $59b0: $58
	add [hl]                                         ; $59b1: $86
	ldh a, [$3e]                                     ; $59b2: $f0 $3e
	ldh a, [$0b]                                     ; $59b4: $f0 $0b
	ld d, l                                          ; $59b6: $55
	ldh a, [rTMA]                                    ; $59b7: $f0 $06
	ld e, [hl]                                       ; $59b9: $5e
	ld a, e                                          ; $59ba: $7b
	ldh a, [$6d]                                     ; $59bb: $f0 $6d
	ld e, c                                          ; $59bd: $59
	ldh a, [$7e]                                     ; $59be: $f0 $7e
	ld e, $f0                                        ; $59c0: $1e $f0
	push hl                                          ; $59c2: $e5
	ld d, e                                          ; $59c3: $53
	add hl, bc                                       ; $59c4: $09
	add [hl]                                         ; $59c5: $86
	ldh a, [$3e]                                     ; $59c6: $f0 $3e

jr_07a_59c8:
	ld d, e                                          ; $59c8: $53
	dec sp                                           ; $59c9: $3b
	ccf                                              ; $59ca: $3f
	jr c, @+$57                                      ; $59cb: $38 $55

	ld h, e                                          ; $59cd: $63
	dec [hl]                                         ; $59ce: $35
	add hl, bc                                       ; $59cf: $09
	add hl, bc                                       ; $59d0: $09
	ld l, a                                          ; $59d1: $6f
	ld b, d                                          ; $59d2: $42
	ld e, $f0                                        ; $59d3: $1e $f0
	ld e, b                                          ; $59d5: $58
	pop af                                           ; $59d6: $f1
	dec l                                            ; $59d7: $2d
	ld b, a                                          ; $59d8: $47
	ldh a, [rTMA]                                    ; $59d9: $f0 $06
	ld h, e                                          ; $59db: $63
	ld a, c                                          ; $59dc: $79
	ccf                                              ; $59dd: $3f
	ld e, $f0                                        ; $59de: $1e $f0
	push hl                                          ; $59e0: $e5
	ldh a, [rDIV]                                    ; $59e1: $f0 $04
	ld a, l                                          ; $59e3: $7d
	pop af                                           ; $59e4: $f1

jr_07a_59e5:
	ld d, h                                          ; $59e5: $54
	ld h, l                                          ; $59e6: $65
	ldh a, [$50]                                     ; $59e7: $f0 $50
	ld a, [hl]                                       ; $59e9: $7e
	add hl, bc                                       ; $59ea: $09
	ld d, l                                          ; $59eb: $55
	ld e, $f0                                        ; $59ec: $1e $f0
	ld e, b                                          ; $59ee: $58
	pop af                                           ; $59ef: $f1
	ld e, d                                          ; $59f0: $5a
	pop af                                           ; $59f1: $f1
	cp b                                             ; $59f2: $b8
	ld h, d                                          ; $59f3: $62
	ldh a, [c]                                       ; $59f4: $f2
	and d                                            ; $59f5: $a2
	ld a, $3f                                        ; $59f6: $3e $3f
	ld c, h                                          ; $59f8: $4c
	ld e, $f0                                        ; $59f9: $1e $f0
	push hl                                          ; $59fb: $e5
	dec [hl]                                         ; $59fc: $35
	ldh a, [$6e]                                     ; $59fd: $f0 $6e
	ldh a, [rDIV]                                    ; $59ff: $f0 $04
	ld h, l                                          ; $5a01: $65
	ld h, d                                          ; $5a02: $62
	ldh a, [$2a]                                     ; $5a03: $f0 $2a
	add hl, bc                                       ; $5a05: $09
	ldh a, [$f5]                                     ; $5a06: $f0 $f5
	ld e, [hl]                                       ; $5a08: $5e
	ld c, [hl]                                       ; $5a09: $4e
	ld c, c                                          ; $5a0a: $49
	pop af                                           ; $5a0b: $f1
	ld [hl], $41                                     ; $5a0c: $36 $41
	ld c, d                                          ; $5a0e: $4a
	ld a, $52                                        ; $5a0f: $3e $52
	add hl, sp                                       ; $5a11: $39
	inc a                                            ; $5a12: $3c
	ld d, b                                          ; $5a13: $50
	ld a, a                                          ; $5a14: $7f
	ld h, d                                          ; $5a15: $62
	add hl, bc                                       ; $5a16: $09
	ldh a, [$9a]                                     ; $5a17: $f0 $9a
	ld e, l                                          ; $5a19: $5d
	ccf                                              ; $5a1a: $3f
	dec [hl]                                         ; $5a1b: $35
	ld e, $f0                                        ; $5a1c: $1e $f0
	ld e, b                                          ; $5a1e: $58
	ldh a, [$5f]                                     ; $5a1f: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $5a21: $f0 $94
	ld c, e                                          ; $5a23: $4b
	pop af                                           ; $5a24: $f1
	cp b                                             ; $5a25: $b8
	ldh a, [$6e]                                     ; $5a26: $f0 $6e
	ldh a, [rDIV]                                    ; $5a28: $f0 $04
	ld h, l                                          ; $5a2a: $65
	ld e, $f0                                        ; $5a2b: $1e $f0
	push hl                                          ; $5a2d: $e5
	inc a                                            ; $5a2e: $3c
	ld d, b                                          ; $5a2f: $50
	add hl, bc                                       ; $5a30: $09
	ld b, l                                          ; $5a31: $45
	dec [hl]                                         ; $5a32: $35
	pop af                                           ; $5a33: $f1
	ld a, c                                          ; $5a34: $79
	pop af                                           ; $5a35: $f1
	ld h, d                                          ; $5a36: $62
	ld c, e                                          ; $5a37: $4b
	jr c, jr_07a_5a72                                ; $5a38: $38 $38

	ld [hl], $09                                     ; $5a3a: $36 $09
	ld l, a                                          ; $5a3c: $6f
	ld b, d                                          ; $5a3d: $42
	ld e, $f0                                        ; $5a3e: $1e $f0
	ld e, b                                          ; $5a40: $58
	pop af                                           ; $5a41: $f1
	dec l                                            ; $5a42: $2d
	ld b, a                                          ; $5a43: $47
	ldh a, [rTMA]                                    ; $5a44: $f0 $06
	ld h, e                                          ; $5a46: $63
	ld a, c                                          ; $5a47: $79
	ccf                                              ; $5a48: $3f
	ld e, $f0                                        ; $5a49: $1e $f0
	push hl                                          ; $5a4b: $e5
	ldh a, [rDIV]                                    ; $5a4c: $f0 $04
	ld a, l                                          ; $5a4e: $7d
	pop af                                           ; $5a4f: $f1
	ld d, h                                          ; $5a50: $54
	ld h, l                                          ; $5a51: $65
	ldh a, [$50]                                     ; $5a52: $f0 $50
	ld a, [hl]                                       ; $5a54: $7e
	add hl, bc                                       ; $5a55: $09
	ld d, l                                          ; $5a56: $55
	ld e, $f0                                        ; $5a57: $1e $f0
	ld e, b                                          ; $5a59: $58
	pop af                                           ; $5a5a: $f1
	ld e, d                                          ; $5a5b: $5a
	pop af                                           ; $5a5c: $f1
	cp b                                             ; $5a5d: $b8
	ld h, d                                          ; $5a5e: $62
	ldh a, [c]                                       ; $5a5f: $f2
	and d                                            ; $5a60: $a2
	ld a, $3f                                        ; $5a61: $3e $3f
	ldh a, [$a3]                                     ; $5a63: $f0 $a3
	ld e, b                                          ; $5a65: $58
	jr c, @+$20                                      ; $5a66: $38 $1e

	ldh a, [$e5]                                     ; $5a68: $f0 $e5
	dec [hl]                                         ; $5a6a: $35
	ldh a, [$6e]                                     ; $5a6b: $f0 $6e
	ldh a, [rDIV]                                    ; $5a6d: $f0 $04
	ld h, l                                          ; $5a6f: $65
	add hl, bc                                       ; $5a70: $09
	ld h, d                                          ; $5a71: $62

jr_07a_5a72:
	ldh a, [$2a]                                     ; $5a72: $f0 $2a
	ldh a, [$f5]                                     ; $5a74: $f0 $f5
	ld e, [hl]                                       ; $5a76: $5e
	ld c, [hl]                                       ; $5a77: $4e
	ld c, c                                          ; $5a78: $49
	pop af                                           ; $5a79: $f1
	ld [hl], $41                                     ; $5a7a: $36 $41
	ld c, d                                          ; $5a7c: $4a
	ld a, $52                                        ; $5a7d: $3e $52
	jr c, jr_07a_5ad3                                ; $5a7f: $38 $52

	ld d, c                                          ; $5a81: $51
	add hl, bc                                       ; $5a82: $09
	ld b, l                                          ; $5a83: $45
	dec [hl]                                         ; $5a84: $35
	ld e, $f0                                        ; $5a85: $1e $f0
	ld e, b                                          ; $5a87: $58
	ldh a, [$5f]                                     ; $5a88: $f0 $5f
	ldh a, [hDisp1_OBP1]                                     ; $5a8a: $f0 $94
	ld c, e                                          ; $5a8c: $4b
	pop af                                           ; $5a8d: $f1
	cp b                                             ; $5a8e: $b8
	ldh a, [$6e]                                     ; $5a8f: $f0 $6e
	ldh a, [rDIV]                                    ; $5a91: $f0 $04
	ld h, l                                          ; $5a93: $65
	ld e, $f0                                        ; $5a94: $1e $f0
	push hl                                          ; $5a96: $e5
	inc a                                            ; $5a97: $3c
	ld d, b                                          ; $5a98: $50
	ld c, d                                          ; $5a99: $4a
	ld d, c                                          ; $5a9a: $51
	dec [hl]                                         ; $5a9b: $35
	add hl, bc                                       ; $5a9c: $09
	pop af                                           ; $5a9d: $f1
	ld a, c                                          ; $5a9e: $79
	pop af                                           ; $5a9f: $f1
	ld h, d                                          ; $5aa0: $62
	ld c, e                                          ; $5aa1: $4b
	jr c, jr_07a_5adc                                ; $5aa2: $38 $38

	ld c, d                                          ; $5aa4: $4a
	ld d, c                                          ; $5aa5: $51
	inc a                                            ; $5aa6: $3c
	ld [hl], $09                                     ; $5aa7: $36 $09
	ld e, $f0                                        ; $5aa9: $1e $f0
	ld e, b                                          ; $5aab: $58
	ldh a, [$6e]                                     ; $5aac: $f0 $6e
	ldh a, [rDIV]                                    ; $5aae: $f0 $04
	ld h, l                                          ; $5ab0: $65
	ldh a, [$a7]                                     ; $5ab1: $f0 $a7
	di                                               ; $5ab3: $f3
	ld l, d                                          ; $5ab4: $6a
	ld e, $f0                                        ; $5ab5: $1e $f0
	push hl                                          ; $5ab7: $e5
	ld c, d                                          ; $5ab8: $4a
	pop af                                           ; $5ab9: $f1
	jr jr_07a_5b11                                   ; $5aba: $18 $55

	pop af                                           ; $5abc: $f1
	ld b, e                                          ; $5abd: $43
	ld c, l                                          ; $5abe: $4d
	ld c, [hl]                                       ; $5abf: $4e
	ld h, e                                          ; $5ac0: $63
	dec [hl]                                         ; $5ac1: $35
	add hl, bc                                       ; $5ac2: $09
	ldh a, [$8e]                                     ; $5ac3: $f0 $8e
	ldh a, [rSC]                                     ; $5ac5: $f0 $02
	ld a, l                                          ; $5ac7: $7d
	ld h, l                                          ; $5ac8: $65
	ldh a, [$50]                                     ; $5ac9: $f0 $50
	ld c, e                                          ; $5acb: $4b
	ld l, l                                          ; $5acc: $6d
	ldh a, [$d3]                                     ; $5acd: $f0 $d3
	push af                                          ; $5acf: $f5
	xor h                                            ; $5ad0: $ac
	ld b, h                                          ; $5ad1: $44
	inc a                                            ; $5ad2: $3c

jr_07a_5ad3:
	ld d, b                                          ; $5ad3: $50
	ld a, a                                          ; $5ad4: $7f
	ld h, d                                          ; $5ad5: $62
	add hl, bc                                       ; $5ad6: $09
	ldh a, [$9a]                                     ; $5ad7: $f0 $9a
	ld e, l                                          ; $5ad9: $5d
	ccf                                              ; $5ada: $3f
	ld c, h                                          ; $5adb: $4c

jr_07a_5adc:
	dec [hl]                                         ; $5adc: $35
	add hl, bc                                       ; $5add: $09
	ld [hl-], a                                      ; $5ade: $32
	ld e, $f0                                        ; $5adf: $1e $f0
	ld e, b                                          ; $5ae1: $58
	pop af                                           ; $5ae2: $f1
	ld e, d                                          ; $5ae3: $5a
	pop af                                           ; $5ae4: $f1
	cp b                                             ; $5ae5: $b8
	ldh a, [c]                                       ; $5ae6: $f2
	ld d, [hl]                                       ; $5ae7: $56
	di                                               ; $5ae8: $f3
	ld l, d                                          ; $5ae9: $6a
	ld d, e                                          ; $5aea: $53
	pop af                                           ; $5aeb: $f1
	ld [de], a                                       ; $5aec: $12
	ld a, l                                          ; $5aed: $7d
	ld h, l                                          ; $5aee: $65
	ld l, c                                          ; $5aef: $69
	ld c, d                                          ; $5af0: $4a
	ld d, c                                          ; $5af1: $51
	ld e, $f0                                        ; $5af2: $1e $f0
	push hl                                          ; $5af4: $e5
	inc sp                                           ; $5af5: $33
	add hl, bc                                       ; $5af6: $09
	add hl, bc                                       ; $5af7: $09
	ldh a, [$6e]                                     ; $5af8: $f0 $6e
	ld e, c                                          ; $5afa: $59
	ldh a, [$03]                                     ; $5afb: $f0 $03
	ld d, e                                          ; $5afd: $53
	ld e, $f0                                        ; $5afe: $1e $f0
	ld e, b                                          ; $5b00: $58
	db $f4                                           ; $5b01: $f4
	ld l, $f4                                        ; $5b02: $2e $f4
	dec l                                            ; $5b04: $2d
	ld e, $f0                                        ; $5b05: $1e $f0
	push hl                                          ; $5b07: $e5
	ld b, a                                          ; $5b08: $47
	ldh a, [rOBP0]                                   ; $5b09: $f0 $48
	jr c, jr_07a_5b4c                                ; $5b0b: $38 $3f

	jr c, jr_07a_5b5d                                ; $5b0d: $38 $4e

	ld b, d                                          ; $5b0f: $42
	ld h, d                                          ; $5b10: $62

jr_07a_5b11:
	add hl, bc                                       ; $5b11: $09
	ld e, $f0                                        ; $5b12: $1e $f0
	ld e, b                                          ; $5b14: $58
	pop af                                           ; $5b15: $f1
	ld e, d                                          ; $5b16: $5a
	pop af                                           ; $5b17: $f1
	cp b                                             ; $5b18: $b8
	ld e, $f0                                        ; $5b19: $1e $f0
	push hl                                          ; $5b1b: $e5
	ld h, d                                          ; $5b1c: $62
	pop af                                           ; $5b1d: $f1
	sbc l                                            ; $5b1e: $9d
	dec sp                                           ; $5b1f: $3b
	ccf                                              ; $5b20: $3f
	add hl, sp                                       ; $5b21: $39
	ld d, d                                          ; $5b22: $52
	ld d, l                                          ; $5b23: $55
	ld e, $f0                                        ; $5b24: $1e $f0
	ld e, b                                          ; $5b26: $58
	ldh a, [rAUD4LEN]                                ; $5b27: $f0 $20
	ldh a, [rSC]                                     ; $5b29: $f0 $02
	ld h, l                                          ; $5b2b: $65
	add e                                            ; $5b2c: $83
	ld e, $f0                                        ; $5b2d: $1e $f0
	push hl                                          ; $5b2f: $e5
	ld h, d                                          ; $5b30: $62
	add hl, bc                                       ; $5b31: $09
	ld c, c                                          ; $5b32: $49
	dec sp                                           ; $5b33: $3b
	ccf                                              ; $5b34: $3f
	ld c, h                                          ; $5b35: $4c
	dec [hl]                                         ; $5b36: $35
	ld e, $f0                                        ; $5b37: $1e $f0
	ld e, b                                          ; $5b39: $58
	ldh a, [$c3]                                     ; $5b3a: $f0 $c3
	ld e, c                                          ; $5b3c: $59
	ld l, c                                          ; $5b3d: $69
	ld c, d                                          ; $5b3e: $4a
	pop af                                           ; $5b3f: $f1
	ld b, e                                          ; $5b40: $43
	ld c, [hl]                                       ; $5b41: $4e
	ld e, $f0                                        ; $5b42: $1e $f0
	push hl                                          ; $5b44: $e5
	inc a                                            ; $5b45: $3c
	ld d, b                                          ; $5b46: $50
	inc [hl]                                         ; $5b47: $34
	add hl, bc                                       ; $5b48: $09
	pop af                                           ; $5b49: $f1
	add c                                            ; $5b4a: $81
	ld c, c                                          ; $5b4b: $49

jr_07a_5b4c:
	ld e, b                                          ; $5b4c: $58
	ld a, [hl-]                                      ; $5b4d: $3a
	jr c, jr_07a_5b95                                ; $5b4e: $38 $45

	add hl, sp                                       ; $5b50: $39
	ld b, a                                          ; $5b51: $47
	sub d                                            ; $5b52: $92
	adc [hl]                                         ; $5b53: $8e
	dec sp                                           ; $5b54: $3b
	ccf                                              ; $5b55: $3f
	dec [hl]                                         ; $5b56: $35
	add hl, bc                                       ; $5b57: $09
	add hl, bc                                       ; $5b58: $09
	ldh a, [rIF]                                     ; $5b59: $f0 $0f
	ldh a, [$a0]                                     ; $5b5b: $f0 $a0

jr_07a_5b5d:
	ld e, c                                          ; $5b5d: $59
	ldh a, [$9d]                                     ; $5b5e: $f0 $9d
	ld e, c                                          ; $5b60: $59
	ldh a, [rDIV]                                    ; $5b61: $f0 $04
	ld e, c                                          ; $5b63: $59
	ld b, a                                          ; $5b64: $47
	ldh a, [rTMA]                                    ; $5b65: $f0 $06
	ld h, e                                          ; $5b67: $63
	ld a, c                                          ; $5b68: $79
	ccf                                              ; $5b69: $3f
	ld e, $f0                                        ; $5b6a: $1e $f0
	ld e, b                                          ; $5b6c: $58
	ldh a, [rDIV]                                    ; $5b6d: $f0 $04
	ld a, l                                          ; $5b6f: $7d
	pop af                                           ; $5b70: $f1
	ld d, h                                          ; $5b71: $54
	add hl, bc                                       ; $5b72: $09
	ld e, $f0                                        ; $5b73: $1e $f0
	ld e, b                                          ; $5b75: $58
	ld h, l                                          ; $5b76: $65
	ldh a, [$50]                                     ; $5b77: $f0 $50
	ld a, [hl]                                       ; $5b79: $7e
	ld d, l                                          ; $5b7a: $55
	ld e, $f0                                        ; $5b7b: $1e $f0
	push hl                                          ; $5b7d: $e5
	pop af                                           ; $5b7e: $f1
	ld e, d                                          ; $5b7f: $5a
	ldh a, [$6e]                                     ; $5b80: $f0 $6e
	ldh a, [rDIV]                                    ; $5b82: $f0 $04
	ld h, l                                          ; $5b84: $65
	ld h, d                                          ; $5b85: $62
	ldh a, [c]                                       ; $5b86: $f2
	and d                                            ; $5b87: $a2
	ld d, c                                          ; $5b88: $51
	ld c, c                                          ; $5b89: $49
	ld e, $f0                                        ; $5b8a: $1e $f0
	ld e, b                                          ; $5b8c: $58
	ldh a, [c]                                       ; $5b8d: $f2
	sub c                                            ; $5b8e: $91
	ldh a, [c]                                       ; $5b8f: $f2
	push bc                                          ; $5b90: $c5
	add hl, bc                                       ; $5b91: $09
	ld e, $f1                                        ; $5b92: $1e $f1
	inc l                                            ; $5b94: $2c

jr_07a_5b95:
	ldh a, [$a7]                                     ; $5b95: $f0 $a7
	di                                               ; $5b97: $f3
	ld l, d                                          ; $5b98: $6a
	ld e, $f0                                        ; $5b99: $1e $f0
	push hl                                          ; $5b9b: $e5
	ld d, c                                          ; $5b9c: $51
	ld c, [hl]                                       ; $5b9d: $4e
	ld c, c                                          ; $5b9e: $49
	ld e, $f1                                        ; $5b9f: $1e $f1
	inc l                                            ; $5ba1: $2c
	di                                               ; $5ba2: $f3
	db $e4                                           ; $5ba3: $e4
	ldh a, [$bf]                                     ; $5ba4: $f0 $bf
	ld e, $f0                                        ; $5ba6: $1e $f0
	push hl                                          ; $5ba8: $e5
	ld a, [hl-]                                      ; $5ba9: $3a
	ld b, d                                          ; $5baa: $42
	dec [hl]                                         ; $5bab: $35
	ldh a, [$e9]                                     ; $5bac: $f0 $e9
	ldh a, [$0b]                                     ; $5bae: $f0 $0b
	add hl, bc                                       ; $5bb0: $09
	ld e, $f0                                        ; $5bb1: $1e $f0
	push hl                                          ; $5bb3: $e5
	ld b, d                                          ; $5bb4: $42
	ldh a, [c]                                       ; $5bb5: $f2
	sub c                                            ; $5bb6: $91
	ldh a, [c]                                       ; $5bb7: $f2
	push bc                                          ; $5bb8: $c5
	ldh a, [rAUD2HIGH]                               ; $5bb9: $f0 $19
	ld c, e                                          ; $5bbb: $4b
	di                                               ; $5bbc: $f3
	db $e4                                           ; $5bbd: $e4
	ldh a, [$bf]                                     ; $5bbe: $f0 $bf
	ld a, $3f                                        ; $5bc0: $3e $3f
	ld c, h                                          ; $5bc2: $4c
	dec [hl]                                         ; $5bc3: $35
	add hl, bc                                       ; $5bc4: $09
	ldh a, [$6f]                                     ; $5bc5: $f0 $6f
	ldh a, [$e4]                                     ; $5bc7: $f0 $e4
	ld c, e                                          ; $5bc9: $4b
	pop af                                           ; $5bca: $f1
	ld [hl], e                                       ; $5bcb: $73
	ldh a, [$d3]                                     ; $5bcc: $f0 $d3
	ldh a, [$fc]                                     ; $5bce: $f0 $fc
	ld b, l                                          ; $5bd0: $45
	dec [hl]                                         ; $5bd1: $35
	add hl, bc                                       ; $5bd2: $09
	nop                                              ; $5bd3: $00
	nop                                              ; $5bd4: $00
	nop                                              ; $5bd5: $00
	add e                                            ; $5bd6: $83
	ldh a, [rDIV]                                    ; $5bd7: $f0 $04
	ld e, c                                          ; $5bd9: $59
	ld l, c                                          ; $5bda: $69
	ld h, d                                          ; $5bdb: $62
	ldh a, [c]                                       ; $5bdc: $f2
	and d                                            ; $5bdd: $a2
	ld a, $3f                                        ; $5bde: $3e $3f
	ld c, h                                          ; $5be0: $4c
	add hl, bc                                       ; $5be1: $09
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	nop                                              ; $5be5: $00
	pop af                                           ; $5be6: $f1
	ld d, e                                          ; $5be7: $53
	db $f4                                           ; $5be8: $f4
	and b                                            ; $5be9: $a0
	ld a, $52                                        ; $5bea: $3e $52
	ld a, $3d                                        ; $5bec: $3e $3d
	add hl, bc                                       ; $5bee: $09
	nop                                              ; $5bef: $00

Jump_07a_5bf0:
	nop                                              ; $5bf0: $00
	nop                                              ; $5bf1: $00
	nop                                              ; $5bf2: $00
	ldh a, [rHDMA5]                                  ; $5bf3: $f0 $55
	pop af                                           ; $5bf5: $f1
	add b                                            ; $5bf6: $80
	ld a, $52                                        ; $5bf7: $3e $52
	ld a, $3d                                        ; $5bf9: $3e $3d
	add hl, bc                                       ; $5bfb: $09
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	pop af                                           ; $5c02: $f1
	pop af                                           ; $5c03: $f1
	ldh a, [$9f]                                     ; $5c04: $f0 $9f
	ldh a, [rAUD2HIGH]                               ; $5c06: $f0 $19
	add hl, bc                                       ; $5c08: $09
	ld d, h                                          ; $5c09: $54
	ld b, d                                          ; $5c0a: $42
	ldh a, [rAUD1LEN]                                ; $5c0b: $f0 $11
	ld e, c                                          ; $5c0d: $59
	ldh a, [$ba]                                     ; $5c0e: $f0 $ba
	ld e, c                                          ; $5c10: $59
	ld c, d                                          ; $5c11: $4a
	ld c, e                                          ; $5c12: $4b
	inc [hl]                                         ; $5c13: $34
	ldh a, [$d6]                                     ; $5c14: $f0 $d6
	ldh a, [c]                                       ; $5c16: $f2
	ld [hl], h                                       ; $5c17: $74
	ld b, l                                          ; $5c18: $45
	ld d, a                                          ; $5c19: $57
	ld a, [bc]                                       ; $5c1a: $0a
	di                                               ; $5c1b: $f3
	sub c                                            ; $5c1c: $91
	ld d, a                                          ; $5c1d: $57
	db $f4                                           ; $5c1e: $f4
	ld a, [hl-]                                      ; $5c1f: $3a
	ldh a, [c]                                       ; $5c20: $f2
	ld c, c                                          ; $5c21: $49
	ld b, d                                          ; $5c22: $42
	ld a, l                                          ; $5c23: $7d
	pop af                                           ; $5c24: $f1
	dec e                                            ; $5c25: $1d
	ld h, l                                          ; $5c26: $65
	ld l, c                                          ; $5c27: $69
	pop af                                           ; $5c28: $f1
	ldh [c], a                                       ; $5c29: $e2
	pop af                                           ; $5c2a: $f1
	rst $38                                          ; $5c2b: $ff
	ld h, d                                          ; $5c2c: $62
	ld a, [bc]                                       ; $5c2d: $0a
	db $f4                                           ; $5c2e: $f4
	and [hl]                                         ; $5c2f: $a6
	pop af                                           ; $5c30: $f1
	ld e, [hl]                                       ; $5c31: $5e
	ld a, $3f                                        ; $5c32: $3e $3f
	jr c, @+$5e                                      ; $5c34: $38 $5c

	ld d, d                                          ; $5c36: $52
	ld d, c                                          ; $5c37: $51
	dec [hl]                                         ; $5c38: $35
	ld h, h                                          ; $5c39: $64
	dec a                                            ; $5c3a: $3d
	ld b, d                                          ; $5c3b: $42
	ld a, $6c                                        ; $5c3c: $3e $6c
	ld b, a                                          ; $5c3e: $47
	add hl, bc                                       ; $5c3f: $09
	ldh a, [c]                                       ; $5c40: $f2
	jr c, @-$0e                                      ; $5c41: $38 $f0

	ld b, l                                          ; $5c43: $45
	ld b, a                                          ; $5c44: $47
	ldh a, [$b2]                                     ; $5c45: $f0 $b2
	ldh a, [rLY]                                     ; $5c47: $f0 $44
	pop af                                           ; $5c49: $f1
	sbc b                                            ; $5c4a: $98
	ld c, d                                          ; $5c4b: $4a
	ld a, [bc]                                       ; $5c4c: $0a
	ldh a, [$ba]                                     ; $5c4d: $f0 $ba

jr_07a_5c4f:
	ld a, l                                          ; $5c4f: $7d
	ld l, c                                          ; $5c50: $69
	ldh a, [rIF]                                     ; $5c51: $f0 $0f
	ld [hl], l                                       ; $5c53: $75
	ld e, c                                          ; $5c54: $59
	ldh a, [$32]                                     ; $5c55: $f0 $32
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5c57: $f0 $81
	ldh a, [c]                                       ; $5c59: $f2
	rst AddAOntoHL                                          ; $5c5a: $ef
	ld a, [bc]                                       ; $5c5b: $0a
	ldh a, [c]                                       ; $5c5c: $f2
	jr c, jr_07a_5c4f                                ; $5c5d: $38 $f0

	ld b, l                                          ; $5c5f: $45
	ldh a, [$e5]                                     ; $5c60: $f0 $e5
	ld l, b                                          ; $5c62: $68
	ld b, a                                          ; $5c63: $47
	ld a, [bc]                                       ; $5c64: $0a
	ldh a, [$d4]                                     ; $5c65: $f0 $d4
	pop af                                           ; $5c67: $f1
	ld a, [hl+]                                      ; $5c68: $2a
	ld c, d                                          ; $5c69: $4a
	di                                               ; $5c6a: $f3
	dec [hl]                                         ; $5c6b: $35
	ld l, b                                          ; $5c6c: $68
	ld d, e                                          ; $5c6d: $53
	ld b, [hl]                                       ; $5c6e: $46
	ld d, a                                          ; $5c6f: $57
	ld d, d                                          ; $5c70: $52
	ld d, c                                          ; $5c71: $51
	add hl, bc                                       ; $5c72: $09
	adc d                                            ; $5c73: $8a
	ldh a, [$73]                                     ; $5c74: $f0 $73
	ldh a, [$df]                                     ; $5c76: $f0 $df
	ld c, d                                          ; $5c78: $4a
	inc [hl]                                         ; $5c79: $34
	ld a, [bc]                                       ; $5c7a: $0a
	pop af                                           ; $5c7b: $f1
	adc d                                            ; $5c7c: $8a
	ldh a, [$fb]                                     ; $5c7d: $f0 $fb
	ldh a, [$7a]                                     ; $5c7f: $f0 $7a
	ldh a, [rSVBK]                                   ; $5c81: $f0 $70
	ldh a, [$c1]                                     ; $5c83: $f0 $c1
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5c85: $f0 $81
	ldh a, [c]                                       ; $5c87: $f2
	rst AddAOntoHL                                          ; $5c88: $ef
	add hl, bc                                       ; $5c89: $09
	ldh a, [rOBP0]                                   ; $5c8a: $f0 $48
	ldh a, [$2c]                                     ; $5c8c: $f0 $2c
	ldh a, [rLY]                                     ; $5c8e: $f0 $44
	ld b, a                                          ; $5c90: $47
	ldh a, [rAUD1LEN]                                ; $5c91: $f0 $11
	ldh a, [$3d]                                     ; $5c93: $f0 $3d

jr_07a_5c95:
	ldh a, [rSC]                                     ; $5c95: $f0 $02
	ld d, e                                          ; $5c97: $53
	ld l, [hl]                                       ; $5c98: $6e
	dec sp                                           ; $5c99: $3b
	ccf                                              ; $5c9a: $3f
	ld d, l                                          ; $5c9b: $55
	ld c, [hl]                                       ; $5c9c: $4e
	add hl, bc                                       ; $5c9d: $09
	ldh a, [rAUD2HIGH]                               ; $5c9e: $f0 $19
	ldh a, [c]                                       ; $5ca0: $f2
	db $ec                                           ; $5ca1: $ec
	pop af                                           ; $5ca2: $f1
	jr z, jr_07a_5c95                                ; $5ca3: $28 $f0

	ld b, h                                          ; $5ca5: $44
	ld c, d                                          ; $5ca6: $4a
	ldh a, [c]                                       ; $5ca7: $f2
	ld d, h                                          ; $5ca8: $54
	ld d, e                                          ; $5ca9: $53
	ldh a, [c]                                       ; $5caa: $f2
	adc [hl]                                         ; $5cab: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5cac: $f0 $81
	ld a, [bc]                                       ; $5cae: $0a
	ldh a, [rPCM34]                                  ; $5caf: $f0 $77
	ldh a, [c]                                       ; $5cb1: $f2
	dec d                                            ; $5cb2: $15
	ldh a, [$df]                                     ; $5cb3: $f0 $df
	ld c, d                                          ; $5cb5: $4a
	ld a, l                                          ; $5cb6: $7d
	ldh a, [$03]                                     ; $5cb7: $f0 $03
	ldh a, [$35]                                     ; $5cb9: $f0 $35
	ld b, d                                          ; $5cbb: $42
	sbc b                                            ; $5cbc: $98
	ldh a, [rWX]                                     ; $5cbd: $f0 $4b
	ld e, c                                          ; $5cbf: $59
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5cc0: $f0 $81
	ldh a, [c]                                       ; $5cc2: $f2
	rst AddAOntoHL                                          ; $5cc3: $ef
	add hl, bc                                       ; $5cc4: $09
	ldh a, [c]                                       ; $5cc5: $f2
	jr c, @-$0e                                      ; $5cc6: $38 $f0

	ld b, l                                          ; $5cc8: $45
	ld b, a                                          ; $5cc9: $47
	ldh a, [$b2]                                     ; $5cca: $f0 $b2
	ldh a, [rLY]                                     ; $5ccc: $f0 $44
	pop af                                           ; $5cce: $f1
	sbc b                                            ; $5ccf: $98
	ld c, d                                          ; $5cd0: $4a
	ld a, [bc]                                       ; $5cd1: $0a
	ldh a, [$ba]                                     ; $5cd2: $f0 $ba

jr_07a_5cd4:
	ld a, l                                          ; $5cd4: $7d
	ld l, c                                          ; $5cd5: $69
	ldh a, [rIF]                                     ; $5cd6: $f0 $0f
	ld [hl], l                                       ; $5cd8: $75
	ld e, c                                          ; $5cd9: $59
	ldh a, [$32]                                     ; $5cda: $f0 $32
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5cdc: $f0 $81
	ldh a, [c]                                       ; $5cde: $f2
	rst AddAOntoHL                                          ; $5cdf: $ef
	ld a, [bc]                                       ; $5ce0: $0a
	ldh a, [c]                                       ; $5ce1: $f2
	jr c, jr_07a_5cd4                                ; $5ce2: $38 $f0

	ld b, l                                          ; $5ce4: $45
	ldh a, [$58]                                     ; $5ce5: $f0 $58
	ld l, b                                          ; $5ce7: $68
	ld b, a                                          ; $5ce8: $47
	ld a, [bc]                                       ; $5ce9: $0a
	ldh a, [$d4]                                     ; $5cea: $f0 $d4
	pop af                                           ; $5cec: $f1
	ld a, [hl+]                                      ; $5ced: $2a
	ld c, d                                          ; $5cee: $4a
	di                                               ; $5cef: $f3
	dec [hl]                                         ; $5cf0: $35
	ld l, b                                          ; $5cf1: $68
	ld d, e                                          ; $5cf2: $53
	ld b, [hl]                                       ; $5cf3: $46
	ld d, a                                          ; $5cf4: $57
	ld d, d                                          ; $5cf5: $52
	ld d, c                                          ; $5cf6: $51
	ld a, [bc]                                       ; $5cf7: $0a
	add c                                            ; $5cf8: $81
	ld e, c                                          ; $5cf9: $59
	ldh a, [$03]                                     ; $5cfa: $f0 $03
	ld b, a                                          ; $5cfc: $47
	ldh a, [hDisp0_WX]                                     ; $5cfd: $f0 $89
	ldh a, [c]                                       ; $5cff: $f2
	daa                                              ; $5d00: $27
	ld e, c                                          ; $5d01: $59
	ldh a, [rDIV]                                    ; $5d02: $f0 $04
	ld e, c                                          ; $5d04: $59
	add e                                            ; $5d05: $83
	ldh a, [rSC]                                     ; $5d06: $f0 $02
	ld a, l                                          ; $5d08: $7d
	ldh a, [$f1]                                     ; $5d09: $f0 $f1
	ld e, c                                          ; $5d0b: $59
	ldh a, [c]                                       ; $5d0c: $f2
	scf                                              ; $5d0d: $37
	pop af                                           ; $5d0e: $f1
	ld d, e                                          ; $5d0f: $53
	add hl, bc                                       ; $5d10: $09
	ldh a, [$6d]                                     ; $5d11: $f0 $6d
	ld e, c                                          ; $5d13: $59
	ldh a, [$27]                                     ; $5d14: $f0 $27
	ldh a, [$7b]                                     ; $5d16: $f0 $7b
	ld h, l                                          ; $5d18: $65
	ldh a, [rDIV]                                    ; $5d19: $f0 $04
	ld e, c                                          ; $5d1b: $59
	ld b, a                                          ; $5d1c: $47
	ldh a, [$9d]                                     ; $5d1d: $f0 $9d
	ldh a, [$f1]                                     ; $5d1f: $f0 $f1
	ldh a, [$03]                                     ; $5d21: $f0 $03
	ldh a, [rAUD1LEN]                                ; $5d23: $f0 $11
	ld e, c                                          ; $5d25: $59
	ldh a, [$ba]                                     ; $5d26: $f0 $ba
	ld e, c                                          ; $5d28: $59
	ld d, e                                          ; $5d29: $53
	ld a, [bc]                                       ; $5d2a: $0a
	ldh a, [c]                                       ; $5d2b: $f2
	dec b                                            ; $5d2c: $05
	di                                               ; $5d2d: $f3
	db $e3                                           ; $5d2e: $e3
	add hl, bc                                       ; $5d2f: $09
	ldh a, [$d6]                                     ; $5d30: $f0 $d6
	ldh a, [c]                                       ; $5d32: $f2
	ld [hl], h                                       ; $5d33: $74
	ld b, a                                          ; $5d34: $47

jr_07a_5d35:
	pop af                                           ; $5d35: $f1
	rst SubAFromBC                                          ; $5d36: $e7
	sbc c                                            ; $5d37: $99
	ld a, $3f                                        ; $5d38: $3e $3f
	ld d, l                                          ; $5d3a: $55
	ld c, l                                          ; $5d3b: $4d
	scf                                              ; $5d3c: $37
	add hl, bc                                       ; $5d3d: $09
	ldh a, [rAUD2HIGH]                               ; $5d3e: $f0 $19
	ldh a, [c]                                       ; $5d40: $f2
	db $ec                                           ; $5d41: $ec
	pop af                                           ; $5d42: $f1
	jr z, jr_07a_5d35                                ; $5d43: $28 $f0

	ld b, h                                          ; $5d45: $44
	ld c, d                                          ; $5d46: $4a
	ldh a, [c]                                       ; $5d47: $f2
	ld d, h                                          ; $5d48: $54
	ld d, e                                          ; $5d49: $53
	ldh a, [c]                                       ; $5d4a: $f2
	adc [hl]                                         ; $5d4b: $8e
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5d4c: $f0 $81
	ld a, [bc]                                       ; $5d4e: $0a
	ldh a, [$b2]                                     ; $5d4f: $f0 $b2
	ldh a, [rLY]                                     ; $5d51: $f0 $44
	pop af                                           ; $5d53: $f1
	sbc b                                            ; $5d54: $98
	ld b, a                                          ; $5d55: $47
	pop af                                           ; $5d56: $f1
	ld a, [de]                                       ; $5d57: $1a
	ldh a, [c]                                       ; $5d58: $f2
	db $e4                                           ; $5d59: $e4
	ldh a, [rAUD3LOW]                                ; $5d5a: $f0 $1d
	sbc b                                            ; $5d5c: $98
	ld h, l                                          ; $5d5d: $65
	ldh a, [c]                                       ; $5d5e: $f2
	scf                                              ; $5d5f: $37
	pop af                                           ; $5d60: $f1
	ld d, e                                          ; $5d61: $53
	ld a, [bc]                                       ; $5d62: $0a
	adc d                                            ; $5d63: $8a
	ldh a, [$73]                                     ; $5d64: $f0 $73
	ldh a, [$df]                                     ; $5d66: $f0 $df
	ld c, d                                          ; $5d68: $4a
	db $f4                                           ; $5d69: $f4
	xor d                                            ; $5d6a: $aa
	ldh a, [c]                                       ; $5d6b: $f2
	call $c1f0                                       ; $5d6c: $cd $f0 $c1
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5d6f: $f0 $81
	ldh a, [c]                                       ; $5d71: $f2
	rst AddAOntoHL                                          ; $5d72: $ef
	add hl, bc                                       ; $5d73: $09
	ldh a, [c]                                       ; $5d74: $f2
	jr c, @-$0e                                      ; $5d75: $38 $f0

	ld b, l                                          ; $5d77: $45
	ld b, a                                          ; $5d78: $47
	ldh a, [$b2]                                     ; $5d79: $f0 $b2
	ldh a, [rLY]                                     ; $5d7b: $f0 $44
	pop af                                           ; $5d7d: $f1
	sbc b                                            ; $5d7e: $98
	ld c, d                                          ; $5d7f: $4a
	ld a, [bc]                                       ; $5d80: $0a
	ldh a, [$ba]                                     ; $5d81: $f0 $ba

jr_07a_5d83:
	ld a, l                                          ; $5d83: $7d
	ld l, c                                          ; $5d84: $69
	ldh a, [rIF]                                     ; $5d85: $f0 $0f
	ld [hl], l                                       ; $5d87: $75
	ld e, c                                          ; $5d88: $59
	ldh a, [$32]                                     ; $5d89: $f0 $32
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5d8b: $f0 $81
	ldh a, [c]                                       ; $5d8d: $f2
	rst AddAOntoHL                                          ; $5d8e: $ef
	ld a, [bc]                                       ; $5d8f: $0a
	ldh a, [c]                                       ; $5d90: $f2
	jr c, jr_07a_5d83                                ; $5d91: $38 $f0

	ld b, l                                          ; $5d93: $45
	pop af                                           ; $5d94: $f1
	inc l                                            ; $5d95: $2c
	ld l, b                                          ; $5d96: $68
	ld b, a                                          ; $5d97: $47
	ld a, [bc]                                       ; $5d98: $0a
	ldh a, [$d4]                                     ; $5d99: $f0 $d4
	pop af                                           ; $5d9b: $f1
	ld a, [hl+]                                      ; $5d9c: $2a
	ld c, d                                          ; $5d9d: $4a
	di                                               ; $5d9e: $f3
	dec [hl]                                         ; $5d9f: $35
	ld l, b                                          ; $5da0: $68
	ld d, e                                          ; $5da1: $53
	ld b, [hl]                                       ; $5da2: $46
	ld d, a                                          ; $5da3: $57
	ld d, d                                          ; $5da4: $52
	ld d, c                                          ; $5da5: $51
	add hl, bc                                       ; $5da6: $09
	adc d                                            ; $5da7: $8a
	ldh a, [$73]                                     ; $5da8: $f0 $73
	ldh a, [$df]                                     ; $5daa: $f0 $df
	ld c, d                                          ; $5dac: $4a
	ldh a, [$a6]                                     ; $5dad: $f0 $a6
	ld e, c                                          ; $5daf: $59
	pop af                                           ; $5db0: $f1
	ld [hl], h                                       ; $5db1: $74
	ld e, c                                          ; $5db2: $59
	ldh a, [$c1]                                     ; $5db3: $f0 $c1
	ld d, e                                          ; $5db5: $53
	ldh a, [hLCDCIntHandlerIdx]                                     ; $5db6: $f0 $81
	ldh a, [c]                                       ; $5db8: $f2
	rst AddAOntoHL                                          ; $5db9: $ef
	add hl, bc                                       ; $5dba: $09
	ldh a, [$b2]                                     ; $5dbb: $f0 $b2
	ldh a, [rLY]                                     ; $5dbd: $f0 $44
	pop af                                           ; $5dbf: $f1
	sbc b                                            ; $5dc0: $98
	ld b, a                                          ; $5dc1: $47
	ldh a, [$65]                                     ; $5dc2: $f0 $65
	ldh a, [$78]                                     ; $5dc4: $f0 $78
	ldh a, [rAUD3LOW]                                ; $5dc6: $f0 $1d
	sbc b                                            ; $5dc8: $98
	ld e, c                                          ; $5dc9: $59
	ld h, l                                          ; $5dca: $65
	ld a, [bc]                                       ; $5dcb: $0a
	ldh a, [rAUD4LEN]                                ; $5dcc: $f0 $20
	ld e, c                                          ; $5dce: $59
	ldh a, [$2b]                                     ; $5dcf: $f0 $2b
	ldh a, [$7c]                                     ; $5dd1: $f0 $7c
	ldh a, [$03]                                     ; $5dd3: $f0 $03
	sbc b                                            ; $5dd5: $98
	ld [hl], e                                       ; $5dd6: $73
	add c                                            ; $5dd7: $81
	ld d, e                                          ; $5dd8: $53
	ldh a, [c]                                       ; $5dd9: $f2
	scf                                              ; $5dda: $37
	pop af                                           ; $5ddb: $f1
	ld d, e                                          ; $5ddc: $53
	add hl, bc                                       ; $5ddd: $09
	ld [$0328], sp                                   ; $5dde: $08 $28 $03
	ld h, h                                          ; $5de1: $64
	ld d, d                                          ; $5de2: $52
	ld e, l                                          ; $5de3: $5d
	add hl, bc                                       ; $5de4: $09
	ld [$0528], sp                                   ; $5de5: $08 $28 $05
	ldh a, [rOCPS]                                   ; $5de8: $f0 $6a
	ldh a, [$9f]                                     ; $5dea: $f0 $9f
	add hl, bc                                       ; $5dec: $09
	ld [$0328], sp                                   ; $5ded: $08 $28 $03
	pop af                                           ; $5df0: $f1
	ld b, b                                          ; $5df1: $40
	ld h, l                                          ; $5df2: $65
	ldh a, [rWY]                                     ; $5df3: $f0 $4a
	ldh a, [$c4]                                     ; $5df5: $f0 $c4
	ld h, l                                          ; $5df7: $65
	ldh a, [$50]                                     ; $5df8: $f0 $50
	add hl, bc                                       ; $5dfa: $09
	ld [$0528], sp                                   ; $5dfb: $08 $28 $05
	ldh a, [$de]                                     ; $5dfe: $f0 $de
	ld e, c                                          ; $5e00: $59
	ld l, c                                          ; $5e01: $69
	ldh a, [rAUD3LOW]                                ; $5e02: $f0 $1d
	pop af                                           ; $5e04: $f1
	ld [bc], a                                       ; $5e05: $02
	ldh a, [$3d]                                     ; $5e06: $f0 $3d
	add hl, bc                                       ; $5e08: $09
	ld [$0328], sp                                   ; $5e09: $08 $28 $03
	pop af                                           ; $5e0c: $f1
	inc c                                            ; $5e0d: $0c
	ldh a, [$fc]                                     ; $5e0e: $f0 $fc
	ldh a, [$de]                                     ; $5e10: $f0 $de
	ld e, c                                          ; $5e12: $59
	ld l, c                                          ; $5e13: $69
	ldh a, [rAUD3LOW]                                ; $5e14: $f0 $1d
	pop af                                           ; $5e16: $f1
	ld [bc], a                                       ; $5e17: $02
	ldh a, [$3d]                                     ; $5e18: $f0 $3d
	add hl, bc                                       ; $5e1a: $09
	ld [$0528], sp                                   ; $5e1b: $08 $28 $05
	pop af                                           ; $5e1e: $f1
	dec e                                            ; $5e1f: $1d
	add e                                            ; $5e20: $83
	ld l, c                                          ; $5e21: $69
	ldh a, [$35]                                     ; $5e22: $f0 $35
	ld [hl], e                                       ; $5e24: $73
	add c                                            ; $5e25: $81
	ldh a, [$03]                                     ; $5e26: $f0 $03
	add hl, bc                                       ; $5e28: $09
	ld [$0728], sp                                   ; $5e29: $08 $28 $07
	add e                                            ; $5e2c: $83
	sub e                                            ; $5e2d: $93
	ldh a, [rP1]                                     ; $5e2e: $f0 $00
	ld e, c                                          ; $5e30: $59
	ld h, l                                          ; $5e31: $65
	ldh a, [$7b]                                     ; $5e32: $f0 $7b
	ld e, c                                          ; $5e34: $59
	ldh a, [rAUD4LEN]                                ; $5e35: $f0 $20
	ld e, c                                          ; $5e37: $59
	add hl, bc                                       ; $5e38: $09
	dec b                                            ; $5e39: $05
	add [hl]                                         ; $5e3a: $86
	add [hl]                                         ; $5e3b: $86
	add [hl]                                         ; $5e3c: $86
	add [hl]                                         ; $5e3d: $86
	add [hl]                                         ; $5e3e: $86
	add [hl]                                         ; $5e3f: $86
	add [hl]                                         ; $5e40: $86
	add [hl]                                         ; $5e41: $86
	add [hl]                                         ; $5e42: $86
	add [hl]                                         ; $5e43: $86
	add [hl]                                         ; $5e44: $86
	add hl, bc                                       ; $5e45: $09
	ld [$2000], sp                                   ; $5e46: $08 $00 $20
	pop af                                           ; $5e49: $f1
	sbc l                                            ; $5e4a: $9d
	ldh a, [rAUD2LEN]                                ; $5e4b: $f0 $16
	ldh a, [$8a]                                     ; $5e4d: $f0 $8a
	pop af                                           ; $5e4f: $f1
	ld [hl], d                                       ; $5e50: $72
	ld a, [hl-]                                      ; $5e51: $3a
	ldh a, [$7b]                                     ; $5e52: $f0 $7b
	ld e, c                                          ; $5e54: $59
	ldh a, [rBCPD]                                   ; $5e55: $f0 $69
	ldh a, [rWY]                                     ; $5e57: $f0 $4a
	ld e, c                                          ; $5e59: $59
	ldh a, [rDIV]                                    ; $5e5a: $f0 $04
	ld d, e                                          ; $5e5c: $53
	ld a, [bc]                                       ; $5e5d: $0a
	ld b, [hl]                                       ; $5e5e: $46
	ld d, a                                          ; $5e5f: $57
	ld d, d                                          ; $5e60: $52
	ld a, c                                          ; $5e61: $79
	ld b, c                                          ; $5e62: $41
	dec [hl]                                         ; $5e63: $35
	rla                                              ; $5e64: $17
	inc d                                            ; $5e65: $14
	pop af                                           ; $5e66: $f1
	cp b                                             ; $5e67: $b8
	ldh a, [$6e]                                     ; $5e68: $f0 $6e
	ldh a, [rDIV]                                    ; $5e6a: $f0 $04
	ld h, l                                          ; $5e6c: $65
	ld c, d                                          ; $5e6d: $4a
	ldh a, [rDIV]                                    ; $5e6e: $f0 $04
	ld a, l                                          ; $5e70: $7d
	ld l, c                                          ; $5e71: $69
	ldh a, [$03]                                     ; $5e72: $f0 $03
	ldh a, [$7a]                                     ; $5e74: $f0 $7a
	ldh a, [rAUD4ENV]                                ; $5e76: $f0 $21
	ld b, a                                          ; $5e78: $47
	ldh a, [$e8]                                     ; $5e79: $f0 $e8
	ld d, a                                          ; $5e7b: $57
	ld d, d                                          ; $5e7c: $52
	ld d, c                                          ; $5e7d: $51
	dec [hl]                                         ; $5e7e: $35
	add hl, bc                                       ; $5e7f: $09
	ld [$2000], sp                                   ; $5e80: $08 $00 $20
	ldh a, [rOCPS]                                   ; $5e83: $f0 $6a
	ldh a, [$9f]                                     ; $5e85: $f0 $9f
	ldh a, [$c2]                                     ; $5e87: $f0 $c2
	ld e, c                                          ; $5e89: $59
	ldh a, [rBCPD]                                   ; $5e8a: $f0 $69
	ldh a, [$03]                                     ; $5e8c: $f0 $03
	ld d, e                                          ; $5e8e: $53
	ld e, b                                          ; $5e8f: $58
	ld e, b                                          ; $5e90: $58
	dec sp                                           ; $5e91: $3b
	ccf                                              ; $5e92: $3f
	jr c, jr_07a_5ee7                                ; $5e93: $38 $52

	ld a, c                                          ; $5e95: $79
	ld b, c                                          ; $5e96: $41
	dec [hl]                                         ; $5e97: $35
	rla                                              ; $5e98: $17
	inc d                                            ; $5e99: $14
	pop af                                           ; $5e9a: $f1
	inc de                                           ; $5e9b: $13
	db $f4                                           ; $5e9c: $f4
	jp z, $f162                                      ; $5e9d: $ca $62 $f1

	inc d                                            ; $5ea0: $14
	dec sp                                           ; $5ea1: $3b
	ccf                                              ; $5ea2: $3f
	inc a                                            ; $5ea3: $3c
	ld d, b                                          ; $5ea4: $50
	ldh a, [rOCPS]                                   ; $5ea5: $f0 $6a
	ldh a, [$9f]                                     ; $5ea7: $f0 $9f
	ldh a, [$c2]                                     ; $5ea9: $f0 $c2
	ld e, c                                          ; $5eab: $59
	ldh a, [rBCPD]                                   ; $5eac: $f0 $69
	ldh a, [$03]                                     ; $5eae: $f0 $03
	ld h, d                                          ; $5eb0: $62
	ld a, [bc]                                       ; $5eb1: $0a
	ldh a, [c]                                       ; $5eb2: $f2
	sbc l                                            ; $5eb3: $9d
	pop af                                           ; $5eb4: $f1
	ld h, c                                          ; $5eb5: $61
	ld a, $3f                                        ; $5eb6: $3e $3f
	ldh a, [$a3]                                     ; $5eb8: $f0 $a3
	ld e, b                                          ; $5eba: $58

jr_07a_5ebb:
	jr c, jr_07a_5ef2                                ; $5ebb: $38 $35

	rla                                              ; $5ebd: $17
	inc d                                            ; $5ebe: $14
	add hl, bc                                       ; $5ebf: $09
	inc d                                            ; $5ec0: $14
	add hl, bc                                       ; $5ec1: $09
	ld [$2008], sp                                   ; $5ec2: $08 $08 $20
	inc d                                            ; $5ec5: $14
	ld h, h                                          ; $5ec6: $64
	pop af                                           ; $5ec7: $f1

jr_07a_5ec8:
	ld d, a                                          ; $5ec8: $57
	jr c, jr_07a_5ebb                                ; $5ec9: $38 $f0

	call $f35b                                       ; $5ecb: $cd $5b $f3
	and b                                            ; $5ece: $a0
	ldh a, [rAUD3LEVEL]                              ; $5ecf: $f0 $1c
	ld h, d                                          ; $5ed1: $62
	pop af                                           ; $5ed2: $f1
	jr c, jr_07a_5ec8                                ; $5ed3: $38 $f3

	ld l, [hl]                                       ; $5ed5: $6e
	ld a, $3f                                        ; $5ed6: $3e $3f
	ld a, [bc]                                       ; $5ed8: $0a
	ldh a, [$a3]                                     ; $5ed9: $f0 $a3
	ld e, b                                          ; $5edb: $58
	jr c, jr_07a_5f13                                ; $5edc: $38 $35

	add hl, bc                                       ; $5ede: $09
	ld [$2008], sp                                   ; $5edf: $08 $08 $20
	inc d                                            ; $5ee2: $14
	ldh a, [c]                                       ; $5ee3: $f2
	sbc l                                            ; $5ee4: $9d
	pop af                                           ; $5ee5: $f1
	ld h, c                                          ; $5ee6: $61

jr_07a_5ee7:
	ld h, d                                          ; $5ee7: $62
	pop af                                           ; $5ee8: $f1
	add d                                            ; $5ee9: $82
	ldh a, [c]                                       ; $5eea: $f2
	sbc a                                            ; $5eeb: $9f
	ld a, $52                                        ; $5eec: $3e $52
	ld d, c                                          ; $5eee: $51
	dec [hl]                                         ; $5eef: $35
	ld a, [bc]                                       ; $5ef0: $0a
	ldh a, [c]                                       ; $5ef1: $f2

jr_07a_5ef2:
	and b                                            ; $5ef2: $a0
	ldh a, [c]                                       ; $5ef3: $f2
	add hl, sp                                       ; $5ef4: $39
	pop af                                           ; $5ef5: $f1
	ld e, d                                          ; $5ef6: $5a
	di                                               ; $5ef7: $f3
	dec c                                            ; $5ef8: $0d
	ldh a, [c]                                       ; $5ef9: $f2
	add hl, sp                                       ; $5efa: $39
	ldh a, [$6e]                                     ; $5efb: $f0 $6e
	ldh a, [rDIV]                                    ; $5efd: $f0 $04
	ld h, l                                          ; $5eff: $65
	ld h, d                                          ; $5f00: $62
	ldh a, [c]                                       ; $5f01: $f2
	and d                                            ; $5f02: $a2
	ld a, $3f                                        ; $5f03: $3e $3f
	ldh a, [$a3]                                     ; $5f05: $f0 $a3
	ld e, b                                          ; $5f07: $58
	jr c, jr_07a_5f3f                                ; $5f08: $38 $35

	add hl, bc                                       ; $5f0a: $09
	ld [$2008], sp                                   ; $5f0b: $08 $08 $20
	inc d                                            ; $5f0e: $14
	ldh a, [$e9]                                     ; $5f0f: $f0 $e9
	ldh a, [$0b]                                     ; $5f11: $f0 $0b

jr_07a_5f13:
	ld b, d                                          ; $5f13: $42
	di                                               ; $5f14: $f3
	and b                                            ; $5f15: $a0
	ldh a, [rAUD3LEVEL]                              ; $5f16: $f0 $1c
	ld h, d                                          ; $5f18: $62
	pop af                                           ; $5f19: $f1
	add d                                            ; $5f1a: $82
	ldh a, [c]                                       ; $5f1b: $f2
	sbc a                                            ; $5f1c: $9f
	ld a, $3f                                        ; $5f1d: $3e $3f
	jr c, jr_07a_5f73                                ; $5f1f: $38 $52

	ld d, c                                          ; $5f21: $51
	dec [hl]                                         ; $5f22: $35
	add hl, bc                                       ; $5f23: $09
	ld [$2008], sp                                   ; $5f24: $08 $08 $20
	inc d                                            ; $5f27: $14
	ldh a, [$e9]                                     ; $5f28: $f0 $e9
	ldh a, [$0b]                                     ; $5f2a: $f0 $0b
	ld b, d                                          ; $5f2c: $42
	di                                               ; $5f2d: $f3
	and b                                            ; $5f2e: $a0
	ldh a, [rAUD3LEVEL]                              ; $5f2f: $f0 $1c
	ld d, e                                          ; $5f31: $53
	pop af                                           ; $5f32: $f1
	add d                                            ; $5f33: $82
	ldh a, [c]                                       ; $5f34: $f2
	sbc a                                            ; $5f35: $9f
	ld c, d                                          ; $5f36: $4a
	ld e, h                                          ; $5f37: $5c
	ld d, d                                          ; $5f38: $52
	ld a, c                                          ; $5f39: $79
	ld b, c                                          ; $5f3a: $41
	ld a, [bc]                                       ; $5f3b: $0a
	ld c, d                                          ; $5f3c: $4a
	ld a, $3d                                        ; $5f3d: $3e $3d

jr_07a_5f3f:
	dec [hl]                                         ; $5f3f: $35
	rla                                              ; $5f40: $17
	inc d                                            ; $5f41: $14
	add hl, bc                                       ; $5f42: $09
	ld [$2008], sp                                   ; $5f43: $08 $08 $20
	inc d                                            ; $5f46: $14
	ldh a, [rOCPS]                                   ; $5f47: $f0 $6a
	ldh a, [$9f]                                     ; $5f49: $f0 $9f
	ld c, d                                          ; $5f4b: $4a
	pop af                                           ; $5f4c: $f1
	ld b, b                                          ; $5f4d: $40
	ldh a, [rSC]                                     ; $5f4e: $f0 $02
	ld e, c                                          ; $5f50: $59
	ld d, e                                          ; $5f51: $53
	ld c, d                                          ; $5f52: $4a
	ld d, d                                          ; $5f53: $52
	ld a, $3d                                        ; $5f54: $3e $3d
	dec [hl]                                         ; $5f56: $35
	ld a, [bc]                                       ; $5f57: $0a
	ldh a, [$c2]                                     ; $5f58: $f0 $c2
	ld e, c                                          ; $5f5a: $59
	ldh a, [rBCPD]                                   ; $5f5b: $f0 $69
	ldh a, [$03]                                     ; $5f5d: $f0 $03
	ld a, [hl-]                                      ; $5f5f: $3a
	ld e, d                                          ; $5f60: $5a
	ld h, d                                          ; $5f61: $62
	pop af                                           ; $5f62: $f1
	add d                                            ; $5f63: $82
	ldh a, [c]                                       ; $5f64: $f2
	sbc a                                            ; $5f65: $9f
	ld a, $3f                                        ; $5f66: $3e $3f
	ldh a, [$a3]                                     ; $5f68: $f0 $a3

jr_07a_5f6a:
	ld e, b                                          ; $5f6a: $58
	jr c, jr_07a_5fa2                                ; $5f6b: $38 $35

	rla                                              ; $5f6d: $17
	inc d                                            ; $5f6e: $14
	add hl, bc                                       ; $5f6f: $09
	ld [$2008], sp                                   ; $5f70: $08 $08 $20

jr_07a_5f73:
	inc d                                            ; $5f73: $14
	pop af                                           ; $5f74: $f1
	jr c, jr_07a_5f6a                                ; $5f75: $38 $f3

	ld l, [hl]                                       ; $5f77: $6e
	ld e, b                                          ; $5f78: $58
	ld c, l                                          ; $5f79: $4d
	dec a                                            ; $5f7a: $3d
	di                                               ; $5f7b: $f3
	and b                                            ; $5f7c: $a0
	ldh a, [rAUD3LEVEL]                              ; $5f7d: $f0 $1c
	ld d, e                                          ; $5f7f: $53
	ldh a, [$f5]                                     ; $5f80: $f0 $f5
	jr c, jr_07a_5fd6                                ; $5f82: $38 $52

	ld d, c                                          ; $5f84: $51
	dec [hl]                                         ; $5f85: $35
	ld a, [bc]                                       ; $5f86: $0a
	pop af                                           ; $5f87: $f1
	add d                                            ; $5f88: $82
	ldh a, [c]                                       ; $5f89: $f2
	sbc a                                            ; $5f8a: $9f
	ld a, $3f                                        ; $5f8b: $3e $3f
	ldh a, [$a3]                                     ; $5f8d: $f0 $a3
	ld e, b                                          ; $5f8f: $58
	jr c, @+$37                                      ; $5f90: $38 $35

	rla                                              ; $5f92: $17
	inc d                                            ; $5f93: $14
	add hl, bc                                       ; $5f94: $09
	ld [$2008], sp                                   ; $5f95: $08 $08 $20
	inc d                                            ; $5f98: $14
	ldh a, [$2f]                                     ; $5f99: $f0 $2f
	ldh a, [$7c]                                     ; $5f9b: $f0 $7c
	ld h, l                                          ; $5f9d: $65
	ldh a, [$7b]                                     ; $5f9e: $f0 $7b
	ldh a, [$03]                                     ; $5fa0: $f0 $03

jr_07a_5fa2:
	ld e, b                                          ; $5fa2: $58
	ld c, l                                          ; $5fa3: $4d
	ld d, d                                          ; $5fa4: $52
	ld a, $3d                                        ; $5fa5: $3e $3d
	dec [hl]                                         ; $5fa7: $35
	ld e, $f1                                        ; $5fa8: $1e $f1
	ld d, c                                          ; $5faa: $51
	inc d                                            ; $5fab: $14
	add hl, bc                                       ; $5fac: $09


MainScript00::
	add hl, bc                                       ; $5fad: $09
	add hl, de                                       ; $5fae: $19
	pop bc                                           ; $5faf: $c1
	cp l                                             ; $5fb0: $bd
	ret nc                                           ; $5fb1: $d0

; run a loop 3 times, after setting task params (3:60ca)
	add d                                            ; $5fb2: $82
	pop bc                                           ; $5fb3: $c1
	or [hl]                                          ; $5fb4: $b6

; loop 1 -to 5fc8
; 1 - num task param bytes
; d0 - task param, yields $00
; 03 - num bytes to skip to next loop
; e4 - opcode to execute
	ld bc, $03d0                                     ; $5fb5: $01 $d0 $03

	db $e4                                           ; $5fb8: $e4
	nop                                              ; $5fb9: $00
	rrca                                             ; $5fba: $0f

; loop 2 - to script $70, offset 0
	ld bc, $04d1                                     ; $5fbb: $01 $d1 $04

	push hl                                          ; $5fbe: $e5
	ld [hl], b                                       ; $5fbf: $70
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00

; loop 3 - to 7b:4df5
	ld bc, $03d2                                     ; $5fc2: $01 $d2 $03

	db $e4                                           ; $5fc5: $e4
	ld l, $2f                                        ; $5fc6: $2e $2f


; --------------------------------------------------------------------


; stop at $6000
	db $09, $36
	
; loop 1 time for ctrl code 4x
	db $40

; loop 1 - read 3 bytes
	add b                                            ; $5fcb: $80
	and b                                            ; $5fcc: $a0
	nop                                              ; $5fcd: $00

; opcode fb - conditional exec of a script based on next task params
	ei                                               ; $5fce: $fb

; task opcode fb - compare next 2 task params
	ei                                               ; $5fcf: $fb

; -- task opcode c169 - has 1 task param (dd)
	pop bc                                           ; $5fd0: $c1

jr_07a_5fd1:
	ld l, c                                          ; $5fd1: $69
	db $dd                                           ; $5fd2: $dd

; -- task opcode d1 - nybble
	pop de                                           ; $5fd3: $d1

; opcode fb above determines if 4 bytes below 4 are exec'd
	inc b                                            ; $5fd4: $04
	nop                                              ; $5fd5: $00

jr_07a_5fd6:
	add b                                            ; $5fd6: $80
	and b                                            ; $5fd7: $a0
	nop                                              ; $5fd8: $00

; can skip to here due to opcode fb - execs any script if a cond matches
	db $fd                                           ; $5fd9: $fd

; do at most $25 bytes (stop at $6000)
	dec h                                            ; $5fda: $25

; temp task with 0 task params
	pop bc                                           ; $5fdb: $c1
	and d                                            ; $5fdc: $a2

; to 7b:4c22
	ld bc, $03d0                                     ; $5fdd: $01 $d0 $03
	db $e4                                           ; $5fe0: $e4
	inc l                                            ; $5fe1: $2c
	ld b, c                                          ; $5fe2: $41

; to $6000
	ld bc, $05d1                                     ; $5fe3: $01 $d1 $05
	pop bc                                           ; $5fe6: $c1
	and l                                            ; $5fe7: $a5
	db $e4                                           ; $5fe8: $e4
	nop                                              ; $5fe9: $00
	rla                                              ; $5fea: $17

; to 7b:4d15
	ld bc, $03d2                                     ; $5feb: $01 $d2 $03
	db $e4                                           ; $5fee: $e4
	dec l                                            ; $5fef: $2d
	db $26
	
; to 7b:4c86
	db $01
	db $d3                                           ; $5ff2: $d3
	inc bc                                           ; $5ff3: $03
	db $e4                                           ; $5ff4: $e4
	inc l                                            ; $5ff5: $2c
	sub c                                            ; $5ff6: $91
	
; just run script of 7 bytes
	nop                                              ; $5ff7: $00
	rlca                                             ; $5ff8: $07
	pop bc                                           ; $5ff9: $c1
	pop de                                           ; $5ffa: $d1
	pop bc                                           ; $5ffb: $c1
	or a                                             ; $5ffc: $b7
	pop bc                                           ; $5ffd: $c1
	dec d                                            ; $5ffe: $15
	pop de                                           ; $5fff: $d1


; --------------------------------------------------------------------

; NEW GAME

	add hl, bc                                       ; $6000: $09
	jr z, @-$3d                                      ; $6001: $28 $c1

	cp c                                             ; $6003: $b9
	ret nz                                           ; $6004: $c0

	rrca                                             ; $6005: $0f
	db $e3                                           ; $6006: $e3
	ld bc, $c127                                     ; $6007: $01 $27 $c1

; d0 is a script opcode, it will pull 1 b:hl (8b,00,00), 1 task param (b0,01)
	call z, $8bd0                                    ; $600a: $cc $d0 $8b
	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	or b                                             ; $600f: $b0
	db $01
	
; 8b,00,0c - b0,01
	db $d0, $8b
	nop                                              ; $6013: $00
	inc c                                            ; $6014: $0c
	or b                                             ; $6015: $b0
	db $01
	
; 8f,00,18 - d1
	db $d0, $8f
	nop                                              ; $6019: $00
	jr @-$2d                                         ; $601a: $18 $d1

; 8b,00,28 - b0,02
	ret nc                                           ; $601c: $d0

	adc e                                            ; $601d: $8b
	nop                                              ; $601e: $00
	jr z, jr_07a_5fd1                                ; $601f: $28 $b0

	ld [bc], a                                       ; $6021: $02

;
	ret nz                                           ; $6022: $c0

	add hl, bc                                       ; $6023: $09
	db $e3                                           ; $6024: $e3
	nop                                              ; $6025: $00
	ld h, b                                          ; $6026: $60

;
	db $e4                                           ; $6027: $e4
	nop                                              ; $6028: $00
	ld [bc], a                                       ; $6029: $02


; --------------------------------------------------------------------

; Prologue choice

; text $0001 will go to script 4:0000
	ld [$001a], sp                                   ; $602a: $08 $1a $00
	ld bc, $0409                                     ; $602d: $01 $09 $04
	push hl                                          ; $6030: $e5
	inc b                                            ; $6031: $04
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00

; text $0009 will run below
; No prologue option
	nop                                              ; $6034: $00
	add hl, bc                                       ; $6035: $09
	add hl, bc                                       ; $6036: $09
	ld c, $c0                                        ; $6037: $0e $c0
	set 0, c                                         ; $6039: $cb $c1
	ld e, e                                          ; $603b: $5b
	pop bc                                           ; $603c: $c1
	dec sp                                           ; $603d: $3b
	pop hl                                           ; $603e: $e1
	inc b                                            ; $603f: $04
	inc bc                                           ; $6040: $03
	ld a, [hl]                                       ; $6041: $7e
	push hl                                          ; $6042: $e5
	ld bc, $0000                                     ; $6043: $01 $00 $00


; --------------------------------------------------------------------


; ???


	add hl, bc                                       ; $6046: $09
	rlca                                             ; $6047: $07

;
	nop                                              ; $6048: $00

	add b                                            ; $6049: $80
	nop                                              ; $604a: $00
	inc [hl]                                         ; $604b: $34

;
	db $e4                                           ; $604c: $e4
	nop                                              ; $604d: $00
	ld [bc], a                                       ; $604e: $02


; --------------------------------------------------------------------


	add hl, bc                                       ; $604f: $09
	pop bc                                           ; $6050: $c1
	or c                                             ; $6051: $b1

;
	ld b, b                                          ; $6052: $40
	add b                                            ; $6053: $80
	nop                                              ; $6054: $00
	dec [hl]                                         ; $6055: $35

;
	ret nc                                           ; $6056: $d0

	add e                                            ; $6057: $83
	nop                                              ; $6058: $00
	ld [hl], $c0                                     ; $6059: $36 $c0
	ld sp, hl                                        ; $605b: $f9

;
	pop bc                                           ; $605c: $c1
	ld b, a                                          ; $605d: $47

	add e                                            ; $605e: $83
	nop                                              ; $605f: $00
	db $36
	
; $6b bytes in this block (ExecAnyScriptsWithAtLeast1MatchingCond)
	db $fd
	ld l, e                                          ; $6062: $6b

; task params to check for equality
	db $83, $00, $36
	
; opt 0
	db $01
	ret nc                                           ; $6067: $d0

	ld a, [bc]                                       ; $6068: $0a

; opt 0
	ret nc                                           ; $6069: $d0

	adc e                                            ; $606a: $8b
	nop                                              ; $606b: $00
	ld a, [hl-]                                      ; $606c: $3a
	or b                                             ; $606d: $b0
	inc bc                                           ; $606e: $03
	nop                                              ; $606f: $00
	add b                                            ; $6070: $80
	and b                                            ; $6071: $a0
	db $01
	
; opt 1
	db $01, $d1
	ld a, [bc]                                       ; $6075: $0a
	ret nc                                           ; $6076: $d0

	adc e                                            ; $6077: $8b
	nop                                              ; $6078: $00
	ld a, [hl-]                                      ; $6079: $3a
	or b                                             ; $607a: $b0
	inc b                                            ; $607b: $04
	nop                                              ; $607c: $00
	add b                                            ; $607d: $80
	and b                                            ; $607e: $a0
	ld [bc], a                                       ; $607f: $02

; opt 2
	ld bc, $0ad2                                     ; $6080: $01 $d2 $0a
	ret nc                                           ; $6083: $d0

	adc e                                            ; $6084: $8b
	nop                                              ; $6085: $00
	ld a, [hl-]                                      ; $6086: $3a
	or b                                             ; $6087: $b0
	dec b                                            ; $6088: $05
	nop                                              ; $6089: $00
	add b                                            ; $608a: $80
	and b                                            ; $608b: $a0
	inc bc                                           ; $608c: $03

; opt 3
	ld bc, $0ad3                                     ; $608d: $01 $d3 $0a
	ret nc                                           ; $6090: $d0

	adc e                                            ; $6091: $8b
	nop                                              ; $6092: $00
	ld a, [hl-]                                      ; $6093: $3a
	or b                                             ; $6094: $b0
	ld b, $00                                        ; $6095: $06 $00
	add b                                            ; $6097: $80
	and b                                            ; $6098: $a0
	inc b                                            ; $6099: $04

; opt 4
	ld bc, $0ad7                                     ; $609a: $01 $d7 $0a
	ret nc                                           ; $609d: $d0

	adc e                                            ; $609e: $8b
	nop                                              ; $609f: $00
	ld a, [hl-]                                      ; $60a0: $3a
	or b                                             ; $60a1: $b0
	rlca                                             ; $60a2: $07
	nop                                              ; $60a3: $00
	add b                                            ; $60a4: $80
	and b                                            ; $60a5: $a0
	dec b                                            ; $60a6: $05

; opt 5
	ld bc, $0ad8                                     ; $60a7: $01 $d8 $0a
	ret nc                                           ; $60aa: $d0

	adc e                                            ; $60ab: $8b
	nop                                              ; $60ac: $00
	ld a, [hl-]                                      ; $60ad: $3a
	or b                                             ; $60ae: $b0
	ld [$8000], sp                                   ; $60af: $08 $00 $80
	and b                                            ; $60b2: $a0
	db $06
	
; opt 6
	db $01

jr_07a_60b5:
	jp c, $d00a                                      ; $60b5: $da $0a $d0

	adc e                                            ; $60b8: $8b
	nop                                              ; $60b9: $00
	ld a, [hl-]                                      ; $60ba: $3a
	or b                                             ; $60bb: $b0
	add hl, bc                                       ; $60bc: $09
	nop                                              ; $60bd: $00
	add b                                            ; $60be: $80
	and b                                            ; $60bf: $a0
	rlca                                             ; $60c0: $07

; opt 7
	ld bc, $0add                                     ; $60c1: $01 $dd $0a
	ret nc                                           ; $60c4: $d0

	adc e                                            ; $60c5: $8b
	nop                                              ; $60c6: $00
	ld a, [hl-]                                      ; $60c7: $3a
	or b                                             ; $60c8: $b0
	ld a, [bc]                                       ; $60c9: $0a
	nop                                              ; $60ca: $00
	add b                                            ; $60cb: $80

jr_07a_60cc:
	and b                                            ; $60cc: $a0
	db $08


; --------------------------------------------------------------------
	
; 1 loop
	db $60
	
; for every loop, get task param bytes
	db $80, $00
	ld b, [hl]                                       ; $60d1: $46
	daa                                              ; $60d2: $27
	ld h, b                                          ; $60d3: $60
	pop af                                           ; $60d4: $f1
	add b                                            ; $60d5: $80
	nop                                              ; $60d6: $00
	ld b, a                                          ; $60d7: $47
	db $10                                           ; $60d8: $10
	ret nz                                           ; $60d9: $c0

	ld bc, $01a0                                     ; $60da: $01 $a0 $01
	nop                                              ; $60dd: $00
	db $10                                           ; $60de: $10
	ret nc                                           ; $60df: $d0

	adc a                                            ; $60e0: $8f
	nop                                              ; $60e1: $00
	jr jr_07a_60b5                                   ; $60e2: $18 $d1

	ret nc                                           ; $60e4: $d0

	adc a                                            ; $60e5: $8f
	nop                                              ; $60e6: $00
	ld c, b                                          ; $60e7: $48
	pop de                                           ; $60e8: $d1
	db $10                                           ; $60e9: $10
	ret nz                                           ; $60ea: $c0

	ld bc, $01a0                                     ; $60eb: $01 $a0 $01
	nop                                              ; $60ee: $00
	dec d                                            ; $60ef: $15
	ret nc                                           ; $60f0: $d0

	adc a                                            ; $60f1: $8f
	nop                                              ; $60f2: $00

Jump_07a_60f3:
	jr jr_07a_60cc                                   ; $60f3: $18 $d7

	ret nc                                           ; $60f5: $d0

	adc a                                            ; $60f6: $8f
	nop                                              ; $60f7: $00
	ld c, b                                          ; $60f8: $48
	rst SubAFromHL                                          ; $60f9: $d7
	cp [hl]                                          ; $60fa: $be
	add c                                            ; $60fb: $81
	add e                                            ; $60fc: $83
	nop                                              ; $60fd: $00
	ld [hl], $0e                                     ; $60fe: $36 $0e
	ret nc                                           ; $6100: $d0

	pop de                                           ; $6101: $d1
	jp nc, $d4d3                                     ; $6102: $d2 $d3 $d4

	push de                                          ; $6105: $d5
	sub $d7                                          ; $6106: $d6 $d7
	ret c                                            ; $6108: $d8

	reti                                             ; $6109: $d9


	jp c, $dcdb                                      ; $610a: $da $db $dc

	db $dd                                           ; $610d: $dd
	ld b, $c0                                        ; $610e: $06 $c0
	ld bc, $01a0                                     ; $6110: $01 $a0 $01
	nop                                              ; $6113: $00
	dec hl                                           ; $6114: $2b
	nop                                              ; $6115: $00
	and d                                            ; $6116: $a2
	ret nc                                           ; $6117: $d0


; --------------------------------------------------------------------


	adc e                                            ; $6118: $8b
	nop                                              ; $6119: $00
	ld a, [hl-]                                      ; $611a: $3a
	or b                                             ; $611b: $b0
	ld bc, $fefb                                     ; $611c: $01 $fb $fe
	ld c, $fc                                        ; $611f: $0e $fc
	ret nz                                           ; $6121: $c0

	ld [hl], c                                       ; $6122: $71
	ret nz                                           ; $6123: $c0

	ld h, l                                          ; $6124: $65
	db $fc                                           ; $6125: $fc
	ret nz                                           ; $6126: $c0

	ld [hl], d                                       ; $6127: $72
	ret nz                                           ; $6128: $c0

	ld h, [hl]                                       ; $6129: $66
	pop af                                           ; $612a: $f1
	add b                                            ; $612b: $80
	and b                                            ; $612c: $a0
	add hl, bc                                       ; $612d: $09
	dec hl                                           ; $612e: $2b
	ei                                               ; $612f: $fb
	rst $38                                          ; $6130: $ff
	ld c, $fc                                        ; $6131: $0e $fc
	ret nz                                           ; $6133: $c0

	ld h, l                                          ; $6134: $65
	db $d3                                           ; $6135: $d3
	cp $08                                           ; $6136: $fe $08
	db $fc                                           ; $6138: $fc
	ret nz                                           ; $6139: $c0

	ld h, l                                          ; $613a: $65
	call nc, $c0fa                                   ; $613b: $d4 $fa $c0
	ld h, [hl]                                       ; $613e: $66
	db $d3                                           ; $613f: $d3
	add hl, de                                       ; $6140: $19
	ei                                               ; $6141: $fb
	cp $0a                                           ; $6142: $fe $0a
	db $fc                                           ; $6144: $fc
	ret nz                                           ; $6145: $c0

	ld [hl], c                                       ; $6146: $71
	ret nz                                           ; $6147: $c0

	ld [hl], h                                       ; $6148: $74
	db $fc                                           ; $6149: $fc
	ret nz                                           ; $614a: $c0

	ld [hl], d                                       ; $614b: $72
	ret nz                                           ; $614c: $c0

	ld [hl], l                                       ; $614d: $75
	dec bc                                           ; $614e: $0b

jr_07a_614f:
	add b                                            ; $614f: $80
	ret nz                                           ; $6150: $c0

	dec de                                           ; $6151: $1b
	ret nc                                           ; $6152: $d0

	ld [bc], a                                       ; $6153: $02
	ret nc                                           ; $6154: $d0

	pop de                                           ; $6155: $d1
	inc bc                                           ; $6156: $03
	db $e4                                           ; $6157: $e4
	daa                                              ; $6158: $27
	ld l, e                                          ; $6159: $6b
	ei                                               ; $615a: $fb
	cp $0d                                           ; $615b: $fe $0d
	db $fc                                           ; $615d: $fc
	ret nz                                           ; $615e: $c0

	add b                                            ; $615f: $80
	db $d3                                           ; $6160: $d3
	db $fc                                           ; $6161: $fc
	ret nz                                           ; $6162: $c0

	ld h, l                                          ; $6163: $65
	jp nc, $c0fc                                     ; $6164: $d2 $fc $c0

	ld h, [hl]                                       ; $6167: $66
	ldh [rAUD3LEN], a                                ; $6168: $e0 $1b
	ld [hl+], a                                      ; $616a: $22
	ei                                               ; $616b: $fb
	cp $06                                           ; $616c: $fe $06
	add b                                            ; $616e: $80
	nop                                              ; $616f: $00
	ld e, b                                          ; $6170: $58

jr_07a_6171:
	add b                                            ; $6171: $80
	nop                                              ; $6172: $00
	ld e, c                                          ; $6173: $59
	jr jr_07a_6171                                   ; $6174: $18 $fb

	rst $38                                          ; $6176: $ff
	ld de, $c1fc                                     ; $6177: $11 $fc $c1
	nop                                              ; $617a: $00
	ret nc                                           ; $617b: $d0

	cp $08                                           ; $617c: $fe $08
	ei                                               ; $617e: $fb
	ret nz                                           ; $617f: $c0

	or l                                             ; $6180: $b5
	pop de                                           ; $6181: $d1
	ld a, [$b5c0]                                    ; $6182: $fa $c0 $b5
	db $dd                                           ; $6185: $dd
	add b                                            ; $6186: $80
	nop                                              ; $6187: $00
	ld e, d                                          ; $6188: $5a
	inc bc                                           ; $6189: $03
	db $e4                                           ; $618a: $e4
	jr z, jr_07a_6204                                ; $618b: $28 $77

	ei                                               ; $618d: $fb
	cp $1a                                           ; $618e: $fe $1a
	pop af                                           ; $6190: $f1
	add b                                            ; $6191: $80
	nop                                              ; $6192: $00
	ld e, e                                          ; $6193: $5b
	ld sp, hl                                        ; $6194: $f9
	ret nz                                           ; $6195: $c0

	dec d                                            ; $6196: $15
	jp c, $32e0                                      ; $6197: $da $e0 $32

	db $fc                                           ; $619a: $fc
	adc e                                            ; $619b: $8b
	nop                                              ; $619c: $00
	jr z, jr_07a_614f                                ; $619d: $28 $b0

	dec bc                                           ; $619f: $0b
	rst $38                                          ; $61a0: $ff
	ld [$c0fc], sp                                   ; $61a1: $08 $fc $c0
	ld h, l                                          ; $61a4: $65
	call c, $c0fc                                    ; $61a5: $dc $fc $c0
	ld h, l                                          ; $61a8: $65
	pop de                                           ; $61a9: $d1
	ld [$19b0], sp                                   ; $61aa: $08 $b0 $19
	inc bc                                           ; $61ad: $03
	db $e4                                           ; $61ae: $e4
	add hl, hl                                       ; $61af: $29
	sub l                                            ; $61b0: $95
	rst $38                                          ; $61b1: $ff
	nop                                              ; $61b2: $00
	ret nz                                           ; $61b3: $c0

	ld bc, $01a0                                     ; $61b4: $01 $a0 $01
	nop                                              ; $61b7: $00
	ld [hl-], a                                      ; $61b8: $32
	ei                                               ; $61b9: $fb
	cp $0d                                           ; $61ba: $fe $0d

jr_07a_61bc:
	db $fc                                           ; $61bc: $fc
	ret nz                                           ; $61bd: $c0

	ld h, h                                          ; $61be: $64
	ret nc                                           ; $61bf: $d0

	db $fc                                           ; $61c0: $fc
	ret nz                                           ; $61c1: $c0

	ld h, l                                          ; $61c2: $65
	jp nc, $c0fc                                     ; $61c3: $d2 $fc $c0

	ld h, [hl]                                       ; $61c6: $66
	ldh [rAUD3LEN], a                                ; $61c7: $e0 $1b
	ld e, $01                                        ; $61c9: $1e $01
	add b                                            ; $61cb: $80
	and b                                            ; $61cc: $a0
	ld bc, $a080                                     ; $61cd: $01 $80 $a0
	ld a, [bc]                                       ; $61d0: $0a
	ld [bc], a                                       ; $61d1: $02
	add b                                            ; $61d2: $80
	and b                                            ; $61d3: $a0
	ld [bc], a                                       ; $61d4: $02
	add b                                            ; $61d5: $80
	and b                                            ; $61d6: $a0
	inc bc                                           ; $61d7: $03
	add b                                            ; $61d8: $80
	and b                                            ; $61d9: $a0
	inc b                                            ; $61da: $04

jr_07a_61db:
	inc bc                                           ; $61db: $03
	add b                                            ; $61dc: $80
	and b                                            ; $61dd: $a0
	dec b                                            ; $61de: $05
	add b                                            ; $61df: $80
	and b                                            ; $61e0: $a0
	ld b, $80                                        ; $61e1: $06 $80
	and b                                            ; $61e3: $a0
	rlca                                             ; $61e4: $07
	add b                                            ; $61e5: $80
	and b                                            ; $61e6: $a0
	ld [$8041], sp                                   ; $61e7: $08 $41 $80
	nop                                              ; $61ea: $00
	ld e, h                                          ; $61eb: $5c
	add b                                            ; $61ec: $80
	nop                                              ; $61ed: $00
	ld e, l                                          ; $61ee: $5d
	ld b, b                                          ; $61ef: $40
	add b                                            ; $61f0: $80
	nop                                              ; $61f1: $00
	ld e, [hl]                                       ; $61f2: $5e
	ei                                               ; $61f3: $fb
	add b                                            ; $61f4: $80
	nop                                              ; $61f5: $00
	ld b, [hl]                                       ; $61f6: $46

jr_07a_61f7:
	inc b                                            ; $61f7: $04
	nop                                              ; $61f8: $00
	add b                                            ; $61f9: $80
	nop                                              ; $61fa: $00
	ld e, a                                          ; $61fb: $5f
	pop hl                                           ; $61fc: $e1
	ld [bc], a                                       ; $61fd: $02
	nop                                              ; $61fe: $00
	sub c                                            ; $61ff: $91
	db $e4                                           ; $6200: $e4
	nop                                              ; $6201: $00
	ld [bc], a                                       ; $6202: $02



; --------------------------------------------------------------------



	add hl, bc                                       ; $6203: $09

jr_07a_6204:
	pop bc                                           ; $6204: $c1
	ld sp, $bdc1                                     ; $6205: $31 $c1 $bd
	ret nc                                           ; $6208: $d0

	ld h, b                                          ; $6209: $60
	cp $0a                                           ; $620a: $fe $0a
	db $fd                                           ; $620c: $fd
	adc e                                            ; $620d: $8b
	nop                                              ; $620e: $00
	ld a, [hl-]                                      ; $620f: $3a
	or b                                             ; $6210: $b0
	ld bc, $80f1                                     ; $6211: $01 $f1 $80
	nop                                              ; $6214: $00
	ld b, [hl]                                       ; $6215: $46
	rlca                                             ; $6216: $07
	ret nc                                           ; $6217: $d0

	add h                                            ; $6218: $84
	nop                                              ; $6219: $00
	ld h, b                                          ; $621a: $60
	ret nz                                           ; $621b: $c0

	inc bc                                           ; $621c: $03
	reti                                             ; $621d: $d9


	add hl, bc                                       ; $621e: $09
	ret nc                                           ; $621f: $d0

	add h                                            ; $6220: $84
	nop                                              ; $6221: $00
	ld h, b                                          ; $6222: $60

jr_07a_6223:
	ret nz                                           ; $6223: $c0

	inc bc                                           ; $6224: $03
	adc a                                            ; $6225: $8f

jr_07a_6226:
	nop                                              ; $6226: $00
	jr jr_07a_6226                                   ; $6227: $18 $fd

	pop bc                                           ; $6229: $c1
	inc c                                            ; $622a: $0c

jr_07a_622b:
	add h                                            ; $622b: $84
	nop                                              ; $622c: $00
	ld h, b                                          ; $622d: $60
	inc bc                                           ; $622e: $03
	pop de                                           ; $622f: $d1
	jp nc, $1cd3                                     ; $6230: $d2 $d3 $1c

	ret nc                                           ; $6233: $d0

	adc a                                            ; $6234: $8f
	nop                                              ; $6235: $00
	jr jr_07a_61bc                                   ; $6236: $18 $84

	nop                                              ; $6238: $00
	ld h, b                                          ; $6239: $60
	ld b, b                                          ; $623a: $40
	add b                                            ; $623b: $80
	nop                                              ; $623c: $00
	ld b, [hl]                                       ; $623d: $46
	ret nc                                           ; $623e: $d0

	adc e                                            ; $623f: $8b
	and b                                            ; $6240: $a0
	dec bc                                           ; $6241: $0b
	or b                                             ; $6242: $b0
	inc c                                            ; $6243: $0c
	ldh [rAUD3ENA], a                                ; $6244: $e0 $1a
	dec c                                            ; $6246: $0d
	pop bc                                           ; $6247: $c1
	ld de, $0084                                     ; $6248: $11 $84 $00
	ld h, b                                          ; $624b: $60
	db $e4                                           ; $624c: $e4
	nop                                              ; $624d: $00
	ld [$d401], a                                    ; $624e: $ea $01 $d4
	jr jr_07a_6223                                   ; $6251: $18 $d0

	adc a                                            ; $6253: $8f
	nop                                              ; $6254: $00
	jr jr_07a_61db                                   ; $6255: $18 $84

	nop                                              ; $6257: $00
	ld h, b                                          ; $6258: $60
	ret nc                                           ; $6259: $d0

	adc e                                            ; $625a: $8b
	and b                                            ; $625b: $a0
	dec bc                                           ; $625c: $0b
	or b                                             ; $625d: $b0
	dec c                                            ; $625e: $0d
	ldh [rAUD2HIGH], a                               ; $625f: $e0 $19
	ldh a, [c]                                       ; $6261: $f2
	pop bc                                           ; $6262: $c1
	ld de, $0084                                     ; $6263: $11 $84 $00
	ld h, b                                          ; $6266: $60
	db $e4                                           ; $6267: $e4
	nop                                              ; $6268: $00
	rst GetHLinHL                                          ; $6269: $cf
	ld [bc], a                                       ; $626a: $02
	push de                                          ; $626b: $d5
	sub $18                                          ; $626c: $d6 $18
	ret nc                                           ; $626e: $d0

	adc a                                            ; $626f: $8f
	nop                                              ; $6270: $00
	jr jr_07a_61f7                                   ; $6271: $18 $84

	nop                                              ; $6273: $00
	ld h, b                                          ; $6274: $60
	ret nc                                           ; $6275: $d0

	adc e                                            ; $6276: $8b

jr_07a_6277:
	and b                                            ; $6277: $a0
	dec bc                                           ; $6278: $0b
	or b                                             ; $6279: $b0
	ld bc, $19e0                                     ; $627a: $01 $e0 $19
	sub $c1                                          ; $627d: $d6 $c1
	ld de, $0084                                     ; $627f: $11 $84 $00
	ld h, b                                          ; $6282: $60
	db $e4                                           ; $6283: $e4
	nop                                              ; $6284: $00
	or e                                             ; $6285: $b3
	ld bc, $16d7                                     ; $6286: $01 $d7 $16
	ret nc                                           ; $6289: $d0

	adc a                                            ; $628a: $8f
	nop                                              ; $628b: $00

jr_07a_628c:
	jr @-$7a                                         ; $628c: $18 $84

	nop                                              ; $628e: $00
	ld h, b                                          ; $628f: $60
	ret nc                                           ; $6290: $d0

	adc e                                            ; $6291: $8b
	and b                                            ; $6292: $a0
	dec bc                                           ; $6293: $0b
	or b                                             ; $6294: $b0
	ld bc, $19e0                                     ; $6295: $01 $e0 $19
	cp e                                             ; $6298: $bb
	pop bc                                           ; $6299: $c1
	ld de, $e4d0                                     ; $629a: $11 $d0 $e4
	nop                                              ; $629d: $00
	sbc d                                            ; $629e: $9a
	ld bc, $16d8                                     ; $629f: $01 $d8 $16
	ret nc                                           ; $62a2: $d0

	adc a                                            ; $62a3: $8f
	nop                                              ; $62a4: $00
	jr jr_07a_622b                                   ; $62a5: $18 $84

	nop                                              ; $62a7: $00
	ld h, b                                          ; $62a8: $60
	ret nc                                           ; $62a9: $d0

	adc e                                            ; $62aa: $8b
	and b                                            ; $62ab: $a0
	dec bc                                           ; $62ac: $0b
	or b                                             ; $62ad: $b0
	inc c                                            ; $62ae: $0c
	ldh [rAUD2HIGH], a                               ; $62af: $e0 $19
	and d                                            ; $62b1: $a2
	pop bc                                           ; $62b2: $c1
	ld de, $e4d7                                     ; $62b3: $11 $d7 $e4
	nop                                              ; $62b6: $00
	adc e                                            ; $62b7: $8b
	ld bc, $24d9                                     ; $62b8: $01 $d9 $24
	ret nc                                           ; $62bb: $d0

	adc e                                            ; $62bc: $8b
	and b                                            ; $62bd: $a0
	dec bc                                           ; $62be: $0b
	or b                                             ; $62bf: $b0
	ld bc, $8040                                     ; $62c0: $01 $40 $80
	and b                                            ; $62c3: $a0
	ld bc, $8046                                     ; $62c4: $01 $46 $80
	and b                                            ; $62c7: $a0
	ld [bc], a                                       ; $62c8: $02
	add b                                            ; $62c9: $80
	and b                                            ; $62ca: $a0
	inc bc                                           ; $62cb: $03
	add b                                            ; $62cc: $80
	and b                                            ; $62cd: $a0
	inc b                                            ; $62ce: $04
	add b                                            ; $62cf: $80
	and b                                            ; $62d0: $a0
	dec b                                            ; $62d1: $05
	add b                                            ; $62d2: $80
	and b                                            ; $62d3: $a0
	ld b, $80                                        ; $62d4: $06 $80
	and b                                            ; $62d6: $a0
	rlca                                             ; $62d7: $07
	add b                                            ; $62d8: $80
	and b                                            ; $62d9: $a0
	ld [$0de5], sp                                   ; $62da: $08 $e5 $0d
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	ld bc, $09da                                     ; $62df: $01 $da $09
	ret nc                                           ; $62e2: $d0

	adc e                                            ; $62e3: $8b
	and b                                            ; $62e4: $a0
	dec bc                                           ; $62e5: $0b
	or b                                             ; $62e6: $b0
	ld bc, $02e4                                     ; $62e7: $01 $e4 $02
	ld a, [$db01]                                    ; $62ea: $fa $01 $db
	ld [de], a                                       ; $62ed: $12
	ret nc                                           ; $62ee: $d0

	adc a                                            ; $62ef: $8f
	nop                                              ; $62f0: $00
	jr jr_07a_6277                                   ; $62f1: $18 $84

	nop                                              ; $62f3: $00
	ld h, b                                          ; $62f4: $60
	pop bc                                           ; $62f5: $c1
	or a                                             ; $62f6: $b7
	ret nz                                           ; $62f7: $c0

	db $fc                                           ; $62f8: $fc
	pop hl                                           ; $62f9: $e1
	ld [bc], a                                       ; $62fa: $02
	nop                                              ; $62fb: $00
	sub c                                            ; $62fc: $91
	db $e4                                           ; $62fd: $e4
	rst $38                                          ; $62fe: $ff
	dec b                                            ; $62ff: $05
	ld bc, $12dc                                     ; $6300: $01 $dc $12
	ret nc                                           ; $6303: $d0

	adc a                                            ; $6304: $8f
	nop                                              ; $6305: $00
	jr jr_07a_628c                                   ; $6306: $18 $84

	nop                                              ; $6308: $00
	ld h, b                                          ; $6309: $60
	ret nc                                           ; $630a: $d0

	add b                                            ; $630b: $80
	nop                                              ; $630c: $00
	ld h, l                                          ; $630d: $65
	ret nc                                           ; $630e: $d0

	pop bc                                           ; $630f: $c1
	cp [hl]                                          ; $6310: $be
	jp nc, $2be4                                     ; $6311: $d2 $e4 $2b

	ld a, l                                          ; $6314: $7d
	ld bc, $12dd                                     ; $6315: $01 $dd $12
	ret nc                                           ; $6318: $d0

	adc a                                            ; $6319: $8f
	nop                                              ; $631a: $00
	jr @-$7a                                         ; $631b: $18 $84

	nop                                              ; $631d: $00
	ld h, b                                          ; $631e: $60
	pop bc                                           ; $631f: $c1
	ld d, e                                          ; $6320: $53
	ret nz                                           ; $6321: $c0

	ld hl, sp-$1f                                    ; $6322: $f8 $e1
	ld [bc], a                                       ; $6324: $02
	nop                                              ; $6325: $00
	sub c                                            ; $6326: $91
	db $e4                                           ; $6327: $e4
	cp $db                                           ; $6328: $fe $db
	ld [bc], a                                       ; $632a: $02
	ldh [rAUD1SWEEP], a                              ; $632b: $e0 $10
	add hl, bc                                       ; $632d: $09
	pop bc                                           ; $632e: $c1
	or h                                             ; $632f: $b4
	pop hl                                           ; $6330: $e1
	ld [bc], a                                       ; $6331: $02
	nop                                              ; $6332: $00
	sub c                                            ; $6333: $91
	db $e4                                           ; $6334: $e4
	cp $ce                                           ; $6335: $fe $ce
	add hl, bc                                       ; $6337: $09
	ld [$f4c0], sp                                   ; $6338: $08 $c0 $f4
	add h                                            ; $633b: $84
	nop                                              ; $633c: $00
	ld h, b                                          ; $633d: $60
	db $e4                                           ; $633e: $e4
	add hl, de                                       ; $633f: $19
	inc h                                            ; $6340: $24
	add hl, bc                                       ; $6341: $09
	inc h                                            ; $6342: $24
	ld h, b                                          ; $6343: $60
	add b                                            ; $6344: $80
	nop                                              ; $6345: $00
	inc [hl]                                         ; $6346: $34
	ld [de], a                                       ; $6347: $12
	ld h, b                                          ; $6348: $60
	add b                                            ; $6349: $80
	nop                                              ; $634a: $00
	ld h, [hl]                                       ; $634b: $66
	inc bc                                           ; $634c: $03
	db $e4                                           ; $634d: $e4
	ld bc, $0956                                     ; $634e: $01 $56 $09
	ret nz                                           ; $6351: $c0

	ld bc, $01a0                                     ; $6352: $01 $a0 $01
	nop                                              ; $6355: $00
	scf                                              ; $6356: $37
	db $e4                                           ; $6357: $e4
	cp $ab                                           ; $6358: $fe $ab
	inc c                                            ; $635a: $0c
	ld h, b                                          ; $635b: $60
	add b                                            ; $635c: $80
	nop                                              ; $635d: $00
	ld h, [hl]                                       ; $635e: $66
	inc bc                                           ; $635f: $03
	db $e4                                           ; $6360: $e4
	nop                                              ; $6361: $00
	ld b, $03                                        ; $6362: $06 $03
	db $e4                                           ; $6364: $e4

jr_07a_6365:
	nop                                              ; $6365: $00
	ld e, a                                          ; $6366: $5f
	ld [$005b], sp                                   ; $6367: $08 $5b $00
	ld b, e                                          ; $636a: $43
	add hl, bc                                       ; $636b: $09
	ld hl, $fefb                                     ; $636c: $21 $fb $fe
	dec c                                            ; $636f: $0d
	db $fc                                           ; $6370: $fc
	adc e                                            ; $6371: $8b
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	or b                                             ; $6374: $b0
	ld c, $80                                        ; $6375: $0e $80
	nop                                              ; $6377: $00
	ld h, a                                          ; $6378: $67
	pop af                                           ; $6379: $f1
	add b                                            ; $637a: $80
	nop                                              ; $637b: $00
	ld l, b                                          ; $637c: $68
	ld a, [bc]                                       ; $637d: $0a
	pop bc                                           ; $637e: $c1
	ld d, e                                          ; $637f: $53
	ret nz                                           ; $6380: $c0

	inc d                                            ; $6381: $14
	db $e3                                           ; $6382: $e3
	nop                                              ; $6383: $00
	ld b, d                                          ; $6384: $42
	ldh [rSB], a                                     ; $6385: $e0 $01
	or a                                             ; $6387: $b7
	ret nz                                           ; $6388: $c0

	db $f4                                           ; $6389: $f4
	ret c                                            ; $638a: $d8

	db $e4                                           ; $638b: $e4
	jr jr_07a_6365                                   ; $638c: $18 $d7

	nop                                              ; $638e: $00
	ld c, b                                          ; $638f: $48
	add hl, bc                                       ; $6390: $09
	ld [hl-], a                                      ; $6391: $32
	ret nz                                           ; $6392: $c0

	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	ld c, h                                          ; $6395: $4c
	ld b, d                                          ; $6396: $42
	add b                                            ; $6397: $80
	nop                                              ; $6398: $00
	ld h, [hl]                                       ; $6399: $66
	add b                                            ; $639a: $80
	nop                                              ; $639b: $00
	ld l, c                                          ; $639c: $69
	add b                                            ; $639d: $80
	nop                                              ; $639e: $00
	ld l, d                                          ; $639f: $6a
	ret nz                                           ; $63a0: $c0

	sub e                                            ; $63a1: $93
	ei                                               ; $63a2: $fb
	db $fc                                           ; $63a3: $fc
	adc e                                            ; $63a4: $8b
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	or b                                             ; $63a7: $b0
	ld c, $11                                        ; $63a8: $0e $11
	nop                                              ; $63aa: $00
	add b                                            ; $63ab: $80
	nop                                              ; $63ac: $00
	ld l, e                                          ; $63ad: $6b
	ei                                               ; $63ae: $fb
	add b                                            ; $63af: $80
	nop                                              ; $63b0: $00
	ld h, a                                          ; $63b1: $67
	ld [$8040], sp                                   ; $63b2: $08 $40 $80
	nop                                              ; $63b5: $00
	ld h, a                                          ; $63b6: $67
	nop                                              ; $63b7: $00
	add b                                            ; $63b8: $80
	nop                                              ; $63b9: $00
	ld l, h                                          ; $63ba: $6c
	ret nc                                           ; $63bb: $d0

	adc e                                            ; $63bc: $8b
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	or b                                             ; $63bf: $b0
	ld bc, $fee4                                     ; $63c0: $01 $e4 $fe
	ld b, c                                          ; $63c3: $41
	add hl, bc                                       ; $63c4: $09
	ret nz                                           ; $63c5: $c0

	pop bc                                           ; $63c6: $c1
	db $fd                                           ; $63c7: $fd
	cp a                                             ; $63c8: $bf
	ret nz                                           ; $63c9: $c0

	call c, $01d8                                    ; $63ca: $dc $d8 $01
	ret nc                                           ; $63cd: $d0

	ld hl, $92c0                                     ; $63ce: $21 $c0 $92
	ret nc                                           ; $63d1: $d0

	ret nc                                           ; $63d2: $d0

	adc e                                            ; $63d3: $8b
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	or b                                             ; $63d6: $b0
	rrca                                             ; $63d7: $0f
	pop bc                                           ; $63d8: $c1
	ld d, e                                          ; $63d9: $53
	ei                                               ; $63da: $fb
	cp $07                                           ; $63db: $fe $07
	add b                                            ; $63dd: $80
	nop                                              ; $63de: $00
	ld l, l                                          ; $63df: $6d
	pop af                                           ; $63e0: $f1
	add b                                            ; $63e1: $80
	nop                                              ; $63e2: $00
	ld l, [hl]                                       ; $63e3: $6e
	ld [$14c0], sp                                   ; $63e4: $08 $c0 $14
	db $e3                                           ; $63e7: $e3
	nop                                              ; $63e8: $00
	ld b, b                                          ; $63e9: $40
	ldh [rSB], a                                     ; $63ea: $e0 $01
	db $10                                           ; $63ec: $10
	ldh [rP1], a                                     ; $63ed: $e0 $00
	sbc d                                            ; $63ef: $9a
	ld bc, $21d1                                     ; $63f0: $01 $d1 $21
	ret nz                                           ; $63f3: $c0

	sub d                                            ; $63f4: $92
	pop de                                           ; $63f5: $d1
	ret nc                                           ; $63f6: $d0

	adc e                                            ; $63f7: $8b
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	or b                                             ; $63fa: $b0
	ld c, $c1                                        ; $63fb: $0e $c1
	ld d, e                                          ; $63fd: $53
	ei                                               ; $63fe: $fb
	cp $07                                           ; $63ff: $fe $07
	add b                                            ; $6401: $80
	nop                                              ; $6402: $00
	ld l, a                                          ; $6403: $6f
	pop af                                           ; $6404: $f1
	add b                                            ; $6405: $80
	nop                                              ; $6406: $00
	ld l, b                                          ; $6407: $68
	ld [$14c0], sp                                   ; $6408: $08 $c0 $14
	db $e3                                           ; $640b: $e3
	nop                                              ; $640c: $00
	ld b, d                                          ; $640d: $42
	ldh [rSB], a                                     ; $640e: $e0 $01
	ld l, $e0                                        ; $6410: $2e $e0
	nop                                              ; $6412: $00
	halt                                             ; $6413: $76
	ld bc, $21d2                                     ; $6414: $01 $d2 $21
	ret nz                                           ; $6417: $c0

	sub d                                            ; $6418: $92
	jp nc, $8bd0                                     ; $6419: $d2 $d0 $8b

	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	or b                                             ; $641e: $b0
	db $10                                           ; $641f: $10
	pop bc                                           ; $6420: $c1
	ld d, e                                          ; $6421: $53
	ei                                               ; $6422: $fb
	cp $07                                           ; $6423: $fe $07
	add b                                            ; $6425: $80
	nop                                              ; $6426: $00
	ld [hl], b                                       ; $6427: $70
	pop af                                           ; $6428: $f1
	add b                                            ; $6429: $80
	nop                                              ; $642a: $00
	ld [hl], c                                       ; $642b: $71
	ld [$14c0], sp                                   ; $642c: $08 $c0 $14
	db $e3                                           ; $642f: $e3
	nop                                              ; $6430: $00
	ld b, e                                          ; $6431: $43
	ldh [rSB], a                                     ; $6432: $e0 $01
	ld l, [hl]                                       ; $6434: $6e
	ldh [rP1], a                                     ; $6435: $e0 $00
	ld d, d                                          ; $6437: $52
	ld bc, $21d3                                     ; $6438: $01 $d3 $21
	ret nz                                           ; $643b: $c0

	sub d                                            ; $643c: $92
	db $d3                                           ; $643d: $d3
	pop bc                                           ; $643e: $c1
	ld d, e                                          ; $643f: $53
	ret nc                                           ; $6440: $d0

	adc e                                            ; $6441: $8b
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	or b                                             ; $6444: $b0
	ld de, $fefb                                     ; $6445: $11 $fb $fe
	rlca                                             ; $6448: $07
	add b                                            ; $6449: $80
	nop                                              ; $644a: $00
	ld [hl], d                                       ; $644b: $72
	pop af                                           ; $644c: $f1
	add b                                            ; $644d: $80
	and b                                            ; $644e: $a0
	rla                                              ; $644f: $17
	ld [$14c0], sp                                   ; $6450: $08 $c0 $14
	db $e3                                           ; $6453: $e3
	nop                                              ; $6454: $00
	ld b, h                                          ; $6455: $44
	ldh [rP1], a                                     ; $6456: $e0 $00
	ld d, l                                          ; $6458: $55
	ldh [rP1], a                                     ; $6459: $e0 $00
	ld l, $01                                        ; $645b: $2e $01
	reti                                             ; $645d: $d9


	rlca                                             ; $645e: $07
	pop hl                                           ; $645f: $e1
	ld [bc], a                                       ; $6460: $02
	nop                                              ; $6461: $00
	sub c                                            ; $6462: $91
	db $e4                                           ; $6463: $e4
	db $fd                                           ; $6464: $fd
	sbc a                                            ; $6465: $9f
	ld bc, $1fda                                     ; $6466: $01 $da $1f
	ld h, c                                          ; $6469: $61
	db $fc                                           ; $646a: $fc
	ret nz                                           ; $646b: $c0

	add b                                            ; $646c: $80
	pop de                                           ; $646d: $d1
	inc b                                            ; $646e: $04
	ret nz                                           ; $646f: $c0

	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	ld d, d                                          ; $6472: $52
	db $fc                                           ; $6473: $fc
	ret nz                                           ; $6474: $c0

	add b                                            ; $6475: $80
	jp nc, $c004                                     ; $6476: $d2 $04 $c0

	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	ld h, c                                          ; $647b: $61
	inc b                                            ; $647c: $04
	ret nz                                           ; $647d: $c0

	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	ld l, a                                          ; $6480: $6f
	pop hl                                           ; $6481: $e1
	ld [bc], a                                       ; $6482: $02
	nop                                              ; $6483: $00
	sub c                                            ; $6484: $91
	db $e4                                           ; $6485: $e4
	db $fd                                           ; $6486: $fd
	ld a, l                                          ; $6487: $7d
	dec de                                           ; $6488: $1b
	ret nz                                           ; $6489: $c0

	db $f4                                           ; $648a: $f4
	ret c                                            ; $648b: $d8

	nop                                              ; $648c: $00
	add b                                            ; $648d: $80
	nop                                              ; $648e: $00
	ld h, [hl]                                       ; $648f: $66
	add b                                            ; $6490: $80
	adc e                                            ; $6491: $8b
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	ld [bc], a                                       ; $6494: $02
	or b                                             ; $6495: $b0
	ld de, $fb09                                     ; $6496: $11 $09 $fb
	add b                                            ; $6499: $80
	nop                                              ; $649a: $00
	ld [hl], d                                       ; $649b: $72
	inc b                                            ; $649c: $04
	nop                                              ; $649d: $00
	add b                                            ; $649e: $80
	nop                                              ; $649f: $00
	ld l, c                                          ; $64a0: $69
	db $e4                                           ; $64a1: $e4
	rla                                              ; $64a2: $17
	pop bc                                           ; $64a3: $c1
	add hl, bc                                       ; $64a4: $09
	ld b, $c0                                        ; $64a5: $06 $c0
	db $f4                                           ; $64a7: $f4
	ret c                                            ; $64a8: $d8

	db $e4                                           ; $64a9: $e4
	rla                                              ; $64aa: $17
	cp c                                             ; $64ab: $b9
	ld sp, $3bc1                                     ; $64ac: $31 $c1 $3b
	ret nz                                           ; $64af: $c0

	add hl, bc                                       ; $64b0: $09
	db $e3                                           ; $64b1: $e3
	nop                                              ; $64b2: $00
	ld c, d                                          ; $64b3: $4a
	add b                                            ; $64b4: $80
	adc e                                            ; $64b5: $8b
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	ld [bc], a                                       ; $64b8: $02
	or b                                             ; $64b9: $b0
	ld de, $e015                                     ; $64ba: $11 $15 $e0
	nop                                              ; $64bd: $00
	ld hl, $8060                                     ; $64be: $21 $60 $80
	nop                                              ; $64c1: $00
	ld [hl], e                                       ; $64c2: $73
	ld b, $c0                                        ; $64c3: $06 $c0
	ld bc, $02a0                                     ; $64c5: $01 $a0 $02
	nop                                              ; $64c8: $00
	ld a, b                                          ; $64c9: $78
	ld b, $c0                                        ; $64ca: $06 $c0
	ld bc, $02a0                                     ; $64cc: $01 $a0 $02
	nop                                              ; $64cf: $00
	ld a, c                                          ; $64d0: $79
	pop bc                                           ; $64d1: $c1
	ld e, e                                          ; $64d2: $5b
	ret nz                                           ; $64d3: $c0

	ret nz                                           ; $64d4: $c0

	ret nc                                           ; $64d5: $d0

	nop                                              ; $64d6: $00
	add b                                            ; $64d7: $80
	and b                                            ; $64d8: $a0
	rla                                              ; $64d9: $17
	pop bc                                           ; $64da: $c1
	dec sp                                           ; $64db: $3b
	pop bc                                           ; $64dc: $c1
	dec b                                            ; $64dd: $05
	inc e                                            ; $64de: $1c
	pop hl                                           ; $64df: $e1
	ld [bc], a                                       ; $64e0: $02
	nop                                              ; $64e1: $00
	ldh a, [$c0]                                     ; $64e2: $f0 $c0
	ld bc, $02a0                                     ; $64e4: $01 $a0 $02
	nop                                              ; $64e7: $00
	ld a, a                                          ; $64e8: $7f
	ld h, b                                          ; $64e9: $60
	add b                                            ; $64ea: $80
	nop                                              ; $64eb: $00
	ld [hl], e                                       ; $64ec: $73
	ld b, $c0                                        ; $64ed: $06 $c0
	ld bc, $01a0                                     ; $64ef: $01 $a0 $01
	nop                                              ; $64f2: $00
	add l                                            ; $64f3: $85
	ld b, $c0                                        ; $64f4: $06 $c0
	ld bc, $01a0                                     ; $64f6: $01 $a0 $01
	nop                                              ; $64f9: $00
	adc c                                            ; $64fa: $89
	ld b, c                                          ; $64fb: $41
	pop bc                                           ; $64fc: $c1
	dec sp                                           ; $64fd: $3b
	ret nz                                           ; $64fe: $c0

	add hl, bc                                       ; $64ff: $09
	db $e3                                           ; $6500: $e3
	nop                                              ; $6501: $00
	ld b, $e1                                        ; $6502: $06 $e1
	ld [bc], a                                       ; $6504: $02
	ld bc, $c008                                     ; $6505: $01 $08 $c0
	ld bc, $03a0                                     ; $6508: $01 $a0 $03
	nop                                              ; $650b: $00
	adc l                                            ; $650c: $8d
	ld h, b                                          ; $650d: $60
	rst $38                                          ; $650e: $ff
	ld b, $80                                        ; $650f: $06 $80
	nop                                              ; $6511: $00
	ld [hl], h                                       ; $6512: $74
	add b                                            ; $6513: $80
	nop                                              ; $6514: $00

jr_07a_6515:
	ld [hl], l                                       ; $6515: $75
	inc c                                            ; $6516: $0c
	ret nz                                           ; $6517: $c0

	ld bc, $01a0                                     ; $6518: $01 $a0 $01
	nop                                              ; $651b: $00
	sub [hl]                                         ; $651c: $96
	ret nz                                           ; $651d: $c0

	ld bc, $03a0                                     ; $651e: $01 $a0 $03
	nop                                              ; $6521: $00
	sbc d                                            ; $6522: $9a
	inc c                                            ; $6523: $0c
	ret nz                                           ; $6524: $c0

	ld bc, $01a0                                     ; $6525: $01 $a0 $01
	nop                                              ; $6528: $00
	sbc [hl]                                         ; $6529: $9e
	ret nz                                           ; $652a: $c0

	ld bc, $03a0                                     ; $652b: $01 $a0 $03
	nop                                              ; $652e: $00
	and d                                            ; $652f: $a2
	pop bc                                           ; $6530: $c1
	ld e, e                                          ; $6531: $5b
	ret nz                                           ; $6532: $c0

	ret nz                                           ; $6533: $c0

	pop de                                           ; $6534: $d1
	nop                                              ; $6535: $00
	add b                                            ; $6536: $80
	nop                                              ; $6537: $00
	ld l, [hl]                                       ; $6538: $6e
	pop bc                                           ; $6539: $c1
	dec sp                                           ; $653a: $3b
	pop bc                                           ; $653b: $c1
	dec b                                            ; $653c: $05
	ld h, e                                          ; $653d: $63
	pop bc                                           ; $653e: $c1
	dec sp                                           ; $653f: $3b
	ret nz                                           ; $6540: $c0

	add hl, bc                                       ; $6541: $09
	db $e3                                           ; $6542: $e3
	nop                                              ; $6543: $00
	dec b                                            ; $6544: $05
	pop hl                                           ; $6545: $e1
	ld [bc], a                                       ; $6546: $02
	ld bc, $c080                                     ; $6547: $01 $80 $c0
	ld bc, $04a0                                     ; $654a: $01 $a0 $04
	nop                                              ; $654d: $00
	xor d                                            ; $654e: $aa
	ld h, c                                          ; $654f: $61
	add b                                            ; $6550: $80
	nop                                              ; $6551: $00
	ld h, a                                          ; $6552: $67
	jr jr_07a_6515                                   ; $6553: $18 $c0

	ld bc, $01a0                                     ; $6555: $01 $a0 $01
	nop                                              ; $6558: $00
	xor a                                            ; $6559: $af
	ret nz                                           ; $655a: $c0

	ld bc, $04a0                                     ; $655b: $01 $a0 $04
	nop                                              ; $655e: $00
	or h                                             ; $655f: $b4
	ret nz                                           ; $6560: $c0

	ld bc, $04a0                                     ; $6561: $01 $a0 $04
	nop                                              ; $6564: $00
	cp h                                             ; $6565: $bc
	ret nz                                           ; $6566: $c0

	ld bc, $01a0                                     ; $6567: $01 $a0 $01
	nop                                              ; $656a: $00
	jp $06ff                                         ; $656b: $c3 $ff $06


	add b                                            ; $656e: $80
	nop                                              ; $656f: $00
	halt                                             ; $6570: $76
	add b                                            ; $6571: $80
	nop                                              ; $6572: $00
	ld [hl], a                                       ; $6573: $77
	inc c                                            ; $6574: $0c
	ret nz                                           ; $6575: $c0

	ld bc, $01a0                                     ; $6576: $01 $a0 $01
	nop                                              ; $6579: $00
	push bc                                          ; $657a: $c5
	ret nz                                           ; $657b: $c0

	ld bc, $04a0                                     ; $657c: $01 $a0 $04
	nop                                              ; $657f: $00
	ret                                              ; $6580: $c9


	ld [de], a                                       ; $6581: $12
	ret nz                                           ; $6582: $c0

	ld bc, $01a0                                     ; $6583: $01 $a0 $01
	nop                                              ; $6586: $00
	rst GetHLinHL                                          ; $6587: $cf
	ret nz                                           ; $6588: $c0

	ld bc, $04a0                                     ; $6589: $01 $a0 $04
	nop                                              ; $658c: $00
	db $d3                                           ; $658d: $d3
	ret nz                                           ; $658e: $c0

	ld bc, $01a0                                     ; $658f: $01 $a0 $01
	nop                                              ; $6592: $00
	jp $5bc1                                         ; $6593: $c3 $c1 $5b


	ret nz                                           ; $6596: $c0

	ret nz                                           ; $6597: $c0

	jp nc, $8000                                     ; $6598: $d2 $00 $80

	nop                                              ; $659b: $00
	ld l, b                                          ; $659c: $68
	pop bc                                           ; $659d: $c1
	dec sp                                           ; $659e: $3b
	pop bc                                           ; $659f: $c1
	dec b                                            ; $65a0: $05
	ld b, c                                          ; $65a1: $41
	pop bc                                           ; $65a2: $c1
	dec sp                                           ; $65a3: $3b
	ret nz                                           ; $65a4: $c0

	add hl, bc                                       ; $65a5: $09
	db $e3                                           ; $65a6: $e3
	nop                                              ; $65a7: $00
	inc b                                            ; $65a8: $04
	pop hl                                           ; $65a9: $e1
	ld [bc], a                                       ; $65aa: $02
	ld bc, $c0c8                                     ; $65ab: $01 $c8 $c0
	ld bc, $05a0                                     ; $65ae: $01 $a0 $05
	nop                                              ; $65b1: $00
	jp c, $ff60                                      ; $65b2: $da $60 $ff

	ld b, $80                                        ; $65b5: $06 $80
	nop                                              ; $65b7: $00
	ld a, b                                          ; $65b8: $78
	add b                                            ; $65b9: $80
	nop                                              ; $65ba: $00
	ld a, c                                          ; $65bb: $79
	inc c                                            ; $65bc: $0c
	ret nz                                           ; $65bd: $c0

	ld bc, $01a0                                     ; $65be: $01 $a0 $01
	nop                                              ; $65c1: $00
	db $e4                                           ; $65c2: $e4
	ret nz                                           ; $65c3: $c0

	ld bc, $05a0                                     ; $65c4: $01 $a0 $05
	nop                                              ; $65c7: $00
	add sp, $0c                                      ; $65c8: $e8 $0c
	ret nz                                           ; $65ca: $c0

	ld bc, $01a0                                     ; $65cb: $01 $a0 $01
	nop                                              ; $65ce: $00
	db $eb                                           ; $65cf: $eb
	ret nz                                           ; $65d0: $c0

	ld bc, $05a0                                     ; $65d1: $01 $a0 $05
	nop                                              ; $65d4: $00
	rst AddAOntoHL                                          ; $65d5: $ef
	pop bc                                           ; $65d6: $c1
	ld e, e                                          ; $65d7: $5b
	ret nz                                           ; $65d8: $c0

	ret nz                                           ; $65d9: $c0

	db $d3                                           ; $65da: $d3
	nop                                              ; $65db: $00
	add b                                            ; $65dc: $80
	nop                                              ; $65dd: $00
	ld [hl], c                                       ; $65de: $71
	pop bc                                           ; $65df: $c1
	dec sp                                           ; $65e0: $3b
	pop bc                                           ; $65e1: $c1
	dec b                                            ; $65e2: $05
	add hl, bc                                       ; $65e3: $09
	sub b                                            ; $65e4: $90
	db $fd                                           ; $65e5: $fd
	adc [hl]                                         ; $65e6: $8e
	ret nz                                           ; $65e7: $c0

	ret                                              ; $65e8: $c9


	ld [bc], a                                       ; $65e9: $02
	ldh [rAUD1SWEEP], a                              ; $65ea: $e0 $10
	inc h                                            ; $65ec: $24
	ld h, b                                          ; $65ed: $60
	add b                                            ; $65ee: $80
	and b                                            ; $65ef: $a0
	ld a, [bc]                                       ; $65f0: $0a
	dec d                                            ; $65f1: $15
	pop hl                                           ; $65f2: $e1
	ld [bc], a                                       ; $65f3: $02
	ld c, $65                                        ; $65f4: $0e $65
	pop bc                                           ; $65f6: $c1
	rlca                                             ; $65f7: $07
	call nc, $c0d3                                   ; $65f8: $d4 $d3 $c0
	ld bc, $01a0                                     ; $65fb: $01 $a0 $01
	nop                                              ; $65fe: $00
	or $e1                                           ; $65ff: $f6 $e1
	ld [bc], a                                       ; $6601: $02
	nop                                              ; $6602: $00
	sub c                                            ; $6603: $91
	db $e4                                           ; $6604: $e4
	ei                                               ; $6605: $fb
	cp $09                                           ; $6606: $fe $09
	ldh [rAUD2LEN], a                                ; $6608: $e0 $16
	ld b, b                                          ; $660a: $40
	ldh [rAUD2LEN], a                                ; $660b: $e0 $16
	ld b, [hl]                                       ; $660d: $46
	db $e4                                           ; $660e: $e4
	nop                                              ; $660f: $00
	ld h, [hl]                                       ; $6610: $66
	ld bc, $03d0                                     ; $6611: $01 $d0 $03
	db $e4                                           ; $6614: $e4
	dec b                                            ; $6615: $05
	add hl, de                                       ; $6616: $19
	ld bc, $08d1                                     ; $6617: $01 $d1 $08
	ei                                               ; $661a: $fb
	add b                                            ; $661b: $80
	nop                                              ; $661c: $00
	ld [hl], h                                       ; $661d: $74
	inc bc                                           ; $661e: $03
	db $e4                                           ; $661f: $e4
	ld b, $fb                                        ; $6620: $06 $fb
	ld bc, $08d2                                     ; $6622: $01 $d2 $08
	ei                                               ; $6625: $fb
	add b                                            ; $6626: $80
	nop                                              ; $6627: $00
	halt                                             ; $6628: $76
	inc bc                                           ; $6629: $03
	db $e4                                           ; $662a: $e4
	ld [$01d4], sp                                   ; $662b: $08 $d4 $01
	db $d3                                           ; $662e: $d3
	ld [$80fb], sp                                   ; $662f: $08 $fb $80
	nop                                              ; $6632: $00
	ld a, b                                          ; $6633: $78
	inc bc                                           ; $6634: $03
	db $e4                                           ; $6635: $e4
	ld a, [bc]                                       ; $6636: $0a
	xor h                                            ; $6637: $ac
	ld bc, $08d7                                     ; $6638: $01 $d7 $08
	ei                                               ; $663b: $fb
	add b                                            ; $663c: $80
	nop                                              ; $663d: $00
	ld a, d                                          ; $663e: $7a
	inc bc                                           ; $663f: $03
	db $e4                                           ; $6640: $e4
	inc c                                            ; $6641: $0c
	ld a, b                                          ; $6642: $78
	ld bc, $08d8                                     ; $6643: $01 $d8 $08
	ei                                               ; $6646: $fb
	add b                                            ; $6647: $80
	nop                                              ; $6648: $00
	ld a, e                                          ; $6649: $7b
	inc bc                                           ; $664a: $03
	db $e4                                           ; $664b: $e4
	ld c, $8d                                        ; $664c: $0e $8d
	ld bc, $08da                                     ; $664e: $01 $da $08
	ei                                               ; $6651: $fb
	add b                                            ; $6652: $80
	nop                                              ; $6653: $00
	ld a, h                                          ; $6654: $7c
	inc bc                                           ; $6655: $03
	db $e4                                           ; $6656: $e4
	db $10                                           ; $6657: $10
	ld l, b                                          ; $6658: $68
	ld bc, $08dd                                     ; $6659: $01 $dd $08
	ei                                               ; $665c: $fb
	add b                                            ; $665d: $80
	nop                                              ; $665e: $00
	ld a, l                                          ; $665f: $7d
	inc bc                                           ; $6660: $03
	db $e4                                           ; $6661: $e4
	ld [de], a                                       ; $6662: $12
	ld c, e                                          ; $6663: $4b
	ld bc, $03df                                     ; $6664: $01 $df $03
	db $e4                                           ; $6667: $e4
	inc d                                            ; $6668: $14
	add hl, hl                                       ; $6669: $29
	ld [bc], a                                       ; $666a: $02
	ldh [rIE], a                                     ; $666b: $e0 $ff
	rlca                                             ; $666d: $07
	pop hl                                           ; $666e: $e1
	ld [bc], a                                       ; $666f: $02
	nop                                              ; $6670: $00
	sub c                                            ; $6671: $91
	db $e4                                           ; $6672: $e4
	ei                                               ; $6673: $fb
	sub b                                            ; $6674: $90
	add hl, bc                                       ; $6675: $09
	xor h                                            ; $6676: $ac
	and b                                            ; $6677: $a0
	add b                                            ; $6678: $80
	and b                                            ; $6679: $a0
	jr jr_07a_667c                                   ; $667a: $18 $00

jr_07a_667c:
	ld c, l                                          ; $667c: $4d
	ld h, b                                          ; $667d: $60
	add b                                            ; $667e: $80
	nop                                              ; $667f: $00
	ld a, h                                          ; $6680: $7c
	inc bc                                           ; $6681: $03
	ldh [rP1], a                                     ; $6682: $e0 $00
	cp h                                             ; $6684: $bc
	ld h, $c0                                        ; $6685: $26 $c0
	ld bc, $06a0                                     ; $6687: $01 $a0 $06
	ld bc, $c000                                     ; $668a: $01 $00 $c0
	ld bc, $01a0                                     ; $668d: $01 $a0 $01
	ld bc, $c002                                     ; $6690: $01 $02 $c0
	ld bc, $01a0                                     ; $6693: $01 $a0 $01
	ld bc, $c009                                     ; $6696: $01 $09 $c0
	ld bc, $06a0                                     ; $6699: $01 $a0 $06
	ld bc, $c016                                     ; $669c: $01 $16 $c0
	ld bc, $01a0                                     ; $669f: $01 $a0 $01
	ld bc, $0025                                     ; $66a2: $01 $25 $00
	add b                                            ; $66a5: $80
	nop                                              ; $66a6: $00
	ld a, [hl]                                       ; $66a7: $7e
	ret nz                                           ; $66a8: $c0

	inc c                                            ; $66a9: $0c
	ldh [$3c], a                                     ; $66aa: $e0 $3c
	ret nz                                           ; $66ac: $c0

	ld bc, $07a0                                     ; $66ad: $01 $a0 $07
	ld bc, $c000                                     ; $66b0: $01 $00 $c0
	ld bc, $01a0                                     ; $66b3: $01 $a0 $01
	ld bc, $c02d                                     ; $66b6: $01 $2d $c0
	ld bc, $07a0                                     ; $66b9: $01 $a0 $07
	ld bc, $c033                                     ; $66bc: $01 $33 $c0
	ld bc, $01a0                                     ; $66bf: $01 $a0 $01
	ld bc, $c03c                                     ; $66c2: $01 $3c $c0
	ld bc, $07a0                                     ; $66c5: $01 $a0 $07
	ld bc, $ff48                                     ; $66c8: $01 $48 $ff
	ld d, h                                          ; $66cb: $54
	ldh [rP1], a                                     ; $66cc: $e0 $00
	ld [hl], d                                       ; $66ce: $72
	ret nz                                           ; $66cf: $c0

	ld bc, $07a0                                     ; $66d0: $01 $a0 $07
	ld bc, $c000                                     ; $66d3: $01 $00 $c0
	ld bc, $01a0                                     ; $66d6: $01 $a0 $01
	ld bc, $c050                                     ; $66d9: $01 $50 $c0
	ld bc, $07a0                                     ; $66dc: $01 $a0 $07
	ld bc, $c055                                     ; $66df: $01 $55 $c0
	ld bc, $01a0                                     ; $66e2: $01 $a0 $01
	ld bc, $c059                                     ; $66e5: $01 $59 $c0
	ld bc, $07a0                                     ; $66e8: $01 $a0 $07
	ld bc, $fb67                                     ; $66eb: $01 $67 $fb
	add b                                            ; $66ee: $80
	nop                                              ; $66ef: $00
	ld a, a                                          ; $66f0: $7f
	ld l, $c0                                        ; $66f1: $2e $c0
	ld bc, $07a0                                     ; $66f3: $01 $a0 $07
	ld bc, $c076                                     ; $66f6: $01 $76 $c0
	ld bc, $01a0                                     ; $66f9: $01 $a0 $01
	ld bc, $c088                                     ; $66fc: $01 $88 $c0
	ld bc, $07a0                                     ; $66ff: $01 $a0 $07
	ld bc, $c096                                     ; $6702: $01 $96 $c0
	ld bc, $01a0                                     ; $6705: $01 $a0 $01
	ld bc, $c09b                                     ; $6708: $01 $9b $c0
	ld bc, $07a0                                     ; $670b: $01 $a0 $07
	ld bc, $c0a3                                     ; $670e: $01 $a3 $c0
	ld bc, $01a0                                     ; $6711: $01 $a0 $01
	ld bc, $c0b1                                     ; $6714: $01 $b1 $c0
	ld bc, $07a0                                     ; $6717: $01 $a0 $07
	ld bc, $40b5                                     ; $671a: $01 $b5 $40
	add b                                            ; $671d: $80
	nop                                              ; $671e: $00
	ld a, a                                          ; $671f: $7f
	db $e4                                           ; $6720: $e4
	nop                                              ; $6721: $00
	ld [bc], a                                       ; $6722: $02
	ld [$011a], sp                                   ; $6723: $08 $1a $01
	cp [hl]                                          ; $6726: $be
	add hl, bc                                       ; $6727: $09
	add hl, bc                                       ; $6728: $09
	ret nz                                           ; $6729: $c0

	ld bc, $01a0                                     ; $672a: $01 $a0 $01
	ld bc, $e4c3                                     ; $672d: $01 $c3 $e4
	ld bc, $017b                                     ; $6730: $01 $7b $01
	ret nc                                           ; $6733: $d0

	add hl, bc                                       ; $6734: $09
	add hl, bc                                       ; $6735: $09
	ret nz                                           ; $6736: $c0

	ld bc, $01a0                                     ; $6737: $01 $a0 $01
	ld bc, $e4d4                                     ; $673a: $01 $d4 $e4
	nop                                              ; $673d: $00
	ld [hl], b                                       ; $673e: $70
	inc sp                                           ; $673f: $33
	ld h, b                                          ; $6740: $60
	db $fc                                           ; $6741: $fc
	ret nz                                           ; $6742: $c0

	add b                                            ; $6743: $80
	pop de                                           ; $6744: $d1
	ld [$7fb0], sp                                   ; $6745: $08 $b0 $7f
	inc bc                                           ; $6748: $03
	ldh [rP1], a                                     ; $6749: $e0 $00
	ld c, h                                          ; $674b: $4c
	rst $38                                          ; $674c: $ff
	nop                                              ; $674d: $00
	inc h                                            ; $674e: $24
	ei                                               ; $674f: $fb
	cp $0b                                           ; $6750: $fe $0b
	ld hl, sp-$40                                    ; $6752: $f8 $c0
	rla                                              ; $6754: $17
	jp c, $3ce0                                      ; $6755: $da $e0 $3c

	ei                                               ; $6758: $fb
	ret nz                                           ; $6759: $c0

	dec d                                            ; $675a: $15
	jp c, $15da                                      ; $675b: $da $da $15

	or b                                             ; $675e: $b0
	ld a, [hl+]                                      ; $675f: $2a
	db $10                                           ; $6760: $10
	add c                                            ; $6761: $81
	ret nz                                           ; $6762: $c0

	dec de                                           ; $6763: $1b
	jp c, $d002                                      ; $6764: $da $02 $d0

	pop de                                           ; $6767: $d1
	inc bc                                           ; $6768: $03
	ldh [rP1], a                                     ; $6769: $e0 $00
	add hl, bc                                       ; $676b: $09
	nop                                              ; $676c: $00
	inc bc                                           ; $676d: $03
	ldh [rP1], a                                     ; $676e: $e0 $00
	daa                                              ; $6770: $27
	rst $38                                          ; $6771: $ff
	nop                                              ; $6772: $00
	ld [hl+], a                                      ; $6773: $22
	ret nz                                           ; $6774: $c0

	ld bc, $06a0                                     ; $6775: $01 $a0 $06
	ld bc, $c000                                     ; $6778: $01 $00 $c0
	ld bc, $01a0                                     ; $677b: $01 $a0 $01
	ld bc, $c0dc                                     ; $677e: $01 $dc $c0
	ld bc, $06a0                                     ; $6781: $01 $a0 $06
	ld bc, wGenericTileDataDest                                     ; $6784: $01 $e2 $c0
	ld bc, $01a0                                     ; $6787: $01 $a0 $01
	ld bc, $c0ea                                     ; $678a: $01 $ea $c0
	ld bc, $06a0                                     ; $678d: $01 $a0 $06
	ld bc, $c0f7                                     ; $6790: $01 $f7 $c0
	inc c                                            ; $6793: $0c
	ldh [$3c], a                                     ; $6794: $e0 $3c
	ld d, $c0                                        ; $6796: $16 $c0
	ld bc, $06a0                                     ; $6798: $01 $a0 $06
	ld bc, $c000                                     ; $679b: $01 $00 $c0
	ld bc, $01a0                                     ; $679e: $01 $a0 $01
	ld bc, $c009                                     ; $67a1: $01 $09 $c0
	ld bc, $06a0                                     ; $67a4: $01 $a0 $06
	ld [bc], a                                       ; $67a7: $02
	dec b                                            ; $67a8: $05
	ret nz                                           ; $67a9: $c0

	inc c                                            ; $67aa: $0c
	ldh [$3c], a                                     ; $67ab: $e0 $3c
	add hl, bc                                       ; $67ad: $09
	ret nz                                           ; $67ae: $c0

	set 7, l                                         ; $67af: $cb $fd
	ret nz                                           ; $67b1: $c0

	ret z                                            ; $67b2: $c8

	adc e                                            ; $67b3: $8b
	nop                                              ; $67b4: $00
	add b                                            ; $67b5: $80
	ld [bc], a                                       ; $67b6: $02
	or b                                             ; $67b7: $b0
	ld [de], a                                       ; $67b8: $12
	inc d                                            ; $67b9: $14
	ld h, b                                          ; $67ba: $60
	db $fc                                           ; $67bb: $fc
	pop bc                                           ; $67bc: $c1
	dec [hl]                                         ; $67bd: $35
	pop de                                           ; $67be: $d1
	ret nc                                           ; $67bf: $d0

jr_07a_67c0:
	add hl, bc                                       ; $67c0: $09
	ret nz                                           ; $67c1: $c0

	ld bc, $07a0                                     ; $67c2: $01 $a0 $07
	ld [bc], a                                       ; $67c5: $02
	inc de                                           ; $67c6: $13
	ldh [rP1], a                                     ; $67c7: $e0 $00
	or e                                             ; $67c9: $b3
	inc bc                                           ; $67ca: $03
	ldh [rP1], a                                     ; $67cb: $e0 $00
	rst GetHLinHL                                          ; $67cd: $cf
	ld [bc], a                                       ; $67ce: $02
	or b                                             ; $67cf: $b0
	inc de                                           ; $67d0: $13
	inc d                                            ; $67d1: $14
	ld h, b                                          ; $67d2: $60
	db $fc                                           ; $67d3: $fc
	pop bc                                           ; $67d4: $c1
	dec [hl]                                         ; $67d5: $35
	rst SubAFromHL                                          ; $67d6: $d7
	ret nc                                           ; $67d7: $d0

	add hl, bc                                       ; $67d8: $09
	ret nz                                           ; $67d9: $c0

	ld bc, $07a0                                     ; $67da: $01 $a0 $07
	ld [bc], a                                       ; $67dd: $02
	jr nz, jr_07a_67c0                               ; $67de: $20 $e0

	nop                                              ; $67e0: $00
	sbc e                                            ; $67e1: $9b
	inc bc                                           ; $67e2: $03
	ldh [rP1], a                                     ; $67e3: $e0 $00
	or a                                             ; $67e5: $b7
	ld [bc], a                                       ; $67e6: $02
	or b                                             ; $67e7: $b0
	inc d                                            ; $67e8: $14
	inc d                                            ; $67e9: $14
	ld h, b                                          ; $67ea: $60
	db $fc                                           ; $67eb: $fc
	pop bc                                           ; $67ec: $c1
	dec [hl]                                         ; $67ed: $35
	db $d3                                           ; $67ee: $d3
	ret nc                                           ; $67ef: $d0

	add hl, bc                                       ; $67f0: $09
	ret nz                                           ; $67f1: $c0

	ld bc, $07a0                                     ; $67f2: $01 $a0 $07
	ld [bc], a                                       ; $67f5: $02
	dec hl                                           ; $67f6: $2b
	ldh [rP1], a                                     ; $67f7: $e0 $00
	add e                                            ; $67f9: $83
	inc bc                                           ; $67fa: $03
	ldh [rP1], a                                     ; $67fb: $e0 $00
	sbc a                                            ; $67fd: $9f
	ld [bc], a                                       ; $67fe: $02
	or b                                             ; $67ff: $b0
	dec d                                            ; $6800: $15
	inc d                                            ; $6801: $14
	ld h, b                                          ; $6802: $60
	db $fc                                           ; $6803: $fc
	pop bc                                           ; $6804: $c1
	dec [hl]                                         ; $6805: $35
	db $dd                                           ; $6806: $dd
	ret nc                                           ; $6807: $d0

	add hl, bc                                       ; $6808: $09
	ret nz                                           ; $6809: $c0

	ld bc, $07a0                                     ; $680a: $01 $a0 $07
	ld [bc], a                                       ; $680d: $02
	inc sp                                           ; $680e: $33
	ldh [rP1], a                                     ; $680f: $e0 $00
	ld l, e                                          ; $6811: $6b
	inc bc                                           ; $6812: $03
	ldh [rP1], a                                     ; $6813: $e0 $00
	add a                                            ; $6815: $87
	ld [bc], a                                       ; $6816: $02
	or b                                             ; $6817: $b0
	ld d, $14                                        ; $6818: $16 $14
	ld h, b                                          ; $681a: $60
	db $fc                                           ; $681b: $fc
	pop bc                                           ; $681c: $c1
	dec [hl]                                         ; $681d: $35
	push de                                          ; $681e: $d5
	ret nc                                           ; $681f: $d0

	add hl, bc                                       ; $6820: $09
	ret nz                                           ; $6821: $c0

	ld bc, $07a0                                     ; $6822: $01 $a0 $07
	ld [bc], a                                       ; $6825: $02
	ld a, $e0                                        ; $6826: $3e $e0
	nop                                              ; $6828: $00
	ld d, e                                          ; $6829: $53
	inc bc                                           ; $682a: $03
	ldh [rP1], a                                     ; $682b: $e0 $00
	ld l, a                                          ; $682d: $6f
	ld [bc], a                                       ; $682e: $02
	or b                                             ; $682f: $b0
	rla                                              ; $6830: $17
	inc d                                            ; $6831: $14
	ld h, b                                          ; $6832: $60
	db $fc                                           ; $6833: $fc
	pop bc                                           ; $6834: $c1
	dec [hl]                                         ; $6835: $35
	jp c, $09d0                                      ; $6836: $da $d0 $09

	ret nz                                           ; $6839: $c0

	ld bc, $07a0                                     ; $683a: $01 $a0 $07
	ld [bc], a                                       ; $683d: $02
	ld b, l                                          ; $683e: $45
	ldh [rP1], a                                     ; $683f: $e0 $00
	dec sp                                           ; $6841: $3b
	inc bc                                           ; $6842: $03
	ldh [rP1], a                                     ; $6843: $e0 $00
	ld d, a                                          ; $6845: $57
	ld [bc], a                                       ; $6846: $02
	or b                                             ; $6847: $b0
	jr jr_07a_685e                                   ; $6848: $18 $14

	ld h, b                                          ; $684a: $60
	db $fc                                           ; $684b: $fc
	pop bc                                           ; $684c: $c1
	dec [hl]                                         ; $684d: $35
	sub $d0                                          ; $684e: $d6 $d0
	add hl, bc                                       ; $6850: $09
	ret nz                                           ; $6851: $c0

	ld bc, $07a0                                     ; $6852: $01 $a0 $07
	ld [bc], a                                       ; $6855: $02
	ld c, l                                          ; $6856: $4d
	ldh [rP1], a                                     ; $6857: $e0 $00
	inc hl                                           ; $6859: $23
	inc bc                                           ; $685a: $03
	ldh [rP1], a                                     ; $685b: $e0 $00
	ccf                                              ; $685d: $3f

jr_07a_685e:
	ld [bc], a                                       ; $685e: $02
	or b                                             ; $685f: $b0
	add hl, de                                       ; $6860: $19
	inc d                                            ; $6861: $14
	ld h, b                                          ; $6862: $60
	db $fc                                           ; $6863: $fc
	pop bc                                           ; $6864: $c1
	dec [hl]                                         ; $6865: $35
	db $db                                           ; $6866: $db
	ret nc                                           ; $6867: $d0

	add hl, bc                                       ; $6868: $09
	ret nz                                           ; $6869: $c0

	ld bc, $07a0                                     ; $686a: $01 $a0 $07
	ld [bc], a                                       ; $686d: $02
	ld d, h                                          ; $686e: $54
	ldh [rP1], a                                     ; $686f: $e0 $00
	dec bc                                           ; $6871: $0b
	inc bc                                           ; $6872: $03
	ldh [rP1], a                                     ; $6873: $e0 $00
	daa                                              ; $6875: $27
	nop                                              ; $6876: $00
	inc bc                                           ; $6877: $03
	ldh [rP1], a                                     ; $6878: $e0 $00
	ld [hl+], a                                      ; $687a: $22
	rra                                              ; $687b: $1f
	and b                                            ; $687c: $a0
	add b                                            ; $687d: $80
	and b                                            ; $687e: $a0
	add hl, de                                       ; $687f: $19
	nop                                              ; $6880: $00
	ld b, $c0                                        ; $6881: $06 $c0
	ld bc, $01a0                                     ; $6883: $01 $a0 $01
	ld [bc], a                                       ; $6886: $02
	ld h, c                                          ; $6887: $61
	rst $38                                          ; $6888: $ff
	ld b, $c0                                        ; $6889: $06 $c0
	ld bc, $01a0                                     ; $688b: $01 $a0 $01
	ld [bc], a                                       ; $688e: $02
	ld h, a                                          ; $688f: $67
	ret nz                                           ; $6890: $c0

	ld bc, $07a0                                     ; $6891: $01 $a0 $07
	ld [bc], a                                       ; $6894: $02
	ld l, l                                          ; $6895: $6d
	pop bc                                           ; $6896: $c1
	ld [hl], $e4                                     ; $6897: $36 $e4
	inc de                                           ; $6899: $13
	jp z, $c00f                                      ; $689a: $ca $0f $c0

	ld bc, $07a0                                     ; $689d: $01 $a0 $07
	ld [bc], a                                       ; $68a0: $02
	halt                                             ; $68a1: $76
	ret nz                                           ; $68a2: $c0

	ld bc, $01a0                                     ; $68a3: $01 $a0 $01
	ld [bc], a                                       ; $68a6: $02
	add l                                            ; $68a7: $85
	db $e4                                           ; $68a8: $e4
	nop                                              ; $68a9: $00
	ld [bc], a                                       ; $68aa: $02
	jr z, jr_07a_68c7                                ; $68ab: $28 $1a

	ret nz                                           ; $68ad: $c0

	ld bc, $07a0                                     ; $68ae: $01 $a0 $07
	ld [bc], a                                       ; $68b1: $02
	sub e                                            ; $68b2: $93
	ret nz                                           ; $68b3: $c0

	ld bc, $07a0                                     ; $68b4: $01 $a0 $07
	ld [bc], a                                       ; $68b7: $02
	sub a                                            ; $68b8: $97
	ret nz                                           ; $68b9: $c0

	adc $c0                                          ; $68ba: $ce $c0
	ld bc, $07a0                                     ; $68bc: $01 $a0 $07
	ld [bc], a                                       ; $68bf: $02
	sbc a                                            ; $68c0: $9f
	ret nz                                           ; $68c1: $c0

	ld bc, $01a0                                     ; $68c2: $01 $a0 $01
	ld [bc], a                                       ; $68c5: $02
	and e                                            ; $68c6: $a3

jr_07a_68c7:
	add a                                            ; $68c7: $87
	ld [bc], a                                       ; $68c8: $02
	xor h                                            ; $68c9: $ac
	add hl, bc                                       ; $68ca: $09
	ld a, h                                          ; $68cb: $7c
	db $fd                                           ; $68cc: $fd
	ld [hl], a                                       ; $68cd: $77
	ret nz                                           ; $68ce: $c0

	call c, $01d5                                    ; $68cf: $dc $d5 $01
	ret nc                                           ; $68d2: $d0

	ld b, $d0                                        ; $68d3: $06 $d0
	adc e                                            ; $68d5: $8b
	and b                                            ; $68d6: $a0
	ld a, [de]                                       ; $68d7: $1a
	or b                                             ; $68d8: $b0
	inc bc                                           ; $68d9: $03
	ld bc, $0bd1                                     ; $68da: $01 $d1 $0b
	ei                                               ; $68dd: $fb
	add b                                            ; $68de: $80
	nop                                              ; $68df: $00
	ld l, l                                          ; $68e0: $6d
	ld b, $d0                                        ; $68e1: $06 $d0
	adc e                                            ; $68e3: $8b
	and b                                            ; $68e4: $a0
	ld a, [de]                                       ; $68e5: $1a
	or b                                             ; $68e6: $b0
	inc b                                            ; $68e7: $04
	ld bc, $0bd2                                     ; $68e8: $01 $d2 $0b
	ei                                               ; $68eb: $fb
	add b                                            ; $68ec: $80
	nop                                              ; $68ed: $00
	ld l, a                                          ; $68ee: $6f
	ld b, $d0                                        ; $68ef: $06 $d0
	adc e                                            ; $68f1: $8b
	and b                                            ; $68f2: $a0
	ld a, [de]                                       ; $68f3: $1a
	or b                                             ; $68f4: $b0
	dec b                                            ; $68f5: $05
	ld bc, $0bd3                                     ; $68f6: $01 $d3 $0b
	ei                                               ; $68f9: $fb
	add b                                            ; $68fa: $80
	nop                                              ; $68fb: $00
	ld [hl], b                                       ; $68fc: $70
	ld b, $d0                                        ; $68fd: $06 $d0
	adc e                                            ; $68ff: $8b
	and b                                            ; $6900: $a0
	ld a, [de]                                       ; $6901: $1a
	or b                                             ; $6902: $b0
	ld b, $01                                        ; $6903: $06 $01
	rst SubAFromHL                                          ; $6905: $d7
	dec bc                                           ; $6906: $0b
	ei                                               ; $6907: $fb
	add b                                            ; $6908: $80
	nop                                              ; $6909: $00
	adc h                                            ; $690a: $8c
	ld b, $d0                                        ; $690b: $06 $d0
	adc e                                            ; $690d: $8b
	and b                                            ; $690e: $a0
	ld a, [de]                                       ; $690f: $1a
	or b                                             ; $6910: $b0
	rlca                                             ; $6911: $07
	ld bc, $0bd8                                     ; $6912: $01 $d8 $0b
	ei                                               ; $6915: $fb
	add b                                            ; $6916: $80
	nop                                              ; $6917: $00
	adc l                                            ; $6918: $8d
	ld b, $d0                                        ; $6919: $06 $d0
	adc e                                            ; $691b: $8b
	and b                                            ; $691c: $a0
	ld a, [de]                                       ; $691d: $1a
	or b                                             ; $691e: $b0
	ld [$da01], sp                                   ; $691f: $08 $01 $da
	dec bc                                           ; $6922: $0b
	ei                                               ; $6923: $fb
	add b                                            ; $6924: $80
	nop                                              ; $6925: $00
	ld a, h                                          ; $6926: $7c
	ld b, $d0                                        ; $6927: $06 $d0
	adc e                                            ; $6929: $8b
	and b                                            ; $692a: $a0
	ld a, [de]                                       ; $692b: $1a
	or b                                             ; $692c: $b0
	add hl, bc                                       ; $692d: $09
	ld bc, $0bdd                                     ; $692e: $01 $dd $0b
	ei                                               ; $6931: $fb
	add b                                            ; $6932: $80
	nop                                              ; $6933: $00
	ld a, l                                          ; $6934: $7d
	ld b, $d0                                        ; $6935: $06 $d0
	adc e                                            ; $6937: $8b
	and b                                            ; $6938: $a0
	ld a, [de]                                       ; $6939: $1a
	or b                                             ; $693a: $b0
	ld a, [bc]                                       ; $693b: $0a
	ld bc, $06df                                     ; $693c: $01 $df $06
	ret nc                                           ; $693f: $d0

	adc e                                            ; $6940: $8b
	and b                                            ; $6941: $a0
	ld a, [de]                                       ; $6942: $1a
	or b                                             ; $6943: $b0
	ld a, [de]                                       ; $6944: $1a
	db $e4                                           ; $6945: $e4
	nop                                              ; $6946: $00
	add hl, bc                                       ; $6947: $09
	ld [bc], a                                       ; $6948: $02
	or c                                             ; $6949: $b1
	add hl, bc                                       ; $694a: $09
	inc bc                                           ; $694b: $03
	ldh [rSB], a                                     ; $694c: $e0 $01
	cp h                                             ; $694e: $bc
	add hl, bc                                       ; $694f: $09
	pop bc                                           ; $6950: $c1
	or a                                             ; $6951: $b7
	db $fd                                           ; $6952: $fd
	pop bc                                           ; $6953: $c1
	ld a, l                                          ; $6954: $7d
	adc e                                            ; $6955: $8b
	and b                                            ; $6956: $a0
	ld a, [de]                                       ; $6957: $1a
	ld [bc], a                                       ; $6958: $02
	or b                                             ; $6959: $b0
	inc bc                                           ; $695a: $03
	ld [hl+], a                                      ; $695b: $22
	ret nz                                           ; $695c: $c0

	ld bc, $01a0                                     ; $695d: $01 $a0 $01
	ld [bc], a                                       ; $6960: $02
	or a                                             ; $6961: $b7
	ret nz                                           ; $6962: $c0

	ld bc, $07a0                                     ; $6963: $01 $a0 $07
	ld [bc], a                                       ; $6966: $02
	cp l                                             ; $6967: $bd
	ret nz                                           ; $6968: $c0

	ld bc, $07a0                                     ; $6969: $01 $a0 $07
	ld [bc], a                                       ; $696c: $02
	ret nz                                           ; $696d: $c0

	ret nz                                           ; $696e: $c0

	ld bc, $07a0                                     ; $696f: $01 $a0 $07
	ld [bc], a                                       ; $6972: $02
	call nz, $cdc0                                   ; $6973: $c4 $c0 $cd
	ret nc                                           ; $6976: $d0

	nop                                              ; $6977: $00
	add b                                            ; $6978: $80
	nop                                              ; $6979: $00
	ld [hl], e                                       ; $697a: $73
	ret nz                                           ; $697b: $c0

	ret nz                                           ; $697c: $c0

	ret nc                                           ; $697d: $d0

	ld [bc], a                                       ; $697e: $02
	or b                                             ; $697f: $b0
	inc b                                            ; $6980: $04
	dec hl                                           ; $6981: $2b
	ret nz                                           ; $6982: $c0

	ld bc, $01a0                                     ; $6983: $01 $a0 $01
	ld [bc], a                                       ; $6986: $02
	ret z                                            ; $6987: $c8

	ret nz                                           ; $6988: $c0

	ld bc, $07a0                                     ; $6989: $01 $a0 $07
	ld [bc], a                                       ; $698c: $02
	cp l                                             ; $698d: $bd
	ret nz                                           ; $698e: $c0

	ld bc, $07a0                                     ; $698f: $01 $a0 $07
	ld [bc], a                                       ; $6992: $02
	ret nc                                           ; $6993: $d0

	ret nz                                           ; $6994: $c0

	ld bc, $07a0                                     ; $6995: $01 $a0 $07
	ld [bc], a                                       ; $6998: $02
	push de                                          ; $6999: $d5
	ret nz                                           ; $699a: $c0

	call $01d1                                       ; $699b: $cd $d1 $01
	add b                                            ; $699e: $80
	nop                                              ; $699f: $00
	ld [hl], h                                       ; $69a0: $74
	add b                                            ; $69a1: $80
	nop                                              ; $69a2: $00
	adc [hl]                                         ; $69a3: $8e
	ret nz                                           ; $69a4: $c0

	ret nz                                           ; $69a5: $c0

	pop de                                           ; $69a6: $d1
	ret nz                                           ; $69a7: $c0

	cp h                                             ; $69a8: $bc
	pop de                                           ; $69a9: $d1
	ret nz                                           ; $69aa: $c0

	cp [hl]                                          ; $69ab: $be
	pop de                                           ; $69ac: $d1
	ld [bc], a                                       ; $69ad: $02
	or b                                             ; $69ae: $b0
	dec b                                            ; $69af: $05
	dec hl                                           ; $69b0: $2b
	ret nz                                           ; $69b1: $c0

	ld bc, $01a0                                     ; $69b2: $01 $a0 $01
	ld [bc], a                                       ; $69b5: $02
	reti                                             ; $69b6: $d9


	ret nz                                           ; $69b7: $c0

	ld bc, $07a0                                     ; $69b8: $01 $a0 $07
	ld [bc], a                                       ; $69bb: $02
	cp l                                             ; $69bc: $bd
	ret nz                                           ; $69bd: $c0

	ld bc, $07a0                                     ; $69be: $01 $a0 $07
	ld [bc], a                                       ; $69c1: $02
	ldh [$c0], a                                     ; $69c2: $e0 $c0
	ld bc, $07a0                                     ; $69c4: $01 $a0 $07
	ld [bc], a                                       ; $69c7: $02
	push de                                          ; $69c8: $d5
	ret nz                                           ; $69c9: $c0

	call $01d2                                       ; $69ca: $cd $d2 $01
	add b                                            ; $69cd: $80
	nop                                              ; $69ce: $00
	halt                                             ; $69cf: $76

jr_07a_69d0:
	add b                                            ; $69d0: $80
	nop                                              ; $69d1: $00
	adc a                                            ; $69d2: $8f
	ret nz                                           ; $69d3: $c0

	ret nz                                           ; $69d4: $c0

	jp nc, $bcc0                                     ; $69d5: $d2 $c0 $bc

	jp nc, $bec0                                     ; $69d8: $d2 $c0 $be

	jp nc, $b002                                     ; $69db: $d2 $02 $b0

	ld b, $2b                                        ; $69de: $06 $2b
	ret nz                                           ; $69e0: $c0

	ld bc, $01a0                                     ; $69e1: $01 $a0 $01
	ld [bc], a                                       ; $69e4: $02
	push hl                                          ; $69e5: $e5
	ret nz                                           ; $69e6: $c0

	ld bc, $07a0                                     ; $69e7: $01 $a0 $07
	ld [bc], a                                       ; $69ea: $02
	cp l                                             ; $69eb: $bd
	ret nz                                           ; $69ec: $c0

	ld bc, $07a0                                     ; $69ed: $01 $a0 $07
	ld [bc], a                                       ; $69f0: $02
	db $ec                                           ; $69f1: $ec
	ret nz                                           ; $69f2: $c0

	ld bc, $07a0                                     ; $69f3: $01 $a0 $07
	ld [bc], a                                       ; $69f6: $02
	push de                                          ; $69f7: $d5
	ret nz                                           ; $69f8: $c0

	call $01d3                                       ; $69f9: $cd $d3 $01
	add b                                            ; $69fc: $80
	nop                                              ; $69fd: $00
	ld a, b                                          ; $69fe: $78
	add b                                            ; $69ff: $80
	nop                                              ; $6a00: $00
	sub b                                            ; $6a01: $90
	ret nz                                           ; $6a02: $c0

	ret nz                                           ; $6a03: $c0

	db $d3                                           ; $6a04: $d3
	ret nz                                           ; $6a05: $c0

	cp h                                             ; $6a06: $bc
	db $d3                                           ; $6a07: $d3
	ret nz                                           ; $6a08: $c0

	cp [hl]                                          ; $6a09: $be
	db $d3                                           ; $6a0a: $d3
	ld [bc], a                                       ; $6a0b: $02
	or b                                             ; $6a0c: $b0
	rlca                                             ; $6a0d: $07
	jr z, jr_07a_69d0                                ; $6a0e: $28 $c0

	ld bc, $01a0                                     ; $6a10: $01 $a0 $01
	ld [bc], a                                       ; $6a13: $02
	ldh a, [$c0]                                     ; $6a14: $f0 $c0
	ld bc, $07a0                                     ; $6a16: $01 $a0 $07
	ld [bc], a                                       ; $6a19: $02
	cp l                                             ; $6a1a: $bd
	ret nz                                           ; $6a1b: $c0

	ld bc, $07a0                                     ; $6a1c: $01 $a0 $07
	ld [bc], a                                       ; $6a1f: $02
	ld hl, sp-$40                                    ; $6a20: $f8 $c0
	ld bc, $07a0                                     ; $6a22: $01 $a0 $07
	ld [bc], a                                       ; $6a25: $02
	push de                                          ; $6a26: $d5
	ret nz                                           ; $6a27: $c0

jr_07a_6a28:
	call $00d7                                       ; $6a28: $cd $d7 $00
	add b                                            ; $6a2b: $80
	nop                                              ; $6a2c: $00
	ld a, d                                          ; $6a2d: $7a
	ret nz                                           ; $6a2e: $c0

	ret nz                                           ; $6a2f: $c0

	rst SubAFromHL                                          ; $6a30: $d7
	ret nz                                           ; $6a31: $c0

	cp h                                             ; $6a32: $bc
	rst SubAFromHL                                          ; $6a33: $d7
	ret nz                                           ; $6a34: $c0

	cp [hl]                                          ; $6a35: $be
	rst SubAFromHL                                          ; $6a36: $d7
	ld [bc], a                                       ; $6a37: $02
	or b                                             ; $6a38: $b0
	ld [$c028], sp                                   ; $6a39: $08 $28 $c0
	ld bc, $01a0                                     ; $6a3c: $01 $a0 $01
	ld [bc], a                                       ; $6a3f: $02

jr_07a_6a40:
	db $fd                                           ; $6a40: $fd
	ret nz                                           ; $6a41: $c0

	ld bc, $07a0                                     ; $6a42: $01 $a0 $07
	ld [bc], a                                       ; $6a45: $02
	cp l                                             ; $6a46: $bd
	ret nz                                           ; $6a47: $c0

	ld bc, $07a0                                     ; $6a48: $01 $a0 $07
	inc bc                                           ; $6a4b: $03
	inc b                                            ; $6a4c: $04
	ret nz                                           ; $6a4d: $c0

	ld bc, $07a0                                     ; $6a4e: $01 $a0 $07
	ld [bc], a                                       ; $6a51: $02
	push de                                          ; $6a52: $d5
	ret nz                                           ; $6a53: $c0

jr_07a_6a54:
	call $00d8                                       ; $6a54: $cd $d8 $00
	add b                                            ; $6a57: $80
	nop                                              ; $6a58: $00
	ld a, e                                          ; $6a59: $7b
	ret nz                                           ; $6a5a: $c0

	ret nz                                           ; $6a5b: $c0

	ret c                                            ; $6a5c: $d8

	ret nz                                           ; $6a5d: $c0

	cp h                                             ; $6a5e: $bc
	ret c                                            ; $6a5f: $d8

	ret nz                                           ; $6a60: $c0

	cp [hl]                                          ; $6a61: $be
	ret c                                            ; $6a62: $d8

	ld [bc], a                                       ; $6a63: $02
	or b                                             ; $6a64: $b0
	add hl, bc                                       ; $6a65: $09
	jr z, jr_07a_6a28                                ; $6a66: $28 $c0

	ld bc, $01a0                                     ; $6a68: $01 $a0 $01
	inc bc                                           ; $6a6b: $03
	add hl, bc                                       ; $6a6c: $09
	ret nz                                           ; $6a6d: $c0

	ld bc, $07a0                                     ; $6a6e: $01 $a0 $07
	inc bc                                           ; $6a71: $03
	rrca                                             ; $6a72: $0f
	ret nz                                           ; $6a73: $c0

	ld bc, $01a0                                     ; $6a74: $01 $a0 $01
	inc bc                                           ; $6a77: $03
	rla                                              ; $6a78: $17
	ret nz                                           ; $6a79: $c0

	ld bc, $07a0                                     ; $6a7a: $01 $a0 $07
	inc bc                                           ; $6a7d: $03
	jr nz, jr_07a_6a40                               ; $6a7e: $20 $c0

	call $00da                                       ; $6a80: $cd $da $00
	add b                                            ; $6a83: $80
	nop                                              ; $6a84: $00
	sub c                                            ; $6a85: $91
	ret nz                                           ; $6a86: $c0

	ret nz                                           ; $6a87: $c0

	jp c, $bcc0                                      ; $6a88: $da $c0 $bc

	jp c, $bec0                                      ; $6a8b: $da $c0 $be

	jp c, $b002                                      ; $6a8e: $da $02 $b0

	ld a, [bc]                                       ; $6a91: $0a
	jr z, jr_07a_6a54                                ; $6a92: $28 $c0

	ld bc, $01a0                                     ; $6a94: $01 $a0 $01
	inc bc                                           ; $6a97: $03
	dec [hl]                                         ; $6a98: $35
	ret nz                                           ; $6a99: $c0

	ld bc, $07a0                                     ; $6a9a: $01 $a0 $07
	ld [bc], a                                       ; $6a9d: $02
	cp l                                             ; $6a9e: $bd
	ret nz                                           ; $6a9f: $c0

	ld bc, $07a0                                     ; $6aa0: $01 $a0 $07
	inc bc                                           ; $6aa3: $03
	inc a                                            ; $6aa4: $3c
	ret nz                                           ; $6aa5: $c0

	ld bc, $07a0                                     ; $6aa6: $01 $a0 $07
	ld [bc], a                                       ; $6aa9: $02
	push de                                          ; $6aaa: $d5
	ret nz                                           ; $6aab: $c0

	call $00dd                                       ; $6aac: $cd $dd $00
	add b                                            ; $6aaf: $80
	nop                                              ; $6ab0: $00
	sub d                                            ; $6ab1: $92
	ret nz                                           ; $6ab2: $c0

	ret nz                                           ; $6ab3: $c0

	db $dd                                           ; $6ab4: $dd
	ret nz                                           ; $6ab5: $c0

	cp h                                             ; $6ab6: $bc
	db $dd                                           ; $6ab7: $dd
	ret nz                                           ; $6ab8: $c0

	cp [hl]                                          ; $6ab9: $be
	db $dd                                           ; $6aba: $dd
	ld [bc], a                                       ; $6abb: $02
	or b                                             ; $6abc: $b0
	ld a, [de]                                       ; $6abd: $1a
	inc de                                           ; $6abe: $13
	ret nz                                           ; $6abf: $c0

	ld bc, $01a0                                     ; $6ac0: $01 $a0 $01
	inc bc                                           ; $6ac3: $03
	ld b, c                                          ; $6ac4: $41
	ret nz                                           ; $6ac5: $c0

	ld bc, $07a0                                     ; $6ac6: $01 $a0 $07
	inc bc                                           ; $6ac9: $03
	ld c, b                                          ; $6aca: $48
	ret nz                                           ; $6acb: $c0

	call $00df                                       ; $6acc: $cd $df $00
	add b                                            ; $6acf: $80
	nop                                              ; $6ad0: $00
	sub e                                            ; $6ad1: $93
	pop bc                                           ; $6ad2: $c1
	ld b, [hl]                                       ; $6ad3: $46
	ret nz                                           ; $6ad4: $c0

	ld bc, $07a0                                     ; $6ad5: $01 $a0 $07
	inc bc                                           ; $6ad8: $03
	ld d, c                                          ; $6ad9: $51
	add c                                            ; $6ada: $81
	adc e                                            ; $6adb: $8b
	and b                                            ; $6adc: $a0
	ld a, [de]                                       ; $6add: $1a
	ld [bc], a                                       ; $6ade: $02
	or b                                             ; $6adf: $b0
	add hl, bc                                       ; $6ae0: $09
	ld [hl+], a                                      ; $6ae1: $22
	ret nz                                           ; $6ae2: $c0

	ld bc, $01a0                                     ; $6ae3: $01 $a0 $01
	inc bc                                           ; $6ae6: $03
	ld d, l                                          ; $6ae7: $55
	ret nz                                           ; $6ae8: $c0

	ld bc, $07a0                                     ; $6ae9: $01 $a0 $07
	inc bc                                           ; $6aec: $03
	ld e, b                                          ; $6aed: $58
	ret nz                                           ; $6aee: $c0

	ld bc, $01a0                                     ; $6aef: $01 $a0 $01
	inc bc                                           ; $6af2: $03
	ld h, c                                          ; $6af3: $61
	ret nz                                           ; $6af4: $c0

	ld bc, $07a0                                     ; $6af5: $01 $a0 $07
	inc bc                                           ; $6af8: $03
	ld l, c                                          ; $6af9: $69
	ldh [rAUD3LOW], a                                ; $6afa: $e0 $1d
	or c                                             ; $6afc: $b1
	pop bc                                           ; $6afd: $c1
	ld b, [hl]                                       ; $6afe: $46
	pop bc                                           ; $6aff: $c1
	ld d, e                                          ; $6b00: $53
	db $e4                                           ; $6b01: $e4
	ld de, $0061                                     ; $6b02: $11 $61 $00
	inc bc                                           ; $6b05: $03
	ldh [rP1], a                                     ; $6b06: $e0 $00
	ld [bc], a                                       ; $6b08: $02
	inc h                                            ; $6b09: $24
	and b                                            ; $6b0a: $a0
	add b                                            ; $6b0b: $80
	and b                                            ; $6b0c: $a0
	ld h, $00                                        ; $6b0d: $26 $00
	ld b, $c0                                        ; $6b0f: $06 $c0
	ld bc, $01a0                                     ; $6b11: $01 $a0 $01
	ld [bc], a                                       ; $6b14: $02
	ld h, c                                          ; $6b15: $61
	rst $38                                          ; $6b16: $ff
	ld b, $c0                                        ; $6b17: $06 $c0
	ld bc, $01a0                                     ; $6b19: $01 $a0 $01
	ld [bc], a                                       ; $6b1c: $02
	ld h, a                                          ; $6b1d: $67
	ret nz                                           ; $6b1e: $c0

	ld bc, $07a0                                     ; $6b1f: $01 $a0 $07
	inc bc                                           ; $6b22: $03
	ld l, [hl]                                       ; $6b23: $6e
	ldh [rAUD3LOW], a                                ; $6b24: $e0 $1d
	add a                                            ; $6b26: $87
	pop bc                                           ; $6b27: $c1
	ld b, [hl]                                       ; $6b28: $46
	pop bc                                           ; $6b29: $c1
	ld d, e                                          ; $6b2a: $53
	db $e4                                           ; $6b2b: $e4
	ld de, $0937                                     ; $6b2c: $11 $37 $09
	ld [hl], h                                       ; $6b2f: $74
	ld h, c                                          ; $6b30: $61
	add b                                            ; $6b31: $80
	nop                                              ; $6b32: $00
	sub h                                            ; $6b33: $94
	add hl, de                                       ; $6b34: $19
	ldh [rAUD1LEN], a                                ; $6b35: $e0 $11
	inc e                                            ; $6b37: $1c
	ldh [rAUD1LEN], a                                ; $6b38: $e0 $11
	db $10                                           ; $6b3a: $10
	ret nz                                           ; $6b3b: $c0

	ld bc, $02a0                                     ; $6b3c: $01 $a0 $02
	inc bc                                           ; $6b3f: $03
	ld a, l                                          ; $6b40: $7d
	ret nz                                           ; $6b41: $c0

	ld bc, $01a0                                     ; $6b42: $01 $a0 $01
	inc bc                                           ; $6b45: $03
	add c                                            ; $6b46: $81
	ld b, b                                          ; $6b47: $40
	add b                                            ; $6b48: $80
	nop                                              ; $6b49: $00
	sub h                                            ; $6b4a: $94
	db $e4                                           ; $6b4b: $e4
	ld bc, $8077                                     ; $6b4c: $01 $77 $80
	and b                                            ; $6b4f: $a0
	ld bc, $e003                                     ; $6b50: $01 $03 $e0
	db $10                                           ; $6b53: $10
	ldh [$4e], a                                     ; $6b54: $e0 $4e
	ldh [rAUD1SWEEP], a                              ; $6b56: $e0 $10
	ei                                               ; $6b58: $fb
	ldh [rAUD1SWEEP], a                              ; $6b59: $e0 $10
	rst AddAOntoHL                                          ; $6b5b: $ef
	ret nz                                           ; $6b5c: $c0

	ld bc, $02a0                                     ; $6b5d: $01 $a0 $02
	inc bc                                           ; $6b60: $03
	ld a, l                                          ; $6b61: $7d
	ret nz                                           ; $6b62: $c0

	ld bc, $01a0                                     ; $6b63: $01 $a0 $01
	inc bc                                           ; $6b66: $03
	add c                                            ; $6b67: $81
	add e                                            ; $6b68: $83
	ret nz                                           ; $6b69: $c0

	dec de                                           ; $6b6a: $1b
	ret nc                                           ; $6b6b: $d0

	ld [bc], a                                       ; $6b6c: $02
	ret nc                                           ; $6b6d: $d0

	pop de                                           ; $6b6e: $d1
	dec d                                            ; $6b6f: $15
	ret nz                                           ; $6b70: $c0

	ld bc, $02a0                                     ; $6b71: $01 $a0 $02
	inc bc                                           ; $6b74: $03
	add [hl]                                         ; $6b75: $86
	ret nz                                           ; $6b76: $c0

	ld bc, $01a0                                     ; $6b77: $01 $a0 $01
	inc bc                                           ; $6b7a: $03
	adc c                                            ; $6b7b: $89
	ret nz                                           ; $6b7c: $c0

	ld bc, $02a0                                     ; $6b7d: $01 $a0 $02
	inc bc                                           ; $6b80: $03
	adc l                                            ; $6b81: $8d
	db $e4                                           ; $6b82: $e4
	nop                                              ; $6b83: $00
	ld hl, $d202                                     ; $6b84: $21 $02 $d2
	db $d3                                           ; $6b87: $d3
	add hl, bc                                       ; $6b88: $09
	ret nz                                           ; $6b89: $c0

	ld bc, $02a0                                     ; $6b8a: $01 $a0 $02
	inc bc                                           ; $6b8d: $03
	sub a                                            ; $6b8e: $97
	db $e4                                           ; $6b8f: $e4
	nop                                              ; $6b90: $00
	inc d                                            ; $6b91: $14
	ld bc, $09d4                                     ; $6b92: $01 $d4 $09
	ret nz                                           ; $6b95: $c0

	ld bc, $02a0                                     ; $6b96: $01 $a0 $02
	inc bc                                           ; $6b99: $03
	sbc d                                            ; $6b9a: $9a
	db $e4                                           ; $6b9b: $e4
	nop                                              ; $6b9c: $00
	ld [$d501], sp                                   ; $6b9d: $08 $01 $d5
	inc bc                                           ; $6ba0: $03
	db $e4                                           ; $6ba1: $e4
	ld bc, $0921                                     ; $6ba2: $01 $21 $09
	ld c, c                                          ; $6ba5: $49
	ret nz                                           ; $6ba6: $c0

	ld h, $dc                                        ; $6ba7: $26 $dc
	ret nc                                           ; $6ba9: $d0

	add d                                            ; $6baa: $82
	pop bc                                           ; $6bab: $c1
	xor a                                            ; $6bac: $af
	ret nc                                           ; $6bad: $d0

	ld bc, $09d0                                     ; $6bae: $01 $d0 $09
	ret nc                                           ; $6bb1: $d0

	add h                                            ; $6bb2: $84
	and b                                            ; $6bb3: $a0
	daa                                              ; $6bb4: $27
	ret nz                                           ; $6bb5: $c0

	ld [$00e4], sp                                   ; $6bb6: $08 $e4 $00
	scf                                              ; $6bb9: $37
	ld bc, $0dd1                                     ; $6bba: $01 $d1 $0d
	ret nz                                           ; $6bbd: $c0

	reti                                             ; $6bbe: $d9


	jp c, $d0d8                                      ; $6bbf: $da $d8 $d0

	add h                                            ; $6bc2: $84
	and b                                            ; $6bc3: $a0
	daa                                              ; $6bc4: $27
	ret nz                                           ; $6bc5: $c0

	ld [$00e4], sp                                   ; $6bc6: $08 $e4 $00
	ld l, a                                          ; $6bc9: $6f
	ld bc, $22d2                                     ; $6bca: $01 $d2 $22
	ret nz                                           ; $6bcd: $c0

	ld bc, $01a0                                     ; $6bce: $01 $a0 $01
	inc bc                                           ; $6bd1: $03
	and b                                            ; $6bd2: $a0
	ret nz                                           ; $6bd3: $c0

	ld bc, $01a0                                     ; $6bd4: $01 $a0 $01
	inc bc                                           ; $6bd7: $03
	xor h                                            ; $6bd8: $ac
	ret nz                                           ; $6bd9: $c0

	ld bc, $02a0                                     ; $6bda: $01 $a0 $02
	inc bc                                           ; $6bdd: $03
	or [hl]                                          ; $6bde: $b6
	ret nz                                           ; $6bdf: $c0

	ld bc, $01a0                                     ; $6be0: $01 $a0 $01
	inc bc                                           ; $6be3: $03
	cp h                                             ; $6be4: $bc
	ret nz                                           ; $6be5: $c0

	ld hl, $d0d1                                     ; $6be6: $21 $d1 $d0
	ldh [rAUD3LEVEL], a                              ; $6be9: $e0 $1c
	jp nz, $10e4                                     ; $6beb: $c2 $e4 $10

	halt                                             ; $6bee: $76
	add hl, bc                                       ; $6bef: $09
	ld b, [hl]                                       ; $6bf0: $46
	ret nz                                           ; $6bf1: $c0

	ld bc, $01a0                                     ; $6bf2: $01 $a0 $01
	inc bc                                           ; $6bf5: $03
	ret nz                                           ; $6bf6: $c0

	ret nz                                           ; $6bf7: $c0

	ld bc, $02a0                                     ; $6bf8: $01 $a0 $02
	inc bc                                           ; $6bfb: $03
	ret z                                            ; $6bfc: $c8

	ret nz                                           ; $6bfd: $c0

	inc c                                            ; $6bfe: $0c
	ldh [rAUD3HIGH], a                               ; $6bff: $e0 $1e
	ret nz                                           ; $6c01: $c0

	ld bc, $02a0                                     ; $6c02: $01 $a0 $02
	inc bc                                           ; $6c05: $03
	ret nc                                           ; $6c06: $d0

	ret nz                                           ; $6c07: $c0

	ld bc, $01a0                                     ; $6c08: $01 $a0 $01
	inc bc                                           ; $6c0b: $03
	db $d3                                           ; $6c0c: $d3
	ret nz                                           ; $6c0d: $c0

	ld bc, $02a0                                     ; $6c0e: $01 $a0 $02
	inc bc                                           ; $6c11: $03
	ldh [$c0], a                                     ; $6c12: $e0 $c0
	ld bc, $01a0                                     ; $6c14: $01 $a0 $01
	inc bc                                           ; $6c17: $03
	jp hl                                            ; $6c18: $e9


	ldh [rAUD3LEVEL], a                              ; $6c19: $e0 $1c
	sub d                                            ; $6c1b: $92
	ret nz                                           ; $6c1c: $c0

	ld bc, $01a0                                     ; $6c1d: $01 $a0 $01
	inc bc                                           ; $6c20: $03
	di                                               ; $6c21: $f3
	ret nc                                           ; $6c22: $d0

	adc e                                            ; $6c23: $8b
	nop                                              ; $6c24: $00
	sub l                                            ; $6c25: $95
	or b                                             ; $6c26: $b0
	inc bc                                           ; $6c27: $03
	ei                                               ; $6c28: $fb
	db $fc                                           ; $6c29: $fc
	add h                                            ; $6c2a: $84
	and b                                            ; $6c2b: $a0
	daa                                              ; $6c2c: $27
	ldh [rAUD1ENV], a                                ; $6c2d: $e0 $12
	inc b                                            ; $6c2f: $04
	ret nz                                           ; $6c30: $c0

	ld [hl+], a                                      ; $6c31: $22
	pop de                                           ; $6c32: $d1
	ret nc                                           ; $6c33: $d0

	db $e4                                           ; $6c34: $e4
	db $10                                           ; $6c35: $10
	ld l, $09                                        ; $6c36: $2e $09
	adc d                                            ; $6c38: $8a
	ret nz                                           ; $6c39: $c0

	ld bc, $01a0                                     ; $6c3a: $01 $a0 $01
	inc bc                                           ; $6c3d: $03
	ret nz                                           ; $6c3e: $c0

	add d                                            ; $6c3f: $82
	ret nz                                           ; $6c40: $c0

	ld e, c                                          ; $6c41: $59
	ret nc                                           ; $6c42: $d0

	add h                                            ; $6c43: $84
	and b                                            ; $6c44: $a0
	daa                                              ; $6c45: $27
	ld [bc], a                                       ; $6c46: $02
	ret nc                                           ; $6c47: $d0

	pop de                                           ; $6c48: $d1
	dec hl                                           ; $6c49: $2b

jr_07a_6c4a:
	ret nz                                           ; $6c4a: $c0

	ld bc, $02a0                                     ; $6c4b: $01 $a0 $02
	inc bc                                           ; $6c4e: $03
	ld sp, hl                                        ; $6c4f: $f9

jr_07a_6c50:
	ret nz                                           ; $6c50: $c0

	inc c                                            ; $6c51: $0c
	ldh [rAUD3HIGH], a                               ; $6c52: $e0 $1e
	ret nz                                           ; $6c54: $c0

	ld bc, $02a0                                     ; $6c55: $01 $a0 $02
	inc b                                            ; $6c58: $04
	nop                                              ; $6c59: $00
	ret nz                                           ; $6c5a: $c0

	ld bc, $01a0                                     ; $6c5b: $01 $a0 $01
	inc b                                            ; $6c5e: $04
	ld c, $c0                                        ; $6c5f: $0e $c0
	ld bc, $02a0                                     ; $6c61: $01 $a0 $02
	inc b                                            ; $6c64: $04
	rla                                              ; $6c65: $17
	ret nz                                           ; $6c66: $c0

	ld bc, $01a0                                     ; $6c67: $01 $a0 $01
	inc b                                            ; $6c6a: $04
	dec e                                            ; $6c6b: $1d
	ldh [rAUD3LEVEL], a                              ; $6c6c: $e0 $1c
	ccf                                              ; $6c6e: $3f
	ret nz                                           ; $6c6f: $c0

	ld bc, $01a0                                     ; $6c70: $01 $a0 $01
	inc b                                            ; $6c73: $04
	dec h                                            ; $6c74: $25
	ld [bc], a                                       ; $6c75: $02
	jp nc, $25d3                                     ; $6c76: $d2 $d3 $25

	ret nz                                           ; $6c79: $c0

	ld bc, $02a0                                     ; $6c7a: $01 $a0 $02
	inc bc                                           ; $6c7d: $03
	ld sp, hl                                        ; $6c7e: $f9
	ret nz                                           ; $6c7f: $c0

	inc c                                            ; $6c80: $0c
	ldh [rAUD3HIGH], a                               ; $6c81: $e0 $1e
	ret nz                                           ; $6c83: $c0

	ld bc, $02a0                                     ; $6c84: $01 $a0 $02
	inc b                                            ; $6c87: $04
	jr nc, jr_07a_6c4a                               ; $6c88: $30 $c0

	ld bc, $01a0                                     ; $6c8a: $01 $a0 $01
	inc b                                            ; $6c8d: $04
	jr c, jr_07a_6c50                                ; $6c8e: $38 $c0

	ld bc, $02a0                                     ; $6c90: $01 $a0 $02
	inc b                                            ; $6c93: $04
	ld b, c                                          ; $6c94: $41
	ldh [rAUD3LEVEL], a                              ; $6c95: $e0 $1c
	ld d, $c0                                        ; $6c97: $16 $c0
	ld bc, $01a0                                     ; $6c99: $01 $a0 $01
	inc b                                            ; $6c9c: $04
	ld b, l                                          ; $6c9d: $45
	ld [bc], a                                       ; $6c9e: $02
	call nc, $1ed5                                   ; $6c9f: $d4 $d5 $1e
	ret nz                                           ; $6ca2: $c0

	inc c                                            ; $6ca3: $0c
	rst SubAFromDE                                          ; $6ca4: $df
	ret nz                                           ; $6ca5: $c0

	ld bc, $02a0                                     ; $6ca6: $01 $a0 $02
	inc b                                            ; $6ca9: $04
	ld c, [hl]                                       ; $6caa: $4e
	ret nz                                           ; $6cab: $c0

	ld bc, $01a0                                     ; $6cac: $01 $a0 $01
	inc b                                            ; $6caf: $04
	ld d, l                                          ; $6cb0: $55
	ret nz                                           ; $6cb1: $c0

	ld bc, $02a0                                     ; $6cb2: $01 $a0 $02
	inc b                                            ; $6cb5: $04
	ld e, l                                          ; $6cb6: $5d
	ldh [rAUD3LEN], a                                ; $6cb7: $e0 $1b
	db $f4                                           ; $6cb9: $f4
	ret nz                                           ; $6cba: $c0

	ld bc, $01a0                                     ; $6cbb: $01 $a0 $01
	inc b                                            ; $6cbe: $04
	ld h, h                                          ; $6cbf: $64
	db $e4                                           ; $6cc0: $e4
	rrca                                             ; $6cc1: $0f
	and d                                            ; $6cc2: $a2
	add hl, bc                                       ; $6cc3: $09
	ld d, [hl]                                       ; $6cc4: $56
	ret nz                                           ; $6cc5: $c0

	ld bc, $02a0                                     ; $6cc6: $01 $a0 $02
	inc b                                            ; $6cc9: $04
	ld l, c                                          ; $6cca: $69
	ret nz                                           ; $6ccb: $c0

	ld bc, $01a0                                     ; $6ccc: $01 $a0 $01
	inc b                                            ; $6ccf: $04
	ld l, [hl]                                       ; $6cd0: $6e
	ret nz                                           ; $6cd1: $c0

	ld bc, $02a0                                     ; $6cd2: $01 $a0 $02
	inc b                                            ; $6cd5: $04
	ld [hl], l                                       ; $6cd6: $75
	ret nz                                           ; $6cd7: $c0

	ld bc, $01a0                                     ; $6cd8: $01 $a0 $01
	inc b                                            ; $6cdb: $04
	ld a, l                                          ; $6cdc: $7d
	ret nz                                           ; $6cdd: $c0

	ld bc, $01a0                                     ; $6cde: $01 $a0 $01
	inc b                                            ; $6ce1: $04
	ld a, a                                          ; $6ce2: $7f
	pop hl                                           ; $6ce3: $e1
	ld [bc], a                                       ; $6ce4: $02
	rlca                                             ; $6ce5: $07
	cp a                                             ; $6ce6: $bf
	ret nz                                           ; $6ce7: $c0

	ld bc, $02a0                                     ; $6ce8: $01 $a0 $02
	inc b                                            ; $6ceb: $04
	add a                                            ; $6cec: $87
	ldh [rAUD3LEN], a                                ; $6ced: $e0 $1b
	cp [hl]                                          ; $6cef: $be
	ret nz                                           ; $6cf0: $c0

	ld bc, $01a0                                     ; $6cf1: $01 $a0 $01
	inc b                                            ; $6cf4: $04
	adc h                                            ; $6cf5: $8c
	ld h, b                                          ; $6cf6: $60
	add b                                            ; $6cf7: $80
	nop                                              ; $6cf8: $00
	and c                                            ; $6cf9: $a1
	rrca                                             ; $6cfa: $0f
	ei                                               ; $6cfb: $fb
	ld hl, sp-$40                                    ; $6cfc: $f8 $c0
	dec d                                            ; $6cfe: $15
	ret nc                                           ; $6cff: $d0

	rst SubAFromDE                                          ; $6d00: $df
	inc b                                            ; $6d01: $04
	ret nz                                           ; $6d02: $c0

	ld e, $df                                        ; $6d03: $1e $df
	ret nc                                           ; $6d05: $d0

	ld b, b                                          ; $6d06: $40
	add b                                            ; $6d07: $80
	nop                                              ; $6d08: $00
	and c                                            ; $6d09: $a1
	dec c                                            ; $6d0a: $0d
	ei                                               ; $6d0b: $fb
	ld hl, sp-$40                                    ; $6d0c: $f8 $c0
	dec d                                            ; $6d0e: $15
	ret nc                                           ; $6d0f: $d0

	ldh [rAUD3HIGH], a                               ; $6d10: $e0 $1e
	dec b                                            ; $6d12: $05
	ret nz                                           ; $6d13: $c0

	ld e, $e0                                        ; $6d14: $1e $e0
	ld e, $d0                                        ; $6d16: $1e $d0
	db $e4                                           ; $6d18: $e4
	rrca                                             ; $6d19: $0f
	ld c, d                                          ; $6d1a: $4a
	add hl, bc                                       ; $6d1b: $09
	ld l, b                                          ; $6d1c: $68
	ld h, c                                          ; $6d1d: $61
	add b                                            ; $6d1e: $80
	nop                                              ; $6d1f: $00
	and d                                            ; $6d20: $a2
	add hl, de                                       ; $6d21: $19
	ldh [rIF], a                                     ; $6d22: $e0 $0f
	cpl                                              ; $6d24: $2f
	ldh [rIF], a                                     ; $6d25: $e0 $0f
	inc hl                                           ; $6d27: $23
	ret nz                                           ; $6d28: $c0

	ld bc, $03a0                                     ; $6d29: $01 $a0 $03
	inc b                                            ; $6d2c: $04
	sbc b                                            ; $6d2d: $98
	ret nz                                           ; $6d2e: $c0

	ld bc, $01a0                                     ; $6d2f: $01 $a0 $01
	inc bc                                           ; $6d32: $03
	add c                                            ; $6d33: $81
	ld b, b                                          ; $6d34: $40
	add b                                            ; $6d35: $80
	nop                                              ; $6d36: $00
	and d                                            ; $6d37: $a2
	db $e4                                           ; $6d38: $e4
	ld bc, $806e                                     ; $6d39: $01 $6e $80
	and b                                            ; $6d3c: $a0
	ld [bc], a                                       ; $6d3d: $02
	inc bc                                           ; $6d3e: $03
	ldh [$0e], a                                     ; $6d3f: $e0 $0e
	di                                               ; $6d41: $f3
	ld b, d                                          ; $6d42: $42
	ldh [rIF], a                                     ; $6d43: $e0 $0f
	ld c, $e0                                        ; $6d45: $0e $e0
	rrca                                             ; $6d47: $0f
	ld [bc], a                                       ; $6d48: $02
	ret nz                                           ; $6d49: $c0

	ld bc, $03a0                                     ; $6d4a: $01 $a0 $03
	inc b                                            ; $6d4d: $04
	sbc b                                            ; $6d4e: $98
	ret nz                                           ; $6d4f: $c0

	ld bc, $01a0                                     ; $6d50: $01 $a0 $01
	inc bc                                           ; $6d53: $03
	add c                                            ; $6d54: $81
	add e                                            ; $6d55: $83
	ret nz                                           ; $6d56: $c0

	dec de                                           ; $6d57: $1b
	pop de                                           ; $6d58: $d1
	ld [bc], a                                       ; $6d59: $02
	ret nc                                           ; $6d5a: $d0

	pop de                                           ; $6d5b: $d1
	add hl, bc                                       ; $6d5c: $09
	ret nz                                           ; $6d5d: $c0

	ld bc, $03a0                                     ; $6d5e: $01 $a0 $03
	inc b                                            ; $6d61: $04
	sbc h                                            ; $6d62: $9c
	db $e4                                           ; $6d63: $e4
	nop                                              ; $6d64: $00
	ld hl, $d202                                     ; $6d65: $21 $02 $d2
	db $d3                                           ; $6d68: $d3
	add hl, bc                                       ; $6d69: $09
	ret nz                                           ; $6d6a: $c0

	ld bc, $03a0                                     ; $6d6b: $01 $a0 $03
	inc b                                            ; $6d6e: $04
	and h                                            ; $6d6f: $a4
	db $e4                                           ; $6d70: $e4
	nop                                              ; $6d71: $00
	inc d                                            ; $6d72: $14
	ld bc, $09d4                                     ; $6d73: $01 $d4 $09
	ret nz                                           ; $6d76: $c0

	ld bc, $03a0                                     ; $6d77: $01 $a0 $03
	inc b                                            ; $6d7a: $04
	xor c                                            ; $6d7b: $a9
	db $e4                                           ; $6d7c: $e4
	nop                                              ; $6d7d: $00
	ld [$d501], sp                                   ; $6d7e: $08 $01 $d5
	inc bc                                           ; $6d81: $03
	db $e4                                           ; $6d82: $e4
	ld bc, $0924                                     ; $6d83: $01 $24 $09
	ld b, l                                          ; $6d86: $45
	ret nz                                           ; $6d87: $c0

	ld h, $dc                                        ; $6d88: $26 $dc
	pop de                                           ; $6d8a: $d1
	add d                                            ; $6d8b: $82
	pop bc                                           ; $6d8c: $c1
	xor a                                            ; $6d8d: $af
	pop de                                           ; $6d8e: $d1
	ld bc, $09d0                                     ; $6d8f: $01 $d0 $09
	ret nc                                           ; $6d92: $d0

	add h                                            ; $6d93: $84
	and b                                            ; $6d94: $a0
	daa                                              ; $6d95: $27
	ret nz                                           ; $6d96: $c0

	ld [$00e4], sp                                   ; $6d97: $08 $e4 $00
	inc sp                                           ; $6d9a: $33
	ld bc, $0dd1                                     ; $6d9b: $01 $d1 $0d
	ret nz                                           ; $6d9e: $c0

	reti                                             ; $6d9f: $d9


	jp c, $d0d8                                      ; $6da0: $da $d8 $d0

	add h                                            ; $6da3: $84
	and b                                            ; $6da4: $a0
	daa                                              ; $6da5: $27
	ret nz                                           ; $6da6: $c0

	ld [$00e4], sp                                   ; $6da7: $08 $e4 $00
	ld l, e                                          ; $6daa: $6b
	ld bc, $1ed2                                     ; $6dab: $01 $d2 $1e
	ret nz                                           ; $6dae: $c0

	ld bc, $01a0                                     ; $6daf: $01 $a0 $01
	inc bc                                           ; $6db2: $03
	and b                                            ; $6db3: $a0
	ret nz                                           ; $6db4: $c0

	ld bc, $01a0                                     ; $6db5: $01 $a0 $01
	inc b                                            ; $6db8: $04
	or c                                             ; $6db9: $b1
	ret nz                                           ; $6dba: $c0

	ld bc, $03a0                                     ; $6dbb: $01 $a0 $03
	inc b                                            ; $6dbe: $04
	cp e                                             ; $6dbf: $bb
	ret nz                                           ; $6dc0: $c0

	ld bc, $01a0                                     ; $6dc1: $01 $a0 $01
	inc bc                                           ; $6dc4: $03
	cp h                                             ; $6dc5: $bc
	ldh [rAUD3ENA], a                                ; $6dc6: $e0 $1a
	push hl                                          ; $6dc8: $e5
	db $e4                                           ; $6dc9: $e4
	ld c, $99                                        ; $6dca: $0e $99
	add hl, bc                                       ; $6dcc: $09
	ld b, [hl]                                       ; $6dcd: $46
	ret nz                                           ; $6dce: $c0

	ld bc, $01a0                                     ; $6dcf: $01 $a0 $01
	inc bc                                           ; $6dd2: $03
	ret nz                                           ; $6dd3: $c0

	ret nz                                           ; $6dd4: $c0

	ld bc, $03a0                                     ; $6dd5: $01 $a0 $03
	inc b                                            ; $6dd8: $04
	jp $0cc0                                         ; $6dd9: $c3 $c0 $0c


	ldh [rAUD3HIGH], a                               ; $6ddc: $e0 $1e
	ret nz                                           ; $6dde: $c0

	ld bc, $03a0                                     ; $6ddf: $01 $a0 $03
	inc b                                            ; $6de2: $04
	jp z, $01c0                                      ; $6de3: $ca $c0 $01

	and b                                            ; $6de6: $a0
	ld bc, $d303                                     ; $6de7: $01 $03 $d3
	ret nz                                           ; $6dea: $c0

	ld bc, $03a0                                     ; $6deb: $01 $a0 $03
	inc b                                            ; $6dee: $04
	adc $c0                                          ; $6def: $ce $c0
	ld bc, $01a0                                     ; $6df1: $01 $a0 $01
	inc b                                            ; $6df4: $04
	db $d3                                           ; $6df5: $d3
	ldh [rAUD3ENA], a                                ; $6df6: $e0 $1a
	or l                                             ; $6df8: $b5
	ret nz                                           ; $6df9: $c0

	ld bc, $01a0                                     ; $6dfa: $01 $a0 $01
	inc bc                                           ; $6dfd: $03
	di                                               ; $6dfe: $f3
	ret nc                                           ; $6dff: $d0

	adc e                                            ; $6e00: $8b
	nop                                              ; $6e01: $00
	sub l                                            ; $6e02: $95
	or b                                             ; $6e03: $b0
	inc b                                            ; $6e04: $04
	ei                                               ; $6e05: $fb
	db $fc                                           ; $6e06: $fc
	add h                                            ; $6e07: $84
	and b                                            ; $6e08: $a0
	daa                                              ; $6e09: $27
	ldh [rAUD1ENV], a                                ; $6e0a: $e0 $12
	inc b                                            ; $6e0c: $04
	ret nz                                           ; $6e0d: $c0

	ld [hl+], a                                      ; $6e0e: $22
	pop de                                           ; $6e0f: $d1
	pop de                                           ; $6e10: $d1
	db $e4                                           ; $6e11: $e4
	ld c, $51                                        ; $6e12: $0e $51
	add hl, bc                                       ; $6e14: $09
	sub c                                            ; $6e15: $91
	ret nz                                           ; $6e16: $c0

	ld bc, $01a0                                     ; $6e17: $01 $a0 $01
	inc bc                                           ; $6e1a: $03
	ret nz                                           ; $6e1b: $c0

	add d                                            ; $6e1c: $82
	ret nz                                           ; $6e1d: $c0

	ld e, c                                          ; $6e1e: $59
	pop de                                           ; $6e1f: $d1
	add h                                            ; $6e20: $84
	and b                                            ; $6e21: $a0
	daa                                              ; $6e22: $27
	ld [bc], a                                       ; $6e23: $02
	ret nc                                           ; $6e24: $d0

	pop de                                           ; $6e25: $d1
	dec hl                                           ; $6e26: $2b
	ret nz                                           ; $6e27: $c0

	ld bc, $03a0                                     ; $6e28: $01 $a0 $03
	inc b                                            ; $6e2b: $04
	jp c, $0cc0                                      ; $6e2c: $da $c0 $0c

	ldh [rAUD3HIGH], a                               ; $6e2f: $e0 $1e
	ret nz                                           ; $6e31: $c0

	ld bc, $03a0                                     ; $6e32: $01 $a0 $03
	inc b                                            ; $6e35: $04
	ldh [$c0], a                                     ; $6e36: $e0 $c0
	ld bc, $01a0                                     ; $6e38: $01 $a0 $01
	inc b                                            ; $6e3b: $04
	rst SubAFromBC                                          ; $6e3c: $e7
	ret nz                                           ; $6e3d: $c0

	ld bc, $03a0                                     ; $6e3e: $01 $a0 $03
	inc b                                            ; $6e41: $04
	db $eb                                           ; $6e42: $eb
	ret nz                                           ; $6e43: $c0

	ld bc, $01a0                                     ; $6e44: $01 $a0 $01
	inc b                                            ; $6e47: $04
	db $f4                                           ; $6e48: $f4
	ldh [rAUD3ENA], a                                ; $6e49: $e0 $1a
	ld h, d                                          ; $6e4b: $62
	ret nz                                           ; $6e4c: $c0

	ld bc, $01a0                                     ; $6e4d: $01 $a0 $01
	inc b                                            ; $6e50: $04
	dec h                                            ; $6e51: $25
	ld [bc], a                                       ; $6e52: $02
	jp nc, $25d3                                     ; $6e53: $d2 $d3 $25

	ret nz                                           ; $6e56: $c0

	ld bc, $03a0                                     ; $6e57: $01 $a0 $03
	inc b                                            ; $6e5a: $04
	jp c, $0cc0                                      ; $6e5b: $da $c0 $0c

	ldh [rAUD3HIGH], a                               ; $6e5e: $e0 $1e
	ret nz                                           ; $6e60: $c0

	ld bc, $03a0                                     ; $6e61: $01 $a0 $03
	dec b                                            ; $6e64: $05
	ld [bc], a                                       ; $6e65: $02
	ret nz                                           ; $6e66: $c0

	ld bc, $01a0                                     ; $6e67: $01 $a0 $01
	inc b                                            ; $6e6a: $04
	jr c, @-$3e                                      ; $6e6b: $38 $c0

	ld bc, $03a0                                     ; $6e6d: $01 $a0 $03
	dec b                                            ; $6e70: $05
	ld c, $e0                                        ; $6e71: $0e $e0
	ld a, [de]                                       ; $6e73: $1a
	add hl, sp                                       ; $6e74: $39
	ret nz                                           ; $6e75: $c0

	ld bc, $01a0                                     ; $6e76: $01 $a0 $01
	inc b                                            ; $6e79: $04
	ld b, l                                          ; $6e7a: $45
	ld [bc], a                                       ; $6e7b: $02
	call nc, $25d5                                   ; $6e7c: $d4 $d5 $25
	ret nz                                           ; $6e7f: $c0

	ld bc, $03a0                                     ; $6e80: $01 $a0 $03
	inc b                                            ; $6e83: $04
	jp c, $0cc0                                      ; $6e84: $da $c0 $0c

	ldh [rAUD3HIGH], a                               ; $6e87: $e0 $1e
	ret nz                                           ; $6e89: $c0

	ld bc, $03a0                                     ; $6e8a: $01 $a0 $03
	dec b                                            ; $6e8d: $05
	db $10                                           ; $6e8e: $10
	ret nz                                           ; $6e8f: $c0

	ld bc, $01a0                                     ; $6e90: $01 $a0 $01
	inc b                                            ; $6e93: $04
	ld d, l                                          ; $6e94: $55
	ret nz                                           ; $6e95: $c0

	ld bc, $03a0                                     ; $6e96: $01 $a0 $03
	dec b                                            ; $6e99: $05
	inc e                                            ; $6e9a: $1c
	ldh [rAUD3ENA], a                                ; $6e9b: $e0 $1a
	db $10                                           ; $6e9d: $10
	ret nz                                           ; $6e9e: $c0

	ld bc, $01a0                                     ; $6e9f: $01 $a0 $01
	inc b                                            ; $6ea2: $04
	ld h, h                                          ; $6ea3: $64
	db $e4                                           ; $6ea4: $e4
	dec c                                            ; $6ea5: $0d
	cp [hl]                                          ; $6ea6: $be
	add hl, bc                                       ; $6ea7: $09
	ld d, [hl]                                       ; $6ea8: $56
	ret nz                                           ; $6ea9: $c0

	ld bc, $03a0                                     ; $6eaa: $01 $a0 $03
	dec b                                            ; $6ead: $05
	inc h                                            ; $6eae: $24
	ret nz                                           ; $6eaf: $c0

	ld bc, $01a0                                     ; $6eb0: $01 $a0 $01
	dec b                                            ; $6eb3: $05
	dec l                                            ; $6eb4: $2d
	ret nz                                           ; $6eb5: $c0

	ld bc, $03a0                                     ; $6eb6: $01 $a0 $03
	dec b                                            ; $6eb9: $05
	ld [hl-], a                                      ; $6eba: $32
	ret nz                                           ; $6ebb: $c0

	ld bc, $01a0                                     ; $6ebc: $01 $a0 $01
	inc b                                            ; $6ebf: $04
	ld a, l                                          ; $6ec0: $7d
	ret nz                                           ; $6ec1: $c0

	ld bc, $01a0                                     ; $6ec2: $01 $a0 $01
	dec b                                            ; $6ec5: $05
	dec sp                                           ; $6ec6: $3b
	pop hl                                           ; $6ec7: $e1
	ld [bc], a                                       ; $6ec8: $02
	rlca                                             ; $6ec9: $07
	cp a                                             ; $6eca: $bf
	ret nz                                           ; $6ecb: $c0

	ld bc, $03a0                                     ; $6ecc: $01 $a0 $03
	dec b                                            ; $6ecf: $05
	ld b, e                                          ; $6ed0: $43
	ldh [rAUD2HIGH], a                               ; $6ed1: $e0 $19
	jp c, $01c0                                      ; $6ed3: $da $c0 $01

	and b                                            ; $6ed6: $a0
	ld bc, $4705                                     ; $6ed7: $01 $05 $47
	ld h, b                                          ; $6eda: $60
	add b                                            ; $6edb: $80
	nop                                              ; $6edc: $00
	and e                                            ; $6edd: $a3
	rrca                                             ; $6ede: $0f
	ei                                               ; $6edf: $fb
	ld hl, sp-$40                                    ; $6ee0: $f8 $c0
	dec d                                            ; $6ee2: $15
	pop de                                           ; $6ee3: $d1
	rst SubAFromDE                                          ; $6ee4: $df
	inc b                                            ; $6ee5: $04
	ret nz                                           ; $6ee6: $c0

	ld e, $df                                        ; $6ee7: $1e $df
	pop de                                           ; $6ee9: $d1
	ld b, b                                          ; $6eea: $40
	add b                                            ; $6eeb: $80
	nop                                              ; $6eec: $00
	and e                                            ; $6eed: $a3
	dec c                                            ; $6eee: $0d
	ei                                               ; $6eef: $fb
	ld hl, sp-$40                                    ; $6ef0: $f8 $c0
	dec d                                            ; $6ef2: $15
	pop de                                           ; $6ef3: $d1
	ldh [rAUD3HIGH], a                               ; $6ef4: $e0 $1e
	dec b                                            ; $6ef6: $05
	ret nz                                           ; $6ef7: $c0

	ld e, $e0                                        ; $6ef8: $1e $e0
	ld e, $d1                                        ; $6efa: $1e $d1
	db $e4                                           ; $6efc: $e4
	dec c                                            ; $6efd: $0d
	ld h, [hl]                                       ; $6efe: $66
	add hl, bc                                       ; $6eff: $09
	ld l, b                                          ; $6f00: $68
	ld h, c                                          ; $6f01: $61
	add b                                            ; $6f02: $80
	nop                                              ; $6f03: $00
	and h                                            ; $6f04: $a4
	add hl, de                                       ; $6f05: $19
	ldh [$0d], a                                     ; $6f06: $e0 $0d
	ld c, e                                          ; $6f08: $4b
	ldh [$0d], a                                     ; $6f09: $e0 $0d
	ccf                                              ; $6f0b: $3f
	ret nz                                           ; $6f0c: $c0

	ld bc, $04a0                                     ; $6f0d: $01 $a0 $04
	dec b                                            ; $6f10: $05
	ld d, e                                          ; $6f11: $53
	ret nz                                           ; $6f12: $c0

	ld bc, $01a0                                     ; $6f13: $01 $a0 $01
	inc bc                                           ; $6f16: $03
	add c                                            ; $6f17: $81
	ld b, b                                          ; $6f18: $40
	add b                                            ; $6f19: $80
	nop                                              ; $6f1a: $00
	and h                                            ; $6f1b: $a4
	db $e4                                           ; $6f1c: $e4
	ld bc, $806d                                     ; $6f1d: $01 $6d $80
	and b                                            ; $6f20: $a0
	inc bc                                           ; $6f21: $03
	inc bc                                           ; $6f22: $03
	ldh [$0d], a                                     ; $6f23: $e0 $0d
	rrca                                             ; $6f25: $0f
	ld b, d                                          ; $6f26: $42
	ldh [$0d], a                                     ; $6f27: $e0 $0d
	ld a, [hl+]                                      ; $6f29: $2a
	ldh [$0d], a                                     ; $6f2a: $e0 $0d
	ld e, $c0                                        ; $6f2c: $1e $c0
	ld bc, $04a0                                     ; $6f2e: $01 $a0 $04
	dec b                                            ; $6f31: $05
	ld d, e                                          ; $6f32: $53
	ret nz                                           ; $6f33: $c0

	ld bc, $01a0                                     ; $6f34: $01 $a0 $01
	inc bc                                           ; $6f37: $03
	add c                                            ; $6f38: $81
	add e                                            ; $6f39: $83
	ret nz                                           ; $6f3a: $c0

	dec de                                           ; $6f3b: $1b
	jp nc, $d002                                     ; $6f3c: $d2 $02 $d0

	pop de                                           ; $6f3f: $d1
	add hl, bc                                       ; $6f40: $09
	ret nz                                           ; $6f41: $c0

	ld bc, $04a0                                     ; $6f42: $01 $a0 $04
	dec b                                            ; $6f45: $05
	ld d, a                                          ; $6f46: $57
	db $e4                                           ; $6f47: $e4
	nop                                              ; $6f48: $00
	ld hl, $d202                                     ; $6f49: $21 $02 $d2
	db $d3                                           ; $6f4c: $d3
	add hl, bc                                       ; $6f4d: $09
	ret nz                                           ; $6f4e: $c0

	ld bc, $04a0                                     ; $6f4f: $01 $a0 $04
	dec b                                            ; $6f52: $05
	ld h, [hl]                                       ; $6f53: $66
	db $e4                                           ; $6f54: $e4
	nop                                              ; $6f55: $00
	inc d                                            ; $6f56: $14
	ld bc, $09d4                                     ; $6f57: $01 $d4 $09
	ret nz                                           ; $6f5a: $c0

	ld bc, $04a0                                     ; $6f5b: $01 $a0 $04
	dec b                                            ; $6f5e: $05
	ld [hl], c                                       ; $6f5f: $71
	db $e4                                           ; $6f60: $e4
	nop                                              ; $6f61: $00
	ld [$d501], sp                                   ; $6f62: $08 $01 $d5
	inc bc                                           ; $6f65: $03
	db $e4                                           ; $6f66: $e4
	ld bc, $0923                                     ; $6f67: $01 $23 $09
	ld b, l                                          ; $6f6a: $45
	ret nz                                           ; $6f6b: $c0

	ld h, $dc                                        ; $6f6c: $26 $dc
	jp nc, $c182                                     ; $6f6e: $d2 $82 $c1

	xor a                                            ; $6f71: $af
	jp nc, $d001                                     ; $6f72: $d2 $01 $d0

	add hl, bc                                       ; $6f75: $09
	ret nc                                           ; $6f76: $d0

	add h                                            ; $6f77: $84
	and b                                            ; $6f78: $a0
	daa                                              ; $6f79: $27
	ret nz                                           ; $6f7a: $c0

	ld [$00e4], sp                                   ; $6f7b: $08 $e4 $00
	inc sp                                           ; $6f7e: $33
	ld bc, $0dd1                                     ; $6f7f: $01 $d1 $0d
	ret nz                                           ; $6f82: $c0

	reti                                             ; $6f83: $d9


	jp c, $d0d8                                      ; $6f84: $da $d8 $d0

	add h                                            ; $6f87: $84
	and b                                            ; $6f88: $a0
	daa                                              ; $6f89: $27
	ret nz                                           ; $6f8a: $c0

	ld [$00e4], sp                                   ; $6f8b: $08 $e4 $00
	ld [hl], c                                       ; $6f8e: $71
	ld bc, $1ed2                                     ; $6f8f: $01 $d2 $1e
	ret nz                                           ; $6f92: $c0

	ld bc, $01a0                                     ; $6f93: $01 $a0 $01
	inc bc                                           ; $6f96: $03
	and b                                            ; $6f97: $a0
	ret nz                                           ; $6f98: $c0

	ld bc, $01a0                                     ; $6f99: $01 $a0 $01
	dec b                                            ; $6f9c: $05
	ld a, b                                          ; $6f9d: $78
	ret nz                                           ; $6f9e: $c0

	ld bc, $04a0                                     ; $6f9f: $01 $a0 $04
	dec b                                            ; $6fa2: $05
	add e                                            ; $6fa3: $83
	ret nz                                           ; $6fa4: $c0

	ld bc, $01a0                                     ; $6fa5: $01 $a0 $01
	dec b                                            ; $6fa8: $05
	adc e                                            ; $6fa9: $8b
	ldh [rAUD2HIGH], a                               ; $6faa: $e0 $19
	ld bc, $0ce4                                     ; $6fac: $01 $e4 $0c
	or l                                             ; $6faf: $b5
	add hl, bc                                       ; $6fb0: $09
	ld c, h                                          ; $6fb1: $4c
	ret nz                                           ; $6fb2: $c0

	ld bc, $01a0                                     ; $6fb3: $01 $a0 $01
	inc bc                                           ; $6fb6: $03
	ret nz                                           ; $6fb7: $c0

	ret nz                                           ; $6fb8: $c0

	ld bc, $04a0                                     ; $6fb9: $01 $a0 $04
	dec b                                            ; $6fbc: $05
	sub c                                            ; $6fbd: $91
	ret nz                                           ; $6fbe: $c0

	inc c                                            ; $6fbf: $0c
	ldh [rAUD3HIGH], a                               ; $6fc0: $e0 $1e
	ret nz                                           ; $6fc2: $c0

	ld bc, $04a0                                     ; $6fc3: $01 $a0 $04
	dec b                                            ; $6fc6: $05
	sub [hl]                                         ; $6fc7: $96
	ret nz                                           ; $6fc8: $c0

	ld bc, $01a0                                     ; $6fc9: $01 $a0 $01
	inc bc                                           ; $6fcc: $03
	db $d3                                           ; $6fcd: $d3
	ret nz                                           ; $6fce: $c0

	ld bc, $04a0                                     ; $6fcf: $01 $a0 $04
	dec b                                            ; $6fd2: $05
	and h                                            ; $6fd3: $a4
	ret nz                                           ; $6fd4: $c0

	ld bc, $01a0                                     ; $6fd5: $01 $a0 $01
	dec b                                            ; $6fd8: $05
	xor d                                            ; $6fd9: $aa
	ret nz                                           ; $6fda: $c0

	ld bc, $04a0                                     ; $6fdb: $01 $a0 $04
	dec b                                            ; $6fde: $05
	or d                                             ; $6fdf: $b2
	ldh [rAUD2LOW], a                                ; $6fe0: $e0 $18
	set 0, b                                         ; $6fe2: $cb $c0
	ld bc, $01a0                                     ; $6fe4: $01 $a0 $01
	inc bc                                           ; $6fe7: $03
	di                                               ; $6fe8: $f3
	ret nc                                           ; $6fe9: $d0

	adc e                                            ; $6fea: $8b
	nop                                              ; $6feb: $00
	sub l                                            ; $6fec: $95
	or b                                             ; $6fed: $b0
	dec b                                            ; $6fee: $05
	ei                                               ; $6fef: $fb
	db $fc                                           ; $6ff0: $fc
	add h                                            ; $6ff1: $84
	and b                                            ; $6ff2: $a0
	daa                                              ; $6ff3: $27
	ldh [rAUD1ENV], a                                ; $6ff4: $e0 $12
	inc b                                            ; $6ff6: $04
	ret nz                                           ; $6ff7: $c0

	ld [hl+], a                                      ; $6ff8: $22
	pop de                                           ; $6ff9: $d1
	jp nc, $0ce4                                     ; $6ffa: $d2 $e4 $0c

	ld h, a                                          ; $6ffd: $67
	add hl, bc                                       ; $6ffe: $09
	adc d                                            ; $6fff: $8a
	ret nz                                           ; $7000: $c0

	ld bc, $01a0                                     ; $7001: $01 $a0 $01
	inc bc                                           ; $7004: $03
	ret nz                                           ; $7005: $c0

	add d                                            ; $7006: $82
	ret nz                                           ; $7007: $c0

	ld e, c                                          ; $7008: $59
	jp nc, $a084                                     ; $7009: $d2 $84 $a0

	daa                                              ; $700c: $27
	ld [bc], a                                       ; $700d: $02
	ret nc                                           ; $700e: $d0

	pop de                                           ; $700f: $d1
	dec hl                                           ; $7010: $2b
	ret nz                                           ; $7011: $c0

	ld bc, $04a0                                     ; $7012: $01 $a0 $04
	dec b                                            ; $7015: $05
	sub c                                            ; $7016: $91

jr_07a_7017:
	ret nz                                           ; $7017: $c0

	inc c                                            ; $7018: $0c
	ldh [rAUD3HIGH], a                               ; $7019: $e0 $1e
	ret nz                                           ; $701b: $c0

	ld bc, $04a0                                     ; $701c: $01 $a0 $04
	dec b                                            ; $701f: $05
	pop bc                                           ; $7020: $c1
	ret nz                                           ; $7021: $c0

	ld bc, $01a0                                     ; $7022: $01 $a0 $01
	dec b                                            ; $7025: $05
	call $01c0                                       ; $7026: $cd $c0 $01
	and b                                            ; $7029: $a0
	inc b                                            ; $702a: $04
	dec b                                            ; $702b: $05
	jp nc, $01c0                                     ; $702c: $d2 $c0 $01

	and b                                            ; $702f: $a0
	ld bc, $d805                                     ; $7030: $01 $05 $d8
	ldh [rAUD2LOW], a                                ; $7033: $e0 $18
	ld a, b                                          ; $7035: $78
	ret nz                                           ; $7036: $c0

	ld bc, $01a0                                     ; $7037: $01 $a0 $01
	inc b                                            ; $703a: $04
	dec h                                            ; $703b: $25
	ld [bc], a                                       ; $703c: $02
	jp nc, $25d3                                     ; $703d: $d2 $d3 $25

	ret nz                                           ; $7040: $c0

	ld bc, $04a0                                     ; $7041: $01 $a0 $04
	dec b                                            ; $7044: $05
	sub c                                            ; $7045: $91
	ret nz                                           ; $7046: $c0

	inc c                                            ; $7047: $0c
	ldh [rAUD3HIGH], a                               ; $7048: $e0 $1e
	ret nz                                           ; $704a: $c0

	ld bc, $04a0                                     ; $704b: $01 $a0 $04
	dec b                                            ; $704e: $05
	db $e4                                           ; $704f: $e4
	ret nz                                           ; $7050: $c0

	ld bc, $01a0                                     ; $7051: $01 $a0 $01
	inc b                                            ; $7054: $04
	jr c, jr_07a_7017                                ; $7055: $38 $c0

	ld bc, $04a0                                     ; $7057: $01 $a0 $04
	dec b                                            ; $705a: $05
	db $eb                                           ; $705b: $eb
	ldh [rAUD2LOW], a                                ; $705c: $e0 $18
	ld c, a                                          ; $705e: $4f
	ret nz                                           ; $705f: $c0

	ld bc, $01a0                                     ; $7060: $01 $a0 $01
	inc b                                            ; $7063: $04
	ld b, l                                          ; $7064: $45
	ld [bc], a                                       ; $7065: $02
	call nc, $1ed5                                   ; $7066: $d4 $d5 $1e
	ret nz                                           ; $7069: $c0

	inc c                                            ; $706a: $0c
	rst SubAFromDE                                          ; $706b: $df
	ret nz                                           ; $706c: $c0

	ld bc, $04a0                                     ; $706d: $01 $a0 $04
	dec b                                            ; $7070: $05
	ld sp, hl                                        ; $7071: $f9
	ret nz                                           ; $7072: $c0

	ld bc, $01a0                                     ; $7073: $01 $a0 $01
	inc b                                            ; $7076: $04
	ld d, l                                          ; $7077: $55
	ret nz                                           ; $7078: $c0

	ld bc, $04a0                                     ; $7079: $01 $a0 $04
	dec b                                            ; $707c: $05
	cp $e0                                           ; $707d: $fe $e0
	jr jr_07a_70ae                                   ; $707f: $18 $2d

	ret nz                                           ; $7081: $c0

	ld bc, $01a0                                     ; $7082: $01 $a0 $01
	inc b                                            ; $7085: $04
	ld h, h                                          ; $7086: $64
	db $e4                                           ; $7087: $e4
	dec bc                                           ; $7088: $0b
	db $db                                           ; $7089: $db
	add hl, bc                                       ; $708a: $09
	ld d, [hl]                                       ; $708b: $56
	ret nz                                           ; $708c: $c0

	ld bc, $04a0                                     ; $708d: $01 $a0 $04
	ld b, $09                                        ; $7090: $06 $09
	ret nz                                           ; $7092: $c0

	ld bc, $01a0                                     ; $7093: $01 $a0 $01
	ld b, $12                                        ; $7096: $06 $12
	ret nz                                           ; $7098: $c0

	ld bc, $04a0                                     ; $7099: $01 $a0 $04
	ld b, $17                                        ; $709c: $06 $17
	ret nz                                           ; $709e: $c0

	ld bc, $01a0                                     ; $709f: $01 $a0 $01
	inc b                                            ; $70a2: $04
	ld a, l                                          ; $70a3: $7d
	ret nz                                           ; $70a4: $c0

	ld bc, $01a0                                     ; $70a5: $01 $a0 $01
	ld b, $23                                        ; $70a8: $06 $23
	pop hl                                           ; $70aa: $e1
	ld [bc], a                                       ; $70ab: $02
	rlca                                             ; $70ac: $07
	cp a                                             ; $70ad: $bf

jr_07a_70ae:
	ret nz                                           ; $70ae: $c0

	ld bc, $04a0                                     ; $70af: $01 $a0 $04
	ld b, $2b                                        ; $70b2: $06 $2b
	ldh [rAUD2ENV], a                                ; $70b4: $e0 $17
	rst FarCall                                          ; $70b6: $f7
	ret nz                                           ; $70b7: $c0

	ld bc, $01a0                                     ; $70b8: $01 $a0 $01
	ld b, $2e                                        ; $70bb: $06 $2e
	ld h, b                                          ; $70bd: $60
	add b                                            ; $70be: $80
	nop                                              ; $70bf: $00
	and l                                            ; $70c0: $a5
	rrca                                             ; $70c1: $0f
	ei                                               ; $70c2: $fb
	ld hl, sp-$40                                    ; $70c3: $f8 $c0
	dec d                                            ; $70c5: $15
	jp nc, $04df                                     ; $70c6: $d2 $df $04

	ret nz                                           ; $70c9: $c0

	ld e, $df                                        ; $70ca: $1e $df
	jp nc, $8040                                     ; $70cc: $d2 $40 $80

	nop                                              ; $70cf: $00
	and l                                            ; $70d0: $a5
	dec c                                            ; $70d1: $0d
	ei                                               ; $70d2: $fb
	ld hl, sp-$40                                    ; $70d3: $f8 $c0
	dec d                                            ; $70d5: $15
	jp nc, $1ee0                                     ; $70d6: $d2 $e0 $1e

	dec b                                            ; $70d9: $05
	ret nz                                           ; $70da: $c0

	ld e, $e0                                        ; $70db: $1e $e0
	ld e, $d2                                        ; $70dd: $1e $d2
	db $e4                                           ; $70df: $e4
	dec bc                                           ; $70e0: $0b
	add e                                            ; $70e1: $83
	add hl, bc                                       ; $70e2: $09
	ld l, b                                          ; $70e3: $68
	ld h, c                                          ; $70e4: $61
	add b                                            ; $70e5: $80
	nop                                              ; $70e6: $00
	and [hl]                                         ; $70e7: $a6
	add hl, de                                       ; $70e8: $19
	ldh [$0b], a                                     ; $70e9: $e0 $0b
	ld l, b                                          ; $70eb: $68
	ldh [$0b], a                                     ; $70ec: $e0 $0b
	ld e, h                                          ; $70ee: $5c
	ret nz                                           ; $70ef: $c0

	ld bc, $05a0                                     ; $70f0: $01 $a0 $05
	ld b, $3a                                        ; $70f3: $06 $3a
	ret nz                                           ; $70f5: $c0

	ld bc, $01a0                                     ; $70f6: $01 $a0 $01
	inc bc                                           ; $70f9: $03
	add c                                            ; $70fa: $81
	ld b, b                                          ; $70fb: $40
	add b                                            ; $70fc: $80
	nop                                              ; $70fd: $00
	and [hl]                                         ; $70fe: $a6
	db $e4                                           ; $70ff: $e4
	ld bc, $8061                                     ; $7100: $01 $61 $80
	and b                                            ; $7103: $a0
	inc b                                            ; $7104: $04
	inc bc                                           ; $7105: $03
	ldh [$0b], a                                     ; $7106: $e0 $0b
	inc l                                            ; $7108: $2c
	ld b, d                                          ; $7109: $42
	ldh [$0b], a                                     ; $710a: $e0 $0b
	ld b, a                                          ; $710c: $47
	ldh [$0b], a                                     ; $710d: $e0 $0b
	dec sp                                           ; $710f: $3b
	ret nz                                           ; $7110: $c0

	ld bc, $05a0                                     ; $7111: $01 $a0 $05
	ld b, $3a                                        ; $7114: $06 $3a
	ret nz                                           ; $7116: $c0

	ld bc, $01a0                                     ; $7117: $01 $a0 $01
	inc bc                                           ; $711a: $03
	add c                                            ; $711b: $81
	add e                                            ; $711c: $83
	ret nz                                           ; $711d: $c0

	dec de                                           ; $711e: $1b
	db $d3                                           ; $711f: $d3
	ld [bc], a                                       ; $7120: $02
	ret nc                                           ; $7121: $d0

	pop de                                           ; $7122: $d1
	add hl, bc                                       ; $7123: $09
	ret nz                                           ; $7124: $c0

	ld bc, $05a0                                     ; $7125: $01 $a0 $05
	ld b, $3e                                        ; $7128: $06 $3e
	db $e4                                           ; $712a: $e4
	nop                                              ; $712b: $00
	ld hl, $d202                                     ; $712c: $21 $02 $d2
	db $d3                                           ; $712f: $d3
	add hl, bc                                       ; $7130: $09
	ret nz                                           ; $7131: $c0

	ld bc, $05a0                                     ; $7132: $01 $a0 $05
	ld b, $45                                        ; $7135: $06 $45
	db $e4                                           ; $7137: $e4
	nop                                              ; $7138: $00
	inc d                                            ; $7139: $14
	ld bc, $09d4                                     ; $713a: $01 $d4 $09
	ret nz                                           ; $713d: $c0

	ld bc, $05a0                                     ; $713e: $01 $a0 $05
	ld b, $49                                        ; $7141: $06 $49
	db $e4                                           ; $7143: $e4
	nop                                              ; $7144: $00
	ld [$d501], sp                                   ; $7145: $08 $01 $d5
	inc bc                                           ; $7148: $03
	db $e4                                           ; $7149: $e4
	ld bc, $0917                                     ; $714a: $01 $17 $09
	ld b, l                                          ; $714d: $45
	ret nz                                           ; $714e: $c0

	ld h, $dc                                        ; $714f: $26 $dc
	db $d3                                           ; $7151: $d3
	add d                                            ; $7152: $82
	pop bc                                           ; $7153: $c1
	xor a                                            ; $7154: $af
	db $d3                                           ; $7155: $d3
	ld bc, $09d0                                     ; $7156: $01 $d0 $09
	ret nc                                           ; $7159: $d0

	add h                                            ; $715a: $84
	and b                                            ; $715b: $a0
	daa                                              ; $715c: $27
	ret nz                                           ; $715d: $c0

	ld [$00e4], sp                                   ; $715e: $08 $e4 $00
	inc sp                                           ; $7161: $33
	ld bc, $0dd1                                     ; $7162: $01 $d1 $0d
	ret nz                                           ; $7165: $c0

	reti                                             ; $7166: $d9


	jp c, $d0d8                                      ; $7167: $da $d8 $d0

	add h                                            ; $716a: $84
	and b                                            ; $716b: $a0
	daa                                              ; $716c: $27
	ret nz                                           ; $716d: $c0

	ld [$00e4], sp                                   ; $716e: $08 $e4 $00
	ld h, l                                          ; $7171: $65
	ld bc, $1ed2                                     ; $7172: $01 $d2 $1e
	ret nz                                           ; $7175: $c0

	ld bc, $01a0                                     ; $7176: $01 $a0 $01
	inc bc                                           ; $7179: $03
	and b                                            ; $717a: $a0
	ret nz                                           ; $717b: $c0

	ld bc, $01a0                                     ; $717c: $01 $a0 $01
	ld b, $4e                                        ; $717f: $06 $4e
	ret nz                                           ; $7181: $c0

	ld bc, $05a0                                     ; $7182: $01 $a0 $05
	ld b, $59                                        ; $7185: $06 $59
	ret nz                                           ; $7187: $c0

	ld bc, $01a0                                     ; $7188: $01 $a0 $01
	inc bc                                           ; $718b: $03
	cp h                                             ; $718c: $bc
	ldh [rAUD2ENV], a                                ; $718d: $e0 $17
	ld e, $e4                                        ; $718f: $1e $e4
	ld a, [bc]                                       ; $7191: $0a
	jp nc, Jump_07a_4009                             ; $7192: $d2 $09 $40

	ret nz                                           ; $7195: $c0

	ld bc, $01a0                                     ; $7196: $01 $a0 $01
	inc bc                                           ; $7199: $03
	ret nz                                           ; $719a: $c0

	ret nz                                           ; $719b: $c0

	ld bc, $05a0                                     ; $719c: $01 $a0 $05
	ld b, $63                                        ; $719f: $06 $63
	ret nz                                           ; $71a1: $c0

	inc c                                            ; $71a2: $0c
	ldh [rAUD3HIGH], a                               ; $71a3: $e0 $1e
	ret nz                                           ; $71a5: $c0

	ld bc, $05a0                                     ; $71a6: $01 $a0 $05
	ld b, $6a                                        ; $71a9: $06 $6a
	ret nz                                           ; $71ab: $c0

	ld bc, $01a0                                     ; $71ac: $01 $a0 $01
	inc bc                                           ; $71af: $03
	db $d3                                           ; $71b0: $d3
	ret nz                                           ; $71b1: $c0

	ld bc, $05a0                                     ; $71b2: $01 $a0 $05
	ld b, $6d                                        ; $71b5: $06 $6d
	ldh [rAUD2LEN], a                                ; $71b7: $e0 $16
	db $f4                                           ; $71b9: $f4
	ret nz                                           ; $71ba: $c0

	ld bc, $01a0                                     ; $71bb: $01 $a0 $01
	inc bc                                           ; $71be: $03
	di                                               ; $71bf: $f3
	ret nc                                           ; $71c0: $d0

	adc e                                            ; $71c1: $8b
	nop                                              ; $71c2: $00
	sub l                                            ; $71c3: $95
	or b                                             ; $71c4: $b0
	ld b, $fb                                        ; $71c5: $06 $fb
	db $fc                                           ; $71c7: $fc
	add h                                            ; $71c8: $84
	and b                                            ; $71c9: $a0
	daa                                              ; $71ca: $27
	ldh [rAUD1ENV], a                                ; $71cb: $e0 $12
	inc b                                            ; $71cd: $04
	ret nz                                           ; $71ce: $c0

	ld [hl+], a                                      ; $71cf: $22
	pop de                                           ; $71d0: $d1
	db $d3                                           ; $71d1: $d3
	db $e4                                           ; $71d2: $e4
	ld a, [bc]                                       ; $71d3: $0a
	sub b                                            ; $71d4: $90
	add hl, bc                                       ; $71d5: $09
	adc d                                            ; $71d6: $8a
	ret nz                                           ; $71d7: $c0

	ld bc, $01a0                                     ; $71d8: $01 $a0 $01
	inc bc                                           ; $71db: $03
	ret nz                                           ; $71dc: $c0

	add d                                            ; $71dd: $82
	ret nz                                           ; $71de: $c0

	ld e, c                                          ; $71df: $59
	db $d3                                           ; $71e0: $d3
	add h                                            ; $71e1: $84
	and b                                            ; $71e2: $a0
	daa                                              ; $71e3: $27
	ld [bc], a                                       ; $71e4: $02
	ret nc                                           ; $71e5: $d0

	pop de                                           ; $71e6: $d1
	dec hl                                           ; $71e7: $2b
	ret nz                                           ; $71e8: $c0

	ld bc, $05a0                                     ; $71e9: $01 $a0 $05
	ld b, $63                                        ; $71ec: $06 $63

jr_07a_71ee:
	ret nz                                           ; $71ee: $c0

	inc c                                            ; $71ef: $0c
	ldh [rAUD3HIGH], a                               ; $71f0: $e0 $1e
	ret nz                                           ; $71f2: $c0

	ld bc, $05a0                                     ; $71f3: $01 $a0 $05
	ld b, $77                                        ; $71f6: $06 $77
	ret nz                                           ; $71f8: $c0

	ld bc, $01a0                                     ; $71f9: $01 $a0 $01
	ld b, $7f                                        ; $71fc: $06 $7f
	ret nz                                           ; $71fe: $c0

	ld bc, $05a0                                     ; $71ff: $01 $a0 $05
	ld b, $84                                        ; $7202: $06 $84
	ret nz                                           ; $7204: $c0

	ld bc, $01a0                                     ; $7205: $01 $a0 $01
	ld b, $91                                        ; $7208: $06 $91
	ldh [rAUD2LEN], a                                ; $720a: $e0 $16
	and c                                            ; $720c: $a1
	ret nz                                           ; $720d: $c0

	ld bc, $01a0                                     ; $720e: $01 $a0 $01
	inc b                                            ; $7211: $04
	dec h                                            ; $7212: $25
	ld [bc], a                                       ; $7213: $02
	jp nc, $25d3                                     ; $7214: $d2 $d3 $25

	ret nz                                           ; $7217: $c0

	ld bc, $05a0                                     ; $7218: $01 $a0 $05
	ld b, $63                                        ; $721b: $06 $63
	ret nz                                           ; $721d: $c0

	inc c                                            ; $721e: $0c
	ldh [rAUD3HIGH], a                               ; $721f: $e0 $1e
	ret nz                                           ; $7221: $c0

	ld bc, $05a0                                     ; $7222: $01 $a0 $05
	ld b, $97                                        ; $7225: $06 $97
	ret nz                                           ; $7227: $c0

	ld bc, $01a0                                     ; $7228: $01 $a0 $01
	inc b                                            ; $722b: $04
	jr c, jr_07a_71ee                                ; $722c: $38 $c0

	ld bc, $05a0                                     ; $722e: $01 $a0 $05
	ld b, $9d                                        ; $7231: $06 $9d
	ldh [rAUD2LEN], a                                ; $7233: $e0 $16
	ld a, b                                          ; $7235: $78
	ret nz                                           ; $7236: $c0

	ld bc, $01a0                                     ; $7237: $01 $a0 $01
	inc b                                            ; $723a: $04
	ld b, l                                          ; $723b: $45
	ld [bc], a                                       ; $723c: $02
	call nc, $1ed5                                   ; $723d: $d4 $d5 $1e
	ret nz                                           ; $7240: $c0

	inc c                                            ; $7241: $0c
	rst SubAFromDE                                          ; $7242: $df
	ret nz                                           ; $7243: $c0

	ld bc, $05a0                                     ; $7244: $01 $a0 $05
	ld b, $a1                                        ; $7247: $06 $a1
	ret nz                                           ; $7249: $c0

	ld bc, $01a0                                     ; $724a: $01 $a0 $01
	ld b, $ab                                        ; $724d: $06 $ab

jr_07a_724f:
	ret nz                                           ; $724f: $c0

	ld bc, $05a0                                     ; $7250: $01 $a0 $05
	ld b, $b1                                        ; $7253: $06 $b1
	ldh [rAUD2LEN], a                                ; $7255: $e0 $16
	ld d, [hl]                                       ; $7257: $56
	ret nz                                           ; $7258: $c0

	ld bc, $01a0                                     ; $7259: $01 $a0 $01
	inc b                                            ; $725c: $04
	ld h, h                                          ; $725d: $64
	db $e4                                           ; $725e: $e4
	ld a, [bc]                                       ; $725f: $0a
	inc b                                            ; $7260: $04
	add hl, bc                                       ; $7261: $09
	ld d, [hl]                                       ; $7262: $56
	ret nz                                           ; $7263: $c0

	ld bc, $05a0                                     ; $7264: $01 $a0 $05
	ld b, $b3                                        ; $7267: $06 $b3
	ret nz                                           ; $7269: $c0

	ld bc, $01a0                                     ; $726a: $01 $a0 $01
	ld b, $b8                                        ; $726d: $06 $b8
	ret nz                                           ; $726f: $c0

	ld bc, $05a0                                     ; $7270: $01 $a0 $05
	ld b, $bd                                        ; $7273: $06 $bd
	ret nz                                           ; $7275: $c0

	ld bc, $01a0                                     ; $7276: $01 $a0 $01
	inc b                                            ; $7279: $04
	ld a, l                                          ; $727a: $7d
	ret nz                                           ; $727b: $c0

	ld bc, $01a0                                     ; $727c: $01 $a0 $01
	ld b, $c4                                        ; $727f: $06 $c4
	pop hl                                           ; $7281: $e1
	ld [bc], a                                       ; $7282: $02
	rlca                                             ; $7283: $07
	cp a                                             ; $7284: $bf
	ret nz                                           ; $7285: $c0

	ld bc, $05a0                                     ; $7286: $01 $a0 $05
	ld b, $cc                                        ; $7289: $06 $cc
	ldh [rAUD2LEN], a                                ; $728b: $e0 $16
	jr nz, jr_07a_724f                               ; $728d: $20 $c0

	ld bc, $01a0                                     ; $728f: $01 $a0 $01
	ld b, $d0                                        ; $7292: $06 $d0
	ld h, b                                          ; $7294: $60
	add b                                            ; $7295: $80
	nop                                              ; $7296: $00
	and a                                            ; $7297: $a7
	rrca                                             ; $7298: $0f
	ei                                               ; $7299: $fb
	ld hl, sp-$40                                    ; $729a: $f8 $c0
	dec d                                            ; $729c: $15
	db $d3                                           ; $729d: $d3
	rst SubAFromDE                                          ; $729e: $df
	inc b                                            ; $729f: $04
	ret nz                                           ; $72a0: $c0

	ld e, $df                                        ; $72a1: $1e $df
	db $d3                                           ; $72a3: $d3
	ld b, b                                          ; $72a4: $40
	add b                                            ; $72a5: $80
	nop                                              ; $72a6: $00
	and a                                            ; $72a7: $a7
	dec c                                            ; $72a8: $0d
	ei                                               ; $72a9: $fb
	ld hl, sp-$40                                    ; $72aa: $f8 $c0
	dec d                                            ; $72ac: $15
	db $d3                                           ; $72ad: $d3
	ldh [rAUD3HIGH], a                               ; $72ae: $e0 $1e
	dec b                                            ; $72b0: $05
	ret nz                                           ; $72b1: $c0

	ld e, $e0                                        ; $72b2: $1e $e0
	ld e, $d3                                        ; $72b4: $1e $d3
	db $e4                                           ; $72b6: $e4
	add hl, bc                                       ; $72b7: $09
	xor h                                            ; $72b8: $ac
	add hl, bc                                       ; $72b9: $09
	adc h                                            ; $72ba: $8c
	ld h, c                                          ; $72bb: $61
	add b                                            ; $72bc: $80
	nop                                              ; $72bd: $00
	xor b                                            ; $72be: $a8
	add hl, de                                       ; $72bf: $19
	ldh [$09], a                                     ; $72c0: $e0 $09
	sub c                                            ; $72c2: $91
	ldh [$09], a                                     ; $72c3: $e0 $09
	add l                                            ; $72c5: $85
	ret nz                                           ; $72c6: $c0

	ld bc, $08a0                                     ; $72c7: $01 $a0 $08
	ld b, $dc                                        ; $72ca: $06 $dc
	ret nz                                           ; $72cc: $c0

	ld bc, $01a0                                     ; $72cd: $01 $a0 $01
	inc bc                                           ; $72d0: $03
	add c                                            ; $72d1: $81
	ld b, b                                          ; $72d2: $40
	add b                                            ; $72d3: $80
	nop                                              ; $72d4: $00
	xor b                                            ; $72d5: $a8
	db $e4                                           ; $72d6: $e4
	ld bc, $80a4                                     ; $72d7: $01 $a4 $80
	and b                                            ; $72da: $a0
	dec b                                            ; $72db: $05
	inc bc                                           ; $72dc: $03
	ldh [$09], a                                     ; $72dd: $e0 $09
	ld d, l                                          ; $72df: $55
	ld h, [hl]                                       ; $72e0: $66
	ldh [$09], a                                     ; $72e1: $e0 $09
	ld [hl], b                                       ; $72e3: $70
	ldh [$09], a                                     ; $72e4: $e0 $09
	ld h, h                                          ; $72e6: $64
	ret nz                                           ; $72e7: $c0

	ld bc, $08a0                                     ; $72e8: $01 $a0 $08
	ld b, $dc                                        ; $72eb: $06 $dc
	ret nz                                           ; $72ed: $c0

	ld bc, $01a0                                     ; $72ee: $01 $a0 $01
	inc bc                                           ; $72f1: $03
	add c                                            ; $72f2: $81
	add e                                            ; $72f3: $83
	ret nz                                           ; $72f4: $c0

	dec de                                           ; $72f5: $1b
	rst SubAFromHL                                          ; $72f6: $d7
	ld [bc], a                                       ; $72f7: $02
	ret nc                                           ; $72f8: $d0

	pop de                                           ; $72f9: $d1
	dec l                                            ; $72fa: $2d
	or d                                             ; $72fb: $b2
	ld a, a                                          ; $72fc: $7f
	ld b, $c0                                        ; $72fd: $06 $c0
	ld bc, $08a0                                     ; $72ff: $01 $a0 $08
	ld b, $e0                                        ; $7302: $06 $e0
	xor d                                            ; $7304: $aa
	add hl, bc                                       ; $7305: $09
	ret nz                                           ; $7306: $c0

	ld bc, $08a0                                     ; $7307: $01 $a0 $08
	ld b, $ef                                        ; $730a: $06 $ef
	ldh [rP1], a                                     ; $730c: $e0 $00
	ld a, [hl-]                                      ; $730e: $3a
	call nc, $c009                                   ; $730f: $d4 $09 $c0
	ld bc, $08a0                                     ; $7312: $01 $a0 $08
	ld b, $fc                                        ; $7315: $06 $fc
	ldh [rP1], a                                     ; $7317: $e0 $00
	cpl                                              ; $7319: $2f
	rst $38                                          ; $731a: $ff
	add hl, bc                                       ; $731b: $09
	ret nz                                           ; $731c: $c0

	ld bc, $08a0                                     ; $731d: $01 $a0 $08
	rlca                                             ; $7320: $07
	add hl, bc                                       ; $7321: $09
	ldh [rP1], a                                     ; $7322: $e0 $00
	inc h                                            ; $7324: $24
	db $e4                                           ; $7325: $e4
	nop                                              ; $7326: $00
	ld l, $02                                        ; $7327: $2e $02
	jp nc, $09d3                                     ; $7329: $d2 $d3 $09

	ret nz                                           ; $732c: $c0

	ld bc, $08a0                                     ; $732d: $01 $a0 $08
	rlca                                             ; $7330: $07
	ld d, $e4                                        ; $7331: $16 $e4
	nop                                              ; $7333: $00
	ld hl, $d401                                     ; $7334: $21 $01 $d4
	add hl, bc                                       ; $7337: $09
	ret nz                                           ; $7338: $c0

	ld bc, $08a0                                     ; $7339: $01 $a0 $08
	rlca                                             ; $733c: $07
	ld a, [hl+]                                      ; $733d: $2a
	db $e4                                           ; $733e: $e4
	nop                                              ; $733f: $00
	dec d                                            ; $7340: $15
	ld bc, $03d5                                     ; $7341: $01 $d5 $03
	db $e4                                           ; $7344: $e4
	ld bc, $0c36                                     ; $7345: $01 $36 $0c
	ret nz                                           ; $7348: $c0

	ld bc, $01a0                                     ; $7349: $01 $a0 $01
	rlca                                             ; $734c: $07
	cpl                                              ; $734d: $2f
	ret nz                                           ; $734e: $c0

	ld bc, $08a0                                     ; $734f: $01 $a0 $08
	rlca                                             ; $7352: $07
	jr c, jr_07a_735e                                ; $7353: $38 $09

	ld b, l                                          ; $7355: $45
	ret nz                                           ; $7356: $c0

	ld h, $dc                                        ; $7357: $26 $dc
	rst SubAFromHL                                          ; $7359: $d7
	add d                                            ; $735a: $82
	pop bc                                           ; $735b: $c1
	xor a                                            ; $735c: $af
	rst SubAFromHL                                          ; $735d: $d7

jr_07a_735e:
	ld bc, $09d0                                     ; $735e: $01 $d0 $09
	ret nc                                           ; $7361: $d0

	add h                                            ; $7362: $84
	and b                                            ; $7363: $a0
	daa                                              ; $7364: $27
	ret nz                                           ; $7365: $c0

	ld [$00e4], sp                                   ; $7366: $08 $e4 $00
	inc sp                                           ; $7369: $33
	ld bc, $0dd1                                     ; $736a: $01 $d1 $0d
	ret nz                                           ; $736d: $c0

	reti                                             ; $736e: $d9


	jp c, $d0d8                                      ; $736f: $da $d8 $d0

	add h                                            ; $7372: $84
	and b                                            ; $7373: $a0
	daa                                              ; $7374: $27
	ret nz                                           ; $7375: $c0

	ld [$00e4], sp                                   ; $7376: $08 $e4 $00
	ld l, e                                          ; $7379: $6b
	ld bc, $1ed2                                     ; $737a: $01 $d2 $1e
	ret nz                                           ; $737d: $c0

	ld bc, $01a0                                     ; $737e: $01 $a0 $01
	inc bc                                           ; $7381: $03
	and b                                            ; $7382: $a0
	ret nz                                           ; $7383: $c0

	ld bc, $01a0                                     ; $7384: $01 $a0 $01
	rlca                                             ; $7387: $07
	ld b, h                                          ; $7388: $44
	ret nz                                           ; $7389: $c0

	ld bc, $08a0                                     ; $738a: $01 $a0 $08
	rlca                                             ; $738d: $07
	ld c, [hl]                                       ; $738e: $4e
	ret nz                                           ; $738f: $c0

	ld bc, $01a0                                     ; $7390: $01 $a0 $01
	inc bc                                           ; $7393: $03
	cp h                                             ; $7394: $bc
	ldh [$15], a                                     ; $7395: $e0 $15
	ld d, $e4                                        ; $7397: $16 $e4
	ld [$09ca], sp                                   ; $7399: $08 $ca $09
	ld b, [hl]                                       ; $739c: $46
	ret nz                                           ; $739d: $c0

	ld bc, $01a0                                     ; $739e: $01 $a0 $01
	inc bc                                           ; $73a1: $03
	ret nz                                           ; $73a2: $c0

	ret nz                                           ; $73a3: $c0

	ld bc, $08a0                                     ; $73a4: $01 $a0 $08
	ld b, $63                                        ; $73a7: $06 $63
	ret nz                                           ; $73a9: $c0

	inc c                                            ; $73aa: $0c
	ldh [rAUD3HIGH], a                               ; $73ab: $e0 $1e
	ret nz                                           ; $73ad: $c0

	ld bc, $08a0                                     ; $73ae: $01 $a0 $08
	rlca                                             ; $73b1: $07
	ld e, b                                          ; $73b2: $58
	ret nz                                           ; $73b3: $c0

	ld bc, $01a0                                     ; $73b4: $01 $a0 $01
	inc bc                                           ; $73b7: $03
	db $d3                                           ; $73b8: $d3
	ret nz                                           ; $73b9: $c0

	ld bc, $08a0                                     ; $73ba: $01 $a0 $08
	rlca                                             ; $73bd: $07
	ld h, b                                          ; $73be: $60
	ret nz                                           ; $73bf: $c0

	ld bc, $01a0                                     ; $73c0: $01 $a0 $01
	rlca                                             ; $73c3: $07
	ld l, [hl]                                       ; $73c4: $6e
	ldh [rAUD1HIGH], a                               ; $73c5: $e0 $14
	and $c0                                          ; $73c7: $e6 $c0
	ld bc, $01a0                                     ; $73c9: $01 $a0 $01
	inc bc                                           ; $73cc: $03
	di                                               ; $73cd: $f3
	ret nc                                           ; $73ce: $d0

	adc e                                            ; $73cf: $8b
	nop                                              ; $73d0: $00
	sub l                                            ; $73d1: $95
	or b                                             ; $73d2: $b0
	rlca                                             ; $73d3: $07
	ei                                               ; $73d4: $fb
	db $fc                                           ; $73d5: $fc
	add h                                            ; $73d6: $84
	and b                                            ; $73d7: $a0
	daa                                              ; $73d8: $27
	ldh [rAUD1ENV], a                                ; $73d9: $e0 $12
	inc b                                            ; $73db: $04
	ret nz                                           ; $73dc: $c0

	ld [hl+], a                                      ; $73dd: $22
	pop de                                           ; $73de: $d1
	rst SubAFromHL                                          ; $73df: $d7
	db $e4                                           ; $73e0: $e4
	ld [$0982], sp                                   ; $73e1: $08 $82 $09
	sub [hl]                                         ; $73e4: $96
	ret nz                                           ; $73e5: $c0

	ld bc, $01a0                                     ; $73e6: $01 $a0 $01
	inc bc                                           ; $73e9: $03
	ret nz                                           ; $73ea: $c0

	add d                                            ; $73eb: $82
	ret nz                                           ; $73ec: $c0

	ld e, c                                          ; $73ed: $59
	rst SubAFromHL                                          ; $73ee: $d7
	add h                                            ; $73ef: $84
	and b                                            ; $73f0: $a0
	daa                                              ; $73f1: $27
	ld [bc], a                                       ; $73f2: $02
	ret nc                                           ; $73f3: $d0

	pop de                                           ; $73f4: $d1
	dec hl                                           ; $73f5: $2b
	ret nz                                           ; $73f6: $c0

	ld bc, $08a0                                     ; $73f7: $01 $a0 $08
	ld b, $63                                        ; $73fa: $06 $63
	ret nz                                           ; $73fc: $c0

	inc c                                            ; $73fd: $0c
	ldh [rAUD3HIGH], a                               ; $73fe: $e0 $1e
	ret nz                                           ; $7400: $c0

	ld bc, $08a0                                     ; $7401: $01 $a0 $08
	rlca                                             ; $7404: $07
	ld [hl], e                                       ; $7405: $73
	ret nz                                           ; $7406: $c0

	ld bc, $01a0                                     ; $7407: $01 $a0 $01
	rlca                                             ; $740a: $07
	ld a, a                                          ; $740b: $7f
	ret nz                                           ; $740c: $c0

	ld bc, $08a0                                     ; $740d: $01 $a0 $08
	rlca                                             ; $7410: $07
	add e                                            ; $7411: $83
	ret nz                                           ; $7412: $c0

	ld bc, $01a0                                     ; $7413: $01 $a0 $01
	rlca                                             ; $7416: $07
	adc [hl]                                         ; $7417: $8e
	ldh [rAUD1HIGH], a                               ; $7418: $e0 $14
	sub e                                            ; $741a: $93
	ret nz                                           ; $741b: $c0

	ld bc, $01a0                                     ; $741c: $01 $a0 $01
	inc b                                            ; $741f: $04
	dec h                                            ; $7420: $25
	ld [bc], a                                       ; $7421: $02
	jp nc, $2bd3                                     ; $7422: $d2 $d3 $2b

	ret nz                                           ; $7425: $c0

	ld bc, $08a0                                     ; $7426: $01 $a0 $08
	ld b, $63                                        ; $7429: $06 $63
	ret nz                                           ; $742b: $c0

	inc c                                            ; $742c: $0c
	ldh [rAUD3HIGH], a                               ; $742d: $e0 $1e
	ret nz                                           ; $742f: $c0

	ld bc, $08a0                                     ; $7430: $01 $a0 $08
	rlca                                             ; $7433: $07
	sbc b                                            ; $7434: $98
	ret nz                                           ; $7435: $c0

	ld bc, $01a0                                     ; $7436: $01 $a0 $01
	rlca                                             ; $7439: $07
	and b                                            ; $743a: $a0
	ret nz                                           ; $743b: $c0

	ld bc, $08a0                                     ; $743c: $01 $a0 $08
	rlca                                             ; $743f: $07
	and l                                            ; $7440: $a5
	ret nz                                           ; $7441: $c0

	ld bc, $01a0                                     ; $7442: $01 $a0 $01
	rlca                                             ; $7445: $07
	xor h                                            ; $7446: $ac
	ldh [rAUD1HIGH], a                               ; $7447: $e0 $14
	ld h, h                                          ; $7449: $64
	ret nz                                           ; $744a: $c0

	ld bc, $01a0                                     ; $744b: $01 $a0 $01
	inc b                                            ; $744e: $04
	ld b, l                                          ; $744f: $45
	ld [bc], a                                       ; $7450: $02
	call nc, $24d5                                   ; $7451: $d4 $d5 $24
	ret nz                                           ; $7454: $c0

	inc c                                            ; $7455: $0c
	rst SubAFromDE                                          ; $7456: $df
	ret nz                                           ; $7457: $c0

	ld bc, $08a0                                     ; $7458: $01 $a0 $08
	rlca                                             ; $745b: $07
	or h                                             ; $745c: $b4
	ret nz                                           ; $745d: $c0

	ld bc, $01a0                                     ; $745e: $01 $a0 $01
	rlca                                             ; $7461: $07
	and b                                            ; $7462: $a0
	ret nz                                           ; $7463: $c0

	ld bc, $08a0                                     ; $7464: $01 $a0 $08
	rlca                                             ; $7467: $07
	ret nz                                           ; $7468: $c0

	ret nz                                           ; $7469: $c0

	ld bc, $01a0                                     ; $746a: $01 $a0 $01
	rlca                                             ; $746d: $07
	sub $e0                                          ; $746e: $d6 $e0
	inc d                                            ; $7470: $14
	inc a                                            ; $7471: $3c
	ret nz                                           ; $7472: $c0

	ld bc, $01a0                                     ; $7473: $01 $a0 $01
	inc b                                            ; $7476: $04
	ld h, h                                          ; $7477: $64
	db $e4                                           ; $7478: $e4
	rlca                                             ; $7479: $07
	ld [$5c09], a                                    ; $747a: $ea $09 $5c
	ret nz                                           ; $747d: $c0

	ld bc, $08a0                                     ; $747e: $01 $a0 $08
	rlca                                             ; $7481: $07
	reti                                             ; $7482: $d9


	ret nz                                           ; $7483: $c0

	ld bc, $01a0                                     ; $7484: $01 $a0 $01
	rlca                                             ; $7487: $07
	rst SubAFromDE                                          ; $7488: $df
	ret nz                                           ; $7489: $c0

	ld bc, $08a0                                     ; $748a: $01 $a0 $08
	rlca                                             ; $748d: $07
	db $e4                                           ; $748e: $e4
	ret nz                                           ; $748f: $c0

	ld bc, $01a0                                     ; $7490: $01 $a0 $01
	rlca                                             ; $7493: $07
	db $f4                                           ; $7494: $f4
	ret nz                                           ; $7495: $c0

	ld bc, $08a0                                     ; $7496: $01 $a0 $08
	rlca                                             ; $7499: $07
	ld a, [$01c0]                                    ; $749a: $fa $c0 $01
	and b                                            ; $749d: $a0
	ld bc, $0608                                     ; $749e: $01 $08 $06
	pop hl                                           ; $74a1: $e1
	ld [bc], a                                       ; $74a2: $02
	rlca                                             ; $74a3: $07
	cp a                                             ; $74a4: $bf
	ret nz                                           ; $74a5: $c0

	ld bc, $08a0                                     ; $74a6: $01 $a0 $08
	ld [$e00e], sp                                   ; $74a9: $08 $0e $e0
	inc d                                            ; $74ac: $14
	nop                                              ; $74ad: $00
	ret nz                                           ; $74ae: $c0

	ld bc, $01a0                                     ; $74af: $01 $a0 $01
	ld [$6013], sp                                   ; $74b2: $08 $13 $60
	add b                                            ; $74b5: $80
	nop                                              ; $74b6: $00
	xor c                                            ; $74b7: $a9
	rrca                                             ; $74b8: $0f
	ei                                               ; $74b9: $fb
	ld hl, sp-$40                                    ; $74ba: $f8 $c0
	dec d                                            ; $74bc: $15
	rst SubAFromHL                                          ; $74bd: $d7
	rst SubAFromDE                                          ; $74be: $df
	inc b                                            ; $74bf: $04
	ret nz                                           ; $74c0: $c0

	ld e, $df                                        ; $74c1: $1e $df
	rst SubAFromHL                                          ; $74c3: $d7
	ld b, b                                          ; $74c4: $40
	add b                                            ; $74c5: $80
	nop                                              ; $74c6: $00
	xor c                                            ; $74c7: $a9
	dec c                                            ; $74c8: $0d
	ei                                               ; $74c9: $fb
	ld hl, sp-$40                                    ; $74ca: $f8 $c0
	dec d                                            ; $74cc: $15
	rst SubAFromHL                                          ; $74cd: $d7
	ldh [rAUD3HIGH], a                               ; $74ce: $e0 $1e
	dec b                                            ; $74d0: $05
	ret nz                                           ; $74d1: $c0

	ld e, $e0                                        ; $74d2: $1e $e0
	ld e, $d7                                        ; $74d4: $1e $d7
	db $e4                                           ; $74d6: $e4
	rlca                                             ; $74d7: $07
	adc h                                            ; $74d8: $8c
	add hl, bc                                       ; $74d9: $09
	ld l, b                                          ; $74da: $68
	ld h, c                                          ; $74db: $61
	add b                                            ; $74dc: $80
	nop                                              ; $74dd: $00
	xor d                                            ; $74de: $aa
	add hl, de                                       ; $74df: $19
	ldh [rTAC], a                                    ; $74e0: $e0 $07
	ld [hl], c                                       ; $74e2: $71
	ldh [rTAC], a                                    ; $74e3: $e0 $07
	ld h, l                                          ; $74e5: $65
	ret nz                                           ; $74e6: $c0

	ld bc, $09a0                                     ; $74e7: $01 $a0 $09
	ld [$c01f], sp                                   ; $74ea: $08 $1f $c0
	ld bc, $01a0                                     ; $74ed: $01 $a0 $01
	inc bc                                           ; $74f0: $03
	add c                                            ; $74f1: $81
	ld b, b                                          ; $74f2: $40
	add b                                            ; $74f3: $80
	nop                                              ; $74f4: $00
	xor d                                            ; $74f5: $aa
	db $e4                                           ; $74f6: $e4
	ld bc, $8070                                     ; $74f7: $01 $70 $80
	and b                                            ; $74fa: $a0
	ld b, $03                                        ; $74fb: $06 $03
	ldh [rTAC], a                                    ; $74fd: $e0 $07
	dec [hl]                                         ; $74ff: $35
	ld b, d                                          ; $7500: $42
	ldh [rTAC], a                                    ; $7501: $e0 $07
	ld d, b                                          ; $7503: $50
	ldh [rTAC], a                                    ; $7504: $e0 $07
	ld b, h                                          ; $7506: $44
	ret nz                                           ; $7507: $c0

	ld bc, $09a0                                     ; $7508: $01 $a0 $09
	ld [$c01f], sp                                   ; $750b: $08 $1f $c0
	ld bc, $01a0                                     ; $750e: $01 $a0 $01
	inc bc                                           ; $7511: $03
	add c                                            ; $7512: $81
	add e                                            ; $7513: $83
	ret nz                                           ; $7514: $c0

	dec de                                           ; $7515: $1b
	ret c                                            ; $7516: $d8

	ld [bc], a                                       ; $7517: $02
	ret nc                                           ; $7518: $d0

	pop de                                           ; $7519: $d1
	add hl, bc                                       ; $751a: $09
	ret nz                                           ; $751b: $c0

	ld bc, $09a0                                     ; $751c: $01 $a0 $09
	ld [$e423], sp                                   ; $751f: $08 $23 $e4
	nop                                              ; $7522: $00
	ld hl, $d202                                     ; $7523: $21 $02 $d2
	db $d3                                           ; $7526: $d3
	add hl, bc                                       ; $7527: $09
	ret nz                                           ; $7528: $c0

	ld bc, $09a0                                     ; $7529: $01 $a0 $09
	ld [$e42f], sp                                   ; $752c: $08 $2f $e4
	nop                                              ; $752f: $00
	inc d                                            ; $7530: $14
	ld bc, $09d4                                     ; $7531: $01 $d4 $09
	ret nz                                           ; $7534: $c0

	ld bc, $09a0                                     ; $7535: $01 $a0 $09
	ld [$e432], sp                                   ; $7538: $08 $32 $e4
	nop                                              ; $753b: $00
	ld [$d501], sp                                   ; $753c: $08 $01 $d5
	inc bc                                           ; $753f: $03
	db $e4                                           ; $7540: $e4
	ld bc, $0926                                     ; $7541: $01 $26 $09
	ld b, l                                          ; $7544: $45
	ret nz                                           ; $7545: $c0

	ld h, $dc                                        ; $7546: $26 $dc
	ret c                                            ; $7548: $d8

	add d                                            ; $7549: $82
	pop bc                                           ; $754a: $c1
	xor a                                            ; $754b: $af
	ret c                                            ; $754c: $d8

	ld bc, $09d0                                     ; $754d: $01 $d0 $09
	ret nc                                           ; $7550: $d0

	add h                                            ; $7551: $84
	and b                                            ; $7552: $a0
	daa                                              ; $7553: $27
	ret nz                                           ; $7554: $c0

	ld [$00e4], sp                                   ; $7555: $08 $e4 $00
	inc sp                                           ; $7558: $33
	ld bc, $0dd1                                     ; $7559: $01 $d1 $0d
	ret nz                                           ; $755c: $c0

	reti                                             ; $755d: $d9


	jp c, $d0d8                                      ; $755e: $da $d8 $d0

	add h                                            ; $7561: $84
	and b                                            ; $7562: $a0
	daa                                              ; $7563: $27
	ret nz                                           ; $7564: $c0

	ld [$00e4], sp                                   ; $7565: $08 $e4 $00
	ld l, b                                          ; $7568: $68
	ld bc, $1ed2                                     ; $7569: $01 $d2 $1e
	ret nz                                           ; $756c: $c0

	ld bc, $01a0                                     ; $756d: $01 $a0 $01
	inc bc                                           ; $7570: $03
	and b                                            ; $7571: $a0
	ret nz                                           ; $7572: $c0

	ld bc, $01a0                                     ; $7573: $01 $a0 $01
	ld [$c035], sp                                   ; $7576: $08 $35 $c0
	ld bc, $09a0                                     ; $7579: $01 $a0 $09
	ld [$c03f], sp                                   ; $757c: $08 $3f $c0
	ld bc, $01a0                                     ; $757f: $01 $a0 $01
	inc bc                                           ; $7582: $03
	cp h                                             ; $7583: $bc
	ldh [rAUD1LOW], a                                ; $7584: $e0 $13
	daa                                              ; $7586: $27
	db $e4                                           ; $7587: $e4
	ld b, $db                                        ; $7588: $06 $db
	add hl, bc                                       ; $758a: $09
	ld b, e                                          ; $758b: $43
	ret nz                                           ; $758c: $c0

	ld bc, $01a0                                     ; $758d: $01 $a0 $01
	inc bc                                           ; $7590: $03
	ret nz                                           ; $7591: $c0

	ret nz                                           ; $7592: $c0

	ld bc, $09a0                                     ; $7593: $01 $a0 $09
	dec b                                            ; $7596: $05
	sub c                                            ; $7597: $91
	ret nz                                           ; $7598: $c0

	inc c                                            ; $7599: $0c
	ldh [rAUD3HIGH], a                               ; $759a: $e0 $1e
	ret nz                                           ; $759c: $c0

	ld bc, $09a0                                     ; $759d: $01 $a0 $09
	ld [$c045], sp                                   ; $75a0: $08 $45 $c0
	ld bc, $01a0                                     ; $75a3: $01 $a0 $01
	inc bc                                           ; $75a6: $03
	db $d3                                           ; $75a7: $d3
	ret nz                                           ; $75a8: $c0

	ld bc, $09a0                                     ; $75a9: $01 $a0 $09
	ld [$c04e], sp                                   ; $75ac: $08 $4e $c0
	ld bc, $01a0                                     ; $75af: $01 $a0 $01
	rlca                                             ; $75b2: $07
	ld l, [hl]                                       ; $75b3: $6e
	ret nz                                           ; $75b4: $c0

	ld bc, $01a0                                     ; $75b5: $01 $a0 $01
	inc bc                                           ; $75b8: $03
	di                                               ; $75b9: $f3
	ret nc                                           ; $75ba: $d0

	adc e                                            ; $75bb: $8b
	nop                                              ; $75bc: $00
	sub l                                            ; $75bd: $95
	or b                                             ; $75be: $b0
	ld [$fcfb], sp                                   ; $75bf: $08 $fb $fc
	add h                                            ; $75c2: $84
	and b                                            ; $75c3: $a0
	daa                                              ; $75c4: $27
	ldh [rAUD1ENV], a                                ; $75c5: $e0 $12
	inc b                                            ; $75c7: $04
	ret nz                                           ; $75c8: $c0

	ld [hl+], a                                      ; $75c9: $22
	pop de                                           ; $75ca: $d1
	ret c                                            ; $75cb: $d8

	db $e4                                           ; $75cc: $e4
	ld b, $96                                        ; $75cd: $06 $96
	add hl, bc                                       ; $75cf: $09
	sub [hl]                                         ; $75d0: $96
	ret nz                                           ; $75d1: $c0

	ld bc, $01a0                                     ; $75d2: $01 $a0 $01
	inc bc                                           ; $75d5: $03
	ret nz                                           ; $75d6: $c0

	add d                                            ; $75d7: $82
	ret nz                                           ; $75d8: $c0

	ld e, c                                          ; $75d9: $59
	ret c                                            ; $75da: $d8

	add h                                            ; $75db: $84
	and b                                            ; $75dc: $a0
	daa                                              ; $75dd: $27
	ld [bc], a                                       ; $75de: $02
	ret nc                                           ; $75df: $d0

	pop de                                           ; $75e0: $d1
	dec hl                                           ; $75e1: $2b
	ret nz                                           ; $75e2: $c0

	ld bc, $09a0                                     ; $75e3: $01 $a0 $09
	dec b                                            ; $75e6: $05
	sub c                                            ; $75e7: $91
	ret nz                                           ; $75e8: $c0

	inc c                                            ; $75e9: $0c
	ldh [rAUD3HIGH], a                               ; $75ea: $e0 $1e
	ret nz                                           ; $75ec: $c0

	ld bc, $09a0                                     ; $75ed: $01 $a0 $09
	ld [$c056], sp                                   ; $75f0: $08 $56 $c0
	ld bc, $01a0                                     ; $75f3: $01 $a0 $01
	ld [$c063], sp                                   ; $75f6: $08 $63 $c0
	ld bc, $09a0                                     ; $75f9: $01 $a0 $09
	ld [$c071], sp                                   ; $75fc: $08 $71 $c0
	ld bc, $01a0                                     ; $75ff: $01 $a0 $01
	ld [$e080], sp                                   ; $7602: $08 $80 $e0
	ld [de], a                                       ; $7605: $12
	and a                                            ; $7606: $a7
	ret nz                                           ; $7607: $c0

	ld bc, $01a0                                     ; $7608: $01 $a0 $01
	inc b                                            ; $760b: $04
	dec h                                            ; $760c: $25
	ld [bc], a                                       ; $760d: $02
	jp nc, $2bd3                                     ; $760e: $d2 $d3 $2b

	ret nz                                           ; $7611: $c0

	ld bc, $09a0                                     ; $7612: $01 $a0 $09
	dec b                                            ; $7615: $05
	sub c                                            ; $7616: $91
	ret nz                                           ; $7617: $c0

	inc c                                            ; $7618: $0c
	ldh [rAUD3HIGH], a                               ; $7619: $e0 $1e
	ret nz                                           ; $761b: $c0

	ld bc, $09a0                                     ; $761c: $01 $a0 $09
	ld [$c087], sp                                   ; $761f: $08 $87 $c0
	ld bc, $01a0                                     ; $7622: $01 $a0 $01
	ld [$c091], sp                                   ; $7625: $08 $91 $c0
	ld bc, $09a0                                     ; $7628: $01 $a0 $09
	ld [$c097], sp                                   ; $762b: $08 $97 $c0
	ld bc, $01a0                                     ; $762e: $01 $a0 $01
	ld [$e09d], sp                                   ; $7631: $08 $9d $e0
	ld [de], a                                       ; $7634: $12
	ld a, b                                          ; $7635: $78
	ret nz                                           ; $7636: $c0

	ld bc, $01a0                                     ; $7637: $01 $a0 $01
	inc b                                            ; $763a: $04
	ld b, l                                          ; $763b: $45
	ld [bc], a                                       ; $763c: $02
	call nc, $24d5                                   ; $763d: $d4 $d5 $24
	ret nz                                           ; $7640: $c0

	inc c                                            ; $7641: $0c
	rst SubAFromDE                                          ; $7642: $df
	ret nz                                           ; $7643: $c0

	ld bc, $09a0                                     ; $7644: $01 $a0 $09
	ld [$c0a4], sp                                   ; $7647: $08 $a4 $c0
	ld bc, $01a0                                     ; $764a: $01 $a0 $01
	ld [$c0aa], sp                                   ; $764d: $08 $aa $c0
	ld bc, $09a0                                     ; $7650: $01 $a0 $09
	ld [$c0af], sp                                   ; $7653: $08 $af $c0
	ld bc, $01a0                                     ; $7656: $01 $a0 $01
	rlca                                             ; $7659: $07
	sub $e0                                          ; $765a: $d6 $e0
	ld [de], a                                       ; $765c: $12
	ld d, b                                          ; $765d: $50
	ret nz                                           ; $765e: $c0

	ld bc, $01a0                                     ; $765f: $01 $a0 $01
	inc b                                            ; $7662: $04
	ld h, h                                          ; $7663: $64
	db $e4                                           ; $7664: $e4
	dec b                                            ; $7665: $05
	cp $09                                           ; $7666: $fe $09
	ld d, [hl]                                       ; $7668: $56
	ret nz                                           ; $7669: $c0

	ld bc, $09a0                                     ; $766a: $01 $a0 $09
	ld [$c0b8], sp                                   ; $766d: $08 $b8 $c0
	ld bc, $01a0                                     ; $7670: $01 $a0 $01
	ld [$c0c5], sp                                   ; $7673: $08 $c5 $c0
	ld bc, $09a0                                     ; $7676: $01 $a0 $09
	ld [$c0ca], sp                                   ; $7679: $08 $ca $c0
	ld bc, $01a0                                     ; $767c: $01 $a0 $01
	ld [$c0d6], sp                                   ; $767f: $08 $d6 $c0
	ld bc, $01a0                                     ; $7682: $01 $a0 $01
	ld [$e1db], sp                                   ; $7685: $08 $db $e1
	ld [bc], a                                       ; $7688: $02
	rlca                                             ; $7689: $07
	cp a                                             ; $768a: $bf
	ret nz                                           ; $768b: $c0

	ld bc, $09a0                                     ; $768c: $01 $a0 $09
	ld [$e0e3], sp                                   ; $768f: $08 $e3 $e0
	ld [de], a                                       ; $7692: $12
	ld a, [de]                                       ; $7693: $1a
	ret nz                                           ; $7694: $c0

	ld bc, $01a0                                     ; $7695: $01 $a0 $01
	ld [$60ea], sp                                   ; $7698: $08 $ea $60
	add b                                            ; $769b: $80
	nop                                              ; $769c: $00
	xor e                                            ; $769d: $ab
	rrca                                             ; $769e: $0f
	ei                                               ; $769f: $fb
	ld hl, sp-$40                                    ; $76a0: $f8 $c0
	dec d                                            ; $76a2: $15
	ret c                                            ; $76a3: $d8

	rst SubAFromDE                                          ; $76a4: $df
	inc b                                            ; $76a5: $04
	ret nz                                           ; $76a6: $c0

	ld e, $df                                        ; $76a7: $1e $df
	ret c                                            ; $76a9: $d8

	ld b, b                                          ; $76aa: $40
	add b                                            ; $76ab: $80
	nop                                              ; $76ac: $00
	xor e                                            ; $76ad: $ab
	dec c                                            ; $76ae: $0d
	ei                                               ; $76af: $fb
	ld hl, sp-$40                                    ; $76b0: $f8 $c0
	dec d                                            ; $76b2: $15
	ret c                                            ; $76b3: $d8

	ldh [rAUD3HIGH], a                               ; $76b4: $e0 $1e
	dec b                                            ; $76b6: $05
	ret nz                                           ; $76b7: $c0

	ld e, $e0                                        ; $76b8: $1e $e0
	ld e, $d8                                        ; $76ba: $1e $d8
	db $e4                                           ; $76bc: $e4
	dec b                                            ; $76bd: $05
	and [hl]                                         ; $76be: $a6
	add hl, bc                                       ; $76bf: $09
	ld a, a                                          ; $76c0: $7f
	ld h, c                                          ; $76c1: $61
	add b                                            ; $76c2: $80
	nop                                              ; $76c3: $00
	xor h                                            ; $76c4: $ac
	add hl, de                                       ; $76c5: $19
	ldh [rTIMA], a                                   ; $76c6: $e0 $05
	adc e                                            ; $76c8: $8b
	ldh [rTIMA], a                                   ; $76c9: $e0 $05
	ld a, a                                          ; $76cb: $7f
	ret nz                                           ; $76cc: $c0

	ld bc, $06a0                                     ; $76cd: $01 $a0 $06
	ld bc, $c000                                     ; $76d0: $01 $00 $c0
	ld bc, $01a0                                     ; $76d3: $01 $a0 $01
	inc bc                                           ; $76d6: $03
	add c                                            ; $76d7: $81
	ld b, b                                          ; $76d8: $40
	add b                                            ; $76d9: $80
	nop                                              ; $76da: $00
	xor h                                            ; $76db: $ac
	db $e4                                           ; $76dc: $e4
	ld bc, $807e                                     ; $76dd: $01 $7e $80
	and b                                            ; $76e0: $a0
	rlca                                             ; $76e1: $07
	inc bc                                           ; $76e2: $03
	ldh [rTIMA], a                                   ; $76e3: $e0 $05
	ld c, a                                          ; $76e5: $4f
	ld e, c                                          ; $76e6: $59
	ldh [rTIMA], a                                   ; $76e7: $e0 $05
	ld l, d                                          ; $76e9: $6a
	ldh [rTIMA], a                                   ; $76ea: $e0 $05
	ld e, [hl]                                       ; $76ec: $5e
	ret nz                                           ; $76ed: $c0

	ld bc, $06a0                                     ; $76ee: $01 $a0 $06
	ld bc, $c000                                     ; $76f1: $01 $00 $c0
	ld bc, $01a0                                     ; $76f4: $01 $a0 $01
	inc bc                                           ; $76f7: $03
	add c                                            ; $76f8: $81
	add e                                            ; $76f9: $83
	ret nz                                           ; $76fa: $c0

	dec de                                           ; $76fb: $1b
	jp c, $d002                                      ; $76fc: $da $02 $d0

	pop de                                           ; $76ff: $d1
	add hl, bc                                       ; $7700: $09
	ret nz                                           ; $7701: $c0

	ld bc, $06a0                                     ; $7702: $01 $a0 $06
	ld [$e4f6], sp                                   ; $7705: $08 $f6 $e4
	nop                                              ; $7708: $00
	jr c, @+$04                                      ; $7709: $38 $02

	jp nc, $09d3                                     ; $770b: $d2 $d3 $09

	ret nz                                           ; $770e: $c0

	ld bc, $06a0                                     ; $770f: $01 $a0 $06
	ld [$e4fc], sp                                   ; $7712: $08 $fc $e4
	nop                                              ; $7715: $00
	dec hl                                           ; $7716: $2b
	ld bc, $20d4                                     ; $7717: $01 $d4 $20
	or b                                             ; $771a: $b0
	ld a, a                                          ; $771b: $7f
	ld [de], a                                       ; $771c: $12
	ret nz                                           ; $771d: $c0

	ld bc, $06a0                                     ; $771e: $01 $a0 $06
	add hl, bc                                       ; $7721: $09
	inc bc                                           ; $7722: $03
	ret nz                                           ; $7723: $c0

	ld bc, $01a0                                     ; $7724: $01 $a0 $01
	add hl, bc                                       ; $7727: $09
	rlca                                             ; $7728: $07
	ret nz                                           ; $7729: $c0

	ld bc, $06a0                                     ; $772a: $01 $a0 $06
	add hl, bc                                       ; $772d: $09
	rrca                                             ; $772e: $0f
	rst $38                                          ; $772f: $ff
	ld b, $c0                                        ; $7730: $06 $c0
	ld bc, $06a0                                     ; $7732: $01 $a0 $06
	add hl, bc                                       ; $7735: $09
	ld d, $e4                                        ; $7736: $16 $e4
	nop                                              ; $7738: $00
	ld [$d501], sp                                   ; $7739: $08 $01 $d5
	inc bc                                           ; $773c: $03
	db $e4                                           ; $773d: $e4
	ld bc, $091d                                     ; $773e: $01 $1d $09
	ld b, l                                          ; $7741: $45
	ret nz                                           ; $7742: $c0

	ld h, $dc                                        ; $7743: $26 $dc
	jp c, $c182                                      ; $7745: $da $82 $c1

	xor a                                            ; $7748: $af
	jp c, $d001                                      ; $7749: $da $01 $d0

	add hl, bc                                       ; $774c: $09
	ret nc                                           ; $774d: $d0

	add h                                            ; $774e: $84
	and b                                            ; $774f: $a0
	daa                                              ; $7750: $27
	ret nz                                           ; $7751: $c0

	ld [$00e4], sp                                   ; $7752: $08 $e4 $00
	inc sp                                           ; $7755: $33
	ld bc, $0dd1                                     ; $7756: $01 $d1 $0d
	ret nz                                           ; $7759: $c0

	reti                                             ; $775a: $d9


	jp c, $d0d8                                      ; $775b: $da $d8 $d0

	add h                                            ; $775e: $84
	and b                                            ; $775f: $a0

jr_07a_7760:
	daa                                              ; $7760: $27
	ret nz                                           ; $7761: $c0

	ld [$00e4], sp                                   ; $7762: $08 $e4 $00
	ld l, e                                          ; $7765: $6b
	ld bc, $1ed2                                     ; $7766: $01 $d2 $1e
	ret nz                                           ; $7769: $c0

	ld bc, $01a0                                     ; $776a: $01 $a0 $01
	inc bc                                           ; $776d: $03
	and b                                            ; $776e: $a0
	ret nz                                           ; $776f: $c0

	ld bc, $01a0                                     ; $7770: $01 $a0 $01
	add hl, bc                                       ; $7773: $09
	inc e                                            ; $7774: $1c
	ret nz                                           ; $7775: $c0

	ld bc, $06a0                                     ; $7776: $01 $a0 $06
	add hl, bc                                       ; $7779: $09
	daa                                              ; $777a: $27
	ret nz                                           ; $777b: $c0

	ld bc, $01a0                                     ; $777c: $01 $a0 $01
	inc bc                                           ; $777f: $03
	cp h                                             ; $7780: $bc
	ldh [rAUD1LEN], a                                ; $7781: $e0 $11
	ld a, [hl+]                                      ; $7783: $2a
	db $e4                                           ; $7784: $e4
	inc b                                            ; $7785: $04
	sbc $09                                          ; $7786: $de $09
	ld b, [hl]                                       ; $7788: $46
	ret nz                                           ; $7789: $c0

	ld bc, $01a0                                     ; $778a: $01 $a0 $01
	inc bc                                           ; $778d: $03
	ret nz                                           ; $778e: $c0

	ret nz                                           ; $778f: $c0

	ld bc, $06a0                                     ; $7790: $01 $a0 $06
	dec b                                            ; $7793: $05
	sub c                                            ; $7794: $91
	ret nz                                           ; $7795: $c0

	inc c                                            ; $7796: $0c
	ldh [rAUD3HIGH], a                               ; $7797: $e0 $1e
	ret nz                                           ; $7799: $c0

	ld bc, $06a0                                     ; $779a: $01 $a0 $06
	add hl, bc                                       ; $779d: $09
	jr nc, jr_07a_7760                               ; $779e: $30 $c0

	ld bc, $01a0                                     ; $77a0: $01 $a0 $01
	inc bc                                           ; $77a3: $03
	db $d3                                           ; $77a4: $d3
	ret nz                                           ; $77a5: $c0

	ld bc, $06a0                                     ; $77a6: $01 $a0 $06
	add hl, bc                                       ; $77a9: $09
	inc sp                                           ; $77aa: $33
	ret nz                                           ; $77ab: $c0

	ld bc, $01a0                                     ; $77ac: $01 $a0 $01
	add hl, bc                                       ; $77af: $09
	ld b, d                                          ; $77b0: $42
	ldh [rAUD1SWEEP], a                              ; $77b1: $e0 $10
	ld a, [$01c0]                                    ; $77b3: $fa $c0 $01
	and b                                            ; $77b6: $a0
	ld bc, $f303                                     ; $77b7: $01 $03 $f3
	ret nc                                           ; $77ba: $d0

	adc e                                            ; $77bb: $8b
	nop                                              ; $77bc: $00
	sub l                                            ; $77bd: $95
	or b                                             ; $77be: $b0
	add hl, bc                                       ; $77bf: $09
	ei                                               ; $77c0: $fb
	db $fc                                           ; $77c1: $fc
	add h                                            ; $77c2: $84
	and b                                            ; $77c3: $a0
	daa                                              ; $77c4: $27
	ldh [rAUD1ENV], a                                ; $77c5: $e0 $12
	inc b                                            ; $77c7: $04
	ret nz                                           ; $77c8: $c0

	ld [hl+], a                                      ; $77c9: $22
	pop de                                           ; $77ca: $d1
	jp c, $04e4                                      ; $77cb: $da $e4 $04

	sub [hl]                                         ; $77ce: $96
	add hl, bc                                       ; $77cf: $09
	adc d                                            ; $77d0: $8a
	ret nz                                           ; $77d1: $c0

	ld bc, $01a0                                     ; $77d2: $01 $a0 $01
	inc bc                                           ; $77d5: $03
	ret nz                                           ; $77d6: $c0

	add d                                            ; $77d7: $82
	ret nz                                           ; $77d8: $c0

	ld e, c                                          ; $77d9: $59
	jp c, $a084                                      ; $77da: $da $84 $a0

	daa                                              ; $77dd: $27
	ld [bc], a                                       ; $77de: $02
	ret nc                                           ; $77df: $d0

	pop de                                           ; $77e0: $d1
	dec hl                                           ; $77e1: $2b
	ret nz                                           ; $77e2: $c0

	ld bc, $06a0                                     ; $77e3: $01 $a0 $06
	dec b                                            ; $77e6: $05
	sub c                                            ; $77e7: $91
	ret nz                                           ; $77e8: $c0

	inc c                                            ; $77e9: $0c
	ldh [rAUD3HIGH], a                               ; $77ea: $e0 $1e
	ret nz                                           ; $77ec: $c0

	ld bc, $06a0                                     ; $77ed: $01 $a0 $06
	add hl, bc                                       ; $77f0: $09
	ld c, a                                          ; $77f1: $4f
	ret nz                                           ; $77f2: $c0

	ld bc, $01a0                                     ; $77f3: $01 $a0 $01
	add hl, bc                                       ; $77f6: $09
	ld e, d                                          ; $77f7: $5a
	ret nz                                           ; $77f8: $c0

	ld bc, $06a0                                     ; $77f9: $01 $a0 $06
	add hl, bc                                       ; $77fc: $09
	ld e, [hl]                                       ; $77fd: $5e
	ret nz                                           ; $77fe: $c0

	ld bc, $01a0                                     ; $77ff: $01 $a0 $01
	add hl, bc                                       ; $7802: $09
	ld h, h                                          ; $7803: $64
	ldh [rAUD1SWEEP], a                              ; $7804: $e0 $10
	and a                                            ; $7806: $a7
	ret nz                                           ; $7807: $c0

	ld bc, $01a0                                     ; $7808: $01 $a0 $01
	inc b                                            ; $780b: $04
	dec h                                            ; $780c: $25
	ld [bc], a                                       ; $780d: $02
	jp nc, $25d3                                     ; $780e: $d2 $d3 $25

	ret nz                                           ; $7811: $c0

	ld bc, $06a0                                     ; $7812: $01 $a0 $06
	dec b                                            ; $7815: $05
	sub c                                            ; $7816: $91
	ret nz                                           ; $7817: $c0

	inc c                                            ; $7818: $0c
	ldh [rAUD3HIGH], a                               ; $7819: $e0 $1e
	ret nz                                           ; $781b: $c0

	ld bc, $06a0                                     ; $781c: $01 $a0 $06
	add hl, bc                                       ; $781f: $09
	ld [hl], b                                       ; $7820: $70
	ret nz                                           ; $7821: $c0

	ld bc, $01a0                                     ; $7822: $01 $a0 $01
	add hl, bc                                       ; $7825: $09
	ld a, d                                          ; $7826: $7a
	ret nz                                           ; $7827: $c0

	ld bc, $06a0                                     ; $7828: $01 $a0 $06
	add hl, bc                                       ; $782b: $09
	ld a, a                                          ; $782c: $7f
	ldh [rAUD1SWEEP], a                              ; $782d: $e0 $10
	ld a, [hl]                                       ; $782f: $7e
	ret nz                                           ; $7830: $c0

	ld bc, $01a0                                     ; $7831: $01 $a0 $01
	inc b                                            ; $7834: $04
	ld b, l                                          ; $7835: $45
	ld [bc], a                                       ; $7836: $02
	call nc, $1ed5                                   ; $7837: $d4 $d5 $1e
	ret nz                                           ; $783a: $c0

	inc c                                            ; $783b: $0c
	rst SubAFromDE                                          ; $783c: $df
	ret nz                                           ; $783d: $c0

	ld bc, $06a0                                     ; $783e: $01 $a0 $06
	add hl, bc                                       ; $7841: $09
	add d                                            ; $7842: $82
	ret nz                                           ; $7843: $c0

	ld bc, $01a0                                     ; $7844: $01 $a0 $01
	ld [$c0aa], sp                                   ; $7847: $08 $aa $c0
	ld bc, $06a0                                     ; $784a: $01 $a0 $06
	add hl, bc                                       ; $784d: $09
	adc [hl]                                         ; $784e: $8e
	ldh [rAUD1SWEEP], a                              ; $784f: $e0 $10
	ld e, h                                          ; $7851: $5c
	ret nz                                           ; $7852: $c0

	ld bc, $01a0                                     ; $7853: $01 $a0 $01
	inc b                                            ; $7856: $04
	ld h, h                                          ; $7857: $64
	db $e4                                           ; $7858: $e4
	inc b                                            ; $7859: $04
	ld a, [bc]                                       ; $785a: $0a
	add hl, bc                                       ; $785b: $09
	ld d, b                                          ; $785c: $50
	ret nz                                           ; $785d: $c0

	ld bc, $06a0                                     ; $785e: $01 $a0 $06
	add hl, bc                                       ; $7861: $09
	sub c                                            ; $7862: $91
	ret nz                                           ; $7863: $c0

	ld bc, $01a0                                     ; $7864: $01 $a0 $01
	add hl, bc                                       ; $7867: $09
	sub h                                            ; $7868: $94
	ret nz                                           ; $7869: $c0

	ld bc, $06a0                                     ; $786a: $01 $a0 $06
	add hl, bc                                       ; $786d: $09
	sbc c                                            ; $786e: $99
	ret nz                                           ; $786f: $c0

	ld bc, $01a0                                     ; $7870: $01 $a0 $01
	add hl, bc                                       ; $7873: $09
	sbc l                                            ; $7874: $9d
	pop hl                                           ; $7875: $e1
	ld [bc], a                                       ; $7876: $02
	rlca                                             ; $7877: $07
	cp a                                             ; $7878: $bf
	ret nz                                           ; $7879: $c0

	ld bc, $06a0                                     ; $787a: $01 $a0 $06
	add hl, bc                                       ; $787d: $09
	and l                                            ; $787e: $a5
	ldh [rAUD1SWEEP], a                              ; $787f: $e0 $10
	inc l                                            ; $7881: $2c
	ret nz                                           ; $7882: $c0

	ld bc, $01a0                                     ; $7883: $01 $a0 $01
	add hl, bc                                       ; $7886: $09
	xor d                                            ; $7887: $aa
	ld h, b                                          ; $7888: $60
	add b                                            ; $7889: $80
	nop                                              ; $788a: $00
	xor l                                            ; $788b: $ad
	rrca                                             ; $788c: $0f
	ei                                               ; $788d: $fb
	ld hl, sp-$40                                    ; $788e: $f8 $c0
	dec d                                            ; $7890: $15
	jp c, $04df                                      ; $7891: $da $df $04

	ret nz                                           ; $7894: $c0

	ld e, $df                                        ; $7895: $1e $df
	jp c, $8040                                      ; $7897: $da $40 $80

	nop                                              ; $789a: $00
	xor l                                            ; $789b: $ad
	dec c                                            ; $789c: $0d
	ei                                               ; $789d: $fb
	ld hl, sp-$40                                    ; $789e: $f8 $c0
	dec d                                            ; $78a0: $15
	jp c, $1ee0                                      ; $78a1: $da $e0 $1e

	dec b                                            ; $78a4: $05
	ret nz                                           ; $78a5: $c0

	ld e, $e0                                        ; $78a6: $1e $e0
	ld e, $da                                        ; $78a8: $1e $da
	db $e4                                           ; $78aa: $e4
	inc bc                                           ; $78ab: $03
	cp b                                             ; $78ac: $b8
	add hl, bc                                       ; $78ad: $09
	ld l, b                                          ; $78ae: $68
	ld h, c                                          ; $78af: $61
	add b                                            ; $78b0: $80
	nop                                              ; $78b1: $00
	xor [hl]                                         ; $78b2: $ae
	add hl, de                                       ; $78b3: $19
	ldh [$03], a                                     ; $78b4: $e0 $03
	sbc l                                            ; $78b6: $9d
	ldh [$03], a                                     ; $78b7: $e0 $03
	sub c                                            ; $78b9: $91
	ret nz                                           ; $78ba: $c0

	ld bc, $0aa0                                     ; $78bb: $01 $a0 $0a
	add hl, bc                                       ; $78be: $09
	or [hl]                                          ; $78bf: $b6
	ret nz                                           ; $78c0: $c0

	ld bc, $01a0                                     ; $78c1: $01 $a0 $01
	inc bc                                           ; $78c4: $03
	add c                                            ; $78c5: $81
	ld b, b                                          ; $78c6: $40
	add b                                            ; $78c7: $80
	nop                                              ; $78c8: $00
	xor [hl]                                         ; $78c9: $ae
	db $e4                                           ; $78ca: $e4
	ld bc, $806e                                     ; $78cb: $01 $6e $80
	and b                                            ; $78ce: $a0
	ld [$e003], sp                                   ; $78cf: $08 $03 $e0
	inc bc                                           ; $78d2: $03
	ld h, c                                          ; $78d3: $61
	ld b, d                                          ; $78d4: $42
	ldh [$03], a                                     ; $78d5: $e0 $03
	ld a, h                                          ; $78d7: $7c
	ldh [$03], a                                     ; $78d8: $e0 $03
	ld [hl], b                                       ; $78da: $70
	ret nz                                           ; $78db: $c0

	ld bc, $0aa0                                     ; $78dc: $01 $a0 $0a
	add hl, bc                                       ; $78df: $09
	or [hl]                                          ; $78e0: $b6
	ret nz                                           ; $78e1: $c0

	ld bc, $01a0                                     ; $78e2: $01 $a0 $01
	inc bc                                           ; $78e5: $03
	add c                                            ; $78e6: $81
	add e                                            ; $78e7: $83
	ret nz                                           ; $78e8: $c0

	dec de                                           ; $78e9: $1b
	db $dd                                           ; $78ea: $dd
	ld [bc], a                                       ; $78eb: $02
	ret nc                                           ; $78ec: $d0

	pop de                                           ; $78ed: $d1
	add hl, bc                                       ; $78ee: $09
	ret nz                                           ; $78ef: $c0

	ld bc, $0aa0                                     ; $78f0: $01 $a0 $0a
	add hl, bc                                       ; $78f3: $09
	cp d                                             ; $78f4: $ba
	db $e4                                           ; $78f5: $e4
	nop                                              ; $78f6: $00
	ld hl, $d202                                     ; $78f7: $21 $02 $d2
	db $d3                                           ; $78fa: $d3
	add hl, bc                                       ; $78fb: $09
	ret nz                                           ; $78fc: $c0

	ld bc, $0aa0                                     ; $78fd: $01 $a0 $0a
	add hl, bc                                       ; $7900: $09
	cp [hl]                                          ; $7901: $be
	db $e4                                           ; $7902: $e4
	nop                                              ; $7903: $00
	inc d                                            ; $7904: $14
	ld bc, $09d4                                     ; $7905: $01 $d4 $09
	ret nz                                           ; $7908: $c0

	ld bc, $0aa0                                     ; $7909: $01 $a0 $0a
	ld [$e432], sp                                   ; $790c: $08 $32 $e4
	nop                                              ; $790f: $00
	ld [$d501], sp                                   ; $7910: $08 $01 $d5
	inc bc                                           ; $7913: $03
	db $e4                                           ; $7914: $e4
	ld bc, $0924                                     ; $7915: $01 $24 $09
	ld b, l                                          ; $7918: $45
	ret nz                                           ; $7919: $c0

	ld h, $dc                                        ; $791a: $26 $dc
	db $dd                                           ; $791c: $dd
	add d                                            ; $791d: $82
	pop bc                                           ; $791e: $c1
	xor a                                            ; $791f: $af
	db $dd                                           ; $7920: $dd
	ld bc, $09d0                                     ; $7921: $01 $d0 $09
	ret nc                                           ; $7924: $d0

	add h                                            ; $7925: $84
	and b                                            ; $7926: $a0
	daa                                              ; $7927: $27
	ret nz                                           ; $7928: $c0

	ld [$00e4], sp                                   ; $7929: $08 $e4 $00
	inc sp                                           ; $792c: $33
	ld bc, $0dd1                                     ; $792d: $01 $d1 $0d
	ret nz                                           ; $7930: $c0

	reti                                             ; $7931: $d9


	jp c, $d0d8                                      ; $7932: $da $d8 $d0

	add h                                            ; $7935: $84
	and b                                            ; $7936: $a0

jr_07a_7937:
	daa                                              ; $7937: $27
	ret nz                                           ; $7938: $c0

	ld [$00e4], sp                                   ; $7939: $08 $e4 $00
	ld l, e                                          ; $793c: $6b
	ld bc, $1ed2                                     ; $793d: $01 $d2 $1e
	ret nz                                           ; $7940: $c0

	ld bc, $01a0                                     ; $7941: $01 $a0 $01
	inc bc                                           ; $7944: $03
	and b                                            ; $7945: $a0
	ret nz                                           ; $7946: $c0

	ld bc, $01a0                                     ; $7947: $01 $a0 $01
	add hl, bc                                       ; $794a: $09
	jp nz, $01c0                                     ; $794b: $c2 $c0 $01

	and b                                            ; $794e: $a0
	ld a, [bc]                                       ; $794f: $0a
	add hl, bc                                       ; $7950: $09
	call z, $01c0                                    ; $7951: $cc $c0 $01
	and b                                            ; $7954: $a0
	ld bc, $bc03                                     ; $7955: $01 $03 $bc
	ldh [rIF], a                                     ; $7958: $e0 $0f
	ld d, e                                          ; $795a: $53
	db $e4                                           ; $795b: $e4
	inc bc                                           ; $795c: $03
	rlca                                             ; $795d: $07
	add hl, bc                                       ; $795e: $09
	ld b, [hl]                                       ; $795f: $46
	ret nz                                           ; $7960: $c0

	ld bc, $01a0                                     ; $7961: $01 $a0 $01
	inc bc                                           ; $7964: $03
	ret nz                                           ; $7965: $c0

	ret nz                                           ; $7966: $c0

	ld bc, $0aa0                                     ; $7967: $01 $a0 $0a
	add hl, bc                                       ; $796a: $09
	jp nc, $0cc0                                     ; $796b: $d2 $c0 $0c

	ldh [rAUD3HIGH], a                               ; $796e: $e0 $1e
	ret nz                                           ; $7970: $c0

	ld bc, $0aa0                                     ; $7971: $01 $a0 $0a
	add hl, bc                                       ; $7974: $09
	jr nc, jr_07a_7937                               ; $7975: $30 $c0

	ld bc, $01a0                                     ; $7977: $01 $a0 $01
	inc bc                                           ; $797a: $03
	db $d3                                           ; $797b: $d3
	ret nz                                           ; $797c: $c0

	ld bc, $0aa0                                     ; $797d: $01 $a0 $0a
	add hl, bc                                       ; $7980: $09
	jp c, $01c0                                      ; $7981: $da $c0 $01

	and b                                            ; $7984: $a0
	ld bc, $d304                                     ; $7985: $01 $04 $d3
	ldh [rIF], a                                     ; $7988: $e0 $0f
	inc hl                                           ; $798a: $23
	ret nz                                           ; $798b: $c0

	ld bc, $01a0                                     ; $798c: $01 $a0 $01
	inc bc                                           ; $798f: $03
	di                                               ; $7990: $f3
	ret nc                                           ; $7991: $d0

	adc e                                            ; $7992: $8b
	nop                                              ; $7993: $00
	sub l                                            ; $7994: $95
	or b                                             ; $7995: $b0
	ld a, [bc]                                       ; $7996: $0a
	ei                                               ; $7997: $fb
	db $fc                                           ; $7998: $fc
	add h                                            ; $7999: $84
	and b                                            ; $799a: $a0
	daa                                              ; $799b: $27
	ldh [rAUD1ENV], a                                ; $799c: $e0 $12
	inc b                                            ; $799e: $04
	ret nz                                           ; $799f: $c0

	ld [hl+], a                                      ; $79a0: $22
	pop de                                           ; $79a1: $d1
	db $dd                                           ; $79a2: $dd
	db $e4                                           ; $79a3: $e4
	ld [bc], a                                       ; $79a4: $02
	cp a                                             ; $79a5: $bf
	add hl, bc                                       ; $79a6: $09
	sub c                                            ; $79a7: $91
	ret nz                                           ; $79a8: $c0

	ld bc, $01a0                                     ; $79a9: $01 $a0 $01
	inc bc                                           ; $79ac: $03
	ret nz                                           ; $79ad: $c0

	add d                                            ; $79ae: $82
	ret nz                                           ; $79af: $c0

	ld e, c                                          ; $79b0: $59
	db $dd                                           ; $79b1: $dd
	add h                                            ; $79b2: $84
	and b                                            ; $79b3: $a0
	daa                                              ; $79b4: $27
	ld [bc], a                                       ; $79b5: $02
	ret nc                                           ; $79b6: $d0

	pop de                                           ; $79b7: $d1
	dec hl                                           ; $79b8: $2b
	ret nz                                           ; $79b9: $c0

	ld bc, $0aa0                                     ; $79ba: $01 $a0 $0a
	add hl, bc                                       ; $79bd: $09
	ldh [$c0], a                                     ; $79be: $e0 $c0
	inc c                                            ; $79c0: $0c
	ldh [rAUD3HIGH], a                               ; $79c1: $e0 $1e
	ret nz                                           ; $79c3: $c0

	ld bc, $0aa0                                     ; $79c4: $01 $a0 $0a
	add hl, bc                                       ; $79c7: $09
	rst SubAFromBC                                          ; $79c8: $e7
	ret nz                                           ; $79c9: $c0

	ld bc, $01a0                                     ; $79ca: $01 $a0 $01
	inc b                                            ; $79cd: $04
	rst SubAFromBC                                          ; $79ce: $e7
	ret nz                                           ; $79cf: $c0

	ld bc, $0aa0                                     ; $79d0: $01 $a0 $0a
	add hl, bc                                       ; $79d3: $09
	xor $c0                                          ; $79d4: $ee $c0
	ld bc, $01a0                                     ; $79d6: $01 $a0 $01
	add hl, bc                                       ; $79d9: $09
	rst FarCall                                          ; $79da: $f7
	ldh [$0e], a                                     ; $79db: $e0 $0e
	ret nc                                           ; $79dd: $d0

	ret nz                                           ; $79de: $c0

	ld bc, $01a0                                     ; $79df: $01 $a0 $01
	inc b                                            ; $79e2: $04
	dec h                                            ; $79e3: $25
	ld [bc], a                                       ; $79e4: $02
	jp nc, $25d3                                     ; $79e5: $d2 $d3 $25

	ret nz                                           ; $79e8: $c0

	ld bc, $0aa0                                     ; $79e9: $01 $a0 $0a
	add hl, bc                                       ; $79ec: $09
	ldh [$c0], a                                     ; $79ed: $e0 $c0
	inc c                                            ; $79ef: $0c
	ldh [rAUD3HIGH], a                               ; $79f0: $e0 $1e
	ret nz                                           ; $79f2: $c0

	ld bc, $0aa0                                     ; $79f3: $01 $a0 $0a
	ld a, [bc]                                       ; $79f6: $0a
	dec b                                            ; $79f7: $05
	ret nz                                           ; $79f8: $c0

	ld bc, $01a0                                     ; $79f9: $01 $a0 $01
	inc b                                            ; $79fc: $04
	jr c, @-$3e                                      ; $79fd: $38 $c0

	ld bc, $0aa0                                     ; $79ff: $01 $a0 $0a
	ld a, [bc]                                       ; $7a02: $0a
	ld a, [bc]                                       ; $7a03: $0a
	ldh [$0e], a                                     ; $7a04: $e0 $0e
	and a                                            ; $7a06: $a7
	ret nz                                           ; $7a07: $c0

	ld bc, $01a0                                     ; $7a08: $01 $a0 $01
	inc b                                            ; $7a0b: $04
	ld b, l                                          ; $7a0c: $45
	ld [bc], a                                       ; $7a0d: $02
	call nc, $25d5                                   ; $7a0e: $d4 $d5 $25
	ret nz                                           ; $7a11: $c0

	ld bc, $0aa0                                     ; $7a12: $01 $a0 $0a
	inc b                                            ; $7a15: $04
	jp c, $0cc0                                      ; $7a16: $da $c0 $0c

	ldh [rAUD3HIGH], a                               ; $7a19: $e0 $1e
	ret nz                                           ; $7a1b: $c0

	ld bc, $0aa0                                     ; $7a1c: $01 $a0 $0a
	ld a, [bc]                                       ; $7a1f: $0a
	dec c                                            ; $7a20: $0d
	ret nz                                           ; $7a21: $c0

	ld bc, $01a0                                     ; $7a22: $01 $a0 $01
	inc b                                            ; $7a25: $04
	ld d, l                                          ; $7a26: $55
	ret nz                                           ; $7a27: $c0

	ld bc, $0aa0                                     ; $7a28: $01 $a0 $0a
	ld a, [bc]                                       ; $7a2b: $0a
	inc de                                           ; $7a2c: $13

jr_07a_7a2d:
	ldh [$0e], a                                     ; $7a2d: $e0 $0e
	ld a, [hl]                                       ; $7a2f: $7e
	ret nz                                           ; $7a30: $c0

	ld bc, $01a0                                     ; $7a31: $01 $a0 $01
	inc b                                            ; $7a34: $04
	ld h, h                                          ; $7a35: $64
	db $e4                                           ; $7a36: $e4
	ld [bc], a                                       ; $7a37: $02
	inc l                                            ; $7a38: $2c
	add hl, bc                                       ; $7a39: $09
	ld d, [hl]                                       ; $7a3a: $56
	ret nz                                           ; $7a3b: $c0

	ld bc, $0aa0                                     ; $7a3c: $01 $a0 $0a
	ld a, [bc]                                       ; $7a3f: $0a
	rra                                              ; $7a40: $1f
	ret nz                                           ; $7a41: $c0

	ld bc, $01a0                                     ; $7a42: $01 $a0 $01
	ld a, [bc]                                       ; $7a45: $0a
	dec h                                            ; $7a46: $25
	ret nz                                           ; $7a47: $c0

	ld bc, $0aa0                                     ; $7a48: $01 $a0 $0a
	ld a, [bc]                                       ; $7a4b: $0a
	dec hl                                           ; $7a4c: $2b
	ret nz                                           ; $7a4d: $c0

	ld bc, $01a0                                     ; $7a4e: $01 $a0 $01
	ld a, [bc]                                       ; $7a51: $0a
	cpl                                              ; $7a52: $2f
	ret nz                                           ; $7a53: $c0

	ld bc, $01a0                                     ; $7a54: $01 $a0 $01
	ld a, [bc]                                       ; $7a57: $0a
	inc [hl]                                         ; $7a58: $34
	pop hl                                           ; $7a59: $e1
	ld [bc], a                                       ; $7a5a: $02
	rlca                                             ; $7a5b: $07
	cp a                                             ; $7a5c: $bf
	ret nz                                           ; $7a5d: $c0

	ld bc, $0aa0                                     ; $7a5e: $01 $a0 $0a
	ld a, [bc]                                       ; $7a61: $0a
	inc a                                            ; $7a62: $3c
	ldh [$0e], a                                     ; $7a63: $e0 $0e
	ld c, b                                          ; $7a65: $48
	ret nz                                           ; $7a66: $c0

	ld bc, $01a0                                     ; $7a67: $01 $a0 $01
	ld a, [bc]                                       ; $7a6a: $0a
	ld b, l                                          ; $7a6b: $45
	ld h, b                                          ; $7a6c: $60
	add b                                            ; $7a6d: $80
	nop                                              ; $7a6e: $00
	xor a                                            ; $7a6f: $af
	rrca                                             ; $7a70: $0f
	ei                                               ; $7a71: $fb
	ld hl, sp-$40                                    ; $7a72: $f8 $c0
	dec d                                            ; $7a74: $15
	db $dd                                           ; $7a75: $dd
	rst SubAFromDE                                          ; $7a76: $df
	inc b                                            ; $7a77: $04
	ret nz                                           ; $7a78: $c0

	ld e, $df                                        ; $7a79: $1e $df
	db $dd                                           ; $7a7b: $dd
	ld b, b                                          ; $7a7c: $40
	add b                                            ; $7a7d: $80
	nop                                              ; $7a7e: $00
	xor a                                            ; $7a7f: $af
	dec c                                            ; $7a80: $0d
	ei                                               ; $7a81: $fb
	ld hl, sp-$40                                    ; $7a82: $f8 $c0
	dec d                                            ; $7a84: $15
	db $dd                                           ; $7a85: $dd
	ldh [rAUD3HIGH], a                               ; $7a86: $e0 $1e
	dec b                                            ; $7a88: $05
	ret nz                                           ; $7a89: $c0

	ld e, $e0                                        ; $7a8a: $1e $e0
	ld e, $dd                                        ; $7a8c: $1e $dd
	db $e4                                           ; $7a8e: $e4
	ld bc, $09d4                                     ; $7a8f: $01 $d4 $09
	sub [hl]                                         ; $7a92: $96
	ldh [rSB], a                                     ; $7a93: $e0 $01
	cp [hl]                                          ; $7a95: $be
	ldh [rSB], a                                     ; $7a96: $e0 $01
	or d                                             ; $7a98: $b2
	ret nz                                           ; $7a99: $c0

	ld bc, $0ba0                                     ; $7a9a: $01 $a0 $0b
	ld a, [bc]                                       ; $7a9d: $0a
	ld d, c                                          ; $7a9e: $51
	ret nz                                           ; $7a9f: $c0

	ld bc, $01a0                                     ; $7aa0: $01 $a0 $01
	inc bc                                           ; $7aa3: $03
	add c                                            ; $7aa4: $81
	jr nz, jr_07a_7a2d                               ; $7aa5: $20 $86

	and b                                            ; $7aa7: $a0
	inc l                                            ; $7aa8: $2c
	pop bc                                           ; $7aa9: $c1
	add e                                            ; $7aaa: $83
	db $fc                                           ; $7aab: $fc
	ld a, h                                          ; $7aac: $7c
	ei                                               ; $7aad: $fb
	add [hl]                                         ; $7aae: $86
	and b                                            ; $7aaf: $a0
	inc l                                            ; $7ab0: $2c
	ldh [$3d], a                                     ; $7ab1: $e0 $3d
	daa                                              ; $7ab3: $27
	ei                                               ; $7ab4: $fb
	db $fc                                           ; $7ab5: $fc
	add [hl]                                         ; $7ab6: $86
	and b                                            ; $7ab7: $a0
	inc l                                            ; $7ab8: $2c
	ldh [rSTAT], a                                   ; $7ab9: $e0 $41
	inc b                                            ; $7abb: $04
	nop                                              ; $7abc: $00
	add b                                            ; $7abd: $80
	nop                                              ; $7abe: $00
	or b                                             ; $7abf: $b0
	rst $38                                          ; $7ac0: $ff
	add hl, de                                       ; $7ac1: $19
	ld [hl-], a                                      ; $7ac2: $32
	inc bc                                           ; $7ac3: $03
	db $e4                                           ; $7ac4: $e4
	ld bc, $6502                                     ; $7ac5: $01 $02 $65
	inc bc                                           ; $7ac8: $03
	db $e4                                           ; $7ac9: $e4
	ld bc, $990b                                     ; $7aca: $01 $0b $99
	inc bc                                           ; $7acd: $03
	db $e4                                           ; $7ace: $e4
	ld bc, $cc14                                     ; $7acf: $01 $14 $cc
	inc bc                                           ; $7ad2: $03
	db $e4                                           ; $7ad3: $e4
	ld bc, $ff1d                                     ; $7ad4: $01 $1d $ff
	inc bc                                           ; $7ad7: $03
	db $e4                                           ; $7ad8: $e4
	ld bc, $fb26                                     ; $7ad9: $01 $26 $fb
	add [hl]                                         ; $7adc: $86
	and b                                            ; $7add: $a0
	inc l                                            ; $7ade: $2c
	ldh [$33], a                                     ; $7adf: $e0 $33
	inc bc                                           ; $7ae1: $03
	db $e4                                           ; $7ae2: $e4
	ld bc, $fb00                                     ; $7ae3: $01 $00 $fb
	add [hl]                                         ; $7ae6: $86
	and b                                            ; $7ae7: $a0
	inc l                                            ; $7ae8: $2c
	ldh [$29], a                                     ; $7ae9: $e0 $29
	inc bc                                           ; $7aeb: $03
	db $e4                                           ; $7aec: $e4
	nop                                              ; $7aed: $00
	add sp, -$05                                     ; $7aee: $e8 $fb
	add [hl]                                         ; $7af0: $86
	and b                                            ; $7af1: $a0
	inc l                                            ; $7af2: $2c
	ldh [$1f], a                                     ; $7af3: $e0 $1f
	rrca                                             ; $7af5: $0f
	ei                                               ; $7af6: $fb
	db $fc                                           ; $7af7: $fc
	add [hl]                                         ; $7af8: $86
	and b                                            ; $7af9: $a0
	inc l                                            ; $7afa: $2c
	ldh [$28], a                                     ; $7afb: $e0 $28
	inc b                                            ; $7afd: $04
	nop                                              ; $7afe: $00
	add b                                            ; $7aff: $80
	nop                                              ; $7b00: $00
	or c                                             ; $7b01: $b1
	db $e4                                           ; $7b02: $e4
	nop                                              ; $7b03: $00
	call nz, $86fb                                   ; $7b04: $c4 $fb $86
	and b                                            ; $7b07: $a0
	inc l                                            ; $7b08: $2c
	ldh [$15], a                                     ; $7b09: $e0 $15
	inc bc                                           ; $7b0b: $03
	db $e4                                           ; $7b0c: $e4
	nop                                              ; $7b0d: $00
	halt                                             ; $7b0e: $76
	ei                                               ; $7b0f: $fb
	add [hl]                                         ; $7b10: $86
	and b                                            ; $7b11: $a0
	inc l                                            ; $7b12: $2c
	db $db                                           ; $7b13: $db
	rrca                                             ; $7b14: $0f
	ei                                               ; $7b15: $fb
	db $fc                                           ; $7b16: $fc
	add [hl]                                         ; $7b17: $86
	and b                                            ; $7b18: $a0
	inc l                                            ; $7b19: $2c
	ldh [rAUD1HIGH], a                               ; $7b1a: $e0 $14
	inc b                                            ; $7b1c: $04
	nop                                              ; $7b1d: $00
	add b                                            ; $7b1e: $80
	nop                                              ; $7b1f: $00
	or d                                             ; $7b20: $b2
	db $e4                                           ; $7b21: $e4
	nop                                              ; $7b22: $00
	dec [hl]                                         ; $7b23: $35
	pop de                                           ; $7b24: $d1
	inc bc                                           ; $7b25: $03
	db $e4                                           ; $7b26: $e4
	nop                                              ; $7b27: $00
	ld [bc], a                                       ; $7b28: $02
	add hl, bc                                       ; $7b29: $09
	inc l                                            ; $7b2a: $2c
	and b                                            ; $7b2b: $a0
	add b                                            ; $7b2c: $80
	and b                                            ; $7b2d: $a0
	inc sp                                           ; $7b2e: $33
	nop                                              ; $7b2f: $00
	ld b, $c0                                        ; $7b30: $06 $c0
	ld bc, $0ba0                                     ; $7b32: $01 $a0 $0b
	ld a, [bc]                                       ; $7b35: $0a
	ld d, h                                          ; $7b36: $54
	rst $38                                          ; $7b37: $ff
	ld b, $c0                                        ; $7b38: $06 $c0
	ld bc, $0ba0                                     ; $7b3a: $01 $a0 $0b
	ld a, [bc]                                       ; $7b3d: $0a
	ld e, d                                          ; $7b3e: $5a
	ret nz                                           ; $7b3f: $c0

	ld bc, $01a0                                     ; $7b40: $01 $a0 $01
	ld a, [bc]                                       ; $7b43: $0a
	ld e, a                                          ; $7b44: $5f
	ret nz                                           ; $7b45: $c0

	ld bc, $0ba0                                     ; $7b46: $01 $a0 $0b
	ld a, [bc]                                       ; $7b49: $0a
	ld l, h                                          ; $7b4a: $6c
	ldh [$0d], a                                     ; $7b4b: $e0 $0d
	ld h, b                                          ; $7b4d: $60
	ret nz                                           ; $7b4e: $c0

	ld bc, $01a0                                     ; $7b4f: $01 $a0 $01
	ld a, [bc]                                       ; $7b52: $0a
	ld a, h                                          ; $7b53: $7c
	db $e4                                           ; $7b54: $e4
	ld bc, $090e                                     ; $7b55: $01 $0e $09
	ld a, [hl+]                                      ; $7b58: $2a
	ret nz                                           ; $7b59: $c0

	ld bc, $0ba0                                     ; $7b5a: $01 $a0 $0b
	ld a, [bc]                                       ; $7b5d: $0a
	add l                                            ; $7b5e: $85
	ret nz                                           ; $7b5f: $c0

	ld bc, $01a0                                     ; $7b60: $01 $a0 $01
	ld a, [bc]                                       ; $7b63: $0a
	adc [hl]                                         ; $7b64: $8e
	ret nz                                           ; $7b65: $c0

	ld bc, $0ba0                                     ; $7b66: $01 $a0 $0b
	ld a, [bc]                                       ; $7b69: $0a
	sub d                                            ; $7b6a: $92
	ret nz                                           ; $7b6b: $c0

	ld bc, $01a0                                     ; $7b6c: $01 $a0 $01
	ld a, [bc]                                       ; $7b6f: $0a
	xor d                                            ; $7b70: $aa
	ret nz                                           ; $7b71: $c0

	ld bc, $0ba0                                     ; $7b72: $01 $a0 $0b
	ld a, [bc]                                       ; $7b75: $0a
	or d                                             ; $7b76: $b2
	ldh [$0d], a                                     ; $7b77: $e0 $0d
	inc [hl]                                         ; $7b79: $34
	ret nz                                           ; $7b7a: $c0

	ld bc, $01a0                                     ; $7b7b: $01 $a0 $01
	ld a, [bc]                                       ; $7b7e: $0a
	adc [hl]                                         ; $7b7f: $8e
	db $e4                                           ; $7b80: $e4
	nop                                              ; $7b81: $00
	ldh [c], a                                       ; $7b82: $e2
	add hl, bc                                       ; $7b83: $09
	ld b, d                                          ; $7b84: $42
	ret nz                                           ; $7b85: $c0

	ld bc, $0ba0                                     ; $7b86: $01 $a0 $0b
	ld a, [bc]                                       ; $7b89: $0a
	add l                                            ; $7b8a: $85
	ret nz                                           ; $7b8b: $c0

	ld bc, $01a0                                     ; $7b8c: $01 $a0 $01
	ld a, [bc]                                       ; $7b8f: $0a
	adc [hl]                                         ; $7b90: $8e
	ret nz                                           ; $7b91: $c0

	ld bc, $0ba0                                     ; $7b92: $01 $a0 $0b
	ld a, [bc]                                       ; $7b95: $0a
	push bc                                          ; $7b96: $c5
	ret nz                                           ; $7b97: $c0

	ld bc, $01a0                                     ; $7b98: $01 $a0 $01
	ld a, [bc]                                       ; $7b9b: $0a
	rst SubAFromDE                                          ; $7b9c: $df
	ret nz                                           ; $7b9d: $c0

	ld bc, $0ba0                                     ; $7b9e: $01 $a0 $0b
	ld a, [bc]                                       ; $7ba1: $0a
	db $e3                                           ; $7ba2: $e3
	ret nz                                           ; $7ba3: $c0

	ld bc, $01a0                                     ; $7ba4: $01 $a0 $01
	ld a, [bc]                                       ; $7ba7: $0a
	db $ec                                           ; $7ba8: $ec
	ret nz                                           ; $7ba9: $c0

	ld bc, $0ba0                                     ; $7baa: $01 $a0 $0b
	ld a, [bc]                                       ; $7bad: $0a
	di                                               ; $7bae: $f3
	ret nz                                           ; $7baf: $c0

	ld bc, $01a0                                     ; $7bb0: $01 $a0 $01
	dec bc                                           ; $7bb3: $0b
	add hl, bc                                       ; $7bb4: $09
	ret nz                                           ; $7bb5: $c0

	ld bc, $0ba0                                     ; $7bb6: $01 $a0 $0b
	dec bc                                           ; $7bb9: $0b
	dec d                                            ; $7bba: $15
	ldh [$0c], a                                     ; $7bbb: $e0 $0c
	ldh a, [$c0]                                     ; $7bbd: $f0 $c0
	ld bc, $01a0                                     ; $7bbf: $01 $a0 $01
	dec bc                                           ; $7bc2: $0b
	add hl, de                                       ; $7bc3: $19
	db $e4                                           ; $7bc4: $e4
	nop                                              ; $7bc5: $00
	sbc [hl]                                         ; $7bc6: $9e
	add hl, bc                                       ; $7bc7: $09
	inc c                                            ; $7bc8: $0c
	ldh [rP1], a                                     ; $7bc9: $e0 $00
	ld b, e                                          ; $7bcb: $43
	ret nz                                           ; $7bcc: $c0

	ld bc, $0ba0                                     ; $7bcd: $01 $a0 $0b
	dec bc                                           ; $7bd0: $0b
	dec e                                            ; $7bd1: $1d
	ldh [rP1], a                                     ; $7bd2: $e0 $00
	ld b, a                                          ; $7bd4: $47
	add hl, bc                                       ; $7bd5: $09
	inc c                                            ; $7bd6: $0c
	ldh [rP1], a                                     ; $7bd7: $e0 $00
	dec [hl]                                         ; $7bd9: $35
	ret nz                                           ; $7bda: $c0

	ld bc, $0ba0                                     ; $7bdb: $01 $a0 $0b
	dec bc                                           ; $7bde: $0b
	add hl, hl                                       ; $7bdf: $29
	ldh [rP1], a                                     ; $7be0: $e0 $00
	add hl, sp                                       ; $7be2: $39
	add hl, bc                                       ; $7be3: $09
	inc c                                            ; $7be4: $0c
	ldh [rP1], a                                     ; $7be5: $e0 $00
	daa                                              ; $7be7: $27
	ret nz                                           ; $7be8: $c0

	ld bc, $0ba0                                     ; $7be9: $01 $a0 $0b
	dec bc                                           ; $7bec: $0b
	inc [hl]                                         ; $7bed: $34
	ldh [rP1], a                                     ; $7bee: $e0 $00
	dec hl                                           ; $7bf0: $2b
	add hl, bc                                       ; $7bf1: $09
	inc c                                            ; $7bf2: $0c
	ldh [rP1], a                                     ; $7bf3: $e0 $00
	add hl, de                                       ; $7bf5: $19
	ret nz                                           ; $7bf6: $c0

	ld bc, $0ba0                                     ; $7bf7: $01 $a0 $0b
	dec bc                                           ; $7bfa: $0b
	ld b, e                                          ; $7bfb: $43
	ldh [rP1], a                                     ; $7bfc: $e0 $00
	dec e                                            ; $7bfe: $1d
	add hl, bc                                       ; $7bff: $09
	inc c                                            ; $7c00: $0c
	ldh [rP1], a                                     ; $7c01: $e0 $00
	dec bc                                           ; $7c03: $0b
	ret nz                                           ; $7c04: $c0

	ld bc, $0ba0                                     ; $7c05: $01 $a0 $0b
	dec bc                                           ; $7c08: $0b
	ld d, e                                          ; $7c09: $53
	ldh [rP1], a                                     ; $7c0a: $e0 $00
	rrca                                             ; $7c0c: $0f
	inc c                                            ; $7c0d: $0c
	ret nz                                           ; $7c0e: $c0

	ld bc, $0ba0                                     ; $7c0f: $01 $a0 $0b
	ld a, [bc]                                       ; $7c12: $0a
	add l                                            ; $7c13: $85
	ret nz                                           ; $7c14: $c0

	ld bc, $01a0                                     ; $7c15: $01 $a0 $01
	ld a, [bc]                                       ; $7c18: $0a
	adc [hl]                                         ; $7c19: $8e
	jr @-$3e                                         ; $7c1a: $18 $c0

	ld bc, $01a0                                     ; $7c1c: $01 $a0 $01
	dec bc                                           ; $7c1f: $0b
	ld e, a                                          ; $7c20: $5f
	ret nz                                           ; $7c21: $c0

	ld bc, $0ba0                                     ; $7c22: $01 $a0 $0b
	dec bc                                           ; $7c25: $0b
	dec d                                            ; $7c26: $15
	ldh [$0c], a                                     ; $7c27: $e0 $0c
	add h                                            ; $7c29: $84
	ret nz                                           ; $7c2a: $c0

	ld bc, $01a0                                     ; $7c2b: $01 $a0 $01
	dec bc                                           ; $7c2e: $0b
	add hl, de                                       ; $7c2f: $19
	db $e4                                           ; $7c30: $e4
	nop                                              ; $7c31: $00
	ld [hl-], a                                      ; $7c32: $32
	dec d                                            ; $7c33: $15
	pop hl                                           ; $7c34: $e1
	ld [bc], a                                       ; $7c35: $02
	ld c, $65                                        ; $7c36: $0e $65
	pop bc                                           ; $7c38: $c1
	rlca                                             ; $7c39: $07
	call nc, $c0d3                                   ; $7c3a: $d4 $d3 $c0
	ld bc, $01a0                                     ; $7c3d: $01 $a0 $01
	dec bc                                           ; $7c40: $0b
	ld h, [hl]                                       ; $7c41: $66
	pop hl                                           ; $7c42: $e1
	ld [bc], a                                       ; $7c43: $02
	nop                                              ; $7c44: $00
	sub c                                            ; $7c45: $91
	db $e4                                           ; $7c46: $e4
	push hl                                          ; $7c47: $e5
	cp h                                             ; $7c48: $bc
	ld [$02e1], sp                                   ; $7c49: $08 $e1 $02
	ld c, $65                                        ; $7c4c: $0e $65
	pop bc                                           ; $7c4e: $c1
	rlca                                             ; $7c4f: $07
	jp nc, $10d0                                     ; $7c50: $d2 $d0 $10

	ret nc                                           ; $7c53: $d0

	add h                                            ; $7c54: $84
	nop                                              ; $7c55: $00
	or e                                             ; $7c56: $b3
	ldh [rAUD3HIGH], a                               ; $7c57: $e0 $1e
	ret nc                                           ; $7c59: $d0

	adc a                                            ; $7c5a: $8f
	nop                                              ; $7c5b: $00
	cp b                                             ; $7c5c: $b8
	ldh [rAUD2HIGH], a                               ; $7c5d: $e0 $19
	ld b, b                                          ; $7c5f: $40
	add c                                            ; $7c60: $81
	nop                                              ; $7c61: $00
	ret z                                            ; $7c62: $c8

	add hl, bc                                       ; $7c63: $09
	ret nz                                           ; $7c64: $c0

	jp nz, $f1fb                                     ; $7c65: $c2 $fb $f1

	add b                                            ; $7c68: $80
	nop                                              ; $7c69: $00
	inc [hl]                                         ; $7c6a: $34
	ld b, $c0                                        ; $7c6b: $06 $c0
	push af                                          ; $7c6d: $f5
	nop                                              ; $7c6e: $00
	add b                                            ; $7c6f: $80
	nop                                              ; $7c70: $00
	jp z, $a5fd                                      ; $7c71: $ca $fd $a5

	adc e                                            ; $7c74: $8b
	nop                                              ; $7c75: $00
	ld a, [hl-]                                      ; $7c76: $3a
	ld [bc], a                                       ; $7c77: $02
	or b                                             ; $7c78: $b0
	inc bc                                           ; $7c79: $03
	dec d                                            ; $7c7a: $15
	ldh [rP1], a                                     ; $7c7b: $e0 $00
	or c                                             ; $7c7d: $b1
	ldh [rP1], a                                     ; $7c7e: $e0 $00
	xor c                                            ; $7c80: $a9
	ld b, b                                          ; $7c81: $40
	add b                                            ; $7c82: $80
	nop                                              ; $7c83: $00
	bit 0, b                                         ; $7c84: $cb $40
	add b                                            ; $7c86: $80
	and b                                            ; $7c87: $a0
	ld bc, $8041                                     ; $7c88: $01 $41 $80
	nop                                              ; $7c8b: $00
	call z, $0080                                    ; $7c8c: $cc $80 $00
	call $b002                                       ; $7c8f: $cd $02 $b0
	inc b                                            ; $7c92: $04
	db $10                                           ; $7c93: $10
	ldh [rP1], a                                     ; $7c94: $e0 $00
	db $fc                                           ; $7c96: $fc
	ldh [rP1], a                                     ; $7c97: $e0 $00
	sub b                                            ; $7c99: $90
	ld b, d                                          ; $7c9a: $42
	add b                                            ; $7c9b: $80
	and b                                            ; $7c9c: $a0
	ld [bc], a                                       ; $7c9d: $02
	add b                                            ; $7c9e: $80
	nop                                              ; $7c9f: $00
	adc $80                                          ; $7ca0: $ce $80
	nop                                              ; $7ca2: $00
	rst GetHLinHL                                          ; $7ca3: $cf
	ld [bc], a                                       ; $7ca4: $02
	or b                                             ; $7ca5: $b0
	dec b                                            ; $7ca6: $05
	db $10                                           ; $7ca7: $10
	ldh [rSB], a                                     ; $7ca8: $e0 $01
	ld c, h                                          ; $7caa: $4c
	ldh [rP1], a                                     ; $7cab: $e0 $00
	ld a, h                                          ; $7cad: $7c
	ld b, d                                          ; $7cae: $42
	add b                                            ; $7caf: $80
	and b                                            ; $7cb0: $a0
	inc bc                                           ; $7cb1: $03
	add b                                            ; $7cb2: $80
	nop                                              ; $7cb3: $00
	ret nc                                           ; $7cb4: $d0

	add b                                            ; $7cb5: $80
	nop                                              ; $7cb6: $00
	pop de                                           ; $7cb7: $d1
	ld [bc], a                                       ; $7cb8: $02
	or b                                             ; $7cb9: $b0
	ld b, $10                                        ; $7cba: $06 $10
	ldh [rSB], a                                     ; $7cbc: $e0 $01
	sbc h                                            ; $7cbe: $9c
	ldh [rP1], a                                     ; $7cbf: $e0 $00
	ld l, b                                          ; $7cc1: $68
	ld b, d                                          ; $7cc2: $42
	add b                                            ; $7cc3: $80
	and b                                            ; $7cc4: $a0
	inc b                                            ; $7cc5: $04
	add b                                            ; $7cc6: $80
	nop                                              ; $7cc7: $00
	jp nc, $0080                                     ; $7cc8: $d2 $80 $00

	db $d3                                           ; $7ccb: $d3
	ld [bc], a                                       ; $7ccc: $02
	or b                                             ; $7ccd: $b0
	rlca                                             ; $7cce: $07
	db $10                                           ; $7ccf: $10
	ldh [rSB], a                                     ; $7cd0: $e0 $01
	db $ec                                           ; $7cd2: $ec
	ldh [rP1], a                                     ; $7cd3: $e0 $00
	ld d, h                                          ; $7cd5: $54
	ld b, d                                          ; $7cd6: $42
	add b                                            ; $7cd7: $80
	and b                                            ; $7cd8: $a0
	dec b                                            ; $7cd9: $05
	add b                                            ; $7cda: $80
	nop                                              ; $7cdb: $00
	call nc, $0080                                   ; $7cdc: $d4 $80 $00
	push de                                          ; $7cdf: $d5
	ld [bc], a                                       ; $7ce0: $02
	or b                                             ; $7ce1: $b0
	ld [$e010], sp                                   ; $7ce2: $08 $10 $e0
	ld [bc], a                                       ; $7ce5: $02
	dec a                                            ; $7ce6: $3d
	ldh [rP1], a                                     ; $7ce7: $e0 $00
	ld b, b                                          ; $7ce9: $40
	ld b, d                                          ; $7cea: $42
	add b                                            ; $7ceb: $80
	and b                                            ; $7cec: $a0
	ld b, $80                                        ; $7ced: $06 $80
	nop                                              ; $7cef: $00
	sub $80                                          ; $7cf0: $d6 $80
	nop                                              ; $7cf2: $00
	rst SubAFromHL                                          ; $7cf3: $d7
	ld [bc], a                                       ; $7cf4: $02
	or b                                             ; $7cf5: $b0
	add hl, bc                                       ; $7cf6: $09
	dec c                                            ; $7cf7: $0d
	ldh [rSC], a                                     ; $7cf8: $e0 $02
	adc l                                            ; $7cfa: $8d
	ldh [rP1], a                                     ; $7cfb: $e0 $00
	inc l                                            ; $7cfd: $2c
	ld b, c                                          ; $7cfe: $41
	add b                                            ; $7cff: $80
	and b                                            ; $7d00: $a0
	rlca                                             ; $7d01: $07
	add b                                            ; $7d02: $80
	nop                                              ; $7d03: $00
	ret c                                            ; $7d04: $d8

	ld [bc], a                                       ; $7d05: $02
	or b                                             ; $7d06: $b0
	ld a, [bc]                                       ; $7d07: $0a
	db $10                                           ; $7d08: $10
	ldh [rSC], a                                     ; $7d09: $e0 $02
	ret z                                            ; $7d0b: $c8

	ldh [rP1], a                                     ; $7d0c: $e0 $00
	dec de                                           ; $7d0e: $1b
	ld b, d                                          ; $7d0f: $42
	add b                                            ; $7d10: $80
	and b                                            ; $7d11: $a0
	ld [$0080], sp                                   ; $7d12: $08 $80 $00
	reti                                             ; $7d15: $d9


	add b                                            ; $7d16: $80
	nop                                              ; $7d17: $00
	jp c, $8bd0                                      ; $7d18: $da $d0 $8b

	nop                                              ; $7d1b: $00
	ld a, [hl-]                                      ; $7d1c: $3a
	or b                                             ; $7d1d: $b0
	ld bc, $8040                                     ; $7d1e: $01 $40 $80
	nop                                              ; $7d21: $00
	db $db                                           ; $7d22: $db
	pop bc                                           ; $7d23: $c1
	dec b                                            ; $7d24: $05
	db $e4                                           ; $7d25: $e4
	inc bc                                           ; $7d26: $03
	ld e, a                                          ; $7d27: $5f
	inc b                                            ; $7d28: $04
	ld b, b                                          ; $7d29: $40
	add b                                            ; $7d2a: $80
	nop                                              ; $7d2b: $00
	bit 2, e                                         ; $7d2c: $cb $53
	add e                                            ; $7d2e: $83
	ret nz                                           ; $7d2f: $c0

	dec de                                           ; $7d30: $1b
	ret nc                                           ; $7d31: $d0

	ld [bc], a                                       ; $7d32: $02
	ret nc                                           ; $7d33: $d0

	pop de                                           ; $7d34: $d1
	inc c                                            ; $7d35: $0c
	ldh [$0b], a                                     ; $7d36: $e0 $0b
	ld h, d                                          ; $7d38: $62
	ret nz                                           ; $7d39: $c0

	ld bc, $02a0                                     ; $7d3a: $01 $a0 $02
	dec bc                                           ; $7d3d: $0b
	ld [hl], e                                       ; $7d3e: $73
	ldh [rP1], a                                     ; $7d3f: $e0 $00
	ld b, c                                          ; $7d41: $41
	ld [bc], a                                       ; $7d42: $02
	jp nc, $0cd3                                     ; $7d43: $d2 $d3 $0c

	ldh [$0b], a                                     ; $7d46: $e0 $0b
	ld d, d                                          ; $7d48: $52
	ret nz                                           ; $7d49: $c0

	ld bc, $02a0                                     ; $7d4a: $01 $a0 $02
	dec bc                                           ; $7d4d: $0b
	add b                                            ; $7d4e: $80
	ldh [rP1], a                                     ; $7d4f: $e0 $00
	ld sp, $d401                                     ; $7d51: $31 $01 $d4
	inc c                                            ; $7d54: $0c
	ldh [$0b], a                                     ; $7d55: $e0 $0b
	ld b, e                                          ; $7d57: $43
	ret nz                                           ; $7d58: $c0

	ld bc, $02a0                                     ; $7d59: $01 $a0 $02
	dec bc                                           ; $7d5c: $0b
	sub h                                            ; $7d5d: $94
	ldh [rP1], a                                     ; $7d5e: $e0 $00
	ld [hl+], a                                      ; $7d60: $22
	ld bc, $0fd5                                     ; $7d61: $01 $d5 $0f
	ldh [rSC], a                                     ; $7d64: $e0 $02
	di                                               ; $7d66: $f3
	ret nz                                           ; $7d67: $c0

	ld bc, $07a0                                     ; $7d68: $01 $a0 $07
	dec bc                                           ; $7d6b: $0b
	and l                                            ; $7d6c: $a5
	ldh [rP1], a                                     ; $7d6d: $e0 $00
	inc de                                           ; $7d6f: $13
	ldh [$03], a                                     ; $7d70: $e0 $03
	dec c                                            ; $7d72: $0d
	ret nz                                           ; $7d73: $c0

	inc h                                            ; $7d74: $24
	ldh [rAUD4LEN], a                                ; $7d75: $e0 $20
	ret nc                                           ; $7d77: $d0

	ret nz                                           ; $7d78: $c0

	dec h                                            ; $7d79: $25
	ldh [$2a], a                                     ; $7d7a: $e0 $2a
	ret nc                                           ; $7d7c: $d0

	ret nz                                           ; $7d7d: $c0

	inc hl                                           ; $7d7e: $23
	ret c                                            ; $7d7f: $d8

	ret nc                                           ; $7d80: $d0

	rrca                                             ; $7d81: $0f
	ld h, b                                          ; $7d82: $60
	add b                                            ; $7d83: $80
	nop                                              ; $7d84: $00
	db $db                                           ; $7d85: $db
	inc bc                                           ; $7d86: $03
	ldh [rSC], a                                     ; $7d87: $e0 $02
	xor [hl]                                         ; $7d89: $ae
	ld b, $c1                                        ; $7d8a: $06 $c1
	ld b, a                                          ; $7d8c: $47
	ret nc                                           ; $7d8d: $d0

	ldh [rSC], a                                     ; $7d8e: $e0 $02
	or l                                             ; $7d90: $b5
	ld d, e                                          ; $7d91: $53
	add e                                            ; $7d92: $83
	ret nz                                           ; $7d93: $c0

	dec de                                           ; $7d94: $1b
	pop de                                           ; $7d95: $d1
	ld [bc], a                                       ; $7d96: $02
	ret nc                                           ; $7d97: $d0

	pop de                                           ; $7d98: $d1
	inc c                                            ; $7d99: $0c
	ldh [$0a], a                                     ; $7d9a: $e0 $0a
	cp $c0                                           ; $7d9c: $fe $c0
	ld bc, $03a0                                     ; $7d9e: $01 $a0 $03
	dec bc                                           ; $7da1: $0b
	xor l                                            ; $7da2: $ad
	ldh [rP1], a                                     ; $7da3: $e0 $00
	ld b, c                                          ; $7da5: $41
	ld [bc], a                                       ; $7da6: $02
	jp nc, $0cd3                                     ; $7da7: $d2 $d3 $0c

	ldh [$0a], a                                     ; $7daa: $e0 $0a
	xor $c0                                          ; $7dac: $ee $c0
	ld bc, $03a0                                     ; $7dae: $01 $a0 $03
	dec bc                                           ; $7db1: $0b
	cp e                                             ; $7db2: $bb
	ldh [rP1], a                                     ; $7db3: $e0 $00
	ld sp, $d401                                     ; $7db5: $31 $01 $d4
	inc c                                            ; $7db8: $0c
	ldh [$0a], a                                     ; $7db9: $e0 $0a
	rst SubAFromDE                                          ; $7dbb: $df
	ret nz                                           ; $7dbc: $c0

	ld bc, $03a0                                     ; $7dbd: $01 $a0 $03
	dec bc                                           ; $7dc0: $0b
	call $00e0                                       ; $7dc1: $cd $e0 $00
	ld [hl+], a                                      ; $7dc4: $22
	ld bc, $0fd5                                     ; $7dc5: $01 $d5 $0f
	ldh [rSC], a                                     ; $7dc8: $e0 $02
	adc a                                            ; $7dca: $8f
	ret nz                                           ; $7dcb: $c0

	ld bc, $07a0                                     ; $7dcc: $01 $a0 $07
	dec bc                                           ; $7dcf: $0b
	sub $e0                                          ; $7dd0: $d6 $e0
	nop                                              ; $7dd2: $00
	inc de                                           ; $7dd3: $13
	ldh [rSC], a                                     ; $7dd4: $e0 $02
	xor c                                            ; $7dd6: $a9
	ret nz                                           ; $7dd7: $c0

	inc h                                            ; $7dd8: $24
	ldh [$28], a                                     ; $7dd9: $e0 $28
	pop de                                           ; $7ddb: $d1
	ret nz                                           ; $7ddc: $c0

	dec h                                            ; $7ddd: $25
	ldh [$32], a                                     ; $7dde: $e0 $32
	pop de                                           ; $7de0: $d1
	ret nz                                           ; $7de1: $c0

	inc hl                                           ; $7de2: $23
	jp c, $0fd1                                      ; $7de3: $da $d1 $0f

	ld h, b                                          ; $7de6: $60
	add b                                            ; $7de7: $80
	nop                                              ; $7de8: $00
	db $db                                           ; $7de9: $db
	inc bc                                           ; $7dea: $03
	ldh [rSC], a                                     ; $7deb: $e0 $02
	ld c, d                                          ; $7ded: $4a
	ld b, $c1                                        ; $7dee: $06 $c1
	ld b, a                                          ; $7df0: $47
	pop de                                           ; $7df1: $d1
	ldh [rSC], a                                     ; $7df2: $e0 $02
	ld d, c                                          ; $7df4: $51
	ld d, e                                          ; $7df5: $53
	add e                                            ; $7df6: $83
	ret nz                                           ; $7df7: $c0

	dec de                                           ; $7df8: $1b
	jp nc, $d002                                     ; $7df9: $d2 $02 $d0

	pop de                                           ; $7dfc: $d1
	inc c                                            ; $7dfd: $0c
	ldh [$0a], a                                     ; $7dfe: $e0 $0a
	sbc d                                            ; $7e00: $9a
	ret nz                                           ; $7e01: $c0

	ld bc, $04a0                                     ; $7e02: $01 $a0 $04
	dec bc                                           ; $7e05: $0b
	db $db                                           ; $7e06: $db
	ldh [rP1], a                                     ; $7e07: $e0 $00
	ld b, c                                          ; $7e09: $41
	ld [bc], a                                       ; $7e0a: $02
	jp nc, $0cd3                                     ; $7e0b: $d2 $d3 $0c

	ldh [$0a], a                                     ; $7e0e: $e0 $0a
	adc d                                            ; $7e10: $8a
	ret nz                                           ; $7e11: $c0

	ld bc, $04a0                                     ; $7e12: $01 $a0 $04
	dec bc                                           ; $7e15: $0b
	rst SubAFromBC                                          ; $7e16: $e7
	ldh [rP1], a                                     ; $7e17: $e0 $00
	ld sp, $d401                                     ; $7e19: $31 $01 $d4
	inc c                                            ; $7e1c: $0c
	ldh [$0a], a                                     ; $7e1d: $e0 $0a
	ld a, e                                          ; $7e1f: $7b
	ret nz                                           ; $7e20: $c0

	ld bc, $04a0                                     ; $7e21: $01 $a0 $04
	dec bc                                           ; $7e24: $0b
	ld a, [$00e0]                                    ; $7e25: $fa $e0 $00
	ld [hl+], a                                      ; $7e28: $22
	ld bc, $0fd5                                     ; $7e29: $01 $d5 $0f
	ldh [rSC], a                                     ; $7e2c: $e0 $02
	dec hl                                           ; $7e2e: $2b
	ret nz                                           ; $7e2f: $c0

	ld bc, $07a0                                     ; $7e30: $01 $a0 $07
	inc c                                            ; $7e33: $0c
	rlca                                             ; $7e34: $07
	ldh [rP1], a                                     ; $7e35: $e0 $00
	inc de                                           ; $7e37: $13
	ldh [rSC], a                                     ; $7e38: $e0 $02
	ld b, l                                          ; $7e3a: $45
	ret nz                                           ; $7e3b: $c0

	inc h                                            ; $7e3c: $24
	ldh [$38], a                                     ; $7e3d: $e0 $38
	jp nc, $25c0                                     ; $7e3f: $d2 $c0 $25

	ldh [rSCY], a                                    ; $7e42: $e0 $42
	jp nc, $23c0                                     ; $7e44: $d2 $c0 $23

	sbc $d2                                          ; $7e47: $de $d2
	rrca                                             ; $7e49: $0f
	ld h, b                                          ; $7e4a: $60
	add b                                            ; $7e4b: $80
	nop                                              ; $7e4c: $00
	db $db                                           ; $7e4d: $db
	inc bc                                           ; $7e4e: $03
	ldh [rSB], a                                     ; $7e4f: $e0 $01
	and $06                                          ; $7e51: $e6 $06
	pop bc                                           ; $7e53: $c1
	ld b, a                                          ; $7e54: $47
	jp nc, $01e0                                     ; $7e55: $d2 $e0 $01

	db $ed                                           ; $7e58: $ed
	ld d, e                                          ; $7e59: $53
	add e                                            ; $7e5a: $83
	ret nz                                           ; $7e5b: $c0

jr_07a_7e5c:
	dec de                                           ; $7e5c: $1b
	db $d3                                           ; $7e5d: $d3
	ld [bc], a                                       ; $7e5e: $02
	ret nc                                           ; $7e5f: $d0

	pop de                                           ; $7e60: $d1
	inc c                                            ; $7e61: $0c
	ldh [$0a], a                                     ; $7e62: $e0 $0a
	ld [hl], $c0                                     ; $7e64: $36 $c0
	ld bc, $05a0                                     ; $7e66: $01 $a0 $05
	inc c                                            ; $7e69: $0c
	dec c                                            ; $7e6a: $0d
	ldh [rP1], a                                     ; $7e6b: $e0 $00
	ld b, c                                          ; $7e6d: $41
	ld [bc], a                                       ; $7e6e: $02
	jp nc, $0cd3                                     ; $7e6f: $d2 $d3 $0c

	ldh [$0a], a                                     ; $7e72: $e0 $0a
	ld h, $c0                                        ; $7e74: $26 $c0
	ld bc, $05a0                                     ; $7e76: $01 $a0 $05
	inc c                                            ; $7e79: $0c
	jr jr_07a_7e5c                                   ; $7e7a: $18 $e0

	nop                                              ; $7e7c: $00
	ld sp, $d401                                     ; $7e7d: $31 $01 $d4
	inc c                                            ; $7e80: $0c
	ldh [$0a], a                                     ; $7e81: $e0 $0a
	rla                                              ; $7e83: $17
	ret nz                                           ; $7e84: $c0

	ld bc, $05a0                                     ; $7e85: $01 $a0 $05
	inc c                                            ; $7e88: $0c
	ld hl, $00e0                                     ; $7e89: $21 $e0 $00
	ld [hl+], a                                      ; $7e8c: $22
	ld bc, $0fd5                                     ; $7e8d: $01 $d5 $0f
	ldh [rSB], a                                     ; $7e90: $e0 $01
	rst JumpTable                                          ; $7e92: $c7
	ret nz                                           ; $7e93: $c0

	ld bc, $07a0                                     ; $7e94: $01 $a0 $07
	inc c                                            ; $7e97: $0c
	cpl                                              ; $7e98: $2f
	ldh [rP1], a                                     ; $7e99: $e0 $00
	inc de                                           ; $7e9b: $13
	ldh [rSB], a                                     ; $7e9c: $e0 $01
	pop hl                                           ; $7e9e: $e1
	ret nz                                           ; $7e9f: $c0

	inc h                                            ; $7ea0: $24
	ldh [$28], a                                     ; $7ea1: $e0 $28
	db $d3                                           ; $7ea3: $d3
	ret nz                                           ; $7ea4: $c0

	dec h                                            ; $7ea5: $25
	ldh [$32], a                                     ; $7ea6: $e0 $32
	db $d3                                           ; $7ea8: $d3
	ret nz                                           ; $7ea9: $c0

	inc hl                                           ; $7eaa: $23
	jp c, $0fd3                                      ; $7eab: $da $d3 $0f

	ld h, b                                          ; $7eae: $60
	add b                                            ; $7eaf: $80
	nop                                              ; $7eb0: $00
	db $db                                           ; $7eb1: $db
	inc bc                                           ; $7eb2: $03
	ldh [rSB], a                                     ; $7eb3: $e0 $01
	add d                                            ; $7eb5: $82
	ld b, $c1                                        ; $7eb6: $06 $c1
	ld b, a                                          ; $7eb8: $47
	db $d3                                           ; $7eb9: $d3
	ldh [rSB], a                                     ; $7eba: $e0 $01
	adc c                                            ; $7ebc: $89
	ld d, h                                          ; $7ebd: $54
	add e                                            ; $7ebe: $83
	ret nz                                           ; $7ebf: $c0

	dec de                                           ; $7ec0: $1b
	rst SubAFromHL                                          ; $7ec1: $d7
	ld [bc], a                                       ; $7ec2: $02
	ret nc                                           ; $7ec3: $d0

	pop de                                           ; $7ec4: $d1
	inc c                                            ; $7ec5: $0c
	ldh [$09], a                                     ; $7ec6: $e0 $09
	jp nc, $01c0                                     ; $7ec8: $d2 $c0 $01

	and b                                            ; $7ecb: $a0
	ld [$340c], sp                                   ; $7ecc: $08 $0c $34
	ldh [rP1], a                                     ; $7ecf: $e0 $00
	ld b, d                                          ; $7ed1: $42
	ld [bc], a                                       ; $7ed2: $02
	jp nc, $0cd3                                     ; $7ed3: $d2 $d3 $0c

	ldh [$09], a                                     ; $7ed6: $e0 $09
	jp nz, $01c0                                     ; $7ed8: $c2 $c0 $01

	and b                                            ; $7edb: $a0
	ld [$430c], sp                                   ; $7edc: $08 $0c $43
	ldh [rP1], a                                     ; $7edf: $e0 $00
	ld [hl-], a                                      ; $7ee1: $32
	ld bc, $0cd4                                     ; $7ee2: $01 $d4 $0c
	ldh [$09], a                                     ; $7ee5: $e0 $09
	or e                                             ; $7ee7: $b3
	ret nz                                           ; $7ee8: $c0

	ld bc, $08a0                                     ; $7ee9: $01 $a0 $08
	inc c                                            ; $7eec: $0c
	ld d, h                                          ; $7eed: $54
	ldh [rP1], a                                     ; $7eee: $e0 $00
	inc hl                                           ; $7ef0: $23
	ld bc, $0fd5                                     ; $7ef1: $01 $d5 $0f
	ldh [rSB], a                                     ; $7ef4: $e0 $01
	ld h, e                                          ; $7ef6: $63
	ret nz                                           ; $7ef7: $c0

	ld bc, $07a0                                     ; $7ef8: $01 $a0 $07
	inc c                                            ; $7efb: $0c
	ld e, [hl]                                       ; $7efc: $5e
	ldh [rP1], a                                     ; $7efd: $e0 $00
	inc d                                            ; $7eff: $14
	ldh [rSB], a                                     ; $7f00: $e0 $01
	ld a, l                                          ; $7f02: $7d
	ret nz                                           ; $7f03: $c0

	inc h                                            ; $7f04: $24
	ldh [rLCDC], a                                   ; $7f05: $e0 $40
	rst SubAFromHL                                          ; $7f07: $d7
	ret nz                                           ; $7f08: $c0

	dec h                                            ; $7f09: $25
	ldh [rWY], a                                     ; $7f0a: $e0 $4a
	rst SubAFromHL                                          ; $7f0c: $d7
	ret nz                                           ; $7f0d: $c0

	inc hl                                           ; $7f0e: $23
	ldh [rAUD1SWEEP], a                              ; $7f0f: $e0 $10
	rst SubAFromHL                                          ; $7f11: $d7
	rrca                                             ; $7f12: $0f
	ld h, b                                          ; $7f13: $60
	add b                                            ; $7f14: $80
	nop                                              ; $7f15: $00
	db $db                                           ; $7f16: $db
	inc bc                                           ; $7f17: $03
	ldh [rSB], a                                     ; $7f18: $e0 $01
	dec e                                            ; $7f1a: $1d
	ld b, $c1                                        ; $7f1b: $06 $c1
	ld b, a                                          ; $7f1d: $47
	rst SubAFromHL                                          ; $7f1e: $d7
	ldh [rSB], a                                     ; $7f1f: $e0 $01
	inc h                                            ; $7f21: $24
	ld d, e                                          ; $7f22: $53
	add e                                            ; $7f23: $83
	ret nz                                           ; $7f24: $c0

	dec de                                           ; $7f25: $1b
	ret c                                            ; $7f26: $d8

	ld [bc], a                                       ; $7f27: $02
	ret nc                                           ; $7f28: $d0

jr_07a_7f29:
	pop de                                           ; $7f29: $d1
	inc c                                            ; $7f2a: $0c
	ldh [$09], a                                     ; $7f2b: $e0 $09
	ld l, l                                          ; $7f2d: $6d
	ret nz                                           ; $7f2e: $c0

	ld bc, $09a0                                     ; $7f2f: $01 $a0 $09
	inc c                                            ; $7f32: $0c
	ld h, h                                          ; $7f33: $64
	ldh [rP1], a                                     ; $7f34: $e0 $00
	ld b, c                                          ; $7f36: $41
	ld [bc], a                                       ; $7f37: $02
	jp nc, $0cd3                                     ; $7f38: $d2 $d3 $0c

	ldh [$09], a                                     ; $7f3b: $e0 $09
	ld e, l                                          ; $7f3d: $5d
	ret nz                                           ; $7f3e: $c0

	ld bc, $09a0                                     ; $7f3f: $01 $a0 $09
	inc c                                            ; $7f42: $0c
	ld l, [hl]                                       ; $7f43: $6e
	ldh [rP1], a                                     ; $7f44: $e0 $00
	ld sp, $d401                                     ; $7f46: $31 $01 $d4
	inc c                                            ; $7f49: $0c
	ldh [$09], a                                     ; $7f4a: $e0 $09
	ld c, [hl]                                       ; $7f4c: $4e
	ret nz                                           ; $7f4d: $c0

	ld bc, $09a0                                     ; $7f4e: $01 $a0 $09
	inc c                                            ; $7f51: $0c
	ld a, d                                          ; $7f52: $7a
	ldh [rP1], a                                     ; $7f53: $e0 $00
	ld [hl+], a                                      ; $7f55: $22
	ld bc, $0fd5                                     ; $7f56: $01 $d5 $0f
	ldh [rP1], a                                     ; $7f59: $e0 $00
	cp $c0                                           ; $7f5b: $fe $c0
	ld bc, $07a0                                     ; $7f5d: $01 $a0 $07
	inc c                                            ; $7f60: $0c
	ld a, [hl]                                       ; $7f61: $7e
	ldh [rP1], a                                     ; $7f62: $e0 $00
	inc de                                           ; $7f64: $13
	ldh [rSB], a                                     ; $7f65: $e0 $01
	jr jr_07a_7f29                                   ; $7f67: $18 $c0

	inc h                                            ; $7f69: $24
	ldh [$30], a                                     ; $7f6a: $e0 $30
	ret c                                            ; $7f6c: $d8

	ret nz                                           ; $7f6d: $c0

	dec h                                            ; $7f6e: $25
	ldh [$3a], a                                     ; $7f6f: $e0 $3a
	ret c                                            ; $7f71: $d8

	ret nz                                           ; $7f72: $c0

	inc hl                                           ; $7f73: $23
	call c, $0fd8                                    ; $7f74: $dc $d8 $0f
	ld h, b                                          ; $7f77: $60
	add b                                            ; $7f78: $80
	nop                                              ; $7f79: $00
	db $db                                           ; $7f7a: $db
	inc bc                                           ; $7f7b: $03
	ldh [rP1], a                                     ; $7f7c: $e0 $00
	cp c                                             ; $7f7e: $b9
	ld b, $c1                                        ; $7f7f: $06 $c1
	ld b, a                                          ; $7f81: $47
	ret c                                            ; $7f82: $d8

	ldh [rP1], a                                     ; $7f83: $e0 $00
	ret nz                                           ; $7f85: $c0

	ld c, e                                          ; $7f86: $4b
	ret nz                                           ; $7f87: $c0

	inc h                                            ; $7f88: $24
	ldh [$30], a                                     ; $7f89: $e0 $30
	jp c, $25c0                                      ; $7f8b: $da $c0 $25

	ldh [$3a], a                                     ; $7f8e: $e0 $3a
	jp c, $23c0                                      ; $7f90: $da $c0 $23

	call c, $e0da                                    ; $7f93: $dc $da $e0
	add hl, bc                                       ; $7f96: $09
	jr nz, @-$3d                                     ; $7f97: $20 $c1

	ld [$d0d2], sp                                   ; $7f99: $08 $d2 $d0
	ret nz                                           ; $7f9c: $c0

	ld bc, $07a0                                     ; $7f9d: $01 $a0 $07
	inc c                                            ; $7fa0: $0c
	add h                                            ; $7fa1: $84
	ret nz                                           ; $7fa2: $c0

	ld bc, $01a0                                     ; $7fa3: $01 $a0 $01
	inc c                                            ; $7fa6: $0c
	adc c                                            ; $7fa7: $89
	ret nz                                           ; $7fa8: $c0

	ld bc, $07a0                                     ; $7fa9: $01 $a0 $07
	inc c                                            ; $7fac: $0c
	adc a                                            ; $7fad: $8f
	ret nz                                           ; $7fae: $c0

	ld bc, $01a0                                     ; $7faf: $01 $a0 $01
	inc c                                            ; $7fb2: $0c
	sbc c                                            ; $7fb3: $99
	ret nz                                           ; $7fb4: $c0

	ld bc, $07a0                                     ; $7fb5: $01 $a0 $07
	inc c                                            ; $7fb8: $0c
	sbc e                                            ; $7fb9: $9b
	ld h, b                                          ; $7fba: $60
	add b                                            ; $7fbb: $80
	nop                                              ; $7fbc: $00
	db $db                                           ; $7fbd: $db
	inc bc                                           ; $7fbe: $03
	ldh [rP1], a                                     ; $7fbf: $e0 $00
	halt                                             ; $7fc1: $76
	ld b, $c1                                        ; $7fc2: $06 $c1
	ld b, a                                          ; $7fc4: $47
	jp c, $00e0                                      ; $7fc5: $da $e0 $00

	ld a, l                                          ; $7fc8: $7d
	ret nz                                           ; $7fc9: $c0

	ld bc, $07a0                                     ; $7fca: $01 $a0 $07
	inc c                                            ; $7fcd: $0c
	and b                                            ; $7fce: $a0
	ldh [$08], a                                     ; $7fcf: $e0 $08
	call c, $8353                                    ; $7fd1: $dc $53 $83
	ret nz                                           ; $7fd4: $c0

	dec de                                           ; $7fd5: $1b
	db $db                                           ; $7fd6: $db
	ld [bc], a                                       ; $7fd7: $02
	ret nc                                           ; $7fd8: $d0

	pop de                                           ; $7fd9: $d1
	inc c                                            ; $7fda: $0c
	ldh [$08], a                                     ; $7fdb: $e0 $08
	cp l                                             ; $7fdd: $bd
	ret nz                                           ; $7fde: $c0

	ld bc, $0aa0                                     ; $7fdf: $01 $a0 $0a
	inc c                                            ; $7fe2: $0c
	xor e                                            ; $7fe3: $ab
	ldh [rP1], a                                     ; $7fe4: $e0 $00
	ld b, c                                          ; $7fe6: $41
	ld [bc], a                                       ; $7fe7: $02
	jp nc, $0cd3                                     ; $7fe8: $d2 $d3 $0c

	ldh [$08], a                                     ; $7feb: $e0 $08
	xor l                                            ; $7fed: $ad
	ret nz                                           ; $7fee: $c0

	ld bc, $0aa0                                     ; $7fef: $01 $a0 $0a
	inc c                                            ; $7ff2: $0c
	or c                                             ; $7ff3: $b1
	ldh [rP1], a                                     ; $7ff4: $e0 $00
	ld sp, $d401                                     ; $7ff6: $31 $01 $d4
	inc c                                            ; $7ff9: $0c
	ldh [$08], a                                     ; $7ffa: $e0 $08
	sbc [hl]                                         ; $7ffc: $9e
	ret nz                                           ; $7ffd: $c0

	db $01                                           ; $7ffe: $01
	and b                                            ; $7fff: $a0
